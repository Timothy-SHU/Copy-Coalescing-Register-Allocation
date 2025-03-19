; ModuleID = 'drivers/gpu/drm/i915/i915_memcpy.c'
source_filename = "drivers/gpu/drm/i915/i915_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.0, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.1, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64, [88 x i8] }

@has_movntdqa = internal global %struct.static_key_false zeroinitializer, align 8, !dbg !0
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @i915_memcpy_from_wc(ptr noundef %dst, ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !59 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !68, metadata !DIExpression()), !dbg !74
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !69, metadata !DIExpression()), !dbg !75
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !70, metadata !DIExpression()), !dbg !76
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !77
  %1 = ptrtoint ptr %0 to i64, !dbg !77
  %2 = load ptr, ptr %src.addr, align 8, !dbg !77
  %3 = ptrtoint ptr %2 to i64, !dbg !77
  %or = or i64 %1, %3, !dbg !77
  %4 = load i64, ptr %len.addr, align 8, !dbg !77
  %or1 = or i64 %or, %4, !dbg !77
  %and = and i64 %or1, 15, !dbg !77
  %tobool = icmp ne i64 %and, 0, !dbg !77
  %lnot = xor i1 %tobool, true, !dbg !77
  %lnot2 = xor i1 %lnot, true, !dbg !77
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !77
  %conv = sext i32 %lnot.ext to i64, !dbg !77
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !77
  %tobool3 = icmp ne i64 %expval, 0, !dbg !77
  br i1 %tobool3, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !80
  br label %return, !dbg !80

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #10, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !71, metadata !DIExpression()), !dbg !81
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @has_movntdqa, i1 noundef zeroext true) #11, !dbg !82
  %lnot4 = xor i1 %call, true, !dbg !82
  %frombool = zext i1 %lnot4 to i8, !dbg !82
  store i8 %frombool, ptr %branch, align 1, !dbg !82
  %5 = load i8, ptr %branch, align 1, !dbg !81, !range !85, !noundef !86
  %tobool6 = trunc i8 %5 to i1, !dbg !81
  %lnot7 = xor i1 %tobool6, true, !dbg !81
  %lnot9 = xor i1 %lnot7, true, !dbg !81
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !81
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !81
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 1), !dbg !81
  store i64 %expval12, ptr %tmp, align 8, !dbg !87
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #10, !dbg !88
  %6 = load i64, ptr %tmp, align 8, !dbg !81
  %tobool13 = icmp ne i64 %6, 0, !dbg !88
  br i1 %tobool13, label %if.then14, label %if.end25, !dbg !89

if.then14:                                        ; preds = %if.end
  %7 = load i64, ptr %len.addr, align 8, !dbg !90
  %tobool15 = icmp ne i64 %7, 0, !dbg !90
  %lnot16 = xor i1 %tobool15, true, !dbg !90
  %lnot18 = xor i1 %lnot16, true, !dbg !90
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !90
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !90
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1), !dbg !90
  %tobool22 = icmp ne i64 %expval21, 0, !dbg !90
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !93

if.then23:                                        ; preds = %if.then14
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !94
  %9 = load ptr, ptr %src.addr, align 8, !dbg !95
  %10 = load i64, ptr %len.addr, align 8, !dbg !96
  %shr = lshr i64 %10, 4, !dbg !97
  call void @__memcpy_ntdqa(ptr noundef %8, ptr noundef %9, i64 noundef %shr) #11, !dbg !98
  br label %if.end24, !dbg !98

if.end24:                                         ; preds = %if.then23, %if.then14
  store i1 true, ptr %retval, align 1, !dbg !99
  br label %return, !dbg !99

if.end25:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !100
  br label %return, !dbg !100

return:                                           ; preds = %if.end25, %if.end24, %if.then
  %11 = load i1, ptr %retval, align 1, !dbg !101
  ret i1 %11, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !102 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !110, metadata !DIExpression()), !dbg !113
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !111, metadata !DIExpression()), !dbg !114
  %0 = load ptr, ptr %key.addr, align 8, !dbg !115
  %1 = load i8, ptr %branch.addr, align 1, !dbg !116, !range !85, !noundef !86
  %tobool = trunc i8 %1 to i1, !dbg !116
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #10
          to label %asm.fallthrough [label %l_yes], !dbg !117, !srcloc !118

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !119
  br label %return, !dbg !119

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !112), !dbg !120
  store i1 true, ptr %retval, align 1, !dbg !121
  br label %return, !dbg !121

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !122
  ret i1 %2, !dbg !122
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__memcpy_ntdqa(ptr noundef %dst, ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !123 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !127, metadata !DIExpression()), !dbg !130
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !128, metadata !DIExpression()), !dbg !131
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !129, metadata !DIExpression()), !dbg !132
  call void @kernel_fpu_begin() #11, !dbg !133
  br label %while.cond, !dbg !134

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !135
  %cmp = icmp uge i64 %0, 4, !dbg !136
  br i1 %cmp, label %while.body, label %while.end, !dbg !134

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !137
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !139
  call void asm sideeffect "movntdqa   ($0), %xmm0\0Amovntdqa 16($0), %xmm1\0Amovntdqa 32($0), %xmm2\0Amovntdqa 48($0), %xmm3\0Amovaps %xmm0,   ($1)\0Amovaps %xmm1, 16($1)\0Amovaps %xmm2, 32($1)\0Amovaps %xmm3, 48($1)\0A", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %1, ptr %2) #10, !dbg !140, !srcloc !141
  %3 = load ptr, ptr %src.addr, align 8, !dbg !142
  %add.ptr = getelementptr i8, ptr %3, i64 64, !dbg !142
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !142
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !143
  %add.ptr1 = getelementptr i8, ptr %4, i64 64, !dbg !143
  store ptr %add.ptr1, ptr %dst.addr, align 8, !dbg !143
  %5 = load i64, ptr %len.addr, align 8, !dbg !144
  %sub = sub i64 %5, 4, !dbg !144
  store i64 %sub, ptr %len.addr, align 8, !dbg !144
  br label %while.cond, !dbg !134, !llvm.loop !145

while.end:                                        ; preds = %while.cond
  br label %while.cond2, !dbg !149

while.cond2:                                      ; preds = %while.body3, %while.end
  %6 = load i64, ptr %len.addr, align 8, !dbg !150
  %dec = add i64 %6, -1, !dbg !150
  store i64 %dec, ptr %len.addr, align 8, !dbg !150
  %tobool = icmp ne i64 %6, 0, !dbg !149
  br i1 %tobool, label %while.body3, label %while.end6, !dbg !149

while.body3:                                      ; preds = %while.cond2
  %7 = load ptr, ptr %src.addr, align 8, !dbg !151
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !153
  call void asm sideeffect "movntdqa ($0), %xmm0\0Amovaps %xmm0, ($1)\0A", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %7, ptr %8) #10, !dbg !154, !srcloc !155
  %9 = load ptr, ptr %src.addr, align 8, !dbg !156
  %add.ptr4 = getelementptr i8, ptr %9, i64 16, !dbg !156
  store ptr %add.ptr4, ptr %src.addr, align 8, !dbg !156
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !157
  %add.ptr5 = getelementptr i8, ptr %10, i64 16, !dbg !157
  store ptr %add.ptr5, ptr %dst.addr, align 8, !dbg !157
  br label %while.cond2, !dbg !149, !llvm.loop !158

while.end6:                                       ; preds = %while.cond2
  call void @kernel_fpu_end() #11, !dbg !160
  ret void, !dbg !161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_unaligned_memcpy_from_wc(ptr noundef %dst, ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !162 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %addr = alloca i64, align 8
  %x = alloca i64, align 8
  %__UNIQUE_ID___x43 = alloca i64, align 8
  %__UNIQUE_ID___y44 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !164, metadata !DIExpression()), !dbg !174
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !165, metadata !DIExpression()), !dbg !175
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !166, metadata !DIExpression()), !dbg !176
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #10, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !167, metadata !DIExpression()), !dbg !178
  %0 = load ptr, ptr %src.addr, align 8, !dbg !179
  %1 = ptrtoint ptr %0 to i64, !dbg !180
  store i64 %1, ptr %addr, align 8, !dbg !181
  %2 = load i64, ptr %addr, align 8, !dbg !182
  %and = and i64 %2, 15, !dbg !182
  %cmp = icmp eq i64 %and, 0, !dbg !182
  br i1 %cmp, label %if.end, label %if.then, !dbg !183

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #10, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %x, metadata !168, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x43) #10, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x43, metadata !171, metadata !DIExpression()), !dbg !186
  %3 = load i64, ptr %addr, align 8, !dbg !186
  %add = add i64 %3, 15, !dbg !186
  %and1 = and i64 %add, -16, !dbg !186
  %4 = load i64, ptr %addr, align 8, !dbg !186
  %sub = sub i64 %and1, %4, !dbg !186
  store i64 %sub, ptr %__UNIQUE_ID___x43, align 8, !dbg !186
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y44) #10, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y44, metadata !173, metadata !DIExpression()), !dbg !186
  %5 = load i64, ptr %len.addr, align 8, !dbg !186
  store i64 %5, ptr %__UNIQUE_ID___y44, align 8, !dbg !186
  %6 = load i64, ptr %__UNIQUE_ID___x43, align 8, !dbg !186
  %7 = load i64, ptr %__UNIQUE_ID___y44, align 8, !dbg !186
  %cmp2 = icmp ult i64 %6, %7, !dbg !186
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !186

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %__UNIQUE_ID___x43, align 8, !dbg !186
  br label %cond.end, !dbg !186

cond.false:                                       ; preds = %if.then
  %9 = load i64, ptr %__UNIQUE_ID___y44, align 8, !dbg !186
  br label %cond.end, !dbg !186

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !186
  store i64 %cond, ptr %tmp, align 8, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y44) #10, !dbg !187
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x43) #10, !dbg !187
  %10 = load i64, ptr %tmp, align 8, !dbg !186
  store i64 %10, ptr %x, align 8, !dbg !185
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !188
  %12 = load ptr, ptr %src.addr, align 8, !dbg !189
  %13 = load i64, ptr %x, align 8, !dbg !190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %13, i1 false), !dbg !191
  %14 = load i64, ptr %x, align 8, !dbg !192
  %15 = load i64, ptr %len.addr, align 8, !dbg !193
  %sub3 = sub i64 %15, %14, !dbg !193
  store i64 %sub3, ptr %len.addr, align 8, !dbg !193
  %16 = load i64, ptr %x, align 8, !dbg !194
  %17 = load ptr, ptr %dst.addr, align 8, !dbg !195
  %add.ptr = getelementptr i8, ptr %17, i64 %16, !dbg !195
  store ptr %add.ptr, ptr %dst.addr, align 8, !dbg !195
  %18 = load i64, ptr %x, align 8, !dbg !196
  %19 = load ptr, ptr %src.addr, align 8, !dbg !197
  %add.ptr4 = getelementptr i8, ptr %19, i64 %18, !dbg !197
  store ptr %add.ptr4, ptr %src.addr, align 8, !dbg !197
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #10, !dbg !198
  br label %if.end, !dbg !199

if.end:                                           ; preds = %cond.end, %entry
  %20 = load i64, ptr %len.addr, align 8, !dbg !200
  %tobool = icmp ne i64 %20, 0, !dbg !200
  %lnot = xor i1 %tobool, true, !dbg !200
  %lnot5 = xor i1 %lnot, true, !dbg !200
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !200
  %conv = sext i32 %lnot.ext to i64, !dbg !200
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !200
  %tobool6 = icmp ne i64 %expval, 0, !dbg !200
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !202

if.then7:                                         ; preds = %if.end
  %21 = load ptr, ptr %dst.addr, align 8, !dbg !203
  %22 = load ptr, ptr %src.addr, align 8, !dbg !204
  %23 = load i64, ptr %len.addr, align 8, !dbg !205
  %add8 = add i64 %23, 16, !dbg !205
  %sub9 = sub i64 %add8, 1, !dbg !205
  %div = udiv i64 %sub9, 16, !dbg !205
  call void @__memcpy_ntdqu(ptr noundef %21, ptr noundef %22, i64 noundef %div) #11, !dbg !206
  br label %if.end10, !dbg !206

if.end10:                                         ; preds = %if.then7, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #10, !dbg !207
  ret void, !dbg !207
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__memcpy_ntdqu(ptr noundef %dst, ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !208 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !210, metadata !DIExpression()), !dbg !213
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !211, metadata !DIExpression()), !dbg !214
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !212, metadata !DIExpression()), !dbg !215
  call void @kernel_fpu_begin() #11, !dbg !216
  br label %while.cond, !dbg !217

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !218
  %cmp = icmp uge i64 %0, 4, !dbg !219
  br i1 %cmp, label %while.body, label %while.end, !dbg !217

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !220
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !222
  call void asm sideeffect "movntdqa   ($0), %xmm0\0Amovntdqa 16($0), %xmm1\0Amovntdqa 32($0), %xmm2\0Amovntdqa 48($0), %xmm3\0Amovups %xmm0,   ($1)\0Amovups %xmm1, 16($1)\0Amovups %xmm2, 32($1)\0Amovups %xmm3, 48($1)\0A", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %1, ptr %2) #10, !dbg !223, !srcloc !224
  %3 = load ptr, ptr %src.addr, align 8, !dbg !225
  %add.ptr = getelementptr i8, ptr %3, i64 64, !dbg !225
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !225
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !226
  %add.ptr1 = getelementptr i8, ptr %4, i64 64, !dbg !226
  store ptr %add.ptr1, ptr %dst.addr, align 8, !dbg !226
  %5 = load i64, ptr %len.addr, align 8, !dbg !227
  %sub = sub i64 %5, 4, !dbg !227
  store i64 %sub, ptr %len.addr, align 8, !dbg !227
  br label %while.cond, !dbg !217, !llvm.loop !228

while.end:                                        ; preds = %while.cond
  br label %while.cond2, !dbg !230

while.cond2:                                      ; preds = %while.body3, %while.end
  %6 = load i64, ptr %len.addr, align 8, !dbg !231
  %dec = add i64 %6, -1, !dbg !231
  store i64 %dec, ptr %len.addr, align 8, !dbg !231
  %tobool = icmp ne i64 %6, 0, !dbg !230
  br i1 %tobool, label %while.body3, label %while.end6, !dbg !230

while.body3:                                      ; preds = %while.cond2
  %7 = load ptr, ptr %src.addr, align 8, !dbg !232
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !234
  call void asm sideeffect "movntdqa ($0), %xmm0\0Amovups %xmm0, ($1)\0A", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %7, ptr %8) #10, !dbg !235, !srcloc !236
  %9 = load ptr, ptr %src.addr, align 8, !dbg !237
  %add.ptr4 = getelementptr i8, ptr %9, i64 16, !dbg !237
  store ptr %add.ptr4, ptr %src.addr, align 8, !dbg !237
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !238
  %add.ptr5 = getelementptr i8, ptr %10, i64 16, !dbg !238
  store ptr %add.ptr5, ptr %dst.addr, align 8, !dbg !238
  br label %while.cond2, !dbg !230, !llvm.loop !239

while.end6:                                       ; preds = %while.cond2
  call void @kernel_fpu_end() #11, !dbg !241
  ret void, !dbg !242
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_memcpy_init_early(ptr noundef %dev_priv) #0 align 16 !dbg !243 {
entry:
  %dev_priv.addr = alloca ptr, align 8
  store ptr %dev_priv, ptr %dev_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_priv.addr, metadata !250, metadata !DIExpression()), !dbg !251
  br i1 false, label %cond.true, label %cond.false2, !dbg !252

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !254

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %land.lhs.true, label %if.end, !dbg !254

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 147, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !254
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !254

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 147) #11, !dbg !254
  br i1 %call3, label %land.lhs.true, label %if.end, !dbg !252

land.lhs.true:                                    ; preds = %cond.false2, %cond.false, %cond.true1
  br i1 false, label %cond.true4, label %cond.false5, !dbg !255

cond.true4:                                       ; preds = %land.lhs.true
  br i1 true, label %if.end, label %if.then, !dbg !256

cond.false5:                                      ; preds = %land.lhs.true
  %call6 = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !256
  br i1 %call6, label %if.end, label %if.then, !dbg !255

if.then:                                          ; preds = %cond.false5, %cond.true4
  call void @static_key_enable(ptr noundef @has_movntdqa) #11, !dbg !257
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then, %cond.false5, %cond.true4, %cond.false2, %cond.false, %cond.true1
  ret void, !dbg !258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !259 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !267, metadata !DIExpression()), !dbg !269
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !268, metadata !DIExpression()), !dbg !270
  %0 = load i64, ptr %nr.addr, align 8, !dbg !271
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !272
  br i1 %1, label %cond.true, label %cond.false, !dbg !272

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !273
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !274
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !275
  %conv = zext i1 %call to i32, !dbg !275
  br label %cond.end, !dbg !272

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !276
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !277
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !278
  %conv2 = zext i1 %call1 to i32, !dbg !278
  br label %cond.end, !dbg !272

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !272
  %tobool = icmp ne i32 %cond, 0, !dbg !272
  ret i1 %tobool, !dbg !279
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !280 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !288, metadata !DIExpression()), !dbg !291
  %0 = load i16, ptr %bit.addr, align 2, !dbg !292
  %1 = load i16, ptr %bit.addr, align 2, !dbg !293
  %conv = zext i16 %1 to i32, !dbg !293
  %and = and i32 %conv, 7, !dbg !294
  %shl = shl i32 1, %and, !dbg !295
  %2 = load i16, ptr %bit.addr, align 2, !dbg !296
  %conv1 = zext i16 %2 to i32, !dbg !296
  %shr = ashr i32 %conv1, 3, !dbg !297
  %idxprom = sext i32 %shr to i64, !dbg !298
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !298
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #10
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !299, !srcloc !300

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !299

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !289), !dbg !301
  store i1 true, ptr %retval, align 1, !dbg !302
  br label %return, !dbg !302

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !290), !dbg !303
  store i1 false, ptr %retval, align 1, !dbg !304
  br label %return, !dbg !304

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !305
  ret i1 %3, !dbg !305
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !306 dso_local void @static_key_enable(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernel_fpu_begin() #7 align 16 !dbg !309 {
entry:
  call void @kernel_fpu_begin_mask(i32 noundef 2) #11, !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !315 dso_local void @kernel_fpu_end() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !316 dso_local void @kernel_fpu_begin_mask(i32 noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !319 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !323, metadata !DIExpression()), !dbg !325
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !324, metadata !DIExpression()), !dbg !326
  %0 = load i64, ptr %nr.addr, align 8, !dbg !327
  %and = and i64 %0, 63, !dbg !328
  %shl = shl i64 1, %and, !dbg !329
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !330
  %2 = load i64, ptr %nr.addr, align 8, !dbg !331
  %shr = ashr i64 %2, 6, !dbg !332
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !330
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !330
  %and1 = and i64 %shl, %3, !dbg !333
  %cmp = icmp ne i64 %and1, 0, !dbg !334
  ret i1 %cmp, !dbg !335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !336 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !338, metadata !DIExpression()), !dbg !341
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !339, metadata !DIExpression()), !dbg !342
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !340, metadata !DIExpression()), !dbg !344
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !345
  %1 = load i64, ptr %nr.addr, align 8, !dbg !346
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !347, !srcloc !348
  %3 = icmp ult i8 %2, 2, !dbg !347
  call void @llvm.assume(i1 %3), !dbg !347
  store i8 %2, ptr %oldbit, align 1, !dbg !347
  %4 = load i8, ptr %oldbit, align 1, !dbg !349, !range !85, !noundef !86
  %tobool = trunc i8 %4 to i1, !dbg !349
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !350
  ret i1 %tobool, !dbg !351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "has_movntdqa", scope: !2, file: !3, line: 36, type: !19, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_memcpy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_memcpy\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_memcpy.ll drivers/gpu/drm/i915/i915_memcpy.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/i915/i915_memcpy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97e456f133451ccb192dfe1b7c6f1f75")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !15}
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!0}
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !20, line: 363, size: 128, elements: !21)
!20 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !19, file: !20, line: 364, baseType: !23, size: 128)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !20, line: 85, size: 128, elements: !24)
!24 = !{!25, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !23, file: !20, line: 86, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !27, line: 174, baseType: !28)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 172, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !28, file: !27, line: 173, baseType: !13, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, scope: !23, file: !20, line: 101, baseType: !32, size: 64, offset: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !20, line: 101, size: 64, elements: !33)
!33 = !{!34, !35, !47}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !20, line: 102, baseType: !12, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !32, file: !20, line: 103, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !20, line: 117, size: 128, elements: !38)
!38 = !{!39, !44, !45}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !37, file: !20, line: 118, baseType: !40, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !41, line: 20, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !43, line: 26, baseType: !13)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!44 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !37, file: !20, line: 119, baseType: !40, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !37, file: !20, line: 120, baseType: !46, size: 64, offset: 64)
!46 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !20, line: 104, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !20, line: 104, flags: DIFlagFwdDecl)
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 8, !"cf-protection-branch", i32 1}
!54 = !{i32 4, !"function_return_thunk_extern", i32 1}
!55 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!56 = !{i32 1, !"Code Model", i32 2}
!57 = !{i32 1, !"override-stack-alignment", i32 8}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = distinct !DISubprogram(name: "i915_memcpy_from_wc", scope: !3, file: !3, line: 113, type: !60, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !67)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !64, !65, !12}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !63)
!63 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!67 = !{!68, !69, !70, !71}
!68 = !DILocalVariable(name: "dst", arg: 1, scope: !59, file: !3, line: 113, type: !64)
!69 = !DILocalVariable(name: "src", arg: 2, scope: !59, file: !3, line: 113, type: !65)
!70 = !DILocalVariable(name: "len", arg: 3, scope: !59, file: !3, line: 113, type: !12)
!71 = !DILocalVariable(name: "branch", scope: !72, file: !3, line: 118, type: !62)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 118, column: 6)
!73 = distinct !DILexicalBlock(scope: !59, file: !3, line: 118, column: 6)
!74 = !DILocation(line: 113, column: 32, scope: !59)
!75 = !DILocation(line: 113, column: 49, scope: !59)
!76 = !DILocation(line: 113, column: 68, scope: !59)
!77 = !DILocation(line: 115, column: 6, scope: !78)
!78 = distinct !DILexicalBlock(scope: !59, file: !3, line: 115, column: 6)
!79 = !DILocation(line: 115, column: 6, scope: !59)
!80 = !DILocation(line: 116, column: 3, scope: !78)
!81 = !DILocation(line: 118, column: 6, scope: !72)
!82 = !DILocation(line: 118, column: 6, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 118, column: 6)
!84 = distinct !DILexicalBlock(scope: !72, file: !3, line: 118, column: 6)
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !DILocation(line: 118, column: 6, scope: !84)
!88 = !DILocation(line: 118, column: 6, scope: !73)
!89 = !DILocation(line: 118, column: 6, scope: !59)
!90 = !DILocation(line: 119, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 119, column: 7)
!92 = distinct !DILexicalBlock(scope: !73, file: !3, line: 118, column: 43)
!93 = !DILocation(line: 119, column: 7, scope: !92)
!94 = !DILocation(line: 120, column: 19, scope: !91)
!95 = !DILocation(line: 120, column: 24, scope: !91)
!96 = !DILocation(line: 120, column: 29, scope: !91)
!97 = !DILocation(line: 120, column: 33, scope: !91)
!98 = !DILocation(line: 120, column: 4, scope: !91)
!99 = !DILocation(line: 121, column: 3, scope: !92)
!100 = !DILocation(line: 124, column: 2, scope: !59)
!101 = !DILocation(line: 125, column: 1, scope: !59)
!102 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !103, file: !103, line: 53, type: !104, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!103 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!104 = !DISubroutineType(types: !105)
!105 = !{!62, !106, !108}
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!109 = !{!110, !111, !112}
!110 = !DILocalVariable(name: "key", arg: 1, scope: !102, file: !103, line: 53, type: !106)
!111 = !DILocalVariable(name: "branch", arg: 2, scope: !102, file: !103, line: 53, type: !108)
!112 = !DILabel(scope: !102, name: "l_yes", file: !103, line: 61)
!113 = !DILocation(line: 53, column: 79, scope: !102)
!114 = !DILocation(line: 53, column: 95, scope: !102)
!115 = !DILocation(line: 58, column: 13, scope: !102)
!116 = !DILocation(line: 58, column: 24, scope: !102)
!117 = !DILocation(line: 55, column: 2, scope: !102)
!118 = !{i64 1036480, i64 1036503, i64 2148521250, i64 2148521271, i64 2148521297, i64 2148521330, i64 2148521364, i64 2148521388}
!119 = !DILocation(line: 60, column: 2, scope: !102)
!120 = !DILocation(line: 61, column: 1, scope: !102)
!121 = !DILocation(line: 62, column: 2, scope: !102)
!122 = !DILocation(line: 63, column: 1, scope: !102)
!123 = distinct !DISubprogram(name: "__memcpy_ntdqa", scope: !3, file: !3, line: 38, type: !124, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !64, !65, !12}
!126 = !{!127, !128, !129}
!127 = !DILocalVariable(name: "dst", arg: 1, scope: !123, file: !3, line: 38, type: !64)
!128 = !DILocalVariable(name: "src", arg: 2, scope: !123, file: !3, line: 38, type: !65)
!129 = !DILocalVariable(name: "len", arg: 3, scope: !123, file: !3, line: 38, type: !12)
!130 = !DILocation(line: 38, column: 34, scope: !123)
!131 = !DILocation(line: 38, column: 51, scope: !123)
!132 = !DILocation(line: 38, column: 70, scope: !123)
!133 = !DILocation(line: 40, column: 2, scope: !123)
!134 = !DILocation(line: 42, column: 2, scope: !123)
!135 = !DILocation(line: 42, column: 9, scope: !123)
!136 = !DILocation(line: 42, column: 13, scope: !123)
!137 = !DILocation(line: 51, column: 15, scope: !138)
!138 = distinct !DILexicalBlock(scope: !123, file: !3, line: 42, column: 19)
!139 = !DILocation(line: 51, column: 26, scope: !138)
!140 = !DILocation(line: 43, column: 3, scope: !138)
!141 = !{i64 1551, i64 1586, i64 1620, i64 1654, i64 1688, i64 1720, i64 1752, i64 1784}
!142 = !DILocation(line: 52, column: 7, scope: !138)
!143 = !DILocation(line: 53, column: 7, scope: !138)
!144 = !DILocation(line: 54, column: 7, scope: !138)
!145 = distinct !{!145, !134, !146, !147, !148}
!146 = !DILocation(line: 55, column: 2, scope: !123)
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{!"llvm.loop.unroll.disable"}
!149 = !DILocation(line: 56, column: 2, scope: !123)
!150 = !DILocation(line: 56, column: 12, scope: !123)
!151 = !DILocation(line: 59, column: 15, scope: !152)
!152 = distinct !DILexicalBlock(scope: !123, file: !3, line: 56, column: 16)
!153 = !DILocation(line: 59, column: 26, scope: !152)
!154 = !DILocation(line: 57, column: 3, scope: !152)
!155 = !{i64 1916, i64 1949}
!156 = !DILocation(line: 60, column: 7, scope: !152)
!157 = !DILocation(line: 61, column: 7, scope: !152)
!158 = distinct !{!158, !149, !159, !147, !148}
!159 = !DILocation(line: 62, column: 2, scope: !123)
!160 = !DILocation(line: 64, column: 2, scope: !123)
!161 = !DILocation(line: 65, column: 1, scope: !123)
!162 = distinct !DISubprogram(name: "i915_unaligned_memcpy_from_wc", scope: !3, file: !3, line: 138, type: !124, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!163 = !{!164, !165, !166, !167, !168, !171, !173}
!164 = !DILocalVariable(name: "dst", arg: 1, scope: !162, file: !3, line: 138, type: !64)
!165 = !DILocalVariable(name: "src", arg: 2, scope: !162, file: !3, line: 138, type: !65)
!166 = !DILocalVariable(name: "len", arg: 3, scope: !162, file: !3, line: 138, type: !12)
!167 = !DILocalVariable(name: "addr", scope: !162, file: !3, line: 140, type: !12)
!168 = !DILocalVariable(name: "x", scope: !169, file: !3, line: 146, type: !12)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 145, column: 29)
!170 = distinct !DILexicalBlock(scope: !162, file: !3, line: 145, column: 6)
!171 = !DILocalVariable(name: "__UNIQUE_ID___x43", scope: !172, file: !3, line: 146, type: !12)
!172 = distinct !DILexicalBlock(scope: !169, file: !3, line: 146, column: 21)
!173 = !DILocalVariable(name: "__UNIQUE_ID___y44", scope: !172, file: !3, line: 146, type: !12)
!174 = !DILocation(line: 138, column: 42, scope: !162)
!175 = !DILocation(line: 138, column: 59, scope: !162)
!176 = !DILocation(line: 138, column: 78, scope: !162)
!177 = !DILocation(line: 140, column: 2, scope: !162)
!178 = !DILocation(line: 140, column: 16, scope: !162)
!179 = !DILocation(line: 144, column: 24, scope: !162)
!180 = !DILocation(line: 144, column: 9, scope: !162)
!181 = !DILocation(line: 144, column: 7, scope: !162)
!182 = !DILocation(line: 145, column: 7, scope: !170)
!183 = !DILocation(line: 145, column: 6, scope: !162)
!184 = !DILocation(line: 146, column: 3, scope: !169)
!185 = !DILocation(line: 146, column: 17, scope: !169)
!186 = !DILocation(line: 146, column: 21, scope: !172)
!187 = !DILocation(line: 146, column: 21, scope: !169)
!188 = !DILocation(line: 148, column: 10, scope: !169)
!189 = !DILocation(line: 148, column: 15, scope: !169)
!190 = !DILocation(line: 148, column: 20, scope: !169)
!191 = !DILocation(line: 148, column: 3, scope: !169)
!192 = !DILocation(line: 150, column: 10, scope: !169)
!193 = !DILocation(line: 150, column: 7, scope: !169)
!194 = !DILocation(line: 151, column: 10, scope: !169)
!195 = !DILocation(line: 151, column: 7, scope: !169)
!196 = !DILocation(line: 152, column: 10, scope: !169)
!197 = !DILocation(line: 152, column: 7, scope: !169)
!198 = !DILocation(line: 153, column: 2, scope: !170)
!199 = !DILocation(line: 153, column: 2, scope: !169)
!200 = !DILocation(line: 155, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !162, file: !3, line: 155, column: 6)
!202 = !DILocation(line: 155, column: 6, scope: !162)
!203 = !DILocation(line: 156, column: 18, scope: !201)
!204 = !DILocation(line: 156, column: 23, scope: !201)
!205 = !DILocation(line: 156, column: 28, scope: !201)
!206 = !DILocation(line: 156, column: 3, scope: !201)
!207 = !DILocation(line: 157, column: 1, scope: !162)
!208 = distinct !DISubprogram(name: "__memcpy_ntdqu", scope: !3, file: !3, line: 67, type: !124, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!209 = !{!210, !211, !212}
!210 = !DILocalVariable(name: "dst", arg: 1, scope: !208, file: !3, line: 67, type: !64)
!211 = !DILocalVariable(name: "src", arg: 2, scope: !208, file: !3, line: 67, type: !65)
!212 = !DILocalVariable(name: "len", arg: 3, scope: !208, file: !3, line: 67, type: !12)
!213 = !DILocation(line: 67, column: 34, scope: !208)
!214 = !DILocation(line: 67, column: 51, scope: !208)
!215 = !DILocation(line: 67, column: 70, scope: !208)
!216 = !DILocation(line: 69, column: 2, scope: !208)
!217 = !DILocation(line: 71, column: 2, scope: !208)
!218 = !DILocation(line: 71, column: 9, scope: !208)
!219 = !DILocation(line: 71, column: 13, scope: !208)
!220 = !DILocation(line: 80, column: 15, scope: !221)
!221 = distinct !DILexicalBlock(scope: !208, file: !3, line: 71, column: 19)
!222 = !DILocation(line: 80, column: 26, scope: !221)
!223 = !DILocation(line: 72, column: 3, scope: !221)
!224 = !{i64 2191, i64 2226, i64 2260, i64 2294, i64 2328, i64 2360, i64 2392, i64 2424}
!225 = !DILocation(line: 81, column: 7, scope: !221)
!226 = !DILocation(line: 82, column: 7, scope: !221)
!227 = !DILocation(line: 83, column: 7, scope: !221)
!228 = distinct !{!228, !217, !229, !147, !148}
!229 = !DILocation(line: 84, column: 2, scope: !208)
!230 = !DILocation(line: 85, column: 2, scope: !208)
!231 = !DILocation(line: 85, column: 12, scope: !208)
!232 = !DILocation(line: 88, column: 15, scope: !233)
!233 = distinct !DILexicalBlock(scope: !208, file: !3, line: 85, column: 16)
!234 = !DILocation(line: 88, column: 26, scope: !233)
!235 = !DILocation(line: 86, column: 3, scope: !233)
!236 = !{i64 2556, i64 2589}
!237 = !DILocation(line: 89, column: 7, scope: !233)
!238 = !DILocation(line: 90, column: 7, scope: !233)
!239 = distinct !{!239, !230, !240, !147, !148}
!240 = !DILocation(line: 91, column: 2, scope: !208)
!241 = !DILocation(line: 93, column: 2, scope: !208)
!242 = !DILocation(line: 94, column: 1, scope: !208)
!243 = distinct !DISubprogram(name: "i915_memcpy_init_early", scope: !3, file: !3, line: 159, type: !244, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_i915_private", file: !248, line: 11, flags: DIFlagFwdDecl)
!248 = !DIFile(filename: "drivers/gpu/drm/i915/i915_memcpy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64cf8bb6c9237179a9f330e362ef35b2")
!249 = !{!250}
!250 = !DILocalVariable(name: "dev_priv", arg: 1, scope: !243, file: !3, line: 159, type: !246)
!251 = !DILocation(line: 159, column: 54, scope: !243)
!252 = !DILocation(line: 165, column: 41, scope: !253)
!253 = distinct !DILexicalBlock(scope: !243, file: !3, line: 165, column: 6)
!254 = !DILocation(line: 165, column: 6, scope: !253)
!255 = !DILocation(line: 165, column: 6, scope: !243)
!256 = !DILocation(line: 166, column: 7, scope: !253)
!257 = !DILocation(line: 167, column: 3, scope: !253)
!258 = !DILocation(line: 168, column: 1, scope: !243)
!259 = distinct !DISubprogram(name: "arch_test_bit", scope: !260, file: !260, line: 237, type: !261, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!260 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!261 = !DISubroutineType(types: !262)
!262 = !{!62, !12, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!266 = !{!267, !268}
!267 = !DILocalVariable(name: "nr", arg: 1, scope: !259, file: !260, line: 237, type: !12)
!268 = !DILocalVariable(name: "addr", arg: 2, scope: !259, file: !260, line: 237, type: !263)
!269 = !DILocation(line: 237, column: 29, scope: !259)
!270 = !DILocation(line: 237, column: 63, scope: !259)
!271 = !DILocation(line: 239, column: 30, scope: !259)
!272 = !DILocation(line: 239, column: 9, scope: !259)
!273 = !DILocation(line: 239, column: 54, scope: !259)
!274 = !DILocation(line: 239, column: 58, scope: !259)
!275 = !DILocation(line: 239, column: 36, scope: !259)
!276 = !DILocation(line: 240, column: 26, scope: !259)
!277 = !DILocation(line: 240, column: 30, scope: !259)
!278 = !DILocation(line: 240, column: 8, scope: !259)
!279 = !DILocation(line: 239, column: 2, scope: !259)
!280 = distinct !DISubprogram(name: "_static_cpu_has", scope: !281, file: !281, line: 173, type: !282, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!281 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!282 = !DISubroutineType(types: !283)
!283 = !{!62, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !41, line: 19, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !43, line: 24, baseType: !286)
!286 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!287 = !{!288, !289, !290}
!288 = !DILocalVariable(name: "bit", arg: 1, scope: !280, file: !281, line: 173, type: !284)
!289 = !DILabel(scope: !280, name: "t_yes", file: !281, line: 187)
!290 = !DILabel(scope: !280, name: "t_no", file: !281, line: 189)
!291 = !DILocation(line: 173, column: 49, scope: !280)
!292 = !DILocation(line: 183, column: 24, scope: !280)
!293 = !DILocation(line: 184, column: 30, scope: !280)
!294 = !DILocation(line: 184, column: 34, scope: !280)
!295 = !DILocation(line: 184, column: 26, scope: !280)
!296 = !DILocation(line: 185, column: 70, scope: !280)
!297 = !DILocation(line: 185, column: 74, scope: !280)
!298 = !DILocation(line: 185, column: 25, scope: !280)
!299 = !DILocation(line: 175, column: 2, scope: !280)
!300 = !{i64 2149422715, i64 2149422748, i64 2149422754, i64 2149422770, i64 2149422789, i64 2149422820, i64 2149423773, i64 2149422362, i64 2149423779, i64 2149423827, i64 2149423891, i64 2149423955, i64 2149424012, i64 2149424219, i64 2149424267, i64 2149424331, i64 2149424395, i64 2149424452, i64 2149422480, i64 2149422505, i64 2149424662, i64 2149424790, i64 2149424723, i64 2149424804, i64 2149424818, i64 2149424934, i64 2149424879, i64 2149424948, i64 2149422639, i64 886311, i64 886351, i64 886360, i64 886410, i64 886431, i64 886451}
!301 = !DILocation(line: 187, column: 1, scope: !280)
!302 = !DILocation(line: 188, column: 2, scope: !280)
!303 = !DILocation(line: 189, column: 1, scope: !280)
!304 = !DILocation(line: 190, column: 2, scope: !280)
!305 = !DILocation(line: 191, column: 1, scope: !280)
!306 = !DISubprogram(name: "static_key_enable", scope: !20, file: !20, line: 233, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !107}
!309 = distinct !DISubprogram(name: "kernel_fpu_begin", scope: !310, file: !310, line: 35, type: !311, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!310 = !DIFile(filename: "./arch/x86/include/asm/fpu/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "69298eced5ce9b488888ff68abf966e3")
!311 = !DISubroutineType(types: !312)
!312 = !{null}
!313 = !DILocation(line: 42, column: 2, scope: !309)
!314 = !DILocation(line: 50, column: 1, scope: !309)
!315 = !DISubprogram(name: "kernel_fpu_end", scope: !310, file: !310, line: 30, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubprogram(name: "kernel_fpu_begin_mask", scope: !310, file: !310, line: 29, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !7}
!319 = distinct !DISubprogram(name: "constant_test_bit", scope: !260, file: !260, line: 204, type: !320, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!62, !46, !263}
!322 = !{!323, !324}
!323 = !DILocalVariable(name: "nr", arg: 1, scope: !319, file: !260, line: 204, type: !46)
!324 = !DILocalVariable(name: "addr", arg: 2, scope: !319, file: !260, line: 204, type: !263)
!325 = !DILocation(line: 204, column: 52, scope: !319)
!326 = !DILocation(line: 204, column: 86, scope: !319)
!327 = !DILocation(line: 206, column: 19, scope: !319)
!328 = !DILocation(line: 206, column: 22, scope: !319)
!329 = !DILocation(line: 206, column: 15, scope: !319)
!330 = !DILocation(line: 207, column: 4, scope: !319)
!331 = !DILocation(line: 207, column: 9, scope: !319)
!332 = !DILocation(line: 207, column: 12, scope: !319)
!333 = !DILocation(line: 206, column: 44, scope: !319)
!334 = !DILocation(line: 207, column: 37, scope: !319)
!335 = !DILocation(line: 206, column: 2, scope: !319)
!336 = distinct !DISubprogram(name: "variable_test_bit", scope: !260, file: !260, line: 224, type: !320, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!337 = !{!338, !339, !340}
!338 = !DILocalVariable(name: "nr", arg: 1, scope: !336, file: !260, line: 224, type: !46)
!339 = !DILocalVariable(name: "addr", arg: 2, scope: !336, file: !260, line: 224, type: !263)
!340 = !DILocalVariable(name: "oldbit", scope: !336, file: !260, line: 226, type: !62)
!341 = !DILocation(line: 224, column: 52, scope: !336)
!342 = !DILocation(line: 224, column: 86, scope: !336)
!343 = !DILocation(line: 226, column: 2, scope: !336)
!344 = !DILocation(line: 226, column: 7, scope: !336)
!345 = !DILocation(line: 231, column: 33, scope: !336)
!346 = !DILocation(line: 231, column: 46, scope: !336)
!347 = !DILocation(line: 228, column: 2, scope: !336)
!348 = !{i64 2147802674, i64 2147802748}
!349 = !DILocation(line: 233, column: 9, scope: !336)
!350 = !DILocation(line: 234, column: 1, scope: !336)
!351 = !DILocation(line: 233, column: 2, scope: !336)
