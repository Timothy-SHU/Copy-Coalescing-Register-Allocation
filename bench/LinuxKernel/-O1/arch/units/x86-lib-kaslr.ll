; ModuleID = 'arch/x86/lib/kaslr.c'
source_filename = "arch/x86/lib/kaslr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c" KASLR using\00", align 1, !dbg !7
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c" RDRAND\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c" RDTSC\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [7 x i8] c" i8254\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1, !dbg !24
@_text = external dso_local global [0 x i8], align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @kaslr_get_random_long(ptr noundef %purpose) #0 align 16 !dbg !51 {
entry:
  %purpose.addr = alloca ptr, align 8
  %mix_const = alloca i64, align 8
  %raw = alloca i64, align 8
  %random = alloca i64, align 8
  %use_i8254 = alloca i8, align 1
  store ptr %purpose, ptr %purpose.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %purpose.addr, metadata !57, metadata !DIExpression()), !dbg !66
  call void @llvm.lifetime.start.p0(i64 8, ptr %mix_const) #8, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %mix_const, metadata !58, metadata !DIExpression()), !dbg !68
  store i64 6728387515348454867, ptr %mix_const, align 8, !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #8, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %raw, metadata !60, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 8, ptr %random) #8, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %random, metadata !61, metadata !DIExpression()), !dbg !71
  %call = call i64 @kaslr_offset() #9, !dbg !72
  store i64 %call, ptr %random, align 8, !dbg !71
  call void @llvm.lifetime.start.p0(i64 1, ptr %use_i8254) #8, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %use_i8254, metadata !62, metadata !DIExpression()), !dbg !74
  store i8 1, ptr %use_i8254, align 1, !dbg !74
  %0 = load ptr, ptr %purpose.addr, align 8, !dbg !75
  %tobool = icmp ne ptr %0, null, !dbg !75
  br i1 %tobool, label %if.then, label %if.end, !dbg !77

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %purpose.addr, align 8, !dbg !78
  call void (ptr, ...) @early_printk(ptr noundef @.str, ptr noundef %1) #9, !dbg !78
  call void (ptr, ...) @early_printk(ptr noundef @.str, ptr noundef @.str.1) #9, !dbg !80
  br label %if.end, !dbg !81

if.end:                                           ; preds = %if.then, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !82

cond.true:                                        ; preds = %if.end
  br i1 true, label %if.then2, label %if.end9, !dbg !83

cond.false:                                       ; preds = %if.end
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 158, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #9, !dbg !83
  br i1 %call1, label %if.then2, label %if.end9, !dbg !82

if.then2:                                         ; preds = %cond.false, %cond.true
  %2 = load ptr, ptr %purpose.addr, align 8, !dbg !85
  %tobool3 = icmp ne ptr %2, null, !dbg !85
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !88

if.then4:                                         ; preds = %if.then2
  call void (ptr, ...) @early_printk(ptr noundef @.str, ptr noundef @.str.2) #9, !dbg !89
  br label %if.end5, !dbg !89

if.end5:                                          ; preds = %if.then4, %if.then2
  %call6 = call zeroext i1 @rdrand_long(ptr noundef %raw) #9, !dbg !90
  br i1 %call6, label %if.then7, label %if.end8, !dbg !92

if.then7:                                         ; preds = %if.end5
  %3 = load i64, ptr %raw, align 8, !dbg !93
  %4 = load i64, ptr %random, align 8, !dbg !95
  %xor = xor i64 %4, %3, !dbg !95
  store i64 %xor, ptr %random, align 8, !dbg !95
  store i8 0, ptr %use_i8254, align 1, !dbg !96
  br label %if.end8, !dbg !97

if.end8:                                          ; preds = %if.then7, %if.end5
  br label %if.end9, !dbg !98

if.end9:                                          ; preds = %if.end8, %cond.false, %cond.true
  br i1 false, label %cond.true10, label %cond.false11, !dbg !99

cond.true10:                                      ; preds = %if.end9
  br i1 true, label %if.then13, label %if.end19, !dbg !100

cond.false11:                                     ; preds = %if.end9
  %call12 = call zeroext i1 @arch_test_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #9, !dbg !100
  br i1 %call12, label %if.then13, label %if.end19, !dbg !99

if.then13:                                        ; preds = %cond.false11, %cond.true10
  %5 = load ptr, ptr %purpose.addr, align 8, !dbg !102
  %tobool14 = icmp ne ptr %5, null, !dbg !102
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !105

if.then15:                                        ; preds = %if.then13
  call void (ptr, ...) @early_printk(ptr noundef @.str, ptr noundef @.str.3) #9, !dbg !106
  br label %if.end16, !dbg !106

if.end16:                                         ; preds = %if.then15, %if.then13
  %call17 = call i64 @rdtsc() #9, !dbg !107
  store i64 %call17, ptr %raw, align 8, !dbg !108
  %6 = load i64, ptr %raw, align 8, !dbg !109
  %7 = load i64, ptr %random, align 8, !dbg !110
  %xor18 = xor i64 %7, %6, !dbg !110
  store i64 %xor18, ptr %random, align 8, !dbg !110
  store i8 0, ptr %use_i8254, align 1, !dbg !111
  br label %if.end19, !dbg !112

if.end19:                                         ; preds = %if.end16, %cond.false11, %cond.true10
  %8 = load i8, ptr %use_i8254, align 1, !dbg !113, !range !115, !noundef !116
  %tobool20 = trunc i8 %8 to i1, !dbg !113
  br i1 %tobool20, label %if.then21, label %if.end27, !dbg !117

if.then21:                                        ; preds = %if.end19
  %9 = load ptr, ptr %purpose.addr, align 8, !dbg !118
  %tobool22 = icmp ne ptr %9, null, !dbg !118
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !121

if.then23:                                        ; preds = %if.then21
  call void (ptr, ...) @early_printk(ptr noundef @.str, ptr noundef @.str.4) #9, !dbg !122
  br label %if.end24, !dbg !122

if.end24:                                         ; preds = %if.then23, %if.then21
  %call25 = call zeroext i16 @i8254() #9, !dbg !123
  %conv = zext i16 %call25 to i64, !dbg !123
  %10 = load i64, ptr %random, align 8, !dbg !124
  %xor26 = xor i64 %10, %conv, !dbg !124
  store i64 %xor26, ptr %random, align 8, !dbg !124
  br label %if.end27, !dbg !125

if.end27:                                         ; preds = %if.end24, %if.end19
  %11 = load i64, ptr %random, align 8, !dbg !126
  %12 = call { i64, i64 } asm " mulq $3", "={ax},={dx},{ax},rm,~{dirflag},~{fpsr},~{flags}"(i64 %11, i64 6728387515348454867) #10, !dbg !127, !srcloc !128
  %asmresult = extractvalue { i64, i64 } %12, 0, !dbg !127
  %asmresult28 = extractvalue { i64, i64 } %12, 1, !dbg !127
  store i64 %asmresult, ptr %random, align 8, !dbg !127
  store i64 %asmresult28, ptr %raw, align 8, !dbg !127
  %13 = load i64, ptr %raw, align 8, !dbg !129
  %14 = load i64, ptr %random, align 8, !dbg !130
  %add = add i64 %14, %13, !dbg !130
  store i64 %add, ptr %random, align 8, !dbg !130
  %15 = load ptr, ptr %purpose.addr, align 8, !dbg !131
  %tobool29 = icmp ne ptr %15, null, !dbg !131
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !133

if.then30:                                        ; preds = %if.end27
  call void (ptr, ...) @early_printk(ptr noundef @.str, ptr noundef @.str.5) #9, !dbg !134
  br label %if.end31, !dbg !134

if.end31:                                         ; preds = %if.then30, %if.end27
  %16 = load i64, ptr %random, align 8, !dbg !135
  call void @llvm.lifetime.end.p0(i64 1, ptr %use_i8254) #8, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %random) #8, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #8, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %mix_const) #8, !dbg !136
  ret i64 %16, !dbg !137
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kaslr_offset() #3 align 16 !dbg !138 {
entry:
  ret i64 sub (i64 ptrtoint (ptr @_text to i64), i64 -2130706432), !dbg !142
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !143 dso_local void @early_printk(ptr noundef, ...) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !147 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !155, metadata !DIExpression()), !dbg !157
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !156, metadata !DIExpression()), !dbg !158
  %0 = load i64, ptr %nr.addr, align 8, !dbg !159
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !160
  br i1 %1, label %cond.true, label %cond.false, !dbg !160

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !161
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !162
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !163
  %conv = zext i1 %call to i32, !dbg !163
  br label %cond.end, !dbg !160

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !164
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !165
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #9, !dbg !166
  %conv2 = zext i1 %call1 to i32, !dbg !166
  br label %cond.end, !dbg !160

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !160
  %tobool = icmp ne i32 %cond, 0, !dbg !160
  ret i1 %tobool, !dbg !167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rdrand_long(ptr noundef %v) #3 align 16 !dbg !168 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca ptr, align 8
  %ok = alloca i8, align 1
  %retry = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !173, metadata !DIExpression()), !dbg !176
  call void @llvm.lifetime.start.p0(i64 1, ptr %ok) #8, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !174, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #8, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !175, metadata !DIExpression()), !dbg !180
  store i32 10, ptr %retry, align 4, !dbg !180
  br label %do.body, !dbg !181

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %v.addr, align 8, !dbg !182
  %1 = call { i8, i64 } asm sideeffect "rdrand $1\0A\09/* output condition code c*/\0A", "={@ccc},=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !184, !srcloc !185
  %asmresult = extractvalue { i8, i64 } %1, 0, !dbg !184
  %asmresult1 = extractvalue { i8, i64 } %1, 1, !dbg !184
  %2 = icmp ult i8 %asmresult, 2, !dbg !184
  call void @llvm.assume(i1 %2), !dbg !184
  store i8 %asmresult, ptr %ok, align 1, !dbg !184
  store i64 %asmresult1, ptr %0, align 8, !dbg !184
  %3 = load i8, ptr %ok, align 1, !dbg !186, !range !115, !noundef !116
  %tobool = trunc i8 %3 to i1, !dbg !186
  br i1 %tobool, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %do.body
  store i1 true, ptr %retval, align 1, !dbg !189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !189

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !190

do.cond:                                          ; preds = %if.end
  %4 = load i32, ptr %retry, align 4, !dbg !191
  %dec = add i32 %4, -1, !dbg !191
  store i32 %dec, ptr %retry, align 4, !dbg !191
  %tobool2 = icmp ne i32 %dec, 0, !dbg !190
  br i1 %tobool2, label %do.body, label %do.end, !dbg !190, !llvm.loop !192

do.end:                                           ; preds = %do.cond
  store i1 false, ptr %retval, align 1, !dbg !196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !196

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #8, !dbg !197
  call void @llvm.lifetime.end.p0(i64 1, ptr %ok) #8, !dbg !197
  %5 = load i1, ptr %retval, align 1, !dbg !197
  ret i1 %5, !dbg !197
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc() #5 align 16 !dbg !198 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #8, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %low, metadata !204, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #8, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %high, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !207, !srcloc !208
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !207
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !207
  store i64 %asmresult, ptr %low, align 8, !dbg !207
  store i64 %asmresult1, ptr %high, align 8, !dbg !207
  %1 = load i64, ptr %low, align 8, !dbg !209
  %2 = load i64, ptr %high, align 8, !dbg !209
  %shl = shl i64 %2, 32, !dbg !209
  %or = or i64 %1, %shl, !dbg !209
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #8, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #8, !dbg !210
  ret i64 %or, !dbg !211
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @i8254() #3 align 16 !dbg !212 {
entry:
  %status = alloca i16, align 2
  %timer = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %status) #8, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %status, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 2, ptr %timer) #8, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %timer, metadata !222, metadata !DIExpression()), !dbg !225
  br label %do.body, !dbg !226

do.body:                                          ; preds = %do.cond, %entry
  call void @__outb(i8 noundef zeroext -62, i16 noundef zeroext 67) #9, !dbg !227
  %call = call zeroext i8 @__inb(i16 noundef zeroext 64) #9, !dbg !229
  %conv = zext i8 %call to i16, !dbg !229
  store i16 %conv, ptr %status, align 2, !dbg !230
  %call1 = call zeroext i8 @__inb(i16 noundef zeroext 64) #9, !dbg !231
  %conv2 = zext i8 %call1 to i16, !dbg !231
  store i16 %conv2, ptr %timer, align 2, !dbg !232
  %call3 = call zeroext i8 @__inb(i16 noundef zeroext 64) #9, !dbg !233
  %conv4 = zext i8 %call3 to i32, !dbg !233
  %shl = shl i32 %conv4, 8, !dbg !234
  %0 = load i16, ptr %timer, align 2, !dbg !235
  %conv5 = zext i16 %0 to i32, !dbg !235
  %or = or i32 %conv5, %shl, !dbg !235
  %conv6 = trunc i32 %or to i16, !dbg !235
  store i16 %conv6, ptr %timer, align 2, !dbg !235
  br label %do.cond, !dbg !236

do.cond:                                          ; preds = %do.body
  %1 = load i16, ptr %status, align 2, !dbg !237
  %conv7 = zext i16 %1 to i32, !dbg !237
  %and = and i32 %conv7, 64, !dbg !238
  %tobool = icmp ne i32 %and, 0, !dbg !236
  br i1 %tobool, label %do.body, label %do.end, !dbg !236, !llvm.loop !239

do.end:                                           ; preds = %do.cond
  %2 = load i16, ptr %timer, align 2, !dbg !241
  call void @llvm.lifetime.end.p0(i64 2, ptr %timer) #8, !dbg !242
  call void @llvm.lifetime.end.p0(i64 2, ptr %status) #8, !dbg !242
  ret i16 %2, !dbg !243
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !244 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !249, metadata !DIExpression()), !dbg !251
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !250, metadata !DIExpression()), !dbg !252
  %0 = load i64, ptr %nr.addr, align 8, !dbg !253
  %and = and i64 %0, 63, !dbg !254
  %shl = shl i64 1, %and, !dbg !255
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !256
  %2 = load i64, ptr %nr.addr, align 8, !dbg !257
  %shr = ashr i64 %2, 6, !dbg !258
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !256
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !256
  %and1 = and i64 %shl, %3, !dbg !259
  %cmp = icmp ne i64 %and1, 0, !dbg !260
  ret i1 %cmp, !dbg !261
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !262 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !264, metadata !DIExpression()), !dbg !267
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !265, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #8, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !266, metadata !DIExpression()), !dbg !270
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !271
  %1 = load i64, ptr %nr.addr, align 8, !dbg !272
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #8, !dbg !273, !srcloc !274
  %3 = icmp ult i8 %2, 2, !dbg !273
  call void @llvm.assume(i1 %3), !dbg !273
  store i8 %2, ptr %oldbit, align 1, !dbg !273
  %4 = load i8, ptr %oldbit, align 1, !dbg !275, !range !115, !noundef !116
  %tobool = trunc i8 %4 to i1, !dbg !275
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #8, !dbg !276
  ret i1 %tobool, !dbg !277
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #5 align 16 !dbg !278 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !286, metadata !DIExpression()), !dbg !288
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load i8, ptr %value.addr, align 1, !dbg !288
  %1 = load i16, ptr %port.addr, align 2, !dbg !288
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #8, !dbg !288, !srcloc !289
  ret void, !dbg !288
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #5 align 16 !dbg !290 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !294, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #8, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %value, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = load i16, ptr %port.addr, align 2, !dbg !296
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #8, !dbg !296, !srcloc !297
  store i8 %1, ptr %value, align 1, !dbg !296
  %2 = load i8, ptr %value, align 1, !dbg !296
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #8, !dbg !296
  ret i8 %2, !dbg !296
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(read) }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/lib/kaslr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d9d19119714a911f11a1e2aec109c7bf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 8)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 7)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 5)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.kaslr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/kaslr\22 -D KBUILD_BASENAME=\22kaslr\22 -D KBUILD_MODNAME=\22kaslr\22 -D __KBUILD_MODNAME=kmod_kaslr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/kaslr.ll arch/x86/lib/kaslr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !37, globals: !41, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 10, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "false", value: 0)
!36 = !DIEnumerator(name: "true", value: 1)
!37 = !{!38, !39, !40}
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{!0, !7, !12, !17, !22, !24}
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 8, !"cf-protection-branch", i32 1}
!46 = !{i32 4, !"function_return_thunk_extern", i32 1}
!47 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!48 = !{i32 1, !"Code Model", i32 2}
!49 = !{i32 1, !"override-stack-alignment", i32 8}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = distinct !DISubprogram(name: "kaslr_get_random_long", scope: !2, file: !2, line: 49, type: !52, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !56)
!52 = !DISubroutineType(types: !53)
!53 = !{!40, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !{!57, !58, !60, !61, !62}
!57 = !DILocalVariable(name: "purpose", arg: 1, scope: !51, file: !2, line: 49, type: !54)
!58 = !DILocalVariable(name: "mix_const", scope: !51, file: !2, line: 52, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!60 = !DILocalVariable(name: "raw", scope: !51, file: !2, line: 56, type: !40)
!61 = !DILocalVariable(name: "random", scope: !51, file: !2, line: 56, type: !40)
!62 = !DILocalVariable(name: "use_i8254", scope: !51, file: !2, line: 57, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 35, baseType: !65)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!65 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!66 = !DILocation(line: 49, column: 49, scope: !51)
!67 = !DILocation(line: 52, column: 2, scope: !51)
!68 = !DILocation(line: 52, column: 22, scope: !51)
!69 = !DILocation(line: 56, column: 2, scope: !51)
!70 = !DILocation(line: 56, column: 16, scope: !51)
!71 = !DILocation(line: 56, column: 21, scope: !51)
!72 = !DILocation(line: 56, column: 30, scope: !51)
!73 = !DILocation(line: 57, column: 2, scope: !51)
!74 = !DILocation(line: 57, column: 7, scope: !51)
!75 = !DILocation(line: 59, column: 6, scope: !76)
!76 = distinct !DILexicalBlock(scope: !51, file: !2, line: 59, column: 6)
!77 = !DILocation(line: 59, column: 6, scope: !51)
!78 = !DILocation(line: 60, column: 3, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !2, line: 59, column: 15)
!80 = !DILocation(line: 61, column: 3, scope: !79)
!81 = !DILocation(line: 62, column: 2, scope: !79)
!82 = !DILocation(line: 64, column: 6, scope: !51)
!83 = !DILocation(line: 64, column: 6, scope: !84)
!84 = distinct !DILexicalBlock(scope: !51, file: !2, line: 64, column: 6)
!85 = !DILocation(line: 65, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 65, column: 7)
!87 = distinct !DILexicalBlock(scope: !84, file: !2, line: 64, column: 39)
!88 = !DILocation(line: 65, column: 7, scope: !87)
!89 = !DILocation(line: 66, column: 4, scope: !86)
!90 = !DILocation(line: 67, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !2, line: 67, column: 7)
!92 = !DILocation(line: 67, column: 7, scope: !87)
!93 = !DILocation(line: 68, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !2, line: 67, column: 26)
!95 = !DILocation(line: 68, column: 11, scope: !94)
!96 = !DILocation(line: 69, column: 14, scope: !94)
!97 = !DILocation(line: 70, column: 3, scope: !94)
!98 = !DILocation(line: 71, column: 2, scope: !87)
!99 = !DILocation(line: 73, column: 6, scope: !51)
!100 = !DILocation(line: 73, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !51, file: !2, line: 73, column: 6)
!102 = !DILocation(line: 74, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 74, column: 7)
!104 = distinct !DILexicalBlock(scope: !101, file: !2, line: 73, column: 36)
!105 = !DILocation(line: 74, column: 7, scope: !104)
!106 = !DILocation(line: 75, column: 4, scope: !103)
!107 = !DILocation(line: 76, column: 9, scope: !104)
!108 = !DILocation(line: 76, column: 7, scope: !104)
!109 = !DILocation(line: 78, column: 13, scope: !104)
!110 = !DILocation(line: 78, column: 10, scope: !104)
!111 = !DILocation(line: 79, column: 13, scope: !104)
!112 = !DILocation(line: 80, column: 2, scope: !104)
!113 = !DILocation(line: 82, column: 6, scope: !114)
!114 = distinct !DILexicalBlock(scope: !51, file: !2, line: 82, column: 6)
!115 = !{i8 0, i8 2}
!116 = !{}
!117 = !DILocation(line: 82, column: 6, scope: !51)
!118 = !DILocation(line: 83, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 83, column: 7)
!120 = distinct !DILexicalBlock(scope: !114, file: !2, line: 82, column: 17)
!121 = !DILocation(line: 83, column: 7, scope: !120)
!122 = !DILocation(line: 84, column: 4, scope: !119)
!123 = !DILocation(line: 85, column: 13, scope: !120)
!124 = !DILocation(line: 85, column: 10, scope: !120)
!125 = !DILocation(line: 86, column: 2, scope: !120)
!126 = !DILocation(line: 91, column: 13, scope: !51)
!127 = !DILocation(line: 89, column: 2, scope: !51)
!128 = !{i64 2149363708}
!129 = !DILocation(line: 92, column: 12, scope: !51)
!130 = !DILocation(line: 92, column: 9, scope: !51)
!131 = !DILocation(line: 94, column: 6, scope: !132)
!132 = distinct !DILexicalBlock(scope: !51, file: !2, line: 94, column: 6)
!133 = !DILocation(line: 94, column: 6, scope: !51)
!134 = !DILocation(line: 95, column: 3, scope: !132)
!135 = !DILocation(line: 97, column: 9, scope: !51)
!136 = !DILocation(line: 98, column: 1, scope: !51)
!137 = !DILocation(line: 97, column: 2, scope: !51)
!138 = distinct !DISubprogram(name: "kaslr_offset", scope: !139, file: !139, line: 95, type: !140, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29)
!139 = !DIFile(filename: "./arch/x86/include/asm/setup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70163219e3d956dec6d0e7b32cf67c8b")
!140 = !DISubroutineType(types: !141)
!141 = !{!40}
!142 = !DILocation(line: 97, column: 2, scope: !138)
!143 = !DISubprogram(name: "early_printk", scope: !144, file: !144, line: 135, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!145 = !DISubroutineType(types: !146)
!146 = !{null, !54, null}
!147 = distinct !DISubprogram(name: "arch_test_bit", scope: !148, file: !148, line: 237, type: !149, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !154)
!148 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!149 = !DISubroutineType(types: !150)
!150 = !{!63, !40, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!154 = !{!155, !156}
!155 = !DILocalVariable(name: "nr", arg: 1, scope: !147, file: !148, line: 237, type: !40)
!156 = !DILocalVariable(name: "addr", arg: 2, scope: !147, file: !148, line: 237, type: !151)
!157 = !DILocation(line: 237, column: 29, scope: !147)
!158 = !DILocation(line: 237, column: 63, scope: !147)
!159 = !DILocation(line: 239, column: 30, scope: !147)
!160 = !DILocation(line: 239, column: 9, scope: !147)
!161 = !DILocation(line: 239, column: 54, scope: !147)
!162 = !DILocation(line: 239, column: 58, scope: !147)
!163 = !DILocation(line: 239, column: 36, scope: !147)
!164 = !DILocation(line: 240, column: 26, scope: !147)
!165 = !DILocation(line: 240, column: 30, scope: !147)
!166 = !DILocation(line: 240, column: 8, scope: !147)
!167 = !DILocation(line: 239, column: 2, scope: !147)
!168 = distinct !DISubprogram(name: "rdrand_long", scope: !169, file: !169, line: 20, type: !170, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !172)
!169 = !DIFile(filename: "./arch/x86/include/asm/archrandom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8100e45a646ee0ab0040a389cd0f8b61")
!170 = !DISubroutineType(types: !171)
!171 = !{!63, !39}
!172 = !{!173, !174, !175}
!173 = !DILocalVariable(name: "v", arg: 1, scope: !168, file: !169, line: 20, type: !39)
!174 = !DILocalVariable(name: "ok", scope: !168, file: !169, line: 22, type: !63)
!175 = !DILocalVariable(name: "retry", scope: !168, file: !169, line: 23, type: !33)
!176 = !DILocation(line: 20, column: 60, scope: !168)
!177 = !DILocation(line: 22, column: 2, scope: !168)
!178 = !DILocation(line: 22, column: 7, scope: !168)
!179 = !DILocation(line: 23, column: 2, scope: !168)
!180 = !DILocation(line: 23, column: 15, scope: !168)
!181 = !DILocation(line: 24, column: 2, scope: !168)
!182 = !DILocation(line: 27, column: 40, scope: !183)
!183 = distinct !DILexicalBlock(scope: !168, file: !169, line: 24, column: 5)
!184 = !DILocation(line: 25, column: 3, scope: !183)
!185 = !{i64 1391192, i64 2149266048}
!186 = !DILocation(line: 28, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !169, line: 28, column: 7)
!188 = !DILocation(line: 28, column: 7, scope: !183)
!189 = !DILocation(line: 29, column: 4, scope: !187)
!190 = !DILocation(line: 30, column: 2, scope: !183)
!191 = !DILocation(line: 30, column: 11, scope: !168)
!192 = distinct !{!192, !181, !193, !194, !195}
!193 = !DILocation(line: 30, column: 18, scope: !168)
!194 = !{!"llvm.loop.mustprogress"}
!195 = !{!"llvm.loop.unroll.disable"}
!196 = !DILocation(line: 31, column: 2, scope: !168)
!197 = !DILocation(line: 32, column: 1, scope: !168)
!198 = distinct !DISubprogram(name: "rdtsc", scope: !199, file: !199, line: 180, type: !200, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !203)
!199 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!200 = !DISubroutineType(types: !201)
!201 = !{!202}
!202 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "low", scope: !198, file: !199, line: 182, type: !40)
!205 = !DILocalVariable(name: "high", scope: !198, file: !199, line: 182, type: !40)
!206 = !DILocation(line: 182, column: 2, scope: !198)
!207 = !DILocation(line: 184, column: 2, scope: !198)
!208 = !{i64 128468}
!209 = !DILocation(line: 186, column: 9, scope: !198)
!210 = !DILocation(line: 187, column: 1, scope: !198)
!211 = !DILocation(line: 186, column: 2, scope: !198)
!212 = distinct !DISubprogram(name: "i8254", scope: !2, file: !2, line: 34, type: !213, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !220)
!213 = !DISubroutineType(types: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !216, line: 19, baseType: !217)
!216 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !218, line: 24, baseType: !219)
!218 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!219 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "status", scope: !212, file: !2, line: 36, type: !215)
!222 = !DILocalVariable(name: "timer", scope: !212, file: !2, line: 36, type: !215)
!223 = !DILocation(line: 36, column: 2, scope: !212)
!224 = !DILocation(line: 36, column: 6, scope: !212)
!225 = !DILocation(line: 36, column: 14, scope: !212)
!226 = !DILocation(line: 38, column: 2, scope: !212)
!227 = !DILocation(line: 39, column: 3, scope: !228)
!228 = distinct !DILexicalBlock(scope: !212, file: !2, line: 38, column: 5)
!229 = !DILocation(line: 41, column: 12, scope: !228)
!230 = !DILocation(line: 41, column: 10, scope: !228)
!231 = !DILocation(line: 42, column: 12, scope: !228)
!232 = !DILocation(line: 42, column: 10, scope: !228)
!233 = !DILocation(line: 43, column: 12, scope: !228)
!234 = !DILocation(line: 43, column: 37, scope: !228)
!235 = !DILocation(line: 43, column: 9, scope: !228)
!236 = !DILocation(line: 44, column: 2, scope: !228)
!237 = !DILocation(line: 44, column: 11, scope: !212)
!238 = !DILocation(line: 44, column: 18, scope: !212)
!239 = distinct !{!239, !226, !240, !194, !195}
!240 = !DILocation(line: 44, column: 41, scope: !212)
!241 = !DILocation(line: 46, column: 9, scope: !212)
!242 = !DILocation(line: 47, column: 1, scope: !212)
!243 = !DILocation(line: 46, column: 2, scope: !212)
!244 = distinct !DISubprogram(name: "constant_test_bit", scope: !148, file: !148, line: 204, type: !245, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !248)
!245 = !DISubroutineType(types: !246)
!246 = !{!63, !247, !151}
!247 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!248 = !{!249, !250}
!249 = !DILocalVariable(name: "nr", arg: 1, scope: !244, file: !148, line: 204, type: !247)
!250 = !DILocalVariable(name: "addr", arg: 2, scope: !244, file: !148, line: 204, type: !151)
!251 = !DILocation(line: 204, column: 52, scope: !244)
!252 = !DILocation(line: 204, column: 86, scope: !244)
!253 = !DILocation(line: 206, column: 19, scope: !244)
!254 = !DILocation(line: 206, column: 22, scope: !244)
!255 = !DILocation(line: 206, column: 15, scope: !244)
!256 = !DILocation(line: 207, column: 4, scope: !244)
!257 = !DILocation(line: 207, column: 9, scope: !244)
!258 = !DILocation(line: 207, column: 12, scope: !244)
!259 = !DILocation(line: 206, column: 44, scope: !244)
!260 = !DILocation(line: 207, column: 37, scope: !244)
!261 = !DILocation(line: 206, column: 2, scope: !244)
!262 = distinct !DISubprogram(name: "variable_test_bit", scope: !148, file: !148, line: 224, type: !245, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !263)
!263 = !{!264, !265, !266}
!264 = !DILocalVariable(name: "nr", arg: 1, scope: !262, file: !148, line: 224, type: !247)
!265 = !DILocalVariable(name: "addr", arg: 2, scope: !262, file: !148, line: 224, type: !151)
!266 = !DILocalVariable(name: "oldbit", scope: !262, file: !148, line: 226, type: !63)
!267 = !DILocation(line: 224, column: 52, scope: !262)
!268 = !DILocation(line: 224, column: 86, scope: !262)
!269 = !DILocation(line: 226, column: 2, scope: !262)
!270 = !DILocation(line: 226, column: 7, scope: !262)
!271 = !DILocation(line: 231, column: 33, scope: !262)
!272 = !DILocation(line: 231, column: 46, scope: !262)
!273 = !DILocation(line: 228, column: 2, scope: !262)
!274 = !{i64 2147900385, i64 2147900459}
!275 = !DILocation(line: 233, column: 9, scope: !262)
!276 = !DILocation(line: 234, column: 1, scope: !262)
!277 = !DILocation(line: 233, column: 2, scope: !262)
!278 = distinct !DISubprogram(name: "__outb", scope: !279, file: !279, line: 22, type: !280, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !285)
!279 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!280 = !DISubroutineType(types: !281)
!281 = !{null, !282, !215}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !216, line: 17, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !218, line: 21, baseType: !284)
!284 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!285 = !{!286, !287}
!286 = !DILocalVariable(name: "value", arg: 1, scope: !278, file: !279, line: 22, type: !282)
!287 = !DILocalVariable(name: "port", arg: 2, scope: !278, file: !279, line: 22, type: !215)
!288 = !DILocation(line: 22, column: 1, scope: !278)
!289 = !{i64 2149326521}
!290 = distinct !DISubprogram(name: "__inb", scope: !279, file: !279, line: 22, type: !291, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!282, !215}
!293 = !{!294, !295}
!294 = !DILocalVariable(name: "port", arg: 1, scope: !290, file: !279, line: 22, type: !215)
!295 = !DILocalVariable(name: "value", scope: !290, file: !279, line: 22, type: !282)
!296 = !DILocation(line: 22, column: 1, scope: !290)
!297 = !{i64 2149326717}
