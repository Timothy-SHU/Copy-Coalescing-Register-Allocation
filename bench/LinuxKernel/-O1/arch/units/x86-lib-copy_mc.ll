; ModuleID = 'arch/x86/lib/copy_mc.c'
source_filename = "arch/x86/lib/copy_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_mc_to_kernel: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_mc_to_kernel ; .previous"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.0, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.1, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64, [88 x i8] }

@copy_mc_fragile_key = internal global %struct.static_key_false zeroinitializer, align 8, !dbg !0
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__UNIQUE_ID___addressable_copy_mc_to_kernel177 = internal global ptr @copy_mc_to_kernel, section ".discard.addressable", align 8, !dbg !20
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_copy_mc_to_kernel177], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @enable_copy_mc_fragile() #0 align 16 !dbg !63 {
entry:
  %call = call zeroext i1 @static_key_slow_inc(ptr noundef @copy_mc_fragile_key) #11, !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !68 dso_local zeroext i1 @static_key_slow_inc(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_mc_fragile_handle_tail(ptr noundef %to, ptr noundef %from, i32 noundef %len) #0 align 16 !dbg !74 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !79, metadata !DIExpression()), !dbg !82
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !80, metadata !DIExpression()), !dbg !83
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !81, metadata !DIExpression()), !dbg !84
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %len.addr, align 4, !dbg !86
  %tobool = icmp ne i32 %0, 0, !dbg !89
  br i1 %tobool, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %to.addr, align 8, !dbg !90
  %2 = load ptr, ptr %from.addr, align 8, !dbg !92
  %call = call i64 @copy_mc_fragile(ptr noundef %1, ptr noundef %2, i32 noundef 1) #11, !dbg !93
  %tobool1 = icmp ne i64 %call, 0, !dbg !93
  br i1 %tobool1, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !95

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !96

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %len.addr, align 4, !dbg !97
  %dec = add i32 %3, -1, !dbg !97
  store i32 %dec, ptr %len.addr, align 4, !dbg !97
  %4 = load ptr, ptr %to.addr, align 8, !dbg !98
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !98
  store ptr %incdec.ptr, ptr %to.addr, align 8, !dbg !98
  %5 = load ptr, ptr %from.addr, align 8, !dbg !99
  %incdec.ptr2 = getelementptr i8, ptr %5, i32 1, !dbg !99
  store ptr %incdec.ptr2, ptr %from.addr, align 8, !dbg !99
  br label %for.cond, !dbg !100, !llvm.loop !101

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, ptr %len.addr, align 4, !dbg !105
  %conv = zext i32 %6 to i64, !dbg !105
  ret i64 %conv, !dbg !106
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !107 dso_local i64 @copy_mc_fragile(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_mc_to_kernel(ptr noundef %dst, ptr noundef %src, i32 noundef %len) #0 align 16 !dbg !113 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !115, metadata !DIExpression()), !dbg !121
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !116, metadata !DIExpression()), !dbg !122
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !117, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !118, metadata !DIExpression()), !dbg !124
  %call = call zeroext i1 @arch_static_branch(ptr noundef @copy_mc_fragile_key, i1 noundef zeroext false) #11, !dbg !125
  %frombool = zext i1 %call to i8, !dbg !125
  store i8 %frombool, ptr %branch, align 1, !dbg !125
  %0 = load i8, ptr %branch, align 1, !dbg !124, !range !128, !noundef !129
  %tobool = trunc i8 %0 to i1, !dbg !124
  %lnot = xor i1 %tobool, true, !dbg !124
  %lnot1 = xor i1 %lnot, true, !dbg !124
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !124
  %conv = sext i32 %lnot.ext to i64, !dbg !124
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !124
  store i64 %expval, ptr %tmp, align 8, !dbg !130
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !131
  %1 = load i64, ptr %tmp, align 8, !dbg !124
  %tobool2 = icmp ne i64 %1, 0, !dbg !131
  br i1 %tobool2, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !133
  %3 = load ptr, ptr %src.addr, align 8, !dbg !134
  %4 = load i32, ptr %len.addr, align 4, !dbg !135
  %call3 = call i64 @copy_mc_fragile(ptr noundef %2, ptr noundef %3, i32 noundef %4) #11, !dbg !136
  store i64 %call3, ptr %retval, align 8, !dbg !137
  br label %return, !dbg !137

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false7, !dbg !138

cond.true:                                        ; preds = %if.end
  br i1 false, label %cond.true4, label %cond.false, !dbg !139

cond.true4:                                       ; preds = %cond.true
  br i1 true, label %if.then10, label %if.end12, !dbg !139

cond.false:                                       ; preds = %cond.true
  %call5 = call zeroext i1 @arch_test_bit(i64 noundef 297, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !139
  br i1 %call5, label %if.then10, label %if.end12, !dbg !139

cond.false7:                                      ; preds = %if.end
  %call8 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 297) #11, !dbg !139
  br i1 %call8, label %if.then10, label %if.end12, !dbg !138

if.then10:                                        ; preds = %cond.false7, %cond.false, %cond.true4
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !141
  %6 = load ptr, ptr %src.addr, align 8, !dbg !142
  %7 = load i32, ptr %len.addr, align 4, !dbg !143
  %call11 = call i64 @copy_mc_enhanced_fast_string(ptr noundef %5, ptr noundef %6, i32 noundef %7) #11, !dbg !144
  store i64 %call11, ptr %retval, align 8, !dbg !145
  br label %return, !dbg !145

if.end12:                                         ; preds = %cond.false7, %cond.false, %cond.true4
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !146
  %9 = load ptr, ptr %src.addr, align 8, !dbg !147
  %10 = load i32, ptr %len.addr, align 4, !dbg !148
  %conv13 = zext i32 %10 to i64, !dbg !148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %conv13, i1 false), !dbg !149
  store i64 0, ptr %retval, align 8, !dbg !150
  br label %return, !dbg !150

return:                                           ; preds = %if.end12, %if.then10, %if.then
  %11 = load i64, ptr %retval, align 8, !dbg !151
  ret i64 %11, !dbg !151
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !152 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !157, metadata !DIExpression()), !dbg !160
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !158, metadata !DIExpression()), !dbg !161
  %0 = load ptr, ptr %key.addr, align 8, !dbg !162
  %1 = load i8, ptr %branch.addr, align 1, !dbg !163, !range !128, !noundef !129
  %tobool = trunc i8 %1 to i1, !dbg !163
  %conv = zext i1 %tobool to i32, !dbg !163
  %or = or i32 2, %conv, !dbg !164
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !165, !srcloc !166

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !167
  br label %return, !dbg !167

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !159), !dbg !168
  store i1 true, ptr %retval, align 1, !dbg !169
  br label %return, !dbg !169

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !170
  ret i1 %2, !dbg !170
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !171 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !179, metadata !DIExpression()), !dbg !181
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !180, metadata !DIExpression()), !dbg !182
  %0 = load i64, ptr %nr.addr, align 8, !dbg !183
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !184
  br i1 %1, label %cond.true, label %cond.false, !dbg !184

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !185
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !186
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !187
  %conv = zext i1 %call to i32, !dbg !187
  br label %cond.end, !dbg !184

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !188
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !189
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !190
  %conv2 = zext i1 %call1 to i32, !dbg !190
  br label %cond.end, !dbg !184

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !184
  %tobool = icmp ne i32 %cond, 0, !dbg !184
  ret i1 %tobool, !dbg !191
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !192 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !200, metadata !DIExpression()), !dbg !203
  %0 = load i16, ptr %bit.addr, align 2, !dbg !204
  %1 = load i16, ptr %bit.addr, align 2, !dbg !205
  %conv = zext i16 %1 to i32, !dbg !205
  %and = and i32 %conv, 7, !dbg !206
  %shl = shl i32 1, %and, !dbg !207
  %2 = load i16, ptr %bit.addr, align 2, !dbg !208
  %conv1 = zext i16 %2 to i32, !dbg !208
  %shr = ashr i32 %conv1, 3, !dbg !209
  %idxprom = sext i32 %shr to i64, !dbg !210
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !210
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #12
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !211, !srcloc !212

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !211

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !201), !dbg !213
  store i1 true, ptr %retval, align 1, !dbg !214
  br label %return, !dbg !214

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !202), !dbg !215
  store i1 false, ptr %retval, align 1, !dbg !216
  br label %return, !dbg !216

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !217
  ret i1 %3, !dbg !217
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !218 dso_local i64 @copy_mc_enhanced_fast_string(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_mc_to_user(ptr noundef %dst, ptr noundef %src, i32 noundef %len) #0 align 16 !dbg !219 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !221, metadata !DIExpression()), !dbg !228
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !222, metadata !DIExpression()), !dbg !229
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !223, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !224, metadata !DIExpression()), !dbg !232
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !225, metadata !DIExpression()), !dbg !233
  %call = call zeroext i1 @arch_static_branch(ptr noundef @copy_mc_fragile_key, i1 noundef zeroext false) #11, !dbg !234
  %frombool = zext i1 %call to i8, !dbg !234
  store i8 %frombool, ptr %branch, align 1, !dbg !234
  %0 = load i8, ptr %branch, align 1, !dbg !233, !range !128, !noundef !129
  %tobool = trunc i8 %0 to i1, !dbg !233
  %lnot = xor i1 %tobool, true, !dbg !233
  %lnot1 = xor i1 %lnot, true, !dbg !233
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !233
  %conv = sext i32 %lnot.ext to i64, !dbg !233
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !233
  store i64 %expval, ptr %tmp, align 8, !dbg !237
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !238
  %1 = load i64, ptr %tmp, align 8, !dbg !233
  %tobool2 = icmp ne i64 %1, 0, !dbg !238
  br i1 %tobool2, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  call void @stac() #11, !dbg !240
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !242
  %3 = load ptr, ptr %src.addr, align 8, !dbg !243
  %4 = load i32, ptr %len.addr, align 4, !dbg !244
  %call3 = call i64 @copy_mc_fragile(ptr noundef %2, ptr noundef %3, i32 noundef %4) #11, !dbg !245
  store i64 %call3, ptr %ret, align 8, !dbg !246
  call void @clac() #11, !dbg !247
  %5 = load i64, ptr %ret, align 8, !dbg !248
  store i64 %5, ptr %retval, align 8, !dbg !249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !249

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false7, !dbg !250

cond.true:                                        ; preds = %if.end
  br i1 false, label %cond.true4, label %cond.false, !dbg !251

cond.true4:                                       ; preds = %cond.true
  br i1 true, label %if.then10, label %if.end12, !dbg !251

cond.false:                                       ; preds = %cond.true
  %call5 = call zeroext i1 @arch_test_bit(i64 noundef 297, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !251
  br i1 %call5, label %if.then10, label %if.end12, !dbg !251

cond.false7:                                      ; preds = %if.end
  %call8 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 297) #11, !dbg !251
  br i1 %call8, label %if.then10, label %if.end12, !dbg !250

if.then10:                                        ; preds = %cond.false7, %cond.false, %cond.true4
  call void @stac() #11, !dbg !253
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !255
  %7 = load ptr, ptr %src.addr, align 8, !dbg !256
  %8 = load i32, ptr %len.addr, align 4, !dbg !257
  %call11 = call i64 @copy_mc_enhanced_fast_string(ptr noundef %6, ptr noundef %7, i32 noundef %8) #11, !dbg !258
  store i64 %call11, ptr %ret, align 8, !dbg !259
  call void @clac() #11, !dbg !260
  %9 = load i64, ptr %ret, align 8, !dbg !261
  store i64 %9, ptr %retval, align 8, !dbg !262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !262

if.end12:                                         ; preds = %cond.false7, %cond.false, %cond.true4
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !263
  %11 = load ptr, ptr %src.addr, align 8, !dbg !264
  %12 = load i32, ptr %len.addr, align 4, !dbg !265
  %conv13 = zext i32 %12 to i64, !dbg !265
  %call14 = call i64 @copy_user_generic(ptr noundef %10, ptr noundef %11, i64 noundef %conv13) #11, !dbg !266
  store i64 %call14, ptr %retval, align 8, !dbg !267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !267

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !268
  %13 = load i64, ptr %retval, align 8, !dbg !268
  ret i64 %13, !dbg !268
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #4 align 16 !dbg !269 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !271, !srcloc !272
  ret void, !dbg !273
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #4 align 16 !dbg !274 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !275, !srcloc !276
  ret void, !dbg !277
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_user_generic(ptr noundef %to, ptr noundef %from, i64 noundef %len) #4 align 16 !dbg !278 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !283, metadata !DIExpression()), !dbg !286
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !284, metadata !DIExpression()), !dbg !287
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !285, metadata !DIExpression()), !dbg !288
  call void @stac() #11, !dbg !289
  %0 = load i64, ptr %len.addr, align 8, !dbg !290
  %1 = load ptr, ptr %to.addr, align 8, !dbg !290
  %2 = load ptr, ptr %from.addr, align 8, !dbg !290
  %3 = call i64 @llvm.read_register.i64(metadata !53), !dbg !290
  %4 = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep movsb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_movs_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1, ptr %2, i64 %3) #12, !dbg !290, !srcloc !291
  %asmresult = extractvalue { i64, ptr, ptr, i64 } %4, 0, !dbg !290
  %asmresult1 = extractvalue { i64, ptr, ptr, i64 } %4, 1, !dbg !290
  %asmresult2 = extractvalue { i64, ptr, ptr, i64 } %4, 2, !dbg !290
  %asmresult3 = extractvalue { i64, ptr, ptr, i64 } %4, 3, !dbg !290
  store i64 %asmresult, ptr %len.addr, align 8, !dbg !290
  store ptr %asmresult1, ptr %to.addr, align 8, !dbg !290
  store ptr %asmresult2, ptr %from.addr, align 8, !dbg !290
  call void @llvm.write_register.i64(metadata !53, i64 %asmresult3), !dbg !290
  call void @clac() #11, !dbg !292
  %5 = load i64, ptr %len.addr, align 8, !dbg !293
  ret i64 %5, !dbg !294
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !295 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !299, metadata !DIExpression()), !dbg !301
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !300, metadata !DIExpression()), !dbg !302
  %0 = load i64, ptr %nr.addr, align 8, !dbg !303
  %and = and i64 %0, 63, !dbg !304
  %shl = shl i64 1, %and, !dbg !305
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !306
  %2 = load i64, ptr %nr.addr, align 8, !dbg !307
  %shr = ashr i64 %2, 6, !dbg !308
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !306
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !306
  %and1 = and i64 %shl, %3, !dbg !309
  %cmp = icmp ne i64 %and1, 0, !dbg !310
  ret i1 %cmp, !dbg !311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !312 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !314, metadata !DIExpression()), !dbg !317
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !315, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !316, metadata !DIExpression()), !dbg !320
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !321
  %1 = load i64, ptr %nr.addr, align 8, !dbg !322
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !323, !srcloc !324
  %3 = icmp ult i8 %2, 2, !dbg !323
  call void @llvm.assume(i1 %3), !dbg !323
  store i8 %2, ptr %oldbit, align 1, !dbg !323
  %4 = load i8, ptr %oldbit, align 1, !dbg !325, !range !128, !noundef !129
  %tobool = trunc i8 %4 to i1, !dbg !325
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !326
  ret i1 %tobool, !dbg !327
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { noredzone }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "copy_mc_fragile_key", scope: !2, file: !3, line: 13, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.copy_mc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/copy_mc\22 -D KBUILD_BASENAME=\22copy_mc\22 -D KBUILD_MODNAME=\22copy_mc\22 -D __KBUILD_MODNAME=kmod_copy_mc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/copy_mc.ll arch/x86/lib/copy_mc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/copy_mc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b42a7cbc05273f81633ea4e00b5d07e")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !15, !16}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !{!20, !0}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_mc_to_kernel177", scope: !2, file: !3, line: 71, type: !15, isLocal: true, isDefinition: true)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !23, line: 363, size: 128, elements: !24)
!23 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !22, file: !23, line: 364, baseType: !26, size: 128)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !23, line: 85, size: 128, elements: !27)
!27 = !{!28, !34}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !26, file: !23, line: 86, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !31, file: !30, line: 173, baseType: !12, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !23, line: 101, baseType: !35, size: 64, offset: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !23, line: 101, size: 64, elements: !36)
!36 = !{!37, !38, !50}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !23, line: 102, baseType: !14, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !35, file: !23, line: 103, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !23, line: 117, size: 128, elements: !41)
!41 = !{!42, !47, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !40, file: !23, line: 118, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !44, line: 20, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !46, line: 26, baseType: !12)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !40, file: !23, line: 119, baseType: !43, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !40, file: !23, line: 120, baseType: !49, size: 64, offset: 64)
!49 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !23, line: 104, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !23, line: 104, flags: DIFlagFwdDecl)
!53 = !{!"rsp"}
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 8, !"cf-protection-branch", i32 1}
!58 = !{i32 4, !"function_return_thunk_extern", i32 1}
!59 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!60 = !{i32 1, !"Code Model", i32 2}
!61 = !{i32 1, !"override-stack-alignment", i32 8}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = distinct !DISubprogram(name: "enable_copy_mc_fragile", scope: !3, file: !3, line: 15, type: !64, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !DILocation(line: 17, column: 2, scope: !63)
!67 = !DILocation(line: 18, column: 1, scope: !63)
!68 = !DISubprogram(name: "static_key_slow_inc", scope: !23, file: !23, line: 227, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !72)
!72 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!74 = distinct !DISubprogram(name: "copy_mc_fragile_handle_tail", scope: !3, file: !3, line: 26, type: !75, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!75 = !DISubroutineType(types: !76)
!76 = !{!14, !77, !77, !7}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!78 = !{!79, !80, !81}
!79 = !DILocalVariable(name: "to", arg: 1, scope: !74, file: !3, line: 26, type: !77)
!80 = !DILocalVariable(name: "from", arg: 2, scope: !74, file: !3, line: 26, type: !77)
!81 = !DILocalVariable(name: "len", arg: 3, scope: !74, file: !3, line: 26, type: !7)
!82 = !DILocation(line: 26, column: 35, scope: !74)
!83 = !DILocation(line: 26, column: 45, scope: !74)
!84 = !DILocation(line: 26, column: 60, scope: !74)
!85 = !DILocation(line: 28, column: 2, scope: !74)
!86 = !DILocation(line: 28, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 28, column: 2)
!88 = distinct !DILexicalBlock(scope: !74, file: !3, line: 28, column: 2)
!89 = !DILocation(line: 28, column: 2, scope: !88)
!90 = !DILocation(line: 29, column: 23, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 29, column: 7)
!92 = !DILocation(line: 29, column: 27, scope: !91)
!93 = !DILocation(line: 29, column: 7, scope: !91)
!94 = !DILocation(line: 29, column: 7, scope: !87)
!95 = !DILocation(line: 30, column: 4, scope: !91)
!96 = !DILocation(line: 29, column: 34, scope: !91)
!97 = !DILocation(line: 28, column: 14, scope: !87)
!98 = !DILocation(line: 28, column: 23, scope: !87)
!99 = !DILocation(line: 28, column: 31, scope: !87)
!100 = !DILocation(line: 28, column: 2, scope: !87)
!101 = distinct !{!101, !89, !102, !103, !104}
!102 = !DILocation(line: 30, column: 4, scope: !88)
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = !DILocation(line: 31, column: 9, scope: !74)
!106 = !DILocation(line: 31, column: 2, scope: !74)
!107 = !DISubprogram(name: "copy_mc_fragile", scope: !108, file: !108, line: 199, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DIFile(filename: "./arch/x86/include/asm/mce.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03bdd31ab67561f34e6be65b5717c529")
!109 = !DISubroutineType(types: !110)
!110 = !{!14, !15, !111, !7}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = distinct !DISubprogram(name: "copy_mc_to_kernel", scope: !3, file: !3, line: 62, type: !109, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DILocalVariable(name: "dst", arg: 1, scope: !113, file: !3, line: 62, type: !15)
!116 = !DILocalVariable(name: "src", arg: 2, scope: !113, file: !3, line: 62, type: !111)
!117 = !DILocalVariable(name: "len", arg: 3, scope: !113, file: !3, line: 62, type: !7)
!118 = !DILocalVariable(name: "branch", scope: !119, file: !3, line: 64, type: !71)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 64, column: 6)
!120 = distinct !DILexicalBlock(scope: !113, file: !3, line: 64, column: 6)
!121 = !DILocation(line: 62, column: 52, scope: !113)
!122 = !DILocation(line: 62, column: 69, scope: !113)
!123 = !DILocation(line: 62, column: 83, scope: !113)
!124 = !DILocation(line: 64, column: 6, scope: !119)
!125 = !DILocation(line: 64, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 64, column: 6)
!127 = distinct !DILexicalBlock(scope: !119, file: !3, line: 64, column: 6)
!128 = !{i8 0, i8 2}
!129 = !{}
!130 = !DILocation(line: 64, column: 6, scope: !127)
!131 = !DILocation(line: 64, column: 6, scope: !120)
!132 = !DILocation(line: 64, column: 6, scope: !113)
!133 = !DILocation(line: 65, column: 26, scope: !120)
!134 = !DILocation(line: 65, column: 31, scope: !120)
!135 = !DILocation(line: 65, column: 36, scope: !120)
!136 = !DILocation(line: 65, column: 10, scope: !120)
!137 = !DILocation(line: 65, column: 3, scope: !120)
!138 = !DILocation(line: 66, column: 6, scope: !113)
!139 = !DILocation(line: 66, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !113, file: !3, line: 66, column: 6)
!141 = !DILocation(line: 67, column: 39, scope: !140)
!142 = !DILocation(line: 67, column: 44, scope: !140)
!143 = !DILocation(line: 67, column: 49, scope: !140)
!144 = !DILocation(line: 67, column: 10, scope: !140)
!145 = !DILocation(line: 67, column: 3, scope: !140)
!146 = !DILocation(line: 68, column: 9, scope: !113)
!147 = !DILocation(line: 68, column: 14, scope: !113)
!148 = !DILocation(line: 68, column: 19, scope: !113)
!149 = !DILocation(line: 68, column: 2, scope: !113)
!150 = !DILocation(line: 69, column: 2, scope: !113)
!151 = !DILocation(line: 70, column: 1, scope: !113)
!152 = distinct !DISubprogram(name: "arch_static_branch", scope: !153, file: !153, line: 25, type: !154, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!153 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!154 = !DISubroutineType(types: !155)
!155 = !{!71, !73, !71}
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "key", arg: 1, scope: !152, file: !153, line: 25, type: !73)
!158 = !DILocalVariable(name: "branch", arg: 2, scope: !152, file: !153, line: 25, type: !71)
!159 = !DILabel(scope: !152, name: "l_yes", file: !153, line: 33)
!160 = !DILocation(line: 25, column: 67, scope: !152)
!161 = !DILocation(line: 25, column: 77, scope: !152)
!162 = !DILocation(line: 30, column: 13, scope: !152)
!163 = !DILocation(line: 30, column: 28, scope: !152)
!164 = !DILocation(line: 30, column: 26, scope: !152)
!165 = !DILocation(line: 27, column: 2, scope: !152)
!166 = !{i64 190334, i64 190378, i64 2147686766, i64 2147686787, i64 2147686813, i64 2147686846, i64 2147686880, i64 2147686904}
!167 = !DILocation(line: 32, column: 2, scope: !152)
!168 = !DILocation(line: 33, column: 1, scope: !152)
!169 = !DILocation(line: 34, column: 2, scope: !152)
!170 = !DILocation(line: 35, column: 1, scope: !152)
!171 = distinct !DISubprogram(name: "arch_test_bit", scope: !172, file: !172, line: 237, type: !173, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!172 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!173 = !DISubroutineType(types: !174)
!174 = !{!71, !14, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "nr", arg: 1, scope: !171, file: !172, line: 237, type: !14)
!180 = !DILocalVariable(name: "addr", arg: 2, scope: !171, file: !172, line: 237, type: !175)
!181 = !DILocation(line: 237, column: 29, scope: !171)
!182 = !DILocation(line: 237, column: 63, scope: !171)
!183 = !DILocation(line: 239, column: 30, scope: !171)
!184 = !DILocation(line: 239, column: 9, scope: !171)
!185 = !DILocation(line: 239, column: 54, scope: !171)
!186 = !DILocation(line: 239, column: 58, scope: !171)
!187 = !DILocation(line: 239, column: 36, scope: !171)
!188 = !DILocation(line: 240, column: 26, scope: !171)
!189 = !DILocation(line: 240, column: 30, scope: !171)
!190 = !DILocation(line: 240, column: 8, scope: !171)
!191 = !DILocation(line: 239, column: 2, scope: !171)
!192 = distinct !DISubprogram(name: "_static_cpu_has", scope: !193, file: !193, line: 173, type: !194, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!193 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!194 = !DISubroutineType(types: !195)
!195 = !{!71, !196}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !44, line: 19, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !46, line: 24, baseType: !198)
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !{!200, !201, !202}
!200 = !DILocalVariable(name: "bit", arg: 1, scope: !192, file: !193, line: 173, type: !196)
!201 = !DILabel(scope: !192, name: "t_yes", file: !193, line: 187)
!202 = !DILabel(scope: !192, name: "t_no", file: !193, line: 189)
!203 = !DILocation(line: 173, column: 49, scope: !192)
!204 = !DILocation(line: 183, column: 24, scope: !192)
!205 = !DILocation(line: 184, column: 30, scope: !192)
!206 = !DILocation(line: 184, column: 34, scope: !192)
!207 = !DILocation(line: 184, column: 26, scope: !192)
!208 = !DILocation(line: 185, column: 70, scope: !192)
!209 = !DILocation(line: 185, column: 74, scope: !192)
!210 = !DILocation(line: 185, column: 25, scope: !192)
!211 = !DILocation(line: 175, column: 2, scope: !192)
!212 = !{i64 2149582799, i64 2149582832, i64 2149582838, i64 2149582854, i64 2149582873, i64 2149582904, i64 2149583857, i64 2149582446, i64 2149583863, i64 2149583911, i64 2149583975, i64 2149584039, i64 2149584096, i64 2149584303, i64 2149584351, i64 2149584415, i64 2149584479, i64 2149584536, i64 2149582564, i64 2149582589, i64 2149584746, i64 2149584874, i64 2149584807, i64 2149584888, i64 2149584902, i64 2149585018, i64 2149584963, i64 2149585032, i64 2149582723, i64 1709544, i64 1709584, i64 1709593, i64 1709643, i64 1709664, i64 1709684}
!213 = !DILocation(line: 187, column: 1, scope: !192)
!214 = !DILocation(line: 188, column: 2, scope: !192)
!215 = !DILocation(line: 189, column: 1, scope: !192)
!216 = !DILocation(line: 190, column: 2, scope: !192)
!217 = !DILocation(line: 191, column: 1, scope: !192)
!218 = !DISubprogram(name: "copy_mc_enhanced_fast_string", scope: !3, file: !3, line: 44, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = distinct !DISubprogram(name: "copy_mc_to_user", scope: !3, file: !3, line: 73, type: !109, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DILocalVariable(name: "dst", arg: 1, scope: !219, file: !3, line: 73, type: !15)
!222 = !DILocalVariable(name: "src", arg: 2, scope: !219, file: !3, line: 73, type: !111)
!223 = !DILocalVariable(name: "len", arg: 3, scope: !219, file: !3, line: 73, type: !7)
!224 = !DILocalVariable(name: "ret", scope: !219, file: !3, line: 75, type: !14)
!225 = !DILocalVariable(name: "branch", scope: !226, file: !3, line: 77, type: !71)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 77, column: 6)
!227 = distinct !DILexicalBlock(scope: !219, file: !3, line: 77, column: 6)
!228 = !DILocation(line: 73, column: 57, scope: !219)
!229 = !DILocation(line: 73, column: 74, scope: !219)
!230 = !DILocation(line: 73, column: 88, scope: !219)
!231 = !DILocation(line: 75, column: 2, scope: !219)
!232 = !DILocation(line: 75, column: 16, scope: !219)
!233 = !DILocation(line: 77, column: 6, scope: !226)
!234 = !DILocation(line: 77, column: 6, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 77, column: 6)
!236 = distinct !DILexicalBlock(scope: !226, file: !3, line: 77, column: 6)
!237 = !DILocation(line: 77, column: 6, scope: !236)
!238 = !DILocation(line: 77, column: 6, scope: !227)
!239 = !DILocation(line: 77, column: 6, scope: !219)
!240 = !DILocation(line: 78, column: 3, scope: !241)
!241 = distinct !DILexicalBlock(scope: !227, file: !3, line: 77, column: 31)
!242 = !DILocation(line: 79, column: 41, scope: !241)
!243 = !DILocation(line: 79, column: 46, scope: !241)
!244 = !DILocation(line: 79, column: 51, scope: !241)
!245 = !DILocation(line: 79, column: 9, scope: !241)
!246 = !DILocation(line: 79, column: 7, scope: !241)
!247 = !DILocation(line: 80, column: 3, scope: !241)
!248 = !DILocation(line: 81, column: 10, scope: !241)
!249 = !DILocation(line: 81, column: 3, scope: !241)
!250 = !DILocation(line: 84, column: 6, scope: !219)
!251 = !DILocation(line: 84, column: 6, scope: !252)
!252 = distinct !DILexicalBlock(scope: !219, file: !3, line: 84, column: 6)
!253 = !DILocation(line: 85, column: 3, scope: !254)
!254 = distinct !DILexicalBlock(scope: !252, file: !3, line: 84, column: 40)
!255 = !DILocation(line: 86, column: 54, scope: !254)
!256 = !DILocation(line: 86, column: 59, scope: !254)
!257 = !DILocation(line: 86, column: 64, scope: !254)
!258 = !DILocation(line: 86, column: 9, scope: !254)
!259 = !DILocation(line: 86, column: 7, scope: !254)
!260 = !DILocation(line: 87, column: 3, scope: !254)
!261 = !DILocation(line: 88, column: 10, scope: !254)
!262 = !DILocation(line: 88, column: 3, scope: !254)
!263 = !DILocation(line: 91, column: 43, scope: !219)
!264 = !DILocation(line: 91, column: 48, scope: !219)
!265 = !DILocation(line: 91, column: 53, scope: !219)
!266 = !DILocation(line: 91, column: 9, scope: !219)
!267 = !DILocation(line: 91, column: 2, scope: !219)
!268 = !DILocation(line: 92, column: 1, scope: !219)
!269 = distinct !DISubprogram(name: "stac", scope: !270, file: !270, line: 36, type: !64, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!270 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!271 = !DILocation(line: 39, column: 2, scope: !269)
!272 = !{i64 2151073119, i64 2151073147, i64 2151073153, i64 2151073169, i64 2151073185, i64 2151073212, i64 2151073526, i64 2151072869, i64 2151073532, i64 2151073580, i64 2151073644, i64 2151073708, i64 2151073765, i64 2151072950, i64 2151072975, i64 2151073972, i64 2151074108, i64 2151074033, i64 2151074122, i64 2151073067}
!273 = !DILocation(line: 40, column: 1, scope: !269)
!274 = distinct !DISubprogram(name: "clac", scope: !270, file: !270, line: 30, type: !64, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!275 = !DILocation(line: 33, column: 2, scope: !274)
!276 = !{i64 2151071452, i64 2151071480, i64 2151071486, i64 2151071502, i64 2151071518, i64 2151071545, i64 2151071859, i64 2151071202, i64 2151071865, i64 2151071913, i64 2151071977, i64 2151072041, i64 2151072098, i64 2151071283, i64 2151071308, i64 2151072305, i64 2151072441, i64 2151072366, i64 2151072455, i64 2151071400}
!277 = !DILocation(line: 34, column: 1, scope: !274)
!278 = distinct !DISubprogram(name: "copy_user_generic", scope: !279, file: !279, line: 105, type: !280, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!279 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!280 = !DISubroutineType(types: !281)
!281 = !{!14, !15, !111, !14}
!282 = !{!283, !284, !285}
!283 = !DILocalVariable(name: "to", arg: 1, scope: !278, file: !279, line: 105, type: !15)
!284 = !DILocalVariable(name: "from", arg: 2, scope: !278, file: !279, line: 105, type: !111)
!285 = !DILocalVariable(name: "len", arg: 3, scope: !278, file: !279, line: 105, type: !14)
!286 = !DILocation(line: 105, column: 25, scope: !278)
!287 = !DILocation(line: 105, column: 41, scope: !278)
!288 = !DILocation(line: 105, column: 61, scope: !278)
!289 = !DILocation(line: 107, column: 2, scope: !278)
!290 = !DILocation(line: 112, column: 2, scope: !278)
!291 = !{i64 4146237, i64 4146242, i64 2151632932, i64 2151632938, i64 2151632954, i64 2151632970, i64 2151632997, i64 2151633320, i64 2151632531, i64 2151633326, i64 2151633374, i64 2151633438, i64 2151633502, i64 2151633559, i64 2151632612, i64 2151632637, i64 2151633843, i64 2151633984, i64 2151633904, i64 2151633998, i64 2151632729, i64 4146339, i64 2151634063, i64 2151634107, i64 2151634130, i64 2151634163, i64 2151634194, i64 2151634233}
!292 = !DILocation(line: 120, column: 2, scope: !278)
!293 = !DILocation(line: 121, column: 9, scope: !278)
!294 = !DILocation(line: 121, column: 2, scope: !278)
!295 = distinct !DISubprogram(name: "constant_test_bit", scope: !172, file: !172, line: 204, type: !296, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!71, !49, !175}
!298 = !{!299, !300}
!299 = !DILocalVariable(name: "nr", arg: 1, scope: !295, file: !172, line: 204, type: !49)
!300 = !DILocalVariable(name: "addr", arg: 2, scope: !295, file: !172, line: 204, type: !175)
!301 = !DILocation(line: 204, column: 52, scope: !295)
!302 = !DILocation(line: 204, column: 86, scope: !295)
!303 = !DILocation(line: 206, column: 19, scope: !295)
!304 = !DILocation(line: 206, column: 22, scope: !295)
!305 = !DILocation(line: 206, column: 15, scope: !295)
!306 = !DILocation(line: 207, column: 4, scope: !295)
!307 = !DILocation(line: 207, column: 9, scope: !295)
!308 = !DILocation(line: 207, column: 12, scope: !295)
!309 = !DILocation(line: 206, column: 44, scope: !295)
!310 = !DILocation(line: 207, column: 37, scope: !295)
!311 = !DILocation(line: 206, column: 2, scope: !295)
!312 = distinct !DISubprogram(name: "variable_test_bit", scope: !172, file: !172, line: 224, type: !296, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!313 = !{!314, !315, !316}
!314 = !DILocalVariable(name: "nr", arg: 1, scope: !312, file: !172, line: 224, type: !49)
!315 = !DILocalVariable(name: "addr", arg: 2, scope: !312, file: !172, line: 224, type: !175)
!316 = !DILocalVariable(name: "oldbit", scope: !312, file: !172, line: 226, type: !71)
!317 = !DILocation(line: 224, column: 52, scope: !312)
!318 = !DILocation(line: 224, column: 86, scope: !312)
!319 = !DILocation(line: 226, column: 2, scope: !312)
!320 = !DILocation(line: 226, column: 7, scope: !312)
!321 = !DILocation(line: 231, column: 33, scope: !312)
!322 = !DILocation(line: 231, column: 46, scope: !312)
!323 = !DILocation(line: 228, column: 2, scope: !312)
!324 = !{i64 2147955551, i64 2147955625}
!325 = !DILocation(line: 233, column: 9, scope: !312)
!326 = !DILocation(line: 234, column: 1, scope: !312)
!327 = !DILocation(line: 233, column: 2, scope: !312)
