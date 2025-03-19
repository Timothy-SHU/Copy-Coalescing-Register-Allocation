; ModuleID = 'lib/crypto/mpi/mpi-add.c'
source_filename = "lib/crypto/mpi/mpi-add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_add: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_sub: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_sub ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_addm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_addm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_subm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_subm ; .previous"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable_mpi_add287 = internal global ptr @mpi_add, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_mpi_sub288 = internal global ptr @mpi_sub, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_mpi_addm289 = internal global ptr @mpi_addm, section ".discard.addressable", align 8, !dbg !9
@__UNIQUE_ID___addressable_mpi_subm290 = internal global ptr @mpi_subm, section ".discard.addressable", align 8, !dbg !11
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_mpi_add287, ptr @__UNIQUE_ID___addressable_mpi_sub288, ptr @__UNIQUE_ID___addressable_mpi_addm289, ptr @__UNIQUE_ID___addressable_mpi_subm290], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_add_ui(ptr noundef %w, ptr noundef %u, i64 noundef %v) #0 align 16 !dbg !22 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %usize = alloca i32, align 4
  %wsize = alloca i32, align 4
  %usign = alloca i32, align 4
  %wsign = alloca i32, align 4
  %cy = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !42, metadata !DIExpression()), !dbg !58
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !43, metadata !DIExpression()), !dbg !59
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !44, metadata !DIExpression()), !dbg !60
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #5, !dbg !61
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !45, metadata !DIExpression()), !dbg !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #5, !dbg !61
  call void @llvm.dbg.declare(metadata ptr %up, metadata !48, metadata !DIExpression()), !dbg !63
  call void @llvm.lifetime.start.p0(i64 4, ptr %usize) #5, !dbg !64
  call void @llvm.dbg.declare(metadata ptr %usize, metadata !49, metadata !DIExpression()), !dbg !65
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #5, !dbg !64
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !51, metadata !DIExpression()), !dbg !66
  call void @llvm.lifetime.start.p0(i64 4, ptr %usign) #5, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %usign, metadata !52, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsign) #5, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %wsign, metadata !53, metadata !DIExpression()), !dbg !69
  %0 = load ptr, ptr %u.addr, align 8, !dbg !70
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !71
  %1 = load i32, ptr %nlimbs, align 4, !dbg !71
  store i32 %1, ptr %usize, align 4, !dbg !72
  %2 = load ptr, ptr %u.addr, align 8, !dbg !73
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 3, !dbg !74
  %3 = load i32, ptr %sign, align 4, !dbg !74
  store i32 %3, ptr %usign, align 4, !dbg !75
  store i32 0, ptr %wsign, align 4, !dbg !76
  %4 = load i32, ptr %usize, align 4, !dbg !77
  %add = add i32 %4, 1, !dbg !78
  store i32 %add, ptr %wsize, align 4, !dbg !79
  %5 = load ptr, ptr %w.addr, align 8, !dbg !80
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 0, !dbg !82
  %6 = load i32, ptr %alloced, align 8, !dbg !82
  %7 = load i32, ptr %wsize, align 4, !dbg !83
  %cmp = icmp slt i32 %6, %7, !dbg !84
  br i1 %cmp, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %w.addr, align 8, !dbg !86
  %9 = load i32, ptr %wsize, align 4, !dbg !87
  %call = call i32 @mpi_resize(ptr noundef %8, i32 noundef %9) #6, !dbg !88
  br label %if.end, !dbg !88

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %u.addr, align 8, !dbg !89
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5, !dbg !90
  %11 = load ptr, ptr %d, align 8, !dbg !90
  store ptr %11, ptr %up, align 8, !dbg !91
  %12 = load ptr, ptr %w.addr, align 8, !dbg !92
  %d1 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5, !dbg !93
  %13 = load ptr, ptr %d1, align 8, !dbg !93
  store ptr %13, ptr %wp, align 8, !dbg !94
  %14 = load i32, ptr %usize, align 4, !dbg !95
  %tobool = icmp ne i32 %14, 0, !dbg !95
  br i1 %tobool, label %if.else, label %if.then2, !dbg !96

if.then2:                                         ; preds = %if.end
  %15 = load i64, ptr %v.addr, align 8, !dbg !97
  %16 = load ptr, ptr %wp, align 8, !dbg !99
  %arrayidx = getelementptr i64, ptr %16, i64 0, !dbg !99
  store i64 %15, ptr %arrayidx, align 8, !dbg !100
  %17 = load i64, ptr %v.addr, align 8, !dbg !101
  %tobool3 = icmp ne i64 %17, 0, !dbg !101
  %18 = zext i1 %tobool3 to i64, !dbg !101
  %cond = select i1 %tobool3, i32 1, i32 0, !dbg !101
  store i32 %cond, ptr %wsize, align 4, !dbg !102
  br label %if.end29, !dbg !103

if.else:                                          ; preds = %if.end
  %19 = load i32, ptr %usign, align 4, !dbg !104
  %tobool4 = icmp ne i32 %19, 0, !dbg !104
  br i1 %tobool4, label %if.else10, label %if.then5, !dbg !105

if.then5:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #5, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !54, metadata !DIExpression()), !dbg !107
  %20 = load ptr, ptr %wp, align 8, !dbg !108
  %21 = load ptr, ptr %up, align 8, !dbg !109
  %22 = load i32, ptr %usize, align 4, !dbg !110
  %23 = load i64, ptr %v.addr, align 8, !dbg !111
  %call6 = call i64 @mpihelp_add_1(ptr noundef %20, ptr noundef %21, i32 noundef %22, i64 noundef %23) #6, !dbg !112
  store i64 %call6, ptr %cy, align 8, !dbg !113
  %24 = load i64, ptr %cy, align 8, !dbg !114
  %25 = load ptr, ptr %wp, align 8, !dbg !115
  %26 = load i32, ptr %usize, align 4, !dbg !116
  %idxprom = sext i32 %26 to i64, !dbg !115
  %arrayidx7 = getelementptr i64, ptr %25, i64 %idxprom, !dbg !115
  store i64 %24, ptr %arrayidx7, align 8, !dbg !117
  %27 = load i32, ptr %usize, align 4, !dbg !118
  %conv = sext i32 %27 to i64, !dbg !118
  %28 = load i64, ptr %cy, align 8, !dbg !119
  %add8 = add i64 %conv, %28, !dbg !120
  %conv9 = trunc i64 %add8 to i32, !dbg !118
  store i32 %conv9, ptr %wsize, align 4, !dbg !121
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #5, !dbg !122
  br label %if.end28, !dbg !123

if.else10:                                        ; preds = %if.else
  %29 = load i32, ptr %usize, align 4, !dbg !124
  %cmp11 = icmp eq i32 %29, 1, !dbg !127
  br i1 %cmp11, label %land.lhs.true, label %if.else19, !dbg !128

land.lhs.true:                                    ; preds = %if.else10
  %30 = load ptr, ptr %up, align 8, !dbg !129
  %arrayidx13 = getelementptr i64, ptr %30, i64 0, !dbg !129
  %31 = load i64, ptr %arrayidx13, align 8, !dbg !129
  %32 = load i64, ptr %v.addr, align 8, !dbg !130
  %cmp14 = icmp ult i64 %31, %32, !dbg !131
  br i1 %cmp14, label %if.then16, label %if.else19, !dbg !132

if.then16:                                        ; preds = %land.lhs.true
  %33 = load i64, ptr %v.addr, align 8, !dbg !133
  %34 = load ptr, ptr %up, align 8, !dbg !135
  %arrayidx17 = getelementptr i64, ptr %34, i64 0, !dbg !135
  %35 = load i64, ptr %arrayidx17, align 8, !dbg !135
  %sub = sub i64 %33, %35, !dbg !136
  %36 = load ptr, ptr %wp, align 8, !dbg !137
  %arrayidx18 = getelementptr i64, ptr %36, i64 0, !dbg !137
  store i64 %sub, ptr %arrayidx18, align 8, !dbg !138
  store i32 1, ptr %wsize, align 4, !dbg !139
  br label %if.end27, !dbg !140

if.else19:                                        ; preds = %land.lhs.true, %if.else10
  %37 = load ptr, ptr %wp, align 8, !dbg !141
  %38 = load ptr, ptr %up, align 8, !dbg !143
  %39 = load i32, ptr %usize, align 4, !dbg !144
  %40 = load i64, ptr %v.addr, align 8, !dbg !145
  %call20 = call i64 @mpihelp_sub_1(ptr noundef %37, ptr noundef %38, i32 noundef %39, i64 noundef %40) #6, !dbg !146
  %41 = load i32, ptr %usize, align 4, !dbg !147
  %42 = load ptr, ptr %wp, align 8, !dbg !148
  %43 = load i32, ptr %usize, align 4, !dbg !149
  %sub21 = sub i32 %43, 1, !dbg !150
  %idxprom22 = sext i32 %sub21 to i64, !dbg !148
  %arrayidx23 = getelementptr i64, ptr %42, i64 %idxprom22, !dbg !148
  %44 = load i64, ptr %arrayidx23, align 8, !dbg !148
  %cmp24 = icmp eq i64 %44, 0, !dbg !151
  %conv25 = zext i1 %cmp24 to i32, !dbg !151
  %sub26 = sub i32 %41, %conv25, !dbg !152
  store i32 %sub26, ptr %wsize, align 4, !dbg !153
  store i32 1, ptr %wsign, align 4, !dbg !154
  br label %if.end27

if.end27:                                         ; preds = %if.else19, %if.then16
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then5
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then2
  %45 = load i32, ptr %wsize, align 4, !dbg !155
  %46 = load ptr, ptr %w.addr, align 8, !dbg !156
  %nlimbs30 = getelementptr inbounds %struct.gcry_mpi, ptr %46, i32 0, i32 1, !dbg !157
  store i32 %45, ptr %nlimbs30, align 4, !dbg !158
  %47 = load i32, ptr %wsign, align 4, !dbg !159
  %48 = load ptr, ptr %w.addr, align 8, !dbg !160
  %sign31 = getelementptr inbounds %struct.gcry_mpi, ptr %48, i32 0, i32 3, !dbg !161
  store i32 %47, ptr %sign31, align 4, !dbg !162
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsign) #5, !dbg !163
  call void @llvm.lifetime.end.p0(i64 4, ptr %usign) #5, !dbg !163
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #5, !dbg !163
  call void @llvm.lifetime.end.p0(i64 4, ptr %usize) #5, !dbg !163
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #5, !dbg !163
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #5, !dbg !163
  ret void, !dbg !163
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !164 dso_local i32 @mpi_resize(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mpihelp_add_1(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, i64 noundef %s2_limb) #4 align 16 !dbg !167 {
entry:
  %retval = alloca i64, align 8
  %res_ptr.addr = alloca ptr, align 8
  %s1_ptr.addr = alloca ptr, align 8
  %s1_size.addr = alloca i32, align 4
  %s2_limb.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !172, metadata !DIExpression()), !dbg !181
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !173, metadata !DIExpression()), !dbg !182
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !174, metadata !DIExpression()), !dbg !183
  store i64 %s2_limb, ptr %s2_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_limb.addr, metadata !175, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %x, metadata !176, metadata !DIExpression()), !dbg !186
  %0 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !187
  %incdec.ptr = getelementptr i64, ptr %0, i32 1, !dbg !187
  store ptr %incdec.ptr, ptr %s1_ptr.addr, align 8, !dbg !187
  %1 = load i64, ptr %0, align 8, !dbg !188
  store i64 %1, ptr %x, align 8, !dbg !189
  %2 = load i64, ptr %x, align 8, !dbg !190
  %3 = load i64, ptr %s2_limb.addr, align 8, !dbg !191
  %add = add i64 %3, %2, !dbg !191
  store i64 %add, ptr %s2_limb.addr, align 8, !dbg !191
  %4 = load i64, ptr %s2_limb.addr, align 8, !dbg !192
  %5 = load ptr, ptr %res_ptr.addr, align 8, !dbg !193
  %incdec.ptr1 = getelementptr i64, ptr %5, i32 1, !dbg !193
  store ptr %incdec.ptr1, ptr %res_ptr.addr, align 8, !dbg !193
  store i64 %4, ptr %5, align 8, !dbg !194
  %6 = load i64, ptr %s2_limb.addr, align 8, !dbg !195
  %7 = load i64, ptr %x, align 8, !dbg !197
  %cmp = icmp ult i64 %6, %7, !dbg !198
  br i1 %cmp, label %if.then, label %if.end7, !dbg !199

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !200

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load i32, ptr %s1_size.addr, align 4, !dbg !202
  %dec = add i32 %8, -1, !dbg !202
  store i32 %dec, ptr %s1_size.addr, align 4, !dbg !202
  %tobool = icmp ne i32 %dec, 0, !dbg !200
  br i1 %tobool, label %while.body, label %while.end, !dbg !200

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !203
  %incdec.ptr2 = getelementptr i64, ptr %9, i32 1, !dbg !203
  store ptr %incdec.ptr2, ptr %s1_ptr.addr, align 8, !dbg !203
  %10 = load i64, ptr %9, align 8, !dbg !205
  %add3 = add i64 %10, 1, !dbg !206
  store i64 %add3, ptr %x, align 8, !dbg !207
  %11 = load i64, ptr %x, align 8, !dbg !208
  %12 = load ptr, ptr %res_ptr.addr, align 8, !dbg !209
  %incdec.ptr4 = getelementptr i64, ptr %12, i32 1, !dbg !209
  store ptr %incdec.ptr4, ptr %res_ptr.addr, align 8, !dbg !209
  store i64 %11, ptr %12, align 8, !dbg !210
  %13 = load i64, ptr %x, align 8, !dbg !211
  %tobool5 = icmp ne i64 %13, 0, !dbg !211
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !213

if.then6:                                         ; preds = %while.body
  br label %leave, !dbg !214

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !200, !llvm.loop !215

while.end:                                        ; preds = %while.cond
  store i64 1, ptr %retval, align 8, !dbg !219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !219

if.end7:                                          ; preds = %entry
  br label %leave, !dbg !197

leave:                                            ; preds = %if.end7, %if.then6
  call void @llvm.dbg.label(metadata !177), !dbg !220
  %14 = load ptr, ptr %res_ptr.addr, align 8, !dbg !221
  %15 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !222
  %cmp8 = icmp ne ptr %14, %15, !dbg !223
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !224

if.then9:                                         ; preds = %leave
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %i, metadata !178, metadata !DIExpression()), !dbg !226
  store i32 0, ptr %i, align 4, !dbg !227
  br label %for.cond, !dbg !229

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load i32, ptr %i, align 4, !dbg !230
  %17 = load i32, ptr %s1_size.addr, align 4, !dbg !232
  %sub = sub i32 %17, 1, !dbg !233
  %cmp10 = icmp slt i32 %16, %sub, !dbg !234
  br i1 %cmp10, label %for.body, label %for.end, !dbg !235

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !236
  %19 = load i32, ptr %i, align 4, !dbg !237
  %idxprom = sext i32 %19 to i64, !dbg !236
  %arrayidx = getelementptr i64, ptr %18, i64 %idxprom, !dbg !236
  %20 = load i64, ptr %arrayidx, align 8, !dbg !236
  %21 = load ptr, ptr %res_ptr.addr, align 8, !dbg !238
  %22 = load i32, ptr %i, align 4, !dbg !239
  %idxprom11 = sext i32 %22 to i64, !dbg !238
  %arrayidx12 = getelementptr i64, ptr %21, i64 %idxprom11, !dbg !238
  store i64 %20, ptr %arrayidx12, align 8, !dbg !240
  br label %for.inc, !dbg !238

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !241
  %inc = add i32 %23, 1, !dbg !241
  store i32 %inc, ptr %i, align 4, !dbg !241
  br label %for.cond, !dbg !242, !llvm.loop !243

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !245
  br label %if.end13, !dbg !246

if.end13:                                         ; preds = %for.end, %leave
  store i64 0, ptr %retval, align 8, !dbg !247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !247

cleanup:                                          ; preds = %if.end13, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5, !dbg !248
  %24 = load i64, ptr %retval, align 8, !dbg !248
  ret i64 %24, !dbg !248
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mpihelp_sub_1(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, i64 noundef %s2_limb) #4 align 16 !dbg !249 {
entry:
  %retval = alloca i64, align 8
  %res_ptr.addr = alloca ptr, align 8
  %s1_ptr.addr = alloca ptr, align 8
  %s1_size.addr = alloca i32, align 4
  %s2_limb.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !251, metadata !DIExpression()), !dbg !260
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !252, metadata !DIExpression()), !dbg !261
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !253, metadata !DIExpression()), !dbg !262
  store i64 %s2_limb, ptr %s2_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_limb.addr, metadata !254, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %x, metadata !255, metadata !DIExpression()), !dbg !265
  %0 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !266
  %incdec.ptr = getelementptr i64, ptr %0, i32 1, !dbg !266
  store ptr %incdec.ptr, ptr %s1_ptr.addr, align 8, !dbg !266
  %1 = load i64, ptr %0, align 8, !dbg !267
  store i64 %1, ptr %x, align 8, !dbg !268
  %2 = load i64, ptr %x, align 8, !dbg !269
  %3 = load i64, ptr %s2_limb.addr, align 8, !dbg !270
  %sub = sub i64 %2, %3, !dbg !271
  store i64 %sub, ptr %s2_limb.addr, align 8, !dbg !272
  %4 = load i64, ptr %s2_limb.addr, align 8, !dbg !273
  %5 = load ptr, ptr %res_ptr.addr, align 8, !dbg !274
  %incdec.ptr1 = getelementptr i64, ptr %5, i32 1, !dbg !274
  store ptr %incdec.ptr1, ptr %res_ptr.addr, align 8, !dbg !274
  store i64 %4, ptr %5, align 8, !dbg !275
  %6 = load i64, ptr %s2_limb.addr, align 8, !dbg !276
  %7 = load i64, ptr %x, align 8, !dbg !278
  %cmp = icmp ugt i64 %6, %7, !dbg !279
  br i1 %cmp, label %if.then, label %if.end7, !dbg !280

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !281

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load i32, ptr %s1_size.addr, align 4, !dbg !283
  %dec = add i32 %8, -1, !dbg !283
  store i32 %dec, ptr %s1_size.addr, align 4, !dbg !283
  %tobool = icmp ne i32 %dec, 0, !dbg !281
  br i1 %tobool, label %while.body, label %while.end, !dbg !281

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !284
  %incdec.ptr2 = getelementptr i64, ptr %9, i32 1, !dbg !284
  store ptr %incdec.ptr2, ptr %s1_ptr.addr, align 8, !dbg !284
  %10 = load i64, ptr %9, align 8, !dbg !286
  store i64 %10, ptr %x, align 8, !dbg !287
  %11 = load i64, ptr %x, align 8, !dbg !288
  %sub3 = sub i64 %11, 1, !dbg !289
  %12 = load ptr, ptr %res_ptr.addr, align 8, !dbg !290
  %incdec.ptr4 = getelementptr i64, ptr %12, i32 1, !dbg !290
  store ptr %incdec.ptr4, ptr %res_ptr.addr, align 8, !dbg !290
  store i64 %sub3, ptr %12, align 8, !dbg !291
  %13 = load i64, ptr %x, align 8, !dbg !292
  %tobool5 = icmp ne i64 %13, 0, !dbg !292
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !294

if.then6:                                         ; preds = %while.body
  br label %leave, !dbg !295

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !281, !llvm.loop !296

while.end:                                        ; preds = %while.cond
  store i64 1, ptr %retval, align 8, !dbg !298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !298

if.end7:                                          ; preds = %entry
  br label %leave, !dbg !278

leave:                                            ; preds = %if.end7, %if.then6
  call void @llvm.dbg.label(metadata !256), !dbg !299
  %14 = load ptr, ptr %res_ptr.addr, align 8, !dbg !300
  %15 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !301
  %cmp8 = icmp ne ptr %14, %15, !dbg !302
  br i1 %cmp8, label %if.then9, label %if.end14, !dbg !303

if.then9:                                         ; preds = %leave
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %i, metadata !257, metadata !DIExpression()), !dbg !305
  store i32 0, ptr %i, align 4, !dbg !306
  br label %for.cond, !dbg !308

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load i32, ptr %i, align 4, !dbg !309
  %17 = load i32, ptr %s1_size.addr, align 4, !dbg !311
  %sub10 = sub i32 %17, 1, !dbg !312
  %cmp11 = icmp slt i32 %16, %sub10, !dbg !313
  br i1 %cmp11, label %for.body, label %for.end, !dbg !314

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !315
  %19 = load i32, ptr %i, align 4, !dbg !316
  %idxprom = sext i32 %19 to i64, !dbg !315
  %arrayidx = getelementptr i64, ptr %18, i64 %idxprom, !dbg !315
  %20 = load i64, ptr %arrayidx, align 8, !dbg !315
  %21 = load ptr, ptr %res_ptr.addr, align 8, !dbg !317
  %22 = load i32, ptr %i, align 4, !dbg !318
  %idxprom12 = sext i32 %22 to i64, !dbg !317
  %arrayidx13 = getelementptr i64, ptr %21, i64 %idxprom12, !dbg !317
  store i64 %20, ptr %arrayidx13, align 8, !dbg !319
  br label %for.inc, !dbg !317

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !320
  %inc = add i32 %23, 1, !dbg !320
  store i32 %inc, ptr %i, align 4, !dbg !320
  br label %for.cond, !dbg !321, !llvm.loop !322

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !324
  br label %if.end14, !dbg !325

if.end14:                                         ; preds = %for.end, %leave
  store i64 0, ptr %retval, align 8, !dbg !326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !326

cleanup:                                          ; preds = %if.end14, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5, !dbg !327
  %24 = load i64, ptr %retval, align 8, !dbg !327
  ret i64 %24, !dbg !327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_add(ptr noundef %w, ptr noundef %u, ptr noundef %v) #0 align 16 !dbg !328 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %vp = alloca ptr, align 8
  %usize = alloca i32, align 4
  %vsize = alloca i32, align 4
  %wsize = alloca i32, align 4
  %usign = alloca i32, align 4
  %vsign = alloca i32, align 4
  %wsign = alloca i32, align 4
  %_i = alloca i32, align 4
  %cy = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !332, metadata !DIExpression()), !dbg !351
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !333, metadata !DIExpression()), !dbg !352
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !334, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #5, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !335, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #5, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %up, metadata !336, metadata !DIExpression()), !dbg !356
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #5, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %vp, metadata !337, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 4, ptr %usize) #5, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %usize, metadata !338, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 4, ptr %vsize) #5, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %vsize, metadata !339, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #5, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !340, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 4, ptr %usign) #5, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %usign, metadata !341, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 4, ptr %vsign) #5, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %vsign, metadata !342, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsign) #5, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %wsign, metadata !343, metadata !DIExpression()), !dbg !365
  %0 = load ptr, ptr %u.addr, align 8, !dbg !366
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !368
  %1 = load i32, ptr %nlimbs, align 4, !dbg !368
  %2 = load ptr, ptr %v.addr, align 8, !dbg !369
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1, !dbg !370
  %3 = load i32, ptr %nlimbs1, align 4, !dbg !370
  %cmp = icmp slt i32 %1, %3, !dbg !371
  br i1 %cmp, label %if.then, label %if.else, !dbg !372

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %v.addr, align 8, !dbg !373
  %nlimbs2 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 1, !dbg !375
  %5 = load i32, ptr %nlimbs2, align 4, !dbg !375
  store i32 %5, ptr %usize, align 4, !dbg !376
  %6 = load ptr, ptr %v.addr, align 8, !dbg !377
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 3, !dbg !378
  %7 = load i32, ptr %sign, align 4, !dbg !378
  store i32 %7, ptr %usign, align 4, !dbg !379
  %8 = load ptr, ptr %u.addr, align 8, !dbg !380
  %nlimbs3 = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 1, !dbg !381
  %9 = load i32, ptr %nlimbs3, align 4, !dbg !381
  store i32 %9, ptr %vsize, align 4, !dbg !382
  %10 = load ptr, ptr %u.addr, align 8, !dbg !383
  %sign4 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 3, !dbg !384
  %11 = load i32, ptr %sign4, align 4, !dbg !384
  store i32 %11, ptr %vsign, align 4, !dbg !385
  %12 = load i32, ptr %usize, align 4, !dbg !386
  %add = add i32 %12, 1, !dbg !387
  store i32 %add, ptr %wsize, align 4, !dbg !388
  br label %do.body, !dbg !389

do.body:                                          ; preds = %if.then
  %13 = load ptr, ptr %w.addr, align 8, !dbg !390
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 0, !dbg !390
  %14 = load i32, ptr %alloced, align 8, !dbg !390
  %15 = load i32, ptr %wsize, align 4, !dbg !390
  %cmp5 = icmp slt i32 %14, %15, !dbg !390
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !393

if.then6:                                         ; preds = %do.body
  %16 = load ptr, ptr %w.addr, align 8, !dbg !390
  %17 = load i32, ptr %wsize, align 4, !dbg !390
  %call = call i32 @mpi_resize(ptr noundef %16, i32 noundef %17) #6, !dbg !390
  br label %if.end, !dbg !390

if.end:                                           ; preds = %if.then6, %do.body
  br label %do.cond, !dbg !393

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !393

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %v.addr, align 8, !dbg !394
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %18, i32 0, i32 5, !dbg !395
  %19 = load ptr, ptr %d, align 8, !dbg !395
  store ptr %19, ptr %up, align 8, !dbg !396
  %20 = load ptr, ptr %u.addr, align 8, !dbg !397
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %20, i32 0, i32 5, !dbg !398
  %21 = load ptr, ptr %d7, align 8, !dbg !398
  store ptr %21, ptr %vp, align 8, !dbg !399
  br label %if.end23, !dbg !400

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %u.addr, align 8, !dbg !401
  %nlimbs8 = getelementptr inbounds %struct.gcry_mpi, ptr %22, i32 0, i32 1, !dbg !403
  %23 = load i32, ptr %nlimbs8, align 4, !dbg !403
  store i32 %23, ptr %usize, align 4, !dbg !404
  %24 = load ptr, ptr %u.addr, align 8, !dbg !405
  %sign9 = getelementptr inbounds %struct.gcry_mpi, ptr %24, i32 0, i32 3, !dbg !406
  %25 = load i32, ptr %sign9, align 4, !dbg !406
  store i32 %25, ptr %usign, align 4, !dbg !407
  %26 = load ptr, ptr %v.addr, align 8, !dbg !408
  %nlimbs10 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 1, !dbg !409
  %27 = load i32, ptr %nlimbs10, align 4, !dbg !409
  store i32 %27, ptr %vsize, align 4, !dbg !410
  %28 = load ptr, ptr %v.addr, align 8, !dbg !411
  %sign11 = getelementptr inbounds %struct.gcry_mpi, ptr %28, i32 0, i32 3, !dbg !412
  %29 = load i32, ptr %sign11, align 4, !dbg !412
  store i32 %29, ptr %vsign, align 4, !dbg !413
  %30 = load i32, ptr %usize, align 4, !dbg !414
  %add12 = add i32 %30, 1, !dbg !415
  store i32 %add12, ptr %wsize, align 4, !dbg !416
  br label %do.body13, !dbg !417

do.body13:                                        ; preds = %if.else
  %31 = load ptr, ptr %w.addr, align 8, !dbg !418
  %alloced14 = getelementptr inbounds %struct.gcry_mpi, ptr %31, i32 0, i32 0, !dbg !418
  %32 = load i32, ptr %alloced14, align 8, !dbg !418
  %33 = load i32, ptr %wsize, align 4, !dbg !418
  %cmp15 = icmp slt i32 %32, %33, !dbg !418
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !421

if.then16:                                        ; preds = %do.body13
  %34 = load ptr, ptr %w.addr, align 8, !dbg !418
  %35 = load i32, ptr %wsize, align 4, !dbg !418
  %call17 = call i32 @mpi_resize(ptr noundef %34, i32 noundef %35) #6, !dbg !418
  br label %if.end18, !dbg !418

if.end18:                                         ; preds = %if.then16, %do.body13
  br label %do.cond19, !dbg !421

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !421

do.end20:                                         ; preds = %do.cond19
  %36 = load ptr, ptr %u.addr, align 8, !dbg !422
  %d21 = getelementptr inbounds %struct.gcry_mpi, ptr %36, i32 0, i32 5, !dbg !423
  %37 = load ptr, ptr %d21, align 8, !dbg !423
  store ptr %37, ptr %up, align 8, !dbg !424
  %38 = load ptr, ptr %v.addr, align 8, !dbg !425
  %d22 = getelementptr inbounds %struct.gcry_mpi, ptr %38, i32 0, i32 5, !dbg !426
  %39 = load ptr, ptr %d22, align 8, !dbg !426
  store ptr %39, ptr %vp, align 8, !dbg !427
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %do.end
  %40 = load ptr, ptr %w.addr, align 8, !dbg !428
  %d24 = getelementptr inbounds %struct.gcry_mpi, ptr %40, i32 0, i32 5, !dbg !429
  %41 = load ptr, ptr %d24, align 8, !dbg !429
  store ptr %41, ptr %wp, align 8, !dbg !430
  store i32 0, ptr %wsign, align 4, !dbg !431
  %42 = load i32, ptr %vsize, align 4, !dbg !432
  %tobool = icmp ne i32 %42, 0, !dbg !432
  br i1 %tobool, label %if.else32, label %if.then25, !dbg !433

if.then25:                                        ; preds = %if.end23
  br label %do.body26, !dbg !434

do.body26:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #5, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !344, metadata !DIExpression()), !dbg !435
  store i32 0, ptr %_i, align 4, !dbg !436
  br label %for.cond, !dbg !436

for.cond:                                         ; preds = %for.inc, %do.body26
  %43 = load i32, ptr %_i, align 4, !dbg !438
  %44 = load i32, ptr %usize, align 4, !dbg !438
  %cmp27 = icmp slt i32 %43, %44, !dbg !438
  br i1 %cmp27, label %for.body, label %for.end, !dbg !436

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %up, align 8, !dbg !438
  %46 = load i32, ptr %_i, align 4, !dbg !438
  %idxprom = sext i32 %46 to i64, !dbg !438
  %arrayidx = getelementptr i64, ptr %45, i64 %idxprom, !dbg !438
  %47 = load i64, ptr %arrayidx, align 8, !dbg !438
  %48 = load ptr, ptr %wp, align 8, !dbg !438
  %49 = load i32, ptr %_i, align 4, !dbg !438
  %idxprom28 = sext i32 %49 to i64, !dbg !438
  %arrayidx29 = getelementptr i64, ptr %48, i64 %idxprom28, !dbg !438
  store i64 %47, ptr %arrayidx29, align 8, !dbg !438
  br label %for.inc, !dbg !438

for.inc:                                          ; preds = %for.body
  %50 = load i32, ptr %_i, align 4, !dbg !438
  %inc = add i32 %50, 1, !dbg !438
  store i32 %inc, ptr %_i, align 4, !dbg !438
  br label %for.cond, !dbg !438, !llvm.loop !440

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #5, !dbg !434
  br label %do.cond30, !dbg !435

do.cond30:                                        ; preds = %for.end
  br label %do.end31, !dbg !435

do.end31:                                         ; preds = %do.cond30
  %51 = load i32, ptr %usize, align 4, !dbg !441
  store i32 %51, ptr %wsize, align 4, !dbg !442
  %52 = load i32, ptr %usign, align 4, !dbg !443
  store i32 %52, ptr %wsign, align 4, !dbg !444
  br label %if.end100, !dbg !445

if.else32:                                        ; preds = %if.end23
  %53 = load i32, ptr %usign, align 4, !dbg !446
  %54 = load i32, ptr %vsign, align 4, !dbg !447
  %cmp33 = icmp ne i32 %53, %54, !dbg !448
  br i1 %cmp33, label %if.then34, label %if.else90, !dbg !449

if.then34:                                        ; preds = %if.else32
  %55 = load i32, ptr %usize, align 4, !dbg !450
  %56 = load i32, ptr %vsize, align 4, !dbg !453
  %cmp35 = icmp ne i32 %55, %56, !dbg !454
  br i1 %cmp35, label %if.then36, label %if.else47, !dbg !455

if.then36:                                        ; preds = %if.then34
  %57 = load ptr, ptr %wp, align 8, !dbg !456
  %58 = load ptr, ptr %up, align 8, !dbg !458
  %59 = load i32, ptr %usize, align 4, !dbg !459
  %60 = load ptr, ptr %vp, align 8, !dbg !460
  %61 = load i32, ptr %vsize, align 4, !dbg !461
  %call37 = call i64 @mpihelp_sub(ptr noundef %57, ptr noundef %58, i32 noundef %59, ptr noundef %60, i32 noundef %61) #6, !dbg !462
  %62 = load i32, ptr %usize, align 4, !dbg !463
  store i32 %62, ptr %wsize, align 4, !dbg !464
  br label %do.body38, !dbg !465

do.body38:                                        ; preds = %if.then36
  br label %while.cond, !dbg !466

while.cond:                                       ; preds = %if.end44, %do.body38
  %63 = load i32, ptr %wsize, align 4, !dbg !466
  %cmp39 = icmp sgt i32 %63, 0, !dbg !466
  br i1 %cmp39, label %while.body, label %while.end, !dbg !466

while.body:                                       ; preds = %while.cond
  %64 = load ptr, ptr %wp, align 8, !dbg !468
  %65 = load i32, ptr %wsize, align 4, !dbg !468
  %sub = sub i32 %65, 1, !dbg !468
  %idxprom40 = sext i32 %sub to i64, !dbg !468
  %arrayidx41 = getelementptr i64, ptr %64, i64 %idxprom40, !dbg !468
  %66 = load i64, ptr %arrayidx41, align 8, !dbg !468
  %tobool42 = icmp ne i64 %66, 0, !dbg !468
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !471

if.then43:                                        ; preds = %while.body
  br label %while.end, !dbg !468

if.end44:                                         ; preds = %while.body
  %67 = load i32, ptr %wsize, align 4, !dbg !471
  %dec = add i32 %67, -1, !dbg !471
  store i32 %dec, ptr %wsize, align 4, !dbg !471
  br label %while.cond, !dbg !466, !llvm.loop !472

while.end:                                        ; preds = %if.then43, %while.cond
  br label %do.cond45, !dbg !466

do.cond45:                                        ; preds = %while.end
  br label %do.end46, !dbg !466

do.end46:                                         ; preds = %do.cond45
  %68 = load i32, ptr %usign, align 4, !dbg !473
  store i32 %68, ptr %wsign, align 4, !dbg !474
  br label %if.end89, !dbg !475

if.else47:                                        ; preds = %if.then34
  %69 = load ptr, ptr %up, align 8, !dbg !476
  %70 = load ptr, ptr %vp, align 8, !dbg !478
  %71 = load i32, ptr %usize, align 4, !dbg !479
  %call48 = call i32 @mpihelp_cmp(ptr noundef %69, ptr noundef %70, i32 noundef %71) #6, !dbg !480
  %cmp49 = icmp slt i32 %call48, 0, !dbg !481
  br i1 %cmp49, label %if.then50, label %if.else69, !dbg !482

if.then50:                                        ; preds = %if.else47
  %72 = load ptr, ptr %wp, align 8, !dbg !483
  %73 = load ptr, ptr %vp, align 8, !dbg !485
  %74 = load ptr, ptr %up, align 8, !dbg !486
  %75 = load i32, ptr %usize, align 4, !dbg !487
  %call51 = call i64 @mpihelp_sub_n(ptr noundef %72, ptr noundef %73, ptr noundef %74, i32 noundef %75) #6, !dbg !488
  %76 = load i32, ptr %usize, align 4, !dbg !489
  store i32 %76, ptr %wsize, align 4, !dbg !490
  br label %do.body52, !dbg !491

do.body52:                                        ; preds = %if.then50
  br label %while.cond53, !dbg !492

while.cond53:                                     ; preds = %if.end61, %do.body52
  %77 = load i32, ptr %wsize, align 4, !dbg !492
  %cmp54 = icmp sgt i32 %77, 0, !dbg !492
  br i1 %cmp54, label %while.body55, label %while.end63, !dbg !492

while.body55:                                     ; preds = %while.cond53
  %78 = load ptr, ptr %wp, align 8, !dbg !494
  %79 = load i32, ptr %wsize, align 4, !dbg !494
  %sub56 = sub i32 %79, 1, !dbg !494
  %idxprom57 = sext i32 %sub56 to i64, !dbg !494
  %arrayidx58 = getelementptr i64, ptr %78, i64 %idxprom57, !dbg !494
  %80 = load i64, ptr %arrayidx58, align 8, !dbg !494
  %tobool59 = icmp ne i64 %80, 0, !dbg !494
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !497

if.then60:                                        ; preds = %while.body55
  br label %while.end63, !dbg !494

if.end61:                                         ; preds = %while.body55
  %81 = load i32, ptr %wsize, align 4, !dbg !497
  %dec62 = add i32 %81, -1, !dbg !497
  store i32 %dec62, ptr %wsize, align 4, !dbg !497
  br label %while.cond53, !dbg !492, !llvm.loop !498

while.end63:                                      ; preds = %if.then60, %while.cond53
  br label %do.cond64, !dbg !492

do.cond64:                                        ; preds = %while.end63
  br label %do.end65, !dbg !492

do.end65:                                         ; preds = %do.cond64
  %82 = load i32, ptr %usign, align 4, !dbg !499
  %tobool66 = icmp ne i32 %82, 0, !dbg !499
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !501

if.then67:                                        ; preds = %do.end65
  store i32 1, ptr %wsign, align 4, !dbg !502
  br label %if.end68, !dbg !503

if.end68:                                         ; preds = %if.then67, %do.end65
  br label %if.end88, !dbg !504

if.else69:                                        ; preds = %if.else47
  %83 = load ptr, ptr %wp, align 8, !dbg !505
  %84 = load ptr, ptr %up, align 8, !dbg !507
  %85 = load ptr, ptr %vp, align 8, !dbg !508
  %86 = load i32, ptr %usize, align 4, !dbg !509
  %call70 = call i64 @mpihelp_sub_n(ptr noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86) #6, !dbg !510
  %87 = load i32, ptr %usize, align 4, !dbg !511
  store i32 %87, ptr %wsize, align 4, !dbg !512
  br label %do.body71, !dbg !513

do.body71:                                        ; preds = %if.else69
  br label %while.cond72, !dbg !514

while.cond72:                                     ; preds = %if.end80, %do.body71
  %88 = load i32, ptr %wsize, align 4, !dbg !514
  %cmp73 = icmp sgt i32 %88, 0, !dbg !514
  br i1 %cmp73, label %while.body74, label %while.end82, !dbg !514

while.body74:                                     ; preds = %while.cond72
  %89 = load ptr, ptr %wp, align 8, !dbg !516
  %90 = load i32, ptr %wsize, align 4, !dbg !516
  %sub75 = sub i32 %90, 1, !dbg !516
  %idxprom76 = sext i32 %sub75 to i64, !dbg !516
  %arrayidx77 = getelementptr i64, ptr %89, i64 %idxprom76, !dbg !516
  %91 = load i64, ptr %arrayidx77, align 8, !dbg !516
  %tobool78 = icmp ne i64 %91, 0, !dbg !516
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !519

if.then79:                                        ; preds = %while.body74
  br label %while.end82, !dbg !516

if.end80:                                         ; preds = %while.body74
  %92 = load i32, ptr %wsize, align 4, !dbg !519
  %dec81 = add i32 %92, -1, !dbg !519
  store i32 %dec81, ptr %wsize, align 4, !dbg !519
  br label %while.cond72, !dbg !514, !llvm.loop !520

while.end82:                                      ; preds = %if.then79, %while.cond72
  br label %do.cond83, !dbg !514

do.cond83:                                        ; preds = %while.end82
  br label %do.end84, !dbg !514

do.end84:                                         ; preds = %do.cond83
  %93 = load i32, ptr %usign, align 4, !dbg !521
  %tobool85 = icmp ne i32 %93, 0, !dbg !521
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !523

if.then86:                                        ; preds = %do.end84
  store i32 1, ptr %wsign, align 4, !dbg !524
  br label %if.end87, !dbg !525

if.end87:                                         ; preds = %if.then86, %do.end84
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end68
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %do.end46
  br label %if.end99, !dbg !526

if.else90:                                        ; preds = %if.else32
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #5, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !348, metadata !DIExpression()), !dbg !528
  %94 = load ptr, ptr %wp, align 8, !dbg !529
  %95 = load ptr, ptr %up, align 8, !dbg !530
  %96 = load i32, ptr %usize, align 4, !dbg !531
  %97 = load ptr, ptr %vp, align 8, !dbg !532
  %98 = load i32, ptr %vsize, align 4, !dbg !533
  %call91 = call i64 @mpihelp_add(ptr noundef %94, ptr noundef %95, i32 noundef %96, ptr noundef %97, i32 noundef %98) #6, !dbg !534
  store i64 %call91, ptr %cy, align 8, !dbg !528
  %99 = load i64, ptr %cy, align 8, !dbg !535
  %100 = load ptr, ptr %wp, align 8, !dbg !536
  %101 = load i32, ptr %usize, align 4, !dbg !537
  %idxprom92 = sext i32 %101 to i64, !dbg !536
  %arrayidx93 = getelementptr i64, ptr %100, i64 %idxprom92, !dbg !536
  store i64 %99, ptr %arrayidx93, align 8, !dbg !538
  %102 = load i32, ptr %usize, align 4, !dbg !539
  %conv = sext i32 %102 to i64, !dbg !539
  %103 = load i64, ptr %cy, align 8, !dbg !540
  %add94 = add i64 %conv, %103, !dbg !541
  %conv95 = trunc i64 %add94 to i32, !dbg !539
  store i32 %conv95, ptr %wsize, align 4, !dbg !542
  %104 = load i32, ptr %usign, align 4, !dbg !543
  %tobool96 = icmp ne i32 %104, 0, !dbg !543
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !545

if.then97:                                        ; preds = %if.else90
  store i32 1, ptr %wsign, align 4, !dbg !546
  br label %if.end98, !dbg !547

if.end98:                                         ; preds = %if.then97, %if.else90
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #5, !dbg !548
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end89
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %do.end31
  %105 = load i32, ptr %wsize, align 4, !dbg !549
  %106 = load ptr, ptr %w.addr, align 8, !dbg !550
  %nlimbs101 = getelementptr inbounds %struct.gcry_mpi, ptr %106, i32 0, i32 1, !dbg !551
  store i32 %105, ptr %nlimbs101, align 4, !dbg !552
  %107 = load i32, ptr %wsign, align 4, !dbg !553
  %108 = load ptr, ptr %w.addr, align 8, !dbg !554
  %sign102 = getelementptr inbounds %struct.gcry_mpi, ptr %108, i32 0, i32 3, !dbg !555
  store i32 %107, ptr %sign102, align 4, !dbg !556
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsign) #5, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %vsign) #5, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %usign) #5, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #5, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %vsize) #5, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %usize) #5, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #5, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #5, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #5, !dbg !557
  ret void, !dbg !557
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mpihelp_sub(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, ptr noundef %s2_ptr, i32 noundef %s2_size) #4 align 16 !dbg !558 {
entry:
  %res_ptr.addr = alloca ptr, align 8
  %s1_ptr.addr = alloca ptr, align 8
  %s1_size.addr = alloca i32, align 4
  %s2_ptr.addr = alloca ptr, align 8
  %s2_size.addr = alloca i32, align 4
  %cy = alloca i64, align 8
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !562, metadata !DIExpression()), !dbg !568
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !563, metadata !DIExpression()), !dbg !569
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !564, metadata !DIExpression()), !dbg !570
  store ptr %s2_ptr, ptr %s2_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_ptr.addr, metadata !565, metadata !DIExpression()), !dbg !571
  store i32 %s2_size, ptr %s2_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s2_size.addr, metadata !566, metadata !DIExpression()), !dbg !572
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #5, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !567, metadata !DIExpression()), !dbg !574
  store i64 0, ptr %cy, align 8, !dbg !574
  %0 = load i32, ptr %s2_size.addr, align 4, !dbg !575
  %tobool = icmp ne i32 %0, 0, !dbg !575
  br i1 %tobool, label %if.then, label %if.end, !dbg !577

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %res_ptr.addr, align 8, !dbg !578
  %2 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !579
  %3 = load ptr, ptr %s2_ptr.addr, align 8, !dbg !580
  %4 = load i32, ptr %s2_size.addr, align 4, !dbg !581
  %call = call i64 @mpihelp_sub_n(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #6, !dbg !582
  store i64 %call, ptr %cy, align 8, !dbg !583
  br label %if.end, !dbg !584

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %s1_size.addr, align 4, !dbg !585
  %6 = load i32, ptr %s2_size.addr, align 4, !dbg !587
  %sub = sub i32 %5, %6, !dbg !588
  %tobool1 = icmp ne i32 %sub, 0, !dbg !588
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !589

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %res_ptr.addr, align 8, !dbg !590
  %8 = load i32, ptr %s2_size.addr, align 4, !dbg !591
  %idx.ext = sext i32 %8 to i64, !dbg !592
  %add.ptr = getelementptr i64, ptr %7, i64 %idx.ext, !dbg !592
  %9 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !593
  %10 = load i32, ptr %s2_size.addr, align 4, !dbg !594
  %idx.ext3 = sext i32 %10 to i64, !dbg !595
  %add.ptr4 = getelementptr i64, ptr %9, i64 %idx.ext3, !dbg !595
  %11 = load i32, ptr %s1_size.addr, align 4, !dbg !596
  %12 = load i32, ptr %s2_size.addr, align 4, !dbg !597
  %sub5 = sub i32 %11, %12, !dbg !598
  %13 = load i64, ptr %cy, align 8, !dbg !599
  %call6 = call i64 @mpihelp_sub_1(ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef %sub5, i64 noundef %13) #6, !dbg !600
  store i64 %call6, ptr %cy, align 8, !dbg !601
  br label %if.end7, !dbg !602

if.end7:                                          ; preds = %if.then2, %if.end
  %14 = load i64, ptr %cy, align 8, !dbg !603
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #5, !dbg !604
  ret i64 %14, !dbg !605
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !606 dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !609 dso_local i64 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mpihelp_add(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, ptr noundef %s2_ptr, i32 noundef %s2_size) #4 align 16 !dbg !612 {
entry:
  %res_ptr.addr = alloca ptr, align 8
  %s1_ptr.addr = alloca ptr, align 8
  %s1_size.addr = alloca i32, align 4
  %s2_ptr.addr = alloca ptr, align 8
  %s2_size.addr = alloca i32, align 4
  %cy = alloca i64, align 8
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !614, metadata !DIExpression()), !dbg !620
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !615, metadata !DIExpression()), !dbg !621
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !616, metadata !DIExpression()), !dbg !622
  store ptr %s2_ptr, ptr %s2_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_ptr.addr, metadata !617, metadata !DIExpression()), !dbg !623
  store i32 %s2_size, ptr %s2_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s2_size.addr, metadata !618, metadata !DIExpression()), !dbg !624
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #5, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !619, metadata !DIExpression()), !dbg !626
  store i64 0, ptr %cy, align 8, !dbg !626
  %0 = load i32, ptr %s2_size.addr, align 4, !dbg !627
  %tobool = icmp ne i32 %0, 0, !dbg !627
  br i1 %tobool, label %if.then, label %if.end, !dbg !629

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %res_ptr.addr, align 8, !dbg !630
  %2 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !631
  %3 = load ptr, ptr %s2_ptr.addr, align 8, !dbg !632
  %4 = load i32, ptr %s2_size.addr, align 4, !dbg !633
  %call = call i64 @mpihelp_add_n(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #6, !dbg !634
  store i64 %call, ptr %cy, align 8, !dbg !635
  br label %if.end, !dbg !636

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %s1_size.addr, align 4, !dbg !637
  %6 = load i32, ptr %s2_size.addr, align 4, !dbg !639
  %sub = sub i32 %5, %6, !dbg !640
  %tobool1 = icmp ne i32 %sub, 0, !dbg !640
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !641

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %res_ptr.addr, align 8, !dbg !642
  %8 = load i32, ptr %s2_size.addr, align 4, !dbg !643
  %idx.ext = sext i32 %8 to i64, !dbg !644
  %add.ptr = getelementptr i64, ptr %7, i64 %idx.ext, !dbg !644
  %9 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !645
  %10 = load i32, ptr %s2_size.addr, align 4, !dbg !646
  %idx.ext3 = sext i32 %10 to i64, !dbg !647
  %add.ptr4 = getelementptr i64, ptr %9, i64 %idx.ext3, !dbg !647
  %11 = load i32, ptr %s1_size.addr, align 4, !dbg !648
  %12 = load i32, ptr %s2_size.addr, align 4, !dbg !649
  %sub5 = sub i32 %11, %12, !dbg !650
  %13 = load i64, ptr %cy, align 8, !dbg !651
  %call6 = call i64 @mpihelp_add_1(ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef %sub5, i64 noundef %13) #6, !dbg !652
  store i64 %call6, ptr %cy, align 8, !dbg !653
  br label %if.end7, !dbg !654

if.end7:                                          ; preds = %if.then2, %if.end
  %14 = load i64, ptr %cy, align 8, !dbg !655
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #5, !dbg !656
  ret i64 %14, !dbg !657
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_sub(ptr noundef %w, ptr noundef %u, ptr noundef %v) #0 align 16 !dbg !658 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %vv = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !660, metadata !DIExpression()), !dbg !664
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !661, metadata !DIExpression()), !dbg !665
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !662, metadata !DIExpression()), !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr %vv) #5, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %vv, metadata !663, metadata !DIExpression()), !dbg !668
  %0 = load ptr, ptr %v.addr, align 8, !dbg !669
  %call = call ptr @mpi_copy(ptr noundef %0) #6, !dbg !670
  store ptr %call, ptr %vv, align 8, !dbg !668
  %1 = load ptr, ptr %vv, align 8, !dbg !671
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3, !dbg !672
  %2 = load i32, ptr %sign, align 4, !dbg !672
  %tobool = icmp ne i32 %2, 0, !dbg !673
  %lnot = xor i1 %tobool, true, !dbg !673
  %lnot.ext = zext i1 %lnot to i32, !dbg !673
  %3 = load ptr, ptr %vv, align 8, !dbg !674
  %sign1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 3, !dbg !675
  store i32 %lnot.ext, ptr %sign1, align 4, !dbg !676
  %4 = load ptr, ptr %w.addr, align 8, !dbg !677
  %5 = load ptr, ptr %u.addr, align 8, !dbg !678
  %6 = load ptr, ptr %vv, align 8, !dbg !679
  call void @mpi_add(ptr noundef %4, ptr noundef %5, ptr noundef %6) #6, !dbg !680
  %7 = load ptr, ptr %vv, align 8, !dbg !681
  call void @mpi_free(ptr noundef %7) #6, !dbg !682
  call void @llvm.lifetime.end.p0(i64 8, ptr %vv) #5, !dbg !683
  ret void, !dbg !683
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !684 dso_local ptr @mpi_copy(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !687 dso_local void @mpi_free(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_addm(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %m) #0 align 16 !dbg !690 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !694, metadata !DIExpression()), !dbg !698
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !695, metadata !DIExpression()), !dbg !699
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !696, metadata !DIExpression()), !dbg !700
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !697, metadata !DIExpression()), !dbg !701
  %0 = load ptr, ptr %w.addr, align 8, !dbg !702
  %1 = load ptr, ptr %u.addr, align 8, !dbg !703
  %2 = load ptr, ptr %v.addr, align 8, !dbg !704
  call void @mpi_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6, !dbg !705
  %3 = load ptr, ptr %w.addr, align 8, !dbg !706
  %4 = load ptr, ptr %w.addr, align 8, !dbg !707
  %5 = load ptr, ptr %m.addr, align 8, !dbg !708
  call void @mpi_mod(ptr noundef %3, ptr noundef %4, ptr noundef %5) #6, !dbg !709
  ret void, !dbg !710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !711 dso_local void @mpi_mod(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_subm(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %m) #0 align 16 !dbg !712 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !714, metadata !DIExpression()), !dbg !718
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !715, metadata !DIExpression()), !dbg !719
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !716, metadata !DIExpression()), !dbg !720
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !717, metadata !DIExpression()), !dbg !721
  %0 = load ptr, ptr %w.addr, align 8, !dbg !722
  %1 = load ptr, ptr %u.addr, align 8, !dbg !723
  %2 = load ptr, ptr %v.addr, align 8, !dbg !724
  call void @mpi_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6, !dbg !725
  %3 = load ptr, ptr %w.addr, align 8, !dbg !726
  %4 = load ptr, ptr %w.addr, align 8, !dbg !727
  %5 = load ptr, ptr %m.addr, align 8, !dbg !728
  call void @mpi_mod(ptr noundef %3, ptr noundef %4, ptr noundef %5) #6, !dbg !729
  ret void, !dbg !730
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !731 dso_local i64 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_add287", scope: !2, file: !3, line: 132, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpi-add.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpi_add\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpi-add.ll lib/crypto/mpi/mpi-add.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/mpi/mpi-add.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a1f75f062eec6c36ba019bd9fc063afd")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !11}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_sub288", scope: !2, file: !3, line: 141, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_addm289", scope: !2, file: !3, line: 148, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_subm290", scope: !2, file: !3, line: 155, type: !5, isLocal: true, isDefinition: true)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 8, !"cf-protection-branch", i32 1}
!17 = !{i32 4, !"function_return_thunk_extern", i32 1}
!18 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!19 = !{i32 1, !"Code Model", i32 2}
!20 = !{i32 1, !"override-stack-alignment", i32 8}
!21 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!22 = distinct !DISubprogram(name: "mpi_add_ui", scope: !3, file: !3, line: 20, type: !23, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !25, !40}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !26, line: 40, baseType: !27)
!26 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !26, line: 29, size: 256, elements: !29)
!29 = !{!30, !32, !33, !34, !35, !37}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !28, file: !26, line: 30, baseType: !31, size: 32)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !28, file: !26, line: 31, baseType: !31, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !28, file: !26, line: 32, baseType: !31, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !28, file: !26, line: 33, baseType: !31, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !28, file: !26, line: 34, baseType: !36, size: 32, offset: 128)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !28, file: !26, line: 37, baseType: !38, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !26, line: 26, baseType: !40)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{!42, !43, !44, !45, !48, !49, !51, !52, !53, !54}
!42 = !DILocalVariable(name: "w", arg: 1, scope: !22, file: !3, line: 20, type: !25)
!43 = !DILocalVariable(name: "u", arg: 2, scope: !22, file: !3, line: 20, type: !25)
!44 = !DILocalVariable(name: "v", arg: 3, scope: !22, file: !3, line: 20, type: !40)
!45 = !DILocalVariable(name: "wp", scope: !22, file: !3, line: 22, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !47, line: 52, baseType: !38)
!47 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!48 = !DILocalVariable(name: "up", scope: !22, file: !3, line: 22, type: !46)
!49 = !DILocalVariable(name: "usize", scope: !22, file: !3, line: 23, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !47, line: 53, baseType: !31)
!51 = !DILocalVariable(name: "wsize", scope: !22, file: !3, line: 23, type: !50)
!52 = !DILocalVariable(name: "usign", scope: !22, file: !3, line: 24, type: !31)
!53 = !DILocalVariable(name: "wsign", scope: !22, file: !3, line: 24, type: !31)
!54 = !DILocalVariable(name: "cy", scope: !55, file: !3, line: 43, type: !39)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 42, column: 21)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 42, column: 13)
!57 = distinct !DILexicalBlock(scope: !22, file: !3, line: 39, column: 6)
!58 = !DILocation(line: 20, column: 21, scope: !22)
!59 = !DILocation(line: 20, column: 28, scope: !22)
!60 = !DILocation(line: 20, column: 45, scope: !22)
!61 = !DILocation(line: 22, column: 2, scope: !22)
!62 = !DILocation(line: 22, column: 12, scope: !22)
!63 = !DILocation(line: 22, column: 16, scope: !22)
!64 = !DILocation(line: 23, column: 2, scope: !22)
!65 = !DILocation(line: 23, column: 13, scope: !22)
!66 = !DILocation(line: 23, column: 20, scope: !22)
!67 = !DILocation(line: 24, column: 2, scope: !22)
!68 = !DILocation(line: 24, column: 6, scope: !22)
!69 = !DILocation(line: 24, column: 13, scope: !22)
!70 = !DILocation(line: 26, column: 10, scope: !22)
!71 = !DILocation(line: 26, column: 13, scope: !22)
!72 = !DILocation(line: 26, column: 8, scope: !22)
!73 = !DILocation(line: 27, column: 10, scope: !22)
!74 = !DILocation(line: 27, column: 13, scope: !22)
!75 = !DILocation(line: 27, column: 8, scope: !22)
!76 = !DILocation(line: 28, column: 8, scope: !22)
!77 = !DILocation(line: 31, column: 10, scope: !22)
!78 = !DILocation(line: 31, column: 16, scope: !22)
!79 = !DILocation(line: 31, column: 8, scope: !22)
!80 = !DILocation(line: 32, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !22, file: !3, line: 32, column: 6)
!82 = !DILocation(line: 32, column: 9, scope: !81)
!83 = !DILocation(line: 32, column: 19, scope: !81)
!84 = !DILocation(line: 32, column: 17, scope: !81)
!85 = !DILocation(line: 32, column: 6, scope: !22)
!86 = !DILocation(line: 33, column: 14, scope: !81)
!87 = !DILocation(line: 33, column: 17, scope: !81)
!88 = !DILocation(line: 33, column: 3, scope: !81)
!89 = !DILocation(line: 36, column: 7, scope: !22)
!90 = !DILocation(line: 36, column: 10, scope: !22)
!91 = !DILocation(line: 36, column: 5, scope: !22)
!92 = !DILocation(line: 37, column: 7, scope: !22)
!93 = !DILocation(line: 37, column: 10, scope: !22)
!94 = !DILocation(line: 37, column: 5, scope: !22)
!95 = !DILocation(line: 39, column: 7, scope: !57)
!96 = !DILocation(line: 39, column: 6, scope: !22)
!97 = !DILocation(line: 40, column: 11, scope: !98)
!98 = distinct !DILexicalBlock(scope: !57, file: !3, line: 39, column: 14)
!99 = !DILocation(line: 40, column: 3, scope: !98)
!100 = !DILocation(line: 40, column: 9, scope: !98)
!101 = !DILocation(line: 41, column: 11, scope: !98)
!102 = !DILocation(line: 41, column: 9, scope: !98)
!103 = !DILocation(line: 42, column: 2, scope: !98)
!104 = !DILocation(line: 42, column: 14, scope: !56)
!105 = !DILocation(line: 42, column: 13, scope: !57)
!106 = !DILocation(line: 43, column: 3, scope: !55)
!107 = !DILocation(line: 43, column: 14, scope: !55)
!108 = !DILocation(line: 44, column: 22, scope: !55)
!109 = !DILocation(line: 44, column: 26, scope: !55)
!110 = !DILocation(line: 44, column: 30, scope: !55)
!111 = !DILocation(line: 44, column: 37, scope: !55)
!112 = !DILocation(line: 44, column: 8, scope: !55)
!113 = !DILocation(line: 44, column: 6, scope: !55)
!114 = !DILocation(line: 45, column: 15, scope: !55)
!115 = !DILocation(line: 45, column: 3, scope: !55)
!116 = !DILocation(line: 45, column: 6, scope: !55)
!117 = !DILocation(line: 45, column: 13, scope: !55)
!118 = !DILocation(line: 46, column: 11, scope: !55)
!119 = !DILocation(line: 46, column: 19, scope: !55)
!120 = !DILocation(line: 46, column: 17, scope: !55)
!121 = !DILocation(line: 46, column: 9, scope: !55)
!122 = !DILocation(line: 47, column: 2, scope: !56)
!123 = !DILocation(line: 47, column: 2, scope: !55)
!124 = !DILocation(line: 51, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 51, column: 7)
!126 = distinct !DILexicalBlock(scope: !56, file: !3, line: 47, column: 9)
!127 = !DILocation(line: 51, column: 13, scope: !125)
!128 = !DILocation(line: 51, column: 18, scope: !125)
!129 = !DILocation(line: 51, column: 21, scope: !125)
!130 = !DILocation(line: 51, column: 29, scope: !125)
!131 = !DILocation(line: 51, column: 27, scope: !125)
!132 = !DILocation(line: 51, column: 7, scope: !126)
!133 = !DILocation(line: 52, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !125, file: !3, line: 51, column: 32)
!135 = !DILocation(line: 52, column: 16, scope: !134)
!136 = !DILocation(line: 52, column: 14, scope: !134)
!137 = !DILocation(line: 52, column: 4, scope: !134)
!138 = !DILocation(line: 52, column: 10, scope: !134)
!139 = !DILocation(line: 53, column: 10, scope: !134)
!140 = !DILocation(line: 54, column: 3, scope: !134)
!141 = !DILocation(line: 55, column: 18, scope: !142)
!142 = distinct !DILexicalBlock(scope: !125, file: !3, line: 54, column: 10)
!143 = !DILocation(line: 55, column: 22, scope: !142)
!144 = !DILocation(line: 55, column: 26, scope: !142)
!145 = !DILocation(line: 55, column: 33, scope: !142)
!146 = !DILocation(line: 55, column: 4, scope: !142)
!147 = !DILocation(line: 57, column: 12, scope: !142)
!148 = !DILocation(line: 57, column: 21, scope: !142)
!149 = !DILocation(line: 57, column: 24, scope: !142)
!150 = !DILocation(line: 57, column: 29, scope: !142)
!151 = !DILocation(line: 57, column: 33, scope: !142)
!152 = !DILocation(line: 57, column: 18, scope: !142)
!153 = !DILocation(line: 57, column: 10, scope: !142)
!154 = !DILocation(line: 58, column: 10, scope: !142)
!155 = !DILocation(line: 62, column: 14, scope: !22)
!156 = !DILocation(line: 62, column: 2, scope: !22)
!157 = !DILocation(line: 62, column: 5, scope: !22)
!158 = !DILocation(line: 62, column: 12, scope: !22)
!159 = !DILocation(line: 63, column: 14, scope: !22)
!160 = !DILocation(line: 63, column: 2, scope: !22)
!161 = !DILocation(line: 63, column: 5, scope: !22)
!162 = !DILocation(line: 63, column: 12, scope: !22)
!163 = !DILocation(line: 64, column: 1, scope: !22)
!164 = !DISubprogram(name: "mpi_resize", scope: !26, file: !26, line: 49, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubroutineType(types: !166)
!166 = !{!31, !25, !36}
!167 = distinct !DISubprogram(name: "mpihelp_add_1", scope: !168, file: !168, line: 24, type: !169, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!168 = !DIFile(filename: "lib/crypto/mpi/mpi-inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1eb4d706cf80b7747a30df77860dc8e1")
!169 = !DISubroutineType(types: !170)
!170 = !{!39, !46, !46, !50, !39}
!171 = !{!172, !173, !174, !175, !176, !177, !178}
!172 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !167, file: !168, line: 24, type: !46)
!173 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !167, file: !168, line: 24, type: !46)
!174 = !DILocalVariable(name: "s1_size", arg: 3, scope: !167, file: !168, line: 25, type: !50)
!175 = !DILocalVariable(name: "s2_limb", arg: 4, scope: !167, file: !168, line: 25, type: !39)
!176 = !DILocalVariable(name: "x", scope: !167, file: !168, line: 27, type: !39)
!177 = !DILabel(scope: !167, name: "leave", file: !168, line: 42)
!178 = !DILocalVariable(name: "i", scope: !179, file: !168, line: 44, type: !50)
!179 = distinct !DILexicalBlock(scope: !180, file: !168, line: 43, column: 25)
!180 = distinct !DILexicalBlock(scope: !167, file: !168, line: 43, column: 6)
!181 = !DILocation(line: 24, column: 25, scope: !167)
!182 = !DILocation(line: 24, column: 44, scope: !167)
!183 = !DILocation(line: 25, column: 19, scope: !167)
!184 = !DILocation(line: 25, column: 39, scope: !167)
!185 = !DILocation(line: 27, column: 2, scope: !167)
!186 = !DILocation(line: 27, column: 13, scope: !167)
!187 = !DILocation(line: 29, column: 13, scope: !167)
!188 = !DILocation(line: 29, column: 6, scope: !167)
!189 = !DILocation(line: 29, column: 4, scope: !167)
!190 = !DILocation(line: 30, column: 13, scope: !167)
!191 = !DILocation(line: 30, column: 10, scope: !167)
!192 = !DILocation(line: 31, column: 15, scope: !167)
!193 = !DILocation(line: 31, column: 10, scope: !167)
!194 = !DILocation(line: 31, column: 13, scope: !167)
!195 = !DILocation(line: 32, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !167, file: !168, line: 32, column: 6)
!197 = !DILocation(line: 32, column: 16, scope: !196)
!198 = !DILocation(line: 32, column: 14, scope: !196)
!199 = !DILocation(line: 32, column: 6, scope: !167)
!200 = !DILocation(line: 33, column: 3, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !168, line: 32, column: 19)
!202 = !DILocation(line: 33, column: 10, scope: !201)
!203 = !DILocation(line: 34, column: 15, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !168, line: 33, column: 21)
!205 = !DILocation(line: 34, column: 8, scope: !204)
!206 = !DILocation(line: 34, column: 18, scope: !204)
!207 = !DILocation(line: 34, column: 6, scope: !204)
!208 = !DILocation(line: 35, column: 17, scope: !204)
!209 = !DILocation(line: 35, column: 12, scope: !204)
!210 = !DILocation(line: 35, column: 15, scope: !204)
!211 = !DILocation(line: 36, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !168, line: 36, column: 8)
!213 = !DILocation(line: 36, column: 8, scope: !204)
!214 = !DILocation(line: 37, column: 5, scope: !212)
!215 = distinct !{!215, !200, !216, !217, !218}
!216 = !DILocation(line: 38, column: 3, scope: !201)
!217 = !{!"llvm.loop.mustprogress"}
!218 = !{!"llvm.loop.unroll.disable"}
!219 = !DILocation(line: 39, column: 3, scope: !201)
!220 = !DILocation(line: 42, column: 1, scope: !167)
!221 = !DILocation(line: 43, column: 6, scope: !180)
!222 = !DILocation(line: 43, column: 17, scope: !180)
!223 = !DILocation(line: 43, column: 14, scope: !180)
!224 = !DILocation(line: 43, column: 6, scope: !167)
!225 = !DILocation(line: 44, column: 3, scope: !179)
!226 = !DILocation(line: 44, column: 14, scope: !179)
!227 = !DILocation(line: 45, column: 10, scope: !228)
!228 = distinct !DILexicalBlock(scope: !179, file: !168, line: 45, column: 3)
!229 = !DILocation(line: 45, column: 8, scope: !228)
!230 = !DILocation(line: 45, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !168, line: 45, column: 3)
!232 = !DILocation(line: 45, column: 19, scope: !231)
!233 = !DILocation(line: 45, column: 27, scope: !231)
!234 = !DILocation(line: 45, column: 17, scope: !231)
!235 = !DILocation(line: 45, column: 3, scope: !228)
!236 = !DILocation(line: 46, column: 17, scope: !231)
!237 = !DILocation(line: 46, column: 24, scope: !231)
!238 = !DILocation(line: 46, column: 4, scope: !231)
!239 = !DILocation(line: 46, column: 12, scope: !231)
!240 = !DILocation(line: 46, column: 15, scope: !231)
!241 = !DILocation(line: 45, column: 33, scope: !231)
!242 = !DILocation(line: 45, column: 3, scope: !231)
!243 = distinct !{!243, !235, !244, !217, !218}
!244 = !DILocation(line: 46, column: 25, scope: !228)
!245 = !DILocation(line: 47, column: 2, scope: !180)
!246 = !DILocation(line: 47, column: 2, scope: !179)
!247 = !DILocation(line: 48, column: 2, scope: !167)
!248 = !DILocation(line: 49, column: 1, scope: !167)
!249 = distinct !DISubprogram(name: "mpihelp_sub_1", scope: !168, file: !168, line: 67, type: !169, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257}
!251 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !249, file: !168, line: 67, type: !46)
!252 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !249, file: !168, line: 67, type: !46)
!253 = !DILocalVariable(name: "s1_size", arg: 3, scope: !249, file: !168, line: 68, type: !50)
!254 = !DILocalVariable(name: "s2_limb", arg: 4, scope: !249, file: !168, line: 68, type: !39)
!255 = !DILocalVariable(name: "x", scope: !249, file: !168, line: 70, type: !39)
!256 = !DILabel(scope: !249, name: "leave", file: !168, line: 85)
!257 = !DILocalVariable(name: "i", scope: !258, file: !168, line: 87, type: !50)
!258 = distinct !DILexicalBlock(scope: !259, file: !168, line: 86, column: 25)
!259 = distinct !DILexicalBlock(scope: !249, file: !168, line: 86, column: 6)
!260 = !DILocation(line: 67, column: 25, scope: !249)
!261 = !DILocation(line: 67, column: 44, scope: !249)
!262 = !DILocation(line: 68, column: 19, scope: !249)
!263 = !DILocation(line: 68, column: 39, scope: !249)
!264 = !DILocation(line: 70, column: 2, scope: !249)
!265 = !DILocation(line: 70, column: 13, scope: !249)
!266 = !DILocation(line: 72, column: 13, scope: !249)
!267 = !DILocation(line: 72, column: 6, scope: !249)
!268 = !DILocation(line: 72, column: 4, scope: !249)
!269 = !DILocation(line: 73, column: 12, scope: !249)
!270 = !DILocation(line: 73, column: 16, scope: !249)
!271 = !DILocation(line: 73, column: 14, scope: !249)
!272 = !DILocation(line: 73, column: 10, scope: !249)
!273 = !DILocation(line: 74, column: 15, scope: !249)
!274 = !DILocation(line: 74, column: 10, scope: !249)
!275 = !DILocation(line: 74, column: 13, scope: !249)
!276 = !DILocation(line: 75, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !249, file: !168, line: 75, column: 6)
!278 = !DILocation(line: 75, column: 16, scope: !277)
!279 = !DILocation(line: 75, column: 14, scope: !277)
!280 = !DILocation(line: 75, column: 6, scope: !249)
!281 = !DILocation(line: 76, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !277, file: !168, line: 75, column: 19)
!283 = !DILocation(line: 76, column: 10, scope: !282)
!284 = !DILocation(line: 77, column: 15, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !168, line: 76, column: 21)
!286 = !DILocation(line: 77, column: 8, scope: !285)
!287 = !DILocation(line: 77, column: 6, scope: !285)
!288 = !DILocation(line: 78, column: 17, scope: !285)
!289 = !DILocation(line: 78, column: 19, scope: !285)
!290 = !DILocation(line: 78, column: 12, scope: !285)
!291 = !DILocation(line: 78, column: 15, scope: !285)
!292 = !DILocation(line: 79, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !285, file: !168, line: 79, column: 8)
!294 = !DILocation(line: 79, column: 8, scope: !285)
!295 = !DILocation(line: 80, column: 5, scope: !293)
!296 = distinct !{!296, !281, !297, !217, !218}
!297 = !DILocation(line: 81, column: 3, scope: !282)
!298 = !DILocation(line: 82, column: 3, scope: !282)
!299 = !DILocation(line: 85, column: 1, scope: !249)
!300 = !DILocation(line: 86, column: 6, scope: !259)
!301 = !DILocation(line: 86, column: 17, scope: !259)
!302 = !DILocation(line: 86, column: 14, scope: !259)
!303 = !DILocation(line: 86, column: 6, scope: !249)
!304 = !DILocation(line: 87, column: 3, scope: !258)
!305 = !DILocation(line: 87, column: 14, scope: !258)
!306 = !DILocation(line: 88, column: 10, scope: !307)
!307 = distinct !DILexicalBlock(scope: !258, file: !168, line: 88, column: 3)
!308 = !DILocation(line: 88, column: 8, scope: !307)
!309 = !DILocation(line: 88, column: 15, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !168, line: 88, column: 3)
!311 = !DILocation(line: 88, column: 19, scope: !310)
!312 = !DILocation(line: 88, column: 27, scope: !310)
!313 = !DILocation(line: 88, column: 17, scope: !310)
!314 = !DILocation(line: 88, column: 3, scope: !307)
!315 = !DILocation(line: 89, column: 17, scope: !310)
!316 = !DILocation(line: 89, column: 24, scope: !310)
!317 = !DILocation(line: 89, column: 4, scope: !310)
!318 = !DILocation(line: 89, column: 12, scope: !310)
!319 = !DILocation(line: 89, column: 15, scope: !310)
!320 = !DILocation(line: 88, column: 33, scope: !310)
!321 = !DILocation(line: 88, column: 3, scope: !310)
!322 = distinct !{!322, !314, !323, !217, !218}
!323 = !DILocation(line: 89, column: 25, scope: !307)
!324 = !DILocation(line: 90, column: 2, scope: !259)
!325 = !DILocation(line: 90, column: 2, scope: !258)
!326 = !DILocation(line: 91, column: 2, scope: !249)
!327 = !DILocation(line: 92, column: 1, scope: !249)
!328 = distinct !DISubprogram(name: "mpi_add", scope: !3, file: !3, line: 67, type: !329, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !25, !25, !25}
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !348}
!332 = !DILocalVariable(name: "w", arg: 1, scope: !328, file: !3, line: 67, type: !25)
!333 = !DILocalVariable(name: "u", arg: 2, scope: !328, file: !3, line: 67, type: !25)
!334 = !DILocalVariable(name: "v", arg: 3, scope: !328, file: !3, line: 67, type: !25)
!335 = !DILocalVariable(name: "wp", scope: !328, file: !3, line: 69, type: !46)
!336 = !DILocalVariable(name: "up", scope: !328, file: !3, line: 69, type: !46)
!337 = !DILocalVariable(name: "vp", scope: !328, file: !3, line: 69, type: !46)
!338 = !DILocalVariable(name: "usize", scope: !328, file: !3, line: 70, type: !50)
!339 = !DILocalVariable(name: "vsize", scope: !328, file: !3, line: 70, type: !50)
!340 = !DILocalVariable(name: "wsize", scope: !328, file: !3, line: 70, type: !50)
!341 = !DILocalVariable(name: "usign", scope: !328, file: !3, line: 71, type: !31)
!342 = !DILocalVariable(name: "vsign", scope: !328, file: !3, line: 71, type: !31)
!343 = !DILocalVariable(name: "wsign", scope: !328, file: !3, line: 71, type: !31)
!344 = !DILocalVariable(name: "_i", scope: !345, file: !3, line: 98, type: !50)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 98, column: 3)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 97, column: 14)
!347 = distinct !DILexicalBlock(scope: !328, file: !3, line: 97, column: 6)
!348 = !DILocalVariable(name: "cy", scope: !349, file: !3, line: 122, type: !39)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 121, column: 9)
!350 = distinct !DILexicalBlock(scope: !347, file: !3, line: 101, column: 13)
!351 = !DILocation(line: 67, column: 18, scope: !328)
!352 = !DILocation(line: 67, column: 25, scope: !328)
!353 = !DILocation(line: 67, column: 32, scope: !328)
!354 = !DILocation(line: 69, column: 2, scope: !328)
!355 = !DILocation(line: 69, column: 12, scope: !328)
!356 = !DILocation(line: 69, column: 16, scope: !328)
!357 = !DILocation(line: 69, column: 20, scope: !328)
!358 = !DILocation(line: 70, column: 2, scope: !328)
!359 = !DILocation(line: 70, column: 13, scope: !328)
!360 = !DILocation(line: 70, column: 20, scope: !328)
!361 = !DILocation(line: 70, column: 27, scope: !328)
!362 = !DILocation(line: 71, column: 2, scope: !328)
!363 = !DILocation(line: 71, column: 6, scope: !328)
!364 = !DILocation(line: 71, column: 13, scope: !328)
!365 = !DILocation(line: 71, column: 20, scope: !328)
!366 = !DILocation(line: 73, column: 6, scope: !367)
!367 = distinct !DILexicalBlock(scope: !328, file: !3, line: 73, column: 6)
!368 = !DILocation(line: 73, column: 9, scope: !367)
!369 = !DILocation(line: 73, column: 18, scope: !367)
!370 = !DILocation(line: 73, column: 21, scope: !367)
!371 = !DILocation(line: 73, column: 16, scope: !367)
!372 = !DILocation(line: 73, column: 6, scope: !328)
!373 = !DILocation(line: 74, column: 11, scope: !374)
!374 = distinct !DILexicalBlock(scope: !367, file: !3, line: 73, column: 29)
!375 = !DILocation(line: 74, column: 14, scope: !374)
!376 = !DILocation(line: 74, column: 9, scope: !374)
!377 = !DILocation(line: 75, column: 11, scope: !374)
!378 = !DILocation(line: 75, column: 14, scope: !374)
!379 = !DILocation(line: 75, column: 9, scope: !374)
!380 = !DILocation(line: 76, column: 11, scope: !374)
!381 = !DILocation(line: 76, column: 14, scope: !374)
!382 = !DILocation(line: 76, column: 9, scope: !374)
!383 = !DILocation(line: 77, column: 11, scope: !374)
!384 = !DILocation(line: 77, column: 14, scope: !374)
!385 = !DILocation(line: 77, column: 9, scope: !374)
!386 = !DILocation(line: 78, column: 11, scope: !374)
!387 = !DILocation(line: 78, column: 17, scope: !374)
!388 = !DILocation(line: 78, column: 9, scope: !374)
!389 = !DILocation(line: 79, column: 3, scope: !374)
!390 = !DILocation(line: 79, column: 3, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 79, column: 3)
!392 = distinct !DILexicalBlock(scope: !374, file: !3, line: 79, column: 3)
!393 = !DILocation(line: 79, column: 3, scope: !392)
!394 = !DILocation(line: 81, column: 8, scope: !374)
!395 = !DILocation(line: 81, column: 11, scope: !374)
!396 = !DILocation(line: 81, column: 6, scope: !374)
!397 = !DILocation(line: 82, column: 8, scope: !374)
!398 = !DILocation(line: 82, column: 11, scope: !374)
!399 = !DILocation(line: 82, column: 6, scope: !374)
!400 = !DILocation(line: 83, column: 2, scope: !374)
!401 = !DILocation(line: 84, column: 11, scope: !402)
!402 = distinct !DILexicalBlock(scope: !367, file: !3, line: 83, column: 9)
!403 = !DILocation(line: 84, column: 14, scope: !402)
!404 = !DILocation(line: 84, column: 9, scope: !402)
!405 = !DILocation(line: 85, column: 11, scope: !402)
!406 = !DILocation(line: 85, column: 14, scope: !402)
!407 = !DILocation(line: 85, column: 9, scope: !402)
!408 = !DILocation(line: 86, column: 11, scope: !402)
!409 = !DILocation(line: 86, column: 14, scope: !402)
!410 = !DILocation(line: 86, column: 9, scope: !402)
!411 = !DILocation(line: 87, column: 11, scope: !402)
!412 = !DILocation(line: 87, column: 14, scope: !402)
!413 = !DILocation(line: 87, column: 9, scope: !402)
!414 = !DILocation(line: 88, column: 11, scope: !402)
!415 = !DILocation(line: 88, column: 17, scope: !402)
!416 = !DILocation(line: 88, column: 9, scope: !402)
!417 = !DILocation(line: 89, column: 3, scope: !402)
!418 = !DILocation(line: 89, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 89, column: 3)
!420 = distinct !DILexicalBlock(scope: !402, file: !3, line: 89, column: 3)
!421 = !DILocation(line: 89, column: 3, scope: !420)
!422 = !DILocation(line: 91, column: 8, scope: !402)
!423 = !DILocation(line: 91, column: 11, scope: !402)
!424 = !DILocation(line: 91, column: 6, scope: !402)
!425 = !DILocation(line: 92, column: 8, scope: !402)
!426 = !DILocation(line: 92, column: 11, scope: !402)
!427 = !DILocation(line: 92, column: 6, scope: !402)
!428 = !DILocation(line: 94, column: 7, scope: !328)
!429 = !DILocation(line: 94, column: 10, scope: !328)
!430 = !DILocation(line: 94, column: 5, scope: !328)
!431 = !DILocation(line: 95, column: 8, scope: !328)
!432 = !DILocation(line: 97, column: 7, scope: !347)
!433 = !DILocation(line: 97, column: 6, scope: !328)
!434 = !DILocation(line: 98, column: 3, scope: !346)
!435 = !DILocation(line: 98, column: 3, scope: !345)
!436 = !DILocation(line: 98, column: 3, scope: !437)
!437 = distinct !DILexicalBlock(scope: !345, file: !3, line: 98, column: 3)
!438 = !DILocation(line: 98, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !437, file: !3, line: 98, column: 3)
!440 = distinct !{!440, !436, !436, !217, !218}
!441 = !DILocation(line: 99, column: 11, scope: !346)
!442 = !DILocation(line: 99, column: 9, scope: !346)
!443 = !DILocation(line: 100, column: 11, scope: !346)
!444 = !DILocation(line: 100, column: 9, scope: !346)
!445 = !DILocation(line: 101, column: 2, scope: !346)
!446 = !DILocation(line: 101, column: 13, scope: !350)
!447 = !DILocation(line: 101, column: 22, scope: !350)
!448 = !DILocation(line: 101, column: 19, scope: !350)
!449 = !DILocation(line: 101, column: 13, scope: !347)
!450 = !DILocation(line: 103, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 103, column: 7)
!452 = distinct !DILexicalBlock(scope: !350, file: !3, line: 101, column: 29)
!453 = !DILocation(line: 103, column: 16, scope: !451)
!454 = !DILocation(line: 103, column: 13, scope: !451)
!455 = !DILocation(line: 103, column: 7, scope: !452)
!456 = !DILocation(line: 104, column: 16, scope: !457)
!457 = distinct !DILexicalBlock(scope: !451, file: !3, line: 103, column: 23)
!458 = !DILocation(line: 104, column: 20, scope: !457)
!459 = !DILocation(line: 104, column: 24, scope: !457)
!460 = !DILocation(line: 104, column: 31, scope: !457)
!461 = !DILocation(line: 104, column: 35, scope: !457)
!462 = !DILocation(line: 104, column: 4, scope: !457)
!463 = !DILocation(line: 105, column: 12, scope: !457)
!464 = !DILocation(line: 105, column: 10, scope: !457)
!465 = !DILocation(line: 106, column: 4, scope: !457)
!466 = !DILocation(line: 106, column: 4, scope: !467)
!467 = distinct !DILexicalBlock(scope: !457, file: !3, line: 106, column: 4)
!468 = !DILocation(line: 106, column: 4, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 106, column: 4)
!470 = distinct !DILexicalBlock(scope: !467, file: !3, line: 106, column: 4)
!471 = !DILocation(line: 106, column: 4, scope: !470)
!472 = distinct !{!472, !466, !466, !217, !218}
!473 = !DILocation(line: 107, column: 12, scope: !457)
!474 = !DILocation(line: 107, column: 10, scope: !457)
!475 = !DILocation(line: 108, column: 3, scope: !457)
!476 = !DILocation(line: 108, column: 26, scope: !477)
!477 = distinct !DILexicalBlock(scope: !451, file: !3, line: 108, column: 14)
!478 = !DILocation(line: 108, column: 30, scope: !477)
!479 = !DILocation(line: 108, column: 34, scope: !477)
!480 = !DILocation(line: 108, column: 14, scope: !477)
!481 = !DILocation(line: 108, column: 41, scope: !477)
!482 = !DILocation(line: 108, column: 14, scope: !451)
!483 = !DILocation(line: 109, column: 18, scope: !484)
!484 = distinct !DILexicalBlock(scope: !477, file: !3, line: 108, column: 46)
!485 = !DILocation(line: 109, column: 22, scope: !484)
!486 = !DILocation(line: 109, column: 26, scope: !484)
!487 = !DILocation(line: 109, column: 30, scope: !484)
!488 = !DILocation(line: 109, column: 4, scope: !484)
!489 = !DILocation(line: 110, column: 12, scope: !484)
!490 = !DILocation(line: 110, column: 10, scope: !484)
!491 = !DILocation(line: 111, column: 4, scope: !484)
!492 = !DILocation(line: 111, column: 4, scope: !493)
!493 = distinct !DILexicalBlock(scope: !484, file: !3, line: 111, column: 4)
!494 = !DILocation(line: 111, column: 4, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 111, column: 4)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 111, column: 4)
!497 = !DILocation(line: 111, column: 4, scope: !496)
!498 = distinct !{!498, !492, !492, !217, !218}
!499 = !DILocation(line: 112, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !484, file: !3, line: 112, column: 8)
!501 = !DILocation(line: 112, column: 8, scope: !484)
!502 = !DILocation(line: 113, column: 11, scope: !500)
!503 = !DILocation(line: 113, column: 5, scope: !500)
!504 = !DILocation(line: 114, column: 3, scope: !484)
!505 = !DILocation(line: 115, column: 18, scope: !506)
!506 = distinct !DILexicalBlock(scope: !477, file: !3, line: 114, column: 10)
!507 = !DILocation(line: 115, column: 22, scope: !506)
!508 = !DILocation(line: 115, column: 26, scope: !506)
!509 = !DILocation(line: 115, column: 30, scope: !506)
!510 = !DILocation(line: 115, column: 4, scope: !506)
!511 = !DILocation(line: 116, column: 12, scope: !506)
!512 = !DILocation(line: 116, column: 10, scope: !506)
!513 = !DILocation(line: 117, column: 4, scope: !506)
!514 = !DILocation(line: 117, column: 4, scope: !515)
!515 = distinct !DILexicalBlock(scope: !506, file: !3, line: 117, column: 4)
!516 = !DILocation(line: 117, column: 4, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 117, column: 4)
!518 = distinct !DILexicalBlock(scope: !515, file: !3, line: 117, column: 4)
!519 = !DILocation(line: 117, column: 4, scope: !518)
!520 = distinct !{!520, !514, !514, !217, !218}
!521 = !DILocation(line: 118, column: 8, scope: !522)
!522 = distinct !DILexicalBlock(scope: !506, file: !3, line: 118, column: 8)
!523 = !DILocation(line: 118, column: 8, scope: !506)
!524 = !DILocation(line: 119, column: 11, scope: !522)
!525 = !DILocation(line: 119, column: 5, scope: !522)
!526 = !DILocation(line: 121, column: 2, scope: !452)
!527 = !DILocation(line: 122, column: 3, scope: !349)
!528 = !DILocation(line: 122, column: 14, scope: !349)
!529 = !DILocation(line: 122, column: 31, scope: !349)
!530 = !DILocation(line: 122, column: 35, scope: !349)
!531 = !DILocation(line: 122, column: 39, scope: !349)
!532 = !DILocation(line: 122, column: 46, scope: !349)
!533 = !DILocation(line: 122, column: 50, scope: !349)
!534 = !DILocation(line: 122, column: 19, scope: !349)
!535 = !DILocation(line: 123, column: 15, scope: !349)
!536 = !DILocation(line: 123, column: 3, scope: !349)
!537 = !DILocation(line: 123, column: 6, scope: !349)
!538 = !DILocation(line: 123, column: 13, scope: !349)
!539 = !DILocation(line: 124, column: 11, scope: !349)
!540 = !DILocation(line: 124, column: 19, scope: !349)
!541 = !DILocation(line: 124, column: 17, scope: !349)
!542 = !DILocation(line: 124, column: 9, scope: !349)
!543 = !DILocation(line: 125, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !349, file: !3, line: 125, column: 7)
!545 = !DILocation(line: 125, column: 7, scope: !349)
!546 = !DILocation(line: 126, column: 10, scope: !544)
!547 = !DILocation(line: 126, column: 4, scope: !544)
!548 = !DILocation(line: 127, column: 2, scope: !350)
!549 = !DILocation(line: 129, column: 14, scope: !328)
!550 = !DILocation(line: 129, column: 2, scope: !328)
!551 = !DILocation(line: 129, column: 5, scope: !328)
!552 = !DILocation(line: 129, column: 12, scope: !328)
!553 = !DILocation(line: 130, column: 12, scope: !328)
!554 = !DILocation(line: 130, column: 2, scope: !328)
!555 = !DILocation(line: 130, column: 5, scope: !328)
!556 = !DILocation(line: 130, column: 10, scope: !328)
!557 = !DILocation(line: 131, column: 1, scope: !328)
!558 = distinct !DISubprogram(name: "mpihelp_sub", scope: !168, file: !168, line: 95, type: !559, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{!39, !46, !46, !50, !46, !50}
!561 = !{!562, !563, !564, !565, !566, !567}
!562 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !558, file: !168, line: 95, type: !46)
!563 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !558, file: !168, line: 95, type: !46)
!564 = !DILocalVariable(name: "s1_size", arg: 3, scope: !558, file: !168, line: 95, type: !50)
!565 = !DILocalVariable(name: "s2_ptr", arg: 4, scope: !558, file: !168, line: 96, type: !46)
!566 = !DILocalVariable(name: "s2_size", arg: 5, scope: !558, file: !168, line: 96, type: !50)
!567 = !DILocalVariable(name: "cy", scope: !558, file: !168, line: 98, type: !39)
!568 = !DILocation(line: 95, column: 23, scope: !558)
!569 = !DILocation(line: 95, column: 42, scope: !558)
!570 = !DILocation(line: 95, column: 61, scope: !558)
!571 = !DILocation(line: 96, column: 16, scope: !558)
!572 = !DILocation(line: 96, column: 35, scope: !558)
!573 = !DILocation(line: 98, column: 2, scope: !558)
!574 = !DILocation(line: 98, column: 13, scope: !558)
!575 = !DILocation(line: 100, column: 6, scope: !576)
!576 = distinct !DILexicalBlock(scope: !558, file: !168, line: 100, column: 6)
!577 = !DILocation(line: 100, column: 6, scope: !558)
!578 = !DILocation(line: 101, column: 22, scope: !576)
!579 = !DILocation(line: 101, column: 31, scope: !576)
!580 = !DILocation(line: 101, column: 39, scope: !576)
!581 = !DILocation(line: 101, column: 47, scope: !576)
!582 = !DILocation(line: 101, column: 8, scope: !576)
!583 = !DILocation(line: 101, column: 6, scope: !576)
!584 = !DILocation(line: 101, column: 3, scope: !576)
!585 = !DILocation(line: 103, column: 6, scope: !586)
!586 = distinct !DILexicalBlock(scope: !558, file: !168, line: 103, column: 6)
!587 = !DILocation(line: 103, column: 16, scope: !586)
!588 = !DILocation(line: 103, column: 14, scope: !586)
!589 = !DILocation(line: 103, column: 6, scope: !558)
!590 = !DILocation(line: 104, column: 22, scope: !586)
!591 = !DILocation(line: 104, column: 32, scope: !586)
!592 = !DILocation(line: 104, column: 30, scope: !586)
!593 = !DILocation(line: 104, column: 41, scope: !586)
!594 = !DILocation(line: 104, column: 50, scope: !586)
!595 = !DILocation(line: 104, column: 48, scope: !586)
!596 = !DILocation(line: 105, column: 8, scope: !586)
!597 = !DILocation(line: 105, column: 18, scope: !586)
!598 = !DILocation(line: 105, column: 16, scope: !586)
!599 = !DILocation(line: 105, column: 27, scope: !586)
!600 = !DILocation(line: 104, column: 8, scope: !586)
!601 = !DILocation(line: 104, column: 6, scope: !586)
!602 = !DILocation(line: 104, column: 3, scope: !586)
!603 = !DILocation(line: 106, column: 9, scope: !558)
!604 = !DILocation(line: 107, column: 1, scope: !558)
!605 = !DILocation(line: 106, column: 2, scope: !558)
!606 = !DISubprogram(name: "mpihelp_cmp", scope: !47, file: !47, line: 161, type: !607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{!31, !46, !46, !50}
!609 = !DISubprogram(name: "mpihelp_sub_n", scope: !47, file: !47, line: 155, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubroutineType(types: !611)
!611 = !{!39, !46, !46, !46, !50}
!612 = distinct !DISubprogram(name: "mpihelp_add", scope: !168, file: !168, line: 52, type: !559, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!613 = !{!614, !615, !616, !617, !618, !619}
!614 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !612, file: !168, line: 52, type: !46)
!615 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !612, file: !168, line: 52, type: !46)
!616 = !DILocalVariable(name: "s1_size", arg: 3, scope: !612, file: !168, line: 52, type: !50)
!617 = !DILocalVariable(name: "s2_ptr", arg: 4, scope: !612, file: !168, line: 53, type: !46)
!618 = !DILocalVariable(name: "s2_size", arg: 5, scope: !612, file: !168, line: 53, type: !50)
!619 = !DILocalVariable(name: "cy", scope: !612, file: !168, line: 55, type: !39)
!620 = !DILocation(line: 52, column: 23, scope: !612)
!621 = !DILocation(line: 52, column: 42, scope: !612)
!622 = !DILocation(line: 52, column: 61, scope: !612)
!623 = !DILocation(line: 53, column: 16, scope: !612)
!624 = !DILocation(line: 53, column: 35, scope: !612)
!625 = !DILocation(line: 55, column: 2, scope: !612)
!626 = !DILocation(line: 55, column: 13, scope: !612)
!627 = !DILocation(line: 57, column: 6, scope: !628)
!628 = distinct !DILexicalBlock(scope: !612, file: !168, line: 57, column: 6)
!629 = !DILocation(line: 57, column: 6, scope: !612)
!630 = !DILocation(line: 58, column: 22, scope: !628)
!631 = !DILocation(line: 58, column: 31, scope: !628)
!632 = !DILocation(line: 58, column: 39, scope: !628)
!633 = !DILocation(line: 58, column: 47, scope: !628)
!634 = !DILocation(line: 58, column: 8, scope: !628)
!635 = !DILocation(line: 58, column: 6, scope: !628)
!636 = !DILocation(line: 58, column: 3, scope: !628)
!637 = !DILocation(line: 60, column: 6, scope: !638)
!638 = distinct !DILexicalBlock(scope: !612, file: !168, line: 60, column: 6)
!639 = !DILocation(line: 60, column: 16, scope: !638)
!640 = !DILocation(line: 60, column: 14, scope: !638)
!641 = !DILocation(line: 60, column: 6, scope: !612)
!642 = !DILocation(line: 61, column: 22, scope: !638)
!643 = !DILocation(line: 61, column: 32, scope: !638)
!644 = !DILocation(line: 61, column: 30, scope: !638)
!645 = !DILocation(line: 61, column: 41, scope: !638)
!646 = !DILocation(line: 61, column: 50, scope: !638)
!647 = !DILocation(line: 61, column: 48, scope: !638)
!648 = !DILocation(line: 62, column: 8, scope: !638)
!649 = !DILocation(line: 62, column: 18, scope: !638)
!650 = !DILocation(line: 62, column: 16, scope: !638)
!651 = !DILocation(line: 62, column: 27, scope: !638)
!652 = !DILocation(line: 61, column: 8, scope: !638)
!653 = !DILocation(line: 61, column: 6, scope: !638)
!654 = !DILocation(line: 61, column: 3, scope: !638)
!655 = !DILocation(line: 63, column: 9, scope: !612)
!656 = !DILocation(line: 64, column: 1, scope: !612)
!657 = !DILocation(line: 63, column: 2, scope: !612)
!658 = distinct !DISubprogram(name: "mpi_sub", scope: !3, file: !3, line: 134, type: !329, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(name: "w", arg: 1, scope: !658, file: !3, line: 134, type: !25)
!661 = !DILocalVariable(name: "u", arg: 2, scope: !658, file: !3, line: 134, type: !25)
!662 = !DILocalVariable(name: "v", arg: 3, scope: !658, file: !3, line: 134, type: !25)
!663 = !DILocalVariable(name: "vv", scope: !658, file: !3, line: 136, type: !25)
!664 = !DILocation(line: 134, column: 18, scope: !658)
!665 = !DILocation(line: 134, column: 25, scope: !658)
!666 = !DILocation(line: 134, column: 32, scope: !658)
!667 = !DILocation(line: 136, column: 2, scope: !658)
!668 = !DILocation(line: 136, column: 6, scope: !658)
!669 = !DILocation(line: 136, column: 20, scope: !658)
!670 = !DILocation(line: 136, column: 11, scope: !658)
!671 = !DILocation(line: 137, column: 14, scope: !658)
!672 = !DILocation(line: 137, column: 18, scope: !658)
!673 = !DILocation(line: 137, column: 13, scope: !658)
!674 = !DILocation(line: 137, column: 2, scope: !658)
!675 = !DILocation(line: 137, column: 6, scope: !658)
!676 = !DILocation(line: 137, column: 11, scope: !658)
!677 = !DILocation(line: 138, column: 10, scope: !658)
!678 = !DILocation(line: 138, column: 13, scope: !658)
!679 = !DILocation(line: 138, column: 16, scope: !658)
!680 = !DILocation(line: 138, column: 2, scope: !658)
!681 = !DILocation(line: 139, column: 11, scope: !658)
!682 = !DILocation(line: 139, column: 2, scope: !658)
!683 = !DILocation(line: 140, column: 1, scope: !658)
!684 = !DISubprogram(name: "mpi_copy", scope: !26, file: !26, line: 56, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DISubroutineType(types: !686)
!686 = !{!25, !25}
!687 = !DISubprogram(name: "mpi_free", scope: !26, file: !26, line: 48, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !25}
!690 = distinct !DISubprogram(name: "mpi_addm", scope: !3, file: !3, line: 143, type: !691, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !25, !25, !25, !25}
!693 = !{!694, !695, !696, !697}
!694 = !DILocalVariable(name: "w", arg: 1, scope: !690, file: !3, line: 143, type: !25)
!695 = !DILocalVariable(name: "u", arg: 2, scope: !690, file: !3, line: 143, type: !25)
!696 = !DILocalVariable(name: "v", arg: 3, scope: !690, file: !3, line: 143, type: !25)
!697 = !DILocalVariable(name: "m", arg: 4, scope: !690, file: !3, line: 143, type: !25)
!698 = !DILocation(line: 143, column: 19, scope: !690)
!699 = !DILocation(line: 143, column: 26, scope: !690)
!700 = !DILocation(line: 143, column: 33, scope: !690)
!701 = !DILocation(line: 143, column: 40, scope: !690)
!702 = !DILocation(line: 145, column: 10, scope: !690)
!703 = !DILocation(line: 145, column: 13, scope: !690)
!704 = !DILocation(line: 145, column: 16, scope: !690)
!705 = !DILocation(line: 145, column: 2, scope: !690)
!706 = !DILocation(line: 146, column: 10, scope: !690)
!707 = !DILocation(line: 146, column: 13, scope: !690)
!708 = !DILocation(line: 146, column: 16, scope: !690)
!709 = !DILocation(line: 146, column: 2, scope: !690)
!710 = !DILocation(line: 147, column: 1, scope: !690)
!711 = !DISubprogram(name: "mpi_mod", scope: !26, file: !26, line: 106, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = distinct !DISubprogram(name: "mpi_subm", scope: !3, file: !3, line: 150, type: !691, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !713)
!713 = !{!714, !715, !716, !717}
!714 = !DILocalVariable(name: "w", arg: 1, scope: !712, file: !3, line: 150, type: !25)
!715 = !DILocalVariable(name: "u", arg: 2, scope: !712, file: !3, line: 150, type: !25)
!716 = !DILocalVariable(name: "v", arg: 3, scope: !712, file: !3, line: 150, type: !25)
!717 = !DILocalVariable(name: "m", arg: 4, scope: !712, file: !3, line: 150, type: !25)
!718 = !DILocation(line: 150, column: 19, scope: !712)
!719 = !DILocation(line: 150, column: 26, scope: !712)
!720 = !DILocation(line: 150, column: 33, scope: !712)
!721 = !DILocation(line: 150, column: 40, scope: !712)
!722 = !DILocation(line: 152, column: 10, scope: !712)
!723 = !DILocation(line: 152, column: 13, scope: !712)
!724 = !DILocation(line: 152, column: 16, scope: !712)
!725 = !DILocation(line: 152, column: 2, scope: !712)
!726 = !DILocation(line: 153, column: 10, scope: !712)
!727 = !DILocation(line: 153, column: 13, scope: !712)
!728 = !DILocation(line: 153, column: 16, scope: !712)
!729 = !DILocation(line: 153, column: 2, scope: !712)
!730 = !DILocation(line: 154, column: 1, scope: !712)
!731 = !DISubprogram(name: "mpihelp_add_n", scope: !47, file: !47, line: 148, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
