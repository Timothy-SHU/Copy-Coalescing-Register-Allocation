; ModuleID = 'arch/x86/kernel/cpu/mce/genpool.c'
source_filename = "arch/x86/kernel/cpu/mce/genpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist_head = type { ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.mce_evt_llist = type { %struct.llist_node, %struct.mce }
%struct.llist_node = type { ptr }
%struct.mce = type { i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@mce_event_llist = internal global %struct.llist_head zeroinitializer, align 8, !dbg !0
@x86_mce_decoder_chain = external dso_local global %struct.blocking_notifier_head, align 8
@mce_evt_pool = internal global ptr null, align 8, !dbg !129
@mce_gen_pool_add._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !65
@__func__.mce_gen_pool_add = private unnamed_addr constant [17 x i8] c"mce_gen_pool_add\00", align 1, !dbg !117
@.str = private unnamed_addr constant [31 x i8] c"\014mce: MCE records pool full!\0A\00", align 1, !dbg !124
@gen_pool_buf = internal global [8192 x i8] zeroinitializer, align 16, !dbg !160

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mce_gen_pool_prepare_records() #0 align 16 !dbg !177 {
entry:
  %retval = alloca ptr, align 8
  %head = alloca ptr, align 8
  %new_head = alloca %struct.llist_head, align 8
  %node = alloca ptr, align 8
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #9, !dbg !191
  call void @llvm.dbg.declare(metadata ptr %head, metadata !181, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_head) #9, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %new_head, metadata !182, metadata !DIExpression()), !dbg !193
  call void @llvm.memset.p0.i64(ptr align 8 %new_head, i8 0, i64 8, i1 false), !dbg !193
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %node, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #9, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %t, metadata !184, metadata !DIExpression()), !dbg !196
  %call = call ptr @llist_del_all(ptr noundef @mce_event_llist) #10, !dbg !197
  store ptr %call, ptr %head, align 8, !dbg !198
  %0 = load ptr, ptr %head, align 8, !dbg !199
  %tobool = icmp ne ptr %0, null, !dbg !199
  br i1 %tobool, label %if.end, label %if.then, !dbg !201

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !202

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !185, metadata !DIExpression()), !dbg !203
  %1 = load ptr, ptr %head, align 8, !dbg !203
  store ptr %1, ptr %__mptr, align 8, !dbg !203
  %2 = load ptr, ptr %__mptr, align 8, !dbg !203
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !203
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !204
  %3 = load ptr, ptr %tmp, align 8, !dbg !203
  store ptr %3, ptr %node, align 8, !dbg !204
  br label %for.cond, !dbg !204

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %node, align 8, !dbg !205
  %5 = ptrtoint ptr %4 to i64, !dbg !205
  %add = add i64 %5, 0, !dbg !205
  %cmp = icmp ne i64 %add, 0, !dbg !205
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !205

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #9, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !188, metadata !DIExpression()), !dbg !206
  %6 = load ptr, ptr %node, align 8, !dbg !206
  %llnode = getelementptr inbounds %struct.mce_evt_llist, ptr %6, i32 0, i32 0, !dbg !206
  %next = getelementptr inbounds %struct.llist_node, ptr %llnode, i32 0, i32 0, !dbg !206
  %7 = load ptr, ptr %next, align 8, !dbg !206
  store ptr %7, ptr %__mptr1, align 8, !dbg !206
  %8 = load ptr, ptr %__mptr1, align 8, !dbg !206
  %add.ptr3 = getelementptr i8, ptr %8, i64 0, !dbg !206
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #9, !dbg !205
  %9 = load ptr, ptr %tmp2, align 8, !dbg !206
  store ptr %9, ptr %t, align 8, !dbg !205
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !207
  br i1 %10, label %for.body, label %for.end, !dbg !204

for.body:                                         ; preds = %land.end
  %11 = load ptr, ptr %node, align 8, !dbg !208
  %12 = load ptr, ptr %t, align 8, !dbg !211
  %call4 = call zeroext i1 @is_duplicate_mce_record(ptr noundef %11, ptr noundef %12) #10, !dbg !212
  br i1 %call4, label %if.end8, label %if.then5, !dbg !213

if.then5:                                         ; preds = %for.body
  %13 = load ptr, ptr %node, align 8, !dbg !214
  %llnode6 = getelementptr inbounds %struct.mce_evt_llist, ptr %13, i32 0, i32 0, !dbg !215
  %call7 = call zeroext i1 @llist_add(ptr noundef %llnode6, ptr noundef %new_head) #10, !dbg !216
  br label %if.end8, !dbg !216

if.end8:                                          ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !217

for.inc:                                          ; preds = %if.end8
  %14 = load ptr, ptr %t, align 8, !dbg !205
  store ptr %14, ptr %node, align 8, !dbg !205
  br label %for.cond, !dbg !205, !llvm.loop !218

for.end:                                          ; preds = %land.end
  %first = getelementptr inbounds %struct.llist_head, ptr %new_head, i32 0, i32 0, !dbg !222
  %15 = load ptr, ptr %first, align 8, !dbg !222
  store ptr %15, ptr %retval, align 8, !dbg !223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !223

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #9, !dbg !224
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !224
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_head) #9, !dbg !224
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #9, !dbg !224
  %16 = load ptr, ptr %retval, align 8, !dbg !224
  ret ptr %16, !dbg !224
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @llist_del_all(ptr noundef %head) #4 align 16 !dbg !225 {
entry:
  %head.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !230, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #9, !dbg !237
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !231, metadata !DIExpression()), !dbg !237
  %0 = load ptr, ptr %head.addr, align 8, !dbg !237
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !237
  store ptr %first, ptr %__ai_ptr, align 8, !dbg !237
  br label %do.body, !dbg !237

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !238

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !238

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !237
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #10, !dbg !237
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #9, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !234, metadata !DIExpression()), !dbg !240
  store ptr null, ptr %__ret, align 8, !dbg !240
  %2 = load ptr, ptr %__ret, align 8, !dbg !240
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !240
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #9, !dbg !240, !srcloc !241
  store ptr %4, ptr %__ret, align 8, !dbg !240
  %5 = load ptr, ptr %__ret, align 8, !dbg !240
  store ptr %5, ptr %tmp1, align 8, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #9, !dbg !237
  %6 = load ptr, ptr %tmp1, align 8, !dbg !240
  store ptr %6, ptr %tmp, align 8, !dbg !237
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #9, !dbg !242
  %7 = load ptr, ptr %tmp, align 8, !dbg !237
  ret ptr %7, !dbg !243
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_duplicate_mce_record(ptr noundef %t, ptr noundef %l) #0 align 16 !dbg !244 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %m1 = alloca ptr, align 8
  %m2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !250, metadata !DIExpression()), !dbg !261
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !251, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %node, metadata !252, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 8, ptr %m1) #9, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %m1, metadata !253, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 8, ptr %m2) #9, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %m2, metadata !254, metadata !DIExpression()), !dbg !267
  %0 = load ptr, ptr %t.addr, align 8, !dbg !268
  %mce = getelementptr inbounds %struct.mce_evt_llist, ptr %0, i32 0, i32 1, !dbg !269
  store ptr %mce, ptr %m1, align 8, !dbg !270
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !255, metadata !DIExpression()), !dbg !271
  %1 = load ptr, ptr %l.addr, align 8, !dbg !271
  %llnode = getelementptr inbounds %struct.mce_evt_llist, ptr %1, i32 0, i32 0, !dbg !271
  store ptr %llnode, ptr %__mptr, align 8, !dbg !271
  %2 = load ptr, ptr %__mptr, align 8, !dbg !271
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !271
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !272
  %3 = load ptr, ptr %tmp, align 8, !dbg !271
  store ptr %3, ptr %node, align 8, !dbg !272
  br label %for.cond, !dbg !272

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %node, align 8, !dbg !273
  %5 = ptrtoint ptr %4 to i64, !dbg !273
  %add = add i64 %5, 0, !dbg !273
  %cmp = icmp ne i64 %add, 0, !dbg !273
  br i1 %cmp, label %for.body, label %for.end, !dbg !272

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %node, align 8, !dbg !274
  %mce1 = getelementptr inbounds %struct.mce_evt_llist, ptr %6, i32 0, i32 1, !dbg !276
  store ptr %mce1, ptr %m2, align 8, !dbg !277
  %7 = load ptr, ptr %m1, align 8, !dbg !278
  %8 = load ptr, ptr %m2, align 8, !dbg !280
  %call = call zeroext i1 @mce_cmp(ptr noundef %7, ptr noundef %8) #10, !dbg !281
  br i1 %call, label %if.end, label %if.then, !dbg !282

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !283

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !284

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #9, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !258, metadata !DIExpression()), !dbg !285
  %9 = load ptr, ptr %node, align 8, !dbg !285
  %llnode3 = getelementptr inbounds %struct.mce_evt_llist, ptr %9, i32 0, i32 0, !dbg !285
  %next = getelementptr inbounds %struct.llist_node, ptr %llnode3, i32 0, i32 0, !dbg !285
  %10 = load ptr, ptr %next, align 8, !dbg !285
  store ptr %10, ptr %__mptr2, align 8, !dbg !285
  %11 = load ptr, ptr %__mptr2, align 8, !dbg !285
  %add.ptr5 = getelementptr i8, ptr %11, i64 0, !dbg !285
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #9, !dbg !273
  %12 = load ptr, ptr %tmp4, align 8, !dbg !285
  store ptr %12, ptr %node, align 8, !dbg !273
  br label %for.cond, !dbg !273, !llvm.loop !286

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !288

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m2) #9, !dbg !289
  call void @llvm.lifetime.end.p0(i64 8, ptr %m1) #9, !dbg !289
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !289
  %13 = load i1, ptr %retval, align 1, !dbg !289
  ret i1 %13, !dbg !289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @llist_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !290 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !294, metadata !DIExpression()), !dbg !296
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !295, metadata !DIExpression()), !dbg !297
  %0 = load ptr, ptr %new.addr, align 8, !dbg !298
  %1 = load ptr, ptr %new.addr, align 8, !dbg !299
  %2 = load ptr, ptr %head.addr, align 8, !dbg !300
  %call = call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10, !dbg !301
  ret i1 %call, !dbg !302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mce_gen_pool_process(ptr noundef %__unused) #0 align 16 !dbg !303 {
entry:
  %__unused.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %node = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %mce = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !325, metadata !DIExpression()), !dbg !336
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #9, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %head, metadata !326, metadata !DIExpression()), !dbg !338
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %node, metadata !327, metadata !DIExpression()), !dbg !340
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !328, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %mce) #9, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %mce, metadata !329, metadata !DIExpression()), !dbg !343
  %call = call ptr @llist_del_all(ptr noundef @mce_event_llist) #10, !dbg !344
  store ptr %call, ptr %head, align 8, !dbg !345
  %0 = load ptr, ptr %head, align 8, !dbg !346
  %tobool = icmp ne ptr %0, null, !dbg !346
  br i1 %tobool, label %if.end, label %if.then, !dbg !348

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !349

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %head, align 8, !dbg !350
  %call1 = call ptr @llist_reverse_order(ptr noundef %1) #10, !dbg !351
  store ptr %call1, ptr %head, align 8, !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !330, metadata !DIExpression()), !dbg !353
  %2 = load ptr, ptr %head, align 8, !dbg !353
  store ptr %2, ptr %__mptr, align 8, !dbg !353
  %3 = load ptr, ptr %__mptr, align 8, !dbg !353
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !353
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !353
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !354
  %4 = load ptr, ptr %tmp2, align 8, !dbg !353
  store ptr %4, ptr %node, align 8, !dbg !354
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %node, align 8, !dbg !355
  %6 = ptrtoint ptr %5 to i64, !dbg !355
  %add = add i64 %6, 0, !dbg !355
  %cmp = icmp ne i64 %add, 0, !dbg !355
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !355

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #9, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !333, metadata !DIExpression()), !dbg !356
  %7 = load ptr, ptr %node, align 8, !dbg !356
  %llnode = getelementptr inbounds %struct.mce_evt_llist, ptr %7, i32 0, i32 0, !dbg !356
  %next = getelementptr inbounds %struct.llist_node, ptr %llnode, i32 0, i32 0, !dbg !356
  %8 = load ptr, ptr %next, align 8, !dbg !356
  store ptr %8, ptr %__mptr3, align 8, !dbg !356
  %9 = load ptr, ptr %__mptr3, align 8, !dbg !356
  %add.ptr5 = getelementptr i8, ptr %9, i64 0, !dbg !356
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #9, !dbg !355
  %10 = load ptr, ptr %tmp4, align 8, !dbg !356
  store ptr %10, ptr %tmp, align 8, !dbg !355
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !357
  br i1 %11, label %for.body, label %for.end, !dbg !354

for.body:                                         ; preds = %land.end
  %12 = load ptr, ptr %node, align 8, !dbg !358
  %mce6 = getelementptr inbounds %struct.mce_evt_llist, ptr %12, i32 0, i32 1, !dbg !360
  store ptr %mce6, ptr %mce, align 8, !dbg !361
  %13 = load ptr, ptr %mce, align 8, !dbg !362
  %call7 = call i32 @blocking_notifier_call_chain(ptr noundef @x86_mce_decoder_chain, i64 noundef 0, ptr noundef %13) #10, !dbg !363
  %14 = load ptr, ptr @mce_evt_pool, align 8, !dbg !364
  %15 = load ptr, ptr %node, align 8, !dbg !365
  %16 = ptrtoint ptr %15 to i64, !dbg !366
  call void @gen_pool_free(ptr noundef %14, i64 noundef %16, i64 noundef 136) #10, !dbg !367
  br label %for.inc, !dbg !368

for.inc:                                          ; preds = %for.body
  %17 = load ptr, ptr %tmp, align 8, !dbg !355
  store ptr %17, ptr %node, align 8, !dbg !355
  br label %for.cond, !dbg !355, !llvm.loop !369

for.end:                                          ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !371
  br label %cleanup, !dbg !371

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mce) #9, !dbg !371
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !371
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !371
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #9, !dbg !371
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !371

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !372 dso_local ptr @llist_reverse_order(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !375 dso_local i32 @blocking_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gen_pool_free(ptr noundef %pool, i64 noundef %addr, i64 noundef %size) #4 align 16 !dbg !406 {
entry:
  %pool.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !414, metadata !DIExpression()), !dbg !417
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !415, metadata !DIExpression()), !dbg !418
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !416, metadata !DIExpression()), !dbg !419
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !420
  %1 = load i64, ptr %addr.addr, align 8, !dbg !421
  %2 = load i64, ptr %size.addr, align 8, !dbg !422
  call void @gen_pool_free_owner(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef null) #10, !dbg !423
  ret void, !dbg !424
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @mce_gen_pool_empty() #0 align 16 !dbg !425 {
entry:
  %call = call zeroext i1 @llist_empty(ptr noundef @mce_event_llist) #10, !dbg !428
  ret i1 %call, !dbg !429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @llist_empty(ptr noundef %head) #4 align 16 !dbg !430 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !436, metadata !DIExpression()), !dbg !437
  br label %do.body, !dbg !438

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !440

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !438
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !438
  %1 = load volatile ptr, ptr %first, align 8, !dbg !438
  store ptr %1, ptr %tmp, align 8, !dbg !440
  %2 = load ptr, ptr %tmp, align 8, !dbg !438
  %cmp = icmp eq ptr %2, null, !dbg !442
  ret i1 %cmp, !dbg !443
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mce_gen_pool_add(ptr noundef %mce) #0 align 16 !dbg !67 {
entry:
  %retval = alloca i32, align 4
  %mce.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %mce, ptr %mce.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mce.addr, metadata !73, metadata !DIExpression()), !dbg !444
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %node, metadata !74, metadata !DIExpression()), !dbg !446
  %0 = load ptr, ptr %mce.addr, align 8, !dbg !447
  %call = call zeroext i1 @filter_mce(ptr noundef %0) #10, !dbg !449
  br i1 %call, label %if.then, label %if.end, !dbg !450

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !451

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @mce_evt_pool, align 8, !dbg !452
  %tobool = icmp ne ptr %1, null, !dbg !452
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !454

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !455

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr @mce_evt_pool, align 8, !dbg !456
  %call3 = call i64 @gen_pool_alloc(ptr noundef %2, i64 noundef 136) #10, !dbg !457
  %3 = inttoptr i64 %call3 to ptr, !dbg !458
  store ptr %3, ptr %node, align 8, !dbg !459
  %4 = load ptr, ptr %node, align 8, !dbg !460
  %tobool4 = icmp ne ptr %4, null, !dbg !460
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !462

if.then5:                                         ; preds = %if.end2
  %call6 = call i32 @___ratelimit(ptr noundef @mce_gen_pool_add._rs, ptr noundef @__func__.mce_gen_pool_add) #10, !dbg !463
  %tobool7 = icmp ne i32 %call6, 0, !dbg !463
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !467

if.then8:                                         ; preds = %if.then5
  br label %do.body, !dbg !468

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !470

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !470

do.end:                                           ; preds = %do.cond
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #11, !dbg !468
  store i32 %call9, ptr %tmp, align 4, !dbg !470
  %5 = load i32, ptr %tmp, align 4, !dbg !468
  br label %if.end10, !dbg !463

if.end10:                                         ; preds = %do.end, %if.then5
  store i32 -12, ptr %retval, align 4, !dbg !472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !472

if.end11:                                         ; preds = %if.end2
  %6 = load ptr, ptr %node, align 8, !dbg !473
  %mce12 = getelementptr inbounds %struct.mce_evt_llist, ptr %6, i32 0, i32 1, !dbg !474
  %7 = load ptr, ptr %mce.addr, align 8, !dbg !475
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %mce12, ptr align 8 %7, i64 128, i1 false), !dbg !476
  %8 = load ptr, ptr %node, align 8, !dbg !477
  %llnode = getelementptr inbounds %struct.mce_evt_llist, ptr %8, i32 0, i32 0, !dbg !478
  %call13 = call zeroext i1 @llist_add(ptr noundef %llnode, ptr noundef @mce_event_llist) #10, !dbg !479
  store i32 0, ptr %retval, align 4, !dbg !480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !480

cleanup:                                          ; preds = %if.end11, %if.end10, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !481
  %9 = load i32, ptr %retval, align 4, !dbg !481
  ret i32 %9, !dbg !481
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !482 dso_local zeroext i1 @filter_mce(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @gen_pool_alloc(ptr noundef %pool, i64 noundef %size) #4 align 16 !dbg !485 {
entry:
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !489, metadata !DIExpression()), !dbg !491
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !490, metadata !DIExpression()), !dbg !492
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !493
  %1 = load i64, ptr %size.addr, align 8, !dbg !494
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !495
  %algo = getelementptr inbounds %struct.gen_pool, ptr %2, i32 0, i32 3, !dbg !496
  %3 = load ptr, ptr %algo, align 8, !dbg !496
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !497
  %data = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 4, !dbg !498
  %5 = load ptr, ptr %data, align 8, !dbg !498
  %call = call i64 @gen_pool_alloc_algo(ptr noundef %0, i64 noundef %1, ptr noundef %3, ptr noundef %5) #10, !dbg !499
  ret i64 %call, !dbg !500
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !501 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !505 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mce_gen_pool_init() #0 align 16 !dbg !509 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @mce_evt_pool, align 8, !dbg !512
  %tobool = icmp ne ptr %0, null, !dbg !512
  br i1 %tobool, label %if.then, label %if.end, !dbg !514

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !515
  br label %return, !dbg !515

if.end:                                           ; preds = %entry
  %call = call i32 @mce_gen_pool_create() #10, !dbg !516
  store i32 %call, ptr %retval, align 4, !dbg !517
  br label %return, !dbg !517

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !518
  ret i32 %1, !dbg !518
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mce_gen_pool_create() #0 align 16 !dbg !519 {
entry:
  %tmpp = alloca ptr, align 8
  %ret = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpp) #9, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %tmpp, metadata !521, metadata !DIExpression()), !dbg !525
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !522, metadata !DIExpression()), !dbg !527
  store i32 -12, ptr %ret, align 4, !dbg !527
  %call = call ptr @gen_pool_create(i32 noundef 7, i32 noundef -1) #10, !dbg !528
  store ptr %call, ptr %tmpp, align 8, !dbg !529
  %0 = load ptr, ptr %tmpp, align 8, !dbg !530
  %tobool = icmp ne ptr %0, null, !dbg !530
  br i1 %tobool, label %if.end, label %if.then, !dbg !532

if.then:                                          ; preds = %entry
  br label %out, !dbg !533

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tmpp, align 8, !dbg !534
  %call1 = call i32 @gen_pool_add(ptr noundef %1, i64 noundef ptrtoint (ptr @gen_pool_buf to i64), i64 noundef 8192, i32 noundef -1) #10, !dbg !535
  store i32 %call1, ptr %ret, align 4, !dbg !536
  %2 = load i32, ptr %ret, align 4, !dbg !537
  %tobool2 = icmp ne i32 %2, 0, !dbg !537
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !539

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %tmpp, align 8, !dbg !540
  call void @gen_pool_destroy(ptr noundef %3) #10, !dbg !542
  br label %out, !dbg !543

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %tmpp, align 8, !dbg !544
  store ptr %4, ptr @mce_evt_pool, align 8, !dbg !545
  br label %out, !dbg !546

out:                                              ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !523), !dbg !547
  %5 = load i32, ptr %ret, align 4, !dbg !548
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpp) #9, !dbg !549
  ret i32 %5, !dbg !550
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !551 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !559, metadata !DIExpression()), !dbg !561
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !560, metadata !DIExpression()), !dbg !562
  %0 = load ptr, ptr %v.addr, align 8, !dbg !563
  %1 = load i64, ptr %size.addr, align 8, !dbg !564
  %conv = trunc i64 %1 to i32, !dbg !564
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !565
  %2 = load ptr, ptr %v.addr, align 8, !dbg !566
  %3 = load i64, ptr %size.addr, align 8, !dbg !566
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !566
  ret void, !dbg !567
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !568 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !573, metadata !DIExpression()), !dbg !575
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !574, metadata !DIExpression()), !dbg !576
  ret i1 true, !dbg !577
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !578 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !583, metadata !DIExpression()), !dbg !586
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !584, metadata !DIExpression()), !dbg !587
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !585, metadata !DIExpression()), !dbg !588
  ret void, !dbg !589
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mce_cmp(ptr noundef %m1, ptr noundef %m2) #4 align 16 !dbg !590 {
entry:
  %m1.addr = alloca ptr, align 8
  %m2.addr = alloca ptr, align 8
  store ptr %m1, ptr %m1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m1.addr, metadata !594, metadata !DIExpression()), !dbg !596
  store ptr %m2, ptr %m2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m2.addr, metadata !595, metadata !DIExpression()), !dbg !597
  %0 = load ptr, ptr %m1.addr, align 8, !dbg !598
  %bank = getelementptr inbounds %struct.mce, ptr %0, i32 0, i32 13, !dbg !599
  %1 = load i8, ptr %bank, align 1, !dbg !599
  %conv = zext i8 %1 to i32, !dbg !598
  %2 = load ptr, ptr %m2.addr, align 8, !dbg !600
  %bank1 = getelementptr inbounds %struct.mce, ptr %2, i32 0, i32 13, !dbg !601
  %3 = load i8, ptr %bank1, align 1, !dbg !601
  %conv2 = zext i8 %3 to i32, !dbg !600
  %cmp = icmp ne i32 %conv, %conv2, !dbg !602
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !603

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %m1.addr, align 8, !dbg !604
  %status = getelementptr inbounds %struct.mce, ptr %4, i32 0, i32 0, !dbg !605
  %5 = load i64, ptr %status, align 8, !dbg !605
  %6 = load ptr, ptr %m2.addr, align 8, !dbg !606
  %status4 = getelementptr inbounds %struct.mce, ptr %6, i32 0, i32 0, !dbg !607
  %7 = load i64, ptr %status4, align 8, !dbg !607
  %cmp5 = icmp ne i64 %5, %7, !dbg !608
  br i1 %cmp5, label %lor.end, label %lor.lhs.false7, !dbg !609

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %m1.addr, align 8, !dbg !610
  %addr = getelementptr inbounds %struct.mce, ptr %8, i32 0, i32 2, !dbg !611
  %9 = load i64, ptr %addr, align 8, !dbg !611
  %10 = load ptr, ptr %m2.addr, align 8, !dbg !612
  %addr8 = getelementptr inbounds %struct.mce, ptr %10, i32 0, i32 2, !dbg !613
  %11 = load i64, ptr %addr8, align 8, !dbg !613
  %cmp9 = icmp ne i64 %9, %11, !dbg !614
  br i1 %cmp9, label %lor.end, label %lor.rhs, !dbg !615

lor.rhs:                                          ; preds = %lor.lhs.false7
  %12 = load ptr, ptr %m1.addr, align 8, !dbg !616
  %misc = getelementptr inbounds %struct.mce, ptr %12, i32 0, i32 1, !dbg !617
  %13 = load i64, ptr %misc, align 8, !dbg !617
  %14 = load ptr, ptr %m2.addr, align 8, !dbg !618
  %misc11 = getelementptr inbounds %struct.mce, ptr %14, i32 0, i32 1, !dbg !619
  %15 = load i64, ptr %misc11, align 8, !dbg !619
  %cmp12 = icmp ne i64 %13, %15, !dbg !620
  br label %lor.end, !dbg !615

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false7, %lor.lhs.false, %entry
  %16 = phi i1 [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp12, %lor.rhs ]
  ret i1 %16, !dbg !621
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !622 dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !625 dso_local void @gen_pool_free_owner(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @gen_pool_alloc_algo(ptr noundef %pool, i64 noundef %size, ptr noundef %algo, ptr noundef %data) #4 align 16 !dbg !629 {
entry:
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %algo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !633, metadata !DIExpression()), !dbg !637
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !634, metadata !DIExpression()), !dbg !638
  store ptr %algo, ptr %algo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algo.addr, metadata !635, metadata !DIExpression()), !dbg !639
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !636, metadata !DIExpression()), !dbg !640
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !641
  %1 = load i64, ptr %size.addr, align 8, !dbg !642
  %2 = load ptr, ptr %algo.addr, align 8, !dbg !643
  %3 = load ptr, ptr %data.addr, align 8, !dbg !644
  %call = call i64 @gen_pool_alloc_algo_owner(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null) #10, !dbg !645
  ret i64 %call, !dbg !646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !647 dso_local i64 @gen_pool_alloc_algo_owner(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !650 dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gen_pool_add(ptr noundef %pool, i64 noundef %addr, i64 noundef %size, i32 noundef %nid) #4 align 16 !dbg !653 {
entry:
  %pool.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !657, metadata !DIExpression()), !dbg !661
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !658, metadata !DIExpression()), !dbg !662
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !659, metadata !DIExpression()), !dbg !663
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !660, metadata !DIExpression()), !dbg !664
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !665
  %1 = load i64, ptr %addr.addr, align 8, !dbg !666
  %2 = load i64, ptr %size.addr, align 8, !dbg !667
  %3 = load i32, ptr %nid.addr, align 4, !dbg !668
  %call = call i32 @gen_pool_add_virt(ptr noundef %0, i64 noundef %1, i64 noundef -1, i64 noundef %2, i32 noundef %3) #10, !dbg !669
  ret i32 %call, !dbg !670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !671 dso_local void @gen_pool_destroy(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gen_pool_add_virt(ptr noundef %pool, i64 noundef %addr, i64 noundef %phys, i64 noundef %size, i32 noundef %nid) #4 align 16 !dbg !674 {
entry:
  %pool.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %phys.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !680, metadata !DIExpression()), !dbg !685
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !681, metadata !DIExpression()), !dbg !686
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !682, metadata !DIExpression()), !dbg !687
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !683, metadata !DIExpression()), !dbg !688
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !684, metadata !DIExpression()), !dbg !689
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !690
  %1 = load i64, ptr %addr.addr, align 8, !dbg !691
  %2 = load i64, ptr %phys.addr, align 8, !dbg !692
  %3 = load i64, ptr %size.addr, align 8, !dbg !693
  %4 = load i32, ptr %nid.addr, align 4, !dbg !694
  %call = call i32 @gen_pool_add_owner(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef null) #10, !dbg !695
  ret i32 %call, !dbg !696
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !697 dso_local i32 @gen_pool_add_owner(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mce_event_llist", scope: !2, file: !3, line: 25, type: !165, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/mce/.genpool.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/mce/genpool\22 -D KBUILD_BASENAME=\22genpool\22 -D KBUILD_MODNAME=\22genpool\22 -D __KBUILD_MODNAME=kmod_genpool -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/mce/genpool.ll arch/x86/kernel/cpu/mce/genpool.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !64, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/mce/genpool.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "925dafcecdfe687788967549f7fc04ab")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !58, !60, !61}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mce_evt_llist", file: !15, line: 27, size: 1088, elements: !16)
!15 = !DIFile(filename: "arch/x86/kernel/cpu/mce/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8c545da49e4aac298c586d134d611df")
!16 = !{!17, !23}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "llnode", scope: !14, file: !15, line: 28, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !19, line: 60, size: 64, elements: !20)
!19 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !19, line: 61, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mce", scope: !14, file: !15, line: 29, baseType: !24, size: 1024, offset: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mce", file: !25, line: 13, size: 1024, elements: !26)
!25 = !DIFile(filename: "./arch/x86/include/uapi/asm/mce.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d46edd5c7cf04919fa578f239ee9b8c1")
!26 = !{!27, !31, !32, !33, !34, !35, !36, !37, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !24, file: !25, line: 14, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !30)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!30 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !24, file: !25, line: 15, baseType: !28, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !24, file: !25, line: 16, baseType: !28, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "mcgstatus", scope: !24, file: !25, line: 17, baseType: !28, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !24, file: !25, line: 18, baseType: !28, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !24, file: !25, line: 19, baseType: !28, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !24, file: !25, line: 20, baseType: !28, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cpuvendor", scope: !24, file: !25, line: 21, baseType: !38, size: 8, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "inject_flags", scope: !24, file: !25, line: 22, baseType: !38, size: 8, offset: 456)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !24, file: !25, line: 23, baseType: !38, size: 8, offset: 464)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !24, file: !25, line: 24, baseType: !38, size: 8, offset: 472)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid", scope: !24, file: !25, line: 25, baseType: !44, size: 32, offset: 480)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !24, file: !25, line: 26, baseType: !38, size: 8, offset: 512)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "bank", scope: !24, file: !25, line: 27, baseType: !38, size: 8, offset: 520)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !24, file: !25, line: 28, baseType: !38, size: 8, offset: 528)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "finished", scope: !24, file: !25, line: 29, baseType: !38, size: 8, offset: 536)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "extcpu", scope: !24, file: !25, line: 30, baseType: !44, size: 32, offset: 544)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "socketid", scope: !24, file: !25, line: 31, baseType: !44, size: 32, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !24, file: !25, line: 32, baseType: !44, size: 32, offset: 608)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mcgcap", scope: !24, file: !25, line: 33, baseType: !28, size: 64, offset: 640)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "synd", scope: !24, file: !25, line: 34, baseType: !28, size: 64, offset: 704)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ipid", scope: !24, file: !25, line: 35, baseType: !28, size: 64, offset: 768)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !24, file: !25, line: 36, baseType: !28, size: 64, offset: 832)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !24, file: !25, line: 37, baseType: !44, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !24, file: !25, line: 38, baseType: !28, size: 64, offset: 960)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !59, line: 42, baseType: !60)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!64 = !{!65, !117, !124, !129, !0, !160}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "_rs", scope: !67, file: !3, line: 109, type: !75, isLocal: true, isDefinition: true)
!67 = distinct !DISubprogram(name: "mce_gen_pool_add", scope: !3, file: !3, line: 97, type: !68, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !71}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!72 = !{!73, !74}
!73 = !DILocalVariable(name: "mce", arg: 1, scope: !67, file: !3, line: 97, type: !71)
!74 = !DILocalVariable(name: "node", scope: !67, file: !3, line: 99, type: !13)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !76, line: 15, size: 320, elements: !77)
!76 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!77 = !{!78, !111, !112, !113, !114, !115, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !75, file: !76, line: 16, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !81, file: !80, line: 15, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !85, line: 44, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !85, line: 14, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 15, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 15, size: 32, elements: !90)
!90 = !{!91, !96, !103}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !85, line: 16, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 174, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 172, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !93, file: !59, line: 173, baseType: !70, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 24, baseType: !97, size: 16)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 24, size: 16, elements: !98)
!98 = !{!99, !102}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !97, file: !85, line: 25, baseType: !100, size: 8)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !101, line: 17, baseType: !38)
!101 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !97, file: !85, line: 26, baseType: !100, size: 8, offset: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 28, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 28, size: 32, elements: !105)
!105 = !{!106, !110}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !104, file: !85, line: 29, baseType: !107, size: 16)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !101, line: 19, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !109)
!109 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !104, file: !85, line: 30, baseType: !107, size: 16, offset: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !75, file: !76, line: 18, baseType: !70, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !75, file: !76, line: 19, baseType: !70, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !75, file: !76, line: 20, baseType: !70, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !75, file: !76, line: 21, baseType: !70, size: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !75, file: !76, line: 22, baseType: !60, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !76, line: 23, baseType: !60, size: 64, offset: 256)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 136, elements: !122)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!122 = !{!123}
!123 = !DISubrange(count: 17)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 248, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 31)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "mce_evt_pool", scope: !2, file: !3, line: 24, type: !131, isLocal: true, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !133, line: 58, size: 448, elements: !134)
!133 = !DIFile(filename: "./include/linux/genalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff988c2ef6ff17976c53a4600441678f")
!134 = !{!135, !144, !150, !151, !157, !158}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !132, file: !133, line: 59, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !137, line: 29, baseType: !138)
!137 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !137, line: 17, size: 32, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !137, line: 18, baseType: !141, size: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !137, line: 18, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !141, file: !137, line: 19, baseType: !81, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !132, file: !133, line: 60, baseType: !145, size: 128, offset: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !59, line: 190, size: 128, elements: !146)
!146 = !{!147, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !59, line: 191, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !59, line: 191, baseType: !148, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "min_alloc_order", scope: !132, file: !133, line: 61, baseType: !70, size: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !132, file: !133, line: 63, baseType: !152, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "genpool_algo_t", file: !133, line: 48, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!60, !156, !60, !60, !7, !12, !131, !60}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !132, file: !133, line: 64, baseType: !12, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !133, line: 66, baseType: !159, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "gen_pool_buf", scope: !2, file: !3, line: 26, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 65536, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 8192)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !19, line: 56, size: 64, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !165, file: !19, line: 57, baseType: !22, size: 64)
!168 = !{i32 7, !"Dwarf Version", i32 5}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 8, !"cf-protection-branch", i32 1}
!172 = !{i32 4, !"function_return_thunk_extern", i32 1}
!173 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!174 = !{i32 1, !"Code Model", i32 2}
!175 = !{i32 1, !"override-stack-alignment", i32 8}
!176 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!177 = distinct !DISubprogram(name: "mce_gen_pool_prepare_records", scope: !3, file: !3, line: 55, type: !178, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!22}
!180 = !{!181, !182, !183, !184, !185, !188}
!181 = !DILocalVariable(name: "head", scope: !177, file: !3, line: 57, type: !22)
!182 = !DILocalVariable(name: "new_head", scope: !177, file: !3, line: 58, type: !165)
!183 = !DILocalVariable(name: "node", scope: !177, file: !3, line: 59, type: !13)
!184 = !DILocalVariable(name: "t", scope: !177, file: !3, line: 59, type: !13)
!185 = !DILocalVariable(name: "__mptr", scope: !186, file: !3, line: 66, type: !12)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 66, column: 2)
!187 = distinct !DILexicalBlock(scope: !177, file: !3, line: 66, column: 2)
!188 = !DILocalVariable(name: "__mptr", scope: !189, file: !3, line: 66, type: !12)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 66, column: 2)
!190 = distinct !DILexicalBlock(scope: !187, file: !3, line: 66, column: 2)
!191 = !DILocation(line: 57, column: 2, scope: !177)
!192 = !DILocation(line: 57, column: 21, scope: !177)
!193 = !DILocation(line: 58, column: 2, scope: !177)
!194 = !DILocation(line: 59, column: 2, scope: !177)
!195 = !DILocation(line: 59, column: 24, scope: !177)
!196 = !DILocation(line: 59, column: 31, scope: !177)
!197 = !DILocation(line: 61, column: 9, scope: !177)
!198 = !DILocation(line: 61, column: 7, scope: !177)
!199 = !DILocation(line: 62, column: 7, scope: !200)
!200 = distinct !DILexicalBlock(scope: !177, file: !3, line: 62, column: 6)
!201 = !DILocation(line: 62, column: 6, scope: !177)
!202 = !DILocation(line: 63, column: 3, scope: !200)
!203 = !DILocation(line: 66, column: 2, scope: !186)
!204 = !DILocation(line: 66, column: 2, scope: !187)
!205 = !DILocation(line: 66, column: 2, scope: !190)
!206 = !DILocation(line: 66, column: 2, scope: !189)
!207 = !DILocation(line: 0, scope: !190)
!208 = !DILocation(line: 67, column: 32, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 67, column: 7)
!210 = distinct !DILexicalBlock(scope: !190, file: !3, line: 66, column: 51)
!211 = !DILocation(line: 67, column: 38, scope: !209)
!212 = !DILocation(line: 67, column: 8, scope: !209)
!213 = !DILocation(line: 67, column: 7, scope: !210)
!214 = !DILocation(line: 68, column: 15, scope: !209)
!215 = !DILocation(line: 68, column: 21, scope: !209)
!216 = !DILocation(line: 68, column: 4, scope: !209)
!217 = !DILocation(line: 69, column: 2, scope: !210)
!218 = distinct !{!218, !204, !219, !220, !221}
!219 = !DILocation(line: 69, column: 2, scope: !187)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !{!"llvm.loop.unroll.disable"}
!222 = !DILocation(line: 71, column: 18, scope: !177)
!223 = !DILocation(line: 71, column: 2, scope: !177)
!224 = !DILocation(line: 72, column: 1, scope: !177)
!225 = distinct !DISubprogram(name: "llist_del_all", scope: !19, file: !19, line: 237, type: !226, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!226 = !DISubroutineType(types: !227)
!227 = !{!22, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!229 = !{!230, !231, !234}
!230 = !DILocalVariable(name: "head", arg: 1, scope: !225, file: !19, line: 237, type: !228)
!231 = !DILocalVariable(name: "__ai_ptr", scope: !232, file: !19, line: 239, type: !233)
!232 = distinct !DILexicalBlock(scope: !225, file: !19, line: 239, column: 9)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!234 = !DILocalVariable(name: "__ret", scope: !235, file: !19, line: 239, type: !22)
!235 = distinct !DILexicalBlock(scope: !232, file: !19, line: 239, column: 9)
!236 = !DILocation(line: 237, column: 67, scope: !225)
!237 = !DILocation(line: 239, column: 9, scope: !232)
!238 = !DILocation(line: 239, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !232, file: !19, line: 239, column: 9)
!240 = !DILocation(line: 239, column: 9, scope: !235)
!241 = !{i64 2148931144}
!242 = !DILocation(line: 239, column: 9, scope: !225)
!243 = !DILocation(line: 239, column: 2, scope: !225)
!244 = distinct !DISubprogram(name: "is_duplicate_mce_record", scope: !3, file: !3, line: 32, type: !245, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !13, !13}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 35, baseType: !248)
!248 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!249 = !{!250, !251, !252, !253, !254, !255, !258}
!250 = !DILocalVariable(name: "t", arg: 1, scope: !244, file: !3, line: 32, type: !13)
!251 = !DILocalVariable(name: "l", arg: 2, scope: !244, file: !3, line: 32, type: !13)
!252 = !DILocalVariable(name: "node", scope: !244, file: !3, line: 34, type: !13)
!253 = !DILocalVariable(name: "m1", scope: !244, file: !3, line: 35, type: !71)
!254 = !DILocalVariable(name: "m2", scope: !244, file: !3, line: 35, type: !71)
!255 = !DILocalVariable(name: "__mptr", scope: !256, file: !3, line: 39, type: !12)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 39, column: 2)
!257 = distinct !DILexicalBlock(scope: !244, file: !3, line: 39, column: 2)
!258 = !DILocalVariable(name: "__mptr", scope: !259, file: !3, line: 39, type: !12)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 39, column: 2)
!260 = distinct !DILexicalBlock(scope: !257, file: !3, line: 39, column: 2)
!261 = !DILocation(line: 32, column: 59, scope: !244)
!262 = !DILocation(line: 32, column: 84, scope: !244)
!263 = !DILocation(line: 34, column: 2, scope: !244)
!264 = !DILocation(line: 34, column: 24, scope: !244)
!265 = !DILocation(line: 35, column: 2, scope: !244)
!266 = !DILocation(line: 35, column: 14, scope: !244)
!267 = !DILocation(line: 35, column: 19, scope: !244)
!268 = !DILocation(line: 37, column: 8, scope: !244)
!269 = !DILocation(line: 37, column: 11, scope: !244)
!270 = !DILocation(line: 37, column: 5, scope: !244)
!271 = !DILocation(line: 39, column: 2, scope: !256)
!272 = !DILocation(line: 39, column: 2, scope: !257)
!273 = !DILocation(line: 39, column: 2, scope: !260)
!274 = !DILocation(line: 40, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !260, file: !3, line: 39, column: 49)
!276 = !DILocation(line: 40, column: 15, scope: !275)
!277 = !DILocation(line: 40, column: 6, scope: !275)
!278 = !DILocation(line: 42, column: 16, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 42, column: 7)
!280 = !DILocation(line: 42, column: 20, scope: !279)
!281 = !DILocation(line: 42, column: 8, scope: !279)
!282 = !DILocation(line: 42, column: 7, scope: !275)
!283 = !DILocation(line: 43, column: 4, scope: !279)
!284 = !DILocation(line: 44, column: 2, scope: !275)
!285 = !DILocation(line: 39, column: 2, scope: !259)
!286 = distinct !{!286, !272, !287, !220, !221}
!287 = !DILocation(line: 44, column: 2, scope: !257)
!288 = !DILocation(line: 45, column: 2, scope: !244)
!289 = !DILocation(line: 46, column: 1, scope: !244)
!290 = distinct !DISubprogram(name: "llist_add", scope: !19, file: !19, line: 219, type: !291, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!247, !22, !228}
!293 = !{!294, !295}
!294 = !DILocalVariable(name: "new", arg: 1, scope: !290, file: !19, line: 219, type: !22)
!295 = !DILocalVariable(name: "head", arg: 2, scope: !290, file: !19, line: 219, type: !228)
!296 = !DILocation(line: 219, column: 49, scope: !290)
!297 = !DILocation(line: 219, column: 73, scope: !290)
!298 = !DILocation(line: 221, column: 25, scope: !290)
!299 = !DILocation(line: 221, column: 30, scope: !290)
!300 = !DILocation(line: 221, column: 35, scope: !290)
!301 = !DILocation(line: 221, column: 9, scope: !290)
!302 = !DILocation(line: 221, column: 2, scope: !290)
!303 = distinct !DISubprogram(name: "mce_gen_pool_process", scope: !3, file: !3, line: 74, type: !304, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !308, line: 98, size: 256, elements: !309)
!308 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!309 = !{!310, !320, !321}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !307, file: !308, line: 99, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !312, line: 13, baseType: !313)
!312 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !59, line: 181, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 179, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !314, file: !59, line: 180, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !101, line: 22, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !29, line: 30, baseType: !319)
!319 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !307, file: !308, line: 100, baseType: !145, size: 128, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !307, file: !308, line: 101, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !308, line: 21, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!324 = !{!325, !326, !327, !328, !329, !330, !333}
!325 = !DILocalVariable(name: "__unused", arg: 1, scope: !303, file: !3, line: 74, type: !306)
!326 = !DILocalVariable(name: "head", scope: !303, file: !3, line: 76, type: !22)
!327 = !DILocalVariable(name: "node", scope: !303, file: !3, line: 77, type: !13)
!328 = !DILocalVariable(name: "tmp", scope: !303, file: !3, line: 77, type: !13)
!329 = !DILocalVariable(name: "mce", scope: !303, file: !3, line: 78, type: !71)
!330 = !DILocalVariable(name: "__mptr", scope: !331, file: !3, line: 85, type: !12)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 85, column: 2)
!332 = distinct !DILexicalBlock(scope: !303, file: !3, line: 85, column: 2)
!333 = !DILocalVariable(name: "__mptr", scope: !334, file: !3, line: 85, type: !12)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 85, column: 2)
!335 = distinct !DILexicalBlock(scope: !332, file: !3, line: 85, column: 2)
!336 = !DILocation(line: 74, column: 47, scope: !303)
!337 = !DILocation(line: 76, column: 2, scope: !303)
!338 = !DILocation(line: 76, column: 21, scope: !303)
!339 = !DILocation(line: 77, column: 2, scope: !303)
!340 = !DILocation(line: 77, column: 24, scope: !303)
!341 = !DILocation(line: 77, column: 31, scope: !303)
!342 = !DILocation(line: 78, column: 2, scope: !303)
!343 = !DILocation(line: 78, column: 14, scope: !303)
!344 = !DILocation(line: 80, column: 9, scope: !303)
!345 = !DILocation(line: 80, column: 7, scope: !303)
!346 = !DILocation(line: 81, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !303, file: !3, line: 81, column: 6)
!348 = !DILocation(line: 81, column: 6, scope: !303)
!349 = !DILocation(line: 82, column: 3, scope: !347)
!350 = !DILocation(line: 84, column: 29, scope: !303)
!351 = !DILocation(line: 84, column: 9, scope: !303)
!352 = !DILocation(line: 84, column: 7, scope: !303)
!353 = !DILocation(line: 85, column: 2, scope: !331)
!354 = !DILocation(line: 85, column: 2, scope: !332)
!355 = !DILocation(line: 85, column: 2, scope: !335)
!356 = !DILocation(line: 85, column: 2, scope: !334)
!357 = !DILocation(line: 0, scope: !335)
!358 = !DILocation(line: 86, column: 10, scope: !359)
!359 = distinct !DILexicalBlock(scope: !335, file: !3, line: 85, column: 53)
!360 = !DILocation(line: 86, column: 16, scope: !359)
!361 = !DILocation(line: 86, column: 7, scope: !359)
!362 = !DILocation(line: 87, column: 59, scope: !359)
!363 = !DILocation(line: 87, column: 3, scope: !359)
!364 = !DILocation(line: 88, column: 17, scope: !359)
!365 = !DILocation(line: 88, column: 46, scope: !359)
!366 = !DILocation(line: 88, column: 31, scope: !359)
!367 = !DILocation(line: 88, column: 3, scope: !359)
!368 = !DILocation(line: 89, column: 2, scope: !359)
!369 = distinct !{!369, !354, !370, !220, !221}
!370 = !DILocation(line: 89, column: 2, scope: !332)
!371 = !DILocation(line: 90, column: 1, scope: !303)
!372 = !DISubprogram(name: "llist_reverse_order", scope: !19, file: !19, line: 252, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{!22, !22}
!375 = !DISubprogram(name: "blocking_notifier_call_chain", scope: !376, file: !376, line: 171, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!377 = !DISubroutineType(types: !378)
!378 = !{!70, !379, !60, !12}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !376, line: 65, size: 384, elements: !381)
!381 = !{!382, !395}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !380, file: !376, line: 66, baseType: !383, size: 320)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !384, line: 48, size: 320, elements: !385)
!384 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!385 = !{!386, !387, !388, !393, !394}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !383, file: !384, line: 49, baseType: !311, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !383, file: !384, line: 55, baseType: !311, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !383, file: !384, line: 57, baseType: !389, size: 32, offset: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !390, line: 15, size: 32, elements: !391)
!390 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !389, file: !390, line: 20, baseType: !92, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !383, file: !384, line: 59, baseType: !79, size: 32, offset: 160)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !383, file: !384, line: 60, baseType: !145, size: 128, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !380, file: !376, line: 67, baseType: !396, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !376, line: 54, size: 192, elements: !398)
!398 = !{!399, !404, !405}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !397, file: !376, line: 55, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !376, line: 51, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!70, !396, !60, !12}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !376, line: 56, baseType: !396, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !397, file: !376, line: 57, baseType: !70, size: 32, offset: 128)
!406 = distinct !DISubprogram(name: "gen_pool_free", scope: !133, file: !133, line: 169, type: !407, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !413)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !131, !60, !409}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 61, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !411, line: 72, baseType: !412)
!411 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !411, line: 16, baseType: !60)
!413 = !{!414, !415, !416}
!414 = !DILocalVariable(name: "pool", arg: 1, scope: !406, file: !133, line: 169, type: !131)
!415 = !DILocalVariable(name: "addr", arg: 2, scope: !406, file: !133, line: 169, type: !60)
!416 = !DILocalVariable(name: "size", arg: 3, scope: !406, file: !133, line: 170, type: !409)
!417 = !DILocation(line: 169, column: 51, scope: !406)
!418 = !DILocation(line: 169, column: 71, scope: !406)
!419 = !DILocation(line: 170, column: 24, scope: !406)
!420 = !DILocation(line: 172, column: 22, scope: !406)
!421 = !DILocation(line: 172, column: 28, scope: !406)
!422 = !DILocation(line: 172, column: 34, scope: !406)
!423 = !DILocation(line: 172, column: 2, scope: !406)
!424 = !DILocation(line: 173, column: 1, scope: !406)
!425 = distinct !DISubprogram(name: "mce_gen_pool_empty", scope: !3, file: !3, line: 92, type: !426, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!426 = !DISubroutineType(types: !427)
!427 = !{!247}
!428 = !DILocation(line: 94, column: 9, scope: !425)
!429 = !DILocation(line: 94, column: 2, scope: !425)
!430 = distinct !DISubprogram(name: "llist_empty", scope: !19, file: !19, line: 189, type: !431, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!431 = !DISubroutineType(types: !432)
!432 = !{!247, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!435 = !{!436}
!436 = !DILocalVariable(name: "head", arg: 1, scope: !430, file: !19, line: 189, type: !433)
!437 = !DILocation(line: 189, column: 57, scope: !430)
!438 = !DILocation(line: 191, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !430, file: !19, line: 191, column: 9)
!440 = !DILocation(line: 191, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !439, file: !19, line: 191, column: 9)
!442 = !DILocation(line: 191, column: 32, scope: !430)
!443 = !DILocation(line: 191, column: 2, scope: !430)
!444 = !DILocation(line: 97, column: 34, scope: !67)
!445 = !DILocation(line: 99, column: 2, scope: !67)
!446 = !DILocation(line: 99, column: 24, scope: !67)
!447 = !DILocation(line: 101, column: 17, scope: !448)
!448 = distinct !DILexicalBlock(scope: !67, file: !3, line: 101, column: 6)
!449 = !DILocation(line: 101, column: 6, scope: !448)
!450 = !DILocation(line: 101, column: 6, scope: !67)
!451 = !DILocation(line: 102, column: 3, scope: !448)
!452 = !DILocation(line: 104, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !67, file: !3, line: 104, column: 6)
!454 = !DILocation(line: 104, column: 6, scope: !67)
!455 = !DILocation(line: 105, column: 3, scope: !453)
!456 = !DILocation(line: 107, column: 32, scope: !67)
!457 = !DILocation(line: 107, column: 17, scope: !67)
!458 = !DILocation(line: 107, column: 9, scope: !67)
!459 = !DILocation(line: 107, column: 7, scope: !67)
!460 = !DILocation(line: 108, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !67, file: !3, line: 108, column: 6)
!462 = !DILocation(line: 108, column: 6, scope: !67)
!463 = !DILocation(line: 109, column: 3, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 109, column: 3)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 109, column: 3)
!466 = distinct !DILexicalBlock(scope: !461, file: !3, line: 108, column: 13)
!467 = !DILocation(line: 109, column: 3, scope: !465)
!468 = !DILocation(line: 109, column: 3, scope: !469)
!469 = distinct !DILexicalBlock(scope: !464, file: !3, line: 109, column: 3)
!470 = !DILocation(line: 109, column: 3, scope: !471)
!471 = distinct !DILexicalBlock(scope: !469, file: !3, line: 109, column: 3)
!472 = !DILocation(line: 110, column: 3, scope: !466)
!473 = !DILocation(line: 113, column: 10, scope: !67)
!474 = !DILocation(line: 113, column: 16, scope: !67)
!475 = !DILocation(line: 113, column: 21, scope: !67)
!476 = !DILocation(line: 113, column: 2, scope: !67)
!477 = !DILocation(line: 114, column: 13, scope: !67)
!478 = !DILocation(line: 114, column: 19, scope: !67)
!479 = !DILocation(line: 114, column: 2, scope: !67)
!480 = !DILocation(line: 116, column: 2, scope: !67)
!481 = !DILocation(line: 117, column: 1, scope: !67)
!482 = !DISubprogram(name: "filter_mce", scope: !15, file: !15, line: 209, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!483 = !DISubroutineType(types: !484)
!484 = !{!247, !71}
!485 = distinct !DISubprogram(name: "gen_pool_alloc", scope: !133, file: !133, line: 151, type: !486, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!60, !131, !409}
!488 = !{!489, !490}
!489 = !DILocalVariable(name: "pool", arg: 1, scope: !485, file: !133, line: 151, type: !131)
!490 = !DILocalVariable(name: "size", arg: 2, scope: !485, file: !133, line: 151, type: !409)
!491 = !DILocation(line: 151, column: 61, scope: !485)
!492 = !DILocation(line: 151, column: 74, scope: !485)
!493 = !DILocation(line: 153, column: 29, scope: !485)
!494 = !DILocation(line: 153, column: 35, scope: !485)
!495 = !DILocation(line: 153, column: 41, scope: !485)
!496 = !DILocation(line: 153, column: 47, scope: !485)
!497 = !DILocation(line: 153, column: 53, scope: !485)
!498 = !DILocation(line: 153, column: 59, scope: !485)
!499 = !DILocation(line: 153, column: 9, scope: !485)
!500 = !DILocation(line: 153, column: 2, scope: !485)
!501 = !DISubprogram(name: "___ratelimit", scope: !76, file: !76, line: 44, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!502 = !DISubroutineType(types: !503)
!503 = !{!70, !504, !159}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!505 = !DISubprogram(name: "_printk", scope: !506, file: !506, line: 153, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!507 = !DISubroutineType(types: !508)
!508 = !{!70, !159, null}
!509 = distinct !DISubprogram(name: "mce_gen_pool_init", scope: !3, file: !3, line: 140, type: !510, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!510 = !DISubroutineType(types: !511)
!511 = !{!70}
!512 = !DILocation(line: 143, column: 6, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !3, line: 143, column: 6)
!514 = !DILocation(line: 143, column: 6, scope: !509)
!515 = !DILocation(line: 144, column: 3, scope: !513)
!516 = !DILocation(line: 146, column: 9, scope: !509)
!517 = !DILocation(line: 146, column: 2, scope: !509)
!518 = !DILocation(line: 147, column: 1, scope: !509)
!519 = distinct !DISubprogram(name: "mce_gen_pool_create", scope: !3, file: !3, line: 119, type: !510, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!520 = !{!521, !522, !523}
!521 = !DILocalVariable(name: "tmpp", scope: !519, file: !3, line: 121, type: !131)
!522 = !DILocalVariable(name: "ret", scope: !519, file: !3, line: 122, type: !70)
!523 = !DILabel(scope: !519, name: "out", file: !3, line: 136)
!524 = !DILocation(line: 121, column: 2, scope: !519)
!525 = !DILocation(line: 121, column: 19, scope: !519)
!526 = !DILocation(line: 122, column: 2, scope: !519)
!527 = !DILocation(line: 122, column: 6, scope: !519)
!528 = !DILocation(line: 124, column: 9, scope: !519)
!529 = !DILocation(line: 124, column: 7, scope: !519)
!530 = !DILocation(line: 125, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !519, file: !3, line: 125, column: 6)
!532 = !DILocation(line: 125, column: 6, scope: !519)
!533 = !DILocation(line: 126, column: 3, scope: !531)
!534 = !DILocation(line: 128, column: 21, scope: !519)
!535 = !DILocation(line: 128, column: 8, scope: !519)
!536 = !DILocation(line: 128, column: 6, scope: !519)
!537 = !DILocation(line: 129, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !519, file: !3, line: 129, column: 6)
!539 = !DILocation(line: 129, column: 6, scope: !519)
!540 = !DILocation(line: 130, column: 20, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !3, line: 129, column: 11)
!542 = !DILocation(line: 130, column: 3, scope: !541)
!543 = !DILocation(line: 131, column: 3, scope: !541)
!544 = !DILocation(line: 134, column: 17, scope: !519)
!545 = !DILocation(line: 134, column: 15, scope: !519)
!546 = !DILocation(line: 134, column: 2, scope: !519)
!547 = !DILocation(line: 136, column: 1, scope: !519)
!548 = !DILocation(line: 137, column: 9, scope: !519)
!549 = !DILocation(line: 138, column: 1, scope: !519)
!550 = !DILocation(line: 137, column: 2, scope: !519)
!551 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !552, file: !552, line: 94, type: !553, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !558)
!552 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!553 = !DISubroutineType(types: !554)
!554 = !{null, !555, !409}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!558 = !{!559, !560}
!559 = !DILocalVariable(name: "v", arg: 1, scope: !551, file: !552, line: 94, type: !555)
!560 = !DILocalVariable(name: "size", arg: 2, scope: !551, file: !552, line: 94, type: !409)
!561 = !DILocation(line: 94, column: 79, scope: !551)
!562 = !DILocation(line: 94, column: 89, scope: !551)
!563 = !DILocation(line: 96, column: 20, scope: !551)
!564 = !DILocation(line: 96, column: 23, scope: !551)
!565 = !DILocation(line: 96, column: 2, scope: !551)
!566 = !DILocation(line: 97, column: 2, scope: !551)
!567 = !DILocation(line: 98, column: 1, scope: !551)
!568 = distinct !DISubprogram(name: "kasan_check_write", scope: !569, file: !569, line: 44, type: !570, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !572)
!569 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!570 = !DISubroutineType(types: !571)
!571 = !{!247, !555, !7}
!572 = !{!573, !574}
!573 = !DILocalVariable(name: "p", arg: 1, scope: !568, file: !569, line: 44, type: !555)
!574 = !DILocalVariable(name: "size", arg: 2, scope: !568, file: !569, line: 44, type: !7)
!575 = !DILocation(line: 44, column: 59, scope: !568)
!576 = !DILocation(line: 44, column: 75, scope: !568)
!577 = !DILocation(line: 46, column: 2, scope: !568)
!578 = distinct !DISubprogram(name: "kcsan_check_access", scope: !579, file: !579, line: 229, type: !580, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!579 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!580 = !DISubroutineType(types: !581)
!581 = !{null, !555, !409, !70}
!582 = !{!583, !584, !585}
!583 = !DILocalVariable(name: "ptr", arg: 1, scope: !578, file: !579, line: 229, type: !555)
!584 = !DILocalVariable(name: "size", arg: 2, scope: !578, file: !579, line: 229, type: !409)
!585 = !DILocalVariable(name: "type", arg: 3, scope: !578, file: !579, line: 230, type: !70)
!586 = !DILocation(line: 229, column: 60, scope: !578)
!587 = !DILocation(line: 229, column: 72, scope: !578)
!588 = !DILocation(line: 230, column: 15, scope: !578)
!589 = !DILocation(line: 230, column: 23, scope: !578)
!590 = distinct !DISubprogram(name: "mce_cmp", scope: !15, file: !15, line: 95, type: !591, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{!247, !71, !71}
!593 = !{!594, !595}
!594 = !DILocalVariable(name: "m1", arg: 1, scope: !590, file: !15, line: 95, type: !71)
!595 = !DILocalVariable(name: "m2", arg: 2, scope: !590, file: !15, line: 95, type: !71)
!596 = !DILocation(line: 95, column: 40, scope: !590)
!597 = !DILocation(line: 95, column: 56, scope: !590)
!598 = !DILocation(line: 97, column: 9, scope: !590)
!599 = !DILocation(line: 97, column: 13, scope: !590)
!600 = !DILocation(line: 97, column: 21, scope: !590)
!601 = !DILocation(line: 97, column: 25, scope: !590)
!602 = !DILocation(line: 97, column: 18, scope: !590)
!603 = !DILocation(line: 97, column: 30, scope: !590)
!604 = !DILocation(line: 98, column: 3, scope: !590)
!605 = !DILocation(line: 98, column: 7, scope: !590)
!606 = !DILocation(line: 98, column: 17, scope: !590)
!607 = !DILocation(line: 98, column: 21, scope: !590)
!608 = !DILocation(line: 98, column: 14, scope: !590)
!609 = !DILocation(line: 98, column: 28, scope: !590)
!610 = !DILocation(line: 99, column: 3, scope: !590)
!611 = !DILocation(line: 99, column: 7, scope: !590)
!612 = !DILocation(line: 99, column: 15, scope: !590)
!613 = !DILocation(line: 99, column: 19, scope: !590)
!614 = !DILocation(line: 99, column: 12, scope: !590)
!615 = !DILocation(line: 99, column: 24, scope: !590)
!616 = !DILocation(line: 100, column: 3, scope: !590)
!617 = !DILocation(line: 100, column: 7, scope: !590)
!618 = !DILocation(line: 100, column: 15, scope: !590)
!619 = !DILocation(line: 100, column: 19, scope: !590)
!620 = !DILocation(line: 100, column: 12, scope: !590)
!621 = !DILocation(line: 97, column: 2, scope: !590)
!622 = !DISubprogram(name: "llist_add_batch", scope: !19, file: !19, line: 199, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubroutineType(types: !624)
!624 = !{!247, !22, !22, !228}
!625 = !DISubprogram(name: "gen_pool_free_owner", scope: !133, file: !133, line: 167, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !131, !60, !409, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!629 = distinct !DISubprogram(name: "gen_pool_alloc_algo", scope: !133, file: !133, line: 135, type: !630, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !632)
!630 = !DISubroutineType(types: !631)
!631 = !{!60, !131, !409, !152, !12}
!632 = !{!633, !634, !635, !636}
!633 = !DILocalVariable(name: "pool", arg: 1, scope: !629, file: !133, line: 135, type: !131)
!634 = !DILocalVariable(name: "size", arg: 2, scope: !629, file: !133, line: 136, type: !409)
!635 = !DILocalVariable(name: "algo", arg: 3, scope: !629, file: !133, line: 136, type: !152)
!636 = !DILocalVariable(name: "data", arg: 4, scope: !629, file: !133, line: 136, type: !12)
!637 = !DILocation(line: 135, column: 66, scope: !629)
!638 = !DILocation(line: 136, column: 10, scope: !629)
!639 = !DILocation(line: 136, column: 31, scope: !629)
!640 = !DILocation(line: 136, column: 43, scope: !629)
!641 = !DILocation(line: 138, column: 35, scope: !629)
!642 = !DILocation(line: 138, column: 41, scope: !629)
!643 = !DILocation(line: 138, column: 47, scope: !629)
!644 = !DILocation(line: 138, column: 53, scope: !629)
!645 = !DILocation(line: 138, column: 9, scope: !629)
!646 = !DILocation(line: 138, column: 2, scope: !629)
!647 = !DISubprogram(name: "gen_pool_alloc_algo_owner", scope: !133, file: !133, line: 125, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!648 = !DISubroutineType(types: !649)
!649 = !{!60, !131, !409, !152, !12, !628}
!650 = !DISubprogram(name: "gen_pool_create", scope: !133, file: !133, line: 96, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubroutineType(types: !652)
!652 = !{!131, !70, !70}
!653 = distinct !DISubprogram(name: "gen_pool_add", scope: !133, file: !133, line: 119, type: !654, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!70, !131, !60, !409, !70}
!656 = !{!657, !658, !659, !660}
!657 = !DILocalVariable(name: "pool", arg: 1, scope: !653, file: !133, line: 119, type: !131)
!658 = !DILocalVariable(name: "addr", arg: 2, scope: !653, file: !133, line: 119, type: !60)
!659 = !DILocalVariable(name: "size", arg: 3, scope: !653, file: !133, line: 120, type: !409)
!660 = !DILocalVariable(name: "nid", arg: 4, scope: !653, file: !133, line: 120, type: !70)
!661 = !DILocation(line: 119, column: 49, scope: !653)
!662 = !DILocation(line: 119, column: 69, scope: !653)
!663 = !DILocation(line: 120, column: 18, scope: !653)
!664 = !DILocation(line: 120, column: 28, scope: !653)
!665 = !DILocation(line: 122, column: 27, scope: !653)
!666 = !DILocation(line: 122, column: 33, scope: !653)
!667 = !DILocation(line: 122, column: 43, scope: !653)
!668 = !DILocation(line: 122, column: 49, scope: !653)
!669 = !DILocation(line: 122, column: 9, scope: !653)
!670 = !DILocation(line: 122, column: 2, scope: !653)
!671 = !DISubprogram(name: "gen_pool_destroy", scope: !133, file: !133, line: 124, type: !672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !131}
!674 = distinct !DISubprogram(name: "gen_pool_add_virt", scope: !133, file: !133, line: 101, type: !675, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!675 = !DISubroutineType(types: !676)
!676 = !{!70, !131, !60, !677, !409, !70}
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !59, line: 159, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !101, line: 23, baseType: !28)
!679 = !{!680, !681, !682, !683, !684}
!680 = !DILocalVariable(name: "pool", arg: 1, scope: !674, file: !133, line: 101, type: !131)
!681 = !DILocalVariable(name: "addr", arg: 2, scope: !674, file: !133, line: 101, type: !60)
!682 = !DILocalVariable(name: "phys", arg: 3, scope: !674, file: !133, line: 102, type: !677)
!683 = !DILocalVariable(name: "size", arg: 4, scope: !674, file: !133, line: 102, type: !409)
!684 = !DILocalVariable(name: "nid", arg: 5, scope: !674, file: !133, line: 102, type: !70)
!685 = !DILocation(line: 101, column: 54, scope: !674)
!686 = !DILocation(line: 101, column: 74, scope: !674)
!687 = !DILocation(line: 102, column: 15, scope: !674)
!688 = !DILocation(line: 102, column: 28, scope: !674)
!689 = !DILocation(line: 102, column: 38, scope: !674)
!690 = !DILocation(line: 104, column: 28, scope: !674)
!691 = !DILocation(line: 104, column: 34, scope: !674)
!692 = !DILocation(line: 104, column: 40, scope: !674)
!693 = !DILocation(line: 104, column: 46, scope: !674)
!694 = !DILocation(line: 104, column: 52, scope: !674)
!695 = !DILocation(line: 104, column: 9, scope: !674)
!696 = !DILocation(line: 104, column: 2, scope: !674)
!697 = !DISubprogram(name: "gen_pool_add_owner", scope: !133, file: !133, line: 98, type: !698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!698 = !DISubroutineType(types: !699)
!699 = !{!70, !131, !60, !677, !409, !70, !12}
