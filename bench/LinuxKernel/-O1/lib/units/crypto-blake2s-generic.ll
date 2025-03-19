; ModuleID = 'lib/crypto/blake2s-generic.c'
source_filename = "lib/crypto/blake2s-generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blake2s_compress_generic: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad blake2s_compress_generic ; .previous"

%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"lib/crypto/blake2s-generic.c\00", align 1, !dbg !0
@blake2s_sigma = internal constant [10 x [16 x i8]] [[16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] c"\0E\0A\04\08\09\0F\0D\06\01\0C\00\02\0B\07\05\03", [16 x i8] c"\0B\08\0C\00\05\02\0F\0D\0A\0E\03\06\07\01\09\04", [16 x i8] c"\07\09\03\01\0D\0C\0B\0E\02\06\05\0A\04\00\0F\08", [16 x i8] c"\09\00\05\07\02\04\0A\0F\0E\01\0B\0C\06\08\03\0D", [16 x i8] c"\02\0C\06\0A\00\0B\08\03\04\0D\07\05\0F\0E\01\09", [16 x i8] c"\0C\05\01\0F\0E\0D\04\0A\00\07\06\03\09\02\08\0B", [16 x i8] c"\0D\0B\07\0E\0C\01\03\09\05\00\0F\04\08\06\02\0A", [16 x i8] c"\06\0F\0E\09\0B\03\00\08\0C\02\0D\07\01\04\0A\05", [16 x i8] c"\0A\02\08\04\07\06\01\05\0F\0B\09\0E\03\0C\0D\00"], align 16, !dbg !7
@__UNIQUE_ID___addressable_blake2s_compress_generic3 = internal global ptr @blake2s_compress_generic, section ".discard.addressable", align 8, !dbg !36
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_blake2s_compress_generic3], section "llvm.metadata"

@blake2s_compress = weak hidden alias void (ptr, ptr, i64, i32), ptr @blake2s_compress_generic

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blake2s_compress_generic(ptr noundef %state, ptr noundef %block, i64 noundef %nblocks, i32 noundef %inc) #0 align 16 !dbg !57 {
entry:
  %state.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %nblocks.addr = alloca i64, align 8
  %inc.addr = alloca i32, align 4
  %m = alloca [16 x i32], align 16
  %v = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !89, metadata !DIExpression()), !dbg !103
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !90, metadata !DIExpression()), !dbg !104
  store i64 %nblocks, ptr %nblocks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nblocks.addr, metadata !91, metadata !DIExpression()), !dbg !105
  store i32 %inc, ptr %inc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %inc.addr, metadata !92, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 64, ptr %m) #6, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %m, metadata !93, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 64, ptr %v) #6, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %v, metadata !96, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %i, metadata !97, metadata !DIExpression()), !dbg !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !98, metadata !DIExpression()), !dbg !113
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !113
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !114
  %tobool = icmp ne i32 %0, 0, !dbg !114
  %lnot = xor i1 %tobool, true, !dbg !114
  %lnot1 = xor i1 %lnot, true, !dbg !114
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !114
  %conv = sext i32 %lnot.ext to i64, !dbg !114
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !114
  %tobool2 = icmp ne i64 %expval, 0, !dbg !114
  br i1 %tobool2, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !114

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !100, metadata !DIExpression()), !dbg !115
  store i32 2305, ptr %__flags, align 4, !dbg !115
  br label %do.body3, !dbg !115

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !116

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !116

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !115

do.body4:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !118
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 51, i32 %1, i64 12) #6, !dbg !118, !srcloc !120
  br label %do.cond5, !dbg !118

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !118

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !115

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !121

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !121

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !114
  br label %do.cond10, !dbg !115

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !115

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !115

if.end:                                           ; preds = %do.end11, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !113
  %tobool12 = icmp ne i32 %2, 0, !dbg !113
  %lnot13 = xor i1 %tobool12, true, !dbg !113
  %lnot15 = xor i1 %lnot13, true, !dbg !113
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !113
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !113
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !113
  store i64 %expval18, ptr %tmp, align 8, !dbg !114
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !123
  %3 = load i64, ptr %tmp, align 8, !dbg !113
  br label %while.cond, !dbg !124

while.cond:                                       ; preds = %for.end, %if.end
  %4 = load i64, ptr %nblocks.addr, align 8, !dbg !125
  %cmp = icmp ugt i64 %4, 0, !dbg !126
  br i1 %cmp, label %while.body, label %while.end, !dbg !124

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %state.addr, align 8, !dbg !127
  %6 = load i32, ptr %inc.addr, align 4, !dbg !129
  call void @blake2s_increment_counter(ptr noundef %5, i32 noundef %6) #7, !dbg !130
  %arraydecay = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 0, !dbg !131
  %7 = load ptr, ptr %block.addr, align 8, !dbg !132
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %7, i64 64, i1 false), !dbg !131
  %arraydecay20 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 0, !dbg !133
  call void @le32_to_cpu_array(ptr noundef %arraydecay20, i32 noundef 16) #7, !dbg !134
  %arraydecay21 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0, !dbg !135
  %8 = load ptr, ptr %state.addr, align 8, !dbg !136
  %h = getelementptr inbounds %struct.blake2s_state, ptr %8, i32 0, i32 0, !dbg !137
  %arraydecay22 = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 0, !dbg !135
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay21, ptr align 4 %arraydecay22, i64 32, i1 false), !dbg !135
  %arrayidx = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !138
  store i32 1779033703, ptr %arrayidx, align 16, !dbg !139
  %arrayidx23 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !140
  store i32 -1150833019, ptr %arrayidx23, align 4, !dbg !141
  %arrayidx24 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !142
  store i32 1013904242, ptr %arrayidx24, align 8, !dbg !143
  %arrayidx25 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !144
  store i32 -1521486534, ptr %arrayidx25, align 4, !dbg !145
  %9 = load ptr, ptr %state.addr, align 8, !dbg !146
  %t = getelementptr inbounds %struct.blake2s_state, ptr %9, i32 0, i32 1, !dbg !147
  %arrayidx26 = getelementptr [2 x i32], ptr %t, i64 0, i64 0, !dbg !146
  %10 = load i32, ptr %arrayidx26, align 4, !dbg !146
  %xor = xor i32 1359893119, %10, !dbg !148
  %arrayidx27 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !149
  store i32 %xor, ptr %arrayidx27, align 16, !dbg !150
  %11 = load ptr, ptr %state.addr, align 8, !dbg !151
  %t28 = getelementptr inbounds %struct.blake2s_state, ptr %11, i32 0, i32 1, !dbg !152
  %arrayidx29 = getelementptr [2 x i32], ptr %t28, i64 0, i64 1, !dbg !151
  %12 = load i32, ptr %arrayidx29, align 4, !dbg !151
  %xor30 = xor i32 -1694144372, %12, !dbg !153
  %arrayidx31 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !154
  store i32 %xor30, ptr %arrayidx31, align 4, !dbg !155
  %13 = load ptr, ptr %state.addr, align 8, !dbg !156
  %f = getelementptr inbounds %struct.blake2s_state, ptr %13, i32 0, i32 2, !dbg !157
  %arrayidx32 = getelementptr [2 x i32], ptr %f, i64 0, i64 0, !dbg !156
  %14 = load i32, ptr %arrayidx32, align 4, !dbg !156
  %xor33 = xor i32 528734635, %14, !dbg !158
  %arrayidx34 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !159
  store i32 %xor33, ptr %arrayidx34, align 8, !dbg !160
  %15 = load ptr, ptr %state.addr, align 8, !dbg !161
  %f35 = getelementptr inbounds %struct.blake2s_state, ptr %15, i32 0, i32 2, !dbg !162
  %arrayidx36 = getelementptr [2 x i32], ptr %f35, i64 0, i64 1, !dbg !161
  %16 = load i32, ptr %arrayidx36, align 4, !dbg !161
  %xor37 = xor i32 1541459225, %16, !dbg !163
  %arrayidx38 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !164
  store i32 %xor37, ptr %arrayidx38, align 4, !dbg !165
  br label %do.body39, !dbg !166

do.body39:                                        ; preds = %while.body
  br label %do.body40, !dbg !167

do.body40:                                        ; preds = %do.body39
  %arrayidx41 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !169
  %17 = load i32, ptr %arrayidx41, align 16, !dbg !169
  %18 = load i8, ptr @blake2s_sigma, align 16, !dbg !169
  %idxprom = zext i8 %18 to i64, !dbg !169
  %arrayidx42 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom, !dbg !169
  %19 = load i32, ptr %arrayidx42, align 4, !dbg !169
  %add = add i32 %17, %19, !dbg !169
  %arrayidx43 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !169
  %20 = load i32, ptr %arrayidx43, align 16, !dbg !169
  %add44 = add i32 %20, %add, !dbg !169
  store i32 %add44, ptr %arrayidx43, align 16, !dbg !169
  %arrayidx45 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !169
  %21 = load i32, ptr %arrayidx45, align 16, !dbg !169
  %arrayidx46 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !169
  %22 = load i32, ptr %arrayidx46, align 16, !dbg !169
  %xor47 = xor i32 %21, %22, !dbg !169
  %call = call i32 @ror32(i32 noundef %xor47, i32 noundef 16) #7, !dbg !169
  %arrayidx48 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !169
  store i32 %call, ptr %arrayidx48, align 16, !dbg !169
  %arrayidx49 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !169
  %23 = load i32, ptr %arrayidx49, align 16, !dbg !169
  %arrayidx50 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !169
  %24 = load i32, ptr %arrayidx50, align 16, !dbg !169
  %add51 = add i32 %24, %23, !dbg !169
  store i32 %add51, ptr %arrayidx50, align 16, !dbg !169
  %arrayidx52 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !169
  %25 = load i32, ptr %arrayidx52, align 16, !dbg !169
  %arrayidx53 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !169
  %26 = load i32, ptr %arrayidx53, align 16, !dbg !169
  %xor54 = xor i32 %25, %26, !dbg !169
  %call55 = call i32 @ror32(i32 noundef %xor54, i32 noundef 12) #7, !dbg !169
  %arrayidx56 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !169
  store i32 %call55, ptr %arrayidx56, align 16, !dbg !169
  %arrayidx57 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !169
  %27 = load i32, ptr %arrayidx57, align 16, !dbg !169
  %28 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 1), align 1, !dbg !169
  %idxprom58 = zext i8 %28 to i64, !dbg !169
  %arrayidx59 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom58, !dbg !169
  %29 = load i32, ptr %arrayidx59, align 4, !dbg !169
  %add60 = add i32 %27, %29, !dbg !169
  %arrayidx61 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !169
  %30 = load i32, ptr %arrayidx61, align 16, !dbg !169
  %add62 = add i32 %30, %add60, !dbg !169
  store i32 %add62, ptr %arrayidx61, align 16, !dbg !169
  %arrayidx63 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !169
  %31 = load i32, ptr %arrayidx63, align 16, !dbg !169
  %arrayidx64 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !169
  %32 = load i32, ptr %arrayidx64, align 16, !dbg !169
  %xor65 = xor i32 %31, %32, !dbg !169
  %call66 = call i32 @ror32(i32 noundef %xor65, i32 noundef 8) #7, !dbg !169
  %arrayidx67 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !169
  store i32 %call66, ptr %arrayidx67, align 16, !dbg !169
  %arrayidx68 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !169
  %33 = load i32, ptr %arrayidx68, align 16, !dbg !169
  %arrayidx69 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !169
  %34 = load i32, ptr %arrayidx69, align 16, !dbg !169
  %add70 = add i32 %34, %33, !dbg !169
  store i32 %add70, ptr %arrayidx69, align 16, !dbg !169
  %arrayidx71 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !169
  %35 = load i32, ptr %arrayidx71, align 16, !dbg !169
  %arrayidx72 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !169
  %36 = load i32, ptr %arrayidx72, align 16, !dbg !169
  %xor73 = xor i32 %35, %36, !dbg !169
  %call74 = call i32 @ror32(i32 noundef %xor73, i32 noundef 7) #7, !dbg !169
  %arrayidx75 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !169
  store i32 %call74, ptr %arrayidx75, align 16, !dbg !169
  br label %do.cond76, !dbg !169

do.cond76:                                        ; preds = %do.body40
  br label %do.end77, !dbg !169

do.end77:                                         ; preds = %do.cond76
  br label %do.body78, !dbg !167

do.body78:                                        ; preds = %do.end77
  %arrayidx79 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !171
  %37 = load i32, ptr %arrayidx79, align 4, !dbg !171
  %38 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 2), align 2, !dbg !171
  %idxprom80 = zext i8 %38 to i64, !dbg !171
  %arrayidx81 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom80, !dbg !171
  %39 = load i32, ptr %arrayidx81, align 4, !dbg !171
  %add82 = add i32 %37, %39, !dbg !171
  %arrayidx83 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !171
  %40 = load i32, ptr %arrayidx83, align 4, !dbg !171
  %add84 = add i32 %40, %add82, !dbg !171
  store i32 %add84, ptr %arrayidx83, align 4, !dbg !171
  %arrayidx85 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !171
  %41 = load i32, ptr %arrayidx85, align 4, !dbg !171
  %arrayidx86 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !171
  %42 = load i32, ptr %arrayidx86, align 4, !dbg !171
  %xor87 = xor i32 %41, %42, !dbg !171
  %call88 = call i32 @ror32(i32 noundef %xor87, i32 noundef 16) #7, !dbg !171
  %arrayidx89 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !171
  store i32 %call88, ptr %arrayidx89, align 4, !dbg !171
  %arrayidx90 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !171
  %43 = load i32, ptr %arrayidx90, align 4, !dbg !171
  %arrayidx91 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !171
  %44 = load i32, ptr %arrayidx91, align 4, !dbg !171
  %add92 = add i32 %44, %43, !dbg !171
  store i32 %add92, ptr %arrayidx91, align 4, !dbg !171
  %arrayidx93 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !171
  %45 = load i32, ptr %arrayidx93, align 4, !dbg !171
  %arrayidx94 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !171
  %46 = load i32, ptr %arrayidx94, align 4, !dbg !171
  %xor95 = xor i32 %45, %46, !dbg !171
  %call96 = call i32 @ror32(i32 noundef %xor95, i32 noundef 12) #7, !dbg !171
  %arrayidx97 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !171
  store i32 %call96, ptr %arrayidx97, align 4, !dbg !171
  %arrayidx98 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !171
  %47 = load i32, ptr %arrayidx98, align 4, !dbg !171
  %48 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 3), align 1, !dbg !171
  %idxprom99 = zext i8 %48 to i64, !dbg !171
  %arrayidx100 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom99, !dbg !171
  %49 = load i32, ptr %arrayidx100, align 4, !dbg !171
  %add101 = add i32 %47, %49, !dbg !171
  %arrayidx102 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !171
  %50 = load i32, ptr %arrayidx102, align 4, !dbg !171
  %add103 = add i32 %50, %add101, !dbg !171
  store i32 %add103, ptr %arrayidx102, align 4, !dbg !171
  %arrayidx104 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !171
  %51 = load i32, ptr %arrayidx104, align 4, !dbg !171
  %arrayidx105 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !171
  %52 = load i32, ptr %arrayidx105, align 4, !dbg !171
  %xor106 = xor i32 %51, %52, !dbg !171
  %call107 = call i32 @ror32(i32 noundef %xor106, i32 noundef 8) #7, !dbg !171
  %arrayidx108 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !171
  store i32 %call107, ptr %arrayidx108, align 4, !dbg !171
  %arrayidx109 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !171
  %53 = load i32, ptr %arrayidx109, align 4, !dbg !171
  %arrayidx110 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !171
  %54 = load i32, ptr %arrayidx110, align 4, !dbg !171
  %add111 = add i32 %54, %53, !dbg !171
  store i32 %add111, ptr %arrayidx110, align 4, !dbg !171
  %arrayidx112 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !171
  %55 = load i32, ptr %arrayidx112, align 4, !dbg !171
  %arrayidx113 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !171
  %56 = load i32, ptr %arrayidx113, align 4, !dbg !171
  %xor114 = xor i32 %55, %56, !dbg !171
  %call115 = call i32 @ror32(i32 noundef %xor114, i32 noundef 7) #7, !dbg !171
  %arrayidx116 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !171
  store i32 %call115, ptr %arrayidx116, align 4, !dbg !171
  br label %do.cond117, !dbg !171

do.cond117:                                       ; preds = %do.body78
  br label %do.end118, !dbg !171

do.end118:                                        ; preds = %do.cond117
  br label %do.body119, !dbg !167

do.body119:                                       ; preds = %do.end118
  %arrayidx120 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !173
  %57 = load i32, ptr %arrayidx120, align 8, !dbg !173
  %58 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 4), align 4, !dbg !173
  %idxprom121 = zext i8 %58 to i64, !dbg !173
  %arrayidx122 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom121, !dbg !173
  %59 = load i32, ptr %arrayidx122, align 4, !dbg !173
  %add123 = add i32 %57, %59, !dbg !173
  %arrayidx124 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !173
  %60 = load i32, ptr %arrayidx124, align 8, !dbg !173
  %add125 = add i32 %60, %add123, !dbg !173
  store i32 %add125, ptr %arrayidx124, align 8, !dbg !173
  %arrayidx126 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !173
  %61 = load i32, ptr %arrayidx126, align 8, !dbg !173
  %arrayidx127 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !173
  %62 = load i32, ptr %arrayidx127, align 8, !dbg !173
  %xor128 = xor i32 %61, %62, !dbg !173
  %call129 = call i32 @ror32(i32 noundef %xor128, i32 noundef 16) #7, !dbg !173
  %arrayidx130 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !173
  store i32 %call129, ptr %arrayidx130, align 8, !dbg !173
  %arrayidx131 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !173
  %63 = load i32, ptr %arrayidx131, align 8, !dbg !173
  %arrayidx132 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !173
  %64 = load i32, ptr %arrayidx132, align 8, !dbg !173
  %add133 = add i32 %64, %63, !dbg !173
  store i32 %add133, ptr %arrayidx132, align 8, !dbg !173
  %arrayidx134 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !173
  %65 = load i32, ptr %arrayidx134, align 8, !dbg !173
  %arrayidx135 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !173
  %66 = load i32, ptr %arrayidx135, align 8, !dbg !173
  %xor136 = xor i32 %65, %66, !dbg !173
  %call137 = call i32 @ror32(i32 noundef %xor136, i32 noundef 12) #7, !dbg !173
  %arrayidx138 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !173
  store i32 %call137, ptr %arrayidx138, align 8, !dbg !173
  %arrayidx139 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !173
  %67 = load i32, ptr %arrayidx139, align 8, !dbg !173
  %68 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 5), align 1, !dbg !173
  %idxprom140 = zext i8 %68 to i64, !dbg !173
  %arrayidx141 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom140, !dbg !173
  %69 = load i32, ptr %arrayidx141, align 4, !dbg !173
  %add142 = add i32 %67, %69, !dbg !173
  %arrayidx143 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !173
  %70 = load i32, ptr %arrayidx143, align 8, !dbg !173
  %add144 = add i32 %70, %add142, !dbg !173
  store i32 %add144, ptr %arrayidx143, align 8, !dbg !173
  %arrayidx145 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !173
  %71 = load i32, ptr %arrayidx145, align 8, !dbg !173
  %arrayidx146 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !173
  %72 = load i32, ptr %arrayidx146, align 8, !dbg !173
  %xor147 = xor i32 %71, %72, !dbg !173
  %call148 = call i32 @ror32(i32 noundef %xor147, i32 noundef 8) #7, !dbg !173
  %arrayidx149 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !173
  store i32 %call148, ptr %arrayidx149, align 8, !dbg !173
  %arrayidx150 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !173
  %73 = load i32, ptr %arrayidx150, align 8, !dbg !173
  %arrayidx151 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !173
  %74 = load i32, ptr %arrayidx151, align 8, !dbg !173
  %add152 = add i32 %74, %73, !dbg !173
  store i32 %add152, ptr %arrayidx151, align 8, !dbg !173
  %arrayidx153 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !173
  %75 = load i32, ptr %arrayidx153, align 8, !dbg !173
  %arrayidx154 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !173
  %76 = load i32, ptr %arrayidx154, align 8, !dbg !173
  %xor155 = xor i32 %75, %76, !dbg !173
  %call156 = call i32 @ror32(i32 noundef %xor155, i32 noundef 7) #7, !dbg !173
  %arrayidx157 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !173
  store i32 %call156, ptr %arrayidx157, align 8, !dbg !173
  br label %do.cond158, !dbg !173

do.cond158:                                       ; preds = %do.body119
  br label %do.end159, !dbg !173

do.end159:                                        ; preds = %do.cond158
  br label %do.body160, !dbg !167

do.body160:                                       ; preds = %do.end159
  %arrayidx161 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !175
  %77 = load i32, ptr %arrayidx161, align 4, !dbg !175
  %78 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 6), align 2, !dbg !175
  %idxprom162 = zext i8 %78 to i64, !dbg !175
  %arrayidx163 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom162, !dbg !175
  %79 = load i32, ptr %arrayidx163, align 4, !dbg !175
  %add164 = add i32 %77, %79, !dbg !175
  %arrayidx165 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !175
  %80 = load i32, ptr %arrayidx165, align 4, !dbg !175
  %add166 = add i32 %80, %add164, !dbg !175
  store i32 %add166, ptr %arrayidx165, align 4, !dbg !175
  %arrayidx167 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !175
  %81 = load i32, ptr %arrayidx167, align 4, !dbg !175
  %arrayidx168 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !175
  %82 = load i32, ptr %arrayidx168, align 4, !dbg !175
  %xor169 = xor i32 %81, %82, !dbg !175
  %call170 = call i32 @ror32(i32 noundef %xor169, i32 noundef 16) #7, !dbg !175
  %arrayidx171 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !175
  store i32 %call170, ptr %arrayidx171, align 4, !dbg !175
  %arrayidx172 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !175
  %83 = load i32, ptr %arrayidx172, align 4, !dbg !175
  %arrayidx173 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !175
  %84 = load i32, ptr %arrayidx173, align 4, !dbg !175
  %add174 = add i32 %84, %83, !dbg !175
  store i32 %add174, ptr %arrayidx173, align 4, !dbg !175
  %arrayidx175 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !175
  %85 = load i32, ptr %arrayidx175, align 4, !dbg !175
  %arrayidx176 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !175
  %86 = load i32, ptr %arrayidx176, align 4, !dbg !175
  %xor177 = xor i32 %85, %86, !dbg !175
  %call178 = call i32 @ror32(i32 noundef %xor177, i32 noundef 12) #7, !dbg !175
  %arrayidx179 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !175
  store i32 %call178, ptr %arrayidx179, align 4, !dbg !175
  %arrayidx180 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !175
  %87 = load i32, ptr %arrayidx180, align 4, !dbg !175
  %88 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 7), align 1, !dbg !175
  %idxprom181 = zext i8 %88 to i64, !dbg !175
  %arrayidx182 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom181, !dbg !175
  %89 = load i32, ptr %arrayidx182, align 4, !dbg !175
  %add183 = add i32 %87, %89, !dbg !175
  %arrayidx184 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !175
  %90 = load i32, ptr %arrayidx184, align 4, !dbg !175
  %add185 = add i32 %90, %add183, !dbg !175
  store i32 %add185, ptr %arrayidx184, align 4, !dbg !175
  %arrayidx186 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !175
  %91 = load i32, ptr %arrayidx186, align 4, !dbg !175
  %arrayidx187 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !175
  %92 = load i32, ptr %arrayidx187, align 4, !dbg !175
  %xor188 = xor i32 %91, %92, !dbg !175
  %call189 = call i32 @ror32(i32 noundef %xor188, i32 noundef 8) #7, !dbg !175
  %arrayidx190 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !175
  store i32 %call189, ptr %arrayidx190, align 4, !dbg !175
  %arrayidx191 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !175
  %93 = load i32, ptr %arrayidx191, align 4, !dbg !175
  %arrayidx192 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !175
  %94 = load i32, ptr %arrayidx192, align 4, !dbg !175
  %add193 = add i32 %94, %93, !dbg !175
  store i32 %add193, ptr %arrayidx192, align 4, !dbg !175
  %arrayidx194 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !175
  %95 = load i32, ptr %arrayidx194, align 4, !dbg !175
  %arrayidx195 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !175
  %96 = load i32, ptr %arrayidx195, align 4, !dbg !175
  %xor196 = xor i32 %95, %96, !dbg !175
  %call197 = call i32 @ror32(i32 noundef %xor196, i32 noundef 7) #7, !dbg !175
  %arrayidx198 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !175
  store i32 %call197, ptr %arrayidx198, align 4, !dbg !175
  br label %do.cond199, !dbg !175

do.cond199:                                       ; preds = %do.body160
  br label %do.end200, !dbg !175

do.end200:                                        ; preds = %do.cond199
  br label %do.body201, !dbg !167

do.body201:                                       ; preds = %do.end200
  %arrayidx202 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !177
  %97 = load i32, ptr %arrayidx202, align 4, !dbg !177
  %98 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 8), align 8, !dbg !177
  %idxprom203 = zext i8 %98 to i64, !dbg !177
  %arrayidx204 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom203, !dbg !177
  %99 = load i32, ptr %arrayidx204, align 4, !dbg !177
  %add205 = add i32 %97, %99, !dbg !177
  %arrayidx206 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !177
  %100 = load i32, ptr %arrayidx206, align 16, !dbg !177
  %add207 = add i32 %100, %add205, !dbg !177
  store i32 %add207, ptr %arrayidx206, align 16, !dbg !177
  %arrayidx208 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !177
  %101 = load i32, ptr %arrayidx208, align 4, !dbg !177
  %arrayidx209 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !177
  %102 = load i32, ptr %arrayidx209, align 16, !dbg !177
  %xor210 = xor i32 %101, %102, !dbg !177
  %call211 = call i32 @ror32(i32 noundef %xor210, i32 noundef 16) #7, !dbg !177
  %arrayidx212 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !177
  store i32 %call211, ptr %arrayidx212, align 4, !dbg !177
  %arrayidx213 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !177
  %103 = load i32, ptr %arrayidx213, align 4, !dbg !177
  %arrayidx214 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !177
  %104 = load i32, ptr %arrayidx214, align 8, !dbg !177
  %add215 = add i32 %104, %103, !dbg !177
  store i32 %add215, ptr %arrayidx214, align 8, !dbg !177
  %arrayidx216 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !177
  %105 = load i32, ptr %arrayidx216, align 4, !dbg !177
  %arrayidx217 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !177
  %106 = load i32, ptr %arrayidx217, align 8, !dbg !177
  %xor218 = xor i32 %105, %106, !dbg !177
  %call219 = call i32 @ror32(i32 noundef %xor218, i32 noundef 12) #7, !dbg !177
  %arrayidx220 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !177
  store i32 %call219, ptr %arrayidx220, align 4, !dbg !177
  %arrayidx221 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !177
  %107 = load i32, ptr %arrayidx221, align 4, !dbg !177
  %108 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 9), align 1, !dbg !177
  %idxprom222 = zext i8 %108 to i64, !dbg !177
  %arrayidx223 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom222, !dbg !177
  %109 = load i32, ptr %arrayidx223, align 4, !dbg !177
  %add224 = add i32 %107, %109, !dbg !177
  %arrayidx225 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !177
  %110 = load i32, ptr %arrayidx225, align 16, !dbg !177
  %add226 = add i32 %110, %add224, !dbg !177
  store i32 %add226, ptr %arrayidx225, align 16, !dbg !177
  %arrayidx227 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !177
  %111 = load i32, ptr %arrayidx227, align 4, !dbg !177
  %arrayidx228 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !177
  %112 = load i32, ptr %arrayidx228, align 16, !dbg !177
  %xor229 = xor i32 %111, %112, !dbg !177
  %call230 = call i32 @ror32(i32 noundef %xor229, i32 noundef 8) #7, !dbg !177
  %arrayidx231 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !177
  store i32 %call230, ptr %arrayidx231, align 4, !dbg !177
  %arrayidx232 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !177
  %113 = load i32, ptr %arrayidx232, align 4, !dbg !177
  %arrayidx233 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !177
  %114 = load i32, ptr %arrayidx233, align 8, !dbg !177
  %add234 = add i32 %114, %113, !dbg !177
  store i32 %add234, ptr %arrayidx233, align 8, !dbg !177
  %arrayidx235 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !177
  %115 = load i32, ptr %arrayidx235, align 4, !dbg !177
  %arrayidx236 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !177
  %116 = load i32, ptr %arrayidx236, align 8, !dbg !177
  %xor237 = xor i32 %115, %116, !dbg !177
  %call238 = call i32 @ror32(i32 noundef %xor237, i32 noundef 7) #7, !dbg !177
  %arrayidx239 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !177
  store i32 %call238, ptr %arrayidx239, align 4, !dbg !177
  br label %do.cond240, !dbg !177

do.cond240:                                       ; preds = %do.body201
  br label %do.end241, !dbg !177

do.end241:                                        ; preds = %do.cond240
  br label %do.body242, !dbg !167

do.body242:                                       ; preds = %do.end241
  %arrayidx243 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !179
  %117 = load i32, ptr %arrayidx243, align 8, !dbg !179
  %118 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 10), align 2, !dbg !179
  %idxprom244 = zext i8 %118 to i64, !dbg !179
  %arrayidx245 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom244, !dbg !179
  %119 = load i32, ptr %arrayidx245, align 4, !dbg !179
  %add246 = add i32 %117, %119, !dbg !179
  %arrayidx247 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !179
  %120 = load i32, ptr %arrayidx247, align 4, !dbg !179
  %add248 = add i32 %120, %add246, !dbg !179
  store i32 %add248, ptr %arrayidx247, align 4, !dbg !179
  %arrayidx249 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !179
  %121 = load i32, ptr %arrayidx249, align 16, !dbg !179
  %arrayidx250 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !179
  %122 = load i32, ptr %arrayidx250, align 4, !dbg !179
  %xor251 = xor i32 %121, %122, !dbg !179
  %call252 = call i32 @ror32(i32 noundef %xor251, i32 noundef 16) #7, !dbg !179
  %arrayidx253 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !179
  store i32 %call252, ptr %arrayidx253, align 16, !dbg !179
  %arrayidx254 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !179
  %123 = load i32, ptr %arrayidx254, align 16, !dbg !179
  %arrayidx255 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !179
  %124 = load i32, ptr %arrayidx255, align 4, !dbg !179
  %add256 = add i32 %124, %123, !dbg !179
  store i32 %add256, ptr %arrayidx255, align 4, !dbg !179
  %arrayidx257 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !179
  %125 = load i32, ptr %arrayidx257, align 8, !dbg !179
  %arrayidx258 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !179
  %126 = load i32, ptr %arrayidx258, align 4, !dbg !179
  %xor259 = xor i32 %125, %126, !dbg !179
  %call260 = call i32 @ror32(i32 noundef %xor259, i32 noundef 12) #7, !dbg !179
  %arrayidx261 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !179
  store i32 %call260, ptr %arrayidx261, align 8, !dbg !179
  %arrayidx262 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !179
  %127 = load i32, ptr %arrayidx262, align 8, !dbg !179
  %128 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 11), align 1, !dbg !179
  %idxprom263 = zext i8 %128 to i64, !dbg !179
  %arrayidx264 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom263, !dbg !179
  %129 = load i32, ptr %arrayidx264, align 4, !dbg !179
  %add265 = add i32 %127, %129, !dbg !179
  %arrayidx266 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !179
  %130 = load i32, ptr %arrayidx266, align 4, !dbg !179
  %add267 = add i32 %130, %add265, !dbg !179
  store i32 %add267, ptr %arrayidx266, align 4, !dbg !179
  %arrayidx268 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !179
  %131 = load i32, ptr %arrayidx268, align 16, !dbg !179
  %arrayidx269 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !179
  %132 = load i32, ptr %arrayidx269, align 4, !dbg !179
  %xor270 = xor i32 %131, %132, !dbg !179
  %call271 = call i32 @ror32(i32 noundef %xor270, i32 noundef 8) #7, !dbg !179
  %arrayidx272 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !179
  store i32 %call271, ptr %arrayidx272, align 16, !dbg !179
  %arrayidx273 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !179
  %133 = load i32, ptr %arrayidx273, align 16, !dbg !179
  %arrayidx274 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !179
  %134 = load i32, ptr %arrayidx274, align 4, !dbg !179
  %add275 = add i32 %134, %133, !dbg !179
  store i32 %add275, ptr %arrayidx274, align 4, !dbg !179
  %arrayidx276 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !179
  %135 = load i32, ptr %arrayidx276, align 8, !dbg !179
  %arrayidx277 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !179
  %136 = load i32, ptr %arrayidx277, align 4, !dbg !179
  %xor278 = xor i32 %135, %136, !dbg !179
  %call279 = call i32 @ror32(i32 noundef %xor278, i32 noundef 7) #7, !dbg !179
  %arrayidx280 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !179
  store i32 %call279, ptr %arrayidx280, align 8, !dbg !179
  br label %do.cond281, !dbg !179

do.cond281:                                       ; preds = %do.body242
  br label %do.end282, !dbg !179

do.end282:                                        ; preds = %do.cond281
  br label %do.body283, !dbg !167

do.body283:                                       ; preds = %do.end282
  %arrayidx284 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !181
  %137 = load i32, ptr %arrayidx284, align 4, !dbg !181
  %138 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 12), align 4, !dbg !181
  %idxprom285 = zext i8 %138 to i64, !dbg !181
  %arrayidx286 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom285, !dbg !181
  %139 = load i32, ptr %arrayidx286, align 4, !dbg !181
  %add287 = add i32 %137, %139, !dbg !181
  %arrayidx288 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !181
  %140 = load i32, ptr %arrayidx288, align 8, !dbg !181
  %add289 = add i32 %140, %add287, !dbg !181
  store i32 %add289, ptr %arrayidx288, align 8, !dbg !181
  %arrayidx290 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !181
  %141 = load i32, ptr %arrayidx290, align 4, !dbg !181
  %arrayidx291 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !181
  %142 = load i32, ptr %arrayidx291, align 8, !dbg !181
  %xor292 = xor i32 %141, %142, !dbg !181
  %call293 = call i32 @ror32(i32 noundef %xor292, i32 noundef 16) #7, !dbg !181
  %arrayidx294 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !181
  store i32 %call293, ptr %arrayidx294, align 4, !dbg !181
  %arrayidx295 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !181
  %143 = load i32, ptr %arrayidx295, align 4, !dbg !181
  %arrayidx296 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !181
  %144 = load i32, ptr %arrayidx296, align 16, !dbg !181
  %add297 = add i32 %144, %143, !dbg !181
  store i32 %add297, ptr %arrayidx296, align 16, !dbg !181
  %arrayidx298 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !181
  %145 = load i32, ptr %arrayidx298, align 4, !dbg !181
  %arrayidx299 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !181
  %146 = load i32, ptr %arrayidx299, align 16, !dbg !181
  %xor300 = xor i32 %145, %146, !dbg !181
  %call301 = call i32 @ror32(i32 noundef %xor300, i32 noundef 12) #7, !dbg !181
  %arrayidx302 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !181
  store i32 %call301, ptr %arrayidx302, align 4, !dbg !181
  %arrayidx303 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !181
  %147 = load i32, ptr %arrayidx303, align 4, !dbg !181
  %148 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 13), align 1, !dbg !181
  %idxprom304 = zext i8 %148 to i64, !dbg !181
  %arrayidx305 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom304, !dbg !181
  %149 = load i32, ptr %arrayidx305, align 4, !dbg !181
  %add306 = add i32 %147, %149, !dbg !181
  %arrayidx307 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !181
  %150 = load i32, ptr %arrayidx307, align 8, !dbg !181
  %add308 = add i32 %150, %add306, !dbg !181
  store i32 %add308, ptr %arrayidx307, align 8, !dbg !181
  %arrayidx309 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !181
  %151 = load i32, ptr %arrayidx309, align 4, !dbg !181
  %arrayidx310 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !181
  %152 = load i32, ptr %arrayidx310, align 8, !dbg !181
  %xor311 = xor i32 %151, %152, !dbg !181
  %call312 = call i32 @ror32(i32 noundef %xor311, i32 noundef 8) #7, !dbg !181
  %arrayidx313 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !181
  store i32 %call312, ptr %arrayidx313, align 4, !dbg !181
  %arrayidx314 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !181
  %153 = load i32, ptr %arrayidx314, align 4, !dbg !181
  %arrayidx315 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !181
  %154 = load i32, ptr %arrayidx315, align 16, !dbg !181
  %add316 = add i32 %154, %153, !dbg !181
  store i32 %add316, ptr %arrayidx315, align 16, !dbg !181
  %arrayidx317 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !181
  %155 = load i32, ptr %arrayidx317, align 4, !dbg !181
  %arrayidx318 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !181
  %156 = load i32, ptr %arrayidx318, align 16, !dbg !181
  %xor319 = xor i32 %155, %156, !dbg !181
  %call320 = call i32 @ror32(i32 noundef %xor319, i32 noundef 7) #7, !dbg !181
  %arrayidx321 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !181
  store i32 %call320, ptr %arrayidx321, align 4, !dbg !181
  br label %do.cond322, !dbg !181

do.cond322:                                       ; preds = %do.body283
  br label %do.end323, !dbg !181

do.end323:                                        ; preds = %do.cond322
  br label %do.body324, !dbg !167

do.body324:                                       ; preds = %do.end323
  %arrayidx325 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !183
  %157 = load i32, ptr %arrayidx325, align 16, !dbg !183
  %158 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 14), align 2, !dbg !183
  %idxprom326 = zext i8 %158 to i64, !dbg !183
  %arrayidx327 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom326, !dbg !183
  %159 = load i32, ptr %arrayidx327, align 4, !dbg !183
  %add328 = add i32 %157, %159, !dbg !183
  %arrayidx329 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !183
  %160 = load i32, ptr %arrayidx329, align 4, !dbg !183
  %add330 = add i32 %160, %add328, !dbg !183
  store i32 %add330, ptr %arrayidx329, align 4, !dbg !183
  %arrayidx331 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !183
  %161 = load i32, ptr %arrayidx331, align 8, !dbg !183
  %arrayidx332 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !183
  %162 = load i32, ptr %arrayidx332, align 4, !dbg !183
  %xor333 = xor i32 %161, %162, !dbg !183
  %call334 = call i32 @ror32(i32 noundef %xor333, i32 noundef 16) #7, !dbg !183
  %arrayidx335 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !183
  store i32 %call334, ptr %arrayidx335, align 8, !dbg !183
  %arrayidx336 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !183
  %163 = load i32, ptr %arrayidx336, align 8, !dbg !183
  %arrayidx337 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !183
  %164 = load i32, ptr %arrayidx337, align 4, !dbg !183
  %add338 = add i32 %164, %163, !dbg !183
  store i32 %add338, ptr %arrayidx337, align 4, !dbg !183
  %arrayidx339 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !183
  %165 = load i32, ptr %arrayidx339, align 16, !dbg !183
  %arrayidx340 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !183
  %166 = load i32, ptr %arrayidx340, align 4, !dbg !183
  %xor341 = xor i32 %165, %166, !dbg !183
  %call342 = call i32 @ror32(i32 noundef %xor341, i32 noundef 12) #7, !dbg !183
  %arrayidx343 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !183
  store i32 %call342, ptr %arrayidx343, align 16, !dbg !183
  %arrayidx344 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !183
  %167 = load i32, ptr %arrayidx344, align 16, !dbg !183
  %168 = load i8, ptr getelementptr ([16 x i8], ptr @blake2s_sigma, i64 0, i64 15), align 1, !dbg !183
  %idxprom345 = zext i8 %168 to i64, !dbg !183
  %arrayidx346 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom345, !dbg !183
  %169 = load i32, ptr %arrayidx346, align 4, !dbg !183
  %add347 = add i32 %167, %169, !dbg !183
  %arrayidx348 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !183
  %170 = load i32, ptr %arrayidx348, align 4, !dbg !183
  %add349 = add i32 %170, %add347, !dbg !183
  store i32 %add349, ptr %arrayidx348, align 4, !dbg !183
  %arrayidx350 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !183
  %171 = load i32, ptr %arrayidx350, align 8, !dbg !183
  %arrayidx351 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !183
  %172 = load i32, ptr %arrayidx351, align 4, !dbg !183
  %xor352 = xor i32 %171, %172, !dbg !183
  %call353 = call i32 @ror32(i32 noundef %xor352, i32 noundef 8) #7, !dbg !183
  %arrayidx354 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !183
  store i32 %call353, ptr %arrayidx354, align 8, !dbg !183
  %arrayidx355 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !183
  %173 = load i32, ptr %arrayidx355, align 8, !dbg !183
  %arrayidx356 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !183
  %174 = load i32, ptr %arrayidx356, align 4, !dbg !183
  %add357 = add i32 %174, %173, !dbg !183
  store i32 %add357, ptr %arrayidx356, align 4, !dbg !183
  %arrayidx358 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !183
  %175 = load i32, ptr %arrayidx358, align 16, !dbg !183
  %arrayidx359 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !183
  %176 = load i32, ptr %arrayidx359, align 4, !dbg !183
  %xor360 = xor i32 %175, %176, !dbg !183
  %call361 = call i32 @ror32(i32 noundef %xor360, i32 noundef 7) #7, !dbg !183
  %arrayidx362 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !183
  store i32 %call361, ptr %arrayidx362, align 16, !dbg !183
  br label %do.cond363, !dbg !183

do.cond363:                                       ; preds = %do.body324
  br label %do.end364, !dbg !183

do.end364:                                        ; preds = %do.cond363
  br label %do.cond365, !dbg !167

do.cond365:                                       ; preds = %do.end364
  br label %do.end366, !dbg !167

do.end366:                                        ; preds = %do.cond365
  br label %do.body367, !dbg !185

do.body367:                                       ; preds = %do.end366
  br label %do.body368, !dbg !186

do.body368:                                       ; preds = %do.body367
  %arrayidx369 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !188
  %177 = load i32, ptr %arrayidx369, align 16, !dbg !188
  %178 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1), align 16, !dbg !188
  %idxprom370 = zext i8 %178 to i64, !dbg !188
  %arrayidx371 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom370, !dbg !188
  %179 = load i32, ptr %arrayidx371, align 4, !dbg !188
  %add372 = add i32 %177, %179, !dbg !188
  %arrayidx373 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !188
  %180 = load i32, ptr %arrayidx373, align 16, !dbg !188
  %add374 = add i32 %180, %add372, !dbg !188
  store i32 %add374, ptr %arrayidx373, align 16, !dbg !188
  %arrayidx375 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !188
  %181 = load i32, ptr %arrayidx375, align 16, !dbg !188
  %arrayidx376 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !188
  %182 = load i32, ptr %arrayidx376, align 16, !dbg !188
  %xor377 = xor i32 %181, %182, !dbg !188
  %call378 = call i32 @ror32(i32 noundef %xor377, i32 noundef 16) #7, !dbg !188
  %arrayidx379 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !188
  store i32 %call378, ptr %arrayidx379, align 16, !dbg !188
  %arrayidx380 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !188
  %183 = load i32, ptr %arrayidx380, align 16, !dbg !188
  %arrayidx381 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !188
  %184 = load i32, ptr %arrayidx381, align 16, !dbg !188
  %add382 = add i32 %184, %183, !dbg !188
  store i32 %add382, ptr %arrayidx381, align 16, !dbg !188
  %arrayidx383 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !188
  %185 = load i32, ptr %arrayidx383, align 16, !dbg !188
  %arrayidx384 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !188
  %186 = load i32, ptr %arrayidx384, align 16, !dbg !188
  %xor385 = xor i32 %185, %186, !dbg !188
  %call386 = call i32 @ror32(i32 noundef %xor385, i32 noundef 12) #7, !dbg !188
  %arrayidx387 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !188
  store i32 %call386, ptr %arrayidx387, align 16, !dbg !188
  %arrayidx388 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !188
  %187 = load i32, ptr %arrayidx388, align 16, !dbg !188
  %188 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 1), align 1, !dbg !188
  %idxprom389 = zext i8 %188 to i64, !dbg !188
  %arrayidx390 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom389, !dbg !188
  %189 = load i32, ptr %arrayidx390, align 4, !dbg !188
  %add391 = add i32 %187, %189, !dbg !188
  %arrayidx392 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !188
  %190 = load i32, ptr %arrayidx392, align 16, !dbg !188
  %add393 = add i32 %190, %add391, !dbg !188
  store i32 %add393, ptr %arrayidx392, align 16, !dbg !188
  %arrayidx394 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !188
  %191 = load i32, ptr %arrayidx394, align 16, !dbg !188
  %arrayidx395 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !188
  %192 = load i32, ptr %arrayidx395, align 16, !dbg !188
  %xor396 = xor i32 %191, %192, !dbg !188
  %call397 = call i32 @ror32(i32 noundef %xor396, i32 noundef 8) #7, !dbg !188
  %arrayidx398 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !188
  store i32 %call397, ptr %arrayidx398, align 16, !dbg !188
  %arrayidx399 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !188
  %193 = load i32, ptr %arrayidx399, align 16, !dbg !188
  %arrayidx400 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !188
  %194 = load i32, ptr %arrayidx400, align 16, !dbg !188
  %add401 = add i32 %194, %193, !dbg !188
  store i32 %add401, ptr %arrayidx400, align 16, !dbg !188
  %arrayidx402 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !188
  %195 = load i32, ptr %arrayidx402, align 16, !dbg !188
  %arrayidx403 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !188
  %196 = load i32, ptr %arrayidx403, align 16, !dbg !188
  %xor404 = xor i32 %195, %196, !dbg !188
  %call405 = call i32 @ror32(i32 noundef %xor404, i32 noundef 7) #7, !dbg !188
  %arrayidx406 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !188
  store i32 %call405, ptr %arrayidx406, align 16, !dbg !188
  br label %do.cond407, !dbg !188

do.cond407:                                       ; preds = %do.body368
  br label %do.end408, !dbg !188

do.end408:                                        ; preds = %do.cond407
  br label %do.body409, !dbg !186

do.body409:                                       ; preds = %do.end408
  %arrayidx410 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !190
  %197 = load i32, ptr %arrayidx410, align 4, !dbg !190
  %198 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 2), align 2, !dbg !190
  %idxprom411 = zext i8 %198 to i64, !dbg !190
  %arrayidx412 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom411, !dbg !190
  %199 = load i32, ptr %arrayidx412, align 4, !dbg !190
  %add413 = add i32 %197, %199, !dbg !190
  %arrayidx414 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !190
  %200 = load i32, ptr %arrayidx414, align 4, !dbg !190
  %add415 = add i32 %200, %add413, !dbg !190
  store i32 %add415, ptr %arrayidx414, align 4, !dbg !190
  %arrayidx416 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !190
  %201 = load i32, ptr %arrayidx416, align 4, !dbg !190
  %arrayidx417 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !190
  %202 = load i32, ptr %arrayidx417, align 4, !dbg !190
  %xor418 = xor i32 %201, %202, !dbg !190
  %call419 = call i32 @ror32(i32 noundef %xor418, i32 noundef 16) #7, !dbg !190
  %arrayidx420 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !190
  store i32 %call419, ptr %arrayidx420, align 4, !dbg !190
  %arrayidx421 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !190
  %203 = load i32, ptr %arrayidx421, align 4, !dbg !190
  %arrayidx422 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !190
  %204 = load i32, ptr %arrayidx422, align 4, !dbg !190
  %add423 = add i32 %204, %203, !dbg !190
  store i32 %add423, ptr %arrayidx422, align 4, !dbg !190
  %arrayidx424 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !190
  %205 = load i32, ptr %arrayidx424, align 4, !dbg !190
  %arrayidx425 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !190
  %206 = load i32, ptr %arrayidx425, align 4, !dbg !190
  %xor426 = xor i32 %205, %206, !dbg !190
  %call427 = call i32 @ror32(i32 noundef %xor426, i32 noundef 12) #7, !dbg !190
  %arrayidx428 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !190
  store i32 %call427, ptr %arrayidx428, align 4, !dbg !190
  %arrayidx429 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !190
  %207 = load i32, ptr %arrayidx429, align 4, !dbg !190
  %208 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 3), align 1, !dbg !190
  %idxprom430 = zext i8 %208 to i64, !dbg !190
  %arrayidx431 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom430, !dbg !190
  %209 = load i32, ptr %arrayidx431, align 4, !dbg !190
  %add432 = add i32 %207, %209, !dbg !190
  %arrayidx433 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !190
  %210 = load i32, ptr %arrayidx433, align 4, !dbg !190
  %add434 = add i32 %210, %add432, !dbg !190
  store i32 %add434, ptr %arrayidx433, align 4, !dbg !190
  %arrayidx435 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !190
  %211 = load i32, ptr %arrayidx435, align 4, !dbg !190
  %arrayidx436 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !190
  %212 = load i32, ptr %arrayidx436, align 4, !dbg !190
  %xor437 = xor i32 %211, %212, !dbg !190
  %call438 = call i32 @ror32(i32 noundef %xor437, i32 noundef 8) #7, !dbg !190
  %arrayidx439 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !190
  store i32 %call438, ptr %arrayidx439, align 4, !dbg !190
  %arrayidx440 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !190
  %213 = load i32, ptr %arrayidx440, align 4, !dbg !190
  %arrayidx441 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !190
  %214 = load i32, ptr %arrayidx441, align 4, !dbg !190
  %add442 = add i32 %214, %213, !dbg !190
  store i32 %add442, ptr %arrayidx441, align 4, !dbg !190
  %arrayidx443 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !190
  %215 = load i32, ptr %arrayidx443, align 4, !dbg !190
  %arrayidx444 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !190
  %216 = load i32, ptr %arrayidx444, align 4, !dbg !190
  %xor445 = xor i32 %215, %216, !dbg !190
  %call446 = call i32 @ror32(i32 noundef %xor445, i32 noundef 7) #7, !dbg !190
  %arrayidx447 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !190
  store i32 %call446, ptr %arrayidx447, align 4, !dbg !190
  br label %do.cond448, !dbg !190

do.cond448:                                       ; preds = %do.body409
  br label %do.end449, !dbg !190

do.end449:                                        ; preds = %do.cond448
  br label %do.body450, !dbg !186

do.body450:                                       ; preds = %do.end449
  %arrayidx451 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !192
  %217 = load i32, ptr %arrayidx451, align 8, !dbg !192
  %218 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 4), align 4, !dbg !192
  %idxprom452 = zext i8 %218 to i64, !dbg !192
  %arrayidx453 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom452, !dbg !192
  %219 = load i32, ptr %arrayidx453, align 4, !dbg !192
  %add454 = add i32 %217, %219, !dbg !192
  %arrayidx455 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !192
  %220 = load i32, ptr %arrayidx455, align 8, !dbg !192
  %add456 = add i32 %220, %add454, !dbg !192
  store i32 %add456, ptr %arrayidx455, align 8, !dbg !192
  %arrayidx457 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !192
  %221 = load i32, ptr %arrayidx457, align 8, !dbg !192
  %arrayidx458 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !192
  %222 = load i32, ptr %arrayidx458, align 8, !dbg !192
  %xor459 = xor i32 %221, %222, !dbg !192
  %call460 = call i32 @ror32(i32 noundef %xor459, i32 noundef 16) #7, !dbg !192
  %arrayidx461 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !192
  store i32 %call460, ptr %arrayidx461, align 8, !dbg !192
  %arrayidx462 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !192
  %223 = load i32, ptr %arrayidx462, align 8, !dbg !192
  %arrayidx463 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !192
  %224 = load i32, ptr %arrayidx463, align 8, !dbg !192
  %add464 = add i32 %224, %223, !dbg !192
  store i32 %add464, ptr %arrayidx463, align 8, !dbg !192
  %arrayidx465 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !192
  %225 = load i32, ptr %arrayidx465, align 8, !dbg !192
  %arrayidx466 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !192
  %226 = load i32, ptr %arrayidx466, align 8, !dbg !192
  %xor467 = xor i32 %225, %226, !dbg !192
  %call468 = call i32 @ror32(i32 noundef %xor467, i32 noundef 12) #7, !dbg !192
  %arrayidx469 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !192
  store i32 %call468, ptr %arrayidx469, align 8, !dbg !192
  %arrayidx470 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !192
  %227 = load i32, ptr %arrayidx470, align 8, !dbg !192
  %228 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 5), align 1, !dbg !192
  %idxprom471 = zext i8 %228 to i64, !dbg !192
  %arrayidx472 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom471, !dbg !192
  %229 = load i32, ptr %arrayidx472, align 4, !dbg !192
  %add473 = add i32 %227, %229, !dbg !192
  %arrayidx474 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !192
  %230 = load i32, ptr %arrayidx474, align 8, !dbg !192
  %add475 = add i32 %230, %add473, !dbg !192
  store i32 %add475, ptr %arrayidx474, align 8, !dbg !192
  %arrayidx476 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !192
  %231 = load i32, ptr %arrayidx476, align 8, !dbg !192
  %arrayidx477 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !192
  %232 = load i32, ptr %arrayidx477, align 8, !dbg !192
  %xor478 = xor i32 %231, %232, !dbg !192
  %call479 = call i32 @ror32(i32 noundef %xor478, i32 noundef 8) #7, !dbg !192
  %arrayidx480 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !192
  store i32 %call479, ptr %arrayidx480, align 8, !dbg !192
  %arrayidx481 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !192
  %233 = load i32, ptr %arrayidx481, align 8, !dbg !192
  %arrayidx482 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !192
  %234 = load i32, ptr %arrayidx482, align 8, !dbg !192
  %add483 = add i32 %234, %233, !dbg !192
  store i32 %add483, ptr %arrayidx482, align 8, !dbg !192
  %arrayidx484 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !192
  %235 = load i32, ptr %arrayidx484, align 8, !dbg !192
  %arrayidx485 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !192
  %236 = load i32, ptr %arrayidx485, align 8, !dbg !192
  %xor486 = xor i32 %235, %236, !dbg !192
  %call487 = call i32 @ror32(i32 noundef %xor486, i32 noundef 7) #7, !dbg !192
  %arrayidx488 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !192
  store i32 %call487, ptr %arrayidx488, align 8, !dbg !192
  br label %do.cond489, !dbg !192

do.cond489:                                       ; preds = %do.body450
  br label %do.end490, !dbg !192

do.end490:                                        ; preds = %do.cond489
  br label %do.body491, !dbg !186

do.body491:                                       ; preds = %do.end490
  %arrayidx492 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !194
  %237 = load i32, ptr %arrayidx492, align 4, !dbg !194
  %238 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 6), align 2, !dbg !194
  %idxprom493 = zext i8 %238 to i64, !dbg !194
  %arrayidx494 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom493, !dbg !194
  %239 = load i32, ptr %arrayidx494, align 4, !dbg !194
  %add495 = add i32 %237, %239, !dbg !194
  %arrayidx496 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !194
  %240 = load i32, ptr %arrayidx496, align 4, !dbg !194
  %add497 = add i32 %240, %add495, !dbg !194
  store i32 %add497, ptr %arrayidx496, align 4, !dbg !194
  %arrayidx498 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !194
  %241 = load i32, ptr %arrayidx498, align 4, !dbg !194
  %arrayidx499 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !194
  %242 = load i32, ptr %arrayidx499, align 4, !dbg !194
  %xor500 = xor i32 %241, %242, !dbg !194
  %call501 = call i32 @ror32(i32 noundef %xor500, i32 noundef 16) #7, !dbg !194
  %arrayidx502 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !194
  store i32 %call501, ptr %arrayidx502, align 4, !dbg !194
  %arrayidx503 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !194
  %243 = load i32, ptr %arrayidx503, align 4, !dbg !194
  %arrayidx504 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !194
  %244 = load i32, ptr %arrayidx504, align 4, !dbg !194
  %add505 = add i32 %244, %243, !dbg !194
  store i32 %add505, ptr %arrayidx504, align 4, !dbg !194
  %arrayidx506 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !194
  %245 = load i32, ptr %arrayidx506, align 4, !dbg !194
  %arrayidx507 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !194
  %246 = load i32, ptr %arrayidx507, align 4, !dbg !194
  %xor508 = xor i32 %245, %246, !dbg !194
  %call509 = call i32 @ror32(i32 noundef %xor508, i32 noundef 12) #7, !dbg !194
  %arrayidx510 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !194
  store i32 %call509, ptr %arrayidx510, align 4, !dbg !194
  %arrayidx511 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !194
  %247 = load i32, ptr %arrayidx511, align 4, !dbg !194
  %248 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 7), align 1, !dbg !194
  %idxprom512 = zext i8 %248 to i64, !dbg !194
  %arrayidx513 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom512, !dbg !194
  %249 = load i32, ptr %arrayidx513, align 4, !dbg !194
  %add514 = add i32 %247, %249, !dbg !194
  %arrayidx515 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !194
  %250 = load i32, ptr %arrayidx515, align 4, !dbg !194
  %add516 = add i32 %250, %add514, !dbg !194
  store i32 %add516, ptr %arrayidx515, align 4, !dbg !194
  %arrayidx517 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !194
  %251 = load i32, ptr %arrayidx517, align 4, !dbg !194
  %arrayidx518 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !194
  %252 = load i32, ptr %arrayidx518, align 4, !dbg !194
  %xor519 = xor i32 %251, %252, !dbg !194
  %call520 = call i32 @ror32(i32 noundef %xor519, i32 noundef 8) #7, !dbg !194
  %arrayidx521 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !194
  store i32 %call520, ptr %arrayidx521, align 4, !dbg !194
  %arrayidx522 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !194
  %253 = load i32, ptr %arrayidx522, align 4, !dbg !194
  %arrayidx523 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !194
  %254 = load i32, ptr %arrayidx523, align 4, !dbg !194
  %add524 = add i32 %254, %253, !dbg !194
  store i32 %add524, ptr %arrayidx523, align 4, !dbg !194
  %arrayidx525 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !194
  %255 = load i32, ptr %arrayidx525, align 4, !dbg !194
  %arrayidx526 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !194
  %256 = load i32, ptr %arrayidx526, align 4, !dbg !194
  %xor527 = xor i32 %255, %256, !dbg !194
  %call528 = call i32 @ror32(i32 noundef %xor527, i32 noundef 7) #7, !dbg !194
  %arrayidx529 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !194
  store i32 %call528, ptr %arrayidx529, align 4, !dbg !194
  br label %do.cond530, !dbg !194

do.cond530:                                       ; preds = %do.body491
  br label %do.end531, !dbg !194

do.end531:                                        ; preds = %do.cond530
  br label %do.body532, !dbg !186

do.body532:                                       ; preds = %do.end531
  %arrayidx533 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !196
  %257 = load i32, ptr %arrayidx533, align 4, !dbg !196
  %258 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 8), align 8, !dbg !196
  %idxprom534 = zext i8 %258 to i64, !dbg !196
  %arrayidx535 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom534, !dbg !196
  %259 = load i32, ptr %arrayidx535, align 4, !dbg !196
  %add536 = add i32 %257, %259, !dbg !196
  %arrayidx537 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !196
  %260 = load i32, ptr %arrayidx537, align 16, !dbg !196
  %add538 = add i32 %260, %add536, !dbg !196
  store i32 %add538, ptr %arrayidx537, align 16, !dbg !196
  %arrayidx539 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !196
  %261 = load i32, ptr %arrayidx539, align 4, !dbg !196
  %arrayidx540 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !196
  %262 = load i32, ptr %arrayidx540, align 16, !dbg !196
  %xor541 = xor i32 %261, %262, !dbg !196
  %call542 = call i32 @ror32(i32 noundef %xor541, i32 noundef 16) #7, !dbg !196
  %arrayidx543 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !196
  store i32 %call542, ptr %arrayidx543, align 4, !dbg !196
  %arrayidx544 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !196
  %263 = load i32, ptr %arrayidx544, align 4, !dbg !196
  %arrayidx545 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !196
  %264 = load i32, ptr %arrayidx545, align 8, !dbg !196
  %add546 = add i32 %264, %263, !dbg !196
  store i32 %add546, ptr %arrayidx545, align 8, !dbg !196
  %arrayidx547 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !196
  %265 = load i32, ptr %arrayidx547, align 4, !dbg !196
  %arrayidx548 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !196
  %266 = load i32, ptr %arrayidx548, align 8, !dbg !196
  %xor549 = xor i32 %265, %266, !dbg !196
  %call550 = call i32 @ror32(i32 noundef %xor549, i32 noundef 12) #7, !dbg !196
  %arrayidx551 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !196
  store i32 %call550, ptr %arrayidx551, align 4, !dbg !196
  %arrayidx552 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !196
  %267 = load i32, ptr %arrayidx552, align 4, !dbg !196
  %268 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 9), align 1, !dbg !196
  %idxprom553 = zext i8 %268 to i64, !dbg !196
  %arrayidx554 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom553, !dbg !196
  %269 = load i32, ptr %arrayidx554, align 4, !dbg !196
  %add555 = add i32 %267, %269, !dbg !196
  %arrayidx556 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !196
  %270 = load i32, ptr %arrayidx556, align 16, !dbg !196
  %add557 = add i32 %270, %add555, !dbg !196
  store i32 %add557, ptr %arrayidx556, align 16, !dbg !196
  %arrayidx558 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !196
  %271 = load i32, ptr %arrayidx558, align 4, !dbg !196
  %arrayidx559 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !196
  %272 = load i32, ptr %arrayidx559, align 16, !dbg !196
  %xor560 = xor i32 %271, %272, !dbg !196
  %call561 = call i32 @ror32(i32 noundef %xor560, i32 noundef 8) #7, !dbg !196
  %arrayidx562 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !196
  store i32 %call561, ptr %arrayidx562, align 4, !dbg !196
  %arrayidx563 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !196
  %273 = load i32, ptr %arrayidx563, align 4, !dbg !196
  %arrayidx564 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !196
  %274 = load i32, ptr %arrayidx564, align 8, !dbg !196
  %add565 = add i32 %274, %273, !dbg !196
  store i32 %add565, ptr %arrayidx564, align 8, !dbg !196
  %arrayidx566 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !196
  %275 = load i32, ptr %arrayidx566, align 4, !dbg !196
  %arrayidx567 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !196
  %276 = load i32, ptr %arrayidx567, align 8, !dbg !196
  %xor568 = xor i32 %275, %276, !dbg !196
  %call569 = call i32 @ror32(i32 noundef %xor568, i32 noundef 7) #7, !dbg !196
  %arrayidx570 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !196
  store i32 %call569, ptr %arrayidx570, align 4, !dbg !196
  br label %do.cond571, !dbg !196

do.cond571:                                       ; preds = %do.body532
  br label %do.end572, !dbg !196

do.end572:                                        ; preds = %do.cond571
  br label %do.body573, !dbg !186

do.body573:                                       ; preds = %do.end572
  %arrayidx574 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !198
  %277 = load i32, ptr %arrayidx574, align 8, !dbg !198
  %278 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 10), align 2, !dbg !198
  %idxprom575 = zext i8 %278 to i64, !dbg !198
  %arrayidx576 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom575, !dbg !198
  %279 = load i32, ptr %arrayidx576, align 4, !dbg !198
  %add577 = add i32 %277, %279, !dbg !198
  %arrayidx578 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !198
  %280 = load i32, ptr %arrayidx578, align 4, !dbg !198
  %add579 = add i32 %280, %add577, !dbg !198
  store i32 %add579, ptr %arrayidx578, align 4, !dbg !198
  %arrayidx580 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !198
  %281 = load i32, ptr %arrayidx580, align 16, !dbg !198
  %arrayidx581 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !198
  %282 = load i32, ptr %arrayidx581, align 4, !dbg !198
  %xor582 = xor i32 %281, %282, !dbg !198
  %call583 = call i32 @ror32(i32 noundef %xor582, i32 noundef 16) #7, !dbg !198
  %arrayidx584 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !198
  store i32 %call583, ptr %arrayidx584, align 16, !dbg !198
  %arrayidx585 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !198
  %283 = load i32, ptr %arrayidx585, align 16, !dbg !198
  %arrayidx586 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !198
  %284 = load i32, ptr %arrayidx586, align 4, !dbg !198
  %add587 = add i32 %284, %283, !dbg !198
  store i32 %add587, ptr %arrayidx586, align 4, !dbg !198
  %arrayidx588 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !198
  %285 = load i32, ptr %arrayidx588, align 8, !dbg !198
  %arrayidx589 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !198
  %286 = load i32, ptr %arrayidx589, align 4, !dbg !198
  %xor590 = xor i32 %285, %286, !dbg !198
  %call591 = call i32 @ror32(i32 noundef %xor590, i32 noundef 12) #7, !dbg !198
  %arrayidx592 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !198
  store i32 %call591, ptr %arrayidx592, align 8, !dbg !198
  %arrayidx593 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !198
  %287 = load i32, ptr %arrayidx593, align 8, !dbg !198
  %288 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 11), align 1, !dbg !198
  %idxprom594 = zext i8 %288 to i64, !dbg !198
  %arrayidx595 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom594, !dbg !198
  %289 = load i32, ptr %arrayidx595, align 4, !dbg !198
  %add596 = add i32 %287, %289, !dbg !198
  %arrayidx597 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !198
  %290 = load i32, ptr %arrayidx597, align 4, !dbg !198
  %add598 = add i32 %290, %add596, !dbg !198
  store i32 %add598, ptr %arrayidx597, align 4, !dbg !198
  %arrayidx599 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !198
  %291 = load i32, ptr %arrayidx599, align 16, !dbg !198
  %arrayidx600 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !198
  %292 = load i32, ptr %arrayidx600, align 4, !dbg !198
  %xor601 = xor i32 %291, %292, !dbg !198
  %call602 = call i32 @ror32(i32 noundef %xor601, i32 noundef 8) #7, !dbg !198
  %arrayidx603 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !198
  store i32 %call602, ptr %arrayidx603, align 16, !dbg !198
  %arrayidx604 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !198
  %293 = load i32, ptr %arrayidx604, align 16, !dbg !198
  %arrayidx605 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !198
  %294 = load i32, ptr %arrayidx605, align 4, !dbg !198
  %add606 = add i32 %294, %293, !dbg !198
  store i32 %add606, ptr %arrayidx605, align 4, !dbg !198
  %arrayidx607 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !198
  %295 = load i32, ptr %arrayidx607, align 8, !dbg !198
  %arrayidx608 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !198
  %296 = load i32, ptr %arrayidx608, align 4, !dbg !198
  %xor609 = xor i32 %295, %296, !dbg !198
  %call610 = call i32 @ror32(i32 noundef %xor609, i32 noundef 7) #7, !dbg !198
  %arrayidx611 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !198
  store i32 %call610, ptr %arrayidx611, align 8, !dbg !198
  br label %do.cond612, !dbg !198

do.cond612:                                       ; preds = %do.body573
  br label %do.end613, !dbg !198

do.end613:                                        ; preds = %do.cond612
  br label %do.body614, !dbg !186

do.body614:                                       ; preds = %do.end613
  %arrayidx615 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !200
  %297 = load i32, ptr %arrayidx615, align 4, !dbg !200
  %298 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 12), align 4, !dbg !200
  %idxprom616 = zext i8 %298 to i64, !dbg !200
  %arrayidx617 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom616, !dbg !200
  %299 = load i32, ptr %arrayidx617, align 4, !dbg !200
  %add618 = add i32 %297, %299, !dbg !200
  %arrayidx619 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !200
  %300 = load i32, ptr %arrayidx619, align 8, !dbg !200
  %add620 = add i32 %300, %add618, !dbg !200
  store i32 %add620, ptr %arrayidx619, align 8, !dbg !200
  %arrayidx621 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !200
  %301 = load i32, ptr %arrayidx621, align 4, !dbg !200
  %arrayidx622 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !200
  %302 = load i32, ptr %arrayidx622, align 8, !dbg !200
  %xor623 = xor i32 %301, %302, !dbg !200
  %call624 = call i32 @ror32(i32 noundef %xor623, i32 noundef 16) #7, !dbg !200
  %arrayidx625 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !200
  store i32 %call624, ptr %arrayidx625, align 4, !dbg !200
  %arrayidx626 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !200
  %303 = load i32, ptr %arrayidx626, align 4, !dbg !200
  %arrayidx627 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !200
  %304 = load i32, ptr %arrayidx627, align 16, !dbg !200
  %add628 = add i32 %304, %303, !dbg !200
  store i32 %add628, ptr %arrayidx627, align 16, !dbg !200
  %arrayidx629 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !200
  %305 = load i32, ptr %arrayidx629, align 4, !dbg !200
  %arrayidx630 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !200
  %306 = load i32, ptr %arrayidx630, align 16, !dbg !200
  %xor631 = xor i32 %305, %306, !dbg !200
  %call632 = call i32 @ror32(i32 noundef %xor631, i32 noundef 12) #7, !dbg !200
  %arrayidx633 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !200
  store i32 %call632, ptr %arrayidx633, align 4, !dbg !200
  %arrayidx634 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !200
  %307 = load i32, ptr %arrayidx634, align 4, !dbg !200
  %308 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 13), align 1, !dbg !200
  %idxprom635 = zext i8 %308 to i64, !dbg !200
  %arrayidx636 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom635, !dbg !200
  %309 = load i32, ptr %arrayidx636, align 4, !dbg !200
  %add637 = add i32 %307, %309, !dbg !200
  %arrayidx638 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !200
  %310 = load i32, ptr %arrayidx638, align 8, !dbg !200
  %add639 = add i32 %310, %add637, !dbg !200
  store i32 %add639, ptr %arrayidx638, align 8, !dbg !200
  %arrayidx640 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !200
  %311 = load i32, ptr %arrayidx640, align 4, !dbg !200
  %arrayidx641 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !200
  %312 = load i32, ptr %arrayidx641, align 8, !dbg !200
  %xor642 = xor i32 %311, %312, !dbg !200
  %call643 = call i32 @ror32(i32 noundef %xor642, i32 noundef 8) #7, !dbg !200
  %arrayidx644 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !200
  store i32 %call643, ptr %arrayidx644, align 4, !dbg !200
  %arrayidx645 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !200
  %313 = load i32, ptr %arrayidx645, align 4, !dbg !200
  %arrayidx646 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !200
  %314 = load i32, ptr %arrayidx646, align 16, !dbg !200
  %add647 = add i32 %314, %313, !dbg !200
  store i32 %add647, ptr %arrayidx646, align 16, !dbg !200
  %arrayidx648 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !200
  %315 = load i32, ptr %arrayidx648, align 4, !dbg !200
  %arrayidx649 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !200
  %316 = load i32, ptr %arrayidx649, align 16, !dbg !200
  %xor650 = xor i32 %315, %316, !dbg !200
  %call651 = call i32 @ror32(i32 noundef %xor650, i32 noundef 7) #7, !dbg !200
  %arrayidx652 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !200
  store i32 %call651, ptr %arrayidx652, align 4, !dbg !200
  br label %do.cond653, !dbg !200

do.cond653:                                       ; preds = %do.body614
  br label %do.end654, !dbg !200

do.end654:                                        ; preds = %do.cond653
  br label %do.body655, !dbg !186

do.body655:                                       ; preds = %do.end654
  %arrayidx656 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !202
  %317 = load i32, ptr %arrayidx656, align 16, !dbg !202
  %318 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 14), align 2, !dbg !202
  %idxprom657 = zext i8 %318 to i64, !dbg !202
  %arrayidx658 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom657, !dbg !202
  %319 = load i32, ptr %arrayidx658, align 4, !dbg !202
  %add659 = add i32 %317, %319, !dbg !202
  %arrayidx660 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !202
  %320 = load i32, ptr %arrayidx660, align 4, !dbg !202
  %add661 = add i32 %320, %add659, !dbg !202
  store i32 %add661, ptr %arrayidx660, align 4, !dbg !202
  %arrayidx662 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !202
  %321 = load i32, ptr %arrayidx662, align 8, !dbg !202
  %arrayidx663 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !202
  %322 = load i32, ptr %arrayidx663, align 4, !dbg !202
  %xor664 = xor i32 %321, %322, !dbg !202
  %call665 = call i32 @ror32(i32 noundef %xor664, i32 noundef 16) #7, !dbg !202
  %arrayidx666 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !202
  store i32 %call665, ptr %arrayidx666, align 8, !dbg !202
  %arrayidx667 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !202
  %323 = load i32, ptr %arrayidx667, align 8, !dbg !202
  %arrayidx668 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !202
  %324 = load i32, ptr %arrayidx668, align 4, !dbg !202
  %add669 = add i32 %324, %323, !dbg !202
  store i32 %add669, ptr %arrayidx668, align 4, !dbg !202
  %arrayidx670 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !202
  %325 = load i32, ptr %arrayidx670, align 16, !dbg !202
  %arrayidx671 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !202
  %326 = load i32, ptr %arrayidx671, align 4, !dbg !202
  %xor672 = xor i32 %325, %326, !dbg !202
  %call673 = call i32 @ror32(i32 noundef %xor672, i32 noundef 12) #7, !dbg !202
  %arrayidx674 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !202
  store i32 %call673, ptr %arrayidx674, align 16, !dbg !202
  %arrayidx675 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !202
  %327 = load i32, ptr %arrayidx675, align 16, !dbg !202
  %328 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 15), align 1, !dbg !202
  %idxprom676 = zext i8 %328 to i64, !dbg !202
  %arrayidx677 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom676, !dbg !202
  %329 = load i32, ptr %arrayidx677, align 4, !dbg !202
  %add678 = add i32 %327, %329, !dbg !202
  %arrayidx679 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !202
  %330 = load i32, ptr %arrayidx679, align 4, !dbg !202
  %add680 = add i32 %330, %add678, !dbg !202
  store i32 %add680, ptr %arrayidx679, align 4, !dbg !202
  %arrayidx681 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !202
  %331 = load i32, ptr %arrayidx681, align 8, !dbg !202
  %arrayidx682 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !202
  %332 = load i32, ptr %arrayidx682, align 4, !dbg !202
  %xor683 = xor i32 %331, %332, !dbg !202
  %call684 = call i32 @ror32(i32 noundef %xor683, i32 noundef 8) #7, !dbg !202
  %arrayidx685 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !202
  store i32 %call684, ptr %arrayidx685, align 8, !dbg !202
  %arrayidx686 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !202
  %333 = load i32, ptr %arrayidx686, align 8, !dbg !202
  %arrayidx687 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !202
  %334 = load i32, ptr %arrayidx687, align 4, !dbg !202
  %add688 = add i32 %334, %333, !dbg !202
  store i32 %add688, ptr %arrayidx687, align 4, !dbg !202
  %arrayidx689 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !202
  %335 = load i32, ptr %arrayidx689, align 16, !dbg !202
  %arrayidx690 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !202
  %336 = load i32, ptr %arrayidx690, align 4, !dbg !202
  %xor691 = xor i32 %335, %336, !dbg !202
  %call692 = call i32 @ror32(i32 noundef %xor691, i32 noundef 7) #7, !dbg !202
  %arrayidx693 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !202
  store i32 %call692, ptr %arrayidx693, align 16, !dbg !202
  br label %do.cond694, !dbg !202

do.cond694:                                       ; preds = %do.body655
  br label %do.end695, !dbg !202

do.end695:                                        ; preds = %do.cond694
  br label %do.cond696, !dbg !186

do.cond696:                                       ; preds = %do.end695
  br label %do.end697, !dbg !186

do.end697:                                        ; preds = %do.cond696
  br label %do.body698, !dbg !204

do.body698:                                       ; preds = %do.end697
  br label %do.body699, !dbg !205

do.body699:                                       ; preds = %do.body698
  %arrayidx700 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !207
  %337 = load i32, ptr %arrayidx700, align 16, !dbg !207
  %338 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2), align 16, !dbg !207
  %idxprom701 = zext i8 %338 to i64, !dbg !207
  %arrayidx702 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom701, !dbg !207
  %339 = load i32, ptr %arrayidx702, align 4, !dbg !207
  %add703 = add i32 %337, %339, !dbg !207
  %arrayidx704 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !207
  %340 = load i32, ptr %arrayidx704, align 16, !dbg !207
  %add705 = add i32 %340, %add703, !dbg !207
  store i32 %add705, ptr %arrayidx704, align 16, !dbg !207
  %arrayidx706 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !207
  %341 = load i32, ptr %arrayidx706, align 16, !dbg !207
  %arrayidx707 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !207
  %342 = load i32, ptr %arrayidx707, align 16, !dbg !207
  %xor708 = xor i32 %341, %342, !dbg !207
  %call709 = call i32 @ror32(i32 noundef %xor708, i32 noundef 16) #7, !dbg !207
  %arrayidx710 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !207
  store i32 %call709, ptr %arrayidx710, align 16, !dbg !207
  %arrayidx711 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !207
  %343 = load i32, ptr %arrayidx711, align 16, !dbg !207
  %arrayidx712 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !207
  %344 = load i32, ptr %arrayidx712, align 16, !dbg !207
  %add713 = add i32 %344, %343, !dbg !207
  store i32 %add713, ptr %arrayidx712, align 16, !dbg !207
  %arrayidx714 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !207
  %345 = load i32, ptr %arrayidx714, align 16, !dbg !207
  %arrayidx715 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !207
  %346 = load i32, ptr %arrayidx715, align 16, !dbg !207
  %xor716 = xor i32 %345, %346, !dbg !207
  %call717 = call i32 @ror32(i32 noundef %xor716, i32 noundef 12) #7, !dbg !207
  %arrayidx718 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !207
  store i32 %call717, ptr %arrayidx718, align 16, !dbg !207
  %arrayidx719 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !207
  %347 = load i32, ptr %arrayidx719, align 16, !dbg !207
  %348 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 1), align 1, !dbg !207
  %idxprom720 = zext i8 %348 to i64, !dbg !207
  %arrayidx721 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom720, !dbg !207
  %349 = load i32, ptr %arrayidx721, align 4, !dbg !207
  %add722 = add i32 %347, %349, !dbg !207
  %arrayidx723 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !207
  %350 = load i32, ptr %arrayidx723, align 16, !dbg !207
  %add724 = add i32 %350, %add722, !dbg !207
  store i32 %add724, ptr %arrayidx723, align 16, !dbg !207
  %arrayidx725 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !207
  %351 = load i32, ptr %arrayidx725, align 16, !dbg !207
  %arrayidx726 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !207
  %352 = load i32, ptr %arrayidx726, align 16, !dbg !207
  %xor727 = xor i32 %351, %352, !dbg !207
  %call728 = call i32 @ror32(i32 noundef %xor727, i32 noundef 8) #7, !dbg !207
  %arrayidx729 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !207
  store i32 %call728, ptr %arrayidx729, align 16, !dbg !207
  %arrayidx730 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !207
  %353 = load i32, ptr %arrayidx730, align 16, !dbg !207
  %arrayidx731 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !207
  %354 = load i32, ptr %arrayidx731, align 16, !dbg !207
  %add732 = add i32 %354, %353, !dbg !207
  store i32 %add732, ptr %arrayidx731, align 16, !dbg !207
  %arrayidx733 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !207
  %355 = load i32, ptr %arrayidx733, align 16, !dbg !207
  %arrayidx734 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !207
  %356 = load i32, ptr %arrayidx734, align 16, !dbg !207
  %xor735 = xor i32 %355, %356, !dbg !207
  %call736 = call i32 @ror32(i32 noundef %xor735, i32 noundef 7) #7, !dbg !207
  %arrayidx737 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !207
  store i32 %call736, ptr %arrayidx737, align 16, !dbg !207
  br label %do.cond738, !dbg !207

do.cond738:                                       ; preds = %do.body699
  br label %do.end739, !dbg !207

do.end739:                                        ; preds = %do.cond738
  br label %do.body740, !dbg !205

do.body740:                                       ; preds = %do.end739
  %arrayidx741 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !209
  %357 = load i32, ptr %arrayidx741, align 4, !dbg !209
  %358 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 2), align 2, !dbg !209
  %idxprom742 = zext i8 %358 to i64, !dbg !209
  %arrayidx743 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom742, !dbg !209
  %359 = load i32, ptr %arrayidx743, align 4, !dbg !209
  %add744 = add i32 %357, %359, !dbg !209
  %arrayidx745 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !209
  %360 = load i32, ptr %arrayidx745, align 4, !dbg !209
  %add746 = add i32 %360, %add744, !dbg !209
  store i32 %add746, ptr %arrayidx745, align 4, !dbg !209
  %arrayidx747 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !209
  %361 = load i32, ptr %arrayidx747, align 4, !dbg !209
  %arrayidx748 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !209
  %362 = load i32, ptr %arrayidx748, align 4, !dbg !209
  %xor749 = xor i32 %361, %362, !dbg !209
  %call750 = call i32 @ror32(i32 noundef %xor749, i32 noundef 16) #7, !dbg !209
  %arrayidx751 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !209
  store i32 %call750, ptr %arrayidx751, align 4, !dbg !209
  %arrayidx752 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !209
  %363 = load i32, ptr %arrayidx752, align 4, !dbg !209
  %arrayidx753 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !209
  %364 = load i32, ptr %arrayidx753, align 4, !dbg !209
  %add754 = add i32 %364, %363, !dbg !209
  store i32 %add754, ptr %arrayidx753, align 4, !dbg !209
  %arrayidx755 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !209
  %365 = load i32, ptr %arrayidx755, align 4, !dbg !209
  %arrayidx756 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !209
  %366 = load i32, ptr %arrayidx756, align 4, !dbg !209
  %xor757 = xor i32 %365, %366, !dbg !209
  %call758 = call i32 @ror32(i32 noundef %xor757, i32 noundef 12) #7, !dbg !209
  %arrayidx759 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !209
  store i32 %call758, ptr %arrayidx759, align 4, !dbg !209
  %arrayidx760 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !209
  %367 = load i32, ptr %arrayidx760, align 4, !dbg !209
  %368 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 3), align 1, !dbg !209
  %idxprom761 = zext i8 %368 to i64, !dbg !209
  %arrayidx762 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom761, !dbg !209
  %369 = load i32, ptr %arrayidx762, align 4, !dbg !209
  %add763 = add i32 %367, %369, !dbg !209
  %arrayidx764 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !209
  %370 = load i32, ptr %arrayidx764, align 4, !dbg !209
  %add765 = add i32 %370, %add763, !dbg !209
  store i32 %add765, ptr %arrayidx764, align 4, !dbg !209
  %arrayidx766 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !209
  %371 = load i32, ptr %arrayidx766, align 4, !dbg !209
  %arrayidx767 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !209
  %372 = load i32, ptr %arrayidx767, align 4, !dbg !209
  %xor768 = xor i32 %371, %372, !dbg !209
  %call769 = call i32 @ror32(i32 noundef %xor768, i32 noundef 8) #7, !dbg !209
  %arrayidx770 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !209
  store i32 %call769, ptr %arrayidx770, align 4, !dbg !209
  %arrayidx771 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !209
  %373 = load i32, ptr %arrayidx771, align 4, !dbg !209
  %arrayidx772 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !209
  %374 = load i32, ptr %arrayidx772, align 4, !dbg !209
  %add773 = add i32 %374, %373, !dbg !209
  store i32 %add773, ptr %arrayidx772, align 4, !dbg !209
  %arrayidx774 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !209
  %375 = load i32, ptr %arrayidx774, align 4, !dbg !209
  %arrayidx775 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !209
  %376 = load i32, ptr %arrayidx775, align 4, !dbg !209
  %xor776 = xor i32 %375, %376, !dbg !209
  %call777 = call i32 @ror32(i32 noundef %xor776, i32 noundef 7) #7, !dbg !209
  %arrayidx778 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !209
  store i32 %call777, ptr %arrayidx778, align 4, !dbg !209
  br label %do.cond779, !dbg !209

do.cond779:                                       ; preds = %do.body740
  br label %do.end780, !dbg !209

do.end780:                                        ; preds = %do.cond779
  br label %do.body781, !dbg !205

do.body781:                                       ; preds = %do.end780
  %arrayidx782 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !211
  %377 = load i32, ptr %arrayidx782, align 8, !dbg !211
  %378 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 4), align 4, !dbg !211
  %idxprom783 = zext i8 %378 to i64, !dbg !211
  %arrayidx784 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom783, !dbg !211
  %379 = load i32, ptr %arrayidx784, align 4, !dbg !211
  %add785 = add i32 %377, %379, !dbg !211
  %arrayidx786 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !211
  %380 = load i32, ptr %arrayidx786, align 8, !dbg !211
  %add787 = add i32 %380, %add785, !dbg !211
  store i32 %add787, ptr %arrayidx786, align 8, !dbg !211
  %arrayidx788 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !211
  %381 = load i32, ptr %arrayidx788, align 8, !dbg !211
  %arrayidx789 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !211
  %382 = load i32, ptr %arrayidx789, align 8, !dbg !211
  %xor790 = xor i32 %381, %382, !dbg !211
  %call791 = call i32 @ror32(i32 noundef %xor790, i32 noundef 16) #7, !dbg !211
  %arrayidx792 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !211
  store i32 %call791, ptr %arrayidx792, align 8, !dbg !211
  %arrayidx793 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !211
  %383 = load i32, ptr %arrayidx793, align 8, !dbg !211
  %arrayidx794 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !211
  %384 = load i32, ptr %arrayidx794, align 8, !dbg !211
  %add795 = add i32 %384, %383, !dbg !211
  store i32 %add795, ptr %arrayidx794, align 8, !dbg !211
  %arrayidx796 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !211
  %385 = load i32, ptr %arrayidx796, align 8, !dbg !211
  %arrayidx797 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !211
  %386 = load i32, ptr %arrayidx797, align 8, !dbg !211
  %xor798 = xor i32 %385, %386, !dbg !211
  %call799 = call i32 @ror32(i32 noundef %xor798, i32 noundef 12) #7, !dbg !211
  %arrayidx800 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !211
  store i32 %call799, ptr %arrayidx800, align 8, !dbg !211
  %arrayidx801 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !211
  %387 = load i32, ptr %arrayidx801, align 8, !dbg !211
  %388 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 5), align 1, !dbg !211
  %idxprom802 = zext i8 %388 to i64, !dbg !211
  %arrayidx803 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom802, !dbg !211
  %389 = load i32, ptr %arrayidx803, align 4, !dbg !211
  %add804 = add i32 %387, %389, !dbg !211
  %arrayidx805 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !211
  %390 = load i32, ptr %arrayidx805, align 8, !dbg !211
  %add806 = add i32 %390, %add804, !dbg !211
  store i32 %add806, ptr %arrayidx805, align 8, !dbg !211
  %arrayidx807 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !211
  %391 = load i32, ptr %arrayidx807, align 8, !dbg !211
  %arrayidx808 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !211
  %392 = load i32, ptr %arrayidx808, align 8, !dbg !211
  %xor809 = xor i32 %391, %392, !dbg !211
  %call810 = call i32 @ror32(i32 noundef %xor809, i32 noundef 8) #7, !dbg !211
  %arrayidx811 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !211
  store i32 %call810, ptr %arrayidx811, align 8, !dbg !211
  %arrayidx812 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !211
  %393 = load i32, ptr %arrayidx812, align 8, !dbg !211
  %arrayidx813 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !211
  %394 = load i32, ptr %arrayidx813, align 8, !dbg !211
  %add814 = add i32 %394, %393, !dbg !211
  store i32 %add814, ptr %arrayidx813, align 8, !dbg !211
  %arrayidx815 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !211
  %395 = load i32, ptr %arrayidx815, align 8, !dbg !211
  %arrayidx816 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !211
  %396 = load i32, ptr %arrayidx816, align 8, !dbg !211
  %xor817 = xor i32 %395, %396, !dbg !211
  %call818 = call i32 @ror32(i32 noundef %xor817, i32 noundef 7) #7, !dbg !211
  %arrayidx819 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !211
  store i32 %call818, ptr %arrayidx819, align 8, !dbg !211
  br label %do.cond820, !dbg !211

do.cond820:                                       ; preds = %do.body781
  br label %do.end821, !dbg !211

do.end821:                                        ; preds = %do.cond820
  br label %do.body822, !dbg !205

do.body822:                                       ; preds = %do.end821
  %arrayidx823 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !213
  %397 = load i32, ptr %arrayidx823, align 4, !dbg !213
  %398 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 6), align 2, !dbg !213
  %idxprom824 = zext i8 %398 to i64, !dbg !213
  %arrayidx825 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom824, !dbg !213
  %399 = load i32, ptr %arrayidx825, align 4, !dbg !213
  %add826 = add i32 %397, %399, !dbg !213
  %arrayidx827 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !213
  %400 = load i32, ptr %arrayidx827, align 4, !dbg !213
  %add828 = add i32 %400, %add826, !dbg !213
  store i32 %add828, ptr %arrayidx827, align 4, !dbg !213
  %arrayidx829 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !213
  %401 = load i32, ptr %arrayidx829, align 4, !dbg !213
  %arrayidx830 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !213
  %402 = load i32, ptr %arrayidx830, align 4, !dbg !213
  %xor831 = xor i32 %401, %402, !dbg !213
  %call832 = call i32 @ror32(i32 noundef %xor831, i32 noundef 16) #7, !dbg !213
  %arrayidx833 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !213
  store i32 %call832, ptr %arrayidx833, align 4, !dbg !213
  %arrayidx834 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !213
  %403 = load i32, ptr %arrayidx834, align 4, !dbg !213
  %arrayidx835 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !213
  %404 = load i32, ptr %arrayidx835, align 4, !dbg !213
  %add836 = add i32 %404, %403, !dbg !213
  store i32 %add836, ptr %arrayidx835, align 4, !dbg !213
  %arrayidx837 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !213
  %405 = load i32, ptr %arrayidx837, align 4, !dbg !213
  %arrayidx838 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !213
  %406 = load i32, ptr %arrayidx838, align 4, !dbg !213
  %xor839 = xor i32 %405, %406, !dbg !213
  %call840 = call i32 @ror32(i32 noundef %xor839, i32 noundef 12) #7, !dbg !213
  %arrayidx841 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !213
  store i32 %call840, ptr %arrayidx841, align 4, !dbg !213
  %arrayidx842 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !213
  %407 = load i32, ptr %arrayidx842, align 4, !dbg !213
  %408 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 7), align 1, !dbg !213
  %idxprom843 = zext i8 %408 to i64, !dbg !213
  %arrayidx844 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom843, !dbg !213
  %409 = load i32, ptr %arrayidx844, align 4, !dbg !213
  %add845 = add i32 %407, %409, !dbg !213
  %arrayidx846 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !213
  %410 = load i32, ptr %arrayidx846, align 4, !dbg !213
  %add847 = add i32 %410, %add845, !dbg !213
  store i32 %add847, ptr %arrayidx846, align 4, !dbg !213
  %arrayidx848 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !213
  %411 = load i32, ptr %arrayidx848, align 4, !dbg !213
  %arrayidx849 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !213
  %412 = load i32, ptr %arrayidx849, align 4, !dbg !213
  %xor850 = xor i32 %411, %412, !dbg !213
  %call851 = call i32 @ror32(i32 noundef %xor850, i32 noundef 8) #7, !dbg !213
  %arrayidx852 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !213
  store i32 %call851, ptr %arrayidx852, align 4, !dbg !213
  %arrayidx853 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !213
  %413 = load i32, ptr %arrayidx853, align 4, !dbg !213
  %arrayidx854 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !213
  %414 = load i32, ptr %arrayidx854, align 4, !dbg !213
  %add855 = add i32 %414, %413, !dbg !213
  store i32 %add855, ptr %arrayidx854, align 4, !dbg !213
  %arrayidx856 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !213
  %415 = load i32, ptr %arrayidx856, align 4, !dbg !213
  %arrayidx857 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !213
  %416 = load i32, ptr %arrayidx857, align 4, !dbg !213
  %xor858 = xor i32 %415, %416, !dbg !213
  %call859 = call i32 @ror32(i32 noundef %xor858, i32 noundef 7) #7, !dbg !213
  %arrayidx860 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !213
  store i32 %call859, ptr %arrayidx860, align 4, !dbg !213
  br label %do.cond861, !dbg !213

do.cond861:                                       ; preds = %do.body822
  br label %do.end862, !dbg !213

do.end862:                                        ; preds = %do.cond861
  br label %do.body863, !dbg !205

do.body863:                                       ; preds = %do.end862
  %arrayidx864 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !215
  %417 = load i32, ptr %arrayidx864, align 4, !dbg !215
  %418 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 8), align 8, !dbg !215
  %idxprom865 = zext i8 %418 to i64, !dbg !215
  %arrayidx866 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom865, !dbg !215
  %419 = load i32, ptr %arrayidx866, align 4, !dbg !215
  %add867 = add i32 %417, %419, !dbg !215
  %arrayidx868 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !215
  %420 = load i32, ptr %arrayidx868, align 16, !dbg !215
  %add869 = add i32 %420, %add867, !dbg !215
  store i32 %add869, ptr %arrayidx868, align 16, !dbg !215
  %arrayidx870 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !215
  %421 = load i32, ptr %arrayidx870, align 4, !dbg !215
  %arrayidx871 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !215
  %422 = load i32, ptr %arrayidx871, align 16, !dbg !215
  %xor872 = xor i32 %421, %422, !dbg !215
  %call873 = call i32 @ror32(i32 noundef %xor872, i32 noundef 16) #7, !dbg !215
  %arrayidx874 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !215
  store i32 %call873, ptr %arrayidx874, align 4, !dbg !215
  %arrayidx875 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !215
  %423 = load i32, ptr %arrayidx875, align 4, !dbg !215
  %arrayidx876 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !215
  %424 = load i32, ptr %arrayidx876, align 8, !dbg !215
  %add877 = add i32 %424, %423, !dbg !215
  store i32 %add877, ptr %arrayidx876, align 8, !dbg !215
  %arrayidx878 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !215
  %425 = load i32, ptr %arrayidx878, align 4, !dbg !215
  %arrayidx879 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !215
  %426 = load i32, ptr %arrayidx879, align 8, !dbg !215
  %xor880 = xor i32 %425, %426, !dbg !215
  %call881 = call i32 @ror32(i32 noundef %xor880, i32 noundef 12) #7, !dbg !215
  %arrayidx882 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !215
  store i32 %call881, ptr %arrayidx882, align 4, !dbg !215
  %arrayidx883 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !215
  %427 = load i32, ptr %arrayidx883, align 4, !dbg !215
  %428 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 9), align 1, !dbg !215
  %idxprom884 = zext i8 %428 to i64, !dbg !215
  %arrayidx885 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom884, !dbg !215
  %429 = load i32, ptr %arrayidx885, align 4, !dbg !215
  %add886 = add i32 %427, %429, !dbg !215
  %arrayidx887 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !215
  %430 = load i32, ptr %arrayidx887, align 16, !dbg !215
  %add888 = add i32 %430, %add886, !dbg !215
  store i32 %add888, ptr %arrayidx887, align 16, !dbg !215
  %arrayidx889 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !215
  %431 = load i32, ptr %arrayidx889, align 4, !dbg !215
  %arrayidx890 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !215
  %432 = load i32, ptr %arrayidx890, align 16, !dbg !215
  %xor891 = xor i32 %431, %432, !dbg !215
  %call892 = call i32 @ror32(i32 noundef %xor891, i32 noundef 8) #7, !dbg !215
  %arrayidx893 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !215
  store i32 %call892, ptr %arrayidx893, align 4, !dbg !215
  %arrayidx894 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !215
  %433 = load i32, ptr %arrayidx894, align 4, !dbg !215
  %arrayidx895 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !215
  %434 = load i32, ptr %arrayidx895, align 8, !dbg !215
  %add896 = add i32 %434, %433, !dbg !215
  store i32 %add896, ptr %arrayidx895, align 8, !dbg !215
  %arrayidx897 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !215
  %435 = load i32, ptr %arrayidx897, align 4, !dbg !215
  %arrayidx898 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !215
  %436 = load i32, ptr %arrayidx898, align 8, !dbg !215
  %xor899 = xor i32 %435, %436, !dbg !215
  %call900 = call i32 @ror32(i32 noundef %xor899, i32 noundef 7) #7, !dbg !215
  %arrayidx901 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !215
  store i32 %call900, ptr %arrayidx901, align 4, !dbg !215
  br label %do.cond902, !dbg !215

do.cond902:                                       ; preds = %do.body863
  br label %do.end903, !dbg !215

do.end903:                                        ; preds = %do.cond902
  br label %do.body904, !dbg !205

do.body904:                                       ; preds = %do.end903
  %arrayidx905 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !217
  %437 = load i32, ptr %arrayidx905, align 8, !dbg !217
  %438 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 10), align 2, !dbg !217
  %idxprom906 = zext i8 %438 to i64, !dbg !217
  %arrayidx907 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom906, !dbg !217
  %439 = load i32, ptr %arrayidx907, align 4, !dbg !217
  %add908 = add i32 %437, %439, !dbg !217
  %arrayidx909 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !217
  %440 = load i32, ptr %arrayidx909, align 4, !dbg !217
  %add910 = add i32 %440, %add908, !dbg !217
  store i32 %add910, ptr %arrayidx909, align 4, !dbg !217
  %arrayidx911 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !217
  %441 = load i32, ptr %arrayidx911, align 16, !dbg !217
  %arrayidx912 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !217
  %442 = load i32, ptr %arrayidx912, align 4, !dbg !217
  %xor913 = xor i32 %441, %442, !dbg !217
  %call914 = call i32 @ror32(i32 noundef %xor913, i32 noundef 16) #7, !dbg !217
  %arrayidx915 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !217
  store i32 %call914, ptr %arrayidx915, align 16, !dbg !217
  %arrayidx916 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !217
  %443 = load i32, ptr %arrayidx916, align 16, !dbg !217
  %arrayidx917 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !217
  %444 = load i32, ptr %arrayidx917, align 4, !dbg !217
  %add918 = add i32 %444, %443, !dbg !217
  store i32 %add918, ptr %arrayidx917, align 4, !dbg !217
  %arrayidx919 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !217
  %445 = load i32, ptr %arrayidx919, align 8, !dbg !217
  %arrayidx920 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !217
  %446 = load i32, ptr %arrayidx920, align 4, !dbg !217
  %xor921 = xor i32 %445, %446, !dbg !217
  %call922 = call i32 @ror32(i32 noundef %xor921, i32 noundef 12) #7, !dbg !217
  %arrayidx923 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !217
  store i32 %call922, ptr %arrayidx923, align 8, !dbg !217
  %arrayidx924 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !217
  %447 = load i32, ptr %arrayidx924, align 8, !dbg !217
  %448 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 11), align 1, !dbg !217
  %idxprom925 = zext i8 %448 to i64, !dbg !217
  %arrayidx926 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom925, !dbg !217
  %449 = load i32, ptr %arrayidx926, align 4, !dbg !217
  %add927 = add i32 %447, %449, !dbg !217
  %arrayidx928 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !217
  %450 = load i32, ptr %arrayidx928, align 4, !dbg !217
  %add929 = add i32 %450, %add927, !dbg !217
  store i32 %add929, ptr %arrayidx928, align 4, !dbg !217
  %arrayidx930 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !217
  %451 = load i32, ptr %arrayidx930, align 16, !dbg !217
  %arrayidx931 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !217
  %452 = load i32, ptr %arrayidx931, align 4, !dbg !217
  %xor932 = xor i32 %451, %452, !dbg !217
  %call933 = call i32 @ror32(i32 noundef %xor932, i32 noundef 8) #7, !dbg !217
  %arrayidx934 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !217
  store i32 %call933, ptr %arrayidx934, align 16, !dbg !217
  %arrayidx935 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !217
  %453 = load i32, ptr %arrayidx935, align 16, !dbg !217
  %arrayidx936 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !217
  %454 = load i32, ptr %arrayidx936, align 4, !dbg !217
  %add937 = add i32 %454, %453, !dbg !217
  store i32 %add937, ptr %arrayidx936, align 4, !dbg !217
  %arrayidx938 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !217
  %455 = load i32, ptr %arrayidx938, align 8, !dbg !217
  %arrayidx939 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !217
  %456 = load i32, ptr %arrayidx939, align 4, !dbg !217
  %xor940 = xor i32 %455, %456, !dbg !217
  %call941 = call i32 @ror32(i32 noundef %xor940, i32 noundef 7) #7, !dbg !217
  %arrayidx942 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !217
  store i32 %call941, ptr %arrayidx942, align 8, !dbg !217
  br label %do.cond943, !dbg !217

do.cond943:                                       ; preds = %do.body904
  br label %do.end944, !dbg !217

do.end944:                                        ; preds = %do.cond943
  br label %do.body945, !dbg !205

do.body945:                                       ; preds = %do.end944
  %arrayidx946 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !219
  %457 = load i32, ptr %arrayidx946, align 4, !dbg !219
  %458 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 12), align 4, !dbg !219
  %idxprom947 = zext i8 %458 to i64, !dbg !219
  %arrayidx948 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom947, !dbg !219
  %459 = load i32, ptr %arrayidx948, align 4, !dbg !219
  %add949 = add i32 %457, %459, !dbg !219
  %arrayidx950 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !219
  %460 = load i32, ptr %arrayidx950, align 8, !dbg !219
  %add951 = add i32 %460, %add949, !dbg !219
  store i32 %add951, ptr %arrayidx950, align 8, !dbg !219
  %arrayidx952 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !219
  %461 = load i32, ptr %arrayidx952, align 4, !dbg !219
  %arrayidx953 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !219
  %462 = load i32, ptr %arrayidx953, align 8, !dbg !219
  %xor954 = xor i32 %461, %462, !dbg !219
  %call955 = call i32 @ror32(i32 noundef %xor954, i32 noundef 16) #7, !dbg !219
  %arrayidx956 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !219
  store i32 %call955, ptr %arrayidx956, align 4, !dbg !219
  %arrayidx957 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !219
  %463 = load i32, ptr %arrayidx957, align 4, !dbg !219
  %arrayidx958 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !219
  %464 = load i32, ptr %arrayidx958, align 16, !dbg !219
  %add959 = add i32 %464, %463, !dbg !219
  store i32 %add959, ptr %arrayidx958, align 16, !dbg !219
  %arrayidx960 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !219
  %465 = load i32, ptr %arrayidx960, align 4, !dbg !219
  %arrayidx961 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !219
  %466 = load i32, ptr %arrayidx961, align 16, !dbg !219
  %xor962 = xor i32 %465, %466, !dbg !219
  %call963 = call i32 @ror32(i32 noundef %xor962, i32 noundef 12) #7, !dbg !219
  %arrayidx964 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !219
  store i32 %call963, ptr %arrayidx964, align 4, !dbg !219
  %arrayidx965 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !219
  %467 = load i32, ptr %arrayidx965, align 4, !dbg !219
  %468 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 13), align 1, !dbg !219
  %idxprom966 = zext i8 %468 to i64, !dbg !219
  %arrayidx967 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom966, !dbg !219
  %469 = load i32, ptr %arrayidx967, align 4, !dbg !219
  %add968 = add i32 %467, %469, !dbg !219
  %arrayidx969 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !219
  %470 = load i32, ptr %arrayidx969, align 8, !dbg !219
  %add970 = add i32 %470, %add968, !dbg !219
  store i32 %add970, ptr %arrayidx969, align 8, !dbg !219
  %arrayidx971 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !219
  %471 = load i32, ptr %arrayidx971, align 4, !dbg !219
  %arrayidx972 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !219
  %472 = load i32, ptr %arrayidx972, align 8, !dbg !219
  %xor973 = xor i32 %471, %472, !dbg !219
  %call974 = call i32 @ror32(i32 noundef %xor973, i32 noundef 8) #7, !dbg !219
  %arrayidx975 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !219
  store i32 %call974, ptr %arrayidx975, align 4, !dbg !219
  %arrayidx976 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !219
  %473 = load i32, ptr %arrayidx976, align 4, !dbg !219
  %arrayidx977 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !219
  %474 = load i32, ptr %arrayidx977, align 16, !dbg !219
  %add978 = add i32 %474, %473, !dbg !219
  store i32 %add978, ptr %arrayidx977, align 16, !dbg !219
  %arrayidx979 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !219
  %475 = load i32, ptr %arrayidx979, align 4, !dbg !219
  %arrayidx980 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !219
  %476 = load i32, ptr %arrayidx980, align 16, !dbg !219
  %xor981 = xor i32 %475, %476, !dbg !219
  %call982 = call i32 @ror32(i32 noundef %xor981, i32 noundef 7) #7, !dbg !219
  %arrayidx983 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !219
  store i32 %call982, ptr %arrayidx983, align 4, !dbg !219
  br label %do.cond984, !dbg !219

do.cond984:                                       ; preds = %do.body945
  br label %do.end985, !dbg !219

do.end985:                                        ; preds = %do.cond984
  br label %do.body986, !dbg !205

do.body986:                                       ; preds = %do.end985
  %arrayidx987 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !221
  %477 = load i32, ptr %arrayidx987, align 16, !dbg !221
  %478 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 14), align 2, !dbg !221
  %idxprom988 = zext i8 %478 to i64, !dbg !221
  %arrayidx989 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom988, !dbg !221
  %479 = load i32, ptr %arrayidx989, align 4, !dbg !221
  %add990 = add i32 %477, %479, !dbg !221
  %arrayidx991 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !221
  %480 = load i32, ptr %arrayidx991, align 4, !dbg !221
  %add992 = add i32 %480, %add990, !dbg !221
  store i32 %add992, ptr %arrayidx991, align 4, !dbg !221
  %arrayidx993 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !221
  %481 = load i32, ptr %arrayidx993, align 8, !dbg !221
  %arrayidx994 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !221
  %482 = load i32, ptr %arrayidx994, align 4, !dbg !221
  %xor995 = xor i32 %481, %482, !dbg !221
  %call996 = call i32 @ror32(i32 noundef %xor995, i32 noundef 16) #7, !dbg !221
  %arrayidx997 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !221
  store i32 %call996, ptr %arrayidx997, align 8, !dbg !221
  %arrayidx998 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !221
  %483 = load i32, ptr %arrayidx998, align 8, !dbg !221
  %arrayidx999 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !221
  %484 = load i32, ptr %arrayidx999, align 4, !dbg !221
  %add1000 = add i32 %484, %483, !dbg !221
  store i32 %add1000, ptr %arrayidx999, align 4, !dbg !221
  %arrayidx1001 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !221
  %485 = load i32, ptr %arrayidx1001, align 16, !dbg !221
  %arrayidx1002 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !221
  %486 = load i32, ptr %arrayidx1002, align 4, !dbg !221
  %xor1003 = xor i32 %485, %486, !dbg !221
  %call1004 = call i32 @ror32(i32 noundef %xor1003, i32 noundef 12) #7, !dbg !221
  %arrayidx1005 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !221
  store i32 %call1004, ptr %arrayidx1005, align 16, !dbg !221
  %arrayidx1006 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !221
  %487 = load i32, ptr %arrayidx1006, align 16, !dbg !221
  %488 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 15), align 1, !dbg !221
  %idxprom1007 = zext i8 %488 to i64, !dbg !221
  %arrayidx1008 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1007, !dbg !221
  %489 = load i32, ptr %arrayidx1008, align 4, !dbg !221
  %add1009 = add i32 %487, %489, !dbg !221
  %arrayidx1010 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !221
  %490 = load i32, ptr %arrayidx1010, align 4, !dbg !221
  %add1011 = add i32 %490, %add1009, !dbg !221
  store i32 %add1011, ptr %arrayidx1010, align 4, !dbg !221
  %arrayidx1012 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !221
  %491 = load i32, ptr %arrayidx1012, align 8, !dbg !221
  %arrayidx1013 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !221
  %492 = load i32, ptr %arrayidx1013, align 4, !dbg !221
  %xor1014 = xor i32 %491, %492, !dbg !221
  %call1015 = call i32 @ror32(i32 noundef %xor1014, i32 noundef 8) #7, !dbg !221
  %arrayidx1016 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !221
  store i32 %call1015, ptr %arrayidx1016, align 8, !dbg !221
  %arrayidx1017 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !221
  %493 = load i32, ptr %arrayidx1017, align 8, !dbg !221
  %arrayidx1018 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !221
  %494 = load i32, ptr %arrayidx1018, align 4, !dbg !221
  %add1019 = add i32 %494, %493, !dbg !221
  store i32 %add1019, ptr %arrayidx1018, align 4, !dbg !221
  %arrayidx1020 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !221
  %495 = load i32, ptr %arrayidx1020, align 16, !dbg !221
  %arrayidx1021 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !221
  %496 = load i32, ptr %arrayidx1021, align 4, !dbg !221
  %xor1022 = xor i32 %495, %496, !dbg !221
  %call1023 = call i32 @ror32(i32 noundef %xor1022, i32 noundef 7) #7, !dbg !221
  %arrayidx1024 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !221
  store i32 %call1023, ptr %arrayidx1024, align 16, !dbg !221
  br label %do.cond1025, !dbg !221

do.cond1025:                                      ; preds = %do.body986
  br label %do.end1026, !dbg !221

do.end1026:                                       ; preds = %do.cond1025
  br label %do.cond1027, !dbg !205

do.cond1027:                                      ; preds = %do.end1026
  br label %do.end1028, !dbg !205

do.end1028:                                       ; preds = %do.cond1027
  br label %do.body1029, !dbg !223

do.body1029:                                      ; preds = %do.end1028
  br label %do.body1030, !dbg !224

do.body1030:                                      ; preds = %do.body1029
  %arrayidx1031 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !226
  %497 = load i32, ptr %arrayidx1031, align 16, !dbg !226
  %498 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3), align 16, !dbg !226
  %idxprom1032 = zext i8 %498 to i64, !dbg !226
  %arrayidx1033 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1032, !dbg !226
  %499 = load i32, ptr %arrayidx1033, align 4, !dbg !226
  %add1034 = add i32 %497, %499, !dbg !226
  %arrayidx1035 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !226
  %500 = load i32, ptr %arrayidx1035, align 16, !dbg !226
  %add1036 = add i32 %500, %add1034, !dbg !226
  store i32 %add1036, ptr %arrayidx1035, align 16, !dbg !226
  %arrayidx1037 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !226
  %501 = load i32, ptr %arrayidx1037, align 16, !dbg !226
  %arrayidx1038 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !226
  %502 = load i32, ptr %arrayidx1038, align 16, !dbg !226
  %xor1039 = xor i32 %501, %502, !dbg !226
  %call1040 = call i32 @ror32(i32 noundef %xor1039, i32 noundef 16) #7, !dbg !226
  %arrayidx1041 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !226
  store i32 %call1040, ptr %arrayidx1041, align 16, !dbg !226
  %arrayidx1042 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !226
  %503 = load i32, ptr %arrayidx1042, align 16, !dbg !226
  %arrayidx1043 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !226
  %504 = load i32, ptr %arrayidx1043, align 16, !dbg !226
  %add1044 = add i32 %504, %503, !dbg !226
  store i32 %add1044, ptr %arrayidx1043, align 16, !dbg !226
  %arrayidx1045 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !226
  %505 = load i32, ptr %arrayidx1045, align 16, !dbg !226
  %arrayidx1046 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !226
  %506 = load i32, ptr %arrayidx1046, align 16, !dbg !226
  %xor1047 = xor i32 %505, %506, !dbg !226
  %call1048 = call i32 @ror32(i32 noundef %xor1047, i32 noundef 12) #7, !dbg !226
  %arrayidx1049 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !226
  store i32 %call1048, ptr %arrayidx1049, align 16, !dbg !226
  %arrayidx1050 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !226
  %507 = load i32, ptr %arrayidx1050, align 16, !dbg !226
  %508 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 1), align 1, !dbg !226
  %idxprom1051 = zext i8 %508 to i64, !dbg !226
  %arrayidx1052 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1051, !dbg !226
  %509 = load i32, ptr %arrayidx1052, align 4, !dbg !226
  %add1053 = add i32 %507, %509, !dbg !226
  %arrayidx1054 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !226
  %510 = load i32, ptr %arrayidx1054, align 16, !dbg !226
  %add1055 = add i32 %510, %add1053, !dbg !226
  store i32 %add1055, ptr %arrayidx1054, align 16, !dbg !226
  %arrayidx1056 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !226
  %511 = load i32, ptr %arrayidx1056, align 16, !dbg !226
  %arrayidx1057 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !226
  %512 = load i32, ptr %arrayidx1057, align 16, !dbg !226
  %xor1058 = xor i32 %511, %512, !dbg !226
  %call1059 = call i32 @ror32(i32 noundef %xor1058, i32 noundef 8) #7, !dbg !226
  %arrayidx1060 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !226
  store i32 %call1059, ptr %arrayidx1060, align 16, !dbg !226
  %arrayidx1061 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !226
  %513 = load i32, ptr %arrayidx1061, align 16, !dbg !226
  %arrayidx1062 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !226
  %514 = load i32, ptr %arrayidx1062, align 16, !dbg !226
  %add1063 = add i32 %514, %513, !dbg !226
  store i32 %add1063, ptr %arrayidx1062, align 16, !dbg !226
  %arrayidx1064 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !226
  %515 = load i32, ptr %arrayidx1064, align 16, !dbg !226
  %arrayidx1065 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !226
  %516 = load i32, ptr %arrayidx1065, align 16, !dbg !226
  %xor1066 = xor i32 %515, %516, !dbg !226
  %call1067 = call i32 @ror32(i32 noundef %xor1066, i32 noundef 7) #7, !dbg !226
  %arrayidx1068 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !226
  store i32 %call1067, ptr %arrayidx1068, align 16, !dbg !226
  br label %do.cond1069, !dbg !226

do.cond1069:                                      ; preds = %do.body1030
  br label %do.end1070, !dbg !226

do.end1070:                                       ; preds = %do.cond1069
  br label %do.body1071, !dbg !224

do.body1071:                                      ; preds = %do.end1070
  %arrayidx1072 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !228
  %517 = load i32, ptr %arrayidx1072, align 4, !dbg !228
  %518 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 2), align 2, !dbg !228
  %idxprom1073 = zext i8 %518 to i64, !dbg !228
  %arrayidx1074 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1073, !dbg !228
  %519 = load i32, ptr %arrayidx1074, align 4, !dbg !228
  %add1075 = add i32 %517, %519, !dbg !228
  %arrayidx1076 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !228
  %520 = load i32, ptr %arrayidx1076, align 4, !dbg !228
  %add1077 = add i32 %520, %add1075, !dbg !228
  store i32 %add1077, ptr %arrayidx1076, align 4, !dbg !228
  %arrayidx1078 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !228
  %521 = load i32, ptr %arrayidx1078, align 4, !dbg !228
  %arrayidx1079 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !228
  %522 = load i32, ptr %arrayidx1079, align 4, !dbg !228
  %xor1080 = xor i32 %521, %522, !dbg !228
  %call1081 = call i32 @ror32(i32 noundef %xor1080, i32 noundef 16) #7, !dbg !228
  %arrayidx1082 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !228
  store i32 %call1081, ptr %arrayidx1082, align 4, !dbg !228
  %arrayidx1083 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !228
  %523 = load i32, ptr %arrayidx1083, align 4, !dbg !228
  %arrayidx1084 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !228
  %524 = load i32, ptr %arrayidx1084, align 4, !dbg !228
  %add1085 = add i32 %524, %523, !dbg !228
  store i32 %add1085, ptr %arrayidx1084, align 4, !dbg !228
  %arrayidx1086 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !228
  %525 = load i32, ptr %arrayidx1086, align 4, !dbg !228
  %arrayidx1087 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !228
  %526 = load i32, ptr %arrayidx1087, align 4, !dbg !228
  %xor1088 = xor i32 %525, %526, !dbg !228
  %call1089 = call i32 @ror32(i32 noundef %xor1088, i32 noundef 12) #7, !dbg !228
  %arrayidx1090 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !228
  store i32 %call1089, ptr %arrayidx1090, align 4, !dbg !228
  %arrayidx1091 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !228
  %527 = load i32, ptr %arrayidx1091, align 4, !dbg !228
  %528 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 3), align 1, !dbg !228
  %idxprom1092 = zext i8 %528 to i64, !dbg !228
  %arrayidx1093 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1092, !dbg !228
  %529 = load i32, ptr %arrayidx1093, align 4, !dbg !228
  %add1094 = add i32 %527, %529, !dbg !228
  %arrayidx1095 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !228
  %530 = load i32, ptr %arrayidx1095, align 4, !dbg !228
  %add1096 = add i32 %530, %add1094, !dbg !228
  store i32 %add1096, ptr %arrayidx1095, align 4, !dbg !228
  %arrayidx1097 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !228
  %531 = load i32, ptr %arrayidx1097, align 4, !dbg !228
  %arrayidx1098 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !228
  %532 = load i32, ptr %arrayidx1098, align 4, !dbg !228
  %xor1099 = xor i32 %531, %532, !dbg !228
  %call1100 = call i32 @ror32(i32 noundef %xor1099, i32 noundef 8) #7, !dbg !228
  %arrayidx1101 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !228
  store i32 %call1100, ptr %arrayidx1101, align 4, !dbg !228
  %arrayidx1102 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !228
  %533 = load i32, ptr %arrayidx1102, align 4, !dbg !228
  %arrayidx1103 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !228
  %534 = load i32, ptr %arrayidx1103, align 4, !dbg !228
  %add1104 = add i32 %534, %533, !dbg !228
  store i32 %add1104, ptr %arrayidx1103, align 4, !dbg !228
  %arrayidx1105 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !228
  %535 = load i32, ptr %arrayidx1105, align 4, !dbg !228
  %arrayidx1106 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !228
  %536 = load i32, ptr %arrayidx1106, align 4, !dbg !228
  %xor1107 = xor i32 %535, %536, !dbg !228
  %call1108 = call i32 @ror32(i32 noundef %xor1107, i32 noundef 7) #7, !dbg !228
  %arrayidx1109 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !228
  store i32 %call1108, ptr %arrayidx1109, align 4, !dbg !228
  br label %do.cond1110, !dbg !228

do.cond1110:                                      ; preds = %do.body1071
  br label %do.end1111, !dbg !228

do.end1111:                                       ; preds = %do.cond1110
  br label %do.body1112, !dbg !224

do.body1112:                                      ; preds = %do.end1111
  %arrayidx1113 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !230
  %537 = load i32, ptr %arrayidx1113, align 8, !dbg !230
  %538 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 4), align 4, !dbg !230
  %idxprom1114 = zext i8 %538 to i64, !dbg !230
  %arrayidx1115 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1114, !dbg !230
  %539 = load i32, ptr %arrayidx1115, align 4, !dbg !230
  %add1116 = add i32 %537, %539, !dbg !230
  %arrayidx1117 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !230
  %540 = load i32, ptr %arrayidx1117, align 8, !dbg !230
  %add1118 = add i32 %540, %add1116, !dbg !230
  store i32 %add1118, ptr %arrayidx1117, align 8, !dbg !230
  %arrayidx1119 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !230
  %541 = load i32, ptr %arrayidx1119, align 8, !dbg !230
  %arrayidx1120 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !230
  %542 = load i32, ptr %arrayidx1120, align 8, !dbg !230
  %xor1121 = xor i32 %541, %542, !dbg !230
  %call1122 = call i32 @ror32(i32 noundef %xor1121, i32 noundef 16) #7, !dbg !230
  %arrayidx1123 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !230
  store i32 %call1122, ptr %arrayidx1123, align 8, !dbg !230
  %arrayidx1124 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !230
  %543 = load i32, ptr %arrayidx1124, align 8, !dbg !230
  %arrayidx1125 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !230
  %544 = load i32, ptr %arrayidx1125, align 8, !dbg !230
  %add1126 = add i32 %544, %543, !dbg !230
  store i32 %add1126, ptr %arrayidx1125, align 8, !dbg !230
  %arrayidx1127 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !230
  %545 = load i32, ptr %arrayidx1127, align 8, !dbg !230
  %arrayidx1128 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !230
  %546 = load i32, ptr %arrayidx1128, align 8, !dbg !230
  %xor1129 = xor i32 %545, %546, !dbg !230
  %call1130 = call i32 @ror32(i32 noundef %xor1129, i32 noundef 12) #7, !dbg !230
  %arrayidx1131 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !230
  store i32 %call1130, ptr %arrayidx1131, align 8, !dbg !230
  %arrayidx1132 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !230
  %547 = load i32, ptr %arrayidx1132, align 8, !dbg !230
  %548 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 5), align 1, !dbg !230
  %idxprom1133 = zext i8 %548 to i64, !dbg !230
  %arrayidx1134 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1133, !dbg !230
  %549 = load i32, ptr %arrayidx1134, align 4, !dbg !230
  %add1135 = add i32 %547, %549, !dbg !230
  %arrayidx1136 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !230
  %550 = load i32, ptr %arrayidx1136, align 8, !dbg !230
  %add1137 = add i32 %550, %add1135, !dbg !230
  store i32 %add1137, ptr %arrayidx1136, align 8, !dbg !230
  %arrayidx1138 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !230
  %551 = load i32, ptr %arrayidx1138, align 8, !dbg !230
  %arrayidx1139 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !230
  %552 = load i32, ptr %arrayidx1139, align 8, !dbg !230
  %xor1140 = xor i32 %551, %552, !dbg !230
  %call1141 = call i32 @ror32(i32 noundef %xor1140, i32 noundef 8) #7, !dbg !230
  %arrayidx1142 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !230
  store i32 %call1141, ptr %arrayidx1142, align 8, !dbg !230
  %arrayidx1143 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !230
  %553 = load i32, ptr %arrayidx1143, align 8, !dbg !230
  %arrayidx1144 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !230
  %554 = load i32, ptr %arrayidx1144, align 8, !dbg !230
  %add1145 = add i32 %554, %553, !dbg !230
  store i32 %add1145, ptr %arrayidx1144, align 8, !dbg !230
  %arrayidx1146 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !230
  %555 = load i32, ptr %arrayidx1146, align 8, !dbg !230
  %arrayidx1147 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !230
  %556 = load i32, ptr %arrayidx1147, align 8, !dbg !230
  %xor1148 = xor i32 %555, %556, !dbg !230
  %call1149 = call i32 @ror32(i32 noundef %xor1148, i32 noundef 7) #7, !dbg !230
  %arrayidx1150 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !230
  store i32 %call1149, ptr %arrayidx1150, align 8, !dbg !230
  br label %do.cond1151, !dbg !230

do.cond1151:                                      ; preds = %do.body1112
  br label %do.end1152, !dbg !230

do.end1152:                                       ; preds = %do.cond1151
  br label %do.body1153, !dbg !224

do.body1153:                                      ; preds = %do.end1152
  %arrayidx1154 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !232
  %557 = load i32, ptr %arrayidx1154, align 4, !dbg !232
  %558 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 6), align 2, !dbg !232
  %idxprom1155 = zext i8 %558 to i64, !dbg !232
  %arrayidx1156 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1155, !dbg !232
  %559 = load i32, ptr %arrayidx1156, align 4, !dbg !232
  %add1157 = add i32 %557, %559, !dbg !232
  %arrayidx1158 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !232
  %560 = load i32, ptr %arrayidx1158, align 4, !dbg !232
  %add1159 = add i32 %560, %add1157, !dbg !232
  store i32 %add1159, ptr %arrayidx1158, align 4, !dbg !232
  %arrayidx1160 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !232
  %561 = load i32, ptr %arrayidx1160, align 4, !dbg !232
  %arrayidx1161 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !232
  %562 = load i32, ptr %arrayidx1161, align 4, !dbg !232
  %xor1162 = xor i32 %561, %562, !dbg !232
  %call1163 = call i32 @ror32(i32 noundef %xor1162, i32 noundef 16) #7, !dbg !232
  %arrayidx1164 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !232
  store i32 %call1163, ptr %arrayidx1164, align 4, !dbg !232
  %arrayidx1165 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !232
  %563 = load i32, ptr %arrayidx1165, align 4, !dbg !232
  %arrayidx1166 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !232
  %564 = load i32, ptr %arrayidx1166, align 4, !dbg !232
  %add1167 = add i32 %564, %563, !dbg !232
  store i32 %add1167, ptr %arrayidx1166, align 4, !dbg !232
  %arrayidx1168 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !232
  %565 = load i32, ptr %arrayidx1168, align 4, !dbg !232
  %arrayidx1169 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !232
  %566 = load i32, ptr %arrayidx1169, align 4, !dbg !232
  %xor1170 = xor i32 %565, %566, !dbg !232
  %call1171 = call i32 @ror32(i32 noundef %xor1170, i32 noundef 12) #7, !dbg !232
  %arrayidx1172 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !232
  store i32 %call1171, ptr %arrayidx1172, align 4, !dbg !232
  %arrayidx1173 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !232
  %567 = load i32, ptr %arrayidx1173, align 4, !dbg !232
  %568 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 7), align 1, !dbg !232
  %idxprom1174 = zext i8 %568 to i64, !dbg !232
  %arrayidx1175 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1174, !dbg !232
  %569 = load i32, ptr %arrayidx1175, align 4, !dbg !232
  %add1176 = add i32 %567, %569, !dbg !232
  %arrayidx1177 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !232
  %570 = load i32, ptr %arrayidx1177, align 4, !dbg !232
  %add1178 = add i32 %570, %add1176, !dbg !232
  store i32 %add1178, ptr %arrayidx1177, align 4, !dbg !232
  %arrayidx1179 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !232
  %571 = load i32, ptr %arrayidx1179, align 4, !dbg !232
  %arrayidx1180 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !232
  %572 = load i32, ptr %arrayidx1180, align 4, !dbg !232
  %xor1181 = xor i32 %571, %572, !dbg !232
  %call1182 = call i32 @ror32(i32 noundef %xor1181, i32 noundef 8) #7, !dbg !232
  %arrayidx1183 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !232
  store i32 %call1182, ptr %arrayidx1183, align 4, !dbg !232
  %arrayidx1184 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !232
  %573 = load i32, ptr %arrayidx1184, align 4, !dbg !232
  %arrayidx1185 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !232
  %574 = load i32, ptr %arrayidx1185, align 4, !dbg !232
  %add1186 = add i32 %574, %573, !dbg !232
  store i32 %add1186, ptr %arrayidx1185, align 4, !dbg !232
  %arrayidx1187 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !232
  %575 = load i32, ptr %arrayidx1187, align 4, !dbg !232
  %arrayidx1188 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !232
  %576 = load i32, ptr %arrayidx1188, align 4, !dbg !232
  %xor1189 = xor i32 %575, %576, !dbg !232
  %call1190 = call i32 @ror32(i32 noundef %xor1189, i32 noundef 7) #7, !dbg !232
  %arrayidx1191 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !232
  store i32 %call1190, ptr %arrayidx1191, align 4, !dbg !232
  br label %do.cond1192, !dbg !232

do.cond1192:                                      ; preds = %do.body1153
  br label %do.end1193, !dbg !232

do.end1193:                                       ; preds = %do.cond1192
  br label %do.body1194, !dbg !224

do.body1194:                                      ; preds = %do.end1193
  %arrayidx1195 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !234
  %577 = load i32, ptr %arrayidx1195, align 4, !dbg !234
  %578 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 8), align 8, !dbg !234
  %idxprom1196 = zext i8 %578 to i64, !dbg !234
  %arrayidx1197 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1196, !dbg !234
  %579 = load i32, ptr %arrayidx1197, align 4, !dbg !234
  %add1198 = add i32 %577, %579, !dbg !234
  %arrayidx1199 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !234
  %580 = load i32, ptr %arrayidx1199, align 16, !dbg !234
  %add1200 = add i32 %580, %add1198, !dbg !234
  store i32 %add1200, ptr %arrayidx1199, align 16, !dbg !234
  %arrayidx1201 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !234
  %581 = load i32, ptr %arrayidx1201, align 4, !dbg !234
  %arrayidx1202 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !234
  %582 = load i32, ptr %arrayidx1202, align 16, !dbg !234
  %xor1203 = xor i32 %581, %582, !dbg !234
  %call1204 = call i32 @ror32(i32 noundef %xor1203, i32 noundef 16) #7, !dbg !234
  %arrayidx1205 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !234
  store i32 %call1204, ptr %arrayidx1205, align 4, !dbg !234
  %arrayidx1206 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !234
  %583 = load i32, ptr %arrayidx1206, align 4, !dbg !234
  %arrayidx1207 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !234
  %584 = load i32, ptr %arrayidx1207, align 8, !dbg !234
  %add1208 = add i32 %584, %583, !dbg !234
  store i32 %add1208, ptr %arrayidx1207, align 8, !dbg !234
  %arrayidx1209 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !234
  %585 = load i32, ptr %arrayidx1209, align 4, !dbg !234
  %arrayidx1210 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !234
  %586 = load i32, ptr %arrayidx1210, align 8, !dbg !234
  %xor1211 = xor i32 %585, %586, !dbg !234
  %call1212 = call i32 @ror32(i32 noundef %xor1211, i32 noundef 12) #7, !dbg !234
  %arrayidx1213 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !234
  store i32 %call1212, ptr %arrayidx1213, align 4, !dbg !234
  %arrayidx1214 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !234
  %587 = load i32, ptr %arrayidx1214, align 4, !dbg !234
  %588 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 9), align 1, !dbg !234
  %idxprom1215 = zext i8 %588 to i64, !dbg !234
  %arrayidx1216 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1215, !dbg !234
  %589 = load i32, ptr %arrayidx1216, align 4, !dbg !234
  %add1217 = add i32 %587, %589, !dbg !234
  %arrayidx1218 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !234
  %590 = load i32, ptr %arrayidx1218, align 16, !dbg !234
  %add1219 = add i32 %590, %add1217, !dbg !234
  store i32 %add1219, ptr %arrayidx1218, align 16, !dbg !234
  %arrayidx1220 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !234
  %591 = load i32, ptr %arrayidx1220, align 4, !dbg !234
  %arrayidx1221 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !234
  %592 = load i32, ptr %arrayidx1221, align 16, !dbg !234
  %xor1222 = xor i32 %591, %592, !dbg !234
  %call1223 = call i32 @ror32(i32 noundef %xor1222, i32 noundef 8) #7, !dbg !234
  %arrayidx1224 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !234
  store i32 %call1223, ptr %arrayidx1224, align 4, !dbg !234
  %arrayidx1225 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !234
  %593 = load i32, ptr %arrayidx1225, align 4, !dbg !234
  %arrayidx1226 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !234
  %594 = load i32, ptr %arrayidx1226, align 8, !dbg !234
  %add1227 = add i32 %594, %593, !dbg !234
  store i32 %add1227, ptr %arrayidx1226, align 8, !dbg !234
  %arrayidx1228 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !234
  %595 = load i32, ptr %arrayidx1228, align 4, !dbg !234
  %arrayidx1229 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !234
  %596 = load i32, ptr %arrayidx1229, align 8, !dbg !234
  %xor1230 = xor i32 %595, %596, !dbg !234
  %call1231 = call i32 @ror32(i32 noundef %xor1230, i32 noundef 7) #7, !dbg !234
  %arrayidx1232 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !234
  store i32 %call1231, ptr %arrayidx1232, align 4, !dbg !234
  br label %do.cond1233, !dbg !234

do.cond1233:                                      ; preds = %do.body1194
  br label %do.end1234, !dbg !234

do.end1234:                                       ; preds = %do.cond1233
  br label %do.body1235, !dbg !224

do.body1235:                                      ; preds = %do.end1234
  %arrayidx1236 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !236
  %597 = load i32, ptr %arrayidx1236, align 8, !dbg !236
  %598 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 10), align 2, !dbg !236
  %idxprom1237 = zext i8 %598 to i64, !dbg !236
  %arrayidx1238 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1237, !dbg !236
  %599 = load i32, ptr %arrayidx1238, align 4, !dbg !236
  %add1239 = add i32 %597, %599, !dbg !236
  %arrayidx1240 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !236
  %600 = load i32, ptr %arrayidx1240, align 4, !dbg !236
  %add1241 = add i32 %600, %add1239, !dbg !236
  store i32 %add1241, ptr %arrayidx1240, align 4, !dbg !236
  %arrayidx1242 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !236
  %601 = load i32, ptr %arrayidx1242, align 16, !dbg !236
  %arrayidx1243 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !236
  %602 = load i32, ptr %arrayidx1243, align 4, !dbg !236
  %xor1244 = xor i32 %601, %602, !dbg !236
  %call1245 = call i32 @ror32(i32 noundef %xor1244, i32 noundef 16) #7, !dbg !236
  %arrayidx1246 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !236
  store i32 %call1245, ptr %arrayidx1246, align 16, !dbg !236
  %arrayidx1247 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !236
  %603 = load i32, ptr %arrayidx1247, align 16, !dbg !236
  %arrayidx1248 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !236
  %604 = load i32, ptr %arrayidx1248, align 4, !dbg !236
  %add1249 = add i32 %604, %603, !dbg !236
  store i32 %add1249, ptr %arrayidx1248, align 4, !dbg !236
  %arrayidx1250 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !236
  %605 = load i32, ptr %arrayidx1250, align 8, !dbg !236
  %arrayidx1251 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !236
  %606 = load i32, ptr %arrayidx1251, align 4, !dbg !236
  %xor1252 = xor i32 %605, %606, !dbg !236
  %call1253 = call i32 @ror32(i32 noundef %xor1252, i32 noundef 12) #7, !dbg !236
  %arrayidx1254 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !236
  store i32 %call1253, ptr %arrayidx1254, align 8, !dbg !236
  %arrayidx1255 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !236
  %607 = load i32, ptr %arrayidx1255, align 8, !dbg !236
  %608 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 11), align 1, !dbg !236
  %idxprom1256 = zext i8 %608 to i64, !dbg !236
  %arrayidx1257 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1256, !dbg !236
  %609 = load i32, ptr %arrayidx1257, align 4, !dbg !236
  %add1258 = add i32 %607, %609, !dbg !236
  %arrayidx1259 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !236
  %610 = load i32, ptr %arrayidx1259, align 4, !dbg !236
  %add1260 = add i32 %610, %add1258, !dbg !236
  store i32 %add1260, ptr %arrayidx1259, align 4, !dbg !236
  %arrayidx1261 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !236
  %611 = load i32, ptr %arrayidx1261, align 16, !dbg !236
  %arrayidx1262 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !236
  %612 = load i32, ptr %arrayidx1262, align 4, !dbg !236
  %xor1263 = xor i32 %611, %612, !dbg !236
  %call1264 = call i32 @ror32(i32 noundef %xor1263, i32 noundef 8) #7, !dbg !236
  %arrayidx1265 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !236
  store i32 %call1264, ptr %arrayidx1265, align 16, !dbg !236
  %arrayidx1266 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !236
  %613 = load i32, ptr %arrayidx1266, align 16, !dbg !236
  %arrayidx1267 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !236
  %614 = load i32, ptr %arrayidx1267, align 4, !dbg !236
  %add1268 = add i32 %614, %613, !dbg !236
  store i32 %add1268, ptr %arrayidx1267, align 4, !dbg !236
  %arrayidx1269 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !236
  %615 = load i32, ptr %arrayidx1269, align 8, !dbg !236
  %arrayidx1270 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !236
  %616 = load i32, ptr %arrayidx1270, align 4, !dbg !236
  %xor1271 = xor i32 %615, %616, !dbg !236
  %call1272 = call i32 @ror32(i32 noundef %xor1271, i32 noundef 7) #7, !dbg !236
  %arrayidx1273 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !236
  store i32 %call1272, ptr %arrayidx1273, align 8, !dbg !236
  br label %do.cond1274, !dbg !236

do.cond1274:                                      ; preds = %do.body1235
  br label %do.end1275, !dbg !236

do.end1275:                                       ; preds = %do.cond1274
  br label %do.body1276, !dbg !224

do.body1276:                                      ; preds = %do.end1275
  %arrayidx1277 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !238
  %617 = load i32, ptr %arrayidx1277, align 4, !dbg !238
  %618 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 12), align 4, !dbg !238
  %idxprom1278 = zext i8 %618 to i64, !dbg !238
  %arrayidx1279 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1278, !dbg !238
  %619 = load i32, ptr %arrayidx1279, align 4, !dbg !238
  %add1280 = add i32 %617, %619, !dbg !238
  %arrayidx1281 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !238
  %620 = load i32, ptr %arrayidx1281, align 8, !dbg !238
  %add1282 = add i32 %620, %add1280, !dbg !238
  store i32 %add1282, ptr %arrayidx1281, align 8, !dbg !238
  %arrayidx1283 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !238
  %621 = load i32, ptr %arrayidx1283, align 4, !dbg !238
  %arrayidx1284 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !238
  %622 = load i32, ptr %arrayidx1284, align 8, !dbg !238
  %xor1285 = xor i32 %621, %622, !dbg !238
  %call1286 = call i32 @ror32(i32 noundef %xor1285, i32 noundef 16) #7, !dbg !238
  %arrayidx1287 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !238
  store i32 %call1286, ptr %arrayidx1287, align 4, !dbg !238
  %arrayidx1288 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !238
  %623 = load i32, ptr %arrayidx1288, align 4, !dbg !238
  %arrayidx1289 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !238
  %624 = load i32, ptr %arrayidx1289, align 16, !dbg !238
  %add1290 = add i32 %624, %623, !dbg !238
  store i32 %add1290, ptr %arrayidx1289, align 16, !dbg !238
  %arrayidx1291 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !238
  %625 = load i32, ptr %arrayidx1291, align 4, !dbg !238
  %arrayidx1292 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !238
  %626 = load i32, ptr %arrayidx1292, align 16, !dbg !238
  %xor1293 = xor i32 %625, %626, !dbg !238
  %call1294 = call i32 @ror32(i32 noundef %xor1293, i32 noundef 12) #7, !dbg !238
  %arrayidx1295 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !238
  store i32 %call1294, ptr %arrayidx1295, align 4, !dbg !238
  %arrayidx1296 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !238
  %627 = load i32, ptr %arrayidx1296, align 4, !dbg !238
  %628 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 13), align 1, !dbg !238
  %idxprom1297 = zext i8 %628 to i64, !dbg !238
  %arrayidx1298 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1297, !dbg !238
  %629 = load i32, ptr %arrayidx1298, align 4, !dbg !238
  %add1299 = add i32 %627, %629, !dbg !238
  %arrayidx1300 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !238
  %630 = load i32, ptr %arrayidx1300, align 8, !dbg !238
  %add1301 = add i32 %630, %add1299, !dbg !238
  store i32 %add1301, ptr %arrayidx1300, align 8, !dbg !238
  %arrayidx1302 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !238
  %631 = load i32, ptr %arrayidx1302, align 4, !dbg !238
  %arrayidx1303 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !238
  %632 = load i32, ptr %arrayidx1303, align 8, !dbg !238
  %xor1304 = xor i32 %631, %632, !dbg !238
  %call1305 = call i32 @ror32(i32 noundef %xor1304, i32 noundef 8) #7, !dbg !238
  %arrayidx1306 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !238
  store i32 %call1305, ptr %arrayidx1306, align 4, !dbg !238
  %arrayidx1307 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !238
  %633 = load i32, ptr %arrayidx1307, align 4, !dbg !238
  %arrayidx1308 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !238
  %634 = load i32, ptr %arrayidx1308, align 16, !dbg !238
  %add1309 = add i32 %634, %633, !dbg !238
  store i32 %add1309, ptr %arrayidx1308, align 16, !dbg !238
  %arrayidx1310 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !238
  %635 = load i32, ptr %arrayidx1310, align 4, !dbg !238
  %arrayidx1311 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !238
  %636 = load i32, ptr %arrayidx1311, align 16, !dbg !238
  %xor1312 = xor i32 %635, %636, !dbg !238
  %call1313 = call i32 @ror32(i32 noundef %xor1312, i32 noundef 7) #7, !dbg !238
  %arrayidx1314 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !238
  store i32 %call1313, ptr %arrayidx1314, align 4, !dbg !238
  br label %do.cond1315, !dbg !238

do.cond1315:                                      ; preds = %do.body1276
  br label %do.end1316, !dbg !238

do.end1316:                                       ; preds = %do.cond1315
  br label %do.body1317, !dbg !224

do.body1317:                                      ; preds = %do.end1316
  %arrayidx1318 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !240
  %637 = load i32, ptr %arrayidx1318, align 16, !dbg !240
  %638 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 14), align 2, !dbg !240
  %idxprom1319 = zext i8 %638 to i64, !dbg !240
  %arrayidx1320 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1319, !dbg !240
  %639 = load i32, ptr %arrayidx1320, align 4, !dbg !240
  %add1321 = add i32 %637, %639, !dbg !240
  %arrayidx1322 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !240
  %640 = load i32, ptr %arrayidx1322, align 4, !dbg !240
  %add1323 = add i32 %640, %add1321, !dbg !240
  store i32 %add1323, ptr %arrayidx1322, align 4, !dbg !240
  %arrayidx1324 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !240
  %641 = load i32, ptr %arrayidx1324, align 8, !dbg !240
  %arrayidx1325 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !240
  %642 = load i32, ptr %arrayidx1325, align 4, !dbg !240
  %xor1326 = xor i32 %641, %642, !dbg !240
  %call1327 = call i32 @ror32(i32 noundef %xor1326, i32 noundef 16) #7, !dbg !240
  %arrayidx1328 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !240
  store i32 %call1327, ptr %arrayidx1328, align 8, !dbg !240
  %arrayidx1329 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !240
  %643 = load i32, ptr %arrayidx1329, align 8, !dbg !240
  %arrayidx1330 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !240
  %644 = load i32, ptr %arrayidx1330, align 4, !dbg !240
  %add1331 = add i32 %644, %643, !dbg !240
  store i32 %add1331, ptr %arrayidx1330, align 4, !dbg !240
  %arrayidx1332 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !240
  %645 = load i32, ptr %arrayidx1332, align 16, !dbg !240
  %arrayidx1333 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !240
  %646 = load i32, ptr %arrayidx1333, align 4, !dbg !240
  %xor1334 = xor i32 %645, %646, !dbg !240
  %call1335 = call i32 @ror32(i32 noundef %xor1334, i32 noundef 12) #7, !dbg !240
  %arrayidx1336 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !240
  store i32 %call1335, ptr %arrayidx1336, align 16, !dbg !240
  %arrayidx1337 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !240
  %647 = load i32, ptr %arrayidx1337, align 16, !dbg !240
  %648 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 15), align 1, !dbg !240
  %idxprom1338 = zext i8 %648 to i64, !dbg !240
  %arrayidx1339 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1338, !dbg !240
  %649 = load i32, ptr %arrayidx1339, align 4, !dbg !240
  %add1340 = add i32 %647, %649, !dbg !240
  %arrayidx1341 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !240
  %650 = load i32, ptr %arrayidx1341, align 4, !dbg !240
  %add1342 = add i32 %650, %add1340, !dbg !240
  store i32 %add1342, ptr %arrayidx1341, align 4, !dbg !240
  %arrayidx1343 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !240
  %651 = load i32, ptr %arrayidx1343, align 8, !dbg !240
  %arrayidx1344 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !240
  %652 = load i32, ptr %arrayidx1344, align 4, !dbg !240
  %xor1345 = xor i32 %651, %652, !dbg !240
  %call1346 = call i32 @ror32(i32 noundef %xor1345, i32 noundef 8) #7, !dbg !240
  %arrayidx1347 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !240
  store i32 %call1346, ptr %arrayidx1347, align 8, !dbg !240
  %arrayidx1348 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !240
  %653 = load i32, ptr %arrayidx1348, align 8, !dbg !240
  %arrayidx1349 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !240
  %654 = load i32, ptr %arrayidx1349, align 4, !dbg !240
  %add1350 = add i32 %654, %653, !dbg !240
  store i32 %add1350, ptr %arrayidx1349, align 4, !dbg !240
  %arrayidx1351 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !240
  %655 = load i32, ptr %arrayidx1351, align 16, !dbg !240
  %arrayidx1352 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !240
  %656 = load i32, ptr %arrayidx1352, align 4, !dbg !240
  %xor1353 = xor i32 %655, %656, !dbg !240
  %call1354 = call i32 @ror32(i32 noundef %xor1353, i32 noundef 7) #7, !dbg !240
  %arrayidx1355 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !240
  store i32 %call1354, ptr %arrayidx1355, align 16, !dbg !240
  br label %do.cond1356, !dbg !240

do.cond1356:                                      ; preds = %do.body1317
  br label %do.end1357, !dbg !240

do.end1357:                                       ; preds = %do.cond1356
  br label %do.cond1358, !dbg !224

do.cond1358:                                      ; preds = %do.end1357
  br label %do.end1359, !dbg !224

do.end1359:                                       ; preds = %do.cond1358
  br label %do.body1360, !dbg !242

do.body1360:                                      ; preds = %do.end1359
  br label %do.body1361, !dbg !243

do.body1361:                                      ; preds = %do.body1360
  %arrayidx1362 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !245
  %657 = load i32, ptr %arrayidx1362, align 16, !dbg !245
  %658 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4), align 16, !dbg !245
  %idxprom1363 = zext i8 %658 to i64, !dbg !245
  %arrayidx1364 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1363, !dbg !245
  %659 = load i32, ptr %arrayidx1364, align 4, !dbg !245
  %add1365 = add i32 %657, %659, !dbg !245
  %arrayidx1366 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !245
  %660 = load i32, ptr %arrayidx1366, align 16, !dbg !245
  %add1367 = add i32 %660, %add1365, !dbg !245
  store i32 %add1367, ptr %arrayidx1366, align 16, !dbg !245
  %arrayidx1368 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !245
  %661 = load i32, ptr %arrayidx1368, align 16, !dbg !245
  %arrayidx1369 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !245
  %662 = load i32, ptr %arrayidx1369, align 16, !dbg !245
  %xor1370 = xor i32 %661, %662, !dbg !245
  %call1371 = call i32 @ror32(i32 noundef %xor1370, i32 noundef 16) #7, !dbg !245
  %arrayidx1372 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !245
  store i32 %call1371, ptr %arrayidx1372, align 16, !dbg !245
  %arrayidx1373 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !245
  %663 = load i32, ptr %arrayidx1373, align 16, !dbg !245
  %arrayidx1374 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !245
  %664 = load i32, ptr %arrayidx1374, align 16, !dbg !245
  %add1375 = add i32 %664, %663, !dbg !245
  store i32 %add1375, ptr %arrayidx1374, align 16, !dbg !245
  %arrayidx1376 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !245
  %665 = load i32, ptr %arrayidx1376, align 16, !dbg !245
  %arrayidx1377 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !245
  %666 = load i32, ptr %arrayidx1377, align 16, !dbg !245
  %xor1378 = xor i32 %665, %666, !dbg !245
  %call1379 = call i32 @ror32(i32 noundef %xor1378, i32 noundef 12) #7, !dbg !245
  %arrayidx1380 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !245
  store i32 %call1379, ptr %arrayidx1380, align 16, !dbg !245
  %arrayidx1381 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !245
  %667 = load i32, ptr %arrayidx1381, align 16, !dbg !245
  %668 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 1), align 1, !dbg !245
  %idxprom1382 = zext i8 %668 to i64, !dbg !245
  %arrayidx1383 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1382, !dbg !245
  %669 = load i32, ptr %arrayidx1383, align 4, !dbg !245
  %add1384 = add i32 %667, %669, !dbg !245
  %arrayidx1385 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !245
  %670 = load i32, ptr %arrayidx1385, align 16, !dbg !245
  %add1386 = add i32 %670, %add1384, !dbg !245
  store i32 %add1386, ptr %arrayidx1385, align 16, !dbg !245
  %arrayidx1387 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !245
  %671 = load i32, ptr %arrayidx1387, align 16, !dbg !245
  %arrayidx1388 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !245
  %672 = load i32, ptr %arrayidx1388, align 16, !dbg !245
  %xor1389 = xor i32 %671, %672, !dbg !245
  %call1390 = call i32 @ror32(i32 noundef %xor1389, i32 noundef 8) #7, !dbg !245
  %arrayidx1391 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !245
  store i32 %call1390, ptr %arrayidx1391, align 16, !dbg !245
  %arrayidx1392 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !245
  %673 = load i32, ptr %arrayidx1392, align 16, !dbg !245
  %arrayidx1393 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !245
  %674 = load i32, ptr %arrayidx1393, align 16, !dbg !245
  %add1394 = add i32 %674, %673, !dbg !245
  store i32 %add1394, ptr %arrayidx1393, align 16, !dbg !245
  %arrayidx1395 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !245
  %675 = load i32, ptr %arrayidx1395, align 16, !dbg !245
  %arrayidx1396 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !245
  %676 = load i32, ptr %arrayidx1396, align 16, !dbg !245
  %xor1397 = xor i32 %675, %676, !dbg !245
  %call1398 = call i32 @ror32(i32 noundef %xor1397, i32 noundef 7) #7, !dbg !245
  %arrayidx1399 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !245
  store i32 %call1398, ptr %arrayidx1399, align 16, !dbg !245
  br label %do.cond1400, !dbg !245

do.cond1400:                                      ; preds = %do.body1361
  br label %do.end1401, !dbg !245

do.end1401:                                       ; preds = %do.cond1400
  br label %do.body1402, !dbg !243

do.body1402:                                      ; preds = %do.end1401
  %arrayidx1403 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !247
  %677 = load i32, ptr %arrayidx1403, align 4, !dbg !247
  %678 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 2), align 2, !dbg !247
  %idxprom1404 = zext i8 %678 to i64, !dbg !247
  %arrayidx1405 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1404, !dbg !247
  %679 = load i32, ptr %arrayidx1405, align 4, !dbg !247
  %add1406 = add i32 %677, %679, !dbg !247
  %arrayidx1407 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !247
  %680 = load i32, ptr %arrayidx1407, align 4, !dbg !247
  %add1408 = add i32 %680, %add1406, !dbg !247
  store i32 %add1408, ptr %arrayidx1407, align 4, !dbg !247
  %arrayidx1409 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !247
  %681 = load i32, ptr %arrayidx1409, align 4, !dbg !247
  %arrayidx1410 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !247
  %682 = load i32, ptr %arrayidx1410, align 4, !dbg !247
  %xor1411 = xor i32 %681, %682, !dbg !247
  %call1412 = call i32 @ror32(i32 noundef %xor1411, i32 noundef 16) #7, !dbg !247
  %arrayidx1413 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !247
  store i32 %call1412, ptr %arrayidx1413, align 4, !dbg !247
  %arrayidx1414 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !247
  %683 = load i32, ptr %arrayidx1414, align 4, !dbg !247
  %arrayidx1415 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !247
  %684 = load i32, ptr %arrayidx1415, align 4, !dbg !247
  %add1416 = add i32 %684, %683, !dbg !247
  store i32 %add1416, ptr %arrayidx1415, align 4, !dbg !247
  %arrayidx1417 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !247
  %685 = load i32, ptr %arrayidx1417, align 4, !dbg !247
  %arrayidx1418 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !247
  %686 = load i32, ptr %arrayidx1418, align 4, !dbg !247
  %xor1419 = xor i32 %685, %686, !dbg !247
  %call1420 = call i32 @ror32(i32 noundef %xor1419, i32 noundef 12) #7, !dbg !247
  %arrayidx1421 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !247
  store i32 %call1420, ptr %arrayidx1421, align 4, !dbg !247
  %arrayidx1422 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !247
  %687 = load i32, ptr %arrayidx1422, align 4, !dbg !247
  %688 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 3), align 1, !dbg !247
  %idxprom1423 = zext i8 %688 to i64, !dbg !247
  %arrayidx1424 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1423, !dbg !247
  %689 = load i32, ptr %arrayidx1424, align 4, !dbg !247
  %add1425 = add i32 %687, %689, !dbg !247
  %arrayidx1426 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !247
  %690 = load i32, ptr %arrayidx1426, align 4, !dbg !247
  %add1427 = add i32 %690, %add1425, !dbg !247
  store i32 %add1427, ptr %arrayidx1426, align 4, !dbg !247
  %arrayidx1428 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !247
  %691 = load i32, ptr %arrayidx1428, align 4, !dbg !247
  %arrayidx1429 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !247
  %692 = load i32, ptr %arrayidx1429, align 4, !dbg !247
  %xor1430 = xor i32 %691, %692, !dbg !247
  %call1431 = call i32 @ror32(i32 noundef %xor1430, i32 noundef 8) #7, !dbg !247
  %arrayidx1432 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !247
  store i32 %call1431, ptr %arrayidx1432, align 4, !dbg !247
  %arrayidx1433 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !247
  %693 = load i32, ptr %arrayidx1433, align 4, !dbg !247
  %arrayidx1434 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !247
  %694 = load i32, ptr %arrayidx1434, align 4, !dbg !247
  %add1435 = add i32 %694, %693, !dbg !247
  store i32 %add1435, ptr %arrayidx1434, align 4, !dbg !247
  %arrayidx1436 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !247
  %695 = load i32, ptr %arrayidx1436, align 4, !dbg !247
  %arrayidx1437 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !247
  %696 = load i32, ptr %arrayidx1437, align 4, !dbg !247
  %xor1438 = xor i32 %695, %696, !dbg !247
  %call1439 = call i32 @ror32(i32 noundef %xor1438, i32 noundef 7) #7, !dbg !247
  %arrayidx1440 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !247
  store i32 %call1439, ptr %arrayidx1440, align 4, !dbg !247
  br label %do.cond1441, !dbg !247

do.cond1441:                                      ; preds = %do.body1402
  br label %do.end1442, !dbg !247

do.end1442:                                       ; preds = %do.cond1441
  br label %do.body1443, !dbg !243

do.body1443:                                      ; preds = %do.end1442
  %arrayidx1444 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !249
  %697 = load i32, ptr %arrayidx1444, align 8, !dbg !249
  %698 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 4), align 4, !dbg !249
  %idxprom1445 = zext i8 %698 to i64, !dbg !249
  %arrayidx1446 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1445, !dbg !249
  %699 = load i32, ptr %arrayidx1446, align 4, !dbg !249
  %add1447 = add i32 %697, %699, !dbg !249
  %arrayidx1448 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !249
  %700 = load i32, ptr %arrayidx1448, align 8, !dbg !249
  %add1449 = add i32 %700, %add1447, !dbg !249
  store i32 %add1449, ptr %arrayidx1448, align 8, !dbg !249
  %arrayidx1450 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !249
  %701 = load i32, ptr %arrayidx1450, align 8, !dbg !249
  %arrayidx1451 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !249
  %702 = load i32, ptr %arrayidx1451, align 8, !dbg !249
  %xor1452 = xor i32 %701, %702, !dbg !249
  %call1453 = call i32 @ror32(i32 noundef %xor1452, i32 noundef 16) #7, !dbg !249
  %arrayidx1454 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !249
  store i32 %call1453, ptr %arrayidx1454, align 8, !dbg !249
  %arrayidx1455 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !249
  %703 = load i32, ptr %arrayidx1455, align 8, !dbg !249
  %arrayidx1456 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !249
  %704 = load i32, ptr %arrayidx1456, align 8, !dbg !249
  %add1457 = add i32 %704, %703, !dbg !249
  store i32 %add1457, ptr %arrayidx1456, align 8, !dbg !249
  %arrayidx1458 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !249
  %705 = load i32, ptr %arrayidx1458, align 8, !dbg !249
  %arrayidx1459 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !249
  %706 = load i32, ptr %arrayidx1459, align 8, !dbg !249
  %xor1460 = xor i32 %705, %706, !dbg !249
  %call1461 = call i32 @ror32(i32 noundef %xor1460, i32 noundef 12) #7, !dbg !249
  %arrayidx1462 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !249
  store i32 %call1461, ptr %arrayidx1462, align 8, !dbg !249
  %arrayidx1463 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !249
  %707 = load i32, ptr %arrayidx1463, align 8, !dbg !249
  %708 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 5), align 1, !dbg !249
  %idxprom1464 = zext i8 %708 to i64, !dbg !249
  %arrayidx1465 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1464, !dbg !249
  %709 = load i32, ptr %arrayidx1465, align 4, !dbg !249
  %add1466 = add i32 %707, %709, !dbg !249
  %arrayidx1467 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !249
  %710 = load i32, ptr %arrayidx1467, align 8, !dbg !249
  %add1468 = add i32 %710, %add1466, !dbg !249
  store i32 %add1468, ptr %arrayidx1467, align 8, !dbg !249
  %arrayidx1469 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !249
  %711 = load i32, ptr %arrayidx1469, align 8, !dbg !249
  %arrayidx1470 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !249
  %712 = load i32, ptr %arrayidx1470, align 8, !dbg !249
  %xor1471 = xor i32 %711, %712, !dbg !249
  %call1472 = call i32 @ror32(i32 noundef %xor1471, i32 noundef 8) #7, !dbg !249
  %arrayidx1473 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !249
  store i32 %call1472, ptr %arrayidx1473, align 8, !dbg !249
  %arrayidx1474 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !249
  %713 = load i32, ptr %arrayidx1474, align 8, !dbg !249
  %arrayidx1475 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !249
  %714 = load i32, ptr %arrayidx1475, align 8, !dbg !249
  %add1476 = add i32 %714, %713, !dbg !249
  store i32 %add1476, ptr %arrayidx1475, align 8, !dbg !249
  %arrayidx1477 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !249
  %715 = load i32, ptr %arrayidx1477, align 8, !dbg !249
  %arrayidx1478 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !249
  %716 = load i32, ptr %arrayidx1478, align 8, !dbg !249
  %xor1479 = xor i32 %715, %716, !dbg !249
  %call1480 = call i32 @ror32(i32 noundef %xor1479, i32 noundef 7) #7, !dbg !249
  %arrayidx1481 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !249
  store i32 %call1480, ptr %arrayidx1481, align 8, !dbg !249
  br label %do.cond1482, !dbg !249

do.cond1482:                                      ; preds = %do.body1443
  br label %do.end1483, !dbg !249

do.end1483:                                       ; preds = %do.cond1482
  br label %do.body1484, !dbg !243

do.body1484:                                      ; preds = %do.end1483
  %arrayidx1485 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !251
  %717 = load i32, ptr %arrayidx1485, align 4, !dbg !251
  %718 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 6), align 2, !dbg !251
  %idxprom1486 = zext i8 %718 to i64, !dbg !251
  %arrayidx1487 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1486, !dbg !251
  %719 = load i32, ptr %arrayidx1487, align 4, !dbg !251
  %add1488 = add i32 %717, %719, !dbg !251
  %arrayidx1489 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !251
  %720 = load i32, ptr %arrayidx1489, align 4, !dbg !251
  %add1490 = add i32 %720, %add1488, !dbg !251
  store i32 %add1490, ptr %arrayidx1489, align 4, !dbg !251
  %arrayidx1491 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !251
  %721 = load i32, ptr %arrayidx1491, align 4, !dbg !251
  %arrayidx1492 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !251
  %722 = load i32, ptr %arrayidx1492, align 4, !dbg !251
  %xor1493 = xor i32 %721, %722, !dbg !251
  %call1494 = call i32 @ror32(i32 noundef %xor1493, i32 noundef 16) #7, !dbg !251
  %arrayidx1495 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !251
  store i32 %call1494, ptr %arrayidx1495, align 4, !dbg !251
  %arrayidx1496 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !251
  %723 = load i32, ptr %arrayidx1496, align 4, !dbg !251
  %arrayidx1497 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !251
  %724 = load i32, ptr %arrayidx1497, align 4, !dbg !251
  %add1498 = add i32 %724, %723, !dbg !251
  store i32 %add1498, ptr %arrayidx1497, align 4, !dbg !251
  %arrayidx1499 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !251
  %725 = load i32, ptr %arrayidx1499, align 4, !dbg !251
  %arrayidx1500 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !251
  %726 = load i32, ptr %arrayidx1500, align 4, !dbg !251
  %xor1501 = xor i32 %725, %726, !dbg !251
  %call1502 = call i32 @ror32(i32 noundef %xor1501, i32 noundef 12) #7, !dbg !251
  %arrayidx1503 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !251
  store i32 %call1502, ptr %arrayidx1503, align 4, !dbg !251
  %arrayidx1504 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !251
  %727 = load i32, ptr %arrayidx1504, align 4, !dbg !251
  %728 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 7), align 1, !dbg !251
  %idxprom1505 = zext i8 %728 to i64, !dbg !251
  %arrayidx1506 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1505, !dbg !251
  %729 = load i32, ptr %arrayidx1506, align 4, !dbg !251
  %add1507 = add i32 %727, %729, !dbg !251
  %arrayidx1508 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !251
  %730 = load i32, ptr %arrayidx1508, align 4, !dbg !251
  %add1509 = add i32 %730, %add1507, !dbg !251
  store i32 %add1509, ptr %arrayidx1508, align 4, !dbg !251
  %arrayidx1510 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !251
  %731 = load i32, ptr %arrayidx1510, align 4, !dbg !251
  %arrayidx1511 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !251
  %732 = load i32, ptr %arrayidx1511, align 4, !dbg !251
  %xor1512 = xor i32 %731, %732, !dbg !251
  %call1513 = call i32 @ror32(i32 noundef %xor1512, i32 noundef 8) #7, !dbg !251
  %arrayidx1514 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !251
  store i32 %call1513, ptr %arrayidx1514, align 4, !dbg !251
  %arrayidx1515 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !251
  %733 = load i32, ptr %arrayidx1515, align 4, !dbg !251
  %arrayidx1516 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !251
  %734 = load i32, ptr %arrayidx1516, align 4, !dbg !251
  %add1517 = add i32 %734, %733, !dbg !251
  store i32 %add1517, ptr %arrayidx1516, align 4, !dbg !251
  %arrayidx1518 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !251
  %735 = load i32, ptr %arrayidx1518, align 4, !dbg !251
  %arrayidx1519 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !251
  %736 = load i32, ptr %arrayidx1519, align 4, !dbg !251
  %xor1520 = xor i32 %735, %736, !dbg !251
  %call1521 = call i32 @ror32(i32 noundef %xor1520, i32 noundef 7) #7, !dbg !251
  %arrayidx1522 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !251
  store i32 %call1521, ptr %arrayidx1522, align 4, !dbg !251
  br label %do.cond1523, !dbg !251

do.cond1523:                                      ; preds = %do.body1484
  br label %do.end1524, !dbg !251

do.end1524:                                       ; preds = %do.cond1523
  br label %do.body1525, !dbg !243

do.body1525:                                      ; preds = %do.end1524
  %arrayidx1526 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !253
  %737 = load i32, ptr %arrayidx1526, align 4, !dbg !253
  %738 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 8), align 8, !dbg !253
  %idxprom1527 = zext i8 %738 to i64, !dbg !253
  %arrayidx1528 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1527, !dbg !253
  %739 = load i32, ptr %arrayidx1528, align 4, !dbg !253
  %add1529 = add i32 %737, %739, !dbg !253
  %arrayidx1530 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !253
  %740 = load i32, ptr %arrayidx1530, align 16, !dbg !253
  %add1531 = add i32 %740, %add1529, !dbg !253
  store i32 %add1531, ptr %arrayidx1530, align 16, !dbg !253
  %arrayidx1532 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !253
  %741 = load i32, ptr %arrayidx1532, align 4, !dbg !253
  %arrayidx1533 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !253
  %742 = load i32, ptr %arrayidx1533, align 16, !dbg !253
  %xor1534 = xor i32 %741, %742, !dbg !253
  %call1535 = call i32 @ror32(i32 noundef %xor1534, i32 noundef 16) #7, !dbg !253
  %arrayidx1536 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !253
  store i32 %call1535, ptr %arrayidx1536, align 4, !dbg !253
  %arrayidx1537 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !253
  %743 = load i32, ptr %arrayidx1537, align 4, !dbg !253
  %arrayidx1538 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !253
  %744 = load i32, ptr %arrayidx1538, align 8, !dbg !253
  %add1539 = add i32 %744, %743, !dbg !253
  store i32 %add1539, ptr %arrayidx1538, align 8, !dbg !253
  %arrayidx1540 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !253
  %745 = load i32, ptr %arrayidx1540, align 4, !dbg !253
  %arrayidx1541 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !253
  %746 = load i32, ptr %arrayidx1541, align 8, !dbg !253
  %xor1542 = xor i32 %745, %746, !dbg !253
  %call1543 = call i32 @ror32(i32 noundef %xor1542, i32 noundef 12) #7, !dbg !253
  %arrayidx1544 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !253
  store i32 %call1543, ptr %arrayidx1544, align 4, !dbg !253
  %arrayidx1545 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !253
  %747 = load i32, ptr %arrayidx1545, align 4, !dbg !253
  %748 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 9), align 1, !dbg !253
  %idxprom1546 = zext i8 %748 to i64, !dbg !253
  %arrayidx1547 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1546, !dbg !253
  %749 = load i32, ptr %arrayidx1547, align 4, !dbg !253
  %add1548 = add i32 %747, %749, !dbg !253
  %arrayidx1549 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !253
  %750 = load i32, ptr %arrayidx1549, align 16, !dbg !253
  %add1550 = add i32 %750, %add1548, !dbg !253
  store i32 %add1550, ptr %arrayidx1549, align 16, !dbg !253
  %arrayidx1551 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !253
  %751 = load i32, ptr %arrayidx1551, align 4, !dbg !253
  %arrayidx1552 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !253
  %752 = load i32, ptr %arrayidx1552, align 16, !dbg !253
  %xor1553 = xor i32 %751, %752, !dbg !253
  %call1554 = call i32 @ror32(i32 noundef %xor1553, i32 noundef 8) #7, !dbg !253
  %arrayidx1555 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !253
  store i32 %call1554, ptr %arrayidx1555, align 4, !dbg !253
  %arrayidx1556 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !253
  %753 = load i32, ptr %arrayidx1556, align 4, !dbg !253
  %arrayidx1557 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !253
  %754 = load i32, ptr %arrayidx1557, align 8, !dbg !253
  %add1558 = add i32 %754, %753, !dbg !253
  store i32 %add1558, ptr %arrayidx1557, align 8, !dbg !253
  %arrayidx1559 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !253
  %755 = load i32, ptr %arrayidx1559, align 4, !dbg !253
  %arrayidx1560 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !253
  %756 = load i32, ptr %arrayidx1560, align 8, !dbg !253
  %xor1561 = xor i32 %755, %756, !dbg !253
  %call1562 = call i32 @ror32(i32 noundef %xor1561, i32 noundef 7) #7, !dbg !253
  %arrayidx1563 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !253
  store i32 %call1562, ptr %arrayidx1563, align 4, !dbg !253
  br label %do.cond1564, !dbg !253

do.cond1564:                                      ; preds = %do.body1525
  br label %do.end1565, !dbg !253

do.end1565:                                       ; preds = %do.cond1564
  br label %do.body1566, !dbg !243

do.body1566:                                      ; preds = %do.end1565
  %arrayidx1567 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !255
  %757 = load i32, ptr %arrayidx1567, align 8, !dbg !255
  %758 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 10), align 2, !dbg !255
  %idxprom1568 = zext i8 %758 to i64, !dbg !255
  %arrayidx1569 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1568, !dbg !255
  %759 = load i32, ptr %arrayidx1569, align 4, !dbg !255
  %add1570 = add i32 %757, %759, !dbg !255
  %arrayidx1571 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !255
  %760 = load i32, ptr %arrayidx1571, align 4, !dbg !255
  %add1572 = add i32 %760, %add1570, !dbg !255
  store i32 %add1572, ptr %arrayidx1571, align 4, !dbg !255
  %arrayidx1573 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !255
  %761 = load i32, ptr %arrayidx1573, align 16, !dbg !255
  %arrayidx1574 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !255
  %762 = load i32, ptr %arrayidx1574, align 4, !dbg !255
  %xor1575 = xor i32 %761, %762, !dbg !255
  %call1576 = call i32 @ror32(i32 noundef %xor1575, i32 noundef 16) #7, !dbg !255
  %arrayidx1577 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !255
  store i32 %call1576, ptr %arrayidx1577, align 16, !dbg !255
  %arrayidx1578 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !255
  %763 = load i32, ptr %arrayidx1578, align 16, !dbg !255
  %arrayidx1579 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !255
  %764 = load i32, ptr %arrayidx1579, align 4, !dbg !255
  %add1580 = add i32 %764, %763, !dbg !255
  store i32 %add1580, ptr %arrayidx1579, align 4, !dbg !255
  %arrayidx1581 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !255
  %765 = load i32, ptr %arrayidx1581, align 8, !dbg !255
  %arrayidx1582 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !255
  %766 = load i32, ptr %arrayidx1582, align 4, !dbg !255
  %xor1583 = xor i32 %765, %766, !dbg !255
  %call1584 = call i32 @ror32(i32 noundef %xor1583, i32 noundef 12) #7, !dbg !255
  %arrayidx1585 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !255
  store i32 %call1584, ptr %arrayidx1585, align 8, !dbg !255
  %arrayidx1586 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !255
  %767 = load i32, ptr %arrayidx1586, align 8, !dbg !255
  %768 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 11), align 1, !dbg !255
  %idxprom1587 = zext i8 %768 to i64, !dbg !255
  %arrayidx1588 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1587, !dbg !255
  %769 = load i32, ptr %arrayidx1588, align 4, !dbg !255
  %add1589 = add i32 %767, %769, !dbg !255
  %arrayidx1590 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !255
  %770 = load i32, ptr %arrayidx1590, align 4, !dbg !255
  %add1591 = add i32 %770, %add1589, !dbg !255
  store i32 %add1591, ptr %arrayidx1590, align 4, !dbg !255
  %arrayidx1592 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !255
  %771 = load i32, ptr %arrayidx1592, align 16, !dbg !255
  %arrayidx1593 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !255
  %772 = load i32, ptr %arrayidx1593, align 4, !dbg !255
  %xor1594 = xor i32 %771, %772, !dbg !255
  %call1595 = call i32 @ror32(i32 noundef %xor1594, i32 noundef 8) #7, !dbg !255
  %arrayidx1596 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !255
  store i32 %call1595, ptr %arrayidx1596, align 16, !dbg !255
  %arrayidx1597 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !255
  %773 = load i32, ptr %arrayidx1597, align 16, !dbg !255
  %arrayidx1598 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !255
  %774 = load i32, ptr %arrayidx1598, align 4, !dbg !255
  %add1599 = add i32 %774, %773, !dbg !255
  store i32 %add1599, ptr %arrayidx1598, align 4, !dbg !255
  %arrayidx1600 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !255
  %775 = load i32, ptr %arrayidx1600, align 8, !dbg !255
  %arrayidx1601 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !255
  %776 = load i32, ptr %arrayidx1601, align 4, !dbg !255
  %xor1602 = xor i32 %775, %776, !dbg !255
  %call1603 = call i32 @ror32(i32 noundef %xor1602, i32 noundef 7) #7, !dbg !255
  %arrayidx1604 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !255
  store i32 %call1603, ptr %arrayidx1604, align 8, !dbg !255
  br label %do.cond1605, !dbg !255

do.cond1605:                                      ; preds = %do.body1566
  br label %do.end1606, !dbg !255

do.end1606:                                       ; preds = %do.cond1605
  br label %do.body1607, !dbg !243

do.body1607:                                      ; preds = %do.end1606
  %arrayidx1608 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !257
  %777 = load i32, ptr %arrayidx1608, align 4, !dbg !257
  %778 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 12), align 4, !dbg !257
  %idxprom1609 = zext i8 %778 to i64, !dbg !257
  %arrayidx1610 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1609, !dbg !257
  %779 = load i32, ptr %arrayidx1610, align 4, !dbg !257
  %add1611 = add i32 %777, %779, !dbg !257
  %arrayidx1612 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !257
  %780 = load i32, ptr %arrayidx1612, align 8, !dbg !257
  %add1613 = add i32 %780, %add1611, !dbg !257
  store i32 %add1613, ptr %arrayidx1612, align 8, !dbg !257
  %arrayidx1614 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !257
  %781 = load i32, ptr %arrayidx1614, align 4, !dbg !257
  %arrayidx1615 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !257
  %782 = load i32, ptr %arrayidx1615, align 8, !dbg !257
  %xor1616 = xor i32 %781, %782, !dbg !257
  %call1617 = call i32 @ror32(i32 noundef %xor1616, i32 noundef 16) #7, !dbg !257
  %arrayidx1618 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !257
  store i32 %call1617, ptr %arrayidx1618, align 4, !dbg !257
  %arrayidx1619 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !257
  %783 = load i32, ptr %arrayidx1619, align 4, !dbg !257
  %arrayidx1620 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !257
  %784 = load i32, ptr %arrayidx1620, align 16, !dbg !257
  %add1621 = add i32 %784, %783, !dbg !257
  store i32 %add1621, ptr %arrayidx1620, align 16, !dbg !257
  %arrayidx1622 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !257
  %785 = load i32, ptr %arrayidx1622, align 4, !dbg !257
  %arrayidx1623 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !257
  %786 = load i32, ptr %arrayidx1623, align 16, !dbg !257
  %xor1624 = xor i32 %785, %786, !dbg !257
  %call1625 = call i32 @ror32(i32 noundef %xor1624, i32 noundef 12) #7, !dbg !257
  %arrayidx1626 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !257
  store i32 %call1625, ptr %arrayidx1626, align 4, !dbg !257
  %arrayidx1627 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !257
  %787 = load i32, ptr %arrayidx1627, align 4, !dbg !257
  %788 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 13), align 1, !dbg !257
  %idxprom1628 = zext i8 %788 to i64, !dbg !257
  %arrayidx1629 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1628, !dbg !257
  %789 = load i32, ptr %arrayidx1629, align 4, !dbg !257
  %add1630 = add i32 %787, %789, !dbg !257
  %arrayidx1631 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !257
  %790 = load i32, ptr %arrayidx1631, align 8, !dbg !257
  %add1632 = add i32 %790, %add1630, !dbg !257
  store i32 %add1632, ptr %arrayidx1631, align 8, !dbg !257
  %arrayidx1633 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !257
  %791 = load i32, ptr %arrayidx1633, align 4, !dbg !257
  %arrayidx1634 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !257
  %792 = load i32, ptr %arrayidx1634, align 8, !dbg !257
  %xor1635 = xor i32 %791, %792, !dbg !257
  %call1636 = call i32 @ror32(i32 noundef %xor1635, i32 noundef 8) #7, !dbg !257
  %arrayidx1637 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !257
  store i32 %call1636, ptr %arrayidx1637, align 4, !dbg !257
  %arrayidx1638 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !257
  %793 = load i32, ptr %arrayidx1638, align 4, !dbg !257
  %arrayidx1639 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !257
  %794 = load i32, ptr %arrayidx1639, align 16, !dbg !257
  %add1640 = add i32 %794, %793, !dbg !257
  store i32 %add1640, ptr %arrayidx1639, align 16, !dbg !257
  %arrayidx1641 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !257
  %795 = load i32, ptr %arrayidx1641, align 4, !dbg !257
  %arrayidx1642 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !257
  %796 = load i32, ptr %arrayidx1642, align 16, !dbg !257
  %xor1643 = xor i32 %795, %796, !dbg !257
  %call1644 = call i32 @ror32(i32 noundef %xor1643, i32 noundef 7) #7, !dbg !257
  %arrayidx1645 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !257
  store i32 %call1644, ptr %arrayidx1645, align 4, !dbg !257
  br label %do.cond1646, !dbg !257

do.cond1646:                                      ; preds = %do.body1607
  br label %do.end1647, !dbg !257

do.end1647:                                       ; preds = %do.cond1646
  br label %do.body1648, !dbg !243

do.body1648:                                      ; preds = %do.end1647
  %arrayidx1649 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !259
  %797 = load i32, ptr %arrayidx1649, align 16, !dbg !259
  %798 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 14), align 2, !dbg !259
  %idxprom1650 = zext i8 %798 to i64, !dbg !259
  %arrayidx1651 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1650, !dbg !259
  %799 = load i32, ptr %arrayidx1651, align 4, !dbg !259
  %add1652 = add i32 %797, %799, !dbg !259
  %arrayidx1653 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !259
  %800 = load i32, ptr %arrayidx1653, align 4, !dbg !259
  %add1654 = add i32 %800, %add1652, !dbg !259
  store i32 %add1654, ptr %arrayidx1653, align 4, !dbg !259
  %arrayidx1655 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !259
  %801 = load i32, ptr %arrayidx1655, align 8, !dbg !259
  %arrayidx1656 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !259
  %802 = load i32, ptr %arrayidx1656, align 4, !dbg !259
  %xor1657 = xor i32 %801, %802, !dbg !259
  %call1658 = call i32 @ror32(i32 noundef %xor1657, i32 noundef 16) #7, !dbg !259
  %arrayidx1659 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !259
  store i32 %call1658, ptr %arrayidx1659, align 8, !dbg !259
  %arrayidx1660 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !259
  %803 = load i32, ptr %arrayidx1660, align 8, !dbg !259
  %arrayidx1661 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !259
  %804 = load i32, ptr %arrayidx1661, align 4, !dbg !259
  %add1662 = add i32 %804, %803, !dbg !259
  store i32 %add1662, ptr %arrayidx1661, align 4, !dbg !259
  %arrayidx1663 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !259
  %805 = load i32, ptr %arrayidx1663, align 16, !dbg !259
  %arrayidx1664 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !259
  %806 = load i32, ptr %arrayidx1664, align 4, !dbg !259
  %xor1665 = xor i32 %805, %806, !dbg !259
  %call1666 = call i32 @ror32(i32 noundef %xor1665, i32 noundef 12) #7, !dbg !259
  %arrayidx1667 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !259
  store i32 %call1666, ptr %arrayidx1667, align 16, !dbg !259
  %arrayidx1668 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !259
  %807 = load i32, ptr %arrayidx1668, align 16, !dbg !259
  %808 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 15), align 1, !dbg !259
  %idxprom1669 = zext i8 %808 to i64, !dbg !259
  %arrayidx1670 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1669, !dbg !259
  %809 = load i32, ptr %arrayidx1670, align 4, !dbg !259
  %add1671 = add i32 %807, %809, !dbg !259
  %arrayidx1672 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !259
  %810 = load i32, ptr %arrayidx1672, align 4, !dbg !259
  %add1673 = add i32 %810, %add1671, !dbg !259
  store i32 %add1673, ptr %arrayidx1672, align 4, !dbg !259
  %arrayidx1674 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !259
  %811 = load i32, ptr %arrayidx1674, align 8, !dbg !259
  %arrayidx1675 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !259
  %812 = load i32, ptr %arrayidx1675, align 4, !dbg !259
  %xor1676 = xor i32 %811, %812, !dbg !259
  %call1677 = call i32 @ror32(i32 noundef %xor1676, i32 noundef 8) #7, !dbg !259
  %arrayidx1678 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !259
  store i32 %call1677, ptr %arrayidx1678, align 8, !dbg !259
  %arrayidx1679 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !259
  %813 = load i32, ptr %arrayidx1679, align 8, !dbg !259
  %arrayidx1680 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !259
  %814 = load i32, ptr %arrayidx1680, align 4, !dbg !259
  %add1681 = add i32 %814, %813, !dbg !259
  store i32 %add1681, ptr %arrayidx1680, align 4, !dbg !259
  %arrayidx1682 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !259
  %815 = load i32, ptr %arrayidx1682, align 16, !dbg !259
  %arrayidx1683 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !259
  %816 = load i32, ptr %arrayidx1683, align 4, !dbg !259
  %xor1684 = xor i32 %815, %816, !dbg !259
  %call1685 = call i32 @ror32(i32 noundef %xor1684, i32 noundef 7) #7, !dbg !259
  %arrayidx1686 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !259
  store i32 %call1685, ptr %arrayidx1686, align 16, !dbg !259
  br label %do.cond1687, !dbg !259

do.cond1687:                                      ; preds = %do.body1648
  br label %do.end1688, !dbg !259

do.end1688:                                       ; preds = %do.cond1687
  br label %do.cond1689, !dbg !243

do.cond1689:                                      ; preds = %do.end1688
  br label %do.end1690, !dbg !243

do.end1690:                                       ; preds = %do.cond1689
  br label %do.body1691, !dbg !261

do.body1691:                                      ; preds = %do.end1690
  br label %do.body1692, !dbg !262

do.body1692:                                      ; preds = %do.body1691
  %arrayidx1693 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !264
  %817 = load i32, ptr %arrayidx1693, align 16, !dbg !264
  %818 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5), align 16, !dbg !264
  %idxprom1694 = zext i8 %818 to i64, !dbg !264
  %arrayidx1695 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1694, !dbg !264
  %819 = load i32, ptr %arrayidx1695, align 4, !dbg !264
  %add1696 = add i32 %817, %819, !dbg !264
  %arrayidx1697 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !264
  %820 = load i32, ptr %arrayidx1697, align 16, !dbg !264
  %add1698 = add i32 %820, %add1696, !dbg !264
  store i32 %add1698, ptr %arrayidx1697, align 16, !dbg !264
  %arrayidx1699 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !264
  %821 = load i32, ptr %arrayidx1699, align 16, !dbg !264
  %arrayidx1700 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !264
  %822 = load i32, ptr %arrayidx1700, align 16, !dbg !264
  %xor1701 = xor i32 %821, %822, !dbg !264
  %call1702 = call i32 @ror32(i32 noundef %xor1701, i32 noundef 16) #7, !dbg !264
  %arrayidx1703 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !264
  store i32 %call1702, ptr %arrayidx1703, align 16, !dbg !264
  %arrayidx1704 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !264
  %823 = load i32, ptr %arrayidx1704, align 16, !dbg !264
  %arrayidx1705 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !264
  %824 = load i32, ptr %arrayidx1705, align 16, !dbg !264
  %add1706 = add i32 %824, %823, !dbg !264
  store i32 %add1706, ptr %arrayidx1705, align 16, !dbg !264
  %arrayidx1707 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !264
  %825 = load i32, ptr %arrayidx1707, align 16, !dbg !264
  %arrayidx1708 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !264
  %826 = load i32, ptr %arrayidx1708, align 16, !dbg !264
  %xor1709 = xor i32 %825, %826, !dbg !264
  %call1710 = call i32 @ror32(i32 noundef %xor1709, i32 noundef 12) #7, !dbg !264
  %arrayidx1711 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !264
  store i32 %call1710, ptr %arrayidx1711, align 16, !dbg !264
  %arrayidx1712 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !264
  %827 = load i32, ptr %arrayidx1712, align 16, !dbg !264
  %828 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 1), align 1, !dbg !264
  %idxprom1713 = zext i8 %828 to i64, !dbg !264
  %arrayidx1714 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1713, !dbg !264
  %829 = load i32, ptr %arrayidx1714, align 4, !dbg !264
  %add1715 = add i32 %827, %829, !dbg !264
  %arrayidx1716 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !264
  %830 = load i32, ptr %arrayidx1716, align 16, !dbg !264
  %add1717 = add i32 %830, %add1715, !dbg !264
  store i32 %add1717, ptr %arrayidx1716, align 16, !dbg !264
  %arrayidx1718 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !264
  %831 = load i32, ptr %arrayidx1718, align 16, !dbg !264
  %arrayidx1719 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !264
  %832 = load i32, ptr %arrayidx1719, align 16, !dbg !264
  %xor1720 = xor i32 %831, %832, !dbg !264
  %call1721 = call i32 @ror32(i32 noundef %xor1720, i32 noundef 8) #7, !dbg !264
  %arrayidx1722 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !264
  store i32 %call1721, ptr %arrayidx1722, align 16, !dbg !264
  %arrayidx1723 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !264
  %833 = load i32, ptr %arrayidx1723, align 16, !dbg !264
  %arrayidx1724 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !264
  %834 = load i32, ptr %arrayidx1724, align 16, !dbg !264
  %add1725 = add i32 %834, %833, !dbg !264
  store i32 %add1725, ptr %arrayidx1724, align 16, !dbg !264
  %arrayidx1726 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !264
  %835 = load i32, ptr %arrayidx1726, align 16, !dbg !264
  %arrayidx1727 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !264
  %836 = load i32, ptr %arrayidx1727, align 16, !dbg !264
  %xor1728 = xor i32 %835, %836, !dbg !264
  %call1729 = call i32 @ror32(i32 noundef %xor1728, i32 noundef 7) #7, !dbg !264
  %arrayidx1730 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !264
  store i32 %call1729, ptr %arrayidx1730, align 16, !dbg !264
  br label %do.cond1731, !dbg !264

do.cond1731:                                      ; preds = %do.body1692
  br label %do.end1732, !dbg !264

do.end1732:                                       ; preds = %do.cond1731
  br label %do.body1733, !dbg !262

do.body1733:                                      ; preds = %do.end1732
  %arrayidx1734 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !266
  %837 = load i32, ptr %arrayidx1734, align 4, !dbg !266
  %838 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 2), align 2, !dbg !266
  %idxprom1735 = zext i8 %838 to i64, !dbg !266
  %arrayidx1736 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1735, !dbg !266
  %839 = load i32, ptr %arrayidx1736, align 4, !dbg !266
  %add1737 = add i32 %837, %839, !dbg !266
  %arrayidx1738 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !266
  %840 = load i32, ptr %arrayidx1738, align 4, !dbg !266
  %add1739 = add i32 %840, %add1737, !dbg !266
  store i32 %add1739, ptr %arrayidx1738, align 4, !dbg !266
  %arrayidx1740 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !266
  %841 = load i32, ptr %arrayidx1740, align 4, !dbg !266
  %arrayidx1741 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !266
  %842 = load i32, ptr %arrayidx1741, align 4, !dbg !266
  %xor1742 = xor i32 %841, %842, !dbg !266
  %call1743 = call i32 @ror32(i32 noundef %xor1742, i32 noundef 16) #7, !dbg !266
  %arrayidx1744 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !266
  store i32 %call1743, ptr %arrayidx1744, align 4, !dbg !266
  %arrayidx1745 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !266
  %843 = load i32, ptr %arrayidx1745, align 4, !dbg !266
  %arrayidx1746 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !266
  %844 = load i32, ptr %arrayidx1746, align 4, !dbg !266
  %add1747 = add i32 %844, %843, !dbg !266
  store i32 %add1747, ptr %arrayidx1746, align 4, !dbg !266
  %arrayidx1748 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !266
  %845 = load i32, ptr %arrayidx1748, align 4, !dbg !266
  %arrayidx1749 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !266
  %846 = load i32, ptr %arrayidx1749, align 4, !dbg !266
  %xor1750 = xor i32 %845, %846, !dbg !266
  %call1751 = call i32 @ror32(i32 noundef %xor1750, i32 noundef 12) #7, !dbg !266
  %arrayidx1752 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !266
  store i32 %call1751, ptr %arrayidx1752, align 4, !dbg !266
  %arrayidx1753 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !266
  %847 = load i32, ptr %arrayidx1753, align 4, !dbg !266
  %848 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 3), align 1, !dbg !266
  %idxprom1754 = zext i8 %848 to i64, !dbg !266
  %arrayidx1755 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1754, !dbg !266
  %849 = load i32, ptr %arrayidx1755, align 4, !dbg !266
  %add1756 = add i32 %847, %849, !dbg !266
  %arrayidx1757 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !266
  %850 = load i32, ptr %arrayidx1757, align 4, !dbg !266
  %add1758 = add i32 %850, %add1756, !dbg !266
  store i32 %add1758, ptr %arrayidx1757, align 4, !dbg !266
  %arrayidx1759 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !266
  %851 = load i32, ptr %arrayidx1759, align 4, !dbg !266
  %arrayidx1760 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !266
  %852 = load i32, ptr %arrayidx1760, align 4, !dbg !266
  %xor1761 = xor i32 %851, %852, !dbg !266
  %call1762 = call i32 @ror32(i32 noundef %xor1761, i32 noundef 8) #7, !dbg !266
  %arrayidx1763 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !266
  store i32 %call1762, ptr %arrayidx1763, align 4, !dbg !266
  %arrayidx1764 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !266
  %853 = load i32, ptr %arrayidx1764, align 4, !dbg !266
  %arrayidx1765 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !266
  %854 = load i32, ptr %arrayidx1765, align 4, !dbg !266
  %add1766 = add i32 %854, %853, !dbg !266
  store i32 %add1766, ptr %arrayidx1765, align 4, !dbg !266
  %arrayidx1767 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !266
  %855 = load i32, ptr %arrayidx1767, align 4, !dbg !266
  %arrayidx1768 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !266
  %856 = load i32, ptr %arrayidx1768, align 4, !dbg !266
  %xor1769 = xor i32 %855, %856, !dbg !266
  %call1770 = call i32 @ror32(i32 noundef %xor1769, i32 noundef 7) #7, !dbg !266
  %arrayidx1771 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !266
  store i32 %call1770, ptr %arrayidx1771, align 4, !dbg !266
  br label %do.cond1772, !dbg !266

do.cond1772:                                      ; preds = %do.body1733
  br label %do.end1773, !dbg !266

do.end1773:                                       ; preds = %do.cond1772
  br label %do.body1774, !dbg !262

do.body1774:                                      ; preds = %do.end1773
  %arrayidx1775 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !268
  %857 = load i32, ptr %arrayidx1775, align 8, !dbg !268
  %858 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 4), align 4, !dbg !268
  %idxprom1776 = zext i8 %858 to i64, !dbg !268
  %arrayidx1777 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1776, !dbg !268
  %859 = load i32, ptr %arrayidx1777, align 4, !dbg !268
  %add1778 = add i32 %857, %859, !dbg !268
  %arrayidx1779 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !268
  %860 = load i32, ptr %arrayidx1779, align 8, !dbg !268
  %add1780 = add i32 %860, %add1778, !dbg !268
  store i32 %add1780, ptr %arrayidx1779, align 8, !dbg !268
  %arrayidx1781 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !268
  %861 = load i32, ptr %arrayidx1781, align 8, !dbg !268
  %arrayidx1782 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !268
  %862 = load i32, ptr %arrayidx1782, align 8, !dbg !268
  %xor1783 = xor i32 %861, %862, !dbg !268
  %call1784 = call i32 @ror32(i32 noundef %xor1783, i32 noundef 16) #7, !dbg !268
  %arrayidx1785 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !268
  store i32 %call1784, ptr %arrayidx1785, align 8, !dbg !268
  %arrayidx1786 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !268
  %863 = load i32, ptr %arrayidx1786, align 8, !dbg !268
  %arrayidx1787 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !268
  %864 = load i32, ptr %arrayidx1787, align 8, !dbg !268
  %add1788 = add i32 %864, %863, !dbg !268
  store i32 %add1788, ptr %arrayidx1787, align 8, !dbg !268
  %arrayidx1789 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !268
  %865 = load i32, ptr %arrayidx1789, align 8, !dbg !268
  %arrayidx1790 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !268
  %866 = load i32, ptr %arrayidx1790, align 8, !dbg !268
  %xor1791 = xor i32 %865, %866, !dbg !268
  %call1792 = call i32 @ror32(i32 noundef %xor1791, i32 noundef 12) #7, !dbg !268
  %arrayidx1793 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !268
  store i32 %call1792, ptr %arrayidx1793, align 8, !dbg !268
  %arrayidx1794 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !268
  %867 = load i32, ptr %arrayidx1794, align 8, !dbg !268
  %868 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 5), align 1, !dbg !268
  %idxprom1795 = zext i8 %868 to i64, !dbg !268
  %arrayidx1796 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1795, !dbg !268
  %869 = load i32, ptr %arrayidx1796, align 4, !dbg !268
  %add1797 = add i32 %867, %869, !dbg !268
  %arrayidx1798 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !268
  %870 = load i32, ptr %arrayidx1798, align 8, !dbg !268
  %add1799 = add i32 %870, %add1797, !dbg !268
  store i32 %add1799, ptr %arrayidx1798, align 8, !dbg !268
  %arrayidx1800 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !268
  %871 = load i32, ptr %arrayidx1800, align 8, !dbg !268
  %arrayidx1801 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !268
  %872 = load i32, ptr %arrayidx1801, align 8, !dbg !268
  %xor1802 = xor i32 %871, %872, !dbg !268
  %call1803 = call i32 @ror32(i32 noundef %xor1802, i32 noundef 8) #7, !dbg !268
  %arrayidx1804 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !268
  store i32 %call1803, ptr %arrayidx1804, align 8, !dbg !268
  %arrayidx1805 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !268
  %873 = load i32, ptr %arrayidx1805, align 8, !dbg !268
  %arrayidx1806 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !268
  %874 = load i32, ptr %arrayidx1806, align 8, !dbg !268
  %add1807 = add i32 %874, %873, !dbg !268
  store i32 %add1807, ptr %arrayidx1806, align 8, !dbg !268
  %arrayidx1808 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !268
  %875 = load i32, ptr %arrayidx1808, align 8, !dbg !268
  %arrayidx1809 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !268
  %876 = load i32, ptr %arrayidx1809, align 8, !dbg !268
  %xor1810 = xor i32 %875, %876, !dbg !268
  %call1811 = call i32 @ror32(i32 noundef %xor1810, i32 noundef 7) #7, !dbg !268
  %arrayidx1812 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !268
  store i32 %call1811, ptr %arrayidx1812, align 8, !dbg !268
  br label %do.cond1813, !dbg !268

do.cond1813:                                      ; preds = %do.body1774
  br label %do.end1814, !dbg !268

do.end1814:                                       ; preds = %do.cond1813
  br label %do.body1815, !dbg !262

do.body1815:                                      ; preds = %do.end1814
  %arrayidx1816 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !270
  %877 = load i32, ptr %arrayidx1816, align 4, !dbg !270
  %878 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 6), align 2, !dbg !270
  %idxprom1817 = zext i8 %878 to i64, !dbg !270
  %arrayidx1818 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1817, !dbg !270
  %879 = load i32, ptr %arrayidx1818, align 4, !dbg !270
  %add1819 = add i32 %877, %879, !dbg !270
  %arrayidx1820 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !270
  %880 = load i32, ptr %arrayidx1820, align 4, !dbg !270
  %add1821 = add i32 %880, %add1819, !dbg !270
  store i32 %add1821, ptr %arrayidx1820, align 4, !dbg !270
  %arrayidx1822 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !270
  %881 = load i32, ptr %arrayidx1822, align 4, !dbg !270
  %arrayidx1823 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !270
  %882 = load i32, ptr %arrayidx1823, align 4, !dbg !270
  %xor1824 = xor i32 %881, %882, !dbg !270
  %call1825 = call i32 @ror32(i32 noundef %xor1824, i32 noundef 16) #7, !dbg !270
  %arrayidx1826 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !270
  store i32 %call1825, ptr %arrayidx1826, align 4, !dbg !270
  %arrayidx1827 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !270
  %883 = load i32, ptr %arrayidx1827, align 4, !dbg !270
  %arrayidx1828 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !270
  %884 = load i32, ptr %arrayidx1828, align 4, !dbg !270
  %add1829 = add i32 %884, %883, !dbg !270
  store i32 %add1829, ptr %arrayidx1828, align 4, !dbg !270
  %arrayidx1830 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !270
  %885 = load i32, ptr %arrayidx1830, align 4, !dbg !270
  %arrayidx1831 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !270
  %886 = load i32, ptr %arrayidx1831, align 4, !dbg !270
  %xor1832 = xor i32 %885, %886, !dbg !270
  %call1833 = call i32 @ror32(i32 noundef %xor1832, i32 noundef 12) #7, !dbg !270
  %arrayidx1834 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !270
  store i32 %call1833, ptr %arrayidx1834, align 4, !dbg !270
  %arrayidx1835 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !270
  %887 = load i32, ptr %arrayidx1835, align 4, !dbg !270
  %888 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 7), align 1, !dbg !270
  %idxprom1836 = zext i8 %888 to i64, !dbg !270
  %arrayidx1837 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1836, !dbg !270
  %889 = load i32, ptr %arrayidx1837, align 4, !dbg !270
  %add1838 = add i32 %887, %889, !dbg !270
  %arrayidx1839 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !270
  %890 = load i32, ptr %arrayidx1839, align 4, !dbg !270
  %add1840 = add i32 %890, %add1838, !dbg !270
  store i32 %add1840, ptr %arrayidx1839, align 4, !dbg !270
  %arrayidx1841 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !270
  %891 = load i32, ptr %arrayidx1841, align 4, !dbg !270
  %arrayidx1842 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !270
  %892 = load i32, ptr %arrayidx1842, align 4, !dbg !270
  %xor1843 = xor i32 %891, %892, !dbg !270
  %call1844 = call i32 @ror32(i32 noundef %xor1843, i32 noundef 8) #7, !dbg !270
  %arrayidx1845 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !270
  store i32 %call1844, ptr %arrayidx1845, align 4, !dbg !270
  %arrayidx1846 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !270
  %893 = load i32, ptr %arrayidx1846, align 4, !dbg !270
  %arrayidx1847 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !270
  %894 = load i32, ptr %arrayidx1847, align 4, !dbg !270
  %add1848 = add i32 %894, %893, !dbg !270
  store i32 %add1848, ptr %arrayidx1847, align 4, !dbg !270
  %arrayidx1849 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !270
  %895 = load i32, ptr %arrayidx1849, align 4, !dbg !270
  %arrayidx1850 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !270
  %896 = load i32, ptr %arrayidx1850, align 4, !dbg !270
  %xor1851 = xor i32 %895, %896, !dbg !270
  %call1852 = call i32 @ror32(i32 noundef %xor1851, i32 noundef 7) #7, !dbg !270
  %arrayidx1853 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !270
  store i32 %call1852, ptr %arrayidx1853, align 4, !dbg !270
  br label %do.cond1854, !dbg !270

do.cond1854:                                      ; preds = %do.body1815
  br label %do.end1855, !dbg !270

do.end1855:                                       ; preds = %do.cond1854
  br label %do.body1856, !dbg !262

do.body1856:                                      ; preds = %do.end1855
  %arrayidx1857 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !272
  %897 = load i32, ptr %arrayidx1857, align 4, !dbg !272
  %898 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 8), align 8, !dbg !272
  %idxprom1858 = zext i8 %898 to i64, !dbg !272
  %arrayidx1859 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1858, !dbg !272
  %899 = load i32, ptr %arrayidx1859, align 4, !dbg !272
  %add1860 = add i32 %897, %899, !dbg !272
  %arrayidx1861 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !272
  %900 = load i32, ptr %arrayidx1861, align 16, !dbg !272
  %add1862 = add i32 %900, %add1860, !dbg !272
  store i32 %add1862, ptr %arrayidx1861, align 16, !dbg !272
  %arrayidx1863 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !272
  %901 = load i32, ptr %arrayidx1863, align 4, !dbg !272
  %arrayidx1864 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !272
  %902 = load i32, ptr %arrayidx1864, align 16, !dbg !272
  %xor1865 = xor i32 %901, %902, !dbg !272
  %call1866 = call i32 @ror32(i32 noundef %xor1865, i32 noundef 16) #7, !dbg !272
  %arrayidx1867 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !272
  store i32 %call1866, ptr %arrayidx1867, align 4, !dbg !272
  %arrayidx1868 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !272
  %903 = load i32, ptr %arrayidx1868, align 4, !dbg !272
  %arrayidx1869 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !272
  %904 = load i32, ptr %arrayidx1869, align 8, !dbg !272
  %add1870 = add i32 %904, %903, !dbg !272
  store i32 %add1870, ptr %arrayidx1869, align 8, !dbg !272
  %arrayidx1871 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !272
  %905 = load i32, ptr %arrayidx1871, align 4, !dbg !272
  %arrayidx1872 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !272
  %906 = load i32, ptr %arrayidx1872, align 8, !dbg !272
  %xor1873 = xor i32 %905, %906, !dbg !272
  %call1874 = call i32 @ror32(i32 noundef %xor1873, i32 noundef 12) #7, !dbg !272
  %arrayidx1875 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !272
  store i32 %call1874, ptr %arrayidx1875, align 4, !dbg !272
  %arrayidx1876 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !272
  %907 = load i32, ptr %arrayidx1876, align 4, !dbg !272
  %908 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 9), align 1, !dbg !272
  %idxprom1877 = zext i8 %908 to i64, !dbg !272
  %arrayidx1878 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1877, !dbg !272
  %909 = load i32, ptr %arrayidx1878, align 4, !dbg !272
  %add1879 = add i32 %907, %909, !dbg !272
  %arrayidx1880 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !272
  %910 = load i32, ptr %arrayidx1880, align 16, !dbg !272
  %add1881 = add i32 %910, %add1879, !dbg !272
  store i32 %add1881, ptr %arrayidx1880, align 16, !dbg !272
  %arrayidx1882 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !272
  %911 = load i32, ptr %arrayidx1882, align 4, !dbg !272
  %arrayidx1883 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !272
  %912 = load i32, ptr %arrayidx1883, align 16, !dbg !272
  %xor1884 = xor i32 %911, %912, !dbg !272
  %call1885 = call i32 @ror32(i32 noundef %xor1884, i32 noundef 8) #7, !dbg !272
  %arrayidx1886 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !272
  store i32 %call1885, ptr %arrayidx1886, align 4, !dbg !272
  %arrayidx1887 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !272
  %913 = load i32, ptr %arrayidx1887, align 4, !dbg !272
  %arrayidx1888 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !272
  %914 = load i32, ptr %arrayidx1888, align 8, !dbg !272
  %add1889 = add i32 %914, %913, !dbg !272
  store i32 %add1889, ptr %arrayidx1888, align 8, !dbg !272
  %arrayidx1890 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !272
  %915 = load i32, ptr %arrayidx1890, align 4, !dbg !272
  %arrayidx1891 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !272
  %916 = load i32, ptr %arrayidx1891, align 8, !dbg !272
  %xor1892 = xor i32 %915, %916, !dbg !272
  %call1893 = call i32 @ror32(i32 noundef %xor1892, i32 noundef 7) #7, !dbg !272
  %arrayidx1894 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !272
  store i32 %call1893, ptr %arrayidx1894, align 4, !dbg !272
  br label %do.cond1895, !dbg !272

do.cond1895:                                      ; preds = %do.body1856
  br label %do.end1896, !dbg !272

do.end1896:                                       ; preds = %do.cond1895
  br label %do.body1897, !dbg !262

do.body1897:                                      ; preds = %do.end1896
  %arrayidx1898 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !274
  %917 = load i32, ptr %arrayidx1898, align 8, !dbg !274
  %918 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 10), align 2, !dbg !274
  %idxprom1899 = zext i8 %918 to i64, !dbg !274
  %arrayidx1900 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1899, !dbg !274
  %919 = load i32, ptr %arrayidx1900, align 4, !dbg !274
  %add1901 = add i32 %917, %919, !dbg !274
  %arrayidx1902 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !274
  %920 = load i32, ptr %arrayidx1902, align 4, !dbg !274
  %add1903 = add i32 %920, %add1901, !dbg !274
  store i32 %add1903, ptr %arrayidx1902, align 4, !dbg !274
  %arrayidx1904 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !274
  %921 = load i32, ptr %arrayidx1904, align 16, !dbg !274
  %arrayidx1905 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !274
  %922 = load i32, ptr %arrayidx1905, align 4, !dbg !274
  %xor1906 = xor i32 %921, %922, !dbg !274
  %call1907 = call i32 @ror32(i32 noundef %xor1906, i32 noundef 16) #7, !dbg !274
  %arrayidx1908 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !274
  store i32 %call1907, ptr %arrayidx1908, align 16, !dbg !274
  %arrayidx1909 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !274
  %923 = load i32, ptr %arrayidx1909, align 16, !dbg !274
  %arrayidx1910 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !274
  %924 = load i32, ptr %arrayidx1910, align 4, !dbg !274
  %add1911 = add i32 %924, %923, !dbg !274
  store i32 %add1911, ptr %arrayidx1910, align 4, !dbg !274
  %arrayidx1912 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !274
  %925 = load i32, ptr %arrayidx1912, align 8, !dbg !274
  %arrayidx1913 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !274
  %926 = load i32, ptr %arrayidx1913, align 4, !dbg !274
  %xor1914 = xor i32 %925, %926, !dbg !274
  %call1915 = call i32 @ror32(i32 noundef %xor1914, i32 noundef 12) #7, !dbg !274
  %arrayidx1916 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !274
  store i32 %call1915, ptr %arrayidx1916, align 8, !dbg !274
  %arrayidx1917 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !274
  %927 = load i32, ptr %arrayidx1917, align 8, !dbg !274
  %928 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 11), align 1, !dbg !274
  %idxprom1918 = zext i8 %928 to i64, !dbg !274
  %arrayidx1919 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1918, !dbg !274
  %929 = load i32, ptr %arrayidx1919, align 4, !dbg !274
  %add1920 = add i32 %927, %929, !dbg !274
  %arrayidx1921 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !274
  %930 = load i32, ptr %arrayidx1921, align 4, !dbg !274
  %add1922 = add i32 %930, %add1920, !dbg !274
  store i32 %add1922, ptr %arrayidx1921, align 4, !dbg !274
  %arrayidx1923 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !274
  %931 = load i32, ptr %arrayidx1923, align 16, !dbg !274
  %arrayidx1924 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !274
  %932 = load i32, ptr %arrayidx1924, align 4, !dbg !274
  %xor1925 = xor i32 %931, %932, !dbg !274
  %call1926 = call i32 @ror32(i32 noundef %xor1925, i32 noundef 8) #7, !dbg !274
  %arrayidx1927 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !274
  store i32 %call1926, ptr %arrayidx1927, align 16, !dbg !274
  %arrayidx1928 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !274
  %933 = load i32, ptr %arrayidx1928, align 16, !dbg !274
  %arrayidx1929 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !274
  %934 = load i32, ptr %arrayidx1929, align 4, !dbg !274
  %add1930 = add i32 %934, %933, !dbg !274
  store i32 %add1930, ptr %arrayidx1929, align 4, !dbg !274
  %arrayidx1931 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !274
  %935 = load i32, ptr %arrayidx1931, align 8, !dbg !274
  %arrayidx1932 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !274
  %936 = load i32, ptr %arrayidx1932, align 4, !dbg !274
  %xor1933 = xor i32 %935, %936, !dbg !274
  %call1934 = call i32 @ror32(i32 noundef %xor1933, i32 noundef 7) #7, !dbg !274
  %arrayidx1935 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !274
  store i32 %call1934, ptr %arrayidx1935, align 8, !dbg !274
  br label %do.cond1936, !dbg !274

do.cond1936:                                      ; preds = %do.body1897
  br label %do.end1937, !dbg !274

do.end1937:                                       ; preds = %do.cond1936
  br label %do.body1938, !dbg !262

do.body1938:                                      ; preds = %do.end1937
  %arrayidx1939 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !276
  %937 = load i32, ptr %arrayidx1939, align 4, !dbg !276
  %938 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 12), align 4, !dbg !276
  %idxprom1940 = zext i8 %938 to i64, !dbg !276
  %arrayidx1941 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1940, !dbg !276
  %939 = load i32, ptr %arrayidx1941, align 4, !dbg !276
  %add1942 = add i32 %937, %939, !dbg !276
  %arrayidx1943 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !276
  %940 = load i32, ptr %arrayidx1943, align 8, !dbg !276
  %add1944 = add i32 %940, %add1942, !dbg !276
  store i32 %add1944, ptr %arrayidx1943, align 8, !dbg !276
  %arrayidx1945 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !276
  %941 = load i32, ptr %arrayidx1945, align 4, !dbg !276
  %arrayidx1946 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !276
  %942 = load i32, ptr %arrayidx1946, align 8, !dbg !276
  %xor1947 = xor i32 %941, %942, !dbg !276
  %call1948 = call i32 @ror32(i32 noundef %xor1947, i32 noundef 16) #7, !dbg !276
  %arrayidx1949 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !276
  store i32 %call1948, ptr %arrayidx1949, align 4, !dbg !276
  %arrayidx1950 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !276
  %943 = load i32, ptr %arrayidx1950, align 4, !dbg !276
  %arrayidx1951 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !276
  %944 = load i32, ptr %arrayidx1951, align 16, !dbg !276
  %add1952 = add i32 %944, %943, !dbg !276
  store i32 %add1952, ptr %arrayidx1951, align 16, !dbg !276
  %arrayidx1953 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !276
  %945 = load i32, ptr %arrayidx1953, align 4, !dbg !276
  %arrayidx1954 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !276
  %946 = load i32, ptr %arrayidx1954, align 16, !dbg !276
  %xor1955 = xor i32 %945, %946, !dbg !276
  %call1956 = call i32 @ror32(i32 noundef %xor1955, i32 noundef 12) #7, !dbg !276
  %arrayidx1957 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !276
  store i32 %call1956, ptr %arrayidx1957, align 4, !dbg !276
  %arrayidx1958 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !276
  %947 = load i32, ptr %arrayidx1958, align 4, !dbg !276
  %948 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 13), align 1, !dbg !276
  %idxprom1959 = zext i8 %948 to i64, !dbg !276
  %arrayidx1960 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1959, !dbg !276
  %949 = load i32, ptr %arrayidx1960, align 4, !dbg !276
  %add1961 = add i32 %947, %949, !dbg !276
  %arrayidx1962 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !276
  %950 = load i32, ptr %arrayidx1962, align 8, !dbg !276
  %add1963 = add i32 %950, %add1961, !dbg !276
  store i32 %add1963, ptr %arrayidx1962, align 8, !dbg !276
  %arrayidx1964 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !276
  %951 = load i32, ptr %arrayidx1964, align 4, !dbg !276
  %arrayidx1965 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !276
  %952 = load i32, ptr %arrayidx1965, align 8, !dbg !276
  %xor1966 = xor i32 %951, %952, !dbg !276
  %call1967 = call i32 @ror32(i32 noundef %xor1966, i32 noundef 8) #7, !dbg !276
  %arrayidx1968 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !276
  store i32 %call1967, ptr %arrayidx1968, align 4, !dbg !276
  %arrayidx1969 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !276
  %953 = load i32, ptr %arrayidx1969, align 4, !dbg !276
  %arrayidx1970 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !276
  %954 = load i32, ptr %arrayidx1970, align 16, !dbg !276
  %add1971 = add i32 %954, %953, !dbg !276
  store i32 %add1971, ptr %arrayidx1970, align 16, !dbg !276
  %arrayidx1972 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !276
  %955 = load i32, ptr %arrayidx1972, align 4, !dbg !276
  %arrayidx1973 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !276
  %956 = load i32, ptr %arrayidx1973, align 16, !dbg !276
  %xor1974 = xor i32 %955, %956, !dbg !276
  %call1975 = call i32 @ror32(i32 noundef %xor1974, i32 noundef 7) #7, !dbg !276
  %arrayidx1976 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !276
  store i32 %call1975, ptr %arrayidx1976, align 4, !dbg !276
  br label %do.cond1977, !dbg !276

do.cond1977:                                      ; preds = %do.body1938
  br label %do.end1978, !dbg !276

do.end1978:                                       ; preds = %do.cond1977
  br label %do.body1979, !dbg !262

do.body1979:                                      ; preds = %do.end1978
  %arrayidx1980 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !278
  %957 = load i32, ptr %arrayidx1980, align 16, !dbg !278
  %958 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 14), align 2, !dbg !278
  %idxprom1981 = zext i8 %958 to i64, !dbg !278
  %arrayidx1982 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom1981, !dbg !278
  %959 = load i32, ptr %arrayidx1982, align 4, !dbg !278
  %add1983 = add i32 %957, %959, !dbg !278
  %arrayidx1984 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !278
  %960 = load i32, ptr %arrayidx1984, align 4, !dbg !278
  %add1985 = add i32 %960, %add1983, !dbg !278
  store i32 %add1985, ptr %arrayidx1984, align 4, !dbg !278
  %arrayidx1986 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !278
  %961 = load i32, ptr %arrayidx1986, align 8, !dbg !278
  %arrayidx1987 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !278
  %962 = load i32, ptr %arrayidx1987, align 4, !dbg !278
  %xor1988 = xor i32 %961, %962, !dbg !278
  %call1989 = call i32 @ror32(i32 noundef %xor1988, i32 noundef 16) #7, !dbg !278
  %arrayidx1990 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !278
  store i32 %call1989, ptr %arrayidx1990, align 8, !dbg !278
  %arrayidx1991 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !278
  %963 = load i32, ptr %arrayidx1991, align 8, !dbg !278
  %arrayidx1992 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !278
  %964 = load i32, ptr %arrayidx1992, align 4, !dbg !278
  %add1993 = add i32 %964, %963, !dbg !278
  store i32 %add1993, ptr %arrayidx1992, align 4, !dbg !278
  %arrayidx1994 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !278
  %965 = load i32, ptr %arrayidx1994, align 16, !dbg !278
  %arrayidx1995 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !278
  %966 = load i32, ptr %arrayidx1995, align 4, !dbg !278
  %xor1996 = xor i32 %965, %966, !dbg !278
  %call1997 = call i32 @ror32(i32 noundef %xor1996, i32 noundef 12) #7, !dbg !278
  %arrayidx1998 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !278
  store i32 %call1997, ptr %arrayidx1998, align 16, !dbg !278
  %arrayidx1999 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !278
  %967 = load i32, ptr %arrayidx1999, align 16, !dbg !278
  %968 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 15), align 1, !dbg !278
  %idxprom2000 = zext i8 %968 to i64, !dbg !278
  %arrayidx2001 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2000, !dbg !278
  %969 = load i32, ptr %arrayidx2001, align 4, !dbg !278
  %add2002 = add i32 %967, %969, !dbg !278
  %arrayidx2003 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !278
  %970 = load i32, ptr %arrayidx2003, align 4, !dbg !278
  %add2004 = add i32 %970, %add2002, !dbg !278
  store i32 %add2004, ptr %arrayidx2003, align 4, !dbg !278
  %arrayidx2005 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !278
  %971 = load i32, ptr %arrayidx2005, align 8, !dbg !278
  %arrayidx2006 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !278
  %972 = load i32, ptr %arrayidx2006, align 4, !dbg !278
  %xor2007 = xor i32 %971, %972, !dbg !278
  %call2008 = call i32 @ror32(i32 noundef %xor2007, i32 noundef 8) #7, !dbg !278
  %arrayidx2009 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !278
  store i32 %call2008, ptr %arrayidx2009, align 8, !dbg !278
  %arrayidx2010 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !278
  %973 = load i32, ptr %arrayidx2010, align 8, !dbg !278
  %arrayidx2011 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !278
  %974 = load i32, ptr %arrayidx2011, align 4, !dbg !278
  %add2012 = add i32 %974, %973, !dbg !278
  store i32 %add2012, ptr %arrayidx2011, align 4, !dbg !278
  %arrayidx2013 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !278
  %975 = load i32, ptr %arrayidx2013, align 16, !dbg !278
  %arrayidx2014 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !278
  %976 = load i32, ptr %arrayidx2014, align 4, !dbg !278
  %xor2015 = xor i32 %975, %976, !dbg !278
  %call2016 = call i32 @ror32(i32 noundef %xor2015, i32 noundef 7) #7, !dbg !278
  %arrayidx2017 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !278
  store i32 %call2016, ptr %arrayidx2017, align 16, !dbg !278
  br label %do.cond2018, !dbg !278

do.cond2018:                                      ; preds = %do.body1979
  br label %do.end2019, !dbg !278

do.end2019:                                       ; preds = %do.cond2018
  br label %do.cond2020, !dbg !262

do.cond2020:                                      ; preds = %do.end2019
  br label %do.end2021, !dbg !262

do.end2021:                                       ; preds = %do.cond2020
  br label %do.body2022, !dbg !280

do.body2022:                                      ; preds = %do.end2021
  br label %do.body2023, !dbg !281

do.body2023:                                      ; preds = %do.body2022
  %arrayidx2024 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !283
  %977 = load i32, ptr %arrayidx2024, align 16, !dbg !283
  %978 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6), align 16, !dbg !283
  %idxprom2025 = zext i8 %978 to i64, !dbg !283
  %arrayidx2026 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2025, !dbg !283
  %979 = load i32, ptr %arrayidx2026, align 4, !dbg !283
  %add2027 = add i32 %977, %979, !dbg !283
  %arrayidx2028 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !283
  %980 = load i32, ptr %arrayidx2028, align 16, !dbg !283
  %add2029 = add i32 %980, %add2027, !dbg !283
  store i32 %add2029, ptr %arrayidx2028, align 16, !dbg !283
  %arrayidx2030 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !283
  %981 = load i32, ptr %arrayidx2030, align 16, !dbg !283
  %arrayidx2031 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !283
  %982 = load i32, ptr %arrayidx2031, align 16, !dbg !283
  %xor2032 = xor i32 %981, %982, !dbg !283
  %call2033 = call i32 @ror32(i32 noundef %xor2032, i32 noundef 16) #7, !dbg !283
  %arrayidx2034 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !283
  store i32 %call2033, ptr %arrayidx2034, align 16, !dbg !283
  %arrayidx2035 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !283
  %983 = load i32, ptr %arrayidx2035, align 16, !dbg !283
  %arrayidx2036 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !283
  %984 = load i32, ptr %arrayidx2036, align 16, !dbg !283
  %add2037 = add i32 %984, %983, !dbg !283
  store i32 %add2037, ptr %arrayidx2036, align 16, !dbg !283
  %arrayidx2038 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !283
  %985 = load i32, ptr %arrayidx2038, align 16, !dbg !283
  %arrayidx2039 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !283
  %986 = load i32, ptr %arrayidx2039, align 16, !dbg !283
  %xor2040 = xor i32 %985, %986, !dbg !283
  %call2041 = call i32 @ror32(i32 noundef %xor2040, i32 noundef 12) #7, !dbg !283
  %arrayidx2042 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !283
  store i32 %call2041, ptr %arrayidx2042, align 16, !dbg !283
  %arrayidx2043 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !283
  %987 = load i32, ptr %arrayidx2043, align 16, !dbg !283
  %988 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 1), align 1, !dbg !283
  %idxprom2044 = zext i8 %988 to i64, !dbg !283
  %arrayidx2045 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2044, !dbg !283
  %989 = load i32, ptr %arrayidx2045, align 4, !dbg !283
  %add2046 = add i32 %987, %989, !dbg !283
  %arrayidx2047 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !283
  %990 = load i32, ptr %arrayidx2047, align 16, !dbg !283
  %add2048 = add i32 %990, %add2046, !dbg !283
  store i32 %add2048, ptr %arrayidx2047, align 16, !dbg !283
  %arrayidx2049 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !283
  %991 = load i32, ptr %arrayidx2049, align 16, !dbg !283
  %arrayidx2050 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !283
  %992 = load i32, ptr %arrayidx2050, align 16, !dbg !283
  %xor2051 = xor i32 %991, %992, !dbg !283
  %call2052 = call i32 @ror32(i32 noundef %xor2051, i32 noundef 8) #7, !dbg !283
  %arrayidx2053 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !283
  store i32 %call2052, ptr %arrayidx2053, align 16, !dbg !283
  %arrayidx2054 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !283
  %993 = load i32, ptr %arrayidx2054, align 16, !dbg !283
  %arrayidx2055 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !283
  %994 = load i32, ptr %arrayidx2055, align 16, !dbg !283
  %add2056 = add i32 %994, %993, !dbg !283
  store i32 %add2056, ptr %arrayidx2055, align 16, !dbg !283
  %arrayidx2057 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !283
  %995 = load i32, ptr %arrayidx2057, align 16, !dbg !283
  %arrayidx2058 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !283
  %996 = load i32, ptr %arrayidx2058, align 16, !dbg !283
  %xor2059 = xor i32 %995, %996, !dbg !283
  %call2060 = call i32 @ror32(i32 noundef %xor2059, i32 noundef 7) #7, !dbg !283
  %arrayidx2061 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !283
  store i32 %call2060, ptr %arrayidx2061, align 16, !dbg !283
  br label %do.cond2062, !dbg !283

do.cond2062:                                      ; preds = %do.body2023
  br label %do.end2063, !dbg !283

do.end2063:                                       ; preds = %do.cond2062
  br label %do.body2064, !dbg !281

do.body2064:                                      ; preds = %do.end2063
  %arrayidx2065 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !285
  %997 = load i32, ptr %arrayidx2065, align 4, !dbg !285
  %998 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 2), align 2, !dbg !285
  %idxprom2066 = zext i8 %998 to i64, !dbg !285
  %arrayidx2067 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2066, !dbg !285
  %999 = load i32, ptr %arrayidx2067, align 4, !dbg !285
  %add2068 = add i32 %997, %999, !dbg !285
  %arrayidx2069 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !285
  %1000 = load i32, ptr %arrayidx2069, align 4, !dbg !285
  %add2070 = add i32 %1000, %add2068, !dbg !285
  store i32 %add2070, ptr %arrayidx2069, align 4, !dbg !285
  %arrayidx2071 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !285
  %1001 = load i32, ptr %arrayidx2071, align 4, !dbg !285
  %arrayidx2072 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !285
  %1002 = load i32, ptr %arrayidx2072, align 4, !dbg !285
  %xor2073 = xor i32 %1001, %1002, !dbg !285
  %call2074 = call i32 @ror32(i32 noundef %xor2073, i32 noundef 16) #7, !dbg !285
  %arrayidx2075 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !285
  store i32 %call2074, ptr %arrayidx2075, align 4, !dbg !285
  %arrayidx2076 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !285
  %1003 = load i32, ptr %arrayidx2076, align 4, !dbg !285
  %arrayidx2077 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !285
  %1004 = load i32, ptr %arrayidx2077, align 4, !dbg !285
  %add2078 = add i32 %1004, %1003, !dbg !285
  store i32 %add2078, ptr %arrayidx2077, align 4, !dbg !285
  %arrayidx2079 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !285
  %1005 = load i32, ptr %arrayidx2079, align 4, !dbg !285
  %arrayidx2080 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !285
  %1006 = load i32, ptr %arrayidx2080, align 4, !dbg !285
  %xor2081 = xor i32 %1005, %1006, !dbg !285
  %call2082 = call i32 @ror32(i32 noundef %xor2081, i32 noundef 12) #7, !dbg !285
  %arrayidx2083 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !285
  store i32 %call2082, ptr %arrayidx2083, align 4, !dbg !285
  %arrayidx2084 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !285
  %1007 = load i32, ptr %arrayidx2084, align 4, !dbg !285
  %1008 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 3), align 1, !dbg !285
  %idxprom2085 = zext i8 %1008 to i64, !dbg !285
  %arrayidx2086 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2085, !dbg !285
  %1009 = load i32, ptr %arrayidx2086, align 4, !dbg !285
  %add2087 = add i32 %1007, %1009, !dbg !285
  %arrayidx2088 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !285
  %1010 = load i32, ptr %arrayidx2088, align 4, !dbg !285
  %add2089 = add i32 %1010, %add2087, !dbg !285
  store i32 %add2089, ptr %arrayidx2088, align 4, !dbg !285
  %arrayidx2090 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !285
  %1011 = load i32, ptr %arrayidx2090, align 4, !dbg !285
  %arrayidx2091 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !285
  %1012 = load i32, ptr %arrayidx2091, align 4, !dbg !285
  %xor2092 = xor i32 %1011, %1012, !dbg !285
  %call2093 = call i32 @ror32(i32 noundef %xor2092, i32 noundef 8) #7, !dbg !285
  %arrayidx2094 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !285
  store i32 %call2093, ptr %arrayidx2094, align 4, !dbg !285
  %arrayidx2095 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !285
  %1013 = load i32, ptr %arrayidx2095, align 4, !dbg !285
  %arrayidx2096 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !285
  %1014 = load i32, ptr %arrayidx2096, align 4, !dbg !285
  %add2097 = add i32 %1014, %1013, !dbg !285
  store i32 %add2097, ptr %arrayidx2096, align 4, !dbg !285
  %arrayidx2098 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !285
  %1015 = load i32, ptr %arrayidx2098, align 4, !dbg !285
  %arrayidx2099 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !285
  %1016 = load i32, ptr %arrayidx2099, align 4, !dbg !285
  %xor2100 = xor i32 %1015, %1016, !dbg !285
  %call2101 = call i32 @ror32(i32 noundef %xor2100, i32 noundef 7) #7, !dbg !285
  %arrayidx2102 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !285
  store i32 %call2101, ptr %arrayidx2102, align 4, !dbg !285
  br label %do.cond2103, !dbg !285

do.cond2103:                                      ; preds = %do.body2064
  br label %do.end2104, !dbg !285

do.end2104:                                       ; preds = %do.cond2103
  br label %do.body2105, !dbg !281

do.body2105:                                      ; preds = %do.end2104
  %arrayidx2106 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !287
  %1017 = load i32, ptr %arrayidx2106, align 8, !dbg !287
  %1018 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 4), align 4, !dbg !287
  %idxprom2107 = zext i8 %1018 to i64, !dbg !287
  %arrayidx2108 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2107, !dbg !287
  %1019 = load i32, ptr %arrayidx2108, align 4, !dbg !287
  %add2109 = add i32 %1017, %1019, !dbg !287
  %arrayidx2110 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !287
  %1020 = load i32, ptr %arrayidx2110, align 8, !dbg !287
  %add2111 = add i32 %1020, %add2109, !dbg !287
  store i32 %add2111, ptr %arrayidx2110, align 8, !dbg !287
  %arrayidx2112 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !287
  %1021 = load i32, ptr %arrayidx2112, align 8, !dbg !287
  %arrayidx2113 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !287
  %1022 = load i32, ptr %arrayidx2113, align 8, !dbg !287
  %xor2114 = xor i32 %1021, %1022, !dbg !287
  %call2115 = call i32 @ror32(i32 noundef %xor2114, i32 noundef 16) #7, !dbg !287
  %arrayidx2116 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !287
  store i32 %call2115, ptr %arrayidx2116, align 8, !dbg !287
  %arrayidx2117 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !287
  %1023 = load i32, ptr %arrayidx2117, align 8, !dbg !287
  %arrayidx2118 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !287
  %1024 = load i32, ptr %arrayidx2118, align 8, !dbg !287
  %add2119 = add i32 %1024, %1023, !dbg !287
  store i32 %add2119, ptr %arrayidx2118, align 8, !dbg !287
  %arrayidx2120 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !287
  %1025 = load i32, ptr %arrayidx2120, align 8, !dbg !287
  %arrayidx2121 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !287
  %1026 = load i32, ptr %arrayidx2121, align 8, !dbg !287
  %xor2122 = xor i32 %1025, %1026, !dbg !287
  %call2123 = call i32 @ror32(i32 noundef %xor2122, i32 noundef 12) #7, !dbg !287
  %arrayidx2124 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !287
  store i32 %call2123, ptr %arrayidx2124, align 8, !dbg !287
  %arrayidx2125 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !287
  %1027 = load i32, ptr %arrayidx2125, align 8, !dbg !287
  %1028 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 5), align 1, !dbg !287
  %idxprom2126 = zext i8 %1028 to i64, !dbg !287
  %arrayidx2127 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2126, !dbg !287
  %1029 = load i32, ptr %arrayidx2127, align 4, !dbg !287
  %add2128 = add i32 %1027, %1029, !dbg !287
  %arrayidx2129 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !287
  %1030 = load i32, ptr %arrayidx2129, align 8, !dbg !287
  %add2130 = add i32 %1030, %add2128, !dbg !287
  store i32 %add2130, ptr %arrayidx2129, align 8, !dbg !287
  %arrayidx2131 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !287
  %1031 = load i32, ptr %arrayidx2131, align 8, !dbg !287
  %arrayidx2132 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !287
  %1032 = load i32, ptr %arrayidx2132, align 8, !dbg !287
  %xor2133 = xor i32 %1031, %1032, !dbg !287
  %call2134 = call i32 @ror32(i32 noundef %xor2133, i32 noundef 8) #7, !dbg !287
  %arrayidx2135 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !287
  store i32 %call2134, ptr %arrayidx2135, align 8, !dbg !287
  %arrayidx2136 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !287
  %1033 = load i32, ptr %arrayidx2136, align 8, !dbg !287
  %arrayidx2137 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !287
  %1034 = load i32, ptr %arrayidx2137, align 8, !dbg !287
  %add2138 = add i32 %1034, %1033, !dbg !287
  store i32 %add2138, ptr %arrayidx2137, align 8, !dbg !287
  %arrayidx2139 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !287
  %1035 = load i32, ptr %arrayidx2139, align 8, !dbg !287
  %arrayidx2140 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !287
  %1036 = load i32, ptr %arrayidx2140, align 8, !dbg !287
  %xor2141 = xor i32 %1035, %1036, !dbg !287
  %call2142 = call i32 @ror32(i32 noundef %xor2141, i32 noundef 7) #7, !dbg !287
  %arrayidx2143 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !287
  store i32 %call2142, ptr %arrayidx2143, align 8, !dbg !287
  br label %do.cond2144, !dbg !287

do.cond2144:                                      ; preds = %do.body2105
  br label %do.end2145, !dbg !287

do.end2145:                                       ; preds = %do.cond2144
  br label %do.body2146, !dbg !281

do.body2146:                                      ; preds = %do.end2145
  %arrayidx2147 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !289
  %1037 = load i32, ptr %arrayidx2147, align 4, !dbg !289
  %1038 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 6), align 2, !dbg !289
  %idxprom2148 = zext i8 %1038 to i64, !dbg !289
  %arrayidx2149 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2148, !dbg !289
  %1039 = load i32, ptr %arrayidx2149, align 4, !dbg !289
  %add2150 = add i32 %1037, %1039, !dbg !289
  %arrayidx2151 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !289
  %1040 = load i32, ptr %arrayidx2151, align 4, !dbg !289
  %add2152 = add i32 %1040, %add2150, !dbg !289
  store i32 %add2152, ptr %arrayidx2151, align 4, !dbg !289
  %arrayidx2153 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !289
  %1041 = load i32, ptr %arrayidx2153, align 4, !dbg !289
  %arrayidx2154 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !289
  %1042 = load i32, ptr %arrayidx2154, align 4, !dbg !289
  %xor2155 = xor i32 %1041, %1042, !dbg !289
  %call2156 = call i32 @ror32(i32 noundef %xor2155, i32 noundef 16) #7, !dbg !289
  %arrayidx2157 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !289
  store i32 %call2156, ptr %arrayidx2157, align 4, !dbg !289
  %arrayidx2158 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !289
  %1043 = load i32, ptr %arrayidx2158, align 4, !dbg !289
  %arrayidx2159 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !289
  %1044 = load i32, ptr %arrayidx2159, align 4, !dbg !289
  %add2160 = add i32 %1044, %1043, !dbg !289
  store i32 %add2160, ptr %arrayidx2159, align 4, !dbg !289
  %arrayidx2161 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !289
  %1045 = load i32, ptr %arrayidx2161, align 4, !dbg !289
  %arrayidx2162 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !289
  %1046 = load i32, ptr %arrayidx2162, align 4, !dbg !289
  %xor2163 = xor i32 %1045, %1046, !dbg !289
  %call2164 = call i32 @ror32(i32 noundef %xor2163, i32 noundef 12) #7, !dbg !289
  %arrayidx2165 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !289
  store i32 %call2164, ptr %arrayidx2165, align 4, !dbg !289
  %arrayidx2166 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !289
  %1047 = load i32, ptr %arrayidx2166, align 4, !dbg !289
  %1048 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 7), align 1, !dbg !289
  %idxprom2167 = zext i8 %1048 to i64, !dbg !289
  %arrayidx2168 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2167, !dbg !289
  %1049 = load i32, ptr %arrayidx2168, align 4, !dbg !289
  %add2169 = add i32 %1047, %1049, !dbg !289
  %arrayidx2170 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !289
  %1050 = load i32, ptr %arrayidx2170, align 4, !dbg !289
  %add2171 = add i32 %1050, %add2169, !dbg !289
  store i32 %add2171, ptr %arrayidx2170, align 4, !dbg !289
  %arrayidx2172 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !289
  %1051 = load i32, ptr %arrayidx2172, align 4, !dbg !289
  %arrayidx2173 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !289
  %1052 = load i32, ptr %arrayidx2173, align 4, !dbg !289
  %xor2174 = xor i32 %1051, %1052, !dbg !289
  %call2175 = call i32 @ror32(i32 noundef %xor2174, i32 noundef 8) #7, !dbg !289
  %arrayidx2176 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !289
  store i32 %call2175, ptr %arrayidx2176, align 4, !dbg !289
  %arrayidx2177 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !289
  %1053 = load i32, ptr %arrayidx2177, align 4, !dbg !289
  %arrayidx2178 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !289
  %1054 = load i32, ptr %arrayidx2178, align 4, !dbg !289
  %add2179 = add i32 %1054, %1053, !dbg !289
  store i32 %add2179, ptr %arrayidx2178, align 4, !dbg !289
  %arrayidx2180 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !289
  %1055 = load i32, ptr %arrayidx2180, align 4, !dbg !289
  %arrayidx2181 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !289
  %1056 = load i32, ptr %arrayidx2181, align 4, !dbg !289
  %xor2182 = xor i32 %1055, %1056, !dbg !289
  %call2183 = call i32 @ror32(i32 noundef %xor2182, i32 noundef 7) #7, !dbg !289
  %arrayidx2184 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !289
  store i32 %call2183, ptr %arrayidx2184, align 4, !dbg !289
  br label %do.cond2185, !dbg !289

do.cond2185:                                      ; preds = %do.body2146
  br label %do.end2186, !dbg !289

do.end2186:                                       ; preds = %do.cond2185
  br label %do.body2187, !dbg !281

do.body2187:                                      ; preds = %do.end2186
  %arrayidx2188 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !291
  %1057 = load i32, ptr %arrayidx2188, align 4, !dbg !291
  %1058 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 8), align 8, !dbg !291
  %idxprom2189 = zext i8 %1058 to i64, !dbg !291
  %arrayidx2190 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2189, !dbg !291
  %1059 = load i32, ptr %arrayidx2190, align 4, !dbg !291
  %add2191 = add i32 %1057, %1059, !dbg !291
  %arrayidx2192 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !291
  %1060 = load i32, ptr %arrayidx2192, align 16, !dbg !291
  %add2193 = add i32 %1060, %add2191, !dbg !291
  store i32 %add2193, ptr %arrayidx2192, align 16, !dbg !291
  %arrayidx2194 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !291
  %1061 = load i32, ptr %arrayidx2194, align 4, !dbg !291
  %arrayidx2195 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !291
  %1062 = load i32, ptr %arrayidx2195, align 16, !dbg !291
  %xor2196 = xor i32 %1061, %1062, !dbg !291
  %call2197 = call i32 @ror32(i32 noundef %xor2196, i32 noundef 16) #7, !dbg !291
  %arrayidx2198 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !291
  store i32 %call2197, ptr %arrayidx2198, align 4, !dbg !291
  %arrayidx2199 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !291
  %1063 = load i32, ptr %arrayidx2199, align 4, !dbg !291
  %arrayidx2200 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !291
  %1064 = load i32, ptr %arrayidx2200, align 8, !dbg !291
  %add2201 = add i32 %1064, %1063, !dbg !291
  store i32 %add2201, ptr %arrayidx2200, align 8, !dbg !291
  %arrayidx2202 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !291
  %1065 = load i32, ptr %arrayidx2202, align 4, !dbg !291
  %arrayidx2203 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !291
  %1066 = load i32, ptr %arrayidx2203, align 8, !dbg !291
  %xor2204 = xor i32 %1065, %1066, !dbg !291
  %call2205 = call i32 @ror32(i32 noundef %xor2204, i32 noundef 12) #7, !dbg !291
  %arrayidx2206 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !291
  store i32 %call2205, ptr %arrayidx2206, align 4, !dbg !291
  %arrayidx2207 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !291
  %1067 = load i32, ptr %arrayidx2207, align 4, !dbg !291
  %1068 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 9), align 1, !dbg !291
  %idxprom2208 = zext i8 %1068 to i64, !dbg !291
  %arrayidx2209 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2208, !dbg !291
  %1069 = load i32, ptr %arrayidx2209, align 4, !dbg !291
  %add2210 = add i32 %1067, %1069, !dbg !291
  %arrayidx2211 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !291
  %1070 = load i32, ptr %arrayidx2211, align 16, !dbg !291
  %add2212 = add i32 %1070, %add2210, !dbg !291
  store i32 %add2212, ptr %arrayidx2211, align 16, !dbg !291
  %arrayidx2213 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !291
  %1071 = load i32, ptr %arrayidx2213, align 4, !dbg !291
  %arrayidx2214 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !291
  %1072 = load i32, ptr %arrayidx2214, align 16, !dbg !291
  %xor2215 = xor i32 %1071, %1072, !dbg !291
  %call2216 = call i32 @ror32(i32 noundef %xor2215, i32 noundef 8) #7, !dbg !291
  %arrayidx2217 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !291
  store i32 %call2216, ptr %arrayidx2217, align 4, !dbg !291
  %arrayidx2218 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !291
  %1073 = load i32, ptr %arrayidx2218, align 4, !dbg !291
  %arrayidx2219 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !291
  %1074 = load i32, ptr %arrayidx2219, align 8, !dbg !291
  %add2220 = add i32 %1074, %1073, !dbg !291
  store i32 %add2220, ptr %arrayidx2219, align 8, !dbg !291
  %arrayidx2221 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !291
  %1075 = load i32, ptr %arrayidx2221, align 4, !dbg !291
  %arrayidx2222 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !291
  %1076 = load i32, ptr %arrayidx2222, align 8, !dbg !291
  %xor2223 = xor i32 %1075, %1076, !dbg !291
  %call2224 = call i32 @ror32(i32 noundef %xor2223, i32 noundef 7) #7, !dbg !291
  %arrayidx2225 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !291
  store i32 %call2224, ptr %arrayidx2225, align 4, !dbg !291
  br label %do.cond2226, !dbg !291

do.cond2226:                                      ; preds = %do.body2187
  br label %do.end2227, !dbg !291

do.end2227:                                       ; preds = %do.cond2226
  br label %do.body2228, !dbg !281

do.body2228:                                      ; preds = %do.end2227
  %arrayidx2229 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !293
  %1077 = load i32, ptr %arrayidx2229, align 8, !dbg !293
  %1078 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 10), align 2, !dbg !293
  %idxprom2230 = zext i8 %1078 to i64, !dbg !293
  %arrayidx2231 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2230, !dbg !293
  %1079 = load i32, ptr %arrayidx2231, align 4, !dbg !293
  %add2232 = add i32 %1077, %1079, !dbg !293
  %arrayidx2233 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !293
  %1080 = load i32, ptr %arrayidx2233, align 4, !dbg !293
  %add2234 = add i32 %1080, %add2232, !dbg !293
  store i32 %add2234, ptr %arrayidx2233, align 4, !dbg !293
  %arrayidx2235 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !293
  %1081 = load i32, ptr %arrayidx2235, align 16, !dbg !293
  %arrayidx2236 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !293
  %1082 = load i32, ptr %arrayidx2236, align 4, !dbg !293
  %xor2237 = xor i32 %1081, %1082, !dbg !293
  %call2238 = call i32 @ror32(i32 noundef %xor2237, i32 noundef 16) #7, !dbg !293
  %arrayidx2239 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !293
  store i32 %call2238, ptr %arrayidx2239, align 16, !dbg !293
  %arrayidx2240 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !293
  %1083 = load i32, ptr %arrayidx2240, align 16, !dbg !293
  %arrayidx2241 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !293
  %1084 = load i32, ptr %arrayidx2241, align 4, !dbg !293
  %add2242 = add i32 %1084, %1083, !dbg !293
  store i32 %add2242, ptr %arrayidx2241, align 4, !dbg !293
  %arrayidx2243 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !293
  %1085 = load i32, ptr %arrayidx2243, align 8, !dbg !293
  %arrayidx2244 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !293
  %1086 = load i32, ptr %arrayidx2244, align 4, !dbg !293
  %xor2245 = xor i32 %1085, %1086, !dbg !293
  %call2246 = call i32 @ror32(i32 noundef %xor2245, i32 noundef 12) #7, !dbg !293
  %arrayidx2247 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !293
  store i32 %call2246, ptr %arrayidx2247, align 8, !dbg !293
  %arrayidx2248 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !293
  %1087 = load i32, ptr %arrayidx2248, align 8, !dbg !293
  %1088 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 11), align 1, !dbg !293
  %idxprom2249 = zext i8 %1088 to i64, !dbg !293
  %arrayidx2250 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2249, !dbg !293
  %1089 = load i32, ptr %arrayidx2250, align 4, !dbg !293
  %add2251 = add i32 %1087, %1089, !dbg !293
  %arrayidx2252 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !293
  %1090 = load i32, ptr %arrayidx2252, align 4, !dbg !293
  %add2253 = add i32 %1090, %add2251, !dbg !293
  store i32 %add2253, ptr %arrayidx2252, align 4, !dbg !293
  %arrayidx2254 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !293
  %1091 = load i32, ptr %arrayidx2254, align 16, !dbg !293
  %arrayidx2255 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !293
  %1092 = load i32, ptr %arrayidx2255, align 4, !dbg !293
  %xor2256 = xor i32 %1091, %1092, !dbg !293
  %call2257 = call i32 @ror32(i32 noundef %xor2256, i32 noundef 8) #7, !dbg !293
  %arrayidx2258 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !293
  store i32 %call2257, ptr %arrayidx2258, align 16, !dbg !293
  %arrayidx2259 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !293
  %1093 = load i32, ptr %arrayidx2259, align 16, !dbg !293
  %arrayidx2260 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !293
  %1094 = load i32, ptr %arrayidx2260, align 4, !dbg !293
  %add2261 = add i32 %1094, %1093, !dbg !293
  store i32 %add2261, ptr %arrayidx2260, align 4, !dbg !293
  %arrayidx2262 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !293
  %1095 = load i32, ptr %arrayidx2262, align 8, !dbg !293
  %arrayidx2263 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !293
  %1096 = load i32, ptr %arrayidx2263, align 4, !dbg !293
  %xor2264 = xor i32 %1095, %1096, !dbg !293
  %call2265 = call i32 @ror32(i32 noundef %xor2264, i32 noundef 7) #7, !dbg !293
  %arrayidx2266 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !293
  store i32 %call2265, ptr %arrayidx2266, align 8, !dbg !293
  br label %do.cond2267, !dbg !293

do.cond2267:                                      ; preds = %do.body2228
  br label %do.end2268, !dbg !293

do.end2268:                                       ; preds = %do.cond2267
  br label %do.body2269, !dbg !281

do.body2269:                                      ; preds = %do.end2268
  %arrayidx2270 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !295
  %1097 = load i32, ptr %arrayidx2270, align 4, !dbg !295
  %1098 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 12), align 4, !dbg !295
  %idxprom2271 = zext i8 %1098 to i64, !dbg !295
  %arrayidx2272 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2271, !dbg !295
  %1099 = load i32, ptr %arrayidx2272, align 4, !dbg !295
  %add2273 = add i32 %1097, %1099, !dbg !295
  %arrayidx2274 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !295
  %1100 = load i32, ptr %arrayidx2274, align 8, !dbg !295
  %add2275 = add i32 %1100, %add2273, !dbg !295
  store i32 %add2275, ptr %arrayidx2274, align 8, !dbg !295
  %arrayidx2276 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !295
  %1101 = load i32, ptr %arrayidx2276, align 4, !dbg !295
  %arrayidx2277 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !295
  %1102 = load i32, ptr %arrayidx2277, align 8, !dbg !295
  %xor2278 = xor i32 %1101, %1102, !dbg !295
  %call2279 = call i32 @ror32(i32 noundef %xor2278, i32 noundef 16) #7, !dbg !295
  %arrayidx2280 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !295
  store i32 %call2279, ptr %arrayidx2280, align 4, !dbg !295
  %arrayidx2281 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !295
  %1103 = load i32, ptr %arrayidx2281, align 4, !dbg !295
  %arrayidx2282 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !295
  %1104 = load i32, ptr %arrayidx2282, align 16, !dbg !295
  %add2283 = add i32 %1104, %1103, !dbg !295
  store i32 %add2283, ptr %arrayidx2282, align 16, !dbg !295
  %arrayidx2284 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !295
  %1105 = load i32, ptr %arrayidx2284, align 4, !dbg !295
  %arrayidx2285 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !295
  %1106 = load i32, ptr %arrayidx2285, align 16, !dbg !295
  %xor2286 = xor i32 %1105, %1106, !dbg !295
  %call2287 = call i32 @ror32(i32 noundef %xor2286, i32 noundef 12) #7, !dbg !295
  %arrayidx2288 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !295
  store i32 %call2287, ptr %arrayidx2288, align 4, !dbg !295
  %arrayidx2289 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !295
  %1107 = load i32, ptr %arrayidx2289, align 4, !dbg !295
  %1108 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 13), align 1, !dbg !295
  %idxprom2290 = zext i8 %1108 to i64, !dbg !295
  %arrayidx2291 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2290, !dbg !295
  %1109 = load i32, ptr %arrayidx2291, align 4, !dbg !295
  %add2292 = add i32 %1107, %1109, !dbg !295
  %arrayidx2293 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !295
  %1110 = load i32, ptr %arrayidx2293, align 8, !dbg !295
  %add2294 = add i32 %1110, %add2292, !dbg !295
  store i32 %add2294, ptr %arrayidx2293, align 8, !dbg !295
  %arrayidx2295 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !295
  %1111 = load i32, ptr %arrayidx2295, align 4, !dbg !295
  %arrayidx2296 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !295
  %1112 = load i32, ptr %arrayidx2296, align 8, !dbg !295
  %xor2297 = xor i32 %1111, %1112, !dbg !295
  %call2298 = call i32 @ror32(i32 noundef %xor2297, i32 noundef 8) #7, !dbg !295
  %arrayidx2299 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !295
  store i32 %call2298, ptr %arrayidx2299, align 4, !dbg !295
  %arrayidx2300 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !295
  %1113 = load i32, ptr %arrayidx2300, align 4, !dbg !295
  %arrayidx2301 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !295
  %1114 = load i32, ptr %arrayidx2301, align 16, !dbg !295
  %add2302 = add i32 %1114, %1113, !dbg !295
  store i32 %add2302, ptr %arrayidx2301, align 16, !dbg !295
  %arrayidx2303 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !295
  %1115 = load i32, ptr %arrayidx2303, align 4, !dbg !295
  %arrayidx2304 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !295
  %1116 = load i32, ptr %arrayidx2304, align 16, !dbg !295
  %xor2305 = xor i32 %1115, %1116, !dbg !295
  %call2306 = call i32 @ror32(i32 noundef %xor2305, i32 noundef 7) #7, !dbg !295
  %arrayidx2307 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !295
  store i32 %call2306, ptr %arrayidx2307, align 4, !dbg !295
  br label %do.cond2308, !dbg !295

do.cond2308:                                      ; preds = %do.body2269
  br label %do.end2309, !dbg !295

do.end2309:                                       ; preds = %do.cond2308
  br label %do.body2310, !dbg !281

do.body2310:                                      ; preds = %do.end2309
  %arrayidx2311 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !297
  %1117 = load i32, ptr %arrayidx2311, align 16, !dbg !297
  %1118 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 14), align 2, !dbg !297
  %idxprom2312 = zext i8 %1118 to i64, !dbg !297
  %arrayidx2313 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2312, !dbg !297
  %1119 = load i32, ptr %arrayidx2313, align 4, !dbg !297
  %add2314 = add i32 %1117, %1119, !dbg !297
  %arrayidx2315 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !297
  %1120 = load i32, ptr %arrayidx2315, align 4, !dbg !297
  %add2316 = add i32 %1120, %add2314, !dbg !297
  store i32 %add2316, ptr %arrayidx2315, align 4, !dbg !297
  %arrayidx2317 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !297
  %1121 = load i32, ptr %arrayidx2317, align 8, !dbg !297
  %arrayidx2318 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !297
  %1122 = load i32, ptr %arrayidx2318, align 4, !dbg !297
  %xor2319 = xor i32 %1121, %1122, !dbg !297
  %call2320 = call i32 @ror32(i32 noundef %xor2319, i32 noundef 16) #7, !dbg !297
  %arrayidx2321 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !297
  store i32 %call2320, ptr %arrayidx2321, align 8, !dbg !297
  %arrayidx2322 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !297
  %1123 = load i32, ptr %arrayidx2322, align 8, !dbg !297
  %arrayidx2323 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !297
  %1124 = load i32, ptr %arrayidx2323, align 4, !dbg !297
  %add2324 = add i32 %1124, %1123, !dbg !297
  store i32 %add2324, ptr %arrayidx2323, align 4, !dbg !297
  %arrayidx2325 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !297
  %1125 = load i32, ptr %arrayidx2325, align 16, !dbg !297
  %arrayidx2326 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !297
  %1126 = load i32, ptr %arrayidx2326, align 4, !dbg !297
  %xor2327 = xor i32 %1125, %1126, !dbg !297
  %call2328 = call i32 @ror32(i32 noundef %xor2327, i32 noundef 12) #7, !dbg !297
  %arrayidx2329 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !297
  store i32 %call2328, ptr %arrayidx2329, align 16, !dbg !297
  %arrayidx2330 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !297
  %1127 = load i32, ptr %arrayidx2330, align 16, !dbg !297
  %1128 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 15), align 1, !dbg !297
  %idxprom2331 = zext i8 %1128 to i64, !dbg !297
  %arrayidx2332 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2331, !dbg !297
  %1129 = load i32, ptr %arrayidx2332, align 4, !dbg !297
  %add2333 = add i32 %1127, %1129, !dbg !297
  %arrayidx2334 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !297
  %1130 = load i32, ptr %arrayidx2334, align 4, !dbg !297
  %add2335 = add i32 %1130, %add2333, !dbg !297
  store i32 %add2335, ptr %arrayidx2334, align 4, !dbg !297
  %arrayidx2336 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !297
  %1131 = load i32, ptr %arrayidx2336, align 8, !dbg !297
  %arrayidx2337 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !297
  %1132 = load i32, ptr %arrayidx2337, align 4, !dbg !297
  %xor2338 = xor i32 %1131, %1132, !dbg !297
  %call2339 = call i32 @ror32(i32 noundef %xor2338, i32 noundef 8) #7, !dbg !297
  %arrayidx2340 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !297
  store i32 %call2339, ptr %arrayidx2340, align 8, !dbg !297
  %arrayidx2341 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !297
  %1133 = load i32, ptr %arrayidx2341, align 8, !dbg !297
  %arrayidx2342 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !297
  %1134 = load i32, ptr %arrayidx2342, align 4, !dbg !297
  %add2343 = add i32 %1134, %1133, !dbg !297
  store i32 %add2343, ptr %arrayidx2342, align 4, !dbg !297
  %arrayidx2344 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !297
  %1135 = load i32, ptr %arrayidx2344, align 16, !dbg !297
  %arrayidx2345 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !297
  %1136 = load i32, ptr %arrayidx2345, align 4, !dbg !297
  %xor2346 = xor i32 %1135, %1136, !dbg !297
  %call2347 = call i32 @ror32(i32 noundef %xor2346, i32 noundef 7) #7, !dbg !297
  %arrayidx2348 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !297
  store i32 %call2347, ptr %arrayidx2348, align 16, !dbg !297
  br label %do.cond2349, !dbg !297

do.cond2349:                                      ; preds = %do.body2310
  br label %do.end2350, !dbg !297

do.end2350:                                       ; preds = %do.cond2349
  br label %do.cond2351, !dbg !281

do.cond2351:                                      ; preds = %do.end2350
  br label %do.end2352, !dbg !281

do.end2352:                                       ; preds = %do.cond2351
  br label %do.body2353, !dbg !299

do.body2353:                                      ; preds = %do.end2352
  br label %do.body2354, !dbg !300

do.body2354:                                      ; preds = %do.body2353
  %arrayidx2355 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !302
  %1137 = load i32, ptr %arrayidx2355, align 16, !dbg !302
  %1138 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7), align 16, !dbg !302
  %idxprom2356 = zext i8 %1138 to i64, !dbg !302
  %arrayidx2357 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2356, !dbg !302
  %1139 = load i32, ptr %arrayidx2357, align 4, !dbg !302
  %add2358 = add i32 %1137, %1139, !dbg !302
  %arrayidx2359 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !302
  %1140 = load i32, ptr %arrayidx2359, align 16, !dbg !302
  %add2360 = add i32 %1140, %add2358, !dbg !302
  store i32 %add2360, ptr %arrayidx2359, align 16, !dbg !302
  %arrayidx2361 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !302
  %1141 = load i32, ptr %arrayidx2361, align 16, !dbg !302
  %arrayidx2362 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !302
  %1142 = load i32, ptr %arrayidx2362, align 16, !dbg !302
  %xor2363 = xor i32 %1141, %1142, !dbg !302
  %call2364 = call i32 @ror32(i32 noundef %xor2363, i32 noundef 16) #7, !dbg !302
  %arrayidx2365 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !302
  store i32 %call2364, ptr %arrayidx2365, align 16, !dbg !302
  %arrayidx2366 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !302
  %1143 = load i32, ptr %arrayidx2366, align 16, !dbg !302
  %arrayidx2367 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !302
  %1144 = load i32, ptr %arrayidx2367, align 16, !dbg !302
  %add2368 = add i32 %1144, %1143, !dbg !302
  store i32 %add2368, ptr %arrayidx2367, align 16, !dbg !302
  %arrayidx2369 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !302
  %1145 = load i32, ptr %arrayidx2369, align 16, !dbg !302
  %arrayidx2370 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !302
  %1146 = load i32, ptr %arrayidx2370, align 16, !dbg !302
  %xor2371 = xor i32 %1145, %1146, !dbg !302
  %call2372 = call i32 @ror32(i32 noundef %xor2371, i32 noundef 12) #7, !dbg !302
  %arrayidx2373 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !302
  store i32 %call2372, ptr %arrayidx2373, align 16, !dbg !302
  %arrayidx2374 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !302
  %1147 = load i32, ptr %arrayidx2374, align 16, !dbg !302
  %1148 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 1), align 1, !dbg !302
  %idxprom2375 = zext i8 %1148 to i64, !dbg !302
  %arrayidx2376 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2375, !dbg !302
  %1149 = load i32, ptr %arrayidx2376, align 4, !dbg !302
  %add2377 = add i32 %1147, %1149, !dbg !302
  %arrayidx2378 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !302
  %1150 = load i32, ptr %arrayidx2378, align 16, !dbg !302
  %add2379 = add i32 %1150, %add2377, !dbg !302
  store i32 %add2379, ptr %arrayidx2378, align 16, !dbg !302
  %arrayidx2380 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !302
  %1151 = load i32, ptr %arrayidx2380, align 16, !dbg !302
  %arrayidx2381 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !302
  %1152 = load i32, ptr %arrayidx2381, align 16, !dbg !302
  %xor2382 = xor i32 %1151, %1152, !dbg !302
  %call2383 = call i32 @ror32(i32 noundef %xor2382, i32 noundef 8) #7, !dbg !302
  %arrayidx2384 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !302
  store i32 %call2383, ptr %arrayidx2384, align 16, !dbg !302
  %arrayidx2385 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !302
  %1153 = load i32, ptr %arrayidx2385, align 16, !dbg !302
  %arrayidx2386 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !302
  %1154 = load i32, ptr %arrayidx2386, align 16, !dbg !302
  %add2387 = add i32 %1154, %1153, !dbg !302
  store i32 %add2387, ptr %arrayidx2386, align 16, !dbg !302
  %arrayidx2388 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !302
  %1155 = load i32, ptr %arrayidx2388, align 16, !dbg !302
  %arrayidx2389 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !302
  %1156 = load i32, ptr %arrayidx2389, align 16, !dbg !302
  %xor2390 = xor i32 %1155, %1156, !dbg !302
  %call2391 = call i32 @ror32(i32 noundef %xor2390, i32 noundef 7) #7, !dbg !302
  %arrayidx2392 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !302
  store i32 %call2391, ptr %arrayidx2392, align 16, !dbg !302
  br label %do.cond2393, !dbg !302

do.cond2393:                                      ; preds = %do.body2354
  br label %do.end2394, !dbg !302

do.end2394:                                       ; preds = %do.cond2393
  br label %do.body2395, !dbg !300

do.body2395:                                      ; preds = %do.end2394
  %arrayidx2396 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !304
  %1157 = load i32, ptr %arrayidx2396, align 4, !dbg !304
  %1158 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 2), align 2, !dbg !304
  %idxprom2397 = zext i8 %1158 to i64, !dbg !304
  %arrayidx2398 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2397, !dbg !304
  %1159 = load i32, ptr %arrayidx2398, align 4, !dbg !304
  %add2399 = add i32 %1157, %1159, !dbg !304
  %arrayidx2400 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !304
  %1160 = load i32, ptr %arrayidx2400, align 4, !dbg !304
  %add2401 = add i32 %1160, %add2399, !dbg !304
  store i32 %add2401, ptr %arrayidx2400, align 4, !dbg !304
  %arrayidx2402 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !304
  %1161 = load i32, ptr %arrayidx2402, align 4, !dbg !304
  %arrayidx2403 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !304
  %1162 = load i32, ptr %arrayidx2403, align 4, !dbg !304
  %xor2404 = xor i32 %1161, %1162, !dbg !304
  %call2405 = call i32 @ror32(i32 noundef %xor2404, i32 noundef 16) #7, !dbg !304
  %arrayidx2406 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !304
  store i32 %call2405, ptr %arrayidx2406, align 4, !dbg !304
  %arrayidx2407 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !304
  %1163 = load i32, ptr %arrayidx2407, align 4, !dbg !304
  %arrayidx2408 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !304
  %1164 = load i32, ptr %arrayidx2408, align 4, !dbg !304
  %add2409 = add i32 %1164, %1163, !dbg !304
  store i32 %add2409, ptr %arrayidx2408, align 4, !dbg !304
  %arrayidx2410 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !304
  %1165 = load i32, ptr %arrayidx2410, align 4, !dbg !304
  %arrayidx2411 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !304
  %1166 = load i32, ptr %arrayidx2411, align 4, !dbg !304
  %xor2412 = xor i32 %1165, %1166, !dbg !304
  %call2413 = call i32 @ror32(i32 noundef %xor2412, i32 noundef 12) #7, !dbg !304
  %arrayidx2414 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !304
  store i32 %call2413, ptr %arrayidx2414, align 4, !dbg !304
  %arrayidx2415 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !304
  %1167 = load i32, ptr %arrayidx2415, align 4, !dbg !304
  %1168 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 3), align 1, !dbg !304
  %idxprom2416 = zext i8 %1168 to i64, !dbg !304
  %arrayidx2417 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2416, !dbg !304
  %1169 = load i32, ptr %arrayidx2417, align 4, !dbg !304
  %add2418 = add i32 %1167, %1169, !dbg !304
  %arrayidx2419 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !304
  %1170 = load i32, ptr %arrayidx2419, align 4, !dbg !304
  %add2420 = add i32 %1170, %add2418, !dbg !304
  store i32 %add2420, ptr %arrayidx2419, align 4, !dbg !304
  %arrayidx2421 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !304
  %1171 = load i32, ptr %arrayidx2421, align 4, !dbg !304
  %arrayidx2422 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !304
  %1172 = load i32, ptr %arrayidx2422, align 4, !dbg !304
  %xor2423 = xor i32 %1171, %1172, !dbg !304
  %call2424 = call i32 @ror32(i32 noundef %xor2423, i32 noundef 8) #7, !dbg !304
  %arrayidx2425 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !304
  store i32 %call2424, ptr %arrayidx2425, align 4, !dbg !304
  %arrayidx2426 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !304
  %1173 = load i32, ptr %arrayidx2426, align 4, !dbg !304
  %arrayidx2427 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !304
  %1174 = load i32, ptr %arrayidx2427, align 4, !dbg !304
  %add2428 = add i32 %1174, %1173, !dbg !304
  store i32 %add2428, ptr %arrayidx2427, align 4, !dbg !304
  %arrayidx2429 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !304
  %1175 = load i32, ptr %arrayidx2429, align 4, !dbg !304
  %arrayidx2430 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !304
  %1176 = load i32, ptr %arrayidx2430, align 4, !dbg !304
  %xor2431 = xor i32 %1175, %1176, !dbg !304
  %call2432 = call i32 @ror32(i32 noundef %xor2431, i32 noundef 7) #7, !dbg !304
  %arrayidx2433 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !304
  store i32 %call2432, ptr %arrayidx2433, align 4, !dbg !304
  br label %do.cond2434, !dbg !304

do.cond2434:                                      ; preds = %do.body2395
  br label %do.end2435, !dbg !304

do.end2435:                                       ; preds = %do.cond2434
  br label %do.body2436, !dbg !300

do.body2436:                                      ; preds = %do.end2435
  %arrayidx2437 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !306
  %1177 = load i32, ptr %arrayidx2437, align 8, !dbg !306
  %1178 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 4), align 4, !dbg !306
  %idxprom2438 = zext i8 %1178 to i64, !dbg !306
  %arrayidx2439 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2438, !dbg !306
  %1179 = load i32, ptr %arrayidx2439, align 4, !dbg !306
  %add2440 = add i32 %1177, %1179, !dbg !306
  %arrayidx2441 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !306
  %1180 = load i32, ptr %arrayidx2441, align 8, !dbg !306
  %add2442 = add i32 %1180, %add2440, !dbg !306
  store i32 %add2442, ptr %arrayidx2441, align 8, !dbg !306
  %arrayidx2443 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !306
  %1181 = load i32, ptr %arrayidx2443, align 8, !dbg !306
  %arrayidx2444 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !306
  %1182 = load i32, ptr %arrayidx2444, align 8, !dbg !306
  %xor2445 = xor i32 %1181, %1182, !dbg !306
  %call2446 = call i32 @ror32(i32 noundef %xor2445, i32 noundef 16) #7, !dbg !306
  %arrayidx2447 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !306
  store i32 %call2446, ptr %arrayidx2447, align 8, !dbg !306
  %arrayidx2448 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !306
  %1183 = load i32, ptr %arrayidx2448, align 8, !dbg !306
  %arrayidx2449 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !306
  %1184 = load i32, ptr %arrayidx2449, align 8, !dbg !306
  %add2450 = add i32 %1184, %1183, !dbg !306
  store i32 %add2450, ptr %arrayidx2449, align 8, !dbg !306
  %arrayidx2451 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !306
  %1185 = load i32, ptr %arrayidx2451, align 8, !dbg !306
  %arrayidx2452 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !306
  %1186 = load i32, ptr %arrayidx2452, align 8, !dbg !306
  %xor2453 = xor i32 %1185, %1186, !dbg !306
  %call2454 = call i32 @ror32(i32 noundef %xor2453, i32 noundef 12) #7, !dbg !306
  %arrayidx2455 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !306
  store i32 %call2454, ptr %arrayidx2455, align 8, !dbg !306
  %arrayidx2456 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !306
  %1187 = load i32, ptr %arrayidx2456, align 8, !dbg !306
  %1188 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 5), align 1, !dbg !306
  %idxprom2457 = zext i8 %1188 to i64, !dbg !306
  %arrayidx2458 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2457, !dbg !306
  %1189 = load i32, ptr %arrayidx2458, align 4, !dbg !306
  %add2459 = add i32 %1187, %1189, !dbg !306
  %arrayidx2460 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !306
  %1190 = load i32, ptr %arrayidx2460, align 8, !dbg !306
  %add2461 = add i32 %1190, %add2459, !dbg !306
  store i32 %add2461, ptr %arrayidx2460, align 8, !dbg !306
  %arrayidx2462 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !306
  %1191 = load i32, ptr %arrayidx2462, align 8, !dbg !306
  %arrayidx2463 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !306
  %1192 = load i32, ptr %arrayidx2463, align 8, !dbg !306
  %xor2464 = xor i32 %1191, %1192, !dbg !306
  %call2465 = call i32 @ror32(i32 noundef %xor2464, i32 noundef 8) #7, !dbg !306
  %arrayidx2466 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !306
  store i32 %call2465, ptr %arrayidx2466, align 8, !dbg !306
  %arrayidx2467 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !306
  %1193 = load i32, ptr %arrayidx2467, align 8, !dbg !306
  %arrayidx2468 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !306
  %1194 = load i32, ptr %arrayidx2468, align 8, !dbg !306
  %add2469 = add i32 %1194, %1193, !dbg !306
  store i32 %add2469, ptr %arrayidx2468, align 8, !dbg !306
  %arrayidx2470 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !306
  %1195 = load i32, ptr %arrayidx2470, align 8, !dbg !306
  %arrayidx2471 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !306
  %1196 = load i32, ptr %arrayidx2471, align 8, !dbg !306
  %xor2472 = xor i32 %1195, %1196, !dbg !306
  %call2473 = call i32 @ror32(i32 noundef %xor2472, i32 noundef 7) #7, !dbg !306
  %arrayidx2474 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !306
  store i32 %call2473, ptr %arrayidx2474, align 8, !dbg !306
  br label %do.cond2475, !dbg !306

do.cond2475:                                      ; preds = %do.body2436
  br label %do.end2476, !dbg !306

do.end2476:                                       ; preds = %do.cond2475
  br label %do.body2477, !dbg !300

do.body2477:                                      ; preds = %do.end2476
  %arrayidx2478 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !308
  %1197 = load i32, ptr %arrayidx2478, align 4, !dbg !308
  %1198 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 6), align 2, !dbg !308
  %idxprom2479 = zext i8 %1198 to i64, !dbg !308
  %arrayidx2480 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2479, !dbg !308
  %1199 = load i32, ptr %arrayidx2480, align 4, !dbg !308
  %add2481 = add i32 %1197, %1199, !dbg !308
  %arrayidx2482 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !308
  %1200 = load i32, ptr %arrayidx2482, align 4, !dbg !308
  %add2483 = add i32 %1200, %add2481, !dbg !308
  store i32 %add2483, ptr %arrayidx2482, align 4, !dbg !308
  %arrayidx2484 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !308
  %1201 = load i32, ptr %arrayidx2484, align 4, !dbg !308
  %arrayidx2485 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !308
  %1202 = load i32, ptr %arrayidx2485, align 4, !dbg !308
  %xor2486 = xor i32 %1201, %1202, !dbg !308
  %call2487 = call i32 @ror32(i32 noundef %xor2486, i32 noundef 16) #7, !dbg !308
  %arrayidx2488 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !308
  store i32 %call2487, ptr %arrayidx2488, align 4, !dbg !308
  %arrayidx2489 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !308
  %1203 = load i32, ptr %arrayidx2489, align 4, !dbg !308
  %arrayidx2490 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !308
  %1204 = load i32, ptr %arrayidx2490, align 4, !dbg !308
  %add2491 = add i32 %1204, %1203, !dbg !308
  store i32 %add2491, ptr %arrayidx2490, align 4, !dbg !308
  %arrayidx2492 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !308
  %1205 = load i32, ptr %arrayidx2492, align 4, !dbg !308
  %arrayidx2493 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !308
  %1206 = load i32, ptr %arrayidx2493, align 4, !dbg !308
  %xor2494 = xor i32 %1205, %1206, !dbg !308
  %call2495 = call i32 @ror32(i32 noundef %xor2494, i32 noundef 12) #7, !dbg !308
  %arrayidx2496 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !308
  store i32 %call2495, ptr %arrayidx2496, align 4, !dbg !308
  %arrayidx2497 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !308
  %1207 = load i32, ptr %arrayidx2497, align 4, !dbg !308
  %1208 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 7), align 1, !dbg !308
  %idxprom2498 = zext i8 %1208 to i64, !dbg !308
  %arrayidx2499 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2498, !dbg !308
  %1209 = load i32, ptr %arrayidx2499, align 4, !dbg !308
  %add2500 = add i32 %1207, %1209, !dbg !308
  %arrayidx2501 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !308
  %1210 = load i32, ptr %arrayidx2501, align 4, !dbg !308
  %add2502 = add i32 %1210, %add2500, !dbg !308
  store i32 %add2502, ptr %arrayidx2501, align 4, !dbg !308
  %arrayidx2503 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !308
  %1211 = load i32, ptr %arrayidx2503, align 4, !dbg !308
  %arrayidx2504 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !308
  %1212 = load i32, ptr %arrayidx2504, align 4, !dbg !308
  %xor2505 = xor i32 %1211, %1212, !dbg !308
  %call2506 = call i32 @ror32(i32 noundef %xor2505, i32 noundef 8) #7, !dbg !308
  %arrayidx2507 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !308
  store i32 %call2506, ptr %arrayidx2507, align 4, !dbg !308
  %arrayidx2508 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !308
  %1213 = load i32, ptr %arrayidx2508, align 4, !dbg !308
  %arrayidx2509 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !308
  %1214 = load i32, ptr %arrayidx2509, align 4, !dbg !308
  %add2510 = add i32 %1214, %1213, !dbg !308
  store i32 %add2510, ptr %arrayidx2509, align 4, !dbg !308
  %arrayidx2511 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !308
  %1215 = load i32, ptr %arrayidx2511, align 4, !dbg !308
  %arrayidx2512 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !308
  %1216 = load i32, ptr %arrayidx2512, align 4, !dbg !308
  %xor2513 = xor i32 %1215, %1216, !dbg !308
  %call2514 = call i32 @ror32(i32 noundef %xor2513, i32 noundef 7) #7, !dbg !308
  %arrayidx2515 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !308
  store i32 %call2514, ptr %arrayidx2515, align 4, !dbg !308
  br label %do.cond2516, !dbg !308

do.cond2516:                                      ; preds = %do.body2477
  br label %do.end2517, !dbg !308

do.end2517:                                       ; preds = %do.cond2516
  br label %do.body2518, !dbg !300

do.body2518:                                      ; preds = %do.end2517
  %arrayidx2519 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !310
  %1217 = load i32, ptr %arrayidx2519, align 4, !dbg !310
  %1218 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 8), align 8, !dbg !310
  %idxprom2520 = zext i8 %1218 to i64, !dbg !310
  %arrayidx2521 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2520, !dbg !310
  %1219 = load i32, ptr %arrayidx2521, align 4, !dbg !310
  %add2522 = add i32 %1217, %1219, !dbg !310
  %arrayidx2523 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !310
  %1220 = load i32, ptr %arrayidx2523, align 16, !dbg !310
  %add2524 = add i32 %1220, %add2522, !dbg !310
  store i32 %add2524, ptr %arrayidx2523, align 16, !dbg !310
  %arrayidx2525 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !310
  %1221 = load i32, ptr %arrayidx2525, align 4, !dbg !310
  %arrayidx2526 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !310
  %1222 = load i32, ptr %arrayidx2526, align 16, !dbg !310
  %xor2527 = xor i32 %1221, %1222, !dbg !310
  %call2528 = call i32 @ror32(i32 noundef %xor2527, i32 noundef 16) #7, !dbg !310
  %arrayidx2529 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !310
  store i32 %call2528, ptr %arrayidx2529, align 4, !dbg !310
  %arrayidx2530 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !310
  %1223 = load i32, ptr %arrayidx2530, align 4, !dbg !310
  %arrayidx2531 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !310
  %1224 = load i32, ptr %arrayidx2531, align 8, !dbg !310
  %add2532 = add i32 %1224, %1223, !dbg !310
  store i32 %add2532, ptr %arrayidx2531, align 8, !dbg !310
  %arrayidx2533 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !310
  %1225 = load i32, ptr %arrayidx2533, align 4, !dbg !310
  %arrayidx2534 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !310
  %1226 = load i32, ptr %arrayidx2534, align 8, !dbg !310
  %xor2535 = xor i32 %1225, %1226, !dbg !310
  %call2536 = call i32 @ror32(i32 noundef %xor2535, i32 noundef 12) #7, !dbg !310
  %arrayidx2537 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !310
  store i32 %call2536, ptr %arrayidx2537, align 4, !dbg !310
  %arrayidx2538 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !310
  %1227 = load i32, ptr %arrayidx2538, align 4, !dbg !310
  %1228 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 9), align 1, !dbg !310
  %idxprom2539 = zext i8 %1228 to i64, !dbg !310
  %arrayidx2540 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2539, !dbg !310
  %1229 = load i32, ptr %arrayidx2540, align 4, !dbg !310
  %add2541 = add i32 %1227, %1229, !dbg !310
  %arrayidx2542 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !310
  %1230 = load i32, ptr %arrayidx2542, align 16, !dbg !310
  %add2543 = add i32 %1230, %add2541, !dbg !310
  store i32 %add2543, ptr %arrayidx2542, align 16, !dbg !310
  %arrayidx2544 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !310
  %1231 = load i32, ptr %arrayidx2544, align 4, !dbg !310
  %arrayidx2545 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !310
  %1232 = load i32, ptr %arrayidx2545, align 16, !dbg !310
  %xor2546 = xor i32 %1231, %1232, !dbg !310
  %call2547 = call i32 @ror32(i32 noundef %xor2546, i32 noundef 8) #7, !dbg !310
  %arrayidx2548 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !310
  store i32 %call2547, ptr %arrayidx2548, align 4, !dbg !310
  %arrayidx2549 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !310
  %1233 = load i32, ptr %arrayidx2549, align 4, !dbg !310
  %arrayidx2550 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !310
  %1234 = load i32, ptr %arrayidx2550, align 8, !dbg !310
  %add2551 = add i32 %1234, %1233, !dbg !310
  store i32 %add2551, ptr %arrayidx2550, align 8, !dbg !310
  %arrayidx2552 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !310
  %1235 = load i32, ptr %arrayidx2552, align 4, !dbg !310
  %arrayidx2553 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !310
  %1236 = load i32, ptr %arrayidx2553, align 8, !dbg !310
  %xor2554 = xor i32 %1235, %1236, !dbg !310
  %call2555 = call i32 @ror32(i32 noundef %xor2554, i32 noundef 7) #7, !dbg !310
  %arrayidx2556 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !310
  store i32 %call2555, ptr %arrayidx2556, align 4, !dbg !310
  br label %do.cond2557, !dbg !310

do.cond2557:                                      ; preds = %do.body2518
  br label %do.end2558, !dbg !310

do.end2558:                                       ; preds = %do.cond2557
  br label %do.body2559, !dbg !300

do.body2559:                                      ; preds = %do.end2558
  %arrayidx2560 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !312
  %1237 = load i32, ptr %arrayidx2560, align 8, !dbg !312
  %1238 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 10), align 2, !dbg !312
  %idxprom2561 = zext i8 %1238 to i64, !dbg !312
  %arrayidx2562 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2561, !dbg !312
  %1239 = load i32, ptr %arrayidx2562, align 4, !dbg !312
  %add2563 = add i32 %1237, %1239, !dbg !312
  %arrayidx2564 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !312
  %1240 = load i32, ptr %arrayidx2564, align 4, !dbg !312
  %add2565 = add i32 %1240, %add2563, !dbg !312
  store i32 %add2565, ptr %arrayidx2564, align 4, !dbg !312
  %arrayidx2566 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !312
  %1241 = load i32, ptr %arrayidx2566, align 16, !dbg !312
  %arrayidx2567 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !312
  %1242 = load i32, ptr %arrayidx2567, align 4, !dbg !312
  %xor2568 = xor i32 %1241, %1242, !dbg !312
  %call2569 = call i32 @ror32(i32 noundef %xor2568, i32 noundef 16) #7, !dbg !312
  %arrayidx2570 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !312
  store i32 %call2569, ptr %arrayidx2570, align 16, !dbg !312
  %arrayidx2571 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !312
  %1243 = load i32, ptr %arrayidx2571, align 16, !dbg !312
  %arrayidx2572 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !312
  %1244 = load i32, ptr %arrayidx2572, align 4, !dbg !312
  %add2573 = add i32 %1244, %1243, !dbg !312
  store i32 %add2573, ptr %arrayidx2572, align 4, !dbg !312
  %arrayidx2574 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !312
  %1245 = load i32, ptr %arrayidx2574, align 8, !dbg !312
  %arrayidx2575 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !312
  %1246 = load i32, ptr %arrayidx2575, align 4, !dbg !312
  %xor2576 = xor i32 %1245, %1246, !dbg !312
  %call2577 = call i32 @ror32(i32 noundef %xor2576, i32 noundef 12) #7, !dbg !312
  %arrayidx2578 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !312
  store i32 %call2577, ptr %arrayidx2578, align 8, !dbg !312
  %arrayidx2579 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !312
  %1247 = load i32, ptr %arrayidx2579, align 8, !dbg !312
  %1248 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 11), align 1, !dbg !312
  %idxprom2580 = zext i8 %1248 to i64, !dbg !312
  %arrayidx2581 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2580, !dbg !312
  %1249 = load i32, ptr %arrayidx2581, align 4, !dbg !312
  %add2582 = add i32 %1247, %1249, !dbg !312
  %arrayidx2583 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !312
  %1250 = load i32, ptr %arrayidx2583, align 4, !dbg !312
  %add2584 = add i32 %1250, %add2582, !dbg !312
  store i32 %add2584, ptr %arrayidx2583, align 4, !dbg !312
  %arrayidx2585 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !312
  %1251 = load i32, ptr %arrayidx2585, align 16, !dbg !312
  %arrayidx2586 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !312
  %1252 = load i32, ptr %arrayidx2586, align 4, !dbg !312
  %xor2587 = xor i32 %1251, %1252, !dbg !312
  %call2588 = call i32 @ror32(i32 noundef %xor2587, i32 noundef 8) #7, !dbg !312
  %arrayidx2589 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !312
  store i32 %call2588, ptr %arrayidx2589, align 16, !dbg !312
  %arrayidx2590 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !312
  %1253 = load i32, ptr %arrayidx2590, align 16, !dbg !312
  %arrayidx2591 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !312
  %1254 = load i32, ptr %arrayidx2591, align 4, !dbg !312
  %add2592 = add i32 %1254, %1253, !dbg !312
  store i32 %add2592, ptr %arrayidx2591, align 4, !dbg !312
  %arrayidx2593 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !312
  %1255 = load i32, ptr %arrayidx2593, align 8, !dbg !312
  %arrayidx2594 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !312
  %1256 = load i32, ptr %arrayidx2594, align 4, !dbg !312
  %xor2595 = xor i32 %1255, %1256, !dbg !312
  %call2596 = call i32 @ror32(i32 noundef %xor2595, i32 noundef 7) #7, !dbg !312
  %arrayidx2597 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !312
  store i32 %call2596, ptr %arrayidx2597, align 8, !dbg !312
  br label %do.cond2598, !dbg !312

do.cond2598:                                      ; preds = %do.body2559
  br label %do.end2599, !dbg !312

do.end2599:                                       ; preds = %do.cond2598
  br label %do.body2600, !dbg !300

do.body2600:                                      ; preds = %do.end2599
  %arrayidx2601 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !314
  %1257 = load i32, ptr %arrayidx2601, align 4, !dbg !314
  %1258 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 12), align 4, !dbg !314
  %idxprom2602 = zext i8 %1258 to i64, !dbg !314
  %arrayidx2603 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2602, !dbg !314
  %1259 = load i32, ptr %arrayidx2603, align 4, !dbg !314
  %add2604 = add i32 %1257, %1259, !dbg !314
  %arrayidx2605 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !314
  %1260 = load i32, ptr %arrayidx2605, align 8, !dbg !314
  %add2606 = add i32 %1260, %add2604, !dbg !314
  store i32 %add2606, ptr %arrayidx2605, align 8, !dbg !314
  %arrayidx2607 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !314
  %1261 = load i32, ptr %arrayidx2607, align 4, !dbg !314
  %arrayidx2608 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !314
  %1262 = load i32, ptr %arrayidx2608, align 8, !dbg !314
  %xor2609 = xor i32 %1261, %1262, !dbg !314
  %call2610 = call i32 @ror32(i32 noundef %xor2609, i32 noundef 16) #7, !dbg !314
  %arrayidx2611 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !314
  store i32 %call2610, ptr %arrayidx2611, align 4, !dbg !314
  %arrayidx2612 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !314
  %1263 = load i32, ptr %arrayidx2612, align 4, !dbg !314
  %arrayidx2613 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !314
  %1264 = load i32, ptr %arrayidx2613, align 16, !dbg !314
  %add2614 = add i32 %1264, %1263, !dbg !314
  store i32 %add2614, ptr %arrayidx2613, align 16, !dbg !314
  %arrayidx2615 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !314
  %1265 = load i32, ptr %arrayidx2615, align 4, !dbg !314
  %arrayidx2616 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !314
  %1266 = load i32, ptr %arrayidx2616, align 16, !dbg !314
  %xor2617 = xor i32 %1265, %1266, !dbg !314
  %call2618 = call i32 @ror32(i32 noundef %xor2617, i32 noundef 12) #7, !dbg !314
  %arrayidx2619 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !314
  store i32 %call2618, ptr %arrayidx2619, align 4, !dbg !314
  %arrayidx2620 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !314
  %1267 = load i32, ptr %arrayidx2620, align 4, !dbg !314
  %1268 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 13), align 1, !dbg !314
  %idxprom2621 = zext i8 %1268 to i64, !dbg !314
  %arrayidx2622 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2621, !dbg !314
  %1269 = load i32, ptr %arrayidx2622, align 4, !dbg !314
  %add2623 = add i32 %1267, %1269, !dbg !314
  %arrayidx2624 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !314
  %1270 = load i32, ptr %arrayidx2624, align 8, !dbg !314
  %add2625 = add i32 %1270, %add2623, !dbg !314
  store i32 %add2625, ptr %arrayidx2624, align 8, !dbg !314
  %arrayidx2626 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !314
  %1271 = load i32, ptr %arrayidx2626, align 4, !dbg !314
  %arrayidx2627 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !314
  %1272 = load i32, ptr %arrayidx2627, align 8, !dbg !314
  %xor2628 = xor i32 %1271, %1272, !dbg !314
  %call2629 = call i32 @ror32(i32 noundef %xor2628, i32 noundef 8) #7, !dbg !314
  %arrayidx2630 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !314
  store i32 %call2629, ptr %arrayidx2630, align 4, !dbg !314
  %arrayidx2631 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !314
  %1273 = load i32, ptr %arrayidx2631, align 4, !dbg !314
  %arrayidx2632 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !314
  %1274 = load i32, ptr %arrayidx2632, align 16, !dbg !314
  %add2633 = add i32 %1274, %1273, !dbg !314
  store i32 %add2633, ptr %arrayidx2632, align 16, !dbg !314
  %arrayidx2634 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !314
  %1275 = load i32, ptr %arrayidx2634, align 4, !dbg !314
  %arrayidx2635 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !314
  %1276 = load i32, ptr %arrayidx2635, align 16, !dbg !314
  %xor2636 = xor i32 %1275, %1276, !dbg !314
  %call2637 = call i32 @ror32(i32 noundef %xor2636, i32 noundef 7) #7, !dbg !314
  %arrayidx2638 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !314
  store i32 %call2637, ptr %arrayidx2638, align 4, !dbg !314
  br label %do.cond2639, !dbg !314

do.cond2639:                                      ; preds = %do.body2600
  br label %do.end2640, !dbg !314

do.end2640:                                       ; preds = %do.cond2639
  br label %do.body2641, !dbg !300

do.body2641:                                      ; preds = %do.end2640
  %arrayidx2642 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !316
  %1277 = load i32, ptr %arrayidx2642, align 16, !dbg !316
  %1278 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 14), align 2, !dbg !316
  %idxprom2643 = zext i8 %1278 to i64, !dbg !316
  %arrayidx2644 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2643, !dbg !316
  %1279 = load i32, ptr %arrayidx2644, align 4, !dbg !316
  %add2645 = add i32 %1277, %1279, !dbg !316
  %arrayidx2646 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !316
  %1280 = load i32, ptr %arrayidx2646, align 4, !dbg !316
  %add2647 = add i32 %1280, %add2645, !dbg !316
  store i32 %add2647, ptr %arrayidx2646, align 4, !dbg !316
  %arrayidx2648 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !316
  %1281 = load i32, ptr %arrayidx2648, align 8, !dbg !316
  %arrayidx2649 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !316
  %1282 = load i32, ptr %arrayidx2649, align 4, !dbg !316
  %xor2650 = xor i32 %1281, %1282, !dbg !316
  %call2651 = call i32 @ror32(i32 noundef %xor2650, i32 noundef 16) #7, !dbg !316
  %arrayidx2652 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !316
  store i32 %call2651, ptr %arrayidx2652, align 8, !dbg !316
  %arrayidx2653 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !316
  %1283 = load i32, ptr %arrayidx2653, align 8, !dbg !316
  %arrayidx2654 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !316
  %1284 = load i32, ptr %arrayidx2654, align 4, !dbg !316
  %add2655 = add i32 %1284, %1283, !dbg !316
  store i32 %add2655, ptr %arrayidx2654, align 4, !dbg !316
  %arrayidx2656 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !316
  %1285 = load i32, ptr %arrayidx2656, align 16, !dbg !316
  %arrayidx2657 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !316
  %1286 = load i32, ptr %arrayidx2657, align 4, !dbg !316
  %xor2658 = xor i32 %1285, %1286, !dbg !316
  %call2659 = call i32 @ror32(i32 noundef %xor2658, i32 noundef 12) #7, !dbg !316
  %arrayidx2660 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !316
  store i32 %call2659, ptr %arrayidx2660, align 16, !dbg !316
  %arrayidx2661 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !316
  %1287 = load i32, ptr %arrayidx2661, align 16, !dbg !316
  %1288 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 15), align 1, !dbg !316
  %idxprom2662 = zext i8 %1288 to i64, !dbg !316
  %arrayidx2663 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2662, !dbg !316
  %1289 = load i32, ptr %arrayidx2663, align 4, !dbg !316
  %add2664 = add i32 %1287, %1289, !dbg !316
  %arrayidx2665 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !316
  %1290 = load i32, ptr %arrayidx2665, align 4, !dbg !316
  %add2666 = add i32 %1290, %add2664, !dbg !316
  store i32 %add2666, ptr %arrayidx2665, align 4, !dbg !316
  %arrayidx2667 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !316
  %1291 = load i32, ptr %arrayidx2667, align 8, !dbg !316
  %arrayidx2668 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !316
  %1292 = load i32, ptr %arrayidx2668, align 4, !dbg !316
  %xor2669 = xor i32 %1291, %1292, !dbg !316
  %call2670 = call i32 @ror32(i32 noundef %xor2669, i32 noundef 8) #7, !dbg !316
  %arrayidx2671 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !316
  store i32 %call2670, ptr %arrayidx2671, align 8, !dbg !316
  %arrayidx2672 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !316
  %1293 = load i32, ptr %arrayidx2672, align 8, !dbg !316
  %arrayidx2673 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !316
  %1294 = load i32, ptr %arrayidx2673, align 4, !dbg !316
  %add2674 = add i32 %1294, %1293, !dbg !316
  store i32 %add2674, ptr %arrayidx2673, align 4, !dbg !316
  %arrayidx2675 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !316
  %1295 = load i32, ptr %arrayidx2675, align 16, !dbg !316
  %arrayidx2676 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !316
  %1296 = load i32, ptr %arrayidx2676, align 4, !dbg !316
  %xor2677 = xor i32 %1295, %1296, !dbg !316
  %call2678 = call i32 @ror32(i32 noundef %xor2677, i32 noundef 7) #7, !dbg !316
  %arrayidx2679 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !316
  store i32 %call2678, ptr %arrayidx2679, align 16, !dbg !316
  br label %do.cond2680, !dbg !316

do.cond2680:                                      ; preds = %do.body2641
  br label %do.end2681, !dbg !316

do.end2681:                                       ; preds = %do.cond2680
  br label %do.cond2682, !dbg !300

do.cond2682:                                      ; preds = %do.end2681
  br label %do.end2683, !dbg !300

do.end2683:                                       ; preds = %do.cond2682
  br label %do.body2684, !dbg !318

do.body2684:                                      ; preds = %do.end2683
  br label %do.body2685, !dbg !319

do.body2685:                                      ; preds = %do.body2684
  %arrayidx2686 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !321
  %1297 = load i32, ptr %arrayidx2686, align 16, !dbg !321
  %1298 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8), align 16, !dbg !321
  %idxprom2687 = zext i8 %1298 to i64, !dbg !321
  %arrayidx2688 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2687, !dbg !321
  %1299 = load i32, ptr %arrayidx2688, align 4, !dbg !321
  %add2689 = add i32 %1297, %1299, !dbg !321
  %arrayidx2690 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !321
  %1300 = load i32, ptr %arrayidx2690, align 16, !dbg !321
  %add2691 = add i32 %1300, %add2689, !dbg !321
  store i32 %add2691, ptr %arrayidx2690, align 16, !dbg !321
  %arrayidx2692 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !321
  %1301 = load i32, ptr %arrayidx2692, align 16, !dbg !321
  %arrayidx2693 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !321
  %1302 = load i32, ptr %arrayidx2693, align 16, !dbg !321
  %xor2694 = xor i32 %1301, %1302, !dbg !321
  %call2695 = call i32 @ror32(i32 noundef %xor2694, i32 noundef 16) #7, !dbg !321
  %arrayidx2696 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !321
  store i32 %call2695, ptr %arrayidx2696, align 16, !dbg !321
  %arrayidx2697 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !321
  %1303 = load i32, ptr %arrayidx2697, align 16, !dbg !321
  %arrayidx2698 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !321
  %1304 = load i32, ptr %arrayidx2698, align 16, !dbg !321
  %add2699 = add i32 %1304, %1303, !dbg !321
  store i32 %add2699, ptr %arrayidx2698, align 16, !dbg !321
  %arrayidx2700 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !321
  %1305 = load i32, ptr %arrayidx2700, align 16, !dbg !321
  %arrayidx2701 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !321
  %1306 = load i32, ptr %arrayidx2701, align 16, !dbg !321
  %xor2702 = xor i32 %1305, %1306, !dbg !321
  %call2703 = call i32 @ror32(i32 noundef %xor2702, i32 noundef 12) #7, !dbg !321
  %arrayidx2704 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !321
  store i32 %call2703, ptr %arrayidx2704, align 16, !dbg !321
  %arrayidx2705 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !321
  %1307 = load i32, ptr %arrayidx2705, align 16, !dbg !321
  %1308 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 1), align 1, !dbg !321
  %idxprom2706 = zext i8 %1308 to i64, !dbg !321
  %arrayidx2707 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2706, !dbg !321
  %1309 = load i32, ptr %arrayidx2707, align 4, !dbg !321
  %add2708 = add i32 %1307, %1309, !dbg !321
  %arrayidx2709 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !321
  %1310 = load i32, ptr %arrayidx2709, align 16, !dbg !321
  %add2710 = add i32 %1310, %add2708, !dbg !321
  store i32 %add2710, ptr %arrayidx2709, align 16, !dbg !321
  %arrayidx2711 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !321
  %1311 = load i32, ptr %arrayidx2711, align 16, !dbg !321
  %arrayidx2712 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !321
  %1312 = load i32, ptr %arrayidx2712, align 16, !dbg !321
  %xor2713 = xor i32 %1311, %1312, !dbg !321
  %call2714 = call i32 @ror32(i32 noundef %xor2713, i32 noundef 8) #7, !dbg !321
  %arrayidx2715 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !321
  store i32 %call2714, ptr %arrayidx2715, align 16, !dbg !321
  %arrayidx2716 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !321
  %1313 = load i32, ptr %arrayidx2716, align 16, !dbg !321
  %arrayidx2717 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !321
  %1314 = load i32, ptr %arrayidx2717, align 16, !dbg !321
  %add2718 = add i32 %1314, %1313, !dbg !321
  store i32 %add2718, ptr %arrayidx2717, align 16, !dbg !321
  %arrayidx2719 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !321
  %1315 = load i32, ptr %arrayidx2719, align 16, !dbg !321
  %arrayidx2720 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !321
  %1316 = load i32, ptr %arrayidx2720, align 16, !dbg !321
  %xor2721 = xor i32 %1315, %1316, !dbg !321
  %call2722 = call i32 @ror32(i32 noundef %xor2721, i32 noundef 7) #7, !dbg !321
  %arrayidx2723 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !321
  store i32 %call2722, ptr %arrayidx2723, align 16, !dbg !321
  br label %do.cond2724, !dbg !321

do.cond2724:                                      ; preds = %do.body2685
  br label %do.end2725, !dbg !321

do.end2725:                                       ; preds = %do.cond2724
  br label %do.body2726, !dbg !319

do.body2726:                                      ; preds = %do.end2725
  %arrayidx2727 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !323
  %1317 = load i32, ptr %arrayidx2727, align 4, !dbg !323
  %1318 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 2), align 2, !dbg !323
  %idxprom2728 = zext i8 %1318 to i64, !dbg !323
  %arrayidx2729 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2728, !dbg !323
  %1319 = load i32, ptr %arrayidx2729, align 4, !dbg !323
  %add2730 = add i32 %1317, %1319, !dbg !323
  %arrayidx2731 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !323
  %1320 = load i32, ptr %arrayidx2731, align 4, !dbg !323
  %add2732 = add i32 %1320, %add2730, !dbg !323
  store i32 %add2732, ptr %arrayidx2731, align 4, !dbg !323
  %arrayidx2733 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !323
  %1321 = load i32, ptr %arrayidx2733, align 4, !dbg !323
  %arrayidx2734 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !323
  %1322 = load i32, ptr %arrayidx2734, align 4, !dbg !323
  %xor2735 = xor i32 %1321, %1322, !dbg !323
  %call2736 = call i32 @ror32(i32 noundef %xor2735, i32 noundef 16) #7, !dbg !323
  %arrayidx2737 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !323
  store i32 %call2736, ptr %arrayidx2737, align 4, !dbg !323
  %arrayidx2738 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !323
  %1323 = load i32, ptr %arrayidx2738, align 4, !dbg !323
  %arrayidx2739 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !323
  %1324 = load i32, ptr %arrayidx2739, align 4, !dbg !323
  %add2740 = add i32 %1324, %1323, !dbg !323
  store i32 %add2740, ptr %arrayidx2739, align 4, !dbg !323
  %arrayidx2741 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !323
  %1325 = load i32, ptr %arrayidx2741, align 4, !dbg !323
  %arrayidx2742 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !323
  %1326 = load i32, ptr %arrayidx2742, align 4, !dbg !323
  %xor2743 = xor i32 %1325, %1326, !dbg !323
  %call2744 = call i32 @ror32(i32 noundef %xor2743, i32 noundef 12) #7, !dbg !323
  %arrayidx2745 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !323
  store i32 %call2744, ptr %arrayidx2745, align 4, !dbg !323
  %arrayidx2746 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !323
  %1327 = load i32, ptr %arrayidx2746, align 4, !dbg !323
  %1328 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 3), align 1, !dbg !323
  %idxprom2747 = zext i8 %1328 to i64, !dbg !323
  %arrayidx2748 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2747, !dbg !323
  %1329 = load i32, ptr %arrayidx2748, align 4, !dbg !323
  %add2749 = add i32 %1327, %1329, !dbg !323
  %arrayidx2750 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !323
  %1330 = load i32, ptr %arrayidx2750, align 4, !dbg !323
  %add2751 = add i32 %1330, %add2749, !dbg !323
  store i32 %add2751, ptr %arrayidx2750, align 4, !dbg !323
  %arrayidx2752 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !323
  %1331 = load i32, ptr %arrayidx2752, align 4, !dbg !323
  %arrayidx2753 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !323
  %1332 = load i32, ptr %arrayidx2753, align 4, !dbg !323
  %xor2754 = xor i32 %1331, %1332, !dbg !323
  %call2755 = call i32 @ror32(i32 noundef %xor2754, i32 noundef 8) #7, !dbg !323
  %arrayidx2756 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !323
  store i32 %call2755, ptr %arrayidx2756, align 4, !dbg !323
  %arrayidx2757 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !323
  %1333 = load i32, ptr %arrayidx2757, align 4, !dbg !323
  %arrayidx2758 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !323
  %1334 = load i32, ptr %arrayidx2758, align 4, !dbg !323
  %add2759 = add i32 %1334, %1333, !dbg !323
  store i32 %add2759, ptr %arrayidx2758, align 4, !dbg !323
  %arrayidx2760 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !323
  %1335 = load i32, ptr %arrayidx2760, align 4, !dbg !323
  %arrayidx2761 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !323
  %1336 = load i32, ptr %arrayidx2761, align 4, !dbg !323
  %xor2762 = xor i32 %1335, %1336, !dbg !323
  %call2763 = call i32 @ror32(i32 noundef %xor2762, i32 noundef 7) #7, !dbg !323
  %arrayidx2764 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !323
  store i32 %call2763, ptr %arrayidx2764, align 4, !dbg !323
  br label %do.cond2765, !dbg !323

do.cond2765:                                      ; preds = %do.body2726
  br label %do.end2766, !dbg !323

do.end2766:                                       ; preds = %do.cond2765
  br label %do.body2767, !dbg !319

do.body2767:                                      ; preds = %do.end2766
  %arrayidx2768 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !325
  %1337 = load i32, ptr %arrayidx2768, align 8, !dbg !325
  %1338 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 4), align 4, !dbg !325
  %idxprom2769 = zext i8 %1338 to i64, !dbg !325
  %arrayidx2770 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2769, !dbg !325
  %1339 = load i32, ptr %arrayidx2770, align 4, !dbg !325
  %add2771 = add i32 %1337, %1339, !dbg !325
  %arrayidx2772 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !325
  %1340 = load i32, ptr %arrayidx2772, align 8, !dbg !325
  %add2773 = add i32 %1340, %add2771, !dbg !325
  store i32 %add2773, ptr %arrayidx2772, align 8, !dbg !325
  %arrayidx2774 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !325
  %1341 = load i32, ptr %arrayidx2774, align 8, !dbg !325
  %arrayidx2775 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !325
  %1342 = load i32, ptr %arrayidx2775, align 8, !dbg !325
  %xor2776 = xor i32 %1341, %1342, !dbg !325
  %call2777 = call i32 @ror32(i32 noundef %xor2776, i32 noundef 16) #7, !dbg !325
  %arrayidx2778 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !325
  store i32 %call2777, ptr %arrayidx2778, align 8, !dbg !325
  %arrayidx2779 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !325
  %1343 = load i32, ptr %arrayidx2779, align 8, !dbg !325
  %arrayidx2780 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !325
  %1344 = load i32, ptr %arrayidx2780, align 8, !dbg !325
  %add2781 = add i32 %1344, %1343, !dbg !325
  store i32 %add2781, ptr %arrayidx2780, align 8, !dbg !325
  %arrayidx2782 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !325
  %1345 = load i32, ptr %arrayidx2782, align 8, !dbg !325
  %arrayidx2783 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !325
  %1346 = load i32, ptr %arrayidx2783, align 8, !dbg !325
  %xor2784 = xor i32 %1345, %1346, !dbg !325
  %call2785 = call i32 @ror32(i32 noundef %xor2784, i32 noundef 12) #7, !dbg !325
  %arrayidx2786 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !325
  store i32 %call2785, ptr %arrayidx2786, align 8, !dbg !325
  %arrayidx2787 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !325
  %1347 = load i32, ptr %arrayidx2787, align 8, !dbg !325
  %1348 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 5), align 1, !dbg !325
  %idxprom2788 = zext i8 %1348 to i64, !dbg !325
  %arrayidx2789 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2788, !dbg !325
  %1349 = load i32, ptr %arrayidx2789, align 4, !dbg !325
  %add2790 = add i32 %1347, %1349, !dbg !325
  %arrayidx2791 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !325
  %1350 = load i32, ptr %arrayidx2791, align 8, !dbg !325
  %add2792 = add i32 %1350, %add2790, !dbg !325
  store i32 %add2792, ptr %arrayidx2791, align 8, !dbg !325
  %arrayidx2793 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !325
  %1351 = load i32, ptr %arrayidx2793, align 8, !dbg !325
  %arrayidx2794 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !325
  %1352 = load i32, ptr %arrayidx2794, align 8, !dbg !325
  %xor2795 = xor i32 %1351, %1352, !dbg !325
  %call2796 = call i32 @ror32(i32 noundef %xor2795, i32 noundef 8) #7, !dbg !325
  %arrayidx2797 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !325
  store i32 %call2796, ptr %arrayidx2797, align 8, !dbg !325
  %arrayidx2798 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !325
  %1353 = load i32, ptr %arrayidx2798, align 8, !dbg !325
  %arrayidx2799 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !325
  %1354 = load i32, ptr %arrayidx2799, align 8, !dbg !325
  %add2800 = add i32 %1354, %1353, !dbg !325
  store i32 %add2800, ptr %arrayidx2799, align 8, !dbg !325
  %arrayidx2801 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !325
  %1355 = load i32, ptr %arrayidx2801, align 8, !dbg !325
  %arrayidx2802 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !325
  %1356 = load i32, ptr %arrayidx2802, align 8, !dbg !325
  %xor2803 = xor i32 %1355, %1356, !dbg !325
  %call2804 = call i32 @ror32(i32 noundef %xor2803, i32 noundef 7) #7, !dbg !325
  %arrayidx2805 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !325
  store i32 %call2804, ptr %arrayidx2805, align 8, !dbg !325
  br label %do.cond2806, !dbg !325

do.cond2806:                                      ; preds = %do.body2767
  br label %do.end2807, !dbg !325

do.end2807:                                       ; preds = %do.cond2806
  br label %do.body2808, !dbg !319

do.body2808:                                      ; preds = %do.end2807
  %arrayidx2809 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !327
  %1357 = load i32, ptr %arrayidx2809, align 4, !dbg !327
  %1358 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 6), align 2, !dbg !327
  %idxprom2810 = zext i8 %1358 to i64, !dbg !327
  %arrayidx2811 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2810, !dbg !327
  %1359 = load i32, ptr %arrayidx2811, align 4, !dbg !327
  %add2812 = add i32 %1357, %1359, !dbg !327
  %arrayidx2813 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !327
  %1360 = load i32, ptr %arrayidx2813, align 4, !dbg !327
  %add2814 = add i32 %1360, %add2812, !dbg !327
  store i32 %add2814, ptr %arrayidx2813, align 4, !dbg !327
  %arrayidx2815 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !327
  %1361 = load i32, ptr %arrayidx2815, align 4, !dbg !327
  %arrayidx2816 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !327
  %1362 = load i32, ptr %arrayidx2816, align 4, !dbg !327
  %xor2817 = xor i32 %1361, %1362, !dbg !327
  %call2818 = call i32 @ror32(i32 noundef %xor2817, i32 noundef 16) #7, !dbg !327
  %arrayidx2819 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !327
  store i32 %call2818, ptr %arrayidx2819, align 4, !dbg !327
  %arrayidx2820 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !327
  %1363 = load i32, ptr %arrayidx2820, align 4, !dbg !327
  %arrayidx2821 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !327
  %1364 = load i32, ptr %arrayidx2821, align 4, !dbg !327
  %add2822 = add i32 %1364, %1363, !dbg !327
  store i32 %add2822, ptr %arrayidx2821, align 4, !dbg !327
  %arrayidx2823 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !327
  %1365 = load i32, ptr %arrayidx2823, align 4, !dbg !327
  %arrayidx2824 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !327
  %1366 = load i32, ptr %arrayidx2824, align 4, !dbg !327
  %xor2825 = xor i32 %1365, %1366, !dbg !327
  %call2826 = call i32 @ror32(i32 noundef %xor2825, i32 noundef 12) #7, !dbg !327
  %arrayidx2827 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !327
  store i32 %call2826, ptr %arrayidx2827, align 4, !dbg !327
  %arrayidx2828 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !327
  %1367 = load i32, ptr %arrayidx2828, align 4, !dbg !327
  %1368 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 7), align 1, !dbg !327
  %idxprom2829 = zext i8 %1368 to i64, !dbg !327
  %arrayidx2830 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2829, !dbg !327
  %1369 = load i32, ptr %arrayidx2830, align 4, !dbg !327
  %add2831 = add i32 %1367, %1369, !dbg !327
  %arrayidx2832 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !327
  %1370 = load i32, ptr %arrayidx2832, align 4, !dbg !327
  %add2833 = add i32 %1370, %add2831, !dbg !327
  store i32 %add2833, ptr %arrayidx2832, align 4, !dbg !327
  %arrayidx2834 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !327
  %1371 = load i32, ptr %arrayidx2834, align 4, !dbg !327
  %arrayidx2835 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !327
  %1372 = load i32, ptr %arrayidx2835, align 4, !dbg !327
  %xor2836 = xor i32 %1371, %1372, !dbg !327
  %call2837 = call i32 @ror32(i32 noundef %xor2836, i32 noundef 8) #7, !dbg !327
  %arrayidx2838 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !327
  store i32 %call2837, ptr %arrayidx2838, align 4, !dbg !327
  %arrayidx2839 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !327
  %1373 = load i32, ptr %arrayidx2839, align 4, !dbg !327
  %arrayidx2840 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !327
  %1374 = load i32, ptr %arrayidx2840, align 4, !dbg !327
  %add2841 = add i32 %1374, %1373, !dbg !327
  store i32 %add2841, ptr %arrayidx2840, align 4, !dbg !327
  %arrayidx2842 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !327
  %1375 = load i32, ptr %arrayidx2842, align 4, !dbg !327
  %arrayidx2843 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !327
  %1376 = load i32, ptr %arrayidx2843, align 4, !dbg !327
  %xor2844 = xor i32 %1375, %1376, !dbg !327
  %call2845 = call i32 @ror32(i32 noundef %xor2844, i32 noundef 7) #7, !dbg !327
  %arrayidx2846 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !327
  store i32 %call2845, ptr %arrayidx2846, align 4, !dbg !327
  br label %do.cond2847, !dbg !327

do.cond2847:                                      ; preds = %do.body2808
  br label %do.end2848, !dbg !327

do.end2848:                                       ; preds = %do.cond2847
  br label %do.body2849, !dbg !319

do.body2849:                                      ; preds = %do.end2848
  %arrayidx2850 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !329
  %1377 = load i32, ptr %arrayidx2850, align 4, !dbg !329
  %1378 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 8), align 8, !dbg !329
  %idxprom2851 = zext i8 %1378 to i64, !dbg !329
  %arrayidx2852 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2851, !dbg !329
  %1379 = load i32, ptr %arrayidx2852, align 4, !dbg !329
  %add2853 = add i32 %1377, %1379, !dbg !329
  %arrayidx2854 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !329
  %1380 = load i32, ptr %arrayidx2854, align 16, !dbg !329
  %add2855 = add i32 %1380, %add2853, !dbg !329
  store i32 %add2855, ptr %arrayidx2854, align 16, !dbg !329
  %arrayidx2856 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !329
  %1381 = load i32, ptr %arrayidx2856, align 4, !dbg !329
  %arrayidx2857 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !329
  %1382 = load i32, ptr %arrayidx2857, align 16, !dbg !329
  %xor2858 = xor i32 %1381, %1382, !dbg !329
  %call2859 = call i32 @ror32(i32 noundef %xor2858, i32 noundef 16) #7, !dbg !329
  %arrayidx2860 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !329
  store i32 %call2859, ptr %arrayidx2860, align 4, !dbg !329
  %arrayidx2861 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !329
  %1383 = load i32, ptr %arrayidx2861, align 4, !dbg !329
  %arrayidx2862 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !329
  %1384 = load i32, ptr %arrayidx2862, align 8, !dbg !329
  %add2863 = add i32 %1384, %1383, !dbg !329
  store i32 %add2863, ptr %arrayidx2862, align 8, !dbg !329
  %arrayidx2864 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !329
  %1385 = load i32, ptr %arrayidx2864, align 4, !dbg !329
  %arrayidx2865 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !329
  %1386 = load i32, ptr %arrayidx2865, align 8, !dbg !329
  %xor2866 = xor i32 %1385, %1386, !dbg !329
  %call2867 = call i32 @ror32(i32 noundef %xor2866, i32 noundef 12) #7, !dbg !329
  %arrayidx2868 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !329
  store i32 %call2867, ptr %arrayidx2868, align 4, !dbg !329
  %arrayidx2869 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !329
  %1387 = load i32, ptr %arrayidx2869, align 4, !dbg !329
  %1388 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 9), align 1, !dbg !329
  %idxprom2870 = zext i8 %1388 to i64, !dbg !329
  %arrayidx2871 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2870, !dbg !329
  %1389 = load i32, ptr %arrayidx2871, align 4, !dbg !329
  %add2872 = add i32 %1387, %1389, !dbg !329
  %arrayidx2873 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !329
  %1390 = load i32, ptr %arrayidx2873, align 16, !dbg !329
  %add2874 = add i32 %1390, %add2872, !dbg !329
  store i32 %add2874, ptr %arrayidx2873, align 16, !dbg !329
  %arrayidx2875 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !329
  %1391 = load i32, ptr %arrayidx2875, align 4, !dbg !329
  %arrayidx2876 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !329
  %1392 = load i32, ptr %arrayidx2876, align 16, !dbg !329
  %xor2877 = xor i32 %1391, %1392, !dbg !329
  %call2878 = call i32 @ror32(i32 noundef %xor2877, i32 noundef 8) #7, !dbg !329
  %arrayidx2879 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !329
  store i32 %call2878, ptr %arrayidx2879, align 4, !dbg !329
  %arrayidx2880 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !329
  %1393 = load i32, ptr %arrayidx2880, align 4, !dbg !329
  %arrayidx2881 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !329
  %1394 = load i32, ptr %arrayidx2881, align 8, !dbg !329
  %add2882 = add i32 %1394, %1393, !dbg !329
  store i32 %add2882, ptr %arrayidx2881, align 8, !dbg !329
  %arrayidx2883 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !329
  %1395 = load i32, ptr %arrayidx2883, align 4, !dbg !329
  %arrayidx2884 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !329
  %1396 = load i32, ptr %arrayidx2884, align 8, !dbg !329
  %xor2885 = xor i32 %1395, %1396, !dbg !329
  %call2886 = call i32 @ror32(i32 noundef %xor2885, i32 noundef 7) #7, !dbg !329
  %arrayidx2887 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !329
  store i32 %call2886, ptr %arrayidx2887, align 4, !dbg !329
  br label %do.cond2888, !dbg !329

do.cond2888:                                      ; preds = %do.body2849
  br label %do.end2889, !dbg !329

do.end2889:                                       ; preds = %do.cond2888
  br label %do.body2890, !dbg !319

do.body2890:                                      ; preds = %do.end2889
  %arrayidx2891 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !331
  %1397 = load i32, ptr %arrayidx2891, align 8, !dbg !331
  %1398 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 10), align 2, !dbg !331
  %idxprom2892 = zext i8 %1398 to i64, !dbg !331
  %arrayidx2893 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2892, !dbg !331
  %1399 = load i32, ptr %arrayidx2893, align 4, !dbg !331
  %add2894 = add i32 %1397, %1399, !dbg !331
  %arrayidx2895 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !331
  %1400 = load i32, ptr %arrayidx2895, align 4, !dbg !331
  %add2896 = add i32 %1400, %add2894, !dbg !331
  store i32 %add2896, ptr %arrayidx2895, align 4, !dbg !331
  %arrayidx2897 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !331
  %1401 = load i32, ptr %arrayidx2897, align 16, !dbg !331
  %arrayidx2898 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !331
  %1402 = load i32, ptr %arrayidx2898, align 4, !dbg !331
  %xor2899 = xor i32 %1401, %1402, !dbg !331
  %call2900 = call i32 @ror32(i32 noundef %xor2899, i32 noundef 16) #7, !dbg !331
  %arrayidx2901 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !331
  store i32 %call2900, ptr %arrayidx2901, align 16, !dbg !331
  %arrayidx2902 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !331
  %1403 = load i32, ptr %arrayidx2902, align 16, !dbg !331
  %arrayidx2903 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !331
  %1404 = load i32, ptr %arrayidx2903, align 4, !dbg !331
  %add2904 = add i32 %1404, %1403, !dbg !331
  store i32 %add2904, ptr %arrayidx2903, align 4, !dbg !331
  %arrayidx2905 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !331
  %1405 = load i32, ptr %arrayidx2905, align 8, !dbg !331
  %arrayidx2906 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !331
  %1406 = load i32, ptr %arrayidx2906, align 4, !dbg !331
  %xor2907 = xor i32 %1405, %1406, !dbg !331
  %call2908 = call i32 @ror32(i32 noundef %xor2907, i32 noundef 12) #7, !dbg !331
  %arrayidx2909 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !331
  store i32 %call2908, ptr %arrayidx2909, align 8, !dbg !331
  %arrayidx2910 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !331
  %1407 = load i32, ptr %arrayidx2910, align 8, !dbg !331
  %1408 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 11), align 1, !dbg !331
  %idxprom2911 = zext i8 %1408 to i64, !dbg !331
  %arrayidx2912 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2911, !dbg !331
  %1409 = load i32, ptr %arrayidx2912, align 4, !dbg !331
  %add2913 = add i32 %1407, %1409, !dbg !331
  %arrayidx2914 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !331
  %1410 = load i32, ptr %arrayidx2914, align 4, !dbg !331
  %add2915 = add i32 %1410, %add2913, !dbg !331
  store i32 %add2915, ptr %arrayidx2914, align 4, !dbg !331
  %arrayidx2916 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !331
  %1411 = load i32, ptr %arrayidx2916, align 16, !dbg !331
  %arrayidx2917 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !331
  %1412 = load i32, ptr %arrayidx2917, align 4, !dbg !331
  %xor2918 = xor i32 %1411, %1412, !dbg !331
  %call2919 = call i32 @ror32(i32 noundef %xor2918, i32 noundef 8) #7, !dbg !331
  %arrayidx2920 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !331
  store i32 %call2919, ptr %arrayidx2920, align 16, !dbg !331
  %arrayidx2921 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !331
  %1413 = load i32, ptr %arrayidx2921, align 16, !dbg !331
  %arrayidx2922 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !331
  %1414 = load i32, ptr %arrayidx2922, align 4, !dbg !331
  %add2923 = add i32 %1414, %1413, !dbg !331
  store i32 %add2923, ptr %arrayidx2922, align 4, !dbg !331
  %arrayidx2924 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !331
  %1415 = load i32, ptr %arrayidx2924, align 8, !dbg !331
  %arrayidx2925 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !331
  %1416 = load i32, ptr %arrayidx2925, align 4, !dbg !331
  %xor2926 = xor i32 %1415, %1416, !dbg !331
  %call2927 = call i32 @ror32(i32 noundef %xor2926, i32 noundef 7) #7, !dbg !331
  %arrayidx2928 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !331
  store i32 %call2927, ptr %arrayidx2928, align 8, !dbg !331
  br label %do.cond2929, !dbg !331

do.cond2929:                                      ; preds = %do.body2890
  br label %do.end2930, !dbg !331

do.end2930:                                       ; preds = %do.cond2929
  br label %do.body2931, !dbg !319

do.body2931:                                      ; preds = %do.end2930
  %arrayidx2932 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !333
  %1417 = load i32, ptr %arrayidx2932, align 4, !dbg !333
  %1418 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 12), align 4, !dbg !333
  %idxprom2933 = zext i8 %1418 to i64, !dbg !333
  %arrayidx2934 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2933, !dbg !333
  %1419 = load i32, ptr %arrayidx2934, align 4, !dbg !333
  %add2935 = add i32 %1417, %1419, !dbg !333
  %arrayidx2936 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !333
  %1420 = load i32, ptr %arrayidx2936, align 8, !dbg !333
  %add2937 = add i32 %1420, %add2935, !dbg !333
  store i32 %add2937, ptr %arrayidx2936, align 8, !dbg !333
  %arrayidx2938 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !333
  %1421 = load i32, ptr %arrayidx2938, align 4, !dbg !333
  %arrayidx2939 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !333
  %1422 = load i32, ptr %arrayidx2939, align 8, !dbg !333
  %xor2940 = xor i32 %1421, %1422, !dbg !333
  %call2941 = call i32 @ror32(i32 noundef %xor2940, i32 noundef 16) #7, !dbg !333
  %arrayidx2942 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !333
  store i32 %call2941, ptr %arrayidx2942, align 4, !dbg !333
  %arrayidx2943 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !333
  %1423 = load i32, ptr %arrayidx2943, align 4, !dbg !333
  %arrayidx2944 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !333
  %1424 = load i32, ptr %arrayidx2944, align 16, !dbg !333
  %add2945 = add i32 %1424, %1423, !dbg !333
  store i32 %add2945, ptr %arrayidx2944, align 16, !dbg !333
  %arrayidx2946 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !333
  %1425 = load i32, ptr %arrayidx2946, align 4, !dbg !333
  %arrayidx2947 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !333
  %1426 = load i32, ptr %arrayidx2947, align 16, !dbg !333
  %xor2948 = xor i32 %1425, %1426, !dbg !333
  %call2949 = call i32 @ror32(i32 noundef %xor2948, i32 noundef 12) #7, !dbg !333
  %arrayidx2950 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !333
  store i32 %call2949, ptr %arrayidx2950, align 4, !dbg !333
  %arrayidx2951 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !333
  %1427 = load i32, ptr %arrayidx2951, align 4, !dbg !333
  %1428 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 13), align 1, !dbg !333
  %idxprom2952 = zext i8 %1428 to i64, !dbg !333
  %arrayidx2953 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2952, !dbg !333
  %1429 = load i32, ptr %arrayidx2953, align 4, !dbg !333
  %add2954 = add i32 %1427, %1429, !dbg !333
  %arrayidx2955 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !333
  %1430 = load i32, ptr %arrayidx2955, align 8, !dbg !333
  %add2956 = add i32 %1430, %add2954, !dbg !333
  store i32 %add2956, ptr %arrayidx2955, align 8, !dbg !333
  %arrayidx2957 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !333
  %1431 = load i32, ptr %arrayidx2957, align 4, !dbg !333
  %arrayidx2958 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !333
  %1432 = load i32, ptr %arrayidx2958, align 8, !dbg !333
  %xor2959 = xor i32 %1431, %1432, !dbg !333
  %call2960 = call i32 @ror32(i32 noundef %xor2959, i32 noundef 8) #7, !dbg !333
  %arrayidx2961 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !333
  store i32 %call2960, ptr %arrayidx2961, align 4, !dbg !333
  %arrayidx2962 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !333
  %1433 = load i32, ptr %arrayidx2962, align 4, !dbg !333
  %arrayidx2963 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !333
  %1434 = load i32, ptr %arrayidx2963, align 16, !dbg !333
  %add2964 = add i32 %1434, %1433, !dbg !333
  store i32 %add2964, ptr %arrayidx2963, align 16, !dbg !333
  %arrayidx2965 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !333
  %1435 = load i32, ptr %arrayidx2965, align 4, !dbg !333
  %arrayidx2966 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !333
  %1436 = load i32, ptr %arrayidx2966, align 16, !dbg !333
  %xor2967 = xor i32 %1435, %1436, !dbg !333
  %call2968 = call i32 @ror32(i32 noundef %xor2967, i32 noundef 7) #7, !dbg !333
  %arrayidx2969 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !333
  store i32 %call2968, ptr %arrayidx2969, align 4, !dbg !333
  br label %do.cond2970, !dbg !333

do.cond2970:                                      ; preds = %do.body2931
  br label %do.end2971, !dbg !333

do.end2971:                                       ; preds = %do.cond2970
  br label %do.body2972, !dbg !319

do.body2972:                                      ; preds = %do.end2971
  %arrayidx2973 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !335
  %1437 = load i32, ptr %arrayidx2973, align 16, !dbg !335
  %1438 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 14), align 2, !dbg !335
  %idxprom2974 = zext i8 %1438 to i64, !dbg !335
  %arrayidx2975 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2974, !dbg !335
  %1439 = load i32, ptr %arrayidx2975, align 4, !dbg !335
  %add2976 = add i32 %1437, %1439, !dbg !335
  %arrayidx2977 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !335
  %1440 = load i32, ptr %arrayidx2977, align 4, !dbg !335
  %add2978 = add i32 %1440, %add2976, !dbg !335
  store i32 %add2978, ptr %arrayidx2977, align 4, !dbg !335
  %arrayidx2979 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !335
  %1441 = load i32, ptr %arrayidx2979, align 8, !dbg !335
  %arrayidx2980 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !335
  %1442 = load i32, ptr %arrayidx2980, align 4, !dbg !335
  %xor2981 = xor i32 %1441, %1442, !dbg !335
  %call2982 = call i32 @ror32(i32 noundef %xor2981, i32 noundef 16) #7, !dbg !335
  %arrayidx2983 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !335
  store i32 %call2982, ptr %arrayidx2983, align 8, !dbg !335
  %arrayidx2984 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !335
  %1443 = load i32, ptr %arrayidx2984, align 8, !dbg !335
  %arrayidx2985 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !335
  %1444 = load i32, ptr %arrayidx2985, align 4, !dbg !335
  %add2986 = add i32 %1444, %1443, !dbg !335
  store i32 %add2986, ptr %arrayidx2985, align 4, !dbg !335
  %arrayidx2987 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !335
  %1445 = load i32, ptr %arrayidx2987, align 16, !dbg !335
  %arrayidx2988 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !335
  %1446 = load i32, ptr %arrayidx2988, align 4, !dbg !335
  %xor2989 = xor i32 %1445, %1446, !dbg !335
  %call2990 = call i32 @ror32(i32 noundef %xor2989, i32 noundef 12) #7, !dbg !335
  %arrayidx2991 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !335
  store i32 %call2990, ptr %arrayidx2991, align 16, !dbg !335
  %arrayidx2992 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !335
  %1447 = load i32, ptr %arrayidx2992, align 16, !dbg !335
  %1448 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 15), align 1, !dbg !335
  %idxprom2993 = zext i8 %1448 to i64, !dbg !335
  %arrayidx2994 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom2993, !dbg !335
  %1449 = load i32, ptr %arrayidx2994, align 4, !dbg !335
  %add2995 = add i32 %1447, %1449, !dbg !335
  %arrayidx2996 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !335
  %1450 = load i32, ptr %arrayidx2996, align 4, !dbg !335
  %add2997 = add i32 %1450, %add2995, !dbg !335
  store i32 %add2997, ptr %arrayidx2996, align 4, !dbg !335
  %arrayidx2998 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !335
  %1451 = load i32, ptr %arrayidx2998, align 8, !dbg !335
  %arrayidx2999 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !335
  %1452 = load i32, ptr %arrayidx2999, align 4, !dbg !335
  %xor3000 = xor i32 %1451, %1452, !dbg !335
  %call3001 = call i32 @ror32(i32 noundef %xor3000, i32 noundef 8) #7, !dbg !335
  %arrayidx3002 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !335
  store i32 %call3001, ptr %arrayidx3002, align 8, !dbg !335
  %arrayidx3003 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !335
  %1453 = load i32, ptr %arrayidx3003, align 8, !dbg !335
  %arrayidx3004 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !335
  %1454 = load i32, ptr %arrayidx3004, align 4, !dbg !335
  %add3005 = add i32 %1454, %1453, !dbg !335
  store i32 %add3005, ptr %arrayidx3004, align 4, !dbg !335
  %arrayidx3006 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !335
  %1455 = load i32, ptr %arrayidx3006, align 16, !dbg !335
  %arrayidx3007 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !335
  %1456 = load i32, ptr %arrayidx3007, align 4, !dbg !335
  %xor3008 = xor i32 %1455, %1456, !dbg !335
  %call3009 = call i32 @ror32(i32 noundef %xor3008, i32 noundef 7) #7, !dbg !335
  %arrayidx3010 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !335
  store i32 %call3009, ptr %arrayidx3010, align 16, !dbg !335
  br label %do.cond3011, !dbg !335

do.cond3011:                                      ; preds = %do.body2972
  br label %do.end3012, !dbg !335

do.end3012:                                       ; preds = %do.cond3011
  br label %do.cond3013, !dbg !319

do.cond3013:                                      ; preds = %do.end3012
  br label %do.end3014, !dbg !319

do.end3014:                                       ; preds = %do.cond3013
  br label %do.body3015, !dbg !337

do.body3015:                                      ; preds = %do.end3014
  br label %do.body3016, !dbg !338

do.body3016:                                      ; preds = %do.body3015
  %arrayidx3017 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !340
  %1457 = load i32, ptr %arrayidx3017, align 16, !dbg !340
  %1458 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9), align 16, !dbg !340
  %idxprom3018 = zext i8 %1458 to i64, !dbg !340
  %arrayidx3019 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3018, !dbg !340
  %1459 = load i32, ptr %arrayidx3019, align 4, !dbg !340
  %add3020 = add i32 %1457, %1459, !dbg !340
  %arrayidx3021 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !340
  %1460 = load i32, ptr %arrayidx3021, align 16, !dbg !340
  %add3022 = add i32 %1460, %add3020, !dbg !340
  store i32 %add3022, ptr %arrayidx3021, align 16, !dbg !340
  %arrayidx3023 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !340
  %1461 = load i32, ptr %arrayidx3023, align 16, !dbg !340
  %arrayidx3024 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !340
  %1462 = load i32, ptr %arrayidx3024, align 16, !dbg !340
  %xor3025 = xor i32 %1461, %1462, !dbg !340
  %call3026 = call i32 @ror32(i32 noundef %xor3025, i32 noundef 16) #7, !dbg !340
  %arrayidx3027 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !340
  store i32 %call3026, ptr %arrayidx3027, align 16, !dbg !340
  %arrayidx3028 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !340
  %1463 = load i32, ptr %arrayidx3028, align 16, !dbg !340
  %arrayidx3029 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !340
  %1464 = load i32, ptr %arrayidx3029, align 16, !dbg !340
  %add3030 = add i32 %1464, %1463, !dbg !340
  store i32 %add3030, ptr %arrayidx3029, align 16, !dbg !340
  %arrayidx3031 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !340
  %1465 = load i32, ptr %arrayidx3031, align 16, !dbg !340
  %arrayidx3032 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !340
  %1466 = load i32, ptr %arrayidx3032, align 16, !dbg !340
  %xor3033 = xor i32 %1465, %1466, !dbg !340
  %call3034 = call i32 @ror32(i32 noundef %xor3033, i32 noundef 12) #7, !dbg !340
  %arrayidx3035 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !340
  store i32 %call3034, ptr %arrayidx3035, align 16, !dbg !340
  %arrayidx3036 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !340
  %1467 = load i32, ptr %arrayidx3036, align 16, !dbg !340
  %1468 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 1), align 1, !dbg !340
  %idxprom3037 = zext i8 %1468 to i64, !dbg !340
  %arrayidx3038 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3037, !dbg !340
  %1469 = load i32, ptr %arrayidx3038, align 4, !dbg !340
  %add3039 = add i32 %1467, %1469, !dbg !340
  %arrayidx3040 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !340
  %1470 = load i32, ptr %arrayidx3040, align 16, !dbg !340
  %add3041 = add i32 %1470, %add3039, !dbg !340
  store i32 %add3041, ptr %arrayidx3040, align 16, !dbg !340
  %arrayidx3042 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !340
  %1471 = load i32, ptr %arrayidx3042, align 16, !dbg !340
  %arrayidx3043 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !340
  %1472 = load i32, ptr %arrayidx3043, align 16, !dbg !340
  %xor3044 = xor i32 %1471, %1472, !dbg !340
  %call3045 = call i32 @ror32(i32 noundef %xor3044, i32 noundef 8) #7, !dbg !340
  %arrayidx3046 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !340
  store i32 %call3045, ptr %arrayidx3046, align 16, !dbg !340
  %arrayidx3047 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !340
  %1473 = load i32, ptr %arrayidx3047, align 16, !dbg !340
  %arrayidx3048 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !340
  %1474 = load i32, ptr %arrayidx3048, align 16, !dbg !340
  %add3049 = add i32 %1474, %1473, !dbg !340
  store i32 %add3049, ptr %arrayidx3048, align 16, !dbg !340
  %arrayidx3050 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !340
  %1475 = load i32, ptr %arrayidx3050, align 16, !dbg !340
  %arrayidx3051 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !340
  %1476 = load i32, ptr %arrayidx3051, align 16, !dbg !340
  %xor3052 = xor i32 %1475, %1476, !dbg !340
  %call3053 = call i32 @ror32(i32 noundef %xor3052, i32 noundef 7) #7, !dbg !340
  %arrayidx3054 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !340
  store i32 %call3053, ptr %arrayidx3054, align 16, !dbg !340
  br label %do.cond3055, !dbg !340

do.cond3055:                                      ; preds = %do.body3016
  br label %do.end3056, !dbg !340

do.end3056:                                       ; preds = %do.cond3055
  br label %do.body3057, !dbg !338

do.body3057:                                      ; preds = %do.end3056
  %arrayidx3058 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !342
  %1477 = load i32, ptr %arrayidx3058, align 4, !dbg !342
  %1478 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 2), align 2, !dbg !342
  %idxprom3059 = zext i8 %1478 to i64, !dbg !342
  %arrayidx3060 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3059, !dbg !342
  %1479 = load i32, ptr %arrayidx3060, align 4, !dbg !342
  %add3061 = add i32 %1477, %1479, !dbg !342
  %arrayidx3062 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !342
  %1480 = load i32, ptr %arrayidx3062, align 4, !dbg !342
  %add3063 = add i32 %1480, %add3061, !dbg !342
  store i32 %add3063, ptr %arrayidx3062, align 4, !dbg !342
  %arrayidx3064 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !342
  %1481 = load i32, ptr %arrayidx3064, align 4, !dbg !342
  %arrayidx3065 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !342
  %1482 = load i32, ptr %arrayidx3065, align 4, !dbg !342
  %xor3066 = xor i32 %1481, %1482, !dbg !342
  %call3067 = call i32 @ror32(i32 noundef %xor3066, i32 noundef 16) #7, !dbg !342
  %arrayidx3068 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !342
  store i32 %call3067, ptr %arrayidx3068, align 4, !dbg !342
  %arrayidx3069 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !342
  %1483 = load i32, ptr %arrayidx3069, align 4, !dbg !342
  %arrayidx3070 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !342
  %1484 = load i32, ptr %arrayidx3070, align 4, !dbg !342
  %add3071 = add i32 %1484, %1483, !dbg !342
  store i32 %add3071, ptr %arrayidx3070, align 4, !dbg !342
  %arrayidx3072 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !342
  %1485 = load i32, ptr %arrayidx3072, align 4, !dbg !342
  %arrayidx3073 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !342
  %1486 = load i32, ptr %arrayidx3073, align 4, !dbg !342
  %xor3074 = xor i32 %1485, %1486, !dbg !342
  %call3075 = call i32 @ror32(i32 noundef %xor3074, i32 noundef 12) #7, !dbg !342
  %arrayidx3076 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !342
  store i32 %call3075, ptr %arrayidx3076, align 4, !dbg !342
  %arrayidx3077 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !342
  %1487 = load i32, ptr %arrayidx3077, align 4, !dbg !342
  %1488 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 3), align 1, !dbg !342
  %idxprom3078 = zext i8 %1488 to i64, !dbg !342
  %arrayidx3079 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3078, !dbg !342
  %1489 = load i32, ptr %arrayidx3079, align 4, !dbg !342
  %add3080 = add i32 %1487, %1489, !dbg !342
  %arrayidx3081 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !342
  %1490 = load i32, ptr %arrayidx3081, align 4, !dbg !342
  %add3082 = add i32 %1490, %add3080, !dbg !342
  store i32 %add3082, ptr %arrayidx3081, align 4, !dbg !342
  %arrayidx3083 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !342
  %1491 = load i32, ptr %arrayidx3083, align 4, !dbg !342
  %arrayidx3084 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !342
  %1492 = load i32, ptr %arrayidx3084, align 4, !dbg !342
  %xor3085 = xor i32 %1491, %1492, !dbg !342
  %call3086 = call i32 @ror32(i32 noundef %xor3085, i32 noundef 8) #7, !dbg !342
  %arrayidx3087 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !342
  store i32 %call3086, ptr %arrayidx3087, align 4, !dbg !342
  %arrayidx3088 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !342
  %1493 = load i32, ptr %arrayidx3088, align 4, !dbg !342
  %arrayidx3089 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !342
  %1494 = load i32, ptr %arrayidx3089, align 4, !dbg !342
  %add3090 = add i32 %1494, %1493, !dbg !342
  store i32 %add3090, ptr %arrayidx3089, align 4, !dbg !342
  %arrayidx3091 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !342
  %1495 = load i32, ptr %arrayidx3091, align 4, !dbg !342
  %arrayidx3092 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !342
  %1496 = load i32, ptr %arrayidx3092, align 4, !dbg !342
  %xor3093 = xor i32 %1495, %1496, !dbg !342
  %call3094 = call i32 @ror32(i32 noundef %xor3093, i32 noundef 7) #7, !dbg !342
  %arrayidx3095 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !342
  store i32 %call3094, ptr %arrayidx3095, align 4, !dbg !342
  br label %do.cond3096, !dbg !342

do.cond3096:                                      ; preds = %do.body3057
  br label %do.end3097, !dbg !342

do.end3097:                                       ; preds = %do.cond3096
  br label %do.body3098, !dbg !338

do.body3098:                                      ; preds = %do.end3097
  %arrayidx3099 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !344
  %1497 = load i32, ptr %arrayidx3099, align 8, !dbg !344
  %1498 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 4), align 4, !dbg !344
  %idxprom3100 = zext i8 %1498 to i64, !dbg !344
  %arrayidx3101 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3100, !dbg !344
  %1499 = load i32, ptr %arrayidx3101, align 4, !dbg !344
  %add3102 = add i32 %1497, %1499, !dbg !344
  %arrayidx3103 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !344
  %1500 = load i32, ptr %arrayidx3103, align 8, !dbg !344
  %add3104 = add i32 %1500, %add3102, !dbg !344
  store i32 %add3104, ptr %arrayidx3103, align 8, !dbg !344
  %arrayidx3105 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !344
  %1501 = load i32, ptr %arrayidx3105, align 8, !dbg !344
  %arrayidx3106 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !344
  %1502 = load i32, ptr %arrayidx3106, align 8, !dbg !344
  %xor3107 = xor i32 %1501, %1502, !dbg !344
  %call3108 = call i32 @ror32(i32 noundef %xor3107, i32 noundef 16) #7, !dbg !344
  %arrayidx3109 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !344
  store i32 %call3108, ptr %arrayidx3109, align 8, !dbg !344
  %arrayidx3110 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !344
  %1503 = load i32, ptr %arrayidx3110, align 8, !dbg !344
  %arrayidx3111 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !344
  %1504 = load i32, ptr %arrayidx3111, align 8, !dbg !344
  %add3112 = add i32 %1504, %1503, !dbg !344
  store i32 %add3112, ptr %arrayidx3111, align 8, !dbg !344
  %arrayidx3113 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !344
  %1505 = load i32, ptr %arrayidx3113, align 8, !dbg !344
  %arrayidx3114 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !344
  %1506 = load i32, ptr %arrayidx3114, align 8, !dbg !344
  %xor3115 = xor i32 %1505, %1506, !dbg !344
  %call3116 = call i32 @ror32(i32 noundef %xor3115, i32 noundef 12) #7, !dbg !344
  %arrayidx3117 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !344
  store i32 %call3116, ptr %arrayidx3117, align 8, !dbg !344
  %arrayidx3118 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !344
  %1507 = load i32, ptr %arrayidx3118, align 8, !dbg !344
  %1508 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 5), align 1, !dbg !344
  %idxprom3119 = zext i8 %1508 to i64, !dbg !344
  %arrayidx3120 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3119, !dbg !344
  %1509 = load i32, ptr %arrayidx3120, align 4, !dbg !344
  %add3121 = add i32 %1507, %1509, !dbg !344
  %arrayidx3122 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !344
  %1510 = load i32, ptr %arrayidx3122, align 8, !dbg !344
  %add3123 = add i32 %1510, %add3121, !dbg !344
  store i32 %add3123, ptr %arrayidx3122, align 8, !dbg !344
  %arrayidx3124 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !344
  %1511 = load i32, ptr %arrayidx3124, align 8, !dbg !344
  %arrayidx3125 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !344
  %1512 = load i32, ptr %arrayidx3125, align 8, !dbg !344
  %xor3126 = xor i32 %1511, %1512, !dbg !344
  %call3127 = call i32 @ror32(i32 noundef %xor3126, i32 noundef 8) #7, !dbg !344
  %arrayidx3128 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !344
  store i32 %call3127, ptr %arrayidx3128, align 8, !dbg !344
  %arrayidx3129 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !344
  %1513 = load i32, ptr %arrayidx3129, align 8, !dbg !344
  %arrayidx3130 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !344
  %1514 = load i32, ptr %arrayidx3130, align 8, !dbg !344
  %add3131 = add i32 %1514, %1513, !dbg !344
  store i32 %add3131, ptr %arrayidx3130, align 8, !dbg !344
  %arrayidx3132 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !344
  %1515 = load i32, ptr %arrayidx3132, align 8, !dbg !344
  %arrayidx3133 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !344
  %1516 = load i32, ptr %arrayidx3133, align 8, !dbg !344
  %xor3134 = xor i32 %1515, %1516, !dbg !344
  %call3135 = call i32 @ror32(i32 noundef %xor3134, i32 noundef 7) #7, !dbg !344
  %arrayidx3136 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !344
  store i32 %call3135, ptr %arrayidx3136, align 8, !dbg !344
  br label %do.cond3137, !dbg !344

do.cond3137:                                      ; preds = %do.body3098
  br label %do.end3138, !dbg !344

do.end3138:                                       ; preds = %do.cond3137
  br label %do.body3139, !dbg !338

do.body3139:                                      ; preds = %do.end3138
  %arrayidx3140 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !346
  %1517 = load i32, ptr %arrayidx3140, align 4, !dbg !346
  %1518 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 6), align 2, !dbg !346
  %idxprom3141 = zext i8 %1518 to i64, !dbg !346
  %arrayidx3142 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3141, !dbg !346
  %1519 = load i32, ptr %arrayidx3142, align 4, !dbg !346
  %add3143 = add i32 %1517, %1519, !dbg !346
  %arrayidx3144 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !346
  %1520 = load i32, ptr %arrayidx3144, align 4, !dbg !346
  %add3145 = add i32 %1520, %add3143, !dbg !346
  store i32 %add3145, ptr %arrayidx3144, align 4, !dbg !346
  %arrayidx3146 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !346
  %1521 = load i32, ptr %arrayidx3146, align 4, !dbg !346
  %arrayidx3147 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !346
  %1522 = load i32, ptr %arrayidx3147, align 4, !dbg !346
  %xor3148 = xor i32 %1521, %1522, !dbg !346
  %call3149 = call i32 @ror32(i32 noundef %xor3148, i32 noundef 16) #7, !dbg !346
  %arrayidx3150 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !346
  store i32 %call3149, ptr %arrayidx3150, align 4, !dbg !346
  %arrayidx3151 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !346
  %1523 = load i32, ptr %arrayidx3151, align 4, !dbg !346
  %arrayidx3152 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !346
  %1524 = load i32, ptr %arrayidx3152, align 4, !dbg !346
  %add3153 = add i32 %1524, %1523, !dbg !346
  store i32 %add3153, ptr %arrayidx3152, align 4, !dbg !346
  %arrayidx3154 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !346
  %1525 = load i32, ptr %arrayidx3154, align 4, !dbg !346
  %arrayidx3155 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !346
  %1526 = load i32, ptr %arrayidx3155, align 4, !dbg !346
  %xor3156 = xor i32 %1525, %1526, !dbg !346
  %call3157 = call i32 @ror32(i32 noundef %xor3156, i32 noundef 12) #7, !dbg !346
  %arrayidx3158 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !346
  store i32 %call3157, ptr %arrayidx3158, align 4, !dbg !346
  %arrayidx3159 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !346
  %1527 = load i32, ptr %arrayidx3159, align 4, !dbg !346
  %1528 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 7), align 1, !dbg !346
  %idxprom3160 = zext i8 %1528 to i64, !dbg !346
  %arrayidx3161 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3160, !dbg !346
  %1529 = load i32, ptr %arrayidx3161, align 4, !dbg !346
  %add3162 = add i32 %1527, %1529, !dbg !346
  %arrayidx3163 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !346
  %1530 = load i32, ptr %arrayidx3163, align 4, !dbg !346
  %add3164 = add i32 %1530, %add3162, !dbg !346
  store i32 %add3164, ptr %arrayidx3163, align 4, !dbg !346
  %arrayidx3165 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !346
  %1531 = load i32, ptr %arrayidx3165, align 4, !dbg !346
  %arrayidx3166 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !346
  %1532 = load i32, ptr %arrayidx3166, align 4, !dbg !346
  %xor3167 = xor i32 %1531, %1532, !dbg !346
  %call3168 = call i32 @ror32(i32 noundef %xor3167, i32 noundef 8) #7, !dbg !346
  %arrayidx3169 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !346
  store i32 %call3168, ptr %arrayidx3169, align 4, !dbg !346
  %arrayidx3170 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !346
  %1533 = load i32, ptr %arrayidx3170, align 4, !dbg !346
  %arrayidx3171 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !346
  %1534 = load i32, ptr %arrayidx3171, align 4, !dbg !346
  %add3172 = add i32 %1534, %1533, !dbg !346
  store i32 %add3172, ptr %arrayidx3171, align 4, !dbg !346
  %arrayidx3173 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !346
  %1535 = load i32, ptr %arrayidx3173, align 4, !dbg !346
  %arrayidx3174 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !346
  %1536 = load i32, ptr %arrayidx3174, align 4, !dbg !346
  %xor3175 = xor i32 %1535, %1536, !dbg !346
  %call3176 = call i32 @ror32(i32 noundef %xor3175, i32 noundef 7) #7, !dbg !346
  %arrayidx3177 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !346
  store i32 %call3176, ptr %arrayidx3177, align 4, !dbg !346
  br label %do.cond3178, !dbg !346

do.cond3178:                                      ; preds = %do.body3139
  br label %do.end3179, !dbg !346

do.end3179:                                       ; preds = %do.cond3178
  br label %do.body3180, !dbg !338

do.body3180:                                      ; preds = %do.end3179
  %arrayidx3181 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !348
  %1537 = load i32, ptr %arrayidx3181, align 4, !dbg !348
  %1538 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 8), align 8, !dbg !348
  %idxprom3182 = zext i8 %1538 to i64, !dbg !348
  %arrayidx3183 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3182, !dbg !348
  %1539 = load i32, ptr %arrayidx3183, align 4, !dbg !348
  %add3184 = add i32 %1537, %1539, !dbg !348
  %arrayidx3185 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !348
  %1540 = load i32, ptr %arrayidx3185, align 16, !dbg !348
  %add3186 = add i32 %1540, %add3184, !dbg !348
  store i32 %add3186, ptr %arrayidx3185, align 16, !dbg !348
  %arrayidx3187 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !348
  %1541 = load i32, ptr %arrayidx3187, align 4, !dbg !348
  %arrayidx3188 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !348
  %1542 = load i32, ptr %arrayidx3188, align 16, !dbg !348
  %xor3189 = xor i32 %1541, %1542, !dbg !348
  %call3190 = call i32 @ror32(i32 noundef %xor3189, i32 noundef 16) #7, !dbg !348
  %arrayidx3191 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !348
  store i32 %call3190, ptr %arrayidx3191, align 4, !dbg !348
  %arrayidx3192 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !348
  %1543 = load i32, ptr %arrayidx3192, align 4, !dbg !348
  %arrayidx3193 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !348
  %1544 = load i32, ptr %arrayidx3193, align 8, !dbg !348
  %add3194 = add i32 %1544, %1543, !dbg !348
  store i32 %add3194, ptr %arrayidx3193, align 8, !dbg !348
  %arrayidx3195 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !348
  %1545 = load i32, ptr %arrayidx3195, align 4, !dbg !348
  %arrayidx3196 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !348
  %1546 = load i32, ptr %arrayidx3196, align 8, !dbg !348
  %xor3197 = xor i32 %1545, %1546, !dbg !348
  %call3198 = call i32 @ror32(i32 noundef %xor3197, i32 noundef 12) #7, !dbg !348
  %arrayidx3199 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !348
  store i32 %call3198, ptr %arrayidx3199, align 4, !dbg !348
  %arrayidx3200 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !348
  %1547 = load i32, ptr %arrayidx3200, align 4, !dbg !348
  %1548 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 9), align 1, !dbg !348
  %idxprom3201 = zext i8 %1548 to i64, !dbg !348
  %arrayidx3202 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3201, !dbg !348
  %1549 = load i32, ptr %arrayidx3202, align 4, !dbg !348
  %add3203 = add i32 %1547, %1549, !dbg !348
  %arrayidx3204 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !348
  %1550 = load i32, ptr %arrayidx3204, align 16, !dbg !348
  %add3205 = add i32 %1550, %add3203, !dbg !348
  store i32 %add3205, ptr %arrayidx3204, align 16, !dbg !348
  %arrayidx3206 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !348
  %1551 = load i32, ptr %arrayidx3206, align 4, !dbg !348
  %arrayidx3207 = getelementptr [16 x i32], ptr %v, i64 0, i64 0, !dbg !348
  %1552 = load i32, ptr %arrayidx3207, align 16, !dbg !348
  %xor3208 = xor i32 %1551, %1552, !dbg !348
  %call3209 = call i32 @ror32(i32 noundef %xor3208, i32 noundef 8) #7, !dbg !348
  %arrayidx3210 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !348
  store i32 %call3209, ptr %arrayidx3210, align 4, !dbg !348
  %arrayidx3211 = getelementptr [16 x i32], ptr %v, i64 0, i64 15, !dbg !348
  %1553 = load i32, ptr %arrayidx3211, align 4, !dbg !348
  %arrayidx3212 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !348
  %1554 = load i32, ptr %arrayidx3212, align 8, !dbg !348
  %add3213 = add i32 %1554, %1553, !dbg !348
  store i32 %add3213, ptr %arrayidx3212, align 8, !dbg !348
  %arrayidx3214 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !348
  %1555 = load i32, ptr %arrayidx3214, align 4, !dbg !348
  %arrayidx3215 = getelementptr [16 x i32], ptr %v, i64 0, i64 10, !dbg !348
  %1556 = load i32, ptr %arrayidx3215, align 8, !dbg !348
  %xor3216 = xor i32 %1555, %1556, !dbg !348
  %call3217 = call i32 @ror32(i32 noundef %xor3216, i32 noundef 7) #7, !dbg !348
  %arrayidx3218 = getelementptr [16 x i32], ptr %v, i64 0, i64 5, !dbg !348
  store i32 %call3217, ptr %arrayidx3218, align 4, !dbg !348
  br label %do.cond3219, !dbg !348

do.cond3219:                                      ; preds = %do.body3180
  br label %do.end3220, !dbg !348

do.end3220:                                       ; preds = %do.cond3219
  br label %do.body3221, !dbg !338

do.body3221:                                      ; preds = %do.end3220
  %arrayidx3222 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !350
  %1557 = load i32, ptr %arrayidx3222, align 8, !dbg !350
  %1558 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 10), align 2, !dbg !350
  %idxprom3223 = zext i8 %1558 to i64, !dbg !350
  %arrayidx3224 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3223, !dbg !350
  %1559 = load i32, ptr %arrayidx3224, align 4, !dbg !350
  %add3225 = add i32 %1557, %1559, !dbg !350
  %arrayidx3226 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !350
  %1560 = load i32, ptr %arrayidx3226, align 4, !dbg !350
  %add3227 = add i32 %1560, %add3225, !dbg !350
  store i32 %add3227, ptr %arrayidx3226, align 4, !dbg !350
  %arrayidx3228 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !350
  %1561 = load i32, ptr %arrayidx3228, align 16, !dbg !350
  %arrayidx3229 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !350
  %1562 = load i32, ptr %arrayidx3229, align 4, !dbg !350
  %xor3230 = xor i32 %1561, %1562, !dbg !350
  %call3231 = call i32 @ror32(i32 noundef %xor3230, i32 noundef 16) #7, !dbg !350
  %arrayidx3232 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !350
  store i32 %call3231, ptr %arrayidx3232, align 16, !dbg !350
  %arrayidx3233 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !350
  %1563 = load i32, ptr %arrayidx3233, align 16, !dbg !350
  %arrayidx3234 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !350
  %1564 = load i32, ptr %arrayidx3234, align 4, !dbg !350
  %add3235 = add i32 %1564, %1563, !dbg !350
  store i32 %add3235, ptr %arrayidx3234, align 4, !dbg !350
  %arrayidx3236 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !350
  %1565 = load i32, ptr %arrayidx3236, align 8, !dbg !350
  %arrayidx3237 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !350
  %1566 = load i32, ptr %arrayidx3237, align 4, !dbg !350
  %xor3238 = xor i32 %1565, %1566, !dbg !350
  %call3239 = call i32 @ror32(i32 noundef %xor3238, i32 noundef 12) #7, !dbg !350
  %arrayidx3240 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !350
  store i32 %call3239, ptr %arrayidx3240, align 8, !dbg !350
  %arrayidx3241 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !350
  %1567 = load i32, ptr %arrayidx3241, align 8, !dbg !350
  %1568 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 11), align 1, !dbg !350
  %idxprom3242 = zext i8 %1568 to i64, !dbg !350
  %arrayidx3243 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3242, !dbg !350
  %1569 = load i32, ptr %arrayidx3243, align 4, !dbg !350
  %add3244 = add i32 %1567, %1569, !dbg !350
  %arrayidx3245 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !350
  %1570 = load i32, ptr %arrayidx3245, align 4, !dbg !350
  %add3246 = add i32 %1570, %add3244, !dbg !350
  store i32 %add3246, ptr %arrayidx3245, align 4, !dbg !350
  %arrayidx3247 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !350
  %1571 = load i32, ptr %arrayidx3247, align 16, !dbg !350
  %arrayidx3248 = getelementptr [16 x i32], ptr %v, i64 0, i64 1, !dbg !350
  %1572 = load i32, ptr %arrayidx3248, align 4, !dbg !350
  %xor3249 = xor i32 %1571, %1572, !dbg !350
  %call3250 = call i32 @ror32(i32 noundef %xor3249, i32 noundef 8) #7, !dbg !350
  %arrayidx3251 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !350
  store i32 %call3250, ptr %arrayidx3251, align 16, !dbg !350
  %arrayidx3252 = getelementptr [16 x i32], ptr %v, i64 0, i64 12, !dbg !350
  %1573 = load i32, ptr %arrayidx3252, align 16, !dbg !350
  %arrayidx3253 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !350
  %1574 = load i32, ptr %arrayidx3253, align 4, !dbg !350
  %add3254 = add i32 %1574, %1573, !dbg !350
  store i32 %add3254, ptr %arrayidx3253, align 4, !dbg !350
  %arrayidx3255 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !350
  %1575 = load i32, ptr %arrayidx3255, align 8, !dbg !350
  %arrayidx3256 = getelementptr [16 x i32], ptr %v, i64 0, i64 11, !dbg !350
  %1576 = load i32, ptr %arrayidx3256, align 4, !dbg !350
  %xor3257 = xor i32 %1575, %1576, !dbg !350
  %call3258 = call i32 @ror32(i32 noundef %xor3257, i32 noundef 7) #7, !dbg !350
  %arrayidx3259 = getelementptr [16 x i32], ptr %v, i64 0, i64 6, !dbg !350
  store i32 %call3258, ptr %arrayidx3259, align 8, !dbg !350
  br label %do.cond3260, !dbg !350

do.cond3260:                                      ; preds = %do.body3221
  br label %do.end3261, !dbg !350

do.end3261:                                       ; preds = %do.cond3260
  br label %do.body3262, !dbg !338

do.body3262:                                      ; preds = %do.end3261
  %arrayidx3263 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !352
  %1577 = load i32, ptr %arrayidx3263, align 4, !dbg !352
  %1578 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 12), align 4, !dbg !352
  %idxprom3264 = zext i8 %1578 to i64, !dbg !352
  %arrayidx3265 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3264, !dbg !352
  %1579 = load i32, ptr %arrayidx3265, align 4, !dbg !352
  %add3266 = add i32 %1577, %1579, !dbg !352
  %arrayidx3267 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !352
  %1580 = load i32, ptr %arrayidx3267, align 8, !dbg !352
  %add3268 = add i32 %1580, %add3266, !dbg !352
  store i32 %add3268, ptr %arrayidx3267, align 8, !dbg !352
  %arrayidx3269 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !352
  %1581 = load i32, ptr %arrayidx3269, align 4, !dbg !352
  %arrayidx3270 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !352
  %1582 = load i32, ptr %arrayidx3270, align 8, !dbg !352
  %xor3271 = xor i32 %1581, %1582, !dbg !352
  %call3272 = call i32 @ror32(i32 noundef %xor3271, i32 noundef 16) #7, !dbg !352
  %arrayidx3273 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !352
  store i32 %call3272, ptr %arrayidx3273, align 4, !dbg !352
  %arrayidx3274 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !352
  %1583 = load i32, ptr %arrayidx3274, align 4, !dbg !352
  %arrayidx3275 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !352
  %1584 = load i32, ptr %arrayidx3275, align 16, !dbg !352
  %add3276 = add i32 %1584, %1583, !dbg !352
  store i32 %add3276, ptr %arrayidx3275, align 16, !dbg !352
  %arrayidx3277 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !352
  %1585 = load i32, ptr %arrayidx3277, align 4, !dbg !352
  %arrayidx3278 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !352
  %1586 = load i32, ptr %arrayidx3278, align 16, !dbg !352
  %xor3279 = xor i32 %1585, %1586, !dbg !352
  %call3280 = call i32 @ror32(i32 noundef %xor3279, i32 noundef 12) #7, !dbg !352
  %arrayidx3281 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !352
  store i32 %call3280, ptr %arrayidx3281, align 4, !dbg !352
  %arrayidx3282 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !352
  %1587 = load i32, ptr %arrayidx3282, align 4, !dbg !352
  %1588 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 13), align 1, !dbg !352
  %idxprom3283 = zext i8 %1588 to i64, !dbg !352
  %arrayidx3284 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3283, !dbg !352
  %1589 = load i32, ptr %arrayidx3284, align 4, !dbg !352
  %add3285 = add i32 %1587, %1589, !dbg !352
  %arrayidx3286 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !352
  %1590 = load i32, ptr %arrayidx3286, align 8, !dbg !352
  %add3287 = add i32 %1590, %add3285, !dbg !352
  store i32 %add3287, ptr %arrayidx3286, align 8, !dbg !352
  %arrayidx3288 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !352
  %1591 = load i32, ptr %arrayidx3288, align 4, !dbg !352
  %arrayidx3289 = getelementptr [16 x i32], ptr %v, i64 0, i64 2, !dbg !352
  %1592 = load i32, ptr %arrayidx3289, align 8, !dbg !352
  %xor3290 = xor i32 %1591, %1592, !dbg !352
  %call3291 = call i32 @ror32(i32 noundef %xor3290, i32 noundef 8) #7, !dbg !352
  %arrayidx3292 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !352
  store i32 %call3291, ptr %arrayidx3292, align 4, !dbg !352
  %arrayidx3293 = getelementptr [16 x i32], ptr %v, i64 0, i64 13, !dbg !352
  %1593 = load i32, ptr %arrayidx3293, align 4, !dbg !352
  %arrayidx3294 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !352
  %1594 = load i32, ptr %arrayidx3294, align 16, !dbg !352
  %add3295 = add i32 %1594, %1593, !dbg !352
  store i32 %add3295, ptr %arrayidx3294, align 16, !dbg !352
  %arrayidx3296 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !352
  %1595 = load i32, ptr %arrayidx3296, align 4, !dbg !352
  %arrayidx3297 = getelementptr [16 x i32], ptr %v, i64 0, i64 8, !dbg !352
  %1596 = load i32, ptr %arrayidx3297, align 16, !dbg !352
  %xor3298 = xor i32 %1595, %1596, !dbg !352
  %call3299 = call i32 @ror32(i32 noundef %xor3298, i32 noundef 7) #7, !dbg !352
  %arrayidx3300 = getelementptr [16 x i32], ptr %v, i64 0, i64 7, !dbg !352
  store i32 %call3299, ptr %arrayidx3300, align 4, !dbg !352
  br label %do.cond3301, !dbg !352

do.cond3301:                                      ; preds = %do.body3262
  br label %do.end3302, !dbg !352

do.end3302:                                       ; preds = %do.cond3301
  br label %do.body3303, !dbg !338

do.body3303:                                      ; preds = %do.end3302
  %arrayidx3304 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !354
  %1597 = load i32, ptr %arrayidx3304, align 16, !dbg !354
  %1598 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 14), align 2, !dbg !354
  %idxprom3305 = zext i8 %1598 to i64, !dbg !354
  %arrayidx3306 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3305, !dbg !354
  %1599 = load i32, ptr %arrayidx3306, align 4, !dbg !354
  %add3307 = add i32 %1597, %1599, !dbg !354
  %arrayidx3308 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !354
  %1600 = load i32, ptr %arrayidx3308, align 4, !dbg !354
  %add3309 = add i32 %1600, %add3307, !dbg !354
  store i32 %add3309, ptr %arrayidx3308, align 4, !dbg !354
  %arrayidx3310 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !354
  %1601 = load i32, ptr %arrayidx3310, align 8, !dbg !354
  %arrayidx3311 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !354
  %1602 = load i32, ptr %arrayidx3311, align 4, !dbg !354
  %xor3312 = xor i32 %1601, %1602, !dbg !354
  %call3313 = call i32 @ror32(i32 noundef %xor3312, i32 noundef 16) #7, !dbg !354
  %arrayidx3314 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !354
  store i32 %call3313, ptr %arrayidx3314, align 8, !dbg !354
  %arrayidx3315 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !354
  %1603 = load i32, ptr %arrayidx3315, align 8, !dbg !354
  %arrayidx3316 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !354
  %1604 = load i32, ptr %arrayidx3316, align 4, !dbg !354
  %add3317 = add i32 %1604, %1603, !dbg !354
  store i32 %add3317, ptr %arrayidx3316, align 4, !dbg !354
  %arrayidx3318 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !354
  %1605 = load i32, ptr %arrayidx3318, align 16, !dbg !354
  %arrayidx3319 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !354
  %1606 = load i32, ptr %arrayidx3319, align 4, !dbg !354
  %xor3320 = xor i32 %1605, %1606, !dbg !354
  %call3321 = call i32 @ror32(i32 noundef %xor3320, i32 noundef 12) #7, !dbg !354
  %arrayidx3322 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !354
  store i32 %call3321, ptr %arrayidx3322, align 16, !dbg !354
  %arrayidx3323 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !354
  %1607 = load i32, ptr %arrayidx3323, align 16, !dbg !354
  %1608 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 15), align 1, !dbg !354
  %idxprom3324 = zext i8 %1608 to i64, !dbg !354
  %arrayidx3325 = getelementptr [16 x i32], ptr %m, i64 0, i64 %idxprom3324, !dbg !354
  %1609 = load i32, ptr %arrayidx3325, align 4, !dbg !354
  %add3326 = add i32 %1607, %1609, !dbg !354
  %arrayidx3327 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !354
  %1610 = load i32, ptr %arrayidx3327, align 4, !dbg !354
  %add3328 = add i32 %1610, %add3326, !dbg !354
  store i32 %add3328, ptr %arrayidx3327, align 4, !dbg !354
  %arrayidx3329 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !354
  %1611 = load i32, ptr %arrayidx3329, align 8, !dbg !354
  %arrayidx3330 = getelementptr [16 x i32], ptr %v, i64 0, i64 3, !dbg !354
  %1612 = load i32, ptr %arrayidx3330, align 4, !dbg !354
  %xor3331 = xor i32 %1611, %1612, !dbg !354
  %call3332 = call i32 @ror32(i32 noundef %xor3331, i32 noundef 8) #7, !dbg !354
  %arrayidx3333 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !354
  store i32 %call3332, ptr %arrayidx3333, align 8, !dbg !354
  %arrayidx3334 = getelementptr [16 x i32], ptr %v, i64 0, i64 14, !dbg !354
  %1613 = load i32, ptr %arrayidx3334, align 8, !dbg !354
  %arrayidx3335 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !354
  %1614 = load i32, ptr %arrayidx3335, align 4, !dbg !354
  %add3336 = add i32 %1614, %1613, !dbg !354
  store i32 %add3336, ptr %arrayidx3335, align 4, !dbg !354
  %arrayidx3337 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !354
  %1615 = load i32, ptr %arrayidx3337, align 16, !dbg !354
  %arrayidx3338 = getelementptr [16 x i32], ptr %v, i64 0, i64 9, !dbg !354
  %1616 = load i32, ptr %arrayidx3338, align 4, !dbg !354
  %xor3339 = xor i32 %1615, %1616, !dbg !354
  %call3340 = call i32 @ror32(i32 noundef %xor3339, i32 noundef 7) #7, !dbg !354
  %arrayidx3341 = getelementptr [16 x i32], ptr %v, i64 0, i64 4, !dbg !354
  store i32 %call3340, ptr %arrayidx3341, align 16, !dbg !354
  br label %do.cond3342, !dbg !354

do.cond3342:                                      ; preds = %do.body3303
  br label %do.end3343, !dbg !354

do.end3343:                                       ; preds = %do.cond3342
  br label %do.cond3344, !dbg !338

do.cond3344:                                      ; preds = %do.end3343
  br label %do.end3345, !dbg !338

do.end3345:                                       ; preds = %do.cond3344
  store i32 0, ptr %i, align 4, !dbg !356
  br label %for.cond, !dbg !358

for.cond:                                         ; preds = %for.inc, %do.end3345
  %1617 = load i32, ptr %i, align 4, !dbg !359
  %cmp3346 = icmp slt i32 %1617, 8, !dbg !361
  br i1 %cmp3346, label %for.body, label %for.end, !dbg !362

for.body:                                         ; preds = %for.cond
  %1618 = load i32, ptr %i, align 4, !dbg !363
  %idxprom3348 = sext i32 %1618 to i64, !dbg !364
  %arrayidx3349 = getelementptr [16 x i32], ptr %v, i64 0, i64 %idxprom3348, !dbg !364
  %1619 = load i32, ptr %arrayidx3349, align 4, !dbg !364
  %1620 = load i32, ptr %i, align 4, !dbg !365
  %add3350 = add i32 %1620, 8, !dbg !366
  %idxprom3351 = sext i32 %add3350 to i64, !dbg !367
  %arrayidx3352 = getelementptr [16 x i32], ptr %v, i64 0, i64 %idxprom3351, !dbg !367
  %1621 = load i32, ptr %arrayidx3352, align 4, !dbg !367
  %xor3353 = xor i32 %1619, %1621, !dbg !368
  %1622 = load ptr, ptr %state.addr, align 8, !dbg !369
  %h3354 = getelementptr inbounds %struct.blake2s_state, ptr %1622, i32 0, i32 0, !dbg !370
  %1623 = load i32, ptr %i, align 4, !dbg !371
  %idxprom3355 = sext i32 %1623 to i64, !dbg !369
  %arrayidx3356 = getelementptr [8 x i32], ptr %h3354, i64 0, i64 %idxprom3355, !dbg !369
  %1624 = load i32, ptr %arrayidx3356, align 4, !dbg !372
  %xor3357 = xor i32 %1624, %xor3353, !dbg !372
  store i32 %xor3357, ptr %arrayidx3356, align 4, !dbg !372
  br label %for.inc, !dbg !369

for.inc:                                          ; preds = %for.body
  %1625 = load i32, ptr %i, align 4, !dbg !373
  %inc3358 = add i32 %1625, 1, !dbg !373
  store i32 %inc3358, ptr %i, align 4, !dbg !373
  br label %for.cond, !dbg !374, !llvm.loop !375

for.end:                                          ; preds = %for.cond
  %1626 = load ptr, ptr %block.addr, align 8, !dbg !379
  %add.ptr = getelementptr i8, ptr %1626, i64 64, !dbg !379
  store ptr %add.ptr, ptr %block.addr, align 8, !dbg !379
  %1627 = load i64, ptr %nblocks.addr, align 8, !dbg !380
  %dec = add i64 %1627, -1, !dbg !380
  store i64 %dec, ptr %nblocks.addr, align 8, !dbg !380
  br label %while.cond, !dbg !124, !llvm.loop !381

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !383
  call void @llvm.lifetime.end.p0(i64 64, ptr %v) #6, !dbg !383
  call void @llvm.lifetime.end.p0(i64 64, ptr %m) #6, !dbg !383
  ret void, !dbg !383
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blake2s_increment_counter(ptr noundef %state, i32 noundef %inc) #4 align 16 !dbg !384 {
entry:
  %state.addr = alloca ptr, align 8
  %inc.addr = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !388, metadata !DIExpression()), !dbg !390
  store i32 %inc, ptr %inc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %inc.addr, metadata !389, metadata !DIExpression()), !dbg !391
  %0 = load i32, ptr %inc.addr, align 4, !dbg !392
  %1 = load ptr, ptr %state.addr, align 8, !dbg !393
  %t = getelementptr inbounds %struct.blake2s_state, ptr %1, i32 0, i32 1, !dbg !394
  %arrayidx = getelementptr [2 x i32], ptr %t, i64 0, i64 0, !dbg !393
  %2 = load i32, ptr %arrayidx, align 4, !dbg !395
  %add = add i32 %2, %0, !dbg !395
  store i32 %add, ptr %arrayidx, align 4, !dbg !395
  %3 = load ptr, ptr %state.addr, align 8, !dbg !396
  %t1 = getelementptr inbounds %struct.blake2s_state, ptr %3, i32 0, i32 1, !dbg !397
  %arrayidx2 = getelementptr [2 x i32], ptr %t1, i64 0, i64 0, !dbg !396
  %4 = load i32, ptr %arrayidx2, align 4, !dbg !396
  %5 = load i32, ptr %inc.addr, align 4, !dbg !398
  %cmp = icmp ult i32 %4, %5, !dbg !399
  %conv = zext i1 %cmp to i32, !dbg !399
  %6 = load ptr, ptr %state.addr, align 8, !dbg !400
  %t3 = getelementptr inbounds %struct.blake2s_state, ptr %6, i32 0, i32 1, !dbg !401
  %arrayidx4 = getelementptr [2 x i32], ptr %t3, i64 0, i64 1, !dbg !400
  %7 = load i32, ptr %arrayidx4, align 4, !dbg !402
  %add5 = add i32 %7, %conv, !dbg !402
  store i32 %add5, ptr %arrayidx4, align 4, !dbg !402
  ret void, !dbg !403
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @le32_to_cpu_array(ptr noundef %buf, i32 noundef %words) #4 align 16 !dbg !404 {
entry:
  %buf.addr = alloca ptr, align 8
  %words.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !410, metadata !DIExpression()), !dbg !412
  store i32 %words, ptr %words.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %words.addr, metadata !411, metadata !DIExpression()), !dbg !413
  br label %while.cond, !dbg !414

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, ptr %words.addr, align 4, !dbg !415
  %dec = add i32 %0, -1, !dbg !415
  store i32 %dec, ptr %words.addr, align 4, !dbg !415
  %tobool = icmp ne i32 %0, 0, !dbg !414
  br i1 %tobool, label %while.body, label %while.end, !dbg !414

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !416

do.body:                                          ; preds = %while.body
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !418
  br label %do.end, !dbg !418

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !420
  %incdec.ptr = getelementptr i32, ptr %2, i32 1, !dbg !420
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !420
  br label %while.cond, !dbg !414, !llvm.loop !421

while.end:                                        ; preds = %while.cond
  ret void, !dbg !423
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ror32(i32 noundef %word, i32 noundef %shift) #4 align 16 !dbg !424 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !429, metadata !DIExpression()), !dbg !431
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !430, metadata !DIExpression()), !dbg !432
  %0 = load i32, ptr %word.addr, align 4, !dbg !433
  %1 = load i32, ptr %shift.addr, align 4, !dbg !434
  %and = and i32 %1, 31, !dbg !435
  %shr = lshr i32 %0, %and, !dbg !436
  %2 = load i32, ptr %word.addr, align 4, !dbg !437
  %3 = load i32, ptr %shift.addr, align 4, !dbg !438
  %sub = sub i32 0, %3, !dbg !439
  %and1 = and i32 %sub, 31, !dbg !440
  %shl = shl i32 %2, %and1, !dbg !441
  %or = or i32 %shr, %shl, !dbg !442
  ret i32 %or, !dbg !443
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/crypto/blake2s-generic.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d63b9e4485fd4eca58b471f2cfb609ad")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "blake2s_sigma", scope: !9, file: !2, line: 19, type: !38, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.blake2s-generic.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/libblake2s\22 -D KBUILD_BASENAME=\22blake2s_generic\22 -D KBUILD_MODNAME=\22libblake2s\22 -D __KBUILD_MODNAME=kmod_libblake2s -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/blake2s-generic.ll lib/crypto/blake2s-generic.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !32, globals: !35, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !22}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blake2s_lengths", file: !12, line: 14, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/crypto/blake2s.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65c97fb14affe00956794dc548629cd3")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21}
!15 = !DIEnumerator(name: "BLAKE2S_BLOCK_SIZE", value: 64)
!16 = !DIEnumerator(name: "BLAKE2S_HASH_SIZE", value: 32)
!17 = !DIEnumerator(name: "BLAKE2S_KEY_SIZE", value: 32)
!18 = !DIEnumerator(name: "BLAKE2S_128_HASH_SIZE", value: 16)
!19 = !DIEnumerator(name: "BLAKE2S_160_HASH_SIZE", value: 20)
!20 = !DIEnumerator(name: "BLAKE2S_224_HASH_SIZE", value: 28)
!21 = !DIEnumerator(name: "BLAKE2S_256_HASH_SIZE", value: 32)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blake2s_iv", file: !12, line: 35, baseType: !13, size: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31}
!24 = !DIEnumerator(name: "BLAKE2S_IV0", value: 1779033703)
!25 = !DIEnumerator(name: "BLAKE2S_IV1", value: 3144134277, isUnsigned: true)
!26 = !DIEnumerator(name: "BLAKE2S_IV2", value: 1013904242)
!27 = !DIEnumerator(name: "BLAKE2S_IV3", value: 2773480762, isUnsigned: true)
!28 = !DIEnumerator(name: "BLAKE2S_IV4", value: 1359893119)
!29 = !DIEnumerator(name: "BLAKE2S_IV5", value: 2600822924, isUnsigned: true)
!30 = !DIEnumerator(name: "BLAKE2S_IV6", value: 528734635)
!31 = !DIEnumerator(name: "BLAKE2S_IV7", value: 1541459225)
!32 = !{!33, !34}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !{!0, !36, !7}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blake2s_compress_generic3", scope: !9, file: !2, line: 110, type: !34, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1280, elements: !45)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !41, line: 17, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !43, line: 21, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!46, !47}
!46 = !DISubrange(count: 10)
!47 = !DISubrange(count: 16)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "blake2s_compress_generic", scope: !2, file: !2, line: 43, type: !58, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !88)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !80, !81, !87}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blake2s_state", file: !12, line: 25, size: 960, elements: !62)
!62 = !{!63, !69, !73, !74, !78, !79}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !61, file: !12, line: 27, baseType: !64, size: 256)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !67)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !41, line: 21, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !43, line: 27, baseType: !13)
!67 = !{!68}
!68 = !DISubrange(count: 8)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !61, file: !12, line: 28, baseType: !70, size: 64, offset: 256)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 2)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !61, file: !12, line: 29, baseType: !70, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !61, file: !12, line: 30, baseType: !75, size: 512, offset: 384)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 512, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !61, file: !12, line: 31, baseType: !13, size: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "outlen", scope: !61, file: !12, line: 32, baseType: !13, size: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 61, baseType: !83)
!82 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !84, line: 72, baseType: !85)
!84 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !84, line: 16, baseType: !86)
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!88 = !{!89, !90, !91, !92, !93, !96, !97, !98, !100}
!89 = !DILocalVariable(name: "state", arg: 1, scope: !57, file: !2, line: 43, type: !60)
!90 = !DILocalVariable(name: "block", arg: 2, scope: !57, file: !2, line: 43, type: !80)
!91 = !DILocalVariable(name: "nblocks", arg: 3, scope: !57, file: !2, line: 44, type: !81)
!92 = !DILocalVariable(name: "inc", arg: 4, scope: !57, file: !2, line: 44, type: !87)
!93 = !DILocalVariable(name: "m", scope: !57, file: !2, line: 46, type: !94)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 512, elements: !95)
!95 = !{!47}
!96 = !DILocalVariable(name: "v", scope: !57, file: !2, line: 47, type: !94)
!97 = !DILocalVariable(name: "i", scope: !57, file: !2, line: 48, type: !33)
!98 = !DILocalVariable(name: "__ret_warn_on", scope: !99, file: !2, line: 50, type: !33)
!99 = distinct !DILexicalBlock(scope: !57, file: !2, line: 50, column: 2)
!100 = !DILocalVariable(name: "__flags", scope: !101, file: !2, line: 50, type: !33)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 50, column: 2)
!102 = distinct !DILexicalBlock(scope: !99, file: !2, line: 50, column: 2)
!103 = !DILocation(line: 43, column: 53, scope: !57)
!104 = !DILocation(line: 43, column: 70, scope: !57)
!105 = !DILocation(line: 44, column: 17, scope: !57)
!106 = !DILocation(line: 44, column: 36, scope: !57)
!107 = !DILocation(line: 46, column: 2, scope: !57)
!108 = !DILocation(line: 46, column: 6, scope: !57)
!109 = !DILocation(line: 47, column: 2, scope: !57)
!110 = !DILocation(line: 47, column: 6, scope: !57)
!111 = !DILocation(line: 48, column: 2, scope: !57)
!112 = !DILocation(line: 48, column: 6, scope: !57)
!113 = !DILocation(line: 50, column: 2, scope: !99)
!114 = !DILocation(line: 50, column: 2, scope: !102)
!115 = !DILocation(line: 50, column: 2, scope: !101)
!116 = !DILocation(line: 50, column: 2, scope: !117)
!117 = distinct !DILexicalBlock(scope: !101, file: !2, line: 50, column: 2)
!118 = !DILocation(line: 50, column: 2, scope: !119)
!119 = distinct !DILexicalBlock(scope: !101, file: !2, line: 50, column: 2)
!120 = !{i64 2148161462, i64 2148161491, i64 2148161537, i64 2148161595, i64 2148161649, i64 2148161703, i64 2148161758, i64 2148161789, i64 2148162097, i64 2148162103, i64 2148162150, i64 2148162173, i64 2148162199}
!121 = !DILocation(line: 50, column: 2, scope: !122)
!122 = distinct !DILexicalBlock(scope: !101, file: !2, line: 50, column: 2)
!123 = !DILocation(line: 50, column: 2, scope: !57)
!124 = !DILocation(line: 53, column: 2, scope: !57)
!125 = !DILocation(line: 53, column: 9, scope: !57)
!126 = !DILocation(line: 53, column: 17, scope: !57)
!127 = !DILocation(line: 54, column: 29, scope: !128)
!128 = distinct !DILexicalBlock(scope: !57, file: !2, line: 53, column: 22)
!129 = !DILocation(line: 54, column: 36, scope: !128)
!130 = !DILocation(line: 54, column: 3, scope: !128)
!131 = !DILocation(line: 55, column: 3, scope: !128)
!132 = !DILocation(line: 55, column: 13, scope: !128)
!133 = !DILocation(line: 56, column: 21, scope: !128)
!134 = !DILocation(line: 56, column: 3, scope: !128)
!135 = !DILocation(line: 57, column: 3, scope: !128)
!136 = !DILocation(line: 57, column: 13, scope: !128)
!137 = !DILocation(line: 57, column: 20, scope: !128)
!138 = !DILocation(line: 58, column: 3, scope: !128)
!139 = !DILocation(line: 58, column: 9, scope: !128)
!140 = !DILocation(line: 59, column: 3, scope: !128)
!141 = !DILocation(line: 59, column: 9, scope: !128)
!142 = !DILocation(line: 60, column: 3, scope: !128)
!143 = !DILocation(line: 60, column: 9, scope: !128)
!144 = !DILocation(line: 61, column: 3, scope: !128)
!145 = !DILocation(line: 61, column: 9, scope: !128)
!146 = !DILocation(line: 62, column: 25, scope: !128)
!147 = !DILocation(line: 62, column: 32, scope: !128)
!148 = !DILocation(line: 62, column: 23, scope: !128)
!149 = !DILocation(line: 62, column: 3, scope: !128)
!150 = !DILocation(line: 62, column: 9, scope: !128)
!151 = !DILocation(line: 63, column: 25, scope: !128)
!152 = !DILocation(line: 63, column: 32, scope: !128)
!153 = !DILocation(line: 63, column: 23, scope: !128)
!154 = !DILocation(line: 63, column: 3, scope: !128)
!155 = !DILocation(line: 63, column: 9, scope: !128)
!156 = !DILocation(line: 64, column: 25, scope: !128)
!157 = !DILocation(line: 64, column: 32, scope: !128)
!158 = !DILocation(line: 64, column: 23, scope: !128)
!159 = !DILocation(line: 64, column: 3, scope: !128)
!160 = !DILocation(line: 64, column: 9, scope: !128)
!161 = !DILocation(line: 65, column: 25, scope: !128)
!162 = !DILocation(line: 65, column: 32, scope: !128)
!163 = !DILocation(line: 65, column: 23, scope: !128)
!164 = !DILocation(line: 65, column: 3, scope: !128)
!165 = !DILocation(line: 65, column: 9, scope: !128)
!166 = !DILocation(line: 88, column: 3, scope: !128)
!167 = !DILocation(line: 88, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !128, file: !2, line: 88, column: 3)
!169 = !DILocation(line: 88, column: 3, scope: !170)
!170 = distinct !DILexicalBlock(scope: !168, file: !2, line: 88, column: 3)
!171 = !DILocation(line: 88, column: 3, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !2, line: 88, column: 3)
!173 = !DILocation(line: 88, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !2, line: 88, column: 3)
!175 = !DILocation(line: 88, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !168, file: !2, line: 88, column: 3)
!177 = !DILocation(line: 88, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !168, file: !2, line: 88, column: 3)
!179 = !DILocation(line: 88, column: 3, scope: !180)
!180 = distinct !DILexicalBlock(scope: !168, file: !2, line: 88, column: 3)
!181 = !DILocation(line: 88, column: 3, scope: !182)
!182 = distinct !DILexicalBlock(scope: !168, file: !2, line: 88, column: 3)
!183 = !DILocation(line: 88, column: 3, scope: !184)
!184 = distinct !DILexicalBlock(scope: !168, file: !2, line: 88, column: 3)
!185 = !DILocation(line: 89, column: 3, scope: !128)
!186 = !DILocation(line: 89, column: 3, scope: !187)
!187 = distinct !DILexicalBlock(scope: !128, file: !2, line: 89, column: 3)
!188 = !DILocation(line: 89, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !187, file: !2, line: 89, column: 3)
!190 = !DILocation(line: 89, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !2, line: 89, column: 3)
!192 = !DILocation(line: 89, column: 3, scope: !193)
!193 = distinct !DILexicalBlock(scope: !187, file: !2, line: 89, column: 3)
!194 = !DILocation(line: 89, column: 3, scope: !195)
!195 = distinct !DILexicalBlock(scope: !187, file: !2, line: 89, column: 3)
!196 = !DILocation(line: 89, column: 3, scope: !197)
!197 = distinct !DILexicalBlock(scope: !187, file: !2, line: 89, column: 3)
!198 = !DILocation(line: 89, column: 3, scope: !199)
!199 = distinct !DILexicalBlock(scope: !187, file: !2, line: 89, column: 3)
!200 = !DILocation(line: 89, column: 3, scope: !201)
!201 = distinct !DILexicalBlock(scope: !187, file: !2, line: 89, column: 3)
!202 = !DILocation(line: 89, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !187, file: !2, line: 89, column: 3)
!204 = !DILocation(line: 90, column: 3, scope: !128)
!205 = !DILocation(line: 90, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !128, file: !2, line: 90, column: 3)
!207 = !DILocation(line: 90, column: 3, scope: !208)
!208 = distinct !DILexicalBlock(scope: !206, file: !2, line: 90, column: 3)
!209 = !DILocation(line: 90, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !2, line: 90, column: 3)
!211 = !DILocation(line: 90, column: 3, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !2, line: 90, column: 3)
!213 = !DILocation(line: 90, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !206, file: !2, line: 90, column: 3)
!215 = !DILocation(line: 90, column: 3, scope: !216)
!216 = distinct !DILexicalBlock(scope: !206, file: !2, line: 90, column: 3)
!217 = !DILocation(line: 90, column: 3, scope: !218)
!218 = distinct !DILexicalBlock(scope: !206, file: !2, line: 90, column: 3)
!219 = !DILocation(line: 90, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !206, file: !2, line: 90, column: 3)
!221 = !DILocation(line: 90, column: 3, scope: !222)
!222 = distinct !DILexicalBlock(scope: !206, file: !2, line: 90, column: 3)
!223 = !DILocation(line: 91, column: 3, scope: !128)
!224 = !DILocation(line: 91, column: 3, scope: !225)
!225 = distinct !DILexicalBlock(scope: !128, file: !2, line: 91, column: 3)
!226 = !DILocation(line: 91, column: 3, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !2, line: 91, column: 3)
!228 = !DILocation(line: 91, column: 3, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !2, line: 91, column: 3)
!230 = !DILocation(line: 91, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !225, file: !2, line: 91, column: 3)
!232 = !DILocation(line: 91, column: 3, scope: !233)
!233 = distinct !DILexicalBlock(scope: !225, file: !2, line: 91, column: 3)
!234 = !DILocation(line: 91, column: 3, scope: !235)
!235 = distinct !DILexicalBlock(scope: !225, file: !2, line: 91, column: 3)
!236 = !DILocation(line: 91, column: 3, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !2, line: 91, column: 3)
!238 = !DILocation(line: 91, column: 3, scope: !239)
!239 = distinct !DILexicalBlock(scope: !225, file: !2, line: 91, column: 3)
!240 = !DILocation(line: 91, column: 3, scope: !241)
!241 = distinct !DILexicalBlock(scope: !225, file: !2, line: 91, column: 3)
!242 = !DILocation(line: 92, column: 3, scope: !128)
!243 = !DILocation(line: 92, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !128, file: !2, line: 92, column: 3)
!245 = !DILocation(line: 92, column: 3, scope: !246)
!246 = distinct !DILexicalBlock(scope: !244, file: !2, line: 92, column: 3)
!247 = !DILocation(line: 92, column: 3, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !2, line: 92, column: 3)
!249 = !DILocation(line: 92, column: 3, scope: !250)
!250 = distinct !DILexicalBlock(scope: !244, file: !2, line: 92, column: 3)
!251 = !DILocation(line: 92, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !244, file: !2, line: 92, column: 3)
!253 = !DILocation(line: 92, column: 3, scope: !254)
!254 = distinct !DILexicalBlock(scope: !244, file: !2, line: 92, column: 3)
!255 = !DILocation(line: 92, column: 3, scope: !256)
!256 = distinct !DILexicalBlock(scope: !244, file: !2, line: 92, column: 3)
!257 = !DILocation(line: 92, column: 3, scope: !258)
!258 = distinct !DILexicalBlock(scope: !244, file: !2, line: 92, column: 3)
!259 = !DILocation(line: 92, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !244, file: !2, line: 92, column: 3)
!261 = !DILocation(line: 93, column: 3, scope: !128)
!262 = !DILocation(line: 93, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !128, file: !2, line: 93, column: 3)
!264 = !DILocation(line: 93, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !2, line: 93, column: 3)
!266 = !DILocation(line: 93, column: 3, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !2, line: 93, column: 3)
!268 = !DILocation(line: 93, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !263, file: !2, line: 93, column: 3)
!270 = !DILocation(line: 93, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !263, file: !2, line: 93, column: 3)
!272 = !DILocation(line: 93, column: 3, scope: !273)
!273 = distinct !DILexicalBlock(scope: !263, file: !2, line: 93, column: 3)
!274 = !DILocation(line: 93, column: 3, scope: !275)
!275 = distinct !DILexicalBlock(scope: !263, file: !2, line: 93, column: 3)
!276 = !DILocation(line: 93, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !263, file: !2, line: 93, column: 3)
!278 = !DILocation(line: 93, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !263, file: !2, line: 93, column: 3)
!280 = !DILocation(line: 94, column: 3, scope: !128)
!281 = !DILocation(line: 94, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !128, file: !2, line: 94, column: 3)
!283 = !DILocation(line: 94, column: 3, scope: !284)
!284 = distinct !DILexicalBlock(scope: !282, file: !2, line: 94, column: 3)
!285 = !DILocation(line: 94, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !2, line: 94, column: 3)
!287 = !DILocation(line: 94, column: 3, scope: !288)
!288 = distinct !DILexicalBlock(scope: !282, file: !2, line: 94, column: 3)
!289 = !DILocation(line: 94, column: 3, scope: !290)
!290 = distinct !DILexicalBlock(scope: !282, file: !2, line: 94, column: 3)
!291 = !DILocation(line: 94, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !282, file: !2, line: 94, column: 3)
!293 = !DILocation(line: 94, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !282, file: !2, line: 94, column: 3)
!295 = !DILocation(line: 94, column: 3, scope: !296)
!296 = distinct !DILexicalBlock(scope: !282, file: !2, line: 94, column: 3)
!297 = !DILocation(line: 94, column: 3, scope: !298)
!298 = distinct !DILexicalBlock(scope: !282, file: !2, line: 94, column: 3)
!299 = !DILocation(line: 95, column: 3, scope: !128)
!300 = !DILocation(line: 95, column: 3, scope: !301)
!301 = distinct !DILexicalBlock(scope: !128, file: !2, line: 95, column: 3)
!302 = !DILocation(line: 95, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !301, file: !2, line: 95, column: 3)
!304 = !DILocation(line: 95, column: 3, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !2, line: 95, column: 3)
!306 = !DILocation(line: 95, column: 3, scope: !307)
!307 = distinct !DILexicalBlock(scope: !301, file: !2, line: 95, column: 3)
!308 = !DILocation(line: 95, column: 3, scope: !309)
!309 = distinct !DILexicalBlock(scope: !301, file: !2, line: 95, column: 3)
!310 = !DILocation(line: 95, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !301, file: !2, line: 95, column: 3)
!312 = !DILocation(line: 95, column: 3, scope: !313)
!313 = distinct !DILexicalBlock(scope: !301, file: !2, line: 95, column: 3)
!314 = !DILocation(line: 95, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !301, file: !2, line: 95, column: 3)
!316 = !DILocation(line: 95, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !301, file: !2, line: 95, column: 3)
!318 = !DILocation(line: 96, column: 3, scope: !128)
!319 = !DILocation(line: 96, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !128, file: !2, line: 96, column: 3)
!321 = !DILocation(line: 96, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !2, line: 96, column: 3)
!323 = !DILocation(line: 96, column: 3, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !2, line: 96, column: 3)
!325 = !DILocation(line: 96, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !320, file: !2, line: 96, column: 3)
!327 = !DILocation(line: 96, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !320, file: !2, line: 96, column: 3)
!329 = !DILocation(line: 96, column: 3, scope: !330)
!330 = distinct !DILexicalBlock(scope: !320, file: !2, line: 96, column: 3)
!331 = !DILocation(line: 96, column: 3, scope: !332)
!332 = distinct !DILexicalBlock(scope: !320, file: !2, line: 96, column: 3)
!333 = !DILocation(line: 96, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !320, file: !2, line: 96, column: 3)
!335 = !DILocation(line: 96, column: 3, scope: !336)
!336 = distinct !DILexicalBlock(scope: !320, file: !2, line: 96, column: 3)
!337 = !DILocation(line: 97, column: 3, scope: !128)
!338 = !DILocation(line: 97, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !128, file: !2, line: 97, column: 3)
!340 = !DILocation(line: 97, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !339, file: !2, line: 97, column: 3)
!342 = !DILocation(line: 97, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !2, line: 97, column: 3)
!344 = !DILocation(line: 97, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !2, line: 97, column: 3)
!346 = !DILocation(line: 97, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !2, line: 97, column: 3)
!348 = !DILocation(line: 97, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !339, file: !2, line: 97, column: 3)
!350 = !DILocation(line: 97, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !339, file: !2, line: 97, column: 3)
!352 = !DILocation(line: 97, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !339, file: !2, line: 97, column: 3)
!354 = !DILocation(line: 97, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !339, file: !2, line: 97, column: 3)
!356 = !DILocation(line: 102, column: 10, scope: !357)
!357 = distinct !DILexicalBlock(scope: !128, file: !2, line: 102, column: 3)
!358 = !DILocation(line: 102, column: 8, scope: !357)
!359 = !DILocation(line: 102, column: 15, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !2, line: 102, column: 3)
!361 = !DILocation(line: 102, column: 17, scope: !360)
!362 = !DILocation(line: 102, column: 3, scope: !357)
!363 = !DILocation(line: 103, column: 21, scope: !360)
!364 = !DILocation(line: 103, column: 19, scope: !360)
!365 = !DILocation(line: 103, column: 28, scope: !360)
!366 = !DILocation(line: 103, column: 30, scope: !360)
!367 = !DILocation(line: 103, column: 26, scope: !360)
!368 = !DILocation(line: 103, column: 24, scope: !360)
!369 = !DILocation(line: 103, column: 4, scope: !360)
!370 = !DILocation(line: 103, column: 11, scope: !360)
!371 = !DILocation(line: 103, column: 13, scope: !360)
!372 = !DILocation(line: 103, column: 16, scope: !360)
!373 = !DILocation(line: 102, column: 22, scope: !360)
!374 = !DILocation(line: 102, column: 3, scope: !360)
!375 = distinct !{!375, !362, !376, !377, !378}
!376 = !DILocation(line: 103, column: 33, scope: !357)
!377 = !{!"llvm.loop.mustprogress"}
!378 = !{!"llvm.loop.unroll.disable"}
!379 = !DILocation(line: 105, column: 9, scope: !128)
!380 = !DILocation(line: 106, column: 3, scope: !128)
!381 = distinct !{!381, !124, !382, !377, !378}
!382 = !DILocation(line: 107, column: 2, scope: !57)
!383 = !DILocation(line: 108, column: 1, scope: !57)
!384 = distinct !DISubprogram(name: "blake2s_increment_counter", scope: !2, file: !2, line: 32, type: !385, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !60, !87}
!387 = !{!388, !389}
!388 = !DILocalVariable(name: "state", arg: 1, scope: !384, file: !2, line: 32, type: !60)
!389 = !DILocalVariable(name: "inc", arg: 2, scope: !384, file: !2, line: 33, type: !87)
!390 = !DILocation(line: 32, column: 68, scope: !384)
!391 = !DILocation(line: 33, column: 21, scope: !384)
!392 = !DILocation(line: 35, column: 17, scope: !384)
!393 = !DILocation(line: 35, column: 2, scope: !384)
!394 = !DILocation(line: 35, column: 9, scope: !384)
!395 = !DILocation(line: 35, column: 14, scope: !384)
!396 = !DILocation(line: 36, column: 18, scope: !384)
!397 = !DILocation(line: 36, column: 25, scope: !384)
!398 = !DILocation(line: 36, column: 32, scope: !384)
!399 = !DILocation(line: 36, column: 30, scope: !384)
!400 = !DILocation(line: 36, column: 2, scope: !384)
!401 = !DILocation(line: 36, column: 9, scope: !384)
!402 = !DILocation(line: 36, column: 14, scope: !384)
!403 = !DILocation(line: 37, column: 1, scope: !384)
!404 = distinct !DISubprogram(name: "le32_to_cpu_array", scope: !405, file: !405, line: 160, type: !406, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !409)
!405 = !DIFile(filename: "./include/linux/byteorder/generic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8abdd24f6391da1376ccb2dfa1187698")
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408, !13}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!409 = !{!410, !411}
!410 = !DILocalVariable(name: "buf", arg: 1, scope: !404, file: !405, line: 160, type: !408)
!411 = !DILocalVariable(name: "words", arg: 2, scope: !404, file: !405, line: 160, type: !13)
!412 = !DILocation(line: 160, column: 43, scope: !404)
!413 = !DILocation(line: 160, column: 61, scope: !404)
!414 = !DILocation(line: 162, column: 2, scope: !404)
!415 = !DILocation(line: 162, column: 14, scope: !404)
!416 = !DILocation(line: 163, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !404, file: !405, line: 162, column: 18)
!418 = !DILocation(line: 163, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !417, file: !405, line: 163, column: 3)
!420 = !DILocation(line: 164, column: 6, scope: !417)
!421 = distinct !{!421, !414, !422, !377, !378}
!422 = !DILocation(line: 165, column: 2, scope: !404)
!423 = !DILocation(line: 166, column: 1, scope: !404)
!424 = distinct !DISubprogram(name: "ror32", scope: !425, file: !425, line: 135, type: !426, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !428)
!425 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!426 = !DISubroutineType(types: !427)
!427 = !{!66, !66, !13}
!428 = !{!429, !430}
!429 = !DILocalVariable(name: "word", arg: 1, scope: !424, file: !425, line: 135, type: !66)
!430 = !DILocalVariable(name: "shift", arg: 2, scope: !424, file: !425, line: 135, type: !13)
!431 = !DILocation(line: 135, column: 33, scope: !424)
!432 = !DILocation(line: 135, column: 52, scope: !424)
!433 = !DILocation(line: 137, column: 10, scope: !424)
!434 = !DILocation(line: 137, column: 19, scope: !424)
!435 = !DILocation(line: 137, column: 25, scope: !424)
!436 = !DILocation(line: 137, column: 15, scope: !424)
!437 = !DILocation(line: 137, column: 35, scope: !424)
!438 = !DILocation(line: 137, column: 46, scope: !424)
!439 = !DILocation(line: 137, column: 45, scope: !424)
!440 = !DILocation(line: 137, column: 53, scope: !424)
!441 = !DILocation(line: 137, column: 40, scope: !424)
!442 = !DILocation(line: 137, column: 32, scope: !424)
!443 = !DILocation(line: 137, column: 2, scope: !424)
