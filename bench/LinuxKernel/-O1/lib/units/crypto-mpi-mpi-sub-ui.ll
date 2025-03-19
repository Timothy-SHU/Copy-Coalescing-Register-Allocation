; ModuleID = 'lib/crypto/mpi/mpi-sub-ui.c'
source_filename = "lib/crypto/mpi/mpi-sub-ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_sub_ui: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_sub_ui ; .previous"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable_mpi_sub_ui287 = internal global ptr @mpi_sub_ui, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_mpi_sub_ui287], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_sub_ui(ptr noundef %w, ptr noundef %u, i64 noundef %vval) #0 align 16 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %vval.addr = alloca i64, align 8
  %cy = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !36, metadata !DIExpression()), !dbg !42
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !37, metadata !DIExpression()), !dbg !43
  store i64 %vval, ptr %vval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vval.addr, metadata !38, metadata !DIExpression()), !dbg !44
  %0 = load ptr, ptr %u.addr, align 8, !dbg !45
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !47
  %1 = load i32, ptr %nlimbs, align 4, !dbg !47
  %cmp = icmp eq i32 %1, 0, !dbg !48
  br i1 %cmp, label %if.then, label %if.end7, !dbg !49

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !50
  %call = call i32 @mpi_resize(ptr noundef %2, i32 noundef 1) #5, !dbg !53
  %cmp1 = icmp slt i32 %call, 0, !dbg !54
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !55

if.then2:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !56
  br label %return, !dbg !56

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %vval.addr, align 8, !dbg !57
  %4 = load ptr, ptr %w.addr, align 8, !dbg !58
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 5, !dbg !59
  %5 = load ptr, ptr %d, align 8, !dbg !59
  %arrayidx = getelementptr i64, ptr %5, i64 0, !dbg !58
  store i64 %3, ptr %arrayidx, align 8, !dbg !60
  %6 = load i64, ptr %vval.addr, align 8, !dbg !61
  %cmp3 = icmp ne i64 %6, 0, !dbg !62
  %conv = zext i1 %cmp3 to i32, !dbg !62
  %7 = load ptr, ptr %w.addr, align 8, !dbg !63
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 1, !dbg !64
  store i32 %conv, ptr %nlimbs4, align 4, !dbg !65
  %8 = load i64, ptr %vval.addr, align 8, !dbg !66
  %cmp5 = icmp ne i64 %8, 0, !dbg !67
  %conv6 = zext i1 %cmp5 to i32, !dbg !67
  %9 = load ptr, ptr %w.addr, align 8, !dbg !68
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 3, !dbg !69
  store i32 %conv6, ptr %sign, align 4, !dbg !70
  store i32 0, ptr %retval, align 4, !dbg !71
  br label %return, !dbg !71

if.end7:                                          ; preds = %entry
  %10 = load ptr, ptr %w.addr, align 8, !dbg !72
  %11 = load ptr, ptr %u.addr, align 8, !dbg !74
  %nlimbs8 = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 1, !dbg !75
  %12 = load i32, ptr %nlimbs8, align 4, !dbg !75
  %add = add i32 %12, 1, !dbg !76
  %call9 = call i32 @mpi_resize(ptr noundef %10, i32 noundef %add) #5, !dbg !77
  %tobool = icmp ne i32 %call9, 0, !dbg !77
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !78

if.then10:                                        ; preds = %if.end7
  store i32 -12, ptr %retval, align 4, !dbg !79
  br label %return, !dbg !79

if.end11:                                         ; preds = %if.end7
  %13 = load ptr, ptr %u.addr, align 8, !dbg !80
  %sign12 = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 3, !dbg !81
  %14 = load i32, ptr %sign12, align 4, !dbg !81
  %tobool13 = icmp ne i32 %14, 0, !dbg !80
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !82

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #6, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !39, metadata !DIExpression()), !dbg !84
  %15 = load ptr, ptr %w.addr, align 8, !dbg !85
  %d15 = getelementptr inbounds %struct.gcry_mpi, ptr %15, i32 0, i32 5, !dbg !86
  %16 = load ptr, ptr %d15, align 8, !dbg !86
  %17 = load ptr, ptr %u.addr, align 8, !dbg !87
  %d16 = getelementptr inbounds %struct.gcry_mpi, ptr %17, i32 0, i32 5, !dbg !88
  %18 = load ptr, ptr %d16, align 8, !dbg !88
  %19 = load ptr, ptr %u.addr, align 8, !dbg !89
  %nlimbs17 = getelementptr inbounds %struct.gcry_mpi, ptr %19, i32 0, i32 1, !dbg !90
  %20 = load i32, ptr %nlimbs17, align 4, !dbg !90
  %21 = load i64, ptr %vval.addr, align 8, !dbg !91
  %call18 = call i64 @mpihelp_add_1(ptr noundef %16, ptr noundef %18, i32 noundef %20, i64 noundef %21) #5, !dbg !92
  store i64 %call18, ptr %cy, align 8, !dbg !93
  %22 = load i64, ptr %cy, align 8, !dbg !94
  %23 = load ptr, ptr %w.addr, align 8, !dbg !95
  %d19 = getelementptr inbounds %struct.gcry_mpi, ptr %23, i32 0, i32 5, !dbg !96
  %24 = load ptr, ptr %d19, align 8, !dbg !96
  %25 = load ptr, ptr %u.addr, align 8, !dbg !97
  %nlimbs20 = getelementptr inbounds %struct.gcry_mpi, ptr %25, i32 0, i32 1, !dbg !98
  %26 = load i32, ptr %nlimbs20, align 4, !dbg !98
  %idxprom = sext i32 %26 to i64, !dbg !95
  %arrayidx21 = getelementptr i64, ptr %24, i64 %idxprom, !dbg !95
  store i64 %22, ptr %arrayidx21, align 8, !dbg !99
  %27 = load ptr, ptr %u.addr, align 8, !dbg !100
  %nlimbs22 = getelementptr inbounds %struct.gcry_mpi, ptr %27, i32 0, i32 1, !dbg !101
  %28 = load i32, ptr %nlimbs22, align 4, !dbg !101
  %conv23 = sext i32 %28 to i64, !dbg !100
  %29 = load i64, ptr %cy, align 8, !dbg !102
  %add24 = add i64 %conv23, %29, !dbg !103
  %conv25 = trunc i64 %add24 to i32, !dbg !100
  %30 = load ptr, ptr %w.addr, align 8, !dbg !104
  %nlimbs26 = getelementptr inbounds %struct.gcry_mpi, ptr %30, i32 0, i32 1, !dbg !105
  store i32 %conv25, ptr %nlimbs26, align 4, !dbg !106
  %31 = load ptr, ptr %w.addr, align 8, !dbg !107
  %sign27 = getelementptr inbounds %struct.gcry_mpi, ptr %31, i32 0, i32 3, !dbg !108
  store i32 1, ptr %sign27, align 4, !dbg !109
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #6, !dbg !110
  br label %if.end59, !dbg !111

if.else:                                          ; preds = %if.end11
  %32 = load ptr, ptr %u.addr, align 8, !dbg !112
  %nlimbs28 = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 1, !dbg !115
  %33 = load i32, ptr %nlimbs28, align 4, !dbg !115
  %cmp29 = icmp eq i32 %33, 1, !dbg !116
  br i1 %cmp29, label %land.lhs.true, label %if.else42, !dbg !117

land.lhs.true:                                    ; preds = %if.else
  %34 = load ptr, ptr %u.addr, align 8, !dbg !118
  %d31 = getelementptr inbounds %struct.gcry_mpi, ptr %34, i32 0, i32 5, !dbg !119
  %35 = load ptr, ptr %d31, align 8, !dbg !119
  %arrayidx32 = getelementptr i64, ptr %35, i64 0, !dbg !118
  %36 = load i64, ptr %arrayidx32, align 8, !dbg !118
  %37 = load i64, ptr %vval.addr, align 8, !dbg !120
  %cmp33 = icmp ult i64 %36, %37, !dbg !121
  br i1 %cmp33, label %if.then35, label %if.else42, !dbg !122

if.then35:                                        ; preds = %land.lhs.true
  %38 = load i64, ptr %vval.addr, align 8, !dbg !123
  %39 = load ptr, ptr %u.addr, align 8, !dbg !125
  %d36 = getelementptr inbounds %struct.gcry_mpi, ptr %39, i32 0, i32 5, !dbg !126
  %40 = load ptr, ptr %d36, align 8, !dbg !126
  %arrayidx37 = getelementptr i64, ptr %40, i64 0, !dbg !125
  %41 = load i64, ptr %arrayidx37, align 8, !dbg !125
  %sub = sub i64 %38, %41, !dbg !127
  %42 = load ptr, ptr %w.addr, align 8, !dbg !128
  %d38 = getelementptr inbounds %struct.gcry_mpi, ptr %42, i32 0, i32 5, !dbg !129
  %43 = load ptr, ptr %d38, align 8, !dbg !129
  %arrayidx39 = getelementptr i64, ptr %43, i64 0, !dbg !128
  store i64 %sub, ptr %arrayidx39, align 8, !dbg !130
  %44 = load ptr, ptr %w.addr, align 8, !dbg !131
  %nlimbs40 = getelementptr inbounds %struct.gcry_mpi, ptr %44, i32 0, i32 1, !dbg !132
  store i32 1, ptr %nlimbs40, align 4, !dbg !133
  %45 = load ptr, ptr %w.addr, align 8, !dbg !134
  %sign41 = getelementptr inbounds %struct.gcry_mpi, ptr %45, i32 0, i32 3, !dbg !135
  store i32 1, ptr %sign41, align 4, !dbg !136
  br label %if.end58, !dbg !137

if.else42:                                        ; preds = %land.lhs.true, %if.else
  %46 = load ptr, ptr %w.addr, align 8, !dbg !138
  %d43 = getelementptr inbounds %struct.gcry_mpi, ptr %46, i32 0, i32 5, !dbg !140
  %47 = load ptr, ptr %d43, align 8, !dbg !140
  %48 = load ptr, ptr %u.addr, align 8, !dbg !141
  %d44 = getelementptr inbounds %struct.gcry_mpi, ptr %48, i32 0, i32 5, !dbg !142
  %49 = load ptr, ptr %d44, align 8, !dbg !142
  %50 = load ptr, ptr %u.addr, align 8, !dbg !143
  %nlimbs45 = getelementptr inbounds %struct.gcry_mpi, ptr %50, i32 0, i32 1, !dbg !144
  %51 = load i32, ptr %nlimbs45, align 4, !dbg !144
  %52 = load i64, ptr %vval.addr, align 8, !dbg !145
  %call46 = call i64 @mpihelp_sub_1(ptr noundef %47, ptr noundef %49, i32 noundef %51, i64 noundef %52) #5, !dbg !146
  %53 = load ptr, ptr %u.addr, align 8, !dbg !147
  %nlimbs47 = getelementptr inbounds %struct.gcry_mpi, ptr %53, i32 0, i32 1, !dbg !148
  %54 = load i32, ptr %nlimbs47, align 4, !dbg !148
  %55 = load ptr, ptr %w.addr, align 8, !dbg !149
  %d48 = getelementptr inbounds %struct.gcry_mpi, ptr %55, i32 0, i32 5, !dbg !150
  %56 = load ptr, ptr %d48, align 8, !dbg !150
  %57 = load ptr, ptr %u.addr, align 8, !dbg !151
  %nlimbs49 = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 1, !dbg !152
  %58 = load i32, ptr %nlimbs49, align 4, !dbg !152
  %sub50 = sub i32 %58, 1, !dbg !153
  %idxprom51 = sext i32 %sub50 to i64, !dbg !149
  %arrayidx52 = getelementptr i64, ptr %56, i64 %idxprom51, !dbg !149
  %59 = load i64, ptr %arrayidx52, align 8, !dbg !149
  %cmp53 = icmp eq i64 %59, 0, !dbg !154
  %conv54 = zext i1 %cmp53 to i32, !dbg !154
  %sub55 = sub i32 %54, %conv54, !dbg !155
  %60 = load ptr, ptr %w.addr, align 8, !dbg !156
  %nlimbs56 = getelementptr inbounds %struct.gcry_mpi, ptr %60, i32 0, i32 1, !dbg !157
  store i32 %sub55, ptr %nlimbs56, align 4, !dbg !158
  %61 = load ptr, ptr %w.addr, align 8, !dbg !159
  %sign57 = getelementptr inbounds %struct.gcry_mpi, ptr %61, i32 0, i32 3, !dbg !160
  store i32 0, ptr %sign57, align 4, !dbg !161
  br label %if.end58

if.end58:                                         ; preds = %if.else42, %if.then35
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then14
  %62 = load ptr, ptr %w.addr, align 8, !dbg !162
  call void @mpi_normalize(ptr noundef %62) #5, !dbg !163
  store i32 0, ptr %retval, align 4, !dbg !164
  br label %return, !dbg !164

return:                                           ; preds = %if.end59, %if.then10, %if.end, %if.then2
  %63 = load i32, ptr %retval, align 4, !dbg !165
  ret i32 %63, !dbg !165
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !166 dso_local i32 @mpi_resize(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mpihelp_add_1(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, i64 noundef %s2_limb) #4 align 16 !dbg !169 {
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
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !177, metadata !DIExpression()), !dbg !186
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !178, metadata !DIExpression()), !dbg !187
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !179, metadata !DIExpression()), !dbg !188
  store i64 %s2_limb, ptr %s2_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_limb.addr, metadata !180, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %x, metadata !181, metadata !DIExpression()), !dbg !191
  %0 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !192
  %incdec.ptr = getelementptr i64, ptr %0, i32 1, !dbg !192
  store ptr %incdec.ptr, ptr %s1_ptr.addr, align 8, !dbg !192
  %1 = load i64, ptr %0, align 8, !dbg !193
  store i64 %1, ptr %x, align 8, !dbg !194
  %2 = load i64, ptr %x, align 8, !dbg !195
  %3 = load i64, ptr %s2_limb.addr, align 8, !dbg !196
  %add = add i64 %3, %2, !dbg !196
  store i64 %add, ptr %s2_limb.addr, align 8, !dbg !196
  %4 = load i64, ptr %s2_limb.addr, align 8, !dbg !197
  %5 = load ptr, ptr %res_ptr.addr, align 8, !dbg !198
  %incdec.ptr1 = getelementptr i64, ptr %5, i32 1, !dbg !198
  store ptr %incdec.ptr1, ptr %res_ptr.addr, align 8, !dbg !198
  store i64 %4, ptr %5, align 8, !dbg !199
  %6 = load i64, ptr %s2_limb.addr, align 8, !dbg !200
  %7 = load i64, ptr %x, align 8, !dbg !202
  %cmp = icmp ult i64 %6, %7, !dbg !203
  br i1 %cmp, label %if.then, label %if.end7, !dbg !204

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !205

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load i32, ptr %s1_size.addr, align 4, !dbg !207
  %dec = add i32 %8, -1, !dbg !207
  store i32 %dec, ptr %s1_size.addr, align 4, !dbg !207
  %tobool = icmp ne i32 %dec, 0, !dbg !205
  br i1 %tobool, label %while.body, label %while.end, !dbg !205

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !208
  %incdec.ptr2 = getelementptr i64, ptr %9, i32 1, !dbg !208
  store ptr %incdec.ptr2, ptr %s1_ptr.addr, align 8, !dbg !208
  %10 = load i64, ptr %9, align 8, !dbg !210
  %add3 = add i64 %10, 1, !dbg !211
  store i64 %add3, ptr %x, align 8, !dbg !212
  %11 = load i64, ptr %x, align 8, !dbg !213
  %12 = load ptr, ptr %res_ptr.addr, align 8, !dbg !214
  %incdec.ptr4 = getelementptr i64, ptr %12, i32 1, !dbg !214
  store ptr %incdec.ptr4, ptr %res_ptr.addr, align 8, !dbg !214
  store i64 %11, ptr %12, align 8, !dbg !215
  %13 = load i64, ptr %x, align 8, !dbg !216
  %tobool5 = icmp ne i64 %13, 0, !dbg !216
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !218

if.then6:                                         ; preds = %while.body
  br label %leave, !dbg !219

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !205, !llvm.loop !220

while.end:                                        ; preds = %while.cond
  store i64 1, ptr %retval, align 8, !dbg !224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !224

if.end7:                                          ; preds = %entry
  br label %leave, !dbg !202

leave:                                            ; preds = %if.end7, %if.then6
  call void @llvm.dbg.label(metadata !182), !dbg !225
  %14 = load ptr, ptr %res_ptr.addr, align 8, !dbg !226
  %15 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !227
  %cmp8 = icmp ne ptr %14, %15, !dbg !228
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !229

if.then9:                                         ; preds = %leave
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !230
  call void @llvm.dbg.declare(metadata ptr %i, metadata !183, metadata !DIExpression()), !dbg !231
  store i32 0, ptr %i, align 4, !dbg !232
  br label %for.cond, !dbg !234

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load i32, ptr %i, align 4, !dbg !235
  %17 = load i32, ptr %s1_size.addr, align 4, !dbg !237
  %sub = sub i32 %17, 1, !dbg !238
  %cmp10 = icmp slt i32 %16, %sub, !dbg !239
  br i1 %cmp10, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !241
  %19 = load i32, ptr %i, align 4, !dbg !242
  %idxprom = sext i32 %19 to i64, !dbg !241
  %arrayidx = getelementptr i64, ptr %18, i64 %idxprom, !dbg !241
  %20 = load i64, ptr %arrayidx, align 8, !dbg !241
  %21 = load ptr, ptr %res_ptr.addr, align 8, !dbg !243
  %22 = load i32, ptr %i, align 4, !dbg !244
  %idxprom11 = sext i32 %22 to i64, !dbg !243
  %arrayidx12 = getelementptr i64, ptr %21, i64 %idxprom11, !dbg !243
  store i64 %20, ptr %arrayidx12, align 8, !dbg !245
  br label %for.inc, !dbg !243

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !246
  %inc = add i32 %23, 1, !dbg !246
  store i32 %inc, ptr %i, align 4, !dbg !246
  br label %for.cond, !dbg !247, !llvm.loop !248

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !250
  br label %if.end13, !dbg !251

if.end13:                                         ; preds = %for.end, %leave
  store i64 0, ptr %retval, align 8, !dbg !252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !252

cleanup:                                          ; preds = %if.end13, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6, !dbg !253
  %24 = load i64, ptr %retval, align 8, !dbg !253
  ret i64 %24, !dbg !253
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mpihelp_sub_1(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, i64 noundef %s2_limb) #4 align 16 !dbg !254 {
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
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !256, metadata !DIExpression()), !dbg !265
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !257, metadata !DIExpression()), !dbg !266
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !258, metadata !DIExpression()), !dbg !267
  store i64 %s2_limb, ptr %s2_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_limb.addr, metadata !259, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %x, metadata !260, metadata !DIExpression()), !dbg !270
  %0 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !271
  %incdec.ptr = getelementptr i64, ptr %0, i32 1, !dbg !271
  store ptr %incdec.ptr, ptr %s1_ptr.addr, align 8, !dbg !271
  %1 = load i64, ptr %0, align 8, !dbg !272
  store i64 %1, ptr %x, align 8, !dbg !273
  %2 = load i64, ptr %x, align 8, !dbg !274
  %3 = load i64, ptr %s2_limb.addr, align 8, !dbg !275
  %sub = sub i64 %2, %3, !dbg !276
  store i64 %sub, ptr %s2_limb.addr, align 8, !dbg !277
  %4 = load i64, ptr %s2_limb.addr, align 8, !dbg !278
  %5 = load ptr, ptr %res_ptr.addr, align 8, !dbg !279
  %incdec.ptr1 = getelementptr i64, ptr %5, i32 1, !dbg !279
  store ptr %incdec.ptr1, ptr %res_ptr.addr, align 8, !dbg !279
  store i64 %4, ptr %5, align 8, !dbg !280
  %6 = load i64, ptr %s2_limb.addr, align 8, !dbg !281
  %7 = load i64, ptr %x, align 8, !dbg !283
  %cmp = icmp ugt i64 %6, %7, !dbg !284
  br i1 %cmp, label %if.then, label %if.end7, !dbg !285

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !286

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load i32, ptr %s1_size.addr, align 4, !dbg !288
  %dec = add i32 %8, -1, !dbg !288
  store i32 %dec, ptr %s1_size.addr, align 4, !dbg !288
  %tobool = icmp ne i32 %dec, 0, !dbg !286
  br i1 %tobool, label %while.body, label %while.end, !dbg !286

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !289
  %incdec.ptr2 = getelementptr i64, ptr %9, i32 1, !dbg !289
  store ptr %incdec.ptr2, ptr %s1_ptr.addr, align 8, !dbg !289
  %10 = load i64, ptr %9, align 8, !dbg !291
  store i64 %10, ptr %x, align 8, !dbg !292
  %11 = load i64, ptr %x, align 8, !dbg !293
  %sub3 = sub i64 %11, 1, !dbg !294
  %12 = load ptr, ptr %res_ptr.addr, align 8, !dbg !295
  %incdec.ptr4 = getelementptr i64, ptr %12, i32 1, !dbg !295
  store ptr %incdec.ptr4, ptr %res_ptr.addr, align 8, !dbg !295
  store i64 %sub3, ptr %12, align 8, !dbg !296
  %13 = load i64, ptr %x, align 8, !dbg !297
  %tobool5 = icmp ne i64 %13, 0, !dbg !297
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !299

if.then6:                                         ; preds = %while.body
  br label %leave, !dbg !300

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !286, !llvm.loop !301

while.end:                                        ; preds = %while.cond
  store i64 1, ptr %retval, align 8, !dbg !303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !303

if.end7:                                          ; preds = %entry
  br label %leave, !dbg !283

leave:                                            ; preds = %if.end7, %if.then6
  call void @llvm.dbg.label(metadata !261), !dbg !304
  %14 = load ptr, ptr %res_ptr.addr, align 8, !dbg !305
  %15 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !306
  %cmp8 = icmp ne ptr %14, %15, !dbg !307
  br i1 %cmp8, label %if.then9, label %if.end14, !dbg !308

if.then9:                                         ; preds = %leave
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %i, metadata !262, metadata !DIExpression()), !dbg !310
  store i32 0, ptr %i, align 4, !dbg !311
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load i32, ptr %i, align 4, !dbg !314
  %17 = load i32, ptr %s1_size.addr, align 4, !dbg !316
  %sub10 = sub i32 %17, 1, !dbg !317
  %cmp11 = icmp slt i32 %16, %sub10, !dbg !318
  br i1 %cmp11, label %for.body, label %for.end, !dbg !319

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !320
  %19 = load i32, ptr %i, align 4, !dbg !321
  %idxprom = sext i32 %19 to i64, !dbg !320
  %arrayidx = getelementptr i64, ptr %18, i64 %idxprom, !dbg !320
  %20 = load i64, ptr %arrayidx, align 8, !dbg !320
  %21 = load ptr, ptr %res_ptr.addr, align 8, !dbg !322
  %22 = load i32, ptr %i, align 4, !dbg !323
  %idxprom12 = sext i32 %22 to i64, !dbg !322
  %arrayidx13 = getelementptr i64, ptr %21, i64 %idxprom12, !dbg !322
  store i64 %20, ptr %arrayidx13, align 8, !dbg !324
  br label %for.inc, !dbg !322

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !325
  %inc = add i32 %23, 1, !dbg !325
  store i32 %inc, ptr %i, align 4, !dbg !325
  br label %for.cond, !dbg !326, !llvm.loop !327

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !329
  br label %if.end14, !dbg !330

if.end14:                                         ; preds = %for.end, %leave
  store i64 0, ptr %retval, align 8, !dbg !331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !331

cleanup:                                          ; preds = %if.end14, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6, !dbg !332
  %24 = load i64, ptr %retval, align 8, !dbg !332
  ret i64 %24, !dbg !332
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !333 dso_local void @mpi_normalize(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_sub_ui287", scope: !2, file: !3, line: 78, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpi-sub-ui.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpi_sub_ui\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpi-sub-ui.ll lib/crypto/mpi/mpi-sub-ui.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/mpi/mpi-sub-ui.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e29a3edab97750fe995ac5ed10555bd")
!4 = !{!5, !8}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!7 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!0}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 8, !"cf-protection-branch", i32 1}
!14 = !{i32 4, !"function_return_thunk_extern", i32 1}
!15 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{i32 1, !"override-stack-alignment", i32 8}
!18 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!19 = distinct !DISubprogram(name: "mpi_sub_ui", scope: !3, file: !3, line: 37, type: !20, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23, !23, !7}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !6, line: 40, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !6, line: 29, size: 256, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !25, file: !6, line: 30, baseType: !22, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !25, file: !6, line: 31, baseType: !22, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !25, file: !6, line: 32, baseType: !22, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !25, file: !6, line: 33, baseType: !22, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !6, line: 34, baseType: !32, size: 32, offset: 128)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !25, file: !6, line: 37, baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!35 = !{!36, !37, !38, !39}
!36 = !DILocalVariable(name: "w", arg: 1, scope: !19, file: !3, line: 37, type: !23)
!37 = !DILocalVariable(name: "u", arg: 2, scope: !19, file: !3, line: 37, type: !23)
!38 = !DILocalVariable(name: "vval", arg: 3, scope: !19, file: !3, line: 37, type: !7)
!39 = !DILocalVariable(name: "cy", scope: !40, file: !3, line: 53, type: !5)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 52, column: 15)
!41 = distinct !DILexicalBlock(scope: !19, file: !3, line: 52, column: 6)
!42 = !DILocation(line: 37, column: 20, scope: !19)
!43 = !DILocation(line: 37, column: 27, scope: !19)
!44 = !DILocation(line: 37, column: 44, scope: !19)
!45 = !DILocation(line: 39, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !19, file: !3, line: 39, column: 6)
!47 = !DILocation(line: 39, column: 9, scope: !46)
!48 = !DILocation(line: 39, column: 16, scope: !46)
!49 = !DILocation(line: 39, column: 6, scope: !19)
!50 = !DILocation(line: 40, column: 18, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 40, column: 7)
!52 = distinct !DILexicalBlock(scope: !46, file: !3, line: 39, column: 22)
!53 = !DILocation(line: 40, column: 7, scope: !51)
!54 = !DILocation(line: 40, column: 24, scope: !51)
!55 = !DILocation(line: 40, column: 7, scope: !52)
!56 = !DILocation(line: 41, column: 4, scope: !51)
!57 = !DILocation(line: 42, column: 13, scope: !52)
!58 = !DILocation(line: 42, column: 3, scope: !52)
!59 = !DILocation(line: 42, column: 6, scope: !52)
!60 = !DILocation(line: 42, column: 11, scope: !52)
!61 = !DILocation(line: 43, column: 16, scope: !52)
!62 = !DILocation(line: 43, column: 21, scope: !52)
!63 = !DILocation(line: 43, column: 3, scope: !52)
!64 = !DILocation(line: 43, column: 6, scope: !52)
!65 = !DILocation(line: 43, column: 13, scope: !52)
!66 = !DILocation(line: 44, column: 14, scope: !52)
!67 = !DILocation(line: 44, column: 19, scope: !52)
!68 = !DILocation(line: 44, column: 3, scope: !52)
!69 = !DILocation(line: 44, column: 6, scope: !52)
!70 = !DILocation(line: 44, column: 11, scope: !52)
!71 = !DILocation(line: 45, column: 3, scope: !52)
!72 = !DILocation(line: 49, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !19, file: !3, line: 49, column: 6)
!74 = !DILocation(line: 49, column: 20, scope: !73)
!75 = !DILocation(line: 49, column: 23, scope: !73)
!76 = !DILocation(line: 49, column: 30, scope: !73)
!77 = !DILocation(line: 49, column: 6, scope: !73)
!78 = !DILocation(line: 49, column: 6, scope: !19)
!79 = !DILocation(line: 50, column: 3, scope: !73)
!80 = !DILocation(line: 52, column: 6, scope: !41)
!81 = !DILocation(line: 52, column: 9, scope: !41)
!82 = !DILocation(line: 52, column: 6, scope: !19)
!83 = !DILocation(line: 53, column: 3, scope: !40)
!84 = !DILocation(line: 53, column: 14, scope: !40)
!85 = !DILocation(line: 55, column: 22, scope: !40)
!86 = !DILocation(line: 55, column: 25, scope: !40)
!87 = !DILocation(line: 55, column: 28, scope: !40)
!88 = !DILocation(line: 55, column: 31, scope: !40)
!89 = !DILocation(line: 55, column: 34, scope: !40)
!90 = !DILocation(line: 55, column: 37, scope: !40)
!91 = !DILocation(line: 55, column: 58, scope: !40)
!92 = !DILocation(line: 55, column: 8, scope: !40)
!93 = !DILocation(line: 55, column: 6, scope: !40)
!94 = !DILocation(line: 56, column: 21, scope: !40)
!95 = !DILocation(line: 56, column: 3, scope: !40)
!96 = !DILocation(line: 56, column: 6, scope: !40)
!97 = !DILocation(line: 56, column: 8, scope: !40)
!98 = !DILocation(line: 56, column: 11, scope: !40)
!99 = !DILocation(line: 56, column: 19, scope: !40)
!100 = !DILocation(line: 57, column: 15, scope: !40)
!101 = !DILocation(line: 57, column: 18, scope: !40)
!102 = !DILocation(line: 57, column: 27, scope: !40)
!103 = !DILocation(line: 57, column: 25, scope: !40)
!104 = !DILocation(line: 57, column: 3, scope: !40)
!105 = !DILocation(line: 57, column: 6, scope: !40)
!106 = !DILocation(line: 57, column: 13, scope: !40)
!107 = !DILocation(line: 58, column: 3, scope: !40)
!108 = !DILocation(line: 58, column: 6, scope: !40)
!109 = !DILocation(line: 58, column: 11, scope: !40)
!110 = !DILocation(line: 59, column: 2, scope: !41)
!111 = !DILocation(line: 59, column: 2, scope: !40)
!112 = !DILocation(line: 63, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 63, column: 7)
!114 = distinct !DILexicalBlock(scope: !41, file: !3, line: 59, column: 9)
!115 = !DILocation(line: 63, column: 10, scope: !113)
!116 = !DILocation(line: 63, column: 17, scope: !113)
!117 = !DILocation(line: 63, column: 22, scope: !113)
!118 = !DILocation(line: 63, column: 25, scope: !113)
!119 = !DILocation(line: 63, column: 28, scope: !113)
!120 = !DILocation(line: 63, column: 35, scope: !113)
!121 = !DILocation(line: 63, column: 33, scope: !113)
!122 = !DILocation(line: 63, column: 7, scope: !114)
!123 = !DILocation(line: 64, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !113, file: !3, line: 63, column: 41)
!125 = !DILocation(line: 64, column: 21, scope: !124)
!126 = !DILocation(line: 64, column: 24, scope: !124)
!127 = !DILocation(line: 64, column: 19, scope: !124)
!128 = !DILocation(line: 64, column: 4, scope: !124)
!129 = !DILocation(line: 64, column: 7, scope: !124)
!130 = !DILocation(line: 64, column: 12, scope: !124)
!131 = !DILocation(line: 65, column: 4, scope: !124)
!132 = !DILocation(line: 65, column: 7, scope: !124)
!133 = !DILocation(line: 65, column: 14, scope: !124)
!134 = !DILocation(line: 66, column: 4, scope: !124)
!135 = !DILocation(line: 66, column: 7, scope: !124)
!136 = !DILocation(line: 66, column: 12, scope: !124)
!137 = !DILocation(line: 67, column: 3, scope: !124)
!138 = !DILocation(line: 68, column: 18, scope: !139)
!139 = distinct !DILexicalBlock(scope: !113, file: !3, line: 67, column: 10)
!140 = !DILocation(line: 68, column: 21, scope: !139)
!141 = !DILocation(line: 68, column: 24, scope: !139)
!142 = !DILocation(line: 68, column: 27, scope: !139)
!143 = !DILocation(line: 68, column: 30, scope: !139)
!144 = !DILocation(line: 68, column: 33, scope: !139)
!145 = !DILocation(line: 68, column: 54, scope: !139)
!146 = !DILocation(line: 68, column: 4, scope: !139)
!147 = !DILocation(line: 70, column: 17, scope: !139)
!148 = !DILocation(line: 70, column: 20, scope: !139)
!149 = !DILocation(line: 70, column: 30, scope: !139)
!150 = !DILocation(line: 70, column: 33, scope: !139)
!151 = !DILocation(line: 70, column: 35, scope: !139)
!152 = !DILocation(line: 70, column: 38, scope: !139)
!153 = !DILocation(line: 70, column: 45, scope: !139)
!154 = !DILocation(line: 70, column: 50, scope: !139)
!155 = !DILocation(line: 70, column: 27, scope: !139)
!156 = !DILocation(line: 70, column: 4, scope: !139)
!157 = !DILocation(line: 70, column: 7, scope: !139)
!158 = !DILocation(line: 70, column: 14, scope: !139)
!159 = !DILocation(line: 71, column: 4, scope: !139)
!160 = !DILocation(line: 71, column: 7, scope: !139)
!161 = !DILocation(line: 71, column: 12, scope: !139)
!162 = !DILocation(line: 75, column: 16, scope: !19)
!163 = !DILocation(line: 75, column: 2, scope: !19)
!164 = !DILocation(line: 76, column: 2, scope: !19)
!165 = !DILocation(line: 77, column: 1, scope: !19)
!166 = !DISubprogram(name: "mpi_resize", scope: !6, file: !6, line: 49, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DISubroutineType(types: !168)
!168 = !{!22, !23, !32}
!169 = distinct !DISubprogram(name: "mpihelp_add_1", scope: !170, file: !170, line: 24, type: !171, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!170 = !DIFile(filename: "lib/crypto/mpi/mpi-inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1eb4d706cf80b7747a30df77860dc8e1")
!171 = !DISubroutineType(types: !172)
!172 = !{!5, !173, !173, !175, !5}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !174, line: 52, baseType: !34)
!174 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !174, line: 53, baseType: !22)
!176 = !{!177, !178, !179, !180, !181, !182, !183}
!177 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !169, file: !170, line: 24, type: !173)
!178 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !169, file: !170, line: 24, type: !173)
!179 = !DILocalVariable(name: "s1_size", arg: 3, scope: !169, file: !170, line: 25, type: !175)
!180 = !DILocalVariable(name: "s2_limb", arg: 4, scope: !169, file: !170, line: 25, type: !5)
!181 = !DILocalVariable(name: "x", scope: !169, file: !170, line: 27, type: !5)
!182 = !DILabel(scope: !169, name: "leave", file: !170, line: 42)
!183 = !DILocalVariable(name: "i", scope: !184, file: !170, line: 44, type: !175)
!184 = distinct !DILexicalBlock(scope: !185, file: !170, line: 43, column: 25)
!185 = distinct !DILexicalBlock(scope: !169, file: !170, line: 43, column: 6)
!186 = !DILocation(line: 24, column: 25, scope: !169)
!187 = !DILocation(line: 24, column: 44, scope: !169)
!188 = !DILocation(line: 25, column: 19, scope: !169)
!189 = !DILocation(line: 25, column: 39, scope: !169)
!190 = !DILocation(line: 27, column: 2, scope: !169)
!191 = !DILocation(line: 27, column: 13, scope: !169)
!192 = !DILocation(line: 29, column: 13, scope: !169)
!193 = !DILocation(line: 29, column: 6, scope: !169)
!194 = !DILocation(line: 29, column: 4, scope: !169)
!195 = !DILocation(line: 30, column: 13, scope: !169)
!196 = !DILocation(line: 30, column: 10, scope: !169)
!197 = !DILocation(line: 31, column: 15, scope: !169)
!198 = !DILocation(line: 31, column: 10, scope: !169)
!199 = !DILocation(line: 31, column: 13, scope: !169)
!200 = !DILocation(line: 32, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !169, file: !170, line: 32, column: 6)
!202 = !DILocation(line: 32, column: 16, scope: !201)
!203 = !DILocation(line: 32, column: 14, scope: !201)
!204 = !DILocation(line: 32, column: 6, scope: !169)
!205 = !DILocation(line: 33, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !170, line: 32, column: 19)
!207 = !DILocation(line: 33, column: 10, scope: !206)
!208 = !DILocation(line: 34, column: 15, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !170, line: 33, column: 21)
!210 = !DILocation(line: 34, column: 8, scope: !209)
!211 = !DILocation(line: 34, column: 18, scope: !209)
!212 = !DILocation(line: 34, column: 6, scope: !209)
!213 = !DILocation(line: 35, column: 17, scope: !209)
!214 = !DILocation(line: 35, column: 12, scope: !209)
!215 = !DILocation(line: 35, column: 15, scope: !209)
!216 = !DILocation(line: 36, column: 8, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !170, line: 36, column: 8)
!218 = !DILocation(line: 36, column: 8, scope: !209)
!219 = !DILocation(line: 37, column: 5, scope: !217)
!220 = distinct !{!220, !205, !221, !222, !223}
!221 = !DILocation(line: 38, column: 3, scope: !206)
!222 = !{!"llvm.loop.mustprogress"}
!223 = !{!"llvm.loop.unroll.disable"}
!224 = !DILocation(line: 39, column: 3, scope: !206)
!225 = !DILocation(line: 42, column: 1, scope: !169)
!226 = !DILocation(line: 43, column: 6, scope: !185)
!227 = !DILocation(line: 43, column: 17, scope: !185)
!228 = !DILocation(line: 43, column: 14, scope: !185)
!229 = !DILocation(line: 43, column: 6, scope: !169)
!230 = !DILocation(line: 44, column: 3, scope: !184)
!231 = !DILocation(line: 44, column: 14, scope: !184)
!232 = !DILocation(line: 45, column: 10, scope: !233)
!233 = distinct !DILexicalBlock(scope: !184, file: !170, line: 45, column: 3)
!234 = !DILocation(line: 45, column: 8, scope: !233)
!235 = !DILocation(line: 45, column: 15, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !170, line: 45, column: 3)
!237 = !DILocation(line: 45, column: 19, scope: !236)
!238 = !DILocation(line: 45, column: 27, scope: !236)
!239 = !DILocation(line: 45, column: 17, scope: !236)
!240 = !DILocation(line: 45, column: 3, scope: !233)
!241 = !DILocation(line: 46, column: 17, scope: !236)
!242 = !DILocation(line: 46, column: 24, scope: !236)
!243 = !DILocation(line: 46, column: 4, scope: !236)
!244 = !DILocation(line: 46, column: 12, scope: !236)
!245 = !DILocation(line: 46, column: 15, scope: !236)
!246 = !DILocation(line: 45, column: 33, scope: !236)
!247 = !DILocation(line: 45, column: 3, scope: !236)
!248 = distinct !{!248, !240, !249, !222, !223}
!249 = !DILocation(line: 46, column: 25, scope: !233)
!250 = !DILocation(line: 47, column: 2, scope: !185)
!251 = !DILocation(line: 47, column: 2, scope: !184)
!252 = !DILocation(line: 48, column: 2, scope: !169)
!253 = !DILocation(line: 49, column: 1, scope: !169)
!254 = distinct !DISubprogram(name: "mpihelp_sub_1", scope: !170, file: !170, line: 67, type: !171, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262}
!256 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !254, file: !170, line: 67, type: !173)
!257 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !254, file: !170, line: 67, type: !173)
!258 = !DILocalVariable(name: "s1_size", arg: 3, scope: !254, file: !170, line: 68, type: !175)
!259 = !DILocalVariable(name: "s2_limb", arg: 4, scope: !254, file: !170, line: 68, type: !5)
!260 = !DILocalVariable(name: "x", scope: !254, file: !170, line: 70, type: !5)
!261 = !DILabel(scope: !254, name: "leave", file: !170, line: 85)
!262 = !DILocalVariable(name: "i", scope: !263, file: !170, line: 87, type: !175)
!263 = distinct !DILexicalBlock(scope: !264, file: !170, line: 86, column: 25)
!264 = distinct !DILexicalBlock(scope: !254, file: !170, line: 86, column: 6)
!265 = !DILocation(line: 67, column: 25, scope: !254)
!266 = !DILocation(line: 67, column: 44, scope: !254)
!267 = !DILocation(line: 68, column: 19, scope: !254)
!268 = !DILocation(line: 68, column: 39, scope: !254)
!269 = !DILocation(line: 70, column: 2, scope: !254)
!270 = !DILocation(line: 70, column: 13, scope: !254)
!271 = !DILocation(line: 72, column: 13, scope: !254)
!272 = !DILocation(line: 72, column: 6, scope: !254)
!273 = !DILocation(line: 72, column: 4, scope: !254)
!274 = !DILocation(line: 73, column: 12, scope: !254)
!275 = !DILocation(line: 73, column: 16, scope: !254)
!276 = !DILocation(line: 73, column: 14, scope: !254)
!277 = !DILocation(line: 73, column: 10, scope: !254)
!278 = !DILocation(line: 74, column: 15, scope: !254)
!279 = !DILocation(line: 74, column: 10, scope: !254)
!280 = !DILocation(line: 74, column: 13, scope: !254)
!281 = !DILocation(line: 75, column: 6, scope: !282)
!282 = distinct !DILexicalBlock(scope: !254, file: !170, line: 75, column: 6)
!283 = !DILocation(line: 75, column: 16, scope: !282)
!284 = !DILocation(line: 75, column: 14, scope: !282)
!285 = !DILocation(line: 75, column: 6, scope: !254)
!286 = !DILocation(line: 76, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !170, line: 75, column: 19)
!288 = !DILocation(line: 76, column: 10, scope: !287)
!289 = !DILocation(line: 77, column: 15, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !170, line: 76, column: 21)
!291 = !DILocation(line: 77, column: 8, scope: !290)
!292 = !DILocation(line: 77, column: 6, scope: !290)
!293 = !DILocation(line: 78, column: 17, scope: !290)
!294 = !DILocation(line: 78, column: 19, scope: !290)
!295 = !DILocation(line: 78, column: 12, scope: !290)
!296 = !DILocation(line: 78, column: 15, scope: !290)
!297 = !DILocation(line: 79, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !170, line: 79, column: 8)
!299 = !DILocation(line: 79, column: 8, scope: !290)
!300 = !DILocation(line: 80, column: 5, scope: !298)
!301 = distinct !{!301, !286, !302, !222, !223}
!302 = !DILocation(line: 81, column: 3, scope: !287)
!303 = !DILocation(line: 82, column: 3, scope: !287)
!304 = !DILocation(line: 85, column: 1, scope: !254)
!305 = !DILocation(line: 86, column: 6, scope: !264)
!306 = !DILocation(line: 86, column: 17, scope: !264)
!307 = !DILocation(line: 86, column: 14, scope: !264)
!308 = !DILocation(line: 86, column: 6, scope: !254)
!309 = !DILocation(line: 87, column: 3, scope: !263)
!310 = !DILocation(line: 87, column: 14, scope: !263)
!311 = !DILocation(line: 88, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !263, file: !170, line: 88, column: 3)
!313 = !DILocation(line: 88, column: 8, scope: !312)
!314 = !DILocation(line: 88, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !170, line: 88, column: 3)
!316 = !DILocation(line: 88, column: 19, scope: !315)
!317 = !DILocation(line: 88, column: 27, scope: !315)
!318 = !DILocation(line: 88, column: 17, scope: !315)
!319 = !DILocation(line: 88, column: 3, scope: !312)
!320 = !DILocation(line: 89, column: 17, scope: !315)
!321 = !DILocation(line: 89, column: 24, scope: !315)
!322 = !DILocation(line: 89, column: 4, scope: !315)
!323 = !DILocation(line: 89, column: 12, scope: !315)
!324 = !DILocation(line: 89, column: 15, scope: !315)
!325 = !DILocation(line: 88, column: 33, scope: !315)
!326 = !DILocation(line: 88, column: 3, scope: !315)
!327 = distinct !{!327, !319, !328, !222, !223}
!328 = !DILocation(line: 89, column: 25, scope: !312)
!329 = !DILocation(line: 90, column: 2, scope: !264)
!330 = !DILocation(line: 90, column: 2, scope: !263)
!331 = !DILocation(line: 91, column: 2, scope: !254)
!332 = !DILocation(line: 92, column: 1, scope: !254)
!333 = !DISubprogram(name: "mpi_normalize", scope: !6, file: !6, line: 129, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !23}
