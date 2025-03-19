; ModuleID = 'ipc/syscall.c'
source_filename = "ipc/syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_ipc_kludge = type { i32, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @compat_ksys_ipc(i32 noundef %call, i32 noundef %first, i32 noundef %second, i32 noundef %third, i32 noundef %ptr, i32 noundef %fifth) #0 align 16 !dbg !43 {
entry:
  %retval = alloca i32, align 4
  %call.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %second.addr = alloca i32, align 4
  %third.addr = alloca i32, align 4
  %ptr.addr = alloca i32, align 4
  %fifth.addr = alloca i32, align 4
  %version = alloca i32, align 4
  %pad = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  %tmp18 = alloca i64, align 8
  %uptr = alloca ptr, align 8
  %ipck = alloca %struct.compat_ipc_kludge, align 4
  %err = alloca i32, align 4
  %raddr = alloca i64, align 8
  %tmp69 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp74 = alloca i64, align 8
  store i32 %call, ptr %call.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !47, metadata !DIExpression()), !dbg !85
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !48, metadata !DIExpression()), !dbg !86
  store i32 %second, ptr %second.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !49, metadata !DIExpression()), !dbg !87
  store i32 %third, ptr %third.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %third.addr, metadata !50, metadata !DIExpression()), !dbg !88
  store i32 %ptr, ptr %ptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !51, metadata !DIExpression()), !dbg !89
  store i32 %fifth, ptr %fifth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fifth.addr, metadata !52, metadata !DIExpression()), !dbg !90
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #12, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %version, metadata !53, metadata !DIExpression()), !dbg !92
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad) #12, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %pad, metadata !54, metadata !DIExpression()), !dbg !94
  %0 = load i32, ptr %call.addr, align 4, !dbg !95
  %shr = lshr i32 %0, 16, !dbg !96
  store i32 %shr, ptr %version, align 4, !dbg !97
  %1 = load i32, ptr %call.addr, align 4, !dbg !98
  %and = and i32 %1, 65535, !dbg !98
  store i32 %and, ptr %call.addr, align 4, !dbg !98
  %2 = load i32, ptr %call.addr, align 4, !dbg !99
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb3
    i32 2, label %sw.bb8
    i32 3, label %sw.bb11
    i32 11, label %sw.bb25
    i32 12, label %sw.bb28
    i32 13, label %sw.bb50
    i32 14, label %sw.bb53
    i32 21, label %sw.bb57
    i32 22, label %sw.bb80
    i32 23, label %sw.bb84
    i32 24, label %sw.bb88
  ], !dbg !100

sw.bb:                                            ; preds = %entry
  %3 = load i32, ptr %first.addr, align 4, !dbg !101
  %4 = load i32, ptr %ptr.addr, align 4, !dbg !102
  %call1 = call ptr @compat_ptr(i32 noundef %4) #13, !dbg !103
  %5 = load i32, ptr %second.addr, align 4, !dbg !104
  %call2 = call i64 @ksys_semtimedop(i32 noundef %3, ptr noundef %call1, i32 noundef %5, ptr noundef null) #13, !dbg !105
  %conv = trunc i64 %call2 to i32, !dbg !105
  store i32 %conv, ptr %retval, align 4, !dbg !106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !106

sw.bb3:                                           ; preds = %entry
  %6 = load i32, ptr %first.addr, align 4, !dbg !107
  %7 = load i32, ptr %ptr.addr, align 4, !dbg !108
  %call4 = call ptr @compat_ptr(i32 noundef %7) #13, !dbg !109
  %8 = load i32, ptr %second.addr, align 4, !dbg !110
  %9 = load i32, ptr %fifth.addr, align 4, !dbg !111
  %call5 = call ptr @compat_ptr(i32 noundef %9) #13, !dbg !112
  %call6 = call i64 @compat_ksys_semtimedop(i32 noundef %6, ptr noundef %call4, i32 noundef %8, ptr noundef %call5) #13, !dbg !113
  %conv7 = trunc i64 %call6 to i32, !dbg !113
  store i32 %conv7, ptr %retval, align 4, !dbg !114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !114

sw.bb8:                                           ; preds = %entry
  %10 = load i32, ptr %first.addr, align 4, !dbg !115
  %11 = load i32, ptr %second.addr, align 4, !dbg !116
  %12 = load i32, ptr %third.addr, align 4, !dbg !117
  %call9 = call i64 @ksys_semget(i32 noundef %10, i32 noundef %11, i32 noundef %12) #13, !dbg !118
  %conv10 = trunc i64 %call9 to i32, !dbg !118
  store i32 %conv10, ptr %retval, align 4, !dbg !119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !119

sw.bb11:                                          ; preds = %entry
  %13 = load i32, ptr %ptr.addr, align 4, !dbg !120
  %tobool = icmp ne i32 %13, 0, !dbg !120
  br i1 %tobool, label %if.end, label %if.then, !dbg !122

if.then:                                          ; preds = %sw.bb11
  store i32 -22, ptr %retval, align 4, !dbg !123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !123

if.end:                                           ; preds = %sw.bb11
  call void @might_fault() #13, !dbg !124
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #12, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !55, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #12, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !60, metadata !DIExpression()), !dbg !125
  %14 = call i64 @llvm.read_register.i64(metadata !33), !dbg !125
  %15 = load i32, ptr %ptr.addr, align 4, !dbg !125
  %call12 = call ptr @compat_ptr(i32 noundef %15) #13, !dbg !125
  %16 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %call12, i64 4, i64 %14) #12, !dbg !125, !srcloc !126
  %asmresult = extractvalue { ptr, i32, i64 } %16, 0, !dbg !125
  %asmresult13 = extractvalue { ptr, i32, i64 } %16, 1, !dbg !125
  %asmresult14 = extractvalue { ptr, i32, i64 } %16, 2, !dbg !125
  %17 = ptrtoint ptr %asmresult to i64, !dbg !125
  %18 = trunc i64 %17 to i32, !dbg !125
  store i32 %18, ptr %__ret_gu, align 4, !dbg !125
  store i32 %asmresult13, ptr %__val_gu, align 4, !dbg !125
  call void @llvm.write_register.i64(metadata !33, i64 %asmresult14), !dbg !125
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #12, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !61, metadata !DIExpression()), !dbg !127
  %19 = load i32, ptr %__val_gu, align 4, !dbg !127
  %conv15 = zext i32 %19 to i64, !dbg !127
  store i64 %conv15, ptr %__tmp, align 8, !dbg !127
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #13, !dbg !127
  %20 = load i64, ptr %__tmp, align 8, !dbg !127
  %conv17 = trunc i64 %20 to i32, !dbg !127
  store i32 %conv17, ptr %__val_gu, align 4, !dbg !127
  store i32 %conv17, ptr %tmp16, align 4, !dbg !127
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #12, !dbg !125
  %21 = load i32, ptr %tmp16, align 4, !dbg !127
  %22 = load i32, ptr %__val_gu, align 4, !dbg !125
  store i32 %22, ptr %pad, align 4, !dbg !125
  %23 = load i32, ptr %__ret_gu, align 4, !dbg !125
  %conv19 = sext i32 %23 to i64, !dbg !125
  %expval = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !125
  store i64 %expval, ptr %tmp18, align 8, !dbg !125
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #12, !dbg !124
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #12, !dbg !124
  %24 = load i64, ptr %tmp18, align 8, !dbg !125
  store i64 %24, ptr %tmp, align 8, !dbg !124
  %25 = load i64, ptr %tmp, align 8, !dbg !124
  %tobool20 = icmp ne i64 %25, 0, !dbg !128
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !129

if.then21:                                        ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !130

if.end22:                                         ; preds = %if.end
  %26 = load i32, ptr %first.addr, align 4, !dbg !131
  %27 = load i32, ptr %second.addr, align 4, !dbg !132
  %28 = load i32, ptr %third.addr, align 4, !dbg !133
  %29 = load i32, ptr %pad, align 4, !dbg !134
  %call23 = call i64 @compat_ksys_old_semctl(i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29) #13, !dbg !135
  %conv24 = trunc i64 %call23 to i32, !dbg !135
  store i32 %conv24, ptr %retval, align 4, !dbg !136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !136

sw.bb25:                                          ; preds = %entry
  %30 = load i32, ptr %first.addr, align 4, !dbg !137
  %31 = load i32, ptr %ptr.addr, align 4, !dbg !138
  %32 = load i32, ptr %second.addr, align 4, !dbg !139
  %33 = load i32, ptr %third.addr, align 4, !dbg !140
  %call26 = call i64 @compat_ksys_msgsnd(i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33) #13, !dbg !141
  %conv27 = trunc i64 %call26 to i32, !dbg !141
  store i32 %conv27, ptr %retval, align 4, !dbg !142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !142

sw.bb28:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %uptr) #12, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %uptr, metadata !63, metadata !DIExpression()), !dbg !144
  %34 = load i32, ptr %ptr.addr, align 4, !dbg !145
  %call29 = call ptr @compat_ptr(i32 noundef %34) #13, !dbg !146
  store ptr %call29, ptr %uptr, align 8, !dbg !144
  %35 = load i32, ptr %first.addr, align 4, !dbg !147
  %cmp = icmp slt i32 %35, 0, !dbg !149
  br i1 %cmp, label %if.then33, label %lor.lhs.false, !dbg !150

lor.lhs.false:                                    ; preds = %sw.bb28
  %36 = load i32, ptr %second.addr, align 4, !dbg !151
  %cmp31 = icmp slt i32 %36, 0, !dbg !152
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !153

if.then33:                                        ; preds = %lor.lhs.false, %sw.bb28
  store i32 -22, ptr %retval, align 4, !dbg !154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !154

if.end34:                                         ; preds = %lor.lhs.false
  %37 = load i32, ptr %version, align 4, !dbg !155
  %tobool35 = icmp ne i32 %37, 0, !dbg !155
  br i1 %tobool35, label %if.end46, label %if.then36, !dbg !156

if.then36:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %ipck) #12, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %ipck, metadata !65, metadata !DIExpression()), !dbg !158
  %38 = load ptr, ptr %uptr, align 8, !dbg !159
  %tobool37 = icmp ne ptr %38, null, !dbg !159
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !161

if.then38:                                        ; preds = %if.then36
  store i32 -22, ptr %retval, align 4, !dbg !162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !162

if.end39:                                         ; preds = %if.then36
  %39 = load ptr, ptr %uptr, align 8, !dbg !163
  %call40 = call i64 @copy_from_user(ptr noundef %ipck, ptr noundef %39, i64 noundef 8) #13, !dbg !165
  %tobool41 = icmp ne i64 %call40, 0, !dbg !165
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !166

if.then42:                                        ; preds = %if.end39
  store i32 -14, ptr %retval, align 4, !dbg !167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !167

if.end43:                                         ; preds = %if.end39
  %40 = load i32, ptr %first.addr, align 4, !dbg !168
  %msgp = getelementptr inbounds %struct.compat_ipc_kludge, ptr %ipck, i32 0, i32 0, !dbg !169
  %41 = load i32, ptr %msgp, align 4, !dbg !169
  %42 = load i32, ptr %second.addr, align 4, !dbg !170
  %msgtyp = getelementptr inbounds %struct.compat_ipc_kludge, ptr %ipck, i32 0, i32 1, !dbg !171
  %43 = load i32, ptr %msgtyp, align 4, !dbg !171
  %44 = load i32, ptr %third.addr, align 4, !dbg !172
  %call44 = call i64 @compat_ksys_msgrcv(i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44) #13, !dbg !173
  %conv45 = trunc i64 %call44 to i32, !dbg !173
  store i32 %conv45, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

cleanup:                                          ; preds = %if.end43, %if.then42, %if.then38
  call void @llvm.lifetime.end.p0(i64 8, ptr %ipck) #12, !dbg !175
  br label %cleanup49

if.end46:                                         ; preds = %if.end34
  %45 = load i32, ptr %first.addr, align 4, !dbg !176
  %46 = load i32, ptr %ptr.addr, align 4, !dbg !177
  %47 = load i32, ptr %second.addr, align 4, !dbg !178
  %48 = load i32, ptr %fifth.addr, align 4, !dbg !179
  %49 = load i32, ptr %third.addr, align 4, !dbg !180
  %call47 = call i64 @compat_ksys_msgrcv(i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49) #13, !dbg !181
  %conv48 = trunc i64 %call47 to i32, !dbg !181
  store i32 %conv48, ptr %retval, align 4, !dbg !182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !182

cleanup49:                                        ; preds = %if.end46, %cleanup, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %uptr) #12, !dbg !183
  br label %cleanup92

sw.bb50:                                          ; preds = %entry
  %50 = load i32, ptr %first.addr, align 4, !dbg !184
  %51 = load i32, ptr %second.addr, align 4, !dbg !185
  %call51 = call i64 @ksys_msgget(i32 noundef %50, i32 noundef %51) #13, !dbg !186
  %conv52 = trunc i64 %call51 to i32, !dbg !186
  store i32 %conv52, ptr %retval, align 4, !dbg !187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !187

sw.bb53:                                          ; preds = %entry
  %52 = load i32, ptr %first.addr, align 4, !dbg !188
  %53 = load i32, ptr %second.addr, align 4, !dbg !189
  %54 = load i32, ptr %ptr.addr, align 4, !dbg !190
  %call54 = call ptr @compat_ptr(i32 noundef %54) #13, !dbg !191
  %call55 = call i64 @compat_ksys_old_msgctl(i32 noundef %52, i32 noundef %53, ptr noundef %call54) #13, !dbg !192
  %conv56 = trunc i64 %call55 to i32, !dbg !192
  store i32 %conv56, ptr %retval, align 4, !dbg !193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !193

sw.bb57:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %err, metadata !75, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %raddr) #12, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %raddr, metadata !77, metadata !DIExpression()), !dbg !197
  %55 = load i32, ptr %version, align 4, !dbg !198
  %cmp58 = icmp eq i32 %55, 1, !dbg !200
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !201

if.then60:                                        ; preds = %sw.bb57
  store i32 -22, ptr %retval, align 4, !dbg !202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !202

if.end61:                                         ; preds = %sw.bb57
  %56 = load i32, ptr %first.addr, align 4, !dbg !203
  %57 = load i32, ptr %ptr.addr, align 4, !dbg !204
  %call62 = call ptr @compat_ptr(i32 noundef %57) #13, !dbg !205
  %58 = load i32, ptr %second.addr, align 4, !dbg !206
  %call63 = call i64 @do_shmat(i32 noundef %56, ptr noundef %call62, i32 noundef %58, ptr noundef %raddr, i64 noundef 4096) #13, !dbg !207
  %conv64 = trunc i64 %call63 to i32, !dbg !207
  store i32 %conv64, ptr %err, align 4, !dbg !208
  %59 = load i32, ptr %err, align 4, !dbg !209
  %cmp65 = icmp slt i32 %59, 0, !dbg !211
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !212

if.then67:                                        ; preds = %if.end61
  %60 = load i32, ptr %err, align 4, !dbg !213
  store i32 %60, ptr %retval, align 4, !dbg !214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !214

if.end68:                                         ; preds = %if.end61
  call void @might_fault() #13, !dbg !215
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #12, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !78, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #12, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !81, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #12, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !82, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #12, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !83, metadata !DIExpression()), !dbg !216
  %61 = load i64, ptr %raddr, align 8, !dbg !216
  %conv70 = trunc i64 %61 to i32, !dbg !216
  store i32 %conv70, ptr %__x, align 4, !dbg !216
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !84, metadata !DIExpression()), !dbg !216
  %62 = load i32, ptr %third.addr, align 4, !dbg !216
  %call71 = call ptr @compat_ptr(i32 noundef %62) #13, !dbg !216
  store ptr %call71, ptr %__ptr, align 8, !dbg !216
  %63 = load ptr, ptr %__ptr, align 8, !dbg !216
  store ptr %63, ptr %__ptr_pu, align 8, !dbg !216
  %64 = load i32, ptr %__x, align 4, !dbg !216
  store i32 %64, ptr %__val_pu, align 4, !dbg !216
  %65 = call i64 @llvm.read_register.i64(metadata !33), !dbg !216
  %66 = load ptr, ptr %__ptr_pu, align 8, !dbg !216
  %67 = load i32, ptr %__val_pu, align 4, !dbg !216
  %68 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %66, i32 %67, i64 4, i64 %65) #12, !dbg !216, !srcloc !217
  %asmresult72 = extractvalue { ptr, i64 } %68, 0, !dbg !216
  %asmresult73 = extractvalue { ptr, i64 } %68, 1, !dbg !216
  %69 = ptrtoint ptr %asmresult72 to i64, !dbg !216
  %70 = trunc i64 %69 to i32, !dbg !216
  store i32 %70, ptr %__ret_pu, align 4, !dbg !216
  call void @llvm.write_register.i64(metadata !33, i64 %asmresult73), !dbg !216
  %71 = load ptr, ptr %__ptr, align 8, !dbg !218
  call void @kmsan_copy_to_user(ptr noundef %71, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #13, !dbg !218
  %72 = load i32, ptr %__ret_pu, align 4, !dbg !216
  %conv75 = sext i32 %72 to i64, !dbg !216
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !216
  store i64 %expval76, ptr %tmp74, align 8, !dbg !216
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !215
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #12, !dbg !215
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #12, !dbg !215
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #12, !dbg !215
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #12, !dbg !215
  %73 = load i64, ptr %tmp74, align 8, !dbg !216
  store i64 %73, ptr %tmp69, align 8, !dbg !215
  %74 = load i64, ptr %tmp69, align 8, !dbg !215
  %conv77 = trunc i64 %74 to i32, !dbg !220
  store i32 %conv77, ptr %retval, align 4, !dbg !221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !221

cleanup78:                                        ; preds = %if.end68, %if.then67, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %raddr) #12, !dbg !222
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !222
  br label %cleanup92

sw.bb80:                                          ; preds = %entry
  %75 = load i32, ptr %ptr.addr, align 4, !dbg !223
  %call81 = call ptr @compat_ptr(i32 noundef %75) #13, !dbg !224
  %call82 = call i64 @ksys_shmdt(ptr noundef %call81) #13, !dbg !225
  %conv83 = trunc i64 %call82 to i32, !dbg !225
  store i32 %conv83, ptr %retval, align 4, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !226

sw.bb84:                                          ; preds = %entry
  %76 = load i32, ptr %first.addr, align 4, !dbg !227
  %77 = load i32, ptr %second.addr, align 4, !dbg !228
  %conv85 = zext i32 %77 to i64, !dbg !229
  %78 = load i32, ptr %third.addr, align 4, !dbg !230
  %call86 = call i64 @ksys_shmget(i32 noundef %76, i64 noundef %conv85, i32 noundef %78) #13, !dbg !231
  %conv87 = trunc i64 %call86 to i32, !dbg !231
  store i32 %conv87, ptr %retval, align 4, !dbg !232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !232

sw.bb88:                                          ; preds = %entry
  %79 = load i32, ptr %first.addr, align 4, !dbg !233
  %80 = load i32, ptr %second.addr, align 4, !dbg !234
  %81 = load i32, ptr %ptr.addr, align 4, !dbg !235
  %call89 = call ptr @compat_ptr(i32 noundef %81) #13, !dbg !236
  %call90 = call i64 @compat_ksys_old_shmctl(i32 noundef %79, i32 noundef %80, ptr noundef %call89) #13, !dbg !237
  %conv91 = trunc i64 %call90 to i32, !dbg !237
  store i32 %conv91, ptr %retval, align 4, !dbg !238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !238

sw.epilog:                                        ; preds = %entry
  store i32 -38, ptr %retval, align 4, !dbg !239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !239

cleanup92:                                        ; preds = %sw.epilog, %sw.bb88, %sw.bb84, %sw.bb80, %cleanup78, %sw.bb53, %sw.bb50, %cleanup49, %sw.bb25, %if.end22, %if.then21, %if.then, %sw.bb8, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad) #12, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #12, !dbg !240
  %82 = load i32, ptr %retval, align 4, !dbg !240
  ret i32 %82, !dbg !240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !241 dso_local i64 @ksys_semtimedop(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #4 align 16 !dbg !265 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !272
  %conv = zext i32 %0 to i64, !dbg !273
  %1 = inttoptr i64 %conv to ptr, !dbg !274
  ret ptr %1, !dbg !275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !276 dso_local i64 @compat_ksys_semtimedop(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !287 dso_local i64 @ksys_semget(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #4 align 16 !dbg !294 {
entry:
  ret void, !dbg !298
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !299 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !309, metadata !DIExpression()), !dbg !311
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !310, metadata !DIExpression()), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !314 dso_local i64 @compat_ksys_old_semctl(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !318 dso_local i64 @compat_ksys_msgsnd(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #8 align 16 !dbg !322 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !327, metadata !DIExpression()), !dbg !330
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !328, metadata !DIExpression()), !dbg !331
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !329, metadata !DIExpression()), !dbg !332
  %0 = load ptr, ptr %to.addr, align 8, !dbg !333
  %1 = load i64, ptr %n.addr, align 8, !dbg !335
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #13, !dbg !336
  br i1 %call, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !338
  %3 = load ptr, ptr %from.addr, align 8, !dbg !339
  %4 = load i64, ptr %n.addr, align 8, !dbg !340
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #13, !dbg !341
  store i64 %call1, ptr %n.addr, align 8, !dbg !342
  br label %if.end, !dbg !343

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !344
  ret i64 %5, !dbg !345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !346 dso_local i64 @compat_ksys_msgrcv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !349 dso_local i64 @ksys_msgget(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !352 dso_local i64 @compat_ksys_old_msgctl(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !355 dso_local i64 @do_shmat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #4 align 16 !dbg !361 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !365, metadata !DIExpression()), !dbg !369
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !366, metadata !DIExpression()), !dbg !370
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !367, metadata !DIExpression()), !dbg !371
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !368, metadata !DIExpression()), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !374 dso_local i64 @ksys_shmdt(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !377 dso_local i64 @ksys_shmget(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !380 dso_local i64 @compat_ksys_old_shmctl(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_ipc(ptr noundef %regs) #0 align 16 !dbg !381 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !441
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !441
  %1 = load i64, ptr %bx, align 8, !dbg !441
  %conv = trunc i64 %1 to i32, !dbg !441
  %conv1 = zext i32 %conv to i64, !dbg !441
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !441
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !441
  %3 = load i64, ptr %cx, align 8, !dbg !441
  %conv2 = trunc i64 %3 to i32, !dbg !441
  %conv3 = zext i32 %conv2 to i64, !dbg !441
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !441
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !441
  %5 = load i64, ptr %dx, align 8, !dbg !441
  %conv4 = trunc i64 %5 to i32, !dbg !441
  %conv5 = zext i32 %conv4 to i64, !dbg !441
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !441
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !441
  %7 = load i64, ptr %si, align 8, !dbg !441
  %conv6 = trunc i64 %7 to i32, !dbg !441
  %conv7 = zext i32 %conv6 to i64, !dbg !441
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !441
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !441
  %9 = load i64, ptr %di, align 8, !dbg !441
  %conv8 = trunc i64 %9 to i32, !dbg !441
  %conv9 = zext i32 %conv8 to i64, !dbg !441
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !441
  %bp = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 4, !dbg !441
  %11 = load i64, ptr %bp, align 8, !dbg !441
  %conv10 = trunc i64 %11 to i32, !dbg !441
  %conv11 = zext i32 %conv10 to i64, !dbg !441
  %call = call i64 @__se_compat_sys_ipc(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9, i64 noundef %conv11) #13, !dbg !441
  ret i64 %call, !dbg !441
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_ipc(i64 noundef %call, i64 noundef %first, i64 noundef %second, i64 noundef %third, i64 noundef %ptr, i64 noundef %fifth) #0 align 16 !dbg !442 {
entry:
  %call.addr = alloca i64, align 8
  %first.addr = alloca i64, align 8
  %second.addr = alloca i64, align 8
  %third.addr = alloca i64, align 8
  %ptr.addr = alloca i64, align 8
  %fifth.addr = alloca i64, align 8
  store i64 %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !446, metadata !DIExpression()), !dbg !452
  store i64 %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !447, metadata !DIExpression()), !dbg !452
  store i64 %second, ptr %second.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !448, metadata !DIExpression()), !dbg !452
  store i64 %third, ptr %third.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %third.addr, metadata !449, metadata !DIExpression()), !dbg !452
  store i64 %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !450, metadata !DIExpression()), !dbg !452
  store i64 %fifth, ptr %fifth.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifth.addr, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load i64, ptr %call.addr, align 8, !dbg !452
  %conv = trunc i64 %0 to i32, !dbg !452
  %1 = load i64, ptr %first.addr, align 8, !dbg !452
  %conv1 = trunc i64 %1 to i32, !dbg !452
  %2 = load i64, ptr %second.addr, align 8, !dbg !452
  %conv2 = trunc i64 %2 to i32, !dbg !452
  %3 = load i64, ptr %third.addr, align 8, !dbg !452
  %conv3 = trunc i64 %3 to i32, !dbg !452
  %4 = load i64, ptr %ptr.addr, align 8, !dbg !452
  %conv4 = trunc i64 %4 to i32, !dbg !452
  %5 = load i64, ptr %fifth.addr, align 8, !dbg !452
  %conv5 = trunc i64 %5 to i32, !dbg !452
  %call6 = call i64 @__do_compat_sys_ipc(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #13, !dbg !452
  ret i64 %call6, !dbg !452
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #8 align 16 !dbg !453 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !459, metadata !DIExpression()), !dbg !469
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !460, metadata !DIExpression()), !dbg !470
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !461, metadata !DIExpression()), !dbg !471
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #12, !dbg !472
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !462, metadata !DIExpression()), !dbg !473
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !474
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !475
  %conv = trunc i64 %1 to i32, !dbg !475
  store i32 %conv, ptr %sz, align 4, !dbg !473
  %2 = load i32, ptr %sz, align 4, !dbg !476
  %cmp = icmp sge i32 %2, 0, !dbg !476
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !476

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !476
  %conv2 = sext i32 %3 to i64, !dbg !476
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !476
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !476
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !478
  %lnot = xor i1 %5, true, !dbg !476
  %lnot5 = xor i1 %lnot, true, !dbg !476
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !476
  %conv6 = sext i32 %lnot.ext to i64, !dbg !476
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !476
  %tobool = icmp ne i64 %expval, 0, !dbg !476
  br i1 %tobool, label %if.then, label %if.end12, !dbg !479

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !480
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !483
  br i1 %7, label %if.else, label %if.then7, !dbg !484

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !485
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !486
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #13, !dbg !487
  br label %if.end11, !dbg !487

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !488, !range !490, !noundef !491
  %tobool8 = trunc i8 %10 to i1, !dbg !488
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !492

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #13, !dbg !493, !srcloc !494
  br label %if.end, !dbg !493

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #13, !dbg !495, !srcloc !496
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !497

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !498
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !463, metadata !DIExpression()), !dbg !498
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !498
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !498
  %lnot15 = xor i1 %cmp13, true, !dbg !498
  %lnot17 = xor i1 %lnot15, true, !dbg !498
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !498
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !498
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !499
  %tobool19 = icmp ne i32 %12, 0, !dbg !499
  %lnot20 = xor i1 %tobool19, true, !dbg !499
  %lnot22 = xor i1 %lnot20, true, !dbg !499
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !499
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !499
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !499
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !499
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !498

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !499

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !500
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !466, metadata !DIExpression()), !dbg !500
  store i32 2307, ptr %__flags, align 4, !dbg !500
  br label %do.body28, !dbg !500

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !501

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !501

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !500

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !503
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #12, !dbg !503, !srcloc !505
  br label %do.cond30, !dbg !503

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !503

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !500

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !506

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !506

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !499
  br label %do.cond35, !dbg !500

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !500

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !500

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !498
  %tobool38 = icmp ne i32 %14, 0, !dbg !498
  %lnot39 = xor i1 %tobool38, true, !dbg !498
  %lnot41 = xor i1 %lnot39, true, !dbg !498
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !498
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !498
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !498
  store i64 %expval44, ptr %tmp, align 8, !dbg !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !508
  %15 = load i64, ptr %tmp, align 8, !dbg !498
  %tobool45 = icmp ne i64 %15, 0, !dbg !508
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !509

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !510

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !511
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !512
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !513, !range !490, !noundef !491
  %tobool48 = trunc i8 %18 to i1, !dbg !513
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #13, !dbg !514
  store i1 true, ptr %retval, align 1, !dbg !515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !515

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #12, !dbg !516
  %19 = load i1, ptr %retval, align 1, !dbg !516
  ret i1 %19, !dbg !516
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !517 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !518 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !522, metadata !DIExpression()), !dbg !524
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !523, metadata !DIExpression()), !dbg !525
  %0 = load i32, ptr %size.addr, align 4, !dbg !526
  %1 = load i64, ptr %count.addr, align 8, !dbg !528
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #13, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !531 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !532 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !533 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !537, metadata !DIExpression()), !dbg !540
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !538, metadata !DIExpression()), !dbg !541
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !539, metadata !DIExpression()), !dbg !542
  ret void, !dbg !543
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !544 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_ipc(i32 noundef %call, i32 noundef %first, i32 noundef %second, i32 noundef %third, i32 noundef %ptr, i32 noundef %fifth) #4 align 16 !dbg !545 {
entry:
  %call.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %second.addr = alloca i32, align 4
  %third.addr = alloca i32, align 4
  %ptr.addr = alloca i32, align 4
  %fifth.addr = alloca i32, align 4
  store i32 %call, ptr %call.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !549, metadata !DIExpression()), !dbg !555
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !550, metadata !DIExpression()), !dbg !555
  store i32 %second, ptr %second.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !551, metadata !DIExpression()), !dbg !555
  store i32 %third, ptr %third.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %third.addr, metadata !552, metadata !DIExpression()), !dbg !555
  store i32 %ptr, ptr %ptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !553, metadata !DIExpression()), !dbg !555
  store i32 %fifth, ptr %fifth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fifth.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i32, ptr %call.addr, align 4, !dbg !556
  %1 = load i32, ptr %first.addr, align 4, !dbg !557
  %2 = load i32, ptr %second.addr, align 4, !dbg !558
  %3 = load i32, ptr %third.addr, align 4, !dbg !559
  %4 = load i32, ptr %ptr.addr, align 4, !dbg !560
  %5 = load i32, ptr %fifth.addr, align 4, !dbg !561
  %call1 = call i32 @compat_ksys_ipc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13, !dbg !562
  %conv = sext i32 %call1 to i64, !dbg !562
  ret i64 %conv, !dbg !563
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }

!llvm.dbg.cu = !{!7}
!llvm.named.register.rsp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF ipc/.syscall.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22ipc/syscall\22 -D KBUILD_BASENAME=\22syscall\22 -D KBUILD_MODNAME=\22syscall\22 -D __KBUILD_MODNAME=kmod_syscall -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o ipc/syscall.ll ipc/syscall.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !16, globals: !32, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "ipc/syscall.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83307d83146c168599c1678574c452ff")
!9 = !{!10}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !{!17, !22, !18, !25, !12, !28, !29, !30, !31}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !12)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !24)
!24 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ulong_t", file: !27, line: 45, baseType: !18)
!27 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !27, line: 46, baseType: !18)
!32 = !{!0}
!33 = !{!"rsp"}
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 8, !"cf-protection-branch", i32 1}
!38 = !{i32 4, !"function_return_thunk_extern", i32 1}
!39 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!40 = !{i32 1, !"Code Model", i32 2}
!41 = !{i32 1, !"override-stack-alignment", i32 8}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = distinct !DISubprogram(name: "compat_ksys_ipc", scope: !8, file: !8, line: 130, type: !44, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!30, !18, !30, !30, !18, !31, !18}
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !60, !61, !63, !65, !75, !77, !78, !81, !82, !83, !84}
!47 = !DILocalVariable(name: "call", arg: 1, scope: !43, file: !8, line: 130, type: !18)
!48 = !DILocalVariable(name: "first", arg: 2, scope: !43, file: !8, line: 130, type: !30)
!49 = !DILocalVariable(name: "second", arg: 3, scope: !43, file: !8, line: 130, type: !30)
!50 = !DILocalVariable(name: "third", arg: 4, scope: !43, file: !8, line: 131, type: !18)
!51 = !DILocalVariable(name: "ptr", arg: 5, scope: !43, file: !8, line: 131, type: !31)
!52 = !DILocalVariable(name: "fifth", arg: 6, scope: !43, file: !8, line: 131, type: !18)
!53 = !DILocalVariable(name: "version", scope: !43, file: !8, line: 133, type: !30)
!54 = !DILocalVariable(name: "pad", scope: !43, file: !8, line: 134, type: !18)
!55 = !DILocalVariable(name: "__ret_gu", scope: !56, file: !8, line: 153, type: !30)
!56 = distinct !DILexicalBlock(scope: !57, file: !8, line: 153, column: 7)
!57 = distinct !DILexicalBlock(scope: !58, file: !8, line: 153, column: 7)
!58 = distinct !DILexicalBlock(scope: !59, file: !8, line: 153, column: 7)
!59 = distinct !DILexicalBlock(scope: !43, file: !8, line: 139, column: 16)
!60 = !DILocalVariable(name: "__val_gu", scope: !56, file: !8, line: 153, type: !12)
!61 = !DILocalVariable(name: "__tmp", scope: !62, file: !8, line: 153, type: !22)
!62 = distinct !DILexicalBlock(scope: !56, file: !8, line: 153, column: 7)
!63 = !DILocalVariable(name: "uptr", scope: !64, file: !8, line: 161, type: !28)
!64 = distinct !DILexicalBlock(scope: !59, file: !8, line: 160, column: 15)
!65 = !DILocalVariable(name: "ipck", scope: !66, file: !8, line: 167, type: !68)
!66 = distinct !DILexicalBlock(scope: !67, file: !8, line: 166, column: 17)
!67 = distinct !DILexicalBlock(scope: !64, file: !8, line: 166, column: 7)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_ipc_kludge", file: !8, line: 124, size: 64, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "msgp", scope: !68, file: !8, line: 125, baseType: !31, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "msgtyp", scope: !68, file: !8, line: 126, baseType: !72, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !27, line: 42, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !19, line: 20, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !21, line: 26, baseType: !30)
!75 = !DILocalVariable(name: "err", scope: !76, file: !8, line: 183, type: !30)
!76 = distinct !DILexicalBlock(scope: !59, file: !8, line: 182, column: 14)
!77 = !DILocalVariable(name: "raddr", scope: !76, file: !8, line: 184, type: !29)
!78 = !DILocalVariable(name: "__ret_pu", scope: !79, file: !8, line: 192, type: !30)
!79 = distinct !DILexicalBlock(scope: !80, file: !8, line: 192, column: 10)
!80 = distinct !DILexicalBlock(scope: !76, file: !8, line: 192, column: 10)
!81 = !DILocalVariable(name: "__ptr_pu", scope: !79, file: !8, line: 192, type: !28)
!82 = !DILocalVariable(name: "__val_pu", scope: !79, file: !8, line: 192, type: !26)
!83 = !DILocalVariable(name: "__x", scope: !79, file: !8, line: 192, type: !26)
!84 = !DILocalVariable(name: "__ptr", scope: !79, file: !8, line: 192, type: !25)
!85 = !DILocation(line: 130, column: 25, scope: !43)
!86 = !DILocation(line: 130, column: 35, scope: !43)
!87 = !DILocation(line: 130, column: 46, scope: !43)
!88 = !DILocation(line: 131, column: 6, scope: !43)
!89 = !DILocation(line: 131, column: 27, scope: !43)
!90 = !DILocation(line: 131, column: 36, scope: !43)
!91 = !DILocation(line: 133, column: 2, scope: !43)
!92 = !DILocation(line: 133, column: 6, scope: !43)
!93 = !DILocation(line: 134, column: 2, scope: !43)
!94 = !DILocation(line: 134, column: 6, scope: !43)
!95 = !DILocation(line: 136, column: 12, scope: !43)
!96 = !DILocation(line: 136, column: 17, scope: !43)
!97 = !DILocation(line: 136, column: 10, scope: !43)
!98 = !DILocation(line: 137, column: 7, scope: !43)
!99 = !DILocation(line: 139, column: 10, scope: !43)
!100 = !DILocation(line: 139, column: 2, scope: !43)
!101 = !DILocation(line: 142, column: 26, scope: !59)
!102 = !DILocation(line: 142, column: 44, scope: !59)
!103 = !DILocation(line: 142, column: 33, scope: !59)
!104 = !DILocation(line: 142, column: 50, scope: !59)
!105 = !DILocation(line: 142, column: 10, scope: !59)
!106 = !DILocation(line: 142, column: 3, scope: !59)
!107 = !DILocation(line: 146, column: 33, scope: !59)
!108 = !DILocation(line: 146, column: 51, scope: !59)
!109 = !DILocation(line: 146, column: 40, scope: !59)
!110 = !DILocation(line: 146, column: 57, scope: !59)
!111 = !DILocation(line: 147, column: 18, scope: !59)
!112 = !DILocation(line: 147, column: 7, scope: !59)
!113 = !DILocation(line: 146, column: 10, scope: !59)
!114 = !DILocation(line: 146, column: 3, scope: !59)
!115 = !DILocation(line: 149, column: 22, scope: !59)
!116 = !DILocation(line: 149, column: 29, scope: !59)
!117 = !DILocation(line: 149, column: 37, scope: !59)
!118 = !DILocation(line: 149, column: 10, scope: !59)
!119 = !DILocation(line: 149, column: 3, scope: !59)
!120 = !DILocation(line: 151, column: 8, scope: !121)
!121 = distinct !DILexicalBlock(scope: !59, file: !8, line: 151, column: 7)
!122 = !DILocation(line: 151, column: 7, scope: !59)
!123 = !DILocation(line: 152, column: 4, scope: !121)
!124 = !DILocation(line: 153, column: 7, scope: !57)
!125 = !DILocation(line: 153, column: 7, scope: !56)
!126 = !{i64 2155588798}
!127 = !DILocation(line: 153, column: 7, scope: !62)
!128 = !DILocation(line: 153, column: 7, scope: !58)
!129 = !DILocation(line: 153, column: 7, scope: !59)
!130 = !DILocation(line: 154, column: 4, scope: !58)
!131 = !DILocation(line: 155, column: 33, scope: !59)
!132 = !DILocation(line: 155, column: 40, scope: !59)
!133 = !DILocation(line: 155, column: 48, scope: !59)
!134 = !DILocation(line: 155, column: 55, scope: !59)
!135 = !DILocation(line: 155, column: 10, scope: !59)
!136 = !DILocation(line: 155, column: 3, scope: !59)
!137 = !DILocation(line: 158, column: 29, scope: !59)
!138 = !DILocation(line: 158, column: 36, scope: !59)
!139 = !DILocation(line: 158, column: 41, scope: !59)
!140 = !DILocation(line: 158, column: 49, scope: !59)
!141 = !DILocation(line: 158, column: 10, scope: !59)
!142 = !DILocation(line: 158, column: 3, scope: !59)
!143 = !DILocation(line: 161, column: 3, scope: !64)
!144 = !DILocation(line: 161, column: 16, scope: !64)
!145 = !DILocation(line: 161, column: 34, scope: !64)
!146 = !DILocation(line: 161, column: 23, scope: !64)
!147 = !DILocation(line: 163, column: 7, scope: !148)
!148 = distinct !DILexicalBlock(scope: !64, file: !8, line: 163, column: 7)
!149 = !DILocation(line: 163, column: 13, scope: !148)
!150 = !DILocation(line: 163, column: 17, scope: !148)
!151 = !DILocation(line: 163, column: 20, scope: !148)
!152 = !DILocation(line: 163, column: 27, scope: !148)
!153 = !DILocation(line: 163, column: 7, scope: !64)
!154 = !DILocation(line: 164, column: 4, scope: !148)
!155 = !DILocation(line: 166, column: 8, scope: !67)
!156 = !DILocation(line: 166, column: 7, scope: !64)
!157 = !DILocation(line: 167, column: 4, scope: !66)
!158 = !DILocation(line: 167, column: 29, scope: !66)
!159 = !DILocation(line: 168, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !66, file: !8, line: 168, column: 8)
!161 = !DILocation(line: 168, column: 8, scope: !66)
!162 = !DILocation(line: 169, column: 5, scope: !160)
!163 = !DILocation(line: 170, column: 30, scope: !164)
!164 = distinct !DILexicalBlock(scope: !66, file: !8, line: 170, column: 8)
!165 = !DILocation(line: 170, column: 8, scope: !164)
!166 = !DILocation(line: 170, column: 8, scope: !66)
!167 = !DILocation(line: 171, column: 5, scope: !164)
!168 = !DILocation(line: 172, column: 30, scope: !66)
!169 = !DILocation(line: 172, column: 42, scope: !66)
!170 = !DILocation(line: 172, column: 48, scope: !66)
!171 = !DILocation(line: 173, column: 13, scope: !66)
!172 = !DILocation(line: 173, column: 21, scope: !66)
!173 = !DILocation(line: 172, column: 11, scope: !66)
!174 = !DILocation(line: 172, column: 4, scope: !66)
!175 = !DILocation(line: 174, column: 3, scope: !67)
!176 = !DILocation(line: 175, column: 29, scope: !64)
!177 = !DILocation(line: 175, column: 36, scope: !64)
!178 = !DILocation(line: 175, column: 41, scope: !64)
!179 = !DILocation(line: 175, column: 49, scope: !64)
!180 = !DILocation(line: 175, column: 56, scope: !64)
!181 = !DILocation(line: 175, column: 10, scope: !64)
!182 = !DILocation(line: 175, column: 3, scope: !64)
!183 = !DILocation(line: 176, column: 2, scope: !59)
!184 = !DILocation(line: 178, column: 22, scope: !59)
!185 = !DILocation(line: 178, column: 29, scope: !59)
!186 = !DILocation(line: 178, column: 10, scope: !59)
!187 = !DILocation(line: 178, column: 3, scope: !59)
!188 = !DILocation(line: 180, column: 33, scope: !59)
!189 = !DILocation(line: 180, column: 40, scope: !59)
!190 = !DILocation(line: 180, column: 59, scope: !59)
!191 = !DILocation(line: 180, column: 48, scope: !59)
!192 = !DILocation(line: 180, column: 10, scope: !59)
!193 = !DILocation(line: 180, column: 3, scope: !59)
!194 = !DILocation(line: 183, column: 3, scope: !76)
!195 = !DILocation(line: 183, column: 7, scope: !76)
!196 = !DILocation(line: 184, column: 3, scope: !76)
!197 = !DILocation(line: 184, column: 17, scope: !76)
!198 = !DILocation(line: 186, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !76, file: !8, line: 186, column: 7)
!200 = !DILocation(line: 186, column: 15, scope: !199)
!201 = !DILocation(line: 186, column: 7, scope: !76)
!202 = !DILocation(line: 187, column: 4, scope: !199)
!203 = !DILocation(line: 188, column: 18, scope: !76)
!204 = !DILocation(line: 188, column: 36, scope: !76)
!205 = !DILocation(line: 188, column: 25, scope: !76)
!206 = !DILocation(line: 188, column: 42, scope: !76)
!207 = !DILocation(line: 188, column: 9, scope: !76)
!208 = !DILocation(line: 188, column: 7, scope: !76)
!209 = !DILocation(line: 190, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !76, file: !8, line: 190, column: 7)
!211 = !DILocation(line: 190, column: 11, scope: !210)
!212 = !DILocation(line: 190, column: 7, scope: !76)
!213 = !DILocation(line: 191, column: 11, scope: !210)
!214 = !DILocation(line: 191, column: 4, scope: !210)
!215 = !DILocation(line: 192, column: 10, scope: !80)
!216 = !DILocation(line: 192, column: 10, scope: !79)
!217 = !{i64 2155591522}
!218 = !DILocation(line: 192, column: 10, scope: !219)
!219 = distinct !DILexicalBlock(scope: !79, file: !8, line: 192, column: 10)
!220 = !DILocation(line: 192, column: 10, scope: !76)
!221 = !DILocation(line: 192, column: 3, scope: !76)
!222 = !DILocation(line: 193, column: 2, scope: !59)
!223 = !DILocation(line: 195, column: 32, scope: !59)
!224 = !DILocation(line: 195, column: 21, scope: !59)
!225 = !DILocation(line: 195, column: 10, scope: !59)
!226 = !DILocation(line: 195, column: 3, scope: !59)
!227 = !DILocation(line: 197, column: 22, scope: !59)
!228 = !DILocation(line: 197, column: 43, scope: !59)
!229 = !DILocation(line: 197, column: 29, scope: !59)
!230 = !DILocation(line: 197, column: 51, scope: !59)
!231 = !DILocation(line: 197, column: 10, scope: !59)
!232 = !DILocation(line: 197, column: 3, scope: !59)
!233 = !DILocation(line: 199, column: 33, scope: !59)
!234 = !DILocation(line: 199, column: 40, scope: !59)
!235 = !DILocation(line: 199, column: 59, scope: !59)
!236 = !DILocation(line: 199, column: 48, scope: !59)
!237 = !DILocation(line: 199, column: 10, scope: !59)
!238 = !DILocation(line: 199, column: 3, scope: !59)
!239 = !DILocation(line: 202, column: 2, scope: !43)
!240 = !DILocation(line: 203, column: 1, scope: !43)
!241 = !DISubprogram(name: "ksys_semtimedop", scope: !242, file: !242, line: 1255, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DIFile(filename: "./include/linux/syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dab99c2b3f99363182fad69da25bf5f3")
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !30, !246, !12, !255}
!245 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sembuf", file: !248, line: 40, size: 48, elements: !249)
!248 = !DIFile(filename: "./include/uapi/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "be0cf3b7d2da8487d49ee2976444c88b")
!249 = !{!250, !252, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sem_num", scope: !247, file: !248, line: 41, baseType: !251, size: 16)
!251 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sem_op", scope: !247, file: !248, line: 42, baseType: !253, size: 16, offset: 16)
!253 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sem_flg", scope: !247, file: !248, line: 43, baseType: !253, size: 16, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !258, line: 7, size: 128, elements: !259)
!258 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!259 = !{!260, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !257, file: !258, line: 8, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !262, line: 93, baseType: !263)
!262 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!263 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !257, file: !258, line: 9, baseType: !263, size: 64, offset: 64)
!265 = distinct !DISubprogram(name: "compat_ptr", scope: !266, file: !266, line: 977, type: !267, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !269)
!266 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!267 = !DISubroutineType(types: !268)
!268 = !{!28, !31}
!269 = !{!270}
!270 = !DILocalVariable(name: "uptr", arg: 1, scope: !265, file: !266, line: 977, type: !31)
!271 = !DILocation(line: 977, column: 53, scope: !265)
!272 = !DILocation(line: 979, column: 39, scope: !265)
!273 = !DILocation(line: 979, column: 24, scope: !265)
!274 = !DILocation(line: 979, column: 9, scope: !265)
!275 = !DILocation(line: 979, column: 2, scope: !265)
!276 = !DISubprogram(name: "compat_ksys_semtimedop", scope: !242, file: !242, line: 1269, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!245, !30, !246, !12, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !282, line: 7, size: 64, elements: !283)
!282 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!283 = !{!284, !286}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !281, file: !282, line: 8, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !282, line: 5, baseType: !73)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !281, file: !282, line: 9, baseType: !73, size: 32, offset: 32)
!287 = !DISubprogram(name: "ksys_semget", scope: !242, file: !242, line: 1258, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubroutineType(types: !289)
!289 = !{!245, !290, !30, !30}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_t", file: !291, line: 29, baseType: !292)
!291 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_key_t", file: !293, line: 33, baseType: !30)
!293 = !DIFile(filename: "./include/uapi/linux/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a17a63983e2bd17804115d95083fe9c4")
!294 = distinct !DISubprogram(name: "might_fault", scope: !295, file: !295, line: 202, type: !296, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!295 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!296 = !DISubroutineType(types: !297)
!297 = !{null}
!298 = !DILocation(line: 202, column: 40, scope: !294)
!299 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !300, file: !300, line: 70, type: !301, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !308)
!300 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!301 = !DISubroutineType(types: !302)
!302 = !{null, !303, !305}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !291, line: 61, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !262, line: 72, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !262, line: 16, baseType: !29)
!308 = !{!309, !310}
!309 = !DILocalVariable(name: "address", arg: 1, scope: !299, file: !300, line: 70, type: !303)
!310 = !DILocalVariable(name: "size", arg: 2, scope: !299, file: !300, line: 70, type: !305)
!311 = !DILocation(line: 70, column: 54, scope: !299)
!312 = !DILocation(line: 70, column: 70, scope: !299)
!313 = !DILocation(line: 72, column: 1, scope: !299)
!314 = !DISubprogram(name: "compat_ksys_old_semctl", scope: !315, file: !315, line: 281, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DIFile(filename: "ipc/util.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8453113c4f9f75ff3f8befe4fd6c6b01")
!316 = !DISubroutineType(types: !317)
!317 = !{!245, !30, !30, !30, !30}
!318 = !DISubprogram(name: "compat_ksys_msgsnd", scope: !315, file: !315, line: 285, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{!245, !30, !31, !321, !30}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ssize_t", file: !27, line: 31, baseType: !73)
!322 = distinct !DISubprogram(name: "copy_from_user", scope: !323, file: !323, line: 180, type: !324, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !326)
!323 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!324 = !DISubroutineType(types: !325)
!325 = !{!29, !28, !303, !29}
!326 = !{!327, !328, !329}
!327 = !DILocalVariable(name: "to", arg: 1, scope: !322, file: !323, line: 180, type: !28)
!328 = !DILocalVariable(name: "from", arg: 2, scope: !322, file: !323, line: 180, type: !303)
!329 = !DILocalVariable(name: "n", arg: 3, scope: !322, file: !323, line: 180, type: !29)
!330 = !DILocation(line: 180, column: 22, scope: !322)
!331 = !DILocation(line: 180, column: 45, scope: !322)
!332 = !DILocation(line: 180, column: 65, scope: !322)
!333 = !DILocation(line: 182, column: 22, scope: !334)
!334 = distinct !DILexicalBlock(scope: !322, file: !323, line: 182, column: 6)
!335 = !DILocation(line: 182, column: 26, scope: !334)
!336 = !DILocation(line: 182, column: 6, scope: !334)
!337 = !DILocation(line: 182, column: 6, scope: !322)
!338 = !DILocation(line: 183, column: 23, scope: !334)
!339 = !DILocation(line: 183, column: 27, scope: !334)
!340 = !DILocation(line: 183, column: 33, scope: !334)
!341 = !DILocation(line: 183, column: 7, scope: !334)
!342 = !DILocation(line: 183, column: 5, scope: !334)
!343 = !DILocation(line: 183, column: 3, scope: !334)
!344 = !DILocation(line: 184, column: 9, scope: !322)
!345 = !DILocation(line: 184, column: 2, scope: !322)
!346 = !DISubprogram(name: "compat_ksys_msgrcv", scope: !315, file: !315, line: 283, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubroutineType(types: !348)
!348 = !{!245, !30, !31, !321, !72, !30}
!349 = !DISubprogram(name: "ksys_msgget", scope: !242, file: !242, line: 1260, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubroutineType(types: !351)
!351 = !{!245, !290, !30}
!352 = !DISubprogram(name: "compat_ksys_old_msgctl", scope: !315, file: !315, line: 282, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DISubroutineType(types: !354)
!354 = !{!245, !30, !30, !28}
!355 = !DISubprogram(name: "do_shmat", scope: !356, file: !356, line: 17, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!357 = !DISubroutineType(types: !358)
!358 = !{!245, !30, !359, !30, !360, !29}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!361 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !300, file: !300, line: 76, type: !362, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !28, !303, !305, !305}
!364 = !{!365, !366, !367, !368}
!365 = !DILocalVariable(name: "to", arg: 1, scope: !361, file: !300, line: 76, type: !28)
!366 = !DILocalVariable(name: "from", arg: 2, scope: !361, file: !300, line: 76, type: !303)
!367 = !DILocalVariable(name: "to_copy", arg: 3, scope: !361, file: !300, line: 77, type: !305)
!368 = !DILocalVariable(name: "left", arg: 4, scope: !361, file: !300, line: 77, type: !305)
!369 = !DILocation(line: 76, column: 52, scope: !361)
!370 = !DILocation(line: 76, column: 68, scope: !361)
!371 = !DILocation(line: 77, column: 18, scope: !361)
!372 = !DILocation(line: 77, column: 34, scope: !361)
!373 = !DILocation(line: 79, column: 1, scope: !361)
!374 = !DISubprogram(name: "ksys_shmdt", scope: !242, file: !242, line: 1267, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{!245, !359}
!377 = !DISubprogram(name: "ksys_shmget", scope: !242, file: !242, line: 1266, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubroutineType(types: !379)
!379 = !{!245, !290, !305, !30}
!380 = !DISubprogram(name: "compat_ksys_old_shmctl", scope: !315, file: !315, line: 287, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = distinct !DISubprogram(name: "__ia32_compat_sys_ipc", scope: !8, file: !8, line: 205, type: !382, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !439)
!382 = !DISubroutineType(types: !383)
!383 = !{!245, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !387, line: 103, size: 1344, elements: !388)
!387 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !419, !420, !421}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !386, file: !387, line: 109, baseType: !29, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !386, file: !387, line: 110, baseType: !29, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !386, file: !387, line: 111, baseType: !29, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !386, file: !387, line: 112, baseType: !29, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !386, file: !387, line: 113, baseType: !29, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !386, file: !387, line: 114, baseType: !29, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !386, file: !387, line: 117, baseType: !29, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !386, file: !387, line: 118, baseType: !29, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !386, file: !387, line: 119, baseType: !29, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !386, file: !387, line: 120, baseType: !29, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !386, file: !387, line: 121, baseType: !29, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !386, file: !387, line: 122, baseType: !29, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !386, file: !387, line: 123, baseType: !29, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !386, file: !387, line: 124, baseType: !29, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !386, file: !387, line: 125, baseType: !29, size: 64, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !386, file: !387, line: 139, baseType: !29, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !386, file: !387, line: 142, baseType: !29, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !387, line: 144, baseType: !407, size: 64, offset: 1088)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 144, size: 64, elements: !408)
!408 = !{!409, !412, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !407, file: !387, line: 146, baseType: !410, size: 16)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !251)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !407, file: !387, line: 148, baseType: !22, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !407, file: !387, line: 150, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !387, line: 59, size: 64, elements: !415)
!415 = !{!416, !417, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !414, file: !387, line: 61, baseType: !22, size: 16, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !414, file: !387, line: 63, baseType: !22, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !414, file: !387, line: 65, baseType: !22, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !387, line: 153, baseType: !29, size: 64, offset: 1152)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !386, file: !387, line: 154, baseType: !29, size: 64, offset: 1216)
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !387, line: 156, baseType: !422, size: 64, offset: 1280)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 156, size: 64, elements: !423)
!423 = !{!424, !425, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !422, file: !387, line: 158, baseType: !410, size: 16)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !422, file: !387, line: 160, baseType: !22, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !422, file: !387, line: 162, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !387, line: 69, size: 64, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !427, file: !387, line: 71, baseType: !22, size: 16, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !427, file: !387, line: 73, baseType: !22, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !427, file: !387, line: 75, baseType: !22, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !427, file: !387, line: 77, baseType: !22, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !427, file: !387, line: 80, baseType: !22, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !387, line: 83, baseType: !22, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !427, file: !387, line: 86, baseType: !22, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !427, file: !387, line: 88, baseType: !22, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !427, file: !387, line: 93, baseType: !22, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !427, file: !387, line: 100, baseType: !22, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!439 = !{!440}
!440 = !DILocalVariable(name: "regs", arg: 1, scope: !381, file: !8, line: 205, type: !384)
!441 = !DILocation(line: 205, column: 1, scope: !381)
!442 = distinct !DISubprogram(name: "__se_compat_sys_ipc", scope: !8, file: !8, line: 205, type: !443, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!245, !245, !245, !245, !245, !245, !245}
!445 = !{!446, !447, !448, !449, !450, !451}
!446 = !DILocalVariable(name: "call", arg: 1, scope: !442, file: !8, line: 205, type: !245)
!447 = !DILocalVariable(name: "first", arg: 2, scope: !442, file: !8, line: 205, type: !245)
!448 = !DILocalVariable(name: "second", arg: 3, scope: !442, file: !8, line: 205, type: !245)
!449 = !DILocalVariable(name: "third", arg: 4, scope: !442, file: !8, line: 205, type: !245)
!450 = !DILocalVariable(name: "ptr", arg: 5, scope: !442, file: !8, line: 205, type: !245)
!451 = !DILocalVariable(name: "fifth", arg: 6, scope: !442, file: !8, line: 205, type: !245)
!452 = !DILocation(line: 205, column: 1, scope: !442)
!453 = distinct !DISubprogram(name: "check_copy_size", scope: !2, file: !2, line: 237, type: !454, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !458)
!454 = !DISubroutineType(types: !455)
!455 = !{!456, !303, !305, !456}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !291, line: 35, baseType: !457)
!457 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!458 = !{!459, !460, !461, !462, !463, !466}
!459 = !DILocalVariable(name: "addr", arg: 1, scope: !453, file: !2, line: 237, type: !303)
!460 = !DILocalVariable(name: "bytes", arg: 2, scope: !453, file: !2, line: 237, type: !305)
!461 = !DILocalVariable(name: "is_source", arg: 3, scope: !453, file: !2, line: 237, type: !456)
!462 = !DILocalVariable(name: "sz", scope: !453, file: !2, line: 239, type: !30)
!463 = !DILocalVariable(name: "__ret_warn_on", scope: !464, file: !2, line: 249, type: !30)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 249, column: 6)
!465 = distinct !DILexicalBlock(scope: !453, file: !2, line: 249, column: 6)
!466 = !DILocalVariable(name: "__flags", scope: !467, file: !2, line: 249, type: !30)
!467 = distinct !DILexicalBlock(scope: !468, file: !2, line: 249, column: 6)
!468 = distinct !DILexicalBlock(scope: !464, file: !2, line: 249, column: 6)
!469 = !DILocation(line: 237, column: 29, scope: !453)
!470 = !DILocation(line: 237, column: 42, scope: !453)
!471 = !DILocation(line: 237, column: 54, scope: !453)
!472 = !DILocation(line: 239, column: 2, scope: !453)
!473 = !DILocation(line: 239, column: 6, scope: !453)
!474 = !DILocation(line: 239, column: 33, scope: !453)
!475 = !DILocation(line: 239, column: 11, scope: !453)
!476 = !DILocation(line: 240, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !453, file: !2, line: 240, column: 6)
!478 = !DILocation(line: 0, scope: !477)
!479 = !DILocation(line: 240, column: 6, scope: !453)
!480 = !DILocation(line: 241, column: 29, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !2, line: 241, column: 7)
!482 = distinct !DILexicalBlock(scope: !477, file: !2, line: 240, column: 39)
!483 = !DILocation(line: 241, column: 8, scope: !481)
!484 = !DILocation(line: 241, column: 7, scope: !482)
!485 = !DILocation(line: 242, column: 18, scope: !481)
!486 = !DILocation(line: 242, column: 22, scope: !481)
!487 = !DILocation(line: 242, column: 4, scope: !481)
!488 = !DILocation(line: 243, column: 12, scope: !489)
!489 = distinct !DILexicalBlock(scope: !481, file: !2, line: 243, column: 12)
!490 = !{i8 0, i8 2}
!491 = !{}
!492 = !DILocation(line: 243, column: 12, scope: !481)
!493 = !DILocation(line: 244, column: 4, scope: !489)
!494 = !{i32 1049528}
!495 = !DILocation(line: 246, column: 4, scope: !489)
!496 = !{i32 1049557}
!497 = !DILocation(line: 247, column: 3, scope: !482)
!498 = !DILocation(line: 249, column: 6, scope: !464)
!499 = !DILocation(line: 249, column: 6, scope: !468)
!500 = !DILocation(line: 249, column: 6, scope: !467)
!501 = !DILocation(line: 249, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !467, file: !2, line: 249, column: 6)
!503 = !DILocation(line: 249, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !467, file: !2, line: 249, column: 6)
!505 = !{i64 2149701799, i64 2149701828, i64 2149701874, i64 2149701932, i64 2149701986, i64 2149702040, i64 2149702095, i64 2149702126, i64 2149702434, i64 2149702440, i64 2149702487, i64 2149702510, i64 2149702536}
!506 = !DILocation(line: 249, column: 6, scope: !507)
!507 = distinct !DILexicalBlock(scope: !467, file: !2, line: 249, column: 6)
!508 = !DILocation(line: 249, column: 6, scope: !465)
!509 = !DILocation(line: 249, column: 6, scope: !453)
!510 = !DILocation(line: 250, column: 3, scope: !465)
!511 = !DILocation(line: 251, column: 20, scope: !453)
!512 = !DILocation(line: 251, column: 26, scope: !453)
!513 = !DILocation(line: 251, column: 33, scope: !453)
!514 = !DILocation(line: 251, column: 2, scope: !453)
!515 = !DILocation(line: 252, column: 2, scope: !453)
!516 = !DILocation(line: 253, column: 1, scope: !453)
!517 = !DISubprogram(name: "_copy_from_user", scope: !323, file: !323, line: 158, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = distinct !DISubprogram(name: "copy_overflow", scope: !2, file: !2, line: 230, type: !519, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !30, !29}
!521 = !{!522, !523}
!522 = !DILocalVariable(name: "size", arg: 1, scope: !518, file: !2, line: 230, type: !30)
!523 = !DILocalVariable(name: "count", arg: 2, scope: !518, file: !2, line: 230, type: !29)
!524 = !DILocation(line: 230, column: 38, scope: !518)
!525 = !DILocation(line: 230, column: 58, scope: !518)
!526 = !DILocation(line: 233, column: 19, scope: !527)
!527 = distinct !DILexicalBlock(scope: !518, file: !2, line: 232, column: 6)
!528 = !DILocation(line: 233, column: 25, scope: !527)
!529 = !DILocation(line: 233, column: 3, scope: !527)
!530 = !DILocation(line: 234, column: 1, scope: !518)
!531 = !DISubprogram(name: "__bad_copy_from", scope: !2, file: !2, line: 224, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubprogram(name: "__bad_copy_to", scope: !2, file: !2, line: 226, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!533 = distinct !DISubprogram(name: "check_object_size", scope: !2, file: !2, line: 218, type: !534, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !303, !29, !456}
!536 = !{!537, !538, !539}
!537 = !DILocalVariable(name: "ptr", arg: 1, scope: !533, file: !2, line: 218, type: !303)
!538 = !DILocalVariable(name: "n", arg: 2, scope: !533, file: !2, line: 218, type: !29)
!539 = !DILocalVariable(name: "to_user", arg: 3, scope: !533, file: !2, line: 219, type: !456)
!540 = !DILocation(line: 218, column: 50, scope: !533)
!541 = !DILocation(line: 218, column: 69, scope: !533)
!542 = !DILocation(line: 219, column: 15, scope: !533)
!543 = !DILocation(line: 220, column: 3, scope: !533)
!544 = !DISubprogram(name: "__copy_overflow", scope: !2, file: !2, line: 228, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = distinct !DISubprogram(name: "__do_compat_sys_ipc", scope: !8, file: !8, line: 205, type: !546, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!245, !18, !30, !30, !18, !31, !18}
!548 = !{!549, !550, !551, !552, !553, !554}
!549 = !DILocalVariable(name: "call", arg: 1, scope: !545, file: !8, line: 205, type: !18)
!550 = !DILocalVariable(name: "first", arg: 2, scope: !545, file: !8, line: 205, type: !30)
!551 = !DILocalVariable(name: "second", arg: 3, scope: !545, file: !8, line: 205, type: !30)
!552 = !DILocalVariable(name: "third", arg: 4, scope: !545, file: !8, line: 205, type: !18)
!553 = !DILocalVariable(name: "ptr", arg: 5, scope: !545, file: !8, line: 205, type: !31)
!554 = !DILocalVariable(name: "fifth", arg: 6, scope: !545, file: !8, line: 205, type: !18)
!555 = !DILocation(line: 205, column: 1, scope: !545)
!556 = !DILocation(line: 208, column: 25, scope: !545)
!557 = !DILocation(line: 208, column: 31, scope: !545)
!558 = !DILocation(line: 208, column: 38, scope: !545)
!559 = !DILocation(line: 208, column: 46, scope: !545)
!560 = !DILocation(line: 208, column: 53, scope: !545)
!561 = !DILocation(line: 208, column: 58, scope: !545)
!562 = !DILocation(line: 208, column: 9, scope: !545)
!563 = !DILocation(line: 208, column: 2, scope: !545)
