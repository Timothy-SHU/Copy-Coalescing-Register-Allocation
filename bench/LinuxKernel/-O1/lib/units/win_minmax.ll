; ModuleID = 'lib/win_minmax.c'
source_filename = "lib/win_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_minmax_running_max: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad minmax_running_max ; .previous"

%struct.minmax_sample = type { i32, i32 }
%struct.minmax = type { [3 x %struct.minmax_sample] }

@__UNIQUE_ID___addressable_minmax_running_max195 = internal global ptr @minmax_running_max, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_minmax_running_max195], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @minmax_running_max(ptr noundef %m, i32 noundef %win, i32 noundef %t, i32 noundef %meas) #0 align 16 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %win.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %meas.addr = alloca i32, align 4
  %val = alloca %struct.minmax_sample, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !37, metadata !DIExpression()), !dbg !42
  store i32 %win, ptr %win.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %win.addr, metadata !38, metadata !DIExpression()), !dbg !43
  store i32 %t, ptr %t.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !39, metadata !DIExpression()), !dbg !44
  store i32 %meas, ptr %meas.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %meas.addr, metadata !40, metadata !DIExpression()), !dbg !45
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #6, !dbg !46
  call void @llvm.dbg.declare(metadata ptr %val, metadata !41, metadata !DIExpression()), !dbg !47
  %t1 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 0, !dbg !48
  %0 = load i32, ptr %t.addr, align 4, !dbg !49
  store i32 %0, ptr %t1, align 4, !dbg !48
  %v = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !48
  %1 = load i32, ptr %meas.addr, align 4, !dbg !50
  store i32 %1, ptr %v, align 4, !dbg !48
  %v2 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !51
  %2 = load i32, ptr %v2, align 4, !dbg !51
  %3 = load ptr, ptr %m.addr, align 8, !dbg !51
  %s = getelementptr inbounds %struct.minmax, ptr %3, i32 0, i32 0, !dbg !51
  %arrayidx = getelementptr [3 x %struct.minmax_sample], ptr %s, i64 0, i64 0, !dbg !51
  %v3 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx, i32 0, i32 1, !dbg !51
  %4 = load i32, ptr %v3, align 4, !dbg !51
  %cmp = icmp uge i32 %2, %4, !dbg !51
  %lnot = xor i1 %cmp, true, !dbg !51
  %lnot4 = xor i1 %lnot, true, !dbg !51
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !51
  %conv = sext i32 %lnot.ext to i64, !dbg !51
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !51
  %tobool = icmp ne i64 %expval, 0, !dbg !51
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !53

lor.lhs.false:                                    ; preds = %entry
  %t5 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 0, !dbg !54
  %5 = load i32, ptr %t5, align 4, !dbg !54
  %6 = load ptr, ptr %m.addr, align 8, !dbg !54
  %s6 = getelementptr inbounds %struct.minmax, ptr %6, i32 0, i32 0, !dbg !54
  %arrayidx7 = getelementptr [3 x %struct.minmax_sample], ptr %s6, i64 0, i64 2, !dbg !54
  %t8 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx7, i32 0, i32 0, !dbg !54
  %7 = load i32, ptr %t8, align 4, !dbg !54
  %sub = sub i32 %5, %7, !dbg !54
  %8 = load i32, ptr %win.addr, align 4, !dbg !54
  %cmp9 = icmp ugt i32 %sub, %8, !dbg !54
  %lnot11 = xor i1 %cmp9, true, !dbg !54
  %lnot13 = xor i1 %lnot11, true, !dbg !54
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !54
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !54
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !54
  %tobool17 = icmp ne i64 %expval16, 0, !dbg !54
  br i1 %tobool17, label %if.then, label %if.end, !dbg !55

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr %m.addr, align 8, !dbg !56
  %10 = load i32, ptr %t.addr, align 4, !dbg !57
  %11 = load i32, ptr %meas.addr, align 4, !dbg !58
  %call = call i32 @minmax_reset(ptr noundef %9, i32 noundef %10, i32 noundef %11) #7, !dbg !59
  store i32 %call, ptr %retval, align 4, !dbg !60
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !60

if.end:                                           ; preds = %lor.lhs.false
  %v18 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !61
  %12 = load i32, ptr %v18, align 4, !dbg !61
  %13 = load ptr, ptr %m.addr, align 8, !dbg !61
  %s19 = getelementptr inbounds %struct.minmax, ptr %13, i32 0, i32 0, !dbg !61
  %arrayidx20 = getelementptr [3 x %struct.minmax_sample], ptr %s19, i64 0, i64 1, !dbg !61
  %v21 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx20, i32 0, i32 1, !dbg !61
  %14 = load i32, ptr %v21, align 4, !dbg !61
  %cmp22 = icmp uge i32 %12, %14, !dbg !61
  %lnot24 = xor i1 %cmp22, true, !dbg !61
  %lnot26 = xor i1 %lnot24, true, !dbg !61
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !61
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !61
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !61
  %tobool30 = icmp ne i64 %expval29, 0, !dbg !61
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !63

if.then31:                                        ; preds = %if.end
  %15 = load ptr, ptr %m.addr, align 8, !dbg !64
  %s32 = getelementptr inbounds %struct.minmax, ptr %15, i32 0, i32 0, !dbg !65
  %arrayidx33 = getelementptr [3 x %struct.minmax_sample], ptr %s32, i64 0, i64 2, !dbg !64
  %16 = load ptr, ptr %m.addr, align 8, !dbg !66
  %s34 = getelementptr inbounds %struct.minmax, ptr %16, i32 0, i32 0, !dbg !67
  %arrayidx35 = getelementptr [3 x %struct.minmax_sample], ptr %s34, i64 0, i64 1, !dbg !66
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx35, ptr align 4 %val, i64 8, i1 false), !dbg !68
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx33, ptr align 4 %arrayidx35, i64 8, i1 false), !dbg !69
  br label %if.end53, !dbg !64

if.else:                                          ; preds = %if.end
  %v36 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !70
  %17 = load i32, ptr %v36, align 4, !dbg !70
  %18 = load ptr, ptr %m.addr, align 8, !dbg !70
  %s37 = getelementptr inbounds %struct.minmax, ptr %18, i32 0, i32 0, !dbg !70
  %arrayidx38 = getelementptr [3 x %struct.minmax_sample], ptr %s37, i64 0, i64 2, !dbg !70
  %v39 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx38, i32 0, i32 1, !dbg !70
  %19 = load i32, ptr %v39, align 4, !dbg !70
  %cmp40 = icmp uge i32 %17, %19, !dbg !70
  %lnot42 = xor i1 %cmp40, true, !dbg !70
  %lnot44 = xor i1 %lnot42, true, !dbg !70
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !70
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !70
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !70
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !70
  br i1 %tobool48, label %if.then49, label %if.end52, !dbg !72

if.then49:                                        ; preds = %if.else
  %20 = load ptr, ptr %m.addr, align 8, !dbg !73
  %s50 = getelementptr inbounds %struct.minmax, ptr %20, i32 0, i32 0, !dbg !74
  %arrayidx51 = getelementptr [3 x %struct.minmax_sample], ptr %s50, i64 0, i64 2, !dbg !73
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx51, ptr align 4 %val, i64 8, i1 false), !dbg !75
  br label %if.end52, !dbg !73

if.end52:                                         ; preds = %if.then49, %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then31
  %21 = load ptr, ptr %m.addr, align 8, !dbg !76
  %22 = load i32, ptr %win.addr, align 4, !dbg !77
  %call54 = call i32 @minmax_subwin_update(ptr noundef %21, i32 noundef %22, ptr noundef %val) #7, !dbg !78
  store i32 %call54, ptr %retval, align 4, !dbg !79
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !79

cleanup:                                          ; preds = %if.end53, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #6, !dbg !80
  %23 = load i32, ptr %retval, align 4, !dbg !80
  ret i32 %23, !dbg !80
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @minmax_reset(ptr noundef %m, i32 noundef %t, i32 noundef %meas) #4 align 16 !dbg !81 {
entry:
  %m.addr = alloca ptr, align 8
  %t.addr = alloca i32, align 4
  %meas.addr = alloca i32, align 4
  %val = alloca %struct.minmax_sample, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !85, metadata !DIExpression()), !dbg !89
  store i32 %t, ptr %t.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !86, metadata !DIExpression()), !dbg !90
  store i32 %meas, ptr %meas.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %meas.addr, metadata !87, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #6, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %val, metadata !88, metadata !DIExpression()), !dbg !93
  %t1 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 0, !dbg !94
  %0 = load i32, ptr %t.addr, align 4, !dbg !95
  store i32 %0, ptr %t1, align 4, !dbg !94
  %v = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !94
  %1 = load i32, ptr %meas.addr, align 4, !dbg !96
  store i32 %1, ptr %v, align 4, !dbg !94
  %2 = load ptr, ptr %m.addr, align 8, !dbg !97
  %s = getelementptr inbounds %struct.minmax, ptr %2, i32 0, i32 0, !dbg !98
  %arrayidx = getelementptr [3 x %struct.minmax_sample], ptr %s, i64 0, i64 2, !dbg !97
  %3 = load ptr, ptr %m.addr, align 8, !dbg !99
  %s2 = getelementptr inbounds %struct.minmax, ptr %3, i32 0, i32 0, !dbg !100
  %arrayidx3 = getelementptr [3 x %struct.minmax_sample], ptr %s2, i64 0, i64 1, !dbg !99
  %4 = load ptr, ptr %m.addr, align 8, !dbg !101
  %s4 = getelementptr inbounds %struct.minmax, ptr %4, i32 0, i32 0, !dbg !102
  %arrayidx5 = getelementptr [3 x %struct.minmax_sample], ptr %s4, i64 0, i64 0, !dbg !101
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx5, ptr align 4 %val, i64 8, i1 false), !dbg !103
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx3, ptr align 4 %arrayidx5, i64 8, i1 false), !dbg !104
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %arrayidx3, i64 8, i1 false), !dbg !105
  %5 = load ptr, ptr %m.addr, align 8, !dbg !106
  %s6 = getelementptr inbounds %struct.minmax, ptr %5, i32 0, i32 0, !dbg !107
  %arrayidx7 = getelementptr [3 x %struct.minmax_sample], ptr %s6, i64 0, i64 0, !dbg !106
  %v8 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx7, i32 0, i32 1, !dbg !108
  %6 = load i32, ptr %v8, align 4, !dbg !108
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #6, !dbg !109
  ret i32 %6, !dbg !110
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @minmax_subwin_update(ptr noundef %m, i32 noundef %win, ptr noundef %val) #0 align 16 !dbg !111 {
entry:
  %m.addr = alloca ptr, align 8
  %win.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !117, metadata !DIExpression()), !dbg !121
  store i32 %win, ptr %win.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %win.addr, metadata !118, metadata !DIExpression()), !dbg !122
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !119, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #6, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %dt, metadata !120, metadata !DIExpression()), !dbg !125
  %0 = load ptr, ptr %val.addr, align 8, !dbg !126
  %t = getelementptr inbounds %struct.minmax_sample, ptr %0, i32 0, i32 0, !dbg !127
  %1 = load i32, ptr %t, align 4, !dbg !127
  %2 = load ptr, ptr %m.addr, align 8, !dbg !128
  %s = getelementptr inbounds %struct.minmax, ptr %2, i32 0, i32 0, !dbg !129
  %arrayidx = getelementptr [3 x %struct.minmax_sample], ptr %s, i64 0, i64 0, !dbg !128
  %t1 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx, i32 0, i32 0, !dbg !130
  %3 = load i32, ptr %t1, align 4, !dbg !130
  %sub = sub i32 %1, %3, !dbg !131
  store i32 %sub, ptr %dt, align 4, !dbg !125
  %4 = load i32, ptr %dt, align 4, !dbg !132
  %5 = load i32, ptr %win.addr, align 4, !dbg !132
  %cmp = icmp ugt i32 %4, %5, !dbg !132
  %lnot = xor i1 %cmp, true, !dbg !132
  %lnot2 = xor i1 %lnot, true, !dbg !132
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !132
  %conv = sext i32 %lnot.ext to i64, !dbg !132
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !132
  %tobool = icmp ne i64 %expval, 0, !dbg !132
  br i1 %tobool, label %if.then, label %if.else, !dbg !134

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %m.addr, align 8, !dbg !135
  %s3 = getelementptr inbounds %struct.minmax, ptr %6, i32 0, i32 0, !dbg !137
  %arrayidx4 = getelementptr [3 x %struct.minmax_sample], ptr %s3, i64 0, i64 0, !dbg !135
  %7 = load ptr, ptr %m.addr, align 8, !dbg !138
  %s5 = getelementptr inbounds %struct.minmax, ptr %7, i32 0, i32 0, !dbg !139
  %arrayidx6 = getelementptr [3 x %struct.minmax_sample], ptr %s5, i64 0, i64 1, !dbg !138
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx4, ptr align 4 %arrayidx6, i64 8, i1 false), !dbg !138
  %8 = load ptr, ptr %m.addr, align 8, !dbg !140
  %s7 = getelementptr inbounds %struct.minmax, ptr %8, i32 0, i32 0, !dbg !141
  %arrayidx8 = getelementptr [3 x %struct.minmax_sample], ptr %s7, i64 0, i64 1, !dbg !140
  %9 = load ptr, ptr %m.addr, align 8, !dbg !142
  %s9 = getelementptr inbounds %struct.minmax, ptr %9, i32 0, i32 0, !dbg !143
  %arrayidx10 = getelementptr [3 x %struct.minmax_sample], ptr %s9, i64 0, i64 2, !dbg !142
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx8, ptr align 4 %arrayidx10, i64 8, i1 false), !dbg !142
  %10 = load ptr, ptr %m.addr, align 8, !dbg !144
  %s11 = getelementptr inbounds %struct.minmax, ptr %10, i32 0, i32 0, !dbg !145
  %arrayidx12 = getelementptr [3 x %struct.minmax_sample], ptr %s11, i64 0, i64 2, !dbg !144
  %11 = load ptr, ptr %val.addr, align 8, !dbg !146
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx12, ptr align 4 %11, i64 8, i1 false), !dbg !147
  %12 = load ptr, ptr %val.addr, align 8, !dbg !148
  %t13 = getelementptr inbounds %struct.minmax_sample, ptr %12, i32 0, i32 0, !dbg !148
  %13 = load i32, ptr %t13, align 4, !dbg !148
  %14 = load ptr, ptr %m.addr, align 8, !dbg !148
  %s14 = getelementptr inbounds %struct.minmax, ptr %14, i32 0, i32 0, !dbg !148
  %arrayidx15 = getelementptr [3 x %struct.minmax_sample], ptr %s14, i64 0, i64 0, !dbg !148
  %t16 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx15, i32 0, i32 0, !dbg !148
  %15 = load i32, ptr %t16, align 4, !dbg !148
  %sub17 = sub i32 %13, %15, !dbg !148
  %16 = load i32, ptr %win.addr, align 4, !dbg !148
  %cmp18 = icmp ugt i32 %sub17, %16, !dbg !148
  %lnot20 = xor i1 %cmp18, true, !dbg !148
  %lnot22 = xor i1 %lnot20, true, !dbg !148
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !148
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !148
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !148
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !148
  br i1 %tobool26, label %if.then27, label %if.end, !dbg !150

if.then27:                                        ; preds = %if.then
  %17 = load ptr, ptr %m.addr, align 8, !dbg !151
  %s28 = getelementptr inbounds %struct.minmax, ptr %17, i32 0, i32 0, !dbg !153
  %arrayidx29 = getelementptr [3 x %struct.minmax_sample], ptr %s28, i64 0, i64 0, !dbg !151
  %18 = load ptr, ptr %m.addr, align 8, !dbg !154
  %s30 = getelementptr inbounds %struct.minmax, ptr %18, i32 0, i32 0, !dbg !155
  %arrayidx31 = getelementptr [3 x %struct.minmax_sample], ptr %s30, i64 0, i64 1, !dbg !154
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx29, ptr align 4 %arrayidx31, i64 8, i1 false), !dbg !154
  %19 = load ptr, ptr %m.addr, align 8, !dbg !156
  %s32 = getelementptr inbounds %struct.minmax, ptr %19, i32 0, i32 0, !dbg !157
  %arrayidx33 = getelementptr [3 x %struct.minmax_sample], ptr %s32, i64 0, i64 1, !dbg !156
  %20 = load ptr, ptr %m.addr, align 8, !dbg !158
  %s34 = getelementptr inbounds %struct.minmax, ptr %20, i32 0, i32 0, !dbg !159
  %arrayidx35 = getelementptr [3 x %struct.minmax_sample], ptr %s34, i64 0, i64 2, !dbg !158
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx33, ptr align 4 %arrayidx35, i64 8, i1 false), !dbg !158
  %21 = load ptr, ptr %m.addr, align 8, !dbg !160
  %s36 = getelementptr inbounds %struct.minmax, ptr %21, i32 0, i32 0, !dbg !161
  %arrayidx37 = getelementptr [3 x %struct.minmax_sample], ptr %s36, i64 0, i64 2, !dbg !160
  %22 = load ptr, ptr %val.addr, align 8, !dbg !162
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx37, ptr align 4 %22, i64 8, i1 false), !dbg !163
  br label %if.end, !dbg !164

if.end:                                           ; preds = %if.then27, %if.then
  br label %if.end85, !dbg !165

if.else:                                          ; preds = %entry
  %23 = load ptr, ptr %m.addr, align 8, !dbg !166
  %s38 = getelementptr inbounds %struct.minmax, ptr %23, i32 0, i32 0, !dbg !166
  %arrayidx39 = getelementptr [3 x %struct.minmax_sample], ptr %s38, i64 0, i64 1, !dbg !166
  %t40 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx39, i32 0, i32 0, !dbg !166
  %24 = load i32, ptr %t40, align 4, !dbg !166
  %25 = load ptr, ptr %m.addr, align 8, !dbg !166
  %s41 = getelementptr inbounds %struct.minmax, ptr %25, i32 0, i32 0, !dbg !166
  %arrayidx42 = getelementptr [3 x %struct.minmax_sample], ptr %s41, i64 0, i64 0, !dbg !166
  %t43 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx42, i32 0, i32 0, !dbg !166
  %26 = load i32, ptr %t43, align 4, !dbg !166
  %cmp44 = icmp eq i32 %24, %26, !dbg !166
  %lnot46 = xor i1 %cmp44, true, !dbg !166
  %lnot48 = xor i1 %lnot46, true, !dbg !166
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !166
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !166
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !166
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !166
  br i1 %tobool52, label %land.lhs.true, label %if.else60, !dbg !168

land.lhs.true:                                    ; preds = %if.else
  %27 = load i32, ptr %dt, align 4, !dbg !169
  %28 = load i32, ptr %win.addr, align 4, !dbg !170
  %div = udiv i32 %28, 4, !dbg !171
  %cmp53 = icmp ugt i32 %27, %div, !dbg !172
  br i1 %cmp53, label %if.then55, label %if.else60, !dbg !173

if.then55:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %m.addr, align 8, !dbg !174
  %s56 = getelementptr inbounds %struct.minmax, ptr %29, i32 0, i32 0, !dbg !176
  %arrayidx57 = getelementptr [3 x %struct.minmax_sample], ptr %s56, i64 0, i64 2, !dbg !174
  %30 = load ptr, ptr %m.addr, align 8, !dbg !177
  %s58 = getelementptr inbounds %struct.minmax, ptr %30, i32 0, i32 0, !dbg !178
  %arrayidx59 = getelementptr [3 x %struct.minmax_sample], ptr %s58, i64 0, i64 1, !dbg !177
  %31 = load ptr, ptr %val.addr, align 8, !dbg !179
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx59, ptr align 4 %31, i64 8, i1 false), !dbg !180
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx57, ptr align 4 %arrayidx59, i64 8, i1 false), !dbg !181
  br label %if.end84, !dbg !182

if.else60:                                        ; preds = %land.lhs.true, %if.else
  %32 = load ptr, ptr %m.addr, align 8, !dbg !183
  %s61 = getelementptr inbounds %struct.minmax, ptr %32, i32 0, i32 0, !dbg !183
  %arrayidx62 = getelementptr [3 x %struct.minmax_sample], ptr %s61, i64 0, i64 2, !dbg !183
  %t63 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx62, i32 0, i32 0, !dbg !183
  %33 = load i32, ptr %t63, align 4, !dbg !183
  %34 = load ptr, ptr %m.addr, align 8, !dbg !183
  %s64 = getelementptr inbounds %struct.minmax, ptr %34, i32 0, i32 0, !dbg !183
  %arrayidx65 = getelementptr [3 x %struct.minmax_sample], ptr %s64, i64 0, i64 1, !dbg !183
  %t66 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx65, i32 0, i32 0, !dbg !183
  %35 = load i32, ptr %t66, align 4, !dbg !183
  %cmp67 = icmp eq i32 %33, %35, !dbg !183
  %lnot69 = xor i1 %cmp67, true, !dbg !183
  %lnot71 = xor i1 %lnot69, true, !dbg !183
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !183
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !183
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !183
  %tobool75 = icmp ne i64 %expval74, 0, !dbg !183
  br i1 %tobool75, label %land.lhs.true76, label %if.end83, !dbg !185

land.lhs.true76:                                  ; preds = %if.else60
  %36 = load i32, ptr %dt, align 4, !dbg !186
  %37 = load i32, ptr %win.addr, align 4, !dbg !187
  %div77 = udiv i32 %37, 2, !dbg !188
  %cmp78 = icmp ugt i32 %36, %div77, !dbg !189
  br i1 %cmp78, label %if.then80, label %if.end83, !dbg !190

if.then80:                                        ; preds = %land.lhs.true76
  %38 = load ptr, ptr %m.addr, align 8, !dbg !191
  %s81 = getelementptr inbounds %struct.minmax, ptr %38, i32 0, i32 0, !dbg !193
  %arrayidx82 = getelementptr [3 x %struct.minmax_sample], ptr %s81, i64 0, i64 2, !dbg !191
  %39 = load ptr, ptr %val.addr, align 8, !dbg !194
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx82, ptr align 4 %39, i64 8, i1 false), !dbg !195
  br label %if.end83, !dbg !196

if.end83:                                         ; preds = %if.then80, %land.lhs.true76, %if.else60
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then55
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end
  %40 = load ptr, ptr %m.addr, align 8, !dbg !197
  %s86 = getelementptr inbounds %struct.minmax, ptr %40, i32 0, i32 0, !dbg !198
  %arrayidx87 = getelementptr [3 x %struct.minmax_sample], ptr %s86, i64 0, i64 0, !dbg !197
  %v = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx87, i32 0, i32 1, !dbg !199
  %41 = load i32, ptr %v, align 4, !dbg !199
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #6, !dbg !200
  ret i32 %41, !dbg !201
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @minmax_running_min(ptr noundef %m, i32 noundef %win, i32 noundef %t, i32 noundef %meas) #0 align 16 !dbg !202 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %win.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %meas.addr = alloca i32, align 4
  %val = alloca %struct.minmax_sample, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !204, metadata !DIExpression()), !dbg !209
  store i32 %win, ptr %win.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %win.addr, metadata !205, metadata !DIExpression()), !dbg !210
  store i32 %t, ptr %t.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !206, metadata !DIExpression()), !dbg !211
  store i32 %meas, ptr %meas.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %meas.addr, metadata !207, metadata !DIExpression()), !dbg !212
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #6, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %val, metadata !208, metadata !DIExpression()), !dbg !214
  %t1 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 0, !dbg !215
  %0 = load i32, ptr %t.addr, align 4, !dbg !216
  store i32 %0, ptr %t1, align 4, !dbg !215
  %v = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !215
  %1 = load i32, ptr %meas.addr, align 4, !dbg !217
  store i32 %1, ptr %v, align 4, !dbg !215
  %v2 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !218
  %2 = load i32, ptr %v2, align 4, !dbg !218
  %3 = load ptr, ptr %m.addr, align 8, !dbg !218
  %s = getelementptr inbounds %struct.minmax, ptr %3, i32 0, i32 0, !dbg !218
  %arrayidx = getelementptr [3 x %struct.minmax_sample], ptr %s, i64 0, i64 0, !dbg !218
  %v3 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx, i32 0, i32 1, !dbg !218
  %4 = load i32, ptr %v3, align 4, !dbg !218
  %cmp = icmp ule i32 %2, %4, !dbg !218
  %lnot = xor i1 %cmp, true, !dbg !218
  %lnot4 = xor i1 %lnot, true, !dbg !218
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !218
  %conv = sext i32 %lnot.ext to i64, !dbg !218
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !218
  %tobool = icmp ne i64 %expval, 0, !dbg !218
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !220

lor.lhs.false:                                    ; preds = %entry
  %t5 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 0, !dbg !221
  %5 = load i32, ptr %t5, align 4, !dbg !221
  %6 = load ptr, ptr %m.addr, align 8, !dbg !221
  %s6 = getelementptr inbounds %struct.minmax, ptr %6, i32 0, i32 0, !dbg !221
  %arrayidx7 = getelementptr [3 x %struct.minmax_sample], ptr %s6, i64 0, i64 2, !dbg !221
  %t8 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx7, i32 0, i32 0, !dbg !221
  %7 = load i32, ptr %t8, align 4, !dbg !221
  %sub = sub i32 %5, %7, !dbg !221
  %8 = load i32, ptr %win.addr, align 4, !dbg !221
  %cmp9 = icmp ugt i32 %sub, %8, !dbg !221
  %lnot11 = xor i1 %cmp9, true, !dbg !221
  %lnot13 = xor i1 %lnot11, true, !dbg !221
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !221
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !221
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !221
  %tobool17 = icmp ne i64 %expval16, 0, !dbg !221
  br i1 %tobool17, label %if.then, label %if.end, !dbg !222

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr %m.addr, align 8, !dbg !223
  %10 = load i32, ptr %t.addr, align 4, !dbg !224
  %11 = load i32, ptr %meas.addr, align 4, !dbg !225
  %call = call i32 @minmax_reset(ptr noundef %9, i32 noundef %10, i32 noundef %11) #7, !dbg !226
  store i32 %call, ptr %retval, align 4, !dbg !227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !227

if.end:                                           ; preds = %lor.lhs.false
  %v18 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !228
  %12 = load i32, ptr %v18, align 4, !dbg !228
  %13 = load ptr, ptr %m.addr, align 8, !dbg !228
  %s19 = getelementptr inbounds %struct.minmax, ptr %13, i32 0, i32 0, !dbg !228
  %arrayidx20 = getelementptr [3 x %struct.minmax_sample], ptr %s19, i64 0, i64 1, !dbg !228
  %v21 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx20, i32 0, i32 1, !dbg !228
  %14 = load i32, ptr %v21, align 4, !dbg !228
  %cmp22 = icmp ule i32 %12, %14, !dbg !228
  %lnot24 = xor i1 %cmp22, true, !dbg !228
  %lnot26 = xor i1 %lnot24, true, !dbg !228
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !228
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !228
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !228
  %tobool30 = icmp ne i64 %expval29, 0, !dbg !228
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !230

if.then31:                                        ; preds = %if.end
  %15 = load ptr, ptr %m.addr, align 8, !dbg !231
  %s32 = getelementptr inbounds %struct.minmax, ptr %15, i32 0, i32 0, !dbg !232
  %arrayidx33 = getelementptr [3 x %struct.minmax_sample], ptr %s32, i64 0, i64 2, !dbg !231
  %16 = load ptr, ptr %m.addr, align 8, !dbg !233
  %s34 = getelementptr inbounds %struct.minmax, ptr %16, i32 0, i32 0, !dbg !234
  %arrayidx35 = getelementptr [3 x %struct.minmax_sample], ptr %s34, i64 0, i64 1, !dbg !233
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx35, ptr align 4 %val, i64 8, i1 false), !dbg !235
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx33, ptr align 4 %arrayidx35, i64 8, i1 false), !dbg !236
  br label %if.end53, !dbg !231

if.else:                                          ; preds = %if.end
  %v36 = getelementptr inbounds %struct.minmax_sample, ptr %val, i32 0, i32 1, !dbg !237
  %17 = load i32, ptr %v36, align 4, !dbg !237
  %18 = load ptr, ptr %m.addr, align 8, !dbg !237
  %s37 = getelementptr inbounds %struct.minmax, ptr %18, i32 0, i32 0, !dbg !237
  %arrayidx38 = getelementptr [3 x %struct.minmax_sample], ptr %s37, i64 0, i64 2, !dbg !237
  %v39 = getelementptr inbounds %struct.minmax_sample, ptr %arrayidx38, i32 0, i32 1, !dbg !237
  %19 = load i32, ptr %v39, align 4, !dbg !237
  %cmp40 = icmp ule i32 %17, %19, !dbg !237
  %lnot42 = xor i1 %cmp40, true, !dbg !237
  %lnot44 = xor i1 %lnot42, true, !dbg !237
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !237
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !237
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !237
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !237
  br i1 %tobool48, label %if.then49, label %if.end52, !dbg !239

if.then49:                                        ; preds = %if.else
  %20 = load ptr, ptr %m.addr, align 8, !dbg !240
  %s50 = getelementptr inbounds %struct.minmax, ptr %20, i32 0, i32 0, !dbg !241
  %arrayidx51 = getelementptr [3 x %struct.minmax_sample], ptr %s50, i64 0, i64 2, !dbg !240
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx51, ptr align 4 %val, i64 8, i1 false), !dbg !242
  br label %if.end52, !dbg !240

if.end52:                                         ; preds = %if.then49, %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then31
  %21 = load ptr, ptr %m.addr, align 8, !dbg !243
  %22 = load i32, ptr %win.addr, align 4, !dbg !244
  %call54 = call i32 @minmax_subwin_update(ptr noundef %21, i32 noundef %22, ptr noundef %val) #7, !dbg !245
  store i32 %call54, ptr %retval, align 4, !dbg !246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !246

cleanup:                                          ; preds = %if.end53, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #6, !dbg !247
  %23 = load i32, ptr %retval, align 4, !dbg !247
  ret i32 %23, !dbg !247
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_minmax_running_max195", scope: !2, file: !3, line: 82, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.win_minmax.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/win_minmax\22 -D KBUILD_BASENAME=\22win_minmax\22 -D KBUILD_MODNAME=\22win_minmax\22 -D __KBUILD_MODNAME=kmod_win_minmax -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/win_minmax.ll lib/win_minmax.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/win_minmax.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8c9943825428664ead3169edf62d4118")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 8, !"cf-protection-branch", i32 1}
!11 = !{i32 4, !"function_return_thunk_extern", i32 1}
!12 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!13 = !{i32 1, !"Code Model", i32 2}
!14 = !{i32 1, !"override-stack-alignment", i32 8}
!15 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!16 = distinct !DISubprogram(name: "minmax_running_max", scope: !3, file: !3, line: 67, type: !17, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !24, !19, !19, !19}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 21, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "minmax", file: !26, line: 18, size: 192, elements: !27)
!26 = !DIFile(filename: "./include/linux/win_minmax.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82a7e088916b1d884e21388f0be40e38")
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !25, file: !26, line: 19, baseType: !29, size: 192)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 192, elements: !34)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "minmax_sample", file: !26, line: 12, size: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !30, file: !26, line: 13, baseType: !19, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !30, file: !26, line: 14, baseType: !19, size: 32, offset: 32)
!34 = !{!35}
!35 = !DISubrange(count: 3)
!36 = !{!37, !38, !39, !40, !41}
!37 = !DILocalVariable(name: "m", arg: 1, scope: !16, file: !3, line: 67, type: !24)
!38 = !DILocalVariable(name: "win", arg: 2, scope: !16, file: !3, line: 67, type: !19)
!39 = !DILocalVariable(name: "t", arg: 3, scope: !16, file: !3, line: 67, type: !19)
!40 = !DILocalVariable(name: "meas", arg: 4, scope: !16, file: !3, line: 67, type: !19)
!41 = !DILocalVariable(name: "val", scope: !16, file: !3, line: 69, type: !30)
!42 = !DILocation(line: 67, column: 39, scope: !16)
!43 = !DILocation(line: 67, column: 46, scope: !16)
!44 = !DILocation(line: 67, column: 55, scope: !16)
!45 = !DILocation(line: 67, column: 62, scope: !16)
!46 = !DILocation(line: 69, column: 2, scope: !16)
!47 = !DILocation(line: 69, column: 23, scope: !16)
!48 = !DILocation(line: 69, column: 29, scope: !16)
!49 = !DILocation(line: 69, column: 36, scope: !16)
!50 = !DILocation(line: 69, column: 44, scope: !16)
!51 = !DILocation(line: 71, column: 6, scope: !52)
!52 = distinct !DILexicalBlock(scope: !16, file: !3, line: 71, column: 6)
!53 = !DILocation(line: 71, column: 35, scope: !52)
!54 = !DILocation(line: 72, column: 6, scope: !52)
!55 = !DILocation(line: 71, column: 6, scope: !16)
!56 = !DILocation(line: 73, column: 23, scope: !52)
!57 = !DILocation(line: 73, column: 26, scope: !52)
!58 = !DILocation(line: 73, column: 29, scope: !52)
!59 = !DILocation(line: 73, column: 10, scope: !52)
!60 = !DILocation(line: 73, column: 3, scope: !52)
!61 = !DILocation(line: 75, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !16, file: !3, line: 75, column: 6)
!63 = !DILocation(line: 75, column: 6, scope: !16)
!64 = !DILocation(line: 76, column: 3, scope: !62)
!65 = !DILocation(line: 76, column: 6, scope: !62)
!66 = !DILocation(line: 76, column: 13, scope: !62)
!67 = !DILocation(line: 76, column: 16, scope: !62)
!68 = !DILocation(line: 76, column: 23, scope: !62)
!69 = !DILocation(line: 76, column: 21, scope: !62)
!70 = !DILocation(line: 77, column: 11, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !3, line: 77, column: 11)
!72 = !DILocation(line: 77, column: 11, scope: !62)
!73 = !DILocation(line: 78, column: 3, scope: !71)
!74 = !DILocation(line: 78, column: 6, scope: !71)
!75 = !DILocation(line: 78, column: 13, scope: !71)
!76 = !DILocation(line: 80, column: 30, scope: !16)
!77 = !DILocation(line: 80, column: 33, scope: !16)
!78 = !DILocation(line: 80, column: 9, scope: !16)
!79 = !DILocation(line: 80, column: 2, scope: !16)
!80 = !DILocation(line: 81, column: 1, scope: !16)
!81 = distinct !DISubprogram(name: "minmax_reset", scope: !26, file: !26, line: 27, type: !82, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!19, !24, !19, !19}
!84 = !{!85, !86, !87, !88}
!85 = !DILocalVariable(name: "m", arg: 1, scope: !81, file: !26, line: 27, type: !24)
!86 = !DILocalVariable(name: "t", arg: 2, scope: !81, file: !26, line: 27, type: !19)
!87 = !DILocalVariable(name: "meas", arg: 3, scope: !81, file: !26, line: 27, type: !19)
!88 = !DILocalVariable(name: "val", scope: !81, file: !26, line: 29, type: !30)
!89 = !DILocation(line: 27, column: 47, scope: !81)
!90 = !DILocation(line: 27, column: 54, scope: !81)
!91 = !DILocation(line: 27, column: 61, scope: !81)
!92 = !DILocation(line: 29, column: 2, scope: !81)
!93 = !DILocation(line: 29, column: 23, scope: !81)
!94 = !DILocation(line: 29, column: 29, scope: !81)
!95 = !DILocation(line: 29, column: 36, scope: !81)
!96 = !DILocation(line: 29, column: 44, scope: !81)
!97 = !DILocation(line: 31, column: 2, scope: !81)
!98 = !DILocation(line: 31, column: 5, scope: !81)
!99 = !DILocation(line: 31, column: 12, scope: !81)
!100 = !DILocation(line: 31, column: 15, scope: !81)
!101 = !DILocation(line: 31, column: 22, scope: !81)
!102 = !DILocation(line: 31, column: 25, scope: !81)
!103 = !DILocation(line: 31, column: 32, scope: !81)
!104 = !DILocation(line: 31, column: 30, scope: !81)
!105 = !DILocation(line: 31, column: 20, scope: !81)
!106 = !DILocation(line: 32, column: 9, scope: !81)
!107 = !DILocation(line: 32, column: 12, scope: !81)
!108 = !DILocation(line: 32, column: 17, scope: !81)
!109 = !DILocation(line: 33, column: 1, scope: !81)
!110 = !DILocation(line: 32, column: 2, scope: !81)
!111 = distinct !DISubprogram(name: "minmax_subwin_update", scope: !3, file: !3, line: 29, type: !112, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!112 = !DISubroutineType(types: !113)
!113 = !{!19, !24, !19, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!116 = !{!117, !118, !119, !120}
!117 = !DILocalVariable(name: "m", arg: 1, scope: !111, file: !3, line: 29, type: !24)
!118 = !DILocalVariable(name: "win", arg: 2, scope: !111, file: !3, line: 29, type: !19)
!119 = !DILocalVariable(name: "val", arg: 3, scope: !111, file: !3, line: 30, type: !114)
!120 = !DILocalVariable(name: "dt", scope: !111, file: !3, line: 32, type: !19)
!121 = !DILocation(line: 29, column: 48, scope: !111)
!122 = !DILocation(line: 29, column: 55, scope: !111)
!123 = !DILocation(line: 30, column: 33, scope: !111)
!124 = !DILocation(line: 32, column: 2, scope: !111)
!125 = !DILocation(line: 32, column: 6, scope: !111)
!126 = !DILocation(line: 32, column: 11, scope: !111)
!127 = !DILocation(line: 32, column: 16, scope: !111)
!128 = !DILocation(line: 32, column: 20, scope: !111)
!129 = !DILocation(line: 32, column: 23, scope: !111)
!130 = !DILocation(line: 32, column: 28, scope: !111)
!131 = !DILocation(line: 32, column: 18, scope: !111)
!132 = !DILocation(line: 34, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !111, file: !3, line: 34, column: 6)
!134 = !DILocation(line: 34, column: 6, scope: !111)
!135 = !DILocation(line: 42, column: 3, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !3, line: 34, column: 26)
!137 = !DILocation(line: 42, column: 6, scope: !136)
!138 = !DILocation(line: 42, column: 13, scope: !136)
!139 = !DILocation(line: 42, column: 16, scope: !136)
!140 = !DILocation(line: 43, column: 3, scope: !136)
!141 = !DILocation(line: 43, column: 6, scope: !136)
!142 = !DILocation(line: 43, column: 13, scope: !136)
!143 = !DILocation(line: 43, column: 16, scope: !136)
!144 = !DILocation(line: 44, column: 3, scope: !136)
!145 = !DILocation(line: 44, column: 6, scope: !136)
!146 = !DILocation(line: 44, column: 14, scope: !136)
!147 = !DILocation(line: 44, column: 13, scope: !136)
!148 = !DILocation(line: 45, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !136, file: !3, line: 45, column: 7)
!150 = !DILocation(line: 45, column: 7, scope: !136)
!151 = !DILocation(line: 46, column: 4, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !3, line: 45, column: 43)
!153 = !DILocation(line: 46, column: 7, scope: !152)
!154 = !DILocation(line: 46, column: 14, scope: !152)
!155 = !DILocation(line: 46, column: 17, scope: !152)
!156 = !DILocation(line: 47, column: 4, scope: !152)
!157 = !DILocation(line: 47, column: 7, scope: !152)
!158 = !DILocation(line: 47, column: 14, scope: !152)
!159 = !DILocation(line: 47, column: 17, scope: !152)
!160 = !DILocation(line: 48, column: 4, scope: !152)
!161 = !DILocation(line: 48, column: 7, scope: !152)
!162 = !DILocation(line: 48, column: 15, scope: !152)
!163 = !DILocation(line: 48, column: 14, scope: !152)
!164 = !DILocation(line: 49, column: 3, scope: !152)
!165 = !DILocation(line: 50, column: 2, scope: !136)
!166 = !DILocation(line: 50, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !133, file: !3, line: 50, column: 13)
!168 = !DILocation(line: 50, column: 46, scope: !167)
!169 = !DILocation(line: 50, column: 49, scope: !167)
!170 = !DILocation(line: 50, column: 54, scope: !167)
!171 = !DILocation(line: 50, column: 57, scope: !167)
!172 = !DILocation(line: 50, column: 52, scope: !167)
!173 = !DILocation(line: 50, column: 13, scope: !133)
!174 = !DILocation(line: 55, column: 3, scope: !175)
!175 = distinct !DILexicalBlock(scope: !167, file: !3, line: 50, column: 61)
!176 = !DILocation(line: 55, column: 6, scope: !175)
!177 = !DILocation(line: 55, column: 13, scope: !175)
!178 = !DILocation(line: 55, column: 16, scope: !175)
!179 = !DILocation(line: 55, column: 24, scope: !175)
!180 = !DILocation(line: 55, column: 23, scope: !175)
!181 = !DILocation(line: 55, column: 21, scope: !175)
!182 = !DILocation(line: 56, column: 2, scope: !175)
!183 = !DILocation(line: 56, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !167, file: !3, line: 56, column: 13)
!185 = !DILocation(line: 56, column: 46, scope: !184)
!186 = !DILocation(line: 56, column: 49, scope: !184)
!187 = !DILocation(line: 56, column: 54, scope: !184)
!188 = !DILocation(line: 56, column: 57, scope: !184)
!189 = !DILocation(line: 56, column: 52, scope: !184)
!190 = !DILocation(line: 56, column: 13, scope: !167)
!191 = !DILocation(line: 61, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !184, file: !3, line: 56, column: 61)
!193 = !DILocation(line: 61, column: 6, scope: !192)
!194 = !DILocation(line: 61, column: 14, scope: !192)
!195 = !DILocation(line: 61, column: 13, scope: !192)
!196 = !DILocation(line: 62, column: 2, scope: !192)
!197 = !DILocation(line: 63, column: 9, scope: !111)
!198 = !DILocation(line: 63, column: 12, scope: !111)
!199 = !DILocation(line: 63, column: 17, scope: !111)
!200 = !DILocation(line: 64, column: 1, scope: !111)
!201 = !DILocation(line: 63, column: 2, scope: !111)
!202 = distinct !DISubprogram(name: "minmax_running_min", scope: !3, file: !3, line: 85, type: !17, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!203 = !{!204, !205, !206, !207, !208}
!204 = !DILocalVariable(name: "m", arg: 1, scope: !202, file: !3, line: 85, type: !24)
!205 = !DILocalVariable(name: "win", arg: 2, scope: !202, file: !3, line: 85, type: !19)
!206 = !DILocalVariable(name: "t", arg: 3, scope: !202, file: !3, line: 85, type: !19)
!207 = !DILocalVariable(name: "meas", arg: 4, scope: !202, file: !3, line: 85, type: !19)
!208 = !DILocalVariable(name: "val", scope: !202, file: !3, line: 87, type: !30)
!209 = !DILocation(line: 85, column: 39, scope: !202)
!210 = !DILocation(line: 85, column: 46, scope: !202)
!211 = !DILocation(line: 85, column: 55, scope: !202)
!212 = !DILocation(line: 85, column: 62, scope: !202)
!213 = !DILocation(line: 87, column: 2, scope: !202)
!214 = !DILocation(line: 87, column: 23, scope: !202)
!215 = !DILocation(line: 87, column: 29, scope: !202)
!216 = !DILocation(line: 87, column: 36, scope: !202)
!217 = !DILocation(line: 87, column: 44, scope: !202)
!218 = !DILocation(line: 89, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !202, file: !3, line: 89, column: 6)
!220 = !DILocation(line: 89, column: 35, scope: !219)
!221 = !DILocation(line: 90, column: 6, scope: !219)
!222 = !DILocation(line: 89, column: 6, scope: !202)
!223 = !DILocation(line: 91, column: 23, scope: !219)
!224 = !DILocation(line: 91, column: 26, scope: !219)
!225 = !DILocation(line: 91, column: 29, scope: !219)
!226 = !DILocation(line: 91, column: 10, scope: !219)
!227 = !DILocation(line: 91, column: 3, scope: !219)
!228 = !DILocation(line: 93, column: 6, scope: !229)
!229 = distinct !DILexicalBlock(scope: !202, file: !3, line: 93, column: 6)
!230 = !DILocation(line: 93, column: 6, scope: !202)
!231 = !DILocation(line: 94, column: 3, scope: !229)
!232 = !DILocation(line: 94, column: 6, scope: !229)
!233 = !DILocation(line: 94, column: 13, scope: !229)
!234 = !DILocation(line: 94, column: 16, scope: !229)
!235 = !DILocation(line: 94, column: 23, scope: !229)
!236 = !DILocation(line: 94, column: 21, scope: !229)
!237 = !DILocation(line: 95, column: 11, scope: !238)
!238 = distinct !DILexicalBlock(scope: !229, file: !3, line: 95, column: 11)
!239 = !DILocation(line: 95, column: 11, scope: !229)
!240 = !DILocation(line: 96, column: 3, scope: !238)
!241 = !DILocation(line: 96, column: 6, scope: !238)
!242 = !DILocation(line: 96, column: 13, scope: !238)
!243 = !DILocation(line: 98, column: 30, scope: !202)
!244 = !DILocation(line: 98, column: 33, scope: !202)
!245 = !DILocation(line: 98, column: 9, scope: !202)
!246 = !DILocation(line: 98, column: 2, scope: !202)
!247 = !DILocation(line: 99, column: 1, scope: !202)
