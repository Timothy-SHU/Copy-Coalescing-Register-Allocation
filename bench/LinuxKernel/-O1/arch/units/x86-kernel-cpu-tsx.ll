; ModuleID = 'arch/x86/kernel/cpu/tsx.c'
source_filename = "arch/x86/kernel/cpu/tsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { i64 }

@tsx_ctrl_state = hidden global i32 3, section ".data..ro_after_init", align 4, !dbg !0
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@cpu_caps_set = external dso_local global [24 x i32], align 16
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@.str = private unnamed_addr constant [4 x i8] c"tsx\00", align 1, !dbg !39
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !44
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !49
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !51
@.str.4 = private unnamed_addr constant [42 x i8] c"\013tsx: invalid option, defaulting to off\0A\00", align 1, !dbg !56
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @tsx_init() #0 section ".init.text" align 16 !dbg !70 {
entry:
  %arg = alloca [5 x i8], align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr %arg) #11, !dbg !76
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !74, metadata !DIExpression()), !dbg !77
  call void @llvm.memset.p0.i64(ptr align 1 %arg, i8 0, i64 5, i1 false), !dbg !77
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !78
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !75, metadata !DIExpression()), !dbg !79
  call void @tsx_dev_mode_disable() #12, !dbg !80
  br i1 false, label %cond.true, label %cond.false, !dbg !81

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !82

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 587, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !82
  br i1 %call, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 2, ptr @tsx_ctrl_state, align 4, !dbg !84
  call void @tsx_clear_cpuid() #12, !dbg !86
  call void @setup_clear_cpu_cap(i32 noundef 299) #12, !dbg !87
  call void @setup_clear_cpu_cap(i32 noundef 292) #12, !dbg !88
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !89

if.end:                                           ; preds = %cond.false, %cond.true
  %call1 = call i64 @x86_read_arch_cap_msr() #12, !dbg !90
  %and = and i64 %call1, 128, !dbg !92
  %tobool = icmp ne i64 %and, 0, !dbg !92
  br i1 %tobool, label %if.then2, label %if.else, !dbg !93

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !94

do.body:                                          ; preds = %if.then2
  call void @set_bit(i64 noundef 372, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !96
  call void @set_bit(i64 noundef 372, ptr noundef @cpu_caps_set) #12, !dbg !96
  br label %do.cond, !dbg !96

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !96

do.end:                                           ; preds = %do.cond
  br label %if.end3, !dbg !98

if.else:                                          ; preds = %if.end
  store i32 3, ptr @tsx_ctrl_state, align 4, !dbg !99
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !101

if.end3:                                          ; preds = %do.end
  %arraydecay = getelementptr inbounds [5 x i8], ptr %arg, i64 0, i64 0, !dbg !102
  %call4 = call i32 @cmdline_find_option(ptr noundef @boot_command_line, ptr noundef @.str, ptr noundef %arraydecay, i32 noundef 5) #12, !dbg !103
  store i32 %call4, ptr %ret, align 4, !dbg !104
  %0 = load i32, ptr %ret, align 4, !dbg !105
  %cmp = icmp sge i32 %0, 0, !dbg !107
  br i1 %cmp, label %if.then5, label %if.else29, !dbg !108

if.then5:                                         ; preds = %if.end3
  %arraydecay6 = getelementptr inbounds [5 x i8], ptr %arg, i64 0, i64 0, !dbg !109
  %call7 = call i32 @strcmp(ptr noundef %arraydecay6, ptr noundef @.str.1) #12, !dbg !112
  %tobool8 = icmp ne i32 %call7, 0, !dbg !112
  br i1 %tobool8, label %if.else10, label %if.then9, !dbg !113

if.then9:                                         ; preds = %if.then5
  store i32 0, ptr @tsx_ctrl_state, align 4, !dbg !114
  br label %if.end28, !dbg !116

if.else10:                                        ; preds = %if.then5
  %arraydecay11 = getelementptr inbounds [5 x i8], ptr %arg, i64 0, i64 0, !dbg !117
  %call12 = call i32 @strcmp(ptr noundef %arraydecay11, ptr noundef @.str.2) #12, !dbg !119
  %tobool13 = icmp ne i32 %call12, 0, !dbg !119
  br i1 %tobool13, label %if.else15, label %if.then14, !dbg !120

if.then14:                                        ; preds = %if.else10
  store i32 1, ptr @tsx_ctrl_state, align 4, !dbg !121
  br label %if.end27, !dbg !123

if.else15:                                        ; preds = %if.else10
  %arraydecay16 = getelementptr inbounds [5 x i8], ptr %arg, i64 0, i64 0, !dbg !124
  %call17 = call i32 @strcmp(ptr noundef %arraydecay16, ptr noundef @.str.3) #12, !dbg !126
  %tobool18 = icmp ne i32 %call17, 0, !dbg !126
  br i1 %tobool18, label %if.else21, label %if.then19, !dbg !127

if.then19:                                        ; preds = %if.else15
  %call20 = call i32 @x86_get_tsx_auto_mode() #12, !dbg !128
  store i32 %call20, ptr @tsx_ctrl_state, align 4, !dbg !130
  br label %if.end26, !dbg !131

if.else21:                                        ; preds = %if.else15
  store i32 1, ptr @tsx_ctrl_state, align 4, !dbg !132
  br label %do.body22, !dbg !134

do.body22:                                        ; preds = %if.else21
  br label %do.cond23, !dbg !136

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !136

do.end24:                                         ; preds = %do.cond23
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #13, !dbg !134
  store i32 %call25, ptr %tmp, align 4, !dbg !136
  %1 = load i32, ptr %tmp, align 4, !dbg !134
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.then19
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then14
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then9
  br label %if.end30, !dbg !138

if.else29:                                        ; preds = %if.end3
  store i32 1, ptr @tsx_ctrl_state, align 4, !dbg !139
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.end28
  %2 = load i32, ptr @tsx_ctrl_state, align 4, !dbg !143
  %cmp31 = icmp eq i32 %2, 1, !dbg !145
  br i1 %cmp31, label %if.then32, label %if.else33, !dbg !146

if.then32:                                        ; preds = %if.end30
  call void @tsx_disable() #12, !dbg !147
  call void @setup_clear_cpu_cap(i32 noundef 299) #12, !dbg !149
  call void @setup_clear_cpu_cap(i32 noundef 292) #12, !dbg !150
  br label %if.end43, !dbg !151

if.else33:                                        ; preds = %if.end30
  %3 = load i32, ptr @tsx_ctrl_state, align 4, !dbg !152
  %cmp34 = icmp eq i32 %3, 0, !dbg !154
  br i1 %cmp34, label %if.then35, label %if.end42, !dbg !155

if.then35:                                        ; preds = %if.else33
  call void @tsx_enable() #12, !dbg !156
  br label %do.body36, !dbg !158

do.body36:                                        ; preds = %if.then35
  call void @set_bit(i64 noundef 299, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !159
  call void @set_bit(i64 noundef 299, ptr noundef @cpu_caps_set) #12, !dbg !159
  br label %do.cond37, !dbg !159

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !159

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !161

do.body39:                                        ; preds = %do.end38
  call void @set_bit(i64 noundef 292, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !162
  call void @set_bit(i64 noundef 292, ptr noundef @cpu_caps_set) #12, !dbg !162
  br label %do.cond40, !dbg !162

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !162

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !164

if.end42:                                         ; preds = %do.end41, %if.else33
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !165
  br label %cleanup, !dbg !165

cleanup:                                          ; preds = %if.end43, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !165
  call void @llvm.lifetime.end.p0(i64 5, ptr %arg) #11, !dbg !165
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !165

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsx_dev_mode_disable() #4 align 16 !dbg !166 {
entry:
  %mcu_opt_ctrl = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcu_opt_ctrl) #11, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %mcu_opt_ctrl, metadata !168, metadata !DIExpression()), !dbg !170
  br i1 false, label %cond.true, label %cond.false, !dbg !171

cond.true:                                        ; preds = %entry
  br i1 true, label %lor.lhs.false, label %if.then, !dbg !173

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 726, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !173
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !171

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !174

cond.true1:                                       ; preds = %lor.lhs.false
  br i1 false, label %lor.lhs.false9, label %if.then, !dbg !175

cond.false2:                                      ; preds = %lor.lhs.false
  br i1 false, label %cond.true3, label %cond.false7, !dbg !174

cond.true3:                                       ; preds = %cond.false2
  br i1 false, label %cond.true4, label %cond.false5, !dbg !175

cond.true4:                                       ; preds = %cond.true3
  br i1 true, label %lor.lhs.false9, label %if.then, !dbg !175

cond.false5:                                      ; preds = %cond.true3
  %call6 = call zeroext i1 @arch_test_bit(i64 noundef 372, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !175
  br i1 %call6, label %lor.lhs.false9, label %if.then, !dbg !175

cond.false7:                                      ; preds = %cond.false2
  %call8 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 372) #12, !dbg !175
  br i1 %call8, label %lor.lhs.false9, label %if.then, !dbg !174

lor.lhs.false9:                                   ; preds = %cond.false7, %cond.false5, %cond.true4, %cond.true1
  br i1 false, label %cond.true10, label %cond.false11, !dbg !176

cond.true10:                                      ; preds = %lor.lhs.false9
  br i1 false, label %if.end, label %if.then, !dbg !177

cond.false11:                                     ; preds = %lor.lhs.false9
  br i1 false, label %cond.true12, label %cond.false16, !dbg !176

cond.true12:                                      ; preds = %cond.false11
  br i1 false, label %cond.true13, label %cond.false14, !dbg !177

cond.true13:                                      ; preds = %cond.true12
  br i1 true, label %if.end, label %if.then, !dbg !177

cond.false14:                                     ; preds = %cond.true12
  %call15 = call zeroext i1 @arch_test_bit(i64 noundef 585, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !177
  br i1 %call15, label %if.end, label %if.then, !dbg !177

cond.false16:                                     ; preds = %cond.false11
  %call17 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 585) #12, !dbg !177
  br i1 %call17, label %if.end, label %if.then, !dbg !176

if.then:                                          ; preds = %cond.false16, %cond.false14, %cond.true13, %cond.true10, %cond.false7, %cond.false5, %cond.true4, %cond.true1, %cond.false, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !178

if.end:                                           ; preds = %cond.false16, %cond.false14, %cond.true13, %cond.true10
  %call18 = call i64 @native_read_msr(i32 noundef 291) #12, !dbg !179
  store i64 %call18, ptr %mcu_opt_ctrl, align 8, !dbg !179
  %0 = load i64, ptr %mcu_opt_ctrl, align 8, !dbg !180
  %and = and i64 %0, 2, !dbg !182
  %tobool = icmp ne i64 %and, 0, !dbg !182
  br i1 %tobool, label %if.then19, label %if.end21, !dbg !183

if.then19:                                        ; preds = %if.end
  %1 = load i64, ptr %mcu_opt_ctrl, align 8, !dbg !184
  %and20 = and i64 %1, -3, !dbg !184
  store i64 %and20, ptr %mcu_opt_ctrl, align 8, !dbg !184
  %2 = load i64, ptr %mcu_opt_ctrl, align 8, !dbg !186
  call void @wrmsrl(i32 noundef 291, i64 noundef %2) #12, !dbg !187
  br label %do.body, !dbg !188

do.body:                                          ; preds = %if.then19
  call void @set_bit(i64 noundef 587, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !189
  call void @set_bit(i64 noundef 587, ptr noundef @cpu_caps_set) #12, !dbg !189
  br label %do.cond, !dbg !189

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !189

do.end:                                           ; preds = %do.cond
  br label %if.end21, !dbg !191

if.end21:                                         ; preds = %do.end, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !192
  br label %cleanup, !dbg !192

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcu_opt_ctrl) #11, !dbg !192
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !192

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !193 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !204, metadata !DIExpression()), !dbg !206
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !205, metadata !DIExpression()), !dbg !207
  %0 = load i64, ptr %nr.addr, align 8, !dbg !208
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !209
  br i1 %1, label %cond.true, label %cond.false, !dbg !209

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !210
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !211
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !212
  %conv = zext i1 %call to i32, !dbg !212
  br label %cond.end, !dbg !209

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !213
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !214
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !215
  %conv2 = zext i1 %call1 to i32, !dbg !215
  br label %cond.end, !dbg !209

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !209
  %tobool = icmp ne i32 %cond, 0, !dbg !209
  ret i1 %tobool, !dbg !216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsx_clear_cpuid() #4 align 16 !dbg !217 {
entry:
  %msr = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #11, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !219, metadata !DIExpression()), !dbg !221
  br i1 false, label %cond.true, label %cond.false, !dbg !222

cond.true:                                        ; preds = %entry
  br i1 true, label %land.lhs.true, label %if.else, !dbg !224

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 587, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !224
  br i1 %call, label %land.lhs.true, label %if.else, !dbg !222

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !225

cond.true1:                                       ; preds = %land.lhs.true
  br i1 true, label %if.then, label %if.else, !dbg !226

cond.false2:                                      ; preds = %land.lhs.true
  %call3 = call zeroext i1 @arch_test_bit(i64 noundef 589, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !226
  br i1 %call3, label %if.then, label %if.else, !dbg !225

if.then:                                          ; preds = %cond.false2, %cond.true1
  %call4 = call i64 @native_read_msr(i32 noundef 271) #12, !dbg !227
  store i64 %call4, ptr %msr, align 8, !dbg !227
  %0 = load i64, ptr %msr, align 8, !dbg !229
  %or = or i64 %0, 2, !dbg !229
  store i64 %or, ptr %msr, align 8, !dbg !229
  %1 = load i64, ptr %msr, align 8, !dbg !230
  call void @wrmsrl(i32 noundef 271, i64 noundef %1) #12, !dbg !231
  br label %if.end16, !dbg !232

if.else:                                          ; preds = %cond.false2, %cond.true1, %cond.false, %cond.true
  br i1 false, label %cond.true5, label %cond.false6, !dbg !233

cond.true5:                                       ; preds = %if.else
  br i1 false, label %if.then13, label %if.end, !dbg !234

cond.false6:                                      ; preds = %if.else
  br i1 false, label %cond.true7, label %cond.false11, !dbg !233

cond.true7:                                       ; preds = %cond.false6
  br i1 false, label %cond.true8, label %cond.false9, !dbg !234

cond.true8:                                       ; preds = %cond.true7
  br i1 true, label %if.then13, label %if.end, !dbg !234

cond.false9:                                      ; preds = %cond.true7
  %call10 = call zeroext i1 @arch_test_bit(i64 noundef 372, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !234
  br i1 %call10, label %if.then13, label %if.end, !dbg !234

cond.false11:                                     ; preds = %cond.false6
  %call12 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 372) #12, !dbg !234
  br i1 %call12, label %if.then13, label %if.end, !dbg !233

if.then13:                                        ; preds = %cond.false11, %cond.false9, %cond.true8, %cond.true5
  %call14 = call i64 @native_read_msr(i32 noundef 290) #12, !dbg !236
  store i64 %call14, ptr %msr, align 8, !dbg !236
  %2 = load i64, ptr %msr, align 8, !dbg !238
  %or15 = or i64 %2, 2, !dbg !238
  store i64 %or15, ptr %msr, align 8, !dbg !238
  %3 = load i64, ptr %msr, align 8, !dbg !239
  call void @wrmsrl(i32 noundef 290, i64 noundef %3) #12, !dbg !240
  br label %if.end, !dbg !241

if.end:                                           ; preds = %if.then13, %cond.false11, %cond.false9, %cond.true8, %cond.true5
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #11, !dbg !242
  ret void, !dbg !242
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !243 dso_local void @setup_clear_cpu_cap(i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !247 dso_local i64 @x86_read_arch_cap_msr() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !251 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !257, metadata !DIExpression()), !dbg !259
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !258, metadata !DIExpression()), !dbg !260
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !261
  %1 = load i64, ptr %nr.addr, align 8, !dbg !262
  %div = sdiv i64 %1, 64, !dbg !262
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !263
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !264
  %2 = load i64, ptr %nr.addr, align 8, !dbg !265
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !266
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !269 dso_local i32 @cmdline_find_option(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !274 dso_local i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @x86_get_tsx_auto_mode() #4 align 16 !dbg !278 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !281

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !282

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 726, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !282
  br i1 %call, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 1, ptr %retval, align 4, !dbg !284
  br label %return, !dbg !284

if.end:                                           ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !285
  br label %return, !dbg !285

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, ptr %retval, align 4, !dbg !286
  ret i32 %0, !dbg !286
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !287 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsx_disable() #4 align 16 !dbg !291 {
entry:
  %tsx = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsx) #11, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %tsx, metadata !293, metadata !DIExpression()), !dbg !295
  %call = call i64 @native_read_msr(i32 noundef 290) #12, !dbg !296
  store i64 %call, ptr %tsx, align 8, !dbg !296
  %0 = load i64, ptr %tsx, align 8, !dbg !297
  %or = or i64 %0, 1, !dbg !297
  store i64 %or, ptr %tsx, align 8, !dbg !297
  %1 = load i64, ptr %tsx, align 8, !dbg !298
  %or1 = or i64 %1, 2, !dbg !298
  store i64 %or1, ptr %tsx, align 8, !dbg !298
  %2 = load i64, ptr %tsx, align 8, !dbg !299
  call void @wrmsrl(i32 noundef 290, i64 noundef %2) #12, !dbg !300
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsx) #11, !dbg !301
  ret void, !dbg !301
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsx_enable() #4 align 16 !dbg !302 {
entry:
  %tsx = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsx) #11, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %tsx, metadata !304, metadata !DIExpression()), !dbg !306
  %call = call i64 @native_read_msr(i32 noundef 290) #12, !dbg !307
  store i64 %call, ptr %tsx, align 8, !dbg !307
  %0 = load i64, ptr %tsx, align 8, !dbg !308
  %and = and i64 %0, -2, !dbg !308
  store i64 %and, ptr %tsx, align 8, !dbg !308
  %1 = load i64, ptr %tsx, align 8, !dbg !309
  %and1 = and i64 %1, -3, !dbg !309
  store i64 %and1, ptr %tsx, align 8, !dbg !309
  %2 = load i64, ptr %tsx, align 8, !dbg !310
  call void @wrmsrl(i32 noundef 290, i64 noundef %2) #12, !dbg !311
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsx) #11, !dbg !312
  ret void, !dbg !312
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tsx_ap_init() #4 align 16 !dbg !313 {
entry:
  call void @tsx_dev_mode_disable() #12, !dbg !314
  %0 = load i32, ptr @tsx_ctrl_state, align 4, !dbg !315
  %cmp = icmp eq i32 %0, 0, !dbg !317
  br i1 %cmp, label %if.then, label %if.else, !dbg !318

if.then:                                          ; preds = %entry
  call void @tsx_enable() #12, !dbg !319
  br label %if.end7, !dbg !319

if.else:                                          ; preds = %entry
  %1 = load i32, ptr @tsx_ctrl_state, align 4, !dbg !320
  %cmp1 = icmp eq i32 %1, 1, !dbg !322
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !323

if.then2:                                         ; preds = %if.else
  call void @tsx_disable() #12, !dbg !324
  br label %if.end6, !dbg !324

if.else3:                                         ; preds = %if.else
  %2 = load i32, ptr @tsx_ctrl_state, align 4, !dbg !325
  %cmp4 = icmp eq i32 %2, 2, !dbg !327
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !328

if.then5:                                         ; preds = %if.else3
  call void @tsx_clear_cpuid() #12, !dbg !329
  br label %if.end, !dbg !329

if.end:                                           ; preds = %if.then5, %if.else3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #5 align 16 !dbg !331 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !338, metadata !DIExpression()), !dbg !341
  %0 = load i16, ptr %bit.addr, align 2, !dbg !342
  %1 = load i16, ptr %bit.addr, align 2, !dbg !343
  %conv = zext i16 %1 to i32, !dbg !343
  %and = and i32 %conv, 7, !dbg !344
  %shl = shl i32 1, %and, !dbg !345
  %2 = load i16, ptr %bit.addr, align 2, !dbg !346
  %conv1 = zext i16 %2 to i32, !dbg !346
  %shr = ashr i32 %conv1, 3, !dbg !347
  %idxprom = sext i32 %shr to i64, !dbg !348
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !348
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #11
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !349, !srcloc !350

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !349

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !339), !dbg !351
  store i1 true, ptr %retval, align 1, !dbg !352
  br label %return, !dbg !352

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !340), !dbg !353
  store i1 false, ptr %retval, align 1, !dbg !354
  br label %return, !dbg !354

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !355
  ret i1 %3, !dbg !355
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #8 align 16 !dbg !356 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !361, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !364
  call void @llvm.dbg.declare(metadata ptr %val, metadata !362, metadata !DIExpression()), !dbg !365
  %0 = load i32, ptr %msr.addr, align 4, !dbg !366
  %call = call i64 @__rdmsr(i32 noundef %0) #12, !dbg !367
  store i64 %call, ptr %val, align 8, !dbg !368
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #12, !dbg !369
  br i1 %call1, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !372
  %2 = load i64, ptr %val, align 8, !dbg !373
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #12, !dbg !374
  br label %if.end, !dbg !374

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !375
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !376
  ret i64 %3, !dbg !377
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #8 align 16 !dbg !378 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !382, metadata !DIExpression()), !dbg !384
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !383, metadata !DIExpression()), !dbg !385
  %0 = load i32, ptr %msr.addr, align 4, !dbg !386
  %1 = load i64, ptr %val.addr, align 8, !dbg !387
  %and = and i64 %1, 4294967295, !dbg !388
  %conv = trunc i64 %and to i32, !dbg !389
  %2 = load i64, ptr %val.addr, align 8, !dbg !390
  %shr = lshr i64 %2, 32, !dbg !391
  %conv1 = trunc i64 %shr to i32, !dbg !392
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #12, !dbg !393
  ret void, !dbg !394
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #5 align 16 !dbg !395 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !397, metadata !DIExpression()), !dbg !400
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #11, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %low, metadata !398, metadata !DIExpression()), !dbg !401
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #11, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %high, metadata !399, metadata !DIExpression()), !dbg !401
  %0 = load i32, ptr %msr.addr, align 4, !dbg !402
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !403, !srcloc !404
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !403
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !403
  store i64 %asmresult, ptr %low, align 8, !dbg !403
  store i64 %asmresult1, ptr %high, align 8, !dbg !403
  %2 = load i64, ptr %low, align 8, !dbg !405
  %3 = load i64, ptr %high, align 8, !dbg !405
  %shl = shl i64 %3, 32, !dbg !405
  %or = or i64 %2, %shl, !dbg !405
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #11, !dbg !406
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #11, !dbg !406
  ret i64 %or, !dbg !407
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !408 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load ptr, ptr %key.addr, align 8, !dbg !439
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !440
  ret i1 %call, !dbg !441
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !442 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !445 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !450, metadata !DIExpression()), !dbg !453
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !451, metadata !DIExpression()), !dbg !454
  %0 = load ptr, ptr %key.addr, align 8, !dbg !455
  %1 = load i8, ptr %branch.addr, align 1, !dbg !456, !range !457, !noundef !458
  %tobool = trunc i8 %1 to i1, !dbg !456
  %conv = zext i1 %tobool to i32, !dbg !456
  %or = or i32 2, %conv, !dbg !459
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !460, !srcloc !461

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !462
  br label %return, !dbg !462

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !452), !dbg !463
  store i1 true, ptr %retval, align 1, !dbg !464
  br label %return, !dbg !464

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !465
  ret i1 %2, !dbg !465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #8 align 16 !dbg !466 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !470, metadata !DIExpression()), !dbg !473
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !471, metadata !DIExpression()), !dbg !474
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !472, metadata !DIExpression()), !dbg !475
  %0 = load i32, ptr %msr.addr, align 4, !dbg !476
  %1 = load i32, ptr %low.addr, align 4, !dbg !477
  %2 = load i32, ptr %high.addr, align 4, !dbg !478
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #12, !dbg !479
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #12, !dbg !480
  br i1 %call, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !483
  %4 = load i32, ptr %high.addr, align 4, !dbg !484
  %conv = zext i32 %4 to i64, !dbg !485
  %shl = shl i64 %conv, 32, !dbg !486
  %5 = load i32, ptr %low.addr, align 4, !dbg !487
  %conv1 = zext i32 %5 to i64, !dbg !487
  %or = or i64 %shl, %conv1, !dbg !488
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #12, !dbg !489
  br label %if.end, !dbg !489

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !490
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #5 align 16 !dbg !491 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !493, metadata !DIExpression()), !dbg !496
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !494, metadata !DIExpression()), !dbg !497
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !495, metadata !DIExpression()), !dbg !498
  %0 = load i32, ptr %msr.addr, align 4, !dbg !499
  %1 = load i32, ptr %low.addr, align 4, !dbg !500
  %2 = load i32, ptr %high.addr, align 4, !dbg !501
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #11, !dbg !502, !srcloc !503
  ret void, !dbg !504
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !505 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !506 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !510, metadata !DIExpression()), !dbg !512
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !511, metadata !DIExpression()), !dbg !513
  %0 = load i64, ptr %nr.addr, align 8, !dbg !514
  %and = and i64 %0, 63, !dbg !515
  %shl = shl i64 1, %and, !dbg !516
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !517
  %2 = load i64, ptr %nr.addr, align 8, !dbg !518
  %shr = ashr i64 %2, 6, !dbg !519
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !517
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !517
  %and1 = and i64 %shl, %3, !dbg !520
  %cmp = icmp ne i64 %and1, 0, !dbg !521
  ret i1 %cmp, !dbg !522
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !523 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !525, metadata !DIExpression()), !dbg !528
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !526, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !527, metadata !DIExpression()), !dbg !531
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !532
  %1 = load i64, ptr %nr.addr, align 8, !dbg !533
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !534, !srcloc !535
  %3 = icmp ult i8 %2, 2, !dbg !534
  call void @llvm.assume(i1 %3), !dbg !534
  store i8 %2, ptr %oldbit, align 1, !dbg !534
  %4 = load i8, ptr %oldbit, align 1, !dbg !536, !range !457, !noundef !458
  %tobool = trunc i8 %4 to i1, !dbg !536
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !537
  ret i1 %tobool, !dbg !538
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !539 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !551, metadata !DIExpression()), !dbg !553
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !552, metadata !DIExpression()), !dbg !554
  %0 = load ptr, ptr %v.addr, align 8, !dbg !555
  %1 = load i64, ptr %size.addr, align 8, !dbg !556
  %conv = trunc i64 %1 to i32, !dbg !556
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !557
  %2 = load ptr, ptr %v.addr, align 8, !dbg !558
  %3 = load i64, ptr %size.addr, align 8, !dbg !558
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !558
  ret void, !dbg !559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !560 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !562, metadata !DIExpression()), !dbg !564
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !563, metadata !DIExpression()), !dbg !565
  %0 = load i64, ptr %nr.addr, align 8, !dbg !566
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !568
  br i1 %1, label %if.then, label %if.else, !dbg !569

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !570
  %3 = load i64, ptr %nr.addr, align 8, !dbg !570
  %shr = ashr i64 %3, 3, !dbg !570
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !570
  %4 = load i64, ptr %nr.addr, align 8, !dbg !572
  %and = and i64 %4, 7, !dbg !572
  %sh_prom = trunc i64 %and to i32, !dbg !572
  %shl = shl i32 1, %sh_prom, !dbg !572
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #11, !dbg !573, !srcloc !574
  br label %if.end, !dbg !575

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !576
  %6 = load i64, ptr %nr.addr, align 8, !dbg !578
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !579, !srcloc !580
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !581
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !582 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !587, metadata !DIExpression()), !dbg !589
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !588, metadata !DIExpression()), !dbg !590
  ret i1 true, !dbg !591
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !592 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !597, metadata !DIExpression()), !dbg !600
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !598, metadata !DIExpression()), !dbg !601
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !599, metadata !DIExpression()), !dbg !602
  ret void, !dbg !603
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tsx_ctrl_state", scope: !2, file: !3, line: 21, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.tsx.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/tsx\22 -D KBUILD_BASENAME=\22tsx\22 -D KBUILD_MODNAME=\22tsx\22 -D __KBUILD_MODNAME=kmod_tsx -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/tsx.ll arch/x86/kernel/cpu/tsx.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/tsx.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "951f1ea0cd116871a0a359ade59fc5e9")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tsx_ctrl_states", file: !6, line: 48, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "arch/x86/kernel/cpu/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "363c46d03d8f48b64cec5a89455862ec")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TSX_CTRL_ENABLE", value: 0)
!10 = !DIEnumerator(name: "TSX_CTRL_DISABLE", value: 1)
!11 = !DIEnumerator(name: "TSX_CTRL_RTM_ALWAYS_ABORT", value: 2)
!12 = !DIEnumerator(name: "TSX_CTRL_NOT_SUPPORTED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0)
!17 = !DIEnumerator(name: "true", value: 1)
!18 = !{!19, !20, !22, !25, !29, !32, !34, !35}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !31)
!31 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!37 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!38 = !{!0, !39, !44, !49, !51, !56}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 32, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 24, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 3)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !41, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 40, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 5)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 336, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 42)
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 8, !"cf-protection-branch", i32 1}
!65 = !{i32 4, !"function_return_thunk_extern", i32 1}
!66 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!67 = !{i32 1, !"Code Model", i32 2}
!68 = !{i32 1, !"override-stack-alignment", i32 8}
!69 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!70 = distinct !DISubprogram(name: "tsx_init", scope: !3, file: !3, line: 158, type: !71, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{null}
!73 = !{!74, !75}
!74 = !DILocalVariable(name: "arg", scope: !70, file: !3, line: 160, type: !53)
!75 = !DILocalVariable(name: "ret", scope: !70, file: !3, line: 161, type: !19)
!76 = !DILocation(line: 160, column: 2, scope: !70)
!77 = !DILocation(line: 160, column: 7, scope: !70)
!78 = !DILocation(line: 161, column: 2, scope: !70)
!79 = !DILocation(line: 161, column: 6, scope: !70)
!80 = !DILocation(line: 163, column: 2, scope: !70)
!81 = !DILocation(line: 170, column: 6, scope: !70)
!82 = !DILocation(line: 170, column: 6, scope: !83)
!83 = distinct !DILexicalBlock(scope: !70, file: !3, line: 170, column: 6)
!84 = !DILocation(line: 171, column: 18, scope: !85)
!85 = distinct !DILexicalBlock(scope: !83, file: !3, line: 170, column: 50)
!86 = !DILocation(line: 172, column: 3, scope: !85)
!87 = !DILocation(line: 173, column: 3, scope: !85)
!88 = !DILocation(line: 174, column: 3, scope: !85)
!89 = !DILocation(line: 175, column: 3, scope: !85)
!90 = !DILocation(line: 189, column: 6, scope: !91)
!91 = distinct !DILexicalBlock(scope: !70, file: !3, line: 189, column: 6)
!92 = !DILocation(line: 189, column: 30, scope: !91)
!93 = !DILocation(line: 189, column: 6, scope: !70)
!94 = !DILocation(line: 190, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !3, line: 189, column: 55)
!96 = !DILocation(line: 190, column: 3, scope: !97)
!97 = distinct !DILexicalBlock(scope: !95, file: !3, line: 190, column: 3)
!98 = !DILocation(line: 191, column: 2, scope: !95)
!99 = !DILocation(line: 192, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !91, file: !3, line: 191, column: 9)
!101 = !DILocation(line: 193, column: 3, scope: !100)
!102 = !DILocation(line: 196, column: 54, scope: !70)
!103 = !DILocation(line: 196, column: 8, scope: !70)
!104 = !DILocation(line: 196, column: 6, scope: !70)
!105 = !DILocation(line: 197, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !70, file: !3, line: 197, column: 6)
!107 = !DILocation(line: 197, column: 10, scope: !106)
!108 = !DILocation(line: 197, column: 6, scope: !70)
!109 = !DILocation(line: 198, column: 15, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 198, column: 7)
!111 = distinct !DILexicalBlock(scope: !106, file: !3, line: 197, column: 16)
!112 = !DILocation(line: 198, column: 8, scope: !110)
!113 = !DILocation(line: 198, column: 7, scope: !111)
!114 = !DILocation(line: 199, column: 19, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !3, line: 198, column: 27)
!116 = !DILocation(line: 200, column: 3, scope: !115)
!117 = !DILocation(line: 200, column: 22, scope: !118)
!118 = distinct !DILexicalBlock(scope: !110, file: !3, line: 200, column: 14)
!119 = !DILocation(line: 200, column: 15, scope: !118)
!120 = !DILocation(line: 200, column: 14, scope: !110)
!121 = !DILocation(line: 201, column: 19, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !3, line: 200, column: 35)
!123 = !DILocation(line: 202, column: 3, scope: !122)
!124 = !DILocation(line: 202, column: 22, scope: !125)
!125 = distinct !DILexicalBlock(scope: !118, file: !3, line: 202, column: 14)
!126 = !DILocation(line: 202, column: 15, scope: !125)
!127 = !DILocation(line: 202, column: 14, scope: !118)
!128 = !DILocation(line: 203, column: 21, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 202, column: 36)
!130 = !DILocation(line: 203, column: 19, scope: !129)
!131 = !DILocation(line: 204, column: 3, scope: !129)
!132 = !DILocation(line: 205, column: 19, scope: !133)
!133 = distinct !DILexicalBlock(scope: !125, file: !3, line: 204, column: 10)
!134 = !DILocation(line: 206, column: 4, scope: !135)
!135 = distinct !DILexicalBlock(scope: !133, file: !3, line: 206, column: 4)
!136 = !DILocation(line: 206, column: 4, scope: !137)
!137 = distinct !DILexicalBlock(scope: !135, file: !3, line: 206, column: 4)
!138 = !DILocation(line: 208, column: 2, scope: !111)
!139 = !DILocation(line: 213, column: 19, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 212, column: 12)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 210, column: 7)
!142 = distinct !DILexicalBlock(scope: !106, file: !3, line: 208, column: 9)
!143 = !DILocation(line: 218, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !70, file: !3, line: 218, column: 6)
!145 = !DILocation(line: 218, column: 21, scope: !144)
!146 = !DILocation(line: 218, column: 6, scope: !70)
!147 = !DILocation(line: 219, column: 3, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !3, line: 218, column: 42)
!149 = !DILocation(line: 226, column: 3, scope: !148)
!150 = !DILocation(line: 227, column: 3, scope: !148)
!151 = !DILocation(line: 228, column: 2, scope: !148)
!152 = !DILocation(line: 228, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !144, file: !3, line: 228, column: 13)
!154 = !DILocation(line: 228, column: 28, scope: !153)
!155 = !DILocation(line: 228, column: 13, scope: !144)
!156 = !DILocation(line: 236, column: 3, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 228, column: 48)
!158 = !DILocation(line: 242, column: 3, scope: !157)
!159 = !DILocation(line: 242, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !3, line: 242, column: 3)
!161 = !DILocation(line: 243, column: 3, scope: !157)
!162 = !DILocation(line: 243, column: 3, scope: !163)
!163 = distinct !DILexicalBlock(scope: !157, file: !3, line: 243, column: 3)
!164 = !DILocation(line: 244, column: 2, scope: !157)
!165 = !DILocation(line: 245, column: 1, scope: !70)
!166 = distinct !DISubprogram(name: "tsx_dev_mode_disable", scope: !3, file: !3, line: 139, type: !71, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!167 = !{!168}
!168 = !DILocalVariable(name: "mcu_opt_ctrl", scope: !166, file: !3, line: 141, type: !29)
!169 = !DILocation(line: 141, column: 2, scope: !166)
!170 = !DILocation(line: 141, column: 6, scope: !166)
!171 = !DILocation(line: 144, column: 37, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !3, line: 144, column: 6)
!173 = !DILocation(line: 144, column: 7, scope: !172)
!174 = !DILocation(line: 145, column: 53, scope: !172)
!175 = !DILocation(line: 145, column: 7, scope: !172)
!176 = !DILocation(line: 144, column: 6, scope: !166)
!177 = !DILocation(line: 146, column: 7, scope: !172)
!178 = !DILocation(line: 147, column: 3, scope: !172)
!179 = !DILocation(line: 149, column: 2, scope: !166)
!180 = !DILocation(line: 151, column: 6, scope: !181)
!181 = distinct !DILexicalBlock(scope: !166, file: !3, line: 151, column: 6)
!182 = !DILocation(line: 151, column: 19, scope: !181)
!183 = !DILocation(line: 151, column: 6, scope: !166)
!184 = !DILocation(line: 152, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 151, column: 32)
!186 = !DILocation(line: 153, column: 33, scope: !185)
!187 = !DILocation(line: 153, column: 3, scope: !185)
!188 = !DILocation(line: 154, column: 3, scope: !185)
!189 = !DILocation(line: 154, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 154, column: 3)
!191 = !DILocation(line: 155, column: 2, scope: !185)
!192 = !DILocation(line: 156, column: 1, scope: !166)
!193 = distinct !DISubprogram(name: "arch_test_bit", scope: !194, file: !194, line: 237, type: !195, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!194 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !21, !200}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !198, line: 35, baseType: !199)
!198 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!199 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "nr", arg: 1, scope: !193, file: !194, line: 237, type: !21)
!205 = !DILocalVariable(name: "addr", arg: 2, scope: !193, file: !194, line: 237, type: !200)
!206 = !DILocation(line: 237, column: 29, scope: !193)
!207 = !DILocation(line: 237, column: 63, scope: !193)
!208 = !DILocation(line: 239, column: 30, scope: !193)
!209 = !DILocation(line: 239, column: 9, scope: !193)
!210 = !DILocation(line: 239, column: 54, scope: !193)
!211 = !DILocation(line: 239, column: 58, scope: !193)
!212 = !DILocation(line: 239, column: 36, scope: !193)
!213 = !DILocation(line: 240, column: 26, scope: !193)
!214 = !DILocation(line: 240, column: 30, scope: !193)
!215 = !DILocation(line: 240, column: 8, scope: !193)
!216 = !DILocation(line: 239, column: 2, scope: !193)
!217 = distinct !DISubprogram(name: "tsx_clear_cpuid", scope: !3, file: !3, line: 108, type: !71, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!218 = !{!219}
!219 = !DILocalVariable(name: "msr", scope: !217, file: !3, line: 110, type: !29)
!220 = !DILocation(line: 110, column: 2, scope: !217)
!221 = !DILocation(line: 110, column: 6, scope: !217)
!222 = !DILocation(line: 116, column: 49, scope: !223)
!223 = distinct !DILexicalBlock(scope: !217, file: !3, line: 116, column: 6)
!224 = !DILocation(line: 116, column: 6, scope: !223)
!225 = !DILocation(line: 116, column: 6, scope: !217)
!226 = !DILocation(line: 117, column: 6, scope: !223)
!227 = !DILocation(line: 118, column: 3, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !3, line: 117, column: 49)
!229 = !DILocation(line: 119, column: 7, scope: !228)
!230 = !DILocation(line: 120, column: 31, scope: !228)
!231 = !DILocation(line: 120, column: 3, scope: !228)
!232 = !DILocation(line: 121, column: 2, scope: !228)
!233 = !DILocation(line: 121, column: 13, scope: !223)
!234 = !DILocation(line: 121, column: 13, scope: !235)
!235 = distinct !DILexicalBlock(scope: !223, file: !3, line: 121, column: 13)
!236 = !DILocation(line: 122, column: 3, scope: !237)
!237 = distinct !DILexicalBlock(scope: !235, file: !3, line: 121, column: 60)
!238 = !DILocation(line: 123, column: 7, scope: !237)
!239 = !DILocation(line: 124, column: 29, scope: !237)
!240 = !DILocation(line: 124, column: 3, scope: !237)
!241 = !DILocation(line: 125, column: 2, scope: !237)
!242 = !DILocation(line: 126, column: 1, scope: !217)
!243 = !DISubprogram(name: "setup_clear_cpu_cap", scope: !244, file: !244, line: 150, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!245 = !DISubroutineType(types: !246)
!246 = !{null, !7}
!247 = !DISubprogram(name: "x86_read_arch_cap_msr", scope: !248, file: !248, line: 78, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DIFile(filename: "./arch/x86/include/asm/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7621f2ef482a6250db9c8e206e21622e")
!249 = !DISubroutineType(types: !250)
!250 = !{!29}
!251 = distinct !DISubprogram(name: "set_bit", scope: !252, file: !252, line: 26, type: !253, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!252 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!253 = !DISubroutineType(types: !254)
!254 = !{null, !37, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!256 = !{!257, !258}
!257 = !DILocalVariable(name: "nr", arg: 1, scope: !251, file: !252, line: 26, type: !37)
!258 = !DILocalVariable(name: "addr", arg: 2, scope: !251, file: !252, line: 26, type: !255)
!259 = !DILocation(line: 26, column: 42, scope: !251)
!260 = !DILocation(line: 26, column: 70, scope: !251)
!261 = !DILocation(line: 28, column: 26, scope: !251)
!262 = !DILocation(line: 28, column: 33, scope: !251)
!263 = !DILocation(line: 28, column: 31, scope: !251)
!264 = !DILocation(line: 28, column: 2, scope: !251)
!265 = !DILocation(line: 29, column: 15, scope: !251)
!266 = !DILocation(line: 29, column: 19, scope: !251)
!267 = !DILocation(line: 29, column: 2, scope: !251)
!268 = !DILocation(line: 30, column: 1, scope: !251)
!269 = !DISubprogram(name: "cmdline_find_option", scope: !270, file: !270, line: 6, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DIFile(filename: "./arch/x86/include/asm/cmdline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d8909aa88a0777ea33f757b9bb1cc8")
!271 = !DISubroutineType(types: !272)
!272 = !{!19, !22, !22, !273, !19}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!274 = !DISubprogram(name: "strcmp", scope: !275, file: !275, line: 88, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!276 = !DISubroutineType(types: !277)
!277 = !{!19, !22, !22}
!278 = distinct !DISubprogram(name: "x86_get_tsx_auto_mode", scope: !3, file: !3, line: 62, type: !279, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!279 = !DISubroutineType(types: !280)
!280 = !{!5}
!281 = !DILocation(line: 64, column: 6, scope: !278)
!282 = !DILocation(line: 64, column: 6, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 64, column: 6)
!284 = !DILocation(line: 65, column: 3, scope: !283)
!285 = !DILocation(line: 67, column: 2, scope: !278)
!286 = !DILocation(line: 68, column: 1, scope: !278)
!287 = !DISubprogram(name: "_printk", scope: !288, file: !288, line: 153, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!289 = !DISubroutineType(types: !290)
!290 = !{!19, !22, null}
!291 = distinct !DISubprogram(name: "tsx_disable", scope: !3, file: !3, line: 23, type: !71, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!292 = !{!293}
!293 = !DILocalVariable(name: "tsx", scope: !291, file: !3, line: 25, type: !29)
!294 = !DILocation(line: 25, column: 2, scope: !291)
!295 = !DILocation(line: 25, column: 6, scope: !291)
!296 = !DILocation(line: 27, column: 2, scope: !291)
!297 = !DILocation(line: 30, column: 6, scope: !291)
!298 = !DILocation(line: 38, column: 6, scope: !291)
!299 = !DILocation(line: 40, column: 28, scope: !291)
!300 = !DILocation(line: 40, column: 2, scope: !291)
!301 = !DILocation(line: 41, column: 1, scope: !291)
!302 = distinct !DISubprogram(name: "tsx_enable", scope: !3, file: !3, line: 43, type: !71, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !303)
!303 = !{!304}
!304 = !DILocalVariable(name: "tsx", scope: !302, file: !3, line: 45, type: !29)
!305 = !DILocation(line: 45, column: 2, scope: !302)
!306 = !DILocation(line: 45, column: 6, scope: !302)
!307 = !DILocation(line: 47, column: 2, scope: !302)
!308 = !DILocation(line: 50, column: 6, scope: !302)
!309 = !DILocation(line: 57, column: 6, scope: !302)
!310 = !DILocation(line: 59, column: 28, scope: !302)
!311 = !DILocation(line: 59, column: 2, scope: !302)
!312 = !DILocation(line: 60, column: 1, scope: !302)
!313 = distinct !DISubprogram(name: "tsx_ap_init", scope: !3, file: !3, line: 247, type: !71, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!314 = !DILocation(line: 249, column: 2, scope: !313)
!315 = !DILocation(line: 251, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !3, line: 251, column: 6)
!317 = !DILocation(line: 251, column: 21, scope: !316)
!318 = !DILocation(line: 251, column: 6, scope: !313)
!319 = !DILocation(line: 252, column: 3, scope: !316)
!320 = !DILocation(line: 253, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 253, column: 11)
!322 = !DILocation(line: 253, column: 26, scope: !321)
!323 = !DILocation(line: 253, column: 11, scope: !316)
!324 = !DILocation(line: 254, column: 3, scope: !321)
!325 = !DILocation(line: 255, column: 11, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 255, column: 11)
!327 = !DILocation(line: 255, column: 26, scope: !326)
!328 = !DILocation(line: 255, column: 11, scope: !321)
!329 = !DILocation(line: 257, column: 3, scope: !326)
!330 = !DILocation(line: 258, column: 1, scope: !313)
!331 = distinct !DISubprogram(name: "_static_cpu_has", scope: !244, file: !244, line: 173, type: !332, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!332 = !DISubroutineType(types: !333)
!333 = !{!197, !334}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !336)
!336 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!337 = !{!338, !339, !340}
!338 = !DILocalVariable(name: "bit", arg: 1, scope: !331, file: !244, line: 173, type: !334)
!339 = !DILabel(scope: !331, name: "t_yes", file: !244, line: 187)
!340 = !DILabel(scope: !331, name: "t_no", file: !244, line: 189)
!341 = !DILocation(line: 173, column: 49, scope: !331)
!342 = !DILocation(line: 183, column: 24, scope: !331)
!343 = !DILocation(line: 184, column: 30, scope: !331)
!344 = !DILocation(line: 184, column: 34, scope: !331)
!345 = !DILocation(line: 184, column: 26, scope: !331)
!346 = !DILocation(line: 185, column: 70, scope: !331)
!347 = !DILocation(line: 185, column: 74, scope: !331)
!348 = !DILocation(line: 185, column: 25, scope: !331)
!349 = !DILocation(line: 175, column: 2, scope: !331)
!350 = !{i64 2149303109, i64 2149303142, i64 2149303148, i64 2149303164, i64 2149303183, i64 2149303214, i64 2149304167, i64 2149302756, i64 2149304173, i64 2149304221, i64 2149304285, i64 2149304349, i64 2149304406, i64 2149304613, i64 2149304661, i64 2149304725, i64 2149304789, i64 2149304846, i64 2149302874, i64 2149302899, i64 2149305056, i64 2149305184, i64 2149305117, i64 2149305198, i64 2149305212, i64 2149305328, i64 2149305273, i64 2149305342, i64 2149303033, i64 317721, i64 317761, i64 317770, i64 317820, i64 317841, i64 317861}
!351 = !DILocation(line: 187, column: 1, scope: !331)
!352 = !DILocation(line: 188, column: 2, scope: !331)
!353 = !DILocation(line: 189, column: 1, scope: !331)
!354 = !DILocation(line: 190, column: 2, scope: !331)
!355 = !DILocation(line: 191, column: 1, scope: !331)
!356 = distinct !DISubprogram(name: "native_read_msr", scope: !357, file: !357, line: 114, type: !358, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !360)
!357 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!358 = !DISubroutineType(types: !359)
!359 = !{!31, !7}
!360 = !{!361, !362}
!361 = !DILocalVariable(name: "msr", arg: 1, scope: !356, file: !357, line: 114, type: !7)
!362 = !DILocalVariable(name: "val", scope: !356, file: !357, line: 116, type: !31)
!363 = !DILocation(line: 114, column: 63, scope: !356)
!364 = !DILocation(line: 116, column: 2, scope: !356)
!365 = !DILocation(line: 116, column: 21, scope: !356)
!366 = !DILocation(line: 118, column: 16, scope: !356)
!367 = !DILocation(line: 118, column: 8, scope: !356)
!368 = !DILocation(line: 118, column: 6, scope: !356)
!369 = !DILocation(line: 120, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !356, file: !357, line: 120, column: 6)
!371 = !DILocation(line: 120, column: 6, scope: !356)
!372 = !DILocation(line: 121, column: 21, scope: !370)
!373 = !DILocation(line: 121, column: 26, scope: !370)
!374 = !DILocation(line: 121, column: 3, scope: !370)
!375 = !DILocation(line: 123, column: 9, scope: !356)
!376 = !DILocation(line: 124, column: 1, scope: !356)
!377 = !DILocation(line: 123, column: 2, scope: !356)
!378 = distinct !DISubprogram(name: "wrmsrl", scope: !357, file: !357, line: 260, type: !379, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !7, !29}
!381 = !{!382, !383}
!382 = !DILocalVariable(name: "msr", arg: 1, scope: !378, file: !357, line: 260, type: !7)
!383 = !DILocalVariable(name: "val", arg: 2, scope: !378, file: !357, line: 260, type: !29)
!384 = !DILocation(line: 260, column: 40, scope: !378)
!385 = !DILocation(line: 260, column: 49, scope: !378)
!386 = !DILocation(line: 262, column: 19, scope: !378)
!387 = !DILocation(line: 262, column: 30, scope: !378)
!388 = !DILocation(line: 262, column: 34, scope: !378)
!389 = !DILocation(line: 262, column: 24, scope: !378)
!390 = !DILocation(line: 262, column: 58, scope: !378)
!391 = !DILocation(line: 262, column: 62, scope: !378)
!392 = !DILocation(line: 262, column: 52, scope: !378)
!393 = !DILocation(line: 262, column: 2, scope: !378)
!394 = !DILocation(line: 263, column: 1, scope: !378)
!395 = distinct !DISubprogram(name: "__rdmsr", scope: !357, file: !357, line: 80, type: !358, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!396 = !{!397, !398, !399}
!397 = !DILocalVariable(name: "msr", arg: 1, scope: !395, file: !357, line: 80, type: !7)
!398 = !DILocalVariable(name: "low", scope: !395, file: !357, line: 82, type: !21)
!399 = !DILocalVariable(name: "high", scope: !395, file: !357, line: 82, type: !21)
!400 = !DILocation(line: 80, column: 64, scope: !395)
!401 = !DILocation(line: 82, column: 2, scope: !395)
!402 = !DILocation(line: 87, column: 45, scope: !395)
!403 = !DILocation(line: 84, column: 2, scope: !395)
!404 = !{i64 1006100, i64 1006121, i64 2149182110, i64 2149182154, i64 2149182177, i64 2149182210, i64 2149182241, i64 2149182280}
!405 = !DILocation(line: 89, column: 9, scope: !395)
!406 = !DILocation(line: 90, column: 1, scope: !395)
!407 = !DILocation(line: 89, column: 2, scope: !395)
!408 = distinct !DISubprogram(name: "static_key_false", scope: !409, file: !409, line: 205, type: !410, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !436)
!409 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!410 = !DISubroutineType(types: !411)
!411 = !{!197, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !409, line: 85, size: 128, elements: !414)
!414 = !{!415, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !413, file: !409, line: 86, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !198, line: 174, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 172, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !417, file: !198, line: 173, baseType: !19, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !409, line: 101, baseType: !421, size: 64, offset: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !409, line: 101, size: 64, elements: !422)
!422 = !{!423, !424, !433}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !409, line: 102, baseType: !21, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !421, file: !409, line: 103, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !409, line: 117, size: 128, elements: !427)
!427 = !{!428, !431, !432}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !426, file: !409, line: 118, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !26, line: 20, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !28, line: 26, baseType: !19)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !426, file: !409, line: 119, baseType: !429, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !426, file: !409, line: 120, baseType: !37, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !409, line: 104, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !409, line: 104, flags: DIFlagFwdDecl)
!436 = !{!437}
!437 = !DILocalVariable(name: "key", arg: 1, scope: !408, file: !409, line: 205, type: !412)
!438 = !DILocation(line: 205, column: 65, scope: !408)
!439 = !DILocation(line: 207, column: 28, scope: !408)
!440 = !DILocation(line: 207, column: 9, scope: !408)
!441 = !DILocation(line: 207, column: 2, scope: !408)
!442 = !DISubprogram(name: "do_trace_read_msr", scope: !357, file: !357, line: 65, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !7, !29, !19}
!445 = distinct !DISubprogram(name: "arch_static_branch", scope: !446, file: !446, line: 25, type: !447, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!446 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!447 = !DISubroutineType(types: !448)
!448 = !{!197, !412, !197}
!449 = !{!450, !451, !452}
!450 = !DILocalVariable(name: "key", arg: 1, scope: !445, file: !446, line: 25, type: !412)
!451 = !DILocalVariable(name: "branch", arg: 2, scope: !445, file: !446, line: 25, type: !197)
!452 = !DILabel(scope: !445, name: "l_yes", file: !446, line: 33)
!453 = !DILocation(line: 25, column: 67, scope: !445)
!454 = !DILocation(line: 25, column: 77, scope: !445)
!455 = !DILocation(line: 30, column: 13, scope: !445)
!456 = !DILocation(line: 30, column: 28, scope: !445)
!457 = !{i8 0, i8 2}
!458 = !{}
!459 = !DILocation(line: 30, column: 26, scope: !445)
!460 = !DILocation(line: 27, column: 2, scope: !445)
!461 = !{i64 291357, i64 291401, i64 2147787447, i64 2147787468, i64 2147787494, i64 2147787527, i64 2147787561, i64 2147787585}
!462 = !DILocation(line: 32, column: 2, scope: !445)
!463 = !DILocation(line: 33, column: 1, scope: !445)
!464 = !DILocation(line: 34, column: 2, scope: !445)
!465 = !DILocation(line: 35, column: 1, scope: !445)
!466 = distinct !DISubprogram(name: "native_write_msr", scope: !357, file: !357, line: 143, type: !467, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !7, !25, !25}
!469 = !{!470, !471, !472}
!470 = !DILocalVariable(name: "msr", arg: 1, scope: !466, file: !357, line: 143, type: !7)
!471 = !DILocalVariable(name: "low", arg: 2, scope: !466, file: !357, line: 143, type: !25)
!472 = !DILocalVariable(name: "high", arg: 3, scope: !466, file: !357, line: 143, type: !25)
!473 = !DILocation(line: 143, column: 31, scope: !466)
!474 = !DILocation(line: 143, column: 40, scope: !466)
!475 = !DILocation(line: 143, column: 49, scope: !466)
!476 = !DILocation(line: 145, column: 10, scope: !466)
!477 = !DILocation(line: 145, column: 15, scope: !466)
!478 = !DILocation(line: 145, column: 20, scope: !466)
!479 = !DILocation(line: 145, column: 2, scope: !466)
!480 = !DILocation(line: 147, column: 6, scope: !481)
!481 = distinct !DILexicalBlock(scope: !466, file: !357, line: 147, column: 6)
!482 = !DILocation(line: 147, column: 6, scope: !466)
!483 = !DILocation(line: 148, column: 22, scope: !481)
!484 = !DILocation(line: 148, column: 33, scope: !481)
!485 = !DILocation(line: 148, column: 28, scope: !481)
!486 = !DILocation(line: 148, column: 38, scope: !481)
!487 = !DILocation(line: 148, column: 46, scope: !481)
!488 = !DILocation(line: 148, column: 44, scope: !481)
!489 = !DILocation(line: 148, column: 3, scope: !481)
!490 = !DILocation(line: 149, column: 1, scope: !466)
!491 = distinct !DISubprogram(name: "__wrmsr", scope: !357, file: !357, line: 92, type: !467, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!492 = !{!493, !494, !495}
!493 = !DILocalVariable(name: "msr", arg: 1, scope: !491, file: !357, line: 92, type: !7)
!494 = !DILocalVariable(name: "low", arg: 2, scope: !491, file: !357, line: 92, type: !25)
!495 = !DILocalVariable(name: "high", arg: 3, scope: !491, file: !357, line: 92, type: !25)
!496 = !DILocation(line: 92, column: 50, scope: !491)
!497 = !DILocation(line: 92, column: 59, scope: !491)
!498 = !DILocation(line: 92, column: 68, scope: !491)
!499 = !DILocation(line: 97, column: 17, scope: !491)
!500 = !DILocation(line: 97, column: 27, scope: !491)
!501 = !DILocation(line: 97, column: 38, scope: !491)
!502 = !DILocation(line: 94, column: 2, scope: !491)
!503 = !{i64 1006356, i64 1006377, i64 2149182609, i64 2149182653, i64 2149182676, i64 2149182709, i64 2149182740, i64 2149182779}
!504 = !DILocation(line: 98, column: 1, scope: !491)
!505 = !DISubprogram(name: "do_trace_write_msr", scope: !357, file: !357, line: 64, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = distinct !DISubprogram(name: "constant_test_bit", scope: !194, file: !194, line: 204, type: !507, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!197, !37, !200}
!509 = !{!510, !511}
!510 = !DILocalVariable(name: "nr", arg: 1, scope: !506, file: !194, line: 204, type: !37)
!511 = !DILocalVariable(name: "addr", arg: 2, scope: !506, file: !194, line: 204, type: !200)
!512 = !DILocation(line: 204, column: 52, scope: !506)
!513 = !DILocation(line: 204, column: 86, scope: !506)
!514 = !DILocation(line: 206, column: 19, scope: !506)
!515 = !DILocation(line: 206, column: 22, scope: !506)
!516 = !DILocation(line: 206, column: 15, scope: !506)
!517 = !DILocation(line: 207, column: 4, scope: !506)
!518 = !DILocation(line: 207, column: 9, scope: !506)
!519 = !DILocation(line: 207, column: 12, scope: !506)
!520 = !DILocation(line: 206, column: 44, scope: !506)
!521 = !DILocation(line: 207, column: 37, scope: !506)
!522 = !DILocation(line: 206, column: 2, scope: !506)
!523 = distinct !DISubprogram(name: "variable_test_bit", scope: !194, file: !194, line: 224, type: !507, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !524)
!524 = !{!525, !526, !527}
!525 = !DILocalVariable(name: "nr", arg: 1, scope: !523, file: !194, line: 224, type: !37)
!526 = !DILocalVariable(name: "addr", arg: 2, scope: !523, file: !194, line: 224, type: !200)
!527 = !DILocalVariable(name: "oldbit", scope: !523, file: !194, line: 226, type: !197)
!528 = !DILocation(line: 224, column: 52, scope: !523)
!529 = !DILocation(line: 224, column: 86, scope: !523)
!530 = !DILocation(line: 226, column: 2, scope: !523)
!531 = !DILocation(line: 226, column: 7, scope: !523)
!532 = !DILocation(line: 231, column: 33, scope: !523)
!533 = !DILocation(line: 231, column: 46, scope: !523)
!534 = !DILocation(line: 228, column: 2, scope: !523)
!535 = !{i64 2148220635, i64 2148220709}
!536 = !DILocation(line: 233, column: 9, scope: !523)
!537 = !DILocation(line: 234, column: 1, scope: !523)
!538 = !DILocation(line: 233, column: 2, scope: !523)
!539 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !540, file: !540, line: 80, type: !541, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !550)
!540 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!541 = !DISubroutineType(types: !542)
!542 = !{null, !543, !546}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !198, line: 61, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !548, line: 72, baseType: !549)
!548 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !548, line: 16, baseType: !21)
!550 = !{!551, !552}
!551 = !DILocalVariable(name: "v", arg: 1, scope: !539, file: !540, line: 80, type: !543)
!552 = !DILocalVariable(name: "size", arg: 2, scope: !539, file: !540, line: 80, type: !546)
!553 = !DILocation(line: 80, column: 74, scope: !539)
!554 = !DILocation(line: 80, column: 84, scope: !539)
!555 = !DILocation(line: 82, column: 20, scope: !539)
!556 = !DILocation(line: 82, column: 23, scope: !539)
!557 = !DILocation(line: 82, column: 2, scope: !539)
!558 = !DILocation(line: 83, column: 2, scope: !539)
!559 = !DILocation(line: 84, column: 1, scope: !539)
!560 = distinct !DISubprogram(name: "arch_set_bit", scope: !194, file: !194, line: 52, type: !253, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!561 = !{!562, !563}
!562 = !DILocalVariable(name: "nr", arg: 1, scope: !560, file: !194, line: 52, type: !37)
!563 = !DILocalVariable(name: "addr", arg: 2, scope: !560, file: !194, line: 52, type: !255)
!564 = !DILocation(line: 52, column: 19, scope: !560)
!565 = !DILocation(line: 52, column: 47, scope: !560)
!566 = !DILocation(line: 54, column: 27, scope: !567)
!567 = distinct !DILexicalBlock(scope: !560, file: !194, line: 54, column: 6)
!568 = !DILocation(line: 54, column: 6, scope: !567)
!569 = !DILocation(line: 54, column: 6, scope: !560)
!570 = !DILocation(line: 56, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !194, line: 54, column: 32)
!572 = !DILocation(line: 57, column: 12, scope: !571)
!573 = !DILocation(line: 55, column: 3, scope: !571)
!574 = !{i64 2148207023, i64 2148207062, i64 2148207083, i64 2148207120, i64 2148207143, i64 2148207013}
!575 = !DILocation(line: 59, column: 2, scope: !571)
!576 = !DILocation(line: 61, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !567, file: !194, line: 59, column: 9)
!578 = !DILocation(line: 61, column: 32, scope: !577)
!579 = !DILocation(line: 60, column: 3, scope: !577)
!580 = !{i64 2148207308, i64 2148207347, i64 2148207368, i64 2148207405, i64 2148207428, i64 2148207298}
!581 = !DILocation(line: 63, column: 1, scope: !560)
!582 = distinct !DISubprogram(name: "kasan_check_write", scope: !583, file: !583, line: 44, type: !584, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !586)
!583 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!584 = !DISubroutineType(types: !585)
!585 = !{!197, !543, !7}
!586 = !{!587, !588}
!587 = !DILocalVariable(name: "p", arg: 1, scope: !582, file: !583, line: 44, type: !543)
!588 = !DILocalVariable(name: "size", arg: 2, scope: !582, file: !583, line: 44, type: !7)
!589 = !DILocation(line: 44, column: 59, scope: !582)
!590 = !DILocation(line: 44, column: 75, scope: !582)
!591 = !DILocation(line: 46, column: 2, scope: !582)
!592 = distinct !DISubprogram(name: "kcsan_check_access", scope: !593, file: !593, line: 229, type: !594, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !596)
!593 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!594 = !DISubroutineType(types: !595)
!595 = !{null, !543, !546, !19}
!596 = !{!597, !598, !599}
!597 = !DILocalVariable(name: "ptr", arg: 1, scope: !592, file: !593, line: 229, type: !543)
!598 = !DILocalVariable(name: "size", arg: 2, scope: !592, file: !593, line: 229, type: !546)
!599 = !DILocalVariable(name: "type", arg: 3, scope: !592, file: !593, line: 230, type: !19)
!600 = !DILocation(line: 229, column: 60, scope: !592)
!601 = !DILocation(line: 229, column: 72, scope: !592)
!602 = !DILocation(line: 230, column: 15, scope: !592)
!603 = !DILocation(line: 230, column: 23, scope: !592)
