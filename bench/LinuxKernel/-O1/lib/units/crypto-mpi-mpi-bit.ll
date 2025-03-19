; ModuleID = 'lib/crypto/mpi/mpi-bit.c'
source_filename = "lib/crypto/mpi/mpi-bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_normalize: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_normalize ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_get_nbits: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_get_nbits ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_test_bit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_test_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_set_highbit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_set_highbit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_clear_bit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_clear_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_rshift: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_rshift ; .previous"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable_mpi_normalize287 = internal global ptr @mpi_normalize, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_mpi_get_nbits288 = internal global ptr @mpi_get_nbits, section ".discard.addressable", align 8, !dbg !10
@__UNIQUE_ID___addressable_mpi_test_bit289 = internal global ptr @mpi_test_bit, section ".discard.addressable", align 8, !dbg !12
@__UNIQUE_ID___addressable_mpi_set_highbit290 = internal global ptr @mpi_set_highbit, section ".discard.addressable", align 8, !dbg !14
@__UNIQUE_ID___addressable_mpi_clear_bit291 = internal global ptr @mpi_clear_bit, section ".discard.addressable", align 8, !dbg !16
@__UNIQUE_ID___addressable_mpi_rshift292 = internal global ptr @mpi_rshift, section ".discard.addressable", align 8, !dbg !18
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_mpi_normalize287, ptr @__UNIQUE_ID___addressable_mpi_get_nbits288, ptr @__UNIQUE_ID___addressable_mpi_test_bit289, ptr @__UNIQUE_ID___addressable_mpi_set_highbit290, ptr @__UNIQUE_ID___addressable_mpi_clear_bit291, ptr @__UNIQUE_ID___addressable_mpi_rshift292], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_normalize(ptr noundef %a) #0 align 16 !dbg !29 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !46, metadata !DIExpression()), !dbg !47
  br label %for.cond, !dbg !48

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %a.addr, align 8, !dbg !49
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !52
  %1 = load i32, ptr %nlimbs, align 4, !dbg !52
  %tobool = icmp ne i32 %1, 0, !dbg !49
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !53

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !dbg !54
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5, !dbg !55
  %3 = load ptr, ptr %d, align 8, !dbg !55
  %4 = load ptr, ptr %a.addr, align 8, !dbg !56
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 1, !dbg !57
  %5 = load i32, ptr %nlimbs1, align 4, !dbg !57
  %sub = sub i32 %5, 1, !dbg !58
  %idxprom = sext i32 %sub to i64, !dbg !54
  %arrayidx = getelementptr i64, ptr %3, i64 %idxprom, !dbg !54
  %6 = load i64, ptr %arrayidx, align 8, !dbg !54
  %tobool2 = icmp ne i64 %6, 0, !dbg !59
  %lnot = xor i1 %tobool2, true, !dbg !59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !60
  br i1 %7, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %a.addr, align 8, !dbg !62
  %nlimbs3 = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 1, !dbg !63
  %9 = load i32, ptr %nlimbs3, align 4, !dbg !64
  %dec = add i32 %9, -1, !dbg !64
  store i32 %dec, ptr %nlimbs3, align 4, !dbg !64
  br label %for.cond, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %land.end
  ret void, !dbg !70
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_get_nbits(ptr noundef %a) #0 align 16 !dbg !71 {
entry:
  %a.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %alimb = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !75, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %n, metadata !76, metadata !DIExpression()), !dbg !82
  %0 = load ptr, ptr %a.addr, align 8, !dbg !83
  call void @mpi_normalize(ptr noundef %0) #7, !dbg !84
  %1 = load ptr, ptr %a.addr, align 8, !dbg !85
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1, !dbg !86
  %2 = load i32, ptr %nlimbs, align 4, !dbg !86
  %tobool = icmp ne i32 %2, 0, !dbg !85
  br i1 %tobool, label %if.then, label %if.else7, !dbg !87

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %alimb) #6, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %alimb, metadata !77, metadata !DIExpression()), !dbg !89
  %3 = load ptr, ptr %a.addr, align 8, !dbg !90
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5, !dbg !91
  %4 = load ptr, ptr %d, align 8, !dbg !91
  %5 = load ptr, ptr %a.addr, align 8, !dbg !92
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1, !dbg !93
  %6 = load i32, ptr %nlimbs1, align 4, !dbg !93
  %sub = sub i32 %6, 1, !dbg !94
  %idxprom = sext i32 %sub to i64, !dbg !90
  %arrayidx = getelementptr i64, ptr %4, i64 %idxprom, !dbg !90
  %7 = load i64, ptr %arrayidx, align 8, !dbg !90
  store i64 %7, ptr %alimb, align 8, !dbg !89
  %8 = load i64, ptr %alimb, align 8, !dbg !95
  %tobool2 = icmp ne i64 %8, 0, !dbg !95
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !97

if.then3:                                         ; preds = %if.then
  %9 = load i64, ptr %alimb, align 8, !dbg !98
  %call = call i32 @count_leading_zeros(i64 noundef %9) #7, !dbg !99
  store i32 %call, ptr %n, align 4, !dbg !100
  br label %if.end, !dbg !101

if.else:                                          ; preds = %if.then
  store i32 64, ptr %n, align 4, !dbg !102
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %10 = load i32, ptr %n, align 4, !dbg !103
  %sub4 = sub i32 64, %10, !dbg !104
  %11 = load ptr, ptr %a.addr, align 8, !dbg !105
  %nlimbs5 = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 1, !dbg !106
  %12 = load i32, ptr %nlimbs5, align 4, !dbg !106
  %sub6 = sub i32 %12, 1, !dbg !107
  %mul = mul i32 %sub6, 64, !dbg !108
  %add = add i32 %sub4, %mul, !dbg !109
  store i32 %add, ptr %n, align 4, !dbg !110
  call void @llvm.lifetime.end.p0(i64 8, ptr %alimb) #6, !dbg !111
  br label %if.end8, !dbg !112

if.else7:                                         ; preds = %entry
  store i32 0, ptr %n, align 4, !dbg !113
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.end
  %13 = load i32, ptr %n, align 4, !dbg !114
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6, !dbg !115
  ret i32 %13, !dbg !116
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @count_leading_zeros(i64 noundef %x) #3 align 16 !dbg !117 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = load i64, ptr %x.addr, align 8, !dbg !124
  %call = call i32 @fls64(i64 noundef %0) #7, !dbg !126
  %sub = sub i32 64, %call, !dbg !127
  ret i32 %sub, !dbg !128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_test_bit(ptr noundef %a, i32 noundef %n) #0 align 16 !dbg !129 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %limbno = alloca i32, align 4
  %bitno = alloca i32, align 4
  %limb = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !133, metadata !DIExpression()), !dbg !138
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !134, metadata !DIExpression()), !dbg !139
  call void @llvm.lifetime.start.p0(i64 4, ptr %limbno) #6, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %limbno, metadata !135, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitno) #6, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %bitno, metadata !136, metadata !DIExpression()), !dbg !142
  call void @llvm.lifetime.start.p0(i64 8, ptr %limb) #6, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %limb, metadata !137, metadata !DIExpression()), !dbg !144
  %0 = load i32, ptr %n.addr, align 4, !dbg !145
  %div = udiv i32 %0, 64, !dbg !146
  store i32 %div, ptr %limbno, align 4, !dbg !147
  %1 = load i32, ptr %n.addr, align 4, !dbg !148
  %rem = urem i32 %1, 64, !dbg !149
  store i32 %rem, ptr %bitno, align 4, !dbg !150
  %2 = load i32, ptr %limbno, align 4, !dbg !151
  %3 = load ptr, ptr %a.addr, align 8, !dbg !153
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !154
  %4 = load i32, ptr %nlimbs, align 4, !dbg !154
  %cmp = icmp uge i32 %2, %4, !dbg !155
  br i1 %cmp, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !157

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !dbg !158
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 5, !dbg !159
  %6 = load ptr, ptr %d, align 8, !dbg !159
  %7 = load i32, ptr %limbno, align 4, !dbg !160
  %idxprom = zext i32 %7 to i64, !dbg !158
  %arrayidx = getelementptr i64, ptr %6, i64 %idxprom, !dbg !158
  %8 = load i64, ptr %arrayidx, align 8, !dbg !158
  store i64 %8, ptr %limb, align 8, !dbg !161
  %9 = load i64, ptr %limb, align 8, !dbg !162
  %10 = load i32, ptr %bitno, align 4, !dbg !163
  %sh_prom = zext i32 %10 to i64, !dbg !164
  %shl = shl i64 1, %sh_prom, !dbg !164
  %and = and i64 %9, %shl, !dbg !165
  %tobool = icmp ne i64 %and, 0, !dbg !166
  %11 = zext i1 %tobool to i64, !dbg !166
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !166
  store i32 %cond, ptr %retval, align 4, !dbg !167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !167

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %limb) #6, !dbg !168
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitno) #6, !dbg !168
  call void @llvm.lifetime.end.p0(i64 4, ptr %limbno) #6, !dbg !168
  %12 = load i32, ptr %retval, align 4, !dbg !168
  ret i32 %12, !dbg !168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_set_bit(ptr noundef %a, i32 noundef %n) #0 align 16 !dbg !169 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %limbno = alloca i32, align 4
  %bitno = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !173, metadata !DIExpression()), !dbg !178
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !174, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %i, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %limbno) #6, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %limbno, metadata !176, metadata !DIExpression()), !dbg !182
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitno) #6, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %bitno, metadata !177, metadata !DIExpression()), !dbg !183
  %0 = load i32, ptr %n.addr, align 4, !dbg !184
  %div = udiv i32 %0, 64, !dbg !185
  store i32 %div, ptr %limbno, align 4, !dbg !186
  %1 = load i32, ptr %n.addr, align 4, !dbg !187
  %rem = urem i32 %1, 64, !dbg !188
  store i32 %rem, ptr %bitno, align 4, !dbg !189
  %2 = load i32, ptr %limbno, align 4, !dbg !190
  %3 = load ptr, ptr %a.addr, align 8, !dbg !192
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !193
  %4 = load i32, ptr %nlimbs, align 4, !dbg !193
  %cmp = icmp uge i32 %2, %4, !dbg !194
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !dbg !196
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1, !dbg !199
  %6 = load i32, ptr %nlimbs1, align 4, !dbg !199
  store i32 %6, ptr %i, align 4, !dbg !200
  br label %for.cond, !dbg !201

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %i, align 4, !dbg !202
  %8 = load ptr, ptr %a.addr, align 8, !dbg !204
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 0, !dbg !205
  %9 = load i32, ptr %alloced, align 8, !dbg !205
  %cmp2 = icmp ult i32 %7, %9, !dbg !206
  br i1 %cmp2, label %for.body, label %for.end, !dbg !207

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %a.addr, align 8, !dbg !208
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5, !dbg !209
  %11 = load ptr, ptr %d, align 8, !dbg !209
  %12 = load i32, ptr %i, align 4, !dbg !210
  %idxprom = zext i32 %12 to i64, !dbg !208
  %arrayidx = getelementptr i64, ptr %11, i64 %idxprom, !dbg !208
  store i64 0, ptr %arrayidx, align 8, !dbg !211
  br label %for.inc, !dbg !208

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !212
  %inc = add i32 %13, 1, !dbg !212
  store i32 %inc, ptr %i, align 4, !dbg !212
  br label %for.cond, !dbg !213, !llvm.loop !214

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %a.addr, align 8, !dbg !216
  %15 = load i32, ptr %limbno, align 4, !dbg !217
  %add = add i32 %15, 1, !dbg !218
  %call = call i32 @mpi_resize(ptr noundef %14, i32 noundef %add) #7, !dbg !219
  %16 = load i32, ptr %limbno, align 4, !dbg !220
  %add3 = add i32 %16, 1, !dbg !221
  %17 = load ptr, ptr %a.addr, align 8, !dbg !222
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %17, i32 0, i32 1, !dbg !223
  store i32 %add3, ptr %nlimbs4, align 4, !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %for.end, %entry
  %18 = load i32, ptr %bitno, align 4, !dbg !226
  %sh_prom = zext i32 %18 to i64, !dbg !227
  %shl = shl i64 1, %sh_prom, !dbg !227
  %19 = load ptr, ptr %a.addr, align 8, !dbg !228
  %d5 = getelementptr inbounds %struct.gcry_mpi, ptr %19, i32 0, i32 5, !dbg !229
  %20 = load ptr, ptr %d5, align 8, !dbg !229
  %21 = load i32, ptr %limbno, align 4, !dbg !230
  %idxprom6 = zext i32 %21 to i64, !dbg !228
  %arrayidx7 = getelementptr i64, ptr %20, i64 %idxprom6, !dbg !228
  %22 = load i64, ptr %arrayidx7, align 8, !dbg !231
  %or = or i64 %22, %shl, !dbg !231
  store i64 %or, ptr %arrayidx7, align 8, !dbg !231
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitno) #6, !dbg !232
  call void @llvm.lifetime.end.p0(i64 4, ptr %limbno) #6, !dbg !232
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !232
  ret void, !dbg !232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !233 dso_local i32 @mpi_resize(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_set_highbit(ptr noundef %a, i32 noundef %n) #0 align 16 !dbg !234 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %limbno = alloca i32, align 4
  %bitno = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !236, metadata !DIExpression()), !dbg !241
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !237, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %i, metadata !238, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 4, ptr %limbno) #6, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %limbno, metadata !239, metadata !DIExpression()), !dbg !245
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitno) #6, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %bitno, metadata !240, metadata !DIExpression()), !dbg !246
  %0 = load i32, ptr %n.addr, align 4, !dbg !247
  %div = udiv i32 %0, 64, !dbg !248
  store i32 %div, ptr %limbno, align 4, !dbg !249
  %1 = load i32, ptr %n.addr, align 4, !dbg !250
  %rem = urem i32 %1, 64, !dbg !251
  store i32 %rem, ptr %bitno, align 4, !dbg !252
  %2 = load i32, ptr %limbno, align 4, !dbg !253
  %3 = load ptr, ptr %a.addr, align 8, !dbg !255
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !256
  %4 = load i32, ptr %nlimbs, align 4, !dbg !256
  %cmp = icmp uge i32 %2, %4, !dbg !257
  br i1 %cmp, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !dbg !259
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1, !dbg !262
  %6 = load i32, ptr %nlimbs1, align 4, !dbg !262
  store i32 %6, ptr %i, align 4, !dbg !263
  br label %for.cond, !dbg !264

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %i, align 4, !dbg !265
  %8 = load ptr, ptr %a.addr, align 8, !dbg !267
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 0, !dbg !268
  %9 = load i32, ptr %alloced, align 8, !dbg !268
  %cmp2 = icmp ult i32 %7, %9, !dbg !269
  br i1 %cmp2, label %for.body, label %for.end, !dbg !270

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %a.addr, align 8, !dbg !271
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5, !dbg !272
  %11 = load ptr, ptr %d, align 8, !dbg !272
  %12 = load i32, ptr %i, align 4, !dbg !273
  %idxprom = zext i32 %12 to i64, !dbg !271
  %arrayidx = getelementptr i64, ptr %11, i64 %idxprom, !dbg !271
  store i64 0, ptr %arrayidx, align 8, !dbg !274
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !275
  %inc = add i32 %13, 1, !dbg !275
  store i32 %inc, ptr %i, align 4, !dbg !275
  br label %for.cond, !dbg !276, !llvm.loop !277

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %a.addr, align 8, !dbg !279
  %15 = load i32, ptr %limbno, align 4, !dbg !280
  %add = add i32 %15, 1, !dbg !281
  %call = call i32 @mpi_resize(ptr noundef %14, i32 noundef %add) #7, !dbg !282
  %16 = load i32, ptr %limbno, align 4, !dbg !283
  %add3 = add i32 %16, 1, !dbg !284
  %17 = load ptr, ptr %a.addr, align 8, !dbg !285
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %17, i32 0, i32 1, !dbg !286
  store i32 %add3, ptr %nlimbs4, align 4, !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %for.end, %entry
  %18 = load i32, ptr %bitno, align 4, !dbg !289
  %sh_prom = zext i32 %18 to i64, !dbg !290
  %shl = shl i64 1, %sh_prom, !dbg !290
  %19 = load ptr, ptr %a.addr, align 8, !dbg !291
  %d5 = getelementptr inbounds %struct.gcry_mpi, ptr %19, i32 0, i32 5, !dbg !292
  %20 = load ptr, ptr %d5, align 8, !dbg !292
  %21 = load i32, ptr %limbno, align 4, !dbg !293
  %idxprom6 = zext i32 %21 to i64, !dbg !291
  %arrayidx7 = getelementptr i64, ptr %20, i64 %idxprom6, !dbg !291
  %22 = load i64, ptr %arrayidx7, align 8, !dbg !294
  %or = or i64 %22, %shl, !dbg !294
  store i64 %or, ptr %arrayidx7, align 8, !dbg !294
  %23 = load i32, ptr %bitno, align 4, !dbg !295
  %inc8 = add i32 %23, 1, !dbg !295
  store i32 %inc8, ptr %bitno, align 4, !dbg !295
  br label %for.cond9, !dbg !297

for.cond9:                                        ; preds = %for.inc17, %if.end
  %24 = load i32, ptr %bitno, align 4, !dbg !298
  %cmp10 = icmp ult i32 %24, 64, !dbg !300
  br i1 %cmp10, label %for.body11, label %for.end19, !dbg !301

for.body11:                                       ; preds = %for.cond9
  %25 = load i32, ptr %bitno, align 4, !dbg !302
  %sh_prom12 = zext i32 %25 to i64, !dbg !303
  %shl13 = shl i64 1, %sh_prom12, !dbg !303
  %not = xor i64 %shl13, -1, !dbg !304
  %26 = load ptr, ptr %a.addr, align 8, !dbg !305
  %d14 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 5, !dbg !306
  %27 = load ptr, ptr %d14, align 8, !dbg !306
  %28 = load i32, ptr %limbno, align 4, !dbg !307
  %idxprom15 = zext i32 %28 to i64, !dbg !305
  %arrayidx16 = getelementptr i64, ptr %27, i64 %idxprom15, !dbg !305
  %29 = load i64, ptr %arrayidx16, align 8, !dbg !308
  %and = and i64 %29, %not, !dbg !308
  store i64 %and, ptr %arrayidx16, align 8, !dbg !308
  br label %for.inc17, !dbg !305

for.inc17:                                        ; preds = %for.body11
  %30 = load i32, ptr %bitno, align 4, !dbg !309
  %inc18 = add i32 %30, 1, !dbg !309
  store i32 %inc18, ptr %bitno, align 4, !dbg !309
  br label %for.cond9, !dbg !310, !llvm.loop !311

for.end19:                                        ; preds = %for.cond9
  %31 = load i32, ptr %limbno, align 4, !dbg !313
  %add20 = add i32 %31, 1, !dbg !314
  %32 = load ptr, ptr %a.addr, align 8, !dbg !315
  %nlimbs21 = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 1, !dbg !316
  store i32 %add20, ptr %nlimbs21, align 4, !dbg !317
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitno) #6, !dbg !318
  call void @llvm.lifetime.end.p0(i64 4, ptr %limbno) #6, !dbg !318
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !318
  ret void, !dbg !318
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_clear_highbit(ptr noundef %a, i32 noundef %n) #0 align 16 !dbg !319 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %limbno = alloca i32, align 4
  %bitno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !321, metadata !DIExpression()), !dbg !325
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !322, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 4, ptr %limbno) #6, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %limbno, metadata !323, metadata !DIExpression()), !dbg !328
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitno) #6, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %bitno, metadata !324, metadata !DIExpression()), !dbg !329
  %0 = load i32, ptr %n.addr, align 4, !dbg !330
  %div = udiv i32 %0, 64, !dbg !331
  store i32 %div, ptr %limbno, align 4, !dbg !332
  %1 = load i32, ptr %n.addr, align 4, !dbg !333
  %rem = urem i32 %1, 64, !dbg !334
  store i32 %rem, ptr %bitno, align 4, !dbg !335
  %2 = load i32, ptr %limbno, align 4, !dbg !336
  %3 = load ptr, ptr %a.addr, align 8, !dbg !338
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !339
  %4 = load i32, ptr %nlimbs, align 4, !dbg !339
  %cmp = icmp uge i32 %2, %4, !dbg !340
  br i1 %cmp, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !342

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !343

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %bitno, align 4, !dbg !344
  %cmp1 = icmp ult i32 %5, 64, !dbg !347
  br i1 %cmp1, label %for.body, label %for.end, !dbg !348

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %bitno, align 4, !dbg !349
  %sh_prom = zext i32 %6 to i64, !dbg !350
  %shl = shl i64 1, %sh_prom, !dbg !350
  %not = xor i64 %shl, -1, !dbg !351
  %7 = load ptr, ptr %a.addr, align 8, !dbg !352
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 5, !dbg !353
  %8 = load ptr, ptr %d, align 8, !dbg !353
  %9 = load i32, ptr %limbno, align 4, !dbg !354
  %idxprom = zext i32 %9 to i64, !dbg !352
  %arrayidx = getelementptr i64, ptr %8, i64 %idxprom, !dbg !352
  %10 = load i64, ptr %arrayidx, align 8, !dbg !355
  %and = and i64 %10, %not, !dbg !355
  store i64 %and, ptr %arrayidx, align 8, !dbg !355
  br label %for.inc, !dbg !352

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %bitno, align 4, !dbg !356
  %inc = add i32 %11, 1, !dbg !356
  store i32 %inc, ptr %bitno, align 4, !dbg !356
  br label %for.cond, !dbg !357, !llvm.loop !358

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %limbno, align 4, !dbg !360
  %add = add i32 %12, 1, !dbg !361
  %13 = load ptr, ptr %a.addr, align 8, !dbg !362
  %nlimbs2 = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 1, !dbg !363
  store i32 %add, ptr %nlimbs2, align 4, !dbg !364
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !365
  br label %cleanup, !dbg !365

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitno) #6, !dbg !365
  call void @llvm.lifetime.end.p0(i64 4, ptr %limbno) #6, !dbg !365
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !365

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_clear_bit(ptr noundef %a, i32 noundef %n) #0 align 16 !dbg !366 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %limbno = alloca i32, align 4
  %bitno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !368, metadata !DIExpression()), !dbg !372
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !369, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 4, ptr %limbno) #6, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %limbno, metadata !370, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitno) #6, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %bitno, metadata !371, metadata !DIExpression()), !dbg !376
  %0 = load i32, ptr %n.addr, align 4, !dbg !377
  %div = udiv i32 %0, 64, !dbg !378
  store i32 %div, ptr %limbno, align 4, !dbg !379
  %1 = load i32, ptr %n.addr, align 4, !dbg !380
  %rem = urem i32 %1, 64, !dbg !381
  store i32 %rem, ptr %bitno, align 4, !dbg !382
  %2 = load i32, ptr %limbno, align 4, !dbg !383
  %3 = load ptr, ptr %a.addr, align 8, !dbg !385
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !386
  %4 = load i32, ptr %nlimbs, align 4, !dbg !386
  %cmp = icmp uge i32 %2, %4, !dbg !387
  br i1 %cmp, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !389

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %bitno, align 4, !dbg !390
  %sh_prom = zext i32 %5 to i64, !dbg !391
  %shl = shl i64 1, %sh_prom, !dbg !391
  %not = xor i64 %shl, -1, !dbg !392
  %6 = load ptr, ptr %a.addr, align 8, !dbg !393
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 5, !dbg !394
  %7 = load ptr, ptr %d, align 8, !dbg !394
  %8 = load i32, ptr %limbno, align 4, !dbg !395
  %idxprom = zext i32 %8 to i64, !dbg !393
  %arrayidx = getelementptr i64, ptr %7, i64 %idxprom, !dbg !393
  %9 = load i64, ptr %arrayidx, align 8, !dbg !396
  %and = and i64 %9, %not, !dbg !396
  store i64 %and, ptr %arrayidx, align 8, !dbg !396
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !397
  br label %cleanup, !dbg !397

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitno) #6, !dbg !397
  call void @llvm.lifetime.end.p0(i64 4, ptr %limbno) #6, !dbg !397
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !397

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_rshift_limbs(ptr noundef %a, i32 noundef %count) #0 align 16 !dbg !398 {
entry:
  %a.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %ap = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !400, metadata !DIExpression()), !dbg !408
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !401, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap) #6, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !402, metadata !DIExpression()), !dbg !411
  %0 = load ptr, ptr %a.addr, align 8, !dbg !412
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5, !dbg !413
  %1 = load ptr, ptr %d, align 8, !dbg !413
  store ptr %1, ptr %ap, align 8, !dbg !411
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %n, metadata !405, metadata !DIExpression()), !dbg !415
  %2 = load ptr, ptr %a.addr, align 8, !dbg !416
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1, !dbg !417
  %3 = load i32, ptr %nlimbs, align 4, !dbg !417
  store i32 %3, ptr %n, align 4, !dbg !415
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !418
  call void @llvm.dbg.declare(metadata ptr %i, metadata !407, metadata !DIExpression()), !dbg !419
  %4 = load i32, ptr %count.addr, align 4, !dbg !420
  %5 = load i32, ptr %n, align 4, !dbg !422
  %cmp = icmp uge i32 %4, %5, !dbg !423
  br i1 %cmp, label %if.then, label %if.end, !dbg !424

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %a.addr, align 8, !dbg !425
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1, !dbg !427
  store i32 0, ptr %nlimbs1, align 4, !dbg !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !429

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !430
  br label %for.cond, !dbg !432

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !433
  %8 = load i32, ptr %n, align 4, !dbg !435
  %9 = load i32, ptr %count.addr, align 4, !dbg !436
  %sub = sub i32 %8, %9, !dbg !437
  %cmp2 = icmp ult i32 %7, %sub, !dbg !438
  br i1 %cmp2, label %for.body, label %for.end, !dbg !439

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %ap, align 8, !dbg !440
  %11 = load i32, ptr %i, align 4, !dbg !441
  %12 = load i32, ptr %count.addr, align 4, !dbg !442
  %add = add i32 %11, %12, !dbg !443
  %idxprom = zext i32 %add to i64, !dbg !440
  %arrayidx = getelementptr i64, ptr %10, i64 %idxprom, !dbg !440
  %13 = load i64, ptr %arrayidx, align 8, !dbg !440
  %14 = load ptr, ptr %ap, align 8, !dbg !444
  %15 = load i32, ptr %i, align 4, !dbg !445
  %idxprom3 = zext i32 %15 to i64, !dbg !444
  %arrayidx4 = getelementptr i64, ptr %14, i64 %idxprom3, !dbg !444
  store i64 %13, ptr %arrayidx4, align 8, !dbg !446
  br label %for.inc, !dbg !444

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !447
  %inc = add i32 %16, 1, !dbg !447
  store i32 %inc, ptr %i, align 4, !dbg !447
  br label %for.cond, !dbg !448, !llvm.loop !449

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %ap, align 8, !dbg !451
  %18 = load i32, ptr %i, align 4, !dbg !452
  %idxprom5 = zext i32 %18 to i64, !dbg !451
  %arrayidx6 = getelementptr i64, ptr %17, i64 %idxprom5, !dbg !451
  store i64 0, ptr %arrayidx6, align 8, !dbg !453
  %19 = load i32, ptr %count.addr, align 4, !dbg !454
  %20 = load ptr, ptr %a.addr, align 8, !dbg !455
  %nlimbs7 = getelementptr inbounds %struct.gcry_mpi, ptr %20, i32 0, i32 1, !dbg !456
  %21 = load i32, ptr %nlimbs7, align 4, !dbg !457
  %sub8 = sub i32 %21, %19, !dbg !457
  store i32 %sub8, ptr %nlimbs7, align 4, !dbg !457
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !458
  br label %cleanup, !dbg !458

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap) #6, !dbg !458
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !458

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_rshift(ptr noundef %x, ptr noundef %a, i32 noundef %n) #0 align 16 !dbg !459 {
entry:
  %x.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %xsize = alloca i32, align 4
  %i = alloca i32, align 4
  %nlimbs = alloca i32, align 4
  %nbits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !463, metadata !DIExpression()), !dbg !470
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !464, metadata !DIExpression()), !dbg !471
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !465, metadata !DIExpression()), !dbg !472
  call void @llvm.lifetime.start.p0(i64 4, ptr %xsize) #6, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %xsize, metadata !466, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !475
  call void @llvm.dbg.declare(metadata ptr %i, metadata !467, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlimbs) #6, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %nlimbs, metadata !468, metadata !DIExpression()), !dbg !478
  %0 = load i32, ptr %n.addr, align 4, !dbg !479
  %div = udiv i32 %0, 64, !dbg !480
  store i32 %div, ptr %nlimbs, align 4, !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbits) #6, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %nbits, metadata !469, metadata !DIExpression()), !dbg !482
  %1 = load i32, ptr %n.addr, align 4, !dbg !483
  %rem = urem i32 %1, 64, !dbg !484
  store i32 %rem, ptr %nbits, align 4, !dbg !482
  %2 = load ptr, ptr %x.addr, align 8, !dbg !485
  %3 = load ptr, ptr %a.addr, align 8, !dbg !487
  %cmp = icmp eq ptr %2, %3, !dbg !488
  br i1 %cmp, label %if.then, label %if.else, !dbg !489

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %nlimbs, align 4, !dbg !490
  %5 = load ptr, ptr %x.addr, align 8, !dbg !493
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1, !dbg !494
  %6 = load i32, ptr %nlimbs1, align 4, !dbg !494
  %cmp2 = icmp uge i32 %4, %6, !dbg !495
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !496

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %x.addr, align 8, !dbg !497
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 1, !dbg !499
  store i32 0, ptr %nlimbs4, align 4, !dbg !500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !501

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %nlimbs, align 4, !dbg !502
  %tobool = icmp ne i32 %8, 0, !dbg !502
  br i1 %tobool, label %if.then5, label %if.end16, !dbg !504

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !505
  br label %for.cond, !dbg !508

for.cond:                                         ; preds = %for.inc, %if.then5
  %9 = load i32, ptr %i, align 4, !dbg !509
  %10 = load ptr, ptr %x.addr, align 8, !dbg !511
  %nlimbs6 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 1, !dbg !512
  %11 = load i32, ptr %nlimbs6, align 4, !dbg !512
  %12 = load i32, ptr %nlimbs, align 4, !dbg !513
  %sub = sub i32 %11, %12, !dbg !514
  %cmp7 = icmp ult i32 %9, %sub, !dbg !515
  br i1 %cmp7, label %for.body, label %for.end, !dbg !516

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %x.addr, align 8, !dbg !517
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 5, !dbg !518
  %14 = load ptr, ptr %d, align 8, !dbg !518
  %15 = load i32, ptr %i, align 4, !dbg !519
  %16 = load i32, ptr %nlimbs, align 4, !dbg !520
  %add = add i32 %15, %16, !dbg !521
  %idxprom = zext i32 %add to i64, !dbg !517
  %arrayidx = getelementptr i64, ptr %14, i64 %idxprom, !dbg !517
  %17 = load i64, ptr %arrayidx, align 8, !dbg !517
  %18 = load ptr, ptr %x.addr, align 8, !dbg !522
  %d8 = getelementptr inbounds %struct.gcry_mpi, ptr %18, i32 0, i32 5, !dbg !523
  %19 = load ptr, ptr %d8, align 8, !dbg !523
  %20 = load i32, ptr %i, align 4, !dbg !524
  %idxprom9 = zext i32 %20 to i64, !dbg !522
  %arrayidx10 = getelementptr i64, ptr %19, i64 %idxprom9, !dbg !522
  store i64 %17, ptr %arrayidx10, align 8, !dbg !525
  br label %for.inc, !dbg !522

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !526
  %inc = add i32 %21, 1, !dbg !526
  store i32 %inc, ptr %i, align 4, !dbg !526
  br label %for.cond, !dbg !527, !llvm.loop !528

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %x.addr, align 8, !dbg !530
  %d11 = getelementptr inbounds %struct.gcry_mpi, ptr %22, i32 0, i32 5, !dbg !531
  %23 = load ptr, ptr %d11, align 8, !dbg !531
  %24 = load i32, ptr %i, align 4, !dbg !532
  %idxprom12 = zext i32 %24 to i64, !dbg !530
  %arrayidx13 = getelementptr i64, ptr %23, i64 %idxprom12, !dbg !530
  store i64 0, ptr %arrayidx13, align 8, !dbg !533
  %25 = load i32, ptr %nlimbs, align 4, !dbg !534
  %26 = load ptr, ptr %x.addr, align 8, !dbg !535
  %nlimbs14 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 1, !dbg !536
  %27 = load i32, ptr %nlimbs14, align 4, !dbg !537
  %sub15 = sub i32 %27, %25, !dbg !537
  store i32 %sub15, ptr %nlimbs14, align 4, !dbg !537
  br label %if.end16, !dbg !538

if.end16:                                         ; preds = %for.end, %if.end
  %28 = load ptr, ptr %x.addr, align 8, !dbg !539
  %nlimbs17 = getelementptr inbounds %struct.gcry_mpi, ptr %28, i32 0, i32 1, !dbg !541
  %29 = load i32, ptr %nlimbs17, align 4, !dbg !541
  %tobool18 = icmp ne i32 %29, 0, !dbg !539
  br i1 %tobool18, label %land.lhs.true, label %if.end24, !dbg !542

land.lhs.true:                                    ; preds = %if.end16
  %30 = load i32, ptr %nbits, align 4, !dbg !543
  %tobool19 = icmp ne i32 %30, 0, !dbg !543
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !544

if.then20:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %x.addr, align 8, !dbg !545
  %d21 = getelementptr inbounds %struct.gcry_mpi, ptr %31, i32 0, i32 5, !dbg !546
  %32 = load ptr, ptr %d21, align 8, !dbg !546
  %33 = load ptr, ptr %x.addr, align 8, !dbg !547
  %d22 = getelementptr inbounds %struct.gcry_mpi, ptr %33, i32 0, i32 5, !dbg !548
  %34 = load ptr, ptr %d22, align 8, !dbg !548
  %35 = load ptr, ptr %x.addr, align 8, !dbg !549
  %nlimbs23 = getelementptr inbounds %struct.gcry_mpi, ptr %35, i32 0, i32 1, !dbg !550
  %36 = load i32, ptr %nlimbs23, align 4, !dbg !550
  %37 = load i32, ptr %nbits, align 4, !dbg !551
  %call = call i64 @mpihelp_rshift(ptr noundef %32, ptr noundef %34, i32 noundef %36, i32 noundef %37) #7, !dbg !552
  br label %if.end24, !dbg !552

if.end24:                                         ; preds = %if.then20, %land.lhs.true, %if.end16
  br label %if.end124, !dbg !553

if.else:                                          ; preds = %entry
  %38 = load i32, ptr %nlimbs, align 4, !dbg !554
  %tobool25 = icmp ne i32 %38, 0, !dbg !554
  br i1 %tobool25, label %if.then26, label %if.else86, !dbg !556

if.then26:                                        ; preds = %if.else
  %39 = load ptr, ptr %a.addr, align 8, !dbg !557
  %nlimbs27 = getelementptr inbounds %struct.gcry_mpi, ptr %39, i32 0, i32 1, !dbg !559
  %40 = load i32, ptr %nlimbs27, align 4, !dbg !559
  store i32 %40, ptr %xsize, align 4, !dbg !560
  %41 = load ptr, ptr %a.addr, align 8, !dbg !561
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %41, i32 0, i32 3, !dbg !562
  %42 = load i32, ptr %sign, align 4, !dbg !562
  %43 = load ptr, ptr %x.addr, align 8, !dbg !563
  %sign28 = getelementptr inbounds %struct.gcry_mpi, ptr %43, i32 0, i32 3, !dbg !564
  store i32 %42, ptr %sign28, align 4, !dbg !565
  br label %do.body, !dbg !566

do.body:                                          ; preds = %if.then26
  %44 = load ptr, ptr %x.addr, align 8, !dbg !567
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %44, i32 0, i32 0, !dbg !567
  %45 = load i32, ptr %alloced, align 8, !dbg !567
  %46 = load i32, ptr %xsize, align 4, !dbg !567
  %cmp29 = icmp slt i32 %45, %46, !dbg !567
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !570

if.then30:                                        ; preds = %do.body
  %47 = load ptr, ptr %x.addr, align 8, !dbg !567
  %48 = load i32, ptr %xsize, align 4, !dbg !567
  %call31 = call i32 @mpi_resize(ptr noundef %47, i32 noundef %48) #7, !dbg !567
  br label %if.end32, !dbg !567

if.end32:                                         ; preds = %if.then30, %do.body
  br label %do.cond, !dbg !570

do.cond:                                          ; preds = %if.end32
  br label %do.end, !dbg !570

do.end:                                           ; preds = %do.cond
  %49 = load i32, ptr %xsize, align 4, !dbg !571
  %50 = load ptr, ptr %x.addr, align 8, !dbg !572
  %nlimbs33 = getelementptr inbounds %struct.gcry_mpi, ptr %50, i32 0, i32 1, !dbg !573
  store i32 %49, ptr %nlimbs33, align 4, !dbg !574
  store i32 0, ptr %i, align 4, !dbg !575
  br label %for.cond34, !dbg !577

for.cond34:                                       ; preds = %for.inc44, %do.end
  %51 = load i32, ptr %i, align 4, !dbg !578
  %52 = load ptr, ptr %a.addr, align 8, !dbg !580
  %nlimbs35 = getelementptr inbounds %struct.gcry_mpi, ptr %52, i32 0, i32 1, !dbg !581
  %53 = load i32, ptr %nlimbs35, align 4, !dbg !581
  %cmp36 = icmp ult i32 %51, %53, !dbg !582
  br i1 %cmp36, label %for.body37, label %for.end46, !dbg !583

for.body37:                                       ; preds = %for.cond34
  %54 = load ptr, ptr %a.addr, align 8, !dbg !584
  %d38 = getelementptr inbounds %struct.gcry_mpi, ptr %54, i32 0, i32 5, !dbg !585
  %55 = load ptr, ptr %d38, align 8, !dbg !585
  %56 = load i32, ptr %i, align 4, !dbg !586
  %idxprom39 = zext i32 %56 to i64, !dbg !584
  %arrayidx40 = getelementptr i64, ptr %55, i64 %idxprom39, !dbg !584
  %57 = load i64, ptr %arrayidx40, align 8, !dbg !584
  %58 = load ptr, ptr %x.addr, align 8, !dbg !587
  %d41 = getelementptr inbounds %struct.gcry_mpi, ptr %58, i32 0, i32 5, !dbg !588
  %59 = load ptr, ptr %d41, align 8, !dbg !588
  %60 = load i32, ptr %i, align 4, !dbg !589
  %idxprom42 = zext i32 %60 to i64, !dbg !587
  %arrayidx43 = getelementptr i64, ptr %59, i64 %idxprom42, !dbg !587
  store i64 %57, ptr %arrayidx43, align 8, !dbg !590
  br label %for.inc44, !dbg !587

for.inc44:                                        ; preds = %for.body37
  %61 = load i32, ptr %i, align 4, !dbg !591
  %inc45 = add i32 %61, 1, !dbg !591
  store i32 %inc45, ptr %i, align 4, !dbg !591
  br label %for.cond34, !dbg !592, !llvm.loop !593

for.end46:                                        ; preds = %for.cond34
  %62 = load i32, ptr %i, align 4, !dbg !595
  %63 = load ptr, ptr %x.addr, align 8, !dbg !596
  %nlimbs47 = getelementptr inbounds %struct.gcry_mpi, ptr %63, i32 0, i32 1, !dbg !597
  store i32 %62, ptr %nlimbs47, align 4, !dbg !598
  %64 = load i32, ptr %nlimbs, align 4, !dbg !599
  %65 = load ptr, ptr %x.addr, align 8, !dbg !601
  %nlimbs48 = getelementptr inbounds %struct.gcry_mpi, ptr %65, i32 0, i32 1, !dbg !602
  %66 = load i32, ptr %nlimbs48, align 4, !dbg !602
  %cmp49 = icmp uge i32 %64, %66, !dbg !603
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !604

if.then50:                                        ; preds = %for.end46
  %67 = load ptr, ptr %x.addr, align 8, !dbg !605
  %nlimbs51 = getelementptr inbounds %struct.gcry_mpi, ptr %67, i32 0, i32 1, !dbg !607
  store i32 0, ptr %nlimbs51, align 4, !dbg !608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !609

if.end52:                                         ; preds = %for.end46
  %68 = load i32, ptr %nlimbs, align 4, !dbg !610
  %tobool53 = icmp ne i32 %68, 0, !dbg !610
  br i1 %tobool53, label %if.then54, label %if.end75, !dbg !612

if.then54:                                        ; preds = %if.end52
  store i32 0, ptr %i, align 4, !dbg !613
  br label %for.cond55, !dbg !616

for.cond55:                                       ; preds = %for.inc67, %if.then54
  %69 = load i32, ptr %i, align 4, !dbg !617
  %70 = load ptr, ptr %x.addr, align 8, !dbg !619
  %nlimbs56 = getelementptr inbounds %struct.gcry_mpi, ptr %70, i32 0, i32 1, !dbg !620
  %71 = load i32, ptr %nlimbs56, align 4, !dbg !620
  %72 = load i32, ptr %nlimbs, align 4, !dbg !621
  %sub57 = sub i32 %71, %72, !dbg !622
  %cmp58 = icmp ult i32 %69, %sub57, !dbg !623
  br i1 %cmp58, label %for.body59, label %for.end69, !dbg !624

for.body59:                                       ; preds = %for.cond55
  %73 = load ptr, ptr %x.addr, align 8, !dbg !625
  %d60 = getelementptr inbounds %struct.gcry_mpi, ptr %73, i32 0, i32 5, !dbg !626
  %74 = load ptr, ptr %d60, align 8, !dbg !626
  %75 = load i32, ptr %i, align 4, !dbg !627
  %76 = load i32, ptr %nlimbs, align 4, !dbg !628
  %add61 = add i32 %75, %76, !dbg !629
  %idxprom62 = zext i32 %add61 to i64, !dbg !625
  %arrayidx63 = getelementptr i64, ptr %74, i64 %idxprom62, !dbg !625
  %77 = load i64, ptr %arrayidx63, align 8, !dbg !625
  %78 = load ptr, ptr %x.addr, align 8, !dbg !630
  %d64 = getelementptr inbounds %struct.gcry_mpi, ptr %78, i32 0, i32 5, !dbg !631
  %79 = load ptr, ptr %d64, align 8, !dbg !631
  %80 = load i32, ptr %i, align 4, !dbg !632
  %idxprom65 = zext i32 %80 to i64, !dbg !630
  %arrayidx66 = getelementptr i64, ptr %79, i64 %idxprom65, !dbg !630
  store i64 %77, ptr %arrayidx66, align 8, !dbg !633
  br label %for.inc67, !dbg !630

for.inc67:                                        ; preds = %for.body59
  %81 = load i32, ptr %i, align 4, !dbg !634
  %inc68 = add i32 %81, 1, !dbg !634
  store i32 %inc68, ptr %i, align 4, !dbg !634
  br label %for.cond55, !dbg !635, !llvm.loop !636

for.end69:                                        ; preds = %for.cond55
  %82 = load ptr, ptr %x.addr, align 8, !dbg !638
  %d70 = getelementptr inbounds %struct.gcry_mpi, ptr %82, i32 0, i32 5, !dbg !639
  %83 = load ptr, ptr %d70, align 8, !dbg !639
  %84 = load i32, ptr %i, align 4, !dbg !640
  %idxprom71 = zext i32 %84 to i64, !dbg !638
  %arrayidx72 = getelementptr i64, ptr %83, i64 %idxprom71, !dbg !638
  store i64 0, ptr %arrayidx72, align 8, !dbg !641
  %85 = load i32, ptr %nlimbs, align 4, !dbg !642
  %86 = load ptr, ptr %x.addr, align 8, !dbg !643
  %nlimbs73 = getelementptr inbounds %struct.gcry_mpi, ptr %86, i32 0, i32 1, !dbg !644
  %87 = load i32, ptr %nlimbs73, align 4, !dbg !645
  %sub74 = sub i32 %87, %85, !dbg !645
  store i32 %sub74, ptr %nlimbs73, align 4, !dbg !645
  br label %if.end75, !dbg !646

if.end75:                                         ; preds = %for.end69, %if.end52
  %88 = load ptr, ptr %x.addr, align 8, !dbg !647
  %nlimbs76 = getelementptr inbounds %struct.gcry_mpi, ptr %88, i32 0, i32 1, !dbg !649
  %89 = load i32, ptr %nlimbs76, align 4, !dbg !649
  %tobool77 = icmp ne i32 %89, 0, !dbg !647
  br i1 %tobool77, label %land.lhs.true78, label %if.end85, !dbg !650

land.lhs.true78:                                  ; preds = %if.end75
  %90 = load i32, ptr %nbits, align 4, !dbg !651
  %tobool79 = icmp ne i32 %90, 0, !dbg !651
  br i1 %tobool79, label %if.then80, label %if.end85, !dbg !652

if.then80:                                        ; preds = %land.lhs.true78
  %91 = load ptr, ptr %x.addr, align 8, !dbg !653
  %d81 = getelementptr inbounds %struct.gcry_mpi, ptr %91, i32 0, i32 5, !dbg !654
  %92 = load ptr, ptr %d81, align 8, !dbg !654
  %93 = load ptr, ptr %x.addr, align 8, !dbg !655
  %d82 = getelementptr inbounds %struct.gcry_mpi, ptr %93, i32 0, i32 5, !dbg !656
  %94 = load ptr, ptr %d82, align 8, !dbg !656
  %95 = load ptr, ptr %x.addr, align 8, !dbg !657
  %nlimbs83 = getelementptr inbounds %struct.gcry_mpi, ptr %95, i32 0, i32 1, !dbg !658
  %96 = load i32, ptr %nlimbs83, align 4, !dbg !658
  %97 = load i32, ptr %nbits, align 4, !dbg !659
  %call84 = call i64 @mpihelp_rshift(ptr noundef %92, ptr noundef %94, i32 noundef %96, i32 noundef %97) #7, !dbg !660
  br label %if.end85, !dbg !660

if.end85:                                         ; preds = %if.then80, %land.lhs.true78, %if.end75
  br label %if.end123, !dbg !661

if.else86:                                        ; preds = %if.else
  %98 = load ptr, ptr %a.addr, align 8, !dbg !662
  %nlimbs87 = getelementptr inbounds %struct.gcry_mpi, ptr %98, i32 0, i32 1, !dbg !664
  %99 = load i32, ptr %nlimbs87, align 4, !dbg !664
  store i32 %99, ptr %xsize, align 4, !dbg !665
  %100 = load ptr, ptr %a.addr, align 8, !dbg !666
  %sign88 = getelementptr inbounds %struct.gcry_mpi, ptr %100, i32 0, i32 3, !dbg !667
  %101 = load i32, ptr %sign88, align 4, !dbg !667
  %102 = load ptr, ptr %x.addr, align 8, !dbg !668
  %sign89 = getelementptr inbounds %struct.gcry_mpi, ptr %102, i32 0, i32 3, !dbg !669
  store i32 %101, ptr %sign89, align 4, !dbg !670
  br label %do.body90, !dbg !671

do.body90:                                        ; preds = %if.else86
  %103 = load ptr, ptr %x.addr, align 8, !dbg !672
  %alloced91 = getelementptr inbounds %struct.gcry_mpi, ptr %103, i32 0, i32 0, !dbg !672
  %104 = load i32, ptr %alloced91, align 8, !dbg !672
  %105 = load i32, ptr %xsize, align 4, !dbg !672
  %cmp92 = icmp slt i32 %104, %105, !dbg !672
  br i1 %cmp92, label %if.then93, label %if.end95, !dbg !675

if.then93:                                        ; preds = %do.body90
  %106 = load ptr, ptr %x.addr, align 8, !dbg !672
  %107 = load i32, ptr %xsize, align 4, !dbg !672
  %call94 = call i32 @mpi_resize(ptr noundef %106, i32 noundef %107) #7, !dbg !672
  br label %if.end95, !dbg !672

if.end95:                                         ; preds = %if.then93, %do.body90
  br label %do.cond96, !dbg !675

do.cond96:                                        ; preds = %if.end95
  br label %do.end97, !dbg !675

do.end97:                                         ; preds = %do.cond96
  %108 = load i32, ptr %xsize, align 4, !dbg !676
  %109 = load ptr, ptr %x.addr, align 8, !dbg !677
  %nlimbs98 = getelementptr inbounds %struct.gcry_mpi, ptr %109, i32 0, i32 1, !dbg !678
  store i32 %108, ptr %nlimbs98, align 4, !dbg !679
  %110 = load i32, ptr %xsize, align 4, !dbg !680
  %tobool99 = icmp ne i32 %110, 0, !dbg !680
  br i1 %tobool99, label %if.then100, label %if.end122, !dbg !682

if.then100:                                       ; preds = %do.end97
  %111 = load i32, ptr %nbits, align 4, !dbg !683
  %tobool101 = icmp ne i32 %111, 0, !dbg !683
  br i1 %tobool101, label %if.then102, label %if.else107, !dbg !686

if.then102:                                       ; preds = %if.then100
  %112 = load ptr, ptr %x.addr, align 8, !dbg !687
  %d103 = getelementptr inbounds %struct.gcry_mpi, ptr %112, i32 0, i32 5, !dbg !688
  %113 = load ptr, ptr %d103, align 8, !dbg !688
  %114 = load ptr, ptr %a.addr, align 8, !dbg !689
  %d104 = getelementptr inbounds %struct.gcry_mpi, ptr %114, i32 0, i32 5, !dbg !690
  %115 = load ptr, ptr %d104, align 8, !dbg !690
  %116 = load ptr, ptr %x.addr, align 8, !dbg !691
  %nlimbs105 = getelementptr inbounds %struct.gcry_mpi, ptr %116, i32 0, i32 1, !dbg !692
  %117 = load i32, ptr %nlimbs105, align 4, !dbg !692
  %118 = load i32, ptr %nbits, align 4, !dbg !693
  %call106 = call i64 @mpihelp_rshift(ptr noundef %113, ptr noundef %115, i32 noundef %117, i32 noundef %118) #7, !dbg !694
  br label %if.end121, !dbg !694

if.else107:                                       ; preds = %if.then100
  store i32 0, ptr %i, align 4, !dbg !695
  br label %for.cond108, !dbg !698

for.cond108:                                      ; preds = %for.inc118, %if.else107
  %119 = load i32, ptr %i, align 4, !dbg !699
  %120 = load ptr, ptr %x.addr, align 8, !dbg !701
  %nlimbs109 = getelementptr inbounds %struct.gcry_mpi, ptr %120, i32 0, i32 1, !dbg !702
  %121 = load i32, ptr %nlimbs109, align 4, !dbg !702
  %cmp110 = icmp ult i32 %119, %121, !dbg !703
  br i1 %cmp110, label %for.body111, label %for.end120, !dbg !704

for.body111:                                      ; preds = %for.cond108
  %122 = load ptr, ptr %a.addr, align 8, !dbg !705
  %d112 = getelementptr inbounds %struct.gcry_mpi, ptr %122, i32 0, i32 5, !dbg !706
  %123 = load ptr, ptr %d112, align 8, !dbg !706
  %124 = load i32, ptr %i, align 4, !dbg !707
  %idxprom113 = zext i32 %124 to i64, !dbg !705
  %arrayidx114 = getelementptr i64, ptr %123, i64 %idxprom113, !dbg !705
  %125 = load i64, ptr %arrayidx114, align 8, !dbg !705
  %126 = load ptr, ptr %x.addr, align 8, !dbg !708
  %d115 = getelementptr inbounds %struct.gcry_mpi, ptr %126, i32 0, i32 5, !dbg !709
  %127 = load ptr, ptr %d115, align 8, !dbg !709
  %128 = load i32, ptr %i, align 4, !dbg !710
  %idxprom116 = zext i32 %128 to i64, !dbg !708
  %arrayidx117 = getelementptr i64, ptr %127, i64 %idxprom116, !dbg !708
  store i64 %125, ptr %arrayidx117, align 8, !dbg !711
  br label %for.inc118, !dbg !708

for.inc118:                                       ; preds = %for.body111
  %129 = load i32, ptr %i, align 4, !dbg !712
  %inc119 = add i32 %129, 1, !dbg !712
  store i32 %inc119, ptr %i, align 4, !dbg !712
  br label %for.cond108, !dbg !713, !llvm.loop !714

for.end120:                                       ; preds = %for.cond108
  br label %if.end121

if.end121:                                        ; preds = %for.end120, %if.then102
  br label %if.end122, !dbg !716

if.end122:                                        ; preds = %if.end121, %do.end97
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end85
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end24
  br label %do.body125, !dbg !717

do.body125:                                       ; preds = %if.end124
  br label %while.cond, !dbg !718

while.cond:                                       ; preds = %if.end135, %do.body125
  %130 = load ptr, ptr %x.addr, align 8, !dbg !718
  %nlimbs126 = getelementptr inbounds %struct.gcry_mpi, ptr %130, i32 0, i32 1, !dbg !718
  %131 = load i32, ptr %nlimbs126, align 4, !dbg !718
  %cmp127 = icmp sgt i32 %131, 0, !dbg !718
  br i1 %cmp127, label %while.body, label %while.end, !dbg !718

while.body:                                       ; preds = %while.cond
  %132 = load ptr, ptr %x.addr, align 8, !dbg !720
  %d128 = getelementptr inbounds %struct.gcry_mpi, ptr %132, i32 0, i32 5, !dbg !720
  %133 = load ptr, ptr %d128, align 8, !dbg !720
  %134 = load ptr, ptr %x.addr, align 8, !dbg !720
  %nlimbs129 = getelementptr inbounds %struct.gcry_mpi, ptr %134, i32 0, i32 1, !dbg !720
  %135 = load i32, ptr %nlimbs129, align 4, !dbg !720
  %sub130 = sub i32 %135, 1, !dbg !720
  %idxprom131 = sext i32 %sub130 to i64, !dbg !720
  %arrayidx132 = getelementptr i64, ptr %133, i64 %idxprom131, !dbg !720
  %136 = load i64, ptr %arrayidx132, align 8, !dbg !720
  %tobool133 = icmp ne i64 %136, 0, !dbg !720
  br i1 %tobool133, label %if.then134, label %if.end135, !dbg !723

if.then134:                                       ; preds = %while.body
  br label %while.end, !dbg !720

if.end135:                                        ; preds = %while.body
  %137 = load ptr, ptr %x.addr, align 8, !dbg !723
  %nlimbs136 = getelementptr inbounds %struct.gcry_mpi, ptr %137, i32 0, i32 1, !dbg !723
  %138 = load i32, ptr %nlimbs136, align 4, !dbg !723
  %dec = add i32 %138, -1, !dbg !723
  store i32 %dec, ptr %nlimbs136, align 4, !dbg !723
  br label %while.cond, !dbg !718, !llvm.loop !724

while.end:                                        ; preds = %if.then134, %while.cond
  br label %do.cond137, !dbg !718

do.cond137:                                       ; preds = %while.end
  br label %do.end138, !dbg !718

do.end138:                                        ; preds = %do.cond137
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !725
  br label %cleanup, !dbg !725

cleanup:                                          ; preds = %do.end138, %if.then50, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbits) #6, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlimbs) #6, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %xsize) #6, !dbg !725
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !725

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !726 dso_local i64 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_lshift_limbs(ptr noundef %a, i32 noundef %count) #0 align 16 !dbg !729 {
entry:
  %a.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %ap = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !731, metadata !DIExpression()), !dbg !736
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !732, metadata !DIExpression()), !dbg !737
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap) #6, !dbg !738
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !733, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6, !dbg !740
  call void @llvm.dbg.declare(metadata ptr %n, metadata !734, metadata !DIExpression()), !dbg !741
  %0 = load ptr, ptr %a.addr, align 8, !dbg !742
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !743
  %1 = load i32, ptr %nlimbs, align 4, !dbg !743
  store i32 %1, ptr %n, align 4, !dbg !741
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !744
  call void @llvm.dbg.declare(metadata ptr %i, metadata !735, metadata !DIExpression()), !dbg !745
  %2 = load i32, ptr %count.addr, align 4, !dbg !746
  %tobool = icmp ne i32 %2, 0, !dbg !746
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !748

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %n, align 4, !dbg !749
  %tobool1 = icmp ne i32 %3, 0, !dbg !749
  br i1 %tobool1, label %if.end, label %if.then, !dbg !750

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !751

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !752

do.body:                                          ; preds = %if.end
  %4 = load ptr, ptr %a.addr, align 8, !dbg !753
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 0, !dbg !753
  %5 = load i32, ptr %alloced, align 8, !dbg !753
  %6 = load i32, ptr %n, align 4, !dbg !753
  %7 = load i32, ptr %count.addr, align 4, !dbg !753
  %add = add i32 %6, %7, !dbg !753
  %cmp = icmp ult i32 %5, %add, !dbg !753
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !756

if.then2:                                         ; preds = %do.body
  %8 = load ptr, ptr %a.addr, align 8, !dbg !753
  %9 = load i32, ptr %n, align 4, !dbg !753
  %10 = load i32, ptr %count.addr, align 4, !dbg !753
  %add3 = add i32 %9, %10, !dbg !753
  %call = call i32 @mpi_resize(ptr noundef %8, i32 noundef %add3) #7, !dbg !753
  br label %if.end4, !dbg !753

if.end4:                                          ; preds = %if.then2, %do.body
  br label %do.cond, !dbg !756

do.cond:                                          ; preds = %if.end4
  br label %do.end, !dbg !756

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %a.addr, align 8, !dbg !757
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 5, !dbg !758
  %12 = load ptr, ptr %d, align 8, !dbg !758
  store ptr %12, ptr %ap, align 8, !dbg !759
  %13 = load i32, ptr %n, align 4, !dbg !760
  %sub = sub i32 %13, 1, !dbg !762
  store i32 %sub, ptr %i, align 4, !dbg !763
  br label %for.cond, !dbg !764

for.cond:                                         ; preds = %for.inc, %do.end
  %14 = load i32, ptr %i, align 4, !dbg !765
  %cmp5 = icmp sge i32 %14, 0, !dbg !767
  br i1 %cmp5, label %for.body, label %for.end, !dbg !768

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %ap, align 8, !dbg !769
  %16 = load i32, ptr %i, align 4, !dbg !770
  %idxprom = sext i32 %16 to i64, !dbg !769
  %arrayidx = getelementptr i64, ptr %15, i64 %idxprom, !dbg !769
  %17 = load i64, ptr %arrayidx, align 8, !dbg !769
  %18 = load ptr, ptr %ap, align 8, !dbg !771
  %19 = load i32, ptr %i, align 4, !dbg !772
  %20 = load i32, ptr %count.addr, align 4, !dbg !773
  %add6 = add i32 %19, %20, !dbg !774
  %idxprom7 = zext i32 %add6 to i64, !dbg !771
  %arrayidx8 = getelementptr i64, ptr %18, i64 %idxprom7, !dbg !771
  store i64 %17, ptr %arrayidx8, align 8, !dbg !775
  br label %for.inc, !dbg !771

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !776
  %dec = add i32 %21, -1, !dbg !776
  store i32 %dec, ptr %i, align 4, !dbg !776
  br label %for.cond, !dbg !777, !llvm.loop !778

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !780
  br label %for.cond9, !dbg !782

for.cond9:                                        ; preds = %for.inc14, %for.end
  %22 = load i32, ptr %i, align 4, !dbg !783
  %23 = load i32, ptr %count.addr, align 4, !dbg !785
  %cmp10 = icmp ult i32 %22, %23, !dbg !786
  br i1 %cmp10, label %for.body11, label %for.end15, !dbg !787

for.body11:                                       ; preds = %for.cond9
  %24 = load ptr, ptr %ap, align 8, !dbg !788
  %25 = load i32, ptr %i, align 4, !dbg !789
  %idxprom12 = sext i32 %25 to i64, !dbg !788
  %arrayidx13 = getelementptr i64, ptr %24, i64 %idxprom12, !dbg !788
  store i64 0, ptr %arrayidx13, align 8, !dbg !790
  br label %for.inc14, !dbg !788

for.inc14:                                        ; preds = %for.body11
  %26 = load i32, ptr %i, align 4, !dbg !791
  %inc = add i32 %26, 1, !dbg !791
  store i32 %inc, ptr %i, align 4, !dbg !791
  br label %for.cond9, !dbg !792, !llvm.loop !793

for.end15:                                        ; preds = %for.cond9
  %27 = load i32, ptr %count.addr, align 4, !dbg !795
  %28 = load ptr, ptr %a.addr, align 8, !dbg !796
  %nlimbs16 = getelementptr inbounds %struct.gcry_mpi, ptr %28, i32 0, i32 1, !dbg !797
  %29 = load i32, ptr %nlimbs16, align 4, !dbg !798
  %add17 = add i32 %29, %27, !dbg !798
  store i32 %add17, ptr %nlimbs16, align 4, !dbg !798
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !799
  br label %cleanup, !dbg !799

cleanup:                                          ; preds = %for.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !799
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6, !dbg !799
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap) #6, !dbg !799
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !799

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_lshift(ptr noundef %x, ptr noundef %a, i32 noundef %n) #0 align 16 !dbg !800 {
entry:
  %x.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %nlimbs = alloca i32, align 4
  %nbits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %alimbs = alloca i32, align 4
  %asign = alloca i32, align 4
  %xp = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %_i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !802, metadata !DIExpression()), !dbg !815
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !803, metadata !DIExpression()), !dbg !816
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !804, metadata !DIExpression()), !dbg !817
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlimbs) #6, !dbg !818
  call void @llvm.dbg.declare(metadata ptr %nlimbs, metadata !805, metadata !DIExpression()), !dbg !819
  %0 = load i32, ptr %n.addr, align 4, !dbg !820
  %div = udiv i32 %0, 64, !dbg !821
  store i32 %div, ptr %nlimbs, align 4, !dbg !819
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbits) #6, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %nbits, metadata !806, metadata !DIExpression()), !dbg !823
  %1 = load i32, ptr %n.addr, align 4, !dbg !824
  %rem = urem i32 %1, 64, !dbg !825
  store i32 %rem, ptr %nbits, align 4, !dbg !823
  %2 = load ptr, ptr %x.addr, align 8, !dbg !826
  %3 = load ptr, ptr %a.addr, align 8, !dbg !828
  %cmp = icmp eq ptr %2, %3, !dbg !829
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !830

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %n.addr, align 4, !dbg !831
  %tobool = icmp ne i32 %4, 0, !dbg !831
  br i1 %tobool, label %if.end, label %if.then, !dbg !832

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !833

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %x.addr, align 8, !dbg !834
  %6 = load ptr, ptr %a.addr, align 8, !dbg !835
  %cmp1 = icmp ne ptr %5, %6, !dbg !836
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !837

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %alimbs) #6, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %alimbs, metadata !807, metadata !DIExpression()), !dbg !839
  %7 = load ptr, ptr %a.addr, align 8, !dbg !840
  %nlimbs3 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 1, !dbg !841
  %8 = load i32, ptr %nlimbs3, align 4, !dbg !841
  store i32 %8, ptr %alimbs, align 4, !dbg !839
  call void @llvm.lifetime.start.p0(i64 4, ptr %asign) #6, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %asign, metadata !810, metadata !DIExpression()), !dbg !843
  %9 = load ptr, ptr %a.addr, align 8, !dbg !844
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 3, !dbg !845
  %10 = load i32, ptr %sign, align 4, !dbg !845
  store i32 %10, ptr %asign, align 4, !dbg !843
  call void @llvm.lifetime.start.p0(i64 8, ptr %xp) #6, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %xp, metadata !811, metadata !DIExpression()), !dbg !847
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap) #6, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !812, metadata !DIExpression()), !dbg !848
  br label %do.body, !dbg !849

do.body:                                          ; preds = %if.then2
  %11 = load ptr, ptr %x.addr, align 8, !dbg !850
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 0, !dbg !850
  %12 = load i32, ptr %alloced, align 8, !dbg !850
  %13 = load i32, ptr %alimbs, align 4, !dbg !850
  %14 = load i32, ptr %nlimbs, align 4, !dbg !850
  %add = add i32 %13, %14, !dbg !850
  %add4 = add i32 %add, 1, !dbg !850
  %cmp5 = icmp ult i32 %12, %add4, !dbg !850
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !853

if.then6:                                         ; preds = %do.body
  %15 = load ptr, ptr %x.addr, align 8, !dbg !850
  %16 = load i32, ptr %alimbs, align 4, !dbg !850
  %17 = load i32, ptr %nlimbs, align 4, !dbg !850
  %add7 = add i32 %16, %17, !dbg !850
  %add8 = add i32 %add7, 1, !dbg !850
  %call = call i32 @mpi_resize(ptr noundef %15, i32 noundef %add8) #7, !dbg !850
  br label %if.end9, !dbg !850

if.end9:                                          ; preds = %if.then6, %do.body
  br label %do.cond, !dbg !853

do.cond:                                          ; preds = %if.end9
  br label %do.end, !dbg !853

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %x.addr, align 8, !dbg !854
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %18, i32 0, i32 5, !dbg !855
  %19 = load ptr, ptr %d, align 8, !dbg !855
  store ptr %19, ptr %xp, align 8, !dbg !856
  %20 = load ptr, ptr %a.addr, align 8, !dbg !857
  %d10 = getelementptr inbounds %struct.gcry_mpi, ptr %20, i32 0, i32 5, !dbg !858
  %21 = load ptr, ptr %d10, align 8, !dbg !858
  store ptr %21, ptr %ap, align 8, !dbg !859
  br label %do.body11, !dbg !860

do.body11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #6, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !813, metadata !DIExpression()), !dbg !861
  store i32 0, ptr %_i, align 4, !dbg !862
  br label %for.cond, !dbg !862

for.cond:                                         ; preds = %for.inc, %do.body11
  %22 = load i32, ptr %_i, align 4, !dbg !864
  %23 = load i32, ptr %alimbs, align 4, !dbg !864
  %cmp12 = icmp ult i32 %22, %23, !dbg !864
  br i1 %cmp12, label %for.body, label %for.end, !dbg !862

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %ap, align 8, !dbg !864
  %25 = load i32, ptr %_i, align 4, !dbg !864
  %idxprom = sext i32 %25 to i64, !dbg !864
  %arrayidx = getelementptr i64, ptr %24, i64 %idxprom, !dbg !864
  %26 = load i64, ptr %arrayidx, align 8, !dbg !864
  %27 = load ptr, ptr %xp, align 8, !dbg !864
  %28 = load i32, ptr %_i, align 4, !dbg !864
  %idxprom13 = sext i32 %28 to i64, !dbg !864
  %arrayidx14 = getelementptr i64, ptr %27, i64 %idxprom13, !dbg !864
  store i64 %26, ptr %arrayidx14, align 8, !dbg !864
  br label %for.inc, !dbg !864

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %_i, align 4, !dbg !864
  %inc = add i32 %29, 1, !dbg !864
  store i32 %inc, ptr %_i, align 4, !dbg !864
  br label %for.cond, !dbg !864, !llvm.loop !866

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #6, !dbg !860
  br label %do.cond15, !dbg !861

do.cond15:                                        ; preds = %for.end
  br label %do.end16, !dbg !861

do.end16:                                         ; preds = %do.cond15
  %30 = load i32, ptr %alimbs, align 4, !dbg !867
  %31 = load ptr, ptr %x.addr, align 8, !dbg !868
  %nlimbs17 = getelementptr inbounds %struct.gcry_mpi, ptr %31, i32 0, i32 1, !dbg !869
  store i32 %30, ptr %nlimbs17, align 4, !dbg !870
  %32 = load ptr, ptr %a.addr, align 8, !dbg !871
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 4, !dbg !872
  %33 = load i32, ptr %flags, align 8, !dbg !872
  %34 = load ptr, ptr %x.addr, align 8, !dbg !873
  %flags18 = getelementptr inbounds %struct.gcry_mpi, ptr %34, i32 0, i32 4, !dbg !874
  store i32 %33, ptr %flags18, align 8, !dbg !875
  %35 = load i32, ptr %asign, align 4, !dbg !876
  %36 = load ptr, ptr %x.addr, align 8, !dbg !877
  %sign19 = getelementptr inbounds %struct.gcry_mpi, ptr %36, i32 0, i32 3, !dbg !878
  store i32 %35, ptr %sign19, align 4, !dbg !879
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap) #6, !dbg !880
  call void @llvm.lifetime.end.p0(i64 8, ptr %xp) #6, !dbg !880
  call void @llvm.lifetime.end.p0(i64 4, ptr %asign) #6, !dbg !880
  call void @llvm.lifetime.end.p0(i64 4, ptr %alimbs) #6, !dbg !880
  br label %if.end20, !dbg !881

if.end20:                                         ; preds = %do.end16, %if.end
  %37 = load i32, ptr %nlimbs, align 4, !dbg !882
  %tobool21 = icmp ne i32 %37, 0, !dbg !882
  br i1 %tobool21, label %land.lhs.true22, label %if.else, !dbg !884

land.lhs.true22:                                  ; preds = %if.end20
  %38 = load i32, ptr %nbits, align 4, !dbg !885
  %tobool23 = icmp ne i32 %38, 0, !dbg !885
  br i1 %tobool23, label %if.else, label %if.then24, !dbg !886

if.then24:                                        ; preds = %land.lhs.true22
  %39 = load ptr, ptr %x.addr, align 8, !dbg !887
  %40 = load i32, ptr %nlimbs, align 4, !dbg !889
  call void @mpi_lshift_limbs(ptr noundef %39, i32 noundef %40) #7, !dbg !890
  br label %if.end29, !dbg !891

if.else:                                          ; preds = %land.lhs.true22, %if.end20
  %41 = load i32, ptr %n.addr, align 4, !dbg !892
  %tobool25 = icmp ne i32 %41, 0, !dbg !892
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !894

if.then26:                                        ; preds = %if.else
  %42 = load ptr, ptr %x.addr, align 8, !dbg !895
  %43 = load i32, ptr %nlimbs, align 4, !dbg !897
  %add27 = add i32 %43, 1, !dbg !898
  call void @mpi_lshift_limbs(ptr noundef %42, i32 noundef %add27) #7, !dbg !899
  %44 = load ptr, ptr %x.addr, align 8, !dbg !900
  %45 = load ptr, ptr %x.addr, align 8, !dbg !901
  %46 = load i32, ptr %nbits, align 4, !dbg !902
  %sub = sub i32 64, %46, !dbg !903
  call void @mpi_rshift(ptr noundef %44, ptr noundef %45, i32 noundef %sub) #7, !dbg !904
  br label %if.end28, !dbg !905

if.end28:                                         ; preds = %if.then26, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then24
  br label %do.body30, !dbg !906

do.body30:                                        ; preds = %if.end29
  br label %while.cond, !dbg !907

while.cond:                                       ; preds = %if.end40, %do.body30
  %47 = load ptr, ptr %x.addr, align 8, !dbg !907
  %nlimbs31 = getelementptr inbounds %struct.gcry_mpi, ptr %47, i32 0, i32 1, !dbg !907
  %48 = load i32, ptr %nlimbs31, align 4, !dbg !907
  %cmp32 = icmp sgt i32 %48, 0, !dbg !907
  br i1 %cmp32, label %while.body, label %while.end, !dbg !907

while.body:                                       ; preds = %while.cond
  %49 = load ptr, ptr %x.addr, align 8, !dbg !909
  %d33 = getelementptr inbounds %struct.gcry_mpi, ptr %49, i32 0, i32 5, !dbg !909
  %50 = load ptr, ptr %d33, align 8, !dbg !909
  %51 = load ptr, ptr %x.addr, align 8, !dbg !909
  %nlimbs34 = getelementptr inbounds %struct.gcry_mpi, ptr %51, i32 0, i32 1, !dbg !909
  %52 = load i32, ptr %nlimbs34, align 4, !dbg !909
  %sub35 = sub i32 %52, 1, !dbg !909
  %idxprom36 = sext i32 %sub35 to i64, !dbg !909
  %arrayidx37 = getelementptr i64, ptr %50, i64 %idxprom36, !dbg !909
  %53 = load i64, ptr %arrayidx37, align 8, !dbg !909
  %tobool38 = icmp ne i64 %53, 0, !dbg !909
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !912

if.then39:                                        ; preds = %while.body
  br label %while.end, !dbg !909

if.end40:                                         ; preds = %while.body
  %54 = load ptr, ptr %x.addr, align 8, !dbg !912
  %nlimbs41 = getelementptr inbounds %struct.gcry_mpi, ptr %54, i32 0, i32 1, !dbg !912
  %55 = load i32, ptr %nlimbs41, align 4, !dbg !912
  %dec = add i32 %55, -1, !dbg !912
  store i32 %dec, ptr %nlimbs41, align 4, !dbg !912
  br label %while.cond, !dbg !907, !llvm.loop !913

while.end:                                        ; preds = %if.then39, %while.cond
  br label %do.cond42, !dbg !907

do.cond42:                                        ; preds = %while.end
  br label %do.end43, !dbg !907

do.end43:                                         ; preds = %do.cond42
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !914
  br label %cleanup, !dbg !914

cleanup:                                          ; preds = %do.end43, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbits) #6, !dbg !914
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlimbs) #6, !dbg !914
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !914

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #5 align 16 !dbg !915 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #6, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !924, metadata !DIExpression()), !dbg !927
  store i32 -1, ptr %bitpos, align 4, !dbg !927
  %0 = load i32, ptr %bitpos, align 4, !dbg !928
  %1 = load i64, ptr %x.addr, align 8, !dbg !929
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #8, !dbg !928, !srcloc !930
  store i32 %2, ptr %bitpos, align 4, !dbg !928
  %3 = load i32, ptr %bitpos, align 4, !dbg !931
  %add = add i32 %3, 1, !dbg !932
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #6, !dbg !933
  ret i32 %add, !dbg !934
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_normalize287", scope: !2, file: !3, line: 35, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpi-bit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpi_bit\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpi-bit.ll lib/crypto/mpi/mpi-bit.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/mpi/mpi-bit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6cda42392ea8802881d5011b14280c8d")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !{!0, !10, !12, !14, !16, !18}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_get_nbits288", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_test_bit289", scope: !2, file: !3, line: 75, type: !5, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_set_highbit290", scope: !2, file: !3, line: 117, type: !5, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_clear_bit291", scope: !2, file: !3, line: 151, type: !5, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_rshift292", scope: !2, file: !3, line: 245, type: !5, isLocal: true, isDefinition: true)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 8, !"cf-protection-branch", i32 1}
!24 = !{i32 4, !"function_return_thunk_extern", i32 1}
!25 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{i32 1, !"override-stack-alignment", i32 8}
!28 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!29 = distinct !DISubprogram(name: "mpi_normalize", scope: !3, file: !3, line: 30, type: !30, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !45)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !7, line: 40, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !7, line: 29, size: 256, elements: !35)
!35 = !{!36, !38, !39, !40, !41, !43}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !34, file: !7, line: 30, baseType: !37, size: 32)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !34, file: !7, line: 31, baseType: !37, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !34, file: !7, line: 32, baseType: !37, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !34, file: !7, line: 33, baseType: !37, size: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !7, line: 34, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !34, file: !7, line: 37, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!45 = !{!46}
!46 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !3, line: 30, type: !32)
!47 = !DILocation(line: 30, column: 24, scope: !29)
!48 = !DILocation(line: 32, column: 2, scope: !29)
!49 = !DILocation(line: 32, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 32, column: 2)
!51 = distinct !DILexicalBlock(scope: !29, file: !3, line: 32, column: 2)
!52 = !DILocation(line: 32, column: 12, scope: !50)
!53 = !DILocation(line: 32, column: 19, scope: !50)
!54 = !DILocation(line: 32, column: 23, scope: !50)
!55 = !DILocation(line: 32, column: 26, scope: !50)
!56 = !DILocation(line: 32, column: 28, scope: !50)
!57 = !DILocation(line: 32, column: 31, scope: !50)
!58 = !DILocation(line: 32, column: 38, scope: !50)
!59 = !DILocation(line: 32, column: 22, scope: !50)
!60 = !DILocation(line: 0, scope: !50)
!61 = !DILocation(line: 32, column: 2, scope: !51)
!62 = !DILocation(line: 32, column: 44, scope: !50)
!63 = !DILocation(line: 32, column: 47, scope: !50)
!64 = !DILocation(line: 32, column: 53, scope: !50)
!65 = !DILocation(line: 32, column: 2, scope: !50)
!66 = distinct !{!66, !61, !67, !68, !69}
!67 = !DILocation(line: 33, column: 3, scope: !51)
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !DILocation(line: 34, column: 1, scope: !29)
!71 = distinct !DISubprogram(name: "mpi_get_nbits", scope: !3, file: !3, line: 40, type: !72, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!42, !32}
!74 = !{!75, !76, !77}
!75 = !DILocalVariable(name: "a", arg: 1, scope: !71, file: !3, line: 40, type: !32)
!76 = !DILocalVariable(name: "n", scope: !71, file: !3, line: 42, type: !42)
!77 = !DILocalVariable(name: "alimb", scope: !78, file: !3, line: 47, type: !6)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 46, column: 17)
!79 = distinct !DILexicalBlock(scope: !71, file: !3, line: 46, column: 6)
!80 = !DILocation(line: 40, column: 28, scope: !71)
!81 = !DILocation(line: 42, column: 2, scope: !71)
!82 = !DILocation(line: 42, column: 11, scope: !71)
!83 = !DILocation(line: 44, column: 16, scope: !71)
!84 = !DILocation(line: 44, column: 2, scope: !71)
!85 = !DILocation(line: 46, column: 6, scope: !79)
!86 = !DILocation(line: 46, column: 9, scope: !79)
!87 = !DILocation(line: 46, column: 6, scope: !71)
!88 = !DILocation(line: 47, column: 3, scope: !78)
!89 = !DILocation(line: 47, column: 14, scope: !78)
!90 = !DILocation(line: 47, column: 22, scope: !78)
!91 = !DILocation(line: 47, column: 25, scope: !78)
!92 = !DILocation(line: 47, column: 27, scope: !78)
!93 = !DILocation(line: 47, column: 30, scope: !78)
!94 = !DILocation(line: 47, column: 37, scope: !78)
!95 = !DILocation(line: 48, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !78, file: !3, line: 48, column: 7)
!97 = !DILocation(line: 48, column: 7, scope: !78)
!98 = !DILocation(line: 49, column: 28, scope: !96)
!99 = !DILocation(line: 49, column: 8, scope: !96)
!100 = !DILocation(line: 49, column: 6, scope: !96)
!101 = !DILocation(line: 49, column: 4, scope: !96)
!102 = !DILocation(line: 51, column: 6, scope: !96)
!103 = !DILocation(line: 52, column: 27, scope: !78)
!104 = !DILocation(line: 52, column: 25, scope: !78)
!105 = !DILocation(line: 52, column: 32, scope: !78)
!106 = !DILocation(line: 52, column: 35, scope: !78)
!107 = !DILocation(line: 52, column: 42, scope: !78)
!108 = !DILocation(line: 52, column: 47, scope: !78)
!109 = !DILocation(line: 52, column: 29, scope: !78)
!110 = !DILocation(line: 52, column: 5, scope: !78)
!111 = !DILocation(line: 53, column: 2, scope: !79)
!112 = !DILocation(line: 53, column: 2, scope: !78)
!113 = !DILocation(line: 54, column: 5, scope: !79)
!114 = !DILocation(line: 55, column: 9, scope: !71)
!115 = !DILocation(line: 56, column: 1, scope: !71)
!116 = !DILocation(line: 55, column: 2, scope: !71)
!117 = distinct !DISubprogram(name: "count_leading_zeros", scope: !118, file: !118, line: 23, type: !119, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!118 = !DIFile(filename: "./include/linux/count_zeros.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31ae7e2ac9cfc331b9e745b8587e0cf8")
!119 = !DISubroutineType(types: !120)
!120 = !{!37, !8}
!121 = !{!122}
!122 = !DILocalVariable(name: "x", arg: 1, scope: !117, file: !118, line: 23, type: !8)
!123 = !DILocation(line: 23, column: 53, scope: !117)
!124 = !DILocation(line: 28, column: 32, scope: !125)
!125 = distinct !DILexicalBlock(scope: !117, file: !118, line: 25, column: 6)
!126 = !DILocation(line: 28, column: 26, scope: !125)
!127 = !DILocation(line: 28, column: 24, scope: !125)
!128 = !DILocation(line: 28, column: 3, scope: !125)
!129 = distinct !DISubprogram(name: "mpi_test_bit", scope: !3, file: !3, line: 62, type: !130, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{!37, !32, !42}
!132 = !{!133, !134, !135, !136, !137}
!133 = !DILocalVariable(name: "a", arg: 1, scope: !129, file: !3, line: 62, type: !32)
!134 = !DILocalVariable(name: "n", arg: 2, scope: !129, file: !3, line: 62, type: !42)
!135 = !DILocalVariable(name: "limbno", scope: !129, file: !3, line: 64, type: !42)
!136 = !DILocalVariable(name: "bitno", scope: !129, file: !3, line: 64, type: !42)
!137 = !DILocalVariable(name: "limb", scope: !129, file: !3, line: 65, type: !6)
!138 = !DILocation(line: 62, column: 22, scope: !129)
!139 = !DILocation(line: 62, column: 38, scope: !129)
!140 = !DILocation(line: 64, column: 2, scope: !129)
!141 = !DILocation(line: 64, column: 15, scope: !129)
!142 = !DILocation(line: 64, column: 23, scope: !129)
!143 = !DILocation(line: 65, column: 2, scope: !129)
!144 = !DILocation(line: 65, column: 13, scope: !129)
!145 = !DILocation(line: 67, column: 11, scope: !129)
!146 = !DILocation(line: 67, column: 13, scope: !129)
!147 = !DILocation(line: 67, column: 9, scope: !129)
!148 = !DILocation(line: 68, column: 11, scope: !129)
!149 = !DILocation(line: 68, column: 13, scope: !129)
!150 = !DILocation(line: 68, column: 9, scope: !129)
!151 = !DILocation(line: 70, column: 6, scope: !152)
!152 = distinct !DILexicalBlock(scope: !129, file: !3, line: 70, column: 6)
!153 = !DILocation(line: 70, column: 16, scope: !152)
!154 = !DILocation(line: 70, column: 19, scope: !152)
!155 = !DILocation(line: 70, column: 13, scope: !152)
!156 = !DILocation(line: 70, column: 6, scope: !129)
!157 = !DILocation(line: 71, column: 3, scope: !152)
!158 = !DILocation(line: 72, column: 9, scope: !129)
!159 = !DILocation(line: 72, column: 12, scope: !129)
!160 = !DILocation(line: 72, column: 14, scope: !129)
!161 = !DILocation(line: 72, column: 7, scope: !129)
!162 = !DILocation(line: 73, column: 10, scope: !129)
!163 = !DILocation(line: 73, column: 30, scope: !129)
!164 = !DILocation(line: 73, column: 27, scope: !129)
!165 = !DILocation(line: 73, column: 15, scope: !129)
!166 = !DILocation(line: 73, column: 9, scope: !129)
!167 = !DILocation(line: 73, column: 2, scope: !129)
!168 = !DILocation(line: 74, column: 1, scope: !129)
!169 = distinct !DISubprogram(name: "mpi_set_bit", scope: !3, file: !3, line: 80, type: !170, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !32, !42}
!172 = !{!173, !174, !175, !176, !177}
!173 = !DILocalVariable(name: "a", arg: 1, scope: !169, file: !3, line: 80, type: !32)
!174 = !DILocalVariable(name: "n", arg: 2, scope: !169, file: !3, line: 80, type: !42)
!175 = !DILocalVariable(name: "i", scope: !169, file: !3, line: 82, type: !42)
!176 = !DILocalVariable(name: "limbno", scope: !169, file: !3, line: 82, type: !42)
!177 = !DILocalVariable(name: "bitno", scope: !169, file: !3, line: 82, type: !42)
!178 = !DILocation(line: 80, column: 22, scope: !169)
!179 = !DILocation(line: 80, column: 38, scope: !169)
!180 = !DILocation(line: 82, column: 2, scope: !169)
!181 = !DILocation(line: 82, column: 15, scope: !169)
!182 = !DILocation(line: 82, column: 18, scope: !169)
!183 = !DILocation(line: 82, column: 26, scope: !169)
!184 = !DILocation(line: 84, column: 11, scope: !169)
!185 = !DILocation(line: 84, column: 13, scope: !169)
!186 = !DILocation(line: 84, column: 9, scope: !169)
!187 = !DILocation(line: 85, column: 11, scope: !169)
!188 = !DILocation(line: 85, column: 13, scope: !169)
!189 = !DILocation(line: 85, column: 9, scope: !169)
!190 = !DILocation(line: 87, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !169, file: !3, line: 87, column: 6)
!192 = !DILocation(line: 87, column: 16, scope: !191)
!193 = !DILocation(line: 87, column: 19, scope: !191)
!194 = !DILocation(line: 87, column: 13, scope: !191)
!195 = !DILocation(line: 87, column: 6, scope: !169)
!196 = !DILocation(line: 88, column: 12, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 88, column: 3)
!198 = distinct !DILexicalBlock(scope: !191, file: !3, line: 87, column: 27)
!199 = !DILocation(line: 88, column: 15, scope: !197)
!200 = !DILocation(line: 88, column: 10, scope: !197)
!201 = !DILocation(line: 88, column: 8, scope: !197)
!202 = !DILocation(line: 88, column: 23, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !3, line: 88, column: 3)
!204 = !DILocation(line: 88, column: 27, scope: !203)
!205 = !DILocation(line: 88, column: 30, scope: !203)
!206 = !DILocation(line: 88, column: 25, scope: !203)
!207 = !DILocation(line: 88, column: 3, scope: !197)
!208 = !DILocation(line: 89, column: 4, scope: !203)
!209 = !DILocation(line: 89, column: 7, scope: !203)
!210 = !DILocation(line: 89, column: 9, scope: !203)
!211 = !DILocation(line: 89, column: 12, scope: !203)
!212 = !DILocation(line: 88, column: 40, scope: !203)
!213 = !DILocation(line: 88, column: 3, scope: !203)
!214 = distinct !{!214, !207, !215, !68, !69}
!215 = !DILocation(line: 89, column: 14, scope: !197)
!216 = !DILocation(line: 90, column: 14, scope: !198)
!217 = !DILocation(line: 90, column: 17, scope: !198)
!218 = !DILocation(line: 90, column: 23, scope: !198)
!219 = !DILocation(line: 90, column: 3, scope: !198)
!220 = !DILocation(line: 91, column: 15, scope: !198)
!221 = !DILocation(line: 91, column: 21, scope: !198)
!222 = !DILocation(line: 91, column: 3, scope: !198)
!223 = !DILocation(line: 91, column: 6, scope: !198)
!224 = !DILocation(line: 91, column: 13, scope: !198)
!225 = !DILocation(line: 92, column: 2, scope: !198)
!226 = !DILocation(line: 93, column: 29, scope: !169)
!227 = !DILocation(line: 93, column: 27, scope: !169)
!228 = !DILocation(line: 93, column: 2, scope: !169)
!229 = !DILocation(line: 93, column: 5, scope: !169)
!230 = !DILocation(line: 93, column: 7, scope: !169)
!231 = !DILocation(line: 93, column: 15, scope: !169)
!232 = !DILocation(line: 94, column: 1, scope: !169)
!233 = !DISubprogram(name: "mpi_resize", scope: !7, file: !7, line: 49, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = distinct !DISubprogram(name: "mpi_set_highbit", scope: !3, file: !3, line: 99, type: !170, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!235 = !{!236, !237, !238, !239, !240}
!236 = !DILocalVariable(name: "a", arg: 1, scope: !234, file: !3, line: 99, type: !32)
!237 = !DILocalVariable(name: "n", arg: 2, scope: !234, file: !3, line: 99, type: !42)
!238 = !DILocalVariable(name: "i", scope: !234, file: !3, line: 101, type: !42)
!239 = !DILocalVariable(name: "limbno", scope: !234, file: !3, line: 101, type: !42)
!240 = !DILocalVariable(name: "bitno", scope: !234, file: !3, line: 101, type: !42)
!241 = !DILocation(line: 99, column: 26, scope: !234)
!242 = !DILocation(line: 99, column: 42, scope: !234)
!243 = !DILocation(line: 101, column: 2, scope: !234)
!244 = !DILocation(line: 101, column: 15, scope: !234)
!245 = !DILocation(line: 101, column: 18, scope: !234)
!246 = !DILocation(line: 101, column: 26, scope: !234)
!247 = !DILocation(line: 103, column: 11, scope: !234)
!248 = !DILocation(line: 103, column: 13, scope: !234)
!249 = !DILocation(line: 103, column: 9, scope: !234)
!250 = !DILocation(line: 104, column: 11, scope: !234)
!251 = !DILocation(line: 104, column: 13, scope: !234)
!252 = !DILocation(line: 104, column: 9, scope: !234)
!253 = !DILocation(line: 106, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !234, file: !3, line: 106, column: 6)
!255 = !DILocation(line: 106, column: 16, scope: !254)
!256 = !DILocation(line: 106, column: 19, scope: !254)
!257 = !DILocation(line: 106, column: 13, scope: !254)
!258 = !DILocation(line: 106, column: 6, scope: !234)
!259 = !DILocation(line: 107, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 107, column: 3)
!261 = distinct !DILexicalBlock(scope: !254, file: !3, line: 106, column: 27)
!262 = !DILocation(line: 107, column: 15, scope: !260)
!263 = !DILocation(line: 107, column: 10, scope: !260)
!264 = !DILocation(line: 107, column: 8, scope: !260)
!265 = !DILocation(line: 107, column: 23, scope: !266)
!266 = distinct !DILexicalBlock(scope: !260, file: !3, line: 107, column: 3)
!267 = !DILocation(line: 107, column: 27, scope: !266)
!268 = !DILocation(line: 107, column: 30, scope: !266)
!269 = !DILocation(line: 107, column: 25, scope: !266)
!270 = !DILocation(line: 107, column: 3, scope: !260)
!271 = !DILocation(line: 108, column: 4, scope: !266)
!272 = !DILocation(line: 108, column: 7, scope: !266)
!273 = !DILocation(line: 108, column: 9, scope: !266)
!274 = !DILocation(line: 108, column: 12, scope: !266)
!275 = !DILocation(line: 107, column: 40, scope: !266)
!276 = !DILocation(line: 107, column: 3, scope: !266)
!277 = distinct !{!277, !270, !278, !68, !69}
!278 = !DILocation(line: 108, column: 14, scope: !260)
!279 = !DILocation(line: 109, column: 14, scope: !261)
!280 = !DILocation(line: 109, column: 17, scope: !261)
!281 = !DILocation(line: 109, column: 23, scope: !261)
!282 = !DILocation(line: 109, column: 3, scope: !261)
!283 = !DILocation(line: 110, column: 15, scope: !261)
!284 = !DILocation(line: 110, column: 21, scope: !261)
!285 = !DILocation(line: 110, column: 3, scope: !261)
!286 = !DILocation(line: 110, column: 6, scope: !261)
!287 = !DILocation(line: 110, column: 13, scope: !261)
!288 = !DILocation(line: 111, column: 2, scope: !261)
!289 = !DILocation(line: 112, column: 29, scope: !234)
!290 = !DILocation(line: 112, column: 27, scope: !234)
!291 = !DILocation(line: 112, column: 2, scope: !234)
!292 = !DILocation(line: 112, column: 5, scope: !234)
!293 = !DILocation(line: 112, column: 7, scope: !234)
!294 = !DILocation(line: 112, column: 15, scope: !234)
!295 = !DILocation(line: 113, column: 12, scope: !296)
!296 = distinct !DILexicalBlock(scope: !234, file: !3, line: 113, column: 2)
!297 = !DILocation(line: 113, column: 7, scope: !296)
!298 = !DILocation(line: 113, column: 16, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 113, column: 2)
!300 = !DILocation(line: 113, column: 22, scope: !299)
!301 = !DILocation(line: 113, column: 2, scope: !296)
!302 = !DILocation(line: 114, column: 33, scope: !299)
!303 = !DILocation(line: 114, column: 30, scope: !299)
!304 = !DILocation(line: 114, column: 19, scope: !299)
!305 = !DILocation(line: 114, column: 3, scope: !299)
!306 = !DILocation(line: 114, column: 6, scope: !299)
!307 = !DILocation(line: 114, column: 8, scope: !299)
!308 = !DILocation(line: 114, column: 16, scope: !299)
!309 = !DILocation(line: 113, column: 48, scope: !299)
!310 = !DILocation(line: 113, column: 2, scope: !299)
!311 = distinct !{!311, !301, !312, !68, !69}
!312 = !DILocation(line: 114, column: 38, scope: !296)
!313 = !DILocation(line: 115, column: 14, scope: !234)
!314 = !DILocation(line: 115, column: 20, scope: !234)
!315 = !DILocation(line: 115, column: 2, scope: !234)
!316 = !DILocation(line: 115, column: 5, scope: !234)
!317 = !DILocation(line: 115, column: 12, scope: !234)
!318 = !DILocation(line: 116, column: 1, scope: !234)
!319 = distinct !DISubprogram(name: "mpi_clear_highbit", scope: !3, file: !3, line: 122, type: !170, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!320 = !{!321, !322, !323, !324}
!321 = !DILocalVariable(name: "a", arg: 1, scope: !319, file: !3, line: 122, type: !32)
!322 = !DILocalVariable(name: "n", arg: 2, scope: !319, file: !3, line: 122, type: !42)
!323 = !DILocalVariable(name: "limbno", scope: !319, file: !3, line: 124, type: !42)
!324 = !DILocalVariable(name: "bitno", scope: !319, file: !3, line: 124, type: !42)
!325 = !DILocation(line: 122, column: 28, scope: !319)
!326 = !DILocation(line: 122, column: 44, scope: !319)
!327 = !DILocation(line: 124, column: 2, scope: !319)
!328 = !DILocation(line: 124, column: 15, scope: !319)
!329 = !DILocation(line: 124, column: 23, scope: !319)
!330 = !DILocation(line: 126, column: 11, scope: !319)
!331 = !DILocation(line: 126, column: 13, scope: !319)
!332 = !DILocation(line: 126, column: 9, scope: !319)
!333 = !DILocation(line: 127, column: 11, scope: !319)
!334 = !DILocation(line: 127, column: 13, scope: !319)
!335 = !DILocation(line: 127, column: 9, scope: !319)
!336 = !DILocation(line: 129, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !319, file: !3, line: 129, column: 6)
!338 = !DILocation(line: 129, column: 16, scope: !337)
!339 = !DILocation(line: 129, column: 19, scope: !337)
!340 = !DILocation(line: 129, column: 13, scope: !337)
!341 = !DILocation(line: 129, column: 6, scope: !319)
!342 = !DILocation(line: 130, column: 3, scope: !337)
!343 = !DILocation(line: 132, column: 2, scope: !319)
!344 = !DILocation(line: 132, column: 10, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 132, column: 2)
!346 = distinct !DILexicalBlock(scope: !319, file: !3, line: 132, column: 2)
!347 = !DILocation(line: 132, column: 16, scope: !345)
!348 = !DILocation(line: 132, column: 2, scope: !346)
!349 = !DILocation(line: 133, column: 33, scope: !345)
!350 = !DILocation(line: 133, column: 30, scope: !345)
!351 = !DILocation(line: 133, column: 19, scope: !345)
!352 = !DILocation(line: 133, column: 3, scope: !345)
!353 = !DILocation(line: 133, column: 6, scope: !345)
!354 = !DILocation(line: 133, column: 8, scope: !345)
!355 = !DILocation(line: 133, column: 16, scope: !345)
!356 = !DILocation(line: 132, column: 42, scope: !345)
!357 = !DILocation(line: 132, column: 2, scope: !345)
!358 = distinct !{!358, !348, !359, !68, !69}
!359 = !DILocation(line: 133, column: 38, scope: !346)
!360 = !DILocation(line: 134, column: 14, scope: !319)
!361 = !DILocation(line: 134, column: 20, scope: !319)
!362 = !DILocation(line: 134, column: 2, scope: !319)
!363 = !DILocation(line: 134, column: 5, scope: !319)
!364 = !DILocation(line: 134, column: 12, scope: !319)
!365 = !DILocation(line: 135, column: 1, scope: !319)
!366 = distinct !DISubprogram(name: "mpi_clear_bit", scope: !3, file: !3, line: 140, type: !170, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!367 = !{!368, !369, !370, !371}
!368 = !DILocalVariable(name: "a", arg: 1, scope: !366, file: !3, line: 140, type: !32)
!369 = !DILocalVariable(name: "n", arg: 2, scope: !366, file: !3, line: 140, type: !42)
!370 = !DILocalVariable(name: "limbno", scope: !366, file: !3, line: 142, type: !42)
!371 = !DILocalVariable(name: "bitno", scope: !366, file: !3, line: 142, type: !42)
!372 = !DILocation(line: 140, column: 24, scope: !366)
!373 = !DILocation(line: 140, column: 40, scope: !366)
!374 = !DILocation(line: 142, column: 2, scope: !366)
!375 = !DILocation(line: 142, column: 15, scope: !366)
!376 = !DILocation(line: 142, column: 23, scope: !366)
!377 = !DILocation(line: 144, column: 11, scope: !366)
!378 = !DILocation(line: 144, column: 13, scope: !366)
!379 = !DILocation(line: 144, column: 9, scope: !366)
!380 = !DILocation(line: 145, column: 11, scope: !366)
!381 = !DILocation(line: 145, column: 13, scope: !366)
!382 = !DILocation(line: 145, column: 9, scope: !366)
!383 = !DILocation(line: 147, column: 6, scope: !384)
!384 = distinct !DILexicalBlock(scope: !366, file: !3, line: 147, column: 6)
!385 = !DILocation(line: 147, column: 16, scope: !384)
!386 = !DILocation(line: 147, column: 19, scope: !384)
!387 = !DILocation(line: 147, column: 13, scope: !384)
!388 = !DILocation(line: 147, column: 6, scope: !366)
!389 = !DILocation(line: 148, column: 3, scope: !384)
!390 = !DILocation(line: 149, column: 32, scope: !366)
!391 = !DILocation(line: 149, column: 29, scope: !366)
!392 = !DILocation(line: 149, column: 18, scope: !366)
!393 = !DILocation(line: 149, column: 2, scope: !366)
!394 = !DILocation(line: 149, column: 5, scope: !366)
!395 = !DILocation(line: 149, column: 7, scope: !366)
!396 = !DILocation(line: 149, column: 15, scope: !366)
!397 = !DILocation(line: 150, column: 1, scope: !366)
!398 = distinct !DISubprogram(name: "mpi_rshift_limbs", scope: !3, file: !3, line: 158, type: !170, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !399)
!399 = !{!400, !401, !402, !405, !407}
!400 = !DILocalVariable(name: "a", arg: 1, scope: !398, file: !3, line: 158, type: !32)
!401 = !DILocalVariable(name: "count", arg: 2, scope: !398, file: !3, line: 158, type: !42)
!402 = !DILocalVariable(name: "ap", scope: !398, file: !3, line: 160, type: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !404, line: 52, baseType: !44)
!404 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!405 = !DILocalVariable(name: "n", scope: !398, file: !3, line: 161, type: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !404, line: 53, baseType: !37)
!407 = !DILocalVariable(name: "i", scope: !398, file: !3, line: 162, type: !42)
!408 = !DILocation(line: 158, column: 27, scope: !398)
!409 = !DILocation(line: 158, column: 43, scope: !398)
!410 = !DILocation(line: 160, column: 2, scope: !398)
!411 = !DILocation(line: 160, column: 12, scope: !398)
!412 = !DILocation(line: 160, column: 17, scope: !398)
!413 = !DILocation(line: 160, column: 20, scope: !398)
!414 = !DILocation(line: 161, column: 2, scope: !398)
!415 = !DILocation(line: 161, column: 13, scope: !398)
!416 = !DILocation(line: 161, column: 17, scope: !398)
!417 = !DILocation(line: 161, column: 20, scope: !398)
!418 = !DILocation(line: 162, column: 2, scope: !398)
!419 = !DILocation(line: 162, column: 15, scope: !398)
!420 = !DILocation(line: 164, column: 6, scope: !421)
!421 = distinct !DILexicalBlock(scope: !398, file: !3, line: 164, column: 6)
!422 = !DILocation(line: 164, column: 15, scope: !421)
!423 = !DILocation(line: 164, column: 12, scope: !421)
!424 = !DILocation(line: 164, column: 6, scope: !398)
!425 = !DILocation(line: 165, column: 3, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !3, line: 164, column: 18)
!427 = !DILocation(line: 165, column: 6, scope: !426)
!428 = !DILocation(line: 165, column: 13, scope: !426)
!429 = !DILocation(line: 166, column: 3, scope: !426)
!430 = !DILocation(line: 169, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !398, file: !3, line: 169, column: 2)
!432 = !DILocation(line: 169, column: 7, scope: !431)
!433 = !DILocation(line: 169, column: 14, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !3, line: 169, column: 2)
!435 = !DILocation(line: 169, column: 18, scope: !434)
!436 = !DILocation(line: 169, column: 22, scope: !434)
!437 = !DILocation(line: 169, column: 20, scope: !434)
!438 = !DILocation(line: 169, column: 16, scope: !434)
!439 = !DILocation(line: 169, column: 2, scope: !431)
!440 = !DILocation(line: 170, column: 11, scope: !434)
!441 = !DILocation(line: 170, column: 14, scope: !434)
!442 = !DILocation(line: 170, column: 16, scope: !434)
!443 = !DILocation(line: 170, column: 15, scope: !434)
!444 = !DILocation(line: 170, column: 3, scope: !434)
!445 = !DILocation(line: 170, column: 6, scope: !434)
!446 = !DILocation(line: 170, column: 9, scope: !434)
!447 = !DILocation(line: 169, column: 30, scope: !434)
!448 = !DILocation(line: 169, column: 2, scope: !434)
!449 = distinct !{!449, !439, !450, !68, !69}
!450 = !DILocation(line: 170, column: 21, scope: !431)
!451 = !DILocation(line: 171, column: 2, scope: !398)
!452 = !DILocation(line: 171, column: 5, scope: !398)
!453 = !DILocation(line: 171, column: 8, scope: !398)
!454 = !DILocation(line: 172, column: 15, scope: !398)
!455 = !DILocation(line: 172, column: 2, scope: !398)
!456 = !DILocation(line: 172, column: 5, scope: !398)
!457 = !DILocation(line: 172, column: 12, scope: !398)
!458 = !DILocation(line: 173, column: 1, scope: !398)
!459 = distinct !DISubprogram(name: "mpi_rshift", scope: !3, file: !3, line: 178, type: !460, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !32, !32, !42}
!462 = !{!463, !464, !465, !466, !467, !468, !469}
!463 = !DILocalVariable(name: "x", arg: 1, scope: !459, file: !3, line: 178, type: !32)
!464 = !DILocalVariable(name: "a", arg: 2, scope: !459, file: !3, line: 178, type: !32)
!465 = !DILocalVariable(name: "n", arg: 3, scope: !459, file: !3, line: 178, type: !42)
!466 = !DILocalVariable(name: "xsize", scope: !459, file: !3, line: 180, type: !406)
!467 = !DILocalVariable(name: "i", scope: !459, file: !3, line: 181, type: !42)
!468 = !DILocalVariable(name: "nlimbs", scope: !459, file: !3, line: 182, type: !42)
!469 = !DILocalVariable(name: "nbits", scope: !459, file: !3, line: 183, type: !42)
!470 = !DILocation(line: 178, column: 21, scope: !459)
!471 = !DILocation(line: 178, column: 28, scope: !459)
!472 = !DILocation(line: 178, column: 44, scope: !459)
!473 = !DILocation(line: 180, column: 2, scope: !459)
!474 = !DILocation(line: 180, column: 13, scope: !459)
!475 = !DILocation(line: 181, column: 2, scope: !459)
!476 = !DILocation(line: 181, column: 15, scope: !459)
!477 = !DILocation(line: 182, column: 2, scope: !459)
!478 = !DILocation(line: 182, column: 15, scope: !459)
!479 = !DILocation(line: 182, column: 25, scope: !459)
!480 = !DILocation(line: 182, column: 26, scope: !459)
!481 = !DILocation(line: 183, column: 2, scope: !459)
!482 = !DILocation(line: 183, column: 15, scope: !459)
!483 = !DILocation(line: 183, column: 24, scope: !459)
!484 = !DILocation(line: 183, column: 25, scope: !459)
!485 = !DILocation(line: 185, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !459, file: !3, line: 185, column: 6)
!487 = !DILocation(line: 185, column: 11, scope: !486)
!488 = !DILocation(line: 185, column: 8, scope: !486)
!489 = !DILocation(line: 185, column: 6, scope: !459)
!490 = !DILocation(line: 187, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 187, column: 7)
!492 = distinct !DILexicalBlock(scope: !486, file: !3, line: 185, column: 14)
!493 = !DILocation(line: 187, column: 17, scope: !491)
!494 = !DILocation(line: 187, column: 20, scope: !491)
!495 = !DILocation(line: 187, column: 14, scope: !491)
!496 = !DILocation(line: 187, column: 7, scope: !492)
!497 = !DILocation(line: 188, column: 4, scope: !498)
!498 = distinct !DILexicalBlock(scope: !491, file: !3, line: 187, column: 28)
!499 = !DILocation(line: 188, column: 7, scope: !498)
!500 = !DILocation(line: 188, column: 14, scope: !498)
!501 = !DILocation(line: 189, column: 4, scope: !498)
!502 = !DILocation(line: 192, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !492, file: !3, line: 192, column: 7)
!504 = !DILocation(line: 192, column: 7, scope: !492)
!505 = !DILocation(line: 193, column: 11, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 193, column: 4)
!507 = distinct !DILexicalBlock(scope: !503, file: !3, line: 192, column: 15)
!508 = !DILocation(line: 193, column: 9, scope: !506)
!509 = !DILocation(line: 193, column: 16, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !3, line: 193, column: 4)
!511 = !DILocation(line: 193, column: 20, scope: !510)
!512 = !DILocation(line: 193, column: 23, scope: !510)
!513 = !DILocation(line: 193, column: 32, scope: !510)
!514 = !DILocation(line: 193, column: 30, scope: !510)
!515 = !DILocation(line: 193, column: 18, scope: !510)
!516 = !DILocation(line: 193, column: 4, scope: !506)
!517 = !DILocation(line: 194, column: 15, scope: !510)
!518 = !DILocation(line: 194, column: 18, scope: !510)
!519 = !DILocation(line: 194, column: 20, scope: !510)
!520 = !DILocation(line: 194, column: 22, scope: !510)
!521 = !DILocation(line: 194, column: 21, scope: !510)
!522 = !DILocation(line: 194, column: 5, scope: !510)
!523 = !DILocation(line: 194, column: 8, scope: !510)
!524 = !DILocation(line: 194, column: 10, scope: !510)
!525 = !DILocation(line: 194, column: 13, scope: !510)
!526 = !DILocation(line: 193, column: 41, scope: !510)
!527 = !DILocation(line: 193, column: 4, scope: !510)
!528 = distinct !{!528, !516, !529, !68, !69}
!529 = !DILocation(line: 194, column: 28, scope: !506)
!530 = !DILocation(line: 195, column: 4, scope: !507)
!531 = !DILocation(line: 195, column: 7, scope: !507)
!532 = !DILocation(line: 195, column: 9, scope: !507)
!533 = !DILocation(line: 195, column: 12, scope: !507)
!534 = !DILocation(line: 196, column: 17, scope: !507)
!535 = !DILocation(line: 196, column: 4, scope: !507)
!536 = !DILocation(line: 196, column: 7, scope: !507)
!537 = !DILocation(line: 196, column: 14, scope: !507)
!538 = !DILocation(line: 197, column: 3, scope: !507)
!539 = !DILocation(line: 198, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !492, file: !3, line: 198, column: 7)
!541 = !DILocation(line: 198, column: 10, scope: !540)
!542 = !DILocation(line: 198, column: 17, scope: !540)
!543 = !DILocation(line: 198, column: 20, scope: !540)
!544 = !DILocation(line: 198, column: 7, scope: !492)
!545 = !DILocation(line: 199, column: 19, scope: !540)
!546 = !DILocation(line: 199, column: 22, scope: !540)
!547 = !DILocation(line: 199, column: 25, scope: !540)
!548 = !DILocation(line: 199, column: 28, scope: !540)
!549 = !DILocation(line: 199, column: 31, scope: !540)
!550 = !DILocation(line: 199, column: 34, scope: !540)
!551 = !DILocation(line: 199, column: 42, scope: !540)
!552 = !DILocation(line: 199, column: 4, scope: !540)
!553 = !DILocation(line: 200, column: 2, scope: !492)
!554 = !DILocation(line: 200, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !486, file: !3, line: 200, column: 13)
!556 = !DILocation(line: 200, column: 13, scope: !486)
!557 = !DILocation(line: 202, column: 11, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !3, line: 200, column: 21)
!559 = !DILocation(line: 202, column: 14, scope: !558)
!560 = !DILocation(line: 202, column: 9, scope: !558)
!561 = !DILocation(line: 203, column: 13, scope: !558)
!562 = !DILocation(line: 203, column: 16, scope: !558)
!563 = !DILocation(line: 203, column: 3, scope: !558)
!564 = !DILocation(line: 203, column: 6, scope: !558)
!565 = !DILocation(line: 203, column: 11, scope: !558)
!566 = !DILocation(line: 204, column: 3, scope: !558)
!567 = !DILocation(line: 204, column: 3, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 204, column: 3)
!569 = distinct !DILexicalBlock(scope: !558, file: !3, line: 204, column: 3)
!570 = !DILocation(line: 204, column: 3, scope: !569)
!571 = !DILocation(line: 205, column: 15, scope: !558)
!572 = !DILocation(line: 205, column: 3, scope: !558)
!573 = !DILocation(line: 205, column: 6, scope: !558)
!574 = !DILocation(line: 205, column: 13, scope: !558)
!575 = !DILocation(line: 206, column: 10, scope: !576)
!576 = distinct !DILexicalBlock(scope: !558, file: !3, line: 206, column: 3)
!577 = !DILocation(line: 206, column: 8, scope: !576)
!578 = !DILocation(line: 206, column: 15, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !3, line: 206, column: 3)
!580 = !DILocation(line: 206, column: 19, scope: !579)
!581 = !DILocation(line: 206, column: 22, scope: !579)
!582 = !DILocation(line: 206, column: 17, scope: !579)
!583 = !DILocation(line: 206, column: 3, scope: !576)
!584 = !DILocation(line: 207, column: 14, scope: !579)
!585 = !DILocation(line: 207, column: 17, scope: !579)
!586 = !DILocation(line: 207, column: 19, scope: !579)
!587 = !DILocation(line: 207, column: 4, scope: !579)
!588 = !DILocation(line: 207, column: 7, scope: !579)
!589 = !DILocation(line: 207, column: 9, scope: !579)
!590 = !DILocation(line: 207, column: 12, scope: !579)
!591 = !DILocation(line: 206, column: 31, scope: !579)
!592 = !DILocation(line: 206, column: 3, scope: !579)
!593 = distinct !{!593, !583, !594, !68, !69}
!594 = !DILocation(line: 207, column: 20, scope: !576)
!595 = !DILocation(line: 208, column: 15, scope: !558)
!596 = !DILocation(line: 208, column: 3, scope: !558)
!597 = !DILocation(line: 208, column: 6, scope: !558)
!598 = !DILocation(line: 208, column: 13, scope: !558)
!599 = !DILocation(line: 210, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !558, file: !3, line: 210, column: 7)
!601 = !DILocation(line: 210, column: 17, scope: !600)
!602 = !DILocation(line: 210, column: 20, scope: !600)
!603 = !DILocation(line: 210, column: 14, scope: !600)
!604 = !DILocation(line: 210, column: 7, scope: !558)
!605 = !DILocation(line: 211, column: 4, scope: !606)
!606 = distinct !DILexicalBlock(scope: !600, file: !3, line: 210, column: 28)
!607 = !DILocation(line: 211, column: 7, scope: !606)
!608 = !DILocation(line: 211, column: 14, scope: !606)
!609 = !DILocation(line: 212, column: 4, scope: !606)
!610 = !DILocation(line: 215, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !558, file: !3, line: 215, column: 7)
!612 = !DILocation(line: 215, column: 7, scope: !558)
!613 = !DILocation(line: 216, column: 11, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 216, column: 4)
!615 = distinct !DILexicalBlock(scope: !611, file: !3, line: 215, column: 15)
!616 = !DILocation(line: 216, column: 9, scope: !614)
!617 = !DILocation(line: 216, column: 16, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !3, line: 216, column: 4)
!619 = !DILocation(line: 216, column: 20, scope: !618)
!620 = !DILocation(line: 216, column: 23, scope: !618)
!621 = !DILocation(line: 216, column: 32, scope: !618)
!622 = !DILocation(line: 216, column: 30, scope: !618)
!623 = !DILocation(line: 216, column: 18, scope: !618)
!624 = !DILocation(line: 216, column: 4, scope: !614)
!625 = !DILocation(line: 217, column: 15, scope: !618)
!626 = !DILocation(line: 217, column: 18, scope: !618)
!627 = !DILocation(line: 217, column: 20, scope: !618)
!628 = !DILocation(line: 217, column: 22, scope: !618)
!629 = !DILocation(line: 217, column: 21, scope: !618)
!630 = !DILocation(line: 217, column: 5, scope: !618)
!631 = !DILocation(line: 217, column: 8, scope: !618)
!632 = !DILocation(line: 217, column: 10, scope: !618)
!633 = !DILocation(line: 217, column: 13, scope: !618)
!634 = !DILocation(line: 216, column: 41, scope: !618)
!635 = !DILocation(line: 216, column: 4, scope: !618)
!636 = distinct !{!636, !624, !637, !68, !69}
!637 = !DILocation(line: 217, column: 28, scope: !614)
!638 = !DILocation(line: 218, column: 4, scope: !615)
!639 = !DILocation(line: 218, column: 7, scope: !615)
!640 = !DILocation(line: 218, column: 9, scope: !615)
!641 = !DILocation(line: 218, column: 12, scope: !615)
!642 = !DILocation(line: 219, column: 17, scope: !615)
!643 = !DILocation(line: 219, column: 4, scope: !615)
!644 = !DILocation(line: 219, column: 7, scope: !615)
!645 = !DILocation(line: 219, column: 14, scope: !615)
!646 = !DILocation(line: 220, column: 3, scope: !615)
!647 = !DILocation(line: 222, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !558, file: !3, line: 222, column: 7)
!649 = !DILocation(line: 222, column: 10, scope: !648)
!650 = !DILocation(line: 222, column: 17, scope: !648)
!651 = !DILocation(line: 222, column: 20, scope: !648)
!652 = !DILocation(line: 222, column: 7, scope: !558)
!653 = !DILocation(line: 223, column: 19, scope: !648)
!654 = !DILocation(line: 223, column: 22, scope: !648)
!655 = !DILocation(line: 223, column: 25, scope: !648)
!656 = !DILocation(line: 223, column: 28, scope: !648)
!657 = !DILocation(line: 223, column: 31, scope: !648)
!658 = !DILocation(line: 223, column: 34, scope: !648)
!659 = !DILocation(line: 223, column: 42, scope: !648)
!660 = !DILocation(line: 223, column: 4, scope: !648)
!661 = !DILocation(line: 224, column: 2, scope: !558)
!662 = !DILocation(line: 226, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !555, file: !3, line: 224, column: 9)
!664 = !DILocation(line: 226, column: 14, scope: !663)
!665 = !DILocation(line: 226, column: 9, scope: !663)
!666 = !DILocation(line: 227, column: 13, scope: !663)
!667 = !DILocation(line: 227, column: 16, scope: !663)
!668 = !DILocation(line: 227, column: 3, scope: !663)
!669 = !DILocation(line: 227, column: 6, scope: !663)
!670 = !DILocation(line: 227, column: 11, scope: !663)
!671 = !DILocation(line: 228, column: 3, scope: !663)
!672 = !DILocation(line: 228, column: 3, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !3, line: 228, column: 3)
!674 = distinct !DILexicalBlock(scope: !663, file: !3, line: 228, column: 3)
!675 = !DILocation(line: 228, column: 3, scope: !674)
!676 = !DILocation(line: 229, column: 15, scope: !663)
!677 = !DILocation(line: 229, column: 3, scope: !663)
!678 = !DILocation(line: 229, column: 6, scope: !663)
!679 = !DILocation(line: 229, column: 13, scope: !663)
!680 = !DILocation(line: 231, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !663, file: !3, line: 231, column: 7)
!682 = !DILocation(line: 231, column: 7, scope: !663)
!683 = !DILocation(line: 232, column: 8, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !3, line: 232, column: 8)
!685 = distinct !DILexicalBlock(scope: !681, file: !3, line: 231, column: 14)
!686 = !DILocation(line: 232, column: 8, scope: !685)
!687 = !DILocation(line: 233, column: 20, scope: !684)
!688 = !DILocation(line: 233, column: 23, scope: !684)
!689 = !DILocation(line: 233, column: 26, scope: !684)
!690 = !DILocation(line: 233, column: 29, scope: !684)
!691 = !DILocation(line: 233, column: 32, scope: !684)
!692 = !DILocation(line: 233, column: 35, scope: !684)
!693 = !DILocation(line: 233, column: 43, scope: !684)
!694 = !DILocation(line: 233, column: 5, scope: !684)
!695 = !DILocation(line: 238, column: 12, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 238, column: 5)
!697 = distinct !DILexicalBlock(scope: !684, file: !3, line: 234, column: 9)
!698 = !DILocation(line: 238, column: 10, scope: !696)
!699 = !DILocation(line: 238, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !3, line: 238, column: 5)
!701 = !DILocation(line: 238, column: 21, scope: !700)
!702 = !DILocation(line: 238, column: 24, scope: !700)
!703 = !DILocation(line: 238, column: 19, scope: !700)
!704 = !DILocation(line: 238, column: 5, scope: !696)
!705 = !DILocation(line: 239, column: 16, scope: !700)
!706 = !DILocation(line: 239, column: 19, scope: !700)
!707 = !DILocation(line: 239, column: 21, scope: !700)
!708 = !DILocation(line: 239, column: 6, scope: !700)
!709 = !DILocation(line: 239, column: 9, scope: !700)
!710 = !DILocation(line: 239, column: 11, scope: !700)
!711 = !DILocation(line: 239, column: 14, scope: !700)
!712 = !DILocation(line: 238, column: 33, scope: !700)
!713 = !DILocation(line: 238, column: 5, scope: !700)
!714 = distinct !{!714, !704, !715, !68, !69}
!715 = !DILocation(line: 239, column: 22, scope: !696)
!716 = !DILocation(line: 241, column: 3, scope: !685)
!717 = !DILocation(line: 243, column: 2, scope: !459)
!718 = !DILocation(line: 243, column: 2, scope: !719)
!719 = distinct !DILexicalBlock(scope: !459, file: !3, line: 243, column: 2)
!720 = !DILocation(line: 243, column: 2, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 243, column: 2)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 243, column: 2)
!723 = !DILocation(line: 243, column: 2, scope: !722)
!724 = distinct !{!724, !718, !718, !68, !69}
!725 = !DILocation(line: 244, column: 1, scope: !459)
!726 = !DISubprogram(name: "mpihelp_rshift", scope: !404, file: !404, line: 209, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DISubroutineType(types: !728)
!728 = !{!6, !403, !403, !406, !42}
!729 = distinct !DISubprogram(name: "mpi_lshift_limbs", scope: !3, file: !3, line: 251, type: !170, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!730 = !{!731, !732, !733, !734, !735}
!731 = !DILocalVariable(name: "a", arg: 1, scope: !729, file: !3, line: 251, type: !32)
!732 = !DILocalVariable(name: "count", arg: 2, scope: !729, file: !3, line: 251, type: !42)
!733 = !DILocalVariable(name: "ap", scope: !729, file: !3, line: 253, type: !403)
!734 = !DILocalVariable(name: "n", scope: !729, file: !3, line: 254, type: !37)
!735 = !DILocalVariable(name: "i", scope: !729, file: !3, line: 255, type: !37)
!736 = !DILocation(line: 251, column: 27, scope: !729)
!737 = !DILocation(line: 251, column: 43, scope: !729)
!738 = !DILocation(line: 253, column: 2, scope: !729)
!739 = !DILocation(line: 253, column: 12, scope: !729)
!740 = !DILocation(line: 254, column: 2, scope: !729)
!741 = !DILocation(line: 254, column: 6, scope: !729)
!742 = !DILocation(line: 254, column: 10, scope: !729)
!743 = !DILocation(line: 254, column: 13, scope: !729)
!744 = !DILocation(line: 255, column: 2, scope: !729)
!745 = !DILocation(line: 255, column: 6, scope: !729)
!746 = !DILocation(line: 257, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !729, file: !3, line: 257, column: 6)
!748 = !DILocation(line: 257, column: 13, scope: !747)
!749 = !DILocation(line: 257, column: 17, scope: !747)
!750 = !DILocation(line: 257, column: 6, scope: !729)
!751 = !DILocation(line: 258, column: 3, scope: !747)
!752 = !DILocation(line: 260, column: 2, scope: !729)
!753 = !DILocation(line: 260, column: 2, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 260, column: 2)
!755 = distinct !DILexicalBlock(scope: !729, file: !3, line: 260, column: 2)
!756 = !DILocation(line: 260, column: 2, scope: !755)
!757 = !DILocation(line: 262, column: 7, scope: !729)
!758 = !DILocation(line: 262, column: 10, scope: !729)
!759 = !DILocation(line: 262, column: 5, scope: !729)
!760 = !DILocation(line: 263, column: 11, scope: !761)
!761 = distinct !DILexicalBlock(scope: !729, file: !3, line: 263, column: 2)
!762 = !DILocation(line: 263, column: 12, scope: !761)
!763 = !DILocation(line: 263, column: 9, scope: !761)
!764 = !DILocation(line: 263, column: 7, scope: !761)
!765 = !DILocation(line: 263, column: 16, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 263, column: 2)
!767 = !DILocation(line: 263, column: 18, scope: !766)
!768 = !DILocation(line: 263, column: 2, scope: !761)
!769 = !DILocation(line: 264, column: 17, scope: !766)
!770 = !DILocation(line: 264, column: 20, scope: !766)
!771 = !DILocation(line: 264, column: 3, scope: !766)
!772 = !DILocation(line: 264, column: 6, scope: !766)
!773 = !DILocation(line: 264, column: 8, scope: !766)
!774 = !DILocation(line: 264, column: 7, scope: !766)
!775 = !DILocation(line: 264, column: 15, scope: !766)
!776 = !DILocation(line: 263, column: 25, scope: !766)
!777 = !DILocation(line: 263, column: 2, scope: !766)
!778 = distinct !{!778, !768, !779, !68, !69}
!779 = !DILocation(line: 264, column: 21, scope: !761)
!780 = !DILocation(line: 265, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !729, file: !3, line: 265, column: 2)
!782 = !DILocation(line: 265, column: 7, scope: !781)
!783 = !DILocation(line: 265, column: 14, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 265, column: 2)
!785 = !DILocation(line: 265, column: 18, scope: !784)
!786 = !DILocation(line: 265, column: 16, scope: !784)
!787 = !DILocation(line: 265, column: 2, scope: !781)
!788 = !DILocation(line: 266, column: 3, scope: !784)
!789 = !DILocation(line: 266, column: 6, scope: !784)
!790 = !DILocation(line: 266, column: 9, scope: !784)
!791 = !DILocation(line: 265, column: 26, scope: !784)
!792 = !DILocation(line: 265, column: 2, scope: !784)
!793 = distinct !{!793, !787, !794, !68, !69}
!794 = !DILocation(line: 266, column: 11, scope: !781)
!795 = !DILocation(line: 267, column: 15, scope: !729)
!796 = !DILocation(line: 267, column: 2, scope: !729)
!797 = !DILocation(line: 267, column: 5, scope: !729)
!798 = !DILocation(line: 267, column: 12, scope: !729)
!799 = !DILocation(line: 268, column: 1, scope: !729)
!800 = distinct !DISubprogram(name: "mpi_lshift", scope: !3, file: !3, line: 273, type: !460, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !810, !811, !812, !813}
!802 = !DILocalVariable(name: "x", arg: 1, scope: !800, file: !3, line: 273, type: !32)
!803 = !DILocalVariable(name: "a", arg: 2, scope: !800, file: !3, line: 273, type: !32)
!804 = !DILocalVariable(name: "n", arg: 3, scope: !800, file: !3, line: 273, type: !42)
!805 = !DILocalVariable(name: "nlimbs", scope: !800, file: !3, line: 275, type: !42)
!806 = !DILocalVariable(name: "nbits", scope: !800, file: !3, line: 276, type: !42)
!807 = !DILocalVariable(name: "alimbs", scope: !808, file: !3, line: 283, type: !42)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 281, column: 14)
!809 = distinct !DILexicalBlock(scope: !800, file: !3, line: 281, column: 6)
!810 = !DILocalVariable(name: "asign", scope: !808, file: !3, line: 284, type: !37)
!811 = !DILocalVariable(name: "xp", scope: !808, file: !3, line: 285, type: !403)
!812 = !DILocalVariable(name: "ap", scope: !808, file: !3, line: 285, type: !403)
!813 = !DILocalVariable(name: "_i", scope: !814, file: !3, line: 290, type: !406)
!814 = distinct !DILexicalBlock(scope: !808, file: !3, line: 290, column: 3)
!815 = !DILocation(line: 273, column: 21, scope: !800)
!816 = !DILocation(line: 273, column: 28, scope: !800)
!817 = !DILocation(line: 273, column: 44, scope: !800)
!818 = !DILocation(line: 275, column: 2, scope: !800)
!819 = !DILocation(line: 275, column: 15, scope: !800)
!820 = !DILocation(line: 275, column: 25, scope: !800)
!821 = !DILocation(line: 275, column: 26, scope: !800)
!822 = !DILocation(line: 276, column: 2, scope: !800)
!823 = !DILocation(line: 276, column: 15, scope: !800)
!824 = !DILocation(line: 276, column: 24, scope: !800)
!825 = !DILocation(line: 276, column: 25, scope: !800)
!826 = !DILocation(line: 278, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !800, file: !3, line: 278, column: 6)
!828 = !DILocation(line: 278, column: 11, scope: !827)
!829 = !DILocation(line: 278, column: 8, scope: !827)
!830 = !DILocation(line: 278, column: 13, scope: !827)
!831 = !DILocation(line: 278, column: 17, scope: !827)
!832 = !DILocation(line: 278, column: 6, scope: !800)
!833 = !DILocation(line: 279, column: 3, scope: !827)
!834 = !DILocation(line: 281, column: 6, scope: !809)
!835 = !DILocation(line: 281, column: 11, scope: !809)
!836 = !DILocation(line: 281, column: 8, scope: !809)
!837 = !DILocation(line: 281, column: 6, scope: !800)
!838 = !DILocation(line: 283, column: 3, scope: !808)
!839 = !DILocation(line: 283, column: 16, scope: !808)
!840 = !DILocation(line: 283, column: 25, scope: !808)
!841 = !DILocation(line: 283, column: 28, scope: !808)
!842 = !DILocation(line: 284, column: 3, scope: !808)
!843 = !DILocation(line: 284, column: 7, scope: !808)
!844 = !DILocation(line: 284, column: 15, scope: !808)
!845 = !DILocation(line: 284, column: 18, scope: !808)
!846 = !DILocation(line: 285, column: 3, scope: !808)
!847 = !DILocation(line: 285, column: 13, scope: !808)
!848 = !DILocation(line: 285, column: 17, scope: !808)
!849 = !DILocation(line: 287, column: 3, scope: !808)
!850 = !DILocation(line: 287, column: 3, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 287, column: 3)
!852 = distinct !DILexicalBlock(scope: !808, file: !3, line: 287, column: 3)
!853 = !DILocation(line: 287, column: 3, scope: !852)
!854 = !DILocation(line: 288, column: 8, scope: !808)
!855 = !DILocation(line: 288, column: 11, scope: !808)
!856 = !DILocation(line: 288, column: 6, scope: !808)
!857 = !DILocation(line: 289, column: 8, scope: !808)
!858 = !DILocation(line: 289, column: 11, scope: !808)
!859 = !DILocation(line: 289, column: 6, scope: !808)
!860 = !DILocation(line: 290, column: 3, scope: !808)
!861 = !DILocation(line: 290, column: 3, scope: !814)
!862 = !DILocation(line: 290, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !814, file: !3, line: 290, column: 3)
!864 = !DILocation(line: 290, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !3, line: 290, column: 3)
!866 = distinct !{!866, !862, !862, !68, !69}
!867 = !DILocation(line: 291, column: 15, scope: !808)
!868 = !DILocation(line: 291, column: 3, scope: !808)
!869 = !DILocation(line: 291, column: 6, scope: !808)
!870 = !DILocation(line: 291, column: 13, scope: !808)
!871 = !DILocation(line: 292, column: 14, scope: !808)
!872 = !DILocation(line: 292, column: 17, scope: !808)
!873 = !DILocation(line: 292, column: 3, scope: !808)
!874 = !DILocation(line: 292, column: 6, scope: !808)
!875 = !DILocation(line: 292, column: 12, scope: !808)
!876 = !DILocation(line: 293, column: 13, scope: !808)
!877 = !DILocation(line: 293, column: 3, scope: !808)
!878 = !DILocation(line: 293, column: 6, scope: !808)
!879 = !DILocation(line: 293, column: 11, scope: !808)
!880 = !DILocation(line: 294, column: 2, scope: !809)
!881 = !DILocation(line: 294, column: 2, scope: !808)
!882 = !DILocation(line: 296, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !800, file: !3, line: 296, column: 6)
!884 = !DILocation(line: 296, column: 13, scope: !883)
!885 = !DILocation(line: 296, column: 17, scope: !883)
!886 = !DILocation(line: 296, column: 6, scope: !800)
!887 = !DILocation(line: 298, column: 20, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !3, line: 296, column: 24)
!889 = !DILocation(line: 298, column: 23, scope: !888)
!890 = !DILocation(line: 298, column: 3, scope: !888)
!891 = !DILocation(line: 299, column: 2, scope: !888)
!892 = !DILocation(line: 299, column: 13, scope: !893)
!893 = distinct !DILexicalBlock(scope: !883, file: !3, line: 299, column: 13)
!894 = !DILocation(line: 299, column: 13, scope: !883)
!895 = !DILocation(line: 303, column: 20, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 299, column: 16)
!897 = !DILocation(line: 303, column: 23, scope: !896)
!898 = !DILocation(line: 303, column: 29, scope: !896)
!899 = !DILocation(line: 303, column: 3, scope: !896)
!900 = !DILocation(line: 304, column: 14, scope: !896)
!901 = !DILocation(line: 304, column: 17, scope: !896)
!902 = !DILocation(line: 304, column: 40, scope: !896)
!903 = !DILocation(line: 304, column: 38, scope: !896)
!904 = !DILocation(line: 304, column: 3, scope: !896)
!905 = !DILocation(line: 305, column: 2, scope: !896)
!906 = !DILocation(line: 307, column: 2, scope: !800)
!907 = !DILocation(line: 307, column: 2, scope: !908)
!908 = distinct !DILexicalBlock(scope: !800, file: !3, line: 307, column: 2)
!909 = !DILocation(line: 307, column: 2, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 307, column: 2)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 307, column: 2)
!912 = !DILocation(line: 307, column: 2, scope: !911)
!913 = distinct !{!913, !907, !907, !68, !69}
!914 = !DILocation(line: 308, column: 1, scope: !800)
!915 = distinct !DISubprogram(name: "fls64", scope: !916, file: !916, line: 401, type: !917, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !922)
!916 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!917 = !DISubroutineType(types: !918)
!918 = !{!37, !919}
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !920, line: 31, baseType: !921)
!920 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!921 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!922 = !{!923, !924}
!923 = !DILocalVariable(name: "x", arg: 1, scope: !915, file: !916, line: 401, type: !919)
!924 = !DILocalVariable(name: "bitpos", scope: !915, file: !916, line: 403, type: !37)
!925 = !DILocation(line: 401, column: 40, scope: !915)
!926 = !DILocation(line: 403, column: 2, scope: !915)
!927 = !DILocation(line: 403, column: 6, scope: !915)
!928 = !DILocation(line: 409, column: 2, scope: !915)
!929 = !DILocation(line: 411, column: 14, scope: !915)
!930 = !{i64 853483}
!931 = !DILocation(line: 412, column: 9, scope: !915)
!932 = !DILocation(line: 412, column: 16, scope: !915)
!933 = !DILocation(line: 413, column: 1, scope: !915)
!934 = !DILocation(line: 412, column: 2, scope: !915)
