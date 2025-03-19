; ModuleID = 'lib/crypto/chacha.c'
source_filename = "lib/crypto/chacha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_chacha_block_generic: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad chacha_block_generic ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hchacha_block_generic: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hchacha_block_generic ; .previous"

%struct.anon = type { i32 }

@__UNIQUE_ID___addressable_chacha_block_generic3 = internal global ptr @chacha_block_generic, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_hchacha_block_generic4 = internal global ptr @hchacha_block_generic, section ".discard.addressable", align 8, !dbg !28
@.str = private unnamed_addr constant [20 x i8] c"lib/crypto/chacha.c\00", align 1, !dbg !30
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_chacha_block_generic3, ptr @__UNIQUE_ID___addressable_hchacha_block_generic4], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @chacha_block_generic(ptr noundef %state, ptr noundef %stream, i32 noundef %nrounds) #0 align 16 !dbg !45 {
entry:
  %state.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %nrounds.addr = alloca i32, align 4
  %x = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !54, metadata !DIExpression()), !dbg !62
  store ptr %stream, ptr %stream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stream.addr, metadata !55, metadata !DIExpression()), !dbg !63
  store i32 %nrounds, ptr %nrounds.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nrounds.addr, metadata !56, metadata !DIExpression()), !dbg !64
  call void @llvm.lifetime.start.p0(i64 64, ptr %x) #6, !dbg !65
  call void @llvm.dbg.declare(metadata ptr %x, metadata !57, metadata !DIExpression()), !dbg !66
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %i, metadata !61, metadata !DIExpression()), !dbg !68
  %arraydecay = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0, !dbg !69
  %0 = load ptr, ptr %state.addr, align 8, !dbg !70
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 4 %0, i64 64, i1 false), !dbg !69
  %arraydecay1 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0, !dbg !71
  %1 = load i32, ptr %nrounds.addr, align 4, !dbg !72
  call void @chacha_permute(ptr noundef %arraydecay1, i32 noundef %1) #7, !dbg !73
  store i32 0, ptr %i, align 4, !dbg !74
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !77
  %conv = sext i32 %2 to i64, !dbg !77
  %cmp = icmp ult i64 %conv, 16, !dbg !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !81
  %idxprom = sext i32 %3 to i64, !dbg !82
  %arrayidx = getelementptr [16 x i32], ptr %x, i64 0, i64 %idxprom, !dbg !82
  %4 = load i32, ptr %arrayidx, align 4, !dbg !82
  %5 = load ptr, ptr %state.addr, align 8, !dbg !83
  %6 = load i32, ptr %i, align 4, !dbg !84
  %idxprom3 = sext i32 %6 to i64, !dbg !83
  %arrayidx4 = getelementptr i32, ptr %5, i64 %idxprom3, !dbg !83
  %7 = load i32, ptr %arrayidx4, align 4, !dbg !83
  %add = add i32 %4, %7, !dbg !85
  %8 = load ptr, ptr %stream.addr, align 8, !dbg !86
  %9 = load i32, ptr %i, align 4, !dbg !87
  %conv5 = sext i32 %9 to i64, !dbg !87
  %mul = mul i64 %conv5, 4, !dbg !88
  %arrayidx6 = getelementptr i8, ptr %8, i64 %mul, !dbg !86
  call void @put_unaligned_le32(i32 noundef %add, ptr noundef %arrayidx6) #7, !dbg !89
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !90
  %inc = add i32 %10, 1, !dbg !90
  store i32 %inc, ptr %i, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %state.addr, align 8, !dbg !96
  %arrayidx7 = getelementptr i32, ptr %11, i64 12, !dbg !96
  %12 = load i32, ptr %arrayidx7, align 4, !dbg !97
  %inc8 = add i32 %12, 1, !dbg !97
  store i32 %inc8, ptr %arrayidx7, align 4, !dbg !97
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !98
  call void @llvm.lifetime.end.p0(i64 64, ptr %x) #6, !dbg !98
  ret void, !dbg !98
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @chacha_permute(ptr noundef %x, i32 noundef %nrounds) #0 align 16 !dbg !99 {
entry:
  %x.addr = alloca ptr, align 8
  %nrounds.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !103, metadata !DIExpression()), !dbg !111
  store i32 %nrounds, ptr %nrounds.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nrounds.addr, metadata !104, metadata !DIExpression()), !dbg !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %i, metadata !105, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !106, metadata !DIExpression()), !dbg !115
  %0 = load i32, ptr %nrounds.addr, align 4, !dbg !115
  %cmp = icmp ne i32 %0, 20, !dbg !115
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !115

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %nrounds.addr, align 4, !dbg !115
  %cmp1 = icmp ne i32 %1, 12, !dbg !115
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !116
  %lnot = xor i1 %2, true, !dbg !115
  %lnot2 = xor i1 %lnot, true, !dbg !115
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !115
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !115
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !117
  %tobool = icmp ne i32 %3, 0, !dbg !117
  %lnot3 = xor i1 %tobool, true, !dbg !117
  %lnot5 = xor i1 %lnot3, true, !dbg !117
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !117
  %conv = sext i32 %lnot.ext6 to i64, !dbg !117
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !117
  %tobool7 = icmp ne i64 %expval, 0, !dbg !117
  br i1 %tobool7, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !117

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !108, metadata !DIExpression()), !dbg !118
  store i32 2307, ptr %__flags, align 4, !dbg !118
  br label %do.body8, !dbg !118

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !119

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !119

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !118

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !121
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 21, i32 %4, i64 12) #6, !dbg !121, !srcloc !123
  br label %do.cond10, !dbg !121

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !121

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !118

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !124

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !124

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !117
  br label %do.cond15, !dbg !118

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !118

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !118

if.end:                                           ; preds = %do.end16, %land.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !115
  %tobool17 = icmp ne i32 %5, 0, !dbg !115
  %lnot18 = xor i1 %tobool17, true, !dbg !115
  %lnot20 = xor i1 %lnot18, true, !dbg !115
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !115
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !115
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !115
  store i64 %expval23, ptr %tmp, align 8, !dbg !117
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !126
  %6 = load i64, ptr %tmp, align 8, !dbg !115
  store i32 0, ptr %i, align 4, !dbg !127
  br label %for.cond, !dbg !129

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !130
  %8 = load i32, ptr %nrounds.addr, align 4, !dbg !132
  %cmp24 = icmp slt i32 %7, %8, !dbg !133
  br i1 %cmp24, label %for.body, label %for.end, !dbg !134

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %x.addr, align 8, !dbg !135
  %arrayidx = getelementptr i32, ptr %9, i64 4, !dbg !135
  %10 = load i32, ptr %arrayidx, align 4, !dbg !135
  %11 = load ptr, ptr %x.addr, align 8, !dbg !137
  %arrayidx26 = getelementptr i32, ptr %11, i64 0, !dbg !137
  %12 = load i32, ptr %arrayidx26, align 4, !dbg !138
  %add = add i32 %12, %10, !dbg !138
  store i32 %add, ptr %arrayidx26, align 4, !dbg !138
  %13 = load ptr, ptr %x.addr, align 8, !dbg !139
  %arrayidx27 = getelementptr i32, ptr %13, i64 12, !dbg !139
  %14 = load i32, ptr %arrayidx27, align 4, !dbg !139
  %15 = load ptr, ptr %x.addr, align 8, !dbg !140
  %arrayidx28 = getelementptr i32, ptr %15, i64 0, !dbg !140
  %16 = load i32, ptr %arrayidx28, align 4, !dbg !140
  %xor = xor i32 %14, %16, !dbg !141
  %call = call i32 @rol32(i32 noundef %xor, i32 noundef 16) #7, !dbg !142
  %17 = load ptr, ptr %x.addr, align 8, !dbg !143
  %arrayidx29 = getelementptr i32, ptr %17, i64 12, !dbg !143
  store i32 %call, ptr %arrayidx29, align 4, !dbg !144
  %18 = load ptr, ptr %x.addr, align 8, !dbg !145
  %arrayidx30 = getelementptr i32, ptr %18, i64 5, !dbg !145
  %19 = load i32, ptr %arrayidx30, align 4, !dbg !145
  %20 = load ptr, ptr %x.addr, align 8, !dbg !146
  %arrayidx31 = getelementptr i32, ptr %20, i64 1, !dbg !146
  %21 = load i32, ptr %arrayidx31, align 4, !dbg !147
  %add32 = add i32 %21, %19, !dbg !147
  store i32 %add32, ptr %arrayidx31, align 4, !dbg !147
  %22 = load ptr, ptr %x.addr, align 8, !dbg !148
  %arrayidx33 = getelementptr i32, ptr %22, i64 13, !dbg !148
  %23 = load i32, ptr %arrayidx33, align 4, !dbg !148
  %24 = load ptr, ptr %x.addr, align 8, !dbg !149
  %arrayidx34 = getelementptr i32, ptr %24, i64 1, !dbg !149
  %25 = load i32, ptr %arrayidx34, align 4, !dbg !149
  %xor35 = xor i32 %23, %25, !dbg !150
  %call36 = call i32 @rol32(i32 noundef %xor35, i32 noundef 16) #7, !dbg !151
  %26 = load ptr, ptr %x.addr, align 8, !dbg !152
  %arrayidx37 = getelementptr i32, ptr %26, i64 13, !dbg !152
  store i32 %call36, ptr %arrayidx37, align 4, !dbg !153
  %27 = load ptr, ptr %x.addr, align 8, !dbg !154
  %arrayidx38 = getelementptr i32, ptr %27, i64 6, !dbg !154
  %28 = load i32, ptr %arrayidx38, align 4, !dbg !154
  %29 = load ptr, ptr %x.addr, align 8, !dbg !155
  %arrayidx39 = getelementptr i32, ptr %29, i64 2, !dbg !155
  %30 = load i32, ptr %arrayidx39, align 4, !dbg !156
  %add40 = add i32 %30, %28, !dbg !156
  store i32 %add40, ptr %arrayidx39, align 4, !dbg !156
  %31 = load ptr, ptr %x.addr, align 8, !dbg !157
  %arrayidx41 = getelementptr i32, ptr %31, i64 14, !dbg !157
  %32 = load i32, ptr %arrayidx41, align 4, !dbg !157
  %33 = load ptr, ptr %x.addr, align 8, !dbg !158
  %arrayidx42 = getelementptr i32, ptr %33, i64 2, !dbg !158
  %34 = load i32, ptr %arrayidx42, align 4, !dbg !158
  %xor43 = xor i32 %32, %34, !dbg !159
  %call44 = call i32 @rol32(i32 noundef %xor43, i32 noundef 16) #7, !dbg !160
  %35 = load ptr, ptr %x.addr, align 8, !dbg !161
  %arrayidx45 = getelementptr i32, ptr %35, i64 14, !dbg !161
  store i32 %call44, ptr %arrayidx45, align 4, !dbg !162
  %36 = load ptr, ptr %x.addr, align 8, !dbg !163
  %arrayidx46 = getelementptr i32, ptr %36, i64 7, !dbg !163
  %37 = load i32, ptr %arrayidx46, align 4, !dbg !163
  %38 = load ptr, ptr %x.addr, align 8, !dbg !164
  %arrayidx47 = getelementptr i32, ptr %38, i64 3, !dbg !164
  %39 = load i32, ptr %arrayidx47, align 4, !dbg !165
  %add48 = add i32 %39, %37, !dbg !165
  store i32 %add48, ptr %arrayidx47, align 4, !dbg !165
  %40 = load ptr, ptr %x.addr, align 8, !dbg !166
  %arrayidx49 = getelementptr i32, ptr %40, i64 15, !dbg !166
  %41 = load i32, ptr %arrayidx49, align 4, !dbg !166
  %42 = load ptr, ptr %x.addr, align 8, !dbg !167
  %arrayidx50 = getelementptr i32, ptr %42, i64 3, !dbg !167
  %43 = load i32, ptr %arrayidx50, align 4, !dbg !167
  %xor51 = xor i32 %41, %43, !dbg !168
  %call52 = call i32 @rol32(i32 noundef %xor51, i32 noundef 16) #7, !dbg !169
  %44 = load ptr, ptr %x.addr, align 8, !dbg !170
  %arrayidx53 = getelementptr i32, ptr %44, i64 15, !dbg !170
  store i32 %call52, ptr %arrayidx53, align 4, !dbg !171
  %45 = load ptr, ptr %x.addr, align 8, !dbg !172
  %arrayidx54 = getelementptr i32, ptr %45, i64 12, !dbg !172
  %46 = load i32, ptr %arrayidx54, align 4, !dbg !172
  %47 = load ptr, ptr %x.addr, align 8, !dbg !173
  %arrayidx55 = getelementptr i32, ptr %47, i64 8, !dbg !173
  %48 = load i32, ptr %arrayidx55, align 4, !dbg !174
  %add56 = add i32 %48, %46, !dbg !174
  store i32 %add56, ptr %arrayidx55, align 4, !dbg !174
  %49 = load ptr, ptr %x.addr, align 8, !dbg !175
  %arrayidx57 = getelementptr i32, ptr %49, i64 4, !dbg !175
  %50 = load i32, ptr %arrayidx57, align 4, !dbg !175
  %51 = load ptr, ptr %x.addr, align 8, !dbg !176
  %arrayidx58 = getelementptr i32, ptr %51, i64 8, !dbg !176
  %52 = load i32, ptr %arrayidx58, align 4, !dbg !176
  %xor59 = xor i32 %50, %52, !dbg !177
  %call60 = call i32 @rol32(i32 noundef %xor59, i32 noundef 12) #7, !dbg !178
  %53 = load ptr, ptr %x.addr, align 8, !dbg !179
  %arrayidx61 = getelementptr i32, ptr %53, i64 4, !dbg !179
  store i32 %call60, ptr %arrayidx61, align 4, !dbg !180
  %54 = load ptr, ptr %x.addr, align 8, !dbg !181
  %arrayidx62 = getelementptr i32, ptr %54, i64 13, !dbg !181
  %55 = load i32, ptr %arrayidx62, align 4, !dbg !181
  %56 = load ptr, ptr %x.addr, align 8, !dbg !182
  %arrayidx63 = getelementptr i32, ptr %56, i64 9, !dbg !182
  %57 = load i32, ptr %arrayidx63, align 4, !dbg !183
  %add64 = add i32 %57, %55, !dbg !183
  store i32 %add64, ptr %arrayidx63, align 4, !dbg !183
  %58 = load ptr, ptr %x.addr, align 8, !dbg !184
  %arrayidx65 = getelementptr i32, ptr %58, i64 5, !dbg !184
  %59 = load i32, ptr %arrayidx65, align 4, !dbg !184
  %60 = load ptr, ptr %x.addr, align 8, !dbg !185
  %arrayidx66 = getelementptr i32, ptr %60, i64 9, !dbg !185
  %61 = load i32, ptr %arrayidx66, align 4, !dbg !185
  %xor67 = xor i32 %59, %61, !dbg !186
  %call68 = call i32 @rol32(i32 noundef %xor67, i32 noundef 12) #7, !dbg !187
  %62 = load ptr, ptr %x.addr, align 8, !dbg !188
  %arrayidx69 = getelementptr i32, ptr %62, i64 5, !dbg !188
  store i32 %call68, ptr %arrayidx69, align 4, !dbg !189
  %63 = load ptr, ptr %x.addr, align 8, !dbg !190
  %arrayidx70 = getelementptr i32, ptr %63, i64 14, !dbg !190
  %64 = load i32, ptr %arrayidx70, align 4, !dbg !190
  %65 = load ptr, ptr %x.addr, align 8, !dbg !191
  %arrayidx71 = getelementptr i32, ptr %65, i64 10, !dbg !191
  %66 = load i32, ptr %arrayidx71, align 4, !dbg !192
  %add72 = add i32 %66, %64, !dbg !192
  store i32 %add72, ptr %arrayidx71, align 4, !dbg !192
  %67 = load ptr, ptr %x.addr, align 8, !dbg !193
  %arrayidx73 = getelementptr i32, ptr %67, i64 6, !dbg !193
  %68 = load i32, ptr %arrayidx73, align 4, !dbg !193
  %69 = load ptr, ptr %x.addr, align 8, !dbg !194
  %arrayidx74 = getelementptr i32, ptr %69, i64 10, !dbg !194
  %70 = load i32, ptr %arrayidx74, align 4, !dbg !194
  %xor75 = xor i32 %68, %70, !dbg !195
  %call76 = call i32 @rol32(i32 noundef %xor75, i32 noundef 12) #7, !dbg !196
  %71 = load ptr, ptr %x.addr, align 8, !dbg !197
  %arrayidx77 = getelementptr i32, ptr %71, i64 6, !dbg !197
  store i32 %call76, ptr %arrayidx77, align 4, !dbg !198
  %72 = load ptr, ptr %x.addr, align 8, !dbg !199
  %arrayidx78 = getelementptr i32, ptr %72, i64 15, !dbg !199
  %73 = load i32, ptr %arrayidx78, align 4, !dbg !199
  %74 = load ptr, ptr %x.addr, align 8, !dbg !200
  %arrayidx79 = getelementptr i32, ptr %74, i64 11, !dbg !200
  %75 = load i32, ptr %arrayidx79, align 4, !dbg !201
  %add80 = add i32 %75, %73, !dbg !201
  store i32 %add80, ptr %arrayidx79, align 4, !dbg !201
  %76 = load ptr, ptr %x.addr, align 8, !dbg !202
  %arrayidx81 = getelementptr i32, ptr %76, i64 7, !dbg !202
  %77 = load i32, ptr %arrayidx81, align 4, !dbg !202
  %78 = load ptr, ptr %x.addr, align 8, !dbg !203
  %arrayidx82 = getelementptr i32, ptr %78, i64 11, !dbg !203
  %79 = load i32, ptr %arrayidx82, align 4, !dbg !203
  %xor83 = xor i32 %77, %79, !dbg !204
  %call84 = call i32 @rol32(i32 noundef %xor83, i32 noundef 12) #7, !dbg !205
  %80 = load ptr, ptr %x.addr, align 8, !dbg !206
  %arrayidx85 = getelementptr i32, ptr %80, i64 7, !dbg !206
  store i32 %call84, ptr %arrayidx85, align 4, !dbg !207
  %81 = load ptr, ptr %x.addr, align 8, !dbg !208
  %arrayidx86 = getelementptr i32, ptr %81, i64 4, !dbg !208
  %82 = load i32, ptr %arrayidx86, align 4, !dbg !208
  %83 = load ptr, ptr %x.addr, align 8, !dbg !209
  %arrayidx87 = getelementptr i32, ptr %83, i64 0, !dbg !209
  %84 = load i32, ptr %arrayidx87, align 4, !dbg !210
  %add88 = add i32 %84, %82, !dbg !210
  store i32 %add88, ptr %arrayidx87, align 4, !dbg !210
  %85 = load ptr, ptr %x.addr, align 8, !dbg !211
  %arrayidx89 = getelementptr i32, ptr %85, i64 12, !dbg !211
  %86 = load i32, ptr %arrayidx89, align 4, !dbg !211
  %87 = load ptr, ptr %x.addr, align 8, !dbg !212
  %arrayidx90 = getelementptr i32, ptr %87, i64 0, !dbg !212
  %88 = load i32, ptr %arrayidx90, align 4, !dbg !212
  %xor91 = xor i32 %86, %88, !dbg !213
  %call92 = call i32 @rol32(i32 noundef %xor91, i32 noundef 8) #7, !dbg !214
  %89 = load ptr, ptr %x.addr, align 8, !dbg !215
  %arrayidx93 = getelementptr i32, ptr %89, i64 12, !dbg !215
  store i32 %call92, ptr %arrayidx93, align 4, !dbg !216
  %90 = load ptr, ptr %x.addr, align 8, !dbg !217
  %arrayidx94 = getelementptr i32, ptr %90, i64 5, !dbg !217
  %91 = load i32, ptr %arrayidx94, align 4, !dbg !217
  %92 = load ptr, ptr %x.addr, align 8, !dbg !218
  %arrayidx95 = getelementptr i32, ptr %92, i64 1, !dbg !218
  %93 = load i32, ptr %arrayidx95, align 4, !dbg !219
  %add96 = add i32 %93, %91, !dbg !219
  store i32 %add96, ptr %arrayidx95, align 4, !dbg !219
  %94 = load ptr, ptr %x.addr, align 8, !dbg !220
  %arrayidx97 = getelementptr i32, ptr %94, i64 13, !dbg !220
  %95 = load i32, ptr %arrayidx97, align 4, !dbg !220
  %96 = load ptr, ptr %x.addr, align 8, !dbg !221
  %arrayidx98 = getelementptr i32, ptr %96, i64 1, !dbg !221
  %97 = load i32, ptr %arrayidx98, align 4, !dbg !221
  %xor99 = xor i32 %95, %97, !dbg !222
  %call100 = call i32 @rol32(i32 noundef %xor99, i32 noundef 8) #7, !dbg !223
  %98 = load ptr, ptr %x.addr, align 8, !dbg !224
  %arrayidx101 = getelementptr i32, ptr %98, i64 13, !dbg !224
  store i32 %call100, ptr %arrayidx101, align 4, !dbg !225
  %99 = load ptr, ptr %x.addr, align 8, !dbg !226
  %arrayidx102 = getelementptr i32, ptr %99, i64 6, !dbg !226
  %100 = load i32, ptr %arrayidx102, align 4, !dbg !226
  %101 = load ptr, ptr %x.addr, align 8, !dbg !227
  %arrayidx103 = getelementptr i32, ptr %101, i64 2, !dbg !227
  %102 = load i32, ptr %arrayidx103, align 4, !dbg !228
  %add104 = add i32 %102, %100, !dbg !228
  store i32 %add104, ptr %arrayidx103, align 4, !dbg !228
  %103 = load ptr, ptr %x.addr, align 8, !dbg !229
  %arrayidx105 = getelementptr i32, ptr %103, i64 14, !dbg !229
  %104 = load i32, ptr %arrayidx105, align 4, !dbg !229
  %105 = load ptr, ptr %x.addr, align 8, !dbg !230
  %arrayidx106 = getelementptr i32, ptr %105, i64 2, !dbg !230
  %106 = load i32, ptr %arrayidx106, align 4, !dbg !230
  %xor107 = xor i32 %104, %106, !dbg !231
  %call108 = call i32 @rol32(i32 noundef %xor107, i32 noundef 8) #7, !dbg !232
  %107 = load ptr, ptr %x.addr, align 8, !dbg !233
  %arrayidx109 = getelementptr i32, ptr %107, i64 14, !dbg !233
  store i32 %call108, ptr %arrayidx109, align 4, !dbg !234
  %108 = load ptr, ptr %x.addr, align 8, !dbg !235
  %arrayidx110 = getelementptr i32, ptr %108, i64 7, !dbg !235
  %109 = load i32, ptr %arrayidx110, align 4, !dbg !235
  %110 = load ptr, ptr %x.addr, align 8, !dbg !236
  %arrayidx111 = getelementptr i32, ptr %110, i64 3, !dbg !236
  %111 = load i32, ptr %arrayidx111, align 4, !dbg !237
  %add112 = add i32 %111, %109, !dbg !237
  store i32 %add112, ptr %arrayidx111, align 4, !dbg !237
  %112 = load ptr, ptr %x.addr, align 8, !dbg !238
  %arrayidx113 = getelementptr i32, ptr %112, i64 15, !dbg !238
  %113 = load i32, ptr %arrayidx113, align 4, !dbg !238
  %114 = load ptr, ptr %x.addr, align 8, !dbg !239
  %arrayidx114 = getelementptr i32, ptr %114, i64 3, !dbg !239
  %115 = load i32, ptr %arrayidx114, align 4, !dbg !239
  %xor115 = xor i32 %113, %115, !dbg !240
  %call116 = call i32 @rol32(i32 noundef %xor115, i32 noundef 8) #7, !dbg !241
  %116 = load ptr, ptr %x.addr, align 8, !dbg !242
  %arrayidx117 = getelementptr i32, ptr %116, i64 15, !dbg !242
  store i32 %call116, ptr %arrayidx117, align 4, !dbg !243
  %117 = load ptr, ptr %x.addr, align 8, !dbg !244
  %arrayidx118 = getelementptr i32, ptr %117, i64 12, !dbg !244
  %118 = load i32, ptr %arrayidx118, align 4, !dbg !244
  %119 = load ptr, ptr %x.addr, align 8, !dbg !245
  %arrayidx119 = getelementptr i32, ptr %119, i64 8, !dbg !245
  %120 = load i32, ptr %arrayidx119, align 4, !dbg !246
  %add120 = add i32 %120, %118, !dbg !246
  store i32 %add120, ptr %arrayidx119, align 4, !dbg !246
  %121 = load ptr, ptr %x.addr, align 8, !dbg !247
  %arrayidx121 = getelementptr i32, ptr %121, i64 4, !dbg !247
  %122 = load i32, ptr %arrayidx121, align 4, !dbg !247
  %123 = load ptr, ptr %x.addr, align 8, !dbg !248
  %arrayidx122 = getelementptr i32, ptr %123, i64 8, !dbg !248
  %124 = load i32, ptr %arrayidx122, align 4, !dbg !248
  %xor123 = xor i32 %122, %124, !dbg !249
  %call124 = call i32 @rol32(i32 noundef %xor123, i32 noundef 7) #7, !dbg !250
  %125 = load ptr, ptr %x.addr, align 8, !dbg !251
  %arrayidx125 = getelementptr i32, ptr %125, i64 4, !dbg !251
  store i32 %call124, ptr %arrayidx125, align 4, !dbg !252
  %126 = load ptr, ptr %x.addr, align 8, !dbg !253
  %arrayidx126 = getelementptr i32, ptr %126, i64 13, !dbg !253
  %127 = load i32, ptr %arrayidx126, align 4, !dbg !253
  %128 = load ptr, ptr %x.addr, align 8, !dbg !254
  %arrayidx127 = getelementptr i32, ptr %128, i64 9, !dbg !254
  %129 = load i32, ptr %arrayidx127, align 4, !dbg !255
  %add128 = add i32 %129, %127, !dbg !255
  store i32 %add128, ptr %arrayidx127, align 4, !dbg !255
  %130 = load ptr, ptr %x.addr, align 8, !dbg !256
  %arrayidx129 = getelementptr i32, ptr %130, i64 5, !dbg !256
  %131 = load i32, ptr %arrayidx129, align 4, !dbg !256
  %132 = load ptr, ptr %x.addr, align 8, !dbg !257
  %arrayidx130 = getelementptr i32, ptr %132, i64 9, !dbg !257
  %133 = load i32, ptr %arrayidx130, align 4, !dbg !257
  %xor131 = xor i32 %131, %133, !dbg !258
  %call132 = call i32 @rol32(i32 noundef %xor131, i32 noundef 7) #7, !dbg !259
  %134 = load ptr, ptr %x.addr, align 8, !dbg !260
  %arrayidx133 = getelementptr i32, ptr %134, i64 5, !dbg !260
  store i32 %call132, ptr %arrayidx133, align 4, !dbg !261
  %135 = load ptr, ptr %x.addr, align 8, !dbg !262
  %arrayidx134 = getelementptr i32, ptr %135, i64 14, !dbg !262
  %136 = load i32, ptr %arrayidx134, align 4, !dbg !262
  %137 = load ptr, ptr %x.addr, align 8, !dbg !263
  %arrayidx135 = getelementptr i32, ptr %137, i64 10, !dbg !263
  %138 = load i32, ptr %arrayidx135, align 4, !dbg !264
  %add136 = add i32 %138, %136, !dbg !264
  store i32 %add136, ptr %arrayidx135, align 4, !dbg !264
  %139 = load ptr, ptr %x.addr, align 8, !dbg !265
  %arrayidx137 = getelementptr i32, ptr %139, i64 6, !dbg !265
  %140 = load i32, ptr %arrayidx137, align 4, !dbg !265
  %141 = load ptr, ptr %x.addr, align 8, !dbg !266
  %arrayidx138 = getelementptr i32, ptr %141, i64 10, !dbg !266
  %142 = load i32, ptr %arrayidx138, align 4, !dbg !266
  %xor139 = xor i32 %140, %142, !dbg !267
  %call140 = call i32 @rol32(i32 noundef %xor139, i32 noundef 7) #7, !dbg !268
  %143 = load ptr, ptr %x.addr, align 8, !dbg !269
  %arrayidx141 = getelementptr i32, ptr %143, i64 6, !dbg !269
  store i32 %call140, ptr %arrayidx141, align 4, !dbg !270
  %144 = load ptr, ptr %x.addr, align 8, !dbg !271
  %arrayidx142 = getelementptr i32, ptr %144, i64 15, !dbg !271
  %145 = load i32, ptr %arrayidx142, align 4, !dbg !271
  %146 = load ptr, ptr %x.addr, align 8, !dbg !272
  %arrayidx143 = getelementptr i32, ptr %146, i64 11, !dbg !272
  %147 = load i32, ptr %arrayidx143, align 4, !dbg !273
  %add144 = add i32 %147, %145, !dbg !273
  store i32 %add144, ptr %arrayidx143, align 4, !dbg !273
  %148 = load ptr, ptr %x.addr, align 8, !dbg !274
  %arrayidx145 = getelementptr i32, ptr %148, i64 7, !dbg !274
  %149 = load i32, ptr %arrayidx145, align 4, !dbg !274
  %150 = load ptr, ptr %x.addr, align 8, !dbg !275
  %arrayidx146 = getelementptr i32, ptr %150, i64 11, !dbg !275
  %151 = load i32, ptr %arrayidx146, align 4, !dbg !275
  %xor147 = xor i32 %149, %151, !dbg !276
  %call148 = call i32 @rol32(i32 noundef %xor147, i32 noundef 7) #7, !dbg !277
  %152 = load ptr, ptr %x.addr, align 8, !dbg !278
  %arrayidx149 = getelementptr i32, ptr %152, i64 7, !dbg !278
  store i32 %call148, ptr %arrayidx149, align 4, !dbg !279
  %153 = load ptr, ptr %x.addr, align 8, !dbg !280
  %arrayidx150 = getelementptr i32, ptr %153, i64 5, !dbg !280
  %154 = load i32, ptr %arrayidx150, align 4, !dbg !280
  %155 = load ptr, ptr %x.addr, align 8, !dbg !281
  %arrayidx151 = getelementptr i32, ptr %155, i64 0, !dbg !281
  %156 = load i32, ptr %arrayidx151, align 4, !dbg !282
  %add152 = add i32 %156, %154, !dbg !282
  store i32 %add152, ptr %arrayidx151, align 4, !dbg !282
  %157 = load ptr, ptr %x.addr, align 8, !dbg !283
  %arrayidx153 = getelementptr i32, ptr %157, i64 15, !dbg !283
  %158 = load i32, ptr %arrayidx153, align 4, !dbg !283
  %159 = load ptr, ptr %x.addr, align 8, !dbg !284
  %arrayidx154 = getelementptr i32, ptr %159, i64 0, !dbg !284
  %160 = load i32, ptr %arrayidx154, align 4, !dbg !284
  %xor155 = xor i32 %158, %160, !dbg !285
  %call156 = call i32 @rol32(i32 noundef %xor155, i32 noundef 16) #7, !dbg !286
  %161 = load ptr, ptr %x.addr, align 8, !dbg !287
  %arrayidx157 = getelementptr i32, ptr %161, i64 15, !dbg !287
  store i32 %call156, ptr %arrayidx157, align 4, !dbg !288
  %162 = load ptr, ptr %x.addr, align 8, !dbg !289
  %arrayidx158 = getelementptr i32, ptr %162, i64 6, !dbg !289
  %163 = load i32, ptr %arrayidx158, align 4, !dbg !289
  %164 = load ptr, ptr %x.addr, align 8, !dbg !290
  %arrayidx159 = getelementptr i32, ptr %164, i64 1, !dbg !290
  %165 = load i32, ptr %arrayidx159, align 4, !dbg !291
  %add160 = add i32 %165, %163, !dbg !291
  store i32 %add160, ptr %arrayidx159, align 4, !dbg !291
  %166 = load ptr, ptr %x.addr, align 8, !dbg !292
  %arrayidx161 = getelementptr i32, ptr %166, i64 12, !dbg !292
  %167 = load i32, ptr %arrayidx161, align 4, !dbg !292
  %168 = load ptr, ptr %x.addr, align 8, !dbg !293
  %arrayidx162 = getelementptr i32, ptr %168, i64 1, !dbg !293
  %169 = load i32, ptr %arrayidx162, align 4, !dbg !293
  %xor163 = xor i32 %167, %169, !dbg !294
  %call164 = call i32 @rol32(i32 noundef %xor163, i32 noundef 16) #7, !dbg !295
  %170 = load ptr, ptr %x.addr, align 8, !dbg !296
  %arrayidx165 = getelementptr i32, ptr %170, i64 12, !dbg !296
  store i32 %call164, ptr %arrayidx165, align 4, !dbg !297
  %171 = load ptr, ptr %x.addr, align 8, !dbg !298
  %arrayidx166 = getelementptr i32, ptr %171, i64 7, !dbg !298
  %172 = load i32, ptr %arrayidx166, align 4, !dbg !298
  %173 = load ptr, ptr %x.addr, align 8, !dbg !299
  %arrayidx167 = getelementptr i32, ptr %173, i64 2, !dbg !299
  %174 = load i32, ptr %arrayidx167, align 4, !dbg !300
  %add168 = add i32 %174, %172, !dbg !300
  store i32 %add168, ptr %arrayidx167, align 4, !dbg !300
  %175 = load ptr, ptr %x.addr, align 8, !dbg !301
  %arrayidx169 = getelementptr i32, ptr %175, i64 13, !dbg !301
  %176 = load i32, ptr %arrayidx169, align 4, !dbg !301
  %177 = load ptr, ptr %x.addr, align 8, !dbg !302
  %arrayidx170 = getelementptr i32, ptr %177, i64 2, !dbg !302
  %178 = load i32, ptr %arrayidx170, align 4, !dbg !302
  %xor171 = xor i32 %176, %178, !dbg !303
  %call172 = call i32 @rol32(i32 noundef %xor171, i32 noundef 16) #7, !dbg !304
  %179 = load ptr, ptr %x.addr, align 8, !dbg !305
  %arrayidx173 = getelementptr i32, ptr %179, i64 13, !dbg !305
  store i32 %call172, ptr %arrayidx173, align 4, !dbg !306
  %180 = load ptr, ptr %x.addr, align 8, !dbg !307
  %arrayidx174 = getelementptr i32, ptr %180, i64 4, !dbg !307
  %181 = load i32, ptr %arrayidx174, align 4, !dbg !307
  %182 = load ptr, ptr %x.addr, align 8, !dbg !308
  %arrayidx175 = getelementptr i32, ptr %182, i64 3, !dbg !308
  %183 = load i32, ptr %arrayidx175, align 4, !dbg !309
  %add176 = add i32 %183, %181, !dbg !309
  store i32 %add176, ptr %arrayidx175, align 4, !dbg !309
  %184 = load ptr, ptr %x.addr, align 8, !dbg !310
  %arrayidx177 = getelementptr i32, ptr %184, i64 14, !dbg !310
  %185 = load i32, ptr %arrayidx177, align 4, !dbg !310
  %186 = load ptr, ptr %x.addr, align 8, !dbg !311
  %arrayidx178 = getelementptr i32, ptr %186, i64 3, !dbg !311
  %187 = load i32, ptr %arrayidx178, align 4, !dbg !311
  %xor179 = xor i32 %185, %187, !dbg !312
  %call180 = call i32 @rol32(i32 noundef %xor179, i32 noundef 16) #7, !dbg !313
  %188 = load ptr, ptr %x.addr, align 8, !dbg !314
  %arrayidx181 = getelementptr i32, ptr %188, i64 14, !dbg !314
  store i32 %call180, ptr %arrayidx181, align 4, !dbg !315
  %189 = load ptr, ptr %x.addr, align 8, !dbg !316
  %arrayidx182 = getelementptr i32, ptr %189, i64 15, !dbg !316
  %190 = load i32, ptr %arrayidx182, align 4, !dbg !316
  %191 = load ptr, ptr %x.addr, align 8, !dbg !317
  %arrayidx183 = getelementptr i32, ptr %191, i64 10, !dbg !317
  %192 = load i32, ptr %arrayidx183, align 4, !dbg !318
  %add184 = add i32 %192, %190, !dbg !318
  store i32 %add184, ptr %arrayidx183, align 4, !dbg !318
  %193 = load ptr, ptr %x.addr, align 8, !dbg !319
  %arrayidx185 = getelementptr i32, ptr %193, i64 5, !dbg !319
  %194 = load i32, ptr %arrayidx185, align 4, !dbg !319
  %195 = load ptr, ptr %x.addr, align 8, !dbg !320
  %arrayidx186 = getelementptr i32, ptr %195, i64 10, !dbg !320
  %196 = load i32, ptr %arrayidx186, align 4, !dbg !320
  %xor187 = xor i32 %194, %196, !dbg !321
  %call188 = call i32 @rol32(i32 noundef %xor187, i32 noundef 12) #7, !dbg !322
  %197 = load ptr, ptr %x.addr, align 8, !dbg !323
  %arrayidx189 = getelementptr i32, ptr %197, i64 5, !dbg !323
  store i32 %call188, ptr %arrayidx189, align 4, !dbg !324
  %198 = load ptr, ptr %x.addr, align 8, !dbg !325
  %arrayidx190 = getelementptr i32, ptr %198, i64 12, !dbg !325
  %199 = load i32, ptr %arrayidx190, align 4, !dbg !325
  %200 = load ptr, ptr %x.addr, align 8, !dbg !326
  %arrayidx191 = getelementptr i32, ptr %200, i64 11, !dbg !326
  %201 = load i32, ptr %arrayidx191, align 4, !dbg !327
  %add192 = add i32 %201, %199, !dbg !327
  store i32 %add192, ptr %arrayidx191, align 4, !dbg !327
  %202 = load ptr, ptr %x.addr, align 8, !dbg !328
  %arrayidx193 = getelementptr i32, ptr %202, i64 6, !dbg !328
  %203 = load i32, ptr %arrayidx193, align 4, !dbg !328
  %204 = load ptr, ptr %x.addr, align 8, !dbg !329
  %arrayidx194 = getelementptr i32, ptr %204, i64 11, !dbg !329
  %205 = load i32, ptr %arrayidx194, align 4, !dbg !329
  %xor195 = xor i32 %203, %205, !dbg !330
  %call196 = call i32 @rol32(i32 noundef %xor195, i32 noundef 12) #7, !dbg !331
  %206 = load ptr, ptr %x.addr, align 8, !dbg !332
  %arrayidx197 = getelementptr i32, ptr %206, i64 6, !dbg !332
  store i32 %call196, ptr %arrayidx197, align 4, !dbg !333
  %207 = load ptr, ptr %x.addr, align 8, !dbg !334
  %arrayidx198 = getelementptr i32, ptr %207, i64 13, !dbg !334
  %208 = load i32, ptr %arrayidx198, align 4, !dbg !334
  %209 = load ptr, ptr %x.addr, align 8, !dbg !335
  %arrayidx199 = getelementptr i32, ptr %209, i64 8, !dbg !335
  %210 = load i32, ptr %arrayidx199, align 4, !dbg !336
  %add200 = add i32 %210, %208, !dbg !336
  store i32 %add200, ptr %arrayidx199, align 4, !dbg !336
  %211 = load ptr, ptr %x.addr, align 8, !dbg !337
  %arrayidx201 = getelementptr i32, ptr %211, i64 7, !dbg !337
  %212 = load i32, ptr %arrayidx201, align 4, !dbg !337
  %213 = load ptr, ptr %x.addr, align 8, !dbg !338
  %arrayidx202 = getelementptr i32, ptr %213, i64 8, !dbg !338
  %214 = load i32, ptr %arrayidx202, align 4, !dbg !338
  %xor203 = xor i32 %212, %214, !dbg !339
  %call204 = call i32 @rol32(i32 noundef %xor203, i32 noundef 12) #7, !dbg !340
  %215 = load ptr, ptr %x.addr, align 8, !dbg !341
  %arrayidx205 = getelementptr i32, ptr %215, i64 7, !dbg !341
  store i32 %call204, ptr %arrayidx205, align 4, !dbg !342
  %216 = load ptr, ptr %x.addr, align 8, !dbg !343
  %arrayidx206 = getelementptr i32, ptr %216, i64 14, !dbg !343
  %217 = load i32, ptr %arrayidx206, align 4, !dbg !343
  %218 = load ptr, ptr %x.addr, align 8, !dbg !344
  %arrayidx207 = getelementptr i32, ptr %218, i64 9, !dbg !344
  %219 = load i32, ptr %arrayidx207, align 4, !dbg !345
  %add208 = add i32 %219, %217, !dbg !345
  store i32 %add208, ptr %arrayidx207, align 4, !dbg !345
  %220 = load ptr, ptr %x.addr, align 8, !dbg !346
  %arrayidx209 = getelementptr i32, ptr %220, i64 4, !dbg !346
  %221 = load i32, ptr %arrayidx209, align 4, !dbg !346
  %222 = load ptr, ptr %x.addr, align 8, !dbg !347
  %arrayidx210 = getelementptr i32, ptr %222, i64 9, !dbg !347
  %223 = load i32, ptr %arrayidx210, align 4, !dbg !347
  %xor211 = xor i32 %221, %223, !dbg !348
  %call212 = call i32 @rol32(i32 noundef %xor211, i32 noundef 12) #7, !dbg !349
  %224 = load ptr, ptr %x.addr, align 8, !dbg !350
  %arrayidx213 = getelementptr i32, ptr %224, i64 4, !dbg !350
  store i32 %call212, ptr %arrayidx213, align 4, !dbg !351
  %225 = load ptr, ptr %x.addr, align 8, !dbg !352
  %arrayidx214 = getelementptr i32, ptr %225, i64 5, !dbg !352
  %226 = load i32, ptr %arrayidx214, align 4, !dbg !352
  %227 = load ptr, ptr %x.addr, align 8, !dbg !353
  %arrayidx215 = getelementptr i32, ptr %227, i64 0, !dbg !353
  %228 = load i32, ptr %arrayidx215, align 4, !dbg !354
  %add216 = add i32 %228, %226, !dbg !354
  store i32 %add216, ptr %arrayidx215, align 4, !dbg !354
  %229 = load ptr, ptr %x.addr, align 8, !dbg !355
  %arrayidx217 = getelementptr i32, ptr %229, i64 15, !dbg !355
  %230 = load i32, ptr %arrayidx217, align 4, !dbg !355
  %231 = load ptr, ptr %x.addr, align 8, !dbg !356
  %arrayidx218 = getelementptr i32, ptr %231, i64 0, !dbg !356
  %232 = load i32, ptr %arrayidx218, align 4, !dbg !356
  %xor219 = xor i32 %230, %232, !dbg !357
  %call220 = call i32 @rol32(i32 noundef %xor219, i32 noundef 8) #7, !dbg !358
  %233 = load ptr, ptr %x.addr, align 8, !dbg !359
  %arrayidx221 = getelementptr i32, ptr %233, i64 15, !dbg !359
  store i32 %call220, ptr %arrayidx221, align 4, !dbg !360
  %234 = load ptr, ptr %x.addr, align 8, !dbg !361
  %arrayidx222 = getelementptr i32, ptr %234, i64 6, !dbg !361
  %235 = load i32, ptr %arrayidx222, align 4, !dbg !361
  %236 = load ptr, ptr %x.addr, align 8, !dbg !362
  %arrayidx223 = getelementptr i32, ptr %236, i64 1, !dbg !362
  %237 = load i32, ptr %arrayidx223, align 4, !dbg !363
  %add224 = add i32 %237, %235, !dbg !363
  store i32 %add224, ptr %arrayidx223, align 4, !dbg !363
  %238 = load ptr, ptr %x.addr, align 8, !dbg !364
  %arrayidx225 = getelementptr i32, ptr %238, i64 12, !dbg !364
  %239 = load i32, ptr %arrayidx225, align 4, !dbg !364
  %240 = load ptr, ptr %x.addr, align 8, !dbg !365
  %arrayidx226 = getelementptr i32, ptr %240, i64 1, !dbg !365
  %241 = load i32, ptr %arrayidx226, align 4, !dbg !365
  %xor227 = xor i32 %239, %241, !dbg !366
  %call228 = call i32 @rol32(i32 noundef %xor227, i32 noundef 8) #7, !dbg !367
  %242 = load ptr, ptr %x.addr, align 8, !dbg !368
  %arrayidx229 = getelementptr i32, ptr %242, i64 12, !dbg !368
  store i32 %call228, ptr %arrayidx229, align 4, !dbg !369
  %243 = load ptr, ptr %x.addr, align 8, !dbg !370
  %arrayidx230 = getelementptr i32, ptr %243, i64 7, !dbg !370
  %244 = load i32, ptr %arrayidx230, align 4, !dbg !370
  %245 = load ptr, ptr %x.addr, align 8, !dbg !371
  %arrayidx231 = getelementptr i32, ptr %245, i64 2, !dbg !371
  %246 = load i32, ptr %arrayidx231, align 4, !dbg !372
  %add232 = add i32 %246, %244, !dbg !372
  store i32 %add232, ptr %arrayidx231, align 4, !dbg !372
  %247 = load ptr, ptr %x.addr, align 8, !dbg !373
  %arrayidx233 = getelementptr i32, ptr %247, i64 13, !dbg !373
  %248 = load i32, ptr %arrayidx233, align 4, !dbg !373
  %249 = load ptr, ptr %x.addr, align 8, !dbg !374
  %arrayidx234 = getelementptr i32, ptr %249, i64 2, !dbg !374
  %250 = load i32, ptr %arrayidx234, align 4, !dbg !374
  %xor235 = xor i32 %248, %250, !dbg !375
  %call236 = call i32 @rol32(i32 noundef %xor235, i32 noundef 8) #7, !dbg !376
  %251 = load ptr, ptr %x.addr, align 8, !dbg !377
  %arrayidx237 = getelementptr i32, ptr %251, i64 13, !dbg !377
  store i32 %call236, ptr %arrayidx237, align 4, !dbg !378
  %252 = load ptr, ptr %x.addr, align 8, !dbg !379
  %arrayidx238 = getelementptr i32, ptr %252, i64 4, !dbg !379
  %253 = load i32, ptr %arrayidx238, align 4, !dbg !379
  %254 = load ptr, ptr %x.addr, align 8, !dbg !380
  %arrayidx239 = getelementptr i32, ptr %254, i64 3, !dbg !380
  %255 = load i32, ptr %arrayidx239, align 4, !dbg !381
  %add240 = add i32 %255, %253, !dbg !381
  store i32 %add240, ptr %arrayidx239, align 4, !dbg !381
  %256 = load ptr, ptr %x.addr, align 8, !dbg !382
  %arrayidx241 = getelementptr i32, ptr %256, i64 14, !dbg !382
  %257 = load i32, ptr %arrayidx241, align 4, !dbg !382
  %258 = load ptr, ptr %x.addr, align 8, !dbg !383
  %arrayidx242 = getelementptr i32, ptr %258, i64 3, !dbg !383
  %259 = load i32, ptr %arrayidx242, align 4, !dbg !383
  %xor243 = xor i32 %257, %259, !dbg !384
  %call244 = call i32 @rol32(i32 noundef %xor243, i32 noundef 8) #7, !dbg !385
  %260 = load ptr, ptr %x.addr, align 8, !dbg !386
  %arrayidx245 = getelementptr i32, ptr %260, i64 14, !dbg !386
  store i32 %call244, ptr %arrayidx245, align 4, !dbg !387
  %261 = load ptr, ptr %x.addr, align 8, !dbg !388
  %arrayidx246 = getelementptr i32, ptr %261, i64 15, !dbg !388
  %262 = load i32, ptr %arrayidx246, align 4, !dbg !388
  %263 = load ptr, ptr %x.addr, align 8, !dbg !389
  %arrayidx247 = getelementptr i32, ptr %263, i64 10, !dbg !389
  %264 = load i32, ptr %arrayidx247, align 4, !dbg !390
  %add248 = add i32 %264, %262, !dbg !390
  store i32 %add248, ptr %arrayidx247, align 4, !dbg !390
  %265 = load ptr, ptr %x.addr, align 8, !dbg !391
  %arrayidx249 = getelementptr i32, ptr %265, i64 5, !dbg !391
  %266 = load i32, ptr %arrayidx249, align 4, !dbg !391
  %267 = load ptr, ptr %x.addr, align 8, !dbg !392
  %arrayidx250 = getelementptr i32, ptr %267, i64 10, !dbg !392
  %268 = load i32, ptr %arrayidx250, align 4, !dbg !392
  %xor251 = xor i32 %266, %268, !dbg !393
  %call252 = call i32 @rol32(i32 noundef %xor251, i32 noundef 7) #7, !dbg !394
  %269 = load ptr, ptr %x.addr, align 8, !dbg !395
  %arrayidx253 = getelementptr i32, ptr %269, i64 5, !dbg !395
  store i32 %call252, ptr %arrayidx253, align 4, !dbg !396
  %270 = load ptr, ptr %x.addr, align 8, !dbg !397
  %arrayidx254 = getelementptr i32, ptr %270, i64 12, !dbg !397
  %271 = load i32, ptr %arrayidx254, align 4, !dbg !397
  %272 = load ptr, ptr %x.addr, align 8, !dbg !398
  %arrayidx255 = getelementptr i32, ptr %272, i64 11, !dbg !398
  %273 = load i32, ptr %arrayidx255, align 4, !dbg !399
  %add256 = add i32 %273, %271, !dbg !399
  store i32 %add256, ptr %arrayidx255, align 4, !dbg !399
  %274 = load ptr, ptr %x.addr, align 8, !dbg !400
  %arrayidx257 = getelementptr i32, ptr %274, i64 6, !dbg !400
  %275 = load i32, ptr %arrayidx257, align 4, !dbg !400
  %276 = load ptr, ptr %x.addr, align 8, !dbg !401
  %arrayidx258 = getelementptr i32, ptr %276, i64 11, !dbg !401
  %277 = load i32, ptr %arrayidx258, align 4, !dbg !401
  %xor259 = xor i32 %275, %277, !dbg !402
  %call260 = call i32 @rol32(i32 noundef %xor259, i32 noundef 7) #7, !dbg !403
  %278 = load ptr, ptr %x.addr, align 8, !dbg !404
  %arrayidx261 = getelementptr i32, ptr %278, i64 6, !dbg !404
  store i32 %call260, ptr %arrayidx261, align 4, !dbg !405
  %279 = load ptr, ptr %x.addr, align 8, !dbg !406
  %arrayidx262 = getelementptr i32, ptr %279, i64 13, !dbg !406
  %280 = load i32, ptr %arrayidx262, align 4, !dbg !406
  %281 = load ptr, ptr %x.addr, align 8, !dbg !407
  %arrayidx263 = getelementptr i32, ptr %281, i64 8, !dbg !407
  %282 = load i32, ptr %arrayidx263, align 4, !dbg !408
  %add264 = add i32 %282, %280, !dbg !408
  store i32 %add264, ptr %arrayidx263, align 4, !dbg !408
  %283 = load ptr, ptr %x.addr, align 8, !dbg !409
  %arrayidx265 = getelementptr i32, ptr %283, i64 7, !dbg !409
  %284 = load i32, ptr %arrayidx265, align 4, !dbg !409
  %285 = load ptr, ptr %x.addr, align 8, !dbg !410
  %arrayidx266 = getelementptr i32, ptr %285, i64 8, !dbg !410
  %286 = load i32, ptr %arrayidx266, align 4, !dbg !410
  %xor267 = xor i32 %284, %286, !dbg !411
  %call268 = call i32 @rol32(i32 noundef %xor267, i32 noundef 7) #7, !dbg !412
  %287 = load ptr, ptr %x.addr, align 8, !dbg !413
  %arrayidx269 = getelementptr i32, ptr %287, i64 7, !dbg !413
  store i32 %call268, ptr %arrayidx269, align 4, !dbg !414
  %288 = load ptr, ptr %x.addr, align 8, !dbg !415
  %arrayidx270 = getelementptr i32, ptr %288, i64 14, !dbg !415
  %289 = load i32, ptr %arrayidx270, align 4, !dbg !415
  %290 = load ptr, ptr %x.addr, align 8, !dbg !416
  %arrayidx271 = getelementptr i32, ptr %290, i64 9, !dbg !416
  %291 = load i32, ptr %arrayidx271, align 4, !dbg !417
  %add272 = add i32 %291, %289, !dbg !417
  store i32 %add272, ptr %arrayidx271, align 4, !dbg !417
  %292 = load ptr, ptr %x.addr, align 8, !dbg !418
  %arrayidx273 = getelementptr i32, ptr %292, i64 4, !dbg !418
  %293 = load i32, ptr %arrayidx273, align 4, !dbg !418
  %294 = load ptr, ptr %x.addr, align 8, !dbg !419
  %arrayidx274 = getelementptr i32, ptr %294, i64 9, !dbg !419
  %295 = load i32, ptr %arrayidx274, align 4, !dbg !419
  %xor275 = xor i32 %293, %295, !dbg !420
  %call276 = call i32 @rol32(i32 noundef %xor275, i32 noundef 7) #7, !dbg !421
  %296 = load ptr, ptr %x.addr, align 8, !dbg !422
  %arrayidx277 = getelementptr i32, ptr %296, i64 4, !dbg !422
  store i32 %call276, ptr %arrayidx277, align 4, !dbg !423
  br label %for.inc, !dbg !424

for.inc:                                          ; preds = %for.body
  %297 = load i32, ptr %i, align 4, !dbg !425
  %add278 = add i32 %297, 2, !dbg !425
  store i32 %add278, ptr %i, align 4, !dbg !425
  br label %for.cond, !dbg !426, !llvm.loop !427

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !429
  ret void, !dbg !429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_le32(i32 noundef %val, ptr noundef %p) #4 align 16 !dbg !10 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !19, metadata !DIExpression()), !dbg !430
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !20, metadata !DIExpression()), !dbg !431
  br label %do.body, !dbg !432

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #6, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !21, metadata !DIExpression()), !dbg !433
  %0 = load ptr, ptr %p.addr, align 8, !dbg !433
  store ptr %0, ptr %__pptr, align 8, !dbg !433
  %1 = load i32, ptr %val.addr, align 4, !dbg !433
  %2 = load ptr, ptr %__pptr, align 8, !dbg !433
  %x = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !433
  store i32 %1, ptr %x, align 1, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #6, !dbg !432
  br label %do.end, !dbg !433

do.end:                                           ; preds = %do.body
  ret void, !dbg !434
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hchacha_block_generic(ptr noundef %state, ptr noundef %stream, i32 noundef %nrounds) #0 align 16 !dbg !435 {
entry:
  %state.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %nrounds.addr = alloca i32, align 4
  %x = alloca [16 x i32], align 16
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !441, metadata !DIExpression()), !dbg !445
  store ptr %stream, ptr %stream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stream.addr, metadata !442, metadata !DIExpression()), !dbg !446
  store i32 %nrounds, ptr %nrounds.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nrounds.addr, metadata !443, metadata !DIExpression()), !dbg !447
  call void @llvm.lifetime.start.p0(i64 64, ptr %x) #6, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %x, metadata !444, metadata !DIExpression()), !dbg !449
  %arraydecay = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0, !dbg !450
  %0 = load ptr, ptr %state.addr, align 8, !dbg !451
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 4 %0, i64 64, i1 false), !dbg !450
  %arraydecay1 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0, !dbg !452
  %1 = load i32, ptr %nrounds.addr, align 4, !dbg !453
  call void @chacha_permute(ptr noundef %arraydecay1, i32 noundef %1) #7, !dbg !454
  %2 = load ptr, ptr %stream.addr, align 8, !dbg !455
  %arrayidx = getelementptr i32, ptr %2, i64 0, !dbg !455
  %arrayidx2 = getelementptr [16 x i32], ptr %x, i64 0, i64 0, !dbg !456
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 16 %arrayidx2, i64 16, i1 false), !dbg !457
  %3 = load ptr, ptr %stream.addr, align 8, !dbg !458
  %arrayidx3 = getelementptr i32, ptr %3, i64 4, !dbg !458
  %arrayidx4 = getelementptr [16 x i32], ptr %x, i64 0, i64 12, !dbg !459
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx3, ptr align 16 %arrayidx4, i64 16, i1 false), !dbg !460
  call void @llvm.lifetime.end.p0(i64 64, ptr %x) #6, !dbg !461
  ret void, !dbg !461
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 align 16 !dbg !462 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !467, metadata !DIExpression()), !dbg !469
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !468, metadata !DIExpression()), !dbg !470
  %0 = load i32, ptr %word.addr, align 4, !dbg !471
  %1 = load i32, ptr %shift.addr, align 4, !dbg !472
  %and = and i32 %1, 31, !dbg !473
  %shl = shl i32 %0, %and, !dbg !474
  %2 = load i32, ptr %word.addr, align 4, !dbg !475
  %3 = load i32, ptr %shift.addr, align 4, !dbg !476
  %sub = sub i32 0, %3, !dbg !477
  %and1 = and i32 %sub, 31, !dbg !478
  %shr = lshr i32 %2, %and1, !dbg !479
  %or = or i32 %shl, %shr, !dbg !480
  ret i32 %or, !dbg !481
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_chacha_block_generic3", scope: !2, file: !3, line: 90, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.chacha.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/chacha\22 -D KBUILD_BASENAME=\22chacha\22 -D KBUILD_MODNAME=\22chacha\22 -D __KBUILD_MODNAME=kmod_chacha -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/chacha.ll lib/crypto/chacha.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/chacha.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1fbf7c2168566a309c0534021be4750e")
!4 = !{!5, !6, !7, !25, !15}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !10, file: !9, line: 47, size: 32, elements: !23)
!9 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!10 = distinct !DISubprogram(name: "put_unaligned_le32", scope: !9, file: !9, line: 45, type: !11, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !6}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21}
!19 = !DILocalVariable(name: "val", arg: 1, scope: !10, file: !9, line: 45, type: !13)
!20 = !DILocalVariable(name: "p", arg: 2, scope: !10, file: !9, line: 45, type: !6)
!21 = !DILocalVariable(name: "__pptr", scope: !22, file: !9, line: 47, type: !7)
!22 = distinct !DILexicalBlock(scope: !10, file: !9, line: 47, column: 2)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !8, file: !9, line: 47, baseType: !25, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !26, line: 38, baseType: !15)
!26 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!27 = !{!0, !28, !30}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hchacha_block_generic4", scope: !2, file: !3, line: 114, type: !6, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !3, line: 21, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !34)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !{!35}
!35 = !DISubrange(count: 20)
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 4, !"function_return_thunk_extern", i32 1}
!41 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "chacha_block_generic", scope: !3, file: !3, line: 76, type: !46, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !49, !5}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !{!54, !55, !56, !57, !61}
!54 = !DILocalVariable(name: "state", arg: 1, scope: !45, file: !3, line: 76, type: !48)
!55 = !DILocalVariable(name: "stream", arg: 2, scope: !45, file: !3, line: 76, type: !49)
!56 = !DILocalVariable(name: "nrounds", arg: 3, scope: !45, file: !3, line: 76, type: !5)
!57 = !DILocalVariable(name: "x", scope: !45, file: !3, line: 78, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 16)
!61 = !DILocalVariable(name: "i", scope: !45, file: !3, line: 79, type: !5)
!62 = !DILocation(line: 76, column: 32, scope: !45)
!63 = !DILocation(line: 76, column: 43, scope: !45)
!64 = !DILocation(line: 76, column: 55, scope: !45)
!65 = !DILocation(line: 78, column: 2, scope: !45)
!66 = !DILocation(line: 78, column: 6, scope: !45)
!67 = !DILocation(line: 79, column: 2, scope: !45)
!68 = !DILocation(line: 79, column: 6, scope: !45)
!69 = !DILocation(line: 81, column: 2, scope: !45)
!70 = !DILocation(line: 81, column: 12, scope: !45)
!71 = !DILocation(line: 83, column: 17, scope: !45)
!72 = !DILocation(line: 83, column: 20, scope: !45)
!73 = !DILocation(line: 83, column: 2, scope: !45)
!74 = !DILocation(line: 85, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !45, file: !3, line: 85, column: 2)
!76 = !DILocation(line: 85, column: 7, scope: !75)
!77 = !DILocation(line: 85, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 85, column: 2)
!79 = !DILocation(line: 85, column: 16, scope: !78)
!80 = !DILocation(line: 85, column: 2, scope: !75)
!81 = !DILocation(line: 86, column: 24, scope: !78)
!82 = !DILocation(line: 86, column: 22, scope: !78)
!83 = !DILocation(line: 86, column: 29, scope: !78)
!84 = !DILocation(line: 86, column: 35, scope: !78)
!85 = !DILocation(line: 86, column: 27, scope: !78)
!86 = !DILocation(line: 86, column: 40, scope: !78)
!87 = !DILocation(line: 86, column: 47, scope: !78)
!88 = !DILocation(line: 86, column: 49, scope: !78)
!89 = !DILocation(line: 86, column: 3, scope: !78)
!90 = !DILocation(line: 85, column: 34, scope: !78)
!91 = !DILocation(line: 85, column: 2, scope: !78)
!92 = distinct !{!92, !80, !93, !94, !95}
!93 = !DILocation(line: 86, column: 63, scope: !75)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !DILocation(line: 88, column: 2, scope: !45)
!97 = !DILocation(line: 88, column: 11, scope: !45)
!98 = !DILocation(line: 89, column: 1, scope: !45)
!99 = distinct !DISubprogram(name: "chacha_permute", scope: !3, file: !3, line: 16, type: !100, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !48, !5}
!102 = !{!103, !104, !105, !106, !108}
!103 = !DILocalVariable(name: "x", arg: 1, scope: !99, file: !3, line: 16, type: !48)
!104 = !DILocalVariable(name: "nrounds", arg: 2, scope: !99, file: !3, line: 16, type: !5)
!105 = !DILocalVariable(name: "i", scope: !99, file: !3, line: 18, type: !5)
!106 = !DILocalVariable(name: "__ret_warn_on", scope: !107, file: !3, line: 21, type: !5)
!107 = distinct !DILexicalBlock(scope: !99, file: !3, line: 21, column: 2)
!108 = !DILocalVariable(name: "__flags", scope: !109, file: !3, line: 21, type: !5)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 21, column: 2)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 21, column: 2)
!111 = !DILocation(line: 16, column: 33, scope: !99)
!112 = !DILocation(line: 16, column: 40, scope: !99)
!113 = !DILocation(line: 18, column: 2, scope: !99)
!114 = !DILocation(line: 18, column: 6, scope: !99)
!115 = !DILocation(line: 21, column: 2, scope: !107)
!116 = !DILocation(line: 0, scope: !107)
!117 = !DILocation(line: 21, column: 2, scope: !110)
!118 = !DILocation(line: 21, column: 2, scope: !109)
!119 = !DILocation(line: 21, column: 2, scope: !120)
!120 = distinct !DILexicalBlock(scope: !109, file: !3, line: 21, column: 2)
!121 = !DILocation(line: 21, column: 2, scope: !122)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 21, column: 2)
!123 = !{i64 2148160655, i64 2148160684, i64 2148160730, i64 2148160788, i64 2148160842, i64 2148160896, i64 2148160951, i64 2148160982, i64 2148161290, i64 2148161296, i64 2148161343, i64 2148161366, i64 2148161392}
!124 = !DILocation(line: 21, column: 2, scope: !125)
!125 = distinct !DILexicalBlock(scope: !109, file: !3, line: 21, column: 2)
!126 = !DILocation(line: 21, column: 2, scope: !99)
!127 = !DILocation(line: 23, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !99, file: !3, line: 23, column: 2)
!129 = !DILocation(line: 23, column: 7, scope: !128)
!130 = !DILocation(line: 23, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 23, column: 2)
!132 = !DILocation(line: 23, column: 18, scope: !131)
!133 = !DILocation(line: 23, column: 16, scope: !131)
!134 = !DILocation(line: 23, column: 2, scope: !128)
!135 = !DILocation(line: 24, column: 12, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !3, line: 23, column: 35)
!137 = !DILocation(line: 24, column: 3, scope: !136)
!138 = !DILocation(line: 24, column: 9, scope: !136)
!139 = !DILocation(line: 24, column: 35, scope: !136)
!140 = !DILocation(line: 24, column: 43, scope: !136)
!141 = !DILocation(line: 24, column: 41, scope: !136)
!142 = !DILocation(line: 24, column: 29, scope: !136)
!143 = !DILocation(line: 24, column: 21, scope: !136)
!144 = !DILocation(line: 24, column: 27, scope: !136)
!145 = !DILocation(line: 25, column: 12, scope: !136)
!146 = !DILocation(line: 25, column: 3, scope: !136)
!147 = !DILocation(line: 25, column: 9, scope: !136)
!148 = !DILocation(line: 25, column: 35, scope: !136)
!149 = !DILocation(line: 25, column: 43, scope: !136)
!150 = !DILocation(line: 25, column: 41, scope: !136)
!151 = !DILocation(line: 25, column: 29, scope: !136)
!152 = !DILocation(line: 25, column: 21, scope: !136)
!153 = !DILocation(line: 25, column: 27, scope: !136)
!154 = !DILocation(line: 26, column: 12, scope: !136)
!155 = !DILocation(line: 26, column: 3, scope: !136)
!156 = !DILocation(line: 26, column: 9, scope: !136)
!157 = !DILocation(line: 26, column: 35, scope: !136)
!158 = !DILocation(line: 26, column: 43, scope: !136)
!159 = !DILocation(line: 26, column: 41, scope: !136)
!160 = !DILocation(line: 26, column: 29, scope: !136)
!161 = !DILocation(line: 26, column: 21, scope: !136)
!162 = !DILocation(line: 26, column: 27, scope: !136)
!163 = !DILocation(line: 27, column: 12, scope: !136)
!164 = !DILocation(line: 27, column: 3, scope: !136)
!165 = !DILocation(line: 27, column: 9, scope: !136)
!166 = !DILocation(line: 27, column: 35, scope: !136)
!167 = !DILocation(line: 27, column: 43, scope: !136)
!168 = !DILocation(line: 27, column: 41, scope: !136)
!169 = !DILocation(line: 27, column: 29, scope: !136)
!170 = !DILocation(line: 27, column: 21, scope: !136)
!171 = !DILocation(line: 27, column: 27, scope: !136)
!172 = !DILocation(line: 29, column: 12, scope: !136)
!173 = !DILocation(line: 29, column: 3, scope: !136)
!174 = !DILocation(line: 29, column: 9, scope: !136)
!175 = !DILocation(line: 29, column: 35, scope: !136)
!176 = !DILocation(line: 29, column: 43, scope: !136)
!177 = !DILocation(line: 29, column: 41, scope: !136)
!178 = !DILocation(line: 29, column: 29, scope: !136)
!179 = !DILocation(line: 29, column: 21, scope: !136)
!180 = !DILocation(line: 29, column: 27, scope: !136)
!181 = !DILocation(line: 30, column: 12, scope: !136)
!182 = !DILocation(line: 30, column: 3, scope: !136)
!183 = !DILocation(line: 30, column: 9, scope: !136)
!184 = !DILocation(line: 30, column: 35, scope: !136)
!185 = !DILocation(line: 30, column: 43, scope: !136)
!186 = !DILocation(line: 30, column: 41, scope: !136)
!187 = !DILocation(line: 30, column: 29, scope: !136)
!188 = !DILocation(line: 30, column: 21, scope: !136)
!189 = !DILocation(line: 30, column: 27, scope: !136)
!190 = !DILocation(line: 31, column: 12, scope: !136)
!191 = !DILocation(line: 31, column: 3, scope: !136)
!192 = !DILocation(line: 31, column: 9, scope: !136)
!193 = !DILocation(line: 31, column: 35, scope: !136)
!194 = !DILocation(line: 31, column: 43, scope: !136)
!195 = !DILocation(line: 31, column: 41, scope: !136)
!196 = !DILocation(line: 31, column: 29, scope: !136)
!197 = !DILocation(line: 31, column: 21, scope: !136)
!198 = !DILocation(line: 31, column: 27, scope: !136)
!199 = !DILocation(line: 32, column: 12, scope: !136)
!200 = !DILocation(line: 32, column: 3, scope: !136)
!201 = !DILocation(line: 32, column: 9, scope: !136)
!202 = !DILocation(line: 32, column: 35, scope: !136)
!203 = !DILocation(line: 32, column: 43, scope: !136)
!204 = !DILocation(line: 32, column: 41, scope: !136)
!205 = !DILocation(line: 32, column: 29, scope: !136)
!206 = !DILocation(line: 32, column: 21, scope: !136)
!207 = !DILocation(line: 32, column: 27, scope: !136)
!208 = !DILocation(line: 34, column: 12, scope: !136)
!209 = !DILocation(line: 34, column: 3, scope: !136)
!210 = !DILocation(line: 34, column: 9, scope: !136)
!211 = !DILocation(line: 34, column: 35, scope: !136)
!212 = !DILocation(line: 34, column: 43, scope: !136)
!213 = !DILocation(line: 34, column: 41, scope: !136)
!214 = !DILocation(line: 34, column: 29, scope: !136)
!215 = !DILocation(line: 34, column: 21, scope: !136)
!216 = !DILocation(line: 34, column: 27, scope: !136)
!217 = !DILocation(line: 35, column: 12, scope: !136)
!218 = !DILocation(line: 35, column: 3, scope: !136)
!219 = !DILocation(line: 35, column: 9, scope: !136)
!220 = !DILocation(line: 35, column: 35, scope: !136)
!221 = !DILocation(line: 35, column: 43, scope: !136)
!222 = !DILocation(line: 35, column: 41, scope: !136)
!223 = !DILocation(line: 35, column: 29, scope: !136)
!224 = !DILocation(line: 35, column: 21, scope: !136)
!225 = !DILocation(line: 35, column: 27, scope: !136)
!226 = !DILocation(line: 36, column: 12, scope: !136)
!227 = !DILocation(line: 36, column: 3, scope: !136)
!228 = !DILocation(line: 36, column: 9, scope: !136)
!229 = !DILocation(line: 36, column: 35, scope: !136)
!230 = !DILocation(line: 36, column: 43, scope: !136)
!231 = !DILocation(line: 36, column: 41, scope: !136)
!232 = !DILocation(line: 36, column: 29, scope: !136)
!233 = !DILocation(line: 36, column: 21, scope: !136)
!234 = !DILocation(line: 36, column: 27, scope: !136)
!235 = !DILocation(line: 37, column: 12, scope: !136)
!236 = !DILocation(line: 37, column: 3, scope: !136)
!237 = !DILocation(line: 37, column: 9, scope: !136)
!238 = !DILocation(line: 37, column: 35, scope: !136)
!239 = !DILocation(line: 37, column: 43, scope: !136)
!240 = !DILocation(line: 37, column: 41, scope: !136)
!241 = !DILocation(line: 37, column: 29, scope: !136)
!242 = !DILocation(line: 37, column: 21, scope: !136)
!243 = !DILocation(line: 37, column: 27, scope: !136)
!244 = !DILocation(line: 39, column: 12, scope: !136)
!245 = !DILocation(line: 39, column: 3, scope: !136)
!246 = !DILocation(line: 39, column: 9, scope: !136)
!247 = !DILocation(line: 39, column: 35, scope: !136)
!248 = !DILocation(line: 39, column: 43, scope: !136)
!249 = !DILocation(line: 39, column: 41, scope: !136)
!250 = !DILocation(line: 39, column: 29, scope: !136)
!251 = !DILocation(line: 39, column: 21, scope: !136)
!252 = !DILocation(line: 39, column: 27, scope: !136)
!253 = !DILocation(line: 40, column: 12, scope: !136)
!254 = !DILocation(line: 40, column: 3, scope: !136)
!255 = !DILocation(line: 40, column: 9, scope: !136)
!256 = !DILocation(line: 40, column: 35, scope: !136)
!257 = !DILocation(line: 40, column: 43, scope: !136)
!258 = !DILocation(line: 40, column: 41, scope: !136)
!259 = !DILocation(line: 40, column: 29, scope: !136)
!260 = !DILocation(line: 40, column: 21, scope: !136)
!261 = !DILocation(line: 40, column: 27, scope: !136)
!262 = !DILocation(line: 41, column: 12, scope: !136)
!263 = !DILocation(line: 41, column: 3, scope: !136)
!264 = !DILocation(line: 41, column: 9, scope: !136)
!265 = !DILocation(line: 41, column: 35, scope: !136)
!266 = !DILocation(line: 41, column: 43, scope: !136)
!267 = !DILocation(line: 41, column: 41, scope: !136)
!268 = !DILocation(line: 41, column: 29, scope: !136)
!269 = !DILocation(line: 41, column: 21, scope: !136)
!270 = !DILocation(line: 41, column: 27, scope: !136)
!271 = !DILocation(line: 42, column: 12, scope: !136)
!272 = !DILocation(line: 42, column: 3, scope: !136)
!273 = !DILocation(line: 42, column: 9, scope: !136)
!274 = !DILocation(line: 42, column: 35, scope: !136)
!275 = !DILocation(line: 42, column: 43, scope: !136)
!276 = !DILocation(line: 42, column: 41, scope: !136)
!277 = !DILocation(line: 42, column: 29, scope: !136)
!278 = !DILocation(line: 42, column: 21, scope: !136)
!279 = !DILocation(line: 42, column: 27, scope: !136)
!280 = !DILocation(line: 44, column: 12, scope: !136)
!281 = !DILocation(line: 44, column: 3, scope: !136)
!282 = !DILocation(line: 44, column: 9, scope: !136)
!283 = !DILocation(line: 44, column: 35, scope: !136)
!284 = !DILocation(line: 44, column: 43, scope: !136)
!285 = !DILocation(line: 44, column: 41, scope: !136)
!286 = !DILocation(line: 44, column: 29, scope: !136)
!287 = !DILocation(line: 44, column: 21, scope: !136)
!288 = !DILocation(line: 44, column: 27, scope: !136)
!289 = !DILocation(line: 45, column: 12, scope: !136)
!290 = !DILocation(line: 45, column: 3, scope: !136)
!291 = !DILocation(line: 45, column: 9, scope: !136)
!292 = !DILocation(line: 45, column: 35, scope: !136)
!293 = !DILocation(line: 45, column: 43, scope: !136)
!294 = !DILocation(line: 45, column: 41, scope: !136)
!295 = !DILocation(line: 45, column: 29, scope: !136)
!296 = !DILocation(line: 45, column: 21, scope: !136)
!297 = !DILocation(line: 45, column: 27, scope: !136)
!298 = !DILocation(line: 46, column: 12, scope: !136)
!299 = !DILocation(line: 46, column: 3, scope: !136)
!300 = !DILocation(line: 46, column: 9, scope: !136)
!301 = !DILocation(line: 46, column: 35, scope: !136)
!302 = !DILocation(line: 46, column: 43, scope: !136)
!303 = !DILocation(line: 46, column: 41, scope: !136)
!304 = !DILocation(line: 46, column: 29, scope: !136)
!305 = !DILocation(line: 46, column: 21, scope: !136)
!306 = !DILocation(line: 46, column: 27, scope: !136)
!307 = !DILocation(line: 47, column: 12, scope: !136)
!308 = !DILocation(line: 47, column: 3, scope: !136)
!309 = !DILocation(line: 47, column: 9, scope: !136)
!310 = !DILocation(line: 47, column: 35, scope: !136)
!311 = !DILocation(line: 47, column: 43, scope: !136)
!312 = !DILocation(line: 47, column: 41, scope: !136)
!313 = !DILocation(line: 47, column: 29, scope: !136)
!314 = !DILocation(line: 47, column: 21, scope: !136)
!315 = !DILocation(line: 47, column: 27, scope: !136)
!316 = !DILocation(line: 49, column: 12, scope: !136)
!317 = !DILocation(line: 49, column: 3, scope: !136)
!318 = !DILocation(line: 49, column: 9, scope: !136)
!319 = !DILocation(line: 49, column: 35, scope: !136)
!320 = !DILocation(line: 49, column: 43, scope: !136)
!321 = !DILocation(line: 49, column: 41, scope: !136)
!322 = !DILocation(line: 49, column: 29, scope: !136)
!323 = !DILocation(line: 49, column: 21, scope: !136)
!324 = !DILocation(line: 49, column: 27, scope: !136)
!325 = !DILocation(line: 50, column: 12, scope: !136)
!326 = !DILocation(line: 50, column: 3, scope: !136)
!327 = !DILocation(line: 50, column: 9, scope: !136)
!328 = !DILocation(line: 50, column: 35, scope: !136)
!329 = !DILocation(line: 50, column: 43, scope: !136)
!330 = !DILocation(line: 50, column: 41, scope: !136)
!331 = !DILocation(line: 50, column: 29, scope: !136)
!332 = !DILocation(line: 50, column: 21, scope: !136)
!333 = !DILocation(line: 50, column: 27, scope: !136)
!334 = !DILocation(line: 51, column: 12, scope: !136)
!335 = !DILocation(line: 51, column: 3, scope: !136)
!336 = !DILocation(line: 51, column: 9, scope: !136)
!337 = !DILocation(line: 51, column: 35, scope: !136)
!338 = !DILocation(line: 51, column: 43, scope: !136)
!339 = !DILocation(line: 51, column: 41, scope: !136)
!340 = !DILocation(line: 51, column: 29, scope: !136)
!341 = !DILocation(line: 51, column: 21, scope: !136)
!342 = !DILocation(line: 51, column: 27, scope: !136)
!343 = !DILocation(line: 52, column: 12, scope: !136)
!344 = !DILocation(line: 52, column: 3, scope: !136)
!345 = !DILocation(line: 52, column: 9, scope: !136)
!346 = !DILocation(line: 52, column: 35, scope: !136)
!347 = !DILocation(line: 52, column: 43, scope: !136)
!348 = !DILocation(line: 52, column: 41, scope: !136)
!349 = !DILocation(line: 52, column: 29, scope: !136)
!350 = !DILocation(line: 52, column: 21, scope: !136)
!351 = !DILocation(line: 52, column: 27, scope: !136)
!352 = !DILocation(line: 54, column: 12, scope: !136)
!353 = !DILocation(line: 54, column: 3, scope: !136)
!354 = !DILocation(line: 54, column: 9, scope: !136)
!355 = !DILocation(line: 54, column: 35, scope: !136)
!356 = !DILocation(line: 54, column: 43, scope: !136)
!357 = !DILocation(line: 54, column: 41, scope: !136)
!358 = !DILocation(line: 54, column: 29, scope: !136)
!359 = !DILocation(line: 54, column: 21, scope: !136)
!360 = !DILocation(line: 54, column: 27, scope: !136)
!361 = !DILocation(line: 55, column: 12, scope: !136)
!362 = !DILocation(line: 55, column: 3, scope: !136)
!363 = !DILocation(line: 55, column: 9, scope: !136)
!364 = !DILocation(line: 55, column: 35, scope: !136)
!365 = !DILocation(line: 55, column: 43, scope: !136)
!366 = !DILocation(line: 55, column: 41, scope: !136)
!367 = !DILocation(line: 55, column: 29, scope: !136)
!368 = !DILocation(line: 55, column: 21, scope: !136)
!369 = !DILocation(line: 55, column: 27, scope: !136)
!370 = !DILocation(line: 56, column: 12, scope: !136)
!371 = !DILocation(line: 56, column: 3, scope: !136)
!372 = !DILocation(line: 56, column: 9, scope: !136)
!373 = !DILocation(line: 56, column: 35, scope: !136)
!374 = !DILocation(line: 56, column: 43, scope: !136)
!375 = !DILocation(line: 56, column: 41, scope: !136)
!376 = !DILocation(line: 56, column: 29, scope: !136)
!377 = !DILocation(line: 56, column: 21, scope: !136)
!378 = !DILocation(line: 56, column: 27, scope: !136)
!379 = !DILocation(line: 57, column: 12, scope: !136)
!380 = !DILocation(line: 57, column: 3, scope: !136)
!381 = !DILocation(line: 57, column: 9, scope: !136)
!382 = !DILocation(line: 57, column: 35, scope: !136)
!383 = !DILocation(line: 57, column: 43, scope: !136)
!384 = !DILocation(line: 57, column: 41, scope: !136)
!385 = !DILocation(line: 57, column: 29, scope: !136)
!386 = !DILocation(line: 57, column: 21, scope: !136)
!387 = !DILocation(line: 57, column: 27, scope: !136)
!388 = !DILocation(line: 59, column: 12, scope: !136)
!389 = !DILocation(line: 59, column: 3, scope: !136)
!390 = !DILocation(line: 59, column: 9, scope: !136)
!391 = !DILocation(line: 59, column: 35, scope: !136)
!392 = !DILocation(line: 59, column: 43, scope: !136)
!393 = !DILocation(line: 59, column: 41, scope: !136)
!394 = !DILocation(line: 59, column: 29, scope: !136)
!395 = !DILocation(line: 59, column: 21, scope: !136)
!396 = !DILocation(line: 59, column: 27, scope: !136)
!397 = !DILocation(line: 60, column: 12, scope: !136)
!398 = !DILocation(line: 60, column: 3, scope: !136)
!399 = !DILocation(line: 60, column: 9, scope: !136)
!400 = !DILocation(line: 60, column: 35, scope: !136)
!401 = !DILocation(line: 60, column: 43, scope: !136)
!402 = !DILocation(line: 60, column: 41, scope: !136)
!403 = !DILocation(line: 60, column: 29, scope: !136)
!404 = !DILocation(line: 60, column: 21, scope: !136)
!405 = !DILocation(line: 60, column: 27, scope: !136)
!406 = !DILocation(line: 61, column: 12, scope: !136)
!407 = !DILocation(line: 61, column: 3, scope: !136)
!408 = !DILocation(line: 61, column: 9, scope: !136)
!409 = !DILocation(line: 61, column: 35, scope: !136)
!410 = !DILocation(line: 61, column: 43, scope: !136)
!411 = !DILocation(line: 61, column: 41, scope: !136)
!412 = !DILocation(line: 61, column: 29, scope: !136)
!413 = !DILocation(line: 61, column: 21, scope: !136)
!414 = !DILocation(line: 61, column: 27, scope: !136)
!415 = !DILocation(line: 62, column: 12, scope: !136)
!416 = !DILocation(line: 62, column: 3, scope: !136)
!417 = !DILocation(line: 62, column: 9, scope: !136)
!418 = !DILocation(line: 62, column: 35, scope: !136)
!419 = !DILocation(line: 62, column: 43, scope: !136)
!420 = !DILocation(line: 62, column: 41, scope: !136)
!421 = !DILocation(line: 62, column: 29, scope: !136)
!422 = !DILocation(line: 62, column: 21, scope: !136)
!423 = !DILocation(line: 62, column: 27, scope: !136)
!424 = !DILocation(line: 63, column: 2, scope: !136)
!425 = !DILocation(line: 23, column: 29, scope: !131)
!426 = !DILocation(line: 23, column: 2, scope: !131)
!427 = distinct !{!427, !134, !428, !94, !95}
!428 = !DILocation(line: 63, column: 2, scope: !128)
!429 = !DILocation(line: 64, column: 1, scope: !99)
!430 = !DILocation(line: 45, column: 43, scope: !10)
!431 = !DILocation(line: 45, column: 54, scope: !10)
!432 = !DILocation(line: 47, column: 2, scope: !10)
!433 = !DILocation(line: 47, column: 2, scope: !22)
!434 = !DILocation(line: 48, column: 1, scope: !10)
!435 = distinct !DISubprogram(name: "hchacha_block_generic", scope: !3, file: !3, line: 103, type: !436, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !440)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438, !48, !5}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!440 = !{!441, !442, !443, !444}
!441 = !DILocalVariable(name: "state", arg: 1, scope: !435, file: !3, line: 103, type: !438)
!442 = !DILocalVariable(name: "stream", arg: 2, scope: !435, file: !3, line: 103, type: !48)
!443 = !DILocalVariable(name: "nrounds", arg: 3, scope: !435, file: !3, line: 103, type: !5)
!444 = !DILocalVariable(name: "x", scope: !435, file: !3, line: 105, type: !58)
!445 = !DILocation(line: 103, column: 39, scope: !435)
!446 = !DILocation(line: 103, column: 51, scope: !435)
!447 = !DILocation(line: 103, column: 63, scope: !435)
!448 = !DILocation(line: 105, column: 2, scope: !435)
!449 = !DILocation(line: 105, column: 6, scope: !435)
!450 = !DILocation(line: 107, column: 2, scope: !435)
!451 = !DILocation(line: 107, column: 12, scope: !435)
!452 = !DILocation(line: 109, column: 17, scope: !435)
!453 = !DILocation(line: 109, column: 20, scope: !435)
!454 = !DILocation(line: 109, column: 2, scope: !435)
!455 = !DILocation(line: 111, column: 10, scope: !435)
!456 = !DILocation(line: 111, column: 22, scope: !435)
!457 = !DILocation(line: 111, column: 2, scope: !435)
!458 = !DILocation(line: 112, column: 10, scope: !435)
!459 = !DILocation(line: 112, column: 22, scope: !435)
!460 = !DILocation(line: 112, column: 2, scope: !435)
!461 = !DILocation(line: 113, column: 1, scope: !435)
!462 = distinct !DISubprogram(name: "rol32", scope: !463, file: !463, line: 125, type: !464, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !466)
!463 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!464 = !DISubroutineType(types: !465)
!465 = !{!15, !15, !17}
!466 = !{!467, !468}
!467 = !DILocalVariable(name: "word", arg: 1, scope: !462, file: !463, line: 125, type: !15)
!468 = !DILocalVariable(name: "shift", arg: 2, scope: !462, file: !463, line: 125, type: !17)
!469 = !DILocation(line: 125, column: 33, scope: !462)
!470 = !DILocation(line: 125, column: 52, scope: !462)
!471 = !DILocation(line: 127, column: 10, scope: !462)
!472 = !DILocation(line: 127, column: 19, scope: !462)
!473 = !DILocation(line: 127, column: 25, scope: !462)
!474 = !DILocation(line: 127, column: 15, scope: !462)
!475 = !DILocation(line: 127, column: 35, scope: !462)
!476 = !DILocation(line: 127, column: 46, scope: !462)
!477 = !DILocation(line: 127, column: 45, scope: !462)
!478 = !DILocation(line: 127, column: 53, scope: !462)
!479 = !DILocation(line: 127, column: 40, scope: !462)
!480 = !DILocation(line: 127, column: 32, scope: !462)
!481 = !DILocation(line: 127, column: 2, scope: !462)
