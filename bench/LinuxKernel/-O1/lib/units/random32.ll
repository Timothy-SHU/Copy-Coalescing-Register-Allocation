; ModuleID = 'lib/random32.c'
source_filename = "lib/random32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_prandom_u32_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad prandom_u32_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_prandom_bytes_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad prandom_bytes_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_prandom_seed_full_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad prandom_seed_full_state ; .previous"

%struct.cpumask = type { [1 x i64] }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.anon = type { i32 }

@__UNIQUE_ID___addressable_prandom_u32_state174 = internal global ptr @prandom_u32_state, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_prandom_bytes_state175 = internal global ptr @prandom_bytes_state, section ".discard.addressable", align 8, !dbg !59
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__UNIQUE_ID___addressable_prandom_seed_full_state176 = internal global ptr @prandom_seed_full_state, section ".discard.addressable", align 8, !dbg !61
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_prandom_u32_state174, ptr @__UNIQUE_ID___addressable_prandom_bytes_state175, ptr @__UNIQUE_ID___addressable_prandom_seed_full_state176], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @prandom_u32_state(ptr noundef %state) #0 align 16 !dbg !72 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load ptr, ptr %state.addr, align 8, !dbg !78
  %s1 = getelementptr inbounds %struct.rnd_state, ptr %0, i32 0, i32 0, !dbg !78
  %1 = load i32, ptr %s1, align 4, !dbg !78
  %and = and i32 %1, -2, !dbg !78
  %shl = shl i32 %and, 18, !dbg !78
  %2 = load ptr, ptr %state.addr, align 8, !dbg !78
  %s11 = getelementptr inbounds %struct.rnd_state, ptr %2, i32 0, i32 0, !dbg !78
  %3 = load i32, ptr %s11, align 4, !dbg !78
  %shl2 = shl i32 %3, 6, !dbg !78
  %4 = load ptr, ptr %state.addr, align 8, !dbg !78
  %s13 = getelementptr inbounds %struct.rnd_state, ptr %4, i32 0, i32 0, !dbg !78
  %5 = load i32, ptr %s13, align 4, !dbg !78
  %xor = xor i32 %shl2, %5, !dbg !78
  %shr = lshr i32 %xor, 13, !dbg !78
  %xor4 = xor i32 %shl, %shr, !dbg !78
  %6 = load ptr, ptr %state.addr, align 8, !dbg !79
  %s15 = getelementptr inbounds %struct.rnd_state, ptr %6, i32 0, i32 0, !dbg !80
  store i32 %xor4, ptr %s15, align 4, !dbg !81
  %7 = load ptr, ptr %state.addr, align 8, !dbg !82
  %s2 = getelementptr inbounds %struct.rnd_state, ptr %7, i32 0, i32 1, !dbg !82
  %8 = load i32, ptr %s2, align 4, !dbg !82
  %and6 = and i32 %8, -8, !dbg !82
  %shl7 = shl i32 %and6, 2, !dbg !82
  %9 = load ptr, ptr %state.addr, align 8, !dbg !82
  %s28 = getelementptr inbounds %struct.rnd_state, ptr %9, i32 0, i32 1, !dbg !82
  %10 = load i32, ptr %s28, align 4, !dbg !82
  %shl9 = shl i32 %10, 2, !dbg !82
  %11 = load ptr, ptr %state.addr, align 8, !dbg !82
  %s210 = getelementptr inbounds %struct.rnd_state, ptr %11, i32 0, i32 1, !dbg !82
  %12 = load i32, ptr %s210, align 4, !dbg !82
  %xor11 = xor i32 %shl9, %12, !dbg !82
  %shr12 = lshr i32 %xor11, 27, !dbg !82
  %xor13 = xor i32 %shl7, %shr12, !dbg !82
  %13 = load ptr, ptr %state.addr, align 8, !dbg !83
  %s214 = getelementptr inbounds %struct.rnd_state, ptr %13, i32 0, i32 1, !dbg !84
  store i32 %xor13, ptr %s214, align 4, !dbg !85
  %14 = load ptr, ptr %state.addr, align 8, !dbg !86
  %s3 = getelementptr inbounds %struct.rnd_state, ptr %14, i32 0, i32 2, !dbg !86
  %15 = load i32, ptr %s3, align 4, !dbg !86
  %and15 = and i32 %15, -16, !dbg !86
  %shl16 = shl i32 %and15, 7, !dbg !86
  %16 = load ptr, ptr %state.addr, align 8, !dbg !86
  %s317 = getelementptr inbounds %struct.rnd_state, ptr %16, i32 0, i32 2, !dbg !86
  %17 = load i32, ptr %s317, align 4, !dbg !86
  %shl18 = shl i32 %17, 13, !dbg !86
  %18 = load ptr, ptr %state.addr, align 8, !dbg !86
  %s319 = getelementptr inbounds %struct.rnd_state, ptr %18, i32 0, i32 2, !dbg !86
  %19 = load i32, ptr %s319, align 4, !dbg !86
  %xor20 = xor i32 %shl18, %19, !dbg !86
  %shr21 = lshr i32 %xor20, 21, !dbg !86
  %xor22 = xor i32 %shl16, %shr21, !dbg !86
  %20 = load ptr, ptr %state.addr, align 8, !dbg !87
  %s323 = getelementptr inbounds %struct.rnd_state, ptr %20, i32 0, i32 2, !dbg !88
  store i32 %xor22, ptr %s323, align 4, !dbg !89
  %21 = load ptr, ptr %state.addr, align 8, !dbg !90
  %s4 = getelementptr inbounds %struct.rnd_state, ptr %21, i32 0, i32 3, !dbg !90
  %22 = load i32, ptr %s4, align 4, !dbg !90
  %and24 = and i32 %22, -128, !dbg !90
  %shl25 = shl i32 %and24, 13, !dbg !90
  %23 = load ptr, ptr %state.addr, align 8, !dbg !90
  %s426 = getelementptr inbounds %struct.rnd_state, ptr %23, i32 0, i32 3, !dbg !90
  %24 = load i32, ptr %s426, align 4, !dbg !90
  %shl27 = shl i32 %24, 3, !dbg !90
  %25 = load ptr, ptr %state.addr, align 8, !dbg !90
  %s428 = getelementptr inbounds %struct.rnd_state, ptr %25, i32 0, i32 3, !dbg !90
  %26 = load i32, ptr %s428, align 4, !dbg !90
  %xor29 = xor i32 %shl27, %26, !dbg !90
  %shr30 = lshr i32 %xor29, 12, !dbg !90
  %xor31 = xor i32 %shl25, %shr30, !dbg !90
  %27 = load ptr, ptr %state.addr, align 8, !dbg !91
  %s432 = getelementptr inbounds %struct.rnd_state, ptr %27, i32 0, i32 3, !dbg !92
  store i32 %xor31, ptr %s432, align 4, !dbg !93
  %28 = load ptr, ptr %state.addr, align 8, !dbg !94
  %s133 = getelementptr inbounds %struct.rnd_state, ptr %28, i32 0, i32 0, !dbg !95
  %29 = load i32, ptr %s133, align 4, !dbg !95
  %30 = load ptr, ptr %state.addr, align 8, !dbg !96
  %s234 = getelementptr inbounds %struct.rnd_state, ptr %30, i32 0, i32 1, !dbg !97
  %31 = load i32, ptr %s234, align 4, !dbg !97
  %xor35 = xor i32 %29, %31, !dbg !98
  %32 = load ptr, ptr %state.addr, align 8, !dbg !99
  %s336 = getelementptr inbounds %struct.rnd_state, ptr %32, i32 0, i32 2, !dbg !100
  %33 = load i32, ptr %s336, align 4, !dbg !100
  %xor37 = xor i32 %xor35, %33, !dbg !101
  %34 = load ptr, ptr %state.addr, align 8, !dbg !102
  %s438 = getelementptr inbounds %struct.rnd_state, ptr %34, i32 0, i32 3, !dbg !103
  %35 = load i32, ptr %s438, align 4, !dbg !103
  %xor39 = xor i32 %xor37, %35, !dbg !104
  ret i32 %xor39, !dbg !105
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @prandom_bytes_state(ptr noundef %state, ptr noundef %buf, i64 noundef %bytes) #0 align 16 !dbg !8 {
entry:
  %state.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %rem = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !29, metadata !DIExpression()), !dbg !106
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !30, metadata !DIExpression()), !dbg !107
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !31, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !32, metadata !DIExpression()), !dbg !110
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !111
  store ptr %0, ptr %ptr, align 8, !dbg !110
  br label %while.cond, !dbg !112

while.cond:                                       ; preds = %do.end, %entry
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !113
  %cmp = icmp uge i64 %1, 4, !dbg !114
  br i1 %cmp, label %while.body, label %while.end, !dbg !112

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !115

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !38, metadata !DIExpression()), !dbg !116
  %2 = load ptr, ptr %ptr, align 8, !dbg !116
  store ptr %2, ptr %__pptr, align 8, !dbg !116
  %3 = load ptr, ptr %state.addr, align 8, !dbg !116
  %call = call i32 @prandom_u32_state(ptr noundef %3) #9, !dbg !116
  %4 = load ptr, ptr %__pptr, align 8, !dbg !116
  %x = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !116
  store i32 %call, ptr %x, align 1, !dbg !116
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !115
  br label %do.cond, !dbg !116

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !116

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %ptr, align 8, !dbg !117
  %add.ptr = getelementptr i8, ptr %5, i64 4, !dbg !117
  store ptr %add.ptr, ptr %ptr, align 8, !dbg !117
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !118
  %sub = sub i64 %6, 4, !dbg !118
  store i64 %sub, ptr %bytes.addr, align 8, !dbg !118
  br label %while.cond, !dbg !112, !llvm.loop !119

while.end:                                        ; preds = %while.cond
  %7 = load i64, ptr %bytes.addr, align 8, !dbg !123
  %cmp1 = icmp ugt i64 %7, 0, !dbg !124
  br i1 %cmp1, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %rem) #8, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !41, metadata !DIExpression()), !dbg !127
  %8 = load ptr, ptr %state.addr, align 8, !dbg !128
  %call2 = call i32 @prandom_u32_state(ptr noundef %8) #9, !dbg !129
  store i32 %call2, ptr %rem, align 4, !dbg !127
  br label %do.body3, !dbg !130

do.body3:                                         ; preds = %do.cond4, %if.then
  %9 = load i32, ptr %rem, align 4, !dbg !131
  %conv = trunc i32 %9 to i8, !dbg !133
  %10 = load ptr, ptr %ptr, align 8, !dbg !134
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !134
  store ptr %incdec.ptr, ptr %ptr, align 8, !dbg !134
  store i8 %conv, ptr %10, align 1, !dbg !135
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !136
  %dec = add i64 %11, -1, !dbg !136
  store i64 %dec, ptr %bytes.addr, align 8, !dbg !136
  %12 = load i32, ptr %rem, align 4, !dbg !137
  %shr = lshr i32 %12, 8, !dbg !137
  store i32 %shr, ptr %rem, align 4, !dbg !137
  br label %do.cond4, !dbg !138

do.cond4:                                         ; preds = %do.body3
  %13 = load i64, ptr %bytes.addr, align 8, !dbg !139
  %cmp5 = icmp ugt i64 %13, 0, !dbg !140
  br i1 %cmp5, label %do.body3, label %do.end7, !dbg !138, !llvm.loop !141

do.end7:                                          ; preds = %do.cond4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rem) #8, !dbg !143
  br label %if.end, !dbg !144

if.end:                                           ; preds = %do.end7, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8, !dbg !145
  ret void, !dbg !145
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @prandom_seed_full_state(ptr noundef %pcpu_state) #0 align 16 !dbg !146 {
entry:
  %pcpu_state.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %state = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  %seeds = alloca [4 x i32], align 16
  store ptr %pcpu_state, ptr %pcpu_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcpu_state.addr, metadata !150, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %i, metadata !151, metadata !DIExpression()), !dbg !169
  store i32 0, ptr %i, align 4, !dbg !170
  br label %for.cond, !dbg !170

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !171
  %conv = sext i32 %0 to i64, !dbg !171
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #9, !dbg !171
  %conv1 = trunc i64 %call to i32, !dbg !171
  store i32 %conv1, ptr %i, align 4, !dbg !171
  %1 = load i32, ptr %i, align 4, !dbg !171
  %cmp = icmp ult i32 %1, 64, !dbg !171
  br i1 %cmp, label %for.body, label %for.end, !dbg !170

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #8, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %state, metadata !152, metadata !DIExpression()), !dbg !173
  br label %do.body, !dbg !174

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !156, metadata !DIExpression()), !dbg !175
  store ptr null, ptr %__vpp_verify, align 8, !dbg !175
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !175
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !174
  br label %do.cond, !dbg !175

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !175

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !176
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !161, metadata !DIExpression()), !dbg !176
  %3 = load ptr, ptr %pcpu_state.addr, align 8, !dbg !176
  %4 = ptrtoint ptr %3 to i64, !dbg !176
  store i64 %4, ptr %__ptr, align 8, !dbg !176
  %5 = load i64, ptr %__ptr, align 8, !dbg !176
  %6 = load i32, ptr %i, align 4, !dbg !176
  %idxprom = sext i32 %6 to i64, !dbg !176
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !176
  %7 = load i64, ptr %arrayidx, align 8, !dbg !176
  %add = add i64 %5, %7, !dbg !176
  %8 = inttoptr i64 %add to ptr, !dbg !176
  store ptr %8, ptr %tmp3, align 8, !dbg !176
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !174
  %9 = load ptr, ptr %tmp3, align 8, !dbg !176
  store ptr %9, ptr %tmp, align 8, !dbg !175
  %10 = load ptr, ptr %tmp, align 8, !dbg !174
  store ptr %10, ptr %state, align 8, !dbg !173
  call void @llvm.lifetime.start.p0(i64 16, ptr %seeds) #8, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %seeds, metadata !163, metadata !DIExpression()), !dbg !178
  call void @get_random_bytes(ptr noundef %seeds, i64 noundef 16) #9, !dbg !179
  %arrayidx4 = getelementptr [4 x i32], ptr %seeds, i64 0, i64 0, !dbg !180
  %11 = load i32, ptr %arrayidx4, align 16, !dbg !180
  %call5 = call i32 @__seed(i32 noundef %11, i32 noundef 2) #9, !dbg !181
  %12 = load ptr, ptr %state, align 8, !dbg !182
  %s1 = getelementptr inbounds %struct.rnd_state, ptr %12, i32 0, i32 0, !dbg !183
  store i32 %call5, ptr %s1, align 4, !dbg !184
  %arrayidx6 = getelementptr [4 x i32], ptr %seeds, i64 0, i64 1, !dbg !185
  %13 = load i32, ptr %arrayidx6, align 4, !dbg !185
  %call7 = call i32 @__seed(i32 noundef %13, i32 noundef 8) #9, !dbg !186
  %14 = load ptr, ptr %state, align 8, !dbg !187
  %s2 = getelementptr inbounds %struct.rnd_state, ptr %14, i32 0, i32 1, !dbg !188
  store i32 %call7, ptr %s2, align 4, !dbg !189
  %arrayidx8 = getelementptr [4 x i32], ptr %seeds, i64 0, i64 2, !dbg !190
  %15 = load i32, ptr %arrayidx8, align 8, !dbg !190
  %call9 = call i32 @__seed(i32 noundef %15, i32 noundef 16) #9, !dbg !191
  %16 = load ptr, ptr %state, align 8, !dbg !192
  %s3 = getelementptr inbounds %struct.rnd_state, ptr %16, i32 0, i32 2, !dbg !193
  store i32 %call9, ptr %s3, align 4, !dbg !194
  %arrayidx10 = getelementptr [4 x i32], ptr %seeds, i64 0, i64 3, !dbg !195
  %17 = load i32, ptr %arrayidx10, align 4, !dbg !195
  %call11 = call i32 @__seed(i32 noundef %17, i32 noundef 128) #9, !dbg !196
  %18 = load ptr, ptr %state, align 8, !dbg !197
  %s4 = getelementptr inbounds %struct.rnd_state, ptr %18, i32 0, i32 3, !dbg !198
  store i32 %call11, ptr %s4, align 4, !dbg !199
  %19 = load ptr, ptr %state, align 8, !dbg !200
  call void @prandom_warmup(ptr noundef %19) #9, !dbg !201
  call void @llvm.lifetime.end.p0(i64 16, ptr %seeds) #8, !dbg !202
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #8, !dbg !202
  br label %for.inc, !dbg !203

for.inc:                                          ; preds = %do.end
  %20 = load i32, ptr %i, align 4, !dbg !171
  %inc = add i32 %20, 1, !dbg !171
  store i32 %inc, ptr %i, align 4, !dbg !171
  br label %for.cond, !dbg !171, !llvm.loop !204

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !206
  ret void, !dbg !206
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !207 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !214, metadata !DIExpression()), !dbg !220
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !215, metadata !DIExpression()), !dbg !221
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !216, metadata !DIExpression()), !dbg !222
  %0 = load i64, ptr %size.addr, align 8, !dbg !223
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !223
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !223

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !223
  %cmp = icmp ule i64 %2, 64, !dbg !223
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !223

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !223
  %cmp2 = icmp ugt i64 %3, 0, !dbg !223
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !224

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %val, metadata !217, metadata !DIExpression()), !dbg !226
  %4 = load i64, ptr %offset.addr, align 8, !dbg !227
  %5 = load i64, ptr %size.addr, align 8, !dbg !227
  %cmp3 = icmp uge i64 %4, %5, !dbg !227
  %lnot = xor i1 %cmp3, true, !dbg !227
  %lnot4 = xor i1 %lnot, true, !dbg !227
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !227
  %conv = sext i32 %lnot.ext to i64, !dbg !227
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !227
  %tobool = icmp ne i64 %expval, 0, !dbg !227
  br i1 %tobool, label %if.then5, label %if.end, !dbg !229

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !230
  store i64 %6, ptr %retval, align 8, !dbg !231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !231

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !232
  %8 = load i64, ptr %7, align 8, !dbg !233
  %9 = load i64, ptr %offset.addr, align 8, !dbg !234
  %shl = shl i64 1, %9, !dbg !234
  %sub = sub i64 -1, %shl, !dbg !234
  %add = add i64 %sub, 1, !dbg !234
  %10 = load i64, ptr %size.addr, align 8, !dbg !234
  %sub6 = sub i64 %10, 1, !dbg !234
  %sub7 = sub i64 63, %sub6, !dbg !234
  %shr = lshr i64 -1, %sub7, !dbg !234
  %and = and i64 %add, %shr, !dbg !234
  %add8 = add i64 0, %and, !dbg !234
  %and9 = and i64 %8, %add8, !dbg !235
  store i64 %and9, ptr %val, align 8, !dbg !236
  %11 = load i64, ptr %val, align 8, !dbg !237
  %tobool10 = icmp ne i64 %11, 0, !dbg !237
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !237

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !238
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !238
  br i1 %13, label %cond.true11, label %cond.false, !dbg !238

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !238
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !238
  %cast = trunc i64 %15 to i32, !dbg !238
  %conv12 = sext i32 %cast to i64, !dbg !238
  br label %cond.end, !dbg !238

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !238
  %call = call i64 @variable__ffs(i64 noundef %16) #9, !dbg !238
  br label %cond.end, !dbg !238

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !238
  br label %cond.end14, !dbg !237

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !239
  br label %cond.end14, !dbg !237

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !237
  store i64 %cond15, ptr %retval, align 8, !dbg !240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !240

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8, !dbg !241
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !242
  %19 = load i64, ptr %size.addr, align 8, !dbg !243
  %20 = load i64, ptr %offset.addr, align 8, !dbg !244
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #9, !dbg !245
  store i64 %call17, ptr %retval, align 8, !dbg !246
  br label %return, !dbg !246

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !247
  ret i64 %21, !dbg !247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !248 dso_local void @get_random_bytes(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seed(i32 noundef %x, i32 noundef %m) #3 align 16 !dbg !252 {
entry:
  %x.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !256, metadata !DIExpression()), !dbg !258
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !257, metadata !DIExpression()), !dbg !259
  %0 = load i32, ptr %x.addr, align 4, !dbg !260
  %1 = load i32, ptr %m.addr, align 4, !dbg !261
  %cmp = icmp ult i32 %0, %1, !dbg !262
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !263

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4, !dbg !264
  %3 = load i32, ptr %m.addr, align 4, !dbg !265
  %add = add i32 %2, %3, !dbg !266
  br label %cond.end, !dbg !263

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4, !dbg !267
  br label %cond.end, !dbg !263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %4, %cond.false ], !dbg !263
  ret i32 %cond, !dbg !268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @prandom_warmup(ptr noundef %state) #0 align 16 !dbg !269 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load ptr, ptr %state.addr, align 8, !dbg !273
  %call = call i32 @prandom_u32_state(ptr noundef %0) #9, !dbg !274
  %1 = load ptr, ptr %state.addr, align 8, !dbg !275
  %call1 = call i32 @prandom_u32_state(ptr noundef %1) #9, !dbg !276
  %2 = load ptr, ptr %state.addr, align 8, !dbg !277
  %call2 = call i32 @prandom_u32_state(ptr noundef %2) #9, !dbg !278
  %3 = load ptr, ptr %state.addr, align 8, !dbg !279
  %call3 = call i32 @prandom_u32_state(ptr noundef %3) #9, !dbg !280
  %4 = load ptr, ptr %state.addr, align 8, !dbg !281
  %call4 = call i32 @prandom_u32_state(ptr noundef %4) #9, !dbg !282
  %5 = load ptr, ptr %state.addr, align 8, !dbg !283
  %call5 = call i32 @prandom_u32_state(ptr noundef %5) #9, !dbg !284
  %6 = load ptr, ptr %state.addr, align 8, !dbg !285
  %call6 = call i32 @prandom_u32_state(ptr noundef %6) #9, !dbg !286
  %7 = load ptr, ptr %state.addr, align 8, !dbg !287
  %call7 = call i32 @prandom_u32_state(ptr noundef %7) #9, !dbg !288
  %8 = load ptr, ptr %state.addr, align 8, !dbg !289
  %call8 = call i32 @prandom_u32_state(ptr noundef %8) #9, !dbg !290
  %9 = load ptr, ptr %state.addr, align 8, !dbg !291
  %call9 = call i32 @prandom_u32_state(ptr noundef %9) #9, !dbg !292
  ret void, !dbg !293
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !294 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load i64, ptr %word.addr, align 8, !dbg !301
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !302, !srcloc !303
  store i64 %1, ptr %word.addr, align 8, !dbg !302
  %2 = load i64, ptr %word.addr, align 8, !dbg !304
  ret i64 %2, !dbg !305
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !306 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_prandom_u32_state174", scope: !2, file: !3, line: 62, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.random32.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/random32\22 -D KBUILD_BASENAME=\22random32\22 -D KBUILD_MODNAME=\22random32\22 -D __KBUILD_MODNAME=kmod_random32 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/random32.ll lib/random32.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !58, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/random32.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11840da59ec966b3bedea753a31b7af0")
!4 = !{!5, !6, !47, !34, !48, !18, !11, !27, !57}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 79, size: 32, elements: !45)
!8 = distinct !DISubprogram(name: "prandom_bytes_state", scope: !3, file: !3, line: 74, type: !9, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !28)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !5, !22}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rnd_state", file: !13, line: 16, size: 128, elements: !14)
!13 = !DIFile(filename: "./include/linux/prandom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6cec501b56006ae4dd4be7b369b38936")
!14 = !{!15, !19, !20, !21}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "s1", scope: !12, file: !13, line: 17, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !12, file: !13, line: 17, baseType: !16, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !12, file: !13, line: 17, baseType: !16, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !12, file: !13, line: 17, baseType: !16, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !24)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !25, line: 72, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !25, line: 16, baseType: !27)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31, !32, !38, !41}
!29 = !DILocalVariable(name: "state", arg: 1, scope: !8, file: !3, line: 74, type: !11)
!30 = !DILocalVariable(name: "buf", arg: 2, scope: !8, file: !3, line: 74, type: !5)
!31 = !DILocalVariable(name: "bytes", arg: 3, scope: !8, file: !3, line: 74, type: !22)
!32 = !DILocalVariable(name: "ptr", scope: !8, file: !3, line: 76, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !35, line: 17, baseType: !36)
!35 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DILocalVariable(name: "__pptr", scope: !39, file: !3, line: 79, type: !6)
!39 = distinct !DILexicalBlock(scope: !40, file: !3, line: 79, column: 3)
!40 = distinct !DILexicalBlock(scope: !8, file: !3, line: 78, column: 31)
!41 = !DILocalVariable(name: "rem", scope: !42, file: !3, line: 85, type: !44)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 84, column: 17)
!43 = distinct !DILexicalBlock(scope: !8, file: !3, line: 84, column: 6)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !35, line: 21, baseType: !16)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !7, file: !3, line: 79, baseType: !44, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !51, line: 19, size: 64, elements: !52)
!51 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !50, file: !51, line: 19, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !{!0, !59, !61}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_prandom_bytes_state175", scope: !2, file: !3, line: 93, type: !5, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_prandom_seed_full_state176", scope: !2, file: !3, line: 127, type: !5, isLocal: true, isDefinition: true)
!63 = !{i32 7, !"Dwarf Version", i32 5}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 8, !"cf-protection-branch", i32 1}
!67 = !{i32 4, !"function_return_thunk_extern", i32 1}
!68 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!69 = !{i32 1, !"Code Model", i32 2}
!70 = !{i32 1, !"override-stack-alignment", i32 8}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = distinct !DISubprogram(name: "prandom_u32_state", scope: !3, file: !3, line: 52, type: !73, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{!44, !11}
!75 = !{!76}
!76 = !DILocalVariable(name: "state", arg: 1, scope: !72, file: !3, line: 52, type: !11)
!77 = !DILocation(line: 52, column: 41, scope: !72)
!78 = !DILocation(line: 55, column: 14, scope: !72)
!79 = !DILocation(line: 55, column: 2, scope: !72)
!80 = !DILocation(line: 55, column: 9, scope: !72)
!81 = !DILocation(line: 55, column: 12, scope: !72)
!82 = !DILocation(line: 56, column: 14, scope: !72)
!83 = !DILocation(line: 56, column: 2, scope: !72)
!84 = !DILocation(line: 56, column: 9, scope: !72)
!85 = !DILocation(line: 56, column: 12, scope: !72)
!86 = !DILocation(line: 57, column: 14, scope: !72)
!87 = !DILocation(line: 57, column: 2, scope: !72)
!88 = !DILocation(line: 57, column: 9, scope: !72)
!89 = !DILocation(line: 57, column: 12, scope: !72)
!90 = !DILocation(line: 58, column: 14, scope: !72)
!91 = !DILocation(line: 58, column: 2, scope: !72)
!92 = !DILocation(line: 58, column: 9, scope: !72)
!93 = !DILocation(line: 58, column: 12, scope: !72)
!94 = !DILocation(line: 60, column: 10, scope: !72)
!95 = !DILocation(line: 60, column: 17, scope: !72)
!96 = !DILocation(line: 60, column: 22, scope: !72)
!97 = !DILocation(line: 60, column: 29, scope: !72)
!98 = !DILocation(line: 60, column: 20, scope: !72)
!99 = !DILocation(line: 60, column: 34, scope: !72)
!100 = !DILocation(line: 60, column: 41, scope: !72)
!101 = !DILocation(line: 60, column: 32, scope: !72)
!102 = !DILocation(line: 60, column: 46, scope: !72)
!103 = !DILocation(line: 60, column: 53, scope: !72)
!104 = !DILocation(line: 60, column: 44, scope: !72)
!105 = !DILocation(line: 60, column: 2, scope: !72)
!106 = !DILocation(line: 74, column: 44, scope: !8)
!107 = !DILocation(line: 74, column: 57, scope: !8)
!108 = !DILocation(line: 74, column: 69, scope: !8)
!109 = !DILocation(line: 76, column: 2, scope: !8)
!110 = !DILocation(line: 76, column: 6, scope: !8)
!111 = !DILocation(line: 76, column: 12, scope: !8)
!112 = !DILocation(line: 78, column: 2, scope: !8)
!113 = !DILocation(line: 78, column: 9, scope: !8)
!114 = !DILocation(line: 78, column: 15, scope: !8)
!115 = !DILocation(line: 79, column: 3, scope: !40)
!116 = !DILocation(line: 79, column: 3, scope: !39)
!117 = !DILocation(line: 80, column: 7, scope: !40)
!118 = !DILocation(line: 81, column: 9, scope: !40)
!119 = distinct !{!119, !112, !120, !121, !122}
!120 = !DILocation(line: 82, column: 2, scope: !8)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !DILocation(line: 84, column: 6, scope: !43)
!124 = !DILocation(line: 84, column: 12, scope: !43)
!125 = !DILocation(line: 84, column: 6, scope: !8)
!126 = !DILocation(line: 85, column: 3, scope: !42)
!127 = !DILocation(line: 85, column: 7, scope: !42)
!128 = !DILocation(line: 85, column: 31, scope: !42)
!129 = !DILocation(line: 85, column: 13, scope: !42)
!130 = !DILocation(line: 86, column: 3, scope: !42)
!131 = !DILocation(line: 87, column: 18, scope: !132)
!132 = distinct !DILexicalBlock(scope: !42, file: !3, line: 86, column: 6)
!133 = !DILocation(line: 87, column: 13, scope: !132)
!134 = !DILocation(line: 87, column: 8, scope: !132)
!135 = !DILocation(line: 87, column: 11, scope: !132)
!136 = !DILocation(line: 88, column: 9, scope: !132)
!137 = !DILocation(line: 89, column: 8, scope: !132)
!138 = !DILocation(line: 90, column: 3, scope: !132)
!139 = !DILocation(line: 90, column: 12, scope: !42)
!140 = !DILocation(line: 90, column: 18, scope: !42)
!141 = distinct !{!141, !130, !142, !121, !122}
!142 = !DILocation(line: 90, column: 21, scope: !42)
!143 = !DILocation(line: 91, column: 2, scope: !43)
!144 = !DILocation(line: 91, column: 2, scope: !42)
!145 = !DILocation(line: 92, column: 1, scope: !8)
!146 = distinct !DISubprogram(name: "prandom_seed_full_state", scope: !3, file: !3, line: 110, type: !147, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !11}
!149 = !{!150, !151, !152, !156, !161, !163}
!150 = !DILocalVariable(name: "pcpu_state", arg: 1, scope: !146, file: !3, line: 110, type: !11)
!151 = !DILocalVariable(name: "i", scope: !146, file: !3, line: 112, type: !57)
!152 = !DILocalVariable(name: "state", scope: !153, file: !3, line: 115, type: !11)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 114, column: 27)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 114, column: 2)
!155 = distinct !DILexicalBlock(scope: !146, file: !3, line: 114, column: 2)
!156 = !DILocalVariable(name: "__vpp_verify", scope: !157, file: !3, line: 115, type: !159)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 115, column: 29)
!158 = distinct !DILexicalBlock(scope: !153, file: !3, line: 115, column: 29)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!161 = !DILocalVariable(name: "__ptr", scope: !162, file: !3, line: 115, type: !27)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 115, column: 29)
!163 = !DILocalVariable(name: "seeds", scope: !153, file: !3, line: 116, type: !164)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 4)
!167 = !DILocation(line: 110, column: 57, scope: !146)
!168 = !DILocation(line: 112, column: 2, scope: !146)
!169 = !DILocation(line: 112, column: 6, scope: !146)
!170 = !DILocation(line: 114, column: 2, scope: !155)
!171 = !DILocation(line: 114, column: 2, scope: !154)
!172 = !DILocation(line: 115, column: 3, scope: !153)
!173 = !DILocation(line: 115, column: 21, scope: !153)
!174 = !DILocation(line: 115, column: 29, scope: !158)
!175 = !DILocation(line: 115, column: 29, scope: !157)
!176 = !DILocation(line: 115, column: 29, scope: !162)
!177 = !DILocation(line: 116, column: 3, scope: !153)
!178 = !DILocation(line: 116, column: 7, scope: !153)
!179 = !DILocation(line: 118, column: 3, scope: !153)
!180 = !DILocation(line: 119, column: 22, scope: !153)
!181 = !DILocation(line: 119, column: 15, scope: !153)
!182 = !DILocation(line: 119, column: 3, scope: !153)
!183 = !DILocation(line: 119, column: 10, scope: !153)
!184 = !DILocation(line: 119, column: 13, scope: !153)
!185 = !DILocation(line: 120, column: 22, scope: !153)
!186 = !DILocation(line: 120, column: 15, scope: !153)
!187 = !DILocation(line: 120, column: 3, scope: !153)
!188 = !DILocation(line: 120, column: 10, scope: !153)
!189 = !DILocation(line: 120, column: 13, scope: !153)
!190 = !DILocation(line: 121, column: 22, scope: !153)
!191 = !DILocation(line: 121, column: 15, scope: !153)
!192 = !DILocation(line: 121, column: 3, scope: !153)
!193 = !DILocation(line: 121, column: 10, scope: !153)
!194 = !DILocation(line: 121, column: 13, scope: !153)
!195 = !DILocation(line: 122, column: 22, scope: !153)
!196 = !DILocation(line: 122, column: 15, scope: !153)
!197 = !DILocation(line: 122, column: 3, scope: !153)
!198 = !DILocation(line: 122, column: 10, scope: !153)
!199 = !DILocation(line: 122, column: 13, scope: !153)
!200 = !DILocation(line: 124, column: 18, scope: !153)
!201 = !DILocation(line: 124, column: 3, scope: !153)
!202 = !DILocation(line: 125, column: 2, scope: !154)
!203 = !DILocation(line: 125, column: 2, scope: !153)
!204 = distinct !{!204, !170, !205, !121, !122}
!205 = !DILocation(line: 125, column: 2, scope: !155)
!206 = !DILocation(line: 126, column: 1, scope: !146)
!207 = distinct !DISubprogram(name: "find_next_bit", scope: !208, file: !208, line: 54, type: !209, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!208 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!209 = !DISubroutineType(types: !210)
!210 = !{!27, !211, !27, !27}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!213 = !{!214, !215, !216, !217}
!214 = !DILocalVariable(name: "addr", arg: 1, scope: !207, file: !208, line: 54, type: !211)
!215 = !DILocalVariable(name: "size", arg: 2, scope: !207, file: !208, line: 54, type: !27)
!216 = !DILocalVariable(name: "offset", arg: 3, scope: !207, file: !208, line: 55, type: !27)
!217 = !DILocalVariable(name: "val", scope: !218, file: !208, line: 58, type: !27)
!218 = distinct !DILexicalBlock(scope: !219, file: !208, line: 57, column: 31)
!219 = distinct !DILexicalBlock(scope: !207, file: !208, line: 57, column: 6)
!220 = !DILocation(line: 54, column: 50, scope: !207)
!221 = !DILocation(line: 54, column: 70, scope: !207)
!222 = !DILocation(line: 55, column: 22, scope: !207)
!223 = !DILocation(line: 57, column: 6, scope: !219)
!224 = !DILocation(line: 57, column: 6, scope: !207)
!225 = !DILocation(line: 58, column: 3, scope: !218)
!226 = !DILocation(line: 58, column: 17, scope: !218)
!227 = !DILocation(line: 60, column: 7, scope: !228)
!228 = distinct !DILexicalBlock(scope: !218, file: !208, line: 60, column: 7)
!229 = !DILocation(line: 60, column: 7, scope: !218)
!230 = !DILocation(line: 61, column: 11, scope: !228)
!231 = !DILocation(line: 61, column: 4, scope: !228)
!232 = !DILocation(line: 63, column: 10, scope: !218)
!233 = !DILocation(line: 63, column: 9, scope: !218)
!234 = !DILocation(line: 63, column: 17, scope: !218)
!235 = !DILocation(line: 63, column: 15, scope: !218)
!236 = !DILocation(line: 63, column: 7, scope: !218)
!237 = !DILocation(line: 64, column: 10, scope: !218)
!238 = !DILocation(line: 64, column: 16, scope: !218)
!239 = !DILocation(line: 64, column: 29, scope: !218)
!240 = !DILocation(line: 64, column: 3, scope: !218)
!241 = !DILocation(line: 65, column: 2, scope: !219)
!242 = !DILocation(line: 67, column: 24, scope: !207)
!243 = !DILocation(line: 67, column: 30, scope: !207)
!244 = !DILocation(line: 67, column: 36, scope: !207)
!245 = !DILocation(line: 67, column: 9, scope: !207)
!246 = !DILocation(line: 67, column: 2, scope: !207)
!247 = !DILocation(line: 68, column: 1, scope: !207)
!248 = !DISubprogram(name: "get_random_bytes", scope: !249, file: !249, line: 39, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!250 = !DISubroutineType(types: !251)
!251 = !{null, !5, !22}
!252 = distinct !DISubprogram(name: "__seed", scope: !13, file: !13, line: 30, type: !253, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!44, !44, !44}
!255 = !{!256, !257}
!256 = !DILocalVariable(name: "x", arg: 1, scope: !252, file: !13, line: 30, type: !44)
!257 = !DILocalVariable(name: "m", arg: 2, scope: !252, file: !13, line: 30, type: !44)
!258 = !DILocation(line: 30, column: 30, scope: !252)
!259 = !DILocation(line: 30, column: 37, scope: !252)
!260 = !DILocation(line: 32, column: 10, scope: !252)
!261 = !DILocation(line: 32, column: 14, scope: !252)
!262 = !DILocation(line: 32, column: 12, scope: !252)
!263 = !DILocation(line: 32, column: 9, scope: !252)
!264 = !DILocation(line: 32, column: 19, scope: !252)
!265 = !DILocation(line: 32, column: 23, scope: !252)
!266 = !DILocation(line: 32, column: 21, scope: !252)
!267 = !DILocation(line: 32, column: 27, scope: !252)
!268 = !DILocation(line: 32, column: 2, scope: !252)
!269 = distinct !DISubprogram(name: "prandom_warmup", scope: !3, file: !3, line: 95, type: !147, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!270 = !{!271}
!271 = !DILocalVariable(name: "state", arg: 1, scope: !269, file: !3, line: 95, type: !11)
!272 = !DILocation(line: 95, column: 46, scope: !269)
!273 = !DILocation(line: 98, column: 20, scope: !269)
!274 = !DILocation(line: 98, column: 2, scope: !269)
!275 = !DILocation(line: 99, column: 20, scope: !269)
!276 = !DILocation(line: 99, column: 2, scope: !269)
!277 = !DILocation(line: 100, column: 20, scope: !269)
!278 = !DILocation(line: 100, column: 2, scope: !269)
!279 = !DILocation(line: 101, column: 20, scope: !269)
!280 = !DILocation(line: 101, column: 2, scope: !269)
!281 = !DILocation(line: 102, column: 20, scope: !269)
!282 = !DILocation(line: 102, column: 2, scope: !269)
!283 = !DILocation(line: 103, column: 20, scope: !269)
!284 = !DILocation(line: 103, column: 2, scope: !269)
!285 = !DILocation(line: 104, column: 20, scope: !269)
!286 = !DILocation(line: 104, column: 2, scope: !269)
!287 = !DILocation(line: 105, column: 20, scope: !269)
!288 = !DILocation(line: 105, column: 2, scope: !269)
!289 = !DILocation(line: 106, column: 20, scope: !269)
!290 = !DILocation(line: 106, column: 2, scope: !269)
!291 = !DILocation(line: 107, column: 20, scope: !269)
!292 = !DILocation(line: 107, column: 2, scope: !269)
!293 = !DILocation(line: 108, column: 1, scope: !269)
!294 = distinct !DISubprogram(name: "variable__ffs", scope: !295, file: !295, line: 250, type: !296, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!295 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!296 = !DISubroutineType(types: !297)
!297 = !{!27, !27}
!298 = !{!299}
!299 = !DILocalVariable(name: "word", arg: 1, scope: !294, file: !295, line: 250, type: !27)
!300 = !DILocation(line: 250, column: 66, scope: !294)
!301 = !DILocation(line: 254, column: 11, scope: !294)
!302 = !DILocation(line: 252, column: 2, scope: !294)
!303 = !{i64 570924}
!304 = !DILocation(line: 255, column: 9, scope: !294)
!305 = !DILocation(line: 255, column: 2, scope: !294)
!306 = !DISubprogram(name: "_find_next_bit", scope: !208, file: !208, line: 11, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
