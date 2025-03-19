; ModuleID = 'arch/x86/kernel/jump_label.c'
source_filename = "arch/x86/kernel/jump_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.text_poke_insn = type { [5 x i8] }
%struct.insn = type { %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %union.anon.0, %union.anon.1, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.insn_field = type { %union.anon, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { %struct.insn_field }
%union.anon.1 = type { %struct.insn_field }
%struct.jump_entry = type { i32, i32, i64 }
%struct.jump_label_patch = type { ptr, i32 }
%struct.anon.4 = type <{ i8, i32 }>

@.str = private unnamed_addr constant [29 x i8] c"arch/x86/kernel/jump_label.c\00", align 1, !dbg !0
@system_state = external dso_local global i32, align 4
@text_mutex = external dso_local global %struct.mutex, align 8
@x86_nops = external dso_local constant [0 x ptr], align 8
@.str.1 = private unnamed_addr constant [91 x i8] c"\012jump_label: Fatal kernel bug, unexpected op at %pS [%p] (%5ph != %5ph)) size:%d type:%d\0A\00", align 1, !dbg !7
@text_gen_insn.insn = internal global %union.text_poke_insn zeroinitializer, align 1, !dbg !12
@.str.2 = private unnamed_addr constant [37 x i8] c"arch/x86/include/asm/text-patching.h\00", align 1, !dbg !61

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_jump_entry_size(ptr noundef %entry1) #0 align 16 !dbg !93 {
entry:
  %entry.addr = alloca ptr, align 8
  %insn = alloca %struct.insn, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !103, metadata !DIExpression()), !dbg !152
  call void @llvm.lifetime.start.p0(i64 112, ptr %insn) #11, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !104, metadata !DIExpression()), !dbg !154
  call void @llvm.memset.p0.i64(ptr align 8 %insn, i8 0, i64 112, i1 false), !dbg !154
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !155
  %call = call i64 @jump_entry_code(ptr noundef %0) #12, !dbg !155
  %1 = inttoptr i64 %call to ptr, !dbg !155
  %call2 = call i32 @insn_decode(ptr noundef %insn, ptr noundef %1, i32 noundef 15, i32 noundef 2) #12, !dbg !155
  br label %do.body, !dbg !156

do.body:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !157
  %2 = load i8, ptr %length, align 2, !dbg !157
  %conv = zext i8 %2 to i32, !dbg !157
  %cmp = icmp ne i32 %conv, 2, !dbg !157
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !157

land.rhs:                                         ; preds = %do.body
  %length4 = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !157
  %3 = load i8, ptr %length4, align 2, !dbg !157
  %conv5 = zext i8 %3 to i32, !dbg !157
  %cmp6 = icmp ne i32 %conv5, 5, !dbg !157
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %4 = phi i1 [ false, %do.body ], [ %cmp6, %land.rhs ], !dbg !160
  %lnot = xor i1 %4, true, !dbg !157
  %lnot8 = xor i1 %lnot, true, !dbg !157
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !157
  %conv9 = sext i32 %lnot.ext to i64, !dbg !157
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !157
  %tobool = icmp ne i64 %expval, 0, !dbg !157
  br i1 %tobool, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %land.end
  br label %do.body10, !dbg !157

do.body10:                                        ; preds = %if.then
  br label %do.body11, !dbg !162

do.body11:                                        ; preds = %do.body10
  br label %do.cond, !dbg !164

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !164

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !162

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 25, i32 0, i64 12) #11, !dbg !166, !srcloc !168
  br label %do.cond13, !dbg !166

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !166

do.end14:                                         ; preds = %do.cond13
  unreachable, !dbg !162

do.cond15:                                        ; No predecessors!
  br label %do.end16, !dbg !162

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !162

if.end:                                           ; preds = %do.end16, %land.end
  br label %do.cond17, !dbg !161

do.cond17:                                        ; preds = %if.end
  br label %do.end18, !dbg !161

do.end18:                                         ; preds = %do.cond17
  %length19 = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !169
  %5 = load i8, ptr %length19, align 2, !dbg !169
  %conv20 = zext i8 %5 to i32, !dbg !170
  call void @llvm.lifetime.end.p0(i64 112, ptr %insn) #11, !dbg !171
  ret i32 %conv20, !dbg !172
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !173 dso_local i32 @insn_decode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @jump_entry_code(ptr noundef %entry1) #5 align 16 !dbg !177 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !185
  %code = getelementptr inbounds %struct.jump_entry, ptr %0, i32 0, i32 0, !dbg !186
  %1 = ptrtoint ptr %code to i64, !dbg !187
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !188
  %code2 = getelementptr inbounds %struct.jump_entry, ptr %2, i32 0, i32 0, !dbg !189
  %3 = load i32, ptr %code2, align 8, !dbg !189
  %conv = sext i32 %3 to i64, !dbg !188
  %add = add i64 %1, %conv, !dbg !190
  ret i64 %add, !dbg !191
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_jump_label_transform(ptr noundef %entry1, i32 noundef %type) #0 align 16 !dbg !192 {
entry:
  %entry.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !196, metadata !DIExpression()), !dbg !198
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !197, metadata !DIExpression()), !dbg !199
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !200
  %1 = load i32, ptr %type.addr, align 4, !dbg !201
  call void @jump_label_transform(ptr noundef %0, i32 noundef %1, i32 noundef 0) #12, !dbg !202
  ret void, !dbg !203
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jump_label_transform(ptr noundef %entry1, i32 noundef %type, i32 noundef %init) #7 section ".ref.text" align 16 !dbg !204 {
entry:
  %entry.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %init.addr = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !208, metadata !DIExpression()), !dbg !211
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !209, metadata !DIExpression()), !dbg !212
  store i32 %init, ptr %init.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !210, metadata !DIExpression()), !dbg !213
  call void @mutex_lock(ptr noundef @text_mutex) #12, !dbg !214
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !215
  %1 = load i32, ptr %type.addr, align 4, !dbg !216
  %2 = load i32, ptr %init.addr, align 4, !dbg !217
  call void @__jump_label_transform(ptr noundef %0, i32 noundef %1, i32 noundef %2) #12, !dbg !218
  call void @mutex_unlock(ptr noundef @text_mutex) #12, !dbg !219
  ret void, !dbg !220
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @arch_jump_label_transform_queue(ptr noundef %entry1, i32 noundef %type) #0 align 16 !dbg !221 {
entry:
  %retval = alloca i1, align 1
  %entry.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %jlp = alloca %struct.jump_label_patch, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.jump_label_patch, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !228, metadata !DIExpression()), !dbg !235
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !229, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 16, ptr %jlp) #11, !dbg !237
  call void @llvm.dbg.declare(metadata ptr %jlp, metadata !230, metadata !DIExpression()), !dbg !238
  %0 = load i32, ptr @system_state, align 4, !dbg !239
  %cmp = icmp eq i32 %0, 0, !dbg !241
  br i1 %cmp, label %if.then, label %if.end, !dbg !242

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !243
  %2 = load i32, ptr %type.addr, align 4, !dbg !245
  call void @arch_jump_label_transform(ptr noundef %1, i32 noundef %2) #12, !dbg !246
  store i1 true, ptr %retval, align 1, !dbg !247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !247

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @text_mutex) #12, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #11, !dbg !249
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !250
  %4 = load i32, ptr %type.addr, align 4, !dbg !251
  %call = call { ptr, i32 } @__jump_label_patch(ptr noundef %3, i32 noundef %4) #12, !dbg !249
  %5 = getelementptr inbounds { ptr, i32 }, ptr %tmp, i32 0, i32 0, !dbg !249
  %6 = extractvalue { ptr, i32 } %call, 0, !dbg !249
  store ptr %6, ptr %5, align 8, !dbg !249
  %7 = getelementptr inbounds { ptr, i32 }, ptr %tmp, i32 0, i32 1, !dbg !249
  %8 = extractvalue { ptr, i32 } %call, 1, !dbg !249
  store i32 %8, ptr %7, align 8, !dbg !249
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %jlp, ptr align 8 %tmp, i64 16, i1 false), !dbg !249
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #11, !dbg !249
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !252
  %call2 = call i64 @jump_entry_code(ptr noundef %9) #12, !dbg !253
  %10 = inttoptr i64 %call2 to ptr, !dbg !254
  %code = getelementptr inbounds %struct.jump_label_patch, ptr %jlp, i32 0, i32 0, !dbg !255
  %11 = load ptr, ptr %code, align 8, !dbg !255
  %size = getelementptr inbounds %struct.jump_label_patch, ptr %jlp, i32 0, i32 1, !dbg !256
  %12 = load i32, ptr %size, align 8, !dbg !256
  %conv = sext i32 %12 to i64, !dbg !257
  call void @text_poke_queue(ptr noundef %10, ptr noundef %11, i64 noundef %conv, ptr noundef null) #12, !dbg !258
  call void @mutex_unlock(ptr noundef @text_mutex) #12, !dbg !259
  store i1 true, ptr %retval, align 1, !dbg !260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !260

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %jlp) #11, !dbg !261
  %13 = load i1, ptr %retval, align 1, !dbg !261
  ret i1 %13, !dbg !261
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !262 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @__jump_label_patch(ptr noundef %entry1, i32 noundef %type) #0 align 16 !dbg !321 {
entry:
  %retval = alloca %struct.jump_label_patch, align 8
  %entry.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %expect = alloca ptr, align 8
  %code = alloca ptr, align 8
  %nop = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %size = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !325, metadata !DIExpression()), !dbg !333
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !326, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 8, ptr %expect) #11, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %expect, metadata !327, metadata !DIExpression()), !dbg !336
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #11, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %code, metadata !328, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 8, ptr %nop) #11, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %nop, metadata !329, metadata !DIExpression()), !dbg !338
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #11, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !330, metadata !DIExpression()), !dbg !340
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #11, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !331, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #11, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %size, metadata !332, metadata !DIExpression()), !dbg !343
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !344
  %call = call i64 @jump_entry_code(ptr noundef %0) #12, !dbg !345
  %1 = inttoptr i64 %call to ptr, !dbg !346
  store ptr %1, ptr %addr, align 8, !dbg !347
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !348
  %call2 = call i64 @jump_entry_target(ptr noundef %2) #12, !dbg !349
  %3 = inttoptr i64 %call2 to ptr, !dbg !350
  store ptr %3, ptr %dest, align 8, !dbg !351
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !352
  %call3 = call i32 @arch_jump_entry_size(ptr noundef %4) #12, !dbg !353
  store i32 %call3, ptr %size, align 4, !dbg !354
  %5 = load i32, ptr %size, align 4, !dbg !355
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 5, label %sw.bb5
  ], !dbg !356

sw.bb:                                            ; preds = %entry
  %6 = load ptr, ptr %addr, align 8, !dbg !357
  %7 = load ptr, ptr %dest, align 8, !dbg !359
  %call4 = call ptr @text_gen_insn(i8 noundef zeroext -21, ptr noundef %6, ptr noundef %7) #12, !dbg !360
  store ptr %call4, ptr %code, align 8, !dbg !361
  %8 = load i32, ptr %size, align 4, !dbg !362
  %idxprom = sext i32 %8 to i64, !dbg !363
  %arrayidx = getelementptr [0 x ptr], ptr @x86_nops, i64 0, i64 %idxprom, !dbg !363
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !363
  store ptr %9, ptr %nop, align 8, !dbg !364
  br label %sw.epilog, !dbg !365

sw.bb5:                                           ; preds = %entry
  %10 = load ptr, ptr %addr, align 8, !dbg !366
  %11 = load ptr, ptr %dest, align 8, !dbg !367
  %call6 = call ptr @text_gen_insn(i8 noundef zeroext -23, ptr noundef %10, ptr noundef %11) #12, !dbg !368
  store ptr %call6, ptr %code, align 8, !dbg !369
  %12 = load i32, ptr %size, align 4, !dbg !370
  %idxprom7 = sext i32 %12 to i64, !dbg !371
  %arrayidx8 = getelementptr [0 x ptr], ptr @x86_nops, i64 0, i64 %idxprom7, !dbg !371
  %13 = load ptr, ptr %arrayidx8, align 8, !dbg !371
  store ptr %13, ptr %nop, align 8, !dbg !372
  br label %sw.epilog, !dbg !373

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !374

do.body:                                          ; preds = %sw.default
  br label %do.body9, !dbg !375

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !377

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !377

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !375

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 57, i32 0, i64 12) #11, !dbg !379, !srcloc !381
  br label %do.cond11, !dbg !379

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !379

do.end12:                                         ; preds = %do.cond11
  unreachable, !dbg !375

do.cond13:                                        ; No predecessors!
  br label %do.end14, !dbg !375

do.end14:                                         ; preds = %do.cond13
  br label %sw.epilog, !dbg !382

sw.epilog:                                        ; preds = %do.end14, %sw.bb5, %sw.bb
  %14 = load i32, ptr %type.addr, align 4, !dbg !383
  %cmp = icmp eq i32 %14, 1, !dbg !385
  br i1 %cmp, label %if.then, label %if.else, !dbg !386

if.then:                                          ; preds = %sw.epilog
  %15 = load ptr, ptr %nop, align 8, !dbg !387
  store ptr %15, ptr %expect, align 8, !dbg !388
  br label %if.end, !dbg !389

if.else:                                          ; preds = %sw.epilog
  %16 = load ptr, ptr %code, align 8, !dbg !390
  store ptr %16, ptr %expect, align 8, !dbg !391
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %addr, align 8, !dbg !392
  %18 = load ptr, ptr %expect, align 8, !dbg !394
  %19 = load i32, ptr %size, align 4, !dbg !395
  %conv = sext i32 %19 to i64, !dbg !395
  %call15 = call i32 @memcmp(ptr noundef %17, ptr noundef %18, i64 noundef %conv) #12, !dbg !396
  %tobool = icmp ne i32 %call15, 0, !dbg !396
  br i1 %tobool, label %if.then16, label %if.end30, !dbg !397

if.then16:                                        ; preds = %if.end
  br label %do.body17, !dbg !398

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !401

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !401

do.end19:                                         ; preds = %do.cond18
  %20 = load ptr, ptr %addr, align 8, !dbg !398
  %21 = load ptr, ptr %addr, align 8, !dbg !398
  %22 = load ptr, ptr %addr, align 8, !dbg !398
  %23 = load ptr, ptr %expect, align 8, !dbg !398
  %24 = load i32, ptr %size, align 4, !dbg !398
  %25 = load i32, ptr %type.addr, align 4, !dbg !398
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25) #13, !dbg !398
  store i32 %call20, ptr %tmp, align 4, !dbg !401
  %26 = load i32, ptr %tmp, align 4, !dbg !398
  br label %do.body21, !dbg !403

do.body21:                                        ; preds = %do.end19
  br label %do.body22, !dbg !404

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !406

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !406

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !404

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 73, i32 0, i64 12) #11, !dbg !408, !srcloc !410
  br label %do.cond26, !dbg !408

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !408

do.end27:                                         ; preds = %do.cond26
  unreachable, !dbg !404

do.cond28:                                        ; No predecessors!
  br label %do.end29, !dbg !404

do.end29:                                         ; preds = %do.cond28
  br label %if.end30, !dbg !411

if.end30:                                         ; preds = %do.end29, %if.end
  %27 = load i32, ptr %type.addr, align 4, !dbg !412
  %cmp31 = icmp eq i32 %27, 0, !dbg !414
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !415

if.then33:                                        ; preds = %if.end30
  %28 = load ptr, ptr %nop, align 8, !dbg !416
  store ptr %28, ptr %code, align 8, !dbg !417
  br label %if.end34, !dbg !418

if.end34:                                         ; preds = %if.then33, %if.end30
  %code35 = getelementptr inbounds %struct.jump_label_patch, ptr %retval, i32 0, i32 0, !dbg !419
  %29 = load ptr, ptr %code, align 8, !dbg !420
  store ptr %29, ptr %code35, align 8, !dbg !419
  %size36 = getelementptr inbounds %struct.jump_label_patch, ptr %retval, i32 0, i32 1, !dbg !419
  %30 = load i32, ptr %size, align 4, !dbg !421
  store i32 %30, ptr %size36, align 8, !dbg !419
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #11, !dbg !422
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #11, !dbg !422
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #11, !dbg !422
  call void @llvm.lifetime.end.p0(i64 8, ptr %nop) #11, !dbg !422
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #11, !dbg !422
  call void @llvm.lifetime.end.p0(i64 8, ptr %expect) #11, !dbg !422
  %31 = load { ptr, i32 }, ptr %retval, align 8, !dbg !422
  ret { ptr, i32 } %31, !dbg !422
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !423 dso_local void @text_poke_queue(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !430 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_jump_label_transform_apply() #0 align 16 !dbg !431 {
entry:
  call void @mutex_lock(ptr noundef @text_mutex) #12, !dbg !434
  call void @text_poke_finish() #12, !dbg !435
  call void @mutex_unlock(ptr noundef @text_mutex) #12, !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !438 dso_local void @text_poke_finish() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__jump_label_transform(ptr noundef %entry1, i32 noundef %type, i32 noundef %init) #9 align 16 !dbg !439 {
entry:
  %entry.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %init.addr = alloca i32, align 4
  %jlp = alloca %struct.jump_label_patch, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !441, metadata !DIExpression()), !dbg !446
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !442, metadata !DIExpression()), !dbg !447
  store i32 %init, ptr %init.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !443, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 16, ptr %jlp) #11, !dbg !449
  call void @llvm.dbg.declare(metadata ptr %jlp, metadata !444, metadata !DIExpression()), !dbg !450
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !451
  %1 = load i32, ptr %type.addr, align 4, !dbg !452
  %call = call { ptr, i32 } @__jump_label_patch(ptr noundef %0, i32 noundef %1) #12, !dbg !453
  %2 = getelementptr inbounds { ptr, i32 }, ptr %jlp, i32 0, i32 0, !dbg !453
  %3 = extractvalue { ptr, i32 } %call, 0, !dbg !453
  store ptr %3, ptr %2, align 8, !dbg !453
  %4 = getelementptr inbounds { ptr, i32 }, ptr %jlp, i32 0, i32 1, !dbg !453
  %5 = extractvalue { ptr, i32 } %call, 1, !dbg !453
  store i32 %5, ptr %4, align 8, !dbg !453
  %6 = load i32, ptr %init.addr, align 4, !dbg !454
  %tobool = icmp ne i32 %6, 0, !dbg !454
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !456

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, ptr @system_state, align 4, !dbg !457
  %cmp = icmp eq i32 %7, 0, !dbg !458
  br i1 %cmp, label %if.then, label %if.end, !dbg !459

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !460
  %call2 = call i64 @jump_entry_code(ptr noundef %8) #12, !dbg !462
  %9 = inttoptr i64 %call2 to ptr, !dbg !463
  %code = getelementptr inbounds %struct.jump_label_patch, ptr %jlp, i32 0, i32 0, !dbg !464
  %10 = load ptr, ptr %code, align 8, !dbg !464
  %size = getelementptr inbounds %struct.jump_label_patch, ptr %jlp, i32 0, i32 1, !dbg !465
  %11 = load i32, ptr %size, align 8, !dbg !465
  %conv = sext i32 %11 to i64, !dbg !466
  call void @text_poke_early(ptr noundef %9, ptr noundef %10, i64 noundef %conv) #12, !dbg !467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !468

if.end:                                           ; preds = %lor.lhs.false
  %12 = load ptr, ptr %entry.addr, align 8, !dbg !469
  %call3 = call i64 @jump_entry_code(ptr noundef %12) #12, !dbg !470
  %13 = inttoptr i64 %call3 to ptr, !dbg !471
  %code4 = getelementptr inbounds %struct.jump_label_patch, ptr %jlp, i32 0, i32 0, !dbg !472
  %14 = load ptr, ptr %code4, align 8, !dbg !472
  %size5 = getelementptr inbounds %struct.jump_label_patch, ptr %jlp, i32 0, i32 1, !dbg !473
  %15 = load i32, ptr %size5, align 8, !dbg !473
  %conv6 = sext i32 %15 to i64, !dbg !474
  call void @text_poke_bp(ptr noundef %13, ptr noundef %14, i64 noundef %conv6, ptr noundef null) #12, !dbg !475
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !476
  br label %cleanup, !dbg !476

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %jlp) #11, !dbg !476
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !476

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !477 dso_local void @text_poke_early(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !480 dso_local void @text_poke_bp(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @jump_entry_target(ptr noundef %entry1) #5 align 16 !dbg !481 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !485
  %target = getelementptr inbounds %struct.jump_entry, ptr %0, i32 0, i32 1, !dbg !486
  %1 = ptrtoint ptr %target to i64, !dbg !487
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !488
  %target2 = getelementptr inbounds %struct.jump_entry, ptr %2, i32 0, i32 1, !dbg !489
  %3 = load i32, ptr %target2, align 4, !dbg !489
  %conv = sext i32 %3 to i64, !dbg !488
  %add = add i64 %1, %conv, !dbg !490
  ret i64 %add, !dbg !491
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @text_gen_insn(i8 noundef zeroext %opcode, ptr noundef %addr, ptr noundef %dest) #9 align 16 !dbg !14 {
entry:
  %opcode.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !67, metadata !DIExpression()), !dbg !492
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !68, metadata !DIExpression()), !dbg !493
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !69, metadata !DIExpression()), !dbg !494
  %0 = load i8, ptr %opcode.addr, align 1, !dbg !495
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !496
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !497
  %3 = load i8, ptr %opcode.addr, align 1, !dbg !498
  %call = call i32 @text_opcode_size(i8 noundef zeroext %3) #12, !dbg !499
  call void @__text_gen_insn(ptr noundef @text_gen_insn.insn, i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef %call) #12, !dbg !500
  ret ptr @text_gen_insn.insn, !dbg !501
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !502 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !506 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__text_gen_insn(ptr noundef %buf, i8 noundef zeroext %opcode, ptr noundef %addr, ptr noundef %dest, i32 noundef %size) #9 align 16 !dbg !512 {
entry:
  %buf.addr = alloca ptr, align 8
  %opcode.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %insn = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !516, metadata !DIExpression()), !dbg !523
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !517, metadata !DIExpression()), !dbg !524
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !518, metadata !DIExpression()), !dbg !525
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !519, metadata !DIExpression()), !dbg !526
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !520, metadata !DIExpression()), !dbg !527
  call void @llvm.lifetime.start.p0(i64 8, ptr %insn) #11, !dbg !528
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !521, metadata !DIExpression()), !dbg !529
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !530
  store ptr %0, ptr %insn, align 8, !dbg !529
  br label %do.body, !dbg !531

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %size.addr, align 4, !dbg !532
  %2 = load i8, ptr %opcode.addr, align 1, !dbg !532
  %call = call i32 @text_opcode_size(i8 noundef zeroext %2) #12, !dbg !532
  %cmp = icmp slt i32 %1, %call, !dbg !532
  %lnot = xor i1 %cmp, true, !dbg !532
  %lnot1 = xor i1 %lnot, true, !dbg !532
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !532
  %conv = sext i32 %lnot.ext to i64, !dbg !532
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !532
  %tobool = icmp ne i64 %expval, 0, !dbg !532
  br i1 %tobool, label %if.then, label %if.end, !dbg !535

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !532

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !536

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !538

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !538

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !536

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 106, i32 0, i64 12) #11, !dbg !540, !srcloc !542
  br label %do.cond5, !dbg !540

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !540

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !536

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !536

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !536

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !535

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !535

do.end10:                                         ; preds = %do.cond9
  %3 = load ptr, ptr %insn, align 8, !dbg !543
  %4 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %3) #14, !dbg !543, !srcloc !544
  store ptr %4, ptr %insn, align 8, !dbg !543
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !545
  %6 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %5) #14, !dbg !545, !srcloc !546
  store ptr %6, ptr %addr.addr, align 8, !dbg !545
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !547
  %8 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %7) #14, !dbg !547, !srcloc !548
  store ptr %8, ptr %dest.addr, align 8, !dbg !547
  %9 = load i8, ptr %opcode.addr, align 1, !dbg !549
  %10 = load ptr, ptr %insn, align 8, !dbg !550
  %opcode11 = getelementptr inbounds %struct.anon.4, ptr %10, i32 0, i32 0, !dbg !551
  store i8 %9, ptr %opcode11, align 1, !dbg !552
  %11 = load i32, ptr %size.addr, align 4, !dbg !553
  %cmp12 = icmp sgt i32 %11, 1, !dbg !555
  br i1 %cmp12, label %if.then14, label %if.end46, !dbg !556

if.then14:                                        ; preds = %do.end10
  %12 = load ptr, ptr %dest.addr, align 8, !dbg !557
  %13 = ptrtoint ptr %12 to i64, !dbg !559
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !560
  %15 = load i32, ptr %size.addr, align 4, !dbg !561
  %idx.ext = sext i32 %15 to i64, !dbg !562
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.ext, !dbg !562
  %16 = ptrtoint ptr %add.ptr to i64, !dbg !563
  %sub = sub i64 %13, %16, !dbg !564
  %conv15 = trunc i64 %sub to i32, !dbg !559
  %17 = load ptr, ptr %insn, align 8, !dbg !565
  %disp = getelementptr inbounds %struct.anon.4, ptr %17, i32 0, i32 1, !dbg !566
  store i32 %conv15, ptr %disp, align 1, !dbg !567
  %18 = load i32, ptr %size.addr, align 4, !dbg !568
  %cmp16 = icmp eq i32 %18, 2, !dbg !570
  br i1 %cmp16, label %if.then18, label %if.end45, !dbg !571

if.then18:                                        ; preds = %if.then14
  br label %do.body19, !dbg !572

do.body19:                                        ; preds = %if.then18
  %19 = load ptr, ptr %insn, align 8, !dbg !574
  %disp20 = getelementptr inbounds %struct.anon.4, ptr %19, i32 0, i32 1, !dbg !574
  %20 = load i32, ptr %disp20, align 1, !dbg !574
  %shr = ashr i32 %20, 31, !dbg !574
  %21 = load ptr, ptr %insn, align 8, !dbg !574
  %disp21 = getelementptr inbounds %struct.anon.4, ptr %21, i32 0, i32 1, !dbg !574
  %22 = load i32, ptr %disp21, align 1, !dbg !574
  %shr22 = ashr i32 %22, 7, !dbg !574
  %cmp23 = icmp ne i32 %shr, %shr22, !dbg !574
  %lnot25 = xor i1 %cmp23, true, !dbg !574
  %lnot27 = xor i1 %lnot25, true, !dbg !574
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !574
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !574
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !574
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !574
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !577

if.then32:                                        ; preds = %do.body19
  br label %do.body33, !dbg !574

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !578

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !580

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !580

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !578

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 126, i32 0, i64 12) #11, !dbg !582, !srcloc !584
  br label %do.cond38, !dbg !582

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !582

do.end39:                                         ; preds = %do.cond38
  unreachable, !dbg !578

do.cond40:                                        ; No predecessors!
  br label %do.end41, !dbg !578

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !578

if.end42:                                         ; preds = %do.end41, %do.body19
  br label %do.cond43, !dbg !577

do.cond43:                                        ; preds = %if.end42
  br label %do.end44, !dbg !577

do.end44:                                         ; preds = %do.cond43
  br label %if.end45, !dbg !585

if.end45:                                         ; preds = %do.end44, %if.then14
  br label %if.end46, !dbg !586

if.end46:                                         ; preds = %if.end45, %do.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %insn) #11, !dbg !587
  ret void, !dbg !587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @text_opcode_size(i8 noundef zeroext %opcode) #9 align 16 !dbg !588 {
entry:
  %opcode.addr = alloca i8, align 1
  %size = alloca i32, align 4
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !592, metadata !DIExpression()), !dbg !594
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #11, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %size, metadata !593, metadata !DIExpression()), !dbg !596
  store i32 0, ptr %size, align 4, !dbg !596
  %0 = load i8, ptr %opcode.addr, align 1, !dbg !597
  %conv = zext i8 %0 to i32, !dbg !597
  switch i32 %conv, label %sw.epilog [
    i32 204, label %sw.bb
    i32 195, label %sw.bb1
    i32 232, label %sw.bb2
    i32 233, label %sw.bb3
    i32 235, label %sw.bb4
  ], !dbg !598

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %size, align 4, !dbg !599
  br label %sw.epilog, !dbg !599

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr %size, align 4, !dbg !601
  br label %sw.epilog, !dbg !601

sw.bb2:                                           ; preds = %entry
  store i32 5, ptr %size, align 4, !dbg !602
  br label %sw.epilog, !dbg !602

sw.bb3:                                           ; preds = %entry
  store i32 5, ptr %size, align 4, !dbg !603
  br label %sw.epilog, !dbg !603

sw.bb4:                                           ; preds = %entry
  store i32 2, ptr %size, align 4, !dbg !604
  br label %sw.epilog, !dbg !604

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %size, align 4, !dbg !605
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #11, !dbg !606
  ret i32 %1, !dbg !607
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/jump_label.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "673912bcb0d199fcb75b199a0f3c9a97")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 728, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 91)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "insn", scope: !14, file: !15, line: 134, type: !70, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "text_gen_insn", scope: !15, file: !15, line: 132, type: !16, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !66)
!15 = !DIFile(filename: "./arch/x86/include/asm/text-patching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4df22955607f445a62da6adb58adb51")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !24, !24}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 17, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !22, line: 21, baseType: !23)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.jump_label.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/jump_label\22 -D KBUILD_BASENAME=\22jump_label\22 -D KBUILD_MODNAME=\22jump_label\22 -D __KBUILD_MODNAME=kmod_jump_label -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/jump_label.ll arch/x86/kernel/jump_label.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !27, retainedTypes: !57, globals: !60, splitDebugInlining: false, nameTableKind: None)
!27 = !{!28, !36, !41, !52}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insn_mode", file: !29, line: 143, baseType: !30, size: 32, elements: !31)
!29 = !DIFile(filename: "./arch/x86/include/asm/insn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca1df7461e09b68408eb75c2e122471d")
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32, !33, !34, !35}
!32 = !DIEnumerator(name: "INSN_MODE_32", value: 0)
!33 = !DIEnumerator(name: "INSN_MODE_64", value: 1)
!34 = !DIEnumerator(name: "INSN_MODE_KERN", value: 2)
!35 = !DIEnumerator(name: "INSN_NUM_MODES", value: 3)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "jump_label_type", file: !37, line: 191, baseType: !30, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!38 = !{!39, !40}
!39 = !DIEnumerator(name: "JUMP_LABEL_NOP", value: 0)
!40 = !DIEnumerator(name: "JUMP_LABEL_JMP", value: 1)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !42, line: 228, baseType: !30, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51}
!44 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0)
!45 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1)
!46 = !DIEnumerator(name: "SYSTEM_FREEING_INITMEM", value: 2)
!47 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 3)
!48 = !DIEnumerator(name: "SYSTEM_HALT", value: 4)
!49 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 5)
!50 = !DIEnumerator(name: "SYSTEM_RESTART", value: 6)
!51 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 7)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !53, line: 10, baseType: !30, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!54 = !{!55, !56}
!55 = !DIEnumerator(name: "false", value: 0)
!56 = !DIEnumerator(name: "true", value: 1)
!57 = !{!18, !58, !59}
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!60 = !{!0, !7, !12, !61}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !15, line: 106, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 37)
!66 = !{!67, !68, !69}
!67 = !DILocalVariable(name: "opcode", arg: 1, scope: !14, file: !15, line: 132, type: !19)
!68 = !DILocalVariable(name: "addr", arg: 2, scope: !14, file: !15, line: 132, type: !24)
!69 = !DILocalVariable(name: "dest", arg: 3, scope: !14, file: !15, line: 132, type: !24)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "text_poke_insn", file: !15, line: 93, size: 40, elements: !71)
!71 = !{!72, !76}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !70, file: !15, line: 94, baseType: !73, size: 40)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 40, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 5)
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !15, line: 95, baseType: !77, size: 40)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !15, line: 95, size: 40, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !77, file: !15, line: 96, baseType: !19, size: 8)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "disp", scope: !77, file: !15, line: 97, baseType: !81, size: 32, offset: 8)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !20, line: 20, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !22, line: 26, baseType: !83)
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{i32 7, !"Dwarf Version", i32 5}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 8, !"cf-protection-branch", i32 1}
!88 = !{i32 4, !"function_return_thunk_extern", i32 1}
!89 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!90 = !{i32 1, !"Code Model", i32 2}
!91 = !{i32 1, !"override-stack-alignment", i32 8}
!92 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!93 = distinct !DISubprogram(name: "arch_jump_entry_size", scope: !2, file: !2, line: 20, type: !94, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !102)
!94 = !DISubroutineType(types: !95)
!95 = !{!83, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !37, line: 117, size: 128, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !97, file: !37, line: 118, baseType: !81, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !97, file: !37, line: 119, baseType: !81, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !97, file: !37, line: 120, baseType: !59, size: 64, offset: 64)
!102 = !{!103, !104}
!103 = !DILocalVariable(name: "entry", arg: 1, scope: !93, file: !2, line: 20, type: !96)
!104 = !DILocalVariable(name: "insn", scope: !93, file: !2, line: 22, type: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn", file: !29, line: 68, size: 896, elements: !106)
!106 = !{!107, !123, !124, !125, !126, !127, !128, !129, !135, !140, !141, !143, !144, !145, !146, !147, !150, !151}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !105, file: !29, line: 69, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_field", file: !29, line: 16, size: 64, elements: !109)
!109 = !{!110, !121, !122}
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !29, line: 17, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !29, line: 17, size: 32, elements: !112)
!112 = !{!113, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !111, file: !29, line: 18, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_value_t", file: !115, line: 13, baseType: !83)
!115 = !DIFile(filename: "./arch/x86/include/asm/inat_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cebd64027eadc0d452590e3ac4fca7d6")
!116 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !111, file: !29, line: 19, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 32, elements: !119)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_byte_t", file: !115, line: 12, baseType: !23)
!119 = !{!120}
!120 = !DISubrange(count: 4)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "got", scope: !108, file: !29, line: 22, baseType: !23, size: 8, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !108, file: !29, line: 23, baseType: !23, size: 8, offset: 40)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "rex_prefix", scope: !105, file: !29, line: 73, baseType: !108, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "vex_prefix", scope: !105, file: !29, line: 74, baseType: !108, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !105, file: !29, line: 75, baseType: !108, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "modrm", scope: !105, file: !29, line: 80, baseType: !108, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !105, file: !29, line: 81, baseType: !108, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "displacement", scope: !105, file: !29, line: 82, baseType: !108, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !29, line: 83, baseType: !130, size: 64, offset: 448)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !29, line: 83, size: 64, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !130, file: !29, line: 84, baseType: !108, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "moffset1", scope: !130, file: !29, line: 85, baseType: !108, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "immediate1", scope: !130, file: !29, line: 86, baseType: !108, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !29, line: 88, baseType: !136, size: 64, offset: 512)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !29, line: 88, size: 64, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "moffset2", scope: !136, file: !29, line: 89, baseType: !108, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "immediate2", scope: !136, file: !29, line: 90, baseType: !108, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_prefix_size", scope: !105, file: !29, line: 93, baseType: !83, size: 32, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !105, file: !29, line: 94, baseType: !142, size: 32, offset: 608)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_attr_t", file: !115, line: 11, baseType: !30)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "opnd_bytes", scope: !105, file: !29, line: 95, baseType: !23, size: 8, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !105, file: !29, line: 96, baseType: !23, size: 8, offset: 648)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !105, file: !29, line: 97, baseType: !23, size: 8, offset: 656)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "x86_64", scope: !105, file: !29, line: 98, baseType: !23, size: 8, offset: 664)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !105, file: !29, line: 100, baseType: !148, size: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "end_kaddr", scope: !105, file: !29, line: 101, baseType: !148, size: 64, offset: 768)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next_byte", scope: !105, file: !29, line: 102, baseType: !148, size: 64, offset: 832)
!152 = !DILocation(line: 20, column: 45, scope: !93)
!153 = !DILocation(line: 22, column: 2, scope: !93)
!154 = !DILocation(line: 22, column: 14, scope: !93)
!155 = !DILocation(line: 24, column: 2, scope: !93)
!156 = !DILocation(line: 25, column: 2, scope: !93)
!157 = !DILocation(line: 25, column: 2, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 25, column: 2)
!159 = distinct !DILexicalBlock(scope: !93, file: !2, line: 25, column: 2)
!160 = !DILocation(line: 0, scope: !158)
!161 = !DILocation(line: 25, column: 2, scope: !159)
!162 = !DILocation(line: 25, column: 2, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !2, line: 25, column: 2)
!164 = !DILocation(line: 25, column: 2, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !2, line: 25, column: 2)
!166 = !DILocation(line: 25, column: 2, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !2, line: 25, column: 2)
!168 = !{i64 2154575263, i64 2154575292, i64 2154575338, i64 2154575396, i64 2154575450, i64 2154575504, i64 2154575559, i64 2154575590}
!169 = !DILocation(line: 27, column: 14, scope: !93)
!170 = !DILocation(line: 27, column: 9, scope: !93)
!171 = !DILocation(line: 28, column: 1, scope: !93)
!172 = !DILocation(line: 27, column: 2, scope: !93)
!173 = !DISubprogram(name: "insn_decode", scope: !29, file: !29, line: 151, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{!83, !176, !24, !83, !28}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!177 = distinct !DISubprogram(name: "jump_entry_code", scope: !37, file: !37, line: 123, type: !178, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !182)
!178 = !DISubroutineType(types: !179)
!179 = !{!58, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!182 = !{!183}
!183 = !DILocalVariable(name: "entry", arg: 1, scope: !177, file: !37, line: 123, type: !180)
!184 = !DILocation(line: 123, column: 70, scope: !177)
!185 = !DILocation(line: 125, column: 25, scope: !177)
!186 = !DILocation(line: 125, column: 32, scope: !177)
!187 = !DILocation(line: 125, column: 9, scope: !177)
!188 = !DILocation(line: 125, column: 39, scope: !177)
!189 = !DILocation(line: 125, column: 46, scope: !177)
!190 = !DILocation(line: 125, column: 37, scope: !177)
!191 = !DILocation(line: 125, column: 2, scope: !177)
!192 = distinct !DISubprogram(name: "arch_jump_label_transform", scope: !2, file: !2, line: 117, type: !193, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !96, !36}
!195 = !{!196, !197}
!196 = !DILocalVariable(name: "entry", arg: 1, scope: !192, file: !2, line: 117, type: !96)
!197 = !DILocalVariable(name: "type", arg: 2, scope: !192, file: !2, line: 118, type: !36)
!198 = !DILocation(line: 117, column: 51, scope: !192)
!199 = !DILocation(line: 118, column: 32, scope: !192)
!200 = !DILocation(line: 120, column: 23, scope: !192)
!201 = !DILocation(line: 120, column: 30, scope: !192)
!202 = !DILocation(line: 120, column: 2, scope: !192)
!203 = !DILocation(line: 121, column: 1, scope: !192)
!204 = distinct !DISubprogram(name: "jump_label_transform", scope: !2, file: !2, line: 108, type: !205, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !96, !36, !83}
!207 = !{!208, !209, !210}
!208 = !DILocalVariable(name: "entry", arg: 1, scope: !204, file: !2, line: 108, type: !96)
!209 = !DILocalVariable(name: "type", arg: 2, scope: !204, file: !2, line: 109, type: !36)
!210 = !DILocalVariable(name: "init", arg: 3, scope: !204, file: !2, line: 110, type: !83)
!211 = !DILocation(line: 108, column: 59, scope: !204)
!212 = !DILocation(line: 109, column: 33, scope: !204)
!213 = !DILocation(line: 110, column: 16, scope: !204)
!214 = !DILocation(line: 112, column: 2, scope: !204)
!215 = !DILocation(line: 113, column: 25, scope: !204)
!216 = !DILocation(line: 113, column: 32, scope: !204)
!217 = !DILocation(line: 113, column: 38, scope: !204)
!218 = !DILocation(line: 113, column: 2, scope: !204)
!219 = !DILocation(line: 114, column: 2, scope: !204)
!220 = !DILocation(line: 115, column: 1, scope: !204)
!221 = distinct !DISubprogram(name: "arch_jump_label_transform_queue", scope: !2, file: !2, line: 123, type: !222, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !227)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !96, !36}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !225, line: 35, baseType: !226)
!225 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!226 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!227 = !{!228, !229, !230}
!228 = !DILocalVariable(name: "entry", arg: 1, scope: !221, file: !2, line: 123, type: !96)
!229 = !DILocalVariable(name: "type", arg: 2, scope: !221, file: !2, line: 124, type: !36)
!230 = !DILocalVariable(name: "jlp", scope: !221, file: !2, line: 126, type: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_label_patch", file: !2, line: 30, size: 128, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !231, file: !2, line: 31, baseType: !24, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !231, file: !2, line: 32, baseType: !83, size: 32, offset: 64)
!235 = !DILocation(line: 123, column: 57, scope: !221)
!236 = !DILocation(line: 124, column: 31, scope: !221)
!237 = !DILocation(line: 126, column: 2, scope: !221)
!238 = !DILocation(line: 126, column: 26, scope: !221)
!239 = !DILocation(line: 128, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !221, file: !2, line: 128, column: 6)
!241 = !DILocation(line: 128, column: 19, scope: !240)
!242 = !DILocation(line: 128, column: 6, scope: !221)
!243 = !DILocation(line: 132, column: 29, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !2, line: 128, column: 38)
!245 = !DILocation(line: 132, column: 36, scope: !244)
!246 = !DILocation(line: 132, column: 3, scope: !244)
!247 = !DILocation(line: 133, column: 3, scope: !244)
!248 = !DILocation(line: 136, column: 2, scope: !221)
!249 = !DILocation(line: 137, column: 8, scope: !221)
!250 = !DILocation(line: 137, column: 27, scope: !221)
!251 = !DILocation(line: 137, column: 34, scope: !221)
!252 = !DILocation(line: 138, column: 42, scope: !221)
!253 = !DILocation(line: 138, column: 26, scope: !221)
!254 = !DILocation(line: 138, column: 18, scope: !221)
!255 = !DILocation(line: 138, column: 54, scope: !221)
!256 = !DILocation(line: 138, column: 64, scope: !221)
!257 = !DILocation(line: 138, column: 60, scope: !221)
!258 = !DILocation(line: 138, column: 2, scope: !221)
!259 = !DILocation(line: 139, column: 2, scope: !221)
!260 = !DILocation(line: 140, column: 2, scope: !221)
!261 = !DILocation(line: 141, column: 1, scope: !221)
!262 = !DISubprogram(name: "mutex_lock", scope: !263, file: !263, line: 227, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !263, line: 66, size: 256, elements: !268)
!268 = !{!269, !279, !310, !315}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !267, file: !263, line: 67, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !271, line: 13, baseType: !272)
!271 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !225, line: 181, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 179, size: 64, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !273, file: !225, line: 180, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !20, line: 22, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !22, line: 30, baseType: !278)
!278 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !267, file: !263, line: 68, baseType: !280, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !281, line: 23, baseType: !282)
!281 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !281, line: 14, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !282, file: !281, line: 15, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !286, line: 44, baseType: !287)
!286 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !286, line: 14, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !286, line: 15, baseType: !290, size: 32)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !286, line: 15, size: 32, elements: !291)
!291 = !{!292, !297, !302}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !290, file: !286, line: 16, baseType: !293, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !225, line: 174, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 172, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !294, file: !225, line: 173, baseType: !83, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !286, line: 24, baseType: !298, size: 16)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !290, file: !286, line: 24, size: 16, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !298, file: !286, line: 25, baseType: !19, size: 8)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !298, file: !286, line: 26, baseType: !19, size: 8, offset: 8)
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !286, line: 28, baseType: !303, size: 32)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !290, file: !286, line: 28, size: 32, elements: !304)
!304 = !{!305, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !303, file: !286, line: 29, baseType: !306, size: 16)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !20, line: 19, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !22, line: 24, baseType: !308)
!308 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !303, file: !286, line: 30, baseType: !306, size: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !267, file: !263, line: 70, baseType: !311, size: 32, offset: 96)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !312, line: 15, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !311, file: !312, line: 20, baseType: !293, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !267, file: !263, line: 72, baseType: !316, size: 128, offset: 128)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !225, line: 190, size: 128, elements: !317)
!317 = !{!318, !320}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !225, line: 191, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !316, file: !225, line: 191, baseType: !319, size: 64, offset: 64)
!321 = distinct !DISubprogram(name: "__jump_label_patch", scope: !2, file: !2, line: 36, type: !322, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!231, !96, !36}
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332}
!325 = !DILocalVariable(name: "entry", arg: 1, scope: !321, file: !2, line: 36, type: !96)
!326 = !DILocalVariable(name: "type", arg: 2, scope: !321, file: !2, line: 36, type: !36)
!327 = !DILocalVariable(name: "expect", scope: !321, file: !2, line: 38, type: !24)
!328 = !DILocalVariable(name: "code", scope: !321, file: !2, line: 38, type: !24)
!329 = !DILocalVariable(name: "nop", scope: !321, file: !2, line: 38, type: !24)
!330 = !DILocalVariable(name: "addr", scope: !321, file: !2, line: 39, type: !24)
!331 = !DILocalVariable(name: "dest", scope: !321, file: !2, line: 39, type: !24)
!332 = !DILocalVariable(name: "size", scope: !321, file: !2, line: 40, type: !83)
!333 = !DILocation(line: 36, column: 39, scope: !321)
!334 = !DILocation(line: 36, column: 67, scope: !321)
!335 = !DILocation(line: 38, column: 2, scope: !321)
!336 = !DILocation(line: 38, column: 14, scope: !321)
!337 = !DILocation(line: 38, column: 23, scope: !321)
!338 = !DILocation(line: 38, column: 30, scope: !321)
!339 = !DILocation(line: 39, column: 2, scope: !321)
!340 = !DILocation(line: 39, column: 14, scope: !321)
!341 = !DILocation(line: 39, column: 21, scope: !321)
!342 = !DILocation(line: 40, column: 2, scope: !321)
!343 = !DILocation(line: 40, column: 6, scope: !321)
!344 = !DILocation(line: 42, column: 33, scope: !321)
!345 = !DILocation(line: 42, column: 17, scope: !321)
!346 = !DILocation(line: 42, column: 9, scope: !321)
!347 = !DILocation(line: 42, column: 7, scope: !321)
!348 = !DILocation(line: 43, column: 35, scope: !321)
!349 = !DILocation(line: 43, column: 17, scope: !321)
!350 = !DILocation(line: 43, column: 9, scope: !321)
!351 = !DILocation(line: 43, column: 7, scope: !321)
!352 = !DILocation(line: 45, column: 30, scope: !321)
!353 = !DILocation(line: 45, column: 9, scope: !321)
!354 = !DILocation(line: 45, column: 7, scope: !321)
!355 = !DILocation(line: 46, column: 10, scope: !321)
!356 = !DILocation(line: 46, column: 2, scope: !321)
!357 = !DILocation(line: 48, column: 42, scope: !358)
!358 = distinct !DILexicalBlock(scope: !321, file: !2, line: 46, column: 16)
!359 = !DILocation(line: 48, column: 48, scope: !358)
!360 = !DILocation(line: 48, column: 10, scope: !358)
!361 = !DILocation(line: 48, column: 8, scope: !358)
!362 = !DILocation(line: 49, column: 18, scope: !358)
!363 = !DILocation(line: 49, column: 9, scope: !358)
!364 = !DILocation(line: 49, column: 7, scope: !358)
!365 = !DILocation(line: 50, column: 3, scope: !358)
!366 = !DILocation(line: 53, column: 43, scope: !358)
!367 = !DILocation(line: 53, column: 49, scope: !358)
!368 = !DILocation(line: 53, column: 10, scope: !358)
!369 = !DILocation(line: 53, column: 8, scope: !358)
!370 = !DILocation(line: 54, column: 18, scope: !358)
!371 = !DILocation(line: 54, column: 9, scope: !358)
!372 = !DILocation(line: 54, column: 7, scope: !358)
!373 = !DILocation(line: 55, column: 3, scope: !358)
!374 = !DILocation(line: 57, column: 11, scope: !358)
!375 = !DILocation(line: 57, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !358, file: !2, line: 57, column: 11)
!377 = !DILocation(line: 57, column: 11, scope: !378)
!378 = distinct !DILexicalBlock(scope: !376, file: !2, line: 57, column: 11)
!379 = !DILocation(line: 57, column: 11, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !2, line: 57, column: 11)
!381 = !{i64 2154576165, i64 2154576194, i64 2154576240, i64 2154576298, i64 2154576352, i64 2154576406, i64 2154576461, i64 2154576492}
!382 = !DILocation(line: 58, column: 2, scope: !358)
!383 = !DILocation(line: 60, column: 6, scope: !384)
!384 = distinct !DILexicalBlock(scope: !321, file: !2, line: 60, column: 6)
!385 = !DILocation(line: 60, column: 11, scope: !384)
!386 = !DILocation(line: 60, column: 6, scope: !321)
!387 = !DILocation(line: 61, column: 12, scope: !384)
!388 = !DILocation(line: 61, column: 10, scope: !384)
!389 = !DILocation(line: 61, column: 3, scope: !384)
!390 = !DILocation(line: 63, column: 12, scope: !384)
!391 = !DILocation(line: 63, column: 10, scope: !384)
!392 = !DILocation(line: 65, column: 13, scope: !393)
!393 = distinct !DILexicalBlock(scope: !321, file: !2, line: 65, column: 6)
!394 = !DILocation(line: 65, column: 19, scope: !393)
!395 = !DILocation(line: 65, column: 27, scope: !393)
!396 = !DILocation(line: 65, column: 6, scope: !393)
!397 = !DILocation(line: 65, column: 6, scope: !321)
!398 = !DILocation(line: 71, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 71, column: 3)
!400 = distinct !DILexicalBlock(scope: !393, file: !2, line: 65, column: 34)
!401 = !DILocation(line: 71, column: 3, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !2, line: 71, column: 3)
!403 = !DILocation(line: 73, column: 3, scope: !400)
!404 = !DILocation(line: 73, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !2, line: 73, column: 3)
!406 = !DILocation(line: 73, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !405, file: !2, line: 73, column: 3)
!408 = !DILocation(line: 73, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !2, line: 73, column: 3)
!410 = !{i64 2154577895, i64 2154577924, i64 2154577970, i64 2154578028, i64 2154578082, i64 2154578136, i64 2154578191, i64 2154578222}
!411 = !DILocation(line: 74, column: 2, scope: !400)
!412 = !DILocation(line: 76, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !321, file: !2, line: 76, column: 6)
!414 = !DILocation(line: 76, column: 11, scope: !413)
!415 = !DILocation(line: 76, column: 6, scope: !321)
!416 = !DILocation(line: 77, column: 10, scope: !413)
!417 = !DILocation(line: 77, column: 8, scope: !413)
!418 = !DILocation(line: 77, column: 3, scope: !413)
!419 = !DILocation(line: 79, column: 34, scope: !321)
!420 = !DILocation(line: 79, column: 43, scope: !321)
!421 = !DILocation(line: 79, column: 57, scope: !321)
!422 = !DILocation(line: 80, column: 1, scope: !321)
!423 = !DISubprogram(name: "text_poke_queue", scope: !15, file: !15, line: 53, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !18, !24, !426, !24}
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !225, line: 61, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !428, line: 72, baseType: !429)
!428 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !428, line: 16, baseType: !58)
!430 = !DISubprogram(name: "mutex_unlock", scope: !263, file: !263, line: 246, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = distinct !DISubprogram(name: "arch_jump_label_transform_apply", scope: !2, file: !2, line: 143, type: !432, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!432 = !DISubroutineType(types: !433)
!433 = !{null}
!434 = !DILocation(line: 145, column: 2, scope: !431)
!435 = !DILocation(line: 146, column: 2, scope: !431)
!436 = !DILocation(line: 147, column: 2, scope: !431)
!437 = !DILocation(line: 148, column: 1, scope: !431)
!438 = !DISubprogram(name: "text_poke_finish", scope: !15, file: !15, line: 54, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = distinct !DISubprogram(name: "__jump_label_transform", scope: !2, file: !2, line: 83, type: !205, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !440)
!440 = !{!441, !442, !443, !444}
!441 = !DILocalVariable(name: "entry", arg: 1, scope: !439, file: !2, line: 83, type: !96)
!442 = !DILocalVariable(name: "type", arg: 2, scope: !439, file: !2, line: 84, type: !36)
!443 = !DILocalVariable(name: "init", arg: 3, scope: !439, file: !2, line: 85, type: !83)
!444 = !DILocalVariable(name: "jlp", scope: !439, file: !2, line: 87, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!446 = !DILocation(line: 83, column: 43, scope: !439)
!447 = !DILocation(line: 84, column: 31, scope: !439)
!448 = !DILocation(line: 85, column: 14, scope: !439)
!449 = !DILocation(line: 87, column: 2, scope: !439)
!450 = !DILocation(line: 87, column: 32, scope: !439)
!451 = !DILocation(line: 87, column: 57, scope: !439)
!452 = !DILocation(line: 87, column: 64, scope: !439)
!453 = !DILocation(line: 87, column: 38, scope: !439)
!454 = !DILocation(line: 100, column: 6, scope: !455)
!455 = distinct !DILexicalBlock(scope: !439, file: !2, line: 100, column: 6)
!456 = !DILocation(line: 100, column: 11, scope: !455)
!457 = !DILocation(line: 100, column: 14, scope: !455)
!458 = !DILocation(line: 100, column: 27, scope: !455)
!459 = !DILocation(line: 100, column: 6, scope: !439)
!460 = !DILocation(line: 101, column: 43, scope: !461)
!461 = distinct !DILexicalBlock(scope: !455, file: !2, line: 100, column: 46)
!462 = !DILocation(line: 101, column: 27, scope: !461)
!463 = !DILocation(line: 101, column: 19, scope: !461)
!464 = !DILocation(line: 101, column: 55, scope: !461)
!465 = !DILocation(line: 101, column: 65, scope: !461)
!466 = !DILocation(line: 101, column: 61, scope: !461)
!467 = !DILocation(line: 101, column: 3, scope: !461)
!468 = !DILocation(line: 102, column: 3, scope: !461)
!469 = !DILocation(line: 105, column: 39, scope: !439)
!470 = !DILocation(line: 105, column: 23, scope: !439)
!471 = !DILocation(line: 105, column: 15, scope: !439)
!472 = !DILocation(line: 105, column: 51, scope: !439)
!473 = !DILocation(line: 105, column: 61, scope: !439)
!474 = !DILocation(line: 105, column: 57, scope: !439)
!475 = !DILocation(line: 105, column: 2, scope: !439)
!476 = !DILocation(line: 106, column: 1, scope: !439)
!477 = !DISubprogram(name: "text_poke_early", scope: !15, file: !15, line: 28, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !18, !24, !426}
!480 = !DISubprogram(name: "text_poke_bp", scope: !15, file: !15, line: 51, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = distinct !DISubprogram(name: "jump_entry_target", scope: !37, file: !37, line: 128, type: !178, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !482)
!482 = !{!483}
!483 = !DILocalVariable(name: "entry", arg: 1, scope: !481, file: !37, line: 128, type: !180)
!484 = !DILocation(line: 128, column: 72, scope: !481)
!485 = !DILocation(line: 130, column: 25, scope: !481)
!486 = !DILocation(line: 130, column: 32, scope: !481)
!487 = !DILocation(line: 130, column: 9, scope: !481)
!488 = !DILocation(line: 130, column: 41, scope: !481)
!489 = !DILocation(line: 130, column: 48, scope: !481)
!490 = !DILocation(line: 130, column: 39, scope: !481)
!491 = !DILocation(line: 130, column: 2, scope: !481)
!492 = !DILocation(line: 132, column: 24, scope: !14)
!493 = !DILocation(line: 132, column: 44, scope: !14)
!494 = !DILocation(line: 132, column: 62, scope: !14)
!495 = !DILocation(line: 135, column: 25, scope: !14)
!496 = !DILocation(line: 135, column: 33, scope: !14)
!497 = !DILocation(line: 135, column: 39, scope: !14)
!498 = !DILocation(line: 135, column: 62, scope: !14)
!499 = !DILocation(line: 135, column: 45, scope: !14)
!500 = !DILocation(line: 135, column: 2, scope: !14)
!501 = !DILocation(line: 136, column: 2, scope: !14)
!502 = !DISubprogram(name: "memcmp", scope: !503, file: !503, line: 196, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!503 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!504 = !DISubroutineType(types: !505)
!505 = !{!83, !24, !24, !427}
!506 = !DISubprogram(name: "_printk", scope: !507, file: !507, line: 153, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!508 = !DISubroutineType(types: !509)
!509 = !{!83, !510, null}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!512 = distinct !DISubprogram(name: "__text_gen_insn", scope: !15, file: !15, line: 102, type: !513, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !18, !19, !24, !24, !83}
!515 = !{!516, !517, !518, !519, !520, !521}
!516 = !DILocalVariable(name: "buf", arg: 1, scope: !512, file: !15, line: 102, type: !18)
!517 = !DILocalVariable(name: "opcode", arg: 2, scope: !512, file: !15, line: 102, type: !19)
!518 = !DILocalVariable(name: "addr", arg: 3, scope: !512, file: !15, line: 102, type: !24)
!519 = !DILocalVariable(name: "dest", arg: 4, scope: !512, file: !15, line: 102, type: !24)
!520 = !DILocalVariable(name: "size", arg: 5, scope: !512, file: !15, line: 102, type: !83)
!521 = !DILocalVariable(name: "insn", scope: !512, file: !15, line: 104, type: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!523 = !DILocation(line: 102, column: 28, scope: !512)
!524 = !DILocation(line: 102, column: 36, scope: !512)
!525 = !DILocation(line: 102, column: 56, scope: !512)
!526 = !DILocation(line: 102, column: 74, scope: !512)
!527 = !DILocation(line: 102, column: 84, scope: !512)
!528 = !DILocation(line: 104, column: 2, scope: !512)
!529 = !DILocation(line: 104, column: 24, scope: !512)
!530 = !DILocation(line: 104, column: 31, scope: !512)
!531 = !DILocation(line: 106, column: 2, scope: !512)
!532 = !DILocation(line: 106, column: 2, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !15, line: 106, column: 2)
!534 = distinct !DILexicalBlock(scope: !512, file: !15, line: 106, column: 2)
!535 = !DILocation(line: 106, column: 2, scope: !534)
!536 = !DILocation(line: 106, column: 2, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !15, line: 106, column: 2)
!538 = !DILocation(line: 106, column: 2, scope: !539)
!539 = distinct !DILexicalBlock(scope: !537, file: !15, line: 106, column: 2)
!540 = !DILocation(line: 106, column: 2, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !15, line: 106, column: 2)
!542 = !{i64 2154545865, i64 2154545894, i64 2154545940, i64 2154545998, i64 2154546052, i64 2154546106, i64 2154546161, i64 2154546192}
!543 = !DILocation(line: 113, column: 2, scope: !512)
!544 = !{i64 2154546593}
!545 = !DILocation(line: 114, column: 2, scope: !512)
!546 = !{i64 2154546641}
!547 = !DILocation(line: 115, column: 2, scope: !512)
!548 = !{i64 2154546689}
!549 = !DILocation(line: 117, column: 17, scope: !512)
!550 = !DILocation(line: 117, column: 2, scope: !512)
!551 = !DILocation(line: 117, column: 8, scope: !512)
!552 = !DILocation(line: 117, column: 15, scope: !512)
!553 = !DILocation(line: 119, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !512, file: !15, line: 119, column: 6)
!555 = !DILocation(line: 119, column: 11, scope: !554)
!556 = !DILocation(line: 119, column: 6, scope: !512)
!557 = !DILocation(line: 120, column: 22, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !15, line: 119, column: 16)
!559 = !DILocation(line: 120, column: 16, scope: !558)
!560 = !DILocation(line: 120, column: 36, scope: !558)
!561 = !DILocation(line: 120, column: 43, scope: !558)
!562 = !DILocation(line: 120, column: 41, scope: !558)
!563 = !DILocation(line: 120, column: 29, scope: !558)
!564 = !DILocation(line: 120, column: 27, scope: !558)
!565 = !DILocation(line: 120, column: 3, scope: !558)
!566 = !DILocation(line: 120, column: 9, scope: !558)
!567 = !DILocation(line: 120, column: 14, scope: !558)
!568 = !DILocation(line: 121, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !558, file: !15, line: 121, column: 7)
!570 = !DILocation(line: 121, column: 12, scope: !569)
!571 = !DILocation(line: 121, column: 7, scope: !558)
!572 = !DILocation(line: 126, column: 4, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !15, line: 121, column: 18)
!574 = !DILocation(line: 126, column: 4, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !15, line: 126, column: 4)
!576 = distinct !DILexicalBlock(scope: !573, file: !15, line: 126, column: 4)
!577 = !DILocation(line: 126, column: 4, scope: !576)
!578 = !DILocation(line: 126, column: 4, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !15, line: 126, column: 4)
!580 = !DILocation(line: 126, column: 4, scope: !581)
!581 = distinct !DILexicalBlock(scope: !579, file: !15, line: 126, column: 4)
!582 = !DILocation(line: 126, column: 4, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !15, line: 126, column: 4)
!584 = !{i64 2154547062, i64 2154547091, i64 2154547137, i64 2154547195, i64 2154547249, i64 2154547303, i64 2154547358, i64 2154547389}
!585 = !DILocation(line: 127, column: 3, scope: !573)
!586 = !DILocation(line: 128, column: 2, scope: !558)
!587 = !DILocation(line: 129, column: 1, scope: !512)
!588 = distinct !DISubprogram(name: "text_opcode_size", scope: !15, file: !15, line: 73, type: !589, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{!83, !19}
!591 = !{!592, !593}
!592 = !DILocalVariable(name: "opcode", arg: 1, scope: !588, file: !15, line: 73, type: !19)
!593 = !DILocalVariable(name: "size", scope: !588, file: !15, line: 75, type: !83)
!594 = !DILocation(line: 73, column: 48, scope: !588)
!595 = !DILocation(line: 75, column: 2, scope: !588)
!596 = !DILocation(line: 75, column: 6, scope: !588)
!597 = !DILocation(line: 80, column: 9, scope: !588)
!598 = !DILocation(line: 80, column: 2, scope: !588)
!599 = !DILocation(line: 81, column: 2, scope: !600)
!600 = distinct !DILexicalBlock(scope: !588, file: !15, line: 80, column: 17)
!601 = !DILocation(line: 82, column: 2, scope: !600)
!602 = !DILocation(line: 83, column: 2, scope: !600)
!603 = !DILocation(line: 84, column: 2, scope: !600)
!604 = !DILocation(line: 85, column: 2, scope: !600)
!605 = !DILocation(line: 90, column: 9, scope: !588)
!606 = !DILocation(line: 91, column: 1, scope: !588)
!607 = !DILocation(line: 90, column: 2, scope: !588)
