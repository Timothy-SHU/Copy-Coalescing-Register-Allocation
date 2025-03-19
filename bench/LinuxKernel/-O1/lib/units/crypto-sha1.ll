; ModuleID = 'lib/crypto/sha1.c'
source_filename = "lib/crypto/sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sha1_transform: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sha1_transform ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sha1_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sha1_init ; .previous"

%struct.anon = type { i32 }

@__UNIQUE_ID___addressable_sha1_transform195 = internal global ptr @sha1_transform, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_sha1_init196 = internal global ptr @sha1_init, section ".discard.addressable", align 8, !dbg !32
@__UNIQUE_ID_file197 = internal constant [32 x i8] c"libsha1.file=lib/crypto/libsha1\00", section ".modinfo", align 1, !dbg !34
@__UNIQUE_ID_license198 = internal constant [20 x i8] c"libsha1.license=GPL\00", section ".modinfo", align 1, !dbg !41
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_sha1_transform195, ptr @__UNIQUE_ID___addressable_sha1_init196, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sha1_transform(ptr noundef %digest, ptr noundef %data, ptr noundef %array) #0 align 16 !dbg !55 {
entry:
  %digest.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  %E = alloca i32, align 4
  %i = alloca i32, align 4
  %TEMP = alloca i32, align 4
  %TEMP17 = alloca i32, align 4
  %TEMP58 = alloca i32, align 4
  %TEMP98 = alloca i32, align 4
  %TEMP140 = alloca i32, align 4
  store ptr %digest, ptr %digest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %digest.addr, metadata !60, metadata !DIExpression()), !dbg !89
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !61, metadata !DIExpression()), !dbg !90
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !62, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 4, ptr %A) #4, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %A, metadata !63, metadata !DIExpression()), !dbg !93
  call void @llvm.lifetime.start.p0(i64 4, ptr %B) #4, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %B, metadata !64, metadata !DIExpression()), !dbg !94
  call void @llvm.lifetime.start.p0(i64 4, ptr %C) #4, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %C, metadata !65, metadata !DIExpression()), !dbg !95
  call void @llvm.lifetime.start.p0(i64 4, ptr %D) #4, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %D, metadata !66, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %E) #4, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %E, metadata !67, metadata !DIExpression()), !dbg !97
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !98
  call void @llvm.dbg.declare(metadata ptr %i, metadata !68, metadata !DIExpression()), !dbg !99
  store i32 0, ptr %i, align 4, !dbg !99
  %0 = load ptr, ptr %digest.addr, align 8, !dbg !100
  %arrayidx = getelementptr i32, ptr %0, i64 0, !dbg !100
  %1 = load i32, ptr %arrayidx, align 4, !dbg !100
  store i32 %1, ptr %A, align 4, !dbg !101
  %2 = load ptr, ptr %digest.addr, align 8, !dbg !102
  %arrayidx1 = getelementptr i32, ptr %2, i64 1, !dbg !102
  %3 = load i32, ptr %arrayidx1, align 4, !dbg !102
  store i32 %3, ptr %B, align 4, !dbg !103
  %4 = load ptr, ptr %digest.addr, align 8, !dbg !104
  %arrayidx2 = getelementptr i32, ptr %4, i64 2, !dbg !104
  %5 = load i32, ptr %arrayidx2, align 4, !dbg !104
  store i32 %5, ptr %C, align 4, !dbg !105
  %6 = load ptr, ptr %digest.addr, align 8, !dbg !106
  %arrayidx3 = getelementptr i32, ptr %6, i64 3, !dbg !106
  %7 = load i32, ptr %arrayidx3, align 4, !dbg !106
  store i32 %7, ptr %D, align 4, !dbg !107
  %8 = load ptr, ptr %digest.addr, align 8, !dbg !108
  %arrayidx4 = getelementptr i32, ptr %8, i64 4, !dbg !108
  %9 = load i32, ptr %arrayidx4, align 4, !dbg !108
  store i32 %9, ptr %E, align 4, !dbg !109
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %i, align 4, !dbg !111
  %cmp = icmp ult i32 %10, 16, !dbg !112
  br i1 %cmp, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !114

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %TEMP) #4, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %TEMP, metadata !69, metadata !DIExpression()), !dbg !115
  %11 = load ptr, ptr %data.addr, align 8, !dbg !115
  %12 = load i32, ptr %i, align 4, !dbg !115
  %idx.ext = zext i32 %12 to i64, !dbg !115
  %add.ptr = getelementptr i32, ptr %11, i64 %idx.ext, !dbg !115
  %call = call i32 @get_unaligned_be32(ptr noundef %add.ptr) #5, !dbg !115
  store i32 %call, ptr %TEMP, align 4, !dbg !115
  %13 = load i32, ptr %TEMP, align 4, !dbg !115
  %14 = load ptr, ptr %array.addr, align 8, !dbg !115
  %15 = load i32, ptr %i, align 4, !dbg !115
  %and = and i32 %15, 15, !dbg !115
  %idxprom = zext i32 %and to i64, !dbg !115
  %arrayidx5 = getelementptr i32, ptr %14, i64 %idxprom, !dbg !115
  store volatile i32 %13, ptr %arrayidx5, align 4, !dbg !115
  %16 = load i32, ptr %TEMP, align 4, !dbg !115
  %17 = load i32, ptr %A, align 4, !dbg !115
  %call6 = call i32 @rol32(i32 noundef %17, i32 noundef 5) #5, !dbg !115
  %add = add i32 %16, %call6, !dbg !115
  %18 = load i32, ptr %C, align 4, !dbg !115
  %19 = load i32, ptr %D, align 4, !dbg !115
  %xor = xor i32 %18, %19, !dbg !115
  %20 = load i32, ptr %B, align 4, !dbg !115
  %and7 = and i32 %xor, %20, !dbg !115
  %21 = load i32, ptr %D, align 4, !dbg !115
  %xor8 = xor i32 %and7, %21, !dbg !115
  %add9 = add i32 %add, %xor8, !dbg !115
  %add10 = add i32 %add9, 1518500249, !dbg !115
  %22 = load i32, ptr %E, align 4, !dbg !115
  %add11 = add i32 %22, %add10, !dbg !115
  store i32 %add11, ptr %E, align 4, !dbg !115
  %23 = load i32, ptr %B, align 4, !dbg !115
  %call12 = call i32 @ror32(i32 noundef %23, i32 noundef 2) #5, !dbg !115
  store i32 %call12, ptr %B, align 4, !dbg !115
  %24 = load i32, ptr %E, align 4, !dbg !115
  store i32 %24, ptr %TEMP, align 4, !dbg !115
  %25 = load i32, ptr %D, align 4, !dbg !115
  store i32 %25, ptr %E, align 4, !dbg !115
  %26 = load i32, ptr %C, align 4, !dbg !115
  store i32 %26, ptr %D, align 4, !dbg !115
  %27 = load i32, ptr %B, align 4, !dbg !115
  store i32 %27, ptr %C, align 4, !dbg !115
  %28 = load i32, ptr %A, align 4, !dbg !115
  store i32 %28, ptr %B, align 4, !dbg !115
  %29 = load i32, ptr %TEMP, align 4, !dbg !115
  store i32 %29, ptr %A, align 4, !dbg !115
  call void @llvm.lifetime.end.p0(i64 4, ptr %TEMP) #4, !dbg !114
  br label %do.cond, !dbg !115

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !115

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %do.end
  %30 = load i32, ptr %i, align 4, !dbg !116
  %inc = add i32 %30, 1, !dbg !116
  store i32 %inc, ptr %i, align 4, !dbg !116
  br label %for.cond, !dbg !117, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  br label %for.cond13, !dbg !122

for.cond13:                                       ; preds = %for.inc51, %for.end
  %31 = load i32, ptr %i, align 4, !dbg !123
  %cmp14 = icmp ult i32 %31, 20, !dbg !124
  br i1 %cmp14, label %for.body15, label %for.end53, !dbg !125

for.body15:                                       ; preds = %for.cond13
  br label %do.body16, !dbg !126

do.body16:                                        ; preds = %for.body15
  call void @llvm.lifetime.start.p0(i64 4, ptr %TEMP17) #4, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %TEMP17, metadata !73, metadata !DIExpression()), !dbg !127
  %32 = load ptr, ptr %array.addr, align 8, !dbg !127
  %33 = load i32, ptr %i, align 4, !dbg !127
  %add18 = add i32 %33, 13, !dbg !127
  %and19 = and i32 %add18, 15, !dbg !127
  %idxprom20 = zext i32 %and19 to i64, !dbg !127
  %arrayidx21 = getelementptr i32, ptr %32, i64 %idxprom20, !dbg !127
  %34 = load i32, ptr %arrayidx21, align 4, !dbg !127
  %35 = load ptr, ptr %array.addr, align 8, !dbg !127
  %36 = load i32, ptr %i, align 4, !dbg !127
  %add22 = add i32 %36, 8, !dbg !127
  %and23 = and i32 %add22, 15, !dbg !127
  %idxprom24 = zext i32 %and23 to i64, !dbg !127
  %arrayidx25 = getelementptr i32, ptr %35, i64 %idxprom24, !dbg !127
  %37 = load i32, ptr %arrayidx25, align 4, !dbg !127
  %xor26 = xor i32 %34, %37, !dbg !127
  %38 = load ptr, ptr %array.addr, align 8, !dbg !127
  %39 = load i32, ptr %i, align 4, !dbg !127
  %add27 = add i32 %39, 2, !dbg !127
  %and28 = and i32 %add27, 15, !dbg !127
  %idxprom29 = zext i32 %and28 to i64, !dbg !127
  %arrayidx30 = getelementptr i32, ptr %38, i64 %idxprom29, !dbg !127
  %40 = load i32, ptr %arrayidx30, align 4, !dbg !127
  %xor31 = xor i32 %xor26, %40, !dbg !127
  %41 = load ptr, ptr %array.addr, align 8, !dbg !127
  %42 = load i32, ptr %i, align 4, !dbg !127
  %and32 = and i32 %42, 15, !dbg !127
  %idxprom33 = zext i32 %and32 to i64, !dbg !127
  %arrayidx34 = getelementptr i32, ptr %41, i64 %idxprom33, !dbg !127
  %43 = load i32, ptr %arrayidx34, align 4, !dbg !127
  %xor35 = xor i32 %xor31, %43, !dbg !127
  %call36 = call i32 @rol32(i32 noundef %xor35, i32 noundef 1) #5, !dbg !127
  store i32 %call36, ptr %TEMP17, align 4, !dbg !127
  %44 = load i32, ptr %TEMP17, align 4, !dbg !127
  %45 = load ptr, ptr %array.addr, align 8, !dbg !127
  %46 = load i32, ptr %i, align 4, !dbg !127
  %and37 = and i32 %46, 15, !dbg !127
  %idxprom38 = zext i32 %and37 to i64, !dbg !127
  %arrayidx39 = getelementptr i32, ptr %45, i64 %idxprom38, !dbg !127
  store volatile i32 %44, ptr %arrayidx39, align 4, !dbg !127
  %47 = load i32, ptr %TEMP17, align 4, !dbg !127
  %48 = load i32, ptr %A, align 4, !dbg !127
  %call40 = call i32 @rol32(i32 noundef %48, i32 noundef 5) #5, !dbg !127
  %add41 = add i32 %47, %call40, !dbg !127
  %49 = load i32, ptr %C, align 4, !dbg !127
  %50 = load i32, ptr %D, align 4, !dbg !127
  %xor42 = xor i32 %49, %50, !dbg !127
  %51 = load i32, ptr %B, align 4, !dbg !127
  %and43 = and i32 %xor42, %51, !dbg !127
  %52 = load i32, ptr %D, align 4, !dbg !127
  %xor44 = xor i32 %and43, %52, !dbg !127
  %add45 = add i32 %add41, %xor44, !dbg !127
  %add46 = add i32 %add45, 1518500249, !dbg !127
  %53 = load i32, ptr %E, align 4, !dbg !127
  %add47 = add i32 %53, %add46, !dbg !127
  store i32 %add47, ptr %E, align 4, !dbg !127
  %54 = load i32, ptr %B, align 4, !dbg !127
  %call48 = call i32 @ror32(i32 noundef %54, i32 noundef 2) #5, !dbg !127
  store i32 %call48, ptr %B, align 4, !dbg !127
  %55 = load i32, ptr %E, align 4, !dbg !127
  store i32 %55, ptr %TEMP17, align 4, !dbg !127
  %56 = load i32, ptr %D, align 4, !dbg !127
  store i32 %56, ptr %E, align 4, !dbg !127
  %57 = load i32, ptr %C, align 4, !dbg !127
  store i32 %57, ptr %D, align 4, !dbg !127
  %58 = load i32, ptr %B, align 4, !dbg !127
  store i32 %58, ptr %C, align 4, !dbg !127
  %59 = load i32, ptr %A, align 4, !dbg !127
  store i32 %59, ptr %B, align 4, !dbg !127
  %60 = load i32, ptr %TEMP17, align 4, !dbg !127
  store i32 %60, ptr %A, align 4, !dbg !127
  call void @llvm.lifetime.end.p0(i64 4, ptr %TEMP17) #4, !dbg !126
  br label %do.cond49, !dbg !127

do.cond49:                                        ; preds = %do.body16
  br label %do.end50, !dbg !127

do.end50:                                         ; preds = %do.cond49
  br label %for.inc51, !dbg !127

for.inc51:                                        ; preds = %do.end50
  %61 = load i32, ptr %i, align 4, !dbg !128
  %inc52 = add i32 %61, 1, !dbg !128
  store i32 %inc52, ptr %i, align 4, !dbg !128
  br label %for.cond13, !dbg !129, !llvm.loop !130

for.end53:                                        ; preds = %for.cond13
  br label %for.cond54, !dbg !132

for.cond54:                                       ; preds = %for.inc91, %for.end53
  %62 = load i32, ptr %i, align 4, !dbg !133
  %cmp55 = icmp ult i32 %62, 40, !dbg !134
  br i1 %cmp55, label %for.body56, label %for.end93, !dbg !135

for.body56:                                       ; preds = %for.cond54
  br label %do.body57, !dbg !136

do.body57:                                        ; preds = %for.body56
  call void @llvm.lifetime.start.p0(i64 4, ptr %TEMP58) #4, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %TEMP58, metadata !77, metadata !DIExpression()), !dbg !137
  %63 = load ptr, ptr %array.addr, align 8, !dbg !137
  %64 = load i32, ptr %i, align 4, !dbg !137
  %add59 = add i32 %64, 13, !dbg !137
  %and60 = and i32 %add59, 15, !dbg !137
  %idxprom61 = zext i32 %and60 to i64, !dbg !137
  %arrayidx62 = getelementptr i32, ptr %63, i64 %idxprom61, !dbg !137
  %65 = load i32, ptr %arrayidx62, align 4, !dbg !137
  %66 = load ptr, ptr %array.addr, align 8, !dbg !137
  %67 = load i32, ptr %i, align 4, !dbg !137
  %add63 = add i32 %67, 8, !dbg !137
  %and64 = and i32 %add63, 15, !dbg !137
  %idxprom65 = zext i32 %and64 to i64, !dbg !137
  %arrayidx66 = getelementptr i32, ptr %66, i64 %idxprom65, !dbg !137
  %68 = load i32, ptr %arrayidx66, align 4, !dbg !137
  %xor67 = xor i32 %65, %68, !dbg !137
  %69 = load ptr, ptr %array.addr, align 8, !dbg !137
  %70 = load i32, ptr %i, align 4, !dbg !137
  %add68 = add i32 %70, 2, !dbg !137
  %and69 = and i32 %add68, 15, !dbg !137
  %idxprom70 = zext i32 %and69 to i64, !dbg !137
  %arrayidx71 = getelementptr i32, ptr %69, i64 %idxprom70, !dbg !137
  %71 = load i32, ptr %arrayidx71, align 4, !dbg !137
  %xor72 = xor i32 %xor67, %71, !dbg !137
  %72 = load ptr, ptr %array.addr, align 8, !dbg !137
  %73 = load i32, ptr %i, align 4, !dbg !137
  %and73 = and i32 %73, 15, !dbg !137
  %idxprom74 = zext i32 %and73 to i64, !dbg !137
  %arrayidx75 = getelementptr i32, ptr %72, i64 %idxprom74, !dbg !137
  %74 = load i32, ptr %arrayidx75, align 4, !dbg !137
  %xor76 = xor i32 %xor72, %74, !dbg !137
  %call77 = call i32 @rol32(i32 noundef %xor76, i32 noundef 1) #5, !dbg !137
  store i32 %call77, ptr %TEMP58, align 4, !dbg !137
  %75 = load i32, ptr %TEMP58, align 4, !dbg !137
  %76 = load ptr, ptr %array.addr, align 8, !dbg !137
  %77 = load i32, ptr %i, align 4, !dbg !137
  %and78 = and i32 %77, 15, !dbg !137
  %idxprom79 = zext i32 %and78 to i64, !dbg !137
  %arrayidx80 = getelementptr i32, ptr %76, i64 %idxprom79, !dbg !137
  store volatile i32 %75, ptr %arrayidx80, align 4, !dbg !137
  %78 = load i32, ptr %TEMP58, align 4, !dbg !137
  %79 = load i32, ptr %A, align 4, !dbg !137
  %call81 = call i32 @rol32(i32 noundef %79, i32 noundef 5) #5, !dbg !137
  %add82 = add i32 %78, %call81, !dbg !137
  %80 = load i32, ptr %B, align 4, !dbg !137
  %81 = load i32, ptr %C, align 4, !dbg !137
  %xor83 = xor i32 %80, %81, !dbg !137
  %82 = load i32, ptr %D, align 4, !dbg !137
  %xor84 = xor i32 %xor83, %82, !dbg !137
  %add85 = add i32 %add82, %xor84, !dbg !137
  %add86 = add i32 %add85, 1859775393, !dbg !137
  %83 = load i32, ptr %E, align 4, !dbg !137
  %add87 = add i32 %83, %add86, !dbg !137
  store i32 %add87, ptr %E, align 4, !dbg !137
  %84 = load i32, ptr %B, align 4, !dbg !137
  %call88 = call i32 @ror32(i32 noundef %84, i32 noundef 2) #5, !dbg !137
  store i32 %call88, ptr %B, align 4, !dbg !137
  %85 = load i32, ptr %E, align 4, !dbg !137
  store i32 %85, ptr %TEMP58, align 4, !dbg !137
  %86 = load i32, ptr %D, align 4, !dbg !137
  store i32 %86, ptr %E, align 4, !dbg !137
  %87 = load i32, ptr %C, align 4, !dbg !137
  store i32 %87, ptr %D, align 4, !dbg !137
  %88 = load i32, ptr %B, align 4, !dbg !137
  store i32 %88, ptr %C, align 4, !dbg !137
  %89 = load i32, ptr %A, align 4, !dbg !137
  store i32 %89, ptr %B, align 4, !dbg !137
  %90 = load i32, ptr %TEMP58, align 4, !dbg !137
  store i32 %90, ptr %A, align 4, !dbg !137
  call void @llvm.lifetime.end.p0(i64 4, ptr %TEMP58) #4, !dbg !136
  br label %do.cond89, !dbg !137

do.cond89:                                        ; preds = %do.body57
  br label %do.end90, !dbg !137

do.end90:                                         ; preds = %do.cond89
  br label %for.inc91, !dbg !137

for.inc91:                                        ; preds = %do.end90
  %91 = load i32, ptr %i, align 4, !dbg !138
  %inc92 = add i32 %91, 1, !dbg !138
  store i32 %inc92, ptr %i, align 4, !dbg !138
  br label %for.cond54, !dbg !139, !llvm.loop !140

for.end93:                                        ; preds = %for.cond54
  br label %for.cond94, !dbg !142

for.cond94:                                       ; preds = %for.inc133, %for.end93
  %92 = load i32, ptr %i, align 4, !dbg !143
  %cmp95 = icmp ult i32 %92, 60, !dbg !144
  br i1 %cmp95, label %for.body96, label %for.end135, !dbg !145

for.body96:                                       ; preds = %for.cond94
  br label %do.body97, !dbg !146

do.body97:                                        ; preds = %for.body96
  call void @llvm.lifetime.start.p0(i64 4, ptr %TEMP98) #4, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %TEMP98, metadata !81, metadata !DIExpression()), !dbg !147
  %93 = load ptr, ptr %array.addr, align 8, !dbg !147
  %94 = load i32, ptr %i, align 4, !dbg !147
  %add99 = add i32 %94, 13, !dbg !147
  %and100 = and i32 %add99, 15, !dbg !147
  %idxprom101 = zext i32 %and100 to i64, !dbg !147
  %arrayidx102 = getelementptr i32, ptr %93, i64 %idxprom101, !dbg !147
  %95 = load i32, ptr %arrayidx102, align 4, !dbg !147
  %96 = load ptr, ptr %array.addr, align 8, !dbg !147
  %97 = load i32, ptr %i, align 4, !dbg !147
  %add103 = add i32 %97, 8, !dbg !147
  %and104 = and i32 %add103, 15, !dbg !147
  %idxprom105 = zext i32 %and104 to i64, !dbg !147
  %arrayidx106 = getelementptr i32, ptr %96, i64 %idxprom105, !dbg !147
  %98 = load i32, ptr %arrayidx106, align 4, !dbg !147
  %xor107 = xor i32 %95, %98, !dbg !147
  %99 = load ptr, ptr %array.addr, align 8, !dbg !147
  %100 = load i32, ptr %i, align 4, !dbg !147
  %add108 = add i32 %100, 2, !dbg !147
  %and109 = and i32 %add108, 15, !dbg !147
  %idxprom110 = zext i32 %and109 to i64, !dbg !147
  %arrayidx111 = getelementptr i32, ptr %99, i64 %idxprom110, !dbg !147
  %101 = load i32, ptr %arrayidx111, align 4, !dbg !147
  %xor112 = xor i32 %xor107, %101, !dbg !147
  %102 = load ptr, ptr %array.addr, align 8, !dbg !147
  %103 = load i32, ptr %i, align 4, !dbg !147
  %and113 = and i32 %103, 15, !dbg !147
  %idxprom114 = zext i32 %and113 to i64, !dbg !147
  %arrayidx115 = getelementptr i32, ptr %102, i64 %idxprom114, !dbg !147
  %104 = load i32, ptr %arrayidx115, align 4, !dbg !147
  %xor116 = xor i32 %xor112, %104, !dbg !147
  %call117 = call i32 @rol32(i32 noundef %xor116, i32 noundef 1) #5, !dbg !147
  store i32 %call117, ptr %TEMP98, align 4, !dbg !147
  %105 = load i32, ptr %TEMP98, align 4, !dbg !147
  %106 = load ptr, ptr %array.addr, align 8, !dbg !147
  %107 = load i32, ptr %i, align 4, !dbg !147
  %and118 = and i32 %107, 15, !dbg !147
  %idxprom119 = zext i32 %and118 to i64, !dbg !147
  %arrayidx120 = getelementptr i32, ptr %106, i64 %idxprom119, !dbg !147
  store volatile i32 %105, ptr %arrayidx120, align 4, !dbg !147
  %108 = load i32, ptr %TEMP98, align 4, !dbg !147
  %109 = load i32, ptr %A, align 4, !dbg !147
  %call121 = call i32 @rol32(i32 noundef %109, i32 noundef 5) #5, !dbg !147
  %add122 = add i32 %108, %call121, !dbg !147
  %110 = load i32, ptr %B, align 4, !dbg !147
  %111 = load i32, ptr %C, align 4, !dbg !147
  %and123 = and i32 %110, %111, !dbg !147
  %112 = load i32, ptr %D, align 4, !dbg !147
  %113 = load i32, ptr %B, align 4, !dbg !147
  %114 = load i32, ptr %C, align 4, !dbg !147
  %xor124 = xor i32 %113, %114, !dbg !147
  %and125 = and i32 %112, %xor124, !dbg !147
  %add126 = add i32 %and123, %and125, !dbg !147
  %add127 = add i32 %add122, %add126, !dbg !147
  %add128 = add i32 %add127, -1894007588, !dbg !147
  %115 = load i32, ptr %E, align 4, !dbg !147
  %add129 = add i32 %115, %add128, !dbg !147
  store i32 %add129, ptr %E, align 4, !dbg !147
  %116 = load i32, ptr %B, align 4, !dbg !147
  %call130 = call i32 @ror32(i32 noundef %116, i32 noundef 2) #5, !dbg !147
  store i32 %call130, ptr %B, align 4, !dbg !147
  %117 = load i32, ptr %E, align 4, !dbg !147
  store i32 %117, ptr %TEMP98, align 4, !dbg !147
  %118 = load i32, ptr %D, align 4, !dbg !147
  store i32 %118, ptr %E, align 4, !dbg !147
  %119 = load i32, ptr %C, align 4, !dbg !147
  store i32 %119, ptr %D, align 4, !dbg !147
  %120 = load i32, ptr %B, align 4, !dbg !147
  store i32 %120, ptr %C, align 4, !dbg !147
  %121 = load i32, ptr %A, align 4, !dbg !147
  store i32 %121, ptr %B, align 4, !dbg !147
  %122 = load i32, ptr %TEMP98, align 4, !dbg !147
  store i32 %122, ptr %A, align 4, !dbg !147
  call void @llvm.lifetime.end.p0(i64 4, ptr %TEMP98) #4, !dbg !146
  br label %do.cond131, !dbg !147

do.cond131:                                       ; preds = %do.body97
  br label %do.end132, !dbg !147

do.end132:                                        ; preds = %do.cond131
  br label %for.inc133, !dbg !147

for.inc133:                                       ; preds = %do.end132
  %123 = load i32, ptr %i, align 4, !dbg !148
  %inc134 = add i32 %123, 1, !dbg !148
  store i32 %inc134, ptr %i, align 4, !dbg !148
  br label %for.cond94, !dbg !149, !llvm.loop !150

for.end135:                                       ; preds = %for.cond94
  br label %for.cond136, !dbg !152

for.cond136:                                      ; preds = %for.inc173, %for.end135
  %124 = load i32, ptr %i, align 4, !dbg !153
  %cmp137 = icmp ult i32 %124, 80, !dbg !154
  br i1 %cmp137, label %for.body138, label %for.end175, !dbg !155

for.body138:                                      ; preds = %for.cond136
  br label %do.body139, !dbg !156

do.body139:                                       ; preds = %for.body138
  call void @llvm.lifetime.start.p0(i64 4, ptr %TEMP140) #4, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %TEMP140, metadata !85, metadata !DIExpression()), !dbg !157
  %125 = load ptr, ptr %array.addr, align 8, !dbg !157
  %126 = load i32, ptr %i, align 4, !dbg !157
  %add141 = add i32 %126, 13, !dbg !157
  %and142 = and i32 %add141, 15, !dbg !157
  %idxprom143 = zext i32 %and142 to i64, !dbg !157
  %arrayidx144 = getelementptr i32, ptr %125, i64 %idxprom143, !dbg !157
  %127 = load i32, ptr %arrayidx144, align 4, !dbg !157
  %128 = load ptr, ptr %array.addr, align 8, !dbg !157
  %129 = load i32, ptr %i, align 4, !dbg !157
  %add145 = add i32 %129, 8, !dbg !157
  %and146 = and i32 %add145, 15, !dbg !157
  %idxprom147 = zext i32 %and146 to i64, !dbg !157
  %arrayidx148 = getelementptr i32, ptr %128, i64 %idxprom147, !dbg !157
  %130 = load i32, ptr %arrayidx148, align 4, !dbg !157
  %xor149 = xor i32 %127, %130, !dbg !157
  %131 = load ptr, ptr %array.addr, align 8, !dbg !157
  %132 = load i32, ptr %i, align 4, !dbg !157
  %add150 = add i32 %132, 2, !dbg !157
  %and151 = and i32 %add150, 15, !dbg !157
  %idxprom152 = zext i32 %and151 to i64, !dbg !157
  %arrayidx153 = getelementptr i32, ptr %131, i64 %idxprom152, !dbg !157
  %133 = load i32, ptr %arrayidx153, align 4, !dbg !157
  %xor154 = xor i32 %xor149, %133, !dbg !157
  %134 = load ptr, ptr %array.addr, align 8, !dbg !157
  %135 = load i32, ptr %i, align 4, !dbg !157
  %and155 = and i32 %135, 15, !dbg !157
  %idxprom156 = zext i32 %and155 to i64, !dbg !157
  %arrayidx157 = getelementptr i32, ptr %134, i64 %idxprom156, !dbg !157
  %136 = load i32, ptr %arrayidx157, align 4, !dbg !157
  %xor158 = xor i32 %xor154, %136, !dbg !157
  %call159 = call i32 @rol32(i32 noundef %xor158, i32 noundef 1) #5, !dbg !157
  store i32 %call159, ptr %TEMP140, align 4, !dbg !157
  %137 = load i32, ptr %TEMP140, align 4, !dbg !157
  %138 = load ptr, ptr %array.addr, align 8, !dbg !157
  %139 = load i32, ptr %i, align 4, !dbg !157
  %and160 = and i32 %139, 15, !dbg !157
  %idxprom161 = zext i32 %and160 to i64, !dbg !157
  %arrayidx162 = getelementptr i32, ptr %138, i64 %idxprom161, !dbg !157
  store volatile i32 %137, ptr %arrayidx162, align 4, !dbg !157
  %140 = load i32, ptr %TEMP140, align 4, !dbg !157
  %141 = load i32, ptr %A, align 4, !dbg !157
  %call163 = call i32 @rol32(i32 noundef %141, i32 noundef 5) #5, !dbg !157
  %add164 = add i32 %140, %call163, !dbg !157
  %142 = load i32, ptr %B, align 4, !dbg !157
  %143 = load i32, ptr %C, align 4, !dbg !157
  %xor165 = xor i32 %142, %143, !dbg !157
  %144 = load i32, ptr %D, align 4, !dbg !157
  %xor166 = xor i32 %xor165, %144, !dbg !157
  %add167 = add i32 %add164, %xor166, !dbg !157
  %add168 = add i32 %add167, -899497514, !dbg !157
  %145 = load i32, ptr %E, align 4, !dbg !157
  %add169 = add i32 %145, %add168, !dbg !157
  store i32 %add169, ptr %E, align 4, !dbg !157
  %146 = load i32, ptr %B, align 4, !dbg !157
  %call170 = call i32 @ror32(i32 noundef %146, i32 noundef 2) #5, !dbg !157
  store i32 %call170, ptr %B, align 4, !dbg !157
  %147 = load i32, ptr %E, align 4, !dbg !157
  store i32 %147, ptr %TEMP140, align 4, !dbg !157
  %148 = load i32, ptr %D, align 4, !dbg !157
  store i32 %148, ptr %E, align 4, !dbg !157
  %149 = load i32, ptr %C, align 4, !dbg !157
  store i32 %149, ptr %D, align 4, !dbg !157
  %150 = load i32, ptr %B, align 4, !dbg !157
  store i32 %150, ptr %C, align 4, !dbg !157
  %151 = load i32, ptr %A, align 4, !dbg !157
  store i32 %151, ptr %B, align 4, !dbg !157
  %152 = load i32, ptr %TEMP140, align 4, !dbg !157
  store i32 %152, ptr %A, align 4, !dbg !157
  call void @llvm.lifetime.end.p0(i64 4, ptr %TEMP140) #4, !dbg !156
  br label %do.cond171, !dbg !157

do.cond171:                                       ; preds = %do.body139
  br label %do.end172, !dbg !157

do.end172:                                        ; preds = %do.cond171
  br label %for.inc173, !dbg !157

for.inc173:                                       ; preds = %do.end172
  %153 = load i32, ptr %i, align 4, !dbg !158
  %inc174 = add i32 %153, 1, !dbg !158
  store i32 %inc174, ptr %i, align 4, !dbg !158
  br label %for.cond136, !dbg !159, !llvm.loop !160

for.end175:                                       ; preds = %for.cond136
  %154 = load i32, ptr %A, align 4, !dbg !162
  %155 = load ptr, ptr %digest.addr, align 8, !dbg !163
  %arrayidx176 = getelementptr i32, ptr %155, i64 0, !dbg !163
  %156 = load i32, ptr %arrayidx176, align 4, !dbg !164
  %add177 = add i32 %156, %154, !dbg !164
  store i32 %add177, ptr %arrayidx176, align 4, !dbg !164
  %157 = load i32, ptr %B, align 4, !dbg !165
  %158 = load ptr, ptr %digest.addr, align 8, !dbg !166
  %arrayidx178 = getelementptr i32, ptr %158, i64 1, !dbg !166
  %159 = load i32, ptr %arrayidx178, align 4, !dbg !167
  %add179 = add i32 %159, %157, !dbg !167
  store i32 %add179, ptr %arrayidx178, align 4, !dbg !167
  %160 = load i32, ptr %C, align 4, !dbg !168
  %161 = load ptr, ptr %digest.addr, align 8, !dbg !169
  %arrayidx180 = getelementptr i32, ptr %161, i64 2, !dbg !169
  %162 = load i32, ptr %arrayidx180, align 4, !dbg !170
  %add181 = add i32 %162, %160, !dbg !170
  store i32 %add181, ptr %arrayidx180, align 4, !dbg !170
  %163 = load i32, ptr %D, align 4, !dbg !171
  %164 = load ptr, ptr %digest.addr, align 8, !dbg !172
  %arrayidx182 = getelementptr i32, ptr %164, i64 3, !dbg !172
  %165 = load i32, ptr %arrayidx182, align 4, !dbg !173
  %add183 = add i32 %165, %163, !dbg !173
  store i32 %add183, ptr %arrayidx182, align 4, !dbg !173
  %166 = load i32, ptr %E, align 4, !dbg !174
  %167 = load ptr, ptr %digest.addr, align 8, !dbg !175
  %arrayidx184 = getelementptr i32, ptr %167, i64 4, !dbg !175
  %168 = load i32, ptr %arrayidx184, align 4, !dbg !176
  %add185 = add i32 %168, %166, !dbg !176
  store i32 %add185, ptr %arrayidx184, align 4, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %E) #4, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %D) #4, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %C) #4, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %B) #4, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %A) #4, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_be32(ptr noundef %p) #3 align 16 !dbg !18 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !26, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #4, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !27, metadata !DIExpression()), !dbg !179
  %0 = load ptr, ptr %p.addr, align 8, !dbg !179
  store ptr %0, ptr %__pptr, align 8, !dbg !179
  %1 = load ptr, ptr %__pptr, align 8, !dbg !179
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !179
  %2 = load i32, ptr %x, align 1, !dbg !179
  store i32 %2, ptr %tmp, align 4, !dbg !179
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #4, !dbg !180
  %3 = load i32, ptr %tmp, align 4, !dbg !179
  %4 = call i32 @llvm.bswap.i32(i32 %3), !dbg !180
  ret i32 %4, !dbg !181
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #3 align 16 !dbg !182 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !187, metadata !DIExpression()), !dbg !189
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !188, metadata !DIExpression()), !dbg !190
  %0 = load i32, ptr %word.addr, align 4, !dbg !191
  %1 = load i32, ptr %shift.addr, align 4, !dbg !192
  %and = and i32 %1, 31, !dbg !193
  %shl = shl i32 %0, %and, !dbg !194
  %2 = load i32, ptr %word.addr, align 4, !dbg !195
  %3 = load i32, ptr %shift.addr, align 4, !dbg !196
  %sub = sub i32 0, %3, !dbg !197
  %and1 = and i32 %sub, 31, !dbg !198
  %shr = lshr i32 %2, %and1, !dbg !199
  %or = or i32 %shl, %shr, !dbg !200
  ret i32 %or, !dbg !201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ror32(i32 noundef %word, i32 noundef %shift) #3 align 16 !dbg !202 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !204, metadata !DIExpression()), !dbg !206
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !205, metadata !DIExpression()), !dbg !207
  %0 = load i32, ptr %word.addr, align 4, !dbg !208
  %1 = load i32, ptr %shift.addr, align 4, !dbg !209
  %and = and i32 %1, 31, !dbg !210
  %shr = lshr i32 %0, %and, !dbg !211
  %2 = load i32, ptr %word.addr, align 4, !dbg !212
  %3 = load i32, ptr %shift.addr, align 4, !dbg !213
  %sub = sub i32 0, %3, !dbg !214
  %and1 = and i32 %sub, 31, !dbg !215
  %shl = shl i32 %2, %and1, !dbg !216
  %or = or i32 %shr, %shl, !dbg !217
  ret i32 %or, !dbg !218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sha1_init(ptr noundef %buf) #0 align 16 !dbg !219 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !225
  %arrayidx = getelementptr i32, ptr %0, i64 0, !dbg !225
  store i32 1732584193, ptr %arrayidx, align 4, !dbg !226
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !227
  %arrayidx1 = getelementptr i32, ptr %1, i64 1, !dbg !227
  store i32 -271733879, ptr %arrayidx1, align 4, !dbg !228
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !229
  %arrayidx2 = getelementptr i32, ptr %2, i64 2, !dbg !229
  store i32 -1732584194, ptr %arrayidx2, align 4, !dbg !230
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !231
  %arrayidx3 = getelementptr i32, ptr %3, i64 3, !dbg !231
  store i32 271733878, ptr %arrayidx3, align 4, !dbg !232
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !233
  %arrayidx4 = getelementptr i32, ptr %4, i64 4, !dbg !233
  store i32 -1009589776, ptr %arrayidx4, align 4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sha1_transform195", scope: !2, file: !3, line: 124, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.sha1.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/libsha1\22 -D KBUILD_BASENAME=\22sha1\22 -D KBUILD_MODNAME=\22libsha1\22 -D __KBUILD_MODNAME=kmod_libsha1 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/sha1.ll lib/crypto/sha1.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/sha1.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "468393b9e8f3a9ab6d0ac6e345b9c301")
!4 = !{!5, !9, !11, !6, !12, !14}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !13, line: 39, baseType: !6)
!13 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !18, file: !17, line: 62, size: 32, elements: !29)
!17 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!18 = distinct !DISubprogram(name: "get_unaligned_be32", scope: !17, file: !17, line: 60, type: !19, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !6)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!25 = !{!26, !27}
!26 = !DILocalVariable(name: "p", arg: 1, scope: !18, file: !17, line: 60, type: !23)
!27 = !DILocalVariable(name: "__pptr", scope: !28, file: !17, line: 62, type: !14)
!28 = distinct !DILexicalBlock(scope: !18, file: !17, line: 62, column: 9)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !16, file: !17, line: 62, baseType: !12, size: 32)
!31 = !{!0, !32, !34, !41}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sha1_init196", scope: !2, file: !3, line: 138, type: !11, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file197", scope: !2, file: !3, line: 140, type: !36, isLocal: true, isDefinition: true, align: 8)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !39)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!40}
!40 = !DISubrange(count: 32)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license198", scope: !2, file: !3, line: 140, type: !43, isLocal: true, isDefinition: true, align: 8)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 20)
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 8, !"cf-protection-branch", i32 1}
!50 = !{i32 4, !"function_return_thunk_extern", i32 1}
!51 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!52 = !{i32 1, !"Code Model", i32 2}
!53 = !{i32 1, !"override-stack-alignment", i32 8}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = distinct !DISubprogram(name: "sha1_transform", scope: !3, file: !3, line: 87, type: !56, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !59)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !5, !58, !5}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !73, !77, !81, !85}
!60 = !DILocalVariable(name: "digest", arg: 1, scope: !55, file: !3, line: 87, type: !5)
!61 = !DILocalVariable(name: "data", arg: 2, scope: !55, file: !3, line: 87, type: !58)
!62 = !DILocalVariable(name: "array", arg: 3, scope: !55, file: !3, line: 87, type: !5)
!63 = !DILocalVariable(name: "A", scope: !55, file: !3, line: 89, type: !6)
!64 = !DILocalVariable(name: "B", scope: !55, file: !3, line: 89, type: !6)
!65 = !DILocalVariable(name: "C", scope: !55, file: !3, line: 89, type: !6)
!66 = !DILocalVariable(name: "D", scope: !55, file: !3, line: 89, type: !6)
!67 = !DILocalVariable(name: "E", scope: !55, file: !3, line: 89, type: !6)
!68 = !DILocalVariable(name: "i", scope: !55, file: !3, line: 90, type: !8)
!69 = !DILocalVariable(name: "TEMP", scope: !70, file: !3, line: 100, type: !6)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 100, column: 3)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 99, column: 2)
!72 = distinct !DILexicalBlock(scope: !55, file: !3, line: 99, column: 2)
!73 = !DILocalVariable(name: "TEMP", scope: !74, file: !3, line: 104, type: !6)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 104, column: 3)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 103, column: 2)
!76 = distinct !DILexicalBlock(scope: !55, file: !3, line: 103, column: 2)
!77 = !DILocalVariable(name: "TEMP", scope: !78, file: !3, line: 108, type: !6)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 108, column: 3)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 107, column: 2)
!80 = distinct !DILexicalBlock(scope: !55, file: !3, line: 107, column: 2)
!81 = !DILocalVariable(name: "TEMP", scope: !82, file: !3, line: 112, type: !6)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 112, column: 3)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 111, column: 2)
!84 = distinct !DILexicalBlock(scope: !55, file: !3, line: 111, column: 2)
!85 = !DILocalVariable(name: "TEMP", scope: !86, file: !3, line: 116, type: !6)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 116, column: 3)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 115, column: 2)
!88 = distinct !DILexicalBlock(scope: !55, file: !3, line: 115, column: 2)
!89 = !DILocation(line: 87, column: 28, scope: !55)
!90 = !DILocation(line: 87, column: 48, scope: !55)
!91 = !DILocation(line: 87, column: 61, scope: !55)
!92 = !DILocation(line: 89, column: 2, scope: !55)
!93 = !DILocation(line: 89, column: 8, scope: !55)
!94 = !DILocation(line: 89, column: 11, scope: !55)
!95 = !DILocation(line: 89, column: 14, scope: !55)
!96 = !DILocation(line: 89, column: 17, scope: !55)
!97 = !DILocation(line: 89, column: 20, scope: !55)
!98 = !DILocation(line: 90, column: 2, scope: !55)
!99 = !DILocation(line: 90, column: 15, scope: !55)
!100 = !DILocation(line: 92, column: 6, scope: !55)
!101 = !DILocation(line: 92, column: 4, scope: !55)
!102 = !DILocation(line: 93, column: 6, scope: !55)
!103 = !DILocation(line: 93, column: 4, scope: !55)
!104 = !DILocation(line: 94, column: 6, scope: !55)
!105 = !DILocation(line: 94, column: 4, scope: !55)
!106 = !DILocation(line: 95, column: 6, scope: !55)
!107 = !DILocation(line: 95, column: 4, scope: !55)
!108 = !DILocation(line: 96, column: 6, scope: !55)
!109 = !DILocation(line: 96, column: 4, scope: !55)
!110 = !DILocation(line: 99, column: 2, scope: !55)
!111 = !DILocation(line: 99, column: 9, scope: !71)
!112 = !DILocation(line: 99, column: 11, scope: !71)
!113 = !DILocation(line: 99, column: 2, scope: !72)
!114 = !DILocation(line: 100, column: 3, scope: !71)
!115 = !DILocation(line: 100, column: 3, scope: !70)
!116 = !DILocation(line: 99, column: 17, scope: !71)
!117 = !DILocation(line: 99, column: 2, scope: !71)
!118 = distinct !{!118, !113, !119, !120, !121}
!119 = !DILocation(line: 100, column: 3, scope: !72)
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = !DILocation(line: 103, column: 2, scope: !55)
!123 = !DILocation(line: 103, column: 9, scope: !75)
!124 = !DILocation(line: 103, column: 11, scope: !75)
!125 = !DILocation(line: 103, column: 2, scope: !76)
!126 = !DILocation(line: 104, column: 3, scope: !75)
!127 = !DILocation(line: 104, column: 3, scope: !74)
!128 = !DILocation(line: 103, column: 17, scope: !75)
!129 = !DILocation(line: 103, column: 2, scope: !75)
!130 = distinct !{!130, !125, !131, !120, !121}
!131 = !DILocation(line: 104, column: 3, scope: !76)
!132 = !DILocation(line: 107, column: 2, scope: !55)
!133 = !DILocation(line: 107, column: 9, scope: !79)
!134 = !DILocation(line: 107, column: 11, scope: !79)
!135 = !DILocation(line: 107, column: 2, scope: !80)
!136 = !DILocation(line: 108, column: 3, scope: !79)
!137 = !DILocation(line: 108, column: 3, scope: !78)
!138 = !DILocation(line: 107, column: 17, scope: !79)
!139 = !DILocation(line: 107, column: 2, scope: !79)
!140 = distinct !{!140, !135, !141, !120, !121}
!141 = !DILocation(line: 108, column: 3, scope: !80)
!142 = !DILocation(line: 111, column: 2, scope: !55)
!143 = !DILocation(line: 111, column: 9, scope: !83)
!144 = !DILocation(line: 111, column: 11, scope: !83)
!145 = !DILocation(line: 111, column: 2, scope: !84)
!146 = !DILocation(line: 112, column: 3, scope: !83)
!147 = !DILocation(line: 112, column: 3, scope: !82)
!148 = !DILocation(line: 111, column: 17, scope: !83)
!149 = !DILocation(line: 111, column: 2, scope: !83)
!150 = distinct !{!150, !145, !151, !120, !121}
!151 = !DILocation(line: 112, column: 3, scope: !84)
!152 = !DILocation(line: 115, column: 2, scope: !55)
!153 = !DILocation(line: 115, column: 9, scope: !87)
!154 = !DILocation(line: 115, column: 11, scope: !87)
!155 = !DILocation(line: 115, column: 2, scope: !88)
!156 = !DILocation(line: 116, column: 3, scope: !87)
!157 = !DILocation(line: 116, column: 3, scope: !86)
!158 = !DILocation(line: 115, column: 17, scope: !87)
!159 = !DILocation(line: 115, column: 2, scope: !87)
!160 = distinct !{!160, !155, !161, !120, !121}
!161 = !DILocation(line: 116, column: 3, scope: !88)
!162 = !DILocation(line: 118, column: 15, scope: !55)
!163 = !DILocation(line: 118, column: 2, scope: !55)
!164 = !DILocation(line: 118, column: 12, scope: !55)
!165 = !DILocation(line: 119, column: 15, scope: !55)
!166 = !DILocation(line: 119, column: 2, scope: !55)
!167 = !DILocation(line: 119, column: 12, scope: !55)
!168 = !DILocation(line: 120, column: 15, scope: !55)
!169 = !DILocation(line: 120, column: 2, scope: !55)
!170 = !DILocation(line: 120, column: 12, scope: !55)
!171 = !DILocation(line: 121, column: 15, scope: !55)
!172 = !DILocation(line: 121, column: 2, scope: !55)
!173 = !DILocation(line: 121, column: 12, scope: !55)
!174 = !DILocation(line: 122, column: 15, scope: !55)
!175 = !DILocation(line: 122, column: 2, scope: !55)
!176 = !DILocation(line: 122, column: 12, scope: !55)
!177 = !DILocation(line: 123, column: 1, scope: !55)
!178 = !DILocation(line: 60, column: 50, scope: !18)
!179 = !DILocation(line: 62, column: 9, scope: !28)
!180 = !DILocation(line: 62, column: 9, scope: !18)
!181 = !DILocation(line: 62, column: 2, scope: !18)
!182 = distinct !DISubprogram(name: "rol32", scope: !183, file: !183, line: 125, type: !184, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!183 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!184 = !DISubroutineType(types: !185)
!185 = !{!6, !6, !8}
!186 = !{!187, !188}
!187 = !DILocalVariable(name: "word", arg: 1, scope: !182, file: !183, line: 125, type: !6)
!188 = !DILocalVariable(name: "shift", arg: 2, scope: !182, file: !183, line: 125, type: !8)
!189 = !DILocation(line: 125, column: 33, scope: !182)
!190 = !DILocation(line: 125, column: 52, scope: !182)
!191 = !DILocation(line: 127, column: 10, scope: !182)
!192 = !DILocation(line: 127, column: 19, scope: !182)
!193 = !DILocation(line: 127, column: 25, scope: !182)
!194 = !DILocation(line: 127, column: 15, scope: !182)
!195 = !DILocation(line: 127, column: 35, scope: !182)
!196 = !DILocation(line: 127, column: 46, scope: !182)
!197 = !DILocation(line: 127, column: 45, scope: !182)
!198 = !DILocation(line: 127, column: 53, scope: !182)
!199 = !DILocation(line: 127, column: 40, scope: !182)
!200 = !DILocation(line: 127, column: 32, scope: !182)
!201 = !DILocation(line: 127, column: 2, scope: !182)
!202 = distinct !DISubprogram(name: "ror32", scope: !183, file: !183, line: 135, type: !184, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "word", arg: 1, scope: !202, file: !183, line: 135, type: !6)
!205 = !DILocalVariable(name: "shift", arg: 2, scope: !202, file: !183, line: 135, type: !8)
!206 = !DILocation(line: 135, column: 33, scope: !202)
!207 = !DILocation(line: 135, column: 52, scope: !202)
!208 = !DILocation(line: 137, column: 10, scope: !202)
!209 = !DILocation(line: 137, column: 19, scope: !202)
!210 = !DILocation(line: 137, column: 25, scope: !202)
!211 = !DILocation(line: 137, column: 15, scope: !202)
!212 = !DILocation(line: 137, column: 35, scope: !202)
!213 = !DILocation(line: 137, column: 46, scope: !202)
!214 = !DILocation(line: 137, column: 45, scope: !202)
!215 = !DILocation(line: 137, column: 53, scope: !202)
!216 = !DILocation(line: 137, column: 40, scope: !202)
!217 = !DILocation(line: 137, column: 32, scope: !202)
!218 = !DILocation(line: 137, column: 2, scope: !202)
!219 = distinct !DISubprogram(name: "sha1_init", scope: !3, file: !3, line: 130, type: !220, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !5}
!222 = !{!223}
!223 = !DILocalVariable(name: "buf", arg: 1, scope: !219, file: !3, line: 130, type: !5)
!224 = !DILocation(line: 130, column: 23, scope: !219)
!225 = !DILocation(line: 132, column: 2, scope: !219)
!226 = !DILocation(line: 132, column: 9, scope: !219)
!227 = !DILocation(line: 133, column: 2, scope: !219)
!228 = !DILocation(line: 133, column: 9, scope: !219)
!229 = !DILocation(line: 134, column: 2, scope: !219)
!230 = !DILocation(line: 134, column: 9, scope: !219)
!231 = !DILocation(line: 135, column: 2, scope: !219)
!232 = !DILocation(line: 135, column: 9, scope: !219)
!233 = !DILocation(line: 136, column: 2, scope: !219)
!234 = !DILocation(line: 136, column: 9, scope: !219)
!235 = !DILocation(line: 137, column: 1, scope: !219)
