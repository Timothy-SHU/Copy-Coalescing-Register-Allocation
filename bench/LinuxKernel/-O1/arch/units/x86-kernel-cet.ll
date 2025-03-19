; ModuleID = 'arch/x86/kernel/cet.c'
source_filename = "arch/x86/kernel/cet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpuinfo_x86 = type { %union.anon.0, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.1, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64, [88 x i8] }
%struct.irqentry_state = type { %union.anon }
%union.anon = type { i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.2, i64, i64, %union.anon.3 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }

@__setup_str_ibt_setup = internal constant [5 x i8] c"ibt=\00", section ".init.rodata", align 1, !dbg !0
@__setup_ibt_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ibt_setup, ptr @ibt_setup, i32 0 }, section ".init.setup", align 8, !dbg !29
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !41
@.str.1 = private unnamed_addr constant [5 x i8] c"warn\00", align 1, !dbg !46
@ibt_fatal = internal global i8 1, section ".data..ro_after_init", align 1, !dbg !51
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@do_unexpected_cp.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !56
@.str.2 = private unnamed_addr constant [35 x i8] c"Unexpected %s #CP, error_code: %s\0A\00", align 1, !dbg !136
@.str.3 = private unnamed_addr constant [10 x i8] c"user mode\00", align 1, !dbg !141
@.str.4 = private unnamed_addr constant [12 x i8] c"kernel mode\00", align 1, !dbg !146
@.str.5 = private unnamed_addr constant [22 x i8] c"arch/x86/kernel/cet.c\00", align 1, !dbg !151
@cp_err = internal constant [6 x [10 x i8]] [[10 x i8] c"unknown\00\00\00", [10 x i8] c"near ret\00\00", [10 x i8] c"far/iret\00\00", [10 x i8] c"endbranch\00", [10 x i8] c"rstorssp\00\00", [10 x i8] c"setssbsy\00\00"], align 16, !dbg !156
@.str.6 = private unnamed_addr constant [22 x i8] c"\013Missing ENDBR: %pS\0A\00", align 1, !dbg !161
@.str.7 = private unnamed_addr constant [38 x i8] c"------------[ cut here ]------------\0A\00", align 1, !dbg !163
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_ibt_setup], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ibt_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !178 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = load ptr, ptr %str.addr, align 8, !dbg !182
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str) #12, !dbg !184
  %tobool = icmp ne i32 %call, 0, !dbg !184
  br i1 %tobool, label %if.end, label %if.then, !dbg !185

if.then:                                          ; preds = %entry
  call void @setup_clear_cpu_cap(i32 noundef 596) #12, !dbg !186
  br label %if.end, !dbg !186

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !187
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.1) #12, !dbg !189
  %tobool2 = icmp ne i32 %call1, 0, !dbg !189
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !190

if.then3:                                         ; preds = %if.end
  store i8 0, ptr @ibt_fatal, align 1, !dbg !191
  br label %if.end4, !dbg !192

if.end4:                                          ; preds = %if.then3, %if.end
  ret i32 1, !dbg !193
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @exc_control_protection(ptr noundef %regs, i64 noundef %error_code) #1 section ".noinstr.text" align 16 !dbg !194 {
entry:
  %regs.addr = alloca ptr, align 8
  %error_code.addr = alloca i64, align 8
  %state = alloca %struct.irqentry_state, align 1
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !196, metadata !DIExpression()), !dbg !208
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !197, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #13, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %state, metadata !198, metadata !DIExpression()), !dbg !208
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !208
  %call = call i8 @irqentry_enter(ptr noundef %0) #12, !dbg !208
  %coerce.dive = getelementptr inbounds %struct.irqentry_state, ptr %state, i32 0, i32 0, !dbg !208
  %coerce.dive1 = getelementptr inbounds %union.anon, ptr %coerce.dive, i32 0, i32 0, !dbg !208
  store i8 %call, ptr %coerce.dive1, align 1, !dbg !208
  br label %do.body, !dbg !208

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !209

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !209

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !208
  %2 = load i64, ptr %error_code.addr, align 8, !dbg !208
  call void @__exc_control_protection(ptr noundef %1, i64 noundef %2) #12, !dbg !208
  br label %do.body2, !dbg !208

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !211

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !211

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !208
  %coerce.dive5 = getelementptr inbounds %struct.irqentry_state, ptr %state, i32 0, i32 0, !dbg !208
  %coerce.dive6 = getelementptr inbounds %union.anon, ptr %coerce.dive5, i32 0, i32 0, !dbg !208
  %4 = load i8, ptr %coerce.dive6, align 1, !dbg !208
  call void @irqentry_exit(ptr noundef %3, i8 %4) #12, !dbg !208
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #13, !dbg !208
  ret void, !dbg !208
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !213 dso_local i8 @irqentry_enter(ptr noundef) #4 section ".noinstr.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__exc_control_protection(ptr noundef %regs, i64 noundef %error_code) #5 align 16 !dbg !216 {
entry:
  %regs.addr = alloca ptr, align 8
  %error_code.addr = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !218, metadata !DIExpression()), !dbg !220
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !221
  %call = call i32 @user_mode(ptr noundef %0) #12, !dbg !223
  %tobool = icmp ne i32 %call, 0, !dbg !223
  br i1 %tobool, label %if.then, label %if.else, !dbg !224

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !225
  %2 = load i64, ptr %error_code.addr, align 8, !dbg !228
  call void @do_unexpected_cp(ptr noundef %1, i64 noundef %2) #12, !dbg !229
  br label %if.end9, !dbg !230

if.else:                                          ; preds = %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !231

cond.true:                                        ; preds = %if.else
  br i1 false, label %if.then7, label %if.else8, !dbg !233

cond.false:                                       ; preds = %if.else
  br i1 false, label %cond.true1, label %cond.false5, !dbg !231

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !233

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then7, label %if.else8, !dbg !233

cond.false3:                                      ; preds = %cond.true1
  %call4 = call zeroext i1 @arch_test_bit(i64 noundef 596, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !233
  br i1 %call4, label %if.then7, label %if.else8, !dbg !233

cond.false5:                                      ; preds = %cond.false
  %call6 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 596) #12, !dbg !233
  br i1 %call6, label %if.then7, label %if.else8, !dbg !231

if.then7:                                         ; preds = %cond.false5, %cond.false3, %cond.true2, %cond.true
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !235
  %4 = load i64, ptr %error_code.addr, align 8, !dbg !236
  call void @do_kernel_cp_fault(ptr noundef %3, i64 noundef %4) #12, !dbg !237
  br label %if.end, !dbg !237

if.else8:                                         ; preds = %cond.false5, %cond.false3, %cond.true2, %cond.true
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !238
  %6 = load i64, ptr %error_code.addr, align 8, !dbg !239
  call void @do_unexpected_cp(ptr noundef %5, i64 noundef %6) #12, !dbg !240
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  ret void, !dbg !241
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !242 dso_local void @irqentry_exit(ptr noundef, i8) #4 section ".noinstr.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !245 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !249 dso_local void @setup_clear_cpu_cap(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #5 align 16 !dbg !253 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !259
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !260
  %2 = load i16, ptr %1, align 8, !dbg !260
  %conv = zext i16 %2 to i32, !dbg !259
  %and = and i32 %conv, 3, !dbg !261
  %tobool = icmp ne i32 %and, 0, !dbg !262
  %lnot = xor i1 %tobool, true, !dbg !262
  %lnot1 = xor i1 %lnot, true, !dbg !263
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !263
  ret i32 %lnot.ext, !dbg !264
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_unexpected_cp(ptr noundef %regs, i64 noundef %error_code) #6 align 16 !dbg !58 {
entry:
  %regs.addr = alloca ptr, align 8
  %error_code.addr = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp47 = alloca i64, align 8
  %tmp56 = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !122, metadata !DIExpression()), !dbg !265
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !123, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #13, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !124, metadata !DIExpression()), !dbg !267
  store i8 1, ptr %__ret_do_once, align 1, !dbg !267
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #13, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !126, metadata !DIExpression()), !dbg !268
  %0 = load i8, ptr %__ret_do_once, align 1, !dbg !268, !range !269, !noundef !270
  %tobool = trunc i8 %0 to i1, !dbg !268
  %lnot = xor i1 %tobool, true, !dbg !268
  %lnot1 = xor i1 %lnot, true, !dbg !268
  %frombool = zext i1 %lnot1 to i8, !dbg !268
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !268
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #13, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !129, metadata !DIExpression()), !dbg !268
  store i8 0, ptr %__ret_once, align 1, !dbg !268
  %1 = load i8, ptr %__ret_cond, align 1, !dbg !271, !range !269, !noundef !270
  %tobool2 = trunc i8 %1 to i1, !dbg !271
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !271

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr @do_unexpected_cp.__already_done, align 1, !dbg !271, !range !269, !noundef !270
  %tobool3 = trunc i8 %2 to i1, !dbg !271
  %lnot4 = xor i1 %tobool3, true, !dbg !271
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot4, %land.rhs ], !dbg !273
  %lnot5 = xor i1 %3, true, !dbg !271
  %lnot6 = xor i1 %lnot5, true, !dbg !271
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !271
  %conv = sext i32 %lnot.ext to i64, !dbg !271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !271
  %tobool7 = icmp ne i64 %expval, 0, !dbg !271
  br i1 %tobool7, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %land.end
  store i8 1, ptr @do_unexpected_cp.__already_done, align 1, !dbg !274
  store i8 1, ptr %__ret_once, align 1, !dbg !274
  br label %if.end, !dbg !274

if.end:                                           ; preds = %if.then, %land.end
  %4 = load i8, ptr %__ret_once, align 1, !dbg !268, !range !269, !noundef !270
  %tobool8 = trunc i8 %4 to i1, !dbg !268
  %lnot9 = xor i1 %tobool8, true, !dbg !268
  %lnot11 = xor i1 %lnot9, true, !dbg !268
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !268
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !268
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !268
  store i64 %expval14, ptr %tmp, align 8, !dbg !271
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #13, !dbg !276
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #13, !dbg !276
  %5 = load i64, ptr %tmp, align 8, !dbg !268
  %tobool15 = icmp ne i64 %5, 0, !dbg !276
  br i1 %tobool15, label %if.then16, label %if.end55, !dbg !267

if.then16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !130, metadata !DIExpression()), !dbg !277
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !277
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !278
  %tobool17 = icmp ne i32 %6, 0, !dbg !278
  %lnot18 = xor i1 %tobool17, true, !dbg !278
  %lnot20 = xor i1 %lnot18, true, !dbg !278
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !278
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !278
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !278
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !278
  br i1 %tobool24, label %if.then25, label %if.end46, !dbg !277

if.then25:                                        ; preds = %if.then16
  br label %do.body, !dbg !278

do.body:                                          ; preds = %if.then25
  br label %do.body26, !dbg !279

do.body26:                                        ; preds = %do.body
  br label %do.cond, !dbg !280

do.cond:                                          ; preds = %do.body26
  br label %do.end, !dbg !280

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !279
  %call = call i32 @user_mode(ptr noundef %7) #12, !dbg !279
  %tobool27 = icmp ne i32 %call, 0, !dbg !279
  %8 = zext i1 %tobool27 to i64, !dbg !279
  %cond = select i1 %tobool27, ptr @.str.3, ptr @.str.4, !dbg !279
  %9 = load i64, ptr %error_code.addr, align 8, !dbg !279
  %call28 = call ptr @cp_err_string(i64 noundef %9) #12, !dbg !279
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2, ptr noundef %cond, ptr noundef %call28) #12, !dbg !279
  br label %do.body29, !dbg !279

do.body29:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !132, metadata !DIExpression()), !dbg !282
  store i32 2313, ptr %__flags, align 4, !dbg !282
  br label %do.body30, !dbg !282

do.body30:                                        ; preds = %do.body29
  br label %do.cond31, !dbg !283

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !283

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !282

do.body33:                                        ; preds = %do.end32
  %10 = load i32, ptr %__flags, align 4, !dbg !285
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 41, i32 %10, i64 12) #13, !dbg !285, !srcloc !287
  br label %do.cond34, !dbg !285

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !285

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !282

do.body36:                                        ; preds = %do.end35
  br label %do.cond37, !dbg !288

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !288

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !279
  br label %do.cond39, !dbg !282

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !282

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !279

do.body41:                                        ; preds = %do.end40
  br label %do.cond42, !dbg !290

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !290

do.end43:                                         ; preds = %do.cond42
  br label %do.cond44, !dbg !279

do.cond44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !279

do.end45:                                         ; preds = %do.cond44
  br label %if.end46, !dbg !279

if.end46:                                         ; preds = %do.end45, %if.then16
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !277
  %tobool48 = icmp ne i32 %11, 0, !dbg !277
  %lnot49 = xor i1 %tobool48, true, !dbg !277
  %lnot51 = xor i1 %lnot49, true, !dbg !277
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !277
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !277
  %expval54 = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !277
  store i64 %expval54, ptr %tmp47, align 8, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !276
  %12 = load i64, ptr %tmp47, align 8, !dbg !277
  br label %if.end55, !dbg !276

if.end55:                                         ; preds = %if.end46, %if.end
  %13 = load i8, ptr %__ret_do_once, align 1, !dbg !267, !range !269, !noundef !270
  %tobool57 = trunc i8 %13 to i1, !dbg !267
  %lnot58 = xor i1 %tobool57, true, !dbg !267
  %lnot60 = xor i1 %lnot58, true, !dbg !267
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !267
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !267
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !267
  store i64 %expval63, ptr %tmp56, align 8, !dbg !276
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #13, !dbg !292
  %14 = load i64, ptr %tmp56, align 8, !dbg !267
  ret void, !dbg !293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !294 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !302, metadata !DIExpression()), !dbg !304
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !303, metadata !DIExpression()), !dbg !305
  %0 = load i64, ptr %nr.addr, align 8, !dbg !306
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !307
  br i1 %1, label %cond.true, label %cond.false, !dbg !307

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !308
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !309
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !310
  %conv = zext i1 %call to i32, !dbg !310
  br label %cond.end, !dbg !307

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !311
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !312
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !313
  %conv2 = zext i1 %call1 to i32, !dbg !313
  br label %cond.end, !dbg !307

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !307
  %tobool = icmp ne i32 %cond, 0, !dbg !307
  ret i1 %tobool, !dbg !314
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #5 align 16 !dbg !315 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !319, metadata !DIExpression()), !dbg !322
  %0 = load i16, ptr %bit.addr, align 2, !dbg !323
  %1 = load i16, ptr %bit.addr, align 2, !dbg !324
  %conv = zext i16 %1 to i32, !dbg !324
  %and = and i32 %conv, 7, !dbg !325
  %shl = shl i32 1, %and, !dbg !326
  %2 = load i16, ptr %bit.addr, align 2, !dbg !327
  %conv1 = zext i16 %2 to i32, !dbg !327
  %shr = ashr i32 %conv1, 3, !dbg !328
  %idxprom = sext i32 %shr to i64, !dbg !329
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !329
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #13
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !330, !srcloc !331

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !330

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !320), !dbg !332
  store i1 true, ptr %retval, align 1, !dbg !333
  br label %return, !dbg !333

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !321), !dbg !334
  store i1 false, ptr %retval, align 1, !dbg !335
  br label %return, !dbg !335

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !336
  ret i1 %3, !dbg !336
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_kernel_cp_fault(ptr noundef %regs, i64 noundef %error_code) #6 align 16 !dbg !337 {
entry:
  %regs.addr = alloca ptr, align 8
  %error_code.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !339, metadata !DIExpression()), !dbg !341
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !340, metadata !DIExpression()), !dbg !342
  %0 = load i64, ptr %error_code.addr, align 8, !dbg !343
  %and = and i64 %0, 32767, !dbg !345
  %cmp = icmp ne i64 %and, 3, !dbg !346
  br i1 %cmp, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !348
  %2 = load i64, ptr %error_code.addr, align 8, !dbg !350
  call void @do_unexpected_cp(ptr noundef %1, i64 noundef %2) #12, !dbg !351
  br label %do.end19, !dbg !352

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !353
  %ip = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 16, !dbg !353
  %4 = load i64, ptr %ip, align 8, !dbg !353
  %cmp1 = icmp eq i64 %4, ptrtoint (ptr @ibt_selftest_noendbr to i64), !dbg !353
  %lnot = xor i1 %cmp1, true, !dbg !353
  %lnot2 = xor i1 %lnot, true, !dbg !353
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !353
  %conv = sext i32 %lnot.ext to i64, !dbg !353
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !353
  %tobool = icmp ne i64 %expval, 0, !dbg !353
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !355

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !356
  %ax = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 10, !dbg !358
  store i64 0, ptr %ax, align 8, !dbg !359
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !360
  call void @ibt_clear_fred_wfe(ptr noundef %6) #12, !dbg !361
  br label %do.end19, !dbg !362

if.end4:                                          ; preds = %if.end
  br label %do.body, !dbg !363

do.body:                                          ; preds = %if.end4
  br label %do.end, !dbg !365

do.end:                                           ; preds = %do.body
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !363
  %call = call i64 @instruction_pointer(ptr noundef %7) #12, !dbg !363
  %8 = inttoptr i64 %call to ptr, !dbg !363
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %8) #14, !dbg !363
  store i32 %call5, ptr %tmp, align 4, !dbg !365
  %9 = load i32, ptr %tmp, align 4, !dbg !363
  %10 = load i8, ptr @ibt_fatal, align 1, !dbg !367, !range !269, !noundef !270
  %tobool6 = trunc i8 %10 to i1, !dbg !367
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !369

if.then7:                                         ; preds = %do.end
  br label %do.body8, !dbg !370

do.body8:                                         ; preds = %if.then7
  br label %do.end9, !dbg !373

do.end9:                                          ; preds = %do.body8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #14, !dbg !370
  store i32 %call11, ptr %tmp10, align 4, !dbg !373
  %11 = load i32, ptr %tmp10, align 4, !dbg !370
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !375
  %ip12 = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 16, !dbg !376
  %13 = load i64, ptr %ip12, align 8, !dbg !376
  %14 = inttoptr i64 %13 to ptr, !dbg !377
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !378
  call void @__warn(ptr noundef @.str.5, i32 noundef 128, ptr noundef %14, i32 noundef 9, ptr noundef %15, ptr noundef null) #12, !dbg !379
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !380
  call void @ibt_clear_fred_wfe(ptr noundef %16) #12, !dbg !381
  br label %do.end19, !dbg !382

if.end13:                                         ; preds = %do.end
  br label %do.body14, !dbg !383

do.body14:                                        ; preds = %if.end13
  br label %do.body15, !dbg !384

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !386

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !384

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 132, i32 0, i64 12) #13, !dbg !388, !srcloc !390
  br label %do.end18, !dbg !388

do.end18:                                         ; preds = %do.body17
  unreachable, !dbg !384

do.end19:                                         ; preds = %if.then, %if.then3, %do.end9
  ret void, !dbg !391
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !392 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cp_err_string(i64 noundef %error_code) #6 align 16 !dbg !396 {
entry:
  %error_code.addr = alloca i64, align 8
  %cpec = alloca i32, align 4
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !400, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpec) #13, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %cpec, metadata !401, metadata !DIExpression()), !dbg !404
  %0 = load i64, ptr %error_code.addr, align 8, !dbg !405
  %and = and i64 %0, 32767, !dbg !406
  %conv = trunc i64 %and to i32, !dbg !405
  store i32 %conv, ptr %cpec, align 4, !dbg !404
  %1 = load i32, ptr %cpec, align 4, !dbg !407
  %conv1 = zext i32 %1 to i64, !dbg !407
  %cmp = icmp uge i64 %conv1, 6, !dbg !409
  br i1 %cmp, label %if.then, label %if.end, !dbg !410

if.then:                                          ; preds = %entry
  store i32 0, ptr %cpec, align 4, !dbg !411
  br label %if.end, !dbg !412

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %cpec, align 4, !dbg !413
  %idxprom = zext i32 %2 to i64, !dbg !414
  %arrayidx = getelementptr [6 x [10 x i8]], ptr @cp_err, i64 0, i64 %idxprom, !dbg !414
  %arraydecay = getelementptr inbounds [10 x i8], ptr %arrayidx, i64 0, i64 0, !dbg !414
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpec) #13, !dbg !415
  ret ptr %arraydecay, !dbg !416
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !417 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !422, metadata !DIExpression()), !dbg !424
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !423, metadata !DIExpression()), !dbg !425
  %0 = load i64, ptr %nr.addr, align 8, !dbg !426
  %and = and i64 %0, 63, !dbg !427
  %shl = shl i64 1, %and, !dbg !428
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !429
  %2 = load i64, ptr %nr.addr, align 8, !dbg !430
  %shr = ashr i64 %2, 6, !dbg !431
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !429
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !429
  %and1 = and i64 %shl, %3, !dbg !432
  %cmp = icmp ne i64 %and1, 0, !dbg !433
  ret i1 %cmp, !dbg !434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !435 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !437, metadata !DIExpression()), !dbg !440
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !438, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !439, metadata !DIExpression()), !dbg !443
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !444
  %1 = load i64, ptr %nr.addr, align 8, !dbg !445
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !446, !srcloc !447
  %3 = icmp ult i8 %2, 2, !dbg !446
  call void @llvm.assume(i1 %3), !dbg !446
  store i8 %2, ptr %oldbit, align 1, !dbg !446
  %4 = load i8, ptr %oldbit, align 1, !dbg !448, !range !269, !noundef !270
  %tobool = trunc i8 %4 to i1, !dbg !448
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !449
  ret i1 %tobool, !dbg !450
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ibt_selftest_noendbr() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ibt_clear_fred_wfe(ptr noundef %regs) #6 align 16 !dbg !451 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !457
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !458
  %bf.load = load i64, ptr %1, align 8, !dbg !459
  %bf.clear = and i64 %bf.load, -262145, !dbg !459
  %bf.set = or i64 %bf.clear, 0, !dbg !459
  store i64 %bf.set, ptr %1, align 8, !dbg !459
  ret void, !dbg !460
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !461 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @instruction_pointer(ptr noundef %regs) #11 align 16 !dbg !465 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !471
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !472
  %1 = load i64, ptr %ip, align 8, !dbg !472
  ret i64 %1, !dbg !473
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !474 dso_local void @__warn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone }
attributes #13 = { nounwind }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_ibt_setup", scope: !2, file: !3, line: 146, type: !168, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.cet.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cet\22 -D KBUILD_BASENAME=\22cet\22 -D KBUILD_MODNAME=\22cet\22 -D __KBUILD_MODNAME=kmod_cet -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cet.ll arch/x86/kernel/cet.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cet.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4faa5ced1402096b859b8908cdd3b8bc")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cp_error_code", file: !3, line: 7, baseType: !7, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18, !19}
!13 = !DIEnumerator(name: "CP_EC", value: 32767)
!14 = !DIEnumerator(name: "CP_RET", value: 1)
!15 = !DIEnumerator(name: "CP_IRET", value: 2)
!16 = !DIEnumerator(name: "CP_ENDBR", value: 3)
!17 = !DIEnumerator(name: "CP_RSTRORSSP", value: 4)
!18 = !DIEnumerator(name: "CP_SETSSBSY", value: 5)
!19 = !DIEnumerator(name: "CP_ENCL", value: 32768)
!20 = !{!21, !22, !24, !23, !27}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !{!29, !0, !41, !46, !51, !56, !136, !141, !146, !151, !156, !161, !163}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__setup_ibt_setup", scope: !2, file: !3, line: 146, type: !31, isLocal: true, isDefinition: true, align: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !32, line: 324, size: 192, elements: !33)
!32 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!33 = !{!34, !35, !40}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !31, file: !32, line: 325, baseType: !24, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !31, file: !32, line: 326, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!21, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !31, file: !32, line: 327, baseType: !21, size: 32, offset: 128)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 4)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 5)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "ibt_fatal", scope: !2, file: !3, line: 82, type: !53, isLocal: true, isDefinition: true)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 35, baseType: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__already_done", scope: !58, file: !3, line: 39, type: !53, isLocal: true, isDefinition: true)
!58 = distinct !DISubprogram(name: "do_unexpected_cp", scope: !3, file: !3, line: 37, type: !59, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !23}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !63, line: 103, size: 1344, elements: !64)
!63 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !101, !102, !103}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !62, file: !63, line: 109, baseType: !23, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !62, file: !63, line: 110, baseType: !23, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !62, file: !63, line: 111, baseType: !23, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !62, file: !63, line: 112, baseType: !23, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !62, file: !63, line: 113, baseType: !23, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !62, file: !63, line: 114, baseType: !23, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !62, file: !63, line: 117, baseType: !23, size: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !62, file: !63, line: 118, baseType: !23, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !62, file: !63, line: 119, baseType: !23, size: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !62, file: !63, line: 120, baseType: !23, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !62, file: !63, line: 121, baseType: !23, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !62, file: !63, line: 122, baseType: !23, size: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !62, file: !63, line: 123, baseType: !23, size: 64, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !62, file: !63, line: 124, baseType: !23, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !62, file: !63, line: 125, baseType: !23, size: 64, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !62, file: !63, line: 139, baseType: !23, size: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !62, file: !63, line: 142, baseType: !23, size: 64, offset: 1024)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !63, line: 144, baseType: !83, size: 64, offset: 1088)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !63, line: 144, size: 64, elements: !84)
!84 = !{!85, !91, !95}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !83, file: !63, line: 146, baseType: !86, size: 16)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !83, file: !63, line: 148, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !94)
!94 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !83, file: !63, line: 150, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !63, line: 59, size: 64, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !96, file: !63, line: 61, baseType: !92, size: 16, flags: DIFlagBitField, extraData: i64 0)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !96, file: !63, line: 63, baseType: !92, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !96, file: !63, line: 65, baseType: !92, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !63, line: 153, baseType: !23, size: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !62, file: !63, line: 154, baseType: !23, size: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !63, line: 156, baseType: !104, size: 64, offset: 1280)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !63, line: 156, size: 64, elements: !105)
!105 = !{!106, !107, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !104, file: !63, line: 158, baseType: !86, size: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !104, file: !63, line: 160, baseType: !92, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !104, file: !63, line: 162, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !63, line: 69, size: 64, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !109, file: !63, line: 71, baseType: !92, size: 16, flags: DIFlagBitField, extraData: i64 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !109, file: !63, line: 73, baseType: !92, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !109, file: !63, line: 75, baseType: !92, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !109, file: !63, line: 77, baseType: !92, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !109, file: !63, line: 80, baseType: !92, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !63, line: 83, baseType: !92, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !109, file: !63, line: 86, baseType: !92, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !109, file: !63, line: 88, baseType: !92, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !109, file: !63, line: 93, baseType: !92, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !109, file: !63, line: 100, baseType: !92, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!121 = !{!122, !123, !124, !126, !129, !130, !132}
!122 = !DILocalVariable(name: "regs", arg: 1, scope: !58, file: !3, line: 37, type: !61)
!123 = !DILocalVariable(name: "error_code", arg: 2, scope: !58, file: !3, line: 37, type: !23)
!124 = !DILocalVariable(name: "__ret_do_once", scope: !125, file: !3, line: 39, type: !53)
!125 = distinct !DILexicalBlock(scope: !58, file: !3, line: 39, column: 2)
!126 = !DILocalVariable(name: "__ret_cond", scope: !127, file: !3, line: 39, type: !53)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 39, column: 2)
!128 = distinct !DILexicalBlock(scope: !125, file: !3, line: 39, column: 2)
!129 = !DILocalVariable(name: "__ret_once", scope: !127, file: !3, line: 39, type: !53)
!130 = !DILocalVariable(name: "__ret_warn_on", scope: !131, file: !3, line: 39, type: !21)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 39, column: 2)
!132 = !DILocalVariable(name: "__flags", scope: !133, file: !3, line: 39, type: !21)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 39, column: 2)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 39, column: 2)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 39, column: 2)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 280, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 35)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 80, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 10)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 96, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 12)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 176, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 22)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "cp_err", scope: !2, file: !3, line: 19, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 480, elements: !159)
!159 = !{!160, !145}
!160 = !DISubrange(count: 6)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !153, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 304, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 38)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 40, elements: !49)
!169 = !{i32 7, !"Dwarf Version", i32 5}
!170 = !{i32 2, !"Debug Info Version", i32 3}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 8, !"cf-protection-branch", i32 1}
!173 = !{i32 4, !"function_return_thunk_extern", i32 1}
!174 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!175 = !{i32 1, !"Code Model", i32 2}
!176 = !{i32 1, !"override-stack-alignment", i32 8}
!177 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!178 = distinct !DISubprogram(name: "ibt_setup", scope: !3, file: !3, line: 135, type: !37, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !179)
!179 = !{!180}
!180 = !DILocalVariable(name: "str", arg: 1, scope: !178, file: !3, line: 135, type: !39)
!181 = !DILocation(line: 135, column: 35, scope: !178)
!182 = !DILocation(line: 137, column: 14, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !3, line: 137, column: 6)
!184 = !DILocation(line: 137, column: 7, scope: !183)
!185 = !DILocation(line: 137, column: 6, scope: !178)
!186 = !DILocation(line: 138, column: 3, scope: !183)
!187 = !DILocation(line: 140, column: 14, scope: !188)
!188 = distinct !DILexicalBlock(scope: !178, file: !3, line: 140, column: 6)
!189 = !DILocation(line: 140, column: 7, scope: !188)
!190 = !DILocation(line: 140, column: 6, scope: !178)
!191 = !DILocation(line: 141, column: 13, scope: !188)
!192 = !DILocation(line: 141, column: 3, scope: !188)
!193 = !DILocation(line: 143, column: 2, scope: !178)
!194 = distinct !DISubprogram(name: "exc_control_protection", scope: !3, file: !3, line: 148, type: !59, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!195 = !{!196, !197, !198}
!196 = !DILocalVariable(name: "regs", arg: 1, scope: !194, file: !3, line: 148, type: !61)
!197 = !DILocalVariable(name: "error_code", arg: 2, scope: !194, file: !3, line: 148, type: !23)
!198 = !DILocalVariable(name: "state", scope: !194, file: !3, line: 148, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqentry_state_t", file: !200, line: 376, baseType: !201)
!200 = !DIFile(filename: "./include/linux/entry-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b93fdf1f121944f6dbdd60dbacd9cec")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqentry_state", file: !200, line: 371, size: 8, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !200, line: 372, baseType: !204, size: 8)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !200, line: 372, size: 8, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "exit_rcu", scope: !204, file: !200, line: 373, baseType: !53, size: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep", scope: !204, file: !200, line: 374, baseType: !53, size: 8)
!208 = !DILocation(line: 148, column: 1, scope: !194)
!209 = !DILocation(line: 148, column: 1, scope: !210)
!210 = distinct !DILexicalBlock(scope: !194, file: !3, line: 148, column: 1)
!211 = !DILocation(line: 148, column: 1, scope: !212)
!212 = distinct !DILexicalBlock(scope: !194, file: !3, line: 148, column: 1)
!213 = !DISubprogram(name: "irqentry_enter", scope: !200, file: !200, line: 410, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubroutineType(types: !215)
!215 = !{!199, !61}
!216 = distinct !DISubprogram(name: "__exc_control_protection", scope: !3, file: !3, line: 148, type: !59, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!217 = !{!218, !219}
!218 = !DILocalVariable(name: "regs", arg: 1, scope: !216, file: !3, line: 148, type: !61)
!219 = !DILocalVariable(name: "error_code", arg: 2, scope: !216, file: !3, line: 148, type: !23)
!220 = !DILocation(line: 148, column: 1, scope: !216)
!221 = !DILocation(line: 150, column: 16, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !3, line: 150, column: 6)
!223 = !DILocation(line: 150, column: 6, scope: !222)
!224 = !DILocation(line: 150, column: 6, scope: !216)
!225 = !DILocation(line: 154, column: 21, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 151, column: 7)
!227 = distinct !DILexicalBlock(scope: !222, file: !3, line: 150, column: 23)
!228 = !DILocation(line: 154, column: 27, scope: !226)
!229 = !DILocation(line: 154, column: 4, scope: !226)
!230 = !DILocation(line: 155, column: 2, scope: !227)
!231 = !DILocation(line: 156, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !222, file: !3, line: 155, column: 9)
!233 = !DILocation(line: 156, column: 7, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !3, line: 156, column: 7)
!235 = !DILocation(line: 157, column: 23, scope: !234)
!236 = !DILocation(line: 157, column: 29, scope: !234)
!237 = !DILocation(line: 157, column: 4, scope: !234)
!238 = !DILocation(line: 159, column: 21, scope: !234)
!239 = !DILocation(line: 159, column: 27, scope: !234)
!240 = !DILocation(line: 159, column: 4, scope: !234)
!241 = !DILocation(line: 161, column: 1, scope: !216)
!242 = !DISubprogram(name: "irqentry_exit", scope: !200, file: !200, line: 447, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !61, !199}
!245 = !DISubprogram(name: "strcmp", scope: !246, file: !246, line: 88, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!247 = !DISubroutineType(types: !248)
!248 = !{!21, !24, !24}
!249 = !DISubprogram(name: "setup_clear_cpu_cap", scope: !250, file: !250, line: 150, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!251 = !DISubroutineType(types: !252)
!252 = !{null, !7}
!253 = distinct !DISubprogram(name: "user_mode", scope: !63, file: !63, line: 209, type: !254, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!21, !61}
!256 = !{!257}
!257 = !DILocalVariable(name: "regs", arg: 1, scope: !253, file: !63, line: 209, type: !61)
!258 = !DILocation(line: 209, column: 54, scope: !253)
!259 = !DILocation(line: 214, column: 12, scope: !253)
!260 = !DILocation(line: 214, column: 18, scope: !253)
!261 = !DILocation(line: 214, column: 21, scope: !253)
!262 = !DILocation(line: 214, column: 10, scope: !253)
!263 = !DILocation(line: 214, column: 9, scope: !253)
!264 = !DILocation(line: 214, column: 2, scope: !253)
!265 = !DILocation(line: 37, column: 46, scope: !58)
!266 = !DILocation(line: 37, column: 66, scope: !58)
!267 = !DILocation(line: 39, column: 2, scope: !125)
!268 = !DILocation(line: 39, column: 2, scope: !127)
!269 = !{i8 0, i8 2}
!270 = !{}
!271 = !DILocation(line: 39, column: 2, scope: !272)
!272 = distinct !DILexicalBlock(scope: !127, file: !3, line: 39, column: 2)
!273 = !DILocation(line: 0, scope: !272)
!274 = !DILocation(line: 39, column: 2, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 39, column: 2)
!276 = !DILocation(line: 39, column: 2, scope: !128)
!277 = !DILocation(line: 39, column: 2, scope: !131)
!278 = !DILocation(line: 39, column: 2, scope: !135)
!279 = !DILocation(line: 39, column: 2, scope: !134)
!280 = !DILocation(line: 39, column: 2, scope: !281)
!281 = distinct !DILexicalBlock(scope: !134, file: !3, line: 39, column: 2)
!282 = !DILocation(line: 39, column: 2, scope: !133)
!283 = !DILocation(line: 39, column: 2, scope: !284)
!284 = distinct !DILexicalBlock(scope: !133, file: !3, line: 39, column: 2)
!285 = !DILocation(line: 39, column: 2, scope: !286)
!286 = distinct !DILexicalBlock(scope: !133, file: !3, line: 39, column: 2)
!287 = !{i64 2155733536, i64 2155733565, i64 2155733611, i64 2155733669, i64 2155733723, i64 2155733777, i64 2155733832, i64 2155733863, i64 2155734171, i64 2155734177, i64 2155734224, i64 2155734247, i64 2155734273}
!288 = !DILocation(line: 39, column: 2, scope: !289)
!289 = distinct !DILexicalBlock(scope: !133, file: !3, line: 39, column: 2)
!290 = !DILocation(line: 39, column: 2, scope: !291)
!291 = distinct !DILexicalBlock(scope: !134, file: !3, line: 39, column: 2)
!292 = !DILocation(line: 39, column: 2, scope: !58)
!293 = !DILocation(line: 42, column: 1, scope: !58)
!294 = distinct !DISubprogram(name: "arch_test_bit", scope: !295, file: !295, line: 237, type: !296, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !301)
!295 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!296 = !DISubroutineType(types: !297)
!297 = !{!53, !23, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!301 = !{!302, !303}
!302 = !DILocalVariable(name: "nr", arg: 1, scope: !294, file: !295, line: 237, type: !23)
!303 = !DILocalVariable(name: "addr", arg: 2, scope: !294, file: !295, line: 237, type: !298)
!304 = !DILocation(line: 237, column: 29, scope: !294)
!305 = !DILocation(line: 237, column: 63, scope: !294)
!306 = !DILocation(line: 239, column: 30, scope: !294)
!307 = !DILocation(line: 239, column: 9, scope: !294)
!308 = !DILocation(line: 239, column: 54, scope: !294)
!309 = !DILocation(line: 239, column: 58, scope: !294)
!310 = !DILocation(line: 239, column: 36, scope: !294)
!311 = !DILocation(line: 240, column: 26, scope: !294)
!312 = !DILocation(line: 240, column: 30, scope: !294)
!313 = !DILocation(line: 240, column: 8, scope: !294)
!314 = !DILocation(line: 239, column: 2, scope: !294)
!315 = distinct !DISubprogram(name: "_static_cpu_has", scope: !250, file: !250, line: 173, type: !316, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{!53, !86}
!318 = !{!319, !320, !321}
!319 = !DILocalVariable(name: "bit", arg: 1, scope: !315, file: !250, line: 173, type: !86)
!320 = !DILabel(scope: !315, name: "t_yes", file: !250, line: 187)
!321 = !DILabel(scope: !315, name: "t_no", file: !250, line: 189)
!322 = !DILocation(line: 173, column: 49, scope: !315)
!323 = !DILocation(line: 183, column: 24, scope: !315)
!324 = !DILocation(line: 184, column: 30, scope: !315)
!325 = !DILocation(line: 184, column: 34, scope: !315)
!326 = !DILocation(line: 184, column: 26, scope: !315)
!327 = !DILocation(line: 185, column: 70, scope: !315)
!328 = !DILocation(line: 185, column: 74, scope: !315)
!329 = !DILocation(line: 185, column: 25, scope: !315)
!330 = !DILocation(line: 175, column: 2, scope: !315)
!331 = !{i64 2149586411, i64 2149586444, i64 2149586450, i64 2149586466, i64 2149586485, i64 2149586516, i64 2149587469, i64 2149586058, i64 2149587475, i64 2149587523, i64 2149587587, i64 2149587651, i64 2149587708, i64 2149587915, i64 2149587963, i64 2149588027, i64 2149588091, i64 2149588148, i64 2149586176, i64 2149586201, i64 2149588358, i64 2149588486, i64 2149588419, i64 2149588500, i64 2149588514, i64 2149588630, i64 2149588575, i64 2149588644, i64 2149586335, i64 1713156, i64 1713196, i64 1713205, i64 1713255, i64 1713276, i64 1713296}
!332 = !DILocation(line: 187, column: 1, scope: !315)
!333 = !DILocation(line: 188, column: 2, scope: !315)
!334 = !DILocation(line: 189, column: 1, scope: !315)
!335 = !DILocation(line: 190, column: 2, scope: !315)
!336 = !DILocation(line: 191, column: 1, scope: !315)
!337 = distinct !DISubprogram(name: "do_kernel_cp_fault", scope: !3, file: !3, line: 112, type: !59, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !338)
!338 = !{!339, !340}
!339 = !DILocalVariable(name: "regs", arg: 1, scope: !337, file: !3, line: 112, type: !61)
!340 = !DILocalVariable(name: "error_code", arg: 2, scope: !337, file: !3, line: 112, type: !23)
!341 = !DILocation(line: 112, column: 48, scope: !337)
!342 = !DILocation(line: 112, column: 68, scope: !337)
!343 = !DILocation(line: 114, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !337, file: !3, line: 114, column: 6)
!345 = !DILocation(line: 114, column: 18, scope: !344)
!346 = !DILocation(line: 114, column: 27, scope: !344)
!347 = !DILocation(line: 114, column: 6, scope: !337)
!348 = !DILocation(line: 115, column: 20, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !3, line: 114, column: 40)
!350 = !DILocation(line: 115, column: 26, scope: !349)
!351 = !DILocation(line: 115, column: 3, scope: !349)
!352 = !DILocation(line: 116, column: 3, scope: !349)
!353 = !DILocation(line: 119, column: 6, scope: !354)
!354 = distinct !DILexicalBlock(scope: !337, file: !3, line: 119, column: 6)
!355 = !DILocation(line: 119, column: 6, scope: !337)
!356 = !DILocation(line: 120, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !3, line: 119, column: 66)
!358 = !DILocation(line: 120, column: 9, scope: !357)
!359 = !DILocation(line: 120, column: 12, scope: !357)
!360 = !DILocation(line: 121, column: 22, scope: !357)
!361 = !DILocation(line: 121, column: 3, scope: !357)
!362 = !DILocation(line: 122, column: 3, scope: !357)
!363 = !DILocation(line: 125, column: 2, scope: !364)
!364 = distinct !DILexicalBlock(scope: !337, file: !3, line: 125, column: 2)
!365 = !DILocation(line: 125, column: 2, scope: !366)
!366 = distinct !DILexicalBlock(scope: !364, file: !3, line: 125, column: 2)
!367 = !DILocation(line: 126, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !337, file: !3, line: 126, column: 6)
!369 = !DILocation(line: 126, column: 6, scope: !337)
!370 = !DILocation(line: 127, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 127, column: 3)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 126, column: 18)
!373 = !DILocation(line: 127, column: 3, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !3, line: 127, column: 3)
!375 = !DILocation(line: 128, column: 38, scope: !372)
!376 = !DILocation(line: 128, column: 44, scope: !372)
!377 = !DILocation(line: 128, column: 30, scope: !372)
!378 = !DILocation(line: 128, column: 60, scope: !372)
!379 = !DILocation(line: 128, column: 3, scope: !372)
!380 = !DILocation(line: 129, column: 22, scope: !372)
!381 = !DILocation(line: 129, column: 3, scope: !372)
!382 = !DILocation(line: 130, column: 3, scope: !372)
!383 = !DILocation(line: 132, column: 2, scope: !337)
!384 = !DILocation(line: 132, column: 2, scope: !385)
!385 = distinct !DILexicalBlock(scope: !337, file: !3, line: 132, column: 2)
!386 = !DILocation(line: 132, column: 2, scope: !387)
!387 = distinct !DILexicalBlock(scope: !385, file: !3, line: 132, column: 2)
!388 = !DILocation(line: 132, column: 2, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 132, column: 2)
!390 = !{i64 2155737962, i64 2155737991, i64 2155738037, i64 2155738095, i64 2155738149, i64 2155738203, i64 2155738258, i64 2155738289}
!391 = !DILocation(line: 133, column: 1, scope: !337)
!392 = !DISubprogram(name: "__warn_printk", scope: !393, file: !393, line: 93, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!394 = !DISubroutineType(types: !395)
!395 = !{null, !24, null}
!396 = distinct !DISubprogram(name: "cp_err_string", scope: !3, file: !3, line: 28, type: !397, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!24, !23}
!399 = !{!400, !401}
!400 = !DILocalVariable(name: "error_code", arg: 1, scope: !396, file: !3, line: 28, type: !23)
!401 = !DILocalVariable(name: "cpec", scope: !396, file: !3, line: 30, type: !7)
!402 = !DILocation(line: 28, column: 48, scope: !396)
!403 = !DILocation(line: 30, column: 2, scope: !396)
!404 = !DILocation(line: 30, column: 15, scope: !396)
!405 = !DILocation(line: 30, column: 22, scope: !396)
!406 = !DILocation(line: 30, column: 33, scope: !396)
!407 = !DILocation(line: 32, column: 6, scope: !408)
!408 = distinct !DILexicalBlock(scope: !396, file: !3, line: 32, column: 6)
!409 = !DILocation(line: 32, column: 11, scope: !408)
!410 = !DILocation(line: 32, column: 6, scope: !396)
!411 = !DILocation(line: 33, column: 8, scope: !408)
!412 = !DILocation(line: 33, column: 3, scope: !408)
!413 = !DILocation(line: 34, column: 16, scope: !396)
!414 = !DILocation(line: 34, column: 9, scope: !396)
!415 = !DILocation(line: 35, column: 1, scope: !396)
!416 = !DILocation(line: 34, column: 2, scope: !396)
!417 = distinct !DISubprogram(name: "constant_test_bit", scope: !295, file: !295, line: 204, type: !418, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!418 = !DISubroutineType(types: !419)
!419 = !{!53, !420, !298}
!420 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!421 = !{!422, !423}
!422 = !DILocalVariable(name: "nr", arg: 1, scope: !417, file: !295, line: 204, type: !420)
!423 = !DILocalVariable(name: "addr", arg: 2, scope: !417, file: !295, line: 204, type: !298)
!424 = !DILocation(line: 204, column: 52, scope: !417)
!425 = !DILocation(line: 204, column: 86, scope: !417)
!426 = !DILocation(line: 206, column: 19, scope: !417)
!427 = !DILocation(line: 206, column: 22, scope: !417)
!428 = !DILocation(line: 206, column: 15, scope: !417)
!429 = !DILocation(line: 207, column: 4, scope: !417)
!430 = !DILocation(line: 207, column: 9, scope: !417)
!431 = !DILocation(line: 207, column: 12, scope: !417)
!432 = !DILocation(line: 206, column: 44, scope: !417)
!433 = !DILocation(line: 207, column: 37, scope: !417)
!434 = !DILocation(line: 206, column: 2, scope: !417)
!435 = distinct !DISubprogram(name: "variable_test_bit", scope: !295, file: !295, line: 224, type: !418, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !436)
!436 = !{!437, !438, !439}
!437 = !DILocalVariable(name: "nr", arg: 1, scope: !435, file: !295, line: 224, type: !420)
!438 = !DILocalVariable(name: "addr", arg: 2, scope: !435, file: !295, line: 224, type: !298)
!439 = !DILocalVariable(name: "oldbit", scope: !435, file: !295, line: 226, type: !53)
!440 = !DILocation(line: 224, column: 52, scope: !435)
!441 = !DILocation(line: 224, column: 86, scope: !435)
!442 = !DILocation(line: 226, column: 2, scope: !435)
!443 = !DILocation(line: 226, column: 7, scope: !435)
!444 = !DILocation(line: 231, column: 33, scope: !435)
!445 = !DILocation(line: 231, column: 46, scope: !435)
!446 = !DILocation(line: 228, column: 2, scope: !435)
!447 = !{i64 2147918403, i64 2147918477}
!448 = !DILocation(line: 233, column: 9, scope: !435)
!449 = !DILocation(line: 234, column: 1, scope: !435)
!450 = !DILocation(line: 233, column: 2, scope: !435)
!451 = distinct !DISubprogram(name: "ibt_clear_fred_wfe", scope: !3, file: !3, line: 98, type: !452, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !61}
!454 = !{!455}
!455 = !DILocalVariable(name: "regs", arg: 1, scope: !451, file: !3, line: 98, type: !61)
!456 = !DILocation(line: 98, column: 48, scope: !451)
!457 = !DILocation(line: 109, column: 2, scope: !451)
!458 = !DILocation(line: 109, column: 8, scope: !451)
!459 = !DILocation(line: 109, column: 20, scope: !451)
!460 = !DILocation(line: 110, column: 1, scope: !451)
!461 = !DISubprogram(name: "_printk", scope: !462, file: !462, line: 153, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!463 = !DISubroutineType(types: !464)
!464 = !{!21, !24, null}
!465 = distinct !DISubprogram(name: "instruction_pointer", scope: !63, file: !63, line: 285, type: !466, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!23, !61}
!468 = !{!469}
!469 = !DILocalVariable(name: "regs", arg: 1, scope: !465, file: !63, line: 285, type: !61)
!470 = !DILocation(line: 285, column: 65, scope: !465)
!471 = !DILocation(line: 287, column: 9, scope: !465)
!472 = !DILocation(line: 287, column: 15, scope: !465)
!473 = !DILocation(line: 287, column: 2, scope: !465)
!474 = !DISubprogram(name: "__warn", scope: !393, file: !393, line: 27, type: !475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !24, !21, !27, !7, !61, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "warn_args", file: !393, line: 24, flags: DIFlagFwdDecl)
