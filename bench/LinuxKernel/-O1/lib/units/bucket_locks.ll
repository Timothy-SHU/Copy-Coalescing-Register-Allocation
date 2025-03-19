; ModuleID = 'lib/bucket_locks.c'
source_filename = "lib/bucket_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___alloc_bucket_spinlocks: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __alloc_bucket_spinlocks ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_free_bucket_spinlocks: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad free_bucket_spinlocks ; .previous"

%struct.cpumask = type { [1 x i64] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable___alloc_bucket_spinlocks281 = internal global ptr @__alloc_bucket_spinlocks, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_free_bucket_spinlocks282 = internal global ptr @free_bucket_spinlocks, section ".discard.addressable", align 8, !dbg !21
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable___alloc_bucket_spinlocks281, ptr @__UNIQUE_ID___addressable_free_bucket_spinlocks282], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__alloc_bucket_spinlocks(ptr noundef %locks, ptr noundef %locks_mask, i64 noundef %max_size, i32 noundef %cpu_mult, i32 noundef %gfp, ptr noundef %name, ptr noundef %key) #0 align 16 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %locks.addr = alloca ptr, align 8
  %locks_mask.addr = alloca ptr, align 8
  %max_size.addr = alloca i64, align 8
  %cpu_mult.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %tlocks = alloca ptr, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %nr_pcpus = alloca i32, align 4
  %__UNIQUE_ID___x277 = alloca i32, align 4
  %__UNIQUE_ID___y278 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x279 = alloca i32, align 4
  %__UNIQUE_ID___y280 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %locks, ptr %locks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %locks.addr, metadata !94, metadata !DIExpression()), !dbg !113
  store ptr %locks_mask, ptr %locks_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %locks_mask.addr, metadata !95, metadata !DIExpression()), !dbg !114
  store i64 %max_size, ptr %max_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_size.addr, metadata !96, metadata !DIExpression()), !dbg !115
  store i32 %cpu_mult, ptr %cpu_mult.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu_mult.addr, metadata !97, metadata !DIExpression()), !dbg !116
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !98, metadata !DIExpression()), !dbg !117
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !99, metadata !DIExpression()), !dbg !118
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !100, metadata !DIExpression()), !dbg !119
  call void @llvm.lifetime.start.p0(i64 8, ptr %tlocks) #12, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %tlocks, metadata !101, metadata !DIExpression()), !dbg !121
  store ptr null, ptr %tlocks, align 8, !dbg !121
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %i, metadata !102, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #12, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %size, metadata !103, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_pcpus) #12, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %nr_pcpus, metadata !104, metadata !DIExpression()), !dbg !126
  %call = call i32 @cpumask_weight(ptr noundef @__cpu_possible_mask) #13, !dbg !127
  store i32 %call, ptr %nr_pcpus, align 4, !dbg !126
  %0 = load i32, ptr %cpu_mult.addr, align 4, !dbg !128
  %tobool = icmp ne i32 %0, 0, !dbg !128
  br i1 %tobool, label %if.then, label %if.else, !dbg !129

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x277) #12, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x277, metadata !105, metadata !DIExpression()), !dbg !130
  %1 = load i32, ptr %nr_pcpus, align 4, !dbg !130
  store i32 %1, ptr %__UNIQUE_ID___x277, align 4, !dbg !130
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y278) #12, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y278, metadata !109, metadata !DIExpression()), !dbg !130
  store i32 64, ptr %__UNIQUE_ID___y278, align 4, !dbg !130
  %2 = load i32, ptr %__UNIQUE_ID___x277, align 4, !dbg !130
  %3 = load i32, ptr %__UNIQUE_ID___y278, align 4, !dbg !130
  %cmp = icmp ult i32 %2, %3, !dbg !130
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !130

cond.true:                                        ; preds = %if.then
  %4 = load i32, ptr %__UNIQUE_ID___x277, align 4, !dbg !130
  br label %cond.end, !dbg !130

cond.false:                                       ; preds = %if.then
  %5 = load i32, ptr %__UNIQUE_ID___y278, align 4, !dbg !130
  br label %cond.end, !dbg !130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !130
  store i32 %cond, ptr %tmp, align 4, !dbg !130
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y278) #12, !dbg !131
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x277) #12, !dbg !131
  %6 = load i32, ptr %tmp, align 4, !dbg !130
  store i32 %6, ptr %nr_pcpus, align 4, !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x279) #12, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x279, metadata !110, metadata !DIExpression()), !dbg !133
  %7 = load i32, ptr %nr_pcpus, align 4, !dbg !133
  %8 = load i32, ptr %cpu_mult.addr, align 4, !dbg !133
  %mul = mul i32 %7, %8, !dbg !133
  store i32 %mul, ptr %__UNIQUE_ID___x279, align 4, !dbg !133
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y280) #12, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y280, metadata !112, metadata !DIExpression()), !dbg !133
  %9 = load i64, ptr %max_size.addr, align 8, !dbg !133
  %conv = trunc i64 %9 to i32, !dbg !133
  store i32 %conv, ptr %__UNIQUE_ID___y280, align 4, !dbg !133
  %10 = load i32, ptr %__UNIQUE_ID___x279, align 4, !dbg !133
  %11 = load i32, ptr %__UNIQUE_ID___y280, align 4, !dbg !133
  %cmp2 = icmp ult i32 %10, %11, !dbg !133
  br i1 %cmp2, label %cond.true4, label %cond.false5, !dbg !133

cond.true4:                                       ; preds = %cond.end
  %12 = load i32, ptr %__UNIQUE_ID___x279, align 4, !dbg !133
  br label %cond.end6, !dbg !133

cond.false5:                                      ; preds = %cond.end
  %13 = load i32, ptr %__UNIQUE_ID___y280, align 4, !dbg !133
  br label %cond.end6, !dbg !133

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i32 [ %12, %cond.true4 ], [ %13, %cond.false5 ], !dbg !133
  store i32 %cond7, ptr %tmp1, align 4, !dbg !133
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y280) #12, !dbg !134
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x279) #12, !dbg !134
  %14 = load i32, ptr %tmp1, align 4, !dbg !133
  store i32 %14, ptr %size, align 4, !dbg !135
  br label %if.end, !dbg !136

if.else:                                          ; preds = %entry
  %15 = load i64, ptr %max_size.addr, align 8, !dbg !137
  %conv8 = trunc i64 %15 to i32, !dbg !137
  store i32 %conv8, ptr %size, align 4, !dbg !139
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end6
  %16 = load i32, ptr %size, align 4, !dbg !140
  %conv9 = zext i32 %16 to i64, !dbg !140
  %17 = load i32, ptr %gfp.addr, align 4, !dbg !143
  %call10 = call noalias ptr @kvmalloc_array(i64 noundef %conv9, i64 noundef 4, i32 noundef %17) #14, !dbg !144
  store ptr %call10, ptr %tlocks, align 8, !dbg !145
  %18 = load ptr, ptr %tlocks, align 8, !dbg !146
  %tobool11 = icmp ne ptr %18, null, !dbg !146
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !148

if.then12:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !149

if.end13:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %if.end13
  %19 = load i32, ptr %i, align 4, !dbg !153
  %20 = load i32, ptr %size, align 4, !dbg !155
  %cmp14 = icmp ult i32 %19, %20, !dbg !156
  br i1 %cmp14, label %for.body, label %for.end, !dbg !157

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !158

do.body:                                          ; preds = %for.body
  %21 = load ptr, ptr %tlocks, align 8, !dbg !160
  %22 = load i32, ptr %i, align 4, !dbg !160
  %idxprom = zext i32 %22 to i64, !dbg !160
  %arrayidx = getelementptr %struct.spinlock, ptr %21, i64 %idxprom, !dbg !160
  %call16 = call ptr @spinlock_check(ptr noundef %arrayidx) #13, !dbg !160
  %23 = load ptr, ptr %tlocks, align 8, !dbg !160
  %24 = load i32, ptr %i, align 4, !dbg !160
  %idxprom17 = zext i32 %24 to i64, !dbg !160
  %arrayidx18 = getelementptr %struct.spinlock, ptr %23, i64 %idxprom17, !dbg !160
  %25 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !160
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %25, i32 0, i32 0, !dbg !160
  %26 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !160
  %counter = getelementptr inbounds %struct.atomic_t, ptr %26, i32 0, i32 0, !dbg !160
  store i32 0, ptr %counter, align 4, !dbg !160
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx18, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !160
  br label %do.cond, !dbg !160

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !160

do.end:                                           ; preds = %do.cond
  br label %do.body19, !dbg !162

do.body19:                                        ; preds = %do.end
  %27 = load ptr, ptr %name.addr, align 8, !dbg !163
  %28 = load ptr, ptr %key.addr, align 8, !dbg !163
  br label %do.cond20, !dbg !163

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !163

do.end21:                                         ; preds = %do.cond20
  br label %for.inc, !dbg !165

for.inc:                                          ; preds = %do.end21
  %29 = load i32, ptr %i, align 4, !dbg !166
  %inc = add i32 %29, 1, !dbg !166
  store i32 %inc, ptr %i, align 4, !dbg !166
  br label %for.cond, !dbg !167, !llvm.loop !168

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %tlocks, align 8, !dbg !172
  %31 = load ptr, ptr %locks.addr, align 8, !dbg !173
  store ptr %30, ptr %31, align 8, !dbg !174
  %32 = load i32, ptr %size, align 4, !dbg !175
  %sub = sub i32 %32, 1, !dbg !176
  %33 = load ptr, ptr %locks_mask.addr, align 8, !dbg !177
  store i32 %sub, ptr %33, align 4, !dbg !178
  store i32 0, ptr %retval, align 4, !dbg !179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !179

cleanup:                                          ; preds = %for.end, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_pcpus) #12, !dbg !180
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #12, !dbg !180
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %tlocks) #12, !dbg !180
  %34 = load i32, ptr %retval, align 4, !dbg !180
  ret i32 %34, !dbg !180
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #3 align 16 !dbg !181 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !187
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !187
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !187
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #13, !dbg !188
  ret i32 %call, !dbg !189
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !190 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !195, metadata !DIExpression()), !dbg !199
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !196, metadata !DIExpression()), !dbg !200
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !197, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #12, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !198, metadata !DIExpression()), !dbg !203
  %0 = load i64, ptr %n.addr, align 8, !dbg !204
  %1 = load i64, ptr %size.addr, align 8, !dbg !204
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !204
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !204
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !204
  store i64 %4, ptr %bytes, align 8, !dbg !204
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #13, !dbg !204
  %lnot = xor i1 %call, true, !dbg !204
  %lnot1 = xor i1 %lnot, true, !dbg !204
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !204
  %conv = sext i32 %lnot.ext to i64, !dbg !204
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !204
  %tobool = icmp ne i64 %expval, 0, !dbg !204
  br i1 %tobool, label %if.then, label %if.end, !dbg !206

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !207

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !208
  %6 = load i32, ptr %flags.addr, align 4, !dbg !209
  %call2 = call noalias ptr @kvmalloc(i64 noundef %5, i32 noundef %6) #15, !dbg !210
  store ptr %call2, ptr %retval, align 8, !dbg !211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !211

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #12, !dbg !212
  %7 = load ptr, ptr %retval, align 8, !dbg !212
  ret ptr %7, !dbg !212
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !213 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !222
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !223
  ret ptr %1, !dbg !224
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_bucket_spinlocks(ptr noundef %locks) #0 align 16 !dbg !225 {
entry:
  %locks.addr = alloca ptr, align 8
  store ptr %locks, ptr %locks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %locks.addr, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = load ptr, ptr %locks.addr, align 8, !dbg !231
  call void @kvfree(ptr noundef %0) #13, !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !234 dso_local void @kvfree(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #5 align 16 !dbg !239 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !246, metadata !DIExpression()), !dbg !248
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !247, metadata !DIExpression()), !dbg !249
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !250
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !250
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !250

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !250
  %cmp = icmp ule i32 %2, 64, !dbg !250
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !250

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !250
  %cmp2 = icmp ugt i32 %3, 0, !dbg !250
  br i1 %cmp2, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !253
  %5 = load i64, ptr %4, align 8, !dbg !254
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !255
  %sub = sub i32 0, %6, !dbg !255
  %and = and i32 %sub, 63, !dbg !255
  %sh_prom = zext i32 %and to i64, !dbg !255
  %shr = lshr i64 -1, %sh_prom, !dbg !255
  %and3 = and i64 %5, %shr, !dbg !256
  %call = call i64 @hweight_long(i64 noundef %and3) #13, !dbg !257
  %conv = trunc i64 %call to i32, !dbg !257
  store i32 %conv, ptr %retval, align 4, !dbg !258
  br label %return, !dbg !258

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !259
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !260
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #13, !dbg !261
  store i32 %call4, ptr %retval, align 4, !dbg !262
  br label %return, !dbg !262

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !263
  ret i32 %9, !dbg !263
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #5 align 16 !dbg !264 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i64, ptr %w.addr, align 8, !dbg !271
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !271
  br i1 %1, label %cond.true, label %cond.false, !dbg !271

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !271
  %and = and i64 %2, 1, !dbg !271
  %tobool = icmp ne i64 %and, 0, !dbg !271
  %lnot = xor i1 %tobool, true, !dbg !271
  %lnot1 = xor i1 %lnot, true, !dbg !271
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !271
  %3 = load i64, ptr %w.addr, align 8, !dbg !271
  %and2 = and i64 %3, 2, !dbg !271
  %tobool3 = icmp ne i64 %and2, 0, !dbg !271
  %lnot4 = xor i1 %tobool3, true, !dbg !271
  %lnot6 = xor i1 %lnot4, true, !dbg !271
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !271
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !271
  %4 = load i64, ptr %w.addr, align 8, !dbg !271
  %and8 = and i64 %4, 4, !dbg !271
  %tobool9 = icmp ne i64 %and8, 0, !dbg !271
  %lnot10 = xor i1 %tobool9, true, !dbg !271
  %lnot12 = xor i1 %lnot10, true, !dbg !271
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !271
  %add14 = add i32 %add, %lnot.ext13, !dbg !271
  %5 = load i64, ptr %w.addr, align 8, !dbg !271
  %and15 = and i64 %5, 8, !dbg !271
  %tobool16 = icmp ne i64 %and15, 0, !dbg !271
  %lnot17 = xor i1 %tobool16, true, !dbg !271
  %lnot19 = xor i1 %lnot17, true, !dbg !271
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !271
  %add21 = add i32 %add14, %lnot.ext20, !dbg !271
  %6 = load i64, ptr %w.addr, align 8, !dbg !271
  %and22 = and i64 %6, 16, !dbg !271
  %tobool23 = icmp ne i64 %and22, 0, !dbg !271
  %lnot24 = xor i1 %tobool23, true, !dbg !271
  %lnot26 = xor i1 %lnot24, true, !dbg !271
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !271
  %add28 = add i32 %add21, %lnot.ext27, !dbg !271
  %7 = load i64, ptr %w.addr, align 8, !dbg !271
  %and29 = and i64 %7, 32, !dbg !271
  %tobool30 = icmp ne i64 %and29, 0, !dbg !271
  %lnot31 = xor i1 %tobool30, true, !dbg !271
  %lnot33 = xor i1 %lnot31, true, !dbg !271
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !271
  %add35 = add i32 %add28, %lnot.ext34, !dbg !271
  %8 = load i64, ptr %w.addr, align 8, !dbg !271
  %and36 = and i64 %8, 64, !dbg !271
  %tobool37 = icmp ne i64 %and36, 0, !dbg !271
  %lnot38 = xor i1 %tobool37, true, !dbg !271
  %lnot40 = xor i1 %lnot38, true, !dbg !271
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !271
  %add42 = add i32 %add35, %lnot.ext41, !dbg !271
  %9 = load i64, ptr %w.addr, align 8, !dbg !271
  %and43 = and i64 %9, 128, !dbg !271
  %tobool44 = icmp ne i64 %and43, 0, !dbg !271
  %lnot45 = xor i1 %tobool44, true, !dbg !271
  %lnot47 = xor i1 %lnot45, true, !dbg !271
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !271
  %add49 = add i32 %add42, %lnot.ext48, !dbg !271
  %10 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr = lshr i64 %10, 8, !dbg !271
  %and50 = and i64 %shr, 1, !dbg !271
  %tobool51 = icmp ne i64 %and50, 0, !dbg !271
  %lnot52 = xor i1 %tobool51, true, !dbg !271
  %lnot54 = xor i1 %lnot52, true, !dbg !271
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !271
  %11 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr56 = lshr i64 %11, 8, !dbg !271
  %and57 = and i64 %shr56, 2, !dbg !271
  %tobool58 = icmp ne i64 %and57, 0, !dbg !271
  %lnot59 = xor i1 %tobool58, true, !dbg !271
  %lnot61 = xor i1 %lnot59, true, !dbg !271
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !271
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !271
  %12 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr64 = lshr i64 %12, 8, !dbg !271
  %and65 = and i64 %shr64, 4, !dbg !271
  %tobool66 = icmp ne i64 %and65, 0, !dbg !271
  %lnot67 = xor i1 %tobool66, true, !dbg !271
  %lnot69 = xor i1 %lnot67, true, !dbg !271
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !271
  %add71 = add i32 %add63, %lnot.ext70, !dbg !271
  %13 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr72 = lshr i64 %13, 8, !dbg !271
  %and73 = and i64 %shr72, 8, !dbg !271
  %tobool74 = icmp ne i64 %and73, 0, !dbg !271
  %lnot75 = xor i1 %tobool74, true, !dbg !271
  %lnot77 = xor i1 %lnot75, true, !dbg !271
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !271
  %add79 = add i32 %add71, %lnot.ext78, !dbg !271
  %14 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr80 = lshr i64 %14, 8, !dbg !271
  %and81 = and i64 %shr80, 16, !dbg !271
  %tobool82 = icmp ne i64 %and81, 0, !dbg !271
  %lnot83 = xor i1 %tobool82, true, !dbg !271
  %lnot85 = xor i1 %lnot83, true, !dbg !271
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !271
  %add87 = add i32 %add79, %lnot.ext86, !dbg !271
  %15 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr88 = lshr i64 %15, 8, !dbg !271
  %and89 = and i64 %shr88, 32, !dbg !271
  %tobool90 = icmp ne i64 %and89, 0, !dbg !271
  %lnot91 = xor i1 %tobool90, true, !dbg !271
  %lnot93 = xor i1 %lnot91, true, !dbg !271
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !271
  %add95 = add i32 %add87, %lnot.ext94, !dbg !271
  %16 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr96 = lshr i64 %16, 8, !dbg !271
  %and97 = and i64 %shr96, 64, !dbg !271
  %tobool98 = icmp ne i64 %and97, 0, !dbg !271
  %lnot99 = xor i1 %tobool98, true, !dbg !271
  %lnot101 = xor i1 %lnot99, true, !dbg !271
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !271
  %add103 = add i32 %add95, %lnot.ext102, !dbg !271
  %17 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr104 = lshr i64 %17, 8, !dbg !271
  %and105 = and i64 %shr104, 128, !dbg !271
  %tobool106 = icmp ne i64 %and105, 0, !dbg !271
  %lnot107 = xor i1 %tobool106, true, !dbg !271
  %lnot109 = xor i1 %lnot107, true, !dbg !271
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !271
  %add111 = add i32 %add103, %lnot.ext110, !dbg !271
  %add112 = add i32 %add49, %add111, !dbg !271
  %18 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr113 = lshr i64 %18, 16, !dbg !271
  %and114 = and i64 %shr113, 1, !dbg !271
  %tobool115 = icmp ne i64 %and114, 0, !dbg !271
  %lnot116 = xor i1 %tobool115, true, !dbg !271
  %lnot118 = xor i1 %lnot116, true, !dbg !271
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !271
  %19 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr120 = lshr i64 %19, 16, !dbg !271
  %and121 = and i64 %shr120, 2, !dbg !271
  %tobool122 = icmp ne i64 %and121, 0, !dbg !271
  %lnot123 = xor i1 %tobool122, true, !dbg !271
  %lnot125 = xor i1 %lnot123, true, !dbg !271
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !271
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !271
  %20 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr128 = lshr i64 %20, 16, !dbg !271
  %and129 = and i64 %shr128, 4, !dbg !271
  %tobool130 = icmp ne i64 %and129, 0, !dbg !271
  %lnot131 = xor i1 %tobool130, true, !dbg !271
  %lnot133 = xor i1 %lnot131, true, !dbg !271
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !271
  %add135 = add i32 %add127, %lnot.ext134, !dbg !271
  %21 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr136 = lshr i64 %21, 16, !dbg !271
  %and137 = and i64 %shr136, 8, !dbg !271
  %tobool138 = icmp ne i64 %and137, 0, !dbg !271
  %lnot139 = xor i1 %tobool138, true, !dbg !271
  %lnot141 = xor i1 %lnot139, true, !dbg !271
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !271
  %add143 = add i32 %add135, %lnot.ext142, !dbg !271
  %22 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr144 = lshr i64 %22, 16, !dbg !271
  %and145 = and i64 %shr144, 16, !dbg !271
  %tobool146 = icmp ne i64 %and145, 0, !dbg !271
  %lnot147 = xor i1 %tobool146, true, !dbg !271
  %lnot149 = xor i1 %lnot147, true, !dbg !271
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !271
  %add151 = add i32 %add143, %lnot.ext150, !dbg !271
  %23 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr152 = lshr i64 %23, 16, !dbg !271
  %and153 = and i64 %shr152, 32, !dbg !271
  %tobool154 = icmp ne i64 %and153, 0, !dbg !271
  %lnot155 = xor i1 %tobool154, true, !dbg !271
  %lnot157 = xor i1 %lnot155, true, !dbg !271
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !271
  %add159 = add i32 %add151, %lnot.ext158, !dbg !271
  %24 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr160 = lshr i64 %24, 16, !dbg !271
  %and161 = and i64 %shr160, 64, !dbg !271
  %tobool162 = icmp ne i64 %and161, 0, !dbg !271
  %lnot163 = xor i1 %tobool162, true, !dbg !271
  %lnot165 = xor i1 %lnot163, true, !dbg !271
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !271
  %add167 = add i32 %add159, %lnot.ext166, !dbg !271
  %25 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr168 = lshr i64 %25, 16, !dbg !271
  %and169 = and i64 %shr168, 128, !dbg !271
  %tobool170 = icmp ne i64 %and169, 0, !dbg !271
  %lnot171 = xor i1 %tobool170, true, !dbg !271
  %lnot173 = xor i1 %lnot171, true, !dbg !271
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !271
  %add175 = add i32 %add167, %lnot.ext174, !dbg !271
  %26 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr176 = lshr i64 %26, 16, !dbg !271
  %shr177 = lshr i64 %shr176, 8, !dbg !271
  %and178 = and i64 %shr177, 1, !dbg !271
  %tobool179 = icmp ne i64 %and178, 0, !dbg !271
  %lnot180 = xor i1 %tobool179, true, !dbg !271
  %lnot182 = xor i1 %lnot180, true, !dbg !271
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !271
  %27 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr184 = lshr i64 %27, 16, !dbg !271
  %shr185 = lshr i64 %shr184, 8, !dbg !271
  %and186 = and i64 %shr185, 2, !dbg !271
  %tobool187 = icmp ne i64 %and186, 0, !dbg !271
  %lnot188 = xor i1 %tobool187, true, !dbg !271
  %lnot190 = xor i1 %lnot188, true, !dbg !271
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !271
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !271
  %28 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr193 = lshr i64 %28, 16, !dbg !271
  %shr194 = lshr i64 %shr193, 8, !dbg !271
  %and195 = and i64 %shr194, 4, !dbg !271
  %tobool196 = icmp ne i64 %and195, 0, !dbg !271
  %lnot197 = xor i1 %tobool196, true, !dbg !271
  %lnot199 = xor i1 %lnot197, true, !dbg !271
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !271
  %add201 = add i32 %add192, %lnot.ext200, !dbg !271
  %29 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr202 = lshr i64 %29, 16, !dbg !271
  %shr203 = lshr i64 %shr202, 8, !dbg !271
  %and204 = and i64 %shr203, 8, !dbg !271
  %tobool205 = icmp ne i64 %and204, 0, !dbg !271
  %lnot206 = xor i1 %tobool205, true, !dbg !271
  %lnot208 = xor i1 %lnot206, true, !dbg !271
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !271
  %add210 = add i32 %add201, %lnot.ext209, !dbg !271
  %30 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr211 = lshr i64 %30, 16, !dbg !271
  %shr212 = lshr i64 %shr211, 8, !dbg !271
  %and213 = and i64 %shr212, 16, !dbg !271
  %tobool214 = icmp ne i64 %and213, 0, !dbg !271
  %lnot215 = xor i1 %tobool214, true, !dbg !271
  %lnot217 = xor i1 %lnot215, true, !dbg !271
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !271
  %add219 = add i32 %add210, %lnot.ext218, !dbg !271
  %31 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr220 = lshr i64 %31, 16, !dbg !271
  %shr221 = lshr i64 %shr220, 8, !dbg !271
  %and222 = and i64 %shr221, 32, !dbg !271
  %tobool223 = icmp ne i64 %and222, 0, !dbg !271
  %lnot224 = xor i1 %tobool223, true, !dbg !271
  %lnot226 = xor i1 %lnot224, true, !dbg !271
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !271
  %add228 = add i32 %add219, %lnot.ext227, !dbg !271
  %32 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr229 = lshr i64 %32, 16, !dbg !271
  %shr230 = lshr i64 %shr229, 8, !dbg !271
  %and231 = and i64 %shr230, 64, !dbg !271
  %tobool232 = icmp ne i64 %and231, 0, !dbg !271
  %lnot233 = xor i1 %tobool232, true, !dbg !271
  %lnot235 = xor i1 %lnot233, true, !dbg !271
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !271
  %add237 = add i32 %add228, %lnot.ext236, !dbg !271
  %33 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr238 = lshr i64 %33, 16, !dbg !271
  %shr239 = lshr i64 %shr238, 8, !dbg !271
  %and240 = and i64 %shr239, 128, !dbg !271
  %tobool241 = icmp ne i64 %and240, 0, !dbg !271
  %lnot242 = xor i1 %tobool241, true, !dbg !271
  %lnot244 = xor i1 %lnot242, true, !dbg !271
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !271
  %add246 = add i32 %add237, %lnot.ext245, !dbg !271
  %add247 = add i32 %add175, %add246, !dbg !271
  %add248 = add i32 %add112, %add247, !dbg !271
  %34 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr249 = lshr i64 %34, 32, !dbg !271
  %and250 = and i64 %shr249, 1, !dbg !271
  %tobool251 = icmp ne i64 %and250, 0, !dbg !271
  %lnot252 = xor i1 %tobool251, true, !dbg !271
  %lnot254 = xor i1 %lnot252, true, !dbg !271
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !271
  %35 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr256 = lshr i64 %35, 32, !dbg !271
  %and257 = and i64 %shr256, 2, !dbg !271
  %tobool258 = icmp ne i64 %and257, 0, !dbg !271
  %lnot259 = xor i1 %tobool258, true, !dbg !271
  %lnot261 = xor i1 %lnot259, true, !dbg !271
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !271
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !271
  %36 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr264 = lshr i64 %36, 32, !dbg !271
  %and265 = and i64 %shr264, 4, !dbg !271
  %tobool266 = icmp ne i64 %and265, 0, !dbg !271
  %lnot267 = xor i1 %tobool266, true, !dbg !271
  %lnot269 = xor i1 %lnot267, true, !dbg !271
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !271
  %add271 = add i32 %add263, %lnot.ext270, !dbg !271
  %37 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr272 = lshr i64 %37, 32, !dbg !271
  %and273 = and i64 %shr272, 8, !dbg !271
  %tobool274 = icmp ne i64 %and273, 0, !dbg !271
  %lnot275 = xor i1 %tobool274, true, !dbg !271
  %lnot277 = xor i1 %lnot275, true, !dbg !271
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !271
  %add279 = add i32 %add271, %lnot.ext278, !dbg !271
  %38 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr280 = lshr i64 %38, 32, !dbg !271
  %and281 = and i64 %shr280, 16, !dbg !271
  %tobool282 = icmp ne i64 %and281, 0, !dbg !271
  %lnot283 = xor i1 %tobool282, true, !dbg !271
  %lnot285 = xor i1 %lnot283, true, !dbg !271
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !271
  %add287 = add i32 %add279, %lnot.ext286, !dbg !271
  %39 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr288 = lshr i64 %39, 32, !dbg !271
  %and289 = and i64 %shr288, 32, !dbg !271
  %tobool290 = icmp ne i64 %and289, 0, !dbg !271
  %lnot291 = xor i1 %tobool290, true, !dbg !271
  %lnot293 = xor i1 %lnot291, true, !dbg !271
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !271
  %add295 = add i32 %add287, %lnot.ext294, !dbg !271
  %40 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr296 = lshr i64 %40, 32, !dbg !271
  %and297 = and i64 %shr296, 64, !dbg !271
  %tobool298 = icmp ne i64 %and297, 0, !dbg !271
  %lnot299 = xor i1 %tobool298, true, !dbg !271
  %lnot301 = xor i1 %lnot299, true, !dbg !271
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !271
  %add303 = add i32 %add295, %lnot.ext302, !dbg !271
  %41 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr304 = lshr i64 %41, 32, !dbg !271
  %and305 = and i64 %shr304, 128, !dbg !271
  %tobool306 = icmp ne i64 %and305, 0, !dbg !271
  %lnot307 = xor i1 %tobool306, true, !dbg !271
  %lnot309 = xor i1 %lnot307, true, !dbg !271
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !271
  %add311 = add i32 %add303, %lnot.ext310, !dbg !271
  %42 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr312 = lshr i64 %42, 32, !dbg !271
  %shr313 = lshr i64 %shr312, 8, !dbg !271
  %and314 = and i64 %shr313, 1, !dbg !271
  %tobool315 = icmp ne i64 %and314, 0, !dbg !271
  %lnot316 = xor i1 %tobool315, true, !dbg !271
  %lnot318 = xor i1 %lnot316, true, !dbg !271
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !271
  %43 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr320 = lshr i64 %43, 32, !dbg !271
  %shr321 = lshr i64 %shr320, 8, !dbg !271
  %and322 = and i64 %shr321, 2, !dbg !271
  %tobool323 = icmp ne i64 %and322, 0, !dbg !271
  %lnot324 = xor i1 %tobool323, true, !dbg !271
  %lnot326 = xor i1 %lnot324, true, !dbg !271
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !271
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !271
  %44 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr329 = lshr i64 %44, 32, !dbg !271
  %shr330 = lshr i64 %shr329, 8, !dbg !271
  %and331 = and i64 %shr330, 4, !dbg !271
  %tobool332 = icmp ne i64 %and331, 0, !dbg !271
  %lnot333 = xor i1 %tobool332, true, !dbg !271
  %lnot335 = xor i1 %lnot333, true, !dbg !271
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !271
  %add337 = add i32 %add328, %lnot.ext336, !dbg !271
  %45 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr338 = lshr i64 %45, 32, !dbg !271
  %shr339 = lshr i64 %shr338, 8, !dbg !271
  %and340 = and i64 %shr339, 8, !dbg !271
  %tobool341 = icmp ne i64 %and340, 0, !dbg !271
  %lnot342 = xor i1 %tobool341, true, !dbg !271
  %lnot344 = xor i1 %lnot342, true, !dbg !271
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !271
  %add346 = add i32 %add337, %lnot.ext345, !dbg !271
  %46 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr347 = lshr i64 %46, 32, !dbg !271
  %shr348 = lshr i64 %shr347, 8, !dbg !271
  %and349 = and i64 %shr348, 16, !dbg !271
  %tobool350 = icmp ne i64 %and349, 0, !dbg !271
  %lnot351 = xor i1 %tobool350, true, !dbg !271
  %lnot353 = xor i1 %lnot351, true, !dbg !271
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !271
  %add355 = add i32 %add346, %lnot.ext354, !dbg !271
  %47 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr356 = lshr i64 %47, 32, !dbg !271
  %shr357 = lshr i64 %shr356, 8, !dbg !271
  %and358 = and i64 %shr357, 32, !dbg !271
  %tobool359 = icmp ne i64 %and358, 0, !dbg !271
  %lnot360 = xor i1 %tobool359, true, !dbg !271
  %lnot362 = xor i1 %lnot360, true, !dbg !271
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !271
  %add364 = add i32 %add355, %lnot.ext363, !dbg !271
  %48 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr365 = lshr i64 %48, 32, !dbg !271
  %shr366 = lshr i64 %shr365, 8, !dbg !271
  %and367 = and i64 %shr366, 64, !dbg !271
  %tobool368 = icmp ne i64 %and367, 0, !dbg !271
  %lnot369 = xor i1 %tobool368, true, !dbg !271
  %lnot371 = xor i1 %lnot369, true, !dbg !271
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !271
  %add373 = add i32 %add364, %lnot.ext372, !dbg !271
  %49 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr374 = lshr i64 %49, 32, !dbg !271
  %shr375 = lshr i64 %shr374, 8, !dbg !271
  %and376 = and i64 %shr375, 128, !dbg !271
  %tobool377 = icmp ne i64 %and376, 0, !dbg !271
  %lnot378 = xor i1 %tobool377, true, !dbg !271
  %lnot380 = xor i1 %lnot378, true, !dbg !271
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !271
  %add382 = add i32 %add373, %lnot.ext381, !dbg !271
  %add383 = add i32 %add311, %add382, !dbg !271
  %50 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr384 = lshr i64 %50, 32, !dbg !271
  %shr385 = lshr i64 %shr384, 16, !dbg !271
  %and386 = and i64 %shr385, 1, !dbg !271
  %tobool387 = icmp ne i64 %and386, 0, !dbg !271
  %lnot388 = xor i1 %tobool387, true, !dbg !271
  %lnot390 = xor i1 %lnot388, true, !dbg !271
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !271
  %51 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr392 = lshr i64 %51, 32, !dbg !271
  %shr393 = lshr i64 %shr392, 16, !dbg !271
  %and394 = and i64 %shr393, 2, !dbg !271
  %tobool395 = icmp ne i64 %and394, 0, !dbg !271
  %lnot396 = xor i1 %tobool395, true, !dbg !271
  %lnot398 = xor i1 %lnot396, true, !dbg !271
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !271
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !271
  %52 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr401 = lshr i64 %52, 32, !dbg !271
  %shr402 = lshr i64 %shr401, 16, !dbg !271
  %and403 = and i64 %shr402, 4, !dbg !271
  %tobool404 = icmp ne i64 %and403, 0, !dbg !271
  %lnot405 = xor i1 %tobool404, true, !dbg !271
  %lnot407 = xor i1 %lnot405, true, !dbg !271
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !271
  %add409 = add i32 %add400, %lnot.ext408, !dbg !271
  %53 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr410 = lshr i64 %53, 32, !dbg !271
  %shr411 = lshr i64 %shr410, 16, !dbg !271
  %and412 = and i64 %shr411, 8, !dbg !271
  %tobool413 = icmp ne i64 %and412, 0, !dbg !271
  %lnot414 = xor i1 %tobool413, true, !dbg !271
  %lnot416 = xor i1 %lnot414, true, !dbg !271
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !271
  %add418 = add i32 %add409, %lnot.ext417, !dbg !271
  %54 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr419 = lshr i64 %54, 32, !dbg !271
  %shr420 = lshr i64 %shr419, 16, !dbg !271
  %and421 = and i64 %shr420, 16, !dbg !271
  %tobool422 = icmp ne i64 %and421, 0, !dbg !271
  %lnot423 = xor i1 %tobool422, true, !dbg !271
  %lnot425 = xor i1 %lnot423, true, !dbg !271
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !271
  %add427 = add i32 %add418, %lnot.ext426, !dbg !271
  %55 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr428 = lshr i64 %55, 32, !dbg !271
  %shr429 = lshr i64 %shr428, 16, !dbg !271
  %and430 = and i64 %shr429, 32, !dbg !271
  %tobool431 = icmp ne i64 %and430, 0, !dbg !271
  %lnot432 = xor i1 %tobool431, true, !dbg !271
  %lnot434 = xor i1 %lnot432, true, !dbg !271
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !271
  %add436 = add i32 %add427, %lnot.ext435, !dbg !271
  %56 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr437 = lshr i64 %56, 32, !dbg !271
  %shr438 = lshr i64 %shr437, 16, !dbg !271
  %and439 = and i64 %shr438, 64, !dbg !271
  %tobool440 = icmp ne i64 %and439, 0, !dbg !271
  %lnot441 = xor i1 %tobool440, true, !dbg !271
  %lnot443 = xor i1 %lnot441, true, !dbg !271
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !271
  %add445 = add i32 %add436, %lnot.ext444, !dbg !271
  %57 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr446 = lshr i64 %57, 32, !dbg !271
  %shr447 = lshr i64 %shr446, 16, !dbg !271
  %and448 = and i64 %shr447, 128, !dbg !271
  %tobool449 = icmp ne i64 %and448, 0, !dbg !271
  %lnot450 = xor i1 %tobool449, true, !dbg !271
  %lnot452 = xor i1 %lnot450, true, !dbg !271
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !271
  %add454 = add i32 %add445, %lnot.ext453, !dbg !271
  %58 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr455 = lshr i64 %58, 32, !dbg !271
  %shr456 = lshr i64 %shr455, 16, !dbg !271
  %shr457 = lshr i64 %shr456, 8, !dbg !271
  %and458 = and i64 %shr457, 1, !dbg !271
  %tobool459 = icmp ne i64 %and458, 0, !dbg !271
  %lnot460 = xor i1 %tobool459, true, !dbg !271
  %lnot462 = xor i1 %lnot460, true, !dbg !271
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !271
  %59 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr464 = lshr i64 %59, 32, !dbg !271
  %shr465 = lshr i64 %shr464, 16, !dbg !271
  %shr466 = lshr i64 %shr465, 8, !dbg !271
  %and467 = and i64 %shr466, 2, !dbg !271
  %tobool468 = icmp ne i64 %and467, 0, !dbg !271
  %lnot469 = xor i1 %tobool468, true, !dbg !271
  %lnot471 = xor i1 %lnot469, true, !dbg !271
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !271
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !271
  %60 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr474 = lshr i64 %60, 32, !dbg !271
  %shr475 = lshr i64 %shr474, 16, !dbg !271
  %shr476 = lshr i64 %shr475, 8, !dbg !271
  %and477 = and i64 %shr476, 4, !dbg !271
  %tobool478 = icmp ne i64 %and477, 0, !dbg !271
  %lnot479 = xor i1 %tobool478, true, !dbg !271
  %lnot481 = xor i1 %lnot479, true, !dbg !271
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !271
  %add483 = add i32 %add473, %lnot.ext482, !dbg !271
  %61 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr484 = lshr i64 %61, 32, !dbg !271
  %shr485 = lshr i64 %shr484, 16, !dbg !271
  %shr486 = lshr i64 %shr485, 8, !dbg !271
  %and487 = and i64 %shr486, 8, !dbg !271
  %tobool488 = icmp ne i64 %and487, 0, !dbg !271
  %lnot489 = xor i1 %tobool488, true, !dbg !271
  %lnot491 = xor i1 %lnot489, true, !dbg !271
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !271
  %add493 = add i32 %add483, %lnot.ext492, !dbg !271
  %62 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr494 = lshr i64 %62, 32, !dbg !271
  %shr495 = lshr i64 %shr494, 16, !dbg !271
  %shr496 = lshr i64 %shr495, 8, !dbg !271
  %and497 = and i64 %shr496, 16, !dbg !271
  %tobool498 = icmp ne i64 %and497, 0, !dbg !271
  %lnot499 = xor i1 %tobool498, true, !dbg !271
  %lnot501 = xor i1 %lnot499, true, !dbg !271
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !271
  %add503 = add i32 %add493, %lnot.ext502, !dbg !271
  %63 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr504 = lshr i64 %63, 32, !dbg !271
  %shr505 = lshr i64 %shr504, 16, !dbg !271
  %shr506 = lshr i64 %shr505, 8, !dbg !271
  %and507 = and i64 %shr506, 32, !dbg !271
  %tobool508 = icmp ne i64 %and507, 0, !dbg !271
  %lnot509 = xor i1 %tobool508, true, !dbg !271
  %lnot511 = xor i1 %lnot509, true, !dbg !271
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !271
  %add513 = add i32 %add503, %lnot.ext512, !dbg !271
  %64 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr514 = lshr i64 %64, 32, !dbg !271
  %shr515 = lshr i64 %shr514, 16, !dbg !271
  %shr516 = lshr i64 %shr515, 8, !dbg !271
  %and517 = and i64 %shr516, 64, !dbg !271
  %tobool518 = icmp ne i64 %and517, 0, !dbg !271
  %lnot519 = xor i1 %tobool518, true, !dbg !271
  %lnot521 = xor i1 %lnot519, true, !dbg !271
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !271
  %add523 = add i32 %add513, %lnot.ext522, !dbg !271
  %65 = load i64, ptr %w.addr, align 8, !dbg !271
  %shr524 = lshr i64 %65, 32, !dbg !271
  %shr525 = lshr i64 %shr524, 16, !dbg !271
  %shr526 = lshr i64 %shr525, 8, !dbg !271
  %and527 = and i64 %shr526, 128, !dbg !271
  %tobool528 = icmp ne i64 %and527, 0, !dbg !271
  %lnot529 = xor i1 %tobool528, true, !dbg !271
  %lnot531 = xor i1 %lnot529, true, !dbg !271
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !271
  %add533 = add i32 %add523, %lnot.ext532, !dbg !271
  %add534 = add i32 %add454, %add533, !dbg !271
  %add535 = add i32 %add383, %add534, !dbg !271
  %add536 = add i32 %add248, %add535, !dbg !271
  %conv = zext i32 %add536 to i64, !dbg !271
  br label %cond.end, !dbg !271

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !271
  %call = call i64 @__arch_hweight64(i64 noundef %66) #13, !dbg !271
  br label %cond.end, !dbg !271

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !271
  ret i64 %cond, !dbg !272
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !273 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #5 align 16 !dbg !274 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !279, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #12, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %res, metadata !280, metadata !DIExpression()), !dbg !283
  %0 = load i64, ptr %w.addr, align 8, !dbg !284
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !285, !srcloc !286
  store i64 %1, ptr %res, align 8, !dbg !285
  %2 = load i64, ptr %res, align 8, !dbg !287
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #12, !dbg !288
  ret i64 %2, !dbg !289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !290 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !299, !range !300, !noundef !92
  %tobool = trunc i8 %0 to i1, !dbg !299
  %lnot = xor i1 %tobool, true, !dbg !299
  %lnot1 = xor i1 %lnot, true, !dbg !299
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !299
  %conv = sext i32 %lnot.ext to i64, !dbg !299
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !299
  %tobool2 = icmp ne i64 %expval, 0, !dbg !299
  ret i1 %tobool2, !dbg !301
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !302 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !306, metadata !DIExpression()), !dbg !308
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !307, metadata !DIExpression()), !dbg !309
  %0 = load i64, ptr %size.addr, align 8, !dbg !310
  %1 = load i32, ptr %flags.addr, align 4, !dbg !311
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #15, !dbg !312
  ret ptr %call, !dbg !313
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !314 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #11

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { noredzone allocsize(0,1) }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___alloc_bucket_spinlocks281", scope: !2, file: !3, line: 48, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.bucket_locks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/bucket_locks\22 -D KBUILD_BASENAME=\22bucket_locks\22 -D KBUILD_MODNAME=\22bucket_locks\22 -D __KBUILD_MODNAME=kmod_bucket_locks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/bucket_locks.ll lib/bucket_locks.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/bucket_locks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "895ca9ca00faa30b6cd356c8a6e904df")
!4 = !{!5, !15, !16, !17}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !8, line: 19, size: 64, elements: !9)
!8 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !7, file: !8, line: 19, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !13)
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !{!14}
!14 = !DISubrange(count: 1)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !19)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!0, !21}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_free_bucket_spinlocks282", scope: !2, file: !3, line: 54, type: !16, isLocal: true, isDefinition: true)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"cf-protection-branch", i32 1}
!27 = !{i32 4, !"function_return_thunk_extern", i32 1}
!28 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{i32 1, !"override-stack-alignment", i32 8}
!31 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!32 = distinct !DISubprogram(name: "__alloc_bucket_spinlocks", scope: !3, file: !3, line: 14, type: !33, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !36, !80, !81, !15, !85, !86, !89}
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !39, line: 29, baseType: !40)
!39 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !39, line: 17, size: 32, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, scope: !40, file: !39, line: 18, baseType: !43, size: 32)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !40, file: !39, line: 18, size: 32, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !43, file: !39, line: 19, baseType: !46, size: 32)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !47, line: 14, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !46, file: !47, line: 15, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !51, line: 44, baseType: !52)
!51 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !51, line: 14, size: 32, elements: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, scope: !52, file: !51, line: 15, baseType: !55, size: 32)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !51, line: 15, size: 32, elements: !56)
!56 = !{!57, !63, !72}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !51, line: 16, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 174, baseType: !60)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 172, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !60, file: !59, line: 173, baseType: !35, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !51, line: 24, baseType: !64, size: 16)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !51, line: 24, size: 16, elements: !65)
!65 = !{!66, !71}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !64, file: !51, line: 25, baseType: !67, size: 8)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !68, line: 17, baseType: !69)
!68 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !70)
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !64, file: !51, line: 26, baseType: !67, size: 8, offset: 8)
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !51, line: 28, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !51, line: 28, size: 32, elements: !74)
!74 = !{!75, !79}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !73, file: !51, line: 29, baseType: !76, size: 16)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !68, line: 19, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !78)
!78 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !73, file: !51, line: 30, baseType: !76, size: 16, offset: 16)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 61, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !83, line: 72, baseType: !84)
!83 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !83, line: 16, baseType: !12)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !59, line: 154, baseType: !15)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !91, line: 206, elements: !92)
!91 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!92 = !{}
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !109, !110, !112}
!94 = !DILocalVariable(name: "locks", arg: 1, scope: !32, file: !3, line: 14, type: !36)
!95 = !DILocalVariable(name: "locks_mask", arg: 2, scope: !32, file: !3, line: 14, type: !80)
!96 = !DILocalVariable(name: "max_size", arg: 3, scope: !32, file: !3, line: 15, type: !81)
!97 = !DILocalVariable(name: "cpu_mult", arg: 4, scope: !32, file: !3, line: 15, type: !15)
!98 = !DILocalVariable(name: "gfp", arg: 5, scope: !32, file: !3, line: 15, type: !85)
!99 = !DILocalVariable(name: "name", arg: 6, scope: !32, file: !3, line: 16, type: !86)
!100 = !DILocalVariable(name: "key", arg: 7, scope: !32, file: !3, line: 16, type: !89)
!101 = !DILocalVariable(name: "tlocks", scope: !32, file: !3, line: 18, type: !37)
!102 = !DILocalVariable(name: "i", scope: !32, file: !3, line: 19, type: !15)
!103 = !DILocalVariable(name: "size", scope: !32, file: !3, line: 19, type: !15)
!104 = !DILocalVariable(name: "nr_pcpus", scope: !32, file: !3, line: 23, type: !15)
!105 = !DILocalVariable(name: "__UNIQUE_ID___x277", scope: !106, file: !3, line: 27, type: !15)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 27, column: 14)
!107 = distinct !DILexicalBlock(scope: !108, file: !3, line: 26, column: 16)
!108 = distinct !DILexicalBlock(scope: !32, file: !3, line: 26, column: 6)
!109 = !DILocalVariable(name: "__UNIQUE_ID___y278", scope: !106, file: !3, line: 27, type: !15)
!110 = !DILocalVariable(name: "__UNIQUE_ID___x279", scope: !111, file: !3, line: 28, type: !15)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 28, column: 10)
!112 = !DILocalVariable(name: "__UNIQUE_ID___y280", scope: !111, file: !3, line: 28, type: !15)
!113 = !DILocation(line: 14, column: 43, scope: !32)
!114 = !DILocation(line: 14, column: 64, scope: !32)
!115 = !DILocation(line: 15, column: 16, scope: !32)
!116 = !DILocation(line: 15, column: 39, scope: !32)
!117 = !DILocation(line: 15, column: 55, scope: !32)
!118 = !DILocation(line: 16, column: 21, scope: !32)
!119 = !DILocation(line: 16, column: 50, scope: !32)
!120 = !DILocation(line: 18, column: 2, scope: !32)
!121 = !DILocation(line: 18, column: 14, scope: !32)
!122 = !DILocation(line: 19, column: 2, scope: !32)
!123 = !DILocation(line: 19, column: 15, scope: !32)
!124 = !DILocation(line: 19, column: 18, scope: !32)
!125 = !DILocation(line: 23, column: 2, scope: !32)
!126 = !DILocation(line: 23, column: 15, scope: !32)
!127 = !DILocation(line: 23, column: 26, scope: !32)
!128 = !DILocation(line: 26, column: 6, scope: !108)
!129 = !DILocation(line: 26, column: 6, scope: !32)
!130 = !DILocation(line: 27, column: 14, scope: !106)
!131 = !DILocation(line: 27, column: 14, scope: !107)
!132 = !DILocation(line: 27, column: 12, scope: !107)
!133 = !DILocation(line: 28, column: 10, scope: !111)
!134 = !DILocation(line: 28, column: 10, scope: !107)
!135 = !DILocation(line: 28, column: 8, scope: !107)
!136 = !DILocation(line: 29, column: 2, scope: !107)
!137 = !DILocation(line: 30, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !108, file: !3, line: 29, column: 9)
!139 = !DILocation(line: 30, column: 8, scope: !138)
!140 = !DILocation(line: 34, column: 27, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 33, column: 31)
!142 = distinct !DILexicalBlock(scope: !32, file: !3, line: 33, column: 6)
!143 = !DILocation(line: 34, column: 53, scope: !141)
!144 = !DILocation(line: 34, column: 12, scope: !141)
!145 = !DILocation(line: 34, column: 10, scope: !141)
!146 = !DILocation(line: 35, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !3, line: 35, column: 7)
!148 = !DILocation(line: 35, column: 7, scope: !141)
!149 = !DILocation(line: 36, column: 4, scope: !147)
!150 = !DILocation(line: 37, column: 10, scope: !151)
!151 = distinct !DILexicalBlock(scope: !141, file: !3, line: 37, column: 3)
!152 = !DILocation(line: 37, column: 8, scope: !151)
!153 = !DILocation(line: 37, column: 15, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 37, column: 3)
!155 = !DILocation(line: 37, column: 19, scope: !154)
!156 = !DILocation(line: 37, column: 17, scope: !154)
!157 = !DILocation(line: 37, column: 3, scope: !151)
!158 = !DILocation(line: 38, column: 4, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 37, column: 30)
!160 = !DILocation(line: 38, column: 4, scope: !161)
!161 = distinct !DILexicalBlock(scope: !159, file: !3, line: 38, column: 4)
!162 = !DILocation(line: 39, column: 4, scope: !159)
!163 = !DILocation(line: 39, column: 4, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !3, line: 39, column: 4)
!165 = !DILocation(line: 40, column: 3, scope: !159)
!166 = !DILocation(line: 37, column: 26, scope: !154)
!167 = !DILocation(line: 37, column: 3, scope: !154)
!168 = distinct !{!168, !157, !169, !170, !171}
!169 = !DILocation(line: 40, column: 3, scope: !151)
!170 = !{!"llvm.loop.mustprogress"}
!171 = !{!"llvm.loop.unroll.disable"}
!172 = !DILocation(line: 43, column: 11, scope: !32)
!173 = !DILocation(line: 43, column: 3, scope: !32)
!174 = !DILocation(line: 43, column: 9, scope: !32)
!175 = !DILocation(line: 44, column: 16, scope: !32)
!176 = !DILocation(line: 44, column: 21, scope: !32)
!177 = !DILocation(line: 44, column: 3, scope: !32)
!178 = !DILocation(line: 44, column: 14, scope: !32)
!179 = !DILocation(line: 46, column: 2, scope: !32)
!180 = !DILocation(line: 47, column: 1, scope: !32)
!181 = distinct !DISubprogram(name: "cpumask_weight", scope: !8, file: !8, line: 690, type: !182, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!15, !5}
!184 = !{!185}
!185 = !DILocalVariable(name: "srcp", arg: 1, scope: !181, file: !8, line: 690, type: !5)
!186 = !DILocation(line: 690, column: 65, scope: !181)
!187 = !DILocation(line: 692, column: 23, scope: !181)
!188 = !DILocation(line: 692, column: 9, scope: !181)
!189 = !DILocation(line: 692, column: 2, scope: !181)
!190 = distinct !DISubprogram(name: "kvmalloc_array", scope: !191, file: !191, line: 749, type: !192, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!191 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!192 = !DISubroutineType(types: !193)
!193 = !{!16, !81, !81, !85}
!194 = !{!195, !196, !197, !198}
!195 = !DILocalVariable(name: "n", arg: 1, scope: !190, file: !191, line: 749, type: !81)
!196 = !DILocalVariable(name: "size", arg: 2, scope: !190, file: !191, line: 749, type: !81)
!197 = !DILocalVariable(name: "flags", arg: 3, scope: !190, file: !191, line: 749, type: !85)
!198 = !DILocalVariable(name: "bytes", scope: !190, file: !191, line: 751, type: !81)
!199 = !DILocation(line: 749, column: 62, scope: !190)
!200 = !DILocation(line: 749, column: 72, scope: !190)
!201 = !DILocation(line: 749, column: 84, scope: !190)
!202 = !DILocation(line: 751, column: 2, scope: !190)
!203 = !DILocation(line: 751, column: 9, scope: !190)
!204 = !DILocation(line: 753, column: 6, scope: !205)
!205 = distinct !DILexicalBlock(scope: !190, file: !191, line: 753, column: 6)
!206 = !DILocation(line: 753, column: 6, scope: !190)
!207 = !DILocation(line: 754, column: 3, scope: !205)
!208 = !DILocation(line: 756, column: 18, scope: !190)
!209 = !DILocation(line: 756, column: 25, scope: !190)
!210 = !DILocation(line: 756, column: 9, scope: !190)
!211 = !DILocation(line: 756, column: 2, scope: !190)
!212 = !DILocation(line: 757, column: 1, scope: !190)
!213 = distinct !DISubprogram(name: "spinlock_check", scope: !214, file: !214, line: 324, type: !215, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!214 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!215 = !DISubroutineType(types: !216)
!216 = !{!217, !37}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !47, line: 23, baseType: !46)
!219 = !{!220}
!220 = !DILocalVariable(name: "lock", arg: 1, scope: !213, file: !214, line: 324, type: !37)
!221 = !DILocation(line: 324, column: 67, scope: !213)
!222 = !DILocation(line: 326, column: 10, scope: !213)
!223 = !DILocation(line: 326, column: 16, scope: !213)
!224 = !DILocation(line: 326, column: 2, scope: !213)
!225 = distinct !DISubprogram(name: "free_bucket_spinlocks", scope: !3, file: !3, line: 50, type: !226, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !37}
!228 = !{!229}
!229 = !DILocalVariable(name: "locks", arg: 1, scope: !225, file: !3, line: 50, type: !37)
!230 = !DILocation(line: 50, column: 40, scope: !225)
!231 = !DILocation(line: 52, column: 9, scope: !225)
!232 = !DILocation(line: 52, column: 2, scope: !225)
!233 = !DILocation(line: 53, column: 1, scope: !225)
!234 = !DISubprogram(name: "kvfree", scope: !191, file: !191, line: 766, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!239 = distinct !DISubprogram(name: "bitmap_weight", scope: !240, file: !240, line: 453, type: !241, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!240 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!241 = !DISubroutineType(types: !242)
!242 = !{!15, !243, !15}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!245 = !{!246, !247}
!246 = !DILocalVariable(name: "src", arg: 1, scope: !239, file: !240, line: 453, type: !243)
!247 = !DILocalVariable(name: "nbits", arg: 2, scope: !239, file: !240, line: 453, type: !15)
!248 = !DILocation(line: 453, column: 49, scope: !239)
!249 = !DILocation(line: 453, column: 67, scope: !239)
!250 = !DILocation(line: 455, column: 6, scope: !251)
!251 = distinct !DILexicalBlock(scope: !239, file: !240, line: 455, column: 6)
!252 = !DILocation(line: 455, column: 6, scope: !239)
!253 = !DILocation(line: 456, column: 24, scope: !251)
!254 = !DILocation(line: 456, column: 23, scope: !251)
!255 = !DILocation(line: 456, column: 30, scope: !251)
!256 = !DILocation(line: 456, column: 28, scope: !251)
!257 = !DILocation(line: 456, column: 10, scope: !251)
!258 = !DILocation(line: 456, column: 3, scope: !251)
!259 = !DILocation(line: 457, column: 25, scope: !239)
!260 = !DILocation(line: 457, column: 30, scope: !239)
!261 = !DILocation(line: 457, column: 9, scope: !239)
!262 = !DILocation(line: 457, column: 2, scope: !239)
!263 = !DILocation(line: 458, column: 1, scope: !239)
!264 = distinct !DISubprogram(name: "hweight_long", scope: !265, file: !265, line: 95, type: !266, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!265 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!266 = !DISubroutineType(types: !267)
!267 = !{!12, !12}
!268 = !{!269}
!269 = !DILocalVariable(name: "w", arg: 1, scope: !264, file: !265, line: 95, type: !12)
!270 = !DILocation(line: 95, column: 65, scope: !264)
!271 = !DILocation(line: 97, column: 41, scope: !264)
!272 = !DILocation(line: 97, column: 2, scope: !264)
!273 = !DISubprogram(name: "__bitmap_weight", scope: !240, file: !240, line: 171, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = distinct !DISubprogram(name: "__arch_hweight64", scope: !275, file: !275, line: 43, type: !276, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!275 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!276 = !DISubroutineType(types: !277)
!277 = !{!12, !17}
!278 = !{!279, !280}
!279 = !DILocalVariable(name: "w", arg: 1, scope: !274, file: !275, line: 43, type: !17)
!280 = !DILocalVariable(name: "res", scope: !274, file: !275, line: 45, type: !12)
!281 = !DILocation(line: 43, column: 61, scope: !274)
!282 = !DILocation(line: 45, column: 2, scope: !274)
!283 = !DILocation(line: 45, column: 16, scope: !274)
!284 = !DILocation(line: 49, column: 15, scope: !274)
!285 = !DILocation(line: 47, column: 2, scope: !274)
!286 = !{i64 2147839861, i64 2147839889, i64 2147839895, i64 2147839911, i64 2147839927, i64 2147839954, i64 2147840287, i64 2147839587, i64 2147840293, i64 2147840341, i64 2147840405, i64 2147840469, i64 2147840526, i64 2147839668, i64 2147839693, i64 2147840733, i64 2147840863, i64 2147840794, i64 2147840877, i64 2147839785}
!287 = !DILocation(line: 51, column: 9, scope: !274)
!288 = !DILocation(line: 52, column: 1, scope: !274)
!289 = !DILocation(line: 51, column: 2, scope: !274)
!290 = distinct !DISubprogram(name: "__must_check_overflow", scope: !291, file: !291, line: 51, type: !292, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !296)
!291 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !294}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 35, baseType: !295)
!295 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!296 = !{!297}
!297 = !DILocalVariable(name: "overflow", arg: 1, scope: !290, file: !291, line: 51, type: !294)
!298 = !DILocation(line: 51, column: 60, scope: !290)
!299 = !DILocation(line: 53, column: 9, scope: !290)
!300 = !{i8 0, i8 2}
!301 = !DILocation(line: 53, column: 2, scope: !290)
!302 = distinct !DISubprogram(name: "kvmalloc", scope: !191, file: !191, line: 736, type: !303, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{!16, !81, !85}
!305 = !{!306, !307}
!306 = !DILocalVariable(name: "size", arg: 1, scope: !302, file: !191, line: 736, type: !81)
!307 = !DILocalVariable(name: "flags", arg: 2, scope: !302, file: !191, line: 736, type: !85)
!308 = !DILocation(line: 736, column: 53, scope: !302)
!309 = !DILocation(line: 736, column: 65, scope: !302)
!310 = !DILocation(line: 738, column: 23, scope: !302)
!311 = !DILocation(line: 738, column: 29, scope: !302)
!312 = !DILocation(line: 738, column: 9, scope: !302)
!313 = !DILocation(line: 738, column: 2, scope: !302)
!314 = !DISubprogram(name: "kvmalloc_node", scope: !191, file: !191, line: 735, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubroutineType(types: !316)
!316 = !{!16, !81, !85, !35}
