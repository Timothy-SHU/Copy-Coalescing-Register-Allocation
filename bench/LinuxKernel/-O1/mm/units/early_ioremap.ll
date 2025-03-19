; ModuleID = 'mm/early_ioremap.c'
source_filename = "mm/early_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_early_ioremap__332_97_check_early_ioremap_leak\22, \22a\22\09\09"
module asm "__initcall__kmod_early_ioremap__332_97_check_early_ioremap_leak7:\09\09\09"
module asm ".long\09__initstub__kmod_early_ioremap__332_97_check_early_ioremap_leak7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pgprot = type { i64 }

@__setup_str_early_ioremap_debug_setup = internal constant [20 x i8] c"early_ioremap_debug\00", section ".init.rodata", align 1, !dbg !0
@__setup_early_ioremap_debug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_early_ioremap_debug_setup, ptr @early_ioremap_debug_setup, i32 1 }, section ".init.setup", align 8, !dbg !45
@after_paging_init = internal global i32 0, section ".init.data", align 4, !dbg !90
@prev_map = internal global [8 x ptr] zeroinitializer, section ".init.data", align 16, !dbg !92
@.str = private unnamed_addr constant [19 x i8] c"mm/early_ioremap.c\00", align 1, !dbg !61
@slot_virt = internal global [8 x i64] zeroinitializer, section ".init.data", align 16, !dbg !100
@__UNIQUE_ID___addressable___initstub__kmod_early_ioremap__332_97_check_early_ioremap_leak7333 = internal global ptr @__initstub__kmod_early_ioremap__332_97_check_early_ioremap_leak7, section ".discard.addressable", align 8, !dbg !66
@.str.1 = private unnamed_addr constant [30 x i8] c"%s(%p, %08lx) not found slot\0A\00", align 1, !dbg !68
@__func__.early_iounmap = private unnamed_addr constant [14 x i8] c"early_iounmap\00", align 1, !dbg !73
@prev_size = internal global [8 x i64] zeroinitializer, section ".init.data", align 16, !dbg !97
@.str.2 = private unnamed_addr constant [46 x i8] c"%s(%p, %08lx) [%d] size not consistent %08lx\0A\00", align 1, !dbg !78
@early_ioremap_debug = internal global i32 0, section ".init.data", align 4, !dbg !88
@.str.3 = private unnamed_addr constant [20 x i8] c"%s(%p, %08lx) [%d]\0A\00", align 1, !dbg !83
@__default_kernel_pte_mask = external dso_local global i64, align 8
@.str.4 = private unnamed_addr constant [118 x i8] c"\014Debug warning: early ioremap leak of %d areas detected.\0Aplease boot with early_ioremap_debug and report the dmesg.\0A\00", align 1, !dbg !102
@system_state = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"%s(%pa, %08lx) not found slot\0A\00", align 1, !dbg !107
@__func__.__early_ioremap = private unnamed_addr constant [16 x i8] c"__early_ioremap\00", align 1, !dbg !112
@.str.6 = private unnamed_addr constant [38 x i8] c"%s(%pa, %08lx) [%d] => %08lx + %08lx\0A\00", align 1, !dbg !117
@llvm.compiler.used = appending global [2 x ptr] [ptr @__setup_early_ioremap_debug_setup, ptr @__UNIQUE_ID___addressable___initstub__kmod_early_ioremap__332_97_check_early_ioremap_leak7333], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_ioremap_debug_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !132 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !134, metadata !DIExpression()), !dbg !135
  store i32 1, ptr @early_ioremap_debug, align 4, !dbg !136
  ret i32 0, !dbg !137
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak hidden i64 @early_memremap_pgprot_adjust(i64 noundef %phys_addr, i64 noundef %size, i64 %prot.coerce) #0 section ".init.text" align 16 !dbg !138 {
entry:
  %retval = alloca %struct.pgprot, align 8
  %prot = alloca %struct.pgprot, align 8
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !148, metadata !DIExpression()), !dbg !151
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !149, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !150, metadata !DIExpression()), !dbg !153
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %prot, i64 8, i1 false), !dbg !154
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !155
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !155
  ret i64 %0, !dbg !155
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @early_ioremap_reset() #0 section ".init.text" align 16 !dbg !156 {
entry:
  store i32 1, ptr @after_paging_init, align 4, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @early_ioremap_setup() #0 section ".init.text" align 16 !dbg !161 {
entry:
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %i, metadata !163, metadata !DIExpression()), !dbg !173
  store i32 0, ptr %i, align 4, !dbg !174
  br label %for.cond, !dbg !175

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !176
  %cmp = icmp slt i32 %0, 8, !dbg !177
  br i1 %cmp, label %for.body, label %for.end, !dbg !178

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !164, metadata !DIExpression()), !dbg !179
  %1 = load i32, ptr %i, align 4, !dbg !179
  %idxprom = sext i32 %1 to i64, !dbg !179
  %arrayidx = getelementptr [8 x ptr], ptr @prev_map, i64 0, i64 %idxprom, !dbg !179
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !179
  %tobool = icmp ne ptr %2, null, !dbg !179
  %lnot = xor i1 %tobool, true, !dbg !179
  %lnot1 = xor i1 %lnot, true, !dbg !179
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !179
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !179
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !180
  %tobool2 = icmp ne i32 %3, 0, !dbg !180
  %lnot3 = xor i1 %tobool2, true, !dbg !180
  %lnot5 = xor i1 %lnot3, true, !dbg !180
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !180
  %conv = sext i32 %lnot.ext6 to i64, !dbg !180
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !180
  %tobool7 = icmp ne i64 %expval, 0, !dbg !180
  br i1 %tobool7, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !180

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !169, metadata !DIExpression()), !dbg !181
  store i32 2307, ptr %__flags, align 4, !dbg !181
  br label %do.body8, !dbg !181

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !182

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !182

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !181

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !184
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 76, i32 %4, i64 12) #9, !dbg !184, !srcloc !186
  br label %do.cond10, !dbg !184

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !184

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !181

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !187

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !187

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !180
  br label %do.cond15, !dbg !181

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !181

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !181

if.end:                                           ; preds = %do.end16, %for.body
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !179
  %tobool17 = icmp ne i32 %5, 0, !dbg !179
  %lnot18 = xor i1 %tobool17, true, !dbg !179
  %lnot20 = xor i1 %lnot18, true, !dbg !179
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !179
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !179
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !179
  store i64 %expval23, ptr %tmp, align 8, !dbg !180
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !189
  %6 = load i64, ptr %tmp, align 8, !dbg !179
  %7 = load i32, ptr %i, align 4, !dbg !190
  %mul = mul i32 64, %7, !dbg !190
  %sub = sub i32 1535, %mul, !dbg !190
  %shl = shl i32 %sub, 12, !dbg !190
  %conv24 = sext i32 %shl to i64, !dbg !190
  %sub25 = sub i64 -8392704, %conv24, !dbg !190
  %8 = load i32, ptr %i, align 4, !dbg !191
  %idxprom26 = sext i32 %8 to i64, !dbg !192
  %arrayidx27 = getelementptr [8 x i64], ptr @slot_virt, i64 0, i64 %idxprom26, !dbg !192
  store i64 %sub25, ptr %arrayidx27, align 8, !dbg !193
  br label %for.inc, !dbg !194

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !195
  %inc = add i32 %9, 1, !dbg !195
  store i32 %inc, ptr %i, align 4, !dbg !195
  br label %for.cond, !dbg !196, !llvm.loop !197

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !201
  ret void, !dbg !201
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_early_ioremap__332_97_check_early_ioremap_leak7() #0 section ".init.text" align 16 !dbg !202 {
entry:
  %call = call i32 @check_early_ioremap_leak() #10, !dbg !205
  ret i32 %call, !dbg !205
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @check_early_ioremap_leak() #0 section ".init.text" align 16 !dbg !206 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %count, metadata !208, metadata !DIExpression()), !dbg !218
  store i32 0, ptr %count, align 4, !dbg !218
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !219
  call void @llvm.dbg.declare(metadata ptr %i, metadata !209, metadata !DIExpression()), !dbg !220
  store i32 0, ptr %i, align 4, !dbg !221
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !224
  %cmp = icmp slt i32 %0, 8, !dbg !226
  br i1 %cmp, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !228
  %idxprom = sext i32 %1 to i64, !dbg !230
  %arrayidx = getelementptr [8 x ptr], ptr @prev_map, i64 0, i64 %idxprom, !dbg !230
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !230
  %tobool = icmp ne ptr %2, null, !dbg !230
  br i1 %tobool, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %count, align 4, !dbg !232
  %inc = add i32 %3, 1, !dbg !232
  store i32 %inc, ptr %count, align 4, !dbg !232
  br label %if.end, !dbg !233

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !234

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !235
  %inc1 = add i32 %4, 1, !dbg !235
  store i32 %inc1, ptr %i, align 4, !dbg !235
  br label %for.cond, !dbg !236, !llvm.loop !237

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !210, metadata !DIExpression()), !dbg !239
  %5 = load i32, ptr %count, align 4, !dbg !239
  %tobool2 = icmp ne i32 %5, 0, !dbg !239
  %lnot = xor i1 %tobool2, true, !dbg !239
  %lnot3 = xor i1 %lnot, true, !dbg !239
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !239
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !239
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !240
  %tobool4 = icmp ne i32 %6, 0, !dbg !240
  %lnot5 = xor i1 %tobool4, true, !dbg !240
  %lnot7 = xor i1 %lnot5, true, !dbg !240
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !240
  %conv = sext i32 %lnot.ext8 to i64, !dbg !240
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !240
  %tobool9 = icmp ne i64 %expval, 0, !dbg !240
  br i1 %tobool9, label %if.then10, label %if.end29, !dbg !239

if.then10:                                        ; preds = %for.end
  br label %do.body, !dbg !240

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !241

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !242

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !242

do.end:                                           ; preds = %do.cond
  %7 = load i32, ptr %count, align 4, !dbg !241
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.4, i32 noundef %7) #11, !dbg !241
  br label %do.body12, !dbg !241

do.body12:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !213, metadata !DIExpression()), !dbg !244
  store i32 2313, ptr %__flags, align 4, !dbg !244
  br label %do.body13, !dbg !244

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !245

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !245

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !244

do.body16:                                        ; preds = %do.end15
  %8 = load i32, ptr %__flags, align 4, !dbg !247
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 93, i32 %8, i64 12) #9, !dbg !247, !srcloc !249
  br label %do.cond17, !dbg !247

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !247

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !244

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !250

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !250

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !241
  br label %do.cond22, !dbg !244

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !244

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !241

do.body24:                                        ; preds = %do.end23
  br label %do.cond25, !dbg !252

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !252

do.end26:                                         ; preds = %do.cond25
  br label %do.cond27, !dbg !241

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !241

do.end28:                                         ; preds = %do.cond27
  br label %if.end29, !dbg !241

if.end29:                                         ; preds = %do.end28, %for.end
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !239
  %tobool30 = icmp ne i32 %9, 0, !dbg !239
  %lnot31 = xor i1 %tobool30, true, !dbg !239
  %lnot33 = xor i1 %lnot31, true, !dbg !239
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !239
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !239
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !239
  store i64 %expval36, ptr %tmp, align 8, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !254
  %10 = load i64, ptr %tmp, align 8, !dbg !239
  %tobool37 = icmp ne i64 %10, 0, !dbg !254
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !255

if.then38:                                        ; preds = %if.end29
  store i32 1, ptr %retval, align 4, !dbg !256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !256

if.end39:                                         ; preds = %if.end29
  store i32 0, ptr %retval, align 4, !dbg !257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !257

cleanup:                                          ; preds = %if.end39, %if.then38
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !258
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !258
  %11 = load i32, ptr %retval, align 4, !dbg !258
  ret i32 %11, !dbg !258
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @early_iounmap(ptr noundef %addr, i64 noundef %size) #0 section ".init.text" align 16 !dbg !259 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %virt_addr = alloca i64, align 8
  %offset = alloca i64, align 8
  %nrpages = alloca i32, align 4
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on39 = alloca i32, align 4
  %__flags64 = alloca i32, align 4
  %tmp82 = alloca i64, align 8
  %__ret_warn_on93 = alloca i32, align 4
  %__flags113 = alloca i32, align 4
  %tmp131 = alloca i64, align 8
  %__ret_warn_on139 = alloca i32, align 4
  %__flags156 = alloca i32, align 4
  %tmp169 = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %.compoundliteral187 = alloca %struct.pgprot, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !263, metadata !DIExpression()), !dbg !297
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !264, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %virt_addr) #9, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %virt_addr, metadata !265, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #9, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !266, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrpages) #9, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %nrpages, metadata !267, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #9, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !268, metadata !DIExpression()), !dbg !306
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %i, metadata !269, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #9, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !270, metadata !DIExpression()), !dbg !309
  store i32 -1, ptr %slot, align 4, !dbg !310
  store i32 0, ptr %i, align 4, !dbg !311
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !314
  %cmp = icmp slt i32 %0, 8, !dbg !316
  br i1 %cmp, label %for.body, label %for.end, !dbg !317

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !318
  %idxprom = sext i32 %1 to i64, !dbg !321
  %arrayidx = getelementptr [8 x ptr], ptr @prev_map, i64 0, i64 %idxprom, !dbg !321
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !321
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !322
  %cmp1 = icmp eq ptr %2, %3, !dbg !323
  br i1 %cmp1, label %if.then, label %if.end, !dbg !324

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !325
  store i32 %4, ptr %slot, align 4, !dbg !327
  br label %for.end, !dbg !328

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !329

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !330
  %inc = add i32 %5, 1, !dbg !330
  store i32 %inc, ptr %i, align 4, !dbg !330
  br label %for.cond, !dbg !331, !llvm.loop !332

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !334
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !271, metadata !DIExpression()), !dbg !334
  %6 = load i32, ptr %slot, align 4, !dbg !334
  %cmp2 = icmp slt i32 %6, 0, !dbg !334
  %lnot = xor i1 %cmp2, true, !dbg !334
  %lnot3 = xor i1 %lnot, true, !dbg !334
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !334
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !334
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !335
  %tobool = icmp ne i32 %7, 0, !dbg !335
  %lnot4 = xor i1 %tobool, true, !dbg !335
  %lnot6 = xor i1 %lnot4, true, !dbg !335
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !335
  %conv = sext i32 %lnot.ext7 to i64, !dbg !335
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !335
  %tobool8 = icmp ne i64 %expval, 0, !dbg !335
  br i1 %tobool8, label %if.then9, label %if.end28, !dbg !334

if.then9:                                         ; preds = %for.end
  br label %do.body, !dbg !335

do.body:                                          ; preds = %if.then9
  br label %do.body10, !dbg !336

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !337

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !337

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %addr.addr, align 8, !dbg !336
  %9 = load i64, ptr %size.addr, align 8, !dbg !336
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, ptr noundef @__func__.early_iounmap, ptr noundef %8, i64 noundef %9) #11, !dbg !336
  br label %do.body11, !dbg !336

do.body11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !274, metadata !DIExpression()), !dbg !339
  store i32 2313, ptr %__flags, align 4, !dbg !339
  br label %do.body12, !dbg !339

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !340

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !340

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !339

do.body15:                                        ; preds = %do.end14
  %10 = load i32, ptr %__flags, align 4, !dbg !342
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 179, i32 %10, i64 12) #9, !dbg !342, !srcloc !344
  br label %do.cond16, !dbg !342

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !342

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !339

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !345

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !345

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !336
  br label %do.cond21, !dbg !339

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !339

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !336

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !347

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !347

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !336

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !336

do.end27:                                         ; preds = %do.cond26
  br label %if.end28, !dbg !336

if.end28:                                         ; preds = %do.end27, %for.end
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !334
  %tobool29 = icmp ne i32 %11, 0, !dbg !334
  %lnot30 = xor i1 %tobool29, true, !dbg !334
  %lnot32 = xor i1 %lnot30, true, !dbg !334
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !334
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !334
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !334
  store i64 %expval35, ptr %tmp, align 8, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !349
  %12 = load i64, ptr %tmp, align 8, !dbg !334
  %tobool36 = icmp ne i64 %12, 0, !dbg !349
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !350

if.then37:                                        ; preds = %if.end28
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !351

if.end38:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on39) #9, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on39, metadata !278, metadata !DIExpression()), !dbg !352
  %13 = load i32, ptr %slot, align 4, !dbg !352
  %idxprom40 = sext i32 %13 to i64, !dbg !352
  %arrayidx41 = getelementptr [8 x i64], ptr @prev_size, i64 0, i64 %idxprom40, !dbg !352
  %14 = load i64, ptr %arrayidx41, align 8, !dbg !352
  %15 = load i64, ptr %size.addr, align 8, !dbg !352
  %cmp42 = icmp ne i64 %14, %15, !dbg !352
  %lnot44 = xor i1 %cmp42, true, !dbg !352
  %lnot46 = xor i1 %lnot44, true, !dbg !352
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !352
  store i32 %lnot.ext47, ptr %__ret_warn_on39, align 4, !dbg !352
  %16 = load i32, ptr %__ret_warn_on39, align 4, !dbg !353
  %tobool48 = icmp ne i32 %16, 0, !dbg !353
  %lnot49 = xor i1 %tobool48, true, !dbg !353
  %lnot51 = xor i1 %lnot49, true, !dbg !353
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !353
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !353
  %expval54 = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !353
  %tobool55 = icmp ne i64 %expval54, 0, !dbg !353
  br i1 %tobool55, label %if.then56, label %if.end81, !dbg !352

if.then56:                                        ; preds = %if.end38
  br label %do.body57, !dbg !353

do.body57:                                        ; preds = %if.then56
  br label %do.body58, !dbg !354

do.body58:                                        ; preds = %do.body57
  br label %do.cond59, !dbg !355

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !355

do.end60:                                         ; preds = %do.cond59
  %17 = load ptr, ptr %addr.addr, align 8, !dbg !354
  %18 = load i64, ptr %size.addr, align 8, !dbg !354
  %19 = load i32, ptr %slot, align 4, !dbg !354
  %20 = load i32, ptr %slot, align 4, !dbg !354
  %idxprom61 = sext i32 %20 to i64, !dbg !354
  %arrayidx62 = getelementptr [8 x i64], ptr @prev_size, i64 0, i64 %idxprom61, !dbg !354
  %21 = load i64, ptr %arrayidx62, align 8, !dbg !354
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2, ptr noundef @__func__.early_iounmap, ptr noundef %17, i64 noundef %18, i32 noundef %19, i64 noundef %21) #11, !dbg !354
  br label %do.body63, !dbg !354

do.body63:                                        ; preds = %do.end60
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags64) #9, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %__flags64, metadata !281, metadata !DIExpression()), !dbg !357
  store i32 2313, ptr %__flags64, align 4, !dbg !357
  br label %do.body65, !dbg !357

do.body65:                                        ; preds = %do.body63
  br label %do.cond66, !dbg !358

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !358

do.end67:                                         ; preds = %do.cond66
  br label %do.body68, !dbg !357

do.body68:                                        ; preds = %do.end67
  %22 = load i32, ptr %__flags64, align 4, !dbg !360
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 184, i32 %22, i64 12) #9, !dbg !360, !srcloc !362
  br label %do.cond69, !dbg !360

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !360

do.end70:                                         ; preds = %do.cond69
  br label %do.body71, !dbg !357

do.body71:                                        ; preds = %do.end70
  br label %do.cond72, !dbg !363

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !363

do.end73:                                         ; preds = %do.cond72
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags64) #9, !dbg !354
  br label %do.cond74, !dbg !357

do.cond74:                                        ; preds = %do.end73
  br label %do.end75, !dbg !357

do.end75:                                         ; preds = %do.cond74
  br label %do.body76, !dbg !354

do.body76:                                        ; preds = %do.end75
  br label %do.cond77, !dbg !365

do.cond77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !365

do.end78:                                         ; preds = %do.cond77
  br label %do.cond79, !dbg !354

do.cond79:                                        ; preds = %do.end78
  br label %do.end80, !dbg !354

do.end80:                                         ; preds = %do.cond79
  br label %if.end81, !dbg !354

if.end81:                                         ; preds = %do.end80, %if.end38
  %23 = load i32, ptr %__ret_warn_on39, align 4, !dbg !352
  %tobool83 = icmp ne i32 %23, 0, !dbg !352
  %lnot84 = xor i1 %tobool83, true, !dbg !352
  %lnot86 = xor i1 %lnot84, true, !dbg !352
  %lnot.ext87 = zext i1 %lnot86 to i32, !dbg !352
  %conv88 = sext i32 %lnot.ext87 to i64, !dbg !352
  %expval89 = call i64 @llvm.expect.i64(i64 %conv88, i64 0), !dbg !352
  store i64 %expval89, ptr %tmp82, align 8, !dbg !353
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on39) #9, !dbg !367
  %24 = load i64, ptr %tmp82, align 8, !dbg !352
  %tobool90 = icmp ne i64 %24, 0, !dbg !367
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !368

if.then91:                                        ; preds = %if.end81
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !369

if.end92:                                         ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on93) #9, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on93, metadata !285, metadata !DIExpression()), !dbg !370
  %25 = load i32, ptr @early_ioremap_debug, align 4, !dbg !370
  %tobool94 = icmp ne i32 %25, 0, !dbg !370
  %lnot95 = xor i1 %tobool94, true, !dbg !370
  %lnot97 = xor i1 %lnot95, true, !dbg !370
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !370
  store i32 %lnot.ext98, ptr %__ret_warn_on93, align 4, !dbg !370
  %26 = load i32, ptr %__ret_warn_on93, align 4, !dbg !371
  %tobool99 = icmp ne i32 %26, 0, !dbg !371
  %lnot100 = xor i1 %tobool99, true, !dbg !371
  %lnot102 = xor i1 %lnot100, true, !dbg !371
  %lnot.ext103 = zext i1 %lnot102 to i32, !dbg !371
  %conv104 = sext i32 %lnot.ext103 to i64, !dbg !371
  %expval105 = call i64 @llvm.expect.i64(i64 %conv104, i64 0), !dbg !371
  %tobool106 = icmp ne i64 %expval105, 0, !dbg !371
  br i1 %tobool106, label %if.then107, label %if.end130, !dbg !370

if.then107:                                       ; preds = %if.end92
  br label %do.body108, !dbg !371

do.body108:                                       ; preds = %if.then107
  br label %do.body109, !dbg !372

do.body109:                                       ; preds = %do.body108
  br label %do.cond110, !dbg !373

do.cond110:                                       ; preds = %do.body109
  br label %do.end111, !dbg !373

do.end111:                                        ; preds = %do.cond110
  %27 = load ptr, ptr %addr.addr, align 8, !dbg !372
  %28 = load i64, ptr %size.addr, align 8, !dbg !372
  %29 = load i32, ptr %slot, align 4, !dbg !372
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef @__func__.early_iounmap, ptr noundef %27, i64 noundef %28, i32 noundef %29) #11, !dbg !372
  br label %do.body112, !dbg !372

do.body112:                                       ; preds = %do.end111
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags113) #9, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %__flags113, metadata !287, metadata !DIExpression()), !dbg !375
  store i32 2313, ptr %__flags113, align 4, !dbg !375
  br label %do.body114, !dbg !375

do.body114:                                       ; preds = %do.body112
  br label %do.cond115, !dbg !376

do.cond115:                                       ; preds = %do.body114
  br label %do.end116, !dbg !376

do.end116:                                        ; preds = %do.cond115
  br label %do.body117, !dbg !375

do.body117:                                       ; preds = %do.end116
  %30 = load i32, ptr %__flags113, align 4, !dbg !378
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 188, i32 %30, i64 12) #9, !dbg !378, !srcloc !380
  br label %do.cond118, !dbg !378

do.cond118:                                       ; preds = %do.body117
  br label %do.end119, !dbg !378

do.end119:                                        ; preds = %do.cond118
  br label %do.body120, !dbg !375

do.body120:                                       ; preds = %do.end119
  br label %do.cond121, !dbg !381

do.cond121:                                       ; preds = %do.body120
  br label %do.end122, !dbg !381

do.end122:                                        ; preds = %do.cond121
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags113) #9, !dbg !372
  br label %do.cond123, !dbg !375

do.cond123:                                       ; preds = %do.end122
  br label %do.end124, !dbg !375

do.end124:                                        ; preds = %do.cond123
  br label %do.body125, !dbg !372

do.body125:                                       ; preds = %do.end124
  br label %do.cond126, !dbg !383

do.cond126:                                       ; preds = %do.body125
  br label %do.end127, !dbg !383

do.end127:                                        ; preds = %do.cond126
  br label %do.cond128, !dbg !372

do.cond128:                                       ; preds = %do.end127
  br label %do.end129, !dbg !372

do.end129:                                        ; preds = %do.cond128
  br label %if.end130, !dbg !372

if.end130:                                        ; preds = %do.end129, %if.end92
  %31 = load i32, ptr %__ret_warn_on93, align 4, !dbg !370
  %tobool132 = icmp ne i32 %31, 0, !dbg !370
  %lnot133 = xor i1 %tobool132, true, !dbg !370
  %lnot135 = xor i1 %lnot133, true, !dbg !370
  %lnot.ext136 = zext i1 %lnot135 to i32, !dbg !370
  %conv137 = sext i32 %lnot.ext136 to i64, !dbg !370
  %expval138 = call i64 @llvm.expect.i64(i64 %conv137, i64 0), !dbg !370
  store i64 %expval138, ptr %tmp131, align 8, !dbg !371
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on93) #9, !dbg !385
  %32 = load i64, ptr %tmp131, align 8, !dbg !370
  %33 = load ptr, ptr %addr.addr, align 8, !dbg !386
  %34 = ptrtoint ptr %33 to i64, !dbg !387
  store i64 %34, ptr %virt_addr, align 8, !dbg !388
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on139) #9, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on139, metadata !291, metadata !DIExpression()), !dbg !389
  %35 = load i64, ptr %virt_addr, align 8, !dbg !389
  %call = call i64 @fix_to_virt(i32 noundef 1535) #11, !dbg !389
  %cmp140 = icmp ult i64 %35, %call, !dbg !389
  %lnot142 = xor i1 %cmp140, true, !dbg !389
  %lnot144 = xor i1 %lnot142, true, !dbg !389
  %lnot.ext145 = zext i1 %lnot144 to i32, !dbg !389
  store i32 %lnot.ext145, ptr %__ret_warn_on139, align 4, !dbg !389
  %36 = load i32, ptr %__ret_warn_on139, align 4, !dbg !390
  %tobool146 = icmp ne i32 %36, 0, !dbg !390
  %lnot147 = xor i1 %tobool146, true, !dbg !390
  %lnot149 = xor i1 %lnot147, true, !dbg !390
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !390
  %conv151 = sext i32 %lnot.ext150 to i64, !dbg !390
  %expval152 = call i64 @llvm.expect.i64(i64 %conv151, i64 0), !dbg !390
  %tobool153 = icmp ne i64 %expval152, 0, !dbg !390
  br i1 %tobool153, label %if.then154, label %if.end168, !dbg !389

if.then154:                                       ; preds = %if.end130
  br label %do.body155, !dbg !390

do.body155:                                       ; preds = %if.then154
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags156) #9, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %__flags156, metadata !294, metadata !DIExpression()), !dbg !391
  store i32 2305, ptr %__flags156, align 4, !dbg !391
  br label %do.body157, !dbg !391

do.body157:                                       ; preds = %do.body155
  br label %do.cond158, !dbg !392

do.cond158:                                       ; preds = %do.body157
  br label %do.end159, !dbg !392

do.end159:                                        ; preds = %do.cond158
  br label %do.body160, !dbg !391

do.body160:                                       ; preds = %do.end159
  %37 = load i32, ptr %__flags156, align 4, !dbg !394
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 191, i32 %37, i64 12) #9, !dbg !394, !srcloc !396
  br label %do.cond161, !dbg !394

do.cond161:                                       ; preds = %do.body160
  br label %do.end162, !dbg !394

do.end162:                                        ; preds = %do.cond161
  br label %do.body163, !dbg !391

do.body163:                                       ; preds = %do.end162
  br label %do.cond164, !dbg !397

do.cond164:                                       ; preds = %do.body163
  br label %do.end165, !dbg !397

do.end165:                                        ; preds = %do.cond164
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags156) #9, !dbg !390
  br label %do.cond166, !dbg !391

do.cond166:                                       ; preds = %do.end165
  br label %do.end167, !dbg !391

do.end167:                                        ; preds = %do.cond166
  br label %if.end168, !dbg !391

if.end168:                                        ; preds = %do.end167, %if.end130
  %38 = load i32, ptr %__ret_warn_on139, align 4, !dbg !389
  %tobool170 = icmp ne i32 %38, 0, !dbg !389
  %lnot171 = xor i1 %tobool170, true, !dbg !389
  %lnot173 = xor i1 %lnot171, true, !dbg !389
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !389
  %conv175 = sext i32 %lnot.ext174 to i64, !dbg !389
  %expval176 = call i64 @llvm.expect.i64(i64 %conv175, i64 0), !dbg !389
  store i64 %expval176, ptr %tmp169, align 8, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on139) #9, !dbg !399
  %39 = load i64, ptr %tmp169, align 8, !dbg !389
  %tobool177 = icmp ne i64 %39, 0, !dbg !399
  br i1 %tobool177, label %if.then178, label %if.end179, !dbg !400

if.then178:                                       ; preds = %if.end168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !401

if.end179:                                        ; preds = %if.end168
  %40 = load i64, ptr %virt_addr, align 8, !dbg !402
  %and = and i64 %40, 4095, !dbg !402
  store i64 %and, ptr %offset, align 8, !dbg !403
  %41 = load i64, ptr %offset, align 8, !dbg !404
  %42 = load i64, ptr %size.addr, align 8, !dbg !404
  %add = add i64 %41, %42, !dbg !404
  %add180 = add i64 %add, 4095, !dbg !404
  %and181 = and i64 %add180, -4096, !dbg !404
  %shr = lshr i64 %and181, 12, !dbg !405
  %conv182 = trunc i64 %shr to i32, !dbg !404
  store i32 %conv182, ptr %nrpages, align 4, !dbg !406
  %43 = load i32, ptr %slot, align 4, !dbg !407
  %mul = mul i32 64, %43, !dbg !408
  %sub = sub i32 1535, %mul, !dbg !409
  store i32 %sub, ptr %idx, align 4, !dbg !410
  br label %while.cond, !dbg !411

while.cond:                                       ; preds = %if.end190, %if.end179
  %44 = load i32, ptr %nrpages, align 4, !dbg !412
  %cmp183 = icmp ugt i32 %44, 0, !dbg !413
  br i1 %cmp183, label %while.body, label %while.end, !dbg !411

while.body:                                       ; preds = %while.cond
  %45 = load i32, ptr @after_paging_init, align 4, !dbg !414
  %tobool185 = icmp ne i32 %45, 0, !dbg !414
  br i1 %tobool185, label %if.then186, label %if.else, !dbg !417

if.then186:                                       ; preds = %while.body
  %46 = load i32, ptr %idx, align 4, !dbg !418
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !418
  store i64 0, ptr %pgprot, align 8, !dbg !418
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !418
  %47 = load i64, ptr %coerce.dive, align 8, !dbg !418
  call void @__set_fixmap(i32 noundef %46, i64 noundef 0, i64 %47) #11, !dbg !418
  br label %if.end190, !dbg !418

if.else:                                          ; preds = %while.body
  %48 = load i32, ptr %idx, align 4, !dbg !419
  %pgprot188 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral187, i32 0, i32 0, !dbg !420
  store i64 0, ptr %pgprot188, align 8, !dbg !420
  %coerce.dive189 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral187, i32 0, i32 0, !dbg !421
  %49 = load i64, ptr %coerce.dive189, align 8, !dbg !421
  call void @__early_set_fixmap(i32 noundef %48, i64 noundef 0, i64 %49) #11, !dbg !421
  br label %if.end190

if.end190:                                        ; preds = %if.else, %if.then186
  %50 = load i32, ptr %idx, align 4, !dbg !422
  %dec = add i32 %50, -1, !dbg !422
  store i32 %dec, ptr %idx, align 4, !dbg !422
  %51 = load i32, ptr %nrpages, align 4, !dbg !423
  %dec191 = add i32 %51, -1, !dbg !423
  store i32 %dec191, ptr %nrpages, align 4, !dbg !423
  br label %while.cond, !dbg !411, !llvm.loop !424

while.end:                                        ; preds = %while.cond
  %52 = load i32, ptr %slot, align 4, !dbg !426
  %idxprom192 = sext i32 %52 to i64, !dbg !427
  %arrayidx193 = getelementptr [8 x ptr], ptr @prev_map, i64 0, i64 %idxprom192, !dbg !427
  store ptr null, ptr %arrayidx193, align 8, !dbg !428
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !429
  br label %cleanup, !dbg !429

cleanup:                                          ; preds = %while.end, %if.then178, %if.then91, %if.then37
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #9, !dbg !429
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !429
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #9, !dbg !429
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrpages) #9, !dbg !429
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #9, !dbg !429
  call void @llvm.lifetime.end.p0(i64 8, ptr %virt_addr) #9, !dbg !429
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !429

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !430 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fix_to_virt(i32 noundef %idx) #6 align 16 !dbg !434 {
entry:
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !440, metadata !DIExpression()), !dbg !441
  br label %do.body, !dbg !442

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %idx.addr, align 4, !dbg !443
  %cmp = icmp uge i32 %0, 1536, !dbg !443
  br i1 %cmp, label %if.then, label %if.end, !dbg !446

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_205() #12, !dbg !443, !srcloc !447
  unreachable, !dbg !443

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !446

do.end:                                           ; preds = %if.end
  %1 = load i32, ptr %idx.addr, align 4, !dbg !448
  %shl = shl i32 %1, 12, !dbg !448
  %conv = zext i32 %shl to i64, !dbg !448
  %sub = sub i64 -8392704, %conv, !dbg !448
  ret i64 %sub, !dbg !449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__set_fixmap(i32 noundef %idx, i64 noundef %phys, i64 %flags.coerce) #7 align 16 !dbg !450 {
entry:
  %flags = alloca %struct.pgprot, align 8
  %idx.addr = alloca i32, align 4
  %phys.addr = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0
  store i64 %flags.coerce, ptr %coerce.dive, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !454, metadata !DIExpression()), !dbg !457
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !455, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !456, metadata !DIExpression()), !dbg !459
  %0 = load i32, ptr %idx.addr, align 4, !dbg !460
  %1 = load i64, ptr %phys.addr, align 8, !dbg !461
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !462
  %2 = load i64, ptr %coerce.dive1, align 8, !dbg !462
  call void @native_set_fixmap(i32 noundef %0, i64 noundef %1, i64 %2) #11, !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !464 dso_local void @__early_set_fixmap(i32 noundef, i64 noundef, i64) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @early_ioremap(i64 noundef %phys_addr, i64 noundef %size) #0 section ".init.text" align 16 !dbg !465 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !469, metadata !DIExpression()), !dbg !471
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !470, metadata !DIExpression()), !dbg !472
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !473
  %1 = load i64, ptr %size.addr, align 8, !dbg !474
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !475
  %2 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !475
  %and = and i64 -9223372036854775453, %2, !dbg !475
  store i64 %and, ptr %pgprot, align 8, !dbg !475
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !476
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !476
  %call = call ptr @__early_ioremap(i64 noundef %0, i64 noundef %1, i64 %3) #10, !dbg !476
  ret ptr %call, !dbg !477
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @__early_ioremap(i64 noundef %phys_addr, i64 noundef %size, i64 %prot.coerce) #0 section ".init.text" align 16 !dbg !478 {
entry:
  %retval = alloca ptr, align 8
  %prot = alloca %struct.pgprot, align 8
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %offset = alloca i64, align 8
  %last_addr = alloca i64, align 8
  %nrpages = alloca i32, align 4
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on28 = alloca i32, align 4
  %__flags49 = alloca i32, align 4
  %tmp67 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on78 = alloca i32, align 4
  %__flags96 = alloca i32, align 4
  %tmp109 = alloca i64, align 8
  %__ret_warn_on128 = alloca i32, align 4
  %__flags145 = alloca i32, align 4
  %tmp158 = alloca i64, align 8
  %__ret_warn_on179 = alloca i32, align 4
  %__flags201 = alloca i32, align 4
  %tmp219 = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !482, metadata !DIExpression()), !dbg !521
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !483, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !484, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #9, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !485, metadata !DIExpression()), !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_addr) #9, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %last_addr, metadata !486, metadata !DIExpression()), !dbg !527
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrpages) #9, !dbg !528
  call void @llvm.dbg.declare(metadata ptr %nrpages, metadata !487, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #9, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !488, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %i, metadata !489, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #9, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !490, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !491, metadata !DIExpression()), !dbg !535
  %0 = load i32, ptr @system_state, align 4, !dbg !535
  %cmp = icmp uge i32 %0, 3, !dbg !535
  %lnot = xor i1 %cmp, true, !dbg !535
  %lnot1 = xor i1 %lnot, true, !dbg !535
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !535
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !535
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !536
  %tobool = icmp ne i32 %1, 0, !dbg !536
  %lnot2 = xor i1 %tobool, true, !dbg !536
  %lnot4 = xor i1 %lnot2, true, !dbg !536
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !536
  %conv = sext i32 %lnot.ext5 to i64, !dbg !536
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !536
  %tobool6 = icmp ne i64 %expval, 0, !dbg !536
  br i1 %tobool6, label %if.then, label %if.end, !dbg !535

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !536

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !493, metadata !DIExpression()), !dbg !537
  store i32 2305, ptr %__flags, align 4, !dbg !537
  br label %do.body7, !dbg !537

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !538

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !538

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !537

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !540
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 108, i32 %2, i64 12) #9, !dbg !540, !srcloc !542
  br label %do.cond9, !dbg !540

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !540

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !537

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !543

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !543

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !536
  br label %do.cond14, !dbg !537

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !537

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !537

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !535
  %tobool16 = icmp ne i32 %3, 0, !dbg !535
  %lnot17 = xor i1 %tobool16, true, !dbg !535
  %lnot19 = xor i1 %lnot17, true, !dbg !535
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !535
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !535
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !535
  store i64 %expval22, ptr %tmp, align 8, !dbg !536
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !545
  %4 = load i64, ptr %tmp, align 8, !dbg !535
  store i32 -1, ptr %slot, align 4, !dbg !546
  store i32 0, ptr %i, align 4, !dbg !547
  br label %for.cond, !dbg !549

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !550
  %cmp23 = icmp slt i32 %5, 8, !dbg !552
  br i1 %cmp23, label %for.body, label %for.end, !dbg !553

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !dbg !554
  %idxprom = sext i32 %6 to i64, !dbg !557
  %arrayidx = getelementptr [8 x ptr], ptr @prev_map, i64 0, i64 %idxprom, !dbg !557
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !557
  %tobool25 = icmp ne ptr %7, null, !dbg !557
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !558

if.then26:                                        ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !559
  store i32 %8, ptr %slot, align 4, !dbg !561
  br label %for.end, !dbg !562

if.end27:                                         ; preds = %for.body
  br label %for.inc, !dbg !563

for.inc:                                          ; preds = %if.end27
  %9 = load i32, ptr %i, align 4, !dbg !564
  %inc = add i32 %9, 1, !dbg !564
  store i32 %inc, ptr %i, align 4, !dbg !564
  br label %for.cond, !dbg !565, !llvm.loop !566

for.end:                                          ; preds = %if.then26, %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #9, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !496, metadata !DIExpression()), !dbg !568
  %10 = load i32, ptr %slot, align 4, !dbg !568
  %cmp29 = icmp slt i32 %10, 0, !dbg !568
  %lnot31 = xor i1 %cmp29, true, !dbg !568
  %lnot33 = xor i1 %lnot31, true, !dbg !568
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !568
  store i32 %lnot.ext34, ptr %__ret_warn_on28, align 4, !dbg !568
  %11 = load i32, ptr %__ret_warn_on28, align 4, !dbg !569
  %tobool35 = icmp ne i32 %11, 0, !dbg !569
  %lnot36 = xor i1 %tobool35, true, !dbg !569
  %lnot38 = xor i1 %lnot36, true, !dbg !569
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !569
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !569
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !569
  %tobool42 = icmp ne i64 %expval41, 0, !dbg !569
  br i1 %tobool42, label %if.then43, label %if.end66, !dbg !568

if.then43:                                        ; preds = %for.end
  br label %do.body44, !dbg !569

do.body44:                                        ; preds = %if.then43
  br label %do.body45, !dbg !570

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !571

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !571

do.end47:                                         ; preds = %do.cond46
  %12 = load i64, ptr %size.addr, align 8, !dbg !570
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.5, ptr noundef @__func__.__early_ioremap, ptr noundef %phys_addr.addr, i64 noundef %12) #11, !dbg !570
  br label %do.body48, !dbg !570

do.body48:                                        ; preds = %do.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags49) #9, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %__flags49, metadata !499, metadata !DIExpression()), !dbg !573
  store i32 2313, ptr %__flags49, align 4, !dbg !573
  br label %do.body50, !dbg !573

do.body50:                                        ; preds = %do.body48
  br label %do.cond51, !dbg !574

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !574

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !573

do.body53:                                        ; preds = %do.end52
  %13 = load i32, ptr %__flags49, align 4, !dbg !576
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 119, i32 %13, i64 12) #9, !dbg !576, !srcloc !578
  br label %do.cond54, !dbg !576

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !576

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !573

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !579

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !579

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags49) #9, !dbg !570
  br label %do.cond59, !dbg !573

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !573

do.end60:                                         ; preds = %do.cond59
  br label %do.body61, !dbg !570

do.body61:                                        ; preds = %do.end60
  br label %do.cond62, !dbg !581

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !581

do.end63:                                         ; preds = %do.cond62
  br label %do.cond64, !dbg !570

do.cond64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !570

do.end65:                                         ; preds = %do.cond64
  br label %if.end66, !dbg !570

if.end66:                                         ; preds = %do.end65, %for.end
  %14 = load i32, ptr %__ret_warn_on28, align 4, !dbg !568
  %tobool68 = icmp ne i32 %14, 0, !dbg !568
  %lnot69 = xor i1 %tobool68, true, !dbg !568
  %lnot71 = xor i1 %lnot69, true, !dbg !568
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !568
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !568
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !568
  store i64 %expval74, ptr %tmp67, align 8, !dbg !569
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #9, !dbg !583
  %15 = load i64, ptr %tmp67, align 8, !dbg !568
  %tobool75 = icmp ne i64 %15, 0, !dbg !583
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !584

if.then76:                                        ; preds = %if.end66
  store ptr null, ptr %retval, align 8, !dbg !585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !585

if.end77:                                         ; preds = %if.end66
  %16 = load i64, ptr %phys_addr.addr, align 8, !dbg !586
  %17 = load i64, ptr %size.addr, align 8, !dbg !587
  %add = add i64 %16, %17, !dbg !588
  %sub = sub i64 %add, 1, !dbg !589
  store i64 %sub, ptr %last_addr, align 8, !dbg !590
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on78) #9, !dbg !591
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on78, metadata !503, metadata !DIExpression()), !dbg !591
  %18 = load i64, ptr %size.addr, align 8, !dbg !591
  %tobool79 = icmp ne i64 %18, 0, !dbg !591
  br i1 %tobool79, label %lor.rhs, label %lor.end, !dbg !591

lor.rhs:                                          ; preds = %if.end77
  %19 = load i64, ptr %last_addr, align 8, !dbg !591
  %20 = load i64, ptr %phys_addr.addr, align 8, !dbg !591
  %cmp80 = icmp ult i64 %19, %20, !dbg !591
  br label %lor.end, !dbg !591

lor.end:                                          ; preds = %lor.rhs, %if.end77
  %21 = phi i1 [ true, %if.end77 ], [ %cmp80, %lor.rhs ]
  %lnot82 = xor i1 %21, true, !dbg !591
  %lnot84 = xor i1 %lnot82, true, !dbg !591
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !591
  store i32 %lnot.ext85, ptr %__ret_warn_on78, align 4, !dbg !591
  %22 = load i32, ptr %__ret_warn_on78, align 4, !dbg !592
  %tobool86 = icmp ne i32 %22, 0, !dbg !592
  %lnot87 = xor i1 %tobool86, true, !dbg !592
  %lnot89 = xor i1 %lnot87, true, !dbg !592
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !592
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !592
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !592
  %tobool93 = icmp ne i64 %expval92, 0, !dbg !592
  br i1 %tobool93, label %if.then94, label %if.end108, !dbg !591

if.then94:                                        ; preds = %lor.end
  br label %do.body95, !dbg !592

do.body95:                                        ; preds = %if.then94
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags96) #9, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %__flags96, metadata !506, metadata !DIExpression()), !dbg !593
  store i32 2305, ptr %__flags96, align 4, !dbg !593
  br label %do.body97, !dbg !593

do.body97:                                        ; preds = %do.body95
  br label %do.cond98, !dbg !594

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !594

do.end99:                                         ; preds = %do.cond98
  br label %do.body100, !dbg !593

do.body100:                                       ; preds = %do.end99
  %23 = load i32, ptr %__flags96, align 4, !dbg !596
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 124, i32 %23, i64 12) #9, !dbg !596, !srcloc !598
  br label %do.cond101, !dbg !596

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !596

do.end102:                                        ; preds = %do.cond101
  br label %do.body103, !dbg !593

do.body103:                                       ; preds = %do.end102
  br label %do.cond104, !dbg !599

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !599

do.end105:                                        ; preds = %do.cond104
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags96) #9, !dbg !592
  br label %do.cond106, !dbg !593

do.cond106:                                       ; preds = %do.end105
  br label %do.end107, !dbg !593

do.end107:                                        ; preds = %do.cond106
  br label %if.end108, !dbg !593

if.end108:                                        ; preds = %do.end107, %lor.end
  %24 = load i32, ptr %__ret_warn_on78, align 4, !dbg !591
  %tobool110 = icmp ne i32 %24, 0, !dbg !591
  %lnot111 = xor i1 %tobool110, true, !dbg !591
  %lnot113 = xor i1 %lnot111, true, !dbg !591
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !591
  %conv115 = sext i32 %lnot.ext114 to i64, !dbg !591
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 0), !dbg !591
  store i64 %expval116, ptr %tmp109, align 8, !dbg !592
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on78) #9, !dbg !601
  %25 = load i64, ptr %tmp109, align 8, !dbg !591
  %tobool117 = icmp ne i64 %25, 0, !dbg !601
  br i1 %tobool117, label %if.then118, label %if.end119, !dbg !602

if.then118:                                       ; preds = %if.end108
  store ptr null, ptr %retval, align 8, !dbg !603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !603

if.end119:                                        ; preds = %if.end108
  %26 = load i64, ptr %size.addr, align 8, !dbg !604
  %27 = load i32, ptr %slot, align 4, !dbg !605
  %idxprom120 = sext i32 %27 to i64, !dbg !606
  %arrayidx121 = getelementptr [8 x i64], ptr @prev_size, i64 0, i64 %idxprom120, !dbg !606
  store i64 %26, ptr %arrayidx121, align 8, !dbg !607
  %28 = load i64, ptr %phys_addr.addr, align 8, !dbg !608
  %and = and i64 %28, 4095, !dbg !608
  store i64 %and, ptr %offset, align 8, !dbg !609
  %29 = load i64, ptr %phys_addr.addr, align 8, !dbg !610
  %and122 = and i64 %29, -4096, !dbg !610
  store i64 %and122, ptr %phys_addr.addr, align 8, !dbg !610
  %30 = load i64, ptr %last_addr, align 8, !dbg !611
  %add123 = add i64 %30, 1, !dbg !611
  %add124 = add i64 %add123, 4095, !dbg !611
  %and125 = and i64 %add124, -4096, !dbg !611
  %31 = load i64, ptr %phys_addr.addr, align 8, !dbg !612
  %sub126 = sub i64 %and125, %31, !dbg !613
  store i64 %sub126, ptr %size.addr, align 8, !dbg !614
  %32 = load i64, ptr %size.addr, align 8, !dbg !615
  %shr = lshr i64 %32, 12, !dbg !616
  %conv127 = trunc i64 %shr to i32, !dbg !615
  store i32 %conv127, ptr %nrpages, align 4, !dbg !617
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on128) #9, !dbg !618
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on128, metadata !509, metadata !DIExpression()), !dbg !618
  %33 = load i32, ptr %nrpages, align 4, !dbg !618
  %cmp129 = icmp ugt i32 %33, 64, !dbg !618
  %lnot131 = xor i1 %cmp129, true, !dbg !618
  %lnot133 = xor i1 %lnot131, true, !dbg !618
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !618
  store i32 %lnot.ext134, ptr %__ret_warn_on128, align 4, !dbg !618
  %34 = load i32, ptr %__ret_warn_on128, align 4, !dbg !619
  %tobool135 = icmp ne i32 %34, 0, !dbg !619
  %lnot136 = xor i1 %tobool135, true, !dbg !619
  %lnot138 = xor i1 %lnot136, true, !dbg !619
  %lnot.ext139 = zext i1 %lnot138 to i32, !dbg !619
  %conv140 = sext i32 %lnot.ext139 to i64, !dbg !619
  %expval141 = call i64 @llvm.expect.i64(i64 %conv140, i64 0), !dbg !619
  %tobool142 = icmp ne i64 %expval141, 0, !dbg !619
  br i1 %tobool142, label %if.then143, label %if.end157, !dbg !618

if.then143:                                       ; preds = %if.end119
  br label %do.body144, !dbg !619

do.body144:                                       ; preds = %if.then143
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags145) #9, !dbg !620
  call void @llvm.dbg.declare(metadata ptr %__flags145, metadata !512, metadata !DIExpression()), !dbg !620
  store i32 2305, ptr %__flags145, align 4, !dbg !620
  br label %do.body146, !dbg !620

do.body146:                                       ; preds = %do.body144
  br label %do.cond147, !dbg !621

do.cond147:                                       ; preds = %do.body146
  br label %do.end148, !dbg !621

do.end148:                                        ; preds = %do.cond147
  br label %do.body149, !dbg !620

do.body149:                                       ; preds = %do.end148
  %35 = load i32, ptr %__flags145, align 4, !dbg !623
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 139, i32 %35, i64 12) #9, !dbg !623, !srcloc !625
  br label %do.cond150, !dbg !623

do.cond150:                                       ; preds = %do.body149
  br label %do.end151, !dbg !623

do.end151:                                        ; preds = %do.cond150
  br label %do.body152, !dbg !620

do.body152:                                       ; preds = %do.end151
  br label %do.cond153, !dbg !626

do.cond153:                                       ; preds = %do.body152
  br label %do.end154, !dbg !626

do.end154:                                        ; preds = %do.cond153
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags145) #9, !dbg !619
  br label %do.cond155, !dbg !620

do.cond155:                                       ; preds = %do.end154
  br label %do.end156, !dbg !620

do.end156:                                        ; preds = %do.cond155
  br label %if.end157, !dbg !620

if.end157:                                        ; preds = %do.end156, %if.end119
  %36 = load i32, ptr %__ret_warn_on128, align 4, !dbg !618
  %tobool159 = icmp ne i32 %36, 0, !dbg !618
  %lnot160 = xor i1 %tobool159, true, !dbg !618
  %lnot162 = xor i1 %lnot160, true, !dbg !618
  %lnot.ext163 = zext i1 %lnot162 to i32, !dbg !618
  %conv164 = sext i32 %lnot.ext163 to i64, !dbg !618
  %expval165 = call i64 @llvm.expect.i64(i64 %conv164, i64 0), !dbg !618
  store i64 %expval165, ptr %tmp158, align 8, !dbg !619
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on128) #9, !dbg !628
  %37 = load i64, ptr %tmp158, align 8, !dbg !618
  %tobool166 = icmp ne i64 %37, 0, !dbg !628
  br i1 %tobool166, label %if.then167, label %if.end168, !dbg !629

if.then167:                                       ; preds = %if.end157
  store ptr null, ptr %retval, align 8, !dbg !630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !630

if.end168:                                        ; preds = %if.end157
  %38 = load i32, ptr %slot, align 4, !dbg !631
  %mul = mul i32 64, %38, !dbg !632
  %sub169 = sub i32 1535, %mul, !dbg !633
  store i32 %sub169, ptr %idx, align 4, !dbg !634
  br label %while.cond, !dbg !635

while.cond:                                       ; preds = %if.end176, %if.end168
  %39 = load i32, ptr %nrpages, align 4, !dbg !636
  %cmp170 = icmp ugt i32 %39, 0, !dbg !637
  br i1 %cmp170, label %while.body, label %while.end, !dbg !635

while.body:                                       ; preds = %while.cond
  %40 = load i32, ptr @after_paging_init, align 4, !dbg !638
  %tobool172 = icmp ne i32 %40, 0, !dbg !638
  br i1 %tobool172, label %if.then173, label %if.else, !dbg !641

if.then173:                                       ; preds = %while.body
  %41 = load i32, ptr %idx, align 4, !dbg !642
  %42 = load i64, ptr %phys_addr.addr, align 8, !dbg !642
  %coerce.dive174 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !642
  %43 = load i64, ptr %coerce.dive174, align 8, !dbg !642
  call void @__set_fixmap(i32 noundef %41, i64 noundef %42, i64 %43) #11, !dbg !642
  br label %if.end176, !dbg !642

if.else:                                          ; preds = %while.body
  %44 = load i32, ptr %idx, align 4, !dbg !643
  %45 = load i64, ptr %phys_addr.addr, align 8, !dbg !644
  %coerce.dive175 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !645
  %46 = load i64, ptr %coerce.dive175, align 8, !dbg !645
  call void @__early_set_fixmap(i32 noundef %44, i64 noundef %45, i64 %46) #11, !dbg !645
  br label %if.end176

if.end176:                                        ; preds = %if.else, %if.then173
  %47 = load i64, ptr %phys_addr.addr, align 8, !dbg !646
  %add177 = add i64 %47, 4096, !dbg !646
  store i64 %add177, ptr %phys_addr.addr, align 8, !dbg !646
  %48 = load i32, ptr %idx, align 4, !dbg !647
  %dec = add i32 %48, -1, !dbg !647
  store i32 %dec, ptr %idx, align 4, !dbg !647
  %49 = load i32, ptr %nrpages, align 4, !dbg !648
  %dec178 = add i32 %49, -1, !dbg !648
  store i32 %dec178, ptr %nrpages, align 4, !dbg !648
  br label %while.cond, !dbg !635, !llvm.loop !649

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on179) #9, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on179, metadata !515, metadata !DIExpression()), !dbg !651
  %50 = load i32, ptr @early_ioremap_debug, align 4, !dbg !651
  %tobool180 = icmp ne i32 %50, 0, !dbg !651
  %lnot181 = xor i1 %tobool180, true, !dbg !651
  %lnot183 = xor i1 %lnot181, true, !dbg !651
  %lnot.ext184 = zext i1 %lnot183 to i32, !dbg !651
  store i32 %lnot.ext184, ptr %__ret_warn_on179, align 4, !dbg !651
  %51 = load i32, ptr %__ret_warn_on179, align 4, !dbg !652
  %tobool185 = icmp ne i32 %51, 0, !dbg !652
  %lnot186 = xor i1 %tobool185, true, !dbg !652
  %lnot188 = xor i1 %lnot186, true, !dbg !652
  %lnot.ext189 = zext i1 %lnot188 to i32, !dbg !652
  %conv190 = sext i32 %lnot.ext189 to i64, !dbg !652
  %expval191 = call i64 @llvm.expect.i64(i64 %conv190, i64 0), !dbg !652
  %tobool192 = icmp ne i64 %expval191, 0, !dbg !652
  br i1 %tobool192, label %if.then193, label %if.end218, !dbg !651

if.then193:                                       ; preds = %while.end
  br label %do.body194, !dbg !652

do.body194:                                       ; preds = %if.then193
  br label %do.body195, !dbg !653

do.body195:                                       ; preds = %do.body194
  br label %do.cond196, !dbg !654

do.cond196:                                       ; preds = %do.body195
  br label %do.end197, !dbg !654

do.end197:                                        ; preds = %do.cond196
  %52 = load i64, ptr %size.addr, align 8, !dbg !653
  %53 = load i32, ptr %slot, align 4, !dbg !653
  %54 = load i64, ptr %offset, align 8, !dbg !653
  %55 = load i32, ptr %slot, align 4, !dbg !653
  %idxprom198 = sext i32 %55 to i64, !dbg !653
  %arrayidx199 = getelementptr [8 x i64], ptr @slot_virt, i64 0, i64 %idxprom198, !dbg !653
  %56 = load i64, ptr %arrayidx199, align 8, !dbg !653
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.6, ptr noundef @__func__.__early_ioremap, ptr noundef %phys_addr.addr, i64 noundef %52, i32 noundef %53, i64 noundef %54, i64 noundef %56) #11, !dbg !653
  br label %do.body200, !dbg !653

do.body200:                                       ; preds = %do.end197
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags201) #9, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %__flags201, metadata !517, metadata !DIExpression()), !dbg !656
  store i32 2313, ptr %__flags201, align 4, !dbg !656
  br label %do.body202, !dbg !656

do.body202:                                       ; preds = %do.body200
  br label %do.cond203, !dbg !657

do.cond203:                                       ; preds = %do.body202
  br label %do.end204, !dbg !657

do.end204:                                        ; preds = %do.cond203
  br label %do.body205, !dbg !656

do.body205:                                       ; preds = %do.end204
  %57 = load i32, ptr %__flags201, align 4, !dbg !659
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 156, i32 %57, i64 12) #9, !dbg !659, !srcloc !661
  br label %do.cond206, !dbg !659

do.cond206:                                       ; preds = %do.body205
  br label %do.end207, !dbg !659

do.end207:                                        ; preds = %do.cond206
  br label %do.body208, !dbg !656

do.body208:                                       ; preds = %do.end207
  br label %do.cond209, !dbg !662

do.cond209:                                       ; preds = %do.body208
  br label %do.end210, !dbg !662

do.end210:                                        ; preds = %do.cond209
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags201) #9, !dbg !653
  br label %do.cond211, !dbg !656

do.cond211:                                       ; preds = %do.end210
  br label %do.end212, !dbg !656

do.end212:                                        ; preds = %do.cond211
  br label %do.body213, !dbg !653

do.body213:                                       ; preds = %do.end212
  br label %do.cond214, !dbg !664

do.cond214:                                       ; preds = %do.body213
  br label %do.end215, !dbg !664

do.end215:                                        ; preds = %do.cond214
  br label %do.cond216, !dbg !653

do.cond216:                                       ; preds = %do.end215
  br label %do.end217, !dbg !653

do.end217:                                        ; preds = %do.cond216
  br label %if.end218, !dbg !653

if.end218:                                        ; preds = %do.end217, %while.end
  %58 = load i32, ptr %__ret_warn_on179, align 4, !dbg !651
  %tobool220 = icmp ne i32 %58, 0, !dbg !651
  %lnot221 = xor i1 %tobool220, true, !dbg !651
  %lnot223 = xor i1 %lnot221, true, !dbg !651
  %lnot.ext224 = zext i1 %lnot223 to i32, !dbg !651
  %conv225 = sext i32 %lnot.ext224 to i64, !dbg !651
  %expval226 = call i64 @llvm.expect.i64(i64 %conv225, i64 0), !dbg !651
  store i64 %expval226, ptr %tmp219, align 8, !dbg !652
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on179) #9, !dbg !666
  %59 = load i64, ptr %tmp219, align 8, !dbg !651
  %60 = load i64, ptr %offset, align 8, !dbg !667
  %61 = load i32, ptr %slot, align 4, !dbg !668
  %idxprom227 = sext i32 %61 to i64, !dbg !669
  %arrayidx228 = getelementptr [8 x i64], ptr @slot_virt, i64 0, i64 %idxprom227, !dbg !669
  %62 = load i64, ptr %arrayidx228, align 8, !dbg !669
  %add229 = add i64 %60, %62, !dbg !670
  %63 = inttoptr i64 %add229 to ptr, !dbg !671
  %64 = load i32, ptr %slot, align 4, !dbg !672
  %idxprom230 = sext i32 %64 to i64, !dbg !673
  %arrayidx231 = getelementptr [8 x ptr], ptr @prev_map, i64 0, i64 %idxprom230, !dbg !673
  store ptr %63, ptr %arrayidx231, align 8, !dbg !674
  %65 = load i32, ptr %slot, align 4, !dbg !675
  %idxprom232 = sext i32 %65 to i64, !dbg !676
  %arrayidx233 = getelementptr [8 x ptr], ptr @prev_map, i64 0, i64 %idxprom232, !dbg !676
  %66 = load ptr, ptr %arrayidx233, align 8, !dbg !676
  store ptr %66, ptr %retval, align 8, !dbg !677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !677

cleanup:                                          ; preds = %if.end218, %if.then167, %if.then118, %if.then76
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #9, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #9, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrpages) #9, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_addr) #9, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #9, !dbg !678
  %67 = load ptr, ptr %retval, align 8, !dbg !678
  ret ptr %67, !dbg !678
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @early_memremap(i64 noundef %phys_addr, i64 noundef %size) #0 section ".init.text" align 16 !dbg !679 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %prot = alloca %struct.pgprot, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !681, metadata !DIExpression()), !dbg !684
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !682, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 8, ptr %prot) #9, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !683, metadata !DIExpression()), !dbg !687
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !688
  %1 = load i64, ptr %size.addr, align 8, !dbg !689
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !690
  %2 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !690
  %and = and i64 -9223372036854775453, %2, !dbg !690
  store i64 %and, ptr %pgprot, align 8, !dbg !690
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !691
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !691
  %call = call i64 @early_memremap_pgprot_adjust(i64 noundef %0, i64 noundef %1, i64 %3) #10, !dbg !691
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !691
  store i64 %call, ptr %coerce.dive1, align 8, !dbg !691
  %4 = load i64, ptr %phys_addr.addr, align 8, !dbg !692
  %5 = load i64, ptr %size.addr, align 8, !dbg !693
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !694
  %6 = load i64, ptr %coerce.dive2, align 8, !dbg !694
  %call3 = call ptr @__early_ioremap(i64 noundef %4, i64 noundef %5, i64 %6) #10, !dbg !694
  call void @llvm.lifetime.end.p0(i64 8, ptr %prot) #9, !dbg !695
  ret ptr %call3, !dbg !696
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @early_memremap_ro(i64 noundef %phys_addr, i64 noundef %size) #0 section ".init.text" align 16 !dbg !697 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %prot = alloca %struct.pgprot, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !699, metadata !DIExpression()), !dbg !702
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !700, metadata !DIExpression()), !dbg !703
  call void @llvm.lifetime.start.p0(i64 8, ptr %prot) #9, !dbg !704
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !701, metadata !DIExpression()), !dbg !705
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !706
  %1 = load i64, ptr %size.addr, align 8, !dbg !707
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !708
  %2 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !708
  %and = and i64 -9223372036854775519, %2, !dbg !708
  store i64 %and, ptr %pgprot, align 8, !dbg !708
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !709
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !709
  %call = call i64 @early_memremap_pgprot_adjust(i64 noundef %0, i64 noundef %1, i64 %3) #10, !dbg !709
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !709
  store i64 %call, ptr %coerce.dive1, align 8, !dbg !709
  %4 = load i64, ptr %phys_addr.addr, align 8, !dbg !710
  %5 = load i64, ptr %size.addr, align 8, !dbg !711
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !712
  %6 = load i64, ptr %coerce.dive2, align 8, !dbg !712
  %call3 = call ptr @__early_ioremap(i64 noundef %4, i64 noundef %5, i64 %6) #10, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr %prot) #9, !dbg !713
  ret ptr %call3, !dbg !714
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @early_memremap_prot(i64 noundef %phys_addr, i64 noundef %size, i64 noundef %prot_val) #0 section ".init.text" align 16 !dbg !715 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %prot_val.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !719, metadata !DIExpression()), !dbg !722
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !720, metadata !DIExpression()), !dbg !723
  store i64 %prot_val, ptr %prot_val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prot_val.addr, metadata !721, metadata !DIExpression()), !dbg !724
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !725
  %1 = load i64, ptr %size.addr, align 8, !dbg !726
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !727
  %2 = load i64, ptr %prot_val.addr, align 8, !dbg !727
  store i64 %2, ptr %pgprot, align 8, !dbg !727
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !728
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !728
  %call = call ptr @__early_ioremap(i64 noundef %0, i64 noundef %1, i64 %3) #10, !dbg !728
  ret ptr %call, !dbg !729
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @copy_from_early_mem(ptr noundef %dest, i64 noundef %src, i64 noundef %size) #0 section ".init.text" align 16 !dbg !730 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %slop = alloca i64, align 8
  %clen = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !734, metadata !DIExpression()), !dbg !740
  store i64 %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !735, metadata !DIExpression()), !dbg !741
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !736, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 8, ptr %slop) #9, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %slop, metadata !737, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0(i64 8, ptr %clen) #9, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %clen, metadata !738, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %p, metadata !739, metadata !DIExpression()), !dbg !747
  br label %while.cond, !dbg !748

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %size.addr, align 8, !dbg !749
  %tobool = icmp ne i64 %0, 0, !dbg !748
  br i1 %tobool, label %while.body, label %while.end, !dbg !748

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %src.addr, align 8, !dbg !750
  %and = and i64 %1, 4095, !dbg !750
  store i64 %and, ptr %slop, align 8, !dbg !752
  %2 = load i64, ptr %size.addr, align 8, !dbg !753
  store i64 %2, ptr %clen, align 8, !dbg !754
  %3 = load i64, ptr %clen, align 8, !dbg !755
  %4 = load i64, ptr %slop, align 8, !dbg !757
  %sub = sub i64 262144, %4, !dbg !758
  %cmp = icmp ugt i64 %3, %sub, !dbg !759
  br i1 %cmp, label %if.then, label %if.end, !dbg !760

if.then:                                          ; preds = %while.body
  %5 = load i64, ptr %slop, align 8, !dbg !761
  %sub1 = sub i64 262144, %5, !dbg !762
  store i64 %sub1, ptr %clen, align 8, !dbg !763
  br label %if.end, !dbg !764

if.end:                                           ; preds = %if.then, %while.body
  %6 = load i64, ptr %src.addr, align 8, !dbg !765
  %and2 = and i64 %6, -4096, !dbg !766
  %7 = load i64, ptr %clen, align 8, !dbg !767
  %8 = load i64, ptr %slop, align 8, !dbg !768
  %add = add i64 %7, %8, !dbg !769
  %call = call ptr @early_memremap(i64 noundef %and2, i64 noundef %add) #10, !dbg !770
  store ptr %call, ptr %p, align 8, !dbg !771
  %9 = load ptr, ptr %dest.addr, align 8, !dbg !772
  %10 = load ptr, ptr %p, align 8, !dbg !773
  %11 = load i64, ptr %slop, align 8, !dbg !774
  %add.ptr = getelementptr i8, ptr %10, i64 %11, !dbg !775
  %12 = load i64, ptr %clen, align 8, !dbg !776
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %add.ptr, i64 %12, i1 false), !dbg !777
  %13 = load ptr, ptr %p, align 8, !dbg !778
  %14 = load i64, ptr %clen, align 8, !dbg !779
  %15 = load i64, ptr %slop, align 8, !dbg !780
  %add3 = add i64 %14, %15, !dbg !781
  call void @early_memunmap(ptr noundef %13, i64 noundef %add3) #11, !dbg !782
  %16 = load i64, ptr %clen, align 8, !dbg !783
  %17 = load ptr, ptr %dest.addr, align 8, !dbg !784
  %add.ptr4 = getelementptr i8, ptr %17, i64 %16, !dbg !784
  store ptr %add.ptr4, ptr %dest.addr, align 8, !dbg !784
  %18 = load i64, ptr %clen, align 8, !dbg !785
  %19 = load i64, ptr %src.addr, align 8, !dbg !786
  %add5 = add i64 %19, %18, !dbg !786
  store i64 %add5, ptr %src.addr, align 8, !dbg !786
  %20 = load i64, ptr %clen, align 8, !dbg !787
  %21 = load i64, ptr %size.addr, align 8, !dbg !788
  %sub6 = sub i64 %21, %20, !dbg !788
  store i64 %sub6, ptr %size.addr, align 8, !dbg !788
  br label %while.cond, !dbg !748, !llvm.loop !789

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !791
  call void @llvm.lifetime.end.p0(i64 8, ptr %clen) #9, !dbg !791
  call void @llvm.lifetime.end.p0(i64 8, ptr %slop) #9, !dbg !791
  ret void, !dbg !791
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @early_memunmap(ptr noundef %addr, i64 noundef %size) #0 section ".init.text" align 16 !dbg !792 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !794, metadata !DIExpression()), !dbg !796
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !795, metadata !DIExpression()), !dbg !797
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !798
  %1 = load i64, ptr %size.addr, align 8, !dbg !799
  call void @early_iounmap(ptr noundef %0, i64 noundef %1) #10, !dbg !800
  ret void, !dbg !801
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !802 dso_local void @__compiletime_assert_205() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !803 dso_local void @native_set_fixmap(i32 noundef, i64 noundef, i64) #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: idx >= __end_of_fixed_addresses" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone }
attributes #12 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_early_ioremap_debug_setup", scope: !2, file: !3, line: 31, type: !122, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.early_ioremap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/early_ioremap\22 -D KBUILD_BASENAME=\22early_ioremap\22 -D KBUILD_MODNAME=\22early_ioremap\22 -D __KBUILD_MODNAME=kmod_early_ioremap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/early_ioremap.ll mm/early_ioremap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/early_ioremap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e39ed3eab1d2d2eead12dcd0a387fe18")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fixed_addresses", file: !6, line: 81, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7ee1b51217b4f967bead339632e7de6")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "VSYSCALL_PAGE", value: 511)
!10 = !DIEnumerator(name: "FIX_DBGP_BASE", value: 512)
!11 = !DIEnumerator(name: "FIX_EARLYCON_MEM_BASE", value: 513)
!12 = !DIEnumerator(name: "FIX_OHCI1394_BASE", value: 514)
!13 = !DIEnumerator(name: "FIX_APIC_BASE", value: 515)
!14 = !DIEnumerator(name: "FIX_IO_APIC_BASE_0", value: 516)
!15 = !DIEnumerator(name: "FIX_IO_APIC_BASE_END", value: 643)
!16 = !DIEnumerator(name: "__end_of_permanent_fixed_addresses", value: 644)
!17 = !DIEnumerator(name: "FIX_BTMAP_END", value: 1024)
!18 = !DIEnumerator(name: "FIX_BTMAP_BEGIN", value: 1535)
!19 = !DIEnumerator(name: "__end_of_fixed_addresses", value: 1536)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !21, line: 228, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30}
!23 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0)
!24 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1)
!25 = !DIEnumerator(name: "SYSTEM_FREEING_INITMEM", value: 2)
!26 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 3)
!27 = !DIEnumerator(name: "SYSTEM_HALT", value: 4)
!28 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 5)
!29 = !DIEnumerator(name: "SYSTEM_RESTART", value: 6)
!30 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 7)
!31 = !{!32, !33, !34, !36}
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !35, line: 14, baseType: !32)
!35 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !37, line: 164, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !37, line: 159, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!44 = !{!45, !61, !66, !68, !73, !78, !83, !88, !90, !92, !97, !100, !0, !102, !107, !112, !117}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__setup_early_ioremap_debug_setup", scope: !2, file: !3, line: 31, type: !47, isLocal: true, isDefinition: true, align: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !48, line: 324, size: 192, elements: !49)
!48 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!49 = !{!50, !54, !60}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !47, file: !48, line: 325, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !47, file: !48, line: 326, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !47, file: !48, line: 327, baseType: !58, size: 32, offset: 128)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 152, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 19)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_early_ioremap__332_97_check_early_ioremap_leak7333", scope: !2, file: !3, line: 97, type: !33, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 240, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 30)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 112, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 14)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 368, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 46)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 20)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "early_ioremap_debug", scope: !2, file: !3, line: 23, type: !58, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "after_paging_init", scope: !2, file: !3, line: 33, type: !58, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "prev_map", scope: !2, file: !3, line: 67, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 8)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "prev_size", scope: !2, file: !3, line: 68, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, elements: !95)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "slot_virt", scope: !2, file: !3, line: 69, type: !99, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 944, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 118)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 248, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 31)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 16)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 304, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 38)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !86)
!123 = !{i32 7, !"Dwarf Version", i32 5}
!124 = !{i32 2, !"Debug Info Version", i32 3}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 8, !"cf-protection-branch", i32 1}
!127 = !{i32 4, !"function_return_thunk_extern", i32 1}
!128 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!129 = !{i32 1, !"Code Model", i32 2}
!130 = !{i32 1, !"override-stack-alignment", i32 8}
!131 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!132 = distinct !DISubprogram(name: "early_ioremap_debug_setup", scope: !3, file: !3, line: 25, type: !56, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!133 = !{!134}
!134 = !DILocalVariable(name: "str", arg: 1, scope: !132, file: !3, line: 25, type: !59)
!135 = !DILocation(line: 25, column: 51, scope: !132)
!136 = !DILocation(line: 27, column: 22, scope: !132)
!137 = !DILocation(line: 29, column: 2, scope: !132)
!138 = distinct !DISubprogram(name: "early_memremap_pgprot_adjust", scope: !3, file: !3, line: 35, type: !139, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !147)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !36, !32, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !142, line: 297, baseType: !143)
!142 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !142, line: 297, size: 64, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !143, file: !142, line: 297, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !35, line: 19, baseType: !32)
!147 = !{!148, !149, !150}
!148 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !138, file: !3, line: 35, type: !36)
!149 = !DILocalVariable(name: "size", arg: 2, scope: !138, file: !3, line: 36, type: !32)
!150 = !DILocalVariable(name: "prot", arg: 3, scope: !138, file: !3, line: 37, type: !141)
!151 = !DILocation(line: 35, column: 69, scope: !138)
!152 = !DILocation(line: 36, column: 25, scope: !138)
!153 = !DILocation(line: 37, column: 20, scope: !138)
!154 = !DILocation(line: 39, column: 9, scope: !138)
!155 = !DILocation(line: 39, column: 2, scope: !138)
!156 = distinct !DISubprogram(name: "early_ioremap_reset", scope: !3, file: !3, line: 42, type: !157, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!157 = !DISubroutineType(types: !158)
!158 = !{null}
!159 = !DILocation(line: 44, column: 20, scope: !156)
!160 = !DILocation(line: 45, column: 1, scope: !156)
!161 = distinct !DISubprogram(name: "early_ioremap_setup", scope: !3, file: !3, line: 71, type: !157, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!162 = !{!163, !164, !169}
!163 = !DILocalVariable(name: "i", scope: !161, file: !3, line: 73, type: !58)
!164 = !DILocalVariable(name: "__ret_warn_on", scope: !165, file: !3, line: 76, type: !58)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 76, column: 3)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 75, column: 41)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 75, column: 2)
!168 = distinct !DILexicalBlock(scope: !161, file: !3, line: 75, column: 2)
!169 = !DILocalVariable(name: "__flags", scope: !170, file: !3, line: 76, type: !58)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 76, column: 3)
!171 = distinct !DILexicalBlock(scope: !165, file: !3, line: 76, column: 3)
!172 = !DILocation(line: 73, column: 2, scope: !161)
!173 = !DILocation(line: 73, column: 6, scope: !161)
!174 = !DILocation(line: 75, column: 9, scope: !168)
!175 = !DILocation(line: 75, column: 7, scope: !168)
!176 = !DILocation(line: 75, column: 14, scope: !167)
!177 = !DILocation(line: 75, column: 16, scope: !167)
!178 = !DILocation(line: 75, column: 2, scope: !168)
!179 = !DILocation(line: 76, column: 3, scope: !165)
!180 = !DILocation(line: 76, column: 3, scope: !171)
!181 = !DILocation(line: 76, column: 3, scope: !170)
!182 = !DILocation(line: 76, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !170, file: !3, line: 76, column: 3)
!184 = !DILocation(line: 76, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !170, file: !3, line: 76, column: 3)
!186 = !{i64 2155240086, i64 2155240115, i64 2155240161, i64 2155240219, i64 2155240273, i64 2155240327, i64 2155240382, i64 2155240413, i64 2155240721, i64 2155240727, i64 2155240774, i64 2155240797, i64 2155240823}
!187 = !DILocation(line: 76, column: 3, scope: !188)
!188 = distinct !DILexicalBlock(scope: !170, file: !3, line: 76, column: 3)
!189 = !DILocation(line: 76, column: 3, scope: !166)
!190 = !DILocation(line: 77, column: 18, scope: !166)
!191 = !DILocation(line: 77, column: 13, scope: !166)
!192 = !DILocation(line: 77, column: 3, scope: !166)
!193 = !DILocation(line: 77, column: 16, scope: !166)
!194 = !DILocation(line: 78, column: 2, scope: !166)
!195 = !DILocation(line: 75, column: 37, scope: !167)
!196 = !DILocation(line: 75, column: 2, scope: !167)
!197 = distinct !{!197, !178, !198, !199, !200}
!198 = !DILocation(line: 78, column: 2, scope: !168)
!199 = !{!"llvm.loop.mustprogress"}
!200 = !{!"llvm.loop.unroll.disable"}
!201 = !DILocation(line: 79, column: 1, scope: !161)
!202 = distinct !DISubprogram(name: "__initstub__kmod_early_ioremap__332_97_check_early_ioremap_leak7", scope: !3, file: !3, line: 97, type: !203, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!203 = !DISubroutineType(types: !204)
!204 = !{!58}
!205 = !DILocation(line: 97, column: 1, scope: !202)
!206 = distinct !DISubprogram(name: "check_early_ioremap_leak", scope: !3, file: !3, line: 81, type: !203, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!207 = !{!208, !209, !210, !213}
!208 = !DILocalVariable(name: "count", scope: !206, file: !3, line: 83, type: !58)
!209 = !DILocalVariable(name: "i", scope: !206, file: !3, line: 84, type: !58)
!210 = !DILocalVariable(name: "__ret_warn_on", scope: !211, file: !3, line: 90, type: !58)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 90, column: 6)
!212 = distinct !DILexicalBlock(scope: !206, file: !3, line: 90, column: 6)
!213 = !DILocalVariable(name: "__flags", scope: !214, file: !3, line: 90, type: !58)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 90, column: 6)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 90, column: 6)
!216 = distinct !DILexicalBlock(scope: !211, file: !3, line: 90, column: 6)
!217 = !DILocation(line: 83, column: 2, scope: !206)
!218 = !DILocation(line: 83, column: 6, scope: !206)
!219 = !DILocation(line: 84, column: 2, scope: !206)
!220 = !DILocation(line: 84, column: 6, scope: !206)
!221 = !DILocation(line: 86, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !206, file: !3, line: 86, column: 2)
!223 = !DILocation(line: 86, column: 7, scope: !222)
!224 = !DILocation(line: 86, column: 14, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !3, line: 86, column: 2)
!226 = !DILocation(line: 86, column: 16, scope: !225)
!227 = !DILocation(line: 86, column: 2, scope: !222)
!228 = !DILocation(line: 87, column: 16, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !3, line: 87, column: 7)
!230 = !DILocation(line: 87, column: 7, scope: !229)
!231 = !DILocation(line: 87, column: 7, scope: !225)
!232 = !DILocation(line: 88, column: 9, scope: !229)
!233 = !DILocation(line: 88, column: 4, scope: !229)
!234 = !DILocation(line: 87, column: 17, scope: !229)
!235 = !DILocation(line: 86, column: 37, scope: !225)
!236 = !DILocation(line: 86, column: 2, scope: !225)
!237 = distinct !{!237, !227, !238, !199, !200}
!238 = !DILocation(line: 88, column: 9, scope: !222)
!239 = !DILocation(line: 90, column: 6, scope: !211)
!240 = !DILocation(line: 90, column: 6, scope: !216)
!241 = !DILocation(line: 90, column: 6, scope: !215)
!242 = !DILocation(line: 90, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !215, file: !3, line: 90, column: 6)
!244 = !DILocation(line: 90, column: 6, scope: !214)
!245 = !DILocation(line: 90, column: 6, scope: !246)
!246 = distinct !DILexicalBlock(scope: !214, file: !3, line: 90, column: 6)
!247 = !DILocation(line: 90, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !214, file: !3, line: 90, column: 6)
!249 = !{i64 2155242671, i64 2155242700, i64 2155242746, i64 2155242804, i64 2155242858, i64 2155242912, i64 2155242967, i64 2155242998, i64 2155243306, i64 2155243312, i64 2155243359, i64 2155243382, i64 2155243408}
!250 = !DILocation(line: 90, column: 6, scope: !251)
!251 = distinct !DILexicalBlock(scope: !214, file: !3, line: 90, column: 6)
!252 = !DILocation(line: 90, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !215, file: !3, line: 90, column: 6)
!254 = !DILocation(line: 90, column: 6, scope: !212)
!255 = !DILocation(line: 90, column: 6, scope: !206)
!256 = !DILocation(line: 94, column: 3, scope: !212)
!257 = !DILocation(line: 95, column: 2, scope: !206)
!258 = !DILocation(line: 96, column: 1, scope: !206)
!259 = distinct !DISubprogram(name: "early_iounmap", scope: !3, file: !3, line: 162, type: !260, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !33, !32}
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !274, !278, !281, !285, !287, !291, !294}
!263 = !DILocalVariable(name: "addr", arg: 1, scope: !259, file: !3, line: 162, type: !33)
!264 = !DILocalVariable(name: "size", arg: 2, scope: !259, file: !3, line: 162, type: !32)
!265 = !DILocalVariable(name: "virt_addr", scope: !259, file: !3, line: 164, type: !32)
!266 = !DILocalVariable(name: "offset", scope: !259, file: !3, line: 165, type: !32)
!267 = !DILocalVariable(name: "nrpages", scope: !259, file: !3, line: 166, type: !7)
!268 = !DILocalVariable(name: "idx", scope: !259, file: !3, line: 167, type: !5)
!269 = !DILocalVariable(name: "i", scope: !259, file: !3, line: 168, type: !58)
!270 = !DILocalVariable(name: "slot", scope: !259, file: !3, line: 168, type: !58)
!271 = !DILocalVariable(name: "__ret_warn_on", scope: !272, file: !3, line: 178, type: !58)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 178, column: 6)
!273 = distinct !DILexicalBlock(scope: !259, file: !3, line: 178, column: 6)
!274 = !DILocalVariable(name: "__flags", scope: !275, file: !3, line: 178, type: !58)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 178, column: 6)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 178, column: 6)
!277 = distinct !DILexicalBlock(scope: !272, file: !3, line: 178, column: 6)
!278 = !DILocalVariable(name: "__ret_warn_on", scope: !279, file: !3, line: 182, type: !58)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 182, column: 6)
!280 = distinct !DILexicalBlock(scope: !259, file: !3, line: 182, column: 6)
!281 = !DILocalVariable(name: "__flags", scope: !282, file: !3, line: 182, type: !58)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 182, column: 6)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 182, column: 6)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 182, column: 6)
!285 = !DILocalVariable(name: "__ret_warn_on", scope: !286, file: !3, line: 187, type: !58)
!286 = distinct !DILexicalBlock(scope: !259, file: !3, line: 187, column: 2)
!287 = !DILocalVariable(name: "__flags", scope: !288, file: !3, line: 187, type: !58)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 187, column: 2)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 187, column: 2)
!290 = distinct !DILexicalBlock(scope: !286, file: !3, line: 187, column: 2)
!291 = !DILocalVariable(name: "__ret_warn_on", scope: !292, file: !3, line: 191, type: !58)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 191, column: 6)
!293 = distinct !DILexicalBlock(scope: !259, file: !3, line: 191, column: 6)
!294 = !DILocalVariable(name: "__flags", scope: !295, file: !3, line: 191, type: !58)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 191, column: 6)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 191, column: 6)
!297 = !DILocation(line: 162, column: 41, scope: !259)
!298 = !DILocation(line: 162, column: 61, scope: !259)
!299 = !DILocation(line: 164, column: 2, scope: !259)
!300 = !DILocation(line: 164, column: 16, scope: !259)
!301 = !DILocation(line: 165, column: 2, scope: !259)
!302 = !DILocation(line: 165, column: 16, scope: !259)
!303 = !DILocation(line: 166, column: 2, scope: !259)
!304 = !DILocation(line: 166, column: 15, scope: !259)
!305 = !DILocation(line: 167, column: 2, scope: !259)
!306 = !DILocation(line: 167, column: 23, scope: !259)
!307 = !DILocation(line: 168, column: 2, scope: !259)
!308 = !DILocation(line: 168, column: 6, scope: !259)
!309 = !DILocation(line: 168, column: 9, scope: !259)
!310 = !DILocation(line: 170, column: 7, scope: !259)
!311 = !DILocation(line: 171, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !259, file: !3, line: 171, column: 2)
!313 = !DILocation(line: 171, column: 7, scope: !312)
!314 = !DILocation(line: 171, column: 14, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 171, column: 2)
!316 = !DILocation(line: 171, column: 16, scope: !315)
!317 = !DILocation(line: 171, column: 2, scope: !312)
!318 = !DILocation(line: 172, column: 16, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 172, column: 7)
!320 = distinct !DILexicalBlock(scope: !315, file: !3, line: 171, column: 41)
!321 = !DILocation(line: 172, column: 7, scope: !319)
!322 = !DILocation(line: 172, column: 22, scope: !319)
!323 = !DILocation(line: 172, column: 19, scope: !319)
!324 = !DILocation(line: 172, column: 7, scope: !320)
!325 = !DILocation(line: 173, column: 11, scope: !326)
!326 = distinct !DILexicalBlock(scope: !319, file: !3, line: 172, column: 28)
!327 = !DILocation(line: 173, column: 9, scope: !326)
!328 = !DILocation(line: 174, column: 4, scope: !326)
!329 = !DILocation(line: 176, column: 2, scope: !320)
!330 = !DILocation(line: 171, column: 37, scope: !315)
!331 = !DILocation(line: 171, column: 2, scope: !315)
!332 = distinct !{!332, !317, !333, !199, !200}
!333 = !DILocation(line: 176, column: 2, scope: !312)
!334 = !DILocation(line: 178, column: 6, scope: !272)
!335 = !DILocation(line: 178, column: 6, scope: !277)
!336 = !DILocation(line: 178, column: 6, scope: !276)
!337 = !DILocation(line: 178, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !276, file: !3, line: 178, column: 6)
!339 = !DILocation(line: 178, column: 6, scope: !275)
!340 = !DILocation(line: 178, column: 6, scope: !341)
!341 = distinct !DILexicalBlock(scope: !275, file: !3, line: 178, column: 6)
!342 = !DILocation(line: 178, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !275, file: !3, line: 178, column: 6)
!344 = !{i64 2155264919, i64 2155264948, i64 2155264994, i64 2155265052, i64 2155265106, i64 2155265160, i64 2155265215, i64 2155265246, i64 2155265554, i64 2155265560, i64 2155265607, i64 2155265630, i64 2155265656}
!345 = !DILocation(line: 178, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !275, file: !3, line: 178, column: 6)
!347 = !DILocation(line: 178, column: 6, scope: !348)
!348 = distinct !DILexicalBlock(scope: !276, file: !3, line: 178, column: 6)
!349 = !DILocation(line: 178, column: 6, scope: !273)
!350 = !DILocation(line: 178, column: 6, scope: !259)
!351 = !DILocation(line: 180, column: 3, scope: !273)
!352 = !DILocation(line: 182, column: 6, scope: !279)
!353 = !DILocation(line: 182, column: 6, scope: !284)
!354 = !DILocation(line: 182, column: 6, scope: !283)
!355 = !DILocation(line: 182, column: 6, scope: !356)
!356 = distinct !DILexicalBlock(scope: !283, file: !3, line: 182, column: 6)
!357 = !DILocation(line: 182, column: 6, scope: !282)
!358 = !DILocation(line: 182, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !282, file: !3, line: 182, column: 6)
!360 = !DILocation(line: 182, column: 6, scope: !361)
!361 = distinct !DILexicalBlock(scope: !282, file: !3, line: 182, column: 6)
!362 = !{i64 2155266830, i64 2155266859, i64 2155266905, i64 2155266963, i64 2155267017, i64 2155267071, i64 2155267126, i64 2155267157, i64 2155267465, i64 2155267471, i64 2155267518, i64 2155267541, i64 2155267567}
!363 = !DILocation(line: 182, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !282, file: !3, line: 182, column: 6)
!365 = !DILocation(line: 182, column: 6, scope: !366)
!366 = distinct !DILexicalBlock(scope: !283, file: !3, line: 182, column: 6)
!367 = !DILocation(line: 182, column: 6, scope: !280)
!368 = !DILocation(line: 182, column: 6, scope: !259)
!369 = !DILocation(line: 185, column: 3, scope: !280)
!370 = !DILocation(line: 187, column: 2, scope: !286)
!371 = !DILocation(line: 187, column: 2, scope: !290)
!372 = !DILocation(line: 187, column: 2, scope: !289)
!373 = !DILocation(line: 187, column: 2, scope: !374)
!374 = distinct !DILexicalBlock(scope: !289, file: !3, line: 187, column: 2)
!375 = !DILocation(line: 187, column: 2, scope: !288)
!376 = !DILocation(line: 187, column: 2, scope: !377)
!377 = distinct !DILexicalBlock(scope: !288, file: !3, line: 187, column: 2)
!378 = !DILocation(line: 187, column: 2, scope: !379)
!379 = distinct !DILexicalBlock(scope: !288, file: !3, line: 187, column: 2)
!380 = !{i64 2155268657, i64 2155268686, i64 2155268732, i64 2155268790, i64 2155268844, i64 2155268898, i64 2155268953, i64 2155268984, i64 2155269292, i64 2155269298, i64 2155269345, i64 2155269368, i64 2155269394}
!381 = !DILocation(line: 187, column: 2, scope: !382)
!382 = distinct !DILexicalBlock(scope: !288, file: !3, line: 187, column: 2)
!383 = !DILocation(line: 187, column: 2, scope: !384)
!384 = distinct !DILexicalBlock(scope: !289, file: !3, line: 187, column: 2)
!385 = !DILocation(line: 187, column: 2, scope: !259)
!386 = !DILocation(line: 190, column: 29, scope: !259)
!387 = !DILocation(line: 190, column: 14, scope: !259)
!388 = !DILocation(line: 190, column: 12, scope: !259)
!389 = !DILocation(line: 191, column: 6, scope: !292)
!390 = !DILocation(line: 191, column: 6, scope: !296)
!391 = !DILocation(line: 191, column: 6, scope: !295)
!392 = !DILocation(line: 191, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !295, file: !3, line: 191, column: 6)
!394 = !DILocation(line: 191, column: 6, scope: !395)
!395 = distinct !DILexicalBlock(scope: !295, file: !3, line: 191, column: 6)
!396 = !{i64 2155270195, i64 2155270224, i64 2155270270, i64 2155270328, i64 2155270382, i64 2155270436, i64 2155270491, i64 2155270522, i64 2155270830, i64 2155270836, i64 2155270883, i64 2155270906, i64 2155270932}
!397 = !DILocation(line: 191, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !295, file: !3, line: 191, column: 6)
!399 = !DILocation(line: 191, column: 6, scope: !293)
!400 = !DILocation(line: 191, column: 6, scope: !259)
!401 = !DILocation(line: 192, column: 3, scope: !293)
!402 = !DILocation(line: 194, column: 11, scope: !259)
!403 = !DILocation(line: 194, column: 9, scope: !259)
!404 = !DILocation(line: 195, column: 12, scope: !259)
!405 = !DILocation(line: 195, column: 38, scope: !259)
!406 = !DILocation(line: 195, column: 10, scope: !259)
!407 = !DILocation(line: 197, column: 40, scope: !259)
!408 = !DILocation(line: 197, column: 39, scope: !259)
!409 = !DILocation(line: 197, column: 24, scope: !259)
!410 = !DILocation(line: 197, column: 6, scope: !259)
!411 = !DILocation(line: 198, column: 2, scope: !259)
!412 = !DILocation(line: 198, column: 9, scope: !259)
!413 = !DILocation(line: 198, column: 17, scope: !259)
!414 = !DILocation(line: 199, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 199, column: 7)
!416 = distinct !DILexicalBlock(scope: !259, file: !3, line: 198, column: 22)
!417 = !DILocation(line: 199, column: 7, scope: !416)
!418 = !DILocation(line: 200, column: 4, scope: !415)
!419 = !DILocation(line: 202, column: 23, scope: !415)
!420 = !DILocation(line: 202, column: 31, scope: !415)
!421 = !DILocation(line: 202, column: 4, scope: !415)
!422 = !DILocation(line: 203, column: 3, scope: !416)
!423 = !DILocation(line: 204, column: 3, scope: !416)
!424 = distinct !{!424, !411, !425, !199, !200}
!425 = !DILocation(line: 205, column: 2, scope: !259)
!426 = !DILocation(line: 206, column: 11, scope: !259)
!427 = !DILocation(line: 206, column: 2, scope: !259)
!428 = !DILocation(line: 206, column: 17, scope: !259)
!429 = !DILocation(line: 207, column: 1, scope: !259)
!430 = !DISubprogram(name: "__warn_printk", scope: !431, file: !431, line: 93, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!432 = !DISubroutineType(types: !433)
!433 = !{null, !51, null}
!434 = distinct !DISubprogram(name: "fix_to_virt", scope: !435, file: !435, line: 30, type: !436, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!435 = !DIFile(filename: "./include/asm-generic/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd8c6683336efdf1b0dfbdd9b73a00ed")
!436 = !DISubroutineType(types: !437)
!437 = !{!32, !438}
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!439 = !{!440}
!440 = !DILocalVariable(name: "idx", arg: 1, scope: !434, file: !435, line: 30, type: !438)
!441 = !DILocation(line: 30, column: 69, scope: !434)
!442 = !DILocation(line: 32, column: 2, scope: !434)
!443 = !DILocation(line: 32, column: 2, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !435, line: 32, column: 2)
!445 = distinct !DILexicalBlock(scope: !434, file: !435, line: 32, column: 2)
!446 = !DILocation(line: 32, column: 2, scope: !445)
!447 = !{i32 -2142029996}
!448 = !DILocation(line: 33, column: 9, scope: !434)
!449 = !DILocation(line: 33, column: 2, scope: !434)
!450 = distinct !DISubprogram(name: "__set_fixmap", scope: !6, file: !6, line: 164, type: !451, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !5, !38, !141}
!453 = !{!454, !455, !456}
!454 = !DILocalVariable(name: "idx", arg: 1, scope: !450, file: !6, line: 164, type: !5)
!455 = !DILocalVariable(name: "phys", arg: 2, scope: !450, file: !6, line: 165, type: !38)
!456 = !DILocalVariable(name: "flags", arg: 3, scope: !450, file: !6, line: 165, type: !141)
!457 = !DILocation(line: 164, column: 54, scope: !450)
!458 = !DILocation(line: 165, column: 17, scope: !450)
!459 = !DILocation(line: 165, column: 32, scope: !450)
!460 = !DILocation(line: 167, column: 20, scope: !450)
!461 = !DILocation(line: 167, column: 25, scope: !450)
!462 = !DILocation(line: 167, column: 2, scope: !450)
!463 = !DILocation(line: 168, column: 1, scope: !450)
!464 = !DISubprogram(name: "__early_set_fixmap", scope: !6, file: !6, line: 196, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = distinct !DISubprogram(name: "early_ioremap", scope: !3, file: !3, line: 211, type: !466, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!33, !36, !32}
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !465, file: !3, line: 211, type: !36)
!470 = !DILocalVariable(name: "size", arg: 2, scope: !465, file: !3, line: 211, type: !32)
!471 = !DILocation(line: 211, column: 31, scope: !465)
!472 = !DILocation(line: 211, column: 56, scope: !465)
!473 = !DILocation(line: 213, column: 25, scope: !465)
!474 = !DILocation(line: 213, column: 36, scope: !465)
!475 = !DILocation(line: 213, column: 42, scope: !465)
!476 = !DILocation(line: 213, column: 9, scope: !465)
!477 = !DILocation(line: 213, column: 2, scope: !465)
!478 = distinct !DISubprogram(name: "__early_ioremap", scope: !3, file: !3, line: 100, type: !479, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{!33, !36, !32, !141}
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !493, !496, !499, !503, !506, !509, !512, !515, !517}
!482 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !478, file: !3, line: 100, type: !36)
!483 = !DILocalVariable(name: "size", arg: 2, scope: !478, file: !3, line: 100, type: !32)
!484 = !DILocalVariable(name: "prot", arg: 3, scope: !478, file: !3, line: 100, type: !141)
!485 = !DILocalVariable(name: "offset", scope: !478, file: !3, line: 102, type: !32)
!486 = !DILocalVariable(name: "last_addr", scope: !478, file: !3, line: 103, type: !36)
!487 = !DILocalVariable(name: "nrpages", scope: !478, file: !3, line: 104, type: !7)
!488 = !DILocalVariable(name: "idx", scope: !478, file: !3, line: 105, type: !5)
!489 = !DILocalVariable(name: "i", scope: !478, file: !3, line: 106, type: !58)
!490 = !DILocalVariable(name: "slot", scope: !478, file: !3, line: 106, type: !58)
!491 = !DILocalVariable(name: "__ret_warn_on", scope: !492, file: !3, line: 108, type: !58)
!492 = distinct !DILexicalBlock(scope: !478, file: !3, line: 108, column: 2)
!493 = !DILocalVariable(name: "__flags", scope: !494, file: !3, line: 108, type: !58)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 108, column: 2)
!495 = distinct !DILexicalBlock(scope: !492, file: !3, line: 108, column: 2)
!496 = !DILocalVariable(name: "__ret_warn_on", scope: !497, file: !3, line: 118, type: !58)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 118, column: 6)
!498 = distinct !DILexicalBlock(scope: !478, file: !3, line: 118, column: 6)
!499 = !DILocalVariable(name: "__flags", scope: !500, file: !3, line: 118, type: !58)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 118, column: 6)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 118, column: 6)
!502 = distinct !DILexicalBlock(scope: !497, file: !3, line: 118, column: 6)
!503 = !DILocalVariable(name: "__ret_warn_on", scope: !504, file: !3, line: 124, type: !58)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 124, column: 6)
!505 = distinct !DILexicalBlock(scope: !478, file: !3, line: 124, column: 6)
!506 = !DILocalVariable(name: "__flags", scope: !507, file: !3, line: 124, type: !58)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 124, column: 6)
!508 = distinct !DILexicalBlock(scope: !504, file: !3, line: 124, column: 6)
!509 = !DILocalVariable(name: "__ret_warn_on", scope: !510, file: !3, line: 139, type: !58)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 139, column: 6)
!511 = distinct !DILexicalBlock(scope: !478, file: !3, line: 139, column: 6)
!512 = !DILocalVariable(name: "__flags", scope: !513, file: !3, line: 139, type: !58)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 139, column: 6)
!514 = distinct !DILexicalBlock(scope: !510, file: !3, line: 139, column: 6)
!515 = !DILocalVariable(name: "__ret_warn_on", scope: !516, file: !3, line: 155, type: !58)
!516 = distinct !DILexicalBlock(scope: !478, file: !3, line: 155, column: 2)
!517 = !DILocalVariable(name: "__flags", scope: !518, file: !3, line: 155, type: !58)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 155, column: 2)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 155, column: 2)
!520 = distinct !DILexicalBlock(scope: !516, file: !3, line: 155, column: 2)
!521 = !DILocation(line: 100, column: 33, scope: !478)
!522 = !DILocation(line: 100, column: 58, scope: !478)
!523 = !DILocation(line: 100, column: 73, scope: !478)
!524 = !DILocation(line: 102, column: 2, scope: !478)
!525 = !DILocation(line: 102, column: 16, scope: !478)
!526 = !DILocation(line: 103, column: 2, scope: !478)
!527 = !DILocation(line: 103, column: 18, scope: !478)
!528 = !DILocation(line: 104, column: 2, scope: !478)
!529 = !DILocation(line: 104, column: 15, scope: !478)
!530 = !DILocation(line: 105, column: 2, scope: !478)
!531 = !DILocation(line: 105, column: 23, scope: !478)
!532 = !DILocation(line: 106, column: 2, scope: !478)
!533 = !DILocation(line: 106, column: 6, scope: !478)
!534 = !DILocation(line: 106, column: 9, scope: !478)
!535 = !DILocation(line: 108, column: 2, scope: !492)
!536 = !DILocation(line: 108, column: 2, scope: !495)
!537 = !DILocation(line: 108, column: 2, scope: !494)
!538 = !DILocation(line: 108, column: 2, scope: !539)
!539 = distinct !DILexicalBlock(scope: !494, file: !3, line: 108, column: 2)
!540 = !DILocation(line: 108, column: 2, scope: !541)
!541 = distinct !DILexicalBlock(scope: !494, file: !3, line: 108, column: 2)
!542 = !{i64 2155255427, i64 2155255456, i64 2155255502, i64 2155255560, i64 2155255614, i64 2155255668, i64 2155255723, i64 2155255754, i64 2155256062, i64 2155256068, i64 2155256115, i64 2155256138, i64 2155256164}
!543 = !DILocation(line: 108, column: 2, scope: !544)
!544 = distinct !DILexicalBlock(scope: !494, file: !3, line: 108, column: 2)
!545 = !DILocation(line: 108, column: 2, scope: !478)
!546 = !DILocation(line: 110, column: 7, scope: !478)
!547 = !DILocation(line: 111, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !478, file: !3, line: 111, column: 2)
!549 = !DILocation(line: 111, column: 7, scope: !548)
!550 = !DILocation(line: 111, column: 14, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !3, line: 111, column: 2)
!552 = !DILocation(line: 111, column: 16, scope: !551)
!553 = !DILocation(line: 111, column: 2, scope: !548)
!554 = !DILocation(line: 112, column: 17, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 112, column: 7)
!556 = distinct !DILexicalBlock(scope: !551, file: !3, line: 111, column: 41)
!557 = !DILocation(line: 112, column: 8, scope: !555)
!558 = !DILocation(line: 112, column: 7, scope: !556)
!559 = !DILocation(line: 113, column: 11, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !3, line: 112, column: 21)
!561 = !DILocation(line: 113, column: 9, scope: !560)
!562 = !DILocation(line: 114, column: 4, scope: !560)
!563 = !DILocation(line: 116, column: 2, scope: !556)
!564 = !DILocation(line: 111, column: 37, scope: !551)
!565 = !DILocation(line: 111, column: 2, scope: !551)
!566 = distinct !{!566, !553, !567, !199, !200}
!567 = !DILocation(line: 116, column: 2, scope: !548)
!568 = !DILocation(line: 118, column: 6, scope: !497)
!569 = !DILocation(line: 118, column: 6, scope: !502)
!570 = !DILocation(line: 118, column: 6, scope: !501)
!571 = !DILocation(line: 118, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !501, file: !3, line: 118, column: 6)
!573 = !DILocation(line: 118, column: 6, scope: !500)
!574 = !DILocation(line: 118, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !500, file: !3, line: 118, column: 6)
!576 = !DILocation(line: 118, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !500, file: !3, line: 118, column: 6)
!578 = !{i64 2155257243, i64 2155257272, i64 2155257318, i64 2155257376, i64 2155257430, i64 2155257484, i64 2155257539, i64 2155257570, i64 2155257878, i64 2155257884, i64 2155257931, i64 2155257954, i64 2155257980}
!579 = !DILocation(line: 118, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !500, file: !3, line: 118, column: 6)
!581 = !DILocation(line: 118, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !501, file: !3, line: 118, column: 6)
!583 = !DILocation(line: 118, column: 6, scope: !498)
!584 = !DILocation(line: 118, column: 6, scope: !478)
!585 = !DILocation(line: 120, column: 3, scope: !498)
!586 = !DILocation(line: 123, column: 14, scope: !478)
!587 = !DILocation(line: 123, column: 26, scope: !478)
!588 = !DILocation(line: 123, column: 24, scope: !478)
!589 = !DILocation(line: 123, column: 31, scope: !478)
!590 = !DILocation(line: 123, column: 12, scope: !478)
!591 = !DILocation(line: 124, column: 6, scope: !504)
!592 = !DILocation(line: 124, column: 6, scope: !508)
!593 = !DILocation(line: 124, column: 6, scope: !507)
!594 = !DILocation(line: 124, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !507, file: !3, line: 124, column: 6)
!596 = !DILocation(line: 124, column: 6, scope: !597)
!597 = distinct !DILexicalBlock(scope: !507, file: !3, line: 124, column: 6)
!598 = !{i64 2155258783, i64 2155258812, i64 2155258858, i64 2155258916, i64 2155258970, i64 2155259024, i64 2155259079, i64 2155259110, i64 2155259418, i64 2155259424, i64 2155259471, i64 2155259494, i64 2155259520}
!599 = !DILocation(line: 124, column: 6, scope: !600)
!600 = distinct !DILexicalBlock(scope: !507, file: !3, line: 124, column: 6)
!601 = !DILocation(line: 124, column: 6, scope: !505)
!602 = !DILocation(line: 124, column: 6, scope: !478)
!603 = !DILocation(line: 125, column: 3, scope: !505)
!604 = !DILocation(line: 127, column: 20, scope: !478)
!605 = !DILocation(line: 127, column: 12, scope: !478)
!606 = !DILocation(line: 127, column: 2, scope: !478)
!607 = !DILocation(line: 127, column: 18, scope: !478)
!608 = !DILocation(line: 131, column: 11, scope: !478)
!609 = !DILocation(line: 131, column: 9, scope: !478)
!610 = !DILocation(line: 132, column: 12, scope: !478)
!611 = !DILocation(line: 133, column: 9, scope: !478)
!612 = !DILocation(line: 133, column: 37, scope: !478)
!613 = !DILocation(line: 133, column: 35, scope: !478)
!614 = !DILocation(line: 133, column: 7, scope: !478)
!615 = !DILocation(line: 138, column: 12, scope: !478)
!616 = !DILocation(line: 138, column: 17, scope: !478)
!617 = !DILocation(line: 138, column: 10, scope: !478)
!618 = !DILocation(line: 139, column: 6, scope: !510)
!619 = !DILocation(line: 139, column: 6, scope: !514)
!620 = !DILocation(line: 139, column: 6, scope: !513)
!621 = !DILocation(line: 139, column: 6, scope: !622)
!622 = distinct !DILexicalBlock(scope: !513, file: !3, line: 139, column: 6)
!623 = !DILocation(line: 139, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !513, file: !3, line: 139, column: 6)
!625 = !{i64 2155260923, i64 2155260952, i64 2155260998, i64 2155261056, i64 2155261110, i64 2155261164, i64 2155261219, i64 2155261250, i64 2155261558, i64 2155261564, i64 2155261611, i64 2155261634, i64 2155261660}
!626 = !DILocation(line: 139, column: 6, scope: !627)
!627 = distinct !DILexicalBlock(scope: !513, file: !3, line: 139, column: 6)
!628 = !DILocation(line: 139, column: 6, scope: !511)
!629 = !DILocation(line: 139, column: 6, scope: !478)
!630 = !DILocation(line: 140, column: 3, scope: !511)
!631 = !DILocation(line: 145, column: 40, scope: !478)
!632 = !DILocation(line: 145, column: 39, scope: !478)
!633 = !DILocation(line: 145, column: 24, scope: !478)
!634 = !DILocation(line: 145, column: 6, scope: !478)
!635 = !DILocation(line: 146, column: 2, scope: !478)
!636 = !DILocation(line: 146, column: 9, scope: !478)
!637 = !DILocation(line: 146, column: 17, scope: !478)
!638 = !DILocation(line: 147, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 147, column: 7)
!640 = distinct !DILexicalBlock(scope: !478, file: !3, line: 146, column: 22)
!641 = !DILocation(line: 147, column: 7, scope: !640)
!642 = !DILocation(line: 148, column: 4, scope: !639)
!643 = !DILocation(line: 150, column: 23, scope: !639)
!644 = !DILocation(line: 150, column: 28, scope: !639)
!645 = !DILocation(line: 150, column: 4, scope: !639)
!646 = !DILocation(line: 151, column: 13, scope: !640)
!647 = !DILocation(line: 152, column: 3, scope: !640)
!648 = !DILocation(line: 153, column: 3, scope: !640)
!649 = distinct !{!649, !635, !650, !199, !200}
!650 = !DILocation(line: 154, column: 2, scope: !478)
!651 = !DILocation(line: 155, column: 2, scope: !516)
!652 = !DILocation(line: 155, column: 2, scope: !520)
!653 = !DILocation(line: 155, column: 2, scope: !519)
!654 = !DILocation(line: 155, column: 2, scope: !655)
!655 = distinct !DILexicalBlock(scope: !519, file: !3, line: 155, column: 2)
!656 = !DILocation(line: 155, column: 2, scope: !518)
!657 = !DILocation(line: 155, column: 2, scope: !658)
!658 = distinct !DILexicalBlock(scope: !518, file: !3, line: 155, column: 2)
!659 = !DILocation(line: 155, column: 2, scope: !660)
!660 = distinct !DILexicalBlock(scope: !518, file: !3, line: 155, column: 2)
!661 = !{i64 2155262955, i64 2155262984, i64 2155263030, i64 2155263088, i64 2155263142, i64 2155263196, i64 2155263251, i64 2155263282, i64 2155263590, i64 2155263596, i64 2155263643, i64 2155263666, i64 2155263692}
!662 = !DILocation(line: 155, column: 2, scope: !663)
!663 = distinct !DILexicalBlock(scope: !518, file: !3, line: 155, column: 2)
!664 = !DILocation(line: 155, column: 2, scope: !665)
!665 = distinct !DILexicalBlock(scope: !519, file: !3, line: 155, column: 2)
!666 = !DILocation(line: 155, column: 2, scope: !478)
!667 = !DILocation(line: 158, column: 36, scope: !478)
!668 = !DILocation(line: 158, column: 55, scope: !478)
!669 = !DILocation(line: 158, column: 45, scope: !478)
!670 = !DILocation(line: 158, column: 43, scope: !478)
!671 = !DILocation(line: 158, column: 19, scope: !478)
!672 = !DILocation(line: 158, column: 11, scope: !478)
!673 = !DILocation(line: 158, column: 2, scope: !478)
!674 = !DILocation(line: 158, column: 17, scope: !478)
!675 = !DILocation(line: 159, column: 18, scope: !478)
!676 = !DILocation(line: 159, column: 9, scope: !478)
!677 = !DILocation(line: 159, column: 2, scope: !478)
!678 = !DILocation(line: 160, column: 1, scope: !478)
!679 = distinct !DISubprogram(name: "early_memremap", scope: !3, file: !3, line: 218, type: !466, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !680)
!680 = !{!681, !682, !683}
!681 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !679, file: !3, line: 218, type: !36)
!682 = !DILocalVariable(name: "size", arg: 2, scope: !679, file: !3, line: 218, type: !32)
!683 = !DILocalVariable(name: "prot", scope: !679, file: !3, line: 220, type: !141)
!684 = !DILocation(line: 218, column: 32, scope: !679)
!685 = !DILocation(line: 218, column: 57, scope: !679)
!686 = !DILocation(line: 220, column: 2, scope: !679)
!687 = !DILocation(line: 220, column: 11, scope: !679)
!688 = !DILocation(line: 220, column: 47, scope: !679)
!689 = !DILocation(line: 220, column: 58, scope: !679)
!690 = !DILocation(line: 221, column: 12, scope: !679)
!691 = !DILocation(line: 220, column: 18, scope: !679)
!692 = !DILocation(line: 223, column: 41, scope: !679)
!693 = !DILocation(line: 223, column: 52, scope: !679)
!694 = !DILocation(line: 223, column: 25, scope: !679)
!695 = !DILocation(line: 224, column: 1, scope: !679)
!696 = !DILocation(line: 223, column: 2, scope: !679)
!697 = distinct !DISubprogram(name: "early_memremap_ro", scope: !3, file: !3, line: 227, type: !466, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !698)
!698 = !{!699, !700, !701}
!699 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !697, file: !3, line: 227, type: !36)
!700 = !DILocalVariable(name: "size", arg: 2, scope: !697, file: !3, line: 227, type: !32)
!701 = !DILocalVariable(name: "prot", scope: !697, file: !3, line: 229, type: !141)
!702 = !DILocation(line: 227, column: 35, scope: !697)
!703 = !DILocation(line: 227, column: 60, scope: !697)
!704 = !DILocation(line: 229, column: 2, scope: !697)
!705 = !DILocation(line: 229, column: 11, scope: !697)
!706 = !DILocation(line: 229, column: 47, scope: !697)
!707 = !DILocation(line: 229, column: 58, scope: !697)
!708 = !DILocation(line: 230, column: 12, scope: !697)
!709 = !DILocation(line: 229, column: 18, scope: !697)
!710 = !DILocation(line: 232, column: 41, scope: !697)
!711 = !DILocation(line: 232, column: 52, scope: !697)
!712 = !DILocation(line: 232, column: 25, scope: !697)
!713 = !DILocation(line: 233, column: 1, scope: !697)
!714 = !DILocation(line: 232, column: 2, scope: !697)
!715 = distinct !DISubprogram(name: "early_memremap_prot", scope: !3, file: !3, line: 238, type: !716, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{!33, !36, !32, !32}
!718 = !{!719, !720, !721}
!719 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !715, file: !3, line: 238, type: !36)
!720 = !DILocalVariable(name: "size", arg: 2, scope: !715, file: !3, line: 238, type: !32)
!721 = !DILocalVariable(name: "prot_val", arg: 3, scope: !715, file: !3, line: 239, type: !32)
!722 = !DILocation(line: 238, column: 37, scope: !715)
!723 = !DILocation(line: 238, column: 62, scope: !715)
!724 = !DILocation(line: 239, column: 21, scope: !715)
!725 = !DILocation(line: 241, column: 41, scope: !715)
!726 = !DILocation(line: 241, column: 52, scope: !715)
!727 = !DILocation(line: 242, column: 13, scope: !715)
!728 = !DILocation(line: 241, column: 25, scope: !715)
!729 = !DILocation(line: 241, column: 2, scope: !715)
!730 = distinct !DISubprogram(name: "copy_from_early_mem", scope: !3, file: !3, line: 248, type: !731, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !33, !38, !32}
!733 = !{!734, !735, !736, !737, !738, !739}
!734 = !DILocalVariable(name: "dest", arg: 1, scope: !730, file: !3, line: 248, type: !33)
!735 = !DILocalVariable(name: "src", arg: 2, scope: !730, file: !3, line: 248, type: !38)
!736 = !DILocalVariable(name: "size", arg: 3, scope: !730, file: !3, line: 248, type: !32)
!737 = !DILocalVariable(name: "slop", scope: !730, file: !3, line: 250, type: !32)
!738 = !DILocalVariable(name: "clen", scope: !730, file: !3, line: 250, type: !32)
!739 = !DILocalVariable(name: "p", scope: !730, file: !3, line: 251, type: !59)
!740 = !DILocation(line: 248, column: 39, scope: !730)
!741 = !DILocation(line: 248, column: 57, scope: !730)
!742 = !DILocation(line: 248, column: 76, scope: !730)
!743 = !DILocation(line: 250, column: 2, scope: !730)
!744 = !DILocation(line: 250, column: 16, scope: !730)
!745 = !DILocation(line: 250, column: 22, scope: !730)
!746 = !DILocation(line: 251, column: 2, scope: !730)
!747 = !DILocation(line: 251, column: 8, scope: !730)
!748 = !DILocation(line: 253, column: 2, scope: !730)
!749 = !DILocation(line: 253, column: 9, scope: !730)
!750 = !DILocation(line: 254, column: 10, scope: !751)
!751 = distinct !DILexicalBlock(scope: !730, file: !3, line: 253, column: 15)
!752 = !DILocation(line: 254, column: 8, scope: !751)
!753 = !DILocation(line: 255, column: 10, scope: !751)
!754 = !DILocation(line: 255, column: 8, scope: !751)
!755 = !DILocation(line: 256, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !751, file: !3, line: 256, column: 7)
!757 = !DILocation(line: 256, column: 30, scope: !756)
!758 = !DILocation(line: 256, column: 28, scope: !756)
!759 = !DILocation(line: 256, column: 12, scope: !756)
!760 = !DILocation(line: 256, column: 7, scope: !751)
!761 = !DILocation(line: 257, column: 27, scope: !756)
!762 = !DILocation(line: 257, column: 25, scope: !756)
!763 = !DILocation(line: 257, column: 9, scope: !756)
!764 = !DILocation(line: 257, column: 4, scope: !756)
!765 = !DILocation(line: 258, column: 22, scope: !751)
!766 = !DILocation(line: 258, column: 26, scope: !751)
!767 = !DILocation(line: 258, column: 39, scope: !751)
!768 = !DILocation(line: 258, column: 46, scope: !751)
!769 = !DILocation(line: 258, column: 44, scope: !751)
!770 = !DILocation(line: 258, column: 7, scope: !751)
!771 = !DILocation(line: 258, column: 5, scope: !751)
!772 = !DILocation(line: 259, column: 10, scope: !751)
!773 = !DILocation(line: 259, column: 16, scope: !751)
!774 = !DILocation(line: 259, column: 20, scope: !751)
!775 = !DILocation(line: 259, column: 18, scope: !751)
!776 = !DILocation(line: 259, column: 26, scope: !751)
!777 = !DILocation(line: 259, column: 3, scope: !751)
!778 = !DILocation(line: 260, column: 18, scope: !751)
!779 = !DILocation(line: 260, column: 21, scope: !751)
!780 = !DILocation(line: 260, column: 28, scope: !751)
!781 = !DILocation(line: 260, column: 26, scope: !751)
!782 = !DILocation(line: 260, column: 3, scope: !751)
!783 = !DILocation(line: 261, column: 11, scope: !751)
!784 = !DILocation(line: 261, column: 8, scope: !751)
!785 = !DILocation(line: 262, column: 10, scope: !751)
!786 = !DILocation(line: 262, column: 7, scope: !751)
!787 = !DILocation(line: 263, column: 11, scope: !751)
!788 = !DILocation(line: 263, column: 8, scope: !751)
!789 = distinct !{!789, !748, !790, !199, !200}
!790 = !DILocation(line: 264, column: 2, scope: !730)
!791 = !DILocation(line: 265, column: 1, scope: !730)
!792 = distinct !DISubprogram(name: "early_memunmap", scope: !3, file: !3, line: 294, type: !260, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !793)
!793 = !{!794, !795}
!794 = !DILocalVariable(name: "addr", arg: 1, scope: !792, file: !3, line: 294, type: !33)
!795 = !DILocalVariable(name: "size", arg: 2, scope: !792, file: !3, line: 294, type: !32)
!796 = !DILocation(line: 294, column: 34, scope: !792)
!797 = !DILocation(line: 294, column: 54, scope: !792)
!798 = !DILocation(line: 296, column: 40, scope: !792)
!799 = !DILocation(line: 296, column: 46, scope: !792)
!800 = !DILocation(line: 296, column: 2, scope: !792)
!801 = !DILocation(line: 297, column: 1, scope: !792)
!802 = !DISubprogram(name: "__compiletime_assert_205", scope: !435, file: !435, line: 32, type: !157, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!803 = !DISubprogram(name: "native_set_fixmap", scope: !6, file: !6, line: 160, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !7, !38, !141}
