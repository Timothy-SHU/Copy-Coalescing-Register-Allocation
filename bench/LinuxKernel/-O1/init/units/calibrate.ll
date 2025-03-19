; ModuleID = 'init/calibrate.c'
source_filename = "init/calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }

@__setup_str_lpj_setup = internal constant [5 x i8] c"lpj=\00", section ".init.rodata", align 1, !dbg !0
@__setup_lpj_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_lpj_setup, ptr @lpj_setup, i32 0 }, section ".init.setup", align 8, !dbg !19
@calibrate_delay.printed = internal global i8 0, align 1, !dbg !34
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !75
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@cpu_loops_per_jiffy = internal global i64 0, section ".data..percpu", align 8, !dbg !114
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.1 = private unnamed_addr constant [63 x i8] c"\016Calibrating delay loop (skipped) already calibrated this CPU\00", align 1, !dbg !80
@preset_lpj = hidden global i64 0, align 8, !dbg !112
@.str.2 = private unnamed_addr constant [51 x i8] c"\016Calibrating delay loop (skipped) preset value.. \00", align 1, !dbg !85
@lpj_fine = hidden global i64 0, align 8, !dbg !110
@.str.3 = private unnamed_addr constant [78 x i8] c"\016Calibrating delay loop (skipped), value calculated using timer frequency.. \00", align 1, !dbg !90
@.str.4 = private unnamed_addr constant [52 x i8] c"\016Calibrating delay using timer specific routine.. \00", align 1, !dbg !95
@.str.5 = private unnamed_addr constant [29 x i8] c"\016Calibrating delay loop... \00", align 1, !dbg !100
@.str.6 = private unnamed_addr constant [32 x i8] c"\01c%lu.%02lu BogoMIPS (lpj=%lu)\0A\00", align 1, !dbg !105
@loops_per_jiffy = external dso_local global i64, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [101 x i8] c"\015calibrate_delay_direct() ignoring timer_rate as we had a TSC wrap around start=%lu >=post_end=%lu\0A\00", align 1, !dbg !116
@.str.8 = private unnamed_addr constant [68 x i8] c"\015calibrate_delay_direct() dropping min bogoMips estimate %d = %lu\0A\00", align 1, !dbg !121
@.str.9 = private unnamed_addr constant [68 x i8] c"\015calibrate_delay_direct() dropping max bogoMips estimate %d = %lu\0A\00", align 1, !dbg !126
@.str.10 = private unnamed_addr constant [156 x i8] c"\015calibrate_delay_direct() failed to get a good estimate for loops_per_jiffy.\0AProbably due to long platform interrupts. Consider using \22lpj=\22 boot option.\0A\00", align 1, !dbg !128
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_lpj_setup], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @lpj_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !143 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load ptr, ptr %str.addr, align 8, !dbg !147
  %call = call i64 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 0) #7, !dbg !148
  store i64 %call, ptr @preset_lpj, align 8, !dbg !149
  ret i32 1, !dbg !150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @calibrate_delay_is_known() #1 align 16 !dbg !151 {
entry:
  ret i64 0, !dbg !154
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @calibration_delay_done() #1 align 16 !dbg !155 {
entry:
  ret void, !dbg !156
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @calibrate_delay() #1 align 16 !dbg !36 {
entry:
  %lpj = alloca i64, align 8
  %this_cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__vpp_verify5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %__vpp_verify11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__ptr15 = alloca i64, align 8
  %tmp16 = alloca ptr, align 8
  %tmp25 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %__vpp_verify77 = alloca ptr, align 8
  %tmp80 = alloca ptr, align 8
  %__ptr81 = alloca i64, align 8
  %tmp82 = alloca ptr, align 8
  %tmp91 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpj) #8, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %lpj, metadata !40, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #8, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !41, metadata !DIExpression()), !dbg !160
  call void @__this_cpu_preempt_check(ptr noundef @.str) #7, !dbg !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #8, !dbg !162
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !42, metadata !DIExpression()), !dbg !162
  br label %do.body, !dbg !162

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !163
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !45, metadata !DIExpression()), !dbg !163
  store ptr null, ptr %__vpp_verify, align 8, !dbg !163
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !162
  br label %do.cond, !dbg !163

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !163

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #8, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !49, metadata !DIExpression()), !dbg !164
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #9, !dbg !164, !srcloc !165
  store i32 %1, ptr %pfo_val__, align 4, !dbg !164
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !164
  %conv = zext i32 %2 to i64, !dbg !164
  %conv2 = trunc i64 %conv to i32, !dbg !164
  store i32 %conv2, ptr %tmp1, align 4, !dbg !164
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #8, !dbg !162
  %3 = load i32, ptr %tmp1, align 4, !dbg !164
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !162
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !162
  store i32 %4, ptr %tmp3, align 4, !dbg !162
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #8, !dbg !161
  %5 = load i32, ptr %tmp3, align 4, !dbg !162
  store i32 %5, ptr %tmp, align 4, !dbg !161
  %6 = load i32, ptr %tmp, align 4, !dbg !161
  store i32 %6, ptr %this_cpu, align 4, !dbg !160
  br label %do.body4, !dbg !166

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify5) #8, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify5, metadata !55, metadata !DIExpression()), !dbg !167
  store ptr null, ptr %__vpp_verify5, align 8, !dbg !167
  %7 = load ptr, ptr %__vpp_verify5, align 8, !dbg !167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify5) #8, !dbg !166
  br label %do.cond6, !dbg !167

do.cond6:                                         ; preds = %do.body4
  br label %do.end7, !dbg !167

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !59, metadata !DIExpression()), !dbg !168
  store i64 ptrtoint (ptr @cpu_loops_per_jiffy to i64), ptr %__ptr, align 8, !dbg !168
  %8 = load i64, ptr %__ptr, align 8, !dbg !168
  %9 = load i32, ptr %this_cpu, align 4, !dbg !168
  %idxprom = sext i32 %9 to i64, !dbg !168
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !168
  %10 = load i64, ptr %arrayidx, align 8, !dbg !168
  %add = add i64 %8, %10, !dbg !168
  %11 = inttoptr i64 %add to ptr, !dbg !168
  store ptr %11, ptr %tmp9, align 8, !dbg !168
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !166
  %12 = load ptr, ptr %tmp9, align 8, !dbg !168
  store ptr %12, ptr %tmp8, align 8, !dbg !167
  %13 = load ptr, ptr %tmp8, align 8, !dbg !166
  %14 = load i64, ptr %13, align 8, !dbg !169
  %tobool = icmp ne i64 %14, 0, !dbg !169
  br i1 %tobool, label %if.then, label %if.else, !dbg !170

if.then:                                          ; preds = %do.end7
  br label %do.body10, !dbg !171

do.body10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify11) #8, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify11, metadata !61, metadata !DIExpression()), !dbg !172
  store ptr null, ptr %__vpp_verify11, align 8, !dbg !172
  %15 = load ptr, ptr %__vpp_verify11, align 8, !dbg !172
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify11) #8, !dbg !171
  br label %do.cond12, !dbg !172

do.cond12:                                        ; preds = %do.body10
  br label %do.end13, !dbg !172

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr15) #8, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %__ptr15, metadata !65, metadata !DIExpression()), !dbg !173
  store i64 ptrtoint (ptr @cpu_loops_per_jiffy to i64), ptr %__ptr15, align 8, !dbg !173
  %16 = load i64, ptr %__ptr15, align 8, !dbg !173
  %17 = load i32, ptr %this_cpu, align 4, !dbg !173
  %idxprom17 = sext i32 %17 to i64, !dbg !173
  %arrayidx18 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom17, !dbg !173
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !173
  %add19 = add i64 %16, %18, !dbg !173
  %19 = inttoptr i64 %add19 to ptr, !dbg !173
  store ptr %19, ptr %tmp16, align 8, !dbg !173
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr15) #8, !dbg !171
  %20 = load ptr, ptr %tmp16, align 8, !dbg !173
  store ptr %20, ptr %tmp14, align 8, !dbg !172
  %21 = load ptr, ptr %tmp14, align 8, !dbg !171
  %22 = load i64, ptr %21, align 8, !dbg !174
  store i64 %22, ptr %lpj, align 8, !dbg !175
  %23 = load i8, ptr @calibrate_delay.printed, align 1, !dbg !176, !range !178, !noundef !179
  %tobool20 = trunc i8 %23 to i1, !dbg !176
  br i1 %tobool20, label %if.end, label %if.then21, !dbg !180

if.then21:                                        ; preds = %do.end13
  br label %do.body22, !dbg !181

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !183

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !183

do.end24:                                         ; preds = %do.cond23
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #10, !dbg !181
  store i32 %call, ptr %tmp25, align 4, !dbg !183
  %24 = load i32, ptr %tmp25, align 4, !dbg !181
  br label %if.end, !dbg !185

if.end:                                           ; preds = %do.end24, %do.end13
  br label %if.end75, !dbg !186

if.else:                                          ; preds = %do.end7
  %25 = load i64, ptr @preset_lpj, align 8, !dbg !187
  %tobool26 = icmp ne i64 %25, 0, !dbg !187
  br i1 %tobool26, label %if.then27, label %if.else36, !dbg !189

if.then27:                                        ; preds = %if.else
  %26 = load i64, ptr @preset_lpj, align 8, !dbg !190
  store i64 %26, ptr %lpj, align 8, !dbg !192
  %27 = load i8, ptr @calibrate_delay.printed, align 1, !dbg !193, !range !178, !noundef !179
  %tobool28 = trunc i8 %27 to i1, !dbg !193
  br i1 %tobool28, label %if.end35, label %if.then29, !dbg !195

if.then29:                                        ; preds = %if.then27
  br label %do.body30, !dbg !196

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !198

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !198

do.end32:                                         ; preds = %do.cond31
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #10, !dbg !196
  store i32 %call34, ptr %tmp33, align 4, !dbg !198
  %28 = load i32, ptr %tmp33, align 4, !dbg !196
  br label %if.end35, !dbg !200

if.end35:                                         ; preds = %do.end32, %if.then27
  br label %if.end74, !dbg !201

if.else36:                                        ; preds = %if.else
  %29 = load i8, ptr @calibrate_delay.printed, align 1, !dbg !202, !range !178, !noundef !179
  %tobool37 = trunc i8 %29 to i1, !dbg !202
  br i1 %tobool37, label %if.else45, label %land.lhs.true, !dbg !204

land.lhs.true:                                    ; preds = %if.else36
  %30 = load i64, ptr @lpj_fine, align 8, !dbg !205
  %tobool38 = icmp ne i64 %30, 0, !dbg !205
  br i1 %tobool38, label %if.then39, label %if.else45, !dbg !206

if.then39:                                        ; preds = %land.lhs.true
  %31 = load i64, ptr @lpj_fine, align 8, !dbg !207
  store i64 %31, ptr %lpj, align 8, !dbg !209
  br label %do.body40, !dbg !210

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !212

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !212

do.end42:                                         ; preds = %do.cond41
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #10, !dbg !210
  store i32 %call44, ptr %tmp43, align 4, !dbg !212
  %32 = load i32, ptr %tmp43, align 4, !dbg !210
  br label %if.end73, !dbg !214

if.else45:                                        ; preds = %land.lhs.true, %if.else36
  %call46 = call i64 @calibrate_delay_is_known() #7, !dbg !215
  store i64 %call46, ptr %lpj, align 8, !dbg !217
  %tobool47 = icmp ne i64 %call46, 0, !dbg !217
  br i1 %tobool47, label %if.then48, label %if.else49, !dbg !218

if.then48:                                        ; preds = %if.else45
  br label %if.end72, !dbg !219

if.else49:                                        ; preds = %if.else45
  %call50 = call i64 @calibrate_delay_direct() #7, !dbg !221
  store i64 %call50, ptr %lpj, align 8, !dbg !223
  %cmp = icmp ne i64 %call50, 0, !dbg !224
  br i1 %cmp, label %if.then52, label %if.else61, !dbg !225

if.then52:                                        ; preds = %if.else49
  %33 = load i8, ptr @calibrate_delay.printed, align 1, !dbg !226, !range !178, !noundef !179
  %tobool53 = trunc i8 %33 to i1, !dbg !226
  br i1 %tobool53, label %if.end60, label %if.then54, !dbg !229

if.then54:                                        ; preds = %if.then52
  br label %do.body55, !dbg !230

do.body55:                                        ; preds = %if.then54
  br label %do.cond56, !dbg !232

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !232

do.end57:                                         ; preds = %do.cond56
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #10, !dbg !230
  store i32 %call59, ptr %tmp58, align 4, !dbg !232
  %34 = load i32, ptr %tmp58, align 4, !dbg !230
  br label %if.end60, !dbg !234

if.end60:                                         ; preds = %do.end57, %if.then52
  br label %if.end71, !dbg !235

if.else61:                                        ; preds = %if.else49
  %35 = load i8, ptr @calibrate_delay.printed, align 1, !dbg !236, !range !178, !noundef !179
  %tobool62 = trunc i8 %35 to i1, !dbg !236
  br i1 %tobool62, label %if.end69, label %if.then63, !dbg !239

if.then63:                                        ; preds = %if.else61
  br label %do.body64, !dbg !240

do.body64:                                        ; preds = %if.then63
  br label %do.cond65, !dbg !242

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !242

do.end66:                                         ; preds = %do.cond65
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #10, !dbg !240
  store i32 %call68, ptr %tmp67, align 4, !dbg !242
  %36 = load i32, ptr %tmp67, align 4, !dbg !240
  br label %if.end69, !dbg !244

if.end69:                                         ; preds = %do.end66, %if.else61
  %call70 = call i64 @calibrate_delay_converge() #7, !dbg !245
  store i64 %call70, ptr %lpj, align 8, !dbg !246
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %if.end60
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then48
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %do.end42
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end35
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end
  %37 = load i64, ptr %lpj, align 8, !dbg !247
  br label %do.body76, !dbg !248

do.body76:                                        ; preds = %if.end75
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify77) #8, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify77, metadata !67, metadata !DIExpression()), !dbg !249
  store ptr null, ptr %__vpp_verify77, align 8, !dbg !249
  %38 = load ptr, ptr %__vpp_verify77, align 8, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify77) #8, !dbg !248
  br label %do.cond78, !dbg !249

do.cond78:                                        ; preds = %do.body76
  br label %do.end79, !dbg !249

do.end79:                                         ; preds = %do.cond78
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr81) #8, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %__ptr81, metadata !70, metadata !DIExpression()), !dbg !250
  store i64 ptrtoint (ptr @cpu_loops_per_jiffy to i64), ptr %__ptr81, align 8, !dbg !250
  %39 = load i64, ptr %__ptr81, align 8, !dbg !250
  %40 = load i32, ptr %this_cpu, align 4, !dbg !250
  %idxprom83 = sext i32 %40 to i64, !dbg !250
  %arrayidx84 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom83, !dbg !250
  %41 = load i64, ptr %arrayidx84, align 8, !dbg !250
  %add85 = add i64 %39, %41, !dbg !250
  %42 = inttoptr i64 %add85 to ptr, !dbg !250
  store ptr %42, ptr %tmp82, align 8, !dbg !250
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr81) #8, !dbg !248
  %43 = load ptr, ptr %tmp82, align 8, !dbg !250
  store ptr %43, ptr %tmp80, align 8, !dbg !249
  %44 = load ptr, ptr %tmp80, align 8, !dbg !248
  store i64 %37, ptr %44, align 8, !dbg !251
  %45 = load i8, ptr @calibrate_delay.printed, align 1, !dbg !252, !range !178, !noundef !179
  %tobool86 = trunc i8 %45 to i1, !dbg !252
  br i1 %tobool86, label %if.end94, label %if.then87, !dbg !254

if.then87:                                        ; preds = %do.end79
  br label %do.body88, !dbg !255

do.body88:                                        ; preds = %if.then87
  br label %do.cond89, !dbg !257

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !257

do.end90:                                         ; preds = %do.cond89
  %46 = load i64, ptr %lpj, align 8, !dbg !255
  %div = udiv i64 %46, 500, !dbg !255
  %47 = load i64, ptr %lpj, align 8, !dbg !255
  %div92 = udiv i64 %47, 5, !dbg !255
  %rem = urem i64 %div92, 100, !dbg !255
  %48 = load i64, ptr %lpj, align 8, !dbg !255
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i64 noundef %div, i64 noundef %rem, i64 noundef %48) #10, !dbg !255
  store i32 %call93, ptr %tmp91, align 4, !dbg !257
  %49 = load i32, ptr %tmp91, align 4, !dbg !255
  br label %if.end94, !dbg !259

if.end94:                                         ; preds = %do.end90, %do.end79
  %50 = load i64, ptr %lpj, align 8, !dbg !260
  store i64 %50, ptr @loops_per_jiffy, align 8, !dbg !261
  store i8 1, ptr @calibrate_delay.printed, align 1, !dbg !262
  call void @calibration_delay_done() #7, !dbg !263
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #8, !dbg !264
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpj) #8, !dbg !264
  ret void, !dbg !264
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !265 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !270, metadata !DIExpression()), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !273 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @calibrate_delay_direct() #1 align 16 !dbg !277 {
entry:
  %retval = alloca i64, align 8
  %pre_start = alloca i64, align 8
  %start = alloca i64, align 8
  %post_start = alloca i64, align 8
  %pre_end = alloca i64, align 8
  %end = alloca i64, align 8
  %post_end = alloca i64, align 8
  %start_jiffies = alloca i64, align 8
  %timer_rate_min = alloca i64, align 8
  %timer_rate_max = alloca i64, align 8
  %good_timer_sum = alloca i64, align 8
  %good_timer_count = alloca i64, align 8
  %measured_times = alloca [5 x i64], align 16
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %estimate = alloca i64, align 8
  %maxdiff = alloca i64, align 8
  %tmp72 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %tmp123 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pre_start) #8, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %pre_start, metadata !279, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #8, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %start, metadata !280, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 8, ptr %post_start) #8, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %post_start, metadata !281, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 8, ptr %pre_end) #8, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %pre_end, metadata !282, metadata !DIExpression()), !dbg !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #8, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %end, metadata !283, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 8, ptr %post_end) #8, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %post_end, metadata !284, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_jiffies) #8, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %start_jiffies, metadata !285, metadata !DIExpression()), !dbg !307
  call void @llvm.lifetime.start.p0(i64 8, ptr %timer_rate_min) #8, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %timer_rate_min, metadata !286, metadata !DIExpression()), !dbg !309
  call void @llvm.lifetime.start.p0(i64 8, ptr %timer_rate_max) #8, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %timer_rate_max, metadata !287, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 8, ptr %good_timer_sum) #8, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %good_timer_sum, metadata !288, metadata !DIExpression()), !dbg !312
  store i64 0, ptr %good_timer_sum, align 8, !dbg !312
  call void @llvm.lifetime.start.p0(i64 8, ptr %good_timer_count) #8, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %good_timer_count, metadata !289, metadata !DIExpression()), !dbg !314
  store i64 0, ptr %good_timer_count, align 8, !dbg !314
  call void @llvm.lifetime.start.p0(i64 40, ptr %measured_times) #8, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %measured_times, metadata !290, metadata !DIExpression()), !dbg !316
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #8, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %max, metadata !292, metadata !DIExpression()), !dbg !318
  store i32 -1, ptr %max, align 4, !dbg !318
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #8, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %min, metadata !293, metadata !DIExpression()), !dbg !320
  store i32 -1, ptr %min, align 4, !dbg !320
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %i, metadata !294, metadata !DIExpression()), !dbg !322
  %call = call i32 @read_current_timer(ptr noundef %pre_start) #7, !dbg !323
  %cmp = icmp slt i32 %call, 0, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup125, !dbg !327

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !328
  br label %for.cond, !dbg !330

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !dbg !331
  %cmp1 = icmp slt i32 %0, 5, !dbg !333
  br i1 %cmp1, label %for.body, label %for.end, !dbg !334

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %pre_start, align 8, !dbg !335
  %call2 = call i32 @read_current_timer(ptr noundef %start) #7, !dbg !337
  %1 = load volatile i64, ptr @jiffies, align 64, !dbg !338
  store i64 %1, ptr %start_jiffies, align 8, !dbg !339
  br label %while.cond, !dbg !340

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i64, ptr %start_jiffies, align 8, !dbg !341
  %add = add i64 %2, 1, !dbg !341
  %3 = load volatile i64, ptr @jiffies, align 64, !dbg !341
  %sub = sub i64 %add, %3, !dbg !341
  %cmp3 = icmp sge i64 %sub, 0, !dbg !341
  br i1 %cmp3, label %while.body, label %while.end, !dbg !340

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %start, align 8, !dbg !342
  store i64 %4, ptr %pre_start, align 8, !dbg !344
  %call4 = call i32 @read_current_timer(ptr noundef %start) #7, !dbg !345
  br label %while.cond, !dbg !340, !llvm.loop !346

while.end:                                        ; preds = %while.cond
  %call5 = call i32 @read_current_timer(ptr noundef %post_start) #7, !dbg !350
  store i64 0, ptr %pre_end, align 8, !dbg !351
  %5 = load i64, ptr %post_start, align 8, !dbg !352
  store i64 %5, ptr %end, align 8, !dbg !353
  br label %while.cond6, !dbg !354

while.cond6:                                      ; preds = %while.body11, %while.end
  %6 = load i64, ptr %start_jiffies, align 8, !dbg !355
  %add7 = add i64 %6, 1, !dbg !355
  %add8 = add i64 %add7, 10, !dbg !355
  %7 = load volatile i64, ptr @jiffies, align 64, !dbg !355
  %sub9 = sub i64 %add8, %7, !dbg !355
  %cmp10 = icmp sge i64 %sub9, 0, !dbg !355
  br i1 %cmp10, label %while.body11, label %while.end13, !dbg !354

while.body11:                                     ; preds = %while.cond6
  %8 = load i64, ptr %end, align 8, !dbg !356
  store i64 %8, ptr %pre_end, align 8, !dbg !358
  %call12 = call i32 @read_current_timer(ptr noundef %end) #7, !dbg !359
  br label %while.cond6, !dbg !354, !llvm.loop !360

while.end13:                                      ; preds = %while.cond6
  %call14 = call i32 @read_current_timer(ptr noundef %post_end) #7, !dbg !362
  %9 = load i64, ptr %post_end, align 8, !dbg !363
  %10 = load i64, ptr %pre_start, align 8, !dbg !364
  %sub15 = sub i64 %9, %10, !dbg !365
  %div = udiv i64 %sub15, 10, !dbg !366
  store i64 %div, ptr %timer_rate_max, align 8, !dbg !367
  %11 = load i64, ptr %pre_end, align 8, !dbg !368
  %12 = load i64, ptr %post_start, align 8, !dbg !369
  %sub16 = sub i64 %11, %12, !dbg !370
  %div17 = udiv i64 %sub16, 10, !dbg !371
  store i64 %div17, ptr %timer_rate_min, align 8, !dbg !372
  %13 = load i64, ptr %start, align 8, !dbg !373
  %14 = load i64, ptr %post_end, align 8, !dbg !375
  %cmp18 = icmp uge i64 %13, %14, !dbg !376
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !377

if.then19:                                        ; preds = %while.end13
  br label %do.body, !dbg !378

do.body:                                          ; preds = %if.then19
  br label %do.cond, !dbg !380

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !380

do.end:                                           ; preds = %do.cond
  %15 = load i64, ptr %start, align 8, !dbg !378
  %16 = load i64, ptr %post_end, align 8, !dbg !378
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i64 noundef %15, i64 noundef %16) #10, !dbg !378
  store i32 %call20, ptr %tmp, align 4, !dbg !380
  %17 = load i32, ptr %tmp, align 4, !dbg !378
  br label %if.end21, !dbg !382

if.end21:                                         ; preds = %do.end, %while.end13
  %18 = load i64, ptr %start, align 8, !dbg !383
  %19 = load i64, ptr %post_end, align 8, !dbg !385
  %cmp22 = icmp ult i64 %18, %19, !dbg !386
  br i1 %cmp22, label %land.lhs.true, label %if.else, !dbg !387

land.lhs.true:                                    ; preds = %if.end21
  %20 = load i64, ptr %pre_start, align 8, !dbg !388
  %cmp23 = icmp ne i64 %20, 0, !dbg !389
  br i1 %cmp23, label %land.lhs.true24, label %if.else, !dbg !390

land.lhs.true24:                                  ; preds = %land.lhs.true
  %21 = load i64, ptr %pre_end, align 8, !dbg !391
  %cmp25 = icmp ne i64 %21, 0, !dbg !392
  br i1 %cmp25, label %land.lhs.true26, label %if.else, !dbg !393

land.lhs.true26:                                  ; preds = %land.lhs.true24
  %22 = load i64, ptr %timer_rate_max, align 8, !dbg !394
  %23 = load i64, ptr %timer_rate_min, align 8, !dbg !395
  %sub27 = sub i64 %22, %23, !dbg !396
  %24 = load i64, ptr %timer_rate_max, align 8, !dbg !397
  %shr = lshr i64 %24, 3, !dbg !398
  %cmp28 = icmp ult i64 %sub27, %shr, !dbg !399
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !400

if.then29:                                        ; preds = %land.lhs.true26
  %25 = load i64, ptr %good_timer_count, align 8, !dbg !401
  %inc = add i64 %25, 1, !dbg !401
  store i64 %inc, ptr %good_timer_count, align 8, !dbg !401
  %26 = load i64, ptr %timer_rate_max, align 8, !dbg !403
  %27 = load i64, ptr %good_timer_sum, align 8, !dbg !404
  %add30 = add i64 %27, %26, !dbg !404
  store i64 %add30, ptr %good_timer_sum, align 8, !dbg !404
  %28 = load i64, ptr %timer_rate_max, align 8, !dbg !405
  %29 = load i32, ptr %i, align 4, !dbg !406
  %idxprom = sext i32 %29 to i64, !dbg !407
  %arrayidx = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom, !dbg !407
  store i64 %28, ptr %arrayidx, align 8, !dbg !408
  %30 = load i32, ptr %max, align 4, !dbg !409
  %cmp31 = icmp slt i32 %30, 0, !dbg !411
  br i1 %cmp31, label %if.then35, label %lor.lhs.false, !dbg !412

lor.lhs.false:                                    ; preds = %if.then29
  %31 = load i64, ptr %timer_rate_max, align 8, !dbg !413
  %32 = load i32, ptr %max, align 4, !dbg !414
  %idxprom32 = sext i32 %32 to i64, !dbg !415
  %arrayidx33 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom32, !dbg !415
  %33 = load i64, ptr %arrayidx33, align 8, !dbg !415
  %cmp34 = icmp ugt i64 %31, %33, !dbg !416
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !417

if.then35:                                        ; preds = %lor.lhs.false, %if.then29
  %34 = load i32, ptr %i, align 4, !dbg !418
  store i32 %34, ptr %max, align 4, !dbg !419
  br label %if.end36, !dbg !420

if.end36:                                         ; preds = %if.then35, %lor.lhs.false
  %35 = load i32, ptr %min, align 4, !dbg !421
  %cmp37 = icmp slt i32 %35, 0, !dbg !423
  br i1 %cmp37, label %if.then42, label %lor.lhs.false38, !dbg !424

lor.lhs.false38:                                  ; preds = %if.end36
  %36 = load i64, ptr %timer_rate_max, align 8, !dbg !425
  %37 = load i32, ptr %min, align 4, !dbg !426
  %idxprom39 = sext i32 %37 to i64, !dbg !427
  %arrayidx40 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom39, !dbg !427
  %38 = load i64, ptr %arrayidx40, align 8, !dbg !427
  %cmp41 = icmp ult i64 %36, %38, !dbg !428
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !429

if.then42:                                        ; preds = %lor.lhs.false38, %if.end36
  %39 = load i32, ptr %i, align 4, !dbg !430
  store i32 %39, ptr %min, align 4, !dbg !431
  br label %if.end43, !dbg !432

if.end43:                                         ; preds = %if.then42, %lor.lhs.false38
  br label %if.end46, !dbg !433

if.else:                                          ; preds = %land.lhs.true26, %land.lhs.true24, %land.lhs.true, %if.end21
  %40 = load i32, ptr %i, align 4, !dbg !434
  %idxprom44 = sext i32 %40 to i64, !dbg !435
  %arrayidx45 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom44, !dbg !435
  store i64 0, ptr %arrayidx45, align 8, !dbg !436
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.end43
  br label %for.inc, !dbg !437

for.inc:                                          ; preds = %if.end46
  %41 = load i32, ptr %i, align 4, !dbg !438
  %inc47 = add i32 %41, 1, !dbg !438
  store i32 %inc47, ptr %i, align 4, !dbg !438
  br label %for.cond, !dbg !439, !llvm.loop !440

for.end:                                          ; preds = %for.cond
  br label %while.cond48, !dbg !442

while.cond48:                                     ; preds = %cleanup.cont, %for.end
  %42 = load i64, ptr %good_timer_count, align 8, !dbg !443
  %cmp49 = icmp ugt i64 %42, 1, !dbg !444
  br i1 %cmp49, label %while.body50, label %while.end119, !dbg !442

while.body50:                                     ; preds = %while.cond48
  call void @llvm.lifetime.start.p0(i64 8, ptr %estimate) #8, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %estimate, metadata !295, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxdiff) #8, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %maxdiff, metadata !297, metadata !DIExpression()), !dbg !448
  %43 = load i64, ptr %good_timer_sum, align 8, !dbg !449
  %44 = load i64, ptr %good_timer_count, align 8, !dbg !450
  %div51 = udiv i64 %43, %44, !dbg !451
  store i64 %div51, ptr %estimate, align 8, !dbg !452
  %45 = load i64, ptr %estimate, align 8, !dbg !453
  %shr52 = lshr i64 %45, 3, !dbg !454
  store i64 %shr52, ptr %maxdiff, align 8, !dbg !455
  %46 = load i32, ptr %max, align 4, !dbg !456
  %idxprom53 = sext i32 %46 to i64, !dbg !458
  %arrayidx54 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom53, !dbg !458
  %47 = load i64, ptr %arrayidx54, align 8, !dbg !458
  %48 = load i32, ptr %min, align 4, !dbg !459
  %idxprom55 = sext i32 %48 to i64, !dbg !460
  %arrayidx56 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom55, !dbg !460
  %49 = load i64, ptr %arrayidx56, align 8, !dbg !460
  %sub57 = sub i64 %47, %49, !dbg !461
  %50 = load i64, ptr %maxdiff, align 8, !dbg !462
  %cmp58 = icmp ult i64 %sub57, %50, !dbg !463
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !464

if.then59:                                        ; preds = %while.body50
  %51 = load i64, ptr %estimate, align 8, !dbg !465
  store i64 %51, ptr %retval, align 8, !dbg !466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !466

if.end60:                                         ; preds = %while.body50
  store i64 0, ptr %good_timer_sum, align 8, !dbg !467
  store i64 0, ptr %good_timer_count, align 8, !dbg !468
  %52 = load i32, ptr %max, align 4, !dbg !469
  %idxprom61 = sext i32 %52 to i64, !dbg !471
  %arrayidx62 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom61, !dbg !471
  %53 = load i64, ptr %arrayidx62, align 8, !dbg !471
  %54 = load i64, ptr %estimate, align 8, !dbg !472
  %sub63 = sub i64 %53, %54, !dbg !473
  %55 = load i64, ptr %estimate, align 8, !dbg !474
  %56 = load i32, ptr %min, align 4, !dbg !475
  %idxprom64 = sext i32 %56 to i64, !dbg !476
  %arrayidx65 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom64, !dbg !476
  %57 = load i64, ptr %arrayidx65, align 8, !dbg !476
  %sub66 = sub i64 %55, %57, !dbg !477
  %cmp67 = icmp ult i64 %sub63, %sub66, !dbg !478
  br i1 %cmp67, label %if.then68, label %if.else78, !dbg !479

if.then68:                                        ; preds = %if.end60
  br label %do.body69, !dbg !480

do.body69:                                        ; preds = %if.then68
  br label %do.cond70, !dbg !483

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !483

do.end71:                                         ; preds = %do.cond70
  %58 = load i32, ptr %min, align 4, !dbg !480
  %59 = load i32, ptr %min, align 4, !dbg !480
  %idxprom73 = sext i32 %59 to i64, !dbg !480
  %arrayidx74 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom73, !dbg !480
  %60 = load i64, ptr %arrayidx74, align 8, !dbg !480
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %58, i64 noundef %60) #10, !dbg !480
  store i32 %call75, ptr %tmp72, align 4, !dbg !483
  %61 = load i32, ptr %tmp72, align 4, !dbg !480
  %62 = load i32, ptr %min, align 4, !dbg !485
  %idxprom76 = sext i32 %62 to i64, !dbg !486
  %arrayidx77 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom76, !dbg !486
  store i64 0, ptr %arrayidx77, align 8, !dbg !487
  %63 = load i32, ptr %max, align 4, !dbg !488
  store i32 %63, ptr %min, align 4, !dbg !489
  br label %if.end88, !dbg !490

if.else78:                                        ; preds = %if.end60
  br label %do.body79, !dbg !491

do.body79:                                        ; preds = %if.else78
  br label %do.cond80, !dbg !494

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !494

do.end81:                                         ; preds = %do.cond80
  %64 = load i32, ptr %max, align 4, !dbg !491
  %65 = load i32, ptr %max, align 4, !dbg !491
  %idxprom83 = sext i32 %65 to i64, !dbg !491
  %arrayidx84 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom83, !dbg !491
  %66 = load i64, ptr %arrayidx84, align 8, !dbg !491
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i32 noundef %64, i64 noundef %66) #10, !dbg !491
  store i32 %call85, ptr %tmp82, align 4, !dbg !494
  %67 = load i32, ptr %tmp82, align 4, !dbg !491
  %68 = load i32, ptr %max, align 4, !dbg !496
  %idxprom86 = sext i32 %68 to i64, !dbg !497
  %arrayidx87 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom86, !dbg !497
  store i64 0, ptr %arrayidx87, align 8, !dbg !498
  %69 = load i32, ptr %min, align 4, !dbg !499
  store i32 %69, ptr %max, align 4, !dbg !500
  br label %if.end88

if.end88:                                         ; preds = %do.end81, %do.end71
  store i32 0, ptr %i, align 4, !dbg !501
  br label %for.cond89, !dbg !503

for.cond89:                                       ; preds = %for.inc115, %if.end88
  %70 = load i32, ptr %i, align 4, !dbg !504
  %cmp90 = icmp slt i32 %70, 5, !dbg !506
  br i1 %cmp90, label %for.body91, label %for.end117, !dbg !507

for.body91:                                       ; preds = %for.cond89
  %71 = load i32, ptr %i, align 4, !dbg !508
  %idxprom92 = sext i32 %71 to i64, !dbg !511
  %arrayidx93 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom92, !dbg !511
  %72 = load i64, ptr %arrayidx93, align 8, !dbg !511
  %cmp94 = icmp eq i64 %72, 0, !dbg !512
  br i1 %cmp94, label %if.then95, label %if.end96, !dbg !513

if.then95:                                        ; preds = %for.body91
  br label %for.inc115, !dbg !514

if.end96:                                         ; preds = %for.body91
  %73 = load i64, ptr %good_timer_count, align 8, !dbg !515
  %inc97 = add i64 %73, 1, !dbg !515
  store i64 %inc97, ptr %good_timer_count, align 8, !dbg !515
  %74 = load i32, ptr %i, align 4, !dbg !516
  %idxprom98 = sext i32 %74 to i64, !dbg !517
  %arrayidx99 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom98, !dbg !517
  %75 = load i64, ptr %arrayidx99, align 8, !dbg !517
  %76 = load i64, ptr %good_timer_sum, align 8, !dbg !518
  %add100 = add i64 %76, %75, !dbg !518
  store i64 %add100, ptr %good_timer_sum, align 8, !dbg !518
  %77 = load i32, ptr %i, align 4, !dbg !519
  %idxprom101 = sext i32 %77 to i64, !dbg !521
  %arrayidx102 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom101, !dbg !521
  %78 = load i64, ptr %arrayidx102, align 8, !dbg !521
  %79 = load i32, ptr %min, align 4, !dbg !522
  %idxprom103 = sext i32 %79 to i64, !dbg !523
  %arrayidx104 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom103, !dbg !523
  %80 = load i64, ptr %arrayidx104, align 8, !dbg !523
  %cmp105 = icmp ult i64 %78, %80, !dbg !524
  br i1 %cmp105, label %if.then106, label %if.end107, !dbg !525

if.then106:                                       ; preds = %if.end96
  %81 = load i32, ptr %i, align 4, !dbg !526
  store i32 %81, ptr %min, align 4, !dbg !527
  br label %if.end107, !dbg !528

if.end107:                                        ; preds = %if.then106, %if.end96
  %82 = load i32, ptr %i, align 4, !dbg !529
  %idxprom108 = sext i32 %82 to i64, !dbg !531
  %arrayidx109 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom108, !dbg !531
  %83 = load i64, ptr %arrayidx109, align 8, !dbg !531
  %84 = load i32, ptr %max, align 4, !dbg !532
  %idxprom110 = sext i32 %84 to i64, !dbg !533
  %arrayidx111 = getelementptr [5 x i64], ptr %measured_times, i64 0, i64 %idxprom110, !dbg !533
  %85 = load i64, ptr %arrayidx111, align 8, !dbg !533
  %cmp112 = icmp ugt i64 %83, %85, !dbg !534
  br i1 %cmp112, label %if.then113, label %if.end114, !dbg !535

if.then113:                                       ; preds = %if.end107
  %86 = load i32, ptr %i, align 4, !dbg !536
  store i32 %86, ptr %max, align 4, !dbg !537
  br label %if.end114, !dbg !538

if.end114:                                        ; preds = %if.then113, %if.end107
  br label %for.inc115, !dbg !539

for.inc115:                                       ; preds = %if.end114, %if.then95
  %87 = load i32, ptr %i, align 4, !dbg !540
  %inc116 = add i32 %87, 1, !dbg !540
  store i32 %inc116, ptr %i, align 4, !dbg !540
  br label %for.cond89, !dbg !541, !llvm.loop !542

for.end117:                                       ; preds = %for.cond89
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !544
  br label %cleanup, !dbg !544

cleanup:                                          ; preds = %for.end117, %if.then59
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxdiff) #8, !dbg !544
  call void @llvm.lifetime.end.p0(i64 8, ptr %estimate) #8, !dbg !544
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup125 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond48, !dbg !442, !llvm.loop !545

while.end119:                                     ; preds = %while.cond48
  br label %do.body120, !dbg !546

do.body120:                                       ; preds = %while.end119
  br label %do.cond121, !dbg !548

do.cond121:                                       ; preds = %do.body120
  br label %do.end122, !dbg !548

do.end122:                                        ; preds = %do.cond121
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #10, !dbg !546
  store i32 %call124, ptr %tmp123, align 4, !dbg !548
  %88 = load i32, ptr %tmp123, align 4, !dbg !546
  store i64 0, ptr %retval, align 8, !dbg !550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup125, !dbg !550

cleanup125:                                       ; preds = %do.end122, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 40, ptr %measured_times) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %good_timer_count) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %good_timer_sum) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %timer_rate_max) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %timer_rate_min) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_jiffies) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %post_end) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %pre_end) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %post_start) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %pre_start) #8, !dbg !551
  %89 = load i64, ptr %retval, align 8, !dbg !551
  ret i64 %89, !dbg !551
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @calibrate_delay_converge() #1 align 16 !dbg !552 {
entry:
  %lpj = alloca i64, align 8
  %lpj_base = alloca i64, align 8
  %ticks = alloca i64, align 8
  %loopadd = alloca i64, align 8
  %loopadd_base = alloca i64, align 8
  %chop_limit = alloca i64, align 8
  %trials = alloca i32, align 4
  %band = alloca i32, align 4
  %trial_in_band = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpj) #8, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %lpj, metadata !554, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpj_base) #8, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %lpj_base, metadata !555, metadata !DIExpression()), !dbg !566
  call void @llvm.lifetime.start.p0(i64 8, ptr %ticks) #8, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %ticks, metadata !556, metadata !DIExpression()), !dbg !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %loopadd) #8, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %loopadd, metadata !557, metadata !DIExpression()), !dbg !568
  call void @llvm.lifetime.start.p0(i64 8, ptr %loopadd_base) #8, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %loopadd_base, metadata !558, metadata !DIExpression()), !dbg !569
  call void @llvm.lifetime.start.p0(i64 8, ptr %chop_limit) #8, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %chop_limit, metadata !559, metadata !DIExpression()), !dbg !570
  call void @llvm.lifetime.start.p0(i64 4, ptr %trials) #8, !dbg !571
  call void @llvm.dbg.declare(metadata ptr %trials, metadata !560, metadata !DIExpression()), !dbg !572
  store i32 0, ptr %trials, align 4, !dbg !572
  call void @llvm.lifetime.start.p0(i64 4, ptr %band) #8, !dbg !571
  call void @llvm.dbg.declare(metadata ptr %band, metadata !561, metadata !DIExpression()), !dbg !573
  store i32 0, ptr %band, align 4, !dbg !573
  call void @llvm.lifetime.start.p0(i64 4, ptr %trial_in_band) #8, !dbg !571
  call void @llvm.dbg.declare(metadata ptr %trial_in_band, metadata !562, metadata !DIExpression()), !dbg !574
  store i32 0, ptr %trial_in_band, align 4, !dbg !574
  store i64 4096, ptr %lpj, align 8, !dbg !575
  %0 = load volatile i64, ptr @jiffies, align 64, !dbg !576
  store i64 %0, ptr %ticks, align 8, !dbg !577
  br label %while.cond, !dbg !578

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, ptr %ticks, align 8, !dbg !579
  %2 = load volatile i64, ptr @jiffies, align 64, !dbg !580
  %cmp = icmp eq i64 %1, %2, !dbg !581
  br i1 %cmp, label %while.body, label %while.end, !dbg !578

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !578, !llvm.loop !582

while.end:                                        ; preds = %while.cond
  %3 = load volatile i64, ptr @jiffies, align 64, !dbg !584
  store i64 %3, ptr %ticks, align 8, !dbg !585
  br label %do.body, !dbg !586

do.body:                                          ; preds = %do.cond, %while.end
  %4 = load i32, ptr %trial_in_band, align 4, !dbg !587
  %inc = add i32 %4, 1, !dbg !587
  store i32 %inc, ptr %trial_in_band, align 4, !dbg !587
  %5 = load i32, ptr %band, align 4, !dbg !590
  %shl = shl i32 1, %5, !dbg !591
  %cmp1 = icmp eq i32 %inc, %shl, !dbg !592
  br i1 %cmp1, label %if.then, label %if.end, !dbg !593

if.then:                                          ; preds = %do.body
  %6 = load i32, ptr %band, align 4, !dbg !594
  %inc2 = add i32 %6, 1, !dbg !594
  store i32 %inc2, ptr %band, align 4, !dbg !594
  store i32 0, ptr %trial_in_band, align 4, !dbg !596
  br label %if.end, !dbg !597

if.end:                                           ; preds = %if.then, %do.body
  %7 = load i64, ptr %lpj, align 8, !dbg !598
  %8 = load i32, ptr %band, align 4, !dbg !599
  %conv = sext i32 %8 to i64, !dbg !599
  %mul = mul i64 %7, %conv, !dbg !600
  call void @__delay(i64 noundef %mul) #7, !dbg !601
  %9 = load i32, ptr %band, align 4, !dbg !602
  %10 = load i32, ptr %trials, align 4, !dbg !603
  %add = add i32 %10, %9, !dbg !603
  store i32 %add, ptr %trials, align 4, !dbg !603
  br label %do.cond, !dbg !604

do.cond:                                          ; preds = %if.end
  %11 = load i64, ptr %ticks, align 8, !dbg !605
  %12 = load volatile i64, ptr @jiffies, align 64, !dbg !606
  %cmp3 = icmp eq i64 %11, %12, !dbg !607
  br i1 %cmp3, label %do.body, label %do.end, !dbg !604, !llvm.loop !608

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %band, align 4, !dbg !610
  %14 = load i32, ptr %trials, align 4, !dbg !611
  %sub = sub i32 %14, %13, !dbg !611
  store i32 %sub, ptr %trials, align 4, !dbg !611
  %15 = load i64, ptr %lpj, align 8, !dbg !612
  %16 = load i32, ptr %band, align 4, !dbg !613
  %conv5 = sext i32 %16 to i64, !dbg !613
  %mul6 = mul i64 %15, %conv5, !dbg !614
  store i64 %mul6, ptr %loopadd_base, align 8, !dbg !615
  %17 = load i64, ptr %lpj, align 8, !dbg !616
  %18 = load i32, ptr %trials, align 4, !dbg !617
  %conv7 = sext i32 %18 to i64, !dbg !617
  %mul8 = mul i64 %17, %conv7, !dbg !618
  store i64 %mul8, ptr %lpj_base, align 8, !dbg !619
  br label %recalibrate, !dbg !620

recalibrate:                                      ; preds = %if.then32, %do.end
  call void @llvm.dbg.label(metadata !563), !dbg !621
  %19 = load i64, ptr %lpj_base, align 8, !dbg !622
  store i64 %19, ptr %lpj, align 8, !dbg !623
  %20 = load i64, ptr %loopadd_base, align 8, !dbg !624
  store i64 %20, ptr %loopadd, align 8, !dbg !625
  %21 = load i64, ptr %lpj, align 8, !dbg !626
  %shr = lshr i64 %21, 8, !dbg !627
  store i64 %shr, ptr %chop_limit, align 8, !dbg !628
  br label %while.cond9, !dbg !629

while.cond9:                                      ; preds = %if.end23, %recalibrate
  %22 = load i64, ptr %loopadd, align 8, !dbg !630
  %23 = load i64, ptr %chop_limit, align 8, !dbg !631
  %cmp10 = icmp ugt i64 %22, %23, !dbg !632
  br i1 %cmp10, label %while.body12, label %while.end25, !dbg !629

while.body12:                                     ; preds = %while.cond9
  %24 = load i64, ptr %loopadd, align 8, !dbg !633
  %25 = load i64, ptr %lpj, align 8, !dbg !635
  %add13 = add i64 %25, %24, !dbg !635
  store i64 %add13, ptr %lpj, align 8, !dbg !635
  %26 = load volatile i64, ptr @jiffies, align 64, !dbg !636
  store i64 %26, ptr %ticks, align 8, !dbg !637
  br label %while.cond14, !dbg !638

while.cond14:                                     ; preds = %while.body17, %while.body12
  %27 = load i64, ptr %ticks, align 8, !dbg !639
  %28 = load volatile i64, ptr @jiffies, align 64, !dbg !640
  %cmp15 = icmp eq i64 %27, %28, !dbg !641
  br i1 %cmp15, label %while.body17, label %while.end18, !dbg !638

while.body17:                                     ; preds = %while.cond14
  br label %while.cond14, !dbg !638, !llvm.loop !642

while.end18:                                      ; preds = %while.cond14
  %29 = load volatile i64, ptr @jiffies, align 64, !dbg !644
  store i64 %29, ptr %ticks, align 8, !dbg !645
  %30 = load i64, ptr %lpj, align 8, !dbg !646
  call void @__delay(i64 noundef %30) #7, !dbg !647
  %31 = load volatile i64, ptr @jiffies, align 64, !dbg !648
  %32 = load i64, ptr %ticks, align 8, !dbg !650
  %cmp19 = icmp ne i64 %31, %32, !dbg !651
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !652

if.then21:                                        ; preds = %while.end18
  %33 = load i64, ptr %loopadd, align 8, !dbg !653
  %34 = load i64, ptr %lpj, align 8, !dbg !654
  %sub22 = sub i64 %34, %33, !dbg !654
  store i64 %sub22, ptr %lpj, align 8, !dbg !654
  br label %if.end23, !dbg !655

if.end23:                                         ; preds = %if.then21, %while.end18
  %35 = load i64, ptr %loopadd, align 8, !dbg !656
  %shr24 = lshr i64 %35, 1, !dbg !656
  store i64 %shr24, ptr %loopadd, align 8, !dbg !656
  br label %while.cond9, !dbg !629, !llvm.loop !657

while.end25:                                      ; preds = %while.cond9
  %36 = load i64, ptr %lpj, align 8, !dbg !659
  %37 = load i64, ptr %loopadd, align 8, !dbg !661
  %mul26 = mul i64 %37, 2, !dbg !662
  %add27 = add i64 %36, %mul26, !dbg !663
  %38 = load i64, ptr %lpj_base, align 8, !dbg !664
  %39 = load i64, ptr %loopadd_base, align 8, !dbg !665
  %mul28 = mul i64 %39, 2, !dbg !666
  %add29 = add i64 %38, %mul28, !dbg !667
  %cmp30 = icmp eq i64 %add27, %add29, !dbg !668
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !669

if.then32:                                        ; preds = %while.end25
  %40 = load i64, ptr %lpj, align 8, !dbg !670
  store i64 %40, ptr %lpj_base, align 8, !dbg !672
  %41 = load i64, ptr %loopadd_base, align 8, !dbg !673
  %shl33 = shl i64 %41, 2, !dbg !673
  store i64 %shl33, ptr %loopadd_base, align 8, !dbg !673
  br label %recalibrate, !dbg !674

if.end34:                                         ; preds = %while.end25
  %42 = load i64, ptr %lpj, align 8, !dbg !675
  call void @llvm.lifetime.end.p0(i64 4, ptr %trial_in_band) #8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 4, ptr %band) #8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 4, ptr %trials) #8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %chop_limit) #8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %loopadd_base) #8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %loopadd) #8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %ticks) #8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpj_base) #8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpj) #8, !dbg !676
  ret i64 %42, !dbg !677
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !678 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !683 dso_local i32 @read_current_timer(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !687 dso_local void @__delay(i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(read) }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_lpj_setup", scope: !2, file: !3, line: 23, type: !133, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF init/.calibrate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -fno-function-sections -fno-data-sections -D KBUILD_MODFILE=\22init/calibrate\22 -D KBUILD_BASENAME=\22calibrate\22 -D KBUILD_MODNAME=\22calibrate\22 -D __KBUILD_MODNAME=kmod_calibrate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o init/calibrate.ll init/calibrate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "init/calibrate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff5279b22ef4b7c98f047497dc3372b7")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !14, !13, !15, !16, !17}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!17 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!18 = !{!19, !34, !75, !80, !85, !90, !95, !100, !105, !110, !112, !0, !114, !116, !121, !126, !128}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__setup_lpj_setup", scope: !2, file: !3, line: 23, type: !21, isLocal: true, isDefinition: true, align: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !22, line: 324, size: 192, elements: !23)
!22 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!23 = !{!24, !28, !33}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !21, file: !22, line: 325, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !21, file: !22, line: 326, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!13, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !21, file: !22, line: 327, baseType: !13, size: 32, offset: 128)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "printed", scope: !36, file: !3, line: 278, type: !72, isLocal: true, isDefinition: true)
!36 = distinct !DISubprogram(name: "calibrate_delay", scope: !3, file: !3, line: 275, type: !37, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{null}
!39 = !{!40, !41, !42, !45, !49, !55, !59, !61, !65, !67, !70}
!40 = !DILocalVariable(name: "lpj", scope: !36, file: !3, line: 277, type: !15)
!41 = !DILocalVariable(name: "this_cpu", scope: !36, file: !3, line: 279, type: !13)
!42 = !DILocalVariable(name: "pscr_ret__", scope: !43, file: !3, line: 279, type: !13)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 279, column: 17)
!44 = distinct !DILexicalBlock(scope: !36, file: !3, line: 279, column: 17)
!45 = !DILocalVariable(name: "__vpp_verify", scope: !46, file: !3, line: 279, type: !47)
!46 = distinct !DILexicalBlock(scope: !43, file: !3, line: 279, column: 17)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!49 = !DILocalVariable(name: "pfo_val__", scope: !50, file: !3, line: 279, type: !51)
!50 = distinct !DILexicalBlock(scope: !43, file: !3, line: 279, column: 17)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !52, line: 21, baseType: !53)
!52 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !54, line: 27, baseType: !7)
!54 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!55 = !DILocalVariable(name: "__vpp_verify", scope: !56, file: !3, line: 281, type: !47)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 281, column: 6)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 281, column: 6)
!58 = distinct !DILexicalBlock(scope: !36, file: !3, line: 281, column: 6)
!59 = !DILocalVariable(name: "__ptr", scope: !60, file: !3, line: 281, type: !15)
!60 = distinct !DILexicalBlock(scope: !57, file: !3, line: 281, column: 6)
!61 = !DILocalVariable(name: "__vpp_verify", scope: !62, file: !3, line: 282, type: !47)
!62 = distinct !DILexicalBlock(scope: !63, file: !3, line: 282, column: 9)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 282, column: 9)
!64 = distinct !DILexicalBlock(scope: !58, file: !3, line: 281, column: 46)
!65 = !DILocalVariable(name: "__ptr", scope: !66, file: !3, line: 282, type: !15)
!66 = distinct !DILexicalBlock(scope: !63, file: !3, line: 282, column: 9)
!67 = !DILocalVariable(name: "__vpp_verify", scope: !68, file: !3, line: 306, type: !47)
!68 = distinct !DILexicalBlock(scope: !69, file: !3, line: 306, column: 2)
!69 = distinct !DILexicalBlock(scope: !36, file: !3, line: 306, column: 2)
!70 = !DILocalVariable(name: "__ptr", scope: !71, file: !3, line: 306, type: !15)
!71 = distinct !DILexicalBlock(scope: !69, file: !3, line: 306, column: 2)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !73, line: 35, baseType: !74)
!73 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 40, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 5)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 504, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 63)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 408, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 51)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 624, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 78)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 416, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 52)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 232, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 29)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 308, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 32)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "lpj_fine", scope: !2, file: !3, line: 15, type: !15, isLocal: false, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "preset_lpj", scope: !2, file: !3, line: 16, type: !15, isLocal: false, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "cpu_loops_per_jiffy", scope: !2, file: !3, line: 251, type: !15, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 808, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 101)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 544, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 68)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !123, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1248, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 156)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40, elements: !78)
!134 = !{i32 7, !"Dwarf Version", i32 5}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 8, !"cf-protection-branch", i32 1}
!138 = !{i32 4, !"function_return_thunk_extern", i32 1}
!139 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!140 = !{i32 1, !"Code Model", i32 2}
!141 = !{i32 1, !"override-stack-alignment", i32 8}
!142 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!143 = distinct !DISubprogram(name: "lpj_setup", scope: !3, file: !3, line: 17, type: !30, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!144 = !{!145}
!145 = !DILocalVariable(name: "str", arg: 1, scope: !143, file: !3, line: 17, type: !32)
!146 = !DILocation(line: 17, column: 35, scope: !143)
!147 = !DILocation(line: 19, column: 30, scope: !143)
!148 = !DILocation(line: 19, column: 15, scope: !143)
!149 = !DILocation(line: 19, column: 13, scope: !143)
!150 = !DILocation(line: 20, column: 2, scope: !143)
!151 = distinct !DISubprogram(name: "calibrate_delay_is_known", scope: !3, file: !3, line: 261, type: !152, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!152 = !DISubroutineType(types: !153)
!153 = !{!15}
!154 = !DILocation(line: 263, column: 2, scope: !151)
!155 = distinct !DISubprogram(name: "calibration_delay_done", scope: !3, file: !3, line: 271, type: !37, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!156 = !DILocation(line: 273, column: 1, scope: !155)
!157 = !DILocation(line: 277, column: 2, scope: !36)
!158 = !DILocation(line: 277, column: 16, scope: !36)
!159 = !DILocation(line: 279, column: 2, scope: !36)
!160 = !DILocation(line: 279, column: 6, scope: !36)
!161 = !DILocation(line: 279, column: 17, scope: !44)
!162 = !DILocation(line: 279, column: 17, scope: !43)
!163 = !DILocation(line: 279, column: 17, scope: !46)
!164 = !DILocation(line: 279, column: 17, scope: !50)
!165 = !{i64 2150804904}
!166 = !DILocation(line: 281, column: 6, scope: !57)
!167 = !DILocation(line: 281, column: 6, scope: !56)
!168 = !DILocation(line: 281, column: 6, scope: !60)
!169 = !DILocation(line: 281, column: 6, scope: !58)
!170 = !DILocation(line: 281, column: 6, scope: !36)
!171 = !DILocation(line: 282, column: 9, scope: !63)
!172 = !DILocation(line: 282, column: 9, scope: !62)
!173 = !DILocation(line: 282, column: 9, scope: !66)
!174 = !DILocation(line: 282, column: 9, scope: !64)
!175 = !DILocation(line: 282, column: 7, scope: !64)
!176 = !DILocation(line: 283, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !64, file: !3, line: 283, column: 7)
!178 = !{i8 0, i8 2}
!179 = !{}
!180 = !DILocation(line: 283, column: 7, scope: !64)
!181 = !DILocation(line: 284, column: 4, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !3, line: 284, column: 4)
!183 = !DILocation(line: 284, column: 4, scope: !184)
!184 = distinct !DILexicalBlock(scope: !182, file: !3, line: 284, column: 4)
!185 = !DILocation(line: 284, column: 4, scope: !177)
!186 = !DILocation(line: 286, column: 2, scope: !64)
!187 = !DILocation(line: 286, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !58, file: !3, line: 286, column: 13)
!189 = !DILocation(line: 286, column: 13, scope: !58)
!190 = !DILocation(line: 287, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 286, column: 25)
!192 = !DILocation(line: 287, column: 7, scope: !191)
!193 = !DILocation(line: 288, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 288, column: 7)
!195 = !DILocation(line: 288, column: 7, scope: !191)
!196 = !DILocation(line: 289, column: 4, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 289, column: 4)
!198 = !DILocation(line: 289, column: 4, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !3, line: 289, column: 4)
!200 = !DILocation(line: 289, column: 4, scope: !194)
!201 = !DILocation(line: 291, column: 2, scope: !191)
!202 = !DILocation(line: 291, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !188, file: !3, line: 291, column: 13)
!204 = !DILocation(line: 291, column: 24, scope: !203)
!205 = !DILocation(line: 291, column: 27, scope: !203)
!206 = !DILocation(line: 291, column: 13, scope: !188)
!207 = !DILocation(line: 292, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !3, line: 291, column: 37)
!209 = !DILocation(line: 292, column: 7, scope: !208)
!210 = !DILocation(line: 293, column: 3, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !3, line: 293, column: 3)
!212 = !DILocation(line: 293, column: 3, scope: !213)
!213 = distinct !DILexicalBlock(scope: !211, file: !3, line: 293, column: 3)
!214 = !DILocation(line: 295, column: 2, scope: !208)
!215 = !DILocation(line: 295, column: 20, scope: !216)
!216 = distinct !DILexicalBlock(scope: !203, file: !3, line: 295, column: 13)
!217 = !DILocation(line: 295, column: 18, scope: !216)
!218 = !DILocation(line: 295, column: 13, scope: !203)
!219 = !DILocation(line: 297, column: 2, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !3, line: 295, column: 49)
!221 = !DILocation(line: 297, column: 20, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !3, line: 297, column: 13)
!223 = !DILocation(line: 297, column: 18, scope: !222)
!224 = !DILocation(line: 297, column: 46, scope: !222)
!225 = !DILocation(line: 297, column: 13, scope: !216)
!226 = !DILocation(line: 298, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 298, column: 7)
!228 = distinct !DILexicalBlock(scope: !222, file: !3, line: 297, column: 52)
!229 = !DILocation(line: 298, column: 7, scope: !228)
!230 = !DILocation(line: 299, column: 4, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 299, column: 4)
!232 = !DILocation(line: 299, column: 4, scope: !233)
!233 = distinct !DILexicalBlock(scope: !231, file: !3, line: 299, column: 4)
!234 = !DILocation(line: 299, column: 4, scope: !227)
!235 = !DILocation(line: 301, column: 2, scope: !228)
!236 = !DILocation(line: 302, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 302, column: 7)
!238 = distinct !DILexicalBlock(scope: !222, file: !3, line: 301, column: 9)
!239 = !DILocation(line: 302, column: 7, scope: !238)
!240 = !DILocation(line: 303, column: 4, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 303, column: 4)
!242 = !DILocation(line: 303, column: 4, scope: !243)
!243 = distinct !DILexicalBlock(scope: !241, file: !3, line: 303, column: 4)
!244 = !DILocation(line: 303, column: 4, scope: !237)
!245 = !DILocation(line: 304, column: 9, scope: !238)
!246 = !DILocation(line: 304, column: 7, scope: !238)
!247 = !DILocation(line: 306, column: 43, scope: !36)
!248 = !DILocation(line: 306, column: 2, scope: !69)
!249 = !DILocation(line: 306, column: 2, scope: !68)
!250 = !DILocation(line: 306, column: 2, scope: !71)
!251 = !DILocation(line: 306, column: 41, scope: !36)
!252 = !DILocation(line: 307, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !36, file: !3, line: 307, column: 6)
!254 = !DILocation(line: 307, column: 6, scope: !36)
!255 = !DILocation(line: 308, column: 3, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 308, column: 3)
!257 = !DILocation(line: 308, column: 3, scope: !258)
!258 = distinct !DILexicalBlock(scope: !256, file: !3, line: 308, column: 3)
!259 = !DILocation(line: 308, column: 3, scope: !253)
!260 = !DILocation(line: 312, column: 20, scope: !36)
!261 = !DILocation(line: 312, column: 18, scope: !36)
!262 = !DILocation(line: 313, column: 10, scope: !36)
!263 = !DILocation(line: 315, column: 2, scope: !36)
!264 = !DILocation(line: 316, column: 1, scope: !36)
!265 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !266, file: !266, line: 313, type: !267, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!266 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!267 = !DISubroutineType(types: !268)
!268 = !{null, !25}
!269 = !{!270}
!270 = !DILocalVariable(name: "op", arg: 1, scope: !265, file: !266, line: 313, type: !25)
!271 = !DILocation(line: 313, column: 66, scope: !265)
!272 = !DILocation(line: 313, column: 72, scope: !265)
!273 = !DISubprogram(name: "_printk", scope: !274, file: !274, line: 153, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!275 = !DISubroutineType(types: !276)
!276 = !{!13, !25, null}
!277 = distinct !DISubprogram(name: "calibrate_delay_direct", scope: !3, file: !3, line: 35, type: !152, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !292, !293, !294, !295, !297}
!279 = !DILocalVariable(name: "pre_start", scope: !277, file: !3, line: 37, type: !15)
!280 = !DILocalVariable(name: "start", scope: !277, file: !3, line: 37, type: !15)
!281 = !DILocalVariable(name: "post_start", scope: !277, file: !3, line: 37, type: !15)
!282 = !DILocalVariable(name: "pre_end", scope: !277, file: !3, line: 38, type: !15)
!283 = !DILocalVariable(name: "end", scope: !277, file: !3, line: 38, type: !15)
!284 = !DILocalVariable(name: "post_end", scope: !277, file: !3, line: 38, type: !15)
!285 = !DILocalVariable(name: "start_jiffies", scope: !277, file: !3, line: 39, type: !15)
!286 = !DILocalVariable(name: "timer_rate_min", scope: !277, file: !3, line: 40, type: !15)
!287 = !DILocalVariable(name: "timer_rate_max", scope: !277, file: !3, line: 40, type: !15)
!288 = !DILocalVariable(name: "good_timer_sum", scope: !277, file: !3, line: 41, type: !15)
!289 = !DILocalVariable(name: "good_timer_count", scope: !277, file: !3, line: 42, type: !15)
!290 = !DILocalVariable(name: "measured_times", scope: !277, file: !3, line: 43, type: !291)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !78)
!292 = !DILocalVariable(name: "max", scope: !277, file: !3, line: 44, type: !13)
!293 = !DILocalVariable(name: "min", scope: !277, file: !3, line: 45, type: !13)
!294 = !DILocalVariable(name: "i", scope: !277, file: !3, line: 46, type: !13)
!295 = !DILocalVariable(name: "estimate", scope: !296, file: !3, line: 122, type: !15)
!296 = distinct !DILexicalBlock(scope: !277, file: !3, line: 121, column: 31)
!297 = !DILocalVariable(name: "maxdiff", scope: !296, file: !3, line: 123, type: !15)
!298 = !DILocation(line: 37, column: 2, scope: !277)
!299 = !DILocation(line: 37, column: 16, scope: !277)
!300 = !DILocation(line: 37, column: 27, scope: !277)
!301 = !DILocation(line: 37, column: 34, scope: !277)
!302 = !DILocation(line: 38, column: 2, scope: !277)
!303 = !DILocation(line: 38, column: 16, scope: !277)
!304 = !DILocation(line: 38, column: 25, scope: !277)
!305 = !DILocation(line: 38, column: 30, scope: !277)
!306 = !DILocation(line: 39, column: 2, scope: !277)
!307 = !DILocation(line: 39, column: 16, scope: !277)
!308 = !DILocation(line: 40, column: 2, scope: !277)
!309 = !DILocation(line: 40, column: 16, scope: !277)
!310 = !DILocation(line: 40, column: 32, scope: !277)
!311 = !DILocation(line: 41, column: 2, scope: !277)
!312 = !DILocation(line: 41, column: 16, scope: !277)
!313 = !DILocation(line: 42, column: 2, scope: !277)
!314 = !DILocation(line: 42, column: 16, scope: !277)
!315 = !DILocation(line: 43, column: 2, scope: !277)
!316 = !DILocation(line: 43, column: 16, scope: !277)
!317 = !DILocation(line: 44, column: 2, scope: !277)
!318 = !DILocation(line: 44, column: 6, scope: !277)
!319 = !DILocation(line: 45, column: 2, scope: !277)
!320 = !DILocation(line: 45, column: 6, scope: !277)
!321 = !DILocation(line: 46, column: 2, scope: !277)
!322 = !DILocation(line: 46, column: 6, scope: !277)
!323 = !DILocation(line: 48, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !277, file: !3, line: 48, column: 6)
!325 = !DILocation(line: 48, column: 37, scope: !324)
!326 = !DILocation(line: 48, column: 6, scope: !277)
!327 = !DILocation(line: 49, column: 3, scope: !324)
!328 = !DILocation(line: 70, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !277, file: !3, line: 70, column: 2)
!330 = !DILocation(line: 70, column: 7, scope: !329)
!331 = !DILocation(line: 70, column: 14, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !3, line: 70, column: 2)
!333 = !DILocation(line: 70, column: 16, scope: !332)
!334 = !DILocation(line: 70, column: 2, scope: !329)
!335 = !DILocation(line: 71, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 70, column: 55)
!337 = !DILocation(line: 72, column: 3, scope: !336)
!338 = !DILocation(line: 73, column: 19, scope: !336)
!339 = !DILocation(line: 73, column: 17, scope: !336)
!340 = !DILocation(line: 74, column: 3, scope: !336)
!341 = !DILocation(line: 74, column: 10, scope: !336)
!342 = !DILocation(line: 75, column: 16, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !3, line: 74, column: 54)
!344 = !DILocation(line: 75, column: 14, scope: !343)
!345 = !DILocation(line: 76, column: 4, scope: !343)
!346 = distinct !{!346, !340, !347, !348, !349}
!347 = !DILocation(line: 77, column: 3, scope: !336)
!348 = !{!"llvm.loop.mustprogress"}
!349 = !{!"llvm.loop.unroll.disable"}
!350 = !DILocation(line: 78, column: 3, scope: !336)
!351 = !DILocation(line: 80, column: 11, scope: !336)
!352 = !DILocation(line: 81, column: 9, scope: !336)
!353 = !DILocation(line: 81, column: 7, scope: !336)
!354 = !DILocation(line: 82, column: 3, scope: !336)
!355 = !DILocation(line: 82, column: 10, scope: !336)
!356 = !DILocation(line: 84, column: 14, scope: !357)
!357 = distinct !DILexicalBlock(scope: !336, file: !3, line: 83, column: 39)
!358 = !DILocation(line: 84, column: 12, scope: !357)
!359 = !DILocation(line: 85, column: 4, scope: !357)
!360 = distinct !{!360, !354, !361, !348, !349}
!361 = !DILocation(line: 86, column: 3, scope: !336)
!362 = !DILocation(line: 87, column: 3, scope: !336)
!363 = !DILocation(line: 89, column: 21, scope: !336)
!364 = !DILocation(line: 89, column: 32, scope: !336)
!365 = !DILocation(line: 89, column: 30, scope: !336)
!366 = !DILocation(line: 89, column: 43, scope: !336)
!367 = !DILocation(line: 89, column: 18, scope: !336)
!368 = !DILocation(line: 91, column: 21, scope: !336)
!369 = !DILocation(line: 91, column: 31, scope: !336)
!370 = !DILocation(line: 91, column: 29, scope: !336)
!371 = !DILocation(line: 91, column: 43, scope: !336)
!372 = !DILocation(line: 91, column: 18, scope: !336)
!373 = !DILocation(line: 98, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !336, file: !3, line: 98, column: 7)
!375 = !DILocation(line: 98, column: 16, scope: !374)
!376 = !DILocation(line: 98, column: 13, scope: !374)
!377 = !DILocation(line: 98, column: 7, scope: !336)
!378 = !DILocation(line: 99, column: 4, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !3, line: 99, column: 4)
!380 = !DILocation(line: 99, column: 4, scope: !381)
!381 = distinct !DILexicalBlock(scope: !379, file: !3, line: 99, column: 4)
!382 = !DILocation(line: 99, column: 4, scope: !374)
!383 = !DILocation(line: 103, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !336, file: !3, line: 103, column: 7)
!385 = !DILocation(line: 103, column: 15, scope: !384)
!386 = !DILocation(line: 103, column: 13, scope: !384)
!387 = !DILocation(line: 103, column: 24, scope: !384)
!388 = !DILocation(line: 103, column: 27, scope: !384)
!389 = !DILocation(line: 103, column: 37, scope: !384)
!390 = !DILocation(line: 103, column: 42, scope: !384)
!391 = !DILocation(line: 103, column: 45, scope: !384)
!392 = !DILocation(line: 103, column: 53, scope: !384)
!393 = !DILocation(line: 103, column: 58, scope: !384)
!394 = !DILocation(line: 104, column: 8, scope: !384)
!395 = !DILocation(line: 104, column: 25, scope: !384)
!396 = !DILocation(line: 104, column: 23, scope: !384)
!397 = !DILocation(line: 104, column: 44, scope: !384)
!398 = !DILocation(line: 104, column: 59, scope: !384)
!399 = !DILocation(line: 104, column: 41, scope: !384)
!400 = !DILocation(line: 103, column: 7, scope: !336)
!401 = !DILocation(line: 105, column: 20, scope: !402)
!402 = distinct !DILexicalBlock(scope: !384, file: !3, line: 104, column: 66)
!403 = !DILocation(line: 106, column: 22, scope: !402)
!404 = !DILocation(line: 106, column: 19, scope: !402)
!405 = !DILocation(line: 107, column: 24, scope: !402)
!406 = !DILocation(line: 107, column: 19, scope: !402)
!407 = !DILocation(line: 107, column: 4, scope: !402)
!408 = !DILocation(line: 107, column: 22, scope: !402)
!409 = !DILocation(line: 108, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !402, file: !3, line: 108, column: 8)
!411 = !DILocation(line: 108, column: 12, scope: !410)
!412 = !DILocation(line: 108, column: 16, scope: !410)
!413 = !DILocation(line: 108, column: 19, scope: !410)
!414 = !DILocation(line: 108, column: 51, scope: !410)
!415 = !DILocation(line: 108, column: 36, scope: !410)
!416 = !DILocation(line: 108, column: 34, scope: !410)
!417 = !DILocation(line: 108, column: 8, scope: !402)
!418 = !DILocation(line: 109, column: 11, scope: !410)
!419 = !DILocation(line: 109, column: 9, scope: !410)
!420 = !DILocation(line: 109, column: 5, scope: !410)
!421 = !DILocation(line: 110, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !402, file: !3, line: 110, column: 8)
!423 = !DILocation(line: 110, column: 12, scope: !422)
!424 = !DILocation(line: 110, column: 16, scope: !422)
!425 = !DILocation(line: 110, column: 19, scope: !422)
!426 = !DILocation(line: 110, column: 51, scope: !422)
!427 = !DILocation(line: 110, column: 36, scope: !422)
!428 = !DILocation(line: 110, column: 34, scope: !422)
!429 = !DILocation(line: 110, column: 8, scope: !402)
!430 = !DILocation(line: 111, column: 11, scope: !422)
!431 = !DILocation(line: 111, column: 9, scope: !422)
!432 = !DILocation(line: 111, column: 5, scope: !422)
!433 = !DILocation(line: 112, column: 3, scope: !402)
!434 = !DILocation(line: 113, column: 19, scope: !384)
!435 = !DILocation(line: 113, column: 4, scope: !384)
!436 = !DILocation(line: 113, column: 22, scope: !384)
!437 = !DILocation(line: 115, column: 2, scope: !336)
!438 = !DILocation(line: 70, column: 51, scope: !332)
!439 = !DILocation(line: 70, column: 2, scope: !332)
!440 = distinct !{!440, !334, !441, !348, !349}
!441 = !DILocation(line: 115, column: 2, scope: !329)
!442 = !DILocation(line: 121, column: 2, scope: !277)
!443 = !DILocation(line: 121, column: 9, scope: !277)
!444 = !DILocation(line: 121, column: 26, scope: !277)
!445 = !DILocation(line: 122, column: 3, scope: !296)
!446 = !DILocation(line: 122, column: 17, scope: !296)
!447 = !DILocation(line: 123, column: 3, scope: !296)
!448 = !DILocation(line: 123, column: 17, scope: !296)
!449 = !DILocation(line: 126, column: 15, scope: !296)
!450 = !DILocation(line: 126, column: 30, scope: !296)
!451 = !DILocation(line: 126, column: 29, scope: !296)
!452 = !DILocation(line: 126, column: 12, scope: !296)
!453 = !DILocation(line: 127, column: 13, scope: !296)
!454 = !DILocation(line: 127, column: 22, scope: !296)
!455 = !DILocation(line: 127, column: 11, scope: !296)
!456 = !DILocation(line: 130, column: 23, scope: !457)
!457 = distinct !DILexicalBlock(scope: !296, file: !3, line: 130, column: 7)
!458 = !DILocation(line: 130, column: 8, scope: !457)
!459 = !DILocation(line: 130, column: 45, scope: !457)
!460 = !DILocation(line: 130, column: 30, scope: !457)
!461 = !DILocation(line: 130, column: 28, scope: !457)
!462 = !DILocation(line: 130, column: 53, scope: !457)
!463 = !DILocation(line: 130, column: 51, scope: !457)
!464 = !DILocation(line: 130, column: 7, scope: !296)
!465 = !DILocation(line: 131, column: 11, scope: !457)
!466 = !DILocation(line: 131, column: 4, scope: !457)
!467 = !DILocation(line: 134, column: 18, scope: !296)
!468 = !DILocation(line: 135, column: 20, scope: !296)
!469 = !DILocation(line: 136, column: 23, scope: !470)
!470 = distinct !DILexicalBlock(scope: !296, file: !3, line: 136, column: 7)
!471 = !DILocation(line: 136, column: 8, scope: !470)
!472 = !DILocation(line: 136, column: 30, scope: !470)
!473 = !DILocation(line: 136, column: 28, scope: !470)
!474 = !DILocation(line: 137, column: 6, scope: !470)
!475 = !DILocation(line: 137, column: 32, scope: !470)
!476 = !DILocation(line: 137, column: 17, scope: !470)
!477 = !DILocation(line: 137, column: 15, scope: !470)
!478 = !DILocation(line: 136, column: 40, scope: !470)
!479 = !DILocation(line: 136, column: 7, scope: !296)
!480 = !DILocation(line: 138, column: 4, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 138, column: 4)
!482 = distinct !DILexicalBlock(scope: !470, file: !3, line: 137, column: 39)
!483 = !DILocation(line: 138, column: 4, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !3, line: 138, column: 4)
!485 = !DILocation(line: 141, column: 19, scope: !482)
!486 = !DILocation(line: 141, column: 4, scope: !482)
!487 = !DILocation(line: 141, column: 24, scope: !482)
!488 = !DILocation(line: 142, column: 10, scope: !482)
!489 = !DILocation(line: 142, column: 8, scope: !482)
!490 = !DILocation(line: 143, column: 3, scope: !482)
!491 = !DILocation(line: 144, column: 4, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 144, column: 4)
!493 = distinct !DILexicalBlock(scope: !470, file: !3, line: 143, column: 10)
!494 = !DILocation(line: 144, column: 4, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !3, line: 144, column: 4)
!496 = !DILocation(line: 147, column: 19, scope: !493)
!497 = !DILocation(line: 147, column: 4, scope: !493)
!498 = !DILocation(line: 147, column: 24, scope: !493)
!499 = !DILocation(line: 148, column: 10, scope: !493)
!500 = !DILocation(line: 148, column: 8, scope: !493)
!501 = !DILocation(line: 151, column: 10, scope: !502)
!502 = distinct !DILexicalBlock(scope: !296, file: !3, line: 151, column: 3)
!503 = !DILocation(line: 151, column: 8, scope: !502)
!504 = !DILocation(line: 151, column: 15, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !3, line: 151, column: 3)
!506 = !DILocation(line: 151, column: 17, scope: !505)
!507 = !DILocation(line: 151, column: 3, scope: !502)
!508 = !DILocation(line: 152, column: 23, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 152, column: 8)
!510 = distinct !DILexicalBlock(scope: !505, file: !3, line: 151, column: 56)
!511 = !DILocation(line: 152, column: 8, scope: !509)
!512 = !DILocation(line: 152, column: 26, scope: !509)
!513 = !DILocation(line: 152, column: 8, scope: !510)
!514 = !DILocation(line: 153, column: 5, scope: !509)
!515 = !DILocation(line: 154, column: 20, scope: !510)
!516 = !DILocation(line: 155, column: 37, scope: !510)
!517 = !DILocation(line: 155, column: 22, scope: !510)
!518 = !DILocation(line: 155, column: 19, scope: !510)
!519 = !DILocation(line: 156, column: 23, scope: !520)
!520 = distinct !DILexicalBlock(scope: !510, file: !3, line: 156, column: 8)
!521 = !DILocation(line: 156, column: 8, scope: !520)
!522 = !DILocation(line: 156, column: 43, scope: !520)
!523 = !DILocation(line: 156, column: 28, scope: !520)
!524 = !DILocation(line: 156, column: 26, scope: !520)
!525 = !DILocation(line: 156, column: 8, scope: !510)
!526 = !DILocation(line: 157, column: 11, scope: !520)
!527 = !DILocation(line: 157, column: 9, scope: !520)
!528 = !DILocation(line: 157, column: 5, scope: !520)
!529 = !DILocation(line: 158, column: 23, scope: !530)
!530 = distinct !DILexicalBlock(scope: !510, file: !3, line: 158, column: 8)
!531 = !DILocation(line: 158, column: 8, scope: !530)
!532 = !DILocation(line: 158, column: 43, scope: !530)
!533 = !DILocation(line: 158, column: 28, scope: !530)
!534 = !DILocation(line: 158, column: 26, scope: !530)
!535 = !DILocation(line: 158, column: 8, scope: !510)
!536 = !DILocation(line: 159, column: 11, scope: !530)
!537 = !DILocation(line: 159, column: 9, scope: !530)
!538 = !DILocation(line: 159, column: 5, scope: !530)
!539 = !DILocation(line: 160, column: 3, scope: !510)
!540 = !DILocation(line: 151, column: 52, scope: !505)
!541 = !DILocation(line: 151, column: 3, scope: !505)
!542 = distinct !{!542, !507, !543, !348, !349}
!543 = !DILocation(line: 160, column: 3, scope: !502)
!544 = !DILocation(line: 162, column: 2, scope: !277)
!545 = distinct !{!545, !442, !544, !348, !349}
!546 = !DILocation(line: 164, column: 2, scope: !547)
!547 = distinct !DILexicalBlock(scope: !277, file: !3, line: 164, column: 2)
!548 = !DILocation(line: 164, column: 2, scope: !549)
!549 = distinct !DILexicalBlock(scope: !547, file: !3, line: 164, column: 2)
!550 = !DILocation(line: 167, column: 2, scope: !277)
!551 = !DILocation(line: 168, column: 1, scope: !277)
!552 = distinct !DISubprogram(name: "calibrate_delay_converge", scope: !3, file: !3, line: 187, type: !152, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!554 = !DILocalVariable(name: "lpj", scope: !552, file: !3, line: 190, type: !15)
!555 = !DILocalVariable(name: "lpj_base", scope: !552, file: !3, line: 190, type: !15)
!556 = !DILocalVariable(name: "ticks", scope: !552, file: !3, line: 190, type: !15)
!557 = !DILocalVariable(name: "loopadd", scope: !552, file: !3, line: 190, type: !15)
!558 = !DILocalVariable(name: "loopadd_base", scope: !552, file: !3, line: 190, type: !15)
!559 = !DILocalVariable(name: "chop_limit", scope: !552, file: !3, line: 190, type: !15)
!560 = !DILocalVariable(name: "trials", scope: !552, file: !3, line: 191, type: !13)
!561 = !DILocalVariable(name: "band", scope: !552, file: !3, line: 191, type: !13)
!562 = !DILocalVariable(name: "trial_in_band", scope: !552, file: !3, line: 191, type: !13)
!563 = !DILabel(scope: !552, name: "recalibrate", file: !3, line: 217)
!564 = !DILocation(line: 190, column: 2, scope: !552)
!565 = !DILocation(line: 190, column: 16, scope: !552)
!566 = !DILocation(line: 190, column: 21, scope: !552)
!567 = !DILocation(line: 190, column: 31, scope: !552)
!568 = !DILocation(line: 190, column: 38, scope: !552)
!569 = !DILocation(line: 190, column: 47, scope: !552)
!570 = !DILocation(line: 190, column: 61, scope: !552)
!571 = !DILocation(line: 191, column: 2, scope: !552)
!572 = !DILocation(line: 191, column: 6, scope: !552)
!573 = !DILocation(line: 191, column: 18, scope: !552)
!574 = !DILocation(line: 191, column: 28, scope: !552)
!575 = !DILocation(line: 193, column: 6, scope: !552)
!576 = !DILocation(line: 196, column: 10, scope: !552)
!577 = !DILocation(line: 196, column: 8, scope: !552)
!578 = !DILocation(line: 197, column: 2, scope: !552)
!579 = !DILocation(line: 197, column: 9, scope: !552)
!580 = !DILocation(line: 197, column: 18, scope: !552)
!581 = !DILocation(line: 197, column: 15, scope: !552)
!582 = distinct !{!582, !578, !583, !348, !349}
!583 = !DILocation(line: 198, column: 3, scope: !552)
!584 = !DILocation(line: 200, column: 10, scope: !552)
!585 = !DILocation(line: 200, column: 8, scope: !552)
!586 = !DILocation(line: 201, column: 2, scope: !552)
!587 = !DILocation(line: 202, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 202, column: 7)
!589 = distinct !DILexicalBlock(scope: !552, file: !3, line: 201, column: 5)
!590 = !DILocation(line: 202, column: 30, scope: !588)
!591 = !DILocation(line: 202, column: 28, scope: !588)
!592 = !DILocation(line: 202, column: 23, scope: !588)
!593 = !DILocation(line: 202, column: 7, scope: !589)
!594 = !DILocation(line: 203, column: 4, scope: !595)
!595 = distinct !DILexicalBlock(scope: !588, file: !3, line: 202, column: 37)
!596 = !DILocation(line: 204, column: 18, scope: !595)
!597 = !DILocation(line: 205, column: 3, scope: !595)
!598 = !DILocation(line: 206, column: 11, scope: !589)
!599 = !DILocation(line: 206, column: 17, scope: !589)
!600 = !DILocation(line: 206, column: 15, scope: !589)
!601 = !DILocation(line: 206, column: 3, scope: !589)
!602 = !DILocation(line: 207, column: 13, scope: !589)
!603 = !DILocation(line: 207, column: 10, scope: !589)
!604 = !DILocation(line: 208, column: 2, scope: !589)
!605 = !DILocation(line: 208, column: 11, scope: !552)
!606 = !DILocation(line: 208, column: 20, scope: !552)
!607 = !DILocation(line: 208, column: 17, scope: !552)
!608 = distinct !{!608, !586, !609, !348, !349}
!609 = !DILocation(line: 208, column: 27, scope: !552)
!610 = !DILocation(line: 213, column: 12, scope: !552)
!611 = !DILocation(line: 213, column: 9, scope: !552)
!612 = !DILocation(line: 214, column: 17, scope: !552)
!613 = !DILocation(line: 214, column: 23, scope: !552)
!614 = !DILocation(line: 214, column: 21, scope: !552)
!615 = !DILocation(line: 214, column: 15, scope: !552)
!616 = !DILocation(line: 215, column: 13, scope: !552)
!617 = !DILocation(line: 215, column: 19, scope: !552)
!618 = !DILocation(line: 215, column: 17, scope: !552)
!619 = !DILocation(line: 215, column: 11, scope: !552)
!620 = !DILocation(line: 215, column: 2, scope: !552)
!621 = !DILocation(line: 217, column: 1, scope: !552)
!622 = !DILocation(line: 218, column: 8, scope: !552)
!623 = !DILocation(line: 218, column: 6, scope: !552)
!624 = !DILocation(line: 219, column: 12, scope: !552)
!625 = !DILocation(line: 219, column: 10, scope: !552)
!626 = !DILocation(line: 225, column: 15, scope: !552)
!627 = !DILocation(line: 225, column: 19, scope: !552)
!628 = !DILocation(line: 225, column: 13, scope: !552)
!629 = !DILocation(line: 226, column: 2, scope: !552)
!630 = !DILocation(line: 226, column: 9, scope: !552)
!631 = !DILocation(line: 226, column: 19, scope: !552)
!632 = !DILocation(line: 226, column: 17, scope: !552)
!633 = !DILocation(line: 227, column: 10, scope: !634)
!634 = distinct !DILexicalBlock(scope: !552, file: !3, line: 226, column: 31)
!635 = !DILocation(line: 227, column: 7, scope: !634)
!636 = !DILocation(line: 228, column: 11, scope: !634)
!637 = !DILocation(line: 228, column: 9, scope: !634)
!638 = !DILocation(line: 229, column: 3, scope: !634)
!639 = !DILocation(line: 229, column: 10, scope: !634)
!640 = !DILocation(line: 229, column: 19, scope: !634)
!641 = !DILocation(line: 229, column: 16, scope: !634)
!642 = distinct !{!642, !638, !643, !348, !349}
!643 = !DILocation(line: 230, column: 4, scope: !634)
!644 = !DILocation(line: 231, column: 11, scope: !634)
!645 = !DILocation(line: 231, column: 9, scope: !634)
!646 = !DILocation(line: 232, column: 11, scope: !634)
!647 = !DILocation(line: 232, column: 3, scope: !634)
!648 = !DILocation(line: 233, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !634, file: !3, line: 233, column: 7)
!650 = !DILocation(line: 233, column: 18, scope: !649)
!651 = !DILocation(line: 233, column: 15, scope: !649)
!652 = !DILocation(line: 233, column: 7, scope: !634)
!653 = !DILocation(line: 234, column: 11, scope: !649)
!654 = !DILocation(line: 234, column: 8, scope: !649)
!655 = !DILocation(line: 234, column: 4, scope: !649)
!656 = !DILocation(line: 235, column: 11, scope: !634)
!657 = distinct !{!657, !629, !658, !348, !349}
!658 = !DILocation(line: 236, column: 2, scope: !552)
!659 = !DILocation(line: 242, column: 6, scope: !660)
!660 = distinct !DILexicalBlock(scope: !552, file: !3, line: 242, column: 6)
!661 = !DILocation(line: 242, column: 12, scope: !660)
!662 = !DILocation(line: 242, column: 20, scope: !660)
!663 = !DILocation(line: 242, column: 10, scope: !660)
!664 = !DILocation(line: 242, column: 27, scope: !660)
!665 = !DILocation(line: 242, column: 38, scope: !660)
!666 = !DILocation(line: 242, column: 51, scope: !660)
!667 = !DILocation(line: 242, column: 36, scope: !660)
!668 = !DILocation(line: 242, column: 24, scope: !660)
!669 = !DILocation(line: 242, column: 6, scope: !552)
!670 = !DILocation(line: 243, column: 14, scope: !671)
!671 = distinct !DILexicalBlock(scope: !660, file: !3, line: 242, column: 56)
!672 = !DILocation(line: 243, column: 12, scope: !671)
!673 = !DILocation(line: 244, column: 16, scope: !671)
!674 = !DILocation(line: 245, column: 3, scope: !671)
!675 = !DILocation(line: 248, column: 9, scope: !552)
!676 = !DILocation(line: 249, column: 1, scope: !552)
!677 = !DILocation(line: 248, column: 2, scope: !552)
!678 = !DISubprogram(name: "simple_strtoul", scope: !679, file: !679, line: 145, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!679 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!680 = !DISubroutineType(types: !681)
!681 = !{!15, !25, !682, !7}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!683 = !DISubprogram(name: "read_current_timer", scope: !684, file: !684, line: 167, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DIFile(filename: "./include/linux/timex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2ef58a9e76aabb4dd1b9b512cb6193f5")
!685 = !DISubroutineType(types: !686)
!686 = !{!13, !16}
!687 = !DISubprogram(name: "__delay", scope: !688, file: !688, line: 12, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!688 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!689 = !DISubroutineType(types: !690)
!690 = !{null, !15}
