; ModuleID = 'arch/x86/kernel/acpi/cppc.c'
source_filename = "arch/x86/kernel/acpi/cppc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon = type { i8, i8, i8, i8 }
%struct.cpc_reg = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.cppc_perf_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@init_freq_invariance_cppc.init_done = internal global i8 0, align 1, !dbg !0
@freq_invariance_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @freq_invariance_lock, i64 16), ptr getelementptr (i8, ptr @freq_invariance_lock, i64 16) } }, align 8, !dbg !22

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @cpc_supported_by_cpu() #0 align 16 !dbg !96 {
entry:
  %retval = alloca i1, align 1
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !99
  %conv = zext i8 %0 to i32, !dbg !100
  switch i32 %conv, label %sw.epilog [
    i32 2, label %sw.bb
    i32 9, label %sw.bb
  ], !dbg !101

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !102
  %conv1 = zext i8 %1 to i32, !dbg !105
  %cmp = icmp eq i32 %conv1, 25, !dbg !106
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !107

land.lhs.true:                                    ; preds = %sw.bb
  %2 = load i8, ptr @boot_cpu_data, align 8, !dbg !108
  %conv3 = zext i8 %2 to i32, !dbg !109
  %cmp4 = icmp sle i32 %conv3, 15, !dbg !110
  br i1 %cmp4, label %if.then, label %lor.lhs.false, !dbg !111

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i8, ptr @boot_cpu_data, align 8, !dbg !112
  %conv6 = zext i8 %3 to i32, !dbg !113
  %cmp7 = icmp sge i32 %conv6, 32, !dbg !114
  br i1 %cmp7, label %land.lhs.true9, label %if.else, !dbg !115

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %4 = load i8, ptr @boot_cpu_data, align 8, !dbg !116
  %conv10 = zext i8 %4 to i32, !dbg !117
  %cmp11 = icmp sle i32 %conv10, 47, !dbg !118
  br i1 %cmp11, label %if.then, label %if.else, !dbg !119

if.then:                                          ; preds = %land.lhs.true9, %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !120
  br label %return, !dbg !120

if.else:                                          ; preds = %land.lhs.true9, %lor.lhs.false, %sw.bb
  %5 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !121
  %conv13 = zext i8 %5 to i32, !dbg !123
  %cmp14 = icmp eq i32 %conv13, 23, !dbg !124
  br i1 %cmp14, label %land.lhs.true16, label %if.end, !dbg !125

land.lhs.true16:                                  ; preds = %if.else
  %6 = load i8, ptr @boot_cpu_data, align 8, !dbg !126
  %conv17 = zext i8 %6 to i32, !dbg !127
  %cmp18 = icmp sge i32 %conv17, 48, !dbg !128
  br i1 %cmp18, label %land.lhs.true20, label %if.end, !dbg !129

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %7 = load i8, ptr @boot_cpu_data, align 8, !dbg !130
  %conv21 = zext i8 %7 to i32, !dbg !131
  %cmp22 = icmp sle i32 %conv21, 127, !dbg !132
  br i1 %cmp22, label %if.then24, label %if.end, !dbg !133

if.then24:                                        ; preds = %land.lhs.true20
  store i1 true, ptr %retval, align 1, !dbg !134
  br label %return, !dbg !134

if.end:                                           ; preds = %land.lhs.true20, %land.lhs.true16, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end
  %call = call zeroext i1 @arch_test_bit(i64 noundef 443, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #8, !dbg !135
  store i1 %call, ptr %retval, align 1, !dbg !136
  br label %return, !dbg !136

sw.epilog:                                        ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !137
  br label %return, !dbg !137

return:                                           ; preds = %sw.epilog, %if.end25, %if.then24, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !138
  ret i1 %8, !dbg !138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !139 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !147, metadata !DIExpression()), !dbg !149
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !148, metadata !DIExpression()), !dbg !150
  %0 = load i64, ptr %nr.addr, align 8, !dbg !151
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !152
  br i1 %1, label %cond.true, label %cond.false, !dbg !152

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !153
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !154
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !155
  %conv = zext i1 %call to i32, !dbg !155
  br label %cond.end, !dbg !152

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !156
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !157
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #8, !dbg !158
  %conv2 = zext i1 %call1 to i32, !dbg !158
  br label %cond.end, !dbg !152

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !152
  %tobool = icmp ne i32 %cond, 0, !dbg !152
  ret i1 %tobool, !dbg !159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @cpc_ffh_supported() #0 align 16 !dbg !160 {
entry:
  ret i1 true, !dbg !161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpc_read_ffh(i32 noundef %cpunum, ptr noundef %reg, ptr noundef %val) #0 align 16 !dbg !162 {
entry:
  %cpunum.addr = alloca i32, align 4
  %reg.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %mask = alloca i64, align 8
  store i32 %cpunum, ptr %cpunum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpunum.addr, metadata !181, metadata !DIExpression()), !dbg !188
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !182, metadata !DIExpression()), !dbg !189
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !183, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !191
  call void @llvm.dbg.declare(metadata ptr %err, metadata !184, metadata !DIExpression()), !dbg !192
  %0 = load i32, ptr %cpunum.addr, align 4, !dbg !193
  %1 = load ptr, ptr %reg.addr, align 8, !dbg !194
  %address = getelementptr inbounds %struct.cpc_reg, ptr %1, i32 0, i32 6, !dbg !195
  %2 = load i64, ptr %address, align 1, !dbg !195
  %conv = trunc i64 %2 to i32, !dbg !194
  %3 = load ptr, ptr %val.addr, align 8, !dbg !196
  %call = call i32 @rdmsrl_safe_on_cpu(i32 noundef %0, i32 noundef %conv, ptr noundef %3) #8, !dbg !197
  store i32 %call, ptr %err, align 4, !dbg !198
  %4 = load i32, ptr %err, align 4, !dbg !199
  %tobool = icmp ne i32 %4, 0, !dbg !199
  br i1 %tobool, label %if.end, label %if.then, !dbg !200

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !185, metadata !DIExpression()), !dbg !202
  %5 = load ptr, ptr %reg.addr, align 8, !dbg !203
  %bit_offset = getelementptr inbounds %struct.cpc_reg, ptr %5, i32 0, i32 4, !dbg !203
  %6 = load i8, ptr %bit_offset, align 1, !dbg !203
  %conv1 = zext i8 %6 to i32, !dbg !203
  %sh_prom = zext i32 %conv1 to i64, !dbg !203
  %shl = shl i64 1, %sh_prom, !dbg !203
  %sub = sub i64 -1, %shl, !dbg !203
  %add = add i64 %sub, 1, !dbg !203
  %7 = load ptr, ptr %reg.addr, align 8, !dbg !203
  %bit_offset2 = getelementptr inbounds %struct.cpc_reg, ptr %7, i32 0, i32 4, !dbg !203
  %8 = load i8, ptr %bit_offset2, align 1, !dbg !203
  %conv3 = zext i8 %8 to i32, !dbg !203
  %9 = load ptr, ptr %reg.addr, align 8, !dbg !203
  %bit_width = getelementptr inbounds %struct.cpc_reg, ptr %9, i32 0, i32 3, !dbg !203
  %10 = load i8, ptr %bit_width, align 1, !dbg !203
  %conv4 = zext i8 %10 to i32, !dbg !203
  %add5 = add i32 %conv3, %conv4, !dbg !203
  %sub6 = sub i32 %add5, 1, !dbg !203
  %sub7 = sub i32 63, %sub6, !dbg !203
  %sh_prom8 = zext i32 %sub7 to i64, !dbg !203
  %shr = lshr i64 -1, %sh_prom8, !dbg !203
  %and = and i64 %add, %shr, !dbg !203
  %add9 = add i64 0, %and, !dbg !203
  store i64 %add9, ptr %mask, align 8, !dbg !202
  %11 = load i64, ptr %mask, align 8, !dbg !204
  %12 = load ptr, ptr %val.addr, align 8, !dbg !205
  %13 = load i64, ptr %12, align 8, !dbg !206
  %and10 = and i64 %13, %11, !dbg !206
  store i64 %and10, ptr %12, align 8, !dbg !206
  %14 = load ptr, ptr %reg.addr, align 8, !dbg !207
  %bit_offset11 = getelementptr inbounds %struct.cpc_reg, ptr %14, i32 0, i32 4, !dbg !208
  %15 = load i8, ptr %bit_offset11, align 1, !dbg !208
  %conv12 = zext i8 %15 to i32, !dbg !207
  %16 = load ptr, ptr %val.addr, align 8, !dbg !209
  %17 = load i64, ptr %16, align 8, !dbg !210
  %sh_prom13 = zext i32 %conv12 to i64, !dbg !210
  %shr14 = lshr i64 %17, %sh_prom13, !dbg !210
  store i64 %shr14, ptr %16, align 8, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !211
  br label %if.end, !dbg !212

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, ptr %err, align 4, !dbg !213
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !214
  ret i32 %18, !dbg !215
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !216 dso_local i32 @rdmsrl_safe_on_cpu(i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpc_write_ffh(i32 noundef %cpunum, ptr noundef %reg, i64 noundef %val) #0 align 16 !dbg !222 {
entry:
  %cpunum.addr = alloca i32, align 4
  %reg.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %rd_val = alloca i64, align 8
  %err = alloca i32, align 4
  %mask = alloca i64, align 8
  store i32 %cpunum, ptr %cpunum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpunum.addr, metadata !226, metadata !DIExpression()), !dbg !234
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !227, metadata !DIExpression()), !dbg !235
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !228, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd_val) #9, !dbg !237
  call void @llvm.dbg.declare(metadata ptr %rd_val, metadata !229, metadata !DIExpression()), !dbg !238
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %err, metadata !230, metadata !DIExpression()), !dbg !240
  %0 = load i32, ptr %cpunum.addr, align 4, !dbg !241
  %1 = load ptr, ptr %reg.addr, align 8, !dbg !242
  %address = getelementptr inbounds %struct.cpc_reg, ptr %1, i32 0, i32 6, !dbg !243
  %2 = load i64, ptr %address, align 1, !dbg !243
  %conv = trunc i64 %2 to i32, !dbg !242
  %call = call i32 @rdmsrl_safe_on_cpu(i32 noundef %0, i32 noundef %conv, ptr noundef %rd_val) #8, !dbg !244
  store i32 %call, ptr %err, align 4, !dbg !245
  %3 = load i32, ptr %err, align 4, !dbg !246
  %tobool = icmp ne i32 %3, 0, !dbg !246
  br i1 %tobool, label %if.end, label %if.then, !dbg !247

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !231, metadata !DIExpression()), !dbg !249
  %4 = load ptr, ptr %reg.addr, align 8, !dbg !250
  %bit_offset = getelementptr inbounds %struct.cpc_reg, ptr %4, i32 0, i32 4, !dbg !250
  %5 = load i8, ptr %bit_offset, align 1, !dbg !250
  %conv1 = zext i8 %5 to i32, !dbg !250
  %sh_prom = zext i32 %conv1 to i64, !dbg !250
  %shl = shl i64 1, %sh_prom, !dbg !250
  %sub = sub i64 -1, %shl, !dbg !250
  %add = add i64 %sub, 1, !dbg !250
  %6 = load ptr, ptr %reg.addr, align 8, !dbg !250
  %bit_offset2 = getelementptr inbounds %struct.cpc_reg, ptr %6, i32 0, i32 4, !dbg !250
  %7 = load i8, ptr %bit_offset2, align 1, !dbg !250
  %conv3 = zext i8 %7 to i32, !dbg !250
  %8 = load ptr, ptr %reg.addr, align 8, !dbg !250
  %bit_width = getelementptr inbounds %struct.cpc_reg, ptr %8, i32 0, i32 3, !dbg !250
  %9 = load i8, ptr %bit_width, align 1, !dbg !250
  %conv4 = zext i8 %9 to i32, !dbg !250
  %add5 = add i32 %conv3, %conv4, !dbg !250
  %sub6 = sub i32 %add5, 1, !dbg !250
  %sub7 = sub i32 63, %sub6, !dbg !250
  %sh_prom8 = zext i32 %sub7 to i64, !dbg !250
  %shr = lshr i64 -1, %sh_prom8, !dbg !250
  %and = and i64 %add, %shr, !dbg !250
  %add9 = add i64 0, %and, !dbg !250
  store i64 %add9, ptr %mask, align 8, !dbg !249
  %10 = load ptr, ptr %reg.addr, align 8, !dbg !251
  %bit_offset10 = getelementptr inbounds %struct.cpc_reg, ptr %10, i32 0, i32 4, !dbg !252
  %11 = load i8, ptr %bit_offset10, align 1, !dbg !252
  %conv11 = zext i8 %11 to i32, !dbg !251
  %12 = load i64, ptr %val.addr, align 8, !dbg !253
  %sh_prom12 = zext i32 %conv11 to i64, !dbg !253
  %shl13 = shl i64 %12, %sh_prom12, !dbg !253
  store i64 %shl13, ptr %val.addr, align 8, !dbg !253
  %13 = load i64, ptr %mask, align 8, !dbg !254
  %14 = load i64, ptr %val.addr, align 8, !dbg !255
  %and14 = and i64 %14, %13, !dbg !255
  store i64 %and14, ptr %val.addr, align 8, !dbg !255
  %15 = load i64, ptr %mask, align 8, !dbg !256
  %not = xor i64 %15, -1, !dbg !257
  %16 = load i64, ptr %rd_val, align 8, !dbg !258
  %and15 = and i64 %16, %not, !dbg !258
  store i64 %and15, ptr %rd_val, align 8, !dbg !258
  %17 = load i64, ptr %val.addr, align 8, !dbg !259
  %18 = load i64, ptr %rd_val, align 8, !dbg !260
  %or = or i64 %18, %17, !dbg !260
  store i64 %or, ptr %rd_val, align 8, !dbg !260
  %19 = load i32, ptr %cpunum.addr, align 4, !dbg !261
  %20 = load ptr, ptr %reg.addr, align 8, !dbg !262
  %address16 = getelementptr inbounds %struct.cpc_reg, ptr %20, i32 0, i32 6, !dbg !263
  %21 = load i64, ptr %address16, align 1, !dbg !263
  %conv17 = trunc i64 %21 to i32, !dbg !262
  %22 = load i64, ptr %rd_val, align 8, !dbg !264
  %call18 = call i32 @wrmsrl_safe_on_cpu(i32 noundef %19, i32 noundef %conv17, i64 noundef %22) #8, !dbg !265
  store i32 %call18, ptr %err, align 4, !dbg !266
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %if.then, %entry
  %23 = load i32, ptr %err, align 4, !dbg !269
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !270
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd_val) #9, !dbg !270
  ret i32 %23, !dbg !271
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !272 dso_local i32 @wrmsrl_safe_on_cpu(i32 noundef, i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_freq_invariance_cppc() #0 align 16 !dbg !2 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !275

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !276

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !275

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !276

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !276

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 124, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #8, !dbg !276
  br i1 %call, label %if.end, label %if.then, !dbg !276

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 124) #8, !dbg !276
  br i1 %call5, label %if.end, label %if.then, !dbg !275

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %return, !dbg !278

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !279
  %conv = zext i8 %0 to i32, !dbg !281
  %cmp = icmp ne i32 %conv, 2, !dbg !282
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !283

if.then7:                                         ; preds = %if.end
  br label %return, !dbg !284

if.end8:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @freq_invariance_lock) #8, !dbg !285
  %1 = load i8, ptr @init_freq_invariance_cppc.init_done, align 1, !dbg !286, !range !288, !noundef !289
  %tobool = trunc i8 %1 to i1, !dbg !286
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !290

if.then9:                                         ; preds = %if.end8
  call void @amd_set_max_freq_ratio() #8, !dbg !291
  br label %if.end10, !dbg !291

if.end10:                                         ; preds = %if.then9, %if.end8
  store i8 1, ptr @init_freq_invariance_cppc.init_done, align 1, !dbg !292
  call void @mutex_unlock(ptr noundef @freq_invariance_lock) #8, !dbg !293
  br label %return, !dbg !294

return:                                           ; preds = %if.end10, %if.then7, %if.then
  ret void, !dbg !294
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #1 align 16 !dbg !295 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !300, metadata !DIExpression()), !dbg !303
  %0 = load i16, ptr %bit.addr, align 2, !dbg !304
  %1 = load i16, ptr %bit.addr, align 2, !dbg !305
  %conv = zext i16 %1 to i32, !dbg !305
  %and = and i32 %conv, 7, !dbg !306
  %shl = shl i32 1, %and, !dbg !307
  %2 = load i16, ptr %bit.addr, align 2, !dbg !308
  %conv1 = zext i16 %2 to i32, !dbg !308
  %shr = ashr i32 %conv1, 3, !dbg !309
  %idxprom = sext i32 %shr to i64, !dbg !310
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !310
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #9
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !311, !srcloc !312

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !311

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !301), !dbg !313
  store i1 true, ptr %retval, align 1, !dbg !314
  br label %return, !dbg !314

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !302), !dbg !315
  store i1 false, ptr %retval, align 1, !dbg !316
  br label %return, !dbg !316

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !317
  ret i1 %3, !dbg !317
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !318 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_set_max_freq_ratio() #0 align 16 !dbg !322 {
entry:
  %perf_caps = alloca %struct.cppc_perf_caps, align 4
  %highest_perf = alloca i64, align 8
  %nominal_perf = alloca i64, align 8
  %perf_ratio = alloca i64, align 8
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr %perf_caps) #9, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %perf_caps, metadata !324, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %highest_perf) #9, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %highest_perf, metadata !336, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 8, ptr %nominal_perf) #9, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %nominal_perf, metadata !337, metadata !DIExpression()), !dbg !344
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf_ratio) #9, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %perf_ratio, metadata !338, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !339, metadata !DIExpression()), !dbg !348
  %call = call i32 @cppc_get_perf_caps(i32 noundef 0, ptr noundef %perf_caps) #8, !dbg !349
  store i32 %call, ptr %rc, align 4, !dbg !350
  %0 = load i32, ptr %rc, align 4, !dbg !351
  %tobool = icmp ne i32 %0, 0, !dbg !351
  br i1 %tobool, label %if.then, label %if.end, !dbg !353

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !354
  %1 = load i32, ptr %tmp, align 4, !dbg !358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !359

if.end:                                           ; preds = %entry
  %call1 = call i32 @amd_get_highest_perf() #8, !dbg !360
  %conv = zext i32 %call1 to i64, !dbg !360
  store i64 %conv, ptr %highest_perf, align 8, !dbg !361
  %nominal_perf2 = getelementptr inbounds %struct.cppc_perf_caps, ptr %perf_caps, i32 0, i32 2, !dbg !362
  %2 = load i32, ptr %nominal_perf2, align 4, !dbg !362
  %conv3 = zext i32 %2 to i64, !dbg !363
  store i64 %conv3, ptr %nominal_perf, align 8, !dbg !364
  %3 = load i64, ptr %highest_perf, align 8, !dbg !365
  %tobool4 = icmp ne i64 %3, 0, !dbg !365
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !367

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, ptr %nominal_perf, align 8, !dbg !368
  %tobool5 = icmp ne i64 %4, 0, !dbg !368
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !369

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %tmp7, align 4, !dbg !370
  %5 = load i32, ptr %tmp7, align 4, !dbg !374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !375

if.end8:                                          ; preds = %lor.lhs.false
  %6 = load i64, ptr %highest_perf, align 8, !dbg !376
  %mul = mul i64 %6, 1024, !dbg !377
  %7 = load i64, ptr %nominal_perf, align 8, !dbg !378
  %conv9 = trunc i64 %7 to i32, !dbg !378
  %call10 = call i64 @div_u64(i64 noundef %mul, i32 noundef %conv9) #8, !dbg !379
  store i64 %call10, ptr %perf_ratio, align 8, !dbg !380
  %8 = load i64, ptr %perf_ratio, align 8, !dbg !381
  %add = add i64 %8, 1024, !dbg !382
  %shr = lshr i64 %add, 1, !dbg !383
  store i64 %shr, ptr %perf_ratio, align 8, !dbg !384
  %9 = load i64, ptr %perf_ratio, align 8, !dbg !385
  %tobool11 = icmp ne i64 %9, 0, !dbg !385
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !387

if.then12:                                        ; preds = %if.end8
  store i32 0, ptr %tmp13, align 4, !dbg !388
  %10 = load i32, ptr %tmp13, align 4, !dbg !392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !393

if.end14:                                         ; preds = %if.end8
  %11 = load i64, ptr %perf_ratio, align 8, !dbg !394
  call void @freq_invariance_set_perf_ratio(i64 noundef %11, i1 noundef zeroext false) #8, !dbg !395
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !396
  br label %cleanup, !dbg !396

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !396
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf_ratio) #9, !dbg !396
  call void @llvm.lifetime.end.p0(i64 8, ptr %nominal_perf) #9, !dbg !396
  call void @llvm.lifetime.end.p0(i64 8, ptr %highest_perf) #9, !dbg !396
  call void @llvm.lifetime.end.p0(i64 36, ptr %perf_caps) #9, !dbg !396
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !396

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !397 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !398 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !403, metadata !DIExpression()), !dbg !405
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !404, metadata !DIExpression()), !dbg !406
  %0 = load i64, ptr %nr.addr, align 8, !dbg !407
  %and = and i64 %0, 63, !dbg !408
  %shl = shl i64 1, %and, !dbg !409
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !410
  %2 = load i64, ptr %nr.addr, align 8, !dbg !411
  %shr = ashr i64 %2, 6, !dbg !412
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !410
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !410
  %and1 = and i64 %shl, %3, !dbg !413
  %cmp = icmp ne i64 %and1, 0, !dbg !414
  ret i1 %cmp, !dbg !415
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !416 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !418, metadata !DIExpression()), !dbg !421
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !419, metadata !DIExpression()), !dbg !422
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !420, metadata !DIExpression()), !dbg !424
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !425
  %1 = load i64, ptr %nr.addr, align 8, !dbg !426
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !427, !srcloc !428
  %3 = icmp ult i8 %2, 2, !dbg !427
  call void @llvm.assume(i1 %3), !dbg !427
  store i8 %2, ptr %oldbit, align 1, !dbg !427
  %4 = load i8, ptr %oldbit, align 1, !dbg !429, !range !288, !noundef !289
  %tobool = trunc i8 %4 to i1, !dbg !429
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !430
  ret i1 %tobool, !dbg !431
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !432 dso_local i32 @cppc_get_perf_caps(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !436 dso_local i32 @amd_get_highest_perf() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #7 align 16 !dbg !440 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !445, metadata !DIExpression()), !dbg !448
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #9, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !447, metadata !DIExpression()), !dbg !451
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !452
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !453
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #8, !dbg !454
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #9, !dbg !455
  ret i64 %call, !dbg !456
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !457 dso_local void @freq_invariance_set_perf_ratio(i64 noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #7 align 16 !dbg !461 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !466, metadata !DIExpression()), !dbg !469
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !467, metadata !DIExpression()), !dbg !470
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !468, metadata !DIExpression()), !dbg !471
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !472
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !473
  %conv = zext i32 %1 to i64, !dbg !473
  %rem = urem i64 %0, %conv, !dbg !474
  %conv1 = trunc i64 %rem to i32, !dbg !472
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !475
  store i32 %conv1, ptr %2, align 4, !dbg !476
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !477
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !478
  %conv2 = zext i32 %4 to i64, !dbg !478
  %div = udiv i64 %3, %conv2, !dbg !479
  ret i64 %div, !dbg !480
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_done", scope: !2, file: !3, line: 105, type: !85, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "init_freq_invariance_cppc", scope: !3, file: !3, line: 103, type: !4, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!3 = !DIFile(filename: "arch/x86/kernel/acpi/cppc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da713b30058f33d822362a372e463c8e")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/acpi/.cppc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/acpi/cppc\22 -D KBUILD_BASENAME=\22cppc\22 -D KBUILD_MODNAME=\22cppc\22 -D __KBUILD_MODNAME=kmod_cppc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/acpi/cppc.ll arch/x86/kernel/acpi/cppc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !14, globals: !21, splitDebugInlining: false, nameTableKind: None)
!7 = !{!8}
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 10, baseType: !10, size: 32, elements: !11)
!9 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "false", value: 0)
!13 = !DIEnumerator(name: "true", value: 1)
!14 = !{!15, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!0, !22}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "freq_invariance_lock", scope: !6, file: !3, line: 101, type: !24, isLocal: true, isDefinition: true)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !25, line: 66, size: 256, elements: !26)
!25 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!26 = !{!27, !40, !74, !79}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !24, file: !25, line: 67, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !29, line: 13, baseType: !30)
!29 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !31, line: 181, baseType: !32)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 179, size: 64, elements: !33)
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !32, file: !31, line: 180, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !36, line: 22, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !38, line: 30, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !24, file: !25, line: 68, baseType: !41, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !42, line: 23, baseType: !43)
!42 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !42, line: 14, size: 32, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !43, file: !42, line: 15, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !47, line: 44, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !47, line: 14, size: 32, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, scope: !48, file: !47, line: 15, baseType: !51, size: 32)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !48, file: !47, line: 15, size: 32, elements: !52)
!52 = !{!53, !58, !66}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !47, line: 16, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !31, line: 174, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 172, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !55, file: !31, line: 173, baseType: !17, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !51, file: !47, line: 24, baseType: !59, size: 16)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !47, line: 24, size: 16, elements: !60)
!60 = !{!61, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !59, file: !47, line: 25, baseType: !62, size: 8)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !38, line: 21, baseType: !64)
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !59, file: !47, line: 26, baseType: !62, size: 8, offset: 8)
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !51, file: !47, line: 28, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !47, line: 28, size: 32, elements: !68)
!68 = !{!69, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !67, file: !47, line: 29, baseType: !70, size: 16)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !36, line: 19, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !38, line: 24, baseType: !72)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !67, file: !47, line: 30, baseType: !70, size: 16, offset: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !24, file: !25, line: 70, baseType: !75, size: 32, offset: 96)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !76, line: 15, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !75, file: !76, line: 20, baseType: !54, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !24, file: !25, line: 72, baseType: !80, size: 128, offset: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !31, line: 190, size: 128, elements: !81)
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !31, line: 191, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !31, line: 191, baseType: !83, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !31, line: 35, baseType: !86)
!86 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 8, !"cf-protection-branch", i32 1}
!91 = !{i32 4, !"function_return_thunk_extern", i32 1}
!92 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!93 = !{i32 1, !"Code Model", i32 2}
!94 = !{i32 1, !"override-stack-alignment", i32 8}
!95 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!96 = distinct !DISubprogram(name: "cpc_supported_by_cpu", scope: !3, file: !3, line: 14, type: !97, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!97 = !DISubroutineType(types: !98)
!98 = !{!85}
!99 = !DILocation(line: 16, column: 24, scope: !96)
!100 = !DILocation(line: 16, column: 10, scope: !96)
!101 = !DILocation(line: 16, column: 2, scope: !96)
!102 = !DILocation(line: 19, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 19, column: 7)
!104 = distinct !DILexicalBlock(scope: !96, file: !3, line: 16, column: 36)
!105 = !DILocation(line: 19, column: 7, scope: !103)
!106 = !DILocation(line: 19, column: 25, scope: !103)
!107 = !DILocation(line: 19, column: 33, scope: !103)
!108 = !DILocation(line: 19, column: 52, scope: !103)
!109 = !DILocation(line: 19, column: 38, scope: !103)
!110 = !DILocation(line: 19, column: 62, scope: !103)
!111 = !DILocation(line: 19, column: 71, scope: !103)
!112 = !DILocation(line: 20, column: 22, scope: !103)
!113 = !DILocation(line: 20, column: 8, scope: !103)
!114 = !DILocation(line: 20, column: 32, scope: !103)
!115 = !DILocation(line: 20, column: 40, scope: !103)
!116 = !DILocation(line: 20, column: 57, scope: !103)
!117 = !DILocation(line: 20, column: 43, scope: !103)
!118 = !DILocation(line: 20, column: 67, scope: !103)
!119 = !DILocation(line: 19, column: 7, scope: !104)
!120 = !DILocation(line: 21, column: 4, scope: !103)
!121 = !DILocation(line: 22, column: 26, scope: !122)
!122 = distinct !DILexicalBlock(scope: !103, file: !3, line: 22, column: 12)
!123 = !DILocation(line: 22, column: 12, scope: !122)
!124 = !DILocation(line: 22, column: 30, scope: !122)
!125 = !DILocation(line: 22, column: 38, scope: !122)
!126 = !DILocation(line: 23, column: 19, scope: !122)
!127 = !DILocation(line: 23, column: 5, scope: !122)
!128 = !DILocation(line: 23, column: 29, scope: !122)
!129 = !DILocation(line: 23, column: 37, scope: !122)
!130 = !DILocation(line: 23, column: 54, scope: !122)
!131 = !DILocation(line: 23, column: 40, scope: !122)
!132 = !DILocation(line: 23, column: 64, scope: !122)
!133 = !DILocation(line: 22, column: 12, scope: !103)
!134 = !DILocation(line: 24, column: 4, scope: !122)
!135 = !DILocation(line: 25, column: 10, scope: !104)
!136 = !DILocation(line: 25, column: 3, scope: !104)
!137 = !DILocation(line: 27, column: 2, scope: !96)
!138 = !DILocation(line: 28, column: 1, scope: !96)
!139 = distinct !DISubprogram(name: "arch_test_bit", scope: !140, file: !140, line: 237, type: !141, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !146)
!140 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!141 = !DISubroutineType(types: !142)
!142 = !{!85, !16, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!146 = !{!147, !148}
!147 = !DILocalVariable(name: "nr", arg: 1, scope: !139, file: !140, line: 237, type: !16)
!148 = !DILocalVariable(name: "addr", arg: 2, scope: !139, file: !140, line: 237, type: !143)
!149 = !DILocation(line: 237, column: 29, scope: !139)
!150 = !DILocation(line: 237, column: 63, scope: !139)
!151 = !DILocation(line: 239, column: 30, scope: !139)
!152 = !DILocation(line: 239, column: 9, scope: !139)
!153 = !DILocation(line: 239, column: 54, scope: !139)
!154 = !DILocation(line: 239, column: 58, scope: !139)
!155 = !DILocation(line: 239, column: 36, scope: !139)
!156 = !DILocation(line: 240, column: 26, scope: !139)
!157 = !DILocation(line: 240, column: 30, scope: !139)
!158 = !DILocation(line: 240, column: 8, scope: !139)
!159 = !DILocation(line: 239, column: 2, scope: !139)
!160 = distinct !DISubprogram(name: "cpc_ffh_supported", scope: !3, file: !3, line: 30, type: !97, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!161 = !DILocation(line: 32, column: 2, scope: !160)
!162 = distinct !DISubprogram(name: "cpc_read_ffh", scope: !3, file: !3, line: 35, type: !163, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !180)
!163 = !DISubroutineType(types: !164)
!164 = !{!17, !17, !165, !179}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpc_reg", file: !167, line: 36, size: 120, elements: !168)
!167 = !DIFile(filename: "./include/acpi/cppc_acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0445ea69f5c64d65d093e90183e974cb")
!168 = !{!169, !170, !171, !172, !173, !174, !175}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !166, file: !167, line: 37, baseType: !62, size: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !166, file: !167, line: 38, baseType: !70, size: 16, offset: 8)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !166, file: !167, line: 39, baseType: !62, size: 8, offset: 24)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !166, file: !167, line: 40, baseType: !62, size: 8, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !166, file: !167, line: 41, baseType: !62, size: 8, offset: 40)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !166, file: !167, line: 42, baseType: !62, size: 8, offset: 48)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !166, file: !167, line: 43, baseType: !176, size: 64, offset: 56)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !36, line: 23, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !38, line: 31, baseType: !178)
!178 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!180 = !{!181, !182, !183, !184, !185}
!181 = !DILocalVariable(name: "cpunum", arg: 1, scope: !162, file: !3, line: 35, type: !17)
!182 = !DILocalVariable(name: "reg", arg: 2, scope: !162, file: !3, line: 35, type: !165)
!183 = !DILocalVariable(name: "val", arg: 3, scope: !162, file: !3, line: 35, type: !179)
!184 = !DILocalVariable(name: "err", scope: !162, file: !3, line: 37, type: !17)
!185 = !DILocalVariable(name: "mask", scope: !186, file: !3, line: 41, type: !176)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 40, column: 12)
!187 = distinct !DILexicalBlock(scope: !162, file: !3, line: 40, column: 6)
!188 = !DILocation(line: 35, column: 22, scope: !162)
!189 = !DILocation(line: 35, column: 46, scope: !162)
!190 = !DILocation(line: 35, column: 56, scope: !162)
!191 = !DILocation(line: 37, column: 2, scope: !162)
!192 = !DILocation(line: 37, column: 6, scope: !162)
!193 = !DILocation(line: 39, column: 27, scope: !162)
!194 = !DILocation(line: 39, column: 35, scope: !162)
!195 = !DILocation(line: 39, column: 40, scope: !162)
!196 = !DILocation(line: 39, column: 49, scope: !162)
!197 = !DILocation(line: 39, column: 8, scope: !162)
!198 = !DILocation(line: 39, column: 6, scope: !162)
!199 = !DILocation(line: 40, column: 7, scope: !187)
!200 = !DILocation(line: 40, column: 6, scope: !162)
!201 = !DILocation(line: 41, column: 3, scope: !186)
!202 = !DILocation(line: 41, column: 7, scope: !186)
!203 = !DILocation(line: 41, column: 14, scope: !186)
!204 = !DILocation(line: 44, column: 11, scope: !186)
!205 = !DILocation(line: 44, column: 4, scope: !186)
!206 = !DILocation(line: 44, column: 8, scope: !186)
!207 = !DILocation(line: 45, column: 12, scope: !186)
!208 = !DILocation(line: 45, column: 17, scope: !186)
!209 = !DILocation(line: 45, column: 4, scope: !186)
!210 = !DILocation(line: 45, column: 8, scope: !186)
!211 = !DILocation(line: 46, column: 2, scope: !187)
!212 = !DILocation(line: 46, column: 2, scope: !186)
!213 = !DILocation(line: 47, column: 9, scope: !162)
!214 = !DILocation(line: 48, column: 1, scope: !162)
!215 = !DILocation(line: 47, column: 2, scope: !162)
!216 = !DISubprogram(name: "rdmsrl_safe_on_cpu", scope: !217, file: !217, line: 322, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!218 = !DISubroutineType(types: !219)
!219 = !{!17, !10, !220, !179}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !10)
!222 = distinct !DISubprogram(name: "cpc_write_ffh", scope: !3, file: !3, line: 50, type: !223, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!17, !17, !165, !176}
!225 = !{!226, !227, !228, !229, !230, !231}
!226 = !DILocalVariable(name: "cpunum", arg: 1, scope: !222, file: !3, line: 50, type: !17)
!227 = !DILocalVariable(name: "reg", arg: 2, scope: !222, file: !3, line: 50, type: !165)
!228 = !DILocalVariable(name: "val", arg: 3, scope: !222, file: !3, line: 50, type: !176)
!229 = !DILocalVariable(name: "rd_val", scope: !222, file: !3, line: 52, type: !176)
!230 = !DILocalVariable(name: "err", scope: !222, file: !3, line: 53, type: !17)
!231 = !DILocalVariable(name: "mask", scope: !232, file: !3, line: 57, type: !176)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 56, column: 12)
!233 = distinct !DILexicalBlock(scope: !222, file: !3, line: 56, column: 6)
!234 = !DILocation(line: 50, column: 23, scope: !222)
!235 = !DILocation(line: 50, column: 47, scope: !222)
!236 = !DILocation(line: 50, column: 56, scope: !222)
!237 = !DILocation(line: 52, column: 2, scope: !222)
!238 = !DILocation(line: 52, column: 6, scope: !222)
!239 = !DILocation(line: 53, column: 2, scope: !222)
!240 = !DILocation(line: 53, column: 6, scope: !222)
!241 = !DILocation(line: 55, column: 27, scope: !222)
!242 = !DILocation(line: 55, column: 35, scope: !222)
!243 = !DILocation(line: 55, column: 40, scope: !222)
!244 = !DILocation(line: 55, column: 8, scope: !222)
!245 = !DILocation(line: 55, column: 6, scope: !222)
!246 = !DILocation(line: 56, column: 7, scope: !233)
!247 = !DILocation(line: 56, column: 6, scope: !222)
!248 = !DILocation(line: 57, column: 3, scope: !232)
!249 = !DILocation(line: 57, column: 7, scope: !232)
!250 = !DILocation(line: 57, column: 14, scope: !232)
!251 = !DILocation(line: 60, column: 11, scope: !232)
!252 = !DILocation(line: 60, column: 16, scope: !232)
!253 = !DILocation(line: 60, column: 7, scope: !232)
!254 = !DILocation(line: 61, column: 10, scope: !232)
!255 = !DILocation(line: 61, column: 7, scope: !232)
!256 = !DILocation(line: 62, column: 14, scope: !232)
!257 = !DILocation(line: 62, column: 13, scope: !232)
!258 = !DILocation(line: 62, column: 10, scope: !232)
!259 = !DILocation(line: 63, column: 13, scope: !232)
!260 = !DILocation(line: 63, column: 10, scope: !232)
!261 = !DILocation(line: 64, column: 28, scope: !232)
!262 = !DILocation(line: 64, column: 36, scope: !232)
!263 = !DILocation(line: 64, column: 41, scope: !232)
!264 = !DILocation(line: 64, column: 50, scope: !232)
!265 = !DILocation(line: 64, column: 9, scope: !232)
!266 = !DILocation(line: 64, column: 7, scope: !232)
!267 = !DILocation(line: 65, column: 2, scope: !233)
!268 = !DILocation(line: 65, column: 2, scope: !232)
!269 = !DILocation(line: 66, column: 9, scope: !222)
!270 = !DILocation(line: 67, column: 1, scope: !222)
!271 = !DILocation(line: 66, column: 2, scope: !222)
!272 = !DISubprogram(name: "wrmsrl_safe_on_cpu", scope: !217, file: !217, line: 323, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{!17, !10, !220, !176}
!275 = !DILocation(line: 107, column: 6, scope: !2)
!276 = !DILocation(line: 107, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !2, file: !3, line: 107, column: 6)
!278 = !DILocation(line: 108, column: 3, scope: !277)
!279 = !DILocation(line: 110, column: 20, scope: !280)
!280 = distinct !DILexicalBlock(scope: !2, file: !3, line: 110, column: 6)
!281 = !DILocation(line: 110, column: 6, scope: !280)
!282 = !DILocation(line: 110, column: 31, scope: !280)
!283 = !DILocation(line: 110, column: 6, scope: !2)
!284 = !DILocation(line: 111, column: 3, scope: !280)
!285 = !DILocation(line: 113, column: 2, scope: !2)
!286 = !DILocation(line: 114, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !2, file: !3, line: 114, column: 6)
!288 = !{i8 0, i8 2}
!289 = !{}
!290 = !DILocation(line: 114, column: 6, scope: !2)
!291 = !DILocation(line: 115, column: 3, scope: !287)
!292 = !DILocation(line: 116, column: 12, scope: !2)
!293 = !DILocation(line: 117, column: 2, scope: !2)
!294 = !DILocation(line: 118, column: 1, scope: !2)
!295 = distinct !DISubprogram(name: "_static_cpu_has", scope: !296, file: !296, line: 173, type: !297, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !299)
!296 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!297 = !DISubroutineType(types: !298)
!298 = !{!85, !70}
!299 = !{!300, !301, !302}
!300 = !DILocalVariable(name: "bit", arg: 1, scope: !295, file: !296, line: 173, type: !70)
!301 = !DILabel(scope: !295, name: "t_yes", file: !296, line: 187)
!302 = !DILabel(scope: !295, name: "t_no", file: !296, line: 189)
!303 = !DILocation(line: 173, column: 49, scope: !295)
!304 = !DILocation(line: 183, column: 24, scope: !295)
!305 = !DILocation(line: 184, column: 30, scope: !295)
!306 = !DILocation(line: 184, column: 34, scope: !295)
!307 = !DILocation(line: 184, column: 26, scope: !295)
!308 = !DILocation(line: 185, column: 70, scope: !295)
!309 = !DILocation(line: 185, column: 74, scope: !295)
!310 = !DILocation(line: 185, column: 25, scope: !295)
!311 = !DILocation(line: 175, column: 2, scope: !295)
!312 = !{i64 2149636514, i64 2149636547, i64 2149636553, i64 2149636569, i64 2149636588, i64 2149636619, i64 2149637572, i64 2149636161, i64 2149637578, i64 2149637626, i64 2149637690, i64 2149637754, i64 2149637811, i64 2149638018, i64 2149638066, i64 2149638130, i64 2149638194, i64 2149638251, i64 2149636279, i64 2149636304, i64 2149638461, i64 2149638589, i64 2149638522, i64 2149638603, i64 2149638617, i64 2149638733, i64 2149638678, i64 2149638747, i64 2149636438, i64 1111290, i64 1111330, i64 1111339, i64 1111389, i64 1111410, i64 1111430}
!313 = !DILocation(line: 187, column: 1, scope: !295)
!314 = !DILocation(line: 188, column: 2, scope: !295)
!315 = !DILocation(line: 189, column: 1, scope: !295)
!316 = !DILocation(line: 190, column: 2, scope: !295)
!317 = !DILocation(line: 191, column: 1, scope: !295)
!318 = !DISubprogram(name: "mutex_lock", scope: !25, file: !25, line: 227, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!322 = distinct !DISubprogram(name: "amd_set_max_freq_ratio", scope: !3, file: !3, line: 69, type: !4, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !323)
!323 = !{!324, !336, !337, !338, !339}
!324 = !DILocalVariable(name: "perf_caps", scope: !322, file: !3, line: 71, type: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cppc_perf_caps", file: !167, line: 105, size: 288, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_perf", scope: !325, file: !167, line: 106, baseType: !220, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "highest_perf", scope: !325, file: !167, line: 107, baseType: !220, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nominal_perf", scope: !325, file: !167, line: 108, baseType: !220, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_perf", scope: !325, file: !167, line: 109, baseType: !220, size: 32, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_nonlinear_perf", scope: !325, file: !167, line: 110, baseType: !220, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_freq", scope: !325, file: !167, line: 111, baseType: !220, size: 32, offset: 160)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nominal_freq", scope: !325, file: !167, line: 112, baseType: !220, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "energy_perf", scope: !325, file: !167, line: 113, baseType: !220, size: 32, offset: 224)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "auto_sel", scope: !325, file: !167, line: 114, baseType: !85, size: 8, offset: 256)
!336 = !DILocalVariable(name: "highest_perf", scope: !322, file: !3, line: 72, type: !176)
!337 = !DILocalVariable(name: "nominal_perf", scope: !322, file: !3, line: 72, type: !176)
!338 = !DILocalVariable(name: "perf_ratio", scope: !322, file: !3, line: 73, type: !176)
!339 = !DILocalVariable(name: "rc", scope: !322, file: !3, line: 74, type: !17)
!340 = !DILocation(line: 71, column: 2, scope: !322)
!341 = !DILocation(line: 71, column: 24, scope: !322)
!342 = !DILocation(line: 72, column: 2, scope: !322)
!343 = !DILocation(line: 72, column: 6, scope: !322)
!344 = !DILocation(line: 72, column: 20, scope: !322)
!345 = !DILocation(line: 73, column: 2, scope: !322)
!346 = !DILocation(line: 73, column: 6, scope: !322)
!347 = !DILocation(line: 74, column: 2, scope: !322)
!348 = !DILocation(line: 74, column: 6, scope: !322)
!349 = !DILocation(line: 76, column: 7, scope: !322)
!350 = !DILocation(line: 76, column: 5, scope: !322)
!351 = !DILocation(line: 77, column: 6, scope: !352)
!352 = distinct !DILexicalBlock(scope: !322, file: !3, line: 77, column: 6)
!353 = !DILocation(line: 77, column: 6, scope: !322)
!354 = !DILocation(line: 78, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 78, column: 3)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 78, column: 3)
!357 = distinct !DILexicalBlock(scope: !352, file: !3, line: 77, column: 10)
!358 = !DILocation(line: 78, column: 3, scope: !356)
!359 = !DILocation(line: 79, column: 3, scope: !357)
!360 = !DILocation(line: 82, column: 17, scope: !322)
!361 = !DILocation(line: 82, column: 15, scope: !322)
!362 = !DILocation(line: 83, column: 27, scope: !322)
!363 = !DILocation(line: 83, column: 17, scope: !322)
!364 = !DILocation(line: 83, column: 15, scope: !322)
!365 = !DILocation(line: 85, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !322, file: !3, line: 85, column: 6)
!367 = !DILocation(line: 85, column: 20, scope: !366)
!368 = !DILocation(line: 85, column: 24, scope: !366)
!369 = !DILocation(line: 85, column: 6, scope: !322)
!370 = !DILocation(line: 86, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 86, column: 3)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 86, column: 3)
!373 = distinct !DILexicalBlock(scope: !366, file: !3, line: 85, column: 38)
!374 = !DILocation(line: 86, column: 3, scope: !372)
!375 = !DILocation(line: 87, column: 3, scope: !373)
!376 = !DILocation(line: 90, column: 23, scope: !322)
!377 = !DILocation(line: 90, column: 36, scope: !322)
!378 = !DILocation(line: 90, column: 60, scope: !322)
!379 = !DILocation(line: 90, column: 15, scope: !322)
!380 = !DILocation(line: 90, column: 13, scope: !322)
!381 = !DILocation(line: 92, column: 16, scope: !322)
!382 = !DILocation(line: 92, column: 27, scope: !322)
!383 = !DILocation(line: 92, column: 51, scope: !322)
!384 = !DILocation(line: 92, column: 13, scope: !322)
!385 = !DILocation(line: 93, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !322, file: !3, line: 93, column: 6)
!387 = !DILocation(line: 93, column: 6, scope: !322)
!388 = !DILocation(line: 94, column: 3, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 94, column: 3)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 94, column: 3)
!391 = distinct !DILexicalBlock(scope: !386, file: !3, line: 93, column: 19)
!392 = !DILocation(line: 94, column: 3, scope: !390)
!393 = !DILocation(line: 95, column: 3, scope: !391)
!394 = !DILocation(line: 98, column: 33, scope: !322)
!395 = !DILocation(line: 98, column: 2, scope: !322)
!396 = !DILocation(line: 99, column: 1, scope: !322)
!397 = !DISubprogram(name: "mutex_unlock", scope: !25, file: !25, line: 246, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = distinct !DISubprogram(name: "constant_test_bit", scope: !140, file: !140, line: 204, type: !399, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !402)
!399 = !DISubroutineType(types: !400)
!400 = !{!85, !401, !143}
!401 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!402 = !{!403, !404}
!403 = !DILocalVariable(name: "nr", arg: 1, scope: !398, file: !140, line: 204, type: !401)
!404 = !DILocalVariable(name: "addr", arg: 2, scope: !398, file: !140, line: 204, type: !143)
!405 = !DILocation(line: 204, column: 52, scope: !398)
!406 = !DILocation(line: 204, column: 86, scope: !398)
!407 = !DILocation(line: 206, column: 19, scope: !398)
!408 = !DILocation(line: 206, column: 22, scope: !398)
!409 = !DILocation(line: 206, column: 15, scope: !398)
!410 = !DILocation(line: 207, column: 4, scope: !398)
!411 = !DILocation(line: 207, column: 9, scope: !398)
!412 = !DILocation(line: 207, column: 12, scope: !398)
!413 = !DILocation(line: 206, column: 44, scope: !398)
!414 = !DILocation(line: 207, column: 37, scope: !398)
!415 = !DILocation(line: 206, column: 2, scope: !398)
!416 = distinct !DISubprogram(name: "variable_test_bit", scope: !140, file: !140, line: 224, type: !399, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !417)
!417 = !{!418, !419, !420}
!418 = !DILocalVariable(name: "nr", arg: 1, scope: !416, file: !140, line: 224, type: !401)
!419 = !DILocalVariable(name: "addr", arg: 2, scope: !416, file: !140, line: 224, type: !143)
!420 = !DILocalVariable(name: "oldbit", scope: !416, file: !140, line: 226, type: !85)
!421 = !DILocation(line: 224, column: 52, scope: !416)
!422 = !DILocation(line: 224, column: 86, scope: !416)
!423 = !DILocation(line: 226, column: 2, scope: !416)
!424 = !DILocation(line: 226, column: 7, scope: !416)
!425 = !DILocation(line: 231, column: 33, scope: !416)
!426 = !DILocation(line: 231, column: 46, scope: !416)
!427 = !DILocation(line: 228, column: 2, scope: !416)
!428 = !{i64 2148205856, i64 2148205930}
!429 = !DILocation(line: 233, column: 9, scope: !416)
!430 = !DILocation(line: 234, column: 1, scope: !416)
!431 = !DILocation(line: 233, column: 2, scope: !416)
!432 = !DISubprogram(name: "cppc_get_perf_caps", scope: !167, file: !167, line: 148, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubroutineType(types: !434)
!434 = !{!17, !17, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!436 = !DISubprogram(name: "amd_get_highest_perf", scope: !437, file: !437, line: 700, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!438 = !DISubroutineType(types: !439)
!439 = !{!220}
!440 = distinct !DISubprogram(name: "div_u64", scope: !441, file: !441, line: 127, type: !442, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !444)
!441 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!442 = !DISubroutineType(types: !443)
!443 = !{!176, !176, !220}
!444 = !{!445, !446, !447}
!445 = !DILocalVariable(name: "dividend", arg: 1, scope: !440, file: !441, line: 127, type: !176)
!446 = !DILocalVariable(name: "divisor", arg: 2, scope: !440, file: !441, line: 127, type: !220)
!447 = !DILocalVariable(name: "remainder", scope: !440, file: !441, line: 129, type: !220)
!448 = !DILocation(line: 127, column: 31, scope: !440)
!449 = !DILocation(line: 127, column: 45, scope: !440)
!450 = !DILocation(line: 129, column: 2, scope: !440)
!451 = !DILocation(line: 129, column: 6, scope: !440)
!452 = !DILocation(line: 130, column: 21, scope: !440)
!453 = !DILocation(line: 130, column: 31, scope: !440)
!454 = !DILocation(line: 130, column: 9, scope: !440)
!455 = !DILocation(line: 131, column: 1, scope: !440)
!456 = !DILocation(line: 130, column: 2, scope: !440)
!457 = !DISubprogram(name: "freq_invariance_set_perf_ratio", scope: !458, file: !458, line: 224, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!459 = !DISubroutineType(types: !460)
!460 = !{null, !176, !85}
!461 = distinct !DISubprogram(name: "div_u64_rem", scope: !441, file: !441, line: 26, type: !462, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !465)
!462 = !DISubroutineType(types: !463)
!463 = !{!176, !176, !220, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!465 = !{!466, !467, !468}
!466 = !DILocalVariable(name: "dividend", arg: 1, scope: !461, file: !441, line: 26, type: !176)
!467 = !DILocalVariable(name: "divisor", arg: 2, scope: !461, file: !441, line: 26, type: !220)
!468 = !DILocalVariable(name: "remainder", arg: 3, scope: !461, file: !441, line: 26, type: !464)
!469 = !DILocation(line: 26, column: 35, scope: !461)
!470 = !DILocation(line: 26, column: 49, scope: !461)
!471 = !DILocation(line: 26, column: 63, scope: !461)
!472 = !DILocation(line: 28, column: 15, scope: !461)
!473 = !DILocation(line: 28, column: 26, scope: !461)
!474 = !DILocation(line: 28, column: 24, scope: !461)
!475 = !DILocation(line: 28, column: 3, scope: !461)
!476 = !DILocation(line: 28, column: 13, scope: !461)
!477 = !DILocation(line: 29, column: 9, scope: !461)
!478 = !DILocation(line: 29, column: 20, scope: !461)
!479 = !DILocation(line: 29, column: 18, scope: !461)
!480 = !DILocation(line: 29, column: 2, scope: !461)
