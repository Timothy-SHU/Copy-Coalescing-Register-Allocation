; ModuleID = 'arch/x86/mm/physaddr.c'
source_filename = "arch/x86/mm/physaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___virt_addr_valid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __virt_addr_valid ; .previous"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.mem_section = type { i64, ptr }
%struct.mem_section_usage = type { %struct.callback_head, [1 x i64], [0 x i64] }
%struct.callback_head = type { ptr, ptr }

@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@__UNIQUE_ID___addressable___virt_addr_valid277 = internal global ptr @__virt_addr_valid, section ".discard.addressable", align 8, !dbg !0
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@mem_section = external dso_local global ptr, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@rcu_read_unlock_sched.__UNIQUE_ID___addressable___SCK__preempt_schedule89 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !63
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable___virt_addr_valid277, ptr @rcu_read_unlock_sched.__UNIQUE_ID___addressable___SCK__preempt_schedule89], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define hidden zeroext i1 @__virt_addr_valid(i64 noundef %x) #0 align 16 !dbg !79 {
entry:
  %retval = alloca i1, align 1
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #10, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %y, metadata !86, metadata !DIExpression()), !dbg !89
  %0 = load i64, ptr %x.addr, align 8, !dbg !90
  %sub = sub i64 %0, -2147483648, !dbg !91
  store i64 %sub, ptr %y, align 8, !dbg !89
  %1 = load i64, ptr %x.addr, align 8, !dbg !92
  %2 = load i64, ptr %y, align 8, !dbg !92
  %cmp = icmp ugt i64 %1, %2, !dbg !92
  %lnot = xor i1 %cmp, true, !dbg !92
  %lnot1 = xor i1 %lnot, true, !dbg !92
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !92
  %conv = sext i32 %lnot.ext to i64, !dbg !92
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !92
  %tobool = icmp ne i64 %expval, 0, !dbg !92
  br i1 %tobool, label %if.then, label %if.else, !dbg !94

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %y, align 8, !dbg !95
  %4 = load i64, ptr @phys_base, align 8, !dbg !97
  %add = add i64 %3, %4, !dbg !98
  store i64 %add, ptr %x.addr, align 8, !dbg !99
  %5 = load i64, ptr %y, align 8, !dbg !100
  %cmp2 = icmp uge i64 %5, 1073741824, !dbg !102
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !103

if.then4:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !104

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !105

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %y, align 8, !dbg !106
  %7 = load i64, ptr @page_offset_base, align 8, !dbg !108
  %sub5 = sub i64 -2147483648, %7, !dbg !109
  %add6 = add i64 %6, %sub5, !dbg !110
  store i64 %add6, ptr %x.addr, align 8, !dbg !111
  %8 = load i64, ptr %x.addr, align 8, !dbg !112
  %9 = load i64, ptr %y, align 8, !dbg !114
  %cmp7 = icmp ugt i64 %8, %9, !dbg !115
  br i1 %cmp7, label %if.then10, label %lor.lhs.false, !dbg !116

lor.lhs.false:                                    ; preds = %if.else
  %10 = load i64, ptr %x.addr, align 8, !dbg !117
  %call = call i32 @phys_addr_valid(i64 noundef %10) #11, !dbg !118
  %tobool9 = icmp ne i32 %call, 0, !dbg !118
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !119

if.then10:                                        ; preds = %lor.lhs.false, %if.else
  store i1 false, ptr %retval, align 1, !dbg !120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !120

if.end11:                                         ; preds = %lor.lhs.false
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %11 = load i64, ptr %x.addr, align 8, !dbg !121
  %shr = lshr i64 %11, 12, !dbg !122
  %call13 = call i32 @pfn_valid(i64 noundef %shr) #11, !dbg !123
  %tobool14 = icmp ne i32 %call13, 0, !dbg !123
  store i1 %tobool14, ptr %retval, align 1, !dbg !124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !124

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #10, !dbg !125
  %12 = load i1, ptr %retval, align 1, !dbg !125
  ret i1 %12, !dbg !125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal i32 @phys_addr_valid(i64 noundef %addr) #4 align 16 !dbg !126 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load i64, ptr %addr.addr, align 8, !dbg !134
  %1 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 5), align 1, !dbg !135
  %conv = zext i8 %1 to i32, !dbg !136
  %sh_prom = zext i32 %conv to i64, !dbg !137
  %shr = lshr i64 %0, %sh_prom, !dbg !137
  %tobool = icmp ne i64 %shr, 0, !dbg !138
  %lnot = xor i1 %tobool, true, !dbg !138
  %lnot.ext = zext i1 %lnot to i32, !dbg !138
  ret i32 %lnot.ext, !dbg !139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal i32 @pfn_valid(i64 noundef %pfn) #4 align 16 !dbg !140 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca i64, align 8
  %ms = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !144, metadata !DIExpression()), !dbg !152
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #10, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %ms, metadata !145, metadata !DIExpression()), !dbg !154
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !155
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !151, metadata !DIExpression()), !dbg !156
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !157
  %shl = shl i64 %0, 12, !dbg !157
  %shr = lshr i64 %shl, 12, !dbg !157
  %1 = load i64, ptr %pfn.addr, align 8, !dbg !159
  %cmp = icmp ne i64 %shr, %1, !dbg !160
  br i1 %cmp, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !162

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %pfn.addr, align 8, !dbg !163
  %call = call i64 @pfn_to_section_nr(i64 noundef %2) #11, !dbg !165
  %call1 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #11, !dbg !166
  %3 = zext i1 %call1 to i64, !dbg !166
  %cond = select i1 %call1, i32 52, i32 46, !dbg !166
  %sub = sub i32 %cond, 27, !dbg !166
  %sh_prom = zext i32 %sub to i64, !dbg !166
  %shl2 = shl i64 1, %sh_prom, !dbg !166
  %cmp3 = icmp uge i64 %call, %shl2, !dbg !167
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !168

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !169

if.end5:                                          ; preds = %if.end
  %4 = load i64, ptr %pfn.addr, align 8, !dbg !170
  %call6 = call ptr @__pfn_to_section(i64 noundef %4) #11, !dbg !171
  store ptr %call6, ptr %ms, align 8, !dbg !172
  call void @rcu_read_lock_sched() #11, !dbg !173
  %5 = load ptr, ptr %ms, align 8, !dbg !174
  %call7 = call i32 @valid_section(ptr noundef %5) #11, !dbg !176
  %tobool = icmp ne i32 %call7, 0, !dbg !176
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !177

if.then8:                                         ; preds = %if.end5
  call void @rcu_read_unlock_sched() #11, !dbg !178
  store i32 0, ptr %retval, align 4, !dbg !180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !180

if.end9:                                          ; preds = %if.end5
  %6 = load ptr, ptr %ms, align 8, !dbg !181
  %call10 = call i32 @early_section(ptr noundef %6) #11, !dbg !182
  %tobool11 = icmp ne i32 %call10, 0, !dbg !182
  br i1 %tobool11, label %lor.end, label %lor.rhs, !dbg !183

lor.rhs:                                          ; preds = %if.end9
  %7 = load ptr, ptr %ms, align 8, !dbg !184
  %8 = load i64, ptr %pfn.addr, align 8, !dbg !185
  %call12 = call i32 @pfn_section_valid(ptr noundef %7, i64 noundef %8) #11, !dbg !186
  %tobool13 = icmp ne i32 %call12, 0, !dbg !183
  br label %lor.end, !dbg !183

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %9 = phi i1 [ true, %if.end9 ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32, !dbg !183
  store i32 %lor.ext, ptr %ret, align 4, !dbg !187
  call void @rcu_read_unlock_sched() #11, !dbg !188
  %10 = load i32, ptr %ret, align 4, !dbg !189
  store i32 %10, ptr %retval, align 4, !dbg !190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !190

cleanup:                                          ; preds = %lor.end, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !191
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #10, !dbg !191
  %11 = load i32, ptr %retval, align 4, !dbg !191
  ret i32 %11, !dbg !191
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal i64 @pfn_to_section_nr(i64 noundef %pfn) #4 align 16 !dbg !192 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !198
  %shr = lshr i64 %0, 15, !dbg !199
  ret i64 %shr, !dbg !200
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #5 align 16 !dbg !201 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !209, metadata !DIExpression()), !dbg !212
  %0 = load i16, ptr %bit.addr, align 2, !dbg !213
  %1 = load i16, ptr %bit.addr, align 2, !dbg !214
  %conv = zext i16 %1 to i32, !dbg !214
  %and = and i32 %conv, 7, !dbg !215
  %shl = shl i32 1, %and, !dbg !216
  %2 = load i16, ptr %bit.addr, align 2, !dbg !217
  %conv1 = zext i16 %2 to i32, !dbg !217
  %shr = ashr i32 %conv1, 3, !dbg !218
  %idxprom = sext i32 %shr to i64, !dbg !219
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !219
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #10
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !220, !srcloc !221

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !220

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !210), !dbg !222
  store i1 true, ptr %retval, align 1, !dbg !223
  br label %return, !dbg !223

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !211), !dbg !224
  store i1 false, ptr %retval, align 1, !dbg !225
  br label %return, !dbg !225

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !226
  ret i1 %3, !dbg !226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal ptr @__pfn_to_section(i64 noundef %pfn) #4 align 16 !dbg !227 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !233
  %call = call i64 @pfn_to_section_nr(i64 noundef %0) #11, !dbg !234
  %call1 = call ptr @__nr_to_section(i64 noundef %call) #11, !dbg !235
  ret ptr %call1, !dbg !236
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal void @rcu_read_lock_sched() #4 align 16 !dbg !237 {
entry:
  br label %do.body, !dbg !238

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #11, !dbg !239
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !239, !srcloc !241
  br label %do.end, !dbg !239

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !242

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !243

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !245

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !246

do.end4:                                          ; preds = %do.body3
  ret void, !dbg !248
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal i32 @valid_section(ptr noundef %section) #4 align 16 !dbg !249 {
entry:
  %section.addr = alloca ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section.addr, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = load ptr, ptr %section.addr, align 8, !dbg !255
  %tobool = icmp ne ptr %0, null, !dbg !255
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !256

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %section.addr, align 8, !dbg !257
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 0, !dbg !258
  %2 = load i64, ptr %section_mem_map, align 8, !dbg !258
  %and = and i64 %2, 2, !dbg !259
  %tobool1 = icmp ne i64 %and, 0, !dbg !256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !260
  %land.ext = zext i1 %3 to i32, !dbg !256
  ret i32 %land.ext, !dbg !261
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal void @rcu_read_unlock_sched() #4 align 16 !dbg !65 {
entry:
  br label %do.body, !dbg !262

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !263

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !265

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !266

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !268

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !269, !srcloc !271
  %call = call zeroext i1 @__preempt_count_dec_and_test() #11, !dbg !272
  %lnot = xor i1 %call, true, !dbg !272
  %lnot4 = xor i1 %lnot, true, !dbg !272
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !272
  %conv = sext i32 %lnot.ext to i64, !dbg !272
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !272
  %tobool = icmp ne i64 %expval, 0, !dbg !272
  br i1 %tobool, label %if.then, label %if.end, !dbg !269

if.then:                                          ; preds = %do.body3
  br label %do.body5, !dbg !272

do.body5:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !69), !dbg !274
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !274, !srcloc !276
  call void @llvm.write_register.i64(metadata !69, i64 %1), !dbg !274
  br label %do.end6, !dbg !274

do.end6:                                          ; preds = %do.body5
  br label %if.end, !dbg !274

if.end:                                           ; preds = %do.end6, %do.body3
  br label %do.end7, !dbg !269

do.end7:                                          ; preds = %if.end
  ret void, !dbg !277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal i32 @early_section(ptr noundef %section) #4 align 16 !dbg !278 {
entry:
  %section.addr = alloca ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load ptr, ptr %section.addr, align 8, !dbg !282
  %tobool = icmp ne ptr %0, null, !dbg !282
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !283

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %section.addr, align 8, !dbg !284
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 0, !dbg !285
  %2 = load i64, ptr %section_mem_map, align 8, !dbg !285
  %and = and i64 %2, 8, !dbg !286
  %tobool1 = icmp ne i64 %and, 0, !dbg !283
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !287
  %land.ext = zext i1 %3 to i32, !dbg !283
  ret i32 %land.ext, !dbg !288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal i32 @pfn_section_valid(ptr noundef %ms, i64 noundef %pfn) #4 align 16 !dbg !289 {
entry:
  %ms.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %idx = alloca i32, align 4
  %usage = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ms, ptr %ms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ms.addr, metadata !293, metadata !DIExpression()), !dbg !297
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !294, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #10, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !295, metadata !DIExpression()), !dbg !300
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !301
  %call = call i32 @subsection_map_index(i64 noundef %0) #11, !dbg !302
  store i32 %call, ptr %idx, align 4, !dbg !300
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #10, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !296, metadata !DIExpression()), !dbg !304
  br label %do.body, !dbg !305

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !307

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !307

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %ms.addr, align 8, !dbg !305
  %usage1 = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 1, !dbg !305
  %2 = load volatile ptr, ptr %usage1, align 8, !dbg !305
  store ptr %2, ptr %tmp, align 8, !dbg !307
  %3 = load ptr, ptr %tmp, align 8, !dbg !305
  store ptr %3, ptr %usage, align 8, !dbg !304
  %4 = load ptr, ptr %usage, align 8, !dbg !309
  %tobool = icmp ne ptr %4, null, !dbg !309
  br i1 %tobool, label %cond.true, label %cond.false21, !dbg !309

cond.true:                                        ; preds = %do.end
  %5 = load i32, ptr %idx, align 4, !dbg !310
  %6 = call i1 @llvm.is.constant.i32(i32 %5), !dbg !310
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !310

land.lhs.true:                                    ; preds = %cond.true
  %7 = load ptr, ptr %usage, align 8, !dbg !310
  %subsection_map = getelementptr inbounds %struct.mem_section_usage, ptr %7, i32 0, i32 1, !dbg !310
  %arraydecay = getelementptr inbounds [1 x i64], ptr %subsection_map, i64 0, i64 0, !dbg !310
  %8 = ptrtoint ptr %arraydecay to i64, !dbg !310
  %cmp = icmp ne i64 %8, 0, !dbg !310
  %conv = zext i1 %cmp to i32, !dbg !310
  %9 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !310
  br i1 %9, label %land.lhs.true2, label %cond.false, !dbg !310

land.lhs.true2:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %usage, align 8, !dbg !310
  %subsection_map3 = getelementptr inbounds %struct.mem_section_usage, ptr %10, i32 0, i32 1, !dbg !310
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %subsection_map3, i64 0, i64 0, !dbg !310
  %11 = ptrtoint ptr %arraydecay4 to i64, !dbg !310
  %cmp5 = icmp ne i64 %11, 0, !dbg !310
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !310

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %12 = load ptr, ptr %usage, align 8, !dbg !310
  %subsection_map8 = getelementptr inbounds %struct.mem_section_usage, ptr %12, i32 0, i32 1, !dbg !310
  %arraydecay9 = getelementptr inbounds [1 x i64], ptr %subsection_map8, i64 0, i64 0, !dbg !310
  %13 = load i64, ptr %arraydecay9, align 8, !dbg !310
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !310
  br i1 %14, label %cond.true10, label %cond.false, !dbg !310

cond.true10:                                      ; preds = %land.lhs.true7
  %15 = load i32, ptr %idx, align 4, !dbg !310
  %conv11 = sext i32 %15 to i64, !dbg !310
  %16 = load ptr, ptr %usage, align 8, !dbg !310
  %subsection_map12 = getelementptr inbounds %struct.mem_section_usage, ptr %16, i32 0, i32 1, !dbg !310
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %subsection_map12, i64 0, i64 0, !dbg !310
  %call14 = call zeroext i1 @const_test_bit(i64 noundef %conv11, ptr noundef %arraydecay13) #11, !dbg !310
  %conv15 = zext i1 %call14 to i32, !dbg !310
  br label %cond.end, !dbg !310

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true2, %land.lhs.true, %cond.true
  %17 = load i32, ptr %idx, align 4, !dbg !310
  %conv16 = sext i32 %17 to i64, !dbg !310
  %18 = load ptr, ptr %usage, align 8, !dbg !310
  %subsection_map17 = getelementptr inbounds %struct.mem_section_usage, ptr %18, i32 0, i32 1, !dbg !310
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %subsection_map17, i64 0, i64 0, !dbg !310
  %call19 = call zeroext i1 @_test_bit(i64 noundef %conv16, ptr noundef %arraydecay18) #11, !dbg !310
  %conv20 = zext i1 %call19 to i32, !dbg !310
  br label %cond.end, !dbg !310

cond.end:                                         ; preds = %cond.false, %cond.true10
  %cond = phi i32 [ %conv15, %cond.true10 ], [ %conv20, %cond.false ], !dbg !310
  br label %cond.end22, !dbg !309

cond.false21:                                     ; preds = %do.end
  br label %cond.end22, !dbg !309

cond.end22:                                       ; preds = %cond.false21, %cond.end
  %cond23 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false21 ], !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #10, !dbg !311
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #10, !dbg !311
  ret i32 %cond23, !dbg !312
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal ptr @__nr_to_section(i64 noundef %nr) #4 align 16 !dbg !313 {
entry:
  %retval = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %root = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !315, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #10, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %root, metadata !316, metadata !DIExpression()), !dbg !319
  %0 = load i64, ptr %nr.addr, align 8, !dbg !320
  %div = udiv i64 %0, 256, !dbg !320
  store i64 %div, ptr %root, align 8, !dbg !319
  %1 = load i64, ptr %root, align 8, !dbg !321
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #11, !dbg !321
  %2 = zext i1 %call to i64, !dbg !321
  %cond = select i1 %call, i32 52, i32 46, !dbg !321
  %sub = sub i32 %cond, 27, !dbg !321
  %sh_prom = zext i32 %sub to i64, !dbg !321
  %shl = shl i64 1, %sh_prom, !dbg !321
  %add = add i64 %shl, 256, !dbg !321
  %sub1 = sub i64 %add, 1, !dbg !321
  %div2 = udiv i64 %sub1, 256, !dbg !321
  %cmp = icmp uge i64 %1, %div2, !dbg !321
  %lnot = xor i1 %cmp, true, !dbg !321
  %lnot3 = xor i1 %lnot, true, !dbg !321
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !321
  %conv = sext i32 %lnot.ext to i64, !dbg !321
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !321
  %tobool = icmp ne i64 %expval, 0, !dbg !321
  br i1 %tobool, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !324

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @mem_section, align 8, !dbg !325
  %tobool4 = icmp ne ptr %3, null, !dbg !325
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !327

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr @mem_section, align 8, !dbg !328
  %5 = load i64, ptr %root, align 8, !dbg !329
  %arrayidx = getelementptr ptr, ptr %4, i64 %5, !dbg !328
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !328
  %tobool5 = icmp ne ptr %6, null, !dbg !328
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !330

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store ptr null, ptr %retval, align 8, !dbg !331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !331

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr @mem_section, align 8, !dbg !332
  %8 = load i64, ptr %root, align 8, !dbg !333
  %arrayidx8 = getelementptr ptr, ptr %7, i64 %8, !dbg !332
  %9 = load ptr, ptr %arrayidx8, align 8, !dbg !332
  %10 = load i64, ptr %nr.addr, align 8, !dbg !334
  %and = and i64 %10, 255, !dbg !335
  %arrayidx9 = getelementptr %struct.mem_section, ptr %9, i64 %and, !dbg !332
  store ptr %arrayidx9, ptr %retval, align 8, !dbg !336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !336

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #10, !dbg !337
  %11 = load ptr, ptr %retval, align 8, !dbg !337
  ret ptr %11, !dbg !337
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !338 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !343, metadata !DIExpression()), !dbg !351
  br label %do.body, !dbg !352

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #10, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !344, metadata !DIExpression()), !dbg !353
  %0 = load i32, ptr %val.addr, align 4, !dbg !353
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !353
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !353

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !353
  %cmp = icmp eq i32 %2, 1, !dbg !353
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !353

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !353
  %cmp1 = icmp eq i32 %3, -1, !dbg !353
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !353

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !353
  br label %cond.end, !dbg !353

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !353

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !353
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !353
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !354
  %cmp2 = icmp eq i32 %5, 1, !dbg !354
  br i1 %cmp2, label %if.then, label %if.else, !dbg !353

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #10, !dbg !355, !srcloc !357
  br label %if.end8, !dbg !354

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !358
  %cmp3 = icmp eq i32 %6, -1, !dbg !358
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !354

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #10, !dbg !359, !srcloc !361
  br label %if.end, !dbg !358

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !358

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #10, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !347, metadata !DIExpression()), !dbg !362
  %7 = load i32, ptr %val.addr, align 4, !dbg !362
  %conv = sext i32 %7 to i64, !dbg !362
  %and = and i64 %conv, 4294967295, !dbg !362
  %conv7 = trunc i64 %and to i32, !dbg !362
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !362
  %8 = load i32, ptr %pto_val__, align 4, !dbg !362
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #10, !dbg !362, !srcloc !363
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #10, !dbg !358
  br label %do.cond, !dbg !362

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !362

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #10, !dbg !352
  br label %do.end10, !dbg !353

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !364
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !365 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %c, metadata !369, metadata !DIExpression()), !dbg !371
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #10, !dbg !371, !srcloc !372
  %1 = icmp ult i8 %0, 2, !dbg !371
  call void @llvm.assume(i1 %1), !dbg !371
  store i8 %0, ptr %c, align 1, !dbg !371
  %2 = load i8, ptr %c, align 1, !dbg !371, !range !373, !noundef !374
  %tobool = trunc i8 %2 to i1, !dbg !371
  %frombool = zext i1 %tobool to i8, !dbg !371
  store i8 %frombool, ptr %tmp, align 1, !dbg !371
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10, !dbg !375
  %3 = load i8, ptr %tmp, align 1, !dbg !371, !range !373, !noundef !374
  %tobool1 = trunc i8 %3 to i1, !dbg !371
  ret i1 %tobool1, !dbg !376
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal i32 @subsection_map_index(i64 noundef %pfn) #4 align 16 !dbg !377 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !381
  %and = and i64 %0, 32767, !dbg !382
  %div = udiv i64 %and, 512, !dbg !383
  %conv = trunc i64 %div to i32, !dbg !384
  ret i32 %conv, !dbg !385
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !386 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !394, metadata !DIExpression()), !dbg !399
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !395, metadata !DIExpression()), !dbg !400
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %p, metadata !396, metadata !DIExpression()), !dbg !402
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !403
  %1 = load i64, ptr %nr.addr, align 8, !dbg !404
  %div = udiv i64 %1, 64, !dbg !404
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !405
  store ptr %add.ptr, ptr %p, align 8, !dbg !402
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !397, metadata !DIExpression()), !dbg !407
  %2 = load i64, ptr %nr.addr, align 8, !dbg !408
  %rem = urem i64 %2, 64, !dbg !408
  %shl = shl i64 1, %rem, !dbg !408
  store i64 %shl, ptr %mask, align 8, !dbg !407
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %val, metadata !398, metadata !DIExpression()), !dbg !410
  %3 = load ptr, ptr %p, align 8, !dbg !411
  %4 = load i64, ptr %3, align 8, !dbg !412
  store i64 %4, ptr %val, align 8, !dbg !410
  %5 = load i64, ptr %val, align 8, !dbg !413
  %6 = load i64, ptr %mask, align 8, !dbg !414
  %and = and i64 %5, %6, !dbg !415
  %tobool = icmp ne i64 %and, 0, !dbg !416
  %lnot = xor i1 %tobool, true, !dbg !416
  %lnot1 = xor i1 %lnot, true, !dbg !417
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !418
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !418
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !418
  ret i1 %lnot1, !dbg !419
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !420 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !423, metadata !DIExpression()), !dbg !425
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !424, metadata !DIExpression()), !dbg !426
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !427
  %1 = load i64, ptr %nr.addr, align 8, !dbg !428
  %div = udiv i64 %1, 64, !dbg !428
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !429
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !430
  %2 = load i64, ptr %nr.addr, align 8, !dbg !431
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !432
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !433
  ret i1 %call, !dbg !434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !435 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !447, metadata !DIExpression()), !dbg !449
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !448, metadata !DIExpression()), !dbg !450
  %0 = load ptr, ptr %v.addr, align 8, !dbg !451
  %1 = load i64, ptr %size.addr, align 8, !dbg !452
  %conv = trunc i64 %1 to i32, !dbg !452
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !453
  %2 = load ptr, ptr %v.addr, align 8, !dbg !454
  %3 = load i64, ptr %size.addr, align 8, !dbg !454
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !454
  ret void, !dbg !455
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !456 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !459, metadata !DIExpression()), !dbg !461
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !460, metadata !DIExpression()), !dbg !462
  %0 = load i64, ptr %nr.addr, align 8, !dbg !463
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !464
  br i1 %1, label %cond.true, label %cond.false, !dbg !464

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !465
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !466
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !467
  %conv = zext i1 %call to i32, !dbg !467
  br label %cond.end, !dbg !464

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !468
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !469
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !470
  %conv2 = zext i1 %call1 to i32, !dbg !470
  br label %cond.end, !dbg !464

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !464
  %tobool = icmp ne i32 %cond, 0, !dbg !464
  ret i1 %tobool, !dbg !471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !472 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !477, metadata !DIExpression()), !dbg !479
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !478, metadata !DIExpression()), !dbg !480
  ret i1 true, !dbg !481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !482 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !487, metadata !DIExpression()), !dbg !490
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !488, metadata !DIExpression()), !dbg !491
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !489, metadata !DIExpression()), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !494 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !499, metadata !DIExpression()), !dbg !501
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !500, metadata !DIExpression()), !dbg !502
  %0 = load i64, ptr %nr.addr, align 8, !dbg !503
  %and = and i64 %0, 63, !dbg !504
  %shl = shl i64 1, %and, !dbg !505
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !506
  %2 = load i64, ptr %nr.addr, align 8, !dbg !507
  %shr = ashr i64 %2, 6, !dbg !508
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !506
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !506
  %and1 = and i64 %shl, %3, !dbg !509
  %cmp = icmp ne i64 %and1, 0, !dbg !510
  ret i1 %cmp, !dbg !511
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !512 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !514, metadata !DIExpression()), !dbg !517
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !515, metadata !DIExpression()), !dbg !518
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !516, metadata !DIExpression()), !dbg !520
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !521
  %1 = load i64, ptr %nr.addr, align 8, !dbg !522
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !523, !srcloc !524
  %3 = icmp ult i8 %2, 2, !dbg !523
  call void @llvm.assume(i1 %3), !dbg !523
  store i8 %2, ptr %oldbit, align 1, !dbg !523
  %4 = load i8, ptr %oldbit, align 1, !dbg !525, !range !373, !noundef !374
  %tobool = trunc i8 %4 to i1, !dbg !525
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !526
  ret i1 %tobool, !dbg !527
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___virt_addr_valid277", scope: !2, file: !3, line: 67, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.physaddr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -fno-stack-protector -D KBUILD_MODFILE=\22arch/x86/mm/physaddr\22 -D KBUILD_BASENAME=\22physaddr\22 -D KBUILD_MODNAME=\22physaddr\22 -D __KBUILD_MODNAME=kmod_physaddr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/physaddr.ll arch/x86/mm/physaddr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/physaddr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0cc0172906acd4bd375339c4c768e0")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 1873, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "SECTION_MARKED_PRESENT_BIT", value: 0)
!15 = !DIEnumerator(name: "SECTION_HAS_MEM_MAP_BIT", value: 1)
!16 = !DIEnumerator(name: "SECTION_IS_ONLINE_BIT", value: 2)
!17 = !DIEnumerator(name: "SECTION_IS_EARLY_BIT", value: 3)
!18 = !DIEnumerator(name: "SECTION_MAP_LAST_BIT", value: 4)
!19 = !{!20, !21, !22, !29, !32, !33, !35, !58, !59, !61}
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !23, line: 159, baseType: !24)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section_usage", file: !12, line: 1777, size: 192, elements: !40)
!40 = !{!41, !50, !54}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !39, file: !12, line: 1778, baseType: !42, size: 128, align: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !23, line: 232, size: 128, align: 64, elements: !43)
!43 = !{!44, !46}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !23, line: 233, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !42, file: !23, line: 234, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !45}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "subsection_map", scope: !39, file: !12, line: 1780, baseType: !51, size: 64, offset: 128)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "pageblock_flags", scope: !39, file: !12, line: 1783, baseType: !55, offset: 192)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 0)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 42, baseType: !20)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!62 = !{!0, !63}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule89", scope: !65, file: !66, line: 901, type: !21, isLocal: true, isDefinition: true)
!65 = distinct !DISubprogram(name: "rcu_read_unlock_sched", scope: !66, file: !66, line: 895, type: !67, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!66 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!67 = !DISubroutineType(types: !68)
!68 = !{null}
!69 = !{!"rsp"}
!70 = !{i32 7, !"Dwarf Version", i32 5}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 8, !"cf-protection-branch", i32 1}
!74 = !{i32 4, !"function_return_thunk_extern", i32 1}
!75 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!76 = !{i32 1, !"Code Model", i32 2}
!77 = !{i32 1, !"override-stack-alignment", i32 8}
!78 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!79 = distinct !DISubprogram(name: "__virt_addr_valid", scope: !3, file: !3, line: 47, type: !80, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !20}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !83)
!83 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!84 = !{!85, !86}
!85 = !DILocalVariable(name: "x", arg: 1, scope: !79, file: !3, line: 47, type: !20)
!86 = !DILocalVariable(name: "y", scope: !79, file: !3, line: 49, type: !20)
!87 = !DILocation(line: 47, column: 38, scope: !79)
!88 = !DILocation(line: 49, column: 2, scope: !79)
!89 = !DILocation(line: 49, column: 16, scope: !79)
!90 = !DILocation(line: 49, column: 20, scope: !79)
!91 = !DILocation(line: 49, column: 22, scope: !79)
!92 = !DILocation(line: 52, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !79, file: !3, line: 52, column: 6)
!94 = !DILocation(line: 52, column: 6, scope: !79)
!95 = !DILocation(line: 53, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !3, line: 52, column: 23)
!97 = !DILocation(line: 53, column: 11, scope: !96)
!98 = !DILocation(line: 53, column: 9, scope: !96)
!99 = !DILocation(line: 53, column: 5, scope: !96)
!100 = !DILocation(line: 55, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !3, line: 55, column: 7)
!102 = !DILocation(line: 55, column: 9, scope: !101)
!103 = !DILocation(line: 55, column: 7, scope: !96)
!104 = !DILocation(line: 56, column: 4, scope: !101)
!105 = !DILocation(line: 57, column: 2, scope: !96)
!106 = !DILocation(line: 58, column: 7, scope: !107)
!107 = distinct !DILexicalBlock(scope: !93, file: !3, line: 57, column: 9)
!108 = !DILocation(line: 58, column: 33, scope: !107)
!109 = !DILocation(line: 58, column: 31, scope: !107)
!110 = !DILocation(line: 58, column: 9, scope: !107)
!111 = !DILocation(line: 58, column: 5, scope: !107)
!112 = !DILocation(line: 61, column: 8, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !3, line: 61, column: 7)
!114 = !DILocation(line: 61, column: 12, scope: !113)
!115 = !DILocation(line: 61, column: 10, scope: !113)
!116 = !DILocation(line: 61, column: 15, scope: !113)
!117 = !DILocation(line: 61, column: 35, scope: !113)
!118 = !DILocation(line: 61, column: 19, scope: !113)
!119 = !DILocation(line: 61, column: 7, scope: !107)
!120 = !DILocation(line: 62, column: 4, scope: !113)
!121 = !DILocation(line: 65, column: 19, scope: !79)
!122 = !DILocation(line: 65, column: 21, scope: !79)
!123 = !DILocation(line: 65, column: 9, scope: !79)
!124 = !DILocation(line: 65, column: 2, scope: !79)
!125 = !DILocation(line: 66, column: 1, scope: !79)
!126 = distinct !DISubprogram(name: "phys_addr_valid", scope: !127, file: !127, line: 4, type: !128, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !131)
!127 = !DIFile(filename: "arch/x86/mm/physaddr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8b03bcaca6c93b05d26996685e3d7103")
!128 = !DISubroutineType(types: !129)
!129 = !{!32, !130}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !23, line: 164, baseType: !22)
!131 = !{!132}
!132 = !DILocalVariable(name: "addr", arg: 1, scope: !126, file: !127, line: 4, type: !130)
!133 = !DILocation(line: 4, column: 51, scope: !126)
!134 = !DILocation(line: 7, column: 11, scope: !126)
!135 = !DILocation(line: 7, column: 33, scope: !126)
!136 = !DILocation(line: 7, column: 19, scope: !126)
!137 = !DILocation(line: 7, column: 16, scope: !126)
!138 = !DILocation(line: 7, column: 9, scope: !126)
!139 = !DILocation(line: 7, column: 2, scope: !126)
!140 = distinct !DISubprogram(name: "pfn_valid", scope: !12, file: !12, line: 1994, type: !141, scopeLine: 1995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!32, !20}
!143 = !{!144, !145, !151}
!144 = !DILocalVariable(name: "pfn", arg: 1, scope: !140, file: !12, line: 1994, type: !20)
!145 = !DILocalVariable(name: "ms", scope: !140, file: !12, line: 1996, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section", file: !12, line: 1790, size: 128, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "section_mem_map", scope: !147, file: !12, line: 1803, baseType: !20, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !147, file: !12, line: 1805, baseType: !38, size: 64, offset: 64)
!151 = !DILocalVariable(name: "ret", scope: !140, file: !12, line: 1997, type: !32)
!152 = !DILocation(line: 1994, column: 43, scope: !140)
!153 = !DILocation(line: 1996, column: 2, scope: !140)
!154 = !DILocation(line: 1996, column: 22, scope: !140)
!155 = !DILocation(line: 1997, column: 2, scope: !140)
!156 = !DILocation(line: 1997, column: 6, scope: !140)
!157 = !DILocation(line: 2005, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !140, file: !12, line: 2005, column: 6)
!159 = !DILocation(line: 2005, column: 33, scope: !158)
!160 = !DILocation(line: 2005, column: 30, scope: !158)
!161 = !DILocation(line: 2005, column: 6, scope: !140)
!162 = !DILocation(line: 2006, column: 3, scope: !158)
!163 = !DILocation(line: 2008, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !140, file: !12, line: 2008, column: 6)
!165 = !DILocation(line: 2008, column: 6, scope: !164)
!166 = !DILocation(line: 2008, column: 32, scope: !164)
!167 = !DILocation(line: 2008, column: 29, scope: !164)
!168 = !DILocation(line: 2008, column: 6, scope: !140)
!169 = !DILocation(line: 2009, column: 3, scope: !164)
!170 = !DILocation(line: 2010, column: 24, scope: !140)
!171 = !DILocation(line: 2010, column: 7, scope: !140)
!172 = !DILocation(line: 2010, column: 5, scope: !140)
!173 = !DILocation(line: 2011, column: 2, scope: !140)
!174 = !DILocation(line: 2012, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !140, file: !12, line: 2012, column: 6)
!176 = !DILocation(line: 2012, column: 7, scope: !175)
!177 = !DILocation(line: 2012, column: 6, scope: !140)
!178 = !DILocation(line: 2013, column: 3, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !12, line: 2012, column: 26)
!180 = !DILocation(line: 2014, column: 3, scope: !179)
!181 = !DILocation(line: 2020, column: 22, scope: !140)
!182 = !DILocation(line: 2020, column: 8, scope: !140)
!183 = !DILocation(line: 2020, column: 26, scope: !140)
!184 = !DILocation(line: 2020, column: 47, scope: !140)
!185 = !DILocation(line: 2020, column: 51, scope: !140)
!186 = !DILocation(line: 2020, column: 29, scope: !140)
!187 = !DILocation(line: 2020, column: 6, scope: !140)
!188 = !DILocation(line: 2021, column: 2, scope: !140)
!189 = !DILocation(line: 2023, column: 9, scope: !140)
!190 = !DILocation(line: 2023, column: 2, scope: !140)
!191 = !DILocation(line: 2024, column: 1, scope: !140)
!192 = distinct !DISubprogram(name: "pfn_to_section_nr", scope: !12, file: !12, line: 1749, type: !193, scopeLine: 1750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!20, !20}
!195 = !{!196}
!196 = !DILocalVariable(name: "pfn", arg: 1, scope: !192, file: !12, line: 1749, type: !20)
!197 = !DILocation(line: 1749, column: 61, scope: !192)
!198 = !DILocation(line: 1751, column: 9, scope: !192)
!199 = !DILocation(line: 1751, column: 13, scope: !192)
!200 = !DILocation(line: 1751, column: 2, scope: !192)
!201 = distinct !DISubprogram(name: "_static_cpu_has", scope: !202, file: !202, line: 173, type: !203, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!202 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!203 = !DISubroutineType(types: !204)
!204 = !{!82, !205}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !207)
!207 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!208 = !{!209, !210, !211}
!209 = !DILocalVariable(name: "bit", arg: 1, scope: !201, file: !202, line: 173, type: !205)
!210 = !DILabel(scope: !201, name: "t_yes", file: !202, line: 187)
!211 = !DILabel(scope: !201, name: "t_no", file: !202, line: 189)
!212 = !DILocation(line: 173, column: 49, scope: !201)
!213 = !DILocation(line: 183, column: 24, scope: !201)
!214 = !DILocation(line: 184, column: 30, scope: !201)
!215 = !DILocation(line: 184, column: 34, scope: !201)
!216 = !DILocation(line: 184, column: 26, scope: !201)
!217 = !DILocation(line: 185, column: 70, scope: !201)
!218 = !DILocation(line: 185, column: 74, scope: !201)
!219 = !DILocation(line: 185, column: 25, scope: !201)
!220 = !DILocation(line: 175, column: 2, scope: !201)
!221 = !{i64 2149657342, i64 2149657375, i64 2149657381, i64 2149657397, i64 2149657416, i64 2149657447, i64 2149658400, i64 2149656989, i64 2149658406, i64 2149658454, i64 2149658518, i64 2149658582, i64 2149658639, i64 2149658846, i64 2149658894, i64 2149658958, i64 2149659022, i64 2149659079, i64 2149657107, i64 2149657132, i64 2149659289, i64 2149659417, i64 2149659350, i64 2149659431, i64 2149659445, i64 2149659561, i64 2149659506, i64 2149659575, i64 2149657266, i64 1136179, i64 1136219, i64 1136228, i64 1136278, i64 1136299, i64 1136319}
!222 = !DILocation(line: 187, column: 1, scope: !201)
!223 = !DILocation(line: 188, column: 2, scope: !201)
!224 = !DILocation(line: 189, column: 1, scope: !201)
!225 = !DILocation(line: 190, column: 2, scope: !201)
!226 = !DILocation(line: 191, column: 1, scope: !201)
!227 = distinct !DISubprogram(name: "__pfn_to_section", scope: !12, file: !12, line: 1955, type: !228, scopeLine: 1956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!146, !20}
!230 = !{!231}
!231 = !DILocalVariable(name: "pfn", arg: 1, scope: !227, file: !12, line: 1955, type: !20)
!232 = !DILocation(line: 1955, column: 66, scope: !227)
!233 = !DILocation(line: 1957, column: 43, scope: !227)
!234 = !DILocation(line: 1957, column: 25, scope: !227)
!235 = !DILocation(line: 1957, column: 9, scope: !227)
!236 = !DILocation(line: 1957, column: 2, scope: !227)
!237 = distinct !DISubprogram(name: "rcu_read_lock_sched", scope: !66, file: !66, line: 874, type: !67, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!238 = !DILocation(line: 876, column: 2, scope: !237)
!239 = !DILocation(line: 876, column: 2, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !66, line: 876, column: 2)
!241 = !{i64 2150408147}
!242 = !DILocation(line: 878, column: 2, scope: !237)
!243 = !DILocation(line: 878, column: 2, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !66, line: 878, column: 2)
!245 = !DILocation(line: 879, column: 2, scope: !237)
!246 = !DILocation(line: 879, column: 2, scope: !247)
!247 = distinct !DILexicalBlock(scope: !237, file: !66, line: 879, column: 2)
!248 = !DILocation(line: 881, column: 1, scope: !237)
!249 = distinct !DISubprogram(name: "valid_section", scope: !12, file: !12, line: 1911, type: !250, scopeLine: 1912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{!32, !146}
!252 = !{!253}
!253 = !DILocalVariable(name: "section", arg: 1, scope: !249, file: !12, line: 1911, type: !146)
!254 = !DILocation(line: 1911, column: 53, scope: !249)
!255 = !DILocation(line: 1913, column: 10, scope: !249)
!256 = !DILocation(line: 1913, column: 18, scope: !249)
!257 = !DILocation(line: 1913, column: 22, scope: !249)
!258 = !DILocation(line: 1913, column: 31, scope: !249)
!259 = !DILocation(line: 1913, column: 47, scope: !249)
!260 = !DILocation(line: 0, scope: !249)
!261 = !DILocation(line: 1913, column: 2, scope: !249)
!262 = !DILocation(line: 897, column: 2, scope: !65)
!263 = !DILocation(line: 897, column: 2, scope: !264)
!264 = distinct !DILexicalBlock(scope: !65, file: !66, line: 897, column: 2)
!265 = !DILocation(line: 899, column: 2, scope: !65)
!266 = !DILocation(line: 899, column: 2, scope: !267)
!267 = distinct !DILexicalBlock(scope: !65, file: !66, line: 899, column: 2)
!268 = !DILocation(line: 901, column: 2, scope: !65)
!269 = !DILocation(line: 901, column: 2, scope: !270)
!270 = distinct !DILexicalBlock(scope: !65, file: !66, line: 901, column: 2)
!271 = !{i64 2150408929}
!272 = !DILocation(line: 901, column: 2, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !66, line: 901, column: 2)
!274 = !DILocation(line: 901, column: 2, scope: !275)
!275 = distinct !DILexicalBlock(scope: !273, file: !66, line: 901, column: 2)
!276 = !{i64 2150409111}
!277 = !DILocation(line: 902, column: 1, scope: !65)
!278 = distinct !DISubprogram(name: "early_section", scope: !12, file: !12, line: 1916, type: !250, scopeLine: 1917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!279 = !{!280}
!280 = !DILocalVariable(name: "section", arg: 1, scope: !278, file: !12, line: 1916, type: !146)
!281 = !DILocation(line: 1916, column: 53, scope: !278)
!282 = !DILocation(line: 1918, column: 10, scope: !278)
!283 = !DILocation(line: 1918, column: 18, scope: !278)
!284 = !DILocation(line: 1918, column: 22, scope: !278)
!285 = !DILocation(line: 1918, column: 31, scope: !278)
!286 = !DILocation(line: 1918, column: 47, scope: !278)
!287 = !DILocation(line: 0, scope: !278)
!288 = !DILocation(line: 1918, column: 2, scope: !278)
!289 = distinct !DISubprogram(name: "pfn_section_valid", scope: !12, file: !12, line: 1968, type: !290, scopeLine: 1969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!32, !146, !20}
!292 = !{!293, !294, !295, !296}
!293 = !DILocalVariable(name: "ms", arg: 1, scope: !289, file: !12, line: 1968, type: !146)
!294 = !DILocalVariable(name: "pfn", arg: 2, scope: !289, file: !12, line: 1968, type: !20)
!295 = !DILocalVariable(name: "idx", scope: !289, file: !12, line: 1970, type: !32)
!296 = !DILocalVariable(name: "usage", scope: !289, file: !12, line: 1971, type: !38)
!297 = !DILocation(line: 1968, column: 57, scope: !289)
!298 = !DILocation(line: 1968, column: 75, scope: !289)
!299 = !DILocation(line: 1970, column: 2, scope: !289)
!300 = !DILocation(line: 1970, column: 6, scope: !289)
!301 = !DILocation(line: 1970, column: 33, scope: !289)
!302 = !DILocation(line: 1970, column: 12, scope: !289)
!303 = !DILocation(line: 1971, column: 2, scope: !289)
!304 = !DILocation(line: 1971, column: 28, scope: !289)
!305 = !DILocation(line: 1971, column: 36, scope: !306)
!306 = distinct !DILexicalBlock(scope: !289, file: !12, line: 1971, column: 36)
!307 = !DILocation(line: 1971, column: 36, scope: !308)
!308 = distinct !DILexicalBlock(scope: !306, file: !12, line: 1971, column: 36)
!309 = !DILocation(line: 1973, column: 9, scope: !289)
!310 = !DILocation(line: 1973, column: 17, scope: !289)
!311 = !DILocation(line: 1974, column: 1, scope: !289)
!312 = !DILocation(line: 1973, column: 2, scope: !289)
!313 = distinct !DISubprogram(name: "__nr_to_section", scope: !12, file: !12, line: 1841, type: !228, scopeLine: 1842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !314)
!314 = !{!315, !316}
!315 = !DILocalVariable(name: "nr", arg: 1, scope: !313, file: !12, line: 1841, type: !20)
!316 = !DILocalVariable(name: "root", scope: !313, file: !12, line: 1843, type: !20)
!317 = !DILocation(line: 1841, column: 65, scope: !313)
!318 = !DILocation(line: 1843, column: 2, scope: !313)
!319 = !DILocation(line: 1843, column: 16, scope: !313)
!320 = !DILocation(line: 1843, column: 23, scope: !313)
!321 = !DILocation(line: 1845, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !313, file: !12, line: 1845, column: 6)
!323 = !DILocation(line: 1845, column: 6, scope: !313)
!324 = !DILocation(line: 1846, column: 3, scope: !322)
!325 = !DILocation(line: 1849, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !313, file: !12, line: 1849, column: 6)
!327 = !DILocation(line: 1849, column: 19, scope: !326)
!328 = !DILocation(line: 1849, column: 23, scope: !326)
!329 = !DILocation(line: 1849, column: 35, scope: !326)
!330 = !DILocation(line: 1849, column: 6, scope: !313)
!331 = !DILocation(line: 1850, column: 3, scope: !326)
!332 = !DILocation(line: 1852, column: 10, scope: !313)
!333 = !DILocation(line: 1852, column: 22, scope: !313)
!334 = !DILocation(line: 1852, column: 28, scope: !313)
!335 = !DILocation(line: 1852, column: 31, scope: !313)
!336 = !DILocation(line: 1852, column: 2, scope: !313)
!337 = !DILocation(line: 1853, column: 1, scope: !313)
!338 = distinct !DISubprogram(name: "__preempt_count_add", scope: !339, file: !339, line: 78, type: !340, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!339 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!340 = !DISubroutineType(types: !341)
!341 = !{null, !32}
!342 = !{!343, !344, !347}
!343 = !DILocalVariable(name: "val", arg: 1, scope: !338, file: !339, line: 78, type: !32)
!344 = !DILocalVariable(name: "pao_ID__", scope: !345, file: !339, line: 80, type: !346)
!345 = distinct !DILexicalBlock(scope: !338, file: !339, line: 80, column: 2)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!347 = !DILocalVariable(name: "pto_val__", scope: !348, file: !339, line: 80, type: !33)
!348 = distinct !DILexicalBlock(scope: !349, file: !339, line: 80, column: 2)
!349 = distinct !DILexicalBlock(scope: !350, file: !339, line: 80, column: 2)
!350 = distinct !DILexicalBlock(scope: !345, file: !339, line: 80, column: 2)
!351 = !DILocation(line: 78, column: 53, scope: !338)
!352 = !DILocation(line: 80, column: 2, scope: !338)
!353 = !DILocation(line: 80, column: 2, scope: !345)
!354 = !DILocation(line: 80, column: 2, scope: !350)
!355 = !DILocation(line: 80, column: 2, scope: !356)
!356 = distinct !DILexicalBlock(scope: !350, file: !339, line: 80, column: 2)
!357 = !{i64 2149678431}
!358 = !DILocation(line: 80, column: 2, scope: !349)
!359 = !DILocation(line: 80, column: 2, scope: !360)
!360 = distinct !DILexicalBlock(scope: !349, file: !339, line: 80, column: 2)
!361 = !{i64 2149678726}
!362 = !DILocation(line: 80, column: 2, scope: !348)
!363 = !{i64 2149679431}
!364 = !DILocation(line: 81, column: 1, scope: !338)
!365 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !339, file: !339, line: 93, type: !366, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!82}
!368 = !{!369}
!369 = !DILocalVariable(name: "c", scope: !370, file: !339, line: 95, type: !82)
!370 = distinct !DILexicalBlock(scope: !365, file: !339, line: 95, column: 9)
!371 = !DILocation(line: 95, column: 9, scope: !370)
!372 = !{i64 2149682787, i64 2149682880}
!373 = !{i8 0, i8 2}
!374 = !{}
!375 = !DILocation(line: 95, column: 9, scope: !365)
!376 = !DILocation(line: 95, column: 2, scope: !365)
!377 = distinct !DISubprogram(name: "subsection_map_index", scope: !12, file: !12, line: 1962, type: !141, scopeLine: 1963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!378 = !{!379}
!379 = !DILocalVariable(name: "pfn", arg: 1, scope: !377, file: !12, line: 1962, type: !20)
!380 = !DILocation(line: 1962, column: 54, scope: !377)
!381 = !DILocation(line: 1964, column: 10, scope: !377)
!382 = !DILocation(line: 1964, column: 14, scope: !377)
!383 = !DILocation(line: 1964, column: 38, scope: !377)
!384 = !DILocation(line: 1964, column: 9, scope: !377)
!385 = !DILocation(line: 1964, column: 2, scope: !377)
!386 = distinct !DISubprogram(name: "const_test_bit", scope: !387, file: !387, line: 166, type: !388, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!387 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!388 = !DISubroutineType(types: !389)
!389 = !{!82, !20, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!393 = !{!394, !395, !396, !397, !398}
!394 = !DILocalVariable(name: "nr", arg: 1, scope: !386, file: !387, line: 166, type: !20)
!395 = !DILocalVariable(name: "addr", arg: 2, scope: !386, file: !387, line: 166, type: !390)
!396 = !DILocalVariable(name: "p", scope: !386, file: !387, line: 168, type: !59)
!397 = !DILocalVariable(name: "mask", scope: !386, file: !387, line: 169, type: !20)
!398 = !DILocalVariable(name: "val", scope: !386, file: !387, line: 170, type: !20)
!399 = !DILocation(line: 166, column: 30, scope: !386)
!400 = !DILocation(line: 166, column: 64, scope: !386)
!401 = !DILocation(line: 168, column: 2, scope: !386)
!402 = !DILocation(line: 168, column: 23, scope: !386)
!403 = !DILocation(line: 168, column: 50, scope: !386)
!404 = !DILocation(line: 168, column: 57, scope: !386)
!405 = !DILocation(line: 168, column: 55, scope: !386)
!406 = !DILocation(line: 169, column: 2, scope: !386)
!407 = !DILocation(line: 169, column: 16, scope: !386)
!408 = !DILocation(line: 169, column: 23, scope: !386)
!409 = !DILocation(line: 170, column: 2, scope: !386)
!410 = !DILocation(line: 170, column: 16, scope: !386)
!411 = !DILocation(line: 170, column: 23, scope: !386)
!412 = !DILocation(line: 170, column: 22, scope: !386)
!413 = !DILocation(line: 172, column: 12, scope: !386)
!414 = !DILocation(line: 172, column: 18, scope: !386)
!415 = !DILocation(line: 172, column: 16, scope: !386)
!416 = !DILocation(line: 172, column: 10, scope: !386)
!417 = !DILocation(line: 172, column: 9, scope: !386)
!418 = !DILocation(line: 173, column: 1, scope: !386)
!419 = !DILocation(line: 172, column: 2, scope: !386)
!420 = distinct !DISubprogram(name: "_test_bit", scope: !421, file: !421, line: 139, type: !388, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!421 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!422 = !{!423, !424}
!423 = !DILocalVariable(name: "nr", arg: 1, scope: !420, file: !421, line: 139, type: !20)
!424 = !DILocalVariable(name: "addr", arg: 2, scope: !420, file: !421, line: 139, type: !390)
!425 = !DILocation(line: 139, column: 25, scope: !420)
!426 = !DILocation(line: 139, column: 59, scope: !420)
!427 = !DILocation(line: 141, column: 25, scope: !420)
!428 = !DILocation(line: 141, column: 32, scope: !420)
!429 = !DILocation(line: 141, column: 30, scope: !420)
!430 = !DILocation(line: 141, column: 2, scope: !420)
!431 = !DILocation(line: 142, column: 23, scope: !420)
!432 = !DILocation(line: 142, column: 27, scope: !420)
!433 = !DILocation(line: 142, column: 9, scope: !420)
!434 = !DILocation(line: 142, column: 2, scope: !420)
!435 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !436, file: !436, line: 66, type: !437, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !446)
!436 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439, !442}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !444, line: 72, baseType: !445)
!444 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !444, line: 16, baseType: !20)
!446 = !{!447, !448}
!447 = !DILocalVariable(name: "v", arg: 1, scope: !435, file: !436, line: 66, type: !439)
!448 = !DILocalVariable(name: "size", arg: 2, scope: !435, file: !436, line: 66, type: !442)
!449 = !DILocation(line: 66, column: 73, scope: !435)
!450 = !DILocation(line: 66, column: 83, scope: !435)
!451 = !DILocation(line: 68, column: 19, scope: !435)
!452 = !DILocation(line: 68, column: 22, scope: !435)
!453 = !DILocation(line: 68, column: 2, scope: !435)
!454 = !DILocation(line: 69, column: 2, scope: !435)
!455 = !DILocation(line: 70, column: 1, scope: !435)
!456 = distinct !DISubprogram(name: "arch_test_bit", scope: !457, file: !457, line: 237, type: !388, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!457 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!458 = !{!459, !460}
!459 = !DILocalVariable(name: "nr", arg: 1, scope: !456, file: !457, line: 237, type: !20)
!460 = !DILocalVariable(name: "addr", arg: 2, scope: !456, file: !457, line: 237, type: !390)
!461 = !DILocation(line: 237, column: 29, scope: !456)
!462 = !DILocation(line: 237, column: 63, scope: !456)
!463 = !DILocation(line: 239, column: 30, scope: !456)
!464 = !DILocation(line: 239, column: 9, scope: !456)
!465 = !DILocation(line: 239, column: 54, scope: !456)
!466 = !DILocation(line: 239, column: 58, scope: !456)
!467 = !DILocation(line: 239, column: 36, scope: !456)
!468 = !DILocation(line: 240, column: 26, scope: !456)
!469 = !DILocation(line: 240, column: 30, scope: !456)
!470 = !DILocation(line: 240, column: 8, scope: !456)
!471 = !DILocation(line: 239, column: 2, scope: !456)
!472 = distinct !DISubprogram(name: "kasan_check_read", scope: !473, file: !473, line: 40, type: !474, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !476)
!473 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!474 = !DISubroutineType(types: !475)
!475 = !{!82, !439, !7}
!476 = !{!477, !478}
!477 = !DILocalVariable(name: "p", arg: 1, scope: !472, file: !473, line: 40, type: !439)
!478 = !DILocalVariable(name: "size", arg: 2, scope: !472, file: !473, line: 40, type: !7)
!479 = !DILocation(line: 40, column: 58, scope: !472)
!480 = !DILocation(line: 40, column: 74, scope: !472)
!481 = !DILocation(line: 42, column: 2, scope: !472)
!482 = distinct !DISubprogram(name: "kcsan_check_access", scope: !483, file: !483, line: 229, type: !484, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !486)
!483 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!484 = !DISubroutineType(types: !485)
!485 = !{null, !439, !442, !32}
!486 = !{!487, !488, !489}
!487 = !DILocalVariable(name: "ptr", arg: 1, scope: !482, file: !483, line: 229, type: !439)
!488 = !DILocalVariable(name: "size", arg: 2, scope: !482, file: !483, line: 229, type: !442)
!489 = !DILocalVariable(name: "type", arg: 3, scope: !482, file: !483, line: 230, type: !32)
!490 = !DILocation(line: 229, column: 60, scope: !482)
!491 = !DILocation(line: 229, column: 72, scope: !482)
!492 = !DILocation(line: 230, column: 15, scope: !482)
!493 = !DILocation(line: 230, column: 23, scope: !482)
!494 = distinct !DISubprogram(name: "constant_test_bit", scope: !457, file: !457, line: 204, type: !495, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!495 = !DISubroutineType(types: !496)
!496 = !{!82, !497, !390}
!497 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!498 = !{!499, !500}
!499 = !DILocalVariable(name: "nr", arg: 1, scope: !494, file: !457, line: 204, type: !497)
!500 = !DILocalVariable(name: "addr", arg: 2, scope: !494, file: !457, line: 204, type: !390)
!501 = !DILocation(line: 204, column: 52, scope: !494)
!502 = !DILocation(line: 204, column: 86, scope: !494)
!503 = !DILocation(line: 206, column: 19, scope: !494)
!504 = !DILocation(line: 206, column: 22, scope: !494)
!505 = !DILocation(line: 206, column: 15, scope: !494)
!506 = !DILocation(line: 207, column: 4, scope: !494)
!507 = !DILocation(line: 207, column: 9, scope: !494)
!508 = !DILocation(line: 207, column: 12, scope: !494)
!509 = !DILocation(line: 206, column: 44, scope: !494)
!510 = !DILocation(line: 207, column: 37, scope: !494)
!511 = !DILocation(line: 206, column: 2, scope: !494)
!512 = distinct !DISubprogram(name: "variable_test_bit", scope: !457, file: !457, line: 224, type: !495, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!513 = !{!514, !515, !516}
!514 = !DILocalVariable(name: "nr", arg: 1, scope: !512, file: !457, line: 224, type: !497)
!515 = !DILocalVariable(name: "addr", arg: 2, scope: !512, file: !457, line: 224, type: !390)
!516 = !DILocalVariable(name: "oldbit", scope: !512, file: !457, line: 226, type: !82)
!517 = !DILocation(line: 224, column: 52, scope: !512)
!518 = !DILocation(line: 224, column: 86, scope: !512)
!519 = !DILocation(line: 226, column: 2, scope: !512)
!520 = !DILocation(line: 226, column: 7, scope: !512)
!521 = !DILocation(line: 231, column: 33, scope: !512)
!522 = !DILocation(line: 231, column: 46, scope: !512)
!523 = !DILocation(line: 228, column: 2, scope: !512)
!524 = !{i64 2148325026, i64 2148325100}
!525 = !DILocation(line: 233, column: 9, scope: !512)
!526 = !DILocation(line: 234, column: 1, scope: !512)
!527 = !DILocation(line: 233, column: 2, scope: !512)
