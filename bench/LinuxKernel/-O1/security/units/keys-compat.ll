; ModuleID = 'security/keys/compat.c'
source_filename = "security/keys/compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_keyctl(ptr noundef %regs) #0 align 16 !dbg !19 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !84
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !84
  %1 = load i64, ptr %bx, align 8, !dbg !84
  %conv = trunc i64 %1 to i32, !dbg !84
  %conv1 = zext i32 %conv to i64, !dbg !84
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !84
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !84
  %3 = load i64, ptr %cx, align 8, !dbg !84
  %conv2 = trunc i64 %3 to i32, !dbg !84
  %conv3 = zext i32 %conv2 to i64, !dbg !84
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !84
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !84
  %5 = load i64, ptr %dx, align 8, !dbg !84
  %conv4 = trunc i64 %5 to i32, !dbg !84
  %conv5 = zext i32 %conv4 to i64, !dbg !84
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !84
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !84
  %7 = load i64, ptr %si, align 8, !dbg !84
  %conv6 = trunc i64 %7 to i32, !dbg !84
  %conv7 = zext i32 %conv6 to i64, !dbg !84
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !84
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !84
  %9 = load i64, ptr %di, align 8, !dbg !84
  %conv8 = trunc i64 %9 to i32, !dbg !84
  %conv9 = zext i32 %conv8 to i64, !dbg !84
  %call = call i64 @__se_compat_sys_keyctl(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9) #4, !dbg !84
  ret i64 %call, !dbg !84
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_keyctl(i64 noundef %option, i64 noundef %arg2, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) #0 align 16 !dbg !85 {
entry:
  %option.addr = alloca i64, align 8
  %arg2.addr = alloca i64, align 8
  %arg3.addr = alloca i64, align 8
  %arg4.addr = alloca i64, align 8
  %arg5.addr = alloca i64, align 8
  store i64 %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !89, metadata !DIExpression()), !dbg !94
  store i64 %arg2, ptr %arg2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg2.addr, metadata !90, metadata !DIExpression()), !dbg !94
  store i64 %arg3, ptr %arg3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg3.addr, metadata !91, metadata !DIExpression()), !dbg !94
  store i64 %arg4, ptr %arg4.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg4.addr, metadata !92, metadata !DIExpression()), !dbg !94
  store i64 %arg5, ptr %arg5.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg5.addr, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load i64, ptr %option.addr, align 8, !dbg !94
  %conv = trunc i64 %0 to i32, !dbg !94
  %1 = load i64, ptr %arg2.addr, align 8, !dbg !94
  %conv1 = trunc i64 %1 to i32, !dbg !94
  %2 = load i64, ptr %arg3.addr, align 8, !dbg !94
  %conv2 = trunc i64 %2 to i32, !dbg !94
  %3 = load i64, ptr %arg4.addr, align 8, !dbg !94
  %conv3 = trunc i64 %3 to i32, !dbg !94
  %4 = load i64, ptr %arg5.addr, align 8, !dbg !94
  %conv4 = trunc i64 %4 to i32, !dbg !94
  %call = call i64 @__do_compat_sys_keyctl(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #4, !dbg !94
  ret i64 %call, !dbg !94
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_keyctl(i32 noundef %option, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #2 align 16 !dbg !95 {
entry:
  %retval = alloca i64, align 8
  %option.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %arg4.addr = alloca i32, align 4
  %arg5.addr = alloca i32, align 4
  store i32 %option, ptr %option.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !99, metadata !DIExpression()), !dbg !104
  store i32 %arg2, ptr %arg2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg2.addr, metadata !100, metadata !DIExpression()), !dbg !104
  store i32 %arg3, ptr %arg3.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg3.addr, metadata !101, metadata !DIExpression()), !dbg !104
  store i32 %arg4, ptr %arg4.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg4.addr, metadata !102, metadata !DIExpression()), !dbg !104
  store i32 %arg5, ptr %arg5.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg5.addr, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load i32, ptr %option.addr, align 4, !dbg !105
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 6, label %sw.bb9
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb23
    i32 4, label %sw.bb27
    i32 5, label %sw.bb29
    i32 12, label %sw.bb31
    i32 13, label %sw.bb35
    i32 14, label %sw.bb37
    i32 15, label %sw.bb39
    i32 16, label %sw.bb41
    i32 17, label %sw.bb43
    i32 18, label %sw.bb47
    i32 19, label %sw.bb49
    i32 20, label %sw.bb51
    i32 21, label %sw.bb54
    i32 22, label %sw.bb56
    i32 23, label %sw.bb58
    i32 29, label %sw.bb64
    i32 24, label %sw.bb68
    i32 25, label %sw.bb73
    i32 26, label %sw.bb73
    i32 27, label %sw.bb73
    i32 28, label %sw.bb79
    i32 30, label %sw.bb85
    i32 31, label %sw.bb87
    i32 32, label %sw.bb91
  ], !dbg !106

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %arg2.addr, align 4, !dbg !107
  %2 = load i32, ptr %arg3.addr, align 4, !dbg !109
  %call = call i64 @keyctl_get_keyring_ID(i32 noundef %1, i32 noundef %2) #4, !dbg !110
  store i64 %call, ptr %retval, align 8, !dbg !111
  br label %return, !dbg !111

sw.bb1:                                           ; preds = %entry
  %3 = load i32, ptr %arg2.addr, align 4, !dbg !112
  %call2 = call ptr @compat_ptr(i32 noundef %3) #4, !dbg !113
  %call3 = call i64 @keyctl_join_session_keyring(ptr noundef %call2) #4, !dbg !114
  store i64 %call3, ptr %retval, align 8, !dbg !115
  br label %return, !dbg !115

sw.bb4:                                           ; preds = %entry
  %4 = load i32, ptr %arg2.addr, align 4, !dbg !116
  %5 = load i32, ptr %arg3.addr, align 4, !dbg !117
  %call5 = call ptr @compat_ptr(i32 noundef %5) #4, !dbg !118
  %6 = load i32, ptr %arg4.addr, align 4, !dbg !119
  %conv = zext i32 %6 to i64, !dbg !119
  %call6 = call i64 @keyctl_update_key(i32 noundef %4, ptr noundef %call5, i64 noundef %conv) #4, !dbg !120
  store i64 %call6, ptr %retval, align 8, !dbg !121
  br label %return, !dbg !121

sw.bb7:                                           ; preds = %entry
  %7 = load i32, ptr %arg2.addr, align 4, !dbg !122
  %call8 = call i64 @keyctl_revoke_key(i32 noundef %7) #4, !dbg !123
  store i64 %call8, ptr %retval, align 8, !dbg !124
  br label %return, !dbg !124

sw.bb9:                                           ; preds = %entry
  %8 = load i32, ptr %arg2.addr, align 4, !dbg !125
  %9 = load i32, ptr %arg3.addr, align 4, !dbg !126
  %call10 = call ptr @compat_ptr(i32 noundef %9) #4, !dbg !127
  %10 = load i32, ptr %arg4.addr, align 4, !dbg !128
  %conv11 = zext i32 %10 to i64, !dbg !128
  %call12 = call i64 @keyctl_describe_key(i32 noundef %8, ptr noundef %call10, i64 noundef %conv11) #4, !dbg !129
  store i64 %call12, ptr %retval, align 8, !dbg !130
  br label %return, !dbg !130

sw.bb13:                                          ; preds = %entry
  %11 = load i32, ptr %arg2.addr, align 4, !dbg !131
  %call14 = call i64 @keyctl_keyring_clear(i32 noundef %11) #4, !dbg !132
  store i64 %call14, ptr %retval, align 8, !dbg !133
  br label %return, !dbg !133

sw.bb15:                                          ; preds = %entry
  %12 = load i32, ptr %arg2.addr, align 4, !dbg !134
  %13 = load i32, ptr %arg3.addr, align 4, !dbg !135
  %call16 = call i64 @keyctl_keyring_link(i32 noundef %12, i32 noundef %13) #4, !dbg !136
  store i64 %call16, ptr %retval, align 8, !dbg !137
  br label %return, !dbg !137

sw.bb17:                                          ; preds = %entry
  %14 = load i32, ptr %arg2.addr, align 4, !dbg !138
  %15 = load i32, ptr %arg3.addr, align 4, !dbg !139
  %call18 = call i64 @keyctl_keyring_unlink(i32 noundef %14, i32 noundef %15) #4, !dbg !140
  store i64 %call18, ptr %retval, align 8, !dbg !141
  br label %return, !dbg !141

sw.bb19:                                          ; preds = %entry
  %16 = load i32, ptr %arg2.addr, align 4, !dbg !142
  %17 = load i32, ptr %arg3.addr, align 4, !dbg !143
  %call20 = call ptr @compat_ptr(i32 noundef %17) #4, !dbg !144
  %18 = load i32, ptr %arg4.addr, align 4, !dbg !145
  %call21 = call ptr @compat_ptr(i32 noundef %18) #4, !dbg !146
  %19 = load i32, ptr %arg5.addr, align 4, !dbg !147
  %call22 = call i64 @keyctl_keyring_search(i32 noundef %16, ptr noundef %call20, ptr noundef %call21, i32 noundef %19) #4, !dbg !148
  store i64 %call22, ptr %retval, align 8, !dbg !149
  br label %return, !dbg !149

sw.bb23:                                          ; preds = %entry
  %20 = load i32, ptr %arg2.addr, align 4, !dbg !150
  %21 = load i32, ptr %arg3.addr, align 4, !dbg !151
  %call24 = call ptr @compat_ptr(i32 noundef %21) #4, !dbg !152
  %22 = load i32, ptr %arg4.addr, align 4, !dbg !153
  %conv25 = zext i32 %22 to i64, !dbg !153
  %call26 = call i64 @keyctl_read_key(i32 noundef %20, ptr noundef %call24, i64 noundef %conv25) #4, !dbg !154
  store i64 %call26, ptr %retval, align 8, !dbg !155
  br label %return, !dbg !155

sw.bb27:                                          ; preds = %entry
  %23 = load i32, ptr %arg2.addr, align 4, !dbg !156
  %24 = load i32, ptr %arg3.addr, align 4, !dbg !157
  %25 = load i32, ptr %arg4.addr, align 4, !dbg !158
  %call28 = call i64 @keyctl_chown_key(i32 noundef %23, i32 noundef %24, i32 noundef %25) #4, !dbg !159
  store i64 %call28, ptr %retval, align 8, !dbg !160
  br label %return, !dbg !160

sw.bb29:                                          ; preds = %entry
  %26 = load i32, ptr %arg2.addr, align 4, !dbg !161
  %27 = load i32, ptr %arg3.addr, align 4, !dbg !162
  %call30 = call i64 @keyctl_setperm_key(i32 noundef %26, i32 noundef %27) #4, !dbg !163
  store i64 %call30, ptr %retval, align 8, !dbg !164
  br label %return, !dbg !164

sw.bb31:                                          ; preds = %entry
  %28 = load i32, ptr %arg2.addr, align 4, !dbg !165
  %29 = load i32, ptr %arg3.addr, align 4, !dbg !166
  %call32 = call ptr @compat_ptr(i32 noundef %29) #4, !dbg !167
  %30 = load i32, ptr %arg4.addr, align 4, !dbg !168
  %conv33 = zext i32 %30 to i64, !dbg !168
  %31 = load i32, ptr %arg5.addr, align 4, !dbg !169
  %call34 = call i64 @keyctl_instantiate_key(i32 noundef %28, ptr noundef %call32, i64 noundef %conv33, i32 noundef %31) #4, !dbg !170
  store i64 %call34, ptr %retval, align 8, !dbg !171
  br label %return, !dbg !171

sw.bb35:                                          ; preds = %entry
  %32 = load i32, ptr %arg2.addr, align 4, !dbg !172
  %33 = load i32, ptr %arg3.addr, align 4, !dbg !173
  %34 = load i32, ptr %arg4.addr, align 4, !dbg !174
  %call36 = call i64 @keyctl_negate_key(i32 noundef %32, i32 noundef %33, i32 noundef %34) #4, !dbg !175
  store i64 %call36, ptr %retval, align 8, !dbg !176
  br label %return, !dbg !176

sw.bb37:                                          ; preds = %entry
  %35 = load i32, ptr %arg2.addr, align 4, !dbg !177
  %call38 = call i64 @keyctl_set_reqkey_keyring(i32 noundef %35) #4, !dbg !178
  store i64 %call38, ptr %retval, align 8, !dbg !179
  br label %return, !dbg !179

sw.bb39:                                          ; preds = %entry
  %36 = load i32, ptr %arg2.addr, align 4, !dbg !180
  %37 = load i32, ptr %arg3.addr, align 4, !dbg !181
  %call40 = call i64 @keyctl_set_timeout(i32 noundef %36, i32 noundef %37) #4, !dbg !182
  store i64 %call40, ptr %retval, align 8, !dbg !183
  br label %return, !dbg !183

sw.bb41:                                          ; preds = %entry
  %38 = load i32, ptr %arg2.addr, align 4, !dbg !184
  %call42 = call i64 @keyctl_assume_authority(i32 noundef %38) #4, !dbg !185
  store i64 %call42, ptr %retval, align 8, !dbg !186
  br label %return, !dbg !186

sw.bb43:                                          ; preds = %entry
  %39 = load i32, ptr %arg2.addr, align 4, !dbg !187
  %40 = load i32, ptr %arg3.addr, align 4, !dbg !188
  %call44 = call ptr @compat_ptr(i32 noundef %40) #4, !dbg !189
  %41 = load i32, ptr %arg4.addr, align 4, !dbg !190
  %conv45 = zext i32 %41 to i64, !dbg !190
  %call46 = call i64 @keyctl_get_security(i32 noundef %39, ptr noundef %call44, i64 noundef %conv45) #4, !dbg !191
  store i64 %call46, ptr %retval, align 8, !dbg !192
  br label %return, !dbg !192

sw.bb47:                                          ; preds = %entry
  %call48 = call i64 @keyctl_session_to_parent() #4, !dbg !193
  store i64 %call48, ptr %retval, align 8, !dbg !194
  br label %return, !dbg !194

sw.bb49:                                          ; preds = %entry
  %42 = load i32, ptr %arg2.addr, align 4, !dbg !195
  %43 = load i32, ptr %arg3.addr, align 4, !dbg !196
  %44 = load i32, ptr %arg4.addr, align 4, !dbg !197
  %45 = load i32, ptr %arg5.addr, align 4, !dbg !198
  %call50 = call i64 @keyctl_reject_key(i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45) #4, !dbg !199
  store i64 %call50, ptr %retval, align 8, !dbg !200
  br label %return, !dbg !200

sw.bb51:                                          ; preds = %entry
  %46 = load i32, ptr %arg2.addr, align 4, !dbg !201
  %47 = load i32, ptr %arg3.addr, align 4, !dbg !202
  %call52 = call ptr @compat_ptr(i32 noundef %47) #4, !dbg !203
  %48 = load i32, ptr %arg4.addr, align 4, !dbg !204
  %49 = load i32, ptr %arg5.addr, align 4, !dbg !205
  %call53 = call i64 @keyctl_instantiate_key_iov(i32 noundef %46, ptr noundef %call52, i32 noundef %48, i32 noundef %49) #4, !dbg !206
  store i64 %call53, ptr %retval, align 8, !dbg !207
  br label %return, !dbg !207

sw.bb54:                                          ; preds = %entry
  %50 = load i32, ptr %arg2.addr, align 4, !dbg !208
  %call55 = call i64 @keyctl_invalidate_key(i32 noundef %50) #4, !dbg !209
  store i64 %call55, ptr %retval, align 8, !dbg !210
  br label %return, !dbg !210

sw.bb56:                                          ; preds = %entry
  %51 = load i32, ptr %arg2.addr, align 4, !dbg !211
  %52 = load i32, ptr %arg3.addr, align 4, !dbg !212
  %call57 = call i64 @keyctl_get_persistent(i32 noundef %51, i32 noundef %52) #4, !dbg !213
  store i64 %call57, ptr %retval, align 8, !dbg !214
  br label %return, !dbg !214

sw.bb58:                                          ; preds = %entry
  %53 = load i32, ptr %arg2.addr, align 4, !dbg !215
  %call59 = call ptr @compat_ptr(i32 noundef %53) #4, !dbg !216
  %54 = load i32, ptr %arg3.addr, align 4, !dbg !217
  %call60 = call ptr @compat_ptr(i32 noundef %54) #4, !dbg !218
  %55 = load i32, ptr %arg4.addr, align 4, !dbg !219
  %conv61 = zext i32 %55 to i64, !dbg !219
  %56 = load i32, ptr %arg5.addr, align 4, !dbg !220
  %call62 = call ptr @compat_ptr(i32 noundef %56) #4, !dbg !221
  %call63 = call i64 @compat_keyctl_dh_compute(ptr noundef %call59, ptr noundef %call60, i64 noundef %conv61, ptr noundef %call62) #4, !dbg !222
  store i64 %call63, ptr %retval, align 8, !dbg !223
  br label %return, !dbg !223

sw.bb64:                                          ; preds = %entry
  %57 = load i32, ptr %arg2.addr, align 4, !dbg !224
  %58 = load i32, ptr %arg3.addr, align 4, !dbg !225
  %call65 = call ptr @compat_ptr(i32 noundef %58) #4, !dbg !226
  %59 = load i32, ptr %arg4.addr, align 4, !dbg !227
  %call66 = call ptr @compat_ptr(i32 noundef %59) #4, !dbg !228
  %call67 = call i64 @keyctl_restrict_keyring(i32 noundef %57, ptr noundef %call65, ptr noundef %call66) #4, !dbg !229
  store i64 %call67, ptr %retval, align 8, !dbg !230
  br label %return, !dbg !230

sw.bb68:                                          ; preds = %entry
  %60 = load i32, ptr %arg3.addr, align 4, !dbg !231
  %cmp = icmp ne i32 %60, 0, !dbg !233
  br i1 %cmp, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %sw.bb68
  store i64 -22, ptr %retval, align 8, !dbg !235
  br label %return, !dbg !235

if.end:                                           ; preds = %sw.bb68
  %61 = load i32, ptr %arg2.addr, align 4, !dbg !236
  %62 = load i32, ptr %arg4.addr, align 4, !dbg !237
  %call70 = call ptr @compat_ptr(i32 noundef %62) #4, !dbg !238
  %63 = load i32, ptr %arg5.addr, align 4, !dbg !239
  %call71 = call ptr @compat_ptr(i32 noundef %63) #4, !dbg !240
  %call72 = call i64 @keyctl_pkey_query(i32 noundef %61, ptr noundef %call70, ptr noundef %call71) #4, !dbg !241
  store i64 %call72, ptr %retval, align 8, !dbg !242
  br label %return, !dbg !242

sw.bb73:                                          ; preds = %entry, %entry, %entry
  %64 = load i32, ptr %option.addr, align 4, !dbg !243
  %65 = load i32, ptr %arg2.addr, align 4, !dbg !244
  %call74 = call ptr @compat_ptr(i32 noundef %65) #4, !dbg !245
  %66 = load i32, ptr %arg3.addr, align 4, !dbg !246
  %call75 = call ptr @compat_ptr(i32 noundef %66) #4, !dbg !247
  %67 = load i32, ptr %arg4.addr, align 4, !dbg !248
  %call76 = call ptr @compat_ptr(i32 noundef %67) #4, !dbg !249
  %68 = load i32, ptr %arg5.addr, align 4, !dbg !250
  %call77 = call ptr @compat_ptr(i32 noundef %68) #4, !dbg !251
  %call78 = call i64 @keyctl_pkey_e_d_s(i32 noundef %64, ptr noundef %call74, ptr noundef %call75, ptr noundef %call76, ptr noundef %call77) #4, !dbg !252
  store i64 %call78, ptr %retval, align 8, !dbg !253
  br label %return, !dbg !253

sw.bb79:                                          ; preds = %entry
  %69 = load i32, ptr %arg2.addr, align 4, !dbg !254
  %call80 = call ptr @compat_ptr(i32 noundef %69) #4, !dbg !255
  %70 = load i32, ptr %arg3.addr, align 4, !dbg !256
  %call81 = call ptr @compat_ptr(i32 noundef %70) #4, !dbg !257
  %71 = load i32, ptr %arg4.addr, align 4, !dbg !258
  %call82 = call ptr @compat_ptr(i32 noundef %71) #4, !dbg !259
  %72 = load i32, ptr %arg5.addr, align 4, !dbg !260
  %call83 = call ptr @compat_ptr(i32 noundef %72) #4, !dbg !261
  %call84 = call i64 @keyctl_pkey_verify(ptr noundef %call80, ptr noundef %call81, ptr noundef %call82, ptr noundef %call83) #4, !dbg !262
  store i64 %call84, ptr %retval, align 8, !dbg !263
  br label %return, !dbg !263

sw.bb85:                                          ; preds = %entry
  %73 = load i32, ptr %arg2.addr, align 4, !dbg !264
  %74 = load i32, ptr %arg3.addr, align 4, !dbg !265
  %75 = load i32, ptr %arg4.addr, align 4, !dbg !266
  %76 = load i32, ptr %arg5.addr, align 4, !dbg !267
  %call86 = call i64 @keyctl_keyring_move(i32 noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %76) #4, !dbg !268
  store i64 %call86, ptr %retval, align 8, !dbg !269
  br label %return, !dbg !269

sw.bb87:                                          ; preds = %entry
  %77 = load i32, ptr %arg2.addr, align 4, !dbg !270
  %call88 = call ptr @compat_ptr(i32 noundef %77) #4, !dbg !271
  %78 = load i32, ptr %arg3.addr, align 4, !dbg !272
  %conv89 = zext i32 %78 to i64, !dbg !272
  %call90 = call i64 @keyctl_capabilities(ptr noundef %call88, i64 noundef %conv89) #4, !dbg !273
  store i64 %call90, ptr %retval, align 8, !dbg !274
  br label %return, !dbg !274

sw.bb91:                                          ; preds = %entry
  %79 = load i32, ptr %arg2.addr, align 4, !dbg !275
  %80 = load i32, ptr %arg3.addr, align 4, !dbg !276
  %81 = load i32, ptr %arg4.addr, align 4, !dbg !277
  %call92 = call i64 @keyctl_watch_key(i32 noundef %79, i32 noundef %80, i32 noundef %81) #4, !dbg !278
  store i64 %call92, ptr %retval, align 8, !dbg !279
  br label %return, !dbg !279

sw.default:                                       ; preds = %entry
  store i64 -95, ptr %retval, align 8, !dbg !280
  br label %return, !dbg !280

return:                                           ; preds = %sw.default, %sw.bb91, %sw.bb87, %sw.bb85, %sw.bb79, %sw.bb73, %if.end, %if.then, %sw.bb64, %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb9, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %82 = load i64, ptr %retval, align 8, !dbg !281
  ret i64 %82, !dbg !281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !282 dso_local i64 @keyctl_get_keyring_ID(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !293 dso_local i64 @keyctl_join_session_keyring(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #2 align 16 !dbg !299 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !308
  %conv = zext i32 %0 to i64, !dbg !309
  %1 = inttoptr i64 %conv to ptr, !dbg !310
  ret ptr %1, !dbg !311
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !312 dso_local i64 @keyctl_update_key(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !321 dso_local i64 @keyctl_revoke_key(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !324 dso_local i64 @keyctl_describe_key(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !328 dso_local i64 @keyctl_keyring_clear(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !329 dso_local i64 @keyctl_keyring_link(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !332 dso_local i64 @keyctl_keyring_unlink(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !333 dso_local i64 @keyctl_keyring_search(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !336 dso_local i64 @keyctl_read_key(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !337 dso_local i64 @keyctl_chown_key(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !344 dso_local i64 @keyctl_setperm_key(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !349 dso_local i64 @keyctl_instantiate_key(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !352 dso_local i64 @keyctl_negate_key(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !355 dso_local i64 @keyctl_set_reqkey_keyring(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !358 dso_local i64 @keyctl_set_timeout(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !361 dso_local i64 @keyctl_assume_authority(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !362 dso_local i64 @keyctl_get_security(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !363 dso_local i64 @keyctl_session_to_parent() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !366 dso_local i64 @keyctl_reject_key(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !369 dso_local i64 @keyctl_instantiate_key_iov(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !379 dso_local i64 @keyctl_invalidate_key(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @keyctl_get_persistent(i32 noundef %uid, i32 noundef %destring) #2 align 16 !dbg !380 {
entry:
  %uid.addr = alloca i32, align 4
  %destring.addr = alloca i32, align 4
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !384, metadata !DIExpression()), !dbg !386
  store i32 %destring, ptr %destring.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %destring.addr, metadata !385, metadata !DIExpression()), !dbg !387
  ret i64 -95, !dbg !388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @compat_keyctl_dh_compute(ptr noundef %params, ptr noundef %buffer, i64 noundef %buflen, ptr noundef %kdf) #2 align 16 !dbg !389 {
entry:
  %params.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %kdf.addr = alloca ptr, align 8
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !414, metadata !DIExpression()), !dbg !418
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !415, metadata !DIExpression()), !dbg !419
  store i64 %buflen, ptr %buflen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !416, metadata !DIExpression()), !dbg !420
  store ptr %kdf, ptr %kdf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kdf.addr, metadata !417, metadata !DIExpression()), !dbg !421
  ret i64 -95, !dbg !422
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !423 dso_local i64 @keyctl_restrict_keyring(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !426 dso_local i64 @keyctl_pkey_query(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !442 dso_local i64 @keyctl_pkey_e_d_s(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !460 dso_local i64 @keyctl_pkey_verify(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !463 dso_local i64 @keyctl_keyring_move(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !466 dso_local i64 @keyctl_capabilities(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @keyctl_watch_key(i32 noundef %key_id, i32 noundef %watch_fd, i32 noundef %watch_id) #2 align 16 !dbg !471 {
entry:
  %key_id.addr = alloca i32, align 4
  %watch_fd.addr = alloca i32, align 4
  %watch_id.addr = alloca i32, align 4
  store i32 %key_id, ptr %key_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key_id.addr, metadata !475, metadata !DIExpression()), !dbg !478
  store i32 %watch_fd, ptr %watch_fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %watch_fd.addr, metadata !476, metadata !DIExpression()), !dbg !479
  store i32 %watch_id, ptr %watch_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %watch_id.addr, metadata !477, metadata !DIExpression()), !dbg !480
  ret i64 -95, !dbg !481
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/keys/.compat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22security/keys/compat\22 -D KBUILD_BASENAME=\22compat\22 -D KBUILD_MODNAME=\22compat\22 -D __KBUILD_MODNAME=kmod_compat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/keys/compat.ll security/keys/compat.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "security/keys/compat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "216531990f390095b5a363ad5d509982")
!2 = !{!3, !4, !8, !9}
!3 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !5, line: 21, baseType: !6)
!5 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !7, line: 27, baseType: !3)
!7 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 8, !"cf-protection-branch", i32 1}
!14 = !{i32 4, !"function_return_thunk_extern", i32 1}
!15 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{i32 1, !"override-stack-alignment", i32 8}
!18 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!19 = distinct !DISubprogram(name: "__ia32_compat_sys_keyctl", scope: !1, file: !1, line: 17, type: !20, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !26, line: 103, size: 1344, elements: !27)
!26 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !62, !63, !64}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !25, file: !26, line: 109, baseType: !8, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !25, file: !26, line: 110, baseType: !8, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !25, file: !26, line: 111, baseType: !8, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !25, file: !26, line: 112, baseType: !8, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !25, file: !26, line: 113, baseType: !8, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !25, file: !26, line: 114, baseType: !8, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !25, file: !26, line: 117, baseType: !8, size: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !25, file: !26, line: 118, baseType: !8, size: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !25, file: !26, line: 119, baseType: !8, size: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !25, file: !26, line: 120, baseType: !8, size: 64, offset: 576)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !25, file: !26, line: 121, baseType: !8, size: 64, offset: 640)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !25, file: !26, line: 122, baseType: !8, size: 64, offset: 704)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !25, file: !26, line: 123, baseType: !8, size: 64, offset: 768)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !25, file: !26, line: 124, baseType: !8, size: 64, offset: 832)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !25, file: !26, line: 125, baseType: !8, size: 64, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !25, file: !26, line: 139, baseType: !8, size: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !25, file: !26, line: 142, baseType: !8, size: 64, offset: 1024)
!45 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !26, line: 144, baseType: !46, size: 64, offset: 1088)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !26, line: 144, size: 64, elements: !47)
!47 = !{!48, !52, !56}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !46, file: !26, line: 146, baseType: !49, size: 16)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !5, line: 19, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !7, line: 24, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !46, file: !26, line: 148, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !5, line: 23, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !7, line: 31, baseType: !55)
!55 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !46, file: !26, line: 150, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !26, line: 59, size: 64, elements: !58)
!58 = !{!59, !60, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !57, file: !26, line: 61, baseType: !53, size: 16, flags: DIFlagBitField, extraData: i64 0)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !57, file: !26, line: 63, baseType: !53, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !57, file: !26, line: 65, baseType: !53, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !26, line: 153, baseType: !8, size: 64, offset: 1152)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !25, file: !26, line: 154, baseType: !8, size: 64, offset: 1216)
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !26, line: 156, baseType: !65, size: 64, offset: 1280)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !26, line: 156, size: 64, elements: !66)
!66 = !{!67, !68, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !65, file: !26, line: 158, baseType: !49, size: 16)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !65, file: !26, line: 160, baseType: !53, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !65, file: !26, line: 162, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !26, line: 69, size: 64, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !70, file: !26, line: 71, baseType: !53, size: 16, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !70, file: !26, line: 73, baseType: !53, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !70, file: !26, line: 75, baseType: !53, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !70, file: !26, line: 77, baseType: !53, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !70, file: !26, line: 80, baseType: !53, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !26, line: 83, baseType: !53, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !70, file: !26, line: 86, baseType: !53, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !70, file: !26, line: 88, baseType: !53, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !70, file: !26, line: 93, baseType: !53, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !70, file: !26, line: 100, baseType: !53, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!82 = !{!83}
!83 = !DILocalVariable(name: "regs", arg: 1, scope: !19, file: !1, line: 17, type: !23)
!84 = !DILocation(line: 17, column: 1, scope: !19)
!85 = distinct !DISubprogram(name: "__se_compat_sys_keyctl", scope: !1, file: !1, line: 17, type: !86, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!22, !22, !22, !22, !22, !22}
!88 = !{!89, !90, !91, !92, !93}
!89 = !DILocalVariable(name: "option", arg: 1, scope: !85, file: !1, line: 17, type: !22)
!90 = !DILocalVariable(name: "arg2", arg: 2, scope: !85, file: !1, line: 17, type: !22)
!91 = !DILocalVariable(name: "arg3", arg: 3, scope: !85, file: !1, line: 17, type: !22)
!92 = !DILocalVariable(name: "arg4", arg: 4, scope: !85, file: !1, line: 17, type: !22)
!93 = !DILocalVariable(name: "arg5", arg: 5, scope: !85, file: !1, line: 17, type: !22)
!94 = !DILocation(line: 17, column: 1, scope: !85)
!95 = distinct !DISubprogram(name: "__do_compat_sys_keyctl", scope: !1, file: !1, line: 17, type: !96, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{!22, !4, !4, !4, !4, !4}
!98 = !{!99, !100, !101, !102, !103}
!99 = !DILocalVariable(name: "option", arg: 1, scope: !95, file: !1, line: 17, type: !4)
!100 = !DILocalVariable(name: "arg2", arg: 2, scope: !95, file: !1, line: 17, type: !4)
!101 = !DILocalVariable(name: "arg3", arg: 3, scope: !95, file: !1, line: 17, type: !4)
!102 = !DILocalVariable(name: "arg4", arg: 4, scope: !95, file: !1, line: 17, type: !4)
!103 = !DILocalVariable(name: "arg5", arg: 5, scope: !95, file: !1, line: 17, type: !4)
!104 = !DILocation(line: 17, column: 1, scope: !95)
!105 = !DILocation(line: 20, column: 10, scope: !95)
!106 = !DILocation(line: 20, column: 2, scope: !95)
!107 = !DILocation(line: 22, column: 32, scope: !108)
!108 = distinct !DILexicalBlock(scope: !95, file: !1, line: 20, column: 18)
!109 = !DILocation(line: 22, column: 38, scope: !108)
!110 = !DILocation(line: 22, column: 10, scope: !108)
!111 = !DILocation(line: 22, column: 3, scope: !108)
!112 = !DILocation(line: 25, column: 49, scope: !108)
!113 = !DILocation(line: 25, column: 38, scope: !108)
!114 = !DILocation(line: 25, column: 10, scope: !108)
!115 = !DILocation(line: 25, column: 3, scope: !108)
!116 = !DILocation(line: 28, column: 28, scope: !108)
!117 = !DILocation(line: 28, column: 45, scope: !108)
!118 = !DILocation(line: 28, column: 34, scope: !108)
!119 = !DILocation(line: 28, column: 52, scope: !108)
!120 = !DILocation(line: 28, column: 10, scope: !108)
!121 = !DILocation(line: 28, column: 3, scope: !108)
!122 = !DILocation(line: 31, column: 28, scope: !108)
!123 = !DILocation(line: 31, column: 10, scope: !108)
!124 = !DILocation(line: 31, column: 3, scope: !108)
!125 = !DILocation(line: 34, column: 30, scope: !108)
!126 = !DILocation(line: 34, column: 47, scope: !108)
!127 = !DILocation(line: 34, column: 36, scope: !108)
!128 = !DILocation(line: 34, column: 54, scope: !108)
!129 = !DILocation(line: 34, column: 10, scope: !108)
!130 = !DILocation(line: 34, column: 3, scope: !108)
!131 = !DILocation(line: 37, column: 31, scope: !108)
!132 = !DILocation(line: 37, column: 10, scope: !108)
!133 = !DILocation(line: 37, column: 3, scope: !108)
!134 = !DILocation(line: 40, column: 30, scope: !108)
!135 = !DILocation(line: 40, column: 36, scope: !108)
!136 = !DILocation(line: 40, column: 10, scope: !108)
!137 = !DILocation(line: 40, column: 3, scope: !108)
!138 = !DILocation(line: 43, column: 32, scope: !108)
!139 = !DILocation(line: 43, column: 38, scope: !108)
!140 = !DILocation(line: 43, column: 10, scope: !108)
!141 = !DILocation(line: 43, column: 3, scope: !108)
!142 = !DILocation(line: 46, column: 32, scope: !108)
!143 = !DILocation(line: 46, column: 49, scope: !108)
!144 = !DILocation(line: 46, column: 38, scope: !108)
!145 = !DILocation(line: 47, column: 22, scope: !108)
!146 = !DILocation(line: 47, column: 11, scope: !108)
!147 = !DILocation(line: 47, column: 29, scope: !108)
!148 = !DILocation(line: 46, column: 10, scope: !108)
!149 = !DILocation(line: 46, column: 3, scope: !108)
!150 = !DILocation(line: 50, column: 26, scope: !108)
!151 = !DILocation(line: 50, column: 43, scope: !108)
!152 = !DILocation(line: 50, column: 32, scope: !108)
!153 = !DILocation(line: 50, column: 50, scope: !108)
!154 = !DILocation(line: 50, column: 10, scope: !108)
!155 = !DILocation(line: 50, column: 3, scope: !108)
!156 = !DILocation(line: 53, column: 27, scope: !108)
!157 = !DILocation(line: 53, column: 33, scope: !108)
!158 = !DILocation(line: 53, column: 39, scope: !108)
!159 = !DILocation(line: 53, column: 10, scope: !108)
!160 = !DILocation(line: 53, column: 3, scope: !108)
!161 = !DILocation(line: 56, column: 29, scope: !108)
!162 = !DILocation(line: 56, column: 35, scope: !108)
!163 = !DILocation(line: 56, column: 10, scope: !108)
!164 = !DILocation(line: 56, column: 3, scope: !108)
!165 = !DILocation(line: 59, column: 33, scope: !108)
!166 = !DILocation(line: 59, column: 50, scope: !108)
!167 = !DILocation(line: 59, column: 39, scope: !108)
!168 = !DILocation(line: 59, column: 57, scope: !108)
!169 = !DILocation(line: 60, column: 12, scope: !108)
!170 = !DILocation(line: 59, column: 10, scope: !108)
!171 = !DILocation(line: 59, column: 3, scope: !108)
!172 = !DILocation(line: 63, column: 28, scope: !108)
!173 = !DILocation(line: 63, column: 34, scope: !108)
!174 = !DILocation(line: 63, column: 40, scope: !108)
!175 = !DILocation(line: 63, column: 10, scope: !108)
!176 = !DILocation(line: 63, column: 3, scope: !108)
!177 = !DILocation(line: 66, column: 36, scope: !108)
!178 = !DILocation(line: 66, column: 10, scope: !108)
!179 = !DILocation(line: 66, column: 3, scope: !108)
!180 = !DILocation(line: 69, column: 29, scope: !108)
!181 = !DILocation(line: 69, column: 35, scope: !108)
!182 = !DILocation(line: 69, column: 10, scope: !108)
!183 = !DILocation(line: 69, column: 3, scope: !108)
!184 = !DILocation(line: 72, column: 34, scope: !108)
!185 = !DILocation(line: 72, column: 10, scope: !108)
!186 = !DILocation(line: 72, column: 3, scope: !108)
!187 = !DILocation(line: 75, column: 30, scope: !108)
!188 = !DILocation(line: 75, column: 47, scope: !108)
!189 = !DILocation(line: 75, column: 36, scope: !108)
!190 = !DILocation(line: 75, column: 54, scope: !108)
!191 = !DILocation(line: 75, column: 10, scope: !108)
!192 = !DILocation(line: 75, column: 3, scope: !108)
!193 = !DILocation(line: 78, column: 10, scope: !108)
!194 = !DILocation(line: 78, column: 3, scope: !108)
!195 = !DILocation(line: 81, column: 28, scope: !108)
!196 = !DILocation(line: 81, column: 34, scope: !108)
!197 = !DILocation(line: 81, column: 40, scope: !108)
!198 = !DILocation(line: 81, column: 46, scope: !108)
!199 = !DILocation(line: 81, column: 10, scope: !108)
!200 = !DILocation(line: 81, column: 3, scope: !108)
!201 = !DILocation(line: 84, column: 37, scope: !108)
!202 = !DILocation(line: 84, column: 54, scope: !108)
!203 = !DILocation(line: 84, column: 43, scope: !108)
!204 = !DILocation(line: 84, column: 61, scope: !108)
!205 = !DILocation(line: 85, column: 9, scope: !108)
!206 = !DILocation(line: 84, column: 10, scope: !108)
!207 = !DILocation(line: 84, column: 3, scope: !108)
!208 = !DILocation(line: 88, column: 32, scope: !108)
!209 = !DILocation(line: 88, column: 10, scope: !108)
!210 = !DILocation(line: 88, column: 3, scope: !108)
!211 = !DILocation(line: 91, column: 32, scope: !108)
!212 = !DILocation(line: 91, column: 38, scope: !108)
!213 = !DILocation(line: 91, column: 10, scope: !108)
!214 = !DILocation(line: 91, column: 3, scope: !108)
!215 = !DILocation(line: 94, column: 46, scope: !108)
!216 = !DILocation(line: 94, column: 35, scope: !108)
!217 = !DILocation(line: 95, column: 18, scope: !108)
!218 = !DILocation(line: 95, column: 7, scope: !108)
!219 = !DILocation(line: 96, column: 7, scope: !108)
!220 = !DILocation(line: 96, column: 24, scope: !108)
!221 = !DILocation(line: 96, column: 13, scope: !108)
!222 = !DILocation(line: 94, column: 10, scope: !108)
!223 = !DILocation(line: 94, column: 3, scope: !108)
!224 = !DILocation(line: 99, column: 34, scope: !108)
!225 = !DILocation(line: 99, column: 51, scope: !108)
!226 = !DILocation(line: 99, column: 40, scope: !108)
!227 = !DILocation(line: 100, column: 24, scope: !108)
!228 = !DILocation(line: 100, column: 13, scope: !108)
!229 = !DILocation(line: 99, column: 10, scope: !108)
!230 = !DILocation(line: 99, column: 3, scope: !108)
!231 = !DILocation(line: 103, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !108, file: !1, line: 103, column: 7)
!233 = !DILocation(line: 103, column: 12, scope: !232)
!234 = !DILocation(line: 103, column: 7, scope: !108)
!235 = !DILocation(line: 104, column: 4, scope: !232)
!236 = !DILocation(line: 105, column: 28, scope: !108)
!237 = !DILocation(line: 106, column: 18, scope: !108)
!238 = !DILocation(line: 106, column: 7, scope: !108)
!239 = !DILocation(line: 107, column: 18, scope: !108)
!240 = !DILocation(line: 107, column: 7, scope: !108)
!241 = !DILocation(line: 105, column: 10, scope: !108)
!242 = !DILocation(line: 105, column: 3, scope: !108)
!243 = !DILocation(line: 112, column: 28, scope: !108)
!244 = !DILocation(line: 113, column: 18, scope: !108)
!245 = !DILocation(line: 113, column: 7, scope: !108)
!246 = !DILocation(line: 113, column: 36, scope: !108)
!247 = !DILocation(line: 113, column: 25, scope: !108)
!248 = !DILocation(line: 114, column: 18, scope: !108)
!249 = !DILocation(line: 114, column: 7, scope: !108)
!250 = !DILocation(line: 114, column: 36, scope: !108)
!251 = !DILocation(line: 114, column: 25, scope: !108)
!252 = !DILocation(line: 112, column: 10, scope: !108)
!253 = !DILocation(line: 112, column: 3, scope: !108)
!254 = !DILocation(line: 117, column: 40, scope: !108)
!255 = !DILocation(line: 117, column: 29, scope: !108)
!256 = !DILocation(line: 117, column: 58, scope: !108)
!257 = !DILocation(line: 117, column: 47, scope: !108)
!258 = !DILocation(line: 118, column: 19, scope: !108)
!259 = !DILocation(line: 118, column: 8, scope: !108)
!260 = !DILocation(line: 118, column: 37, scope: !108)
!261 = !DILocation(line: 118, column: 26, scope: !108)
!262 = !DILocation(line: 117, column: 10, scope: !108)
!263 = !DILocation(line: 117, column: 3, scope: !108)
!264 = !DILocation(line: 121, column: 30, scope: !108)
!265 = !DILocation(line: 121, column: 36, scope: !108)
!266 = !DILocation(line: 121, column: 42, scope: !108)
!267 = !DILocation(line: 121, column: 48, scope: !108)
!268 = !DILocation(line: 121, column: 10, scope: !108)
!269 = !DILocation(line: 121, column: 3, scope: !108)
!270 = !DILocation(line: 124, column: 41, scope: !108)
!271 = !DILocation(line: 124, column: 30, scope: !108)
!272 = !DILocation(line: 124, column: 48, scope: !108)
!273 = !DILocation(line: 124, column: 10, scope: !108)
!274 = !DILocation(line: 124, column: 3, scope: !108)
!275 = !DILocation(line: 127, column: 27, scope: !108)
!276 = !DILocation(line: 127, column: 33, scope: !108)
!277 = !DILocation(line: 127, column: 39, scope: !108)
!278 = !DILocation(line: 127, column: 10, scope: !108)
!279 = !DILocation(line: 127, column: 3, scope: !108)
!280 = !DILocation(line: 130, column: 3, scope: !108)
!281 = !DILocation(line: 132, column: 1, scope: !95)
!282 = !DISubprogram(name: "keyctl_get_keyring_ID", scope: !283, file: !283, line: 244, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DIFile(filename: "security/keys/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65e07b4072a82be19b875e4a608fcbf3")
!284 = !DISubroutineType(types: !285)
!285 = !{!22, !286, !292}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !287, line: 28, baseType: !288)
!287 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !289, line: 104, baseType: !290)
!289 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !5, line: 20, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !7, line: 26, baseType: !292)
!292 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!293 = !DISubprogram(name: "keyctl_join_session_keyring", scope: !283, file: !283, line: 245, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DISubroutineType(types: !295)
!295 = !{!22, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!299 = distinct !DISubprogram(name: "compat_ptr", scope: !300, file: !300, line: 977, type: !301, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !305)
!300 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!301 = !DISubroutineType(types: !302)
!302 = !{!9, !303}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !304, line: 46, baseType: !4)
!304 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!305 = !{!306}
!306 = !DILocalVariable(name: "uptr", arg: 1, scope: !299, file: !300, line: 977, type: !303)
!307 = !DILocation(line: 977, column: 53, scope: !299)
!308 = !DILocation(line: 979, column: 39, scope: !299)
!309 = !DILocation(line: 979, column: 24, scope: !299)
!310 = !DILocation(line: 979, column: 9, scope: !299)
!311 = !DILocation(line: 979, column: 2, scope: !299)
!312 = !DISubprogram(name: "keyctl_update_key", scope: !283, file: !283, line: 246, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DISubroutineType(types: !314)
!314 = !{!22, !286, !315, !317}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !289, line: 61, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !319, line: 72, baseType: !320)
!319 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !319, line: 16, baseType: !8)
!321 = !DISubprogram(name: "keyctl_revoke_key", scope: !283, file: !283, line: 247, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{!22, !286}
!324 = !DISubprogram(name: "keyctl_describe_key", scope: !283, file: !283, line: 252, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubroutineType(types: !326)
!326 = !{!22, !286, !327, !317}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!328 = !DISubprogram(name: "keyctl_keyring_clear", scope: !283, file: !283, line: 248, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubprogram(name: "keyctl_keyring_link", scope: !283, file: !283, line: 249, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubroutineType(types: !331)
!331 = !{!22, !286, !286}
!332 = !DISubprogram(name: "keyctl_keyring_unlink", scope: !283, file: !283, line: 251, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubprogram(name: "keyctl_keyring_search", scope: !283, file: !283, line: 253, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{!22, !286, !296, !296, !286}
!336 = !DISubprogram(name: "keyctl_read_key", scope: !283, file: !283, line: 255, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubprogram(name: "keyctl_chown_key", scope: !283, file: !283, line: 256, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DISubroutineType(types: !339)
!339 = !{!22, !286, !340, !342}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !289, line: 37, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !319, line: 49, baseType: !3)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !289, line: 38, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !319, line: 50, baseType: !3)
!344 = !DISubprogram(name: "keyctl_setperm_key", scope: !283, file: !283, line: 257, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{!22, !286, !347}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !287, line: 31, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !289, line: 110, baseType: !4)
!349 = !DISubprogram(name: "keyctl_instantiate_key", scope: !283, file: !283, line: 258, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubroutineType(types: !351)
!351 = !{!22, !286, !315, !317, !286}
!352 = !DISubprogram(name: "keyctl_negate_key", scope: !283, file: !283, line: 260, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DISubroutineType(types: !354)
!354 = !{!22, !286, !3, !286}
!355 = !DISubprogram(name: "keyctl_set_reqkey_keyring", scope: !283, file: !283, line: 261, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DISubroutineType(types: !357)
!357 = !{!22, !292}
!358 = !DISubprogram(name: "keyctl_set_timeout", scope: !283, file: !283, line: 262, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubroutineType(types: !360)
!360 = !{!22, !286, !3}
!361 = !DISubprogram(name: "keyctl_assume_authority", scope: !283, file: !283, line: 263, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubprogram(name: "keyctl_get_security", scope: !283, file: !283, line: 264, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubprogram(name: "keyctl_session_to_parent", scope: !283, file: !283, line: 266, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{!22}
!366 = !DISubprogram(name: "keyctl_reject_key", scope: !283, file: !283, line: 267, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!22, !286, !3, !3, !286}
!369 = !DISubprogram(name: "keyctl_instantiate_key_iov", scope: !283, file: !283, line: 268, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{!22, !286, !372, !3, !286}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !375, line: 17, size: 128, elements: !376)
!375 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !374, file: !375, line: 19, baseType: !9, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !374, file: !375, line: 20, baseType: !318, size: 64, offset: 64)
!379 = !DISubprogram(name: "keyctl_invalidate_key", scope: !283, file: !283, line: 271, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = distinct !DISubprogram(name: "keyctl_get_persistent", scope: !283, file: !283, line: 279, type: !381, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!22, !340, !286}
!383 = !{!384, !385}
!384 = !DILocalVariable(name: "uid", arg: 1, scope: !380, file: !283, line: 279, type: !340)
!385 = !DILocalVariable(name: "destring", arg: 2, scope: !380, file: !283, line: 279, type: !286)
!386 = !DILocation(line: 279, column: 48, scope: !380)
!387 = !DILocation(line: 279, column: 66, scope: !380)
!388 = !DILocation(line: 281, column: 2, scope: !380)
!389 = distinct !DISubprogram(name: "compat_keyctl_dh_compute", scope: !283, file: !283, line: 306, type: !390, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !413)
!390 = !DISubroutineType(types: !391)
!391 = !{!22, !392, !327, !317, !403}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyctl_dh_params", file: !394, line: 75, size: 96, elements: !395)
!394 = !DIFile(filename: "./include/uapi/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3240d6fd2beed3359c99cdf001231412")
!395 = !{!396, !401, !402}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 76, baseType: !397, size: 32)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 76, size: 32, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !397, file: !394, line: 78, baseType: !291, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !397, file: !394, line: 80, baseType: !291, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !393, file: !394, line: 82, baseType: !291, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !393, file: !394, line: 83, baseType: !291, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyctl_kdf_params", file: !394, line: 86, size: 448, elements: !405)
!405 = !{!406, !407, !408, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hashname", scope: !404, file: !394, line: 87, baseType: !327, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "otherinfo", scope: !404, file: !394, line: 88, baseType: !327, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "otherinfolen", scope: !404, file: !394, line: 89, baseType: !6, size: 32, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "__spare", scope: !404, file: !394, line: 90, baseType: !410, size: 256, offset: 160)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 8)
!413 = !{!414, !415, !416, !417}
!414 = !DILocalVariable(name: "params", arg: 1, scope: !389, file: !283, line: 307, type: !392)
!415 = !DILocalVariable(name: "buffer", arg: 2, scope: !389, file: !283, line: 308, type: !327)
!416 = !DILocalVariable(name: "buflen", arg: 3, scope: !389, file: !283, line: 308, type: !317)
!417 = !DILocalVariable(name: "kdf", arg: 4, scope: !389, file: !283, line: 309, type: !403)
!418 = !DILocation(line: 307, column: 37, scope: !389)
!419 = !DILocation(line: 308, column: 18, scope: !389)
!420 = !DILocation(line: 308, column: 33, scope: !389)
!421 = !DILocation(line: 309, column: 38, scope: !389)
!422 = !DILocation(line: 311, column: 2, scope: !389)
!423 = !DISubprogram(name: "keyctl_restrict_keyring", scope: !283, file: !283, line: 272, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{!22, !286, !296, !296}
!426 = !DISubprogram(name: "keyctl_pkey_query", scope: !283, file: !283, line: 317, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubroutineType(types: !428)
!428 = !{!22, !286, !296, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyctl_pkey_query", file: !394, line: 98, size: 448, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !430, file: !394, line: 99, baseType: !6, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !430, file: !394, line: 100, baseType: !6, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !430, file: !394, line: 101, baseType: !50, size: 16, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !430, file: !394, line: 102, baseType: !50, size: 16, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !430, file: !394, line: 103, baseType: !50, size: 16, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !430, file: !394, line: 104, baseType: !50, size: 16, offset: 112)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__spare", scope: !430, file: !394, line: 105, baseType: !439, size: 320, offset: 128)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 10)
!442 = !DISubprogram(name: "keyctl_pkey_e_d_s", scope: !283, file: !283, line: 325, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubroutineType(types: !444)
!444 = !{!22, !292, !445, !296, !315, !9}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyctl_pkey_params", file: !394, line: 108, size: 320, elements: !448)
!448 = !{!449, !450, !451, !456}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "key_id", scope: !447, file: !394, line: 109, baseType: !291, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !447, file: !394, line: 110, baseType: !6, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !394, line: 111, baseType: !452, size: 32, offset: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !394, line: 111, size: 32, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !452, file: !394, line: 112, baseType: !6, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !452, file: !394, line: 113, baseType: !6, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__spare", scope: !447, file: !394, line: 115, baseType: !457, size: 224, offset: 96)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 224, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 7)
!460 = !DISubprogram(name: "keyctl_pkey_verify", scope: !283, file: !283, line: 321, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!22, !445, !296, !315, !315}
!463 = !DISubprogram(name: "keyctl_keyring_move", scope: !283, file: !283, line: 250, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubroutineType(types: !465)
!465 = !{!22, !286, !286, !286, !3}
!466 = !DISubprogram(name: "keyctl_capabilities", scope: !283, file: !283, line: 355, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DISubroutineType(types: !468)
!468 = !{!22, !469, !317}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!471 = distinct !DISubprogram(name: "keyctl_watch_key", scope: !283, file: !283, line: 360, type: !472, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!22, !286, !292, !292}
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(name: "key_id", arg: 1, scope: !471, file: !283, line: 360, type: !286)
!476 = !DILocalVariable(name: "watch_fd", arg: 2, scope: !471, file: !283, line: 360, type: !292)
!477 = !DILocalVariable(name: "watch_id", arg: 3, scope: !471, file: !283, line: 360, type: !292)
!478 = !DILocation(line: 360, column: 50, scope: !471)
!479 = !DILocation(line: 360, column: 62, scope: !471)
!480 = !DILocation(line: 360, column: 76, scope: !471)
!481 = !DILocation(line: 362, column: 2, scope: !471)
