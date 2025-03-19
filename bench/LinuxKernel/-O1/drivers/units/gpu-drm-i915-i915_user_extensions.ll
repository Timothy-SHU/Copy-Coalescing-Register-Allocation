; ModuleID = 'drivers/gpu/drm/i915/i915_user_extensions.c'
source_filename = "drivers/gpu/drm/i915/i915_user_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_user_extension = type { i64, i32, i32, [4 x i32] }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_user_extensions(ptr noundef %ext, ptr noundef %tbl, i32 noundef %count, ptr noundef %data) #0 align 16 !dbg !26 {
entry:
  %retval = alloca i32, align 4
  %ext.addr = alloca ptr, align 8
  %tbl.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %stackdepth = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %name = alloca i32, align 4
  %next = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %mbz__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp5 = alloca i32, align 4
  %tmp7 = alloca i64, align 8
  %mbz__17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp19 = alloca i64, align 8
  %__ret_gu20 = alloca i32, align 4
  %__val_gu21 = alloca i32, align 4
  %__tmp25 = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  %tmp29 = alloca i64, align 8
  %tmp42 = alloca i64, align 8
  %__ret_gu43 = alloca i32, align 4
  %__val_gu44 = alloca i32, align 4
  %__tmp49 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  %tmp53 = alloca i64, align 8
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp67 = alloca i32, align 4
  %tmp82 = alloca i64, align 8
  %__ret_gu83 = alloca i32, align 4
  %__val_gu84 = alloca i64, align 8
  %__tmp88 = alloca i64, align 8
  %tmp89 = alloca i64, align 8
  %tmp90 = alloca i64, align 8
  %v = alloca i64, align 8
  %tmp94 = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp102 = alloca i32, align 4
  %tmp103 = alloca ptr, align 8
  store ptr %ext, ptr %ext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ext.addr, metadata !48, metadata !DIExpression()), !dbg !103
  store ptr %tbl, ptr %tbl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tbl.addr, metadata !49, metadata !DIExpression()), !dbg !104
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !50, metadata !DIExpression()), !dbg !105
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !51, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %stackdepth) #7, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %stackdepth, metadata !52, metadata !DIExpression()), !dbg !108
  store i32 512, ptr %stackdepth, align 4, !dbg !108
  br label %while.cond, !dbg !109

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %ext.addr, align 8, !dbg !110
  %tobool = icmp ne ptr %0, null, !dbg !109
  br i1 %tobool, label %while.body, label %while.end, !dbg !109

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %i, metadata !53, metadata !DIExpression()), !dbg !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %err, metadata !55, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 4, ptr %name) #7, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %name, metadata !56, metadata !DIExpression()), !dbg !115
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %next, metadata !57, metadata !DIExpression()), !dbg !117
  %1 = load i32, ptr %stackdepth, align 4, !dbg !118
  %dec = add i32 %1, -1, !dbg !118
  store i32 %dec, ptr %stackdepth, align 4, !dbg !118
  %tobool1 = icmp ne i32 %1, 0, !dbg !118
  br i1 %tobool1, label %if.end, label %if.then, !dbg !120

if.then:                                          ; preds = %while.body
  store i32 -7, ptr %retval, align 4, !dbg !121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !121

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %mbz__) #7, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %mbz__, metadata !58, metadata !DIExpression()), !dbg !122
  call void @might_fault() #8, !dbg !123
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #7, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !60, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #7, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !63, metadata !DIExpression()), !dbg !124
  %2 = call i64 @llvm.read_register.i64(metadata !16), !dbg !124
  %3 = load ptr, ptr %ext.addr, align 8, !dbg !124
  %flags = getelementptr inbounds %struct.i915_user_extension, ptr %3, i32 0, i32 2, !dbg !124
  %4 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %flags, i64 4, i64 %2) #7, !dbg !124, !srcloc !125
  %asmresult = extractvalue { ptr, i32, i64 } %4, 0, !dbg !124
  %asmresult3 = extractvalue { ptr, i32, i64 } %4, 1, !dbg !124
  %asmresult4 = extractvalue { ptr, i32, i64 } %4, 2, !dbg !124
  %5 = ptrtoint ptr %asmresult to i64, !dbg !124
  %6 = trunc i64 %5 to i32, !dbg !124
  store i32 %6, ptr %__ret_gu, align 4, !dbg !124
  store i32 %asmresult3, ptr %__val_gu, align 4, !dbg !124
  call void @llvm.write_register.i64(metadata !16, i64 %asmresult4), !dbg !124
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #7, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !64, metadata !DIExpression()), !dbg !126
  %7 = load i32, ptr %__val_gu, align 4, !dbg !126
  %conv = zext i32 %7 to i64, !dbg !126
  store i64 %conv, ptr %__tmp, align 8, !dbg !126
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #8, !dbg !126
  %8 = load i64, ptr %__tmp, align 8, !dbg !126
  %conv6 = trunc i64 %8 to i32, !dbg !126
  store i32 %conv6, ptr %__val_gu, align 4, !dbg !126
  store i32 %conv6, ptr %tmp5, align 4, !dbg !126
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #7, !dbg !124
  %9 = load i32, ptr %tmp5, align 4, !dbg !126
  %10 = load i32, ptr %__val_gu, align 4, !dbg !124
  store i32 %10, ptr %mbz__, align 4, !dbg !124
  %11 = load i32, ptr %__ret_gu, align 4, !dbg !124
  %conv8 = sext i32 %11 to i64, !dbg !124
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !124
  store i64 %expval, ptr %tmp7, align 8, !dbg !124
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #7, !dbg !123
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #7, !dbg !123
  %12 = load i64, ptr %tmp7, align 8, !dbg !124
  store i64 %12, ptr %tmp2, align 8, !dbg !123
  %13 = load i64, ptr %tmp2, align 8, !dbg !123
  %tobool9 = icmp ne i64 %13, 0, !dbg !122
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !122

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !122

cond.false:                                       ; preds = %if.end
  %14 = load i32, ptr %mbz__, align 4, !dbg !122
  %tobool10 = icmp ne i32 %14, 0, !dbg !122
  %15 = zext i1 %tobool10 to i64, !dbg !122
  %cond = select i1 %tobool10, i32 -22, i32 0, !dbg !122
  br label %cond.end, !dbg !122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i32 [ -14, %cond.true ], [ %cond, %cond.false ], !dbg !122
  store i32 %cond11, ptr %tmp, align 4, !dbg !122
  call void @llvm.lifetime.end.p0(i64 4, ptr %mbz__) #7, !dbg !127
  %16 = load i32, ptr %tmp, align 4, !dbg !122
  store i32 %16, ptr %err, align 4, !dbg !128
  %17 = load i32, ptr %err, align 4, !dbg !129
  %tobool12 = icmp ne i32 %17, 0, !dbg !129
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !131

if.then13:                                        ; preds = %cond.end
  %18 = load i32, ptr %err, align 4, !dbg !132
  store i32 %18, ptr %retval, align 4, !dbg !133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !133

if.end14:                                         ; preds = %cond.end
  store i32 0, ptr %i, align 4, !dbg !134
  br label %for.cond, !dbg !135

for.cond:                                         ; preds = %for.inc, %if.end14
  %19 = load i32, ptr %i, align 4, !dbg !136
  %conv15 = sext i32 %19 to i64, !dbg !136
  %cmp = icmp ult i64 %conv15, 4, !dbg !137
  br i1 %cmp, label %for.body, label %for.end, !dbg !138

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mbz__17) #7, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %mbz__17, metadata !66, metadata !DIExpression()), !dbg !139
  call void @might_fault() #8, !dbg !140
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu20) #7, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__ret_gu20, metadata !71, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu21) #7, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__val_gu21, metadata !74, metadata !DIExpression()), !dbg !141
  %20 = call i64 @llvm.read_register.i64(metadata !16), !dbg !141
  %21 = load ptr, ptr %ext.addr, align 8, !dbg !141
  %rsvd = getelementptr inbounds %struct.i915_user_extension, ptr %21, i32 0, i32 3, !dbg !141
  %22 = load i32, ptr %i, align 4, !dbg !141
  %idxprom = sext i32 %22 to i64, !dbg !141
  %arrayidx = getelementptr [4 x i32], ptr %rsvd, i64 0, i64 %idxprom, !dbg !141
  %23 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %arrayidx, i64 4, i64 %20) #7, !dbg !141, !srcloc !142
  %asmresult22 = extractvalue { ptr, i32, i64 } %23, 0, !dbg !141
  %asmresult23 = extractvalue { ptr, i32, i64 } %23, 1, !dbg !141
  %asmresult24 = extractvalue { ptr, i32, i64 } %23, 2, !dbg !141
  %24 = ptrtoint ptr %asmresult22 to i64, !dbg !141
  %25 = trunc i64 %24 to i32, !dbg !141
  store i32 %25, ptr %__ret_gu20, align 4, !dbg !141
  store i32 %asmresult23, ptr %__val_gu21, align 4, !dbg !141
  call void @llvm.write_register.i64(metadata !16, i64 %asmresult24), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp25) #7, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %__tmp25, metadata !75, metadata !DIExpression()), !dbg !143
  %26 = load i32, ptr %__val_gu21, align 4, !dbg !143
  %conv26 = zext i32 %26 to i64, !dbg !143
  store i64 %conv26, ptr %__tmp25, align 8, !dbg !143
  call void @kmsan_unpoison_memory(ptr noundef %__tmp25, i64 noundef 8) #8, !dbg !143
  %27 = load i64, ptr %__tmp25, align 8, !dbg !143
  %conv28 = trunc i64 %27 to i32, !dbg !143
  store i32 %conv28, ptr %__val_gu21, align 4, !dbg !143
  store i32 %conv28, ptr %tmp27, align 4, !dbg !143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp25) #7, !dbg !141
  %28 = load i32, ptr %tmp27, align 4, !dbg !143
  %29 = load i32, ptr %__val_gu21, align 4, !dbg !141
  store i32 %29, ptr %mbz__17, align 4, !dbg !141
  %30 = load i32, ptr %__ret_gu20, align 4, !dbg !141
  %conv30 = sext i32 %30 to i64, !dbg !141
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !141
  store i64 %expval31, ptr %tmp29, align 8, !dbg !141
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu21) #7, !dbg !140
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu20) #7, !dbg !140
  %31 = load i64, ptr %tmp29, align 8, !dbg !141
  store i64 %31, ptr %tmp19, align 8, !dbg !140
  %32 = load i64, ptr %tmp19, align 8, !dbg !140
  %tobool32 = icmp ne i64 %32, 0, !dbg !139
  br i1 %tobool32, label %cond.true33, label %cond.false34, !dbg !139

cond.true33:                                      ; preds = %for.body
  br label %cond.end37, !dbg !139

cond.false34:                                     ; preds = %for.body
  %33 = load i32, ptr %mbz__17, align 4, !dbg !139
  %tobool35 = icmp ne i32 %33, 0, !dbg !139
  %34 = zext i1 %tobool35 to i64, !dbg !139
  %cond36 = select i1 %tobool35, i32 -22, i32 0, !dbg !139
  br label %cond.end37, !dbg !139

cond.end37:                                       ; preds = %cond.false34, %cond.true33
  %cond38 = phi i32 [ -14, %cond.true33 ], [ %cond36, %cond.false34 ], !dbg !139
  store i32 %cond38, ptr %tmp18, align 4, !dbg !139
  call void @llvm.lifetime.end.p0(i64 4, ptr %mbz__17) #7, !dbg !144
  %35 = load i32, ptr %tmp18, align 4, !dbg !139
  store i32 %35, ptr %err, align 4, !dbg !145
  %36 = load i32, ptr %err, align 4, !dbg !146
  %tobool39 = icmp ne i32 %36, 0, !dbg !146
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !148

if.then40:                                        ; preds = %cond.end37
  %37 = load i32, ptr %err, align 4, !dbg !149
  store i32 %37, ptr %retval, align 4, !dbg !150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !150

if.end41:                                         ; preds = %cond.end37
  br label %for.inc, !dbg !151

for.inc:                                          ; preds = %if.end41
  %38 = load i32, ptr %i, align 4, !dbg !152
  %inc = add i32 %38, 1, !dbg !152
  store i32 %inc, ptr %i, align 4, !dbg !152
  br label %for.cond, !dbg !153, !llvm.loop !154

for.end:                                          ; preds = %for.cond
  call void @might_fault() #8, !dbg !158
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu43) #7, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %__ret_gu43, metadata !77, metadata !DIExpression()), !dbg !159
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu44) #7, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %__val_gu44, metadata !81, metadata !DIExpression()), !dbg !159
  %39 = call i64 @llvm.read_register.i64(metadata !16), !dbg !159
  %40 = load ptr, ptr %ext.addr, align 8, !dbg !159
  %name45 = getelementptr inbounds %struct.i915_user_extension, ptr %40, i32 0, i32 1, !dbg !159
  %41 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %name45, i64 4, i64 %39) #7, !dbg !159, !srcloc !160
  %asmresult46 = extractvalue { ptr, i32, i64 } %41, 0, !dbg !159
  %asmresult47 = extractvalue { ptr, i32, i64 } %41, 1, !dbg !159
  %asmresult48 = extractvalue { ptr, i32, i64 } %41, 2, !dbg !159
  %42 = ptrtoint ptr %asmresult46 to i64, !dbg !159
  %43 = trunc i64 %42 to i32, !dbg !159
  store i32 %43, ptr %__ret_gu43, align 4, !dbg !159
  store i32 %asmresult47, ptr %__val_gu44, align 4, !dbg !159
  call void @llvm.write_register.i64(metadata !16, i64 %asmresult48), !dbg !159
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp49) #7, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %__tmp49, metadata !82, metadata !DIExpression()), !dbg !161
  %44 = load i32, ptr %__val_gu44, align 4, !dbg !161
  %conv50 = zext i32 %44 to i64, !dbg !161
  store i64 %conv50, ptr %__tmp49, align 8, !dbg !161
  call void @kmsan_unpoison_memory(ptr noundef %__tmp49, i64 noundef 8) #8, !dbg !161
  %45 = load i64, ptr %__tmp49, align 8, !dbg !161
  %conv52 = trunc i64 %45 to i32, !dbg !161
  store i32 %conv52, ptr %__val_gu44, align 4, !dbg !161
  store i32 %conv52, ptr %tmp51, align 4, !dbg !161
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp49) #7, !dbg !159
  %46 = load i32, ptr %tmp51, align 4, !dbg !161
  %47 = load i32, ptr %__val_gu44, align 4, !dbg !159
  store i32 %47, ptr %name, align 4, !dbg !159
  %48 = load i32, ptr %__ret_gu43, align 4, !dbg !159
  %conv54 = sext i32 %48 to i64, !dbg !159
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !159
  store i64 %expval55, ptr %tmp53, align 8, !dbg !159
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu44) #7, !dbg !158
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu43) #7, !dbg !158
  %49 = load i64, ptr %tmp53, align 8, !dbg !159
  store i64 %49, ptr %tmp42, align 8, !dbg !158
  %50 = load i64, ptr %tmp42, align 8, !dbg !158
  %tobool56 = icmp ne i64 %50, 0, !dbg !162
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !163

if.then57:                                        ; preds = %for.end
  store i32 -14, ptr %retval, align 4, !dbg !164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !164

if.end58:                                         ; preds = %for.end
  store i32 -22, ptr %err, align 4, !dbg !165
  %51 = load i32, ptr %name, align 4, !dbg !166
  %52 = load i32, ptr %count.addr, align 4, !dbg !167
  %cmp59 = icmp ult i32 %51, %52, !dbg !168
  br i1 %cmp59, label %if.then61, label %if.end78, !dbg !169

if.then61:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #7, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !84, metadata !DIExpression()), !dbg !170
  %53 = load i32, ptr %name, align 4, !dbg !170
  store i32 %53, ptr %_i, align 4, !dbg !170
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #7, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !88, metadata !DIExpression()), !dbg !170
  %54 = load i32, ptr %count.addr, align 4, !dbg !170
  store i32 %54, ptr %_s, align 4, !dbg !170
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #7, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !89, metadata !DIExpression()), !dbg !170
  %55 = load i32, ptr %_i, align 4, !dbg !170
  %conv62 = zext i32 %55 to i64, !dbg !170
  %56 = load i32, ptr %_s, align 4, !dbg !170
  %conv63 = zext i32 %56 to i64, !dbg !170
  %call = call i64 @array_index_mask_nospec(i64 noundef %conv62, i64 noundef %conv63) #8, !dbg !170
  store i64 %call, ptr %_mask, align 8, !dbg !170
  br label %do.body, !dbg !170

do.body:                                          ; preds = %if.then61
  br label %do.cond, !dbg !171

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !171

do.end:                                           ; preds = %do.cond
  br label %do.body64, !dbg !170

do.body64:                                        ; preds = %do.end
  br label %do.cond65, !dbg !173

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !173

do.end66:                                         ; preds = %do.cond65
  %57 = load i32, ptr %_i, align 4, !dbg !170
  %conv68 = zext i32 %57 to i64, !dbg !170
  %58 = load i64, ptr %_mask, align 8, !dbg !170
  %and = and i64 %conv68, %58, !dbg !170
  %conv69 = trunc i64 %and to i32, !dbg !170
  store i32 %conv69, ptr %tmp67, align 4, !dbg !173
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #7, !dbg !175
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #7, !dbg !175
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #7, !dbg !175
  %59 = load i32, ptr %tmp67, align 4, !dbg !170
  store i32 %59, ptr %name, align 4, !dbg !176
  %60 = load ptr, ptr %tbl.addr, align 8, !dbg !177
  %61 = load i32, ptr %name, align 4, !dbg !179
  %idxprom70 = zext i32 %61 to i64, !dbg !177
  %arrayidx71 = getelementptr ptr, ptr %60, i64 %idxprom70, !dbg !177
  %62 = load ptr, ptr %arrayidx71, align 8, !dbg !177
  %tobool72 = icmp ne ptr %62, null, !dbg !177
  br i1 %tobool72, label %if.then73, label %if.end77, !dbg !180

if.then73:                                        ; preds = %do.end66
  %63 = load ptr, ptr %tbl.addr, align 8, !dbg !181
  %64 = load i32, ptr %name, align 4, !dbg !182
  %idxprom74 = zext i32 %64 to i64, !dbg !181
  %arrayidx75 = getelementptr ptr, ptr %63, i64 %idxprom74, !dbg !181
  %65 = load ptr, ptr %arrayidx75, align 8, !dbg !181
  %66 = load ptr, ptr %ext.addr, align 8, !dbg !183
  %67 = load ptr, ptr %data.addr, align 8, !dbg !184
  %call76 = call i32 %65(ptr noundef %66, ptr noundef %67) #8, !dbg !181
  store i32 %call76, ptr %err, align 4, !dbg !185
  br label %if.end77, !dbg !186

if.end77:                                         ; preds = %if.then73, %do.end66
  br label %if.end78, !dbg !187

if.end78:                                         ; preds = %if.end77, %if.end58
  %68 = load i32, ptr %err, align 4, !dbg !188
  %tobool79 = icmp ne i32 %68, 0, !dbg !188
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !190

if.then80:                                        ; preds = %if.end78
  %69 = load i32, ptr %err, align 4, !dbg !191
  store i32 %69, ptr %retval, align 4, !dbg !192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !192

if.end81:                                         ; preds = %if.end78
  call void @might_fault() #8, !dbg !193
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu83) #7, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %__ret_gu83, metadata !90, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_gu84) #7, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %__val_gu84, metadata !94, metadata !DIExpression()), !dbg !194
  %70 = call i64 @llvm.read_register.i64(metadata !16), !dbg !194
  %71 = load ptr, ptr %ext.addr, align 8, !dbg !194
  %next_extension = getelementptr inbounds %struct.i915_user_extension, ptr %71, i32 0, i32 0, !dbg !194
  %72 = call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %next_extension, i64 8, i64 %70) #7, !dbg !194, !srcloc !195
  %asmresult85 = extractvalue { ptr, i64, i64 } %72, 0, !dbg !194
  %asmresult86 = extractvalue { ptr, i64, i64 } %72, 1, !dbg !194
  %asmresult87 = extractvalue { ptr, i64, i64 } %72, 2, !dbg !194
  %73 = ptrtoint ptr %asmresult85 to i64, !dbg !194
  %74 = trunc i64 %73 to i32, !dbg !194
  store i32 %74, ptr %__ret_gu83, align 4, !dbg !194
  store i64 %asmresult86, ptr %__val_gu84, align 8, !dbg !194
  call void @llvm.write_register.i64(metadata !16, i64 %asmresult87), !dbg !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp88) #7, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %__tmp88, metadata !95, metadata !DIExpression()), !dbg !196
  %75 = load i64, ptr %__val_gu84, align 8, !dbg !196
  store i64 %75, ptr %__tmp88, align 8, !dbg !196
  call void @kmsan_unpoison_memory(ptr noundef %__tmp88, i64 noundef 8) #8, !dbg !196
  %76 = load i64, ptr %__tmp88, align 8, !dbg !196
  store i64 %76, ptr %__val_gu84, align 8, !dbg !196
  store i64 %76, ptr %tmp89, align 8, !dbg !196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp88) #7, !dbg !194
  %77 = load i64, ptr %tmp89, align 8, !dbg !196
  %78 = load i64, ptr %__val_gu84, align 8, !dbg !194
  store i64 %78, ptr %next, align 8, !dbg !194
  %79 = load i32, ptr %__ret_gu83, align 4, !dbg !194
  %conv91 = sext i32 %79 to i64, !dbg !194
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !194
  store i64 %expval92, ptr %tmp90, align 8, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_gu84) #7, !dbg !193
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu83) #7, !dbg !193
  %80 = load i64, ptr %tmp90, align 8, !dbg !194
  store i64 %80, ptr %tmp82, align 8, !dbg !193
  %81 = load i64, ptr %tmp82, align 8, !dbg !193
  %tobool93 = icmp ne i64 %81, 0, !dbg !197
  br i1 %tobool93, label %if.then98, label %lor.lhs.false, !dbg !198

lor.lhs.false:                                    ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #7, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %v, metadata !97, metadata !DIExpression()), !dbg !199
  store i64 0, ptr %v, align 8, !dbg !199
  %82 = load i64, ptr %next, align 8, !dbg !199
  %83 = load i64, ptr %v, align 8, !dbg !199
  %84 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %82, i64 %83), !dbg !199
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !199
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !199
  store i64 %86, ptr %v, align 8, !dbg !199
  %call95 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %85) #8, !dbg !199
  %frombool = zext i1 %call95 to i8, !dbg !199
  store i8 %frombool, ptr %tmp94, align 1, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #7, !dbg !200
  %87 = load i8, ptr %tmp94, align 1, !dbg !199, !range !201, !noundef !202
  %tobool96 = trunc i8 %87 to i1, !dbg !199
  br i1 %tobool96, label %if.then98, label %if.end99, !dbg !203

if.then98:                                        ; preds = %lor.lhs.false, %if.end81
  store i32 -14, ptr %retval, align 4, !dbg !204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !204

if.end99:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !99, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !102, metadata !DIExpression()), !dbg !205
  %cmp100 = icmp eq ptr %__dummy, %__dummy2, !dbg !205
  %conv101 = zext i1 %cmp100 to i32, !dbg !205
  store i32 1, ptr %tmp102, align 4, !dbg !205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !206
  %88 = load i32, ptr %tmp102, align 4, !dbg !205
  %89 = load i64, ptr %next, align 8, !dbg !206
  %90 = inttoptr i64 %89 to ptr, !dbg !206
  store ptr %90, ptr %tmp103, align 8, !dbg !206
  %91 = load ptr, ptr %tmp103, align 8, !dbg !206
  store ptr %91, ptr %ext.addr, align 8, !dbg !207
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !208
  br label %cleanup, !dbg !208

cleanup:                                          ; preds = %if.end99, %if.then98, %if.then80, %if.then57, %if.then40, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !208
  call void @llvm.lifetime.end.p0(i64 4, ptr %name) #7, !dbg !208
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !208
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !208
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup107 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !109, !llvm.loop !209

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107, !dbg !210

cleanup107:                                       ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %stackdepth) #7, !dbg !211
  %92 = load i32, ptr %retval, align 4, !dbg !211
  ret i32 %92, !dbg !211
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #3 align 16 !dbg !212 {
entry:
  ret void, !dbg !216
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !217 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !228, metadata !DIExpression()), !dbg !230
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !229, metadata !DIExpression()), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #3 align 16 !dbg !233 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !238, metadata !DIExpression()), !dbg !241
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !239, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !240, metadata !DIExpression()), !dbg !244
  %0 = load i64, ptr %size.addr, align 8, !dbg !245
  %1 = load i64, ptr %index.addr, align 8, !dbg !246
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #7, !dbg !247, !srcloc !248
  store i64 %2, ptr %mask, align 8, !dbg !247
  %3 = load i64, ptr %mask, align 8, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !250
  ret i64 %3, !dbg !251
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !252 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !261, !range !201, !noundef !202
  %tobool = trunc i8 %0 to i1, !dbg !261
  %lnot = xor i1 %tobool, true, !dbg !261
  %lnot1 = xor i1 %lnot, true, !dbg !261
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !261
  %conv = sext i32 %lnot.ext to i64, !dbg !261
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !261
  %tobool2 = icmp ne i64 %expval, 0, !dbg !261
  ret i1 %tobool2, !dbg !262
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #5 = { nocallback nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_user_extensions.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_user_extensions\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_user_extensions.ll drivers/gpu/drm/i915/i915_user_extensions.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/i915/i915_user_extensions.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cdfa51e830957833e2844132aa2bdf95")
!2 = !{!3, !8, !10, !11, !5, !12, !13}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !4, line: 23, baseType: !5)
!4 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !6, line: 31, baseType: !7)
!6 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!7 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !6, line: 27, baseType: !9)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !4, line: 21, baseType: !8)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !14, line: 42, baseType: !15)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!"rsp"}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 8, !"cf-protection-branch", i32 1}
!21 = !{i32 4, !"function_return_thunk_extern", i32 1}
!22 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!23 = !{i32 1, !"Code Model", i32 2}
!24 = !{i32 1, !"override-stack-alignment", i32 8}
!25 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!26 = distinct !DISubprogram(name: "i915_user_extensions", scope: !1, file: !1, line: 16, type: !27, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!27 = !DISubroutineType(types: !28)
!28 = !{!10, !29, !40, !9, !12}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_user_extension", file: !31, line: 102, size: 256, elements: !32)
!31 = !DIFile(filename: "./include/uapi/drm/i915_drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d93c9c7fd679c3eb28e365fdd57f7b85")
!32 = !{!33, !34, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next_extension", scope: !30, file: !31, line: 108, baseType: !5, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !31, line: 118, baseType: !8, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !31, line: 124, baseType: !8, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd", scope: !30, file: !31, line: 130, baseType: !37, size: 128, offset: 128)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "i915_user_extension_fn", file: !43, line: 12, baseType: !44)
!43 = !DIFile(filename: "drivers/gpu/drm/i915/i915_user_extensions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0dc62a98174c56e4c3f0155319215782")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!10, !29, !12}
!47 = !{!48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !63, !64, !66, !71, !74, !75, !77, !81, !82, !84, !88, !89, !90, !94, !95, !97, !99, !102}
!48 = !DILocalVariable(name: "ext", arg: 1, scope: !26, file: !1, line: 16, type: !29)
!49 = !DILocalVariable(name: "tbl", arg: 2, scope: !26, file: !1, line: 17, type: !40)
!50 = !DILocalVariable(name: "count", arg: 3, scope: !26, file: !1, line: 18, type: !9)
!51 = !DILocalVariable(name: "data", arg: 4, scope: !26, file: !1, line: 19, type: !12)
!52 = !DILocalVariable(name: "stackdepth", scope: !26, file: !1, line: 21, type: !9)
!53 = !DILocalVariable(name: "i", scope: !54, file: !1, line: 24, type: !10)
!54 = distinct !DILexicalBlock(scope: !26, file: !1, line: 23, column: 14)
!55 = !DILocalVariable(name: "err", scope: !54, file: !1, line: 24, type: !10)
!56 = !DILocalVariable(name: "name", scope: !54, file: !1, line: 25, type: !11)
!57 = !DILocalVariable(name: "next", scope: !54, file: !1, line: 26, type: !3)
!58 = !DILocalVariable(name: "mbz__", scope: !59, file: !1, line: 31, type: !8)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 31, column: 9)
!60 = !DILocalVariable(name: "__ret_gu", scope: !61, file: !1, line: 31, type: !10)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 31, column: 9)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 31, column: 9)
!63 = !DILocalVariable(name: "__val_gu", scope: !61, file: !1, line: 31, type: !9)
!64 = !DILocalVariable(name: "__tmp", scope: !65, file: !1, line: 31, type: !3)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 31, column: 9)
!66 = !DILocalVariable(name: "mbz__", scope: !67, file: !1, line: 36, type: !8)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 36, column: 10)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 35, column: 47)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 35, column: 3)
!70 = distinct !DILexicalBlock(scope: !54, file: !1, line: 35, column: 3)
!71 = !DILocalVariable(name: "__ret_gu", scope: !72, file: !1, line: 36, type: !10)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 36, column: 10)
!73 = distinct !DILexicalBlock(scope: !67, file: !1, line: 36, column: 10)
!74 = !DILocalVariable(name: "__val_gu", scope: !72, file: !1, line: 36, type: !9)
!75 = !DILocalVariable(name: "__tmp", scope: !76, file: !1, line: 36, type: !3)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 36, column: 10)
!77 = !DILocalVariable(name: "__ret_gu", scope: !78, file: !1, line: 41, type: !10)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 41, column: 7)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 41, column: 7)
!80 = distinct !DILexicalBlock(scope: !54, file: !1, line: 41, column: 7)
!81 = !DILocalVariable(name: "__val_gu", scope: !78, file: !1, line: 41, type: !9)
!82 = !DILocalVariable(name: "__tmp", scope: !83, file: !1, line: 41, type: !3)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 41, column: 7)
!84 = !DILocalVariable(name: "_i", scope: !85, file: !1, line: 46, type: !11)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 46, column: 11)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 45, column: 21)
!87 = distinct !DILexicalBlock(scope: !54, file: !1, line: 45, column: 7)
!88 = !DILocalVariable(name: "_s", scope: !85, file: !1, line: 46, type: !9)
!89 = !DILocalVariable(name: "_mask", scope: !85, file: !1, line: 46, type: !15)
!90 = !DILocalVariable(name: "__ret_gu", scope: !91, file: !1, line: 53, type: !10)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 53, column: 7)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 53, column: 7)
!93 = distinct !DILexicalBlock(scope: !54, file: !1, line: 53, column: 7)
!94 = !DILocalVariable(name: "__val_gu", scope: !91, file: !1, line: 53, type: !15)
!95 = !DILocalVariable(name: "__tmp", scope: !96, file: !1, line: 53, type: !3)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 53, column: 7)
!97 = !DILocalVariable(name: "v", scope: !98, file: !1, line: 54, type: !13)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 54, column: 7)
!99 = !DILocalVariable(name: "__dummy", scope: !100, file: !1, line: 57, type: !3)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 57, column: 9)
!101 = distinct !DILexicalBlock(scope: !54, file: !1, line: 57, column: 9)
!102 = !DILocalVariable(name: "__dummy2", scope: !100, file: !1, line: 57, type: !3)
!103 = !DILocation(line: 16, column: 61, scope: !26)
!104 = !DILocation(line: 17, column: 35, scope: !26)
!105 = !DILocation(line: 18, column: 18, scope: !26)
!106 = !DILocation(line: 19, column: 11, scope: !26)
!107 = !DILocation(line: 21, column: 2, scope: !26)
!108 = !DILocation(line: 21, column: 15, scope: !26)
!109 = !DILocation(line: 23, column: 2, scope: !26)
!110 = !DILocation(line: 23, column: 9, scope: !26)
!111 = !DILocation(line: 24, column: 3, scope: !54)
!112 = !DILocation(line: 24, column: 7, scope: !54)
!113 = !DILocation(line: 24, column: 10, scope: !54)
!114 = !DILocation(line: 25, column: 3, scope: !54)
!115 = !DILocation(line: 25, column: 7, scope: !54)
!116 = !DILocation(line: 26, column: 3, scope: !54)
!117 = !DILocation(line: 26, column: 7, scope: !54)
!118 = !DILocation(line: 28, column: 18, scope: !119)
!119 = distinct !DILexicalBlock(scope: !54, file: !1, line: 28, column: 7)
!120 = !DILocation(line: 28, column: 7, scope: !54)
!121 = !DILocation(line: 29, column: 4, scope: !119)
!122 = !DILocation(line: 31, column: 9, scope: !59)
!123 = !DILocation(line: 31, column: 9, scope: !62)
!124 = !DILocation(line: 31, column: 9, scope: !61)
!125 = !{i64 2152430137}
!126 = !DILocation(line: 31, column: 9, scope: !65)
!127 = !DILocation(line: 31, column: 9, scope: !54)
!128 = !DILocation(line: 31, column: 7, scope: !54)
!129 = !DILocation(line: 32, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !54, file: !1, line: 32, column: 7)
!131 = !DILocation(line: 32, column: 7, scope: !54)
!132 = !DILocation(line: 33, column: 11, scope: !130)
!133 = !DILocation(line: 33, column: 4, scope: !130)
!134 = !DILocation(line: 35, column: 10, scope: !70)
!135 = !DILocation(line: 35, column: 8, scope: !70)
!136 = !DILocation(line: 35, column: 15, scope: !69)
!137 = !DILocation(line: 35, column: 17, scope: !69)
!138 = !DILocation(line: 35, column: 3, scope: !70)
!139 = !DILocation(line: 36, column: 10, scope: !67)
!140 = !DILocation(line: 36, column: 10, scope: !73)
!141 = !DILocation(line: 36, column: 10, scope: !72)
!142 = !{i64 2152432707}
!143 = !DILocation(line: 36, column: 10, scope: !76)
!144 = !DILocation(line: 36, column: 10, scope: !68)
!145 = !DILocation(line: 36, column: 8, scope: !68)
!146 = !DILocation(line: 37, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !68, file: !1, line: 37, column: 8)
!148 = !DILocation(line: 37, column: 8, scope: !68)
!149 = !DILocation(line: 38, column: 12, scope: !147)
!150 = !DILocation(line: 38, column: 5, scope: !147)
!151 = !DILocation(line: 39, column: 3, scope: !68)
!152 = !DILocation(line: 35, column: 43, scope: !69)
!153 = !DILocation(line: 35, column: 3, scope: !69)
!154 = distinct !{!154, !138, !155, !156, !157}
!155 = !DILocation(line: 39, column: 3, scope: !70)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !DILocation(line: 41, column: 7, scope: !79)
!159 = !DILocation(line: 41, column: 7, scope: !78)
!160 = !{i64 2152434821}
!161 = !DILocation(line: 41, column: 7, scope: !83)
!162 = !DILocation(line: 41, column: 7, scope: !80)
!163 = !DILocation(line: 41, column: 7, scope: !54)
!164 = !DILocation(line: 42, column: 4, scope: !80)
!165 = !DILocation(line: 44, column: 7, scope: !54)
!166 = !DILocation(line: 45, column: 7, scope: !87)
!167 = !DILocation(line: 45, column: 14, scope: !87)
!168 = !DILocation(line: 45, column: 12, scope: !87)
!169 = !DILocation(line: 45, column: 7, scope: !54)
!170 = !DILocation(line: 46, column: 11, scope: !85)
!171 = !DILocation(line: 46, column: 11, scope: !172)
!172 = distinct !DILexicalBlock(scope: !85, file: !1, line: 46, column: 11)
!173 = !DILocation(line: 46, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !85, file: !1, line: 46, column: 11)
!175 = !DILocation(line: 46, column: 11, scope: !86)
!176 = !DILocation(line: 46, column: 9, scope: !86)
!177 = !DILocation(line: 47, column: 8, scope: !178)
!178 = distinct !DILexicalBlock(scope: !86, file: !1, line: 47, column: 8)
!179 = !DILocation(line: 47, column: 12, scope: !178)
!180 = !DILocation(line: 47, column: 8, scope: !86)
!181 = !DILocation(line: 48, column: 11, scope: !178)
!182 = !DILocation(line: 48, column: 15, scope: !178)
!183 = !DILocation(line: 48, column: 21, scope: !178)
!184 = !DILocation(line: 48, column: 26, scope: !178)
!185 = !DILocation(line: 48, column: 9, scope: !178)
!186 = !DILocation(line: 48, column: 5, scope: !178)
!187 = !DILocation(line: 49, column: 3, scope: !86)
!188 = !DILocation(line: 50, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !54, file: !1, line: 50, column: 7)
!190 = !DILocation(line: 50, column: 7, scope: !54)
!191 = !DILocation(line: 51, column: 11, scope: !189)
!192 = !DILocation(line: 51, column: 4, scope: !189)
!193 = !DILocation(line: 53, column: 7, scope: !92)
!194 = !DILocation(line: 53, column: 7, scope: !91)
!195 = !{i64 2152439566}
!196 = !DILocation(line: 53, column: 7, scope: !96)
!197 = !DILocation(line: 53, column: 7, scope: !93)
!198 = !DILocation(line: 53, column: 44, scope: !93)
!199 = !DILocation(line: 54, column: 7, scope: !98)
!200 = !DILocation(line: 54, column: 7, scope: !93)
!201 = !{i8 0, i8 2}
!202 = !{}
!203 = !DILocation(line: 53, column: 7, scope: !54)
!204 = !DILocation(line: 55, column: 4, scope: !93)
!205 = !DILocation(line: 57, column: 9, scope: !100)
!206 = !DILocation(line: 57, column: 9, scope: !101)
!207 = !DILocation(line: 57, column: 7, scope: !54)
!208 = !DILocation(line: 58, column: 2, scope: !26)
!209 = distinct !{!209, !109, !208, !156, !157}
!210 = !DILocation(line: 60, column: 2, scope: !26)
!211 = !DILocation(line: 61, column: 1, scope: !26)
!212 = distinct !DISubprogram(name: "might_fault", scope: !213, file: !213, line: 202, type: !214, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!213 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!214 = !DISubroutineType(types: !215)
!215 = !{null}
!216 = !DILocation(line: 202, column: 40, scope: !212)
!217 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !218, file: !218, line: 70, type: !219, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !227)
!218 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !223}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 61, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !225, line: 72, baseType: !226)
!225 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !225, line: 16, baseType: !15)
!227 = !{!228, !229}
!228 = !DILocalVariable(name: "address", arg: 1, scope: !217, file: !218, line: 70, type: !221)
!229 = !DILocalVariable(name: "size", arg: 2, scope: !217, file: !218, line: 70, type: !223)
!230 = !DILocation(line: 70, column: 54, scope: !217)
!231 = !DILocation(line: 70, column: 70, scope: !217)
!232 = !DILocation(line: 72, column: 1, scope: !217)
!233 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !234, file: !234, line: 36, type: !235, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!234 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!235 = !DISubroutineType(types: !236)
!236 = !{!15, !15, !15}
!237 = !{!238, !239, !240}
!238 = !DILocalVariable(name: "index", arg: 1, scope: !233, file: !234, line: 36, type: !15)
!239 = !DILocalVariable(name: "size", arg: 2, scope: !233, file: !234, line: 37, type: !15)
!240 = !DILocalVariable(name: "mask", scope: !233, file: !234, line: 39, type: !15)
!241 = !DILocation(line: 36, column: 67, scope: !233)
!242 = !DILocation(line: 37, column: 17, scope: !233)
!243 = !DILocation(line: 39, column: 2, scope: !233)
!244 = !DILocation(line: 39, column: 16, scope: !233)
!245 = !DILocation(line: 43, column: 9, scope: !233)
!246 = !DILocation(line: 43, column: 20, scope: !233)
!247 = !DILocation(line: 41, column: 2, scope: !233)
!248 = !{i64 175204}
!249 = !DILocation(line: 45, column: 9, scope: !233)
!250 = !DILocation(line: 46, column: 1, scope: !233)
!251 = !DILocation(line: 45, column: 2, scope: !233)
!252 = distinct !DISubprogram(name: "__must_check_overflow", scope: !253, file: !253, line: 51, type: !254, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !258)
!253 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !256}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !14, line: 35, baseType: !257)
!257 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!258 = !{!259}
!259 = !DILocalVariable(name: "overflow", arg: 1, scope: !252, file: !253, line: 51, type: !256)
!260 = !DILocation(line: 51, column: 60, scope: !252)
!261 = !DILocation(line: 53, column: 9, scope: !252)
!262 = !DILocation(line: 53, column: 2, scope: !252)
