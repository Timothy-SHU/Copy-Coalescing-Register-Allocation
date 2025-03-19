; ModuleID = 'lib/crypto/blake2s.c'
source_filename = "lib/crypto/blake2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blake2s_update: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad blake2s_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blake2s_final: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad blake2s_final ; .previous"
module asm ".section\09\22.initcall6.init..kmod_libblake2s__197_69_blake2s_mod_init\22, \22a\22\09\09"
module asm "__initcall__kmod_libblake2s__197_69_blake2s_mod_init6:\09\09\09"
module asm ".long\09__initstub__kmod_libblake2s__197_69_blake2s_mod_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }

@__UNIQUE_ID___addressable_blake2s_update195 = internal global ptr @blake2s_update, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"lib/crypto/blake2s.c\00", align 1, !dbg !20
@__UNIQUE_ID___addressable_blake2s_final196 = internal global ptr @blake2s_final, section ".discard.addressable", align 8, !dbg !26
@__UNIQUE_ID___addressable___initstub__kmod_libblake2s__197_69_blake2s_mod_init6198 = internal global ptr @__initstub__kmod_libblake2s__197_69_blake2s_mod_init6, section ".discard.addressable", align 8, !dbg !28
@__UNIQUE_ID_description199 = internal constant [45 x i8] c"libblake2s.description=BLAKE2s hash function\00", section ".modinfo", align 1, !dbg !30
@__UNIQUE_ID_author200 = internal constant [55 x i8] c"libblake2s.author=Jason A. Donenfeld <Jason@zx2c4.com>\00", section ".modinfo", align 1, !dbg !36
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_blake2s_update195, ptr @__UNIQUE_ID___addressable_blake2s_final196, ptr @__UNIQUE_ID___addressable___initstub__kmod_libblake2s__197_69_blake2s_mod_init6198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_author200], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blake2s_update(ptr noundef %state, ptr noundef %in, i64 noundef %inlen) #0 align 16 !dbg !50 {
entry:
  %state.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  %fill = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %nblocks = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !87, metadata !DIExpression()), !dbg !95
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !88, metadata !DIExpression()), !dbg !96
  store i64 %inlen, ptr %inlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !89, metadata !DIExpression()), !dbg !97
  call void @llvm.lifetime.start.p0(i64 8, ptr %fill) #9, !dbg !98
  call void @llvm.dbg.declare(metadata ptr %fill, metadata !90, metadata !DIExpression()), !dbg !99
  %0 = load ptr, ptr %state.addr, align 8, !dbg !100
  %buflen = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 4, !dbg !101
  %1 = load i32, ptr %buflen, align 4, !dbg !101
  %sub = sub i32 64, %1, !dbg !102
  %conv = zext i32 %sub to i64, !dbg !103
  store i64 %conv, ptr %fill, align 8, !dbg !99
  %2 = load i64, ptr %inlen.addr, align 8, !dbg !104
  %tobool = icmp ne i64 %2, 0, !dbg !104
  %lnot = xor i1 %tobool, true, !dbg !104
  %lnot1 = xor i1 %lnot, true, !dbg !104
  %lnot2 = xor i1 %lnot1, true, !dbg !104
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !104
  %conv3 = sext i32 %lnot.ext to i64, !dbg !104
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !104
  %tobool4 = icmp ne i64 %expval, 0, !dbg !104
  br i1 %tobool4, label %if.then, label %if.end, !dbg !106

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !107

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %inlen.addr, align 8, !dbg !108
  %4 = load i64, ptr %fill, align 8, !dbg !110
  %cmp = icmp ugt i64 %3, %4, !dbg !111
  br i1 %cmp, label %if.then6, label %if.end13, !dbg !112

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %state.addr, align 8, !dbg !113
  %buf = getelementptr inbounds %struct.blake2s_state, ptr %5, i32 0, i32 3, !dbg !115
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0, !dbg !113
  %6 = load ptr, ptr %state.addr, align 8, !dbg !116
  %buflen7 = getelementptr inbounds %struct.blake2s_state, ptr %6, i32 0, i32 4, !dbg !117
  %7 = load i32, ptr %buflen7, align 4, !dbg !117
  %idx.ext = zext i32 %7 to i64, !dbg !118
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !118
  %8 = load ptr, ptr %in.addr, align 8, !dbg !119
  %9 = load i64, ptr %fill, align 8, !dbg !120
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %8, i64 %9, i1 false), !dbg !121
  %10 = load ptr, ptr %state.addr, align 8, !dbg !122
  %11 = load ptr, ptr %state.addr, align 8, !dbg !123
  %buf8 = getelementptr inbounds %struct.blake2s_state, ptr %11, i32 0, i32 3, !dbg !124
  %arraydecay9 = getelementptr inbounds [64 x i8], ptr %buf8, i64 0, i64 0, !dbg !123
  call void @blake2s_compress(ptr noundef %10, ptr noundef %arraydecay9, i64 noundef 1, i32 noundef 64) #10, !dbg !125
  %12 = load ptr, ptr %state.addr, align 8, !dbg !126
  %buflen10 = getelementptr inbounds %struct.blake2s_state, ptr %12, i32 0, i32 4, !dbg !127
  store i32 0, ptr %buflen10, align 4, !dbg !128
  %13 = load i64, ptr %fill, align 8, !dbg !129
  %14 = load ptr, ptr %in.addr, align 8, !dbg !130
  %add.ptr11 = getelementptr i8, ptr %14, i64 %13, !dbg !130
  store ptr %add.ptr11, ptr %in.addr, align 8, !dbg !130
  %15 = load i64, ptr %fill, align 8, !dbg !131
  %16 = load i64, ptr %inlen.addr, align 8, !dbg !132
  %sub12 = sub i64 %16, %15, !dbg !132
  store i64 %sub12, ptr %inlen.addr, align 8, !dbg !132
  br label %if.end13, !dbg !133

if.end13:                                         ; preds = %if.then6, %if.end
  %17 = load i64, ptr %inlen.addr, align 8, !dbg !134
  %cmp14 = icmp ugt i64 %17, 64, !dbg !135
  br i1 %cmp14, label %if.then16, label %if.end24, !dbg !136

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %nblocks) #9, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %nblocks, metadata !92, metadata !DIExpression()), !dbg !138
  %18 = load i64, ptr %inlen.addr, align 8, !dbg !139
  %add = add i64 %18, 64, !dbg !139
  %sub17 = sub i64 %add, 1, !dbg !139
  %div = udiv i64 %sub17, 64, !dbg !139
  store i64 %div, ptr %nblocks, align 8, !dbg !138
  %19 = load ptr, ptr %state.addr, align 8, !dbg !140
  %20 = load ptr, ptr %in.addr, align 8, !dbg !141
  %21 = load i64, ptr %nblocks, align 8, !dbg !142
  %sub18 = sub i64 %21, 1, !dbg !143
  call void @blake2s_compress(ptr noundef %19, ptr noundef %20, i64 noundef %sub18, i32 noundef 64) #10, !dbg !144
  %22 = load i64, ptr %nblocks, align 8, !dbg !145
  %sub19 = sub i64 %22, 1, !dbg !146
  %mul = mul i64 64, %sub19, !dbg !147
  %23 = load ptr, ptr %in.addr, align 8, !dbg !148
  %add.ptr20 = getelementptr i8, ptr %23, i64 %mul, !dbg !148
  store ptr %add.ptr20, ptr %in.addr, align 8, !dbg !148
  %24 = load i64, ptr %nblocks, align 8, !dbg !149
  %sub21 = sub i64 %24, 1, !dbg !150
  %mul22 = mul i64 64, %sub21, !dbg !151
  %25 = load i64, ptr %inlen.addr, align 8, !dbg !152
  %sub23 = sub i64 %25, %mul22, !dbg !152
  store i64 %sub23, ptr %inlen.addr, align 8, !dbg !152
  call void @llvm.lifetime.end.p0(i64 8, ptr %nblocks) #9, !dbg !153
  br label %if.end24, !dbg !154

if.end24:                                         ; preds = %if.then16, %if.end13
  %26 = load ptr, ptr %state.addr, align 8, !dbg !155
  %buf25 = getelementptr inbounds %struct.blake2s_state, ptr %26, i32 0, i32 3, !dbg !156
  %arraydecay26 = getelementptr inbounds [64 x i8], ptr %buf25, i64 0, i64 0, !dbg !155
  %27 = load ptr, ptr %state.addr, align 8, !dbg !157
  %buflen27 = getelementptr inbounds %struct.blake2s_state, ptr %27, i32 0, i32 4, !dbg !158
  %28 = load i32, ptr %buflen27, align 4, !dbg !158
  %idx.ext28 = zext i32 %28 to i64, !dbg !159
  %add.ptr29 = getelementptr i8, ptr %arraydecay26, i64 %idx.ext28, !dbg !159
  %29 = load ptr, ptr %in.addr, align 8, !dbg !160
  %30 = load i64, ptr %inlen.addr, align 8, !dbg !161
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr29, ptr align 1 %29, i64 %30, i1 false), !dbg !162
  %31 = load i64, ptr %inlen.addr, align 8, !dbg !163
  %32 = load ptr, ptr %state.addr, align 8, !dbg !164
  %buflen30 = getelementptr inbounds %struct.blake2s_state, ptr %32, i32 0, i32 4, !dbg !165
  %33 = load i32, ptr %buflen30, align 4, !dbg !166
  %conv31 = zext i32 %33 to i64, !dbg !166
  %add32 = add i64 %conv31, %31, !dbg !166
  %conv33 = trunc i64 %add32 to i32, !dbg !166
  store i32 %conv33, ptr %buflen30, align 4, !dbg !166
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !167
  br label %cleanup, !dbg !167

cleanup:                                          ; preds = %if.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fill) #9, !dbg !167
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !167

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !168 dso_local void @blake2s_compress(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blake2s_final(ptr noundef %state, ptr noundef %out) #0 align 16 !dbg !173 {
entry:
  %state.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !178, metadata !DIExpression()), !dbg !185
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !179, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !187
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !180, metadata !DIExpression()), !dbg !187
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !187
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !188
  %tobool = icmp ne i32 %0, 0, !dbg !188
  %lnot = xor i1 %tobool, true, !dbg !188
  %lnot1 = xor i1 %lnot, true, !dbg !188
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !188
  %conv = sext i32 %lnot.ext to i64, !dbg !188
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !188
  %tobool2 = icmp ne i64 %expval, 0, !dbg !188
  br i1 %tobool2, label %if.then, label %if.end, !dbg !187

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !188

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !182, metadata !DIExpression()), !dbg !189
  store i32 2305, ptr %__flags, align 4, !dbg !189
  br label %do.body3, !dbg !189

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !190

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !190

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !189

do.body4:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !192
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 50, i32 %1, i64 12) #9, !dbg !192, !srcloc !194
  br label %do.cond5, !dbg !192

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !192

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !189

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !195

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !195

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !188
  br label %do.cond10, !dbg !189

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !189

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !189

if.end:                                           ; preds = %do.end11, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !187
  %tobool12 = icmp ne i32 %2, 0, !dbg !187
  %lnot13 = xor i1 %tobool12, true, !dbg !187
  %lnot15 = xor i1 %lnot13, true, !dbg !187
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !187
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !187
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !187
  store i64 %expval18, ptr %tmp, align 8, !dbg !188
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !197
  %3 = load i64, ptr %tmp, align 8, !dbg !187
  %4 = load ptr, ptr %state.addr, align 8, !dbg !198
  call void @blake2s_set_lastblock(ptr noundef %4) #10, !dbg !199
  %5 = load ptr, ptr %state.addr, align 8, !dbg !200
  %buf = getelementptr inbounds %struct.blake2s_state, ptr %5, i32 0, i32 3, !dbg !201
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0, !dbg !200
  %6 = load ptr, ptr %state.addr, align 8, !dbg !202
  %buflen = getelementptr inbounds %struct.blake2s_state, ptr %6, i32 0, i32 4, !dbg !203
  %7 = load i32, ptr %buflen, align 4, !dbg !203
  %idx.ext = zext i32 %7 to i64, !dbg !204
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !204
  %8 = load ptr, ptr %state.addr, align 8, !dbg !205
  %buflen19 = getelementptr inbounds %struct.blake2s_state, ptr %8, i32 0, i32 4, !dbg !206
  %9 = load i32, ptr %buflen19, align 4, !dbg !206
  %sub = sub i32 64, %9, !dbg !207
  %conv20 = zext i32 %sub to i64, !dbg !208
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv20, i1 false), !dbg !209
  %10 = load ptr, ptr %state.addr, align 8, !dbg !210
  %11 = load ptr, ptr %state.addr, align 8, !dbg !211
  %buf21 = getelementptr inbounds %struct.blake2s_state, ptr %11, i32 0, i32 3, !dbg !212
  %arraydecay22 = getelementptr inbounds [64 x i8], ptr %buf21, i64 0, i64 0, !dbg !211
  %12 = load ptr, ptr %state.addr, align 8, !dbg !213
  %buflen23 = getelementptr inbounds %struct.blake2s_state, ptr %12, i32 0, i32 4, !dbg !214
  %13 = load i32, ptr %buflen23, align 4, !dbg !214
  call void @blake2s_compress(ptr noundef %10, ptr noundef %arraydecay22, i64 noundef 1, i32 noundef %13) #10, !dbg !215
  %14 = load ptr, ptr %state.addr, align 8, !dbg !216
  %h = getelementptr inbounds %struct.blake2s_state, ptr %14, i32 0, i32 0, !dbg !217
  %arraydecay24 = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 0, !dbg !216
  call void @cpu_to_le32_array(ptr noundef %arraydecay24, i32 noundef 8) #10, !dbg !218
  %15 = load ptr, ptr %out.addr, align 8, !dbg !219
  %16 = load ptr, ptr %state.addr, align 8, !dbg !220
  %h25 = getelementptr inbounds %struct.blake2s_state, ptr %16, i32 0, i32 0, !dbg !221
  %arraydecay26 = getelementptr inbounds [8 x i32], ptr %h25, i64 0, i64 0, !dbg !222
  %17 = load ptr, ptr %state.addr, align 8, !dbg !223
  %outlen = getelementptr inbounds %struct.blake2s_state, ptr %17, i32 0, i32 5, !dbg !224
  %18 = load i32, ptr %outlen, align 4, !dbg !224
  %conv27 = zext i32 %18 to i64, !dbg !223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 4 %arraydecay26, i64 %conv27, i1 false), !dbg !222
  %19 = load ptr, ptr %state.addr, align 8, !dbg !225
  call void @memzero_explicit(ptr noundef %19, i64 noundef 120) #10, !dbg !226
  ret void, !dbg !227
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @blake2s_set_lastblock(ptr noundef %state) #6 align 16 !dbg !228 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load ptr, ptr %state.addr, align 8, !dbg !234
  %f = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 2, !dbg !235
  %arrayidx = getelementptr [2 x i32], ptr %f, i64 0, i64 0, !dbg !234
  store i32 -1, ptr %arrayidx, align 4, !dbg !236
  ret void, !dbg !237
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_to_le32_array(ptr noundef %buf, i32 noundef %words) #6 align 16 !dbg !238 {
entry:
  %buf.addr = alloca ptr, align 8
  %words.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !244, metadata !DIExpression()), !dbg !246
  store i32 %words, ptr %words.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %words.addr, metadata !245, metadata !DIExpression()), !dbg !247
  br label %while.cond, !dbg !248

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, ptr %words.addr, align 4, !dbg !249
  %dec = add i32 %0, -1, !dbg !249
  store i32 %dec, ptr %words.addr, align 4, !dbg !249
  %tobool = icmp ne i32 %0, 0, !dbg !248
  br i1 %tobool, label %while.body, label %while.end, !dbg !248

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !250

do.body:                                          ; preds = %while.body
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !252
  br label %do.end, !dbg !252

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !254
  %incdec.ptr = getelementptr i32, ptr %2, i32 1, !dbg !254
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !254
  br label %while.cond, !dbg !248, !llvm.loop !255

while.end:                                        ; preds = %while.cond
  ret void, !dbg !259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #6 align 16 !dbg !260 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !265, metadata !DIExpression()), !dbg !267
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !266, metadata !DIExpression()), !dbg !268
  %0 = load ptr, ptr %s.addr, align 8, !dbg !269
  %1 = load i64, ptr %count.addr, align 8, !dbg !270
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !271
  %2 = load ptr, ptr %s.addr, align 8, !dbg !272
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #9, !dbg !272, !srcloc !273
  ret void, !dbg !274
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_libblake2s__197_69_blake2s_mod_init6() #8 section ".init.text" align 16 !dbg !275 {
entry:
  %call = call i32 @blake2s_mod_init() #11, !dbg !278
  ret i32 %call, !dbg !278
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @blake2s_mod_init() #8 section ".init.text" align 16 !dbg !279 {
entry:
  ret i32 0, !dbg !280
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blake2s_update195", scope: !2, file: !3, line: 46, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.blake2s.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/libblake2s\22 -D KBUILD_BASENAME=\22blake2s\22 -D KBUILD_MODNAME=\22libblake2s\22 -D __KBUILD_MODNAME=kmod_libblake2s -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/blake2s.ll lib/crypto/blake2s.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/blake2s.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e1bfffc692c55c490b5fab5066c55a1")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blake2s_lengths", file: !6, line: 14, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/crypto/blake2s.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65c97fb14affe00956794dc548629cd3")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "BLAKE2S_BLOCK_SIZE", value: 64)
!10 = !DIEnumerator(name: "BLAKE2S_HASH_SIZE", value: 32)
!11 = !DIEnumerator(name: "BLAKE2S_KEY_SIZE", value: 32)
!12 = !DIEnumerator(name: "BLAKE2S_128_HASH_SIZE", value: 16)
!13 = !DIEnumerator(name: "BLAKE2S_160_HASH_SIZE", value: 20)
!14 = !DIEnumerator(name: "BLAKE2S_224_HASH_SIZE", value: 28)
!15 = !DIEnumerator(name: "BLAKE2S_256_HASH_SIZE", value: 32)
!16 = !{!17, !18}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!0, !20, !26, !28, !30, !36}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 168, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !{!25}
!25 = !DISubrange(count: 21)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blake2s_final196", scope: !2, file: !3, line: 59, type: !17, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_libblake2s__197_69_blake2s_mod_init6198", scope: !2, file: !3, line: 69, type: !17, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description199", scope: !2, file: !3, line: 70, type: !32, isLocal: true, isDefinition: true, align: 8)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 360, elements: !34)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!34 = !{!35}
!35 = !DISubrange(count: 45)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author200", scope: !2, file: !3, line: 71, type: !38, isLocal: true, isDefinition: true, align: 8)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 440, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 55)
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 8, !"cf-protection-branch", i32 1}
!45 = !{i32 4, !"function_return_thunk_extern", i32 1}
!46 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!47 = !{i32 1, !"Code Model", i32 2}
!48 = !{i32 1, !"override-stack-alignment", i32 8}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = distinct !DISubprogram(name: "blake2s_update", scope: !3, file: !3, line: 24, type: !51, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !86)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !78, !80}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blake2s_state", file: !6, line: 25, size: 960, elements: !55)
!55 = !{!56, !64, !68, !69, !76, !77}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !54, file: !6, line: 27, baseType: !57, size: 256)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !62)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !59, line: 21, baseType: !60)
!59 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !61, line: 27, baseType: !7)
!61 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!62 = !{!63}
!63 = !DISubrange(count: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !54, file: !6, line: 28, baseType: !65, size: 64, offset: 256)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 2)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !54, file: !6, line: 29, baseType: !65, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !54, file: !6, line: 30, baseType: !70, size: 512, offset: 384)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 512, elements: !74)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !59, line: 17, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !61, line: 21, baseType: !73)
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !{!75}
!75 = !DISubrange(count: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !54, file: !6, line: 31, baseType: !7, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "outlen", scope: !54, file: !6, line: 32, baseType: !7, size: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 61, baseType: !82)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !83, line: 72, baseType: !84)
!83 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !83, line: 16, baseType: !85)
!85 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!86 = !{!87, !88, !89, !90, !92}
!87 = !DILocalVariable(name: "state", arg: 1, scope: !50, file: !3, line: 24, type: !53)
!88 = !DILocalVariable(name: "in", arg: 2, scope: !50, file: !3, line: 24, type: !78)
!89 = !DILocalVariable(name: "inlen", arg: 3, scope: !50, file: !3, line: 24, type: !80)
!90 = !DILocalVariable(name: "fill", scope: !50, file: !3, line: 26, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!92 = !DILocalVariable(name: "nblocks", scope: !93, file: !3, line: 38, type: !91)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 37, column: 34)
!94 = distinct !DILexicalBlock(scope: !50, file: !3, line: 37, column: 6)
!95 = !DILocation(line: 24, column: 43, scope: !50)
!96 = !DILocation(line: 24, column: 60, scope: !50)
!97 = !DILocation(line: 24, column: 71, scope: !50)
!98 = !DILocation(line: 26, column: 2, scope: !50)
!99 = !DILocation(line: 26, column: 15, scope: !50)
!100 = !DILocation(line: 26, column: 43, scope: !50)
!101 = !DILocation(line: 26, column: 50, scope: !50)
!102 = !DILocation(line: 26, column: 41, scope: !50)
!103 = !DILocation(line: 26, column: 22, scope: !50)
!104 = !DILocation(line: 28, column: 6, scope: !105)
!105 = distinct !DILexicalBlock(scope: !50, file: !3, line: 28, column: 6)
!106 = !DILocation(line: 28, column: 6, scope: !50)
!107 = !DILocation(line: 29, column: 3, scope: !105)
!108 = !DILocation(line: 30, column: 6, scope: !109)
!109 = distinct !DILexicalBlock(scope: !50, file: !3, line: 30, column: 6)
!110 = !DILocation(line: 30, column: 14, scope: !109)
!111 = !DILocation(line: 30, column: 12, scope: !109)
!112 = !DILocation(line: 30, column: 6, scope: !50)
!113 = !DILocation(line: 31, column: 10, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !3, line: 30, column: 20)
!115 = !DILocation(line: 31, column: 17, scope: !114)
!116 = !DILocation(line: 31, column: 23, scope: !114)
!117 = !DILocation(line: 31, column: 30, scope: !114)
!118 = !DILocation(line: 31, column: 21, scope: !114)
!119 = !DILocation(line: 31, column: 38, scope: !114)
!120 = !DILocation(line: 31, column: 42, scope: !114)
!121 = !DILocation(line: 31, column: 3, scope: !114)
!122 = !DILocation(line: 32, column: 20, scope: !114)
!123 = !DILocation(line: 32, column: 27, scope: !114)
!124 = !DILocation(line: 32, column: 34, scope: !114)
!125 = !DILocation(line: 32, column: 3, scope: !114)
!126 = !DILocation(line: 33, column: 3, scope: !114)
!127 = !DILocation(line: 33, column: 10, scope: !114)
!128 = !DILocation(line: 33, column: 17, scope: !114)
!129 = !DILocation(line: 34, column: 9, scope: !114)
!130 = !DILocation(line: 34, column: 6, scope: !114)
!131 = !DILocation(line: 35, column: 12, scope: !114)
!132 = !DILocation(line: 35, column: 9, scope: !114)
!133 = !DILocation(line: 36, column: 2, scope: !114)
!134 = !DILocation(line: 37, column: 6, scope: !94)
!135 = !DILocation(line: 37, column: 12, scope: !94)
!136 = !DILocation(line: 37, column: 6, scope: !50)
!137 = !DILocation(line: 38, column: 3, scope: !93)
!138 = !DILocation(line: 38, column: 16, scope: !93)
!139 = !DILocation(line: 38, column: 26, scope: !93)
!140 = !DILocation(line: 39, column: 20, scope: !93)
!141 = !DILocation(line: 39, column: 27, scope: !93)
!142 = !DILocation(line: 39, column: 31, scope: !93)
!143 = !DILocation(line: 39, column: 39, scope: !93)
!144 = !DILocation(line: 39, column: 3, scope: !93)
!145 = !DILocation(line: 40, column: 31, scope: !93)
!146 = !DILocation(line: 40, column: 39, scope: !93)
!147 = !DILocation(line: 40, column: 28, scope: !93)
!148 = !DILocation(line: 40, column: 6, scope: !93)
!149 = !DILocation(line: 41, column: 34, scope: !93)
!150 = !DILocation(line: 41, column: 42, scope: !93)
!151 = !DILocation(line: 41, column: 31, scope: !93)
!152 = !DILocation(line: 41, column: 9, scope: !93)
!153 = !DILocation(line: 42, column: 2, scope: !94)
!154 = !DILocation(line: 42, column: 2, scope: !93)
!155 = !DILocation(line: 43, column: 9, scope: !50)
!156 = !DILocation(line: 43, column: 16, scope: !50)
!157 = !DILocation(line: 43, column: 22, scope: !50)
!158 = !DILocation(line: 43, column: 29, scope: !50)
!159 = !DILocation(line: 43, column: 20, scope: !50)
!160 = !DILocation(line: 43, column: 37, scope: !50)
!161 = !DILocation(line: 43, column: 41, scope: !50)
!162 = !DILocation(line: 43, column: 2, scope: !50)
!163 = !DILocation(line: 44, column: 19, scope: !50)
!164 = !DILocation(line: 44, column: 2, scope: !50)
!165 = !DILocation(line: 44, column: 9, scope: !50)
!166 = !DILocation(line: 44, column: 16, scope: !50)
!167 = !DILocation(line: 45, column: 1, scope: !50)
!168 = !DISubprogram(name: "blake2s_compress", scope: !169, file: !169, line: 16, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DIFile(filename: "./include/crypto/internal/blake2s.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b8985ab839cf2c59eb7a704db1aec07c")
!170 = !DISubroutineType(types: !171)
!171 = !{null, !53, !78, !80, !172}
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!173 = distinct !DISubprogram(name: "blake2s_final", scope: !3, file: !3, line: 48, type: !174, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !53, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!177 = !{!178, !179, !180, !182}
!178 = !DILocalVariable(name: "state", arg: 1, scope: !173, file: !3, line: 48, type: !53)
!179 = !DILocalVariable(name: "out", arg: 2, scope: !173, file: !3, line: 48, type: !176)
!180 = !DILocalVariable(name: "__ret_warn_on", scope: !181, file: !3, line: 50, type: !18)
!181 = distinct !DILexicalBlock(scope: !173, file: !3, line: 50, column: 2)
!182 = !DILocalVariable(name: "__flags", scope: !183, file: !3, line: 50, type: !18)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 50, column: 2)
!184 = distinct !DILexicalBlock(scope: !181, file: !3, line: 50, column: 2)
!185 = !DILocation(line: 48, column: 42, scope: !173)
!186 = !DILocation(line: 48, column: 53, scope: !173)
!187 = !DILocation(line: 50, column: 2, scope: !181)
!188 = !DILocation(line: 50, column: 2, scope: !184)
!189 = !DILocation(line: 50, column: 2, scope: !183)
!190 = !DILocation(line: 50, column: 2, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !3, line: 50, column: 2)
!192 = !DILocation(line: 50, column: 2, scope: !193)
!193 = distinct !DILexicalBlock(scope: !183, file: !3, line: 50, column: 2)
!194 = !{i64 2152258783, i64 2152258812, i64 2152258858, i64 2152258916, i64 2152258970, i64 2152259024, i64 2152259079, i64 2152259110, i64 2152259418, i64 2152259424, i64 2152259471, i64 2152259494, i64 2152259520}
!195 = !DILocation(line: 50, column: 2, scope: !196)
!196 = distinct !DILexicalBlock(scope: !183, file: !3, line: 50, column: 2)
!197 = !DILocation(line: 50, column: 2, scope: !173)
!198 = !DILocation(line: 51, column: 24, scope: !173)
!199 = !DILocation(line: 51, column: 2, scope: !173)
!200 = !DILocation(line: 52, column: 9, scope: !173)
!201 = !DILocation(line: 52, column: 16, scope: !173)
!202 = !DILocation(line: 52, column: 22, scope: !173)
!203 = !DILocation(line: 52, column: 29, scope: !173)
!204 = !DILocation(line: 52, column: 20, scope: !173)
!205 = !DILocation(line: 53, column: 30, scope: !173)
!206 = !DILocation(line: 53, column: 37, scope: !173)
!207 = !DILocation(line: 53, column: 28, scope: !173)
!208 = !DILocation(line: 53, column: 9, scope: !173)
!209 = !DILocation(line: 52, column: 2, scope: !173)
!210 = !DILocation(line: 54, column: 19, scope: !173)
!211 = !DILocation(line: 54, column: 26, scope: !173)
!212 = !DILocation(line: 54, column: 33, scope: !173)
!213 = !DILocation(line: 54, column: 41, scope: !173)
!214 = !DILocation(line: 54, column: 48, scope: !173)
!215 = !DILocation(line: 54, column: 2, scope: !173)
!216 = !DILocation(line: 55, column: 20, scope: !173)
!217 = !DILocation(line: 55, column: 27, scope: !173)
!218 = !DILocation(line: 55, column: 2, scope: !173)
!219 = !DILocation(line: 56, column: 9, scope: !173)
!220 = !DILocation(line: 56, column: 14, scope: !173)
!221 = !DILocation(line: 56, column: 21, scope: !173)
!222 = !DILocation(line: 56, column: 2, scope: !173)
!223 = !DILocation(line: 56, column: 24, scope: !173)
!224 = !DILocation(line: 56, column: 31, scope: !173)
!225 = !DILocation(line: 57, column: 19, scope: !173)
!226 = !DILocation(line: 57, column: 2, scope: !173)
!227 = !DILocation(line: 58, column: 1, scope: !173)
!228 = distinct !DISubprogram(name: "blake2s_set_lastblock", scope: !3, file: !3, line: 19, type: !229, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !53}
!231 = !{!232}
!232 = !DILocalVariable(name: "state", arg: 1, scope: !228, file: !3, line: 19, type: !53)
!233 = !DILocation(line: 19, column: 64, scope: !228)
!234 = !DILocation(line: 21, column: 2, scope: !228)
!235 = !DILocation(line: 21, column: 9, scope: !228)
!236 = !DILocation(line: 21, column: 14, scope: !228)
!237 = !DILocation(line: 22, column: 1, scope: !228)
!238 = distinct !DISubprogram(name: "cpu_to_le32_array", scope: !239, file: !239, line: 168, type: !240, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!239 = !DIFile(filename: "./include/linux/byteorder/generic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8abdd24f6391da1376ccb2dfa1187698")
!240 = !DISubroutineType(types: !241)
!241 = !{null, !242, !7}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "buf", arg: 1, scope: !238, file: !239, line: 168, type: !242)
!245 = !DILocalVariable(name: "words", arg: 2, scope: !238, file: !239, line: 168, type: !7)
!246 = !DILocation(line: 168, column: 43, scope: !238)
!247 = !DILocation(line: 168, column: 61, scope: !238)
!248 = !DILocation(line: 170, column: 2, scope: !238)
!249 = !DILocation(line: 170, column: 14, scope: !238)
!250 = !DILocation(line: 171, column: 3, scope: !251)
!251 = distinct !DILexicalBlock(scope: !238, file: !239, line: 170, column: 18)
!252 = !DILocation(line: 171, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !239, line: 171, column: 3)
!254 = !DILocation(line: 172, column: 6, scope: !251)
!255 = distinct !{!255, !248, !256, !257, !258}
!256 = !DILocation(line: 173, column: 2, scope: !238)
!257 = !{!"llvm.loop.mustprogress"}
!258 = !{!"llvm.loop.unroll.disable"}
!259 = !DILocation(line: 174, column: 1, scope: !238)
!260 = distinct !DISubprogram(name: "memzero_explicit", scope: !261, file: !261, line: 276, type: !262, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!261 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!262 = !DISubroutineType(types: !263)
!263 = !{null, !17, !80}
!264 = !{!265, !266}
!265 = !DILocalVariable(name: "s", arg: 1, scope: !260, file: !261, line: 276, type: !17)
!266 = !DILocalVariable(name: "count", arg: 2, scope: !260, file: !261, line: 276, type: !80)
!267 = !DILocation(line: 276, column: 43, scope: !260)
!268 = !DILocation(line: 276, column: 53, scope: !260)
!269 = !DILocation(line: 278, column: 9, scope: !260)
!270 = !DILocation(line: 278, column: 15, scope: !260)
!271 = !DILocation(line: 278, column: 2, scope: !260)
!272 = !DILocation(line: 279, column: 2, scope: !260)
!273 = !{i64 2147880455}
!274 = !DILocation(line: 280, column: 1, scope: !260)
!275 = distinct !DISubprogram(name: "__initstub__kmod_libblake2s__197_69_blake2s_mod_init6", scope: !3, file: !3, line: 69, type: !276, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!276 = !DISubroutineType(types: !277)
!277 = !{!18}
!278 = !DILocation(line: 69, column: 1, scope: !275)
!279 = distinct !DISubprogram(name: "blake2s_mod_init", scope: !3, file: !3, line: 61, type: !276, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!280 = !DILocation(line: 66, column: 2, scope: !279)
