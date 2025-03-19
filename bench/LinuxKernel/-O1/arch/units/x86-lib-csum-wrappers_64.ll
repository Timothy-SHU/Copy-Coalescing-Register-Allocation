; ModuleID = 'arch/x86/lib/csum-wrappers_64.c'
source_filename = "arch/x86/lib/csum-wrappers_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_csum_partial_copy_nocheck: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad csum_partial_copy_nocheck ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_csum_ipv6_magic: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad csum_ipv6_magic ; .previous"

%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }

@__UNIQUE_ID___addressable_csum_partial_copy_nocheck177 = internal global ptr @csum_partial_copy_nocheck, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_csum_ipv6_magic178 = internal global ptr @csum_ipv6_magic, section ".discard.addressable", align 8, !dbg !25
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !27
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_csum_partial_copy_nocheck177, ptr @__UNIQUE_ID___addressable_csum_ipv6_magic178, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @csum_and_copy_from_user(ptr noundef %src, ptr noundef %dst, i32 noundef %len) #0 align 16 !dbg !42 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !47, metadata !DIExpression()), !dbg !51
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !48, metadata !DIExpression()), !dbg !52
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !49, metadata !DIExpression()), !dbg !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #8, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !50, metadata !DIExpression()), !dbg !55
  br label %do.body, !dbg !56

do.body:                                          ; preds = %entry
  call void @might_resched() #9, !dbg !57
  br label %do.cond, !dbg !57

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !57

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %src.addr, align 8, !dbg !59
  %1 = load i32, ptr %len.addr, align 4, !dbg !59
  %conv = sext i32 %1 to i64, !dbg !59
  %call = call zeroext i1 @user_access_begin(ptr noundef %0, i64 noundef %conv) #9, !dbg !59
  br i1 %call, label %if.end, label %if.then, !dbg !61

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !62
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !62

if.end:                                           ; preds = %do.end
  %2 = load ptr, ptr %src.addr, align 8, !dbg !63
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !64
  %4 = load i32, ptr %len.addr, align 4, !dbg !65
  %call1 = call i32 @csum_partial_copy_generic(ptr noundef %2, ptr noundef %3, i32 noundef %4) #9, !dbg !66
  store i32 %call1, ptr %sum, align 4, !dbg !67
  call void @clac() #9, !dbg !68
  %5 = load i32, ptr %sum, align 4, !dbg !69
  store i32 %5, ptr %retval, align 4, !dbg !70
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !70

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #8, !dbg !71
  %6 = load i32, ptr %retval, align 4, !dbg !71
  ret i32 %6, !dbg !71
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #3 align 16 !dbg !29 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !72
  %0 = load ptr, ptr %tmp, align 8, !dbg !72
  %call = call i32 %0() #9, !dbg !74
  ret void, !dbg !75
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_access_begin(ptr noundef %ptr, i64 noundef %len) #3 align 16 !dbg !76 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !88, metadata !DIExpression()), !dbg !90
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !89, metadata !DIExpression()), !dbg !91
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !92
  %1 = load i64, ptr %len.addr, align 8, !dbg !92
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #9, !dbg !92
  %lnot = xor i1 %call, true, !dbg !92
  %lnot1 = xor i1 %lnot, true, !dbg !92
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !92
  %conv = sext i32 %lnot.ext to i64, !dbg !92
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !92
  %tobool = icmp ne i64 %expval, 0, !dbg !92
  %lnot2 = xor i1 %tobool, true, !dbg !92
  %lnot4 = xor i1 %lnot2, true, !dbg !92
  %lnot6 = xor i1 %lnot4, true, !dbg !92
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !92
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !92
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !92
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !92
  br i1 %tobool10, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !95
  br label %return, !dbg !95

if.end:                                           ; preds = %entry
  call void @stac() #9, !dbg !96
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !96, !srcloc !98
  store i1 true, ptr %retval, align 1, !dbg !99
  br label %return, !dbg !99

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !100
  ret i1 %2, !dbg !100
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !101 dso_local i32 @csum_partial_copy_generic(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #3 align 16 !dbg !103 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !105, !srcloc !106
  ret void, !dbg !107
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @csum_and_copy_to_user(ptr noundef %src, ptr noundef %dst, i32 noundef %len) #0 align 16 !dbg !108 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !110, metadata !DIExpression()), !dbg !114
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !111, metadata !DIExpression()), !dbg !115
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !112, metadata !DIExpression()), !dbg !116
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #8, !dbg !117
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !113, metadata !DIExpression()), !dbg !118
  br label %do.body, !dbg !119

do.body:                                          ; preds = %entry
  call void @might_resched() #9, !dbg !120
  br label %do.cond, !dbg !120

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !120

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !122
  %1 = load i32, ptr %len.addr, align 4, !dbg !122
  %conv = sext i32 %1 to i64, !dbg !122
  %call = call zeroext i1 @user_access_begin(ptr noundef %0, i64 noundef %conv) #9, !dbg !122
  br i1 %call, label %if.end, label %if.then, !dbg !124

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !125

if.end:                                           ; preds = %do.end
  %2 = load ptr, ptr %src.addr, align 8, !dbg !126
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !127
  %4 = load i32, ptr %len.addr, align 4, !dbg !128
  %call1 = call i32 @csum_partial_copy_generic(ptr noundef %2, ptr noundef %3, i32 noundef %4) #9, !dbg !129
  store i32 %call1, ptr %sum, align 4, !dbg !130
  call void @clac() #9, !dbg !131
  %5 = load i32, ptr %sum, align 4, !dbg !132
  store i32 %5, ptr %retval, align 4, !dbg !133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !133

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #8, !dbg !134
  %6 = load i32, ptr %retval, align 4, !dbg !134
  ret i32 %6, !dbg !134
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @csum_partial_copy_nocheck(ptr noundef %src, ptr noundef %dst, i32 noundef %len) #0 align 16 !dbg !135 {
entry:
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !137, metadata !DIExpression()), !dbg !140
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !138, metadata !DIExpression()), !dbg !141
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !139, metadata !DIExpression()), !dbg !142
  %0 = load ptr, ptr %src.addr, align 8, !dbg !143
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !144
  %2 = load i32, ptr %len.addr, align 4, !dbg !145
  %call = call i32 @csum_partial_copy_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9, !dbg !146
  ret i32 %call, !dbg !147
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %len, i8 noundef zeroext %proto, i32 noundef %sum) #0 align 16 !dbg !148 {
entry:
  %saddr.addr = alloca ptr, align 8
  %daddr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %proto.addr = alloca i8, align 1
  %sum.addr = alloca i32, align 4
  %rest = alloca i64, align 8
  %sum64 = alloca i64, align 8
  store ptr %saddr, ptr %saddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %saddr.addr, metadata !157, metadata !DIExpression()), !dbg !164
  store ptr %daddr, ptr %daddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %daddr.addr, metadata !158, metadata !DIExpression()), !dbg !165
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !159, metadata !DIExpression()), !dbg !166
  store i8 %proto, ptr %proto.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %proto.addr, metadata !160, metadata !DIExpression()), !dbg !167
  store i32 %sum, ptr %sum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sum.addr, metadata !161, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 8, ptr %rest) #8, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %rest, metadata !162, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum64) #8, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %sum64, metadata !163, metadata !DIExpression()), !dbg !171
  %0 = load i32, ptr %len.addr, align 4, !dbg !172
  %1 = call i32 @llvm.bswap.i32(i32 %0), !dbg !172
  %conv = zext i32 %1 to i64, !dbg !173
  %2 = load i8, ptr %proto.addr, align 1, !dbg !174
  %conv1 = zext i8 %2 to i16, !dbg !174
  %3 = call i16 @llvm.bswap.i16(i16 %conv1), !dbg !174
  %conv2 = zext i16 %3 to i64, !dbg !175
  %add = add i64 %conv, %conv2, !dbg !176
  %4 = load i32, ptr %sum.addr, align 4, !dbg !177
  %conv3 = zext i32 %4 to i64, !dbg !178
  %add4 = add i64 %add, %conv3, !dbg !179
  store i64 %add4, ptr %rest, align 8, !dbg !180
  %5 = load i64, ptr %rest, align 8, !dbg !181
  %6 = load ptr, ptr %saddr.addr, align 8, !dbg !182
  %7 = load ptr, ptr %daddr.addr, align 8, !dbg !183
  %8 = call i64 asm "\09addq ($2),$0\0A\09adcq 8($2),$0\0A\09adcq ($3),$0\0A\09adcq 8($3),$0\0A\09adcq $$0,$0\0A", "=r,0,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %5, ptr %6, ptr %7) #10, !dbg !184, !srcloc !185
  store i64 %8, ptr %sum64, align 8, !dbg !184
  %9 = load i64, ptr %sum64, align 8, !dbg !186
  %and = and i64 %9, 4294967295, !dbg !187
  %conv5 = trunc i64 %and to i32, !dbg !186
  %10 = load i64, ptr %sum64, align 8, !dbg !188
  %shr = lshr i64 %10, 32, !dbg !189
  %conv6 = trunc i64 %shr to i32, !dbg !188
  %call = call i32 @add32_with_carry(i32 noundef %conv5, i32 noundef %conv6) #9, !dbg !190
  %call7 = call zeroext i16 @csum_fold(i32 noundef %call) #9, !dbg !191
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum64) #8, !dbg !192
  call void @llvm.lifetime.end.p0(i64 8, ptr %rest) #8, !dbg !192
  ret i16 %call7, !dbg !193
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @csum_fold(i32 noundef %sum) #5 align 16 !dbg !194 {
entry:
  %sum.addr = alloca i32, align 4
  store i32 %sum, ptr %sum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sum.addr, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = load i32, ptr %sum.addr, align 4, !dbg !200
  %shl = shl i32 %0, 16, !dbg !201
  %1 = load i32, ptr %sum.addr, align 4, !dbg !202
  %and = and i32 %1, -65536, !dbg !203
  %2 = call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %shl, i32 %and) #10, !dbg !204, !srcloc !205
  store i32 %2, ptr %sum.addr, align 4, !dbg !204
  %3 = load i32, ptr %sum.addr, align 4, !dbg !206
  %not = xor i32 %3, -1, !dbg !207
  %shr = lshr i32 %not, 16, !dbg !208
  %conv = trunc i32 %shr to i16, !dbg !209
  ret i16 %conv, !dbg !210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add32_with_carry(i32 noundef %a, i32 noundef %b) #5 align 16 !dbg !211 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !215, metadata !DIExpression()), !dbg !217
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !216, metadata !DIExpression()), !dbg !218
  %0 = load i32, ptr %a.addr, align 4, !dbg !219
  %1 = load i32, ptr %b.addr, align 4, !dbg !220
  %2 = call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #11, !dbg !221, !srcloc !222
  store i32 %2, ptr %a.addr, align 4, !dbg !221
  %3 = load i32, ptr %a.addr, align 4, !dbg !223
  ret i32 %3, !dbg !224
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #5 align 16 !dbg !225 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !230, metadata !DIExpression()), !dbg !235
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !231, metadata !DIExpression()), !dbg !236
  %0 = load i64, ptr %size.addr, align 8, !dbg !237
  %cmp = icmp ule i64 %0, 4096, !dbg !238
  %conv = zext i1 %cmp to i32, !dbg !238
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !239
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !240

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !241
  %cmp1 = icmp ule i64 %2, 4096, !dbg !242
  br i1 %cmp1, label %if.then, label %if.else, !dbg !243

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !244
  %4 = ptrtoint ptr %3 to i64, !dbg !244
  %cmp3 = icmp sge i64 %4, 0, !dbg !244
  store i1 %cmp3, ptr %retval, align 1, !dbg !246
  br label %return, !dbg !246

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #8, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !232, metadata !DIExpression()), !dbg !248
  %5 = load i64, ptr %size.addr, align 8, !dbg !249
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !250
  %7 = ptrtoint ptr %6 to i64, !dbg !251
  %add = add i64 %5, %7, !dbg !252
  store i64 %add, ptr %sum, align 8, !dbg !248
  %8 = load i64, ptr %sum, align 8, !dbg !253
  %cmp5 = icmp sge i64 %8, 0, !dbg !253
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !254

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !255
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !256
  %11 = ptrtoint ptr %10 to i64, !dbg !257
  %cmp7 = icmp uge i64 %9, %11, !dbg !258
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !259
  store i1 %12, ptr %retval, align 1, !dbg !260
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #8, !dbg !261
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !262
  ret i1 %13, !dbg !262
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #3 align 16 !dbg !263 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !264, !srcloc !265
  ret void, !dbg !266
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_csum_partial_copy_nocheck177", scope: !2, file: !3, line: 74, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.csum-wrappers_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/csum-wrappers_64\22 -D KBUILD_BASENAME=\22csum_wrappers_64\22 -D KBUILD_MODNAME=\22csum_wrappers_64\22 -D __KBUILD_MODNAME=kmod_csum_wrappers_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/csum-wrappers_64.ll arch/x86/lib/csum-wrappers_64.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/csum-wrappers_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fcbdf2f5e8cce20e4797f6724882397")
!4 = !{!5, !7, !8, !11, !13, !15, !16, !18, !19, !20, !21, !23}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !12, line: 39, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !12, line: 37, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !17)
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !12, line: 44, baseType: !13)
!19 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !13)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !12, line: 43, baseType: !16)
!24 = !{!0, !25, !27}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_csum_ipv6_magic178", scope: !2, file: !3, line: 97, type: !7, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !29, file: !30, line: 112, type: !7, isLocal: true, isDefinition: true)
!29 = distinct !DISubprogram(name: "might_resched", scope: !30, file: !30, line: 110, type: !31, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!30 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 8, !"cf-protection-branch", i32 1}
!37 = !{i32 4, !"function_return_thunk_extern", i32 1}
!38 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!39 = !{i32 1, !"Code Model", i32 2}
!40 = !{i32 1, !"override-stack-alignment", i32 8}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = distinct !DISubprogram(name: "csum_and_copy_from_user", scope: !3, file: !3, line: 24, type: !43, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!43 = !DISubroutineType(types: !44)
!44 = !{!18, !5, !7, !45}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!47, !48, !49, !50}
!47 = !DILocalVariable(name: "src", arg: 1, scope: !42, file: !3, line: 24, type: !5)
!48 = !DILocalVariable(name: "dst", arg: 2, scope: !42, file: !3, line: 24, type: !7)
!49 = !DILocalVariable(name: "len", arg: 3, scope: !42, file: !3, line: 24, type: !45)
!50 = !DILocalVariable(name: "sum", scope: !42, file: !3, line: 26, type: !18)
!51 = !DILocation(line: 24, column: 44, scope: !42)
!52 = !DILocation(line: 24, column: 55, scope: !42)
!53 = !DILocation(line: 24, column: 64, scope: !42)
!54 = !DILocation(line: 26, column: 2, scope: !42)
!55 = !DILocation(line: 26, column: 9, scope: !42)
!56 = !DILocation(line: 28, column: 2, scope: !42)
!57 = !DILocation(line: 28, column: 2, scope: !58)
!58 = distinct !DILexicalBlock(scope: !42, file: !3, line: 28, column: 2)
!59 = !DILocation(line: 29, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !42, file: !3, line: 29, column: 6)
!61 = !DILocation(line: 29, column: 6, scope: !42)
!62 = !DILocation(line: 30, column: 3, scope: !60)
!63 = !DILocation(line: 31, column: 56, scope: !42)
!64 = !DILocation(line: 31, column: 61, scope: !42)
!65 = !DILocation(line: 31, column: 66, scope: !42)
!66 = !DILocation(line: 31, column: 8, scope: !42)
!67 = !DILocation(line: 31, column: 6, scope: !42)
!68 = !DILocation(line: 32, column: 2, scope: !42)
!69 = !DILocation(line: 33, column: 9, scope: !42)
!70 = !DILocation(line: 33, column: 2, scope: !42)
!71 = !DILocation(line: 34, column: 1, scope: !42)
!72 = !DILocation(line: 112, column: 2, scope: !73)
!73 = distinct !DILexicalBlock(scope: !29, file: !30, line: 112, column: 2)
!74 = !DILocation(line: 112, column: 2, scope: !29)
!75 = !DILocation(line: 113, column: 1, scope: !29)
!76 = distinct !DISubprogram(name: "user_access_begin", scope: !77, file: !77, line: 519, type: !78, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!77 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !5, !83}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 35, baseType: !82)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!82 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 61, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !85, line: 72, baseType: !86)
!85 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !85, line: 16, baseType: !20)
!87 = !{!88, !89}
!88 = !DILocalVariable(name: "ptr", arg: 1, scope: !76, file: !77, line: 519, type: !5)
!89 = !DILocalVariable(name: "len", arg: 2, scope: !76, file: !77, line: 519, type: !83)
!90 = !DILocation(line: 519, column: 79, scope: !76)
!91 = !DILocation(line: 519, column: 91, scope: !76)
!92 = !DILocation(line: 521, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !76, file: !77, line: 521, column: 6)
!94 = !DILocation(line: 521, column: 6, scope: !76)
!95 = !DILocation(line: 522, column: 3, scope: !93)
!96 = !DILocation(line: 523, column: 2, scope: !97)
!97 = distinct !DILexicalBlock(scope: !76, file: !77, line: 523, column: 2)
!98 = !{i64 2151639643, i64 2151639671, i64 2151639677, i64 2151639693, i64 2151639709, i64 2151639736, i64 2151640050, i64 2151639407, i64 2151640056, i64 2151640104, i64 2151640168, i64 2151640232, i64 2151640289, i64 2151639488, i64 2151639513, i64 2151640496, i64 2151640618, i64 2151640557, i64 2151640632, i64 2151639605}
!99 = !DILocation(line: 524, column: 2, scope: !76)
!100 = !DILocation(line: 525, column: 1, scope: !76)
!101 = !DISubprogram(name: "csum_partial_copy_generic", scope: !102, file: !102, line: 132, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DIFile(filename: "./arch/x86/include/asm/checksum_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "388d688332261c99a653b1b399e4f578")
!103 = distinct !DISubprogram(name: "clac", scope: !104, file: !104, line: 30, type: !31, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!104 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!105 = !DILocation(line: 33, column: 2, scope: !103)
!106 = !{i64 2151070869, i64 2151070897, i64 2151070903, i64 2151070919, i64 2151070935, i64 2151070962, i64 2151071276, i64 2151070619, i64 2151071282, i64 2151071330, i64 2151071394, i64 2151071458, i64 2151071515, i64 2151070700, i64 2151070725, i64 2151071722, i64 2151071858, i64 2151071783, i64 2151071872, i64 2151070817}
!107 = !DILocation(line: 34, column: 1, scope: !103)
!108 = distinct !DISubprogram(name: "csum_and_copy_to_user", scope: !3, file: !3, line: 48, type: !43, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!109 = !{!110, !111, !112, !113}
!110 = !DILocalVariable(name: "src", arg: 1, scope: !108, file: !3, line: 48, type: !5)
!111 = !DILocalVariable(name: "dst", arg: 2, scope: !108, file: !3, line: 48, type: !7)
!112 = !DILocalVariable(name: "len", arg: 3, scope: !108, file: !3, line: 48, type: !45)
!113 = !DILocalVariable(name: "sum", scope: !108, file: !3, line: 50, type: !18)
!114 = !DILocation(line: 48, column: 35, scope: !108)
!115 = !DILocation(line: 48, column: 53, scope: !108)
!116 = !DILocation(line: 48, column: 62, scope: !108)
!117 = !DILocation(line: 50, column: 2, scope: !108)
!118 = !DILocation(line: 50, column: 9, scope: !108)
!119 = !DILocation(line: 52, column: 2, scope: !108)
!120 = !DILocation(line: 52, column: 2, scope: !121)
!121 = distinct !DILexicalBlock(scope: !108, file: !3, line: 52, column: 2)
!122 = !DILocation(line: 53, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !108, file: !3, line: 53, column: 6)
!124 = !DILocation(line: 53, column: 6, scope: !108)
!125 = !DILocation(line: 54, column: 3, scope: !123)
!126 = !DILocation(line: 55, column: 34, scope: !108)
!127 = !DILocation(line: 55, column: 55, scope: !108)
!128 = !DILocation(line: 55, column: 60, scope: !108)
!129 = !DILocation(line: 55, column: 8, scope: !108)
!130 = !DILocation(line: 55, column: 6, scope: !108)
!131 = !DILocation(line: 56, column: 2, scope: !108)
!132 = !DILocation(line: 57, column: 9, scope: !108)
!133 = !DILocation(line: 57, column: 2, scope: !108)
!134 = !DILocation(line: 58, column: 1, scope: !108)
!135 = distinct !DISubprogram(name: "csum_partial_copy_nocheck", scope: !3, file: !3, line: 70, type: !43, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !136)
!136 = !{!137, !138, !139}
!137 = !DILocalVariable(name: "src", arg: 1, scope: !135, file: !3, line: 70, type: !5)
!138 = !DILocalVariable(name: "dst", arg: 2, scope: !135, file: !3, line: 70, type: !7)
!139 = !DILocalVariable(name: "len", arg: 3, scope: !135, file: !3, line: 70, type: !45)
!140 = !DILocation(line: 70, column: 39, scope: !135)
!141 = !DILocation(line: 70, column: 50, scope: !135)
!142 = !DILocation(line: 70, column: 59, scope: !135)
!143 = !DILocation(line: 72, column: 35, scope: !135)
!144 = !DILocation(line: 72, column: 40, scope: !135)
!145 = !DILocation(line: 72, column: 45, scope: !135)
!146 = !DILocation(line: 72, column: 9, scope: !135)
!147 = !DILocation(line: 72, column: 2, scope: !135)
!148 = distinct !DISubprogram(name: "csum_ipv6_magic", scope: !3, file: !3, line: 76, type: !149, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!149 = !DISubroutineType(types: !150)
!150 = !{!23, !151, !151, !13, !154, !18}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !102, line: 161, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !155)
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !{!157, !158, !159, !160, !161, !162, !163}
!157 = !DILocalVariable(name: "saddr", arg: 1, scope: !148, file: !3, line: 76, type: !151)
!158 = !DILocalVariable(name: "daddr", arg: 2, scope: !148, file: !3, line: 77, type: !151)
!159 = !DILocalVariable(name: "len", arg: 3, scope: !148, file: !3, line: 78, type: !13)
!160 = !DILocalVariable(name: "proto", arg: 4, scope: !148, file: !3, line: 78, type: !154)
!161 = !DILocalVariable(name: "sum", arg: 5, scope: !148, file: !3, line: 78, type: !18)
!162 = !DILocalVariable(name: "rest", scope: !148, file: !3, line: 80, type: !8)
!163 = !DILocalVariable(name: "sum64", scope: !148, file: !3, line: 80, type: !8)
!164 = !DILocation(line: 76, column: 48, scope: !148)
!165 = !DILocation(line: 77, column: 27, scope: !148)
!166 = !DILocation(line: 78, column: 10, scope: !148)
!167 = !DILocation(line: 78, column: 20, scope: !148)
!168 = !DILocation(line: 78, column: 34, scope: !148)
!169 = !DILocation(line: 80, column: 2, scope: !148)
!170 = !DILocation(line: 80, column: 8, scope: !148)
!171 = !DILocation(line: 80, column: 14, scope: !148)
!172 = !DILocation(line: 82, column: 24, scope: !148)
!173 = !DILocation(line: 82, column: 9, scope: !148)
!174 = !DILocation(line: 82, column: 52, scope: !148)
!175 = !DILocation(line: 82, column: 37, scope: !148)
!176 = !DILocation(line: 82, column: 35, scope: !148)
!177 = !DILocation(line: 83, column: 18, scope: !148)
!178 = !DILocation(line: 83, column: 3, scope: !148)
!179 = !DILocation(line: 82, column: 65, scope: !148)
!180 = !DILocation(line: 82, column: 7, scope: !148)
!181 = !DILocation(line: 92, column: 17, scope: !148)
!182 = !DILocation(line: 92, column: 37, scope: !148)
!183 = !DILocation(line: 92, column: 58, scope: !148)
!184 = !DILocation(line: 85, column: 2, scope: !148)
!185 = !{i64 2249, i64 2283, i64 2317, i64 2350, i64 2384}
!186 = !DILocation(line: 95, column: 42, scope: !148)
!187 = !DILocation(line: 95, column: 48, scope: !148)
!188 = !DILocation(line: 95, column: 62, scope: !148)
!189 = !DILocation(line: 95, column: 67, scope: !148)
!190 = !DILocation(line: 95, column: 25, scope: !148)
!191 = !DILocation(line: 94, column: 9, scope: !148)
!192 = !DILocation(line: 96, column: 1, scope: !148)
!193 = !DILocation(line: 94, column: 2, scope: !148)
!194 = distinct !DISubprogram(name: "csum_fold", scope: !102, file: !102, line: 22, type: !195, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!23, !18}
!197 = !{!198}
!198 = !DILocalVariable(name: "sum", arg: 1, scope: !194, file: !102, line: 22, type: !18)
!199 = !DILocation(line: 22, column: 40, scope: !194)
!200 = !DILocation(line: 27, column: 26, scope: !194)
!201 = !DILocation(line: 27, column: 30, scope: !194)
!202 = !DILocation(line: 28, column: 26, scope: !194)
!203 = !DILocation(line: 28, column: 30, scope: !194)
!204 = !DILocation(line: 24, column: 2, scope: !194)
!205 = !{i64 114800, i64 114823}
!206 = !DILocation(line: 29, column: 41, scope: !194)
!207 = !DILocation(line: 29, column: 27, scope: !194)
!208 = !DILocation(line: 29, column: 45, scope: !194)
!209 = !DILocation(line: 29, column: 9, scope: !194)
!210 = !DILocation(line: 29, column: 2, scope: !194)
!211 = distinct !DISubprogram(name: "add32_with_carry", scope: !102, file: !102, line: 168, type: !212, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!14, !14, !14}
!214 = !{!215, !216}
!215 = !DILocalVariable(name: "a", arg: 1, scope: !211, file: !102, line: 168, type: !14)
!216 = !DILocalVariable(name: "b", arg: 2, scope: !211, file: !102, line: 168, type: !14)
!217 = !DILocation(line: 168, column: 50, scope: !211)
!218 = !DILocation(line: 168, column: 62, scope: !211)
!219 = !DILocation(line: 173, column: 13, scope: !211)
!220 = !DILocation(line: 173, column: 23, scope: !211)
!221 = !DILocation(line: 170, column: 2, scope: !211)
!222 = !{i64 119031, i64 119044}
!223 = !DILocation(line: 174, column: 9, scope: !211)
!224 = !DILocation(line: 174, column: 2, scope: !211)
!225 = distinct !DISubprogram(name: "__access_ok", scope: !226, file: !226, line: 85, type: !227, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!226 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!227 = !DISubroutineType(types: !228)
!228 = !{!80, !5, !20}
!229 = !{!230, !231, !232}
!230 = !DILocalVariable(name: "ptr", arg: 1, scope: !225, file: !226, line: 85, type: !5)
!231 = !DILocalVariable(name: "size", arg: 2, scope: !225, file: !226, line: 85, type: !20)
!232 = !DILocalVariable(name: "sum", scope: !233, file: !226, line: 90, type: !20)
!233 = distinct !DILexicalBlock(scope: !234, file: !226, line: 89, column: 9)
!234 = distinct !DILexicalBlock(scope: !225, file: !226, line: 87, column: 6)
!235 = !DILocation(line: 85, column: 51, scope: !225)
!236 = !DILocation(line: 85, column: 70, scope: !225)
!237 = !DILocation(line: 87, column: 27, scope: !234)
!238 = !DILocation(line: 87, column: 32, scope: !234)
!239 = !DILocation(line: 87, column: 6, scope: !234)
!240 = !DILocation(line: 87, column: 46, scope: !234)
!241 = !DILocation(line: 87, column: 49, scope: !234)
!242 = !DILocation(line: 87, column: 54, scope: !234)
!243 = !DILocation(line: 87, column: 6, scope: !225)
!244 = !DILocation(line: 88, column: 10, scope: !245)
!245 = distinct !DILexicalBlock(scope: !234, file: !226, line: 87, column: 68)
!246 = !DILocation(line: 88, column: 3, scope: !245)
!247 = !DILocation(line: 90, column: 3, scope: !233)
!248 = !DILocation(line: 90, column: 17, scope: !233)
!249 = !DILocation(line: 90, column: 23, scope: !233)
!250 = !DILocation(line: 90, column: 45, scope: !233)
!251 = !DILocation(line: 90, column: 30, scope: !233)
!252 = !DILocation(line: 90, column: 28, scope: !233)
!253 = !DILocation(line: 91, column: 10, scope: !233)
!254 = !DILocation(line: 91, column: 34, scope: !233)
!255 = !DILocation(line: 91, column: 37, scope: !233)
!256 = !DILocation(line: 91, column: 59, scope: !233)
!257 = !DILocation(line: 91, column: 44, scope: !233)
!258 = !DILocation(line: 91, column: 41, scope: !233)
!259 = !DILocation(line: 0, scope: !233)
!260 = !DILocation(line: 91, column: 3, scope: !233)
!261 = !DILocation(line: 92, column: 2, scope: !234)
!262 = !DILocation(line: 93, column: 1, scope: !225)
!263 = distinct !DISubprogram(name: "stac", scope: !104, file: !104, line: 36, type: !31, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!264 = !DILocation(line: 39, column: 2, scope: !263)
!265 = !{i64 2151072536, i64 2151072564, i64 2151072570, i64 2151072586, i64 2151072602, i64 2151072629, i64 2151072943, i64 2151072286, i64 2151072949, i64 2151072997, i64 2151073061, i64 2151073125, i64 2151073182, i64 2151072367, i64 2151072392, i64 2151073389, i64 2151073525, i64 2151073450, i64 2151073539, i64 2151072484}
!266 = !DILocation(line: 40, column: 1, scope: !263)
