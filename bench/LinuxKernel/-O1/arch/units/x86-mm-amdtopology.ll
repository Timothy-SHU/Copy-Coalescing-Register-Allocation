; ModuleID = 'arch/x86/mm/amdtopology.c'
source_filename = "arch/x86/mm/amdtopology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodemask_t = type { [1 x i64] }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.x86_init_ops = type { %struct.x86_init_resources, %struct.x86_init_mpparse, %struct.x86_init_irqs, %struct.x86_init_oem, %struct.x86_init_paging, %struct.x86_init_timers, %struct.x86_init_iommu, %struct.x86_init_pci, %struct.x86_hyper_init, %struct.x86_init_acpi }
%struct.x86_init_resources = type { ptr, ptr, ptr, ptr }
%struct.x86_init_mpparse = type { ptr, ptr, ptr }
%struct.x86_init_irqs = type { ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_oem = type { ptr, ptr }
%struct.x86_init_paging = type { ptr }
%struct.x86_init_timers = type { ptr, ptr, ptr }
%struct.x86_init_iommu = type { ptr }
%struct.x86_init_pci = type { ptr, ptr, ptr, ptr }
%struct.x86_hyper_init = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_acpi = type { ptr, ptr, ptr }

@max_pfn = external dso_local global i64, align 8
@.str = private unnamed_addr constant [44 x i8] c"\016Scanning NUMA topology in Northbridge %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [31 x i8] c"\016Number of physical nodes %d\0A\00", align 1, !dbg !7
@nodeids = internal global [8 x i8] zeroinitializer, section ".init.data", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [29 x i8] c"\016Skipping disabled node %d\0A\00", align 1, !dbg !43
@.str.3 = private unnamed_addr constant [37 x i8] c"\016Ignoring excess node %d (%Lx:%Lx)\0A\00", align 1, !dbg !48
@.str.4 = private unnamed_addr constant [37 x i8] c"\016Skipping node entry %d (base %Lx)\0A\00", align 1, !dbg !53
@.str.5 = private unnamed_addr constant [43 x i8] c"\013Node %d using interleaving mode %Lx/%Lx\0A\00", align 1, !dbg !55
@numa_nodes_parsed = external dso_local global %struct.nodemask_t, section ".init.data", align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"\016Node %d already present, skipping\0A\00", align 1, !dbg !60
@.str.7 = private unnamed_addr constant [17 x i8] c"\013Empty node %d\0A\00", align 1, !dbg !62
@.str.8 = private unnamed_addr constant [35 x i8] c"\013Node %d bogus settings %Lx-%Lx.\0A\00", align 1, !dbg !67
@.str.9 = private unnamed_addr constant [31 x i8] c"\013Node map not sorted %Lx,%Lx\0A\00", align 1, !dbg !72
@.str.10 = private unnamed_addr constant [39 x i8] c"\016Node %d MemBase %016Lx Limit %016Lx\0A\00", align 1, !dbg !74
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@boot_cpu_physical_apicid = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"\016BSP APIC ID: %02x\0A\00", align 1, !dbg !79
@x86_init = external dso_local global %struct.x86_init_ops, align 8
@__apicid_to_node = external dso_local global [32768 x i16], align 16

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @amd_numa_init() #0 section ".init.text" align 16 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %numnodes = alloca i32, align 4
  %prevbase = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nb = alloca i32, align 4
  %nodeid = alloca i32, align 4
  %reg = alloca i32, align 4
  %bits = alloca i32, align 4
  %cores = alloca i32, align 4
  %apicid_base = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %base = alloca i64, align 8
  %limit = alloca i64, align 8
  %tmp41 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  %tmp122 = alloca i32, align 4
  %tmp131 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  %tmp146 = alloca i32, align 4
  %tmp162 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %start, metadata !101, metadata !DIExpression()), !dbg !121
  store i64 0, ptr %start, align 8, !dbg !121
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %end, metadata !102, metadata !DIExpression()), !dbg !123
  %0 = load i64, ptr @max_pfn, align 8, !dbg !124
  %shl = shl i64 %0, 12, !dbg !124
  store i64 %shl, ptr %end, align 8, !dbg !123
  call void @llvm.lifetime.start.p0(i64 4, ptr %numnodes) #10, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %numnodes, metadata !103, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 8, ptr %prevbase) #10, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %prevbase, metadata !104, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %i, metadata !105, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %j, metadata !106, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #10, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %nb, metadata !107, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %nodeid) #10, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %nodeid, metadata !108, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #10, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !111, metadata !DIExpression()), !dbg !135
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #10, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !112, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 4, ptr %cores) #10, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %cores, metadata !113, metadata !DIExpression()), !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %apicid_base) #10, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %apicid_base, metadata !114, metadata !DIExpression()), !dbg !139
  %call = call i32 @early_pci_allowed() #11, !dbg !140
  %tobool = icmp ne i32 %call, 0, !dbg !140
  br i1 %tobool, label %if.end, label %if.then, !dbg !142

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup184, !dbg !143

if.end:                                           ; preds = %entry
  %call1 = call i32 @find_northbridge() #12, !dbg !144
  store i32 %call1, ptr %nb, align 4, !dbg !145
  %1 = load i32, ptr %nb, align 4, !dbg !146
  %cmp = icmp slt i32 %1, 0, !dbg !148
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !149

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %nb, align 4, !dbg !150
  store i32 %2, ptr %retval, align 4, !dbg !151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup184, !dbg !151

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !152

do.body:                                          ; preds = %if.end3
  br label %do.cond, !dbg !154

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !154

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %nb, align 4, !dbg !152
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %3) #12, !dbg !152
  store i32 %call4, ptr %tmp, align 4, !dbg !154
  %4 = load i32, ptr %tmp, align 4, !dbg !152
  %5 = load i32, ptr %nb, align 4, !dbg !156
  %conv = trunc i32 %5 to i8, !dbg !156
  %call5 = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext %conv, i8 noundef zeroext 0, i8 noundef zeroext 96) #11, !dbg !157
  store i32 %call5, ptr %reg, align 4, !dbg !158
  %6 = load i32, ptr %reg, align 4, !dbg !159
  %shr = lshr i32 %6, 4, !dbg !160
  %and = and i32 %shr, 15, !dbg !161
  %add = add i32 %and, 1, !dbg !162
  store i32 %add, ptr %numnodes, align 4, !dbg !163
  %7 = load i32, ptr %numnodes, align 4, !dbg !164
  %cmp6 = icmp ule i32 %7, 1, !dbg !166
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !167

if.then8:                                         ; preds = %do.end
  store i32 -2, ptr %retval, align 4, !dbg !168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup184, !dbg !168

if.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !169

do.body10:                                        ; preds = %if.end9
  br label %do.cond11, !dbg !171

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !171

do.end12:                                         ; preds = %do.cond11
  %8 = load i32, ptr %numnodes, align 4, !dbg !169
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %8) #12, !dbg !169
  store i32 %call14, ptr %tmp13, align 4, !dbg !171
  %9 = load i32, ptr %tmp13, align 4, !dbg !169
  store i64 0, ptr %prevbase, align 8, !dbg !173
  store i32 0, ptr %i, align 4, !dbg !174
  br label %for.cond, !dbg !175

for.cond:                                         ; preds = %for.inc, %do.end12
  %10 = load i32, ptr %i, align 4, !dbg !176
  %cmp15 = icmp slt i32 %10, 8, !dbg !177
  br i1 %cmp15, label %for.body, label %for.end, !dbg !178

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #10, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %base, metadata !115, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #10, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !119, metadata !DIExpression()), !dbg !181
  %11 = load i32, ptr %nb, align 4, !dbg !182
  %conv17 = trunc i32 %11 to i8, !dbg !182
  %12 = load i32, ptr %i, align 4, !dbg !183
  %mul = mul i32 %12, 8, !dbg !184
  %add18 = add i32 64, %mul, !dbg !185
  %conv19 = trunc i32 %add18 to i8, !dbg !186
  %call20 = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext %conv17, i8 noundef zeroext 1, i8 noundef zeroext %conv19) #11, !dbg !187
  %conv21 = zext i32 %call20 to i64, !dbg !187
  store i64 %conv21, ptr %base, align 8, !dbg !188
  %13 = load i32, ptr %nb, align 4, !dbg !189
  %conv22 = trunc i32 %13 to i8, !dbg !189
  %14 = load i32, ptr %i, align 4, !dbg !190
  %mul23 = mul i32 %14, 8, !dbg !191
  %add24 = add i32 68, %mul23, !dbg !192
  %conv25 = trunc i32 %add24 to i8, !dbg !193
  %call26 = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext %conv22, i8 noundef zeroext 1, i8 noundef zeroext %conv25) #11, !dbg !194
  %conv27 = zext i32 %call26 to i64, !dbg !194
  store i64 %conv27, ptr %limit, align 8, !dbg !195
  %15 = load i64, ptr %limit, align 8, !dbg !196
  %and28 = and i64 %15, 7, !dbg !197
  %conv29 = trunc i64 %and28 to i32, !dbg !196
  store i32 %conv29, ptr %nodeid, align 4, !dbg !198
  %conv30 = trunc i32 %conv29 to i8, !dbg !199
  %16 = load i32, ptr %i, align 4, !dbg !200
  %idxprom = sext i32 %16 to i64, !dbg !201
  %arrayidx = getelementptr [8 x i8], ptr @nodeids, i64 0, i64 %idxprom, !dbg !201
  store i8 %conv30, ptr %arrayidx, align 1, !dbg !202
  %17 = load i64, ptr %base, align 8, !dbg !203
  %and31 = and i64 %17, 3, !dbg !205
  %cmp32 = icmp eq i64 %and31, 0, !dbg !206
  br i1 %cmp32, label %if.then34, label %if.end44, !dbg !207

if.then34:                                        ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !dbg !208
  %19 = load i32, ptr %numnodes, align 4, !dbg !211
  %cmp35 = icmp ult i32 %18, %19, !dbg !212
  br i1 %cmp35, label %if.then37, label %if.end43, !dbg !213

if.then37:                                        ; preds = %if.then34
  br label %do.body38, !dbg !214

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !216

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !216

do.end40:                                         ; preds = %do.cond39
  %20 = load i32, ptr %i, align 4, !dbg !214
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %20) #12, !dbg !214
  store i32 %call42, ptr %tmp41, align 4, !dbg !216
  %21 = load i32, ptr %tmp41, align 4, !dbg !214
  br label %if.end43, !dbg !218

if.end43:                                         ; preds = %do.end40, %if.then34
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !219

if.end44:                                         ; preds = %for.body
  %22 = load i32, ptr %nodeid, align 4, !dbg !220
  %23 = load i32, ptr %numnodes, align 4, !dbg !222
  %cmp45 = icmp uge i32 %22, %23, !dbg !223
  br i1 %cmp45, label %if.then47, label %if.end53, !dbg !224

if.then47:                                        ; preds = %if.end44
  br label %do.body48, !dbg !225

do.body48:                                        ; preds = %if.then47
  br label %do.cond49, !dbg !228

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !228

do.end50:                                         ; preds = %do.cond49
  %24 = load i32, ptr %nodeid, align 4, !dbg !225
  %25 = load i64, ptr %base, align 8, !dbg !225
  %26 = load i64, ptr %limit, align 8, !dbg !225
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %24, i64 noundef %25, i64 noundef %26) #12, !dbg !225
  store i32 %call52, ptr %tmp51, align 4, !dbg !228
  %27 = load i32, ptr %tmp51, align 4, !dbg !225
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !230

if.end53:                                         ; preds = %if.end44
  %28 = load i64, ptr %limit, align 8, !dbg !231
  %tobool54 = icmp ne i64 %28, 0, !dbg !231
  br i1 %tobool54, label %if.end61, label %if.then55, !dbg !233

if.then55:                                        ; preds = %if.end53
  br label %do.body56, !dbg !234

do.body56:                                        ; preds = %if.then55
  br label %do.cond57, !dbg !237

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !237

do.end58:                                         ; preds = %do.cond57
  %29 = load i32, ptr %i, align 4, !dbg !234
  %30 = load i64, ptr %base, align 8, !dbg !234
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %29, i64 noundef %30) #12, !dbg !234
  store i32 %call60, ptr %tmp59, align 4, !dbg !237
  %31 = load i32, ptr %tmp59, align 4, !dbg !234
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !239

if.end61:                                         ; preds = %if.end53
  %32 = load i64, ptr %base, align 8, !dbg !240
  %shr62 = lshr i64 %32, 8, !dbg !242
  %and63 = and i64 %shr62, 3, !dbg !243
  %tobool64 = icmp ne i64 %and63, 0, !dbg !243
  br i1 %tobool64, label %if.then68, label %lor.lhs.false, !dbg !244

lor.lhs.false:                                    ; preds = %if.end61
  %33 = load i64, ptr %limit, align 8, !dbg !245
  %shr65 = lshr i64 %33, 8, !dbg !246
  %and66 = and i64 %shr65, 3, !dbg !247
  %tobool67 = icmp ne i64 %and66, 0, !dbg !247
  br i1 %tobool67, label %if.then68, label %if.end78, !dbg !248

if.then68:                                        ; preds = %lor.lhs.false, %if.end61
  br label %do.body69, !dbg !249

do.body69:                                        ; preds = %if.then68
  br label %do.cond70, !dbg !252

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !252

do.end71:                                         ; preds = %do.cond70
  %34 = load i32, ptr %nodeid, align 4, !dbg !249
  %35 = load i64, ptr %base, align 8, !dbg !249
  %shr73 = lshr i64 %35, 8, !dbg !249
  %and74 = and i64 %shr73, 3, !dbg !249
  %36 = load i64, ptr %limit, align 8, !dbg !249
  %shr75 = lshr i64 %36, 8, !dbg !249
  %and76 = and i64 %shr75, 3, !dbg !249
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %34, i64 noundef %and74, i64 noundef %and76) #12, !dbg !249
  store i32 %call77, ptr %tmp72, align 4, !dbg !252
  %37 = load i32, ptr %tmp72, align 4, !dbg !249
  store i32 -22, ptr %retval, align 4, !dbg !254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !254

if.end78:                                         ; preds = %lor.lhs.false
  %38 = load i32, ptr %nodeid, align 4, !dbg !255
  %39 = call i1 @llvm.is.constant.i32(i32 %38), !dbg !255
  br i1 %39, label %land.lhs.true, label %cond.false, !dbg !255

land.lhs.true:                                    ; preds = %if.end78
  %conv79 = zext i1 icmp ne (i64 ptrtoint (ptr @numa_nodes_parsed to i64), i64 0) to i32, !dbg !255
  %40 = call i1 @llvm.is.constant.i32(i32 %conv79), !dbg !255
  br i1 %40, label %land.lhs.true80, label %cond.false, !dbg !255

land.lhs.true80:                                  ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr @numa_nodes_parsed to i64), i64 0), label %land.lhs.true82, label %cond.false, !dbg !255

land.lhs.true82:                                  ; preds = %land.lhs.true80
  %41 = load i64, ptr @numa_nodes_parsed, align 8, !dbg !255
  %42 = call i1 @llvm.is.constant.i64(i64 %41), !dbg !255
  br i1 %42, label %cond.true, label %cond.false, !dbg !257

cond.true:                                        ; preds = %land.lhs.true82
  %43 = load i32, ptr %nodeid, align 4, !dbg !255
  %conv83 = zext i32 %43 to i64, !dbg !255
  %call84 = call zeroext i1 @const_test_bit(i64 noundef %conv83, ptr noundef @numa_nodes_parsed) #11, !dbg !255
  br i1 %call84, label %if.then89, label %if.end95, !dbg !255

cond.false:                                       ; preds = %land.lhs.true82, %land.lhs.true80, %land.lhs.true, %if.end78
  %44 = load i32, ptr %nodeid, align 4, !dbg !255
  %conv86 = zext i32 %44 to i64, !dbg !255
  %call87 = call zeroext i1 @_test_bit(i64 noundef %conv86, ptr noundef @numa_nodes_parsed) #11, !dbg !255
  br i1 %call87, label %if.then89, label %if.end95, !dbg !257

if.then89:                                        ; preds = %cond.false, %cond.true
  br label %do.body90, !dbg !258

do.body90:                                        ; preds = %if.then89
  br label %do.cond91, !dbg !261

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !261

do.end92:                                         ; preds = %do.cond91
  %45 = load i32, ptr %nodeid, align 4, !dbg !258
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %45) #12, !dbg !258
  store i32 %call94, ptr %tmp93, align 4, !dbg !261
  %46 = load i32, ptr %tmp93, align 4, !dbg !258
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !263

if.end95:                                         ; preds = %cond.false, %cond.true
  %47 = load i64, ptr %limit, align 8, !dbg !264
  %shr96 = lshr i64 %47, 16, !dbg !264
  store i64 %shr96, ptr %limit, align 8, !dbg !264
  %48 = load i64, ptr %limit, align 8, !dbg !265
  %inc = add i64 %48, 1, !dbg !265
  store i64 %inc, ptr %limit, align 8, !dbg !265
  %49 = load i64, ptr %limit, align 8, !dbg !266
  %shl97 = shl i64 %49, 24, !dbg !266
  store i64 %shl97, ptr %limit, align 8, !dbg !266
  %50 = load i64, ptr %limit, align 8, !dbg !267
  %51 = load i64, ptr %end, align 8, !dbg !269
  %cmp98 = icmp ugt i64 %50, %51, !dbg !270
  br i1 %cmp98, label %if.then100, label %if.end101, !dbg !271

if.then100:                                       ; preds = %if.end95
  %52 = load i64, ptr %end, align 8, !dbg !272
  store i64 %52, ptr %limit, align 8, !dbg !273
  br label %if.end101, !dbg !274

if.end101:                                        ; preds = %if.then100, %if.end95
  %53 = load i64, ptr %limit, align 8, !dbg !275
  %54 = load i64, ptr %base, align 8, !dbg !277
  %cmp102 = icmp ule i64 %53, %54, !dbg !278
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !279

if.then104:                                       ; preds = %if.end101
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !280

if.end105:                                        ; preds = %if.end101
  %55 = load i64, ptr %base, align 8, !dbg !281
  %shr106 = lshr i64 %55, 16, !dbg !281
  store i64 %shr106, ptr %base, align 8, !dbg !281
  %56 = load i64, ptr %base, align 8, !dbg !282
  %shl107 = shl i64 %56, 24, !dbg !282
  store i64 %shl107, ptr %base, align 8, !dbg !282
  %57 = load i64, ptr %base, align 8, !dbg !283
  %58 = load i64, ptr %start, align 8, !dbg !285
  %cmp108 = icmp ult i64 %57, %58, !dbg !286
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !287

if.then110:                                       ; preds = %if.end105
  %59 = load i64, ptr %start, align 8, !dbg !288
  store i64 %59, ptr %base, align 8, !dbg !289
  br label %if.end111, !dbg !290

if.end111:                                        ; preds = %if.then110, %if.end105
  %60 = load i64, ptr %limit, align 8, !dbg !291
  %61 = load i64, ptr %end, align 8, !dbg !293
  %cmp112 = icmp ugt i64 %60, %61, !dbg !294
  br i1 %cmp112, label %if.then114, label %if.end115, !dbg !295

if.then114:                                       ; preds = %if.end111
  %62 = load i64, ptr %end, align 8, !dbg !296
  store i64 %62, ptr %limit, align 8, !dbg !297
  br label %if.end115, !dbg !298

if.end115:                                        ; preds = %if.then114, %if.end111
  %63 = load i64, ptr %limit, align 8, !dbg !299
  %64 = load i64, ptr %base, align 8, !dbg !301
  %cmp116 = icmp eq i64 %63, %64, !dbg !302
  br i1 %cmp116, label %if.then118, label %if.end124, !dbg !303

if.then118:                                       ; preds = %if.end115
  br label %do.body119, !dbg !304

do.body119:                                       ; preds = %if.then118
  br label %do.cond120, !dbg !307

do.cond120:                                       ; preds = %do.body119
  br label %do.end121, !dbg !307

do.end121:                                        ; preds = %do.cond120
  %65 = load i32, ptr %nodeid, align 4, !dbg !304
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %65) #12, !dbg !304
  store i32 %call123, ptr %tmp122, align 4, !dbg !307
  %66 = load i32, ptr %tmp122, align 4, !dbg !304
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !309

if.end124:                                        ; preds = %if.end115
  %67 = load i64, ptr %limit, align 8, !dbg !310
  %68 = load i64, ptr %base, align 8, !dbg !312
  %cmp125 = icmp ult i64 %67, %68, !dbg !313
  br i1 %cmp125, label %if.then127, label %if.end133, !dbg !314

if.then127:                                       ; preds = %if.end124
  br label %do.body128, !dbg !315

do.body128:                                       ; preds = %if.then127
  br label %do.cond129, !dbg !318

do.cond129:                                       ; preds = %do.body128
  br label %do.end130, !dbg !318

do.end130:                                        ; preds = %do.cond129
  %69 = load i32, ptr %nodeid, align 4, !dbg !315
  %70 = load i64, ptr %base, align 8, !dbg !315
  %71 = load i64, ptr %limit, align 8, !dbg !315
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %69, i64 noundef %70, i64 noundef %71) #12, !dbg !315
  store i32 %call132, ptr %tmp131, align 4, !dbg !318
  %72 = load i32, ptr %tmp131, align 4, !dbg !315
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !320

if.end133:                                        ; preds = %if.end124
  %73 = load i64, ptr %prevbase, align 8, !dbg !321
  %74 = load i64, ptr %base, align 8, !dbg !323
  %cmp134 = icmp ugt i64 %73, %74, !dbg !324
  br i1 %cmp134, label %if.then136, label %if.end142, !dbg !325

if.then136:                                       ; preds = %if.end133
  br label %do.body137, !dbg !326

do.body137:                                       ; preds = %if.then136
  br label %do.cond138, !dbg !329

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !329

do.end139:                                        ; preds = %do.cond138
  %75 = load i64, ptr %prevbase, align 8, !dbg !326
  %76 = load i64, ptr %base, align 8, !dbg !326
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i64 noundef %75, i64 noundef %76) #12, !dbg !326
  store i32 %call141, ptr %tmp140, align 4, !dbg !329
  %77 = load i32, ptr %tmp140, align 4, !dbg !326
  store i32 -22, ptr %retval, align 4, !dbg !331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !331

if.end142:                                        ; preds = %if.end133
  br label %do.body143, !dbg !332

do.body143:                                       ; preds = %if.end142
  br label %do.cond144, !dbg !334

do.cond144:                                       ; preds = %do.body143
  br label %do.end145, !dbg !334

do.end145:                                        ; preds = %do.cond144
  %78 = load i32, ptr %nodeid, align 4, !dbg !332
  %79 = load i64, ptr %base, align 8, !dbg !332
  %80 = load i64, ptr %limit, align 8, !dbg !332
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i32 noundef %78, i64 noundef %79, i64 noundef %80) #12, !dbg !332
  store i32 %call147, ptr %tmp146, align 4, !dbg !334
  %81 = load i32, ptr %tmp146, align 4, !dbg !332
  %82 = load i64, ptr %base, align 8, !dbg !336
  store i64 %82, ptr %prevbase, align 8, !dbg !337
  %83 = load i32, ptr %nodeid, align 4, !dbg !338
  %84 = load i64, ptr %base, align 8, !dbg !339
  %85 = load i64, ptr %limit, align 8, !dbg !340
  %call148 = call i32 @numa_add_memblk(i32 noundef %83, i64 noundef %84, i64 noundef %85) #12, !dbg !341
  %86 = load i32, ptr %nodeid, align 4, !dbg !342
  call void @__node_set(i32 noundef %86, ptr noundef @numa_nodes_parsed) #11, !dbg !342
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !343
  br label %cleanup, !dbg !343

cleanup:                                          ; preds = %do.end145, %do.end139, %do.end130, %do.end121, %if.then104, %do.end92, %do.end71, %do.end58, %do.end50, %if.end43
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #10, !dbg !343
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #10, !dbg !343
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup184 [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !344

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %87 = load i32, ptr %i, align 4, !dbg !345
  %inc150 = add i32 %87, 1, !dbg !345
  store i32 %inc150, ptr %i, align 4, !dbg !345
  br label %for.cond, !dbg !346, !llvm.loop !347

for.end:                                          ; preds = %for.cond
  %call151 = call zeroext i1 @__nodes_empty(ptr noundef @numa_nodes_parsed, i32 noundef 64) #11, !dbg !351
  br i1 %call151, label %if.then152, label %if.end153, !dbg !353

if.then152:                                       ; preds = %for.end
  store i32 -2, ptr %retval, align 4, !dbg !354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup184, !dbg !354

if.end153:                                        ; preds = %for.end
  %88 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 6), align 2, !dbg !355
  %conv154 = zext i8 %88 to i32, !dbg !356
  store i32 %conv154, ptr %bits, align 4, !dbg !357
  %89 = load i32, ptr %bits, align 4, !dbg !358
  %shl155 = shl i32 1, %89, !dbg !359
  store i32 %shl155, ptr %cores, align 4, !dbg !360
  store i32 0, ptr %apicid_base, align 4, !dbg !361
  call void @early_get_smp_config() #11, !dbg !362
  %90 = load i32, ptr @boot_cpu_physical_apicid, align 4, !dbg !363
  %cmp156 = icmp ugt i32 %90, 0, !dbg !365
  br i1 %cmp156, label %if.then158, label %if.end164, !dbg !366

if.then158:                                       ; preds = %if.end153
  br label %do.body159, !dbg !367

do.body159:                                       ; preds = %if.then158
  br label %do.cond160, !dbg !370

do.cond160:                                       ; preds = %do.body159
  br label %do.end161, !dbg !370

do.end161:                                        ; preds = %do.cond160
  %91 = load i32, ptr @boot_cpu_physical_apicid, align 4, !dbg !367
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %91) #12, !dbg !367
  store i32 %call163, ptr %tmp162, align 4, !dbg !370
  %92 = load i32, ptr %tmp162, align 4, !dbg !367
  %93 = load i32, ptr @boot_cpu_physical_apicid, align 4, !dbg !372
  store i32 %93, ptr %apicid_base, align 4, !dbg !373
  br label %if.end164, !dbg !374

if.end164:                                        ; preds = %do.end161, %if.end153
  %call165 = call i32 @__first_node(ptr noundef @numa_nodes_parsed) #11, !dbg !375
  store i32 %call165, ptr %i, align 4, !dbg !375
  br label %for.cond166, !dbg !375

for.cond166:                                      ; preds = %for.inc181, %if.end164
  %94 = load i32, ptr %i, align 4, !dbg !377
  %cmp167 = icmp slt i32 %94, 64, !dbg !377
  br i1 %cmp167, label %for.body169, label %for.end183, !dbg !375

for.body169:                                      ; preds = %for.cond166
  %95 = load i32, ptr %apicid_base, align 4, !dbg !379
  store i32 %95, ptr %j, align 4, !dbg !381
  br label %for.cond170, !dbg !382

for.cond170:                                      ; preds = %for.inc178, %for.body169
  %96 = load i32, ptr %j, align 4, !dbg !383
  %97 = load i32, ptr %cores, align 4, !dbg !385
  %98 = load i32, ptr %apicid_base, align 4, !dbg !386
  %add171 = add i32 %97, %98, !dbg !387
  %cmp172 = icmp ult i32 %96, %add171, !dbg !388
  br i1 %cmp172, label %for.body174, label %for.end180, !dbg !389

for.body174:                                      ; preds = %for.cond170
  %99 = load i32, ptr %i, align 4, !dbg !390
  %100 = load i32, ptr %bits, align 4, !dbg !391
  %shl175 = shl i32 %99, %100, !dbg !392
  %101 = load i32, ptr %j, align 4, !dbg !393
  %add176 = add i32 %shl175, %101, !dbg !394
  %102 = load i32, ptr %i, align 4, !dbg !395
  %conv177 = trunc i32 %102 to i16, !dbg !395
  call void @set_apicid_to_node(i32 noundef %add176, i16 noundef signext %conv177) #11, !dbg !396
  br label %for.inc178, !dbg !396

for.inc178:                                       ; preds = %for.body174
  %103 = load i32, ptr %j, align 4, !dbg !397
  %inc179 = add i32 %103, 1, !dbg !397
  store i32 %inc179, ptr %j, align 4, !dbg !397
  br label %for.cond170, !dbg !398, !llvm.loop !399

for.end180:                                       ; preds = %for.cond170
  br label %for.inc181, !dbg !400

for.inc181:                                       ; preds = %for.end180
  %104 = load i32, ptr %i, align 4, !dbg !377
  %call182 = call i32 @__next_node(i32 noundef %104, ptr noundef @numa_nodes_parsed) #11, !dbg !377
  store i32 %call182, ptr %i, align 4, !dbg !377
  br label %for.cond166, !dbg !377, !llvm.loop !401

for.end183:                                       ; preds = %for.cond166
  store i32 0, ptr %retval, align 4, !dbg !403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup184, !dbg !403

cleanup184:                                       ; preds = %for.end183, %if.then152, %cleanup, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %apicid_base) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %cores) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %nodeid) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 8, ptr %prevbase) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %numnodes) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10, !dbg !404
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10, !dbg !404
  %105 = load i32, ptr %retval, align 4, !dbg !404
  ret i32 %105, !dbg !404
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !405 dso_local i32 @early_pci_allowed() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @find_northbridge() #0 section ".init.text" align 16 !dbg !407 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  %header = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #10, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %num, metadata !409, metadata !DIExpression()), !dbg !415
  store i32 0, ptr %num, align 4, !dbg !416
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %num, align 4, !dbg !418
  %cmp = icmp slt i32 %0, 32, !dbg !419
  br i1 %cmp, label %for.body, label %for.end, !dbg !420

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %header) #10, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %header, metadata !410, metadata !DIExpression()), !dbg !422
  %1 = load i32, ptr %num, align 4, !dbg !423
  %conv = trunc i32 %1 to i8, !dbg !423
  %call = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext %conv, i8 noundef zeroext 0, i8 noundef zeroext 0) #11, !dbg !424
  store i32 %call, ptr %header, align 4, !dbg !425
  %2 = load i32, ptr %header, align 4, !dbg !426
  %cmp1 = icmp ne i32 %2, 285216802, !dbg !428
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !429

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, ptr %header, align 4, !dbg !430
  %cmp3 = icmp ne i32 %3, 301994018, !dbg !431
  br i1 %cmp3, label %land.lhs.true5, label %if.end, !dbg !432

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %header, align 4, !dbg !433
  %cmp6 = icmp ne i32 %4, 318771234, !dbg !434
  br i1 %cmp6, label %if.then, label %if.end, !dbg !435

if.then:                                          ; preds = %land.lhs.true5
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %for.body
  %5 = load i32, ptr %num, align 4, !dbg !437
  %conv8 = trunc i32 %5 to i8, !dbg !437
  %call9 = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext %conv8, i8 noundef zeroext 1, i8 noundef zeroext 0) #11, !dbg !438
  store i32 %call9, ptr %header, align 4, !dbg !439
  %6 = load i32, ptr %header, align 4, !dbg !440
  %cmp10 = icmp ne i32 %6, 285282338, !dbg !442
  br i1 %cmp10, label %land.lhs.true12, label %if.end19, !dbg !443

land.lhs.true12:                                  ; preds = %if.end
  %7 = load i32, ptr %header, align 4, !dbg !444
  %cmp13 = icmp ne i32 %7, 302059554, !dbg !445
  br i1 %cmp13, label %land.lhs.true15, label %if.end19, !dbg !446

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %8 = load i32, ptr %header, align 4, !dbg !447
  %cmp16 = icmp ne i32 %8, 318836770, !dbg !448
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !449

if.then18:                                        ; preds = %land.lhs.true15
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !450

if.end19:                                         ; preds = %land.lhs.true15, %land.lhs.true12, %if.end
  %9 = load i32, ptr %num, align 4, !dbg !451
  store i32 %9, ptr %retval, align 4, !dbg !452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !452

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %header) #10, !dbg !453
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup20 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %10 = load i32, ptr %num, align 4, !dbg !454
  %inc = add i32 %10, 1, !dbg !454
  store i32 %inc, ptr %num, align 4, !dbg !454
  br label %for.cond, !dbg !455, !llvm.loop !456

for.end:                                          ; preds = %for.cond
  store i32 -2, ptr %retval, align 4, !dbg !458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !458

cleanup20:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #10, !dbg !459
  %11 = load i32, ptr %retval, align 4, !dbg !459
  ret i32 %11, !dbg !459
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !460 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !466 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !471 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !481, metadata !DIExpression()), !dbg !486
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !482, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !488
  call void @llvm.dbg.declare(metadata ptr %p, metadata !483, metadata !DIExpression()), !dbg !489
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !490
  %1 = load i64, ptr %nr.addr, align 8, !dbg !491
  %div = udiv i64 %1, 64, !dbg !491
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !492
  store ptr %add.ptr, ptr %p, align 8, !dbg !489
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !484, metadata !DIExpression()), !dbg !494
  %2 = load i64, ptr %nr.addr, align 8, !dbg !495
  %rem = urem i64 %2, 64, !dbg !495
  %shl = shl i64 1, %rem, !dbg !495
  store i64 %shl, ptr %mask, align 8, !dbg !494
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %val, metadata !485, metadata !DIExpression()), !dbg !497
  %3 = load ptr, ptr %p, align 8, !dbg !498
  %4 = load i64, ptr %3, align 8, !dbg !499
  store i64 %4, ptr %val, align 8, !dbg !497
  %5 = load i64, ptr %val, align 8, !dbg !500
  %6 = load i64, ptr %mask, align 8, !dbg !501
  %and = and i64 %5, %6, !dbg !502
  %tobool = icmp ne i64 %and, 0, !dbg !503
  %lnot = xor i1 %tobool, true, !dbg !503
  %lnot1 = xor i1 %lnot, true, !dbg !504
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !505
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !505
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !505
  ret i1 %lnot1, !dbg !506
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !507 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !510, metadata !DIExpression()), !dbg !512
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !511, metadata !DIExpression()), !dbg !513
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !514
  %1 = load i64, ptr %nr.addr, align 8, !dbg !515
  %div = udiv i64 %1, 64, !dbg !515
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !516
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !517
  %2 = load i64, ptr %nr.addr, align 8, !dbg !518
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !519
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !520
  ret i1 %call, !dbg !521
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !522 dso_local i32 @numa_add_memblk(i32 noundef, i64 noundef, i64 noundef) #4 section ".init.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__node_set(i32 noundef %node, ptr noundef %dstp) #6 align 16 !dbg !526 {
entry:
  %node.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !540, metadata !DIExpression()), !dbg !542
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !541, metadata !DIExpression()), !dbg !543
  %0 = load i32, ptr %node.addr, align 4, !dbg !544
  %conv = sext i32 %0 to i64, !dbg !544
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !545
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %1, i32 0, i32 0, !dbg !546
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !545
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #11, !dbg !547
  ret void, !dbg !548
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__nodes_empty(ptr noundef %srcp, i32 noundef %nbits) #7 align 16 !dbg !549 {
entry:
  %srcp.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !555, metadata !DIExpression()), !dbg !557
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !556, metadata !DIExpression()), !dbg !558
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !559
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !560
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !559
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !561
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef %1) #11, !dbg !562
  ret i1 %call, !dbg !563
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_get_smp_config() #7 align 16 !dbg !564 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 1, i32 2), align 8, !dbg !568
  call void %0(i32 noundef 1) #11, !dbg !569
  ret void, !dbg !570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_node(ptr noundef %srcp) #7 align 16 !dbg !571 {
entry:
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x46 = alloca i32, align 4
  %__UNIQUE_ID___y47 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !575, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x46) #10, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x46, metadata !576, metadata !DIExpression()), !dbg !580
  store i32 64, ptr %__UNIQUE_ID___x46, align 4, !dbg !580
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y47) #10, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y47, metadata !578, metadata !DIExpression()), !dbg !580
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !580
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !580
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !580
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #11, !dbg !580
  %conv = trunc i64 %call to i32, !dbg !580
  store i32 %conv, ptr %__UNIQUE_ID___y47, align 4, !dbg !580
  %1 = load i32, ptr %__UNIQUE_ID___x46, align 4, !dbg !580
  %2 = load i32, ptr %__UNIQUE_ID___y47, align 4, !dbg !580
  %cmp = icmp ult i32 %1, %2, !dbg !580
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !580

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x46, align 4, !dbg !580
  br label %cond.end, !dbg !580

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y47, align 4, !dbg !580
  br label %cond.end, !dbg !580

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !580
  store i32 %cond, ptr %tmp, align 4, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y47) #10, !dbg !581
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x46) #10, !dbg !581
  %5 = load i32, ptr %tmp, align 4, !dbg !580
  ret i32 %5, !dbg !582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_apicid_to_node(i32 noundef %apicid, i16 noundef signext %node) #7 align 16 !dbg !583 {
entry:
  %apicid.addr = alloca i32, align 4
  %node.addr = alloca i16, align 2
  store i32 %apicid, ptr %apicid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %apicid.addr, metadata !590, metadata !DIExpression()), !dbg !592
  store i16 %node, ptr %node.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !591, metadata !DIExpression()), !dbg !593
  %0 = load i16, ptr %node.addr, align 2, !dbg !594
  %1 = load i32, ptr %apicid.addr, align 4, !dbg !595
  %idxprom = sext i32 %1 to i64, !dbg !596
  %arrayidx = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom, !dbg !596
  store i16 %0, ptr %arrayidx, align 2, !dbg !597
  ret void, !dbg !598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__next_node(i32 noundef %n, ptr noundef %srcp) #7 align 16 !dbg !599 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x48 = alloca i32, align 4
  %__UNIQUE_ID___y49 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !603, metadata !DIExpression()), !dbg !608
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !604, metadata !DIExpression()), !dbg !609
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x48) #10, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x48, metadata !605, metadata !DIExpression()), !dbg !610
  store i32 64, ptr %__UNIQUE_ID___x48, align 4, !dbg !610
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y49) #10, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y49, metadata !607, metadata !DIExpression()), !dbg !610
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !610
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !610
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !610
  %1 = load i32, ptr %n.addr, align 4, !dbg !610
  %add = add i32 %1, 1, !dbg !610
  %conv = sext i32 %add to i64, !dbg !610
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #11, !dbg !610
  %conv1 = trunc i64 %call to i32, !dbg !610
  store i32 %conv1, ptr %__UNIQUE_ID___y49, align 4, !dbg !610
  %2 = load i32, ptr %__UNIQUE_ID___x48, align 4, !dbg !610
  %3 = load i32, ptr %__UNIQUE_ID___y49, align 4, !dbg !610
  %cmp = icmp ult i32 %2, %3, !dbg !610
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !610

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___x48, align 4, !dbg !610
  br label %cond.end, !dbg !610

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___y49, align 4, !dbg !610
  br label %cond.end, !dbg !610

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !610
  store i32 %cond, ptr %tmp, align 4, !dbg !610
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y49) #10, !dbg !611
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x48) #10, !dbg !611
  %6 = load i32, ptr %tmp, align 4, !dbg !610
  ret i32 %6, !dbg !612
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !613 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !625, metadata !DIExpression()), !dbg !627
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !626, metadata !DIExpression()), !dbg !628
  %0 = load ptr, ptr %v.addr, align 8, !dbg !629
  %1 = load i64, ptr %size.addr, align 8, !dbg !630
  %conv = trunc i64 %1 to i32, !dbg !630
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !631
  %2 = load ptr, ptr %v.addr, align 8, !dbg !632
  %3 = load i64, ptr %size.addr, align 8, !dbg !632
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !632
  ret void, !dbg !633
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !634 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !637, metadata !DIExpression()), !dbg !639
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !638, metadata !DIExpression()), !dbg !640
  %0 = load i64, ptr %nr.addr, align 8, !dbg !641
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !642
  br i1 %1, label %cond.true, label %cond.false, !dbg !642

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !643
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !644
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !645
  %conv = zext i1 %call to i32, !dbg !645
  br label %cond.end, !dbg !642

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !646
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !647
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !648
  %conv2 = zext i1 %call1 to i32, !dbg !648
  br label %cond.end, !dbg !642

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !642
  %tobool = icmp ne i32 %cond, 0, !dbg !642
  ret i1 %tobool, !dbg !649
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !650 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !655, metadata !DIExpression()), !dbg !657
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !656, metadata !DIExpression()), !dbg !658
  ret i1 true, !dbg !659
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !660 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !665, metadata !DIExpression()), !dbg !668
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !666, metadata !DIExpression()), !dbg !669
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !667, metadata !DIExpression()), !dbg !670
  ret void, !dbg !671
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !672 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !676, metadata !DIExpression()), !dbg !678
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !677, metadata !DIExpression()), !dbg !679
  %0 = load i64, ptr %nr.addr, align 8, !dbg !680
  %and = and i64 %0, 63, !dbg !681
  %shl = shl i64 1, %and, !dbg !682
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !683
  %2 = load i64, ptr %nr.addr, align 8, !dbg !684
  %shr = ashr i64 %2, 6, !dbg !685
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !683
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !683
  %and1 = and i64 %shl, %3, !dbg !686
  %cmp = icmp ne i64 %and1, 0, !dbg !687
  ret i1 %cmp, !dbg !688
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !689 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !691, metadata !DIExpression()), !dbg !694
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !692, metadata !DIExpression()), !dbg !695
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !696
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !693, metadata !DIExpression()), !dbg !697
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !698
  %1 = load i64, ptr %nr.addr, align 8, !dbg !699
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !700, !srcloc !701
  %3 = icmp ult i8 %2, 2, !dbg !700
  call void @llvm.assume(i1 %3), !dbg !700
  store i8 %2, ptr %oldbit, align 1, !dbg !700
  %4 = load i8, ptr %oldbit, align 1, !dbg !702, !range !703, !noundef !704
  %tobool = trunc i8 %4 to i1, !dbg !702
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !705
  ret i1 %tobool, !dbg !706
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !707 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !713, metadata !DIExpression()), !dbg !715
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !714, metadata !DIExpression()), !dbg !716
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !717
  %1 = load i64, ptr %nr.addr, align 8, !dbg !718
  %div = sdiv i64 %1, 64, !dbg !718
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !719
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !720
  %2 = load i64, ptr %nr.addr, align 8, !dbg !721
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !722
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !723
  ret void, !dbg !724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !725 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !727, metadata !DIExpression()), !dbg !729
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !728, metadata !DIExpression()), !dbg !730
  %0 = load ptr, ptr %v.addr, align 8, !dbg !731
  %1 = load i64, ptr %size.addr, align 8, !dbg !732
  %conv = trunc i64 %1 to i32, !dbg !732
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !733
  %2 = load ptr, ptr %v.addr, align 8, !dbg !734
  %3 = load i64, ptr %size.addr, align 8, !dbg !734
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !734
  ret void, !dbg !735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !736 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !738, metadata !DIExpression()), !dbg !740
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !739, metadata !DIExpression()), !dbg !741
  %0 = load i64, ptr %nr.addr, align 8, !dbg !742
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !744
  br i1 %1, label %if.then, label %if.else, !dbg !745

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !746
  %3 = load i64, ptr %nr.addr, align 8, !dbg !746
  %shr = ashr i64 %3, 3, !dbg !746
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !746
  %4 = load i64, ptr %nr.addr, align 8, !dbg !748
  %and = and i64 %4, 7, !dbg !748
  %sh_prom = trunc i64 %and to i32, !dbg !748
  %shl = shl i32 1, %sh_prom, !dbg !748
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !749, !srcloc !750
  br label %if.end, !dbg !751

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !752
  %6 = load i64, ptr %nr.addr, align 8, !dbg !754
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !755, !srcloc !756
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !757
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !758 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !760, metadata !DIExpression()), !dbg !762
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !761, metadata !DIExpression()), !dbg !763
  ret i1 true, !dbg !764
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #7 align 16 !dbg !765 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !770, metadata !DIExpression()), !dbg !772
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !771, metadata !DIExpression()), !dbg !773
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !774
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !774
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !774

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !774
  %cmp = icmp ule i32 %2, 64, !dbg !774
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !774

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !774
  %cmp2 = icmp ugt i32 %3, 0, !dbg !774
  br i1 %cmp2, label %if.then, label %if.end, !dbg !776

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !777
  %5 = load i64, ptr %4, align 8, !dbg !778
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !779
  %sub = sub i32 0, %6, !dbg !779
  %and = and i32 %sub, 63, !dbg !779
  %sh_prom = zext i32 %and to i64, !dbg !779
  %shr = lshr i64 -1, %sh_prom, !dbg !779
  %and3 = and i64 %5, %shr, !dbg !780
  %tobool = icmp ne i64 %and3, 0, !dbg !781
  %lnot = xor i1 %tobool, true, !dbg !781
  store i1 %lnot, ptr %retval, align 1, !dbg !782
  br label %return, !dbg !782

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !783
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !784
  %conv = zext i32 %8 to i64, !dbg !784
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #11, !dbg !785
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !786
  %conv4 = zext i32 %9 to i64, !dbg !786
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !787
  store i1 %cmp5, ptr %retval, align 1, !dbg !788
  br label %return, !dbg !788

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !789
  ret i1 %10, !dbg !789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #7 align 16 !dbg !790 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !795, metadata !DIExpression()), !dbg !800
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !796, metadata !DIExpression()), !dbg !801
  %0 = load i64, ptr %size.addr, align 8, !dbg !802
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !802
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !802

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !802
  %cmp = icmp ule i64 %2, 64, !dbg !802
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !802

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !802
  %cmp2 = icmp ugt i64 %3, 0, !dbg !802
  br i1 %cmp2, label %if.then, label %if.end, !dbg !803

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %val, metadata !797, metadata !DIExpression()), !dbg !805
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !806
  %5 = load i64, ptr %4, align 8, !dbg !807
  %6 = load i64, ptr %size.addr, align 8, !dbg !808
  %sub = sub i64 %6, 1, !dbg !808
  %sub3 = sub i64 63, %sub, !dbg !808
  %shr = lshr i64 -1, %sub3, !dbg !808
  %and = and i64 -1, %shr, !dbg !808
  %add = add i64 0, %and, !dbg !808
  %and4 = and i64 %5, %add, !dbg !809
  store i64 %and4, ptr %val, align 8, !dbg !805
  %7 = load i64, ptr %val, align 8, !dbg !810
  %tobool = icmp ne i64 %7, 0, !dbg !810
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !810

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !811
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !811
  br i1 %9, label %cond.true5, label %cond.false, !dbg !811

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !811
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !811
  %cast = trunc i64 %11 to i32, !dbg !811
  %conv = sext i32 %cast to i64, !dbg !811
  br label %cond.end, !dbg !811

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !811
  %call = call i64 @variable__ffs(i64 noundef %12) #11, !dbg !811
  br label %cond.end, !dbg !811

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !811
  br label %cond.end7, !dbg !810

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !812
  br label %cond.end7, !dbg !810

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !810
  store i64 %cond8, ptr %retval, align 8, !dbg !813
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !814
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !815
  %15 = load i64, ptr %size.addr, align 8, !dbg !816
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #11, !dbg !817
  store i64 %call9, ptr %retval, align 8, !dbg !818
  br label %return, !dbg !818

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !819
  ret i64 %16, !dbg !819
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !820 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !824, metadata !DIExpression()), !dbg !825
  %0 = load i64, ptr %word.addr, align 8, !dbg !826
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !827, !srcloc !828
  store i64 %1, ptr %word.addr, align 8, !dbg !827
  %2 = load i64, ptr %word.addr, align 8, !dbg !829
  ret i64 %2, !dbg !830
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !831 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #7 align 16 !dbg !832 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !836, metadata !DIExpression()), !dbg !842
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !837, metadata !DIExpression()), !dbg !843
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !838, metadata !DIExpression()), !dbg !844
  %0 = load i64, ptr %size.addr, align 8, !dbg !845
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !845
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !845

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !845
  %cmp = icmp ule i64 %2, 64, !dbg !845
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !845

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !845
  %cmp2 = icmp ugt i64 %3, 0, !dbg !845
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !846

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %val, metadata !839, metadata !DIExpression()), !dbg !848
  %4 = load i64, ptr %offset.addr, align 8, !dbg !849
  %5 = load i64, ptr %size.addr, align 8, !dbg !849
  %cmp3 = icmp uge i64 %4, %5, !dbg !849
  %lnot = xor i1 %cmp3, true, !dbg !849
  %lnot4 = xor i1 %lnot, true, !dbg !849
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !849
  %conv = sext i32 %lnot.ext to i64, !dbg !849
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !849
  %tobool = icmp ne i64 %expval, 0, !dbg !849
  br i1 %tobool, label %if.then5, label %if.end, !dbg !851

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !852
  store i64 %6, ptr %retval, align 8, !dbg !853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !853

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !854
  %8 = load i64, ptr %7, align 8, !dbg !855
  %9 = load i64, ptr %offset.addr, align 8, !dbg !856
  %shl = shl i64 1, %9, !dbg !856
  %sub = sub i64 -1, %shl, !dbg !856
  %add = add i64 %sub, 1, !dbg !856
  %10 = load i64, ptr %size.addr, align 8, !dbg !856
  %sub6 = sub i64 %10, 1, !dbg !856
  %sub7 = sub i64 63, %sub6, !dbg !856
  %shr = lshr i64 -1, %sub7, !dbg !856
  %and = and i64 %add, %shr, !dbg !856
  %add8 = add i64 0, %and, !dbg !856
  %and9 = and i64 %8, %add8, !dbg !857
  store i64 %and9, ptr %val, align 8, !dbg !858
  %11 = load i64, ptr %val, align 8, !dbg !859
  %tobool10 = icmp ne i64 %11, 0, !dbg !859
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !859

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !860
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !860
  br i1 %13, label %cond.true11, label %cond.false, !dbg !860

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !860
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !860
  %cast = trunc i64 %15 to i32, !dbg !860
  %conv12 = sext i32 %cast to i64, !dbg !860
  br label %cond.end, !dbg !860

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !860
  %call = call i64 @variable__ffs(i64 noundef %16) #11, !dbg !860
  br label %cond.end, !dbg !860

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !860
  br label %cond.end14, !dbg !859

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !861
  br label %cond.end14, !dbg !859

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !859
  store i64 %cond15, ptr %retval, align 8, !dbg !862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !862

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !863
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !864
  %19 = load i64, ptr %size.addr, align 8, !dbg !865
  %20 = load i64, ptr %offset.addr, align 8, !dbg !866
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #11, !dbg !867
  store i64 %call17, ptr %retval, align 8, !dbg !868
  br label %return, !dbg !868

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !869
  ret i64 %21, !dbg !869
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !870 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/mm/amdtopology.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3c626c0556f2ea8988ba340da0106cf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 44)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 31)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "nodeids", scope: !14, file: !2, line: 29, type: !84, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.amdtopology.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/amdtopology\22 -D KBUILD_BASENAME=\22amdtopology\22 -D KBUILD_MODNAME=\22amdtopology\22 -D __KBUILD_MODNAME=kmod_amdtopology -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/amdtopology.ll arch/x86/mm/amdtopology.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !22, globals: !42, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !{!23, !30, !32, !33, !35, !36, !38, !41, !31, !18}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !24, line: 159, baseType: !25)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !24, line: 42, baseType: !31)
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!40 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !{!0, !7, !43, !48, !53, !55, !60, !62, !67, !72, !74, !79, !12}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 29)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 37)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !50, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 43)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !50, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 17)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 35)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !9, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 39)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 21)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !86)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!87}
!87 = !DISubrange(count: 8)
!88 = !{i32 7, !"Dwarf Version", i32 5}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 8, !"cf-protection-branch", i32 1}
!92 = !{i32 4, !"function_return_thunk_extern", i32 1}
!93 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!94 = !{i32 1, !"Code Model", i32 2}
!95 = !{i32 1, !"override-stack-alignment", i32 8}
!96 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!97 = distinct !DISubprogram(name: "amd_numa_init", scope: !2, file: !2, line: 55, type: !98, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{!41}
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !111, !112, !113, !114, !115, !119}
!101 = !DILocalVariable(name: "start", scope: !97, file: !2, line: 57, type: !25)
!102 = !DILocalVariable(name: "end", scope: !97, file: !2, line: 58, type: !25)
!103 = !DILocalVariable(name: "numnodes", scope: !97, file: !2, line: 59, type: !18)
!104 = !DILocalVariable(name: "prevbase", scope: !97, file: !2, line: 60, type: !25)
!105 = !DILocalVariable(name: "i", scope: !97, file: !2, line: 61, type: !41)
!106 = !DILocalVariable(name: "j", scope: !97, file: !2, line: 61, type: !41)
!107 = !DILocalVariable(name: "nb", scope: !97, file: !2, line: 61, type: !41)
!108 = !DILocalVariable(name: "nodeid", scope: !97, file: !2, line: 62, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !18)
!111 = !DILocalVariable(name: "reg", scope: !97, file: !2, line: 62, type: !109)
!112 = !DILocalVariable(name: "bits", scope: !97, file: !2, line: 63, type: !18)
!113 = !DILocalVariable(name: "cores", scope: !97, file: !2, line: 63, type: !18)
!114 = !DILocalVariable(name: "apicid_base", scope: !97, file: !2, line: 63, type: !18)
!115 = !DILocalVariable(name: "base", scope: !116, file: !2, line: 83, type: !25)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 82, column: 26)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 82, column: 2)
!118 = distinct !DILexicalBlock(scope: !97, file: !2, line: 82, column: 2)
!119 = !DILocalVariable(name: "limit", scope: !116, file: !2, line: 83, type: !25)
!120 = !DILocation(line: 57, column: 2, scope: !97)
!121 = !DILocation(line: 57, column: 6, scope: !97)
!122 = !DILocation(line: 58, column: 2, scope: !97)
!123 = !DILocation(line: 58, column: 6, scope: !97)
!124 = !DILocation(line: 58, column: 12, scope: !97)
!125 = !DILocation(line: 59, column: 2, scope: !97)
!126 = !DILocation(line: 59, column: 11, scope: !97)
!127 = !DILocation(line: 60, column: 2, scope: !97)
!128 = !DILocation(line: 60, column: 6, scope: !97)
!129 = !DILocation(line: 61, column: 2, scope: !97)
!130 = !DILocation(line: 61, column: 6, scope: !97)
!131 = !DILocation(line: 61, column: 9, scope: !97)
!132 = !DILocation(line: 61, column: 12, scope: !97)
!133 = !DILocation(line: 62, column: 2, scope: !97)
!134 = !DILocation(line: 62, column: 6, scope: !97)
!135 = !DILocation(line: 62, column: 14, scope: !97)
!136 = !DILocation(line: 63, column: 2, scope: !97)
!137 = !DILocation(line: 63, column: 15, scope: !97)
!138 = !DILocation(line: 63, column: 21, scope: !97)
!139 = !DILocation(line: 63, column: 28, scope: !97)
!140 = !DILocation(line: 65, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !97, file: !2, line: 65, column: 6)
!142 = !DILocation(line: 65, column: 6, scope: !97)
!143 = !DILocation(line: 66, column: 3, scope: !141)
!144 = !DILocation(line: 68, column: 7, scope: !97)
!145 = !DILocation(line: 68, column: 5, scope: !97)
!146 = !DILocation(line: 69, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !97, file: !2, line: 69, column: 6)
!148 = !DILocation(line: 69, column: 9, scope: !147)
!149 = !DILocation(line: 69, column: 6, scope: !97)
!150 = !DILocation(line: 70, column: 10, scope: !147)
!151 = !DILocation(line: 70, column: 3, scope: !147)
!152 = !DILocation(line: 72, column: 2, scope: !153)
!153 = distinct !DILexicalBlock(scope: !97, file: !2, line: 72, column: 2)
!154 = !DILocation(line: 72, column: 2, scope: !155)
!155 = distinct !DILexicalBlock(scope: !153, file: !2, line: 72, column: 2)
!156 = !DILocation(line: 74, column: 27, scope: !97)
!157 = !DILocation(line: 74, column: 8, scope: !97)
!158 = !DILocation(line: 74, column: 6, scope: !97)
!159 = !DILocation(line: 75, column: 15, scope: !97)
!160 = !DILocation(line: 75, column: 19, scope: !97)
!161 = !DILocation(line: 75, column: 25, scope: !97)
!162 = !DILocation(line: 75, column: 32, scope: !97)
!163 = !DILocation(line: 75, column: 11, scope: !97)
!164 = !DILocation(line: 76, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !97, file: !2, line: 76, column: 6)
!166 = !DILocation(line: 76, column: 15, scope: !165)
!167 = !DILocation(line: 76, column: 6, scope: !97)
!168 = !DILocation(line: 77, column: 3, scope: !165)
!169 = !DILocation(line: 79, column: 2, scope: !170)
!170 = distinct !DILexicalBlock(scope: !97, file: !2, line: 79, column: 2)
!171 = !DILocation(line: 79, column: 2, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !2, line: 79, column: 2)
!173 = !DILocation(line: 81, column: 11, scope: !97)
!174 = !DILocation(line: 82, column: 9, scope: !118)
!175 = !DILocation(line: 82, column: 7, scope: !118)
!176 = !DILocation(line: 82, column: 14, scope: !117)
!177 = !DILocation(line: 82, column: 16, scope: !117)
!178 = !DILocation(line: 82, column: 2, scope: !118)
!179 = !DILocation(line: 83, column: 3, scope: !116)
!180 = !DILocation(line: 83, column: 7, scope: !116)
!181 = !DILocation(line: 83, column: 13, scope: !116)
!182 = !DILocation(line: 85, column: 29, scope: !116)
!183 = !DILocation(line: 85, column: 43, scope: !116)
!184 = !DILocation(line: 85, column: 44, scope: !116)
!185 = !DILocation(line: 85, column: 41, scope: !116)
!186 = !DILocation(line: 85, column: 36, scope: !116)
!187 = !DILocation(line: 85, column: 10, scope: !116)
!188 = !DILocation(line: 85, column: 8, scope: !116)
!189 = !DILocation(line: 86, column: 30, scope: !116)
!190 = !DILocation(line: 86, column: 44, scope: !116)
!191 = !DILocation(line: 86, column: 45, scope: !116)
!192 = !DILocation(line: 86, column: 42, scope: !116)
!193 = !DILocation(line: 86, column: 37, scope: !116)
!194 = !DILocation(line: 86, column: 11, scope: !116)
!195 = !DILocation(line: 86, column: 9, scope: !116)
!196 = !DILocation(line: 88, column: 25, scope: !116)
!197 = !DILocation(line: 88, column: 31, scope: !116)
!198 = !DILocation(line: 88, column: 23, scope: !116)
!199 = !DILocation(line: 88, column: 16, scope: !116)
!200 = !DILocation(line: 88, column: 11, scope: !116)
!201 = !DILocation(line: 88, column: 3, scope: !116)
!202 = !DILocation(line: 88, column: 14, scope: !116)
!203 = !DILocation(line: 89, column: 8, scope: !204)
!204 = distinct !DILexicalBlock(scope: !116, file: !2, line: 89, column: 7)
!205 = !DILocation(line: 89, column: 13, scope: !204)
!206 = !DILocation(line: 89, column: 18, scope: !204)
!207 = !DILocation(line: 89, column: 7, scope: !116)
!208 = !DILocation(line: 90, column: 8, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 90, column: 8)
!210 = distinct !DILexicalBlock(scope: !204, file: !2, line: 89, column: 24)
!211 = !DILocation(line: 90, column: 12, scope: !209)
!212 = !DILocation(line: 90, column: 10, scope: !209)
!213 = !DILocation(line: 90, column: 8, scope: !210)
!214 = !DILocation(line: 91, column: 5, scope: !215)
!215 = distinct !DILexicalBlock(scope: !209, file: !2, line: 91, column: 5)
!216 = !DILocation(line: 91, column: 5, scope: !217)
!217 = distinct !DILexicalBlock(scope: !215, file: !2, line: 91, column: 5)
!218 = !DILocation(line: 91, column: 5, scope: !209)
!219 = !DILocation(line: 92, column: 4, scope: !210)
!220 = !DILocation(line: 94, column: 7, scope: !221)
!221 = distinct !DILexicalBlock(scope: !116, file: !2, line: 94, column: 7)
!222 = !DILocation(line: 94, column: 17, scope: !221)
!223 = !DILocation(line: 94, column: 14, scope: !221)
!224 = !DILocation(line: 94, column: 7, scope: !116)
!225 = !DILocation(line: 95, column: 4, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 95, column: 4)
!227 = distinct !DILexicalBlock(scope: !221, file: !2, line: 94, column: 27)
!228 = !DILocation(line: 95, column: 4, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !2, line: 95, column: 4)
!230 = !DILocation(line: 97, column: 4, scope: !227)
!231 = !DILocation(line: 100, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !116, file: !2, line: 100, column: 7)
!233 = !DILocation(line: 100, column: 7, scope: !116)
!234 = !DILocation(line: 101, column: 4, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !2, line: 101, column: 4)
!236 = distinct !DILexicalBlock(scope: !232, file: !2, line: 100, column: 15)
!237 = !DILocation(line: 101, column: 4, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !2, line: 101, column: 4)
!239 = !DILocation(line: 103, column: 4, scope: !236)
!240 = !DILocation(line: 105, column: 8, scope: !241)
!241 = distinct !DILexicalBlock(scope: !116, file: !2, line: 105, column: 7)
!242 = !DILocation(line: 105, column: 13, scope: !241)
!243 = !DILocation(line: 105, column: 19, scope: !241)
!244 = !DILocation(line: 105, column: 23, scope: !241)
!245 = !DILocation(line: 105, column: 27, scope: !241)
!246 = !DILocation(line: 105, column: 33, scope: !241)
!247 = !DILocation(line: 105, column: 39, scope: !241)
!248 = !DILocation(line: 105, column: 7, scope: !116)
!249 = !DILocation(line: 106, column: 4, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 106, column: 4)
!251 = distinct !DILexicalBlock(scope: !241, file: !2, line: 105, column: 44)
!252 = !DILocation(line: 106, column: 4, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !2, line: 106, column: 4)
!254 = !DILocation(line: 108, column: 4, scope: !251)
!255 = !DILocation(line: 110, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !116, file: !2, line: 110, column: 7)
!257 = !DILocation(line: 110, column: 7, scope: !116)
!258 = !DILocation(line: 111, column: 4, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 111, column: 4)
!260 = distinct !DILexicalBlock(scope: !256, file: !2, line: 110, column: 46)
!261 = !DILocation(line: 111, column: 4, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !2, line: 111, column: 4)
!263 = !DILocation(line: 113, column: 4, scope: !260)
!264 = !DILocation(line: 116, column: 9, scope: !116)
!265 = !DILocation(line: 117, column: 8, scope: !116)
!266 = !DILocation(line: 118, column: 9, scope: !116)
!267 = !DILocation(line: 120, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !116, file: !2, line: 120, column: 7)
!269 = !DILocation(line: 120, column: 15, scope: !268)
!270 = !DILocation(line: 120, column: 13, scope: !268)
!271 = !DILocation(line: 120, column: 7, scope: !116)
!272 = !DILocation(line: 121, column: 12, scope: !268)
!273 = !DILocation(line: 121, column: 10, scope: !268)
!274 = !DILocation(line: 121, column: 4, scope: !268)
!275 = !DILocation(line: 122, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !116, file: !2, line: 122, column: 7)
!277 = !DILocation(line: 122, column: 16, scope: !276)
!278 = !DILocation(line: 122, column: 13, scope: !276)
!279 = !DILocation(line: 122, column: 7, scope: !116)
!280 = !DILocation(line: 123, column: 4, scope: !276)
!281 = !DILocation(line: 125, column: 8, scope: !116)
!282 = !DILocation(line: 126, column: 8, scope: !116)
!283 = !DILocation(line: 128, column: 7, scope: !284)
!284 = distinct !DILexicalBlock(scope: !116, file: !2, line: 128, column: 7)
!285 = !DILocation(line: 128, column: 14, scope: !284)
!286 = !DILocation(line: 128, column: 12, scope: !284)
!287 = !DILocation(line: 128, column: 7, scope: !116)
!288 = !DILocation(line: 129, column: 11, scope: !284)
!289 = !DILocation(line: 129, column: 9, scope: !284)
!290 = !DILocation(line: 129, column: 4, scope: !284)
!291 = !DILocation(line: 130, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !116, file: !2, line: 130, column: 7)
!293 = !DILocation(line: 130, column: 15, scope: !292)
!294 = !DILocation(line: 130, column: 13, scope: !292)
!295 = !DILocation(line: 130, column: 7, scope: !116)
!296 = !DILocation(line: 131, column: 12, scope: !292)
!297 = !DILocation(line: 131, column: 10, scope: !292)
!298 = !DILocation(line: 131, column: 4, scope: !292)
!299 = !DILocation(line: 132, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !116, file: !2, line: 132, column: 7)
!301 = !DILocation(line: 132, column: 16, scope: !300)
!302 = !DILocation(line: 132, column: 13, scope: !300)
!303 = !DILocation(line: 132, column: 7, scope: !116)
!304 = !DILocation(line: 133, column: 4, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 133, column: 4)
!306 = distinct !DILexicalBlock(scope: !300, file: !2, line: 132, column: 22)
!307 = !DILocation(line: 133, column: 4, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !2, line: 133, column: 4)
!309 = !DILocation(line: 134, column: 4, scope: !306)
!310 = !DILocation(line: 136, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !116, file: !2, line: 136, column: 7)
!312 = !DILocation(line: 136, column: 15, scope: !311)
!313 = !DILocation(line: 136, column: 13, scope: !311)
!314 = !DILocation(line: 136, column: 7, scope: !116)
!315 = !DILocation(line: 137, column: 4, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 137, column: 4)
!317 = distinct !DILexicalBlock(scope: !311, file: !2, line: 136, column: 21)
!318 = !DILocation(line: 137, column: 4, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !2, line: 137, column: 4)
!320 = !DILocation(line: 139, column: 4, scope: !317)
!321 = !DILocation(line: 143, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !116, file: !2, line: 143, column: 7)
!323 = !DILocation(line: 143, column: 18, scope: !322)
!324 = !DILocation(line: 143, column: 16, scope: !322)
!325 = !DILocation(line: 143, column: 7, scope: !116)
!326 = !DILocation(line: 144, column: 4, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 144, column: 4)
!328 = distinct !DILexicalBlock(scope: !322, file: !2, line: 143, column: 24)
!329 = !DILocation(line: 144, column: 4, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !2, line: 144, column: 4)
!331 = !DILocation(line: 146, column: 4, scope: !328)
!332 = !DILocation(line: 149, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !116, file: !2, line: 149, column: 3)
!334 = !DILocation(line: 149, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !333, file: !2, line: 149, column: 3)
!336 = !DILocation(line: 152, column: 14, scope: !116)
!337 = !DILocation(line: 152, column: 12, scope: !116)
!338 = !DILocation(line: 153, column: 19, scope: !116)
!339 = !DILocation(line: 153, column: 27, scope: !116)
!340 = !DILocation(line: 153, column: 33, scope: !116)
!341 = !DILocation(line: 153, column: 3, scope: !116)
!342 = !DILocation(line: 154, column: 3, scope: !116)
!343 = !DILocation(line: 155, column: 2, scope: !117)
!344 = !DILocation(line: 155, column: 2, scope: !116)
!345 = !DILocation(line: 82, column: 22, scope: !117)
!346 = !DILocation(line: 82, column: 2, scope: !117)
!347 = distinct !{!347, !178, !348, !349, !350}
!348 = !DILocation(line: 155, column: 2, scope: !118)
!349 = !{!"llvm.loop.mustprogress"}
!350 = !{!"llvm.loop.unroll.disable"}
!351 = !DILocation(line: 157, column: 6, scope: !352)
!352 = distinct !DILexicalBlock(scope: !97, file: !2, line: 157, column: 6)
!353 = !DILocation(line: 157, column: 6, scope: !97)
!354 = !DILocation(line: 158, column: 3, scope: !352)
!355 = !DILocation(line: 164, column: 23, scope: !97)
!356 = !DILocation(line: 164, column: 9, scope: !97)
!357 = !DILocation(line: 164, column: 7, scope: !97)
!358 = !DILocation(line: 165, column: 15, scope: !97)
!359 = !DILocation(line: 165, column: 12, scope: !97)
!360 = !DILocation(line: 165, column: 8, scope: !97)
!361 = !DILocation(line: 166, column: 14, scope: !97)
!362 = !DILocation(line: 171, column: 2, scope: !97)
!363 = !DILocation(line: 173, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !97, file: !2, line: 173, column: 6)
!365 = !DILocation(line: 173, column: 31, scope: !364)
!366 = !DILocation(line: 173, column: 6, scope: !97)
!367 = !DILocation(line: 174, column: 3, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 174, column: 3)
!369 = distinct !DILexicalBlock(scope: !364, file: !2, line: 173, column: 36)
!370 = !DILocation(line: 174, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !2, line: 174, column: 3)
!372 = !DILocation(line: 175, column: 17, scope: !369)
!373 = !DILocation(line: 175, column: 15, scope: !369)
!374 = !DILocation(line: 176, column: 2, scope: !369)
!375 = !DILocation(line: 178, column: 2, scope: !376)
!376 = distinct !DILexicalBlock(scope: !97, file: !2, line: 178, column: 2)
!377 = !DILocation(line: 178, column: 2, scope: !378)
!378 = distinct !DILexicalBlock(scope: !376, file: !2, line: 178, column: 2)
!379 = !DILocation(line: 179, column: 12, scope: !380)
!380 = distinct !DILexicalBlock(scope: !378, file: !2, line: 179, column: 3)
!381 = !DILocation(line: 179, column: 10, scope: !380)
!382 = !DILocation(line: 179, column: 8, scope: !380)
!383 = !DILocation(line: 179, column: 25, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !2, line: 179, column: 3)
!385 = !DILocation(line: 179, column: 29, scope: !384)
!386 = !DILocation(line: 179, column: 37, scope: !384)
!387 = !DILocation(line: 179, column: 35, scope: !384)
!388 = !DILocation(line: 179, column: 27, scope: !384)
!389 = !DILocation(line: 179, column: 3, scope: !380)
!390 = !DILocation(line: 180, column: 24, scope: !384)
!391 = !DILocation(line: 180, column: 29, scope: !384)
!392 = !DILocation(line: 180, column: 26, scope: !384)
!393 = !DILocation(line: 180, column: 37, scope: !384)
!394 = !DILocation(line: 180, column: 35, scope: !384)
!395 = !DILocation(line: 180, column: 40, scope: !384)
!396 = !DILocation(line: 180, column: 4, scope: !384)
!397 = !DILocation(line: 179, column: 51, scope: !384)
!398 = !DILocation(line: 179, column: 3, scope: !384)
!399 = distinct !{!399, !389, !400, !349, !350}
!400 = !DILocation(line: 180, column: 41, scope: !380)
!401 = distinct !{!401, !375, !402, !349, !350}
!402 = !DILocation(line: 180, column: 41, scope: !376)
!403 = !DILocation(line: 182, column: 2, scope: !97)
!404 = !DILocation(line: 183, column: 1, scope: !97)
!405 = !DISubprogram(name: "early_pci_allowed", scope: !406, file: !406, line: 17, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!407 = distinct !DISubprogram(name: "find_northbridge", scope: !2, file: !2, line: 31, type: !98, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !408)
!408 = !{!409, !410}
!409 = !DILocalVariable(name: "num", scope: !407, file: !2, line: 33, type: !41)
!410 = !DILocalVariable(name: "header", scope: !411, file: !2, line: 36, type: !109)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 35, column: 33)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 35, column: 2)
!413 = distinct !DILexicalBlock(scope: !407, file: !2, line: 35, column: 2)
!414 = !DILocation(line: 33, column: 2, scope: !407)
!415 = !DILocation(line: 33, column: 6, scope: !407)
!416 = !DILocation(line: 35, column: 11, scope: !413)
!417 = !DILocation(line: 35, column: 7, scope: !413)
!418 = !DILocation(line: 35, column: 16, scope: !412)
!419 = !DILocation(line: 35, column: 20, scope: !412)
!420 = !DILocation(line: 35, column: 2, scope: !413)
!421 = !DILocation(line: 36, column: 3, scope: !411)
!422 = !DILocation(line: 36, column: 7, scope: !411)
!423 = !DILocation(line: 38, column: 31, scope: !411)
!424 = !DILocation(line: 38, column: 12, scope: !411)
!425 = !DILocation(line: 38, column: 10, scope: !411)
!426 = !DILocation(line: 39, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !411, file: !2, line: 39, column: 7)
!428 = !DILocation(line: 39, column: 14, scope: !427)
!429 = !DILocation(line: 39, column: 52, scope: !427)
!430 = !DILocation(line: 40, column: 4, scope: !427)
!431 = !DILocation(line: 40, column: 11, scope: !427)
!432 = !DILocation(line: 40, column: 49, scope: !427)
!433 = !DILocation(line: 41, column: 4, scope: !427)
!434 = !DILocation(line: 41, column: 11, scope: !427)
!435 = !DILocation(line: 39, column: 7, scope: !411)
!436 = !DILocation(line: 42, column: 4, scope: !427)
!437 = !DILocation(line: 44, column: 31, scope: !411)
!438 = !DILocation(line: 44, column: 12, scope: !411)
!439 = !DILocation(line: 44, column: 10, scope: !411)
!440 = !DILocation(line: 45, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !411, file: !2, line: 45, column: 7)
!442 = !DILocation(line: 45, column: 14, scope: !441)
!443 = !DILocation(line: 45, column: 52, scope: !441)
!444 = !DILocation(line: 46, column: 4, scope: !441)
!445 = !DILocation(line: 46, column: 11, scope: !441)
!446 = !DILocation(line: 46, column: 49, scope: !441)
!447 = !DILocation(line: 47, column: 4, scope: !441)
!448 = !DILocation(line: 47, column: 11, scope: !441)
!449 = !DILocation(line: 45, column: 7, scope: !411)
!450 = !DILocation(line: 48, column: 4, scope: !441)
!451 = !DILocation(line: 49, column: 10, scope: !411)
!452 = !DILocation(line: 49, column: 3, scope: !411)
!453 = !DILocation(line: 50, column: 2, scope: !412)
!454 = !DILocation(line: 35, column: 29, scope: !412)
!455 = !DILocation(line: 35, column: 2, scope: !412)
!456 = distinct !{!456, !420, !457, !349, !350}
!457 = !DILocation(line: 50, column: 2, scope: !413)
!458 = !DILocation(line: 52, column: 2, scope: !407)
!459 = !DILocation(line: 53, column: 1, scope: !407)
!460 = !DISubprogram(name: "_printk", scope: !461, file: !461, line: 153, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!462 = !DISubroutineType(types: !463)
!463 = !{!41, !464, null}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!466 = !DISubprogram(name: "read_pci_config", scope: !406, file: !406, line: 10, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DISubroutineType(types: !468)
!468 = !{!109, !469, !469, !469, !469}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !85)
!471 = distinct !DISubprogram(name: "const_test_bit", scope: !472, file: !472, line: 166, type: !473, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !480)
!472 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !31, !477}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !24, line: 35, baseType: !476)
!476 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!480 = !{!481, !482, !483, !484, !485}
!481 = !DILocalVariable(name: "nr", arg: 1, scope: !471, file: !472, line: 166, type: !31)
!482 = !DILocalVariable(name: "addr", arg: 2, scope: !471, file: !472, line: 166, type: !477)
!483 = !DILocalVariable(name: "p", scope: !471, file: !472, line: 168, type: !33)
!484 = !DILocalVariable(name: "mask", scope: !471, file: !472, line: 169, type: !31)
!485 = !DILocalVariable(name: "val", scope: !471, file: !472, line: 170, type: !31)
!486 = !DILocation(line: 166, column: 30, scope: !471)
!487 = !DILocation(line: 166, column: 64, scope: !471)
!488 = !DILocation(line: 168, column: 2, scope: !471)
!489 = !DILocation(line: 168, column: 23, scope: !471)
!490 = !DILocation(line: 168, column: 50, scope: !471)
!491 = !DILocation(line: 168, column: 57, scope: !471)
!492 = !DILocation(line: 168, column: 55, scope: !471)
!493 = !DILocation(line: 169, column: 2, scope: !471)
!494 = !DILocation(line: 169, column: 16, scope: !471)
!495 = !DILocation(line: 169, column: 23, scope: !471)
!496 = !DILocation(line: 170, column: 2, scope: !471)
!497 = !DILocation(line: 170, column: 16, scope: !471)
!498 = !DILocation(line: 170, column: 23, scope: !471)
!499 = !DILocation(line: 170, column: 22, scope: !471)
!500 = !DILocation(line: 172, column: 12, scope: !471)
!501 = !DILocation(line: 172, column: 18, scope: !471)
!502 = !DILocation(line: 172, column: 16, scope: !471)
!503 = !DILocation(line: 172, column: 10, scope: !471)
!504 = !DILocation(line: 172, column: 9, scope: !471)
!505 = !DILocation(line: 173, column: 1, scope: !471)
!506 = !DILocation(line: 172, column: 2, scope: !471)
!507 = distinct !DISubprogram(name: "_test_bit", scope: !508, file: !508, line: 139, type: !473, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !509)
!508 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!509 = !{!510, !511}
!510 = !DILocalVariable(name: "nr", arg: 1, scope: !507, file: !508, line: 139, type: !31)
!511 = !DILocalVariable(name: "addr", arg: 2, scope: !507, file: !508, line: 139, type: !477)
!512 = !DILocation(line: 139, column: 25, scope: !507)
!513 = !DILocation(line: 139, column: 59, scope: !507)
!514 = !DILocation(line: 141, column: 25, scope: !507)
!515 = !DILocation(line: 141, column: 32, scope: !507)
!516 = !DILocation(line: 141, column: 30, scope: !507)
!517 = !DILocation(line: 141, column: 2, scope: !507)
!518 = !DILocation(line: 142, column: 23, scope: !507)
!519 = !DILocation(line: 142, column: 27, scope: !507)
!520 = !DILocation(line: 142, column: 9, scope: !507)
!521 = !DILocation(line: 142, column: 2, scope: !507)
!522 = !DISubprogram(name: "numa_add_memblk", scope: !523, file: !523, line: 28, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!523 = !DIFile(filename: "./arch/x86/include/asm/numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd854ea31756e2db308aa8bc404b389b")
!524 = !DISubroutineType(types: !525)
!525 = !{!41, !41, !25, !25}
!526 = distinct !DISubprogram(name: "__node_set", scope: !527, file: !527, line: 129, type: !528, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !539)
!527 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!528 = !DISubroutineType(types: !529)
!529 = !{null, !41, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !527, line: 99, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 99, size: 64, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !533, file: !527, line: 99, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 1)
!539 = !{!540, !541}
!540 = !DILocalVariable(name: "node", arg: 1, scope: !526, file: !527, line: 129, type: !41)
!541 = !DILocalVariable(name: "dstp", arg: 2, scope: !526, file: !527, line: 129, type: !530)
!542 = !DILocation(line: 129, column: 44, scope: !526)
!543 = !DILocation(line: 129, column: 71, scope: !526)
!544 = !DILocation(line: 131, column: 10, scope: !526)
!545 = !DILocation(line: 131, column: 16, scope: !526)
!546 = !DILocation(line: 131, column: 22, scope: !526)
!547 = !DILocation(line: 131, column: 2, scope: !526)
!548 = !DILocation(line: 132, column: 1, scope: !526)
!549 = distinct !DISubprogram(name: "__nodes_empty", scope: !527, file: !527, line: 227, type: !550, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !554)
!550 = !DISubroutineType(types: !551)
!551 = !{!475, !552, !18}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!554 = !{!555, !556}
!555 = !DILocalVariable(name: "srcp", arg: 1, scope: !549, file: !527, line: 227, type: !552)
!556 = !DILocalVariable(name: "nbits", arg: 2, scope: !549, file: !527, line: 227, type: !18)
!557 = !DILocation(line: 227, column: 52, scope: !549)
!558 = !DILocation(line: 227, column: 71, scope: !549)
!559 = !DILocation(line: 229, column: 22, scope: !549)
!560 = !DILocation(line: 229, column: 28, scope: !549)
!561 = !DILocation(line: 229, column: 34, scope: !549)
!562 = !DILocation(line: 229, column: 9, scope: !549)
!563 = !DILocation(line: 229, column: 2, scope: !549)
!564 = distinct !DISubprogram(name: "early_get_smp_config", scope: !565, file: !565, line: 54, type: !566, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!565 = !DIFile(filename: "./arch/x86/include/asm/mpspec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c121953d7eb2fe88838a269afe2127b")
!566 = !DISubroutineType(types: !567)
!567 = !{null}
!568 = !DILocation(line: 56, column: 19, scope: !564)
!569 = !DILocation(line: 56, column: 2, scope: !564)
!570 = !DILocation(line: 57, column: 1, scope: !564)
!571 = distinct !DISubprogram(name: "__first_node", scope: !527, file: !527, line: 264, type: !572, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!18, !552}
!574 = !{!575, !576, !578}
!575 = !DILocalVariable(name: "srcp", arg: 1, scope: !571, file: !527, line: 264, type: !552)
!576 = !DILocalVariable(name: "__UNIQUE_ID___x46", scope: !577, file: !527, line: 266, type: !18)
!577 = distinct !DILexicalBlock(scope: !571, file: !527, line: 266, column: 9)
!578 = !DILocalVariable(name: "__UNIQUE_ID___y47", scope: !577, file: !527, line: 266, type: !18)
!579 = !DILocation(line: 264, column: 59, scope: !571)
!580 = !DILocation(line: 266, column: 9, scope: !577)
!581 = !DILocation(line: 266, column: 9, scope: !571)
!582 = !DILocation(line: 266, column: 2, scope: !571)
!583 = distinct !DISubprogram(name: "set_apicid_to_node", scope: !523, file: !523, line: 31, type: !584, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !589)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !41, !586}
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !26, line: 18, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !28, line: 23, baseType: !588)
!588 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!589 = !{!590, !591}
!590 = !DILocalVariable(name: "apicid", arg: 1, scope: !583, file: !523, line: 31, type: !41)
!591 = !DILocalVariable(name: "node", arg: 2, scope: !583, file: !523, line: 31, type: !586)
!592 = !DILocation(line: 31, column: 43, scope: !583)
!593 = !DILocation(line: 31, column: 55, scope: !583)
!594 = !DILocation(line: 33, column: 29, scope: !583)
!595 = !DILocation(line: 33, column: 19, scope: !583)
!596 = !DILocation(line: 33, column: 2, scope: !583)
!597 = !DILocation(line: 33, column: 27, scope: !583)
!598 = !DILocation(line: 34, column: 1, scope: !583)
!599 = distinct !DISubprogram(name: "__next_node", scope: !527, file: !527, line: 270, type: !600, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!18, !41, !552}
!602 = !{!603, !604, !605, !607}
!603 = !DILocalVariable(name: "n", arg: 1, scope: !599, file: !527, line: 270, type: !41)
!604 = !DILocalVariable(name: "srcp", arg: 2, scope: !599, file: !527, line: 270, type: !552)
!605 = !DILocalVariable(name: "__UNIQUE_ID___x48", scope: !606, file: !527, line: 272, type: !18)
!606 = distinct !DILexicalBlock(scope: !599, file: !527, line: 272, column: 9)
!607 = !DILocalVariable(name: "__UNIQUE_ID___y49", scope: !606, file: !527, line: 272, type: !18)
!608 = !DILocation(line: 270, column: 44, scope: !599)
!609 = !DILocation(line: 270, column: 65, scope: !599)
!610 = !DILocation(line: 272, column: 9, scope: !606)
!611 = !DILocation(line: 272, column: 9, scope: !599)
!612 = !DILocation(line: 272, column: 2, scope: !599)
!613 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !614, file: !614, line: 66, type: !615, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !624)
!614 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!615 = !DISubroutineType(types: !616)
!616 = !{null, !617, !620}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 61, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !622, line: 72, baseType: !623)
!622 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !622, line: 16, baseType: !31)
!624 = !{!625, !626}
!625 = !DILocalVariable(name: "v", arg: 1, scope: !613, file: !614, line: 66, type: !617)
!626 = !DILocalVariable(name: "size", arg: 2, scope: !613, file: !614, line: 66, type: !620)
!627 = !DILocation(line: 66, column: 73, scope: !613)
!628 = !DILocation(line: 66, column: 83, scope: !613)
!629 = !DILocation(line: 68, column: 19, scope: !613)
!630 = !DILocation(line: 68, column: 22, scope: !613)
!631 = !DILocation(line: 68, column: 2, scope: !613)
!632 = !DILocation(line: 69, column: 2, scope: !613)
!633 = !DILocation(line: 70, column: 1, scope: !613)
!634 = distinct !DISubprogram(name: "arch_test_bit", scope: !635, file: !635, line: 237, type: !473, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !636)
!635 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!636 = !{!637, !638}
!637 = !DILocalVariable(name: "nr", arg: 1, scope: !634, file: !635, line: 237, type: !31)
!638 = !DILocalVariable(name: "addr", arg: 2, scope: !634, file: !635, line: 237, type: !477)
!639 = !DILocation(line: 237, column: 29, scope: !634)
!640 = !DILocation(line: 237, column: 63, scope: !634)
!641 = !DILocation(line: 239, column: 30, scope: !634)
!642 = !DILocation(line: 239, column: 9, scope: !634)
!643 = !DILocation(line: 239, column: 54, scope: !634)
!644 = !DILocation(line: 239, column: 58, scope: !634)
!645 = !DILocation(line: 239, column: 36, scope: !634)
!646 = !DILocation(line: 240, column: 26, scope: !634)
!647 = !DILocation(line: 240, column: 30, scope: !634)
!648 = !DILocation(line: 240, column: 8, scope: !634)
!649 = !DILocation(line: 239, column: 2, scope: !634)
!650 = distinct !DISubprogram(name: "kasan_check_read", scope: !651, file: !651, line: 40, type: !652, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !654)
!651 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!652 = !DISubroutineType(types: !653)
!653 = !{!475, !617, !18}
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "p", arg: 1, scope: !650, file: !651, line: 40, type: !617)
!656 = !DILocalVariable(name: "size", arg: 2, scope: !650, file: !651, line: 40, type: !18)
!657 = !DILocation(line: 40, column: 58, scope: !650)
!658 = !DILocation(line: 40, column: 74, scope: !650)
!659 = !DILocation(line: 42, column: 2, scope: !650)
!660 = distinct !DISubprogram(name: "kcsan_check_access", scope: !661, file: !661, line: 229, type: !662, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !664)
!661 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!662 = !DISubroutineType(types: !663)
!663 = !{null, !617, !620, !41}
!664 = !{!665, !666, !667}
!665 = !DILocalVariable(name: "ptr", arg: 1, scope: !660, file: !661, line: 229, type: !617)
!666 = !DILocalVariable(name: "size", arg: 2, scope: !660, file: !661, line: 229, type: !620)
!667 = !DILocalVariable(name: "type", arg: 3, scope: !660, file: !661, line: 230, type: !41)
!668 = !DILocation(line: 229, column: 60, scope: !660)
!669 = !DILocation(line: 229, column: 72, scope: !660)
!670 = !DILocation(line: 230, column: 15, scope: !660)
!671 = !DILocation(line: 230, column: 23, scope: !660)
!672 = distinct !DISubprogram(name: "constant_test_bit", scope: !635, file: !635, line: 204, type: !673, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !675)
!673 = !DISubroutineType(types: !674)
!674 = !{!475, !40, !477}
!675 = !{!676, !677}
!676 = !DILocalVariable(name: "nr", arg: 1, scope: !672, file: !635, line: 204, type: !40)
!677 = !DILocalVariable(name: "addr", arg: 2, scope: !672, file: !635, line: 204, type: !477)
!678 = !DILocation(line: 204, column: 52, scope: !672)
!679 = !DILocation(line: 204, column: 86, scope: !672)
!680 = !DILocation(line: 206, column: 19, scope: !672)
!681 = !DILocation(line: 206, column: 22, scope: !672)
!682 = !DILocation(line: 206, column: 15, scope: !672)
!683 = !DILocation(line: 207, column: 4, scope: !672)
!684 = !DILocation(line: 207, column: 9, scope: !672)
!685 = !DILocation(line: 207, column: 12, scope: !672)
!686 = !DILocation(line: 206, column: 44, scope: !672)
!687 = !DILocation(line: 207, column: 37, scope: !672)
!688 = !DILocation(line: 206, column: 2, scope: !672)
!689 = distinct !DISubprogram(name: "variable_test_bit", scope: !635, file: !635, line: 224, type: !673, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !690)
!690 = !{!691, !692, !693}
!691 = !DILocalVariable(name: "nr", arg: 1, scope: !689, file: !635, line: 224, type: !40)
!692 = !DILocalVariable(name: "addr", arg: 2, scope: !689, file: !635, line: 224, type: !477)
!693 = !DILocalVariable(name: "oldbit", scope: !689, file: !635, line: 226, type: !475)
!694 = !DILocation(line: 224, column: 52, scope: !689)
!695 = !DILocation(line: 224, column: 86, scope: !689)
!696 = !DILocation(line: 226, column: 2, scope: !689)
!697 = !DILocation(line: 226, column: 7, scope: !689)
!698 = !DILocation(line: 231, column: 33, scope: !689)
!699 = !DILocation(line: 231, column: 46, scope: !689)
!700 = !DILocation(line: 228, column: 2, scope: !689)
!701 = !{i64 2147801968, i64 2147802042}
!702 = !DILocation(line: 233, column: 9, scope: !689)
!703 = !{i8 0, i8 2}
!704 = !{}
!705 = !DILocation(line: 234, column: 1, scope: !689)
!706 = !DILocation(line: 233, column: 2, scope: !689)
!707 = distinct !DISubprogram(name: "set_bit", scope: !708, file: !708, line: 26, type: !709, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !712)
!708 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!709 = !DISubroutineType(types: !710)
!710 = !{null, !40, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!712 = !{!713, !714}
!713 = !DILocalVariable(name: "nr", arg: 1, scope: !707, file: !708, line: 26, type: !40)
!714 = !DILocalVariable(name: "addr", arg: 2, scope: !707, file: !708, line: 26, type: !711)
!715 = !DILocation(line: 26, column: 42, scope: !707)
!716 = !DILocation(line: 26, column: 70, scope: !707)
!717 = !DILocation(line: 28, column: 26, scope: !707)
!718 = !DILocation(line: 28, column: 33, scope: !707)
!719 = !DILocation(line: 28, column: 31, scope: !707)
!720 = !DILocation(line: 28, column: 2, scope: !707)
!721 = !DILocation(line: 29, column: 15, scope: !707)
!722 = !DILocation(line: 29, column: 19, scope: !707)
!723 = !DILocation(line: 29, column: 2, scope: !707)
!724 = !DILocation(line: 30, column: 1, scope: !707)
!725 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !614, file: !614, line: 80, type: !615, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !726)
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "v", arg: 1, scope: !725, file: !614, line: 80, type: !617)
!728 = !DILocalVariable(name: "size", arg: 2, scope: !725, file: !614, line: 80, type: !620)
!729 = !DILocation(line: 80, column: 74, scope: !725)
!730 = !DILocation(line: 80, column: 84, scope: !725)
!731 = !DILocation(line: 82, column: 20, scope: !725)
!732 = !DILocation(line: 82, column: 23, scope: !725)
!733 = !DILocation(line: 82, column: 2, scope: !725)
!734 = !DILocation(line: 83, column: 2, scope: !725)
!735 = !DILocation(line: 84, column: 1, scope: !725)
!736 = distinct !DISubprogram(name: "arch_set_bit", scope: !635, file: !635, line: 52, type: !709, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !737)
!737 = !{!738, !739}
!738 = !DILocalVariable(name: "nr", arg: 1, scope: !736, file: !635, line: 52, type: !40)
!739 = !DILocalVariable(name: "addr", arg: 2, scope: !736, file: !635, line: 52, type: !711)
!740 = !DILocation(line: 52, column: 19, scope: !736)
!741 = !DILocation(line: 52, column: 47, scope: !736)
!742 = !DILocation(line: 54, column: 27, scope: !743)
!743 = distinct !DILexicalBlock(scope: !736, file: !635, line: 54, column: 6)
!744 = !DILocation(line: 54, column: 6, scope: !743)
!745 = !DILocation(line: 54, column: 6, scope: !736)
!746 = !DILocation(line: 56, column: 6, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !635, line: 54, column: 32)
!748 = !DILocation(line: 57, column: 12, scope: !747)
!749 = !DILocation(line: 55, column: 3, scope: !747)
!750 = !{i64 2147788356, i64 2147788395, i64 2147788416, i64 2147788453, i64 2147788476, i64 2147788346}
!751 = !DILocation(line: 59, column: 2, scope: !747)
!752 = !DILocation(line: 61, column: 8, scope: !753)
!753 = distinct !DILexicalBlock(scope: !743, file: !635, line: 59, column: 9)
!754 = !DILocation(line: 61, column: 32, scope: !753)
!755 = !DILocation(line: 60, column: 3, scope: !753)
!756 = !{i64 2147788641, i64 2147788680, i64 2147788701, i64 2147788738, i64 2147788761, i64 2147788631}
!757 = !DILocation(line: 63, column: 1, scope: !736)
!758 = distinct !DISubprogram(name: "kasan_check_write", scope: !651, file: !651, line: 44, type: !652, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !759)
!759 = !{!760, !761}
!760 = !DILocalVariable(name: "p", arg: 1, scope: !758, file: !651, line: 44, type: !617)
!761 = !DILocalVariable(name: "size", arg: 2, scope: !758, file: !651, line: 44, type: !18)
!762 = !DILocation(line: 44, column: 59, scope: !758)
!763 = !DILocation(line: 44, column: 75, scope: !758)
!764 = !DILocation(line: 46, column: 2, scope: !758)
!765 = distinct !DISubprogram(name: "bitmap_empty", scope: !766, file: !766, line: 436, type: !767, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !769)
!766 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!767 = !DISubroutineType(types: !768)
!768 = !{!475, !33, !18}
!769 = !{!770, !771}
!770 = !DILocalVariable(name: "src", arg: 1, scope: !765, file: !766, line: 436, type: !33)
!771 = !DILocalVariable(name: "nbits", arg: 2, scope: !765, file: !766, line: 436, type: !18)
!772 = !DILocation(line: 436, column: 54, scope: !765)
!773 = !DILocation(line: 436, column: 68, scope: !765)
!774 = !DILocation(line: 438, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !765, file: !766, line: 438, column: 6)
!776 = !DILocation(line: 438, column: 6, scope: !765)
!777 = !DILocation(line: 439, column: 14, scope: !775)
!778 = !DILocation(line: 439, column: 13, scope: !775)
!779 = !DILocation(line: 439, column: 20, scope: !775)
!780 = !DILocation(line: 439, column: 18, scope: !775)
!781 = !DILocation(line: 439, column: 10, scope: !775)
!782 = !DILocation(line: 439, column: 3, scope: !775)
!783 = !DILocation(line: 441, column: 24, scope: !765)
!784 = !DILocation(line: 441, column: 29, scope: !765)
!785 = !DILocation(line: 441, column: 9, scope: !765)
!786 = !DILocation(line: 441, column: 39, scope: !765)
!787 = !DILocation(line: 441, column: 36, scope: !765)
!788 = !DILocation(line: 441, column: 2, scope: !765)
!789 = !DILocation(line: 442, column: 1, scope: !765)
!790 = distinct !DISubprogram(name: "find_first_bit", scope: !791, file: !791, line: 200, type: !792, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !794)
!791 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!792 = !DISubroutineType(types: !793)
!793 = !{!31, !33, !31}
!794 = !{!795, !796, !797}
!795 = !DILocalVariable(name: "addr", arg: 1, scope: !790, file: !791, line: 200, type: !33)
!796 = !DILocalVariable(name: "size", arg: 2, scope: !790, file: !791, line: 200, type: !31)
!797 = !DILocalVariable(name: "val", scope: !798, file: !791, line: 203, type: !31)
!798 = distinct !DILexicalBlock(scope: !799, file: !791, line: 202, column: 31)
!799 = distinct !DILexicalBlock(scope: !790, file: !791, line: 202, column: 6)
!800 = !DILocation(line: 200, column: 51, scope: !790)
!801 = !DILocation(line: 200, column: 71, scope: !790)
!802 = !DILocation(line: 202, column: 6, scope: !799)
!803 = !DILocation(line: 202, column: 6, scope: !790)
!804 = !DILocation(line: 203, column: 3, scope: !798)
!805 = !DILocation(line: 203, column: 17, scope: !798)
!806 = !DILocation(line: 203, column: 24, scope: !798)
!807 = !DILocation(line: 203, column: 23, scope: !798)
!808 = !DILocation(line: 203, column: 31, scope: !798)
!809 = !DILocation(line: 203, column: 29, scope: !798)
!810 = !DILocation(line: 205, column: 10, scope: !798)
!811 = !DILocation(line: 205, column: 16, scope: !798)
!812 = !DILocation(line: 205, column: 29, scope: !798)
!813 = !DILocation(line: 205, column: 3, scope: !798)
!814 = !DILocation(line: 206, column: 2, scope: !799)
!815 = !DILocation(line: 208, column: 25, scope: !790)
!816 = !DILocation(line: 208, column: 31, scope: !790)
!817 = !DILocation(line: 208, column: 9, scope: !790)
!818 = !DILocation(line: 208, column: 2, scope: !790)
!819 = !DILocation(line: 209, column: 1, scope: !790)
!820 = distinct !DISubprogram(name: "variable__ffs", scope: !635, file: !635, line: 250, type: !821, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{!31, !31}
!823 = !{!824}
!824 = !DILocalVariable(name: "word", arg: 1, scope: !820, file: !635, line: 250, type: !31)
!825 = !DILocation(line: 250, column: 66, scope: !820)
!826 = !DILocation(line: 254, column: 11, scope: !820)
!827 = !DILocation(line: 252, column: 2, scope: !820)
!828 = !{i64 297043}
!829 = !DILocation(line: 255, column: 9, scope: !820)
!830 = !DILocation(line: 255, column: 2, scope: !820)
!831 = !DISubprogram(name: "_find_first_bit", scope: !791, file: !791, line: 21, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!832 = distinct !DISubprogram(name: "find_next_bit", scope: !791, file: !791, line: 54, type: !833, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{!31, !33, !31, !31}
!835 = !{!836, !837, !838, !839}
!836 = !DILocalVariable(name: "addr", arg: 1, scope: !832, file: !791, line: 54, type: !33)
!837 = !DILocalVariable(name: "size", arg: 2, scope: !832, file: !791, line: 54, type: !31)
!838 = !DILocalVariable(name: "offset", arg: 3, scope: !832, file: !791, line: 55, type: !31)
!839 = !DILocalVariable(name: "val", scope: !840, file: !791, line: 58, type: !31)
!840 = distinct !DILexicalBlock(scope: !841, file: !791, line: 57, column: 31)
!841 = distinct !DILexicalBlock(scope: !832, file: !791, line: 57, column: 6)
!842 = !DILocation(line: 54, column: 50, scope: !832)
!843 = !DILocation(line: 54, column: 70, scope: !832)
!844 = !DILocation(line: 55, column: 22, scope: !832)
!845 = !DILocation(line: 57, column: 6, scope: !841)
!846 = !DILocation(line: 57, column: 6, scope: !832)
!847 = !DILocation(line: 58, column: 3, scope: !840)
!848 = !DILocation(line: 58, column: 17, scope: !840)
!849 = !DILocation(line: 60, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !840, file: !791, line: 60, column: 7)
!851 = !DILocation(line: 60, column: 7, scope: !840)
!852 = !DILocation(line: 61, column: 11, scope: !850)
!853 = !DILocation(line: 61, column: 4, scope: !850)
!854 = !DILocation(line: 63, column: 10, scope: !840)
!855 = !DILocation(line: 63, column: 9, scope: !840)
!856 = !DILocation(line: 63, column: 17, scope: !840)
!857 = !DILocation(line: 63, column: 15, scope: !840)
!858 = !DILocation(line: 63, column: 7, scope: !840)
!859 = !DILocation(line: 64, column: 10, scope: !840)
!860 = !DILocation(line: 64, column: 16, scope: !840)
!861 = !DILocation(line: 64, column: 29, scope: !840)
!862 = !DILocation(line: 64, column: 3, scope: !840)
!863 = !DILocation(line: 65, column: 2, scope: !841)
!864 = !DILocation(line: 67, column: 24, scope: !832)
!865 = !DILocation(line: 67, column: 30, scope: !832)
!866 = !DILocation(line: 67, column: 36, scope: !832)
!867 = !DILocation(line: 67, column: 9, scope: !832)
!868 = !DILocation(line: 67, column: 2, scope: !832)
!869 = !DILocation(line: 68, column: 1, scope: !832)
!870 = !DISubprogram(name: "_find_next_bit", scope: !791, file: !791, line: 11, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
