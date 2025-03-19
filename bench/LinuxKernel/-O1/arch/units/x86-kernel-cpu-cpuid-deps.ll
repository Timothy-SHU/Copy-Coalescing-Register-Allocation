; ModuleID = 'arch/x86/kernel/cpu/cpuid-deps.c'
source_filename = "arch/x86/kernel/cpu/cpuid-deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuid_dep = type { i32, i32 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@.str = private unnamed_addr constant [33 x i8] c"arch/x86/kernel/cpu/cpuid-deps.c\00", align 1, !dbg !0
@cpuid_deps = internal constant [63 x %struct.cpuid_dep] [%struct.cpuid_dep { i32 24, i32 0 }, %struct.cpuid_dep { i32 320, i32 154 }, %struct.cpuid_dep { i32 321, i32 154 }, %struct.cpuid_dep { i32 323, i32 154 }, %struct.cpuid_dep { i32 156, i32 154 }, %struct.cpuid_dep { i32 515, i32 154 }, %struct.cpuid_dep { i32 302, i32 154 }, %struct.cpuid_dep { i32 322, i32 154 }, %struct.cpuid_dep { i32 15, i32 24 }, %struct.cpuid_dep { i32 23, i32 24 }, %struct.cpuid_dep { i32 54, i32 23 }, %struct.cpuid_dep { i32 57, i32 24 }, %struct.cpuid_dep { i32 154, i32 24 }, %struct.cpuid_dep { i32 25, i32 24 }, %struct.cpuid_dep { i32 26, i32 25 }, %struct.cpuid_dep { i32 128, i32 26 }, %struct.cpuid_dep { i32 147, i32 26 }, %struct.cpuid_dep { i32 148, i32 26 }, %struct.cpuid_dep { i32 128, i32 26 }, %struct.cpuid_dep { i32 129, i32 26 }, %struct.cpuid_dep { i32 137, i32 26 }, %struct.cpuid_dep { i32 157, i32 26 }, %struct.cpuid_dep { i32 153, i32 26 }, %struct.cpuid_dep { i32 317, i32 26 }, %struct.cpuid_dep { i32 520, i32 26 }, %struct.cpuid_dep { i32 140, i32 156 }, %struct.cpuid_dep { i32 521, i32 156 }, %struct.cpuid_dep { i32 522, i32 156 }, %struct.cpuid_dep { i32 293, i32 156 }, %struct.cpuid_dep { i32 304, i32 156 }, %struct.cpuid_dep { i32 309, i32 304 }, %struct.cpuid_dep { i32 314, i32 304 }, %struct.cpuid_dep { i32 315, i32 304 }, %struct.cpuid_dep { i32 316, i32 304 }, %struct.cpuid_dep { i32 305, i32 304 }, %struct.cpuid_dep { i32 318, i32 304 }, %struct.cpuid_dep { i32 319, i32 304 }, %struct.cpuid_dep { i32 513, i32 304 }, %struct.cpuid_dep { i32 518, i32 319 }, %struct.cpuid_dep { i32 523, i32 319 }, %struct.cpuid_dep { i32 524, i32 319 }, %struct.cpuid_dep { i32 578, i32 304 }, %struct.cpuid_dep { i32 579, i32 304 }, %struct.cpuid_dep { i32 526, i32 304 }, %struct.cpuid_dep { i32 584, i32 319 }, %struct.cpuid_dep { i32 353, i32 352 }, %struct.cpuid_dep { i32 354, i32 352 }, %struct.cpuid_dep { i32 355, i32 352 }, %struct.cpuid_dep { i32 374, i32 354 }, %struct.cpuid_dep { i32 374, i32 355 }, %struct.cpuid_dep { i32 389, i32 319 }, %struct.cpuid_dep { i32 599, i32 318 }, %struct.cpuid_dep { i32 541, i32 323 }, %struct.cpuid_dep { i32 359, i32 242 }, %struct.cpuid_dep { i32 542, i32 290 }, %struct.cpuid_dep { i32 360, i32 290 }, %struct.cpuid_dep { i32 361, i32 360 }, %struct.cpuid_dep { i32 370, i32 360 }, %struct.cpuid_dep { i32 324, i32 323 }, %struct.cpuid_dep { i32 324, i32 322 }, %struct.cpuid_dep { i32 600, i32 324 }, %struct.cpuid_dep { i32 519, i32 323 }, %struct.cpuid_dep zeroinitializer], align 16, !dbg !7
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@cpu_caps_cleared = external dso_local global [24 x i32], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clear_cpu_cap(ptr noundef %c, i32 noundef %feature) #0 align 16 !dbg !48 {
entry:
  %c.addr = alloca ptr, align 8
  %feature.addr = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !134, metadata !DIExpression()), !dbg !136
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !135, metadata !DIExpression()), !dbg !137
  %0 = load ptr, ptr %c.addr, align 8, !dbg !138
  %1 = load i32, ptr %feature.addr, align 4, !dbg !139
  call void @do_clear_cpu_cap(ptr noundef %0, i32 noundef %1) #9, !dbg !140
  ret void, !dbg !141
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_clear_cpu_cap(ptr noundef %c, i32 noundef %feature) #0 align 16 !dbg !142 {
entry:
  %c.addr = alloca ptr, align 8
  %feature.addr = alloca i32, align 4
  %disable = alloca [12 x i64], align 16
  %d = alloca ptr, align 8
  %changed = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !144, metadata !DIExpression()), !dbg !159
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !145, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 96, ptr %disable) #10, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %disable, metadata !146, metadata !DIExpression()), !dbg !161
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #10, !dbg !162
  call void @llvm.dbg.declare(metadata ptr %d, metadata !150, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 1, ptr %changed) #10, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %changed, metadata !152, metadata !DIExpression()), !dbg !165
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !166
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !153, metadata !DIExpression()), !dbg !166
  %0 = load i32, ptr %feature.addr, align 4, !dbg !166
  %conv = zext i32 %0 to i64, !dbg !166
  %cmp = icmp uge i64 %conv, 768, !dbg !166
  %lnot = xor i1 %cmp, true, !dbg !166
  %lnot2 = xor i1 %lnot, true, !dbg !166
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !166
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !166
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !167
  %tobool = icmp ne i32 %1, 0, !dbg !167
  %lnot3 = xor i1 %tobool, true, !dbg !167
  %lnot5 = xor i1 %lnot3, true, !dbg !167
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !167
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !167
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !167
  %tobool8 = icmp ne i64 %expval, 0, !dbg !167
  br i1 %tobool8, label %if.then, label %if.end, !dbg !166

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !167

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !156, metadata !DIExpression()), !dbg !168
  store i32 2305, ptr %__flags, align 4, !dbg !168
  br label %do.body9, !dbg !168

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !169

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !169

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !168

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !171
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 112, i32 %2, i64 12) #10, !dbg !171, !srcloc !173
  br label %do.cond11, !dbg !171

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !171

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !168

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !174

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !174

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !167
  br label %do.cond16, !dbg !168

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !168

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !168

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !166
  %tobool18 = icmp ne i32 %3, 0, !dbg !166
  %lnot19 = xor i1 %tobool18, true, !dbg !166
  %lnot21 = xor i1 %lnot19, true, !dbg !166
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !166
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !166
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !166
  store i64 %expval24, ptr %tmp, align 8, !dbg !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !176
  %4 = load i64, ptr %tmp, align 8, !dbg !166
  %tobool25 = icmp ne i64 %4, 0, !dbg !176
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !177

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !178

if.end27:                                         ; preds = %if.end
  %5 = load ptr, ptr %c.addr, align 8, !dbg !179
  %6 = load i32, ptr %feature.addr, align 4, !dbg !180
  call void @clear_feature(ptr noundef %5, i32 noundef %6) #9, !dbg !181
  %arraydecay = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !182
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 96, i1 false), !dbg !182
  %7 = load i32, ptr %feature.addr, align 4, !dbg !183
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !183
  br i1 %8, label %land.lhs.true, label %cond.false, !dbg !183

land.lhs.true:                                    ; preds = %if.end27
  %arraydecay28 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !183
  %9 = ptrtoint ptr %arraydecay28 to i64, !dbg !183
  %cmp29 = icmp ne i64 %9, 0, !dbg !183
  %conv30 = zext i1 %cmp29 to i32, !dbg !183
  %10 = call i1 @llvm.is.constant.i32(i32 %conv30), !dbg !183
  br i1 %10, label %land.lhs.true31, label %cond.false, !dbg !183

land.lhs.true31:                                  ; preds = %land.lhs.true
  %arraydecay32 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !183
  %11 = ptrtoint ptr %arraydecay32 to i64, !dbg !183
  %cmp33 = icmp ne i64 %11, 0, !dbg !183
  br i1 %cmp33, label %land.lhs.true35, label %cond.false, !dbg !183

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %arraydecay36 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !183
  %12 = load i64, ptr %arraydecay36, align 16, !dbg !183
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !183
  br i1 %13, label %cond.true, label %cond.false, !dbg !183

cond.true:                                        ; preds = %land.lhs.true35
  %14 = load i32, ptr %feature.addr, align 4, !dbg !183
  %conv37 = zext i32 %14 to i64, !dbg !183
  %arraydecay38 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !183
  call void @generic___set_bit(i64 noundef %conv37, ptr noundef %arraydecay38) #9, !dbg !183
  br label %cond.end, !dbg !183

cond.false:                                       ; preds = %land.lhs.true35, %land.lhs.true31, %land.lhs.true, %if.end27
  %15 = load i32, ptr %feature.addr, align 4, !dbg !183
  %conv39 = zext i32 %15 to i64, !dbg !183
  %arraydecay40 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !183
  call void @___set_bit(i64 noundef %conv39, ptr noundef %arraydecay40) #9, !dbg !183
  br label %cond.end, !dbg !183

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body41, !dbg !184

do.body41:                                        ; preds = %do.cond93, %cond.end
  store i8 0, ptr %changed, align 1, !dbg !185
  store ptr @cpuid_deps, ptr %d, align 8, !dbg !187
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %do.body41
  %16 = load ptr, ptr %d, align 8, !dbg !190
  %feature42 = getelementptr inbounds %struct.cpuid_dep, ptr %16, i32 0, i32 0, !dbg !192
  %17 = load i32, ptr %feature42, align 4, !dbg !192
  %tobool43 = icmp ne i32 %17, 0, !dbg !193
  br i1 %tobool43, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %d, align 8, !dbg !194
  %depends = getelementptr inbounds %struct.cpuid_dep, ptr %18, i32 0, i32 1, !dbg !194
  %19 = load i32, ptr %depends, align 4, !dbg !194
  %20 = call i1 @llvm.is.constant.i32(i32 %19), !dbg !194
  br i1 %20, label %land.lhs.true44, label %cond.false59, !dbg !194

land.lhs.true44:                                  ; preds = %for.body
  %arraydecay45 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !194
  %21 = ptrtoint ptr %arraydecay45 to i64, !dbg !194
  %cmp46 = icmp ne i64 %21, 0, !dbg !194
  %conv47 = zext i1 %cmp46 to i32, !dbg !194
  %22 = call i1 @llvm.is.constant.i32(i32 %conv47), !dbg !194
  br i1 %22, label %land.lhs.true48, label %cond.false59, !dbg !194

land.lhs.true48:                                  ; preds = %land.lhs.true44
  %arraydecay49 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !194
  %23 = ptrtoint ptr %arraydecay49 to i64, !dbg !194
  %cmp50 = icmp ne i64 %23, 0, !dbg !194
  br i1 %cmp50, label %land.lhs.true52, label %cond.false59, !dbg !194

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %arraydecay53 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !194
  %24 = load i64, ptr %arraydecay53, align 16, !dbg !194
  %25 = call i1 @llvm.is.constant.i64(i64 %24), !dbg !194
  br i1 %25, label %cond.true54, label %cond.false59, !dbg !197

cond.true54:                                      ; preds = %land.lhs.true52
  %26 = load ptr, ptr %d, align 8, !dbg !194
  %depends55 = getelementptr inbounds %struct.cpuid_dep, ptr %26, i32 0, i32 1, !dbg !194
  %27 = load i32, ptr %depends55, align 4, !dbg !194
  %conv56 = zext i32 %27 to i64, !dbg !194
  %arraydecay57 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !194
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv56, ptr noundef %arraydecay57) #9, !dbg !194
  br i1 %call, label %if.end66, label %if.then65, !dbg !194

cond.false59:                                     ; preds = %land.lhs.true52, %land.lhs.true48, %land.lhs.true44, %for.body
  %28 = load ptr, ptr %d, align 8, !dbg !194
  %depends60 = getelementptr inbounds %struct.cpuid_dep, ptr %28, i32 0, i32 1, !dbg !194
  %29 = load i32, ptr %depends60, align 4, !dbg !194
  %conv61 = zext i32 %29 to i64, !dbg !194
  %arraydecay62 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !194
  %call63 = call zeroext i1 @_test_bit(i64 noundef %conv61, ptr noundef %arraydecay62) #9, !dbg !194
  br i1 %call63, label %if.end66, label %if.then65, !dbg !197

if.then65:                                        ; preds = %cond.false59, %cond.true54
  br label %for.inc, !dbg !198

if.end66:                                         ; preds = %cond.false59, %cond.true54
  %30 = load ptr, ptr %d, align 8, !dbg !199
  %feature67 = getelementptr inbounds %struct.cpuid_dep, ptr %30, i32 0, i32 0, !dbg !199
  %31 = load i32, ptr %feature67, align 4, !dbg !199
  %32 = call i1 @llvm.is.constant.i32(i32 %31), !dbg !199
  br i1 %32, label %land.lhs.true68, label %cond.false84, !dbg !199

land.lhs.true68:                                  ; preds = %if.end66
  %arraydecay69 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !199
  %33 = ptrtoint ptr %arraydecay69 to i64, !dbg !199
  %cmp70 = icmp ne i64 %33, 0, !dbg !199
  %conv71 = zext i1 %cmp70 to i32, !dbg !199
  %34 = call i1 @llvm.is.constant.i32(i32 %conv71), !dbg !199
  br i1 %34, label %land.lhs.true72, label %cond.false84, !dbg !199

land.lhs.true72:                                  ; preds = %land.lhs.true68
  %arraydecay73 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !199
  %35 = ptrtoint ptr %arraydecay73 to i64, !dbg !199
  %cmp74 = icmp ne i64 %35, 0, !dbg !199
  br i1 %cmp74, label %land.lhs.true76, label %cond.false84, !dbg !199

land.lhs.true76:                                  ; preds = %land.lhs.true72
  %arraydecay77 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !199
  %36 = load i64, ptr %arraydecay77, align 16, !dbg !199
  %37 = call i1 @llvm.is.constant.i64(i64 %36), !dbg !199
  br i1 %37, label %cond.true78, label %cond.false84, !dbg !201

cond.true78:                                      ; preds = %land.lhs.true76
  %38 = load ptr, ptr %d, align 8, !dbg !199
  %feature79 = getelementptr inbounds %struct.cpuid_dep, ptr %38, i32 0, i32 0, !dbg !199
  %39 = load i32, ptr %feature79, align 4, !dbg !199
  %conv80 = zext i32 %39 to i64, !dbg !199
  %arraydecay81 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !199
  %call82 = call zeroext i1 @generic___test_and_set_bit(i64 noundef %conv80, ptr noundef %arraydecay81) #9, !dbg !199
  br i1 %call82, label %if.then90, label %if.end91, !dbg !199

cond.false84:                                     ; preds = %land.lhs.true76, %land.lhs.true72, %land.lhs.true68, %if.end66
  %40 = load ptr, ptr %d, align 8, !dbg !199
  %feature85 = getelementptr inbounds %struct.cpuid_dep, ptr %40, i32 0, i32 0, !dbg !199
  %41 = load i32, ptr %feature85, align 4, !dbg !199
  %conv86 = zext i32 %41 to i64, !dbg !199
  %arraydecay87 = getelementptr inbounds [12 x i64], ptr %disable, i64 0, i64 0, !dbg !199
  %call88 = call zeroext i1 @___test_and_set_bit(i64 noundef %conv86, ptr noundef %arraydecay87) #9, !dbg !199
  br i1 %call88, label %if.then90, label %if.end91, !dbg !201

if.then90:                                        ; preds = %cond.false84, %cond.true78
  br label %for.inc, !dbg !202

if.end91:                                         ; preds = %cond.false84, %cond.true78
  store i8 1, ptr %changed, align 1, !dbg !203
  %42 = load ptr, ptr %c.addr, align 8, !dbg !204
  %43 = load ptr, ptr %d, align 8, !dbg !205
  %feature92 = getelementptr inbounds %struct.cpuid_dep, ptr %43, i32 0, i32 0, !dbg !206
  %44 = load i32, ptr %feature92, align 4, !dbg !206
  call void @clear_feature(ptr noundef %42, i32 noundef %44) #9, !dbg !207
  br label %for.inc, !dbg !208

for.inc:                                          ; preds = %if.end91, %if.then90, %if.then65
  %45 = load ptr, ptr %d, align 8, !dbg !209
  %incdec.ptr = getelementptr %struct.cpuid_dep, ptr %45, i32 1, !dbg !209
  store ptr %incdec.ptr, ptr %d, align 8, !dbg !209
  br label %for.cond, !dbg !210, !llvm.loop !211

for.end:                                          ; preds = %for.cond
  br label %do.cond93, !dbg !215

do.cond93:                                        ; preds = %for.end
  %46 = load i8, ptr %changed, align 1, !dbg !216, !range !217, !noundef !218
  %tobool94 = trunc i8 %46 to i1, !dbg !216
  br i1 %tobool94, label %do.body41, label %do.end95, !dbg !215, !llvm.loop !219

do.end95:                                         ; preds = %do.cond93
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !221
  br label %cleanup, !dbg !221

cleanup:                                          ; preds = %do.end95, %if.then26
  call void @llvm.lifetime.end.p0(i64 1, ptr %changed) #10, !dbg !221
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #10, !dbg !221
  call void @llvm.lifetime.end.p0(i64 96, ptr %disable) #10, !dbg !221
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !221

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @setup_clear_cpu_cap(i32 noundef %feature) #0 align 16 !dbg !222 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i32, ptr %feature.addr, align 4, !dbg !228
  call void @do_clear_cpu_cap(ptr noundef null, i32 noundef %0) #9, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_feature(ptr noundef %c, i32 noundef %feature) #4 align 16 !dbg !231 {
entry:
  %c.addr = alloca ptr, align 8
  %feature.addr = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !233, metadata !DIExpression()), !dbg !235
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !234, metadata !DIExpression()), !dbg !236
  %0 = load ptr, ptr %c.addr, align 8, !dbg !237
  %tobool = icmp ne ptr %0, null, !dbg !237
  br i1 %tobool, label %if.else, label %if.then, !dbg !239

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %feature.addr, align 4, !dbg !240
  call void @clear_cpu_cap(ptr noundef @boot_cpu_data, i32 noundef %1) #9, !dbg !242
  %2 = load i32, ptr %feature.addr, align 4, !dbg !243
  %conv = zext i32 %2 to i64, !dbg !243
  call void @set_bit(i64 noundef %conv, ptr noundef @cpu_caps_cleared) #9, !dbg !244
  br label %if.end, !dbg !245

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %feature.addr, align 4, !dbg !246
  %conv1 = zext i32 %3 to i64, !dbg !246
  %4 = load ptr, ptr %c.addr, align 8, !dbg !248
  %5 = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 10, !dbg !249
  %arraydecay = getelementptr inbounds [24 x i32], ptr %5, i64 0, i64 0, !dbg !248
  call void @clear_bit(i64 noundef %conv1, ptr noundef %arraydecay) #9, !dbg !250
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !251
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !252 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !259, metadata !DIExpression()), !dbg !263
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !260, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !261, metadata !DIExpression()), !dbg !266
  %0 = load i64, ptr %nr.addr, align 8, !dbg !267
  %rem = urem i64 %0, 64, !dbg !267
  %shl = shl i64 1, %rem, !dbg !267
  store i64 %shl, ptr %mask, align 8, !dbg !266
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %p, metadata !262, metadata !DIExpression()), !dbg !269
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !270
  %2 = load i64, ptr %nr.addr, align 8, !dbg !271
  %div = udiv i64 %2, 64, !dbg !271
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !272
  store ptr %add.ptr, ptr %p, align 8, !dbg !269
  %3 = load i64, ptr %mask, align 8, !dbg !273
  %4 = load ptr, ptr %p, align 8, !dbg !274
  %5 = load i64, ptr %4, align 8, !dbg !275
  %or = or i64 %5, %3, !dbg !275
  store i64 %or, ptr %4, align 8, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !276
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !276
  ret void, !dbg !276
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !277 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !280, metadata !DIExpression()), !dbg !282
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !281, metadata !DIExpression()), !dbg !283
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !284
  %1 = load i64, ptr %nr.addr, align 8, !dbg !285
  %div = udiv i64 %1, 64, !dbg !285
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !286
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !287
  %2 = load i64, ptr %nr.addr, align 8, !dbg !288
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !289
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !290
  ret void, !dbg !291
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !292 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !298, metadata !DIExpression()), !dbg !303
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !299, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %p, metadata !300, metadata !DIExpression()), !dbg !306
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !307
  %1 = load i64, ptr %nr.addr, align 8, !dbg !308
  %div = udiv i64 %1, 64, !dbg !308
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !309
  store ptr %add.ptr, ptr %p, align 8, !dbg !306
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !301, metadata !DIExpression()), !dbg !311
  %2 = load i64, ptr %nr.addr, align 8, !dbg !312
  %rem = urem i64 %2, 64, !dbg !312
  %shl = shl i64 1, %rem, !dbg !312
  store i64 %shl, ptr %mask, align 8, !dbg !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %val, metadata !302, metadata !DIExpression()), !dbg !314
  %3 = load ptr, ptr %p, align 8, !dbg !315
  %4 = load i64, ptr %3, align 8, !dbg !316
  store i64 %4, ptr %val, align 8, !dbg !314
  %5 = load i64, ptr %val, align 8, !dbg !317
  %6 = load i64, ptr %mask, align 8, !dbg !318
  %and = and i64 %5, %6, !dbg !319
  %tobool = icmp ne i64 %and, 0, !dbg !320
  %lnot = xor i1 %tobool, true, !dbg !320
  %lnot1 = xor i1 %lnot, true, !dbg !321
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !322
  ret i1 %lnot1, !dbg !323
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !324 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !326, metadata !DIExpression()), !dbg !328
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !327, metadata !DIExpression()), !dbg !329
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !330
  %1 = load i64, ptr %nr.addr, align 8, !dbg !331
  %div = udiv i64 %1, 64, !dbg !331
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !332
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !333
  %2 = load i64, ptr %nr.addr, align 8, !dbg !334
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !335
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !336
  ret i1 %call, !dbg !337
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !338 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  %old = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !342, metadata !DIExpression()), !dbg !347
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !343, metadata !DIExpression()), !dbg !348
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !349
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !344, metadata !DIExpression()), !dbg !350
  %0 = load i64, ptr %nr.addr, align 8, !dbg !351
  %rem = urem i64 %0, 64, !dbg !351
  %shl = shl i64 1, %rem, !dbg !351
  store i64 %shl, ptr %mask, align 8, !dbg !350
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %p, metadata !345, metadata !DIExpression()), !dbg !353
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !354
  %2 = load i64, ptr %nr.addr, align 8, !dbg !355
  %div = udiv i64 %2, 64, !dbg !355
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !356
  store ptr %add.ptr, ptr %p, align 8, !dbg !353
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #10, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %old, metadata !346, metadata !DIExpression()), !dbg !358
  %3 = load ptr, ptr %p, align 8, !dbg !359
  %4 = load i64, ptr %3, align 8, !dbg !360
  store i64 %4, ptr %old, align 8, !dbg !358
  %5 = load i64, ptr %old, align 8, !dbg !361
  %6 = load i64, ptr %mask, align 8, !dbg !362
  %or = or i64 %5, %6, !dbg !363
  %7 = load ptr, ptr %p, align 8, !dbg !364
  store i64 %or, ptr %7, align 8, !dbg !365
  %8 = load i64, ptr %old, align 8, !dbg !366
  %9 = load i64, ptr %mask, align 8, !dbg !367
  %and = and i64 %8, %9, !dbg !368
  %cmp = icmp ne i64 %and, 0, !dbg !369
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #10, !dbg !370
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !370
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !370
  ret i1 %cmp, !dbg !371
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !372 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !374, metadata !DIExpression()), !dbg !376
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !375, metadata !DIExpression()), !dbg !377
  %0 = load i64, ptr %nr.addr, align 8, !dbg !378
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !379
  call void @__instrument_read_write_bitop(i64 noundef %0, ptr noundef %1) #9, !dbg !380
  %2 = load i64, ptr %nr.addr, align 8, !dbg !381
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !382
  %call = call zeroext i1 @arch___test_and_set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !383
  ret i1 %call, !dbg !384
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !385 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !390, metadata !DIExpression()), !dbg !392
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !391, metadata !DIExpression()), !dbg !393
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !394
  %1 = load i64, ptr %nr.addr, align 8, !dbg !395
  %div = sdiv i64 %1, 64, !dbg !395
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !396
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !397
  %2 = load i64, ptr %nr.addr, align 8, !dbg !398
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !399
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !400
  ret void, !dbg !401
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !402 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !404, metadata !DIExpression()), !dbg !406
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !405, metadata !DIExpression()), !dbg !407
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !408
  %1 = load i64, ptr %nr.addr, align 8, !dbg !409
  %div = sdiv i64 %1, 64, !dbg !409
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !410
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !411
  %2 = load i64, ptr %nr.addr, align 8, !dbg !412
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !413
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !416 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !428, metadata !DIExpression()), !dbg !430
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !429, metadata !DIExpression()), !dbg !431
  %0 = load ptr, ptr %v.addr, align 8, !dbg !432
  %1 = load i64, ptr %size.addr, align 8, !dbg !433
  %conv = trunc i64 %1 to i32, !dbg !433
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !434
  %2 = load ptr, ptr %v.addr, align 8, !dbg !435
  %3 = load i64, ptr %size.addr, align 8, !dbg !435
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !435
  ret void, !dbg !436
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !437 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !440, metadata !DIExpression()), !dbg !442
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !441, metadata !DIExpression()), !dbg !443
  %0 = load i64, ptr %nr.addr, align 8, !dbg !444
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !446
  br i1 %1, label %if.then, label %if.else, !dbg !447

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !448
  %3 = load i64, ptr %nr.addr, align 8, !dbg !448
  %shr = ashr i64 %3, 3, !dbg !448
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !448
  %4 = load i64, ptr %nr.addr, align 8, !dbg !450
  %and = and i64 %4, 7, !dbg !450
  %sh_prom = trunc i64 %and to i32, !dbg !450
  %shl = shl i32 1, %sh_prom, !dbg !450
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !451, !srcloc !452
  br label %if.end, !dbg !453

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !454
  %6 = load i64, ptr %nr.addr, align 8, !dbg !456
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !457, !srcloc !458
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !459
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !460 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !465, metadata !DIExpression()), !dbg !467
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !466, metadata !DIExpression()), !dbg !468
  ret i1 true, !dbg !469
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !470 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !475, metadata !DIExpression()), !dbg !478
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !476, metadata !DIExpression()), !dbg !479
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !477, metadata !DIExpression()), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !482 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !484, metadata !DIExpression()), !dbg !486
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !485, metadata !DIExpression()), !dbg !487
  %0 = load i64, ptr %nr.addr, align 8, !dbg !488
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !490
  br i1 %1, label %if.then, label %if.else, !dbg !491

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !492
  %3 = load i64, ptr %nr.addr, align 8, !dbg !492
  %shr = ashr i64 %3, 3, !dbg !492
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !492
  %4 = load i64, ptr %nr.addr, align 8, !dbg !494
  %and = and i64 %4, 7, !dbg !494
  %sh_prom = trunc i64 %and to i32, !dbg !494
  %shl = shl i32 1, %sh_prom, !dbg !494
  %not = xor i32 %shl, -1, !dbg !495
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #10, !dbg !496, !srcloc !497
  br label %if.end, !dbg !498

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !499
  %6 = load i64, ptr %nr.addr, align 8, !dbg !501
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !502, !srcloc !503
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !504
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !505 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !507, metadata !DIExpression()), !dbg !509
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !508, metadata !DIExpression()), !dbg !510
  %0 = load ptr, ptr %v.addr, align 8, !dbg !511
  %1 = load i64, ptr %size.addr, align 8, !dbg !512
  %conv = trunc i64 %1 to i32, !dbg !512
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !513
  %2 = load ptr, ptr %v.addr, align 8, !dbg !514
  %3 = load i64, ptr %size.addr, align 8, !dbg !514
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #9, !dbg !514
  ret void, !dbg !515
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !516 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !518, metadata !DIExpression()), !dbg !520
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !519, metadata !DIExpression()), !dbg !521
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !522
  %1 = load i64, ptr %nr.addr, align 8, !dbg !523
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !524, !srcloc !525
  ret void, !dbg !526
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !527 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !529, metadata !DIExpression()), !dbg !531
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !530, metadata !DIExpression()), !dbg !532
  %0 = load ptr, ptr %v.addr, align 8, !dbg !533
  %1 = load i64, ptr %size.addr, align 8, !dbg !534
  %conv = trunc i64 %1 to i32, !dbg !534
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !535
  %2 = load ptr, ptr %v.addr, align 8, !dbg !536
  %3 = load i64, ptr %size.addr, align 8, !dbg !536
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !536
  ret void, !dbg !537
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !538 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !540, metadata !DIExpression()), !dbg !542
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !541, metadata !DIExpression()), !dbg !543
  %0 = load i64, ptr %nr.addr, align 8, !dbg !544
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !545
  br i1 %1, label %cond.true, label %cond.false, !dbg !545

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !546
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !547
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !548
  %conv = zext i1 %call to i32, !dbg !548
  br label %cond.end, !dbg !545

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !549
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !550
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #9, !dbg !551
  %conv2 = zext i1 %call1 to i32, !dbg !551
  br label %cond.end, !dbg !545

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !545
  %tobool = icmp ne i32 %cond, 0, !dbg !545
  ret i1 %tobool, !dbg !552
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !553 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !555, metadata !DIExpression()), !dbg !557
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !556, metadata !DIExpression()), !dbg !558
  ret i1 true, !dbg !559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !560 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !564, metadata !DIExpression()), !dbg !566
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !565, metadata !DIExpression()), !dbg !567
  %0 = load i64, ptr %nr.addr, align 8, !dbg !568
  %and = and i64 %0, 63, !dbg !569
  %shl = shl i64 1, %and, !dbg !570
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !571
  %2 = load i64, ptr %nr.addr, align 8, !dbg !572
  %shr = ashr i64 %2, 6, !dbg !573
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !571
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !571
  %and1 = and i64 %shl, %3, !dbg !574
  %cmp = icmp ne i64 %and1, 0, !dbg !575
  ret i1 %cmp, !dbg !576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !577 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !579, metadata !DIExpression()), !dbg !582
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !580, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !581, metadata !DIExpression()), !dbg !585
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !586
  %1 = load i64, ptr %nr.addr, align 8, !dbg !587
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !588, !srcloc !589
  %3 = icmp ult i8 %2, 2, !dbg !588
  call void @llvm.assume(i1 %3), !dbg !588
  store i8 %2, ptr %oldbit, align 1, !dbg !588
  %4 = load i8, ptr %oldbit, align 1, !dbg !590, !range !217, !noundef !218
  %tobool = trunc i8 %4 to i1, !dbg !590
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !591
  ret i1 %tobool, !dbg !592
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__instrument_read_write_bitop(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !593 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !595, metadata !DIExpression()), !dbg !597
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !596, metadata !DIExpression()), !dbg !598
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !599
  %1 = load i64, ptr %nr.addr, align 8, !dbg !602
  %div = sdiv i64 %1, 64, !dbg !602
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !603
  call void @instrument_read_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !604
  ret void, !dbg !605
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !606 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !608, metadata !DIExpression()), !dbg !611
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !609, metadata !DIExpression()), !dbg !612
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !613
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !610, metadata !DIExpression()), !dbg !614
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !615
  %1 = load i64, ptr %nr.addr, align 8, !dbg !616
  %2 = call i8 asm " btsq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !617, !srcloc !618
  %3 = icmp ult i8 %2, 2, !dbg !617
  call void @llvm.assume(i1 %3), !dbg !617
  store i8 %2, ptr %oldbit, align 1, !dbg !617
  %4 = load i8, ptr %oldbit, align 1, !dbg !619, !range !217, !noundef !218
  %tobool = trunc i8 %4 to i1, !dbg !619
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !620
  ret i1 %tobool, !dbg !621
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !622 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !624, metadata !DIExpression()), !dbg !626
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !625, metadata !DIExpression()), !dbg !627
  %0 = load ptr, ptr %v.addr, align 8, !dbg !628
  %1 = load i64, ptr %size.addr, align 8, !dbg !629
  %conv = trunc i64 %1 to i32, !dbg !629
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !630
  %2 = load ptr, ptr %v.addr, align 8, !dbg !631
  %3 = load i64, ptr %size.addr, align 8, !dbg !631
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #9, !dbg !631
  ret void, !dbg !632
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/cpu/cpuid-deps.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8c305cf267868d221cc07b77b85bfa79")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 33)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "cpuid_deps", scope: !9, file: !2, line: 22, type: !31, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.cpuid-deps.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/cpuid-deps\22 -D KBUILD_BASENAME=\22cpuid_deps\22 -D KBUILD_MODNAME=\22cpuid_deps\22 -D __KBUILD_MODNAME=kmod_cpuid_deps -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/cpuid-deps.ll arch/x86/kernel/cpu/cpuid-deps.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !17, globals: !30, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !{!18, !21, !22, !24, !25, !27}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !19, line: 42, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!29 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!30 = !{!0, !7}
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4032, elements: !37)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuid_dep", file: !2, line: 7, size: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !33, file: !2, line: 8, baseType: !13, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !33, file: !2, line: 9, baseType: !13, size: 32, offset: 32)
!37 = !{!38}
!38 = !DISubrange(count: 63)
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 8, !"cf-protection-branch", i32 1}
!43 = !{i32 4, !"function_return_thunk_extern", i32 1}
!44 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!45 = !{i32 1, !"Code Model", i32 2}
!46 = !{i32 1, !"override-stack-alignment", i32 8}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = distinct !DISubprogram(name: "clear_cpu_cap", scope: !2, file: !2, line: 136, type: !49, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !133)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !13}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !53, line: 83, size: 2368, elements: !54)
!53 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!54 = !{!55, !70, !71, !73, !77, !78, !79, !80, !81, !82, !83, !91, !95, !99, !100, !101, !102, !103, !104, !105, !106, !111, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !128, !130, !132}
!55 = !DIDerivedType(tag: DW_TAG_member, scope: !52, file: !53, line: 84, baseType: !56, size: 32)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !53, line: 84, size: 32, elements: !57)
!57 = !{!58, !68}
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !53, line: 90, baseType: !59, size: 32)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !56, file: !53, line: 90, size: 32, elements: !60)
!60 = !{!61, !65, !66, !67}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !59, file: !53, line: 91, baseType: !62, size: 8)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !63, line: 21, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !59, file: !53, line: 93, baseType: !62, size: 8, offset: 8)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !59, file: !53, line: 95, baseType: !62, size: 8, offset: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !59, file: !53, line: 96, baseType: !62, size: 8, offset: 24)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !56, file: !53, line: 99, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !63, line: 27, baseType: !13)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !52, file: !53, line: 101, baseType: !62, size: 8, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !52, file: !53, line: 104, baseType: !72, size: 32, offset: 64)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !52, file: !53, line: 107, baseType: !74, size: 160, offset: 96)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 160, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 5)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !52, file: !53, line: 109, baseType: !62, size: 8, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !52, file: !53, line: 110, baseType: !62, size: 8, offset: 264)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !52, file: !53, line: 112, baseType: !62, size: 8, offset: 272)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !52, file: !53, line: 113, baseType: !62, size: 8, offset: 280)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !52, file: !53, line: 115, baseType: !69, size: 32, offset: 288)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !52, file: !53, line: 117, baseType: !72, size: 32, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !52, file: !53, line: 123, baseType: !84, size: 768, offset: 384)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !53, line: 123, size: 768, elements: !85)
!85 = !{!86, !90}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !84, file: !53, line: 124, baseType: !87, size: 768)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 768, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 24)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !84, file: !53, line: 125, baseType: !20, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !52, file: !53, line: 127, baseType: !92, size: 128, offset: 1152)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !52, file: !53, line: 128, baseType: !96, size: 512, offset: 1280)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !52, file: !53, line: 130, baseType: !13, size: 32, offset: 1792)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !52, file: !53, line: 131, baseType: !72, size: 32, offset: 1824)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !52, file: !53, line: 133, baseType: !72, size: 32, offset: 1856)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !52, file: !53, line: 134, baseType: !72, size: 32, offset: 1888)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !52, file: !53, line: 135, baseType: !72, size: 32, offset: 1920)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !52, file: !53, line: 136, baseType: !72, size: 32, offset: 1952)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !52, file: !53, line: 137, baseType: !20, size: 64, offset: 1984)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !52, file: !53, line: 139, baseType: !107, size: 64, offset: 2048)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !108, line: 23, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !63, line: 31, baseType: !110)
!110 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !52, file: !53, line: 141, baseType: !112, size: 16, offset: 2112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !108, line: 19, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !63, line: 24, baseType: !114)
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !52, file: !53, line: 142, baseType: !112, size: 16, offset: 2128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !52, file: !53, line: 143, baseType: !112, size: 16, offset: 2144)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !52, file: !53, line: 144, baseType: !112, size: 16, offset: 2160)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !52, file: !53, line: 146, baseType: !112, size: 16, offset: 2176)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !52, file: !53, line: 148, baseType: !112, size: 16, offset: 2192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !52, file: !53, line: 150, baseType: !112, size: 16, offset: 2208)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !52, file: !53, line: 152, baseType: !112, size: 16, offset: 2224)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !52, file: !53, line: 153, baseType: !112, size: 16, offset: 2240)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !52, file: !53, line: 154, baseType: !112, size: 16, offset: 2256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !52, file: !53, line: 156, baseType: !112, size: 16, offset: 2272)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !52, file: !53, line: 158, baseType: !126, size: 8, offset: 2288)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !127)
!127 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !52, file: !53, line: 159, baseType: !129, size: 32, offset: 2304)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !108, line: 21, baseType: !69)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !52, file: !53, line: 161, baseType: !131, size: 8, offset: 2336)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !108, line: 17, baseType: !62)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !52, file: !53, line: 162, baseType: !13, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "c", arg: 1, scope: !48, file: !2, line: 136, type: !51)
!135 = !DILocalVariable(name: "feature", arg: 2, scope: !48, file: !2, line: 136, type: !13)
!136 = !DILocation(line: 136, column: 40, scope: !48)
!137 = !DILocation(line: 136, column: 56, scope: !48)
!138 = !DILocation(line: 138, column: 19, scope: !48)
!139 = !DILocation(line: 138, column: 22, scope: !48)
!140 = !DILocation(line: 138, column: 2, scope: !48)
!141 = !DILocation(line: 139, column: 1, scope: !48)
!142 = distinct !DISubprogram(name: "do_clear_cpu_cap", scope: !2, file: !2, line: 106, type: !49, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !143)
!143 = !{!144, !145, !146, !150, !152, !153, !156}
!144 = !DILocalVariable(name: "c", arg: 1, scope: !142, file: !2, line: 106, type: !51)
!145 = !DILocalVariable(name: "feature", arg: 2, scope: !142, file: !2, line: 106, type: !13)
!146 = !DILocalVariable(name: "disable", scope: !142, file: !2, line: 108, type: !147)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 768, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 12)
!150 = !DILocalVariable(name: "d", scope: !142, file: !2, line: 109, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!152 = !DILocalVariable(name: "changed", scope: !142, file: !2, line: 110, type: !126)
!153 = !DILocalVariable(name: "__ret_warn_on", scope: !154, file: !2, line: 112, type: !72)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 112, column: 6)
!155 = distinct !DILexicalBlock(scope: !142, file: !2, line: 112, column: 6)
!156 = !DILocalVariable(name: "__flags", scope: !157, file: !2, line: 112, type: !72)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 112, column: 6)
!158 = distinct !DILexicalBlock(scope: !154, file: !2, line: 112, column: 6)
!159 = !DILocation(line: 106, column: 50, scope: !142)
!160 = !DILocation(line: 106, column: 66, scope: !142)
!161 = !DILocation(line: 108, column: 2, scope: !142)
!162 = !DILocation(line: 109, column: 2, scope: !142)
!163 = !DILocation(line: 109, column: 26, scope: !142)
!164 = !DILocation(line: 110, column: 2, scope: !142)
!165 = !DILocation(line: 110, column: 7, scope: !142)
!166 = !DILocation(line: 112, column: 6, scope: !154)
!167 = !DILocation(line: 112, column: 6, scope: !158)
!168 = !DILocation(line: 112, column: 6, scope: !157)
!169 = !DILocation(line: 112, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !157, file: !2, line: 112, column: 6)
!171 = !DILocation(line: 112, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !157, file: !2, line: 112, column: 6)
!173 = !{i64 2152253022, i64 2152253051, i64 2152253097, i64 2152253155, i64 2152253209, i64 2152253263, i64 2152253318, i64 2152253349, i64 2152253657, i64 2152253663, i64 2152253710, i64 2152253733, i64 2152253759}
!174 = !DILocation(line: 112, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !157, file: !2, line: 112, column: 6)
!176 = !DILocation(line: 112, column: 6, scope: !155)
!177 = !DILocation(line: 112, column: 6, scope: !142)
!178 = !DILocation(line: 113, column: 3, scope: !155)
!179 = !DILocation(line: 115, column: 16, scope: !142)
!180 = !DILocation(line: 115, column: 19, scope: !142)
!181 = !DILocation(line: 115, column: 2, scope: !142)
!182 = !DILocation(line: 118, column: 2, scope: !142)
!183 = !DILocation(line: 119, column: 2, scope: !142)
!184 = !DILocation(line: 122, column: 2, scope: !142)
!185 = !DILocation(line: 123, column: 11, scope: !186)
!186 = distinct !DILexicalBlock(scope: !142, file: !2, line: 122, column: 5)
!187 = !DILocation(line: 124, column: 10, scope: !188)
!188 = distinct !DILexicalBlock(scope: !186, file: !2, line: 124, column: 3)
!189 = !DILocation(line: 124, column: 8, scope: !188)
!190 = !DILocation(line: 124, column: 24, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !2, line: 124, column: 3)
!192 = !DILocation(line: 124, column: 27, scope: !191)
!193 = !DILocation(line: 124, column: 3, scope: !188)
!194 = !DILocation(line: 125, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 125, column: 8)
!196 = distinct !DILexicalBlock(scope: !191, file: !2, line: 124, column: 41)
!197 = !DILocation(line: 125, column: 8, scope: !196)
!198 = !DILocation(line: 126, column: 5, scope: !195)
!199 = !DILocation(line: 127, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !2, line: 127, column: 8)
!201 = !DILocation(line: 127, column: 8, scope: !196)
!202 = !DILocation(line: 128, column: 5, scope: !200)
!203 = !DILocation(line: 130, column: 12, scope: !196)
!204 = !DILocation(line: 131, column: 18, scope: !196)
!205 = !DILocation(line: 131, column: 21, scope: !196)
!206 = !DILocation(line: 131, column: 24, scope: !196)
!207 = !DILocation(line: 131, column: 4, scope: !196)
!208 = !DILocation(line: 132, column: 3, scope: !196)
!209 = !DILocation(line: 124, column: 37, scope: !191)
!210 = !DILocation(line: 124, column: 3, scope: !191)
!211 = distinct !{!211, !193, !212, !213, !214}
!212 = !DILocation(line: 132, column: 3, scope: !188)
!213 = !{!"llvm.loop.mustprogress"}
!214 = !{!"llvm.loop.unroll.disable"}
!215 = !DILocation(line: 133, column: 2, scope: !186)
!216 = !DILocation(line: 133, column: 11, scope: !142)
!217 = !{i8 0, i8 2}
!218 = !{}
!219 = distinct !{!219, !184, !220, !213, !214}
!220 = !DILocation(line: 133, column: 18, scope: !142)
!221 = !DILocation(line: 134, column: 1, scope: !142)
!222 = distinct !DISubprogram(name: "setup_clear_cpu_cap", scope: !2, file: !2, line: 141, type: !223, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !13}
!225 = !{!226}
!226 = !DILocalVariable(name: "feature", arg: 1, scope: !222, file: !2, line: 141, type: !13)
!227 = !DILocation(line: 141, column: 39, scope: !222)
!228 = !DILocation(line: 143, column: 25, scope: !222)
!229 = !DILocation(line: 143, column: 2, scope: !222)
!230 = !DILocation(line: 144, column: 1, scope: !222)
!231 = distinct !DISubprogram(name: "clear_feature", scope: !2, file: !2, line: 88, type: !49, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !232)
!232 = !{!233, !234}
!233 = !DILocalVariable(name: "c", arg: 1, scope: !231, file: !2, line: 88, type: !51)
!234 = !DILocalVariable(name: "feature", arg: 2, scope: !231, file: !2, line: 88, type: !13)
!235 = !DILocation(line: 88, column: 54, scope: !231)
!236 = !DILocation(line: 88, column: 70, scope: !231)
!237 = !DILocation(line: 95, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !231, file: !2, line: 95, column: 6)
!239 = !DILocation(line: 95, column: 6, scope: !231)
!240 = !DILocation(line: 96, column: 33, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !2, line: 95, column: 10)
!242 = !DILocation(line: 96, column: 3, scope: !241)
!243 = !DILocation(line: 97, column: 11, scope: !241)
!244 = !DILocation(line: 97, column: 3, scope: !241)
!245 = !DILocation(line: 98, column: 2, scope: !241)
!246 = !DILocation(line: 99, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !238, file: !2, line: 98, column: 9)
!248 = !DILocation(line: 99, column: 39, scope: !247)
!249 = !DILocation(line: 99, column: 42, scope: !247)
!250 = !DILocation(line: 99, column: 3, scope: !247)
!251 = !DILocation(line: 101, column: 1, scope: !231)
!252 = distinct !DISubprogram(name: "generic___set_bit", scope: !253, file: !253, line: 28, type: !254, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !258)
!253 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!254 = !DISubroutineType(types: !255)
!255 = !{null, !20, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!258 = !{!259, !260, !261, !262}
!259 = !DILocalVariable(name: "nr", arg: 1, scope: !252, file: !253, line: 28, type: !20)
!260 = !DILocalVariable(name: "addr", arg: 2, scope: !252, file: !253, line: 28, type: !256)
!261 = !DILocalVariable(name: "mask", scope: !252, file: !253, line: 30, type: !20)
!262 = !DILocalVariable(name: "p", scope: !252, file: !253, line: 31, type: !24)
!263 = !DILocation(line: 28, column: 33, scope: !252)
!264 = !DILocation(line: 28, column: 61, scope: !252)
!265 = !DILocation(line: 30, column: 2, scope: !252)
!266 = !DILocation(line: 30, column: 16, scope: !252)
!267 = !DILocation(line: 30, column: 23, scope: !252)
!268 = !DILocation(line: 31, column: 2, scope: !252)
!269 = !DILocation(line: 31, column: 17, scope: !252)
!270 = !DILocation(line: 31, column: 39, scope: !252)
!271 = !DILocation(line: 31, column: 47, scope: !252)
!272 = !DILocation(line: 31, column: 45, scope: !252)
!273 = !DILocation(line: 33, column: 9, scope: !252)
!274 = !DILocation(line: 33, column: 3, scope: !252)
!275 = !DILocation(line: 33, column: 6, scope: !252)
!276 = !DILocation(line: 34, column: 1, scope: !252)
!277 = distinct !DISubprogram(name: "___set_bit", scope: !278, file: !278, line: 26, type: !254, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !279)
!278 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!279 = !{!280, !281}
!280 = !DILocalVariable(name: "nr", arg: 1, scope: !277, file: !278, line: 26, type: !20)
!281 = !DILocalVariable(name: "addr", arg: 2, scope: !277, file: !278, line: 26, type: !256)
!282 = !DILocation(line: 26, column: 26, scope: !277)
!283 = !DILocation(line: 26, column: 54, scope: !277)
!284 = !DILocation(line: 28, column: 19, scope: !277)
!285 = !DILocation(line: 28, column: 26, scope: !277)
!286 = !DILocation(line: 28, column: 24, scope: !277)
!287 = !DILocation(line: 28, column: 2, scope: !277)
!288 = !DILocation(line: 29, column: 17, scope: !277)
!289 = !DILocation(line: 29, column: 21, scope: !277)
!290 = !DILocation(line: 29, column: 2, scope: !277)
!291 = !DILocation(line: 30, column: 1, scope: !277)
!292 = distinct !DISubprogram(name: "const_test_bit", scope: !253, file: !253, line: 166, type: !293, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !297)
!293 = !DISubroutineType(types: !294)
!294 = !{!126, !20, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!297 = !{!298, !299, !300, !301, !302}
!298 = !DILocalVariable(name: "nr", arg: 1, scope: !292, file: !253, line: 166, type: !20)
!299 = !DILocalVariable(name: "addr", arg: 2, scope: !292, file: !253, line: 166, type: !295)
!300 = !DILocalVariable(name: "p", scope: !292, file: !253, line: 168, type: !22)
!301 = !DILocalVariable(name: "mask", scope: !292, file: !253, line: 169, type: !20)
!302 = !DILocalVariable(name: "val", scope: !292, file: !253, line: 170, type: !20)
!303 = !DILocation(line: 166, column: 30, scope: !292)
!304 = !DILocation(line: 166, column: 64, scope: !292)
!305 = !DILocation(line: 168, column: 2, scope: !292)
!306 = !DILocation(line: 168, column: 23, scope: !292)
!307 = !DILocation(line: 168, column: 50, scope: !292)
!308 = !DILocation(line: 168, column: 57, scope: !292)
!309 = !DILocation(line: 168, column: 55, scope: !292)
!310 = !DILocation(line: 169, column: 2, scope: !292)
!311 = !DILocation(line: 169, column: 16, scope: !292)
!312 = !DILocation(line: 169, column: 23, scope: !292)
!313 = !DILocation(line: 170, column: 2, scope: !292)
!314 = !DILocation(line: 170, column: 16, scope: !292)
!315 = !DILocation(line: 170, column: 23, scope: !292)
!316 = !DILocation(line: 170, column: 22, scope: !292)
!317 = !DILocation(line: 172, column: 12, scope: !292)
!318 = !DILocation(line: 172, column: 18, scope: !292)
!319 = !DILocation(line: 172, column: 16, scope: !292)
!320 = !DILocation(line: 172, column: 10, scope: !292)
!321 = !DILocation(line: 172, column: 9, scope: !292)
!322 = !DILocation(line: 173, column: 1, scope: !292)
!323 = !DILocation(line: 172, column: 2, scope: !292)
!324 = distinct !DISubprogram(name: "_test_bit", scope: !278, file: !278, line: 139, type: !293, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !325)
!325 = !{!326, !327}
!326 = !DILocalVariable(name: "nr", arg: 1, scope: !324, file: !278, line: 139, type: !20)
!327 = !DILocalVariable(name: "addr", arg: 2, scope: !324, file: !278, line: 139, type: !295)
!328 = !DILocation(line: 139, column: 25, scope: !324)
!329 = !DILocation(line: 139, column: 59, scope: !324)
!330 = !DILocation(line: 141, column: 25, scope: !324)
!331 = !DILocation(line: 141, column: 32, scope: !324)
!332 = !DILocation(line: 141, column: 30, scope: !324)
!333 = !DILocation(line: 141, column: 2, scope: !324)
!334 = !DILocation(line: 142, column: 23, scope: !324)
!335 = !DILocation(line: 142, column: 27, scope: !324)
!336 = !DILocation(line: 142, column: 9, scope: !324)
!337 = !DILocation(line: 142, column: 2, scope: !324)
!338 = distinct !DISubprogram(name: "generic___test_and_set_bit", scope: !253, file: !253, line: 73, type: !339, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!126, !20, !256}
!341 = !{!342, !343, !344, !345, !346}
!342 = !DILocalVariable(name: "nr", arg: 1, scope: !338, file: !253, line: 73, type: !20)
!343 = !DILocalVariable(name: "addr", arg: 2, scope: !338, file: !253, line: 73, type: !256)
!344 = !DILocalVariable(name: "mask", scope: !338, file: !253, line: 75, type: !20)
!345 = !DILocalVariable(name: "p", scope: !338, file: !253, line: 76, type: !24)
!346 = !DILocalVariable(name: "old", scope: !338, file: !253, line: 77, type: !20)
!347 = !DILocation(line: 73, column: 42, scope: !338)
!348 = !DILocation(line: 73, column: 70, scope: !338)
!349 = !DILocation(line: 75, column: 2, scope: !338)
!350 = !DILocation(line: 75, column: 16, scope: !338)
!351 = !DILocation(line: 75, column: 23, scope: !338)
!352 = !DILocation(line: 76, column: 2, scope: !338)
!353 = !DILocation(line: 76, column: 17, scope: !338)
!354 = !DILocation(line: 76, column: 39, scope: !338)
!355 = !DILocation(line: 76, column: 47, scope: !338)
!356 = !DILocation(line: 76, column: 45, scope: !338)
!357 = !DILocation(line: 77, column: 2, scope: !338)
!358 = !DILocation(line: 77, column: 16, scope: !338)
!359 = !DILocation(line: 77, column: 23, scope: !338)
!360 = !DILocation(line: 77, column: 22, scope: !338)
!361 = !DILocation(line: 79, column: 7, scope: !338)
!362 = !DILocation(line: 79, column: 13, scope: !338)
!363 = !DILocation(line: 79, column: 11, scope: !338)
!364 = !DILocation(line: 79, column: 3, scope: !338)
!365 = !DILocation(line: 79, column: 5, scope: !338)
!366 = !DILocation(line: 80, column: 10, scope: !338)
!367 = !DILocation(line: 80, column: 16, scope: !338)
!368 = !DILocation(line: 80, column: 14, scope: !338)
!369 = !DILocation(line: 80, column: 22, scope: !338)
!370 = !DILocation(line: 81, column: 1, scope: !338)
!371 = !DILocation(line: 80, column: 2, scope: !338)
!372 = distinct !DISubprogram(name: "___test_and_set_bit", scope: !278, file: !278, line: 97, type: !339, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !373)
!373 = !{!374, !375}
!374 = !DILocalVariable(name: "nr", arg: 1, scope: !372, file: !278, line: 97, type: !20)
!375 = !DILocalVariable(name: "addr", arg: 2, scope: !372, file: !278, line: 97, type: !256)
!376 = !DILocation(line: 97, column: 35, scope: !372)
!377 = !DILocation(line: 97, column: 63, scope: !372)
!378 = !DILocation(line: 99, column: 32, scope: !372)
!379 = !DILocation(line: 99, column: 36, scope: !372)
!380 = !DILocation(line: 99, column: 2, scope: !372)
!381 = !DILocation(line: 100, column: 33, scope: !372)
!382 = !DILocation(line: 100, column: 37, scope: !372)
!383 = !DILocation(line: 100, column: 9, scope: !372)
!384 = !DILocation(line: 100, column: 2, scope: !372)
!385 = distinct !DISubprogram(name: "set_bit", scope: !386, file: !386, line: 26, type: !387, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !389)
!386 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!387 = !DISubroutineType(types: !388)
!388 = !{null, !29, !256}
!389 = !{!390, !391}
!390 = !DILocalVariable(name: "nr", arg: 1, scope: !385, file: !386, line: 26, type: !29)
!391 = !DILocalVariable(name: "addr", arg: 2, scope: !385, file: !386, line: 26, type: !256)
!392 = !DILocation(line: 26, column: 42, scope: !385)
!393 = !DILocation(line: 26, column: 70, scope: !385)
!394 = !DILocation(line: 28, column: 26, scope: !385)
!395 = !DILocation(line: 28, column: 33, scope: !385)
!396 = !DILocation(line: 28, column: 31, scope: !385)
!397 = !DILocation(line: 28, column: 2, scope: !385)
!398 = !DILocation(line: 29, column: 15, scope: !385)
!399 = !DILocation(line: 29, column: 19, scope: !385)
!400 = !DILocation(line: 29, column: 2, scope: !385)
!401 = !DILocation(line: 30, column: 1, scope: !385)
!402 = distinct !DISubprogram(name: "clear_bit", scope: !386, file: !386, line: 39, type: !387, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !403)
!403 = !{!404, !405}
!404 = !DILocalVariable(name: "nr", arg: 1, scope: !402, file: !386, line: 39, type: !29)
!405 = !DILocalVariable(name: "addr", arg: 2, scope: !402, file: !386, line: 39, type: !256)
!406 = !DILocation(line: 39, column: 44, scope: !402)
!407 = !DILocation(line: 39, column: 72, scope: !402)
!408 = !DILocation(line: 41, column: 26, scope: !402)
!409 = !DILocation(line: 41, column: 33, scope: !402)
!410 = !DILocation(line: 41, column: 31, scope: !402)
!411 = !DILocation(line: 41, column: 2, scope: !402)
!412 = !DILocation(line: 42, column: 17, scope: !402)
!413 = !DILocation(line: 42, column: 21, scope: !402)
!414 = !DILocation(line: 42, column: 2, scope: !402)
!415 = !DILocation(line: 43, column: 1, scope: !402)
!416 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !417, file: !417, line: 80, type: !418, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !427)
!417 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420, !423}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !425, line: 72, baseType: !426)
!425 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !425, line: 16, baseType: !20)
!427 = !{!428, !429}
!428 = !DILocalVariable(name: "v", arg: 1, scope: !416, file: !417, line: 80, type: !420)
!429 = !DILocalVariable(name: "size", arg: 2, scope: !416, file: !417, line: 80, type: !423)
!430 = !DILocation(line: 80, column: 74, scope: !416)
!431 = !DILocation(line: 80, column: 84, scope: !416)
!432 = !DILocation(line: 82, column: 20, scope: !416)
!433 = !DILocation(line: 82, column: 23, scope: !416)
!434 = !DILocation(line: 82, column: 2, scope: !416)
!435 = !DILocation(line: 83, column: 2, scope: !416)
!436 = !DILocation(line: 84, column: 1, scope: !416)
!437 = distinct !DISubprogram(name: "arch_set_bit", scope: !438, file: !438, line: 52, type: !387, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !439)
!438 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!439 = !{!440, !441}
!440 = !DILocalVariable(name: "nr", arg: 1, scope: !437, file: !438, line: 52, type: !29)
!441 = !DILocalVariable(name: "addr", arg: 2, scope: !437, file: !438, line: 52, type: !256)
!442 = !DILocation(line: 52, column: 19, scope: !437)
!443 = !DILocation(line: 52, column: 47, scope: !437)
!444 = !DILocation(line: 54, column: 27, scope: !445)
!445 = distinct !DILexicalBlock(scope: !437, file: !438, line: 54, column: 6)
!446 = !DILocation(line: 54, column: 6, scope: !445)
!447 = !DILocation(line: 54, column: 6, scope: !437)
!448 = !DILocation(line: 56, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !438, line: 54, column: 32)
!450 = !DILocation(line: 57, column: 12, scope: !449)
!451 = !DILocation(line: 55, column: 3, scope: !449)
!452 = !{i64 2147789598, i64 2147789637, i64 2147789658, i64 2147789695, i64 2147789718, i64 2147789588}
!453 = !DILocation(line: 59, column: 2, scope: !449)
!454 = !DILocation(line: 61, column: 8, scope: !455)
!455 = distinct !DILexicalBlock(scope: !445, file: !438, line: 59, column: 9)
!456 = !DILocation(line: 61, column: 32, scope: !455)
!457 = !DILocation(line: 60, column: 3, scope: !455)
!458 = !{i64 2147789883, i64 2147789922, i64 2147789943, i64 2147789980, i64 2147790003, i64 2147789873}
!459 = !DILocation(line: 63, column: 1, scope: !437)
!460 = distinct !DISubprogram(name: "kasan_check_write", scope: !461, file: !461, line: 44, type: !462, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !464)
!461 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!462 = !DISubroutineType(types: !463)
!463 = !{!126, !420, !13}
!464 = !{!465, !466}
!465 = !DILocalVariable(name: "p", arg: 1, scope: !460, file: !461, line: 44, type: !420)
!466 = !DILocalVariable(name: "size", arg: 2, scope: !460, file: !461, line: 44, type: !13)
!467 = !DILocation(line: 44, column: 59, scope: !460)
!468 = !DILocation(line: 44, column: 75, scope: !460)
!469 = !DILocation(line: 46, column: 2, scope: !460)
!470 = distinct !DISubprogram(name: "kcsan_check_access", scope: !471, file: !471, line: 229, type: !472, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !474)
!471 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!472 = !DISubroutineType(types: !473)
!473 = !{null, !420, !423, !72}
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(name: "ptr", arg: 1, scope: !470, file: !471, line: 229, type: !420)
!476 = !DILocalVariable(name: "size", arg: 2, scope: !470, file: !471, line: 229, type: !423)
!477 = !DILocalVariable(name: "type", arg: 3, scope: !470, file: !471, line: 230, type: !72)
!478 = !DILocation(line: 229, column: 60, scope: !470)
!479 = !DILocation(line: 229, column: 72, scope: !470)
!480 = !DILocation(line: 230, column: 15, scope: !470)
!481 = !DILocation(line: 230, column: 23, scope: !470)
!482 = distinct !DISubprogram(name: "arch_clear_bit", scope: !438, file: !438, line: 72, type: !387, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !483)
!483 = !{!484, !485}
!484 = !DILocalVariable(name: "nr", arg: 1, scope: !482, file: !438, line: 72, type: !29)
!485 = !DILocalVariable(name: "addr", arg: 2, scope: !482, file: !438, line: 72, type: !256)
!486 = !DILocation(line: 72, column: 21, scope: !482)
!487 = !DILocation(line: 72, column: 49, scope: !482)
!488 = !DILocation(line: 74, column: 27, scope: !489)
!489 = distinct !DILexicalBlock(scope: !482, file: !438, line: 74, column: 6)
!490 = !DILocation(line: 74, column: 6, scope: !489)
!491 = !DILocation(line: 74, column: 6, scope: !482)
!492 = !DILocation(line: 76, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !438, line: 74, column: 32)
!494 = !DILocation(line: 77, column: 13, scope: !493)
!495 = !DILocation(line: 77, column: 12, scope: !493)
!496 = !DILocation(line: 75, column: 3, scope: !493)
!497 = !{i64 2147790886, i64 2147790925, i64 2147790946, i64 2147790983, i64 2147791006, i64 2147790876}
!498 = !DILocation(line: 78, column: 2, scope: !493)
!499 = !DILocation(line: 80, column: 8, scope: !500)
!500 = distinct !DILexicalBlock(scope: !489, file: !438, line: 78, column: 9)
!501 = !DILocation(line: 80, column: 32, scope: !500)
!502 = !DILocation(line: 79, column: 3, scope: !500)
!503 = !{i64 2147791171, i64 2147791210, i64 2147791231, i64 2147791268, i64 2147791291, i64 2147791161}
!504 = !DILocation(line: 82, column: 1, scope: !482)
!505 = distinct !DISubprogram(name: "instrument_write", scope: !417, file: !417, line: 38, type: !418, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !506)
!506 = !{!507, !508}
!507 = !DILocalVariable(name: "v", arg: 1, scope: !505, file: !417, line: 38, type: !420)
!508 = !DILocalVariable(name: "size", arg: 2, scope: !505, file: !417, line: 38, type: !423)
!509 = !DILocation(line: 38, column: 67, scope: !505)
!510 = !DILocation(line: 38, column: 77, scope: !505)
!511 = !DILocation(line: 40, column: 20, scope: !505)
!512 = !DILocation(line: 40, column: 23, scope: !505)
!513 = !DILocation(line: 40, column: 2, scope: !505)
!514 = !DILocation(line: 41, column: 2, scope: !505)
!515 = !DILocation(line: 42, column: 1, scope: !505)
!516 = distinct !DISubprogram(name: "arch___set_bit", scope: !438, file: !438, line: 66, type: !254, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !517)
!517 = !{!518, !519}
!518 = !DILocalVariable(name: "nr", arg: 1, scope: !516, file: !438, line: 66, type: !20)
!519 = !DILocalVariable(name: "addr", arg: 2, scope: !516, file: !438, line: 66, type: !256)
!520 = !DILocation(line: 66, column: 30, scope: !516)
!521 = !DILocation(line: 66, column: 58, scope: !516)
!522 = !DILocation(line: 68, column: 44, scope: !516)
!523 = !DILocation(line: 68, column: 56, scope: !516)
!524 = !DILocation(line: 68, column: 2, scope: !516)
!525 = !{i64 2147790524}
!526 = !DILocation(line: 69, column: 1, scope: !516)
!527 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !417, file: !417, line: 66, type: !418, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !528)
!528 = !{!529, !530}
!529 = !DILocalVariable(name: "v", arg: 1, scope: !527, file: !417, line: 66, type: !420)
!530 = !DILocalVariable(name: "size", arg: 2, scope: !527, file: !417, line: 66, type: !423)
!531 = !DILocation(line: 66, column: 73, scope: !527)
!532 = !DILocation(line: 66, column: 83, scope: !527)
!533 = !DILocation(line: 68, column: 19, scope: !527)
!534 = !DILocation(line: 68, column: 22, scope: !527)
!535 = !DILocation(line: 68, column: 2, scope: !527)
!536 = !DILocation(line: 69, column: 2, scope: !527)
!537 = !DILocation(line: 70, column: 1, scope: !527)
!538 = distinct !DISubprogram(name: "arch_test_bit", scope: !438, file: !438, line: 237, type: !293, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !539)
!539 = !{!540, !541}
!540 = !DILocalVariable(name: "nr", arg: 1, scope: !538, file: !438, line: 237, type: !20)
!541 = !DILocalVariable(name: "addr", arg: 2, scope: !538, file: !438, line: 237, type: !295)
!542 = !DILocation(line: 237, column: 29, scope: !538)
!543 = !DILocation(line: 237, column: 63, scope: !538)
!544 = !DILocation(line: 239, column: 30, scope: !538)
!545 = !DILocation(line: 239, column: 9, scope: !538)
!546 = !DILocation(line: 239, column: 54, scope: !538)
!547 = !DILocation(line: 239, column: 58, scope: !538)
!548 = !DILocation(line: 239, column: 36, scope: !538)
!549 = !DILocation(line: 240, column: 26, scope: !538)
!550 = !DILocation(line: 240, column: 30, scope: !538)
!551 = !DILocation(line: 240, column: 8, scope: !538)
!552 = !DILocation(line: 239, column: 2, scope: !538)
!553 = distinct !DISubprogram(name: "kasan_check_read", scope: !461, file: !461, line: 40, type: !462, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !554)
!554 = !{!555, !556}
!555 = !DILocalVariable(name: "p", arg: 1, scope: !553, file: !461, line: 40, type: !420)
!556 = !DILocalVariable(name: "size", arg: 2, scope: !553, file: !461, line: 40, type: !13)
!557 = !DILocation(line: 40, column: 58, scope: !553)
!558 = !DILocation(line: 40, column: 74, scope: !553)
!559 = !DILocation(line: 42, column: 2, scope: !553)
!560 = distinct !DISubprogram(name: "constant_test_bit", scope: !438, file: !438, line: 204, type: !561, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{!126, !29, !295}
!563 = !{!564, !565}
!564 = !DILocalVariable(name: "nr", arg: 1, scope: !560, file: !438, line: 204, type: !29)
!565 = !DILocalVariable(name: "addr", arg: 2, scope: !560, file: !438, line: 204, type: !295)
!566 = !DILocation(line: 204, column: 52, scope: !560)
!567 = !DILocation(line: 204, column: 86, scope: !560)
!568 = !DILocation(line: 206, column: 19, scope: !560)
!569 = !DILocation(line: 206, column: 22, scope: !560)
!570 = !DILocation(line: 206, column: 15, scope: !560)
!571 = !DILocation(line: 207, column: 4, scope: !560)
!572 = !DILocation(line: 207, column: 9, scope: !560)
!573 = !DILocation(line: 207, column: 12, scope: !560)
!574 = !DILocation(line: 206, column: 44, scope: !560)
!575 = !DILocation(line: 207, column: 37, scope: !560)
!576 = !DILocation(line: 206, column: 2, scope: !560)
!577 = distinct !DISubprogram(name: "variable_test_bit", scope: !438, file: !438, line: 224, type: !561, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !578)
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(name: "nr", arg: 1, scope: !577, file: !438, line: 224, type: !29)
!580 = !DILocalVariable(name: "addr", arg: 2, scope: !577, file: !438, line: 224, type: !295)
!581 = !DILocalVariable(name: "oldbit", scope: !577, file: !438, line: 226, type: !126)
!582 = !DILocation(line: 224, column: 52, scope: !577)
!583 = !DILocation(line: 224, column: 86, scope: !577)
!584 = !DILocation(line: 226, column: 2, scope: !577)
!585 = !DILocation(line: 226, column: 7, scope: !577)
!586 = !DILocation(line: 231, column: 33, scope: !577)
!587 = !DILocation(line: 231, column: 46, scope: !577)
!588 = !DILocation(line: 228, column: 2, scope: !577)
!589 = !{i64 2147803210, i64 2147803284}
!590 = !DILocation(line: 233, column: 9, scope: !577)
!591 = !DILocation(line: 234, column: 1, scope: !577)
!592 = !DILocation(line: 233, column: 2, scope: !577)
!593 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !278, file: !278, line: 64, type: !387, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !594)
!594 = !{!595, !596}
!595 = !DILocalVariable(name: "nr", arg: 1, scope: !593, file: !278, line: 64, type: !29)
!596 = !DILocalVariable(name: "addr", arg: 2, scope: !593, file: !278, line: 64, type: !256)
!597 = !DILocation(line: 64, column: 64, scope: !593)
!598 = !DILocation(line: 64, column: 92, scope: !593)
!599 = !DILocation(line: 84, column: 25, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !278, line: 83, column: 9)
!601 = distinct !DILexicalBlock(scope: !593, file: !278, line: 66, column: 6)
!602 = !DILocation(line: 84, column: 32, scope: !600)
!603 = !DILocation(line: 84, column: 30, scope: !600)
!604 = !DILocation(line: 84, column: 3, scope: !600)
!605 = !DILocation(line: 86, column: 1, scope: !593)
!606 = distinct !DISubprogram(name: "arch___test_and_set_bit", scope: !438, file: !438, line: 148, type: !339, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !607)
!607 = !{!608, !609, !610}
!608 = !DILocalVariable(name: "nr", arg: 1, scope: !606, file: !438, line: 148, type: !20)
!609 = !DILocalVariable(name: "addr", arg: 2, scope: !606, file: !438, line: 148, type: !256)
!610 = !DILocalVariable(name: "oldbit", scope: !606, file: !438, line: 150, type: !126)
!611 = !DILocation(line: 148, column: 39, scope: !606)
!612 = !DILocation(line: 148, column: 67, scope: !606)
!613 = !DILocation(line: 150, column: 2, scope: !606)
!614 = !DILocation(line: 150, column: 7, scope: !606)
!615 = !DILocation(line: 155, column: 8, scope: !606)
!616 = !DILocation(line: 155, column: 20, scope: !606)
!617 = !DILocation(line: 152, column: 2, scope: !606)
!618 = !{i64 2147796852, i64 2147796929}
!619 = !DILocation(line: 156, column: 9, scope: !606)
!620 = !DILocation(line: 157, column: 1, scope: !606)
!621 = !DILocation(line: 156, column: 2, scope: !606)
!622 = distinct !DISubprogram(name: "instrument_read_write", scope: !417, file: !417, line: 52, type: !418, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !623)
!623 = !{!624, !625}
!624 = !DILocalVariable(name: "v", arg: 1, scope: !622, file: !417, line: 52, type: !420)
!625 = !DILocalVariable(name: "size", arg: 2, scope: !622, file: !417, line: 52, type: !423)
!626 = !DILocation(line: 52, column: 72, scope: !622)
!627 = !DILocation(line: 52, column: 82, scope: !622)
!628 = !DILocation(line: 54, column: 20, scope: !622)
!629 = !DILocation(line: 54, column: 23, scope: !622)
!630 = !DILocation(line: 54, column: 2, scope: !622)
!631 = !DILocation(line: 55, column: 2, scope: !622)
!632 = !DILocation(line: 56, column: 1, scope: !622)
