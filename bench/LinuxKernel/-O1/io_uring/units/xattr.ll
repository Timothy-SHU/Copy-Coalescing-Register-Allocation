; ModuleID = 'io_uring/xattr.c'
source_filename = "io_uring/xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { %union.anon.14, i8, i8, i16, i32, %struct.io_cqe, ptr, ptr, ptr, %union.anon.16, %union.anon.17, %struct.atomic_t, %struct.atomic_t, %struct.io_task_work, i32, %struct.hlist_node, ptr, ptr, ptr, ptr, %struct.io_wq_work, %struct.anon.18 }
%union.anon.14 = type { %struct.io_cmd_data }
%struct.io_cmd_data = type { ptr, [56 x i8] }
%struct.io_cqe = type { i64, i32, %union.anon.15 }
%union.anon.15 = type { i32 }
%union.anon.16 = type { ptr }
%union.anon.17 = type { %struct.io_wq_work_node }
%struct.io_wq_work_node = type { ptr }
%struct.atomic_t = type { i32 }
%struct.io_task_work = type { %struct.llist_node, ptr }
%struct.llist_node = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.io_wq_work = type { %struct.io_wq_work_node, i32, i32 }
%struct.anon.18 = type { i64, i64 }
%struct.io_xattr = type { ptr, %struct.xattr_ctx, ptr }
%struct.xattr_ctx = type { %union.anon.19, ptr, i64, ptr, i32 }
%union.anon.19 = type { ptr }
%struct.io_uring_sqe = type { i8, i8, i16, i32, %union.anon.20, %union.anon.22, i32, %union.anon.23, i64, %union.anon.24, i16, %union.anon.25, %union.anon.27 }
%union.anon.20 = type { i64 }
%union.anon.22 = type { i64 }
%union.anon.23 = type { i32 }
%union.anon.24 = type { i16 }
%union.anon.25 = type { i32 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { i64, [1 x i64] }
%struct.xattr_name = type { [256 x i8] }
%struct.file = type { %union.anon.29, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.29 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.30, %struct.qspinlock }
%union.anon.30 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [17 x i8] c"io_uring/xattr.c\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @io_xattr_cleanup(ptr noundef %req) #0 align 16 !dbg !6087 {
entry:
  %req.addr = alloca ptr, align 8
  %ix = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6091, metadata !DIExpression()), !dbg !6093
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6094
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6092, metadata !DIExpression()), !dbg !6095
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6096
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6096
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6096
  store ptr %1, ptr %ix, align 8, !dbg !6095
  %2 = load ptr, ptr %ix, align 8, !dbg !6097
  %filename = getelementptr inbounds %struct.io_xattr, ptr %2, i32 0, i32 2, !dbg !6099
  %3 = load ptr, ptr %filename, align 8, !dbg !6099
  %tobool = icmp ne ptr %3, null, !dbg !6097
  br i1 %tobool, label %if.then, label %if.end, !dbg !6100

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ix, align 8, !dbg !6101
  %filename1 = getelementptr inbounds %struct.io_xattr, ptr %4, i32 0, i32 2, !dbg !6102
  %5 = load ptr, ptr %filename1, align 8, !dbg !6102
  call void @putname(ptr noundef %5) #14, !dbg !6103
  br label %if.end, !dbg !6103

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %ix, align 8, !dbg !6104
  %ctx = getelementptr inbounds %struct.io_xattr, ptr %6, i32 0, i32 1, !dbg !6105
  %kname = getelementptr inbounds %struct.xattr_ctx, ptr %ctx, i32 0, i32 3, !dbg !6106
  %7 = load ptr, ptr %kname, align 8, !dbg !6106
  call void @kfree(ptr noundef %7) #14, !dbg !6107
  %8 = load ptr, ptr %ix, align 8, !dbg !6108
  %ctx2 = getelementptr inbounds %struct.io_xattr, ptr %8, i32 0, i32 1, !dbg !6109
  %kvalue = getelementptr inbounds %struct.xattr_ctx, ptr %ctx2, i32 0, i32 1, !dbg !6110
  %9 = load ptr, ptr %kvalue, align 8, !dbg !6110
  call void @kvfree(ptr noundef %9) #14, !dbg !6111
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6112
  ret void, !dbg !6112
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_kiocb_cmd_sz_check(i64 noundef %cmd_sz) #3 align 16 !dbg !6113 {
entry:
  %cmd_sz.addr = alloca i64, align 8
  store i64 %cmd_sz, ptr %cmd_sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd_sz.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  br label %do.body, !dbg !6119

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %cmd_sz.addr, align 8, !dbg !6120
  %cmp = icmp ugt i64 %0, 64, !dbg !6120
  br i1 %cmp, label %if.then, label %if.end, !dbg !6123

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_352() #15, !dbg !6120, !srcloc !6124
  unreachable, !dbg !6120

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6123

do.end:                                           ; preds = %if.end
  ret void, !dbg !6125
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6126 dso_local void @putname(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6129 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6132 dso_local void @kvfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_fgetxattr_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6133 {
entry:
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6137, metadata !DIExpression()), !dbg !6139
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6138, metadata !DIExpression()), !dbg !6140
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6141
  %1 = load ptr, ptr %sqe.addr, align 8, !dbg !6142
  %call = call i32 @__io_getxattr_prep(ptr noundef %0, ptr noundef %1) #14, !dbg !6143
  ret i32 %call, !dbg !6144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__io_getxattr_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6145 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %ix = alloca ptr, align 8
  %name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca ptr, align 8
  %tmp5 = alloca i64, align 8
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca ptr, align 8
  %tmp15 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6147, metadata !DIExpression()), !dbg !6160
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6148, metadata !DIExpression()), !dbg !6161
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6162
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6149, metadata !DIExpression()), !dbg !6163
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6164
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6164
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6164
  store ptr %1, ptr %ix, align 8, !dbg !6163
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #13, !dbg !6165
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6150, metadata !DIExpression()), !dbg !6166
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6151, metadata !DIExpression()), !dbg !6168
  %2 = load ptr, ptr %req.addr, align 8, !dbg !6169
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %2, i32 0, i32 4, !dbg !6169
  %3 = load i32, ptr %flags, align 4, !dbg !6169
  %and = and i32 %3, 1, !dbg !6169
  %tobool = icmp ne i32 %and, 0, !dbg !6169
  %lnot = xor i1 %tobool, true, !dbg !6169
  %lnot1 = xor i1 %lnot, true, !dbg !6169
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6169
  %conv = sext i32 %lnot.ext to i64, !dbg !6169
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6169
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6169
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6171

if.then:                                          ; preds = %entry
  store i32 -9, ptr %retval, align 4, !dbg !6172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6172

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ix, align 8, !dbg !6173
  %filename = getelementptr inbounds %struct.io_xattr, ptr %4, i32 0, i32 2, !dbg !6174
  store ptr null, ptr %filename, align 8, !dbg !6175
  %5 = load ptr, ptr %ix, align 8, !dbg !6176
  %ctx = getelementptr inbounds %struct.io_xattr, ptr %5, i32 0, i32 1, !dbg !6177
  %kvalue = getelementptr inbounds %struct.xattr_ctx, ptr %ctx, i32 0, i32 1, !dbg !6178
  store ptr null, ptr %kvalue, align 8, !dbg !6179
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !6180
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6152, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !6180
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6155, metadata !DIExpression()), !dbg !6180
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6180
  %conv3 = zext i1 %cmp to i32, !dbg !6180
  store i32 1, ptr %tmp, align 4, !dbg !6180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !6181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !6181
  %6 = load i32, ptr %tmp, align 4, !dbg !6180
  br label %do.body, !dbg !6182

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6184

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6184

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %sqe.addr, align 8, !dbg !6182
  %8 = getelementptr inbounds %struct.io_uring_sqe, ptr %7, i32 0, i32 5, !dbg !6182
  %9 = load volatile i64, ptr %8, align 8, !dbg !6182
  store i64 %9, ptr %tmp5, align 8, !dbg !6184
  %10 = load i64, ptr %tmp5, align 8, !dbg !6182
  %11 = inttoptr i64 %10 to ptr, !dbg !6181
  store ptr %11, ptr %tmp4, align 8, !dbg !6181
  %12 = load ptr, ptr %tmp4, align 8, !dbg !6181
  store ptr %12, ptr %name, align 8, !dbg !6186
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #13, !dbg !6187
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !6156, metadata !DIExpression()), !dbg !6187
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #13, !dbg !6187
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !6159, metadata !DIExpression()), !dbg !6187
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !6187
  %conv9 = zext i1 %cmp8 to i32, !dbg !6187
  store i32 1, ptr %tmp10, align 4, !dbg !6187
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #13, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #13, !dbg !6188
  %13 = load i32, ptr %tmp10, align 4, !dbg !6187
  br label %do.body12, !dbg !6189

do.body12:                                        ; preds = %do.end
  br label %do.cond13, !dbg !6191

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6191

do.end14:                                         ; preds = %do.cond13
  %14 = load ptr, ptr %sqe.addr, align 8, !dbg !6189
  %15 = getelementptr inbounds %struct.io_uring_sqe, ptr %14, i32 0, i32 4, !dbg !6189
  %16 = load volatile i64, ptr %15, align 8, !dbg !6189
  store i64 %16, ptr %tmp15, align 8, !dbg !6191
  %17 = load i64, ptr %tmp15, align 8, !dbg !6189
  %18 = inttoptr i64 %17 to ptr, !dbg !6188
  store ptr %18, ptr %tmp11, align 8, !dbg !6188
  %19 = load ptr, ptr %tmp11, align 8, !dbg !6188
  %20 = load ptr, ptr %ix, align 8, !dbg !6193
  %ctx16 = getelementptr inbounds %struct.io_xattr, ptr %20, i32 0, i32 1, !dbg !6194
  %21 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx16, i32 0, i32 0, !dbg !6195
  store ptr %19, ptr %21, align 8, !dbg !6196
  br label %do.body17, !dbg !6197

do.body17:                                        ; preds = %do.end14
  br label %do.cond18, !dbg !6199

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6199

do.end19:                                         ; preds = %do.cond18
  %22 = load ptr, ptr %sqe.addr, align 8, !dbg !6197
  %len = getelementptr inbounds %struct.io_uring_sqe, ptr %22, i32 0, i32 6, !dbg !6197
  %23 = load volatile i32, ptr %len, align 8, !dbg !6197
  store i32 %23, ptr %tmp20, align 4, !dbg !6199
  %24 = load i32, ptr %tmp20, align 4, !dbg !6197
  %conv21 = zext i32 %24 to i64, !dbg !6201
  %25 = load ptr, ptr %ix, align 8, !dbg !6202
  %ctx22 = getelementptr inbounds %struct.io_xattr, ptr %25, i32 0, i32 1, !dbg !6203
  %size = getelementptr inbounds %struct.xattr_ctx, ptr %ctx22, i32 0, i32 2, !dbg !6204
  store i64 %conv21, ptr %size, align 8, !dbg !6205
  br label %do.body23, !dbg !6206

do.body23:                                        ; preds = %do.end19
  br label %do.cond24, !dbg !6208

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6208

do.end25:                                         ; preds = %do.cond24
  %26 = load ptr, ptr %sqe.addr, align 8, !dbg !6206
  %27 = getelementptr inbounds %struct.io_uring_sqe, ptr %26, i32 0, i32 7, !dbg !6206
  %28 = load volatile i32, ptr %27, align 4, !dbg !6206
  store i32 %28, ptr %tmp26, align 4, !dbg !6208
  %29 = load i32, ptr %tmp26, align 4, !dbg !6206
  %30 = load ptr, ptr %ix, align 8, !dbg !6210
  %ctx27 = getelementptr inbounds %struct.io_xattr, ptr %30, i32 0, i32 1, !dbg !6211
  %flags28 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx27, i32 0, i32 4, !dbg !6212
  store i32 %29, ptr %flags28, align 8, !dbg !6213
  %31 = load ptr, ptr %ix, align 8, !dbg !6214
  %ctx29 = getelementptr inbounds %struct.io_xattr, ptr %31, i32 0, i32 1, !dbg !6216
  %flags30 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx29, i32 0, i32 4, !dbg !6217
  %32 = load i32, ptr %flags30, align 8, !dbg !6217
  %tobool31 = icmp ne i32 %32, 0, !dbg !6214
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6218

if.then32:                                        ; preds = %do.end25
  store i32 -22, ptr %retval, align 4, !dbg !6219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6219

if.end33:                                         ; preds = %do.end25
  %call = call noalias ptr @kmalloc(i64 noundef 256, i32 noundef 3264) #16, !dbg !6220
  %33 = load ptr, ptr %ix, align 8, !dbg !6221
  %ctx34 = getelementptr inbounds %struct.io_xattr, ptr %33, i32 0, i32 1, !dbg !6222
  %kname = getelementptr inbounds %struct.xattr_ctx, ptr %ctx34, i32 0, i32 3, !dbg !6223
  store ptr %call, ptr %kname, align 8, !dbg !6224
  %34 = load ptr, ptr %ix, align 8, !dbg !6225
  %ctx35 = getelementptr inbounds %struct.io_xattr, ptr %34, i32 0, i32 1, !dbg !6227
  %kname36 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx35, i32 0, i32 3, !dbg !6228
  %35 = load ptr, ptr %kname36, align 8, !dbg !6228
  %tobool37 = icmp ne ptr %35, null, !dbg !6225
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !6229

if.then38:                                        ; preds = %if.end33
  store i32 -12, ptr %retval, align 4, !dbg !6230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6230

if.end39:                                         ; preds = %if.end33
  %36 = load ptr, ptr %ix, align 8, !dbg !6231
  %ctx40 = getelementptr inbounds %struct.io_xattr, ptr %36, i32 0, i32 1, !dbg !6232
  %kname41 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx40, i32 0, i32 3, !dbg !6233
  %37 = load ptr, ptr %kname41, align 8, !dbg !6233
  %name42 = getelementptr inbounds %struct.xattr_name, ptr %37, i32 0, i32 0, !dbg !6234
  %arraydecay = getelementptr inbounds [256 x i8], ptr %name42, i64 0, i64 0, !dbg !6231
  %38 = load ptr, ptr %name, align 8, !dbg !6235
  %call43 = call i64 @strncpy_from_user(ptr noundef %arraydecay, ptr noundef %38, i64 noundef 256) #14, !dbg !6236
  %conv44 = trunc i64 %call43 to i32, !dbg !6236
  store i32 %conv44, ptr %ret, align 4, !dbg !6237
  %39 = load i32, ptr %ret, align 4, !dbg !6238
  %tobool45 = icmp ne i32 %39, 0, !dbg !6238
  br i1 %tobool45, label %lor.lhs.false, label %if.then49, !dbg !6240

lor.lhs.false:                                    ; preds = %if.end39
  %40 = load i32, ptr %ret, align 4, !dbg !6241
  %conv46 = sext i32 %40 to i64, !dbg !6241
  %cmp47 = icmp eq i64 %conv46, 256, !dbg !6242
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !6243

if.then49:                                        ; preds = %lor.lhs.false, %if.end39
  store i32 -34, ptr %ret, align 4, !dbg !6244
  br label %if.end50, !dbg !6245

if.end50:                                         ; preds = %if.then49, %lor.lhs.false
  %41 = load i32, ptr %ret, align 4, !dbg !6246
  %cmp51 = icmp slt i32 %41, 0, !dbg !6248
  br i1 %cmp51, label %if.then53, label %if.end56, !dbg !6249

if.then53:                                        ; preds = %if.end50
  %42 = load ptr, ptr %ix, align 8, !dbg !6250
  %ctx54 = getelementptr inbounds %struct.io_xattr, ptr %42, i32 0, i32 1, !dbg !6252
  %kname55 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx54, i32 0, i32 3, !dbg !6253
  %43 = load ptr, ptr %kname55, align 8, !dbg !6253
  call void @kfree(ptr noundef %43) #14, !dbg !6254
  %44 = load i32, ptr %ret, align 4, !dbg !6255
  store i32 %44, ptr %retval, align 4, !dbg !6256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6256

if.end56:                                         ; preds = %if.end50
  %45 = load ptr, ptr %req.addr, align 8, !dbg !6257
  %flags57 = getelementptr inbounds %struct.io_kiocb, ptr %45, i32 0, i32 4, !dbg !6258
  %46 = load i32, ptr %flags57, align 4, !dbg !6259
  %or = or i32 %46, 8192, !dbg !6259
  store i32 %or, ptr %flags57, align 4, !dbg !6259
  %47 = load ptr, ptr %req.addr, align 8, !dbg !6260
  %flags58 = getelementptr inbounds %struct.io_kiocb, ptr %47, i32 0, i32 4, !dbg !6261
  %48 = load i32, ptr %flags58, align 4, !dbg !6262
  %or59 = or i32 %48, 16, !dbg !6262
  store i32 %or59, ptr %flags58, align 4, !dbg !6262
  store i32 0, ptr %retval, align 4, !dbg !6263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6263

cleanup:                                          ; preds = %if.end56, %if.then53, %if.then38, %if.then32, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6264
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #13, !dbg !6264
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6264
  %49 = load i32, ptr %retval, align 4, !dbg !6264
  ret i32 %49, !dbg !6264
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_getxattr_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6265 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %ix = alloca ptr, align 8
  %path = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6267, metadata !DIExpression()), !dbg !6276
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6268, metadata !DIExpression()), !dbg !6277
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6278
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6269, metadata !DIExpression()), !dbg !6279
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6280
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6280
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6280
  store ptr %1, ptr %ix, align 8, !dbg !6279
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #13, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6270, metadata !DIExpression()), !dbg !6282
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6271, metadata !DIExpression()), !dbg !6284
  %2 = load ptr, ptr %req.addr, align 8, !dbg !6285
  %3 = load ptr, ptr %sqe.addr, align 8, !dbg !6286
  %call = call i32 @__io_getxattr_prep(ptr noundef %2, ptr noundef %3) #14, !dbg !6287
  store i32 %call, ptr %ret, align 4, !dbg !6288
  %4 = load i32, ptr %ret, align 4, !dbg !6289
  %tobool = icmp ne i32 %4, 0, !dbg !6289
  br i1 %tobool, label %if.then, label %if.end, !dbg !6291

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !dbg !6292
  store i32 %5, ptr %retval, align 4, !dbg !6293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6293

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6272, metadata !DIExpression()), !dbg !6294
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6275, metadata !DIExpression()), !dbg !6294
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6294
  %conv = zext i1 %cmp to i32, !dbg !6294
  store i32 1, ptr %tmp, align 4, !dbg !6294
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !6295
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !6295
  %6 = load i32, ptr %tmp, align 4, !dbg !6294
  br label %do.body, !dbg !6296

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6298

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6298

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %sqe.addr, align 8, !dbg !6296
  %8 = getelementptr inbounds %struct.io_uring_sqe, ptr %7, i32 0, i32 12, !dbg !6296
  %addr3 = getelementptr inbounds %struct.anon.28, ptr %8, i32 0, i32 0, !dbg !6296
  %9 = load volatile i64, ptr %addr3, align 8, !dbg !6296
  store i64 %9, ptr %tmp2, align 8, !dbg !6298
  %10 = load i64, ptr %tmp2, align 8, !dbg !6296
  %11 = inttoptr i64 %10 to ptr, !dbg !6295
  store ptr %11, ptr %tmp1, align 8, !dbg !6295
  %12 = load ptr, ptr %tmp1, align 8, !dbg !6295
  store ptr %12, ptr %path, align 8, !dbg !6300
  %13 = load ptr, ptr %path, align 8, !dbg !6301
  %call3 = call ptr @getname_flags(ptr noundef %13, i32 noundef 1, ptr noundef null) #14, !dbg !6302
  %14 = load ptr, ptr %ix, align 8, !dbg !6303
  %filename = getelementptr inbounds %struct.io_xattr, ptr %14, i32 0, i32 2, !dbg !6304
  store ptr %call3, ptr %filename, align 8, !dbg !6305
  %15 = load ptr, ptr %ix, align 8, !dbg !6306
  %filename4 = getelementptr inbounds %struct.io_xattr, ptr %15, i32 0, i32 2, !dbg !6308
  %16 = load ptr, ptr %filename4, align 8, !dbg !6308
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %16) #14, !dbg !6309
  br i1 %call5, label %if.then6, label %if.end11, !dbg !6310

if.then6:                                         ; preds = %do.end
  %17 = load ptr, ptr %ix, align 8, !dbg !6311
  %filename7 = getelementptr inbounds %struct.io_xattr, ptr %17, i32 0, i32 2, !dbg !6313
  %18 = load ptr, ptr %filename7, align 8, !dbg !6313
  %call8 = call i64 @PTR_ERR(ptr noundef %18) #14, !dbg !6314
  %conv9 = trunc i64 %call8 to i32, !dbg !6314
  store i32 %conv9, ptr %ret, align 4, !dbg !6315
  %19 = load ptr, ptr %ix, align 8, !dbg !6316
  %filename10 = getelementptr inbounds %struct.io_xattr, ptr %19, i32 0, i32 2, !dbg !6317
  store ptr null, ptr %filename10, align 8, !dbg !6318
  br label %if.end11, !dbg !6319

if.end11:                                         ; preds = %if.then6, %do.end
  %20 = load i32, ptr %ret, align 4, !dbg !6320
  store i32 %20, ptr %retval, align 4, !dbg !6321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6321

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6322
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #13, !dbg !6322
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6322
  %21 = load i32, ptr %retval, align 4, !dbg !6322
  ret i32 %21, !dbg !6322
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6323 dso_local ptr @getname_flags(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6326 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6331, metadata !DIExpression()), !dbg !6332
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6333
  %1 = ptrtoint ptr %0 to i64, !dbg !6333
  %2 = inttoptr i64 %1 to ptr, !dbg !6333
  %3 = ptrtoint ptr %2 to i64, !dbg !6333
  %cmp = icmp uge i64 %3, -4095, !dbg !6333
  %lnot = xor i1 %cmp, true, !dbg !6333
  %lnot1 = xor i1 %lnot, true, !dbg !6333
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6333
  %conv = sext i32 %lnot.ext to i64, !dbg !6333
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6333
  %tobool = icmp ne i64 %expval, 0, !dbg !6333
  ret i1 %tobool, !dbg !6334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6335 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6339, metadata !DIExpression()), !dbg !6340
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6341
  %1 = ptrtoint ptr %0 to i64, !dbg !6342
  ret i64 %1, !dbg !6343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_fgetxattr(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6344 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %ix = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6348, metadata !DIExpression()), !dbg !6357
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6349, metadata !DIExpression()), !dbg !6358
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6350, metadata !DIExpression()), !dbg !6360
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6361
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6361
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6361
  store ptr %1, ptr %ix, align 8, !dbg !6360
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6362
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6351, metadata !DIExpression()), !dbg !6363
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6364
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6352, metadata !DIExpression()), !dbg !6364
  %2 = load i32, ptr %issue_flags.addr, align 4, !dbg !6364
  %and = and i32 %2, -2147483648, !dbg !6364
  %tobool = icmp ne i32 %and, 0, !dbg !6364
  %lnot = xor i1 %tobool, true, !dbg !6364
  %lnot1 = xor i1 %lnot, true, !dbg !6364
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6364
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6364
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6365
  %tobool2 = icmp ne i32 %3, 0, !dbg !6365
  %lnot3 = xor i1 %tobool2, true, !dbg !6365
  %lnot5 = xor i1 %lnot3, true, !dbg !6365
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6365
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6365
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6365
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6365
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6364

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6365

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !6366
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6354, metadata !DIExpression()), !dbg !6366
  store i32 2307, ptr %__flags, align 4, !dbg !6366
  br label %do.body8, !dbg !6366

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6367

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6367

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6366

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6369
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 113, i32 %4, i64 12) #13, !dbg !6369, !srcloc !6371
  br label %do.cond10, !dbg !6369

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6369

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6366

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6372

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6372

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !6365
  br label %do.cond15, !dbg !6366

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6366

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6366

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6364
  %tobool17 = icmp ne i32 %5, 0, !dbg !6364
  %lnot18 = xor i1 %tobool17, true, !dbg !6364
  %lnot20 = xor i1 %lnot18, true, !dbg !6364
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6364
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6364
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6364
  store i64 %expval23, ptr %tmp, align 8, !dbg !6365
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6374
  %6 = load i64, ptr %tmp, align 8, !dbg !6364
  %7 = load ptr, ptr %req.addr, align 8, !dbg !6375
  %8 = getelementptr inbounds %struct.io_kiocb, ptr %7, i32 0, i32 0, !dbg !6376
  %9 = load ptr, ptr %8, align 8, !dbg !6376
  %f_path = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 10, !dbg !6377
  %mnt = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 0, !dbg !6378
  %10 = load ptr, ptr %mnt, align 8, !dbg !6378
  %call = call ptr @mnt_idmap(ptr noundef %10) #14, !dbg !6379
  %11 = load ptr, ptr %req.addr, align 8, !dbg !6380
  %12 = getelementptr inbounds %struct.io_kiocb, ptr %11, i32 0, i32 0, !dbg !6381
  %13 = load ptr, ptr %12, align 8, !dbg !6381
  %f_path24 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 10, !dbg !6382
  %dentry = getelementptr inbounds %struct.path, ptr %f_path24, i32 0, i32 1, !dbg !6383
  %14 = load ptr, ptr %dentry, align 8, !dbg !6383
  %15 = load ptr, ptr %ix, align 8, !dbg !6384
  %ctx = getelementptr inbounds %struct.io_xattr, ptr %15, i32 0, i32 1, !dbg !6385
  %call25 = call i64 @do_getxattr(ptr noundef %call, ptr noundef %14, ptr noundef %ctx) #14, !dbg !6386
  %conv26 = trunc i64 %call25 to i32, !dbg !6386
  store i32 %conv26, ptr %ret, align 4, !dbg !6387
  %16 = load ptr, ptr %req.addr, align 8, !dbg !6388
  %17 = load i32, ptr %ret, align 4, !dbg !6389
  call void @io_xattr_finish(ptr noundef %16, i32 noundef %17) #14, !dbg !6390
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6391
  ret i32 0, !dbg !6392
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6393 dso_local i64 @do_getxattr(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mnt_idmap(ptr noundef %mnt) #3 align 16 !dbg !6397 {
entry:
  %mnt.addr = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !6403, metadata !DIExpression()), !dbg !6407
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #13, !dbg !6408
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !6404, metadata !DIExpression()), !dbg !6408
  br label %do.body, !dbg !6409

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6411

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6411

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !6409
  %mnt_idmap = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 3, !dbg !6409
  %1 = load volatile ptr, ptr %mnt_idmap, align 8, !dbg !6409
  store ptr %1, ptr %tmp, align 8, !dbg !6411
  %2 = load ptr, ptr %tmp, align 8, !dbg !6409
  store ptr %2, ptr %___p1, align 8, !dbg !6408
  br label %do.body1, !dbg !6408

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6413

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6413

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !6408, !srcloc !6415
  %3 = load ptr, ptr %___p1, align 8, !dbg !6408
  store ptr %3, ptr %tmp4, align 8, !dbg !6408
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #13, !dbg !6416
  %4 = load ptr, ptr %tmp4, align 8, !dbg !6408
  ret ptr %4, !dbg !6417
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_xattr_finish(ptr noundef %req, i32 noundef %ret) #0 align 16 !dbg !6418 {
entry:
  %req.addr = alloca ptr, align 8
  %ret.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6422, metadata !DIExpression()), !dbg !6424
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !6423, metadata !DIExpression()), !dbg !6425
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6426
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 4, !dbg !6427
  %1 = load i32, ptr %flags, align 4, !dbg !6428
  %and = and i32 %1, -8193, !dbg !6428
  store i32 %and, ptr %flags, align 4, !dbg !6428
  %2 = load ptr, ptr %req.addr, align 8, !dbg !6429
  call void @io_xattr_cleanup(ptr noundef %2) #14, !dbg !6430
  %3 = load ptr, ptr %req.addr, align 8, !dbg !6431
  %4 = load i32, ptr %ret.addr, align 4, !dbg !6432
  call void @io_req_set_res(ptr noundef %3, i32 noundef %4, i32 noundef 0) #14, !dbg !6433
  ret void, !dbg !6434
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_getxattr(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6435 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %ix = alloca ptr, align 8
  %lookup_flags = alloca i32, align 4
  %path = alloca %struct.path, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6437, metadata !DIExpression()), !dbg !6449
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6438, metadata !DIExpression()), !dbg !6450
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6451
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6439, metadata !DIExpression()), !dbg !6452
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6453
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6453
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6453
  store ptr %1, ptr %ix, align 8, !dbg !6452
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #13, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !6440, metadata !DIExpression()), !dbg !6455
  store i32 1, ptr %lookup_flags, align 4, !dbg !6455
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #13, !dbg !6456
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6441, metadata !DIExpression()), !dbg !6457
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6458
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6442, metadata !DIExpression()), !dbg !6459
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6460
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6443, metadata !DIExpression()), !dbg !6460
  %2 = load i32, ptr %issue_flags.addr, align 4, !dbg !6460
  %and = and i32 %2, -2147483648, !dbg !6460
  %tobool = icmp ne i32 %and, 0, !dbg !6460
  %lnot = xor i1 %tobool, true, !dbg !6460
  %lnot1 = xor i1 %lnot, true, !dbg !6460
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6460
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6460
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6461
  %tobool2 = icmp ne i32 %3, 0, !dbg !6461
  %lnot3 = xor i1 %tobool2, true, !dbg !6461
  %lnot5 = xor i1 %lnot3, true, !dbg !6461
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6461
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6461
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6461
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6461
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6460

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6461

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6445, metadata !DIExpression()), !dbg !6462
  store i32 2307, ptr %__flags, align 4, !dbg !6462
  br label %do.body8, !dbg !6462

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6463

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6463

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6462

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6465
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 130, i32 %4, i64 12) #13, !dbg !6465, !srcloc !6467
  br label %do.cond10, !dbg !6465

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6465

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6462

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6468

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6468

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !6461
  br label %do.cond15, !dbg !6462

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6462

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6462

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6460
  %tobool17 = icmp ne i32 %5, 0, !dbg !6460
  %lnot18 = xor i1 %tobool17, true, !dbg !6460
  %lnot20 = xor i1 %lnot18, true, !dbg !6460
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6460
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6460
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6460
  store i64 %expval23, ptr %tmp, align 8, !dbg !6461
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6470
  %6 = load i64, ptr %tmp, align 8, !dbg !6460
  br label %retry, !dbg !6470

retry:                                            ; preds = %if.then31, %if.end
  call void @llvm.dbg.label(metadata !6448), !dbg !6471
  %7 = load ptr, ptr %ix, align 8, !dbg !6472
  %filename = getelementptr inbounds %struct.io_xattr, ptr %7, i32 0, i32 2, !dbg !6473
  %8 = load ptr, ptr %filename, align 8, !dbg !6473
  %9 = load i32, ptr %lookup_flags, align 4, !dbg !6474
  %call = call i32 @filename_lookup(i32 noundef -100, ptr noundef %8, i32 noundef %9, ptr noundef %path, ptr noundef null) #14, !dbg !6475
  store i32 %call, ptr %ret, align 4, !dbg !6476
  %10 = load i32, ptr %ret, align 4, !dbg !6477
  %tobool24 = icmp ne i32 %10, 0, !dbg !6477
  br i1 %tobool24, label %if.end33, label %if.then25, !dbg !6479

if.then25:                                        ; preds = %retry
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !6480
  %11 = load ptr, ptr %mnt, align 8, !dbg !6480
  %call26 = call ptr @mnt_idmap(ptr noundef %11) #14, !dbg !6482
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !6483
  %12 = load ptr, ptr %dentry, align 8, !dbg !6483
  %13 = load ptr, ptr %ix, align 8, !dbg !6484
  %ctx = getelementptr inbounds %struct.io_xattr, ptr %13, i32 0, i32 1, !dbg !6485
  %call27 = call i64 @do_getxattr(ptr noundef %call26, ptr noundef %12, ptr noundef %ctx) #14, !dbg !6486
  %conv28 = trunc i64 %call27 to i32, !dbg !6486
  store i32 %conv28, ptr %ret, align 4, !dbg !6487
  call void @path_put(ptr noundef %path) #14, !dbg !6488
  %14 = load i32, ptr %ret, align 4, !dbg !6489
  %conv29 = sext i32 %14 to i64, !dbg !6489
  %15 = load i32, ptr %lookup_flags, align 4, !dbg !6491
  %call30 = call zeroext i1 @retry_estale(i64 noundef %conv29, i32 noundef %15) #14, !dbg !6492
  br i1 %call30, label %if.then31, label %if.end32, !dbg !6493

if.then31:                                        ; preds = %if.then25
  %16 = load i32, ptr %lookup_flags, align 4, !dbg !6494
  %or = or i32 %16, 32, !dbg !6494
  store i32 %or, ptr %lookup_flags, align 4, !dbg !6494
  br label %retry, !dbg !6496

if.end32:                                         ; preds = %if.then25
  br label %if.end33, !dbg !6497

if.end33:                                         ; preds = %if.end32, %retry
  %17 = load ptr, ptr %req.addr, align 8, !dbg !6498
  %18 = load i32, ptr %ret, align 4, !dbg !6499
  call void @io_xattr_finish(ptr noundef %17, i32 noundef %18) #14, !dbg !6500
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6501
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #13, !dbg !6501
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #13, !dbg !6501
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6501
  ret i32 0, !dbg !6502
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6503 dso_local i32 @filename_lookup(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6506 dso_local void @path_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @retry_estale(i64 noundef %error, i32 noundef %flags) #3 align 16 !dbg !6509 {
entry:
  %error.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6515, metadata !DIExpression()), !dbg !6517
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6516, metadata !DIExpression()), !dbg !6518
  %0 = load i64, ptr %error.addr, align 8, !dbg !6519
  %cmp = icmp eq i64 %0, -116, !dbg !6520
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6521

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6522
  %and = and i32 %1, 32, !dbg !6523
  %tobool = icmp ne i32 %and, 0, !dbg !6524
  %lnot = xor i1 %tobool, true, !dbg !6524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6525
  ret i1 %2, !dbg !6526
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_setxattr_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6527 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %ix = alloca ptr, align 8
  %path = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6529, metadata !DIExpression()), !dbg !6538
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6530, metadata !DIExpression()), !dbg !6539
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6531, metadata !DIExpression()), !dbg !6541
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6542
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6542
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6542
  store ptr %1, ptr %ix, align 8, !dbg !6541
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #13, !dbg !6543
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6532, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6533, metadata !DIExpression()), !dbg !6546
  %2 = load ptr, ptr %req.addr, align 8, !dbg !6547
  %3 = load ptr, ptr %sqe.addr, align 8, !dbg !6548
  %call = call i32 @__io_setxattr_prep(ptr noundef %2, ptr noundef %3) #14, !dbg !6549
  store i32 %call, ptr %ret, align 4, !dbg !6550
  %4 = load i32, ptr %ret, align 4, !dbg !6551
  %tobool = icmp ne i32 %4, 0, !dbg !6551
  br i1 %tobool, label %if.then, label %if.end, !dbg !6553

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !dbg !6554
  store i32 %5, ptr %retval, align 4, !dbg !6555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6555

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6534, metadata !DIExpression()), !dbg !6556
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6537, metadata !DIExpression()), !dbg !6556
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6556
  %conv = zext i1 %cmp to i32, !dbg !6556
  store i32 1, ptr %tmp, align 4, !dbg !6556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !6557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !6557
  %6 = load i32, ptr %tmp, align 4, !dbg !6556
  br label %do.body, !dbg !6558

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6560

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6560

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %sqe.addr, align 8, !dbg !6558
  %8 = getelementptr inbounds %struct.io_uring_sqe, ptr %7, i32 0, i32 12, !dbg !6558
  %addr3 = getelementptr inbounds %struct.anon.28, ptr %8, i32 0, i32 0, !dbg !6558
  %9 = load volatile i64, ptr %addr3, align 8, !dbg !6558
  store i64 %9, ptr %tmp2, align 8, !dbg !6560
  %10 = load i64, ptr %tmp2, align 8, !dbg !6558
  %11 = inttoptr i64 %10 to ptr, !dbg !6557
  store ptr %11, ptr %tmp1, align 8, !dbg !6557
  %12 = load ptr, ptr %tmp1, align 8, !dbg !6557
  store ptr %12, ptr %path, align 8, !dbg !6562
  %13 = load ptr, ptr %path, align 8, !dbg !6563
  %call3 = call ptr @getname_flags(ptr noundef %13, i32 noundef 1, ptr noundef null) #14, !dbg !6564
  %14 = load ptr, ptr %ix, align 8, !dbg !6565
  %filename = getelementptr inbounds %struct.io_xattr, ptr %14, i32 0, i32 2, !dbg !6566
  store ptr %call3, ptr %filename, align 8, !dbg !6567
  %15 = load ptr, ptr %ix, align 8, !dbg !6568
  %filename4 = getelementptr inbounds %struct.io_xattr, ptr %15, i32 0, i32 2, !dbg !6570
  %16 = load ptr, ptr %filename4, align 8, !dbg !6570
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %16) #14, !dbg !6571
  br i1 %call5, label %if.then6, label %if.end11, !dbg !6572

if.then6:                                         ; preds = %do.end
  %17 = load ptr, ptr %ix, align 8, !dbg !6573
  %filename7 = getelementptr inbounds %struct.io_xattr, ptr %17, i32 0, i32 2, !dbg !6575
  %18 = load ptr, ptr %filename7, align 8, !dbg !6575
  %call8 = call i64 @PTR_ERR(ptr noundef %18) #14, !dbg !6576
  %conv9 = trunc i64 %call8 to i32, !dbg !6576
  store i32 %conv9, ptr %ret, align 4, !dbg !6577
  %19 = load ptr, ptr %ix, align 8, !dbg !6578
  %filename10 = getelementptr inbounds %struct.io_xattr, ptr %19, i32 0, i32 2, !dbg !6579
  store ptr null, ptr %filename10, align 8, !dbg !6580
  br label %if.end11, !dbg !6581

if.end11:                                         ; preds = %if.then6, %do.end
  %20 = load i32, ptr %ret, align 4, !dbg !6582
  store i32 %20, ptr %retval, align 4, !dbg !6583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6583

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #13, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6584
  %21 = load i32, ptr %retval, align 4, !dbg !6584
  ret i32 %21, !dbg !6584
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__io_setxattr_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6585 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %ix = alloca ptr, align 8
  %name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca ptr, align 8
  %tmp5 = alloca i64, align 8
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca ptr, align 8
  %tmp15 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6587, metadata !DIExpression()), !dbg !6600
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6588, metadata !DIExpression()), !dbg !6601
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6602
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6589, metadata !DIExpression()), !dbg !6603
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6604
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6604
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6604
  store ptr %1, ptr %ix, align 8, !dbg !6603
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #13, !dbg !6605
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6590, metadata !DIExpression()), !dbg !6606
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6607
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6591, metadata !DIExpression()), !dbg !6608
  %2 = load ptr, ptr %req.addr, align 8, !dbg !6609
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %2, i32 0, i32 4, !dbg !6609
  %3 = load i32, ptr %flags, align 4, !dbg !6609
  %and = and i32 %3, 1, !dbg !6609
  %tobool = icmp ne i32 %and, 0, !dbg !6609
  %lnot = xor i1 %tobool, true, !dbg !6609
  %lnot1 = xor i1 %lnot, true, !dbg !6609
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6609
  %conv = sext i32 %lnot.ext to i64, !dbg !6609
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6609
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6609
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6611

if.then:                                          ; preds = %entry
  store i32 -9, ptr %retval, align 4, !dbg !6612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6612

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ix, align 8, !dbg !6613
  %filename = getelementptr inbounds %struct.io_xattr, ptr %4, i32 0, i32 2, !dbg !6614
  store ptr null, ptr %filename, align 8, !dbg !6615
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6592, metadata !DIExpression()), !dbg !6616
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6595, metadata !DIExpression()), !dbg !6616
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6616
  %conv3 = zext i1 %cmp to i32, !dbg !6616
  store i32 1, ptr %tmp, align 4, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !6617
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !6617
  %5 = load i32, ptr %tmp, align 4, !dbg !6616
  br label %do.body, !dbg !6618

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6620

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6620

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %sqe.addr, align 8, !dbg !6618
  %7 = getelementptr inbounds %struct.io_uring_sqe, ptr %6, i32 0, i32 5, !dbg !6618
  %8 = load volatile i64, ptr %7, align 8, !dbg !6618
  store i64 %8, ptr %tmp5, align 8, !dbg !6620
  %9 = load i64, ptr %tmp5, align 8, !dbg !6618
  %10 = inttoptr i64 %9 to ptr, !dbg !6617
  store ptr %10, ptr %tmp4, align 8, !dbg !6617
  %11 = load ptr, ptr %tmp4, align 8, !dbg !6617
  store ptr %11, ptr %name, align 8, !dbg !6622
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #13, !dbg !6623
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !6596, metadata !DIExpression()), !dbg !6623
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #13, !dbg !6623
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !6599, metadata !DIExpression()), !dbg !6623
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !6623
  %conv9 = zext i1 %cmp8 to i32, !dbg !6623
  store i32 1, ptr %tmp10, align 4, !dbg !6623
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #13, !dbg !6624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #13, !dbg !6624
  %12 = load i32, ptr %tmp10, align 4, !dbg !6623
  br label %do.body12, !dbg !6625

do.body12:                                        ; preds = %do.end
  br label %do.cond13, !dbg !6627

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6627

do.end14:                                         ; preds = %do.cond13
  %13 = load ptr, ptr %sqe.addr, align 8, !dbg !6625
  %14 = getelementptr inbounds %struct.io_uring_sqe, ptr %13, i32 0, i32 4, !dbg !6625
  %15 = load volatile i64, ptr %14, align 8, !dbg !6625
  store i64 %15, ptr %tmp15, align 8, !dbg !6627
  %16 = load i64, ptr %tmp15, align 8, !dbg !6625
  %17 = inttoptr i64 %16 to ptr, !dbg !6624
  store ptr %17, ptr %tmp11, align 8, !dbg !6624
  %18 = load ptr, ptr %tmp11, align 8, !dbg !6624
  %19 = load ptr, ptr %ix, align 8, !dbg !6629
  %ctx = getelementptr inbounds %struct.io_xattr, ptr %19, i32 0, i32 1, !dbg !6630
  %20 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx, i32 0, i32 0, !dbg !6631
  store ptr %18, ptr %20, align 8, !dbg !6632
  %21 = load ptr, ptr %ix, align 8, !dbg !6633
  %ctx16 = getelementptr inbounds %struct.io_xattr, ptr %21, i32 0, i32 1, !dbg !6634
  %kvalue = getelementptr inbounds %struct.xattr_ctx, ptr %ctx16, i32 0, i32 1, !dbg !6635
  store ptr null, ptr %kvalue, align 8, !dbg !6636
  br label %do.body17, !dbg !6637

do.body17:                                        ; preds = %do.end14
  br label %do.cond18, !dbg !6639

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6639

do.end19:                                         ; preds = %do.cond18
  %22 = load ptr, ptr %sqe.addr, align 8, !dbg !6637
  %len = getelementptr inbounds %struct.io_uring_sqe, ptr %22, i32 0, i32 6, !dbg !6637
  %23 = load volatile i32, ptr %len, align 8, !dbg !6637
  store i32 %23, ptr %tmp20, align 4, !dbg !6639
  %24 = load i32, ptr %tmp20, align 4, !dbg !6637
  %conv21 = zext i32 %24 to i64, !dbg !6641
  %25 = load ptr, ptr %ix, align 8, !dbg !6642
  %ctx22 = getelementptr inbounds %struct.io_xattr, ptr %25, i32 0, i32 1, !dbg !6643
  %size = getelementptr inbounds %struct.xattr_ctx, ptr %ctx22, i32 0, i32 2, !dbg !6644
  store i64 %conv21, ptr %size, align 8, !dbg !6645
  br label %do.body23, !dbg !6646

do.body23:                                        ; preds = %do.end19
  br label %do.cond24, !dbg !6648

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6648

do.end25:                                         ; preds = %do.cond24
  %26 = load ptr, ptr %sqe.addr, align 8, !dbg !6646
  %27 = getelementptr inbounds %struct.io_uring_sqe, ptr %26, i32 0, i32 7, !dbg !6646
  %28 = load volatile i32, ptr %27, align 4, !dbg !6646
  store i32 %28, ptr %tmp26, align 4, !dbg !6648
  %29 = load i32, ptr %tmp26, align 4, !dbg !6646
  %30 = load ptr, ptr %ix, align 8, !dbg !6650
  %ctx27 = getelementptr inbounds %struct.io_xattr, ptr %30, i32 0, i32 1, !dbg !6651
  %flags28 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx27, i32 0, i32 4, !dbg !6652
  store i32 %29, ptr %flags28, align 8, !dbg !6653
  %call = call noalias ptr @kmalloc(i64 noundef 256, i32 noundef 3264) #16, !dbg !6654
  %31 = load ptr, ptr %ix, align 8, !dbg !6655
  %ctx29 = getelementptr inbounds %struct.io_xattr, ptr %31, i32 0, i32 1, !dbg !6656
  %kname = getelementptr inbounds %struct.xattr_ctx, ptr %ctx29, i32 0, i32 3, !dbg !6657
  store ptr %call, ptr %kname, align 8, !dbg !6658
  %32 = load ptr, ptr %ix, align 8, !dbg !6659
  %ctx30 = getelementptr inbounds %struct.io_xattr, ptr %32, i32 0, i32 1, !dbg !6661
  %kname31 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx30, i32 0, i32 3, !dbg !6662
  %33 = load ptr, ptr %kname31, align 8, !dbg !6662
  %tobool32 = icmp ne ptr %33, null, !dbg !6659
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !6663

if.then33:                                        ; preds = %do.end25
  store i32 -12, ptr %retval, align 4, !dbg !6664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6664

if.end34:                                         ; preds = %do.end25
  %34 = load ptr, ptr %name, align 8, !dbg !6665
  %35 = load ptr, ptr %ix, align 8, !dbg !6666
  %ctx35 = getelementptr inbounds %struct.io_xattr, ptr %35, i32 0, i32 1, !dbg !6667
  %call36 = call i32 @setxattr_copy(ptr noundef %34, ptr noundef %ctx35) #14, !dbg !6668
  store i32 %call36, ptr %ret, align 4, !dbg !6669
  %36 = load i32, ptr %ret, align 4, !dbg !6670
  %tobool37 = icmp ne i32 %36, 0, !dbg !6670
  br i1 %tobool37, label %if.then38, label %if.end41, !dbg !6672

if.then38:                                        ; preds = %if.end34
  %37 = load ptr, ptr %ix, align 8, !dbg !6673
  %ctx39 = getelementptr inbounds %struct.io_xattr, ptr %37, i32 0, i32 1, !dbg !6675
  %kname40 = getelementptr inbounds %struct.xattr_ctx, ptr %ctx39, i32 0, i32 3, !dbg !6676
  %38 = load ptr, ptr %kname40, align 8, !dbg !6676
  call void @kfree(ptr noundef %38) #14, !dbg !6677
  %39 = load i32, ptr %ret, align 4, !dbg !6678
  store i32 %39, ptr %retval, align 4, !dbg !6679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6679

if.end41:                                         ; preds = %if.end34
  %40 = load ptr, ptr %req.addr, align 8, !dbg !6680
  %flags42 = getelementptr inbounds %struct.io_kiocb, ptr %40, i32 0, i32 4, !dbg !6681
  %41 = load i32, ptr %flags42, align 4, !dbg !6682
  %or = or i32 %41, 8192, !dbg !6682
  store i32 %or, ptr %flags42, align 4, !dbg !6682
  %42 = load ptr, ptr %req.addr, align 8, !dbg !6683
  %flags43 = getelementptr inbounds %struct.io_kiocb, ptr %42, i32 0, i32 4, !dbg !6684
  %43 = load i32, ptr %flags43, align 4, !dbg !6685
  %or44 = or i32 %43, 16, !dbg !6685
  store i32 %or44, ptr %flags43, align 4, !dbg !6685
  store i32 0, ptr %retval, align 4, !dbg !6686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6686

cleanup:                                          ; preds = %if.end41, %if.then38, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #13, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6687
  %44 = load i32, ptr %retval, align 4, !dbg !6687
  ret i32 %44, !dbg !6687
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_fsetxattr_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6688 {
entry:
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6690, metadata !DIExpression()), !dbg !6692
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6691, metadata !DIExpression()), !dbg !6693
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6694
  %1 = load ptr, ptr %sqe.addr, align 8, !dbg !6695
  %call = call i32 @__io_setxattr_prep(ptr noundef %0, ptr noundef %1) #14, !dbg !6696
  ret i32 %call, !dbg !6697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_fsetxattr(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6698 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6700, metadata !DIExpression()), !dbg !6708
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6701, metadata !DIExpression()), !dbg !6709
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6702, metadata !DIExpression()), !dbg !6711
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6703, metadata !DIExpression()), !dbg !6712
  %0 = load i32, ptr %issue_flags.addr, align 4, !dbg !6712
  %and = and i32 %0, -2147483648, !dbg !6712
  %tobool = icmp ne i32 %and, 0, !dbg !6712
  %lnot = xor i1 %tobool, true, !dbg !6712
  %lnot1 = xor i1 %lnot, true, !dbg !6712
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6712
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6712
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6713
  %tobool2 = icmp ne i32 %1, 0, !dbg !6713
  %lnot3 = xor i1 %tobool2, true, !dbg !6713
  %lnot5 = xor i1 %lnot3, true, !dbg !6713
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6713
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6713
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6713
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6713
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6712

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6713

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !6714
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6705, metadata !DIExpression()), !dbg !6714
  store i32 2307, ptr %__flags, align 4, !dbg !6714
  br label %do.body8, !dbg !6714

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6715

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6715

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6714

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !6717
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 225, i32 %2, i64 12) #13, !dbg !6717, !srcloc !6719
  br label %do.cond10, !dbg !6717

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6717

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6714

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6720

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6720

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !6713
  br label %do.cond15, !dbg !6714

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6714

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6714

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6712
  %tobool17 = icmp ne i32 %3, 0, !dbg !6712
  %lnot18 = xor i1 %tobool17, true, !dbg !6712
  %lnot20 = xor i1 %lnot18, true, !dbg !6712
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6712
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6712
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6712
  store i64 %expval23, ptr %tmp, align 8, !dbg !6713
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6722
  %4 = load i64, ptr %tmp, align 8, !dbg !6712
  %5 = load ptr, ptr %req.addr, align 8, !dbg !6723
  %6 = load i32, ptr %issue_flags.addr, align 4, !dbg !6724
  %7 = load ptr, ptr %req.addr, align 8, !dbg !6725
  %8 = getelementptr inbounds %struct.io_kiocb, ptr %7, i32 0, i32 0, !dbg !6726
  %9 = load ptr, ptr %8, align 8, !dbg !6726
  %f_path = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 10, !dbg !6727
  %call = call i32 @__io_setxattr(ptr noundef %5, i32 noundef %6, ptr noundef %f_path) #14, !dbg !6728
  store i32 %call, ptr %ret, align 4, !dbg !6729
  %10 = load ptr, ptr %req.addr, align 8, !dbg !6730
  %11 = load i32, ptr %ret, align 4, !dbg !6731
  call void @io_xattr_finish(ptr noundef %10, i32 noundef %11) #14, !dbg !6732
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6733
  ret i32 0, !dbg !6734
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__io_setxattr(ptr noundef %req, i32 noundef %issue_flags, ptr noundef %path) #0 align 16 !dbg !6735 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %ix = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6739, metadata !DIExpression()), !dbg !6744
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6740, metadata !DIExpression()), !dbg !6745
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6741, metadata !DIExpression()), !dbg !6746
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6747
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6742, metadata !DIExpression()), !dbg !6748
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6749
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6749
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6749
  store ptr %1, ptr %ix, align 8, !dbg !6748
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6750
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6743, metadata !DIExpression()), !dbg !6751
  %2 = load ptr, ptr %path.addr, align 8, !dbg !6752
  %mnt = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 0, !dbg !6753
  %3 = load ptr, ptr %mnt, align 8, !dbg !6753
  %call = call i32 @mnt_want_write(ptr noundef %3) #14, !dbg !6754
  store i32 %call, ptr %ret, align 4, !dbg !6755
  %4 = load i32, ptr %ret, align 4, !dbg !6756
  %tobool = icmp ne i32 %4, 0, !dbg !6756
  br i1 %tobool, label %if.end, label %if.then, !dbg !6758

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %path.addr, align 8, !dbg !6759
  %mnt1 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 0, !dbg !6761
  %6 = load ptr, ptr %mnt1, align 8, !dbg !6761
  %call2 = call ptr @mnt_idmap(ptr noundef %6) #14, !dbg !6762
  %7 = load ptr, ptr %path.addr, align 8, !dbg !6763
  %dentry = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1, !dbg !6764
  %8 = load ptr, ptr %dentry, align 8, !dbg !6764
  %9 = load ptr, ptr %ix, align 8, !dbg !6765
  %ctx = getelementptr inbounds %struct.io_xattr, ptr %9, i32 0, i32 1, !dbg !6766
  %call3 = call i32 @do_setxattr(ptr noundef %call2, ptr noundef %8, ptr noundef %ctx) #14, !dbg !6767
  store i32 %call3, ptr %ret, align 4, !dbg !6768
  %10 = load ptr, ptr %path.addr, align 8, !dbg !6769
  %mnt4 = getelementptr inbounds %struct.path, ptr %10, i32 0, i32 0, !dbg !6770
  %11 = load ptr, ptr %mnt4, align 8, !dbg !6770
  call void @mnt_drop_write(ptr noundef %11) #14, !dbg !6771
  br label %if.end, !dbg !6772

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %ret, align 4, !dbg !6773
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6774
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6774
  ret i32 %12, !dbg !6775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_setxattr(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6776 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %ix = alloca ptr, align 8
  %lookup_flags = alloca i32, align 4
  %path = alloca %struct.path, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6778, metadata !DIExpression()), !dbg !6790
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6779, metadata !DIExpression()), !dbg !6791
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #13, !dbg !6792
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6780, metadata !DIExpression()), !dbg !6793
  call void @io_kiocb_cmd_sz_check(i64 noundef 56) #14, !dbg !6794
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6794
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6794
  store ptr %1, ptr %ix, align 8, !dbg !6793
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #13, !dbg !6795
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !6781, metadata !DIExpression()), !dbg !6796
  store i32 1, ptr %lookup_flags, align 4, !dbg !6796
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #13, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6782, metadata !DIExpression()), !dbg !6798
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6783, metadata !DIExpression()), !dbg !6800
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6801
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6784, metadata !DIExpression()), !dbg !6801
  %2 = load i32, ptr %issue_flags.addr, align 4, !dbg !6801
  %and = and i32 %2, -2147483648, !dbg !6801
  %tobool = icmp ne i32 %and, 0, !dbg !6801
  %lnot = xor i1 %tobool, true, !dbg !6801
  %lnot1 = xor i1 %lnot, true, !dbg !6801
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6801
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6801
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6802
  %tobool2 = icmp ne i32 %3, 0, !dbg !6802
  %lnot3 = xor i1 %tobool2, true, !dbg !6802
  %lnot5 = xor i1 %lnot3, true, !dbg !6802
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6802
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6802
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6802
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6802
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6801

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6802

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !6803
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6786, metadata !DIExpression()), !dbg !6803
  store i32 2307, ptr %__flags, align 4, !dbg !6803
  br label %do.body8, !dbg !6803

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6804

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6804

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6803

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6806
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 239, i32 %4, i64 12) #13, !dbg !6806, !srcloc !6808
  br label %do.cond10, !dbg !6806

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6806

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6803

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6809

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6809

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !6802
  br label %do.cond15, !dbg !6803

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6803

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6803

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6801
  %tobool17 = icmp ne i32 %5, 0, !dbg !6801
  %lnot18 = xor i1 %tobool17, true, !dbg !6801
  %lnot20 = xor i1 %lnot18, true, !dbg !6801
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6801
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6801
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6801
  store i64 %expval23, ptr %tmp, align 8, !dbg !6802
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6811
  %6 = load i64, ptr %tmp, align 8, !dbg !6801
  br label %retry, !dbg !6811

retry:                                            ; preds = %if.then29, %if.end
  call void @llvm.dbg.label(metadata !6789), !dbg !6812
  %7 = load ptr, ptr %ix, align 8, !dbg !6813
  %filename = getelementptr inbounds %struct.io_xattr, ptr %7, i32 0, i32 2, !dbg !6814
  %8 = load ptr, ptr %filename, align 8, !dbg !6814
  %9 = load i32, ptr %lookup_flags, align 4, !dbg !6815
  %call = call i32 @filename_lookup(i32 noundef -100, ptr noundef %8, i32 noundef %9, ptr noundef %path, ptr noundef null) #14, !dbg !6816
  store i32 %call, ptr %ret, align 4, !dbg !6817
  %10 = load i32, ptr %ret, align 4, !dbg !6818
  %tobool24 = icmp ne i32 %10, 0, !dbg !6818
  br i1 %tobool24, label %if.end31, label %if.then25, !dbg !6820

if.then25:                                        ; preds = %retry
  %11 = load ptr, ptr %req.addr, align 8, !dbg !6821
  %12 = load i32, ptr %issue_flags.addr, align 4, !dbg !6823
  %call26 = call i32 @__io_setxattr(ptr noundef %11, i32 noundef %12, ptr noundef %path) #14, !dbg !6824
  store i32 %call26, ptr %ret, align 4, !dbg !6825
  call void @path_put(ptr noundef %path) #14, !dbg !6826
  %13 = load i32, ptr %ret, align 4, !dbg !6827
  %conv27 = sext i32 %13 to i64, !dbg !6827
  %14 = load i32, ptr %lookup_flags, align 4, !dbg !6829
  %call28 = call zeroext i1 @retry_estale(i64 noundef %conv27, i32 noundef %14) #14, !dbg !6830
  br i1 %call28, label %if.then29, label %if.end30, !dbg !6831

if.then29:                                        ; preds = %if.then25
  %15 = load i32, ptr %lookup_flags, align 4, !dbg !6832
  %or = or i32 %15, 32, !dbg !6832
  store i32 %or, ptr %lookup_flags, align 4, !dbg !6832
  br label %retry, !dbg !6834

if.end30:                                         ; preds = %if.then25
  br label %if.end31, !dbg !6835

if.end31:                                         ; preds = %if.end30, %retry
  %16 = load ptr, ptr %req.addr, align 8, !dbg !6836
  %17 = load i32, ptr %ret, align 4, !dbg !6837
  call void @io_xattr_finish(ptr noundef %16, i32 noundef %17) #14, !dbg !6838
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6839
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #13, !dbg !6839
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #13, !dbg !6839
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #13, !dbg !6839
  ret i32 0, !dbg !6840
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6841 dso_local void @__compiletime_assert_352() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6842 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6846, metadata !DIExpression()), !dbg !6851
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6847, metadata !DIExpression()), !dbg !6852
  %0 = load i64, ptr %size.addr, align 8, !dbg !6853
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6854
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6855

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6856
  %tobool = icmp ne i64 %2, 0, !dbg !6856
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6857

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !6858
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6848, metadata !DIExpression()), !dbg !6859
  %3 = load i64, ptr %size.addr, align 8, !dbg !6860
  %cmp = icmp ugt i64 %3, 8192, !dbg !6862
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6863

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6864
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6865
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !6866
  store ptr %call, ptr %retval, align 8, !dbg !6867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6867

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6868
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !6868
  store i32 %call2, ptr %index, align 4, !dbg !6869
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6870
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6871
  %9 = ptrtoint ptr %8 to i64, !dbg !6871
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !6872
  %idxprom = zext i32 %call3 to i64, !dbg !6873
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6873
  %10 = load i32, ptr %index, align 4, !dbg !6874
  %idxprom4 = zext i32 %10 to i64, !dbg !6873
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6873
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6873
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6875
  %13 = load i64, ptr %size.addr, align 8, !dbg !6876
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !6877
  store ptr %call6, ptr %retval, align 8, !dbg !6878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6878

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !6879
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6880
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6881
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !6882
  store ptr %call8, ptr %retval, align 8, !dbg !6883
  br label %return, !dbg !6883

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6884
  ret ptr %16, !dbg !6884
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6885 dso_local i64 @strncpy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6889 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6890 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6894, metadata !DIExpression()), !dbg !6896
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6895, metadata !DIExpression()), !dbg !6897
  %0 = load i64, ptr %size.addr, align 8, !dbg !6898
  %tobool = icmp ne i64 %0, 0, !dbg !6898
  br i1 %tobool, label %if.end, label %if.then, !dbg !6900

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6901
  br label %return, !dbg !6901

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6902
  %cmp = icmp ule i64 %1, 8, !dbg !6904
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6905

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6906
  br label %return, !dbg !6906

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6907
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6909
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6910

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6911
  %cmp4 = icmp ule i64 %3, 96, !dbg !6912
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6913

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6914
  br label %return, !dbg !6914

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6915
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6917
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6918

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6919
  %cmp9 = icmp ule i64 %5, 192, !dbg !6920
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6921

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6922
  br label %return, !dbg !6922

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6923
  %cmp12 = icmp ule i64 %6, 8, !dbg !6925
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6926

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6927
  br label %return, !dbg !6927

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6928
  %cmp15 = icmp ule i64 %7, 16, !dbg !6930
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6931

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6932
  br label %return, !dbg !6932

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6933
  %cmp18 = icmp ule i64 %8, 32, !dbg !6935
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6936

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6937
  br label %return, !dbg !6937

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6938
  %cmp21 = icmp ule i64 %9, 64, !dbg !6940
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6941

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6942
  br label %return, !dbg !6942

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6943
  %cmp24 = icmp ule i64 %10, 128, !dbg !6945
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6946

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6947
  br label %return, !dbg !6947

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6948
  %cmp27 = icmp ule i64 %11, 256, !dbg !6950
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6951

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6952
  br label %return, !dbg !6952

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6953
  %cmp30 = icmp ule i64 %12, 512, !dbg !6955
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6956

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6957
  br label %return, !dbg !6957

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6958
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6960
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6961

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6962
  br label %return, !dbg !6962

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6963
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6965
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6966

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6967
  br label %return, !dbg !6967

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6968
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6970
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6971

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6972
  br label %return, !dbg !6972

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6973
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6975
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6976

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6977
  br label %return, !dbg !6977

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6978
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6980
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6981

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6982
  br label %return, !dbg !6982

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6983
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6985
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6986

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6987
  br label %return, !dbg !6987

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6988
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6990
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6991

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6992
  br label %return, !dbg !6992

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6993
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6995
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6996

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6997
  br label %return, !dbg !6997

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6998
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7000
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7001

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7002
  br label %return, !dbg !7002

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7003
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7005
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7006

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7007
  br label %return, !dbg !7007

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7008
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7010
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7011

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7012
  br label %return, !dbg !7012

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7013
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7015
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7016

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7017
  br label %return, !dbg !7017

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7018, !range !7020, !noundef !1438
  %tobool69 = trunc i8 %25 to i1, !dbg !7018
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7021

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7022

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #15, !dbg !7023, !srcloc !7026
  unreachable, !dbg !7023

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7027

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7028

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7029

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7031

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7029

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #13, !dbg !7033, !srcloc !7035
  br label %do.end75, !dbg !7033

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7029

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7036
  br label %return, !dbg !7036

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7037
  ret i32 %26, !dbg !7037
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7038 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !7041 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7045, metadata !DIExpression()), !dbg !7047
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7046, metadata !DIExpression()), !dbg !7048
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7049
  %and = and i32 %0, 17, !dbg !7049
  %cmp = icmp eq i32 %and, 0, !dbg !7049
  %lnot = xor i1 %cmp, true, !dbg !7049
  %lnot1 = xor i1 %lnot, true, !dbg !7049
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7049
  %conv = sext i32 %lnot.ext to i64, !dbg !7049
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7049
  %tobool = icmp ne i64 %expval, 0, !dbg !7049
  br i1 %tobool, label %if.then, label %if.end, !dbg !7051

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7052
  br label %return, !dbg !7052

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7053
  %and2 = and i32 %1, 1, !dbg !7055
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7055
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7056

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7057
  br label %return, !dbg !7057

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7058
  br label %return, !dbg !7058

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7060
  ret i32 %2, !dbg !7060
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7061 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7062 dso_local void @__compiletime_assert_245() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_req_set_res(ptr noundef %req, i32 noundef %res, i32 noundef %cflags) #3 align 16 !dbg !7063 {
entry:
  %req.addr = alloca ptr, align 8
  %res.addr = alloca i32, align 4
  %cflags.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !7067, metadata !DIExpression()), !dbg !7070
  store i32 %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !7068, metadata !DIExpression()), !dbg !7071
  store i32 %cflags, ptr %cflags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cflags.addr, metadata !7069, metadata !DIExpression()), !dbg !7072
  %0 = load i32, ptr %res.addr, align 4, !dbg !7073
  %1 = load ptr, ptr %req.addr, align 8, !dbg !7074
  %cqe = getelementptr inbounds %struct.io_kiocb, ptr %1, i32 0, i32 5, !dbg !7075
  %res1 = getelementptr inbounds %struct.io_cqe, ptr %cqe, i32 0, i32 1, !dbg !7076
  store i32 %0, ptr %res1, align 8, !dbg !7077
  %2 = load i32, ptr %cflags.addr, align 4, !dbg !7078
  %3 = load ptr, ptr %req.addr, align 8, !dbg !7079
  %cqe2 = getelementptr inbounds %struct.io_kiocb, ptr %3, i32 0, i32 5, !dbg !7080
  %4 = getelementptr inbounds %struct.io_cqe, ptr %cqe2, i32 0, i32 2, !dbg !7081
  store i32 %2, ptr %4, align 4, !dbg !7082
  ret void, !dbg !7083
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7084 dso_local i32 @setxattr_copy(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7087 dso_local i32 @mnt_want_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7090 dso_local i32 @do_setxattr(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7093 dso_local void @mnt_drop_write(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: cmd_sz > sizeof(struct io_cmd_data)" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone noreturn }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!6078, !6079, !6080, !6081, !6082, !6083, !6084, !6085}
!llvm.ident = !{!6086}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "io_uring/xattr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df76d300ce4c0ad450ff9e504b1847c2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF io_uring/.xattr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22io_uring/xattr\22 -D KBUILD_BASENAME=\22xattr\22 -D KBUILD_MODNAME=\22xattr\22 -D __KBUILD_MODNAME=kmod_xattr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o io_uring/xattr.ll io_uring/xattr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !352, globals: !6077, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !24, !119, !126, !134, !150, !155, !162, !168, !173, !179, !185, !191, !198, !203, !211, !218, !227, !232, !237, !243, !247, !252, !264, !270, !280, !287, !298, !305, !338, !343}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !16, line: 9, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23}
!19 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!20 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!21 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!22 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!23 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !26, file: !25, line: 147, baseType: !17, size: 32, elements: !116)
!25 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !25, line: 135, size: 512, elements: !27)
!27 = !{!28, !31, !33, !35, !39, !40, !56, !114, !115}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !26, file: !25, line: 136, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !25, line: 137, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !26, file: !25, line: 138, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !26, file: !25, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !25, line: 150, baseType: !24, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !26, file: !25, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !25, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45, !34, !32, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !26, file: !25, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !25, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !25, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !25, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !26, file: !25, line: 153, baseType: !32, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !26, file: !25, line: 154, baseType: !32, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !120, line: 312, baseType: !17, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!123 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!124 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!125 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !127, line: 68, baseType: !17, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!130 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !135, line: 1325, baseType: !17, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!137 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!138 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!139 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!140 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!141 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!142 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!143 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!144 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!145 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!146 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!147 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!148 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!149 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !151, line: 32, baseType: !17, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!152 = !{!153, !154}
!153 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!154 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !156, line: 15, baseType: !17, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!159 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!160 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!161 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !163, line: 26, baseType: !17, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !169, line: 2052, baseType: !17, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!170 = !{!171, !172}
!171 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!172 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !174, line: 54, baseType: !17, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "USRQUOTA", value: 0)
!177 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!178 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !180, line: 1381, baseType: !17, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!181 = !{!182, !183, !184}
!182 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!183 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!184 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !186, line: 45, baseType: !17, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!189 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!190 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !192, line: 487, baseType: !17, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!193 = !{!194, !195, !196, !197}
!194 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!195 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!196 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!197 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !199, line: 65, baseType: !17, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!200 = !{!201, !202}
!201 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!202 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !204, line: 620, baseType: !17, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!207 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!208 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!209 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!210 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !204, line: 597, baseType: !34, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217}
!213 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!214 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!215 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!216 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!217 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !192, line: 547, baseType: !17, size: 32, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226}
!220 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!221 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!222 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!223 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!224 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!225 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!226 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !192, line: 564, baseType: !17, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!230 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!231 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !192, line: 577, baseType: !17, size: 32, elements: !233)
!233 = !{!234, !235, !236}
!234 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!235 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!236 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !192, line: 503, baseType: !17, size: 32, elements: !238)
!238 = !{!239, !240, !241, !242}
!239 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!240 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!241 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!242 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !180, line: 295, baseType: !17, size: 32, elements: !244)
!244 = !{!245, !246}
!245 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!246 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !180, line: 285, baseType: !17, size: 32, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!250 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!251 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !253, line: 44, baseType: !17, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263}
!255 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!256 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!257 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!258 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!259 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!260 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!261 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!262 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!263 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !265, line: 16, baseType: !17, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!266 = !{!267, !268, !269}
!267 = !DIEnumerator(name: "TT_NONE", value: 0)
!268 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!269 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "task_work_notify_mode", file: !271, line: 16, baseType: !17, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/task_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ebc04ad3d34f218a70d101adf88369f")
!272 = !{!273, !274, !275, !276, !277, !278, !279}
!273 = !DIEnumerator(name: "TWA_NONE", value: 0)
!274 = !DIEnumerator(name: "TWA_RESUME", value: 1)
!275 = !DIEnumerator(name: "TWA_SIGNAL", value: 2)
!276 = !DIEnumerator(name: "TWA_SIGNAL_NO_IPI", value: 3)
!277 = !DIEnumerator(name: "TWA_NMI_CURRENT", value: 4)
!278 = !DIEnumerator(name: "TWA_FLAGS", value: 65280)
!279 = !DIEnumerator(name: "TWAF_NO_ALLOC", value: 256)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !281, line: 51, baseType: !17, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!282 = !{!283, !284, !285, !286}
!283 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!284 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!285 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!286 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "io_uring_cmd_flags", file: !288, line: 9, baseType: !34, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/linux/io_uring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e93e7b072305b4b1ab0f621d0cec38df")
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297}
!290 = !DIEnumerator(name: "IO_URING_F_COMPLETE_DEFER", value: 1)
!291 = !DIEnumerator(name: "IO_URING_F_UNLOCKED", value: 2)
!292 = !DIEnumerator(name: "IO_URING_F_MULTISHOT", value: 4)
!293 = !DIEnumerator(name: "IO_URING_F_IOWQ", value: 8)
!294 = !DIEnumerator(name: "IO_URING_F_NONBLOCK", value: -2147483648)
!295 = !DIEnumerator(name: "IO_URING_F_SQE128", value: 256)
!296 = !DIEnumerator(name: "IO_URING_F_CQE32", value: 512)
!297 = !DIEnumerator(name: "IO_URING_F_IOPOLL", value: 1024)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 29, baseType: !34, size: 32, elements: !300)
!299 = !DIFile(filename: "io_uring/io_uring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83ed11713af5311b3f28bbad17894f9c")
!300 = !{!301, !302, !303, !304}
!301 = !DIEnumerator(name: "IOU_OK", value: 0)
!302 = !DIEnumerator(name: "IOU_ISSUE_SKIP_COMPLETE", value: -529)
!303 = !DIEnumerator(name: "IOU_REQUEUE", value: -3072)
!304 = !DIEnumerator(name: "IOU_STOP_MULTISHOT", value: -125)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !306, line: 427, baseType: !17, size: 32, elements: !307)
!306 = !DIFile(filename: "./include/linux/io_uring_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84243b3d9541de3e1162017e4d1448e5")
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!308 = !DIEnumerator(name: "REQ_F_FIXED_FILE", value: 1)
!309 = !DIEnumerator(name: "REQ_F_IO_DRAIN", value: 2)
!310 = !DIEnumerator(name: "REQ_F_LINK", value: 4)
!311 = !DIEnumerator(name: "REQ_F_HARDLINK", value: 8)
!312 = !DIEnumerator(name: "REQ_F_FORCE_ASYNC", value: 16)
!313 = !DIEnumerator(name: "REQ_F_BUFFER_SELECT", value: 32)
!314 = !DIEnumerator(name: "REQ_F_CQE_SKIP", value: 64)
!315 = !DIEnumerator(name: "REQ_F_FAIL", value: 256)
!316 = !DIEnumerator(name: "REQ_F_INFLIGHT", value: 512)
!317 = !DIEnumerator(name: "REQ_F_CUR_POS", value: 1024)
!318 = !DIEnumerator(name: "REQ_F_NOWAIT", value: 2048)
!319 = !DIEnumerator(name: "REQ_F_LINK_TIMEOUT", value: 4096)
!320 = !DIEnumerator(name: "REQ_F_NEED_CLEANUP", value: 8192)
!321 = !DIEnumerator(name: "REQ_F_POLLED", value: 16384)
!322 = !DIEnumerator(name: "REQ_F_BUFFER_SELECTED", value: 32768)
!323 = !DIEnumerator(name: "REQ_F_BUFFER_RING", value: 65536)
!324 = !DIEnumerator(name: "REQ_F_REISSUE", value: 131072)
!325 = !DIEnumerator(name: "REQ_F_SUPPORT_NOWAIT", value: 536870912)
!326 = !DIEnumerator(name: "REQ_F_ISREG", value: 1073741824)
!327 = !DIEnumerator(name: "REQ_F_CREDS", value: 262144)
!328 = !DIEnumerator(name: "REQ_F_REFCOUNT", value: 524288)
!329 = !DIEnumerator(name: "REQ_F_ARM_LTIMEOUT", value: 1048576)
!330 = !DIEnumerator(name: "REQ_F_ASYNC_DATA", value: 2097152)
!331 = !DIEnumerator(name: "REQ_F_SKIP_LINK_CQES", value: 4194304)
!332 = !DIEnumerator(name: "REQ_F_SINGLE_POLL", value: 8388608)
!333 = !DIEnumerator(name: "REQ_F_DOUBLE_POLL", value: 16777216)
!334 = !DIEnumerator(name: "REQ_F_PARTIAL_IO", value: 33554432)
!335 = !DIEnumerator(name: "REQ_F_APOLL_MULTISHOT", value: 67108864)
!336 = !DIEnumerator(name: "REQ_F_CLEAR_POLLIN", value: 134217728)
!337 = !DIEnumerator(name: "REQ_F_HASH_LOCKED", value: 268435456)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !339, line: 10, baseType: !17, size: 32, elements: !340)
!339 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!340 = !{!341, !342}
!341 = !DIEnumerator(name: "false", value: 0)
!342 = !DIEnumerator(name: "true", value: 1)
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !17, size: 32, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351}
!345 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!346 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!347 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!348 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!349 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!350 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!351 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!352 = !{!353, !32, !6067, !6068, !6071, !1116, !51, !836, !6074}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_xattr", file: !2, line: 19, size: 448, elements: !355)
!355 = !{!356, !6035, !6055}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !354, file: !2, line: 20, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !169, line: 994, size: 1856, align: 64, elements: !359)
!359 = !{!360, !379, !380, !382, !391, !404, !405, !406, !481, !853, !862, !6025, !6026, !6027, !6028, !6029, !6030, !6032, !6033, !6034}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !169, line: 995, baseType: !361, size: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !169, line: 995, size: 128, elements: !362)
!362 = !{!363, !369, !378}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !361, file: !169, line: 996, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !365, line: 60, size: 64, elements: !366)
!365 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !365, line: 61, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !361, file: !169, line: 997, baseType: !370, size: 128, align: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !371)
!371 = !{!372, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !37, line: 233, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !370, file: !37, line: 234, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !373}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !361, file: !169, line: 998, baseType: !17, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !358, file: !169, line: 1005, baseType: !71, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !358, file: !169, line: 1006, baseType: !381, size: 32, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !17)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !358, file: !169, line: 1007, baseType: !383, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !384, line: 13, baseType: !385)
!384 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !386, file: !37, line: 180, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !358, file: !169, line: 1008, baseType: !392, size: 256, offset: 256)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !393, line: 66, size: 256, elements: !394)
!393 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!394 = !{!395, !396, !398, !403}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !392, file: !393, line: 67, baseType: !383, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !392, file: !393, line: 68, baseType: !397, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !392, file: !393, line: 70, baseType: !399, size: 32, offset: 96)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !400, line: 15, size: 32, elements: !401)
!400 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !399, file: !400, line: 20, baseType: !61, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !392, file: !393, line: 72, baseType: !109, size: 128, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !358, file: !169, line: 1009, baseType: !53, size: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !358, file: !169, line: 1010, baseType: !17, size: 32, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !358, file: !169, line: 1011, baseType: !407, size: 256, offset: 640)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !169, line: 948, size: 256, elements: !408)
!408 = !{!409, !432, !470, !471, !479, !480}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !407, file: !169, line: 949, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !411, line: 34, baseType: !412)
!411 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 25, size: 64, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !412, file: !411, line: 26, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !416, line: 27, baseType: !417)
!416 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !416, line: 13, size: 64, elements: !418)
!418 = !{!419, !431}
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !416, line: 14, baseType: !420, size: 32)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !416, line: 14, size: 32, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !420, file: !416, line: 15, baseType: !61, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !416, line: 16, baseType: !424, size: 32)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !420, file: !416, line: 16, size: 32, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !424, file: !416, line: 18, baseType: !95, size: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !424, file: !416, line: 19, baseType: !428, size: 24, offset: 8)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 3)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !417, file: !416, line: 26, baseType: !83, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !407, file: !169, line: 950, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !16, line: 59, size: 768, elements: !435)
!435 = !{!436, !442, !443, !444, !457, !458, !459, !460}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !434, file: !16, line: 61, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !438, line: 113, baseType: !439)
!438 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !438, line: 111, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !439, file: !438, line: 112, baseType: !61, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !434, file: !16, line: 62, baseType: !17, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !434, file: !16, line: 63, baseType: !71, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !434, file: !16, line: 65, baseType: !445, size: 256, offset: 128)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 256, elements: !455)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !446, file: !37, line: 195, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !37, line: 199, baseType: !449, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !450, file: !37, line: 199, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!455 = !{!456}
!456 = !DISubrange(count: 4)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !434, file: !16, line: 66, baseType: !446, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !434, file: !16, line: 68, baseType: !66, size: 192, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !434, file: !16, line: 69, baseType: !370, size: 128, align: 64, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !434, file: !16, line: 70, baseType: !461, offset: 768)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, elements: !468)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !16, line: 54, size: 128, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !462, file: !16, line: 55, baseType: !34, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !462, file: !16, line: 56, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !16, line: 56, flags: DIFlagFwdDecl)
!468 = !{!469}
!469 = !DISubrange(count: -1)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !407, file: !169, line: 951, baseType: !15, size: 32, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !407, file: !169, line: 952, baseType: !472, size: 32, offset: 160)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !473, line: 23, baseType: !474)
!473 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 21, size: 32, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !474, file: !473, line: 22, baseType: !477, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !17)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !407, file: !169, line: 952, baseType: !472, size: 32, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !407, file: !169, line: 953, baseType: !34, size: 32, offset: 224)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !358, file: !169, line: 1012, baseType: !482, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !485, line: 110, size: 1472, elements: !486)
!485 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!486 = !{!487, !488, !489, !496, !497, !498, !499, !500, !501, !502, !503, !512, !513, !514, !515, !516, !517, !650, !651, !652, !653, !654, !685, !839, !840, !848}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !484, file: !485, line: 111, baseType: !383, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !484, file: !485, line: 112, baseType: !472, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !484, file: !485, line: 113, baseType: !490, size: 32, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !473, line: 28, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 26, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !491, file: !473, line: 27, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !17)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !484, file: !485, line: 114, baseType: !472, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !484, file: !485, line: 115, baseType: !490, size: 32, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !484, file: !485, line: 116, baseType: !472, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !484, file: !485, line: 117, baseType: !490, size: 32, offset: 224)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !484, file: !485, line: 118, baseType: !472, size: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !484, file: !485, line: 119, baseType: !490, size: 32, offset: 288)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !484, file: !485, line: 120, baseType: !17, size: 32, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !484, file: !485, line: 121, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !505, line: 24, baseType: !506)
!505 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 24, size: 64, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !506, file: !505, line: 24, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !511)
!511 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !484, file: !485, line: 122, baseType: !504, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !484, file: !485, line: 123, baseType: !504, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !484, file: !485, line: 124, baseType: !504, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !484, file: !485, line: 125, baseType: !504, size: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !484, file: !485, line: 127, baseType: !99, size: 8, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !484, file: !485, line: 129, baseType: !518, size: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !520, line: 195, size: 1728, elements: !521)
!520 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!521 = !{!522, !523, !528, !540, !549, !552, !553, !560, !561, !562, !563, !568, !569, !570, !572, !573, !614, !635}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !519, file: !520, line: 196, baseType: !437, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !519, file: !520, line: 197, baseType: !524, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !520, line: 28, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !34)
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 198, baseType: !529, size: 192, offset: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 198, size: 192, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !529, file: !520, line: 199, baseType: !109, size: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !529, file: !520, line: 200, baseType: !533, size: 192, align: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !534, line: 5, size: 192, align: 64, elements: !535)
!534 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!535 = !{!536, !537, !539}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !533, file: !534, line: 6, baseType: !51, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !533, file: !534, line: 7, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !533, file: !534, line: 8, baseType: !538, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !519, file: !520, line: 205, baseType: !541, size: 320, offset: 256)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !542, line: 48, size: 320, elements: !543)
!542 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!543 = !{!544, !545, !546, !547, !548}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !541, file: !542, line: 49, baseType: !383, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !541, file: !542, line: 55, baseType: !383, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !541, file: !542, line: 57, baseType: !399, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !541, file: !542, line: 59, baseType: !397, size: 32, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !541, file: !542, line: 60, baseType: !109, size: 128, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !519, file: !520, line: 206, baseType: !550, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !520, line: 206, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !519, file: !520, line: 207, baseType: !32, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 208, baseType: !554, size: 64, offset: 704)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 208, size: 64, elements: !555)
!555 = !{!556, !559}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !554, file: !520, line: 209, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !558, line: 8, baseType: !390)
!558 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!559 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !554, file: !520, line: 210, baseType: !557, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !519, file: !520, line: 212, baseType: !557, size: 64, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !519, file: !520, line: 213, baseType: !472, size: 32, offset: 832)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !519, file: !520, line: 214, baseType: !490, size: 32, offset: 864)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !519, file: !520, line: 215, baseType: !564, size: 32, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !520, line: 31, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !17)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !519, file: !520, line: 216, baseType: !38, size: 16, offset: 928)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !519, file: !520, line: 217, baseType: !38, size: 16, offset: 944)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !519, file: !520, line: 221, baseType: !571, size: 16, offset: 960)
!571 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !520, line: 228, baseType: !51, size: 64, offset: 1024)
!573 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 245, baseType: !574, size: 320, offset: 1088)
!574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 245, size: 320, elements: !575)
!575 = !{!576, !605}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !574, file: !520, line: 246, baseType: !577, size: 320)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !520, line: 114, size: 320, elements: !578)
!578 = !{!579, !580, !592, !595, !604}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !577, file: !520, line: 116, baseType: !51, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !577, file: !520, line: 117, baseType: !581, size: 64, offset: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !520, line: 117, size: 64, elements: !582)
!582 = !{!583, !591}
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !520, line: 118, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !520, line: 118, size: 64, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !584, file: !520, line: 120, baseType: !105, size: 16)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !584, file: !520, line: 121, baseType: !588, size: 48, offset: 16)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 6)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !581, file: !520, line: 127, baseType: !51, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !520, line: 129, baseType: !593, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !520, line: 102, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !577, file: !520, line: 130, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !520, line: 108, size: 192, elements: !598)
!598 = !{!599, !600, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !597, file: !520, line: 109, baseType: !370, size: 128, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !597, file: !520, line: 110, baseType: !437, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !597, file: !520, line: 111, baseType: !602, size: 8, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !603)
!603 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !577, file: !520, line: 131, baseType: !29, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !520, line: 247, baseType: !606, size: 320)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !520, line: 247, size: 320, elements: !607)
!607 = !{!608, !609, !610, !611, !612}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !606, file: !520, line: 248, baseType: !51, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !606, file: !520, line: 249, baseType: !51, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !520, line: 250, baseType: !593, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !606, file: !520, line: 251, baseType: !596, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !606, file: !520, line: 252, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 260, baseType: !615, size: 256, offset: 1408)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 260, size: 256, elements: !616)
!616 = !{!617, !623}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !615, file: !520, line: 261, baseType: !618, size: 256)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !520, line: 134, size: 256, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !618, file: !520, line: 135, baseType: !32, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !618, file: !520, line: 136, baseType: !622, size: 256)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !455)
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !520, line: 262, baseType: !624, size: 256)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !520, line: 262, size: 256, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !624, file: !520, line: 264, baseType: !109, size: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !624, file: !520, line: 265, baseType: !628, size: 128, offset: 128)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !629, line: 22, size: 128, elements: !630)
!629 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!630 = !{!631, !634}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !628, file: !629, line: 23, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !629, line: 23, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !628, file: !629, line: 24, baseType: !51, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !519, file: !520, line: 280, baseType: !636, size: 64, offset: 1664)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !520, line: 176, size: 192, elements: !638)
!638 = !{!639, !648, !649}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !637, file: !520, line: 177, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !520, line: 171, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!34, !518, !644, !646, !518}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !637, file: !520, line: 178, baseType: !518, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !637, file: !520, line: 179, baseType: !593, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !484, file: !485, line: 130, baseType: !518, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !484, file: !485, line: 131, baseType: !518, size: 64, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !484, file: !485, line: 132, baseType: !518, size: 64, offset: 960)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !484, file: !485, line: 135, baseType: !32, size: 64, offset: 1024)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !484, file: !485, line: 137, baseType: !655, size: 64, offset: 1088)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !657, line: 14, size: 1088, elements: !658)
!657 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!658 = !{!659, !660, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !656, file: !657, line: 15, baseType: !437, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !656, file: !657, line: 17, baseType: !661, size: 320, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !662, line: 22, size: 320, elements: !663)
!662 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!663 = !{!664, !665, !666, !667}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !661, file: !662, line: 23, baseType: !397, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !661, file: !662, line: 24, baseType: !389, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !661, file: !662, line: 26, baseType: !109, size: 128, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !661, file: !662, line: 28, baseType: !668, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !656, file: !657, line: 19, baseType: !51, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !656, file: !657, line: 20, baseType: !383, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !656, file: !657, line: 23, baseType: !450, size: 128, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !656, file: !657, line: 24, baseType: !472, size: 32, offset: 640)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !656, file: !657, line: 29, baseType: !383, size: 64, offset: 704)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !656, file: !657, line: 36, baseType: !675, size: 320, offset: 768)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !676, line: 15, size: 320, elements: !677)
!676 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!677 = !{!678, !679, !680, !681, !682, !683, !684}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !675, file: !676, line: 16, baseType: !397, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !675, file: !676, line: 18, baseType: !34, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !675, file: !676, line: 19, baseType: !34, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !675, file: !676, line: 20, baseType: !34, size: 32, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !675, file: !676, line: 21, baseType: !34, size: 32, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !675, file: !676, line: 22, baseType: !51, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !676, line: 23, baseType: !51, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !484, file: !485, line: 138, baseType: !686, size: 64, offset: 1152)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !688, line: 68, size: 4800, elements: !689)
!688 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!689 = !{!690, !712, !713, !714, !715, !716, !717, !718, !729, !730, !731, !732, !733, !734, !746, !819, !820, !834, !837}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !687, file: !688, line: 69, baseType: !691, size: 576)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !688, line: 23, size: 576, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !691, file: !688, line: 24, baseType: !566, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !688, line: 25, baseType: !695, size: 512, offset: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !688, line: 25, size: 512, elements: !696)
!696 = !{!697, !706}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !695, file: !688, line: 26, baseType: !698, size: 480)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 480, elements: !704)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !688, line: 17, size: 96, elements: !700)
!700 = !{!701, !702, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !699, file: !688, line: 18, baseType: !566, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !699, file: !688, line: 19, baseType: !566, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !699, file: !688, line: 20, baseType: !566, size: 32, offset: 64)
!704 = !{!705}
!705 = !DISubrange(count: 5)
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !688, line: 27, baseType: !707, size: 128)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !688, line: 27, size: 128, elements: !708)
!708 = !{!709, !711}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !707, file: !688, line: 28, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !707, file: !688, line: 29, baseType: !710, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !687, file: !688, line: 70, baseType: !691, size: 576, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !687, file: !688, line: 71, baseType: !691, size: 576, offset: 1152)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !687, file: !688, line: 72, baseType: !686, size: 64, offset: 1728)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !687, file: !688, line: 73, baseType: !34, size: 32, offset: 1792)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !687, file: !688, line: 74, baseType: !472, size: 32, offset: 1824)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !687, file: !688, line: 75, baseType: !490, size: 32, offset: 1856)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !687, file: !688, line: 76, baseType: !719, size: 192, offset: 1920)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !720, line: 9, size: 192, elements: !721)
!720 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!721 = !{!722, !723, !727, !728}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !719, file: !720, line: 10, baseType: !383, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !719, file: !720, line: 11, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !720, line: 7, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !719, file: !720, line: 12, baseType: !17, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 13, baseType: !437, size: 32, offset: 160)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !688, line: 77, baseType: !51, size: 64, offset: 2112)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !687, file: !688, line: 80, baseType: !602, size: 8, offset: 2176)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !687, file: !688, line: 88, baseType: !109, size: 128, offset: 2240)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !687, file: !688, line: 89, baseType: !518, size: 64, offset: 2368)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !687, file: !688, line: 90, baseType: !541, size: 320, offset: 2432)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !687, file: !688, line: 97, baseType: !735, size: 256, offset: 2752)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !736, line: 98, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !735, file: !736, line: 99, baseType: !383, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !735, file: !736, line: 100, baseType: !109, size: 128, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !735, file: !736, line: 101, baseType: !741, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !736, line: 21, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !687, file: !688, line: 99, baseType: !747, size: 768, offset: 3008)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !25, line: 199, size: 768, elements: !748)
!748 = !{!749, !754}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !747, file: !25, line: 200, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!34, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !747, file: !25, line: 201, baseType: !755, size: 704, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !25, line: 193, size: 704, elements: !756)
!756 = !{!757, !815}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !755, file: !25, line: 195, baseType: !758, size: 640)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !25, line: 173, size: 640, elements: !759)
!759 = !{!760, !772, !784, !785, !805, !806, !808, !814}
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !25, line: 174, baseType: !761, size: 192)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !25, line: 174, size: 192, elements: !762)
!762 = !{!763, !771}
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !761, file: !25, line: 175, baseType: !764, size: 192)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !761, file: !25, line: 175, size: 192, elements: !765)
!765 = !{!766, !767, !768, !769, !770}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !764, file: !25, line: 176, baseType: !45, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !764, file: !25, line: 177, baseType: !34, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !764, file: !25, line: 178, baseType: !34, size: 32, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !25, line: 179, baseType: !34, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !764, file: !25, line: 180, baseType: !34, size: 32, offset: 160)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !761, file: !25, line: 182, baseType: !370, size: 128, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !758, file: !25, line: 184, baseType: !773, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !775, line: 26, size: 256, elements: !776)
!775 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !774, file: !775, line: 27, baseType: !17, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !774, file: !775, line: 28, baseType: !779, size: 192, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !780, line: 43, size: 192, elements: !781)
!780 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !779, file: !780, line: 44, baseType: !397, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !779, file: !780, line: 45, baseType: !109, size: 128, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !758, file: !25, line: 185, baseType: !45, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !758, file: !25, line: 186, baseType: !786, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !25, line: 204, size: 960, elements: !788)
!788 = !{!789, !790, !794, !801}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !787, file: !25, line: 205, baseType: !747, size: 768)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !787, file: !25, line: 206, baseType: !791, size: 64, offset: 768)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!753, !786}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !787, file: !25, line: 207, baseType: !795, size: 64, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !787, file: !25, line: 209, baseType: !802, size: 64, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!34, !798, !45}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !758, file: !25, line: 187, baseType: !753, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !758, file: !25, line: 188, baseType: !807, size: 64, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !758, file: !25, line: 189, baseType: !809, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !25, line: 157, size: 256, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !810, file: !25, line: 158, baseType: !533, size: 192, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !810, file: !25, line: 159, baseType: !798, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !758, file: !25, line: 190, baseType: !446, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !755, file: !25, line: 196, baseType: !816, size: 64, offset: 640)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !534, line: 12, size: 64, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !816, file: !534, line: 13, baseType: !538, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !687, file: !688, line: 100, baseType: !798, size: 64, offset: 3776)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !687, file: !688, line: 102, baseType: !821, size: 64, offset: 3840)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !688, line: 107, size: 1152, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !832}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !822, file: !688, line: 108, baseType: !450, size: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !822, file: !688, line: 109, baseType: !686, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !822, file: !688, line: 110, baseType: !472, size: 32, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !822, file: !688, line: 111, baseType: !61, size: 32, offset: 224)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !822, file: !688, line: 112, baseType: !829, size: 640, offset: 256)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 640, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 10)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !822, file: !688, line: 113, baseType: !833, size: 256, offset: 896)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 256, elements: !455)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !687, file: !688, line: 103, baseType: !835, size: 640, offset: 3904)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 640, elements: !830)
!836 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !687, file: !688, line: 104, baseType: !838, size: 256, offset: 4544)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 256, elements: !455)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !484, file: !485, line: 139, baseType: !821, size: 64, offset: 1216)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !484, file: !485, line: 140, baseType: !841, size: 64, offset: 1280)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !485, line: 25, size: 64, elements: !843)
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !842, file: !485, line: 26, baseType: !61, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !842, file: !485, line: 27, baseType: !34, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !842, file: !485, line: 28, baseType: !847, offset: 64)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, elements: !468)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !485, line: 142, baseType: !849, size: 128, offset: 1344)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !485, line: 142, size: 128, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !849, file: !485, line: 143, baseType: !34, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !849, file: !485, line: 144, baseType: !370, size: 128, align: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !358, file: !169, line: 1013, baseType: !854, size: 256, offset: 960)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !169, line: 970, size: 256, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !861}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !854, file: !169, line: 971, baseType: !51, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !854, file: !169, line: 972, baseType: !17, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !854, file: !169, line: 973, baseType: !17, size: 32, offset: 96)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !854, file: !169, line: 974, baseType: !17, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !854, file: !169, line: 975, baseType: !17, size: 32, offset: 160)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !854, file: !169, line: 976, baseType: !53, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !358, file: !169, line: 1014, baseType: !863, size: 128, offset: 1216)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !864, line: 8, size: 128, elements: !865)
!864 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!865 = !{!866, !6024}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !863, file: !864, line: 9, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !869, line: 70, size: 256, elements: !870)
!869 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!870 = !{!871, !6021, !6022, !6023}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !868, file: !869, line: 71, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !874, line: 82, size: 1536, elements: !875)
!874 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!875 = !{!876, !877, !887, !895, !896, !911, !5988, !5990, !6003, !6004, !6005, !6006, !6007, !6013, !6014, !6015}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !873, file: !874, line: 84, baseType: !17, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !873, file: !874, line: 85, baseType: !878, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !879, line: 275, baseType: !880)
!879 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !879, line: 275, size: 32, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !880, file: !879, line: 275, baseType: !883, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !879, line: 69, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !879, line: 64, size: 32, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !884, file: !879, line: 65, baseType: !17, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !873, file: !874, line: 86, baseType: !888, size: 128, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !889, line: 38, size: 128, elements: !890)
!889 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!890 = !{!891, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !889, line: 39, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !888, file: !889, line: 39, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !873, file: !874, line: 87, baseType: !872, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !873, file: !874, line: 88, baseType: !897, size: 128, offset: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !874, line: 49, size: 128, elements: !898)
!898 = !{!899, !908}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !874, line: 50, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !874, line: 50, size: 64, elements: !901)
!901 = !{!902, !907}
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !874, line: 51, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !874, line: 51, size: 64, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !903, file: !874, line: 52, baseType: !566, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !903, file: !874, line: 52, baseType: !566, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !900, file: !874, line: 54, baseType: !509, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !897, file: !874, line: 56, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !873, file: !874, line: 89, baseType: !912, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !169, line: 641, size: 4800, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921, !924, !925, !1119, !5789, !5790, !5791, !5792, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5821, !5822, !5823, !5824, !5825, !5826, !5827, !5970, !5973, !5974, !5975, !5984, !5985, !5986, !5987}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !913, file: !169, line: 642, baseType: !36, size: 16)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !913, file: !169, line: 643, baseType: !38, size: 16, offset: 16)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !913, file: !169, line: 644, baseType: !472, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !913, file: !169, line: 645, baseType: !109, size: 128, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !913, file: !169, line: 646, baseType: !490, size: 32, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !913, file: !169, line: 647, baseType: !17, size: 32, offset: 224)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !913, file: !169, line: 650, baseType: !922, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !169, line: 607, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !913, file: !169, line: 651, baseType: !922, size: 64, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !913, file: !169, line: 654, baseType: !926, size: 64, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !169, line: 1966, size: 2048, align: 512, elements: !929)
!929 = !{!930, !934, !947, !953, !957, !961, !965, !969, !973, !977, !981, !982, !988, !992, !1029, !1060, !1067, !1073, !1077, !1081, !1085, !1089, !1093, !1099, !1103}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !928, file: !169, line: 1967, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!872, !912, !872, !17}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !928, file: !169, line: 1968, baseType: !935, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!29, !872, !912, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !940, line: 10, size: 128, elements: !941)
!940 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!941 = !{!942, !946}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !939, file: !940, line: 11, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !32}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !939, file: !940, line: 12, baseType: !32, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !928, file: !169, line: 1969, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!34, !951, !912, !34}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !505, line: 42, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !928, file: !169, line: 1970, baseType: !954, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!922, !912, !34, !602}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !928, file: !169, line: 1972, baseType: !958, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!34, !872, !613, !34}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !928, file: !169, line: 1974, baseType: !962, size: 64, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!34, !951, !912, !872, !36, !602}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !928, file: !169, line: 1976, baseType: !966, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!34, !872, !912, !872}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !928, file: !169, line: 1977, baseType: !970, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!34, !912, !872}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !928, file: !169, line: 1978, baseType: !974, size: 64, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!34, !951, !912, !872, !29}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !928, file: !169, line: 1980, baseType: !978, size: 64, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!34, !951, !912, !872, !36}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !928, file: !169, line: 1982, baseType: !970, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !928, file: !169, line: 1983, baseType: !983, size: 64, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!34, !951, !912, !872, !36, !986}
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !566)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !928, file: !169, line: 1985, baseType: !989, size: 64, offset: 768)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!34, !951, !912, !872, !912, !872, !17}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !928, file: !169, line: 1987, baseType: !993, size: 64, offset: 832)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!34, !951, !872, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !169, line: 226, size: 640, elements: !998)
!998 = !{!999, !1000, !1001, !1011, !1020, !1021, !1026, !1027, !1028}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !997, file: !169, line: 227, baseType: !17, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !997, file: !169, line: 228, baseType: !36, size: 16, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !169, line: 241, baseType: !1002, size: 32, offset: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !169, line: 241, size: 32, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1002, file: !169, line: 242, baseType: !472, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1002, file: !169, line: 243, baseType: !1006, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1007, line: 16, baseType: !1008)
!1007 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 14, size: 32, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1008, file: !1007, line: 15, baseType: !477, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !169, line: 245, baseType: !1012, size: 32, offset: 96)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !169, line: 245, size: 32, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1012, file: !169, line: 246, baseType: !490, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1012, file: !169, line: 247, baseType: !1016, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1007, line: 20, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 18, size: 32, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1017, file: !1007, line: 19, baseType: !494, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !997, file: !169, line: 249, baseType: !53, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !997, file: !169, line: 250, baseType: !1022, size: 128, offset: 192)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !558, line: 13, size: 128, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1022, file: !558, line: 14, baseType: !557, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1022, file: !558, line: 15, baseType: !836, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !997, file: !169, line: 251, baseType: !1022, size: 128, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !997, file: !169, line: 252, baseType: !1022, size: 128, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !997, file: !169, line: 259, baseType: !357, size: 64, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !928, file: !169, line: 1988, baseType: !1030, size: 64, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!34, !951, !1033, !1035, !566, !17}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1037, line: 22, size: 1280, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1036, file: !1037, line: 23, baseType: !566, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1036, file: !1037, line: 24, baseType: !36, size: 16, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1036, file: !1037, line: 25, baseType: !17, size: 32, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1036, file: !1037, line: 26, baseType: !565, size: 32, offset: 96)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1036, file: !1037, line: 27, baseType: !509, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1036, file: !1037, line: 28, baseType: !509, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1036, file: !1037, line: 41, baseType: !509, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1036, file: !1037, line: 42, baseType: !986, size: 32, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1036, file: !1037, line: 43, baseType: !986, size: 32, offset: 352)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1036, file: !1037, line: 44, baseType: !472, size: 32, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1036, file: !1037, line: 45, baseType: !490, size: 32, offset: 416)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1036, file: !1037, line: 46, baseType: !53, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1036, file: !1037, line: 47, baseType: !1022, size: 128, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1036, file: !1037, line: 48, baseType: !1022, size: 128, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1036, file: !1037, line: 49, baseType: !1022, size: 128, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1036, file: !1037, line: 50, baseType: !1022, size: 128, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1036, file: !1037, line: 51, baseType: !509, size: 64, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1036, file: !1037, line: 52, baseType: !509, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1036, file: !1037, line: 53, baseType: !566, size: 32, offset: 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1036, file: !1037, line: 54, baseType: !566, size: 32, offset: 1184)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1036, file: !1037, line: 55, baseType: !509, size: 64, offset: 1216)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !928, file: !169, line: 1990, baseType: !1061, size: 64, offset: 960)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1064, !872, !613, !47}
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !836)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !928, file: !169, line: 1991, baseType: !1068, size: 64, offset: 1024)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!34, !912, !1071, !509, !509}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !169, line: 55, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !928, file: !169, line: 1993, baseType: !1074, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!34, !912, !34}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !928, file: !169, line: 1994, baseType: !1078, size: 64, offset: 1152)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!34, !912, !872, !357, !17, !36}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !928, file: !169, line: 1997, baseType: !1082, size: 64, offset: 1216)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!34, !951, !912, !357, !36}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !928, file: !169, line: 1999, baseType: !1086, size: 64, offset: 1280)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!922, !951, !872, !34}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !928, file: !169, line: 2001, baseType: !1090, size: 64, offset: 1344)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!34, !951, !872, !922, !34}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !928, file: !169, line: 2003, baseType: !1094, size: 64, offset: 1408)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!34, !951, !872, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !169, line: 76, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !928, file: !169, line: 2005, baseType: !1100, size: 64, offset: 1472)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!34, !872, !1097}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !928, file: !169, line: 2006, baseType: !1104, size: 64, offset: 1536)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!1107, !912}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !169, line: 3192, size: 192, elements: !1109)
!1109 = !{!1110, !1118}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1108, file: !169, line: 3193, baseType: !1111, size: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1112, line: 296, size: 128, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1113 = !{!1114, !1115, !1117}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1111, file: !1112, line: 297, baseType: !71, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1111, file: !1112, line: 299, baseType: !1116, size: 32, offset: 32)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !17)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1111, file: !1112, line: 300, baseType: !32, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1108, file: !169, line: 3194, baseType: !566, size: 32, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !913, file: !169, line: 655, baseType: !1120, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !169, line: 1190, size: 10752, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !2553, !2685, !2725, !2808, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2842, !2846, !2847, !3735, !3741, !3742, !3745, !3746, !3747, !3788, !5665, !5666, !5667, !5668, !5669, !5670, !5673, !5674, !5681, !5682, !5683, !5684, !5743, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1121, file: !169, line: 1191, baseType: !109, size: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1121, file: !169, line: 1192, baseType: !986, size: 32, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1121, file: !169, line: 1193, baseType: !99, size: 8, offset: 160)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1121, file: !169, line: 1194, baseType: !51, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1121, file: !169, line: 1195, baseType: !53, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1121, file: !169, line: 1196, baseType: !1129, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !169, line: 2366, size: 576, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1140, !1144, !1148, !1152, !2541, !2542, !2543, !2545, !2546, !2547, !2549, !2550, !2551, !2552}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1130, file: !169, line: 2367, baseType: !29, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1130, file: !169, line: 2368, baseType: !34, size: 32, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1130, file: !169, line: 2376, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!34, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !869, line: 21, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1130, file: !169, line: 2377, baseType: !1141, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !169, line: 75, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1130, file: !169, line: 2378, baseType: !1145, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!872, !1129, !34, !29, !32}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1130, file: !169, line: 2380, baseType: !1149, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1120}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1130, file: !169, line: 2381, baseType: !1153, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !120, line: 402, size: 9216, align: 512, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1162, !2193, !2219, !2220, !2221, !2222, !2226, !2229, !2230, !2231, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2299, !2303, !2323, !2341, !2342, !2343, !2344, !2353, !2376, !2377, !2380, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2394, !2395, !2494, !2502, !2503, !2504, !2506, !2510, !2511, !2520, !2521, !2522, !2523, !2525, !2526, !2527, !2534, !2535, !2536, !2540}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1154, file: !120, line: 403, baseType: !119, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1154, file: !120, line: 406, baseType: !109, size: 128, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1154, file: !120, line: 409, baseType: !1159, size: 448, offset: 192)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 56)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1154, file: !120, line: 417, baseType: !1163, size: 768, offset: 640)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !120, line: 45, size: 768, elements: !1164)
!1164 = !{!1165, !2187, !2188, !2189, !2192}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1163, file: !120, line: 46, baseType: !1166, size: 512)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1167, line: 64, size: 512, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1168 = !{!1169, !1170, !1171, !1173, !1217, !2043, !2177, !2182, !2183, !2184, !2185, !2186}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1166, file: !1167, line: 65, baseType: !29, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1166, file: !1167, line: 66, baseType: !109, size: 128, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1166, file: !1167, line: 67, baseType: !1172, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1166, file: !1167, line: 68, baseType: !1174, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1167, line: 168, size: 768, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1175, file: !1167, line: 169, baseType: !109, size: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1175, file: !1167, line: 170, baseType: !71, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1175, file: !1167, line: 171, baseType: !1166, size: 512, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1175, file: !1167, line: 172, baseType: !1181, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1167, line: 133, size: 192, elements: !1184)
!1184 = !{!1185, !1192, !1197}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1183, file: !1167, line: 134, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!34, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1183, file: !1167, line: 135, baseType: !1193, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!29, !1190}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1183, file: !1167, line: 136, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!34, !1190, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1167, line: 125, size: 20736, elements: !1204)
!1204 = !{!1205, !1207, !1211, !1212, !1216}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1203, file: !1167, line: 126, baseType: !1206, size: 192)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 192, elements: !429)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1203, file: !1167, line: 127, baseType: !1208, size: 4096, offset: 192)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 4096, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1203, file: !1167, line: 128, baseType: !34, size: 32, offset: 4288)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1203, file: !1167, line: 129, baseType: !1213, size: 16384, offset: 4320)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 2048)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1203, file: !1167, line: 130, baseType: !34, size: 32, offset: 20704)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1166, file: !1167, line: 69, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1167, line: 116, size: 384, elements: !1221)
!1221 = !{!1222, !1226, !1245, !2007, !2035, !2039}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1220, file: !1167, line: 117, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !1172}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1220, file: !1167, line: 118, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1230, line: 254, size: 128, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1231 = !{!1232, !1241}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1229, file: !1230, line: 255, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1064, !1172, !1236, !613}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1230, line: 30, size: 128, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1237, file: !1230, line: 31, baseType: !29, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1237, file: !1230, line: 32, baseType: !36, size: 16, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1229, file: !1230, line: 256, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!1064, !1172, !1236, !29, !47}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1220, file: !1167, line: 119, baseType: !1246, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1230, line: 84, size: 320, elements: !1250)
!1250 = !{!1251, !1252, !1256, !2003, !2005}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1249, file: !1230, line: 85, baseType: !29, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1249, file: !1230, line: 86, baseType: !1253, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!36, !1172, !1236, !34}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1249, file: !1230, line: 88, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!36, !1172, !1260, !34}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1230, line: 175, size: 512, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1994, !1998, !1999}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1261, file: !1230, line: 176, baseType: !1237, size: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1261, file: !1230, line: 177, baseType: !47, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1261, file: !1230, line: 178, baseType: !32, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1261, file: !1230, line: 179, baseType: !1267, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !169, line: 472, size: 1536, align: 64, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1283, !1284, !1285, !1986, !1987, !1988, !1991, !1992, !1993}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1271, file: !169, line: 473, baseType: !912, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1271, file: !169, line: 474, baseType: !1111, size: 128, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1271, file: !169, line: 475, baseType: !541, size: 320, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1271, file: !169, line: 476, baseType: !1116, size: 32, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1271, file: !169, line: 477, baseType: !61, size: 32, offset: 544)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1271, file: !169, line: 482, baseType: !1279, size: 128, offset: 576)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !534, line: 26, size: 128, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1279, file: !534, line: 27, baseType: !816, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1279, file: !534, line: 28, baseType: !538, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1271, file: !169, line: 483, baseType: !51, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1271, file: !169, line: 484, baseType: !51, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1271, file: !169, line: 485, baseType: !1286, size: 64, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !169, line: 404, size: 1280, elements: !1289)
!1289 = !{!1290, !1756, !1826, !1830, !1834, !1840, !1846, !1850, !1855, !1859, !1863, !1867, !1950, !1954, !1958, !1962, !1967, !1971, !1978, !1982}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1288, file: !169, line: 405, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!34, !1294, !1736}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !135, line: 74, size: 512, align: 128, elements: !1296)
!1296 = !{!1297, !1298, !1730, !1735}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1295, file: !135, line: 75, baseType: !51, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !135, line: 83, baseType: !1299, size: 320, offset: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !135, line: 83, size: 320, elements: !1300)
!1300 = !{!1301, !1322, !1336, !1340, !1729}
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !135, line: 84, baseType: !1302, size: 320)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !135, line: 84, size: 320, elements: !1303)
!1303 = !{!1304, !1315, !1316, !1321}
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !135, line: 90, baseType: !1305, size: 128)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1302, file: !135, line: 90, size: 128, elements: !1306)
!1306 = !{!1307, !1308, !1313, !1314}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1305, file: !135, line: 91, baseType: !109, size: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !135, line: 94, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !135, line: 94, size: 128, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1309, file: !135, line: 96, baseType: !32, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1309, file: !135, line: 98, baseType: !17, size: 32, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1305, file: !135, line: 102, baseType: !109, size: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1305, file: !135, line: 103, baseType: !109, size: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1302, file: !135, line: 106, baseType: !1270, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !135, line: 107, baseType: !1317, size: 64, offset: 192)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1302, file: !135, line: 107, size: 64, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1317, file: !135, line: 108, baseType: !51, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1317, file: !135, line: 109, baseType: !51, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1302, file: !135, line: 117, baseType: !51, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !135, line: 119, baseType: !1323, size: 320)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !135, line: 119, size: 320, elements: !1324)
!1324 = !{!1325, !1326, !1329, !1330, !1331}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1323, file: !135, line: 124, baseType: !51, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1323, file: !135, line: 125, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !135, line: 125, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1323, file: !135, line: 126, baseType: !51, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1323, file: !135, line: 127, baseType: !51, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1323, file: !135, line: 128, baseType: !1332, size: 64, offset: 256)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1323, file: !135, line: 128, size: 64, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1332, file: !135, line: 133, baseType: !51, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1332, file: !135, line: 138, baseType: !383, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !135, line: 141, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !135, line: 141, size: 64, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1337, file: !135, line: 142, baseType: !51, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !135, line: 144, baseType: !1341, size: 128)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !135, line: 144, size: 128, elements: !1342)
!1342 = !{!1343, !1728}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1341, file: !135, line: 146, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !127, line: 126, size: 1216, elements: !1346)
!1346 = !{!1347, !1357, !1378, !1379, !1380, !1381, !1382, !1710, !1711, !1712}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1345, file: !127, line: 127, baseType: !1348, size: 384)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !127, line: 21, size: 384, elements: !1349)
!1349 = !{!1350, !1351, !1353, !1354, !1355, !1356}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1348, file: !127, line: 22, baseType: !51, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1348, file: !127, line: 23, baseType: !1352, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1348, file: !127, line: 24, baseType: !1352, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1348, file: !127, line: 25, baseType: !51, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1348, file: !127, line: 26, baseType: !51, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1348, file: !127, line: 27, baseType: !51, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1345, file: !127, line: 128, baseType: !1358, size: 128, offset: 384)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1359, line: 105, size: 128, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1358, file: !1359, line: 110, baseType: !51, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1358, file: !1359, line: 118, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1359, line: 95, size: 448, elements: !1365)
!1365 = !{!1366, !1367, !1373, !1374, !1375, !1376, !1377}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1364, file: !1359, line: 96, baseType: !383, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1364, file: !1359, line: 97, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1359, line: 60, baseType: !1370)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1364, file: !1359, line: 98, baseType: !1368, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1364, file: !1359, line: 99, baseType: !602, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1364, file: !1359, line: 100, baseType: !602, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1364, file: !1359, line: 101, baseType: !370, size: 128, align: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1364, file: !1359, line: 102, baseType: !1372, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1345, file: !127, line: 129, baseType: !774, size: 256, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1345, file: !127, line: 130, baseType: !126, size: 32, offset: 768)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1345, file: !127, line: 131, baseType: !17, size: 32, offset: 800)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1345, file: !127, line: 132, baseType: !51, size: 64, offset: 832)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1345, file: !127, line: 133, baseType: !1383, size: 64, offset: 896)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !127, line: 77, size: 192, elements: !1386)
!1386 = !{!1387, !1391, !1706}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1385, file: !127, line: 83, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !1294}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1385, file: !127, line: 89, baseType: !1392, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !135, line: 1184, baseType: !17)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1398, line: 512, size: 896, elements: !1399)
!1398 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1399 = !{!1400, !1673, !1674, !1681, !1688, !1698, !1699, !1700, !1702, !1704}
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1397, file: !1398, line: 513, baseType: !1401, size: 320)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1397, file: !1398, line: 513, size: 320, elements: !1402)
!1402 = !{!1403, !1669, !1670, !1671, !1672}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1401, file: !1398, line: 514, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !135, line: 625, size: 1344, elements: !1406)
!1406 = !{!1407, !1416, !1574, !1580, !1587, !1588, !1593, !1594, !1599, !1600, !1603, !1662, !1663, !1664, !1665, !1666, !1667}
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !135, line: 628, baseType: !1408, size: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !135, line: 628, size: 128, elements: !1409)
!1409 = !{!1410, !1415}
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !135, line: 629, baseType: !1411, size: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !135, line: 629, size: 128, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1411, file: !135, line: 631, baseType: !51, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1411, file: !135, line: 632, baseType: !51, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1408, file: !135, line: 635, baseType: !370, size: 128, align: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1405, file: !135, line: 639, baseType: !1417, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !135, line: 733, size: 10240, elements: !1419)
!1419 = !{!1420, !1572}
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !135, line: 734, baseType: !1421, size: 10240)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !135, line: 734, size: 10240, elements: !1422)
!1422 = !{!1423, !1427, !1441, !1445, !1446, !1447, !1448, !1449, !1450, !1459, !1460, !1461, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1500, !1502, !1505, !1552, !1553, !1554, !1557, !1558, !1559, !1562, !1563, !1564, !1570, !1571}
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !135, line: 739, baseType: !1424, size: 512, align: 512)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1421, file: !135, line: 739, size: 512, align: 512, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1424, file: !135, line: 747, baseType: !61, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1421, file: !135, line: 750, baseType: !1428, size: 128, offset: 512)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1429, line: 218, size: 128, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1430 = !{!1431, !1439, !1440}
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !1429, line: 219, baseType: !1432, size: 32)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !1429, line: 219, size: 32, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1432, file: !1429, line: 220, baseType: !71, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1432, file: !1429, line: 221, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1429, line: 197, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1429, line: 197, elements: !1438)
!1438 = !{}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1428, file: !1429, line: 223, baseType: !17, size: 32, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1428, file: !1429, line: 224, baseType: !32, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1421, file: !135, line: 752, baseType: !1442, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!51, !357, !51, !51, !51, !51}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1421, file: !135, line: 756, baseType: !51, size: 64, offset: 704)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1421, file: !135, line: 757, baseType: !51, size: 64, offset: 768)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1421, file: !135, line: 760, baseType: !51, size: 64, offset: 832)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1421, file: !135, line: 761, baseType: !51, size: 64, offset: 896)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1421, file: !135, line: 763, baseType: !51, size: 64, offset: 960)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1421, file: !135, line: 764, baseType: !1451, size: 64, offset: 1024)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1453, line: 299, baseType: !1454)
!1453 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1453, line: 299, size: 64, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1454, file: !1453, line: 299, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1458, line: 18, baseType: !51)
!1458 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1421, file: !135, line: 773, baseType: !61, size: 32, offset: 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1421, file: !135, line: 785, baseType: !61, size: 32, offset: 1120)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1421, file: !135, line: 795, baseType: !1462, size: 64, offset: 1152)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !135, line: 726, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1463, file: !135, line: 727, baseType: !509, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1463, file: !135, line: 728, baseType: !34, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1421, file: !135, line: 801, baseType: !51, size: 64, offset: 1216)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1421, file: !135, line: 804, baseType: !383, size: 64, offset: 1280)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1421, file: !135, line: 806, baseType: !34, size: 32, offset: 1344)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1421, file: !135, line: 808, baseType: !71, size: 32, offset: 1376)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1421, file: !135, line: 823, baseType: !541, size: 320, offset: 1408)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1421, file: !135, line: 825, baseType: !109, size: 128, offset: 1728)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1421, file: !135, line: 845, baseType: !34, size: 32, offset: 1856)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1421, file: !135, line: 849, baseType: !51, size: 64, offset: 1920)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1421, file: !135, line: 850, baseType: !51, size: 64, offset: 1984)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1421, file: !135, line: 852, baseType: !51, size: 64, offset: 2048)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1421, file: !135, line: 853, baseType: !51, size: 64, offset: 2112)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1421, file: !135, line: 854, baseType: !385, size: 64, offset: 2176)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1421, file: !135, line: 855, baseType: !51, size: 64, offset: 2240)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1421, file: !135, line: 856, baseType: !51, size: 64, offset: 2304)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1421, file: !135, line: 857, baseType: !51, size: 64, offset: 2368)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1421, file: !135, line: 858, baseType: !51, size: 64, offset: 2432)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1421, file: !135, line: 865, baseType: !883, size: 32, offset: 2496)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1421, file: !135, line: 867, baseType: !71, size: 32, offset: 2528)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1421, file: !135, line: 869, baseType: !51, size: 64, offset: 2560)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1421, file: !135, line: 869, baseType: !51, size: 64, offset: 2624)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1421, file: !135, line: 869, baseType: !51, size: 64, offset: 2688)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1421, file: !135, line: 869, baseType: !51, size: 64, offset: 2752)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1421, file: !135, line: 870, baseType: !51, size: 64, offset: 2816)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1421, file: !135, line: 870, baseType: !51, size: 64, offset: 2880)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1421, file: !135, line: 870, baseType: !51, size: 64, offset: 2944)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1421, file: !135, line: 871, baseType: !51, size: 64, offset: 3008)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1421, file: !135, line: 871, baseType: !51, size: 64, offset: 3072)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1421, file: !135, line: 871, baseType: !51, size: 64, offset: 3136)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1421, file: !135, line: 871, baseType: !51, size: 64, offset: 3200)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1421, file: !135, line: 873, baseType: !1497, size: 3328, offset: 3264)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !1498)
!1498 = !{!1499}
!1499 = !DISubrange(count: 52)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1421, file: !135, line: 875, baseType: !1501, size: 1280, offset: 6592)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 1280, elements: !455)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1421, file: !135, line: 877, baseType: !1503, size: 64, offset: 7872)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !135, line: 877, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1421, file: !135, line: 880, baseType: !1506, size: 1088, offset: 7936)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1507, line: 72, baseType: !1508)
!1507 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1507, line: 23, size: 1088, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1517, !1518, !1519, !1520, !1547, !1548, !1549}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1508, file: !1507, line: 28, baseType: !509, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1508, file: !1507, line: 38, baseType: !385, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1508, file: !1507, line: 40, baseType: !51, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1508, file: !1507, line: 43, baseType: !541, size: 320, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1508, file: !1507, line: 44, baseType: !1515, size: 64, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1507, line: 44, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1508, file: !1507, line: 48, baseType: !51, size: 64, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1508, file: !1507, line: 59, baseType: !392, size: 256, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1508, file: !1507, line: 60, baseType: !32, size: 64, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1508, file: !1507, line: 61, baseType: !1521, size: 64, offset: 960)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1524, line: 13, size: 1216, elements: !1525)
!1524 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1523, file: !1524, line: 14, baseType: !32, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1523, file: !1524, line: 15, baseType: !51, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1523, file: !1524, line: 17, baseType: !51, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1523, file: !1524, line: 17, baseType: !51, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1523, file: !1524, line: 18, baseType: !51, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1523, file: !1524, line: 18, baseType: !51, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1523, file: !1524, line: 19, baseType: !1533, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1523, file: !1524, line: 21, baseType: !836, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1523, file: !1524, line: 23, baseType: !836, size: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1523, file: !1524, line: 24, baseType: !836, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1523, file: !1524, line: 25, baseType: !836, size: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1523, file: !1524, line: 26, baseType: !836, size: 64, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1523, file: !1524, line: 27, baseType: !836, size: 64, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1523, file: !1524, line: 28, baseType: !836, size: 64, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1523, file: !1524, line: 29, baseType: !836, size: 64, offset: 896)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1523, file: !1524, line: 30, baseType: !836, size: 64, offset: 960)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1523, file: !1524, line: 31, baseType: !836, size: 64, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1523, file: !1524, line: 32, baseType: !836, size: 64, offset: 1088)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1523, file: !1524, line: 33, baseType: !836, size: 64, offset: 1152)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1508, file: !1507, line: 63, baseType: !61, size: 32, offset: 1024)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1508, file: !1507, line: 69, baseType: !105, size: 16, offset: 1056)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1508, file: !1507, line: 70, baseType: !1550, size: 16, offset: 1072)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !571)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1421, file: !135, line: 882, baseType: !51, size: 64, offset: 9024)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1421, file: !135, line: 885, baseType: !71, size: 32, offset: 9088)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1421, file: !135, line: 886, baseType: !1555, size: 64, offset: 9152)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !135, line: 732, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1421, file: !135, line: 901, baseType: !686, size: 64, offset: 9216)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1421, file: !135, line: 904, baseType: !357, size: 64, offset: 9280)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1421, file: !135, line: 906, baseType: !1560, size: 64, offset: 9344)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !135, line: 906, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1421, file: !135, line: 930, baseType: !61, size: 32, offset: 9408)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1421, file: !135, line: 933, baseType: !61, size: 32, offset: 9440)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1421, file: !135, line: 935, baseType: !1565, size: 64, offset: 9472)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !281, line: 103, size: 64, elements: !1566)
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1565, file: !281, line: 104, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !281, line: 101, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1421, file: !135, line: 940, baseType: !383, size: 64, offset: 9536)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1421, file: !135, line: 942, baseType: !735, size: 256, offset: 9600)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1418, file: !135, line: 986, baseType: !1573, offset: 10240)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !468)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1405, file: !135, line: 640, baseType: !1575, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1453, line: 297, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1453, line: 297, size: 64, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1576, file: !1453, line: 297, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1458, line: 19, baseType: !51)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !135, line: 646, baseType: !1581, size: 64, offset: 256)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !135, line: 646, size: 64, elements: !1582)
!1582 = !{!1583, !1586}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1581, file: !135, line: 647, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !135, line: 542, baseType: !51)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1581, file: !135, line: 648, baseType: !1585, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1405, file: !135, line: 666, baseType: !34, size: 32, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1405, file: !135, line: 667, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !135, line: 579, size: 320, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1590, file: !135, line: 580, baseType: !541, size: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1405, file: !135, line: 670, baseType: !602, size: 8, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1405, file: !135, line: 681, baseType: !1595, size: 256, offset: 512)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !135, line: 678, size: 256, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1595, file: !135, line: 679, baseType: !533, size: 192, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1595, file: !135, line: 680, baseType: !51, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1405, file: !135, line: 689, baseType: !109, size: 128, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1405, file: !135, line: 691, baseType: !1601, size: 64, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !135, line: 691, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1405, file: !135, line: 694, baseType: !1604, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1398, line: 563, size: 1024, elements: !1607)
!1607 = !{!1608, !1612, !1613, !1617, !1621, !1625, !1626, !1630, !1634, !1638, !1639, !1640, !1644, !1648, !1654, !1658}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1606, file: !1398, line: 564, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !1404}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1606, file: !1398, line: 569, baseType: !1609, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1606, file: !1398, line: 571, baseType: !1614, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!34, !1404, !51}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1606, file: !1398, line: 572, baseType: !1618, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!34, !1404}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1606, file: !1398, line: 578, baseType: !1622, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!34, !1404, !51, !51, !51}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1606, file: !1398, line: 580, baseType: !1392, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1606, file: !1398, line: 581, baseType: !1627, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1395, !1396, !17}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1606, file: !1398, line: 582, baseType: !1631, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1395, !1396, !51, !51}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1606, file: !1398, line: 584, baseType: !1635, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!51, !1404}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1606, file: !1398, line: 588, baseType: !1392, size: 64, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1606, file: !1398, line: 591, baseType: !1392, size: 64, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1606, file: !1398, line: 597, baseType: !1641, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!34, !1404, !51, !32, !34, !34}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1606, file: !1398, line: 603, baseType: !1645, size: 64, offset: 768)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!29, !1404}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1606, file: !1398, line: 613, baseType: !1649, size: 64, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!34, !1404, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !135, line: 717, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1606, file: !1398, line: 625, baseType: !1655, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1652, !1404, !51}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1606, file: !1398, line: 633, baseType: !1659, size: 64, offset: 960)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!1294, !1404, !51}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1405, file: !135, line: 697, baseType: !51, size: 64, offset: 1024)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1405, file: !135, line: 699, baseType: !357, size: 64, offset: 1088)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1405, file: !135, line: 700, baseType: !32, size: 64, offset: 1152)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1405, file: !135, line: 711, baseType: !383, size: 64, offset: 1216)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1405, file: !135, line: 717, baseType: !1652, size: 64, offset: 1280)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1405, file: !135, line: 722, baseType: !1668, offset: 1344)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !135, line: 570, elements: !1438)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1401, file: !1398, line: 515, baseType: !1116, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1401, file: !1398, line: 516, baseType: !51, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1401, file: !1398, line: 517, baseType: !51, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1401, file: !1398, line: 518, baseType: !51, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1397, file: !1398, line: 520, baseType: !134, size: 32, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1397, file: !1398, line: 522, baseType: !1675, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1458, line: 22, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 22, size: 64, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1677, file: !1458, line: 22, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1458, line: 15, baseType: !51)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1397, file: !1398, line: 524, baseType: !1682, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1453, line: 372, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1453, line: 372, size: 64, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1684, file: !1453, line: 372, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1458, line: 16, baseType: !51)
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1397, file: !1398, line: 527, baseType: !1689, size: 64, offset: 512)
!1689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1397, file: !1398, line: 527, size: 64, elements: !1690)
!1690 = !{!1691, !1697}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1689, file: !1398, line: 528, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1458, line: 21, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 21, size: 64, elements: !1694)
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1693, file: !1458, line: 21, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1458, line: 14, baseType: !51)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1689, file: !1398, line: 529, baseType: !1676, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1397, file: !1398, line: 534, baseType: !1294, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1397, file: !1398, line: 535, baseType: !1294, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1397, file: !1398, line: 541, baseType: !1701, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1397, file: !1398, line: 545, baseType: !1703, size: 64, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1397, file: !1398, line: 549, baseType: !1705, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1453, line: 520, baseType: !1294)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1385, file: !127, line: 100, baseType: !1707, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!34, !1344, !51, !51, !34}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1345, file: !127, line: 134, baseType: !32, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1345, file: !127, line: 135, baseType: !34, size: 32, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !127, line: 136, baseType: !1713, size: 128, offset: 1088)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1345, file: !127, line: 136, size: 128, elements: !1714)
!1714 = !{!1715, !1721}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1713, file: !127, line: 137, baseType: !1716, size: 128)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1717, line: 6, size: 128, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1716, file: !1717, line: 7, baseType: !509, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1716, file: !1717, line: 8, baseType: !509, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !127, line: 138, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !127, line: 138, elements: !1723)
!1723 = !{!1724, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1722, file: !127, line: 138, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1722, file: !127, line: 138, elements: !1438)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1722, file: !127, line: 138, baseType: !1727)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1716, elements: !468)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1341, file: !135, line: 147, baseType: !32, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1299, file: !135, line: 161, baseType: !370, size: 128, align: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !135, line: 164, baseType: !1731, size: 32, offset: 384)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !135, line: 164, size: 32, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1731, file: !135, line: 169, baseType: !61, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1731, file: !135, line: 177, baseType: !17, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1295, file: !135, line: 181, baseType: !61, size: 32, offset: 416)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !151, line: 42, size: 384, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1737, file: !151, line: 43, baseType: !836, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1737, file: !151, line: 45, baseType: !836, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1737, file: !151, line: 52, baseType: !53, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1737, file: !151, line: 53, baseType: !53, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1737, file: !151, line: 55, baseType: !150, size: 32, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1737, file: !151, line: 57, baseType: !17, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1737, file: !151, line: 58, baseType: !17, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1737, file: !151, line: 59, baseType: !17, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1737, file: !151, line: 60, baseType: !17, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1737, file: !151, line: 61, baseType: !17, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1737, file: !151, line: 62, baseType: !17, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1737, file: !151, line: 63, baseType: !17, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1737, file: !151, line: 71, baseType: !17, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1737, file: !151, line: 78, baseType: !1753, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !151, line: 78, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1288, file: !169, line: 406, baseType: !1757, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!34, !357, !1760}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !135, line: 293, size: 1536, elements: !1762)
!1762 = !{!1763, !1793, !1807}
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !135, line: 295, baseType: !1764, size: 512)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !135, line: 295, size: 512, elements: !1765)
!1765 = !{!1766, !1792}
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !135, line: 296, baseType: !1767, size: 448)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !135, line: 296, size: 448, elements: !1768)
!1768 = !{!1769, !1770, !1779, !1780, !1781, !1790, !1791}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !135, line: 298, baseType: !51, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !135, line: 299, baseType: !1771, size: 128, offset: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !135, line: 299, size: 128, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1771, file: !135, line: 300, baseType: !109, size: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !135, line: 302, baseType: !1775, size: 128)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !135, line: 302, size: 128, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1775, file: !135, line: 303, baseType: !32, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1775, file: !135, line: 305, baseType: !17, size: 32, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1767, file: !135, line: 310, baseType: !1270, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1767, file: !135, line: 311, baseType: !51, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !135, line: 312, baseType: !1782, size: 64, offset: 320)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !135, line: 312, size: 64, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1782, file: !135, line: 313, baseType: !32, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1782, file: !135, line: 314, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !135, line: 257, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 255, size: 64, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1787, file: !135, line: 256, baseType: !51, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1767, file: !135, line: 316, baseType: !61, size: 32, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1767, file: !135, line: 317, baseType: !61, size: 32, offset: 416)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1764, file: !135, line: 323, baseType: !1295, size: 512, align: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !135, line: 325, baseType: !1794, size: 512, offset: 512)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !135, line: 325, size: 512, elements: !1795)
!1795 = !{!1796, !1806}
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !135, line: 326, baseType: !1797, size: 320)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1794, file: !135, line: 326, size: 320, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1797, file: !135, line: 327, baseType: !51, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1797, file: !135, line: 328, baseType: !51, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1797, file: !135, line: 329, baseType: !51, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1797, file: !135, line: 331, baseType: !61, size: 32, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1797, file: !135, line: 332, baseType: !61, size: 32, offset: 224)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1797, file: !135, line: 333, baseType: !61, size: 32, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1797, file: !135, line: 335, baseType: !17, size: 32, offset: 288)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1794, file: !135, line: 339, baseType: !1295, size: 512, align: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !135, line: 341, baseType: !1808, size: 512, offset: 1024)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !135, line: 341, size: 512, elements: !1809)
!1809 = !{!1810, !1819, !1825}
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !135, line: 342, baseType: !1811, size: 384)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !135, line: 342, size: 384, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1811, file: !135, line: 343, baseType: !51, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1811, file: !135, line: 344, baseType: !51, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1811, file: !135, line: 346, baseType: !32, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1811, file: !135, line: 347, baseType: !32, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1811, file: !135, line: 348, baseType: !32, size: 64, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1811, file: !135, line: 349, baseType: !32, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !135, line: 352, baseType: !1820, size: 256)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !135, line: 352, size: 256, elements: !1821)
!1821 = !{!1822, !1823, !1824}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1820, file: !135, line: 353, baseType: !51, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1820, file: !135, line: 354, baseType: !51, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1820, file: !135, line: 356, baseType: !109, size: 128, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1808, file: !135, line: 359, baseType: !1295, size: 512, align: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1288, file: !169, line: 409, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!34, !1270, !1736}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1288, file: !169, line: 412, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!602, !1270, !1760}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1288, file: !169, line: 414, baseType: !1835, size: 64, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !169, line: 310, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1288, file: !169, line: 416, baseType: !1841, size: 64, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!34, !357, !1270, !53, !17, !1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1288, file: !169, line: 419, baseType: !1847, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!34, !357, !1270, !53, !17, !17, !1294, !32}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1288, file: !169, line: 424, baseType: !1851, size: 64, offset: 448)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1854, !1270, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !509)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1288, file: !169, line: 425, baseType: !1856, size: 64, offset: 512)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1760, !47, !47}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1288, file: !169, line: 426, baseType: !1860, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!602, !1760, !1116}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1288, file: !169, line: 427, baseType: !1864, size: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1760}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1288, file: !169, line: 428, baseType: !1868, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!1064, !1871, !1893}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !169, line: 373, size: 384, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1880, !1881, !1882, !1883}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1872, file: !169, line: 374, baseType: !357, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1872, file: !169, line: 375, baseType: !53, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1872, file: !169, line: 376, baseType: !1877, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1871, !836}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1872, file: !169, line: 377, baseType: !32, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1872, file: !169, line: 378, baseType: !34, size: 32, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1872, file: !169, line: 379, baseType: !105, size: 16, offset: 288)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !169, line: 380, baseType: !1884, size: 64, offset: 320)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !169, line: 380, size: 64, elements: !1885)
!1885 = !{!1886, !1889}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1884, file: !169, line: 386, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !169, line: 386, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1884, file: !169, line: 395, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1064, !32}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1895, line: 41, size: 320, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1907, !1945}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1894, file: !1895, line: 42, baseType: !95, size: 8)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1894, file: !1895, line: 43, baseType: !602, size: 8, offset: 8)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1894, file: !1895, line: 44, baseType: !602, size: 8, offset: 16)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1894, file: !1895, line: 45, baseType: !602, size: 8, offset: 24)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1894, file: !1895, line: 46, baseType: !602, size: 8, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 47, baseType: !1903, size: 64, offset: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1895, line: 47, size: 64, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1903, file: !1895, line: 48, baseType: !47, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1903, file: !1895, line: 49, baseType: !34, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 61, baseType: !1908, size: 128, offset: 128)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1895, line: 61, size: 128, elements: !1909)
!1909 = !{!1910, !1916}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1908, file: !1895, line: 67, baseType: !1911, size: 128)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1912, line: 17, size: 128, elements: !1913)
!1912 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1911, file: !1912, line: 19, baseType: !32, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1911, file: !1912, line: 20, baseType: !48, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1895, line: 68, baseType: !1917, size: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !1895, line: 68, size: 128, elements: !1918)
!1918 = !{!1919, !1944}
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1895, line: 69, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1917, file: !1895, line: 69, size: 64, elements: !1921)
!1921 = !{!1922, !1925, !1932, !1941, !1943}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1920, file: !1895, line: 71, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1920, file: !1895, line: 72, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1895, line: 17, size: 128, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1928, file: !1895, line: 18, baseType: !32, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1928, file: !1895, line: 19, baseType: !47, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1920, file: !1895, line: 73, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1936, line: 31, size: 128, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1935, file: !1936, line: 32, baseType: !1294, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1935, file: !1936, line: 33, baseType: !17, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1935, file: !1936, line: 34, baseType: !17, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1920, file: !1895, line: 74, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1920, file: !1895, line: 75, baseType: !32, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1917, file: !1895, line: 77, baseType: !47, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 80, baseType: !1946, size: 64, offset: 256)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1895, line: 80, size: 64, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1946, file: !1895, line: 81, baseType: !51, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1946, file: !1895, line: 82, baseType: !53, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1288, file: !169, line: 433, baseType: !1951, size: 64, offset: 768)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!34, !1270, !1760, !1760, !155}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1288, file: !169, line: 435, baseType: !1955, size: 64, offset: 832)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!34, !1760}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1288, file: !169, line: 436, baseType: !1959, size: 64, offset: 896)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!602, !1760, !47, !47}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1288, file: !169, line: 438, baseType: !1963, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1760, !1966, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1288, file: !169, line: 439, baseType: !1968, size: 64, offset: 1024)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!34, !1270, !1294}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1288, file: !169, line: 442, baseType: !1972, size: 64, offset: 1088)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!34, !1975, !357, !1977}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !169, line: 66, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1288, file: !169, line: 444, baseType: !1979, size: 64, offset: 1152)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !357}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1288, file: !169, line: 445, baseType: !1983, size: 64, offset: 1216)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!34, !1871, !1893}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !169, line: 486, baseType: !51, size: 64, offset: 896)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1271, file: !169, line: 487, baseType: !541, size: 320, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1271, file: !169, line: 488, baseType: !1989, size: 32, offset: 1280)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1990, line: 8, baseType: !566)
!1990 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1271, file: !169, line: 489, baseType: !71, size: 32, offset: 1312)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1271, file: !169, line: 490, baseType: !109, size: 128, offset: 1344)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1271, file: !169, line: 491, baseType: !32, size: 64, offset: 1472)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1261, file: !1230, line: 180, baseType: !1995, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1064, !357, !1172, !1260, !613, !53, !47}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1261, file: !1230, line: 182, baseType: !1995, size: 64, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1261, file: !1230, line: 184, baseType: !2000, size: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!34, !357, !1172, !1260, !1404}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1249, file: !1230, line: 90, baseType: !2004, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1249, file: !1230, line: 91, baseType: !2006, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1220, file: !1167, line: 120, baseType: !2008, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!2011, !1190}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !163, line: 39, size: 384, elements: !2014)
!2014 = !{!2015, !2016, !2020, !2024, !2030, !2034}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2013, file: !163, line: 40, baseType: !162, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2013, file: !163, line: 41, baseType: !2017, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!602}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2013, file: !163, line: 42, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!32}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2013, file: !163, line: 43, baseType: !2025, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!1533, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !163, line: 19, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2013, file: !163, line: 44, baseType: !2031, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!1533}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2013, file: !163, line: 45, baseType: !943, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1220, file: !1167, line: 121, baseType: !2036, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!1533, !1190}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1220, file: !1167, line: 122, baseType: !2040, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !1190, !799, !800}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1166, file: !1167, line: 70, baseType: !2044, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2046, line: 190, size: 1152, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2169, !2170, !2171, !2172, !2173, !2176}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2045, file: !2046, line: 191, baseType: !61, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2045, file: !2046, line: 192, baseType: !61, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2045, file: !2046, line: 202, baseType: !2044, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2045, file: !2046, line: 203, baseType: !29, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2045, file: !2046, line: 205, baseType: !533, size: 192, align: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2045, file: !2046, line: 207, baseType: !1533, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2045, file: !2046, line: 208, baseType: !17, size: 32, offset: 448)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !2046, line: 209, baseType: !2056, size: 256, offset: 512)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2045, file: !2046, line: 209, size: 256, elements: !2057)
!2057 = !{!2058, !2067, !2071}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2056, file: !2046, line: 210, baseType: !2059, size: 256)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2046, line: 153, size: 256, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2066}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2059, file: !2046, line: 154, baseType: !51, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2059, file: !2046, line: 156, baseType: !816, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2059, file: !2046, line: 162, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2046, line: 162, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2059, file: !2046, line: 167, baseType: !51, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2056, file: !2046, line: 211, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2046, line: 170, size: 64, elements: !2069)
!2069 = !{!2070}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2068, file: !2046, line: 171, baseType: !2044, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2056, file: !2046, line: 212, baseType: !2072, size: 256)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2046, line: 174, size: 256, elements: !2073)
!2073 = !{!2074, !2164, !2167, !2168}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2072, file: !2046, line: 175, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2077)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2046, line: 271, size: 768, elements: !2078)
!2078 = !{!2079, !2137, !2141, !2142, !2143, !2144, !2145, !2149, !2150, !2151, !2152, !2160}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2077, file: !2046, line: 276, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!34, !2083}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2046, line: 251, size: 1216, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2084, file: !2046, line: 253, baseType: !2044, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2084, file: !2046, line: 254, baseType: !357, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2084, file: !2046, line: 255, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2091, line: 17, size: 960, elements: !2092)
!2091 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2122, !2123, !2126}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2090, file: !2091, line: 18, baseType: !613, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2090, file: !2091, line: 19, baseType: !47, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2090, file: !2091, line: 20, baseType: !47, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2090, file: !2091, line: 21, baseType: !47, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2090, file: !2091, line: 22, baseType: !47, size: 64, offset: 256)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2090, file: !2091, line: 23, baseType: !53, size: 64, offset: 320)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2090, file: !2091, line: 24, baseType: !53, size: 64, offset: 384)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2090, file: !2091, line: 25, baseType: !392, size: 256, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2090, file: !2091, line: 26, baseType: !2102, size: 64, offset: 704)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2091, line: 32, size: 256, elements: !2105)
!2105 = !{!2106, !2110, !2114, !2118}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2104, file: !2091, line: 33, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!32, !2089, !52}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2104, file: !2091, line: 34, baseType: !2111, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2089, !32}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2104, file: !2091, line: 35, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!32, !2089, !32, !52}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2104, file: !2091, line: 36, baseType: !2119, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!34, !2089, !32}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2090, file: !2091, line: 27, baseType: !34, size: 32, offset: 768)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2090, file: !2091, line: 28, baseType: !2124, size: 64, offset: 832)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2090, file: !2091, line: 29, baseType: !32, size: 64, offset: 896)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2084, file: !2046, line: 256, baseType: !32, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2084, file: !2046, line: 259, baseType: !392, size: 256, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2084, file: !2046, line: 260, baseType: !392, size: 256, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2084, file: !2046, line: 261, baseType: !34, size: 32, offset: 768)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2084, file: !2046, line: 262, baseType: !109, size: 128, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2084, file: !2046, line: 263, baseType: !613, size: 64, offset: 960)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2084, file: !2046, line: 265, baseType: !47, size: 64, offset: 1024)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2084, file: !2046, line: 266, baseType: !602, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2084, file: !2046, line: 267, baseType: !602, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2084, file: !2046, line: 268, baseType: !1604, size: 64, offset: 1152)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2077, file: !2046, line: 277, baseType: !2138, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2083}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2077, file: !2046, line: 290, baseType: !2119, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2077, file: !2046, line: 292, baseType: !2107, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2077, file: !2046, line: 293, baseType: !2115, size: 64, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2077, file: !2046, line: 294, baseType: !2111, size: 64, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2077, file: !2046, line: 296, baseType: !2146, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!1064, !2083, !613, !47, !53}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2077, file: !2046, line: 306, baseType: !47, size: 64, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2077, file: !2046, line: 313, baseType: !602, size: 8, offset: 512)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2077, file: !2046, line: 314, baseType: !2146, size: 64, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2077, file: !2046, line: 317, baseType: !2153, size: 64, offset: 640)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!2156, !2083, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2157, line: 59, baseType: !17)
!2157 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !169, line: 61, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2077, file: !2046, line: 320, baseType: !2161, size: 64, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!34, !2083, !1404}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2072, file: !2046, line: 176, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2046, line: 35, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2072, file: !2046, line: 177, baseType: !53, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2072, file: !2046, line: 178, baseType: !2044, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2045, file: !2046, line: 215, baseType: !32, size: 64, offset: 768)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2045, file: !2046, line: 221, baseType: !509, size: 64, offset: 832)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2045, file: !2046, line: 223, baseType: !38, size: 16, offset: 896)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2045, file: !2046, line: 224, baseType: !36, size: 16, offset: 912)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2045, file: !2046, line: 225, baseType: !2174, size: 64, offset: 960)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2046, line: 36, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2045, file: !2046, line: 227, baseType: !370, size: 128, align: 64, offset: 1024)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1166, file: !1167, line: 71, baseType: !2178, size: 32, offset: 448)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2179, line: 19, size: 32, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2178, file: !2179, line: 20, baseType: !437, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1166, file: !1167, line: 73, baseType: !17, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1166, file: !1167, line: 74, baseType: !17, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1166, file: !1167, line: 75, baseType: !17, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1166, file: !1167, line: 76, baseType: !17, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1166, file: !1167, line: 77, baseType: !17, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1163, file: !120, line: 47, baseType: !1153, size: 64, offset: 512)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1163, file: !120, line: 48, baseType: !1172, size: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1163, file: !120, line: 49, baseType: !2190, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !120, line: 49, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1163, file: !120, line: 50, baseType: !773, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1154, file: !120, line: 418, baseType: !2194, size: 64, offset: 1408)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !120, line: 53, size: 448, elements: !2196)
!2196 = !{!2197, !2198, !2203, !2207, !2211, !2215}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2195, file: !120, line: 54, baseType: !1237, size: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2195, file: !120, line: 55, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!1064, !2194, !2202, !613}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2195, file: !120, line: 57, baseType: !2204, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!1064, !2194, !2202, !29, !47}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2195, file: !120, line: 59, baseType: !2208, size: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !1153, !29}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2195, file: !120, line: 60, baseType: !2212, size: 64, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!34, !1153}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2195, file: !120, line: 61, baseType: !2216, size: 64, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !1153}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1154, file: !120, line: 419, baseType: !29, size: 64, offset: 1472)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1154, file: !120, line: 420, baseType: !29, size: 64, offset: 1536)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1154, file: !120, line: 421, baseType: !1172, size: 64, offset: 1600)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1154, file: !120, line: 424, baseType: !2223, size: 64, offset: 1664)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !120, line: 424, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1154, file: !120, line: 425, baseType: !2227, size: 64, offset: 1728)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1154, file: !120, line: 426, baseType: !17, size: 32, offset: 1792)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1154, file: !120, line: 435, baseType: !392, size: 256, offset: 1856)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1154, file: !120, line: 437, baseType: !2232, size: 64, offset: 2112)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2234, line: 69, size: 320, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2235 = !{!2236, !2237, !2238, !2255, !2257, !2261, !2262}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2233, file: !2234, line: 70, baseType: !29, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2233, file: !2234, line: 71, baseType: !1153, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2233, file: !2234, line: 72, baseType: !2239, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2241)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2234, line: 47, size: 256, elements: !2242)
!2242 = !{!2243, !2244, !2250, !2254}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2241, file: !2234, line: 49, baseType: !17, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2241, file: !2234, line: 51, baseType: !2245, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!34, !29, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2233)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2241, file: !2234, line: 53, baseType: !2251, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!34, !613, !2248}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2241, file: !2234, line: 55, baseType: !943, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2233, file: !2234, line: 73, baseType: !2256, size: 16, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2233, file: !2234, line: 74, baseType: !2258, size: 8, offset: 208)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !2260)
!2260 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2233, file: !2234, line: 75, baseType: !95, size: 8, offset: 216)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !2234, line: 76, baseType: !2263, size: 64, offset: 256)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2233, file: !2234, line: 76, size: 64, elements: !2264)
!2264 = !{!2265, !2266, !2273}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2263, file: !2234, line: 77, baseType: !32, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2263, file: !2234, line: 78, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2234, line: 86, size: 128, elements: !2270)
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2269, file: !2234, line: 87, baseType: !17, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2269, file: !2234, line: 88, baseType: !613, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2263, file: !2234, line: 79, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2234, line: 92, size: 256, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2282, !2283}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2276, file: !2234, line: 94, baseType: !17, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2276, file: !2234, line: 95, baseType: !17, size: 32, offset: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2276, file: !2234, line: 96, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2276, file: !2234, line: 97, baseType: !2239, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2276, file: !2234, line: 98, baseType: !32, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1154, file: !120, line: 438, baseType: !17, size: 32, offset: 2176)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1154, file: !120, line: 441, baseType: !17, size: 32, offset: 2208)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1154, file: !120, line: 442, baseType: !2223, size: 64, offset: 2240)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1154, file: !120, line: 443, baseType: !2227, size: 64, offset: 2304)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1154, file: !120, line: 444, baseType: !602, size: 8, offset: 2368)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1154, file: !120, line: 451, baseType: !602, size: 8, offset: 2376)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1154, file: !120, line: 454, baseType: !17, size: 32, offset: 2400)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1154, file: !120, line: 455, baseType: !2292, size: 64, offset: 2432)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2294, line: 23, size: 96, elements: !2295)
!2294 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2293, file: !2294, line: 24, baseType: !34, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2293, file: !2294, line: 24, baseType: !34, size: 32, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2293, file: !2294, line: 24, baseType: !34, size: 32, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1154, file: !120, line: 458, baseType: !2300, size: 64, offset: 2496)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!34}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1154, file: !120, line: 460, baseType: !2304, size: 4032, align: 512, offset: 2560)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2305, size: 4032, elements: !2321)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !120, line: 362, size: 576, elements: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2305, file: !120, line: 363, baseType: !32, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2305, file: !120, line: 364, baseType: !17, size: 32, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2305, file: !120, line: 367, baseType: !2310, size: 448, offset: 128)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !120, line: 319, size: 448, elements: !2311)
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2310, file: !120, line: 320, baseType: !1153, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2310, file: !120, line: 321, baseType: !2314, size: 384, offset: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2315, line: 40, size: 384, elements: !2316)
!2315 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2316 = !{!2317}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2314, file: !2315, line: 41, baseType: !2318, size: 384, align: 64)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 384, align: 64, elements: !2319)
!2319 = !{!2320}
!2320 = !DISubrange(count: 2)
!2321 = !{!2322}
!2322 = !DISubrange(count: 7)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1154, file: !120, line: 463, baseType: !2324, size: 192, offset: 6592)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2325, line: 8, size: 192, elements: !2326)
!2325 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2326 = !{!2327, !2328, !2330}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2324, file: !2325, line: 10, baseType: !17, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2324, file: !2325, line: 11, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2324, file: !2325, line: 12, baseType: !2331, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2333, line: 59, size: 48, elements: !2334)
!2333 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2332, file: !2333, line: 60, baseType: !1550, size: 16)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2332, file: !2333, line: 61, baseType: !1550, size: 16, offset: 16)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2332, file: !2333, line: 63, baseType: !17, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2332, file: !2333, line: 64, baseType: !17, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2332, file: !2333, line: 65, baseType: !17, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2332, file: !2333, line: 66, baseType: !17, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1154, file: !120, line: 465, baseType: !51, size: 64, offset: 6784)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1154, file: !120, line: 469, baseType: !17, size: 32, offset: 6848)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1154, file: !120, line: 470, baseType: !109, size: 128, offset: 6912)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1154, file: !120, line: 471, baseType: !2345, size: 64, offset: 7040)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2347, line: 33, size: 96, elements: !2348)
!2347 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2346, file: !2347, line: 37, baseType: !34, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2346, file: !2347, line: 43, baseType: !34, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2346, file: !2347, line: 45, baseType: !38, size: 16, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2346, file: !2347, line: 47, baseType: !38, size: 16, offset: 80)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1154, file: !120, line: 476, baseType: !2354, size: 64, offset: 7104)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !120, line: 378, size: 256, elements: !2356)
!2356 = !{!2357, !2373, !2374, !2375}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2355, file: !120, line: 379, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2360, line: 204, baseType: !2361)
!2360 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2360, line: 197, size: 192, elements: !2362)
!2362 = !{!2363, !2365, !2366, !2367, !2369, !2371}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2361, file: !2360, line: 198, baseType: !2364, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2360, line: 21, baseType: !567)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2361, file: !2360, line: 199, baseType: !99, size: 8, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2361, file: !2360, line: 200, baseType: !99, size: 8, offset: 40)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2361, file: !2360, line: 201, baseType: !2368, size: 16, offset: 48)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2360, line: 17, baseType: !106)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2361, file: !2360, line: 202, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2360, line: 16, baseType: !510)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2361, file: !2360, line: 203, baseType: !2372, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2360, line: 22, baseType: !510)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2355, file: !120, line: 380, baseType: !17, size: 32, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2355, file: !120, line: 381, baseType: !613, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2355, file: !120, line: 382, baseType: !613, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1154, file: !120, line: 477, baseType: !2355, size: 256, offset: 7168)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1154, file: !120, line: 480, baseType: !2378, size: 64, offset: 7424)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !120, line: 480, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1154, file: !120, line: 483, baseType: !2381, size: 64, offset: 7488)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !120, line: 483, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1154, file: !120, line: 488, baseType: !613, size: 64, offset: 7552)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1154, file: !120, line: 492, baseType: !32, size: 64, offset: 7616)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1154, file: !120, line: 493, baseType: !17, size: 32, offset: 7680)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1154, file: !120, line: 495, baseType: !32, size: 64, offset: 7744)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1154, file: !120, line: 496, baseType: !17, size: 32, offset: 7808)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1154, file: !120, line: 499, baseType: !17, size: 32, offset: 7840)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1154, file: !120, line: 500, baseType: !2390, size: 64, offset: 7872)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2392, line: 45, baseType: !2393)
!2392 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1154, file: !120, line: 503, baseType: !17, size: 32, offset: 7936)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1154, file: !120, line: 504, baseType: !2396, size: 64, offset: 8000)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2399, line: 96, size: 192, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2400 = !{!2401, !2402, !2455, !2458}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2398, file: !2399, line: 97, baseType: !17, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2398, file: !2399, line: 98, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2399, line: 24, size: 3072, elements: !2405)
!2405 = !{!2406, !2408, !2409, !2410, !2411, !2424, !2425, !2426, !2427, !2439, !2440, !2441, !2452, !2453, !2454}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2404, file: !2399, line: 26, baseType: !2407, size: 128)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 128, elements: !2319)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2404, file: !2399, line: 27, baseType: !2407, size: 128, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2404, file: !2399, line: 28, baseType: !34, size: 32, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2404, file: !2399, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2404, file: !2399, line: 32, baseType: !2412, size: 960, offset: 576)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2413, line: 206, size: 960, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2414 = !{!2415, !2416, !2419, !2421, !2422, !2423}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2412, file: !2413, line: 207, baseType: !373, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2412, file: !2413, line: 208, baseType: !2417, size: 256, offset: 64)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, size: 256, elements: !455)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2412, file: !2413, line: 209, baseType: !2420, size: 256, offset: 320)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !455)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2412, file: !2413, line: 213, baseType: !836, size: 64, offset: 576)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2412, file: !2413, line: 215, baseType: !838, size: 256, offset: 640)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2412, file: !2413, line: 216, baseType: !95, size: 8, offset: 896)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2404, file: !2399, line: 33, baseType: !51, size: 64, offset: 1536)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2404, file: !2399, line: 34, baseType: !51, size: 64, offset: 1600)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2404, file: !2399, line: 35, baseType: !602, size: 8, offset: 1664)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2404, file: !2399, line: 36, baseType: !2428, size: 320, offset: 1728)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2429, line: 11, size: 320, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2430 = !{!2431, !2432, !2433, !2438}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2428, file: !2429, line: 16, baseType: !450, size: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2428, file: !2429, line: 17, baseType: !51, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2428, file: !2429, line: 18, baseType: !2434, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !2429, line: 19, baseType: !566, size: 32, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2404, file: !2399, line: 37, baseType: !735, size: 256, offset: 2048)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2404, file: !2399, line: 38, baseType: !370, size: 128, align: 64, offset: 2304)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2404, file: !2399, line: 39, baseType: !2442, size: 64, offset: 2432)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2399, line: 49, size: 768, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2443, file: !2399, line: 50, baseType: !71, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2443, file: !2399, line: 51, baseType: !2420, size: 256, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2443, file: !2399, line: 53, baseType: !2420, size: 256, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2443, file: !2399, line: 54, baseType: !51, size: 64, offset: 576)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2443, file: !2399, line: 55, baseType: !2442, size: 64, offset: 640)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2443, file: !2399, line: 56, baseType: !34, size: 32, offset: 704)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2443, file: !2399, line: 57, baseType: !34, size: 32, offset: 736)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2404, file: !2399, line: 40, baseType: !51, size: 64, offset: 2496)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2404, file: !2399, line: 42, baseType: !34, size: 32, offset: 2560)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2404, file: !2399, line: 43, baseType: !2397, size: 64, offset: 2624)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2398, file: !2399, line: 99, baseType: !2456, offset: 128)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2457, line: 211, elements: !1438)
!2457 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2398, file: !2399, line: 100, baseType: !2459, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2399, line: 63, size: 3008, elements: !2461)
!2461 = !{!2462, !2463, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2493}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2460, file: !2399, line: 64, baseType: !2442, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2460, file: !2399, line: 65, baseType: !2464, size: 192, offset: 64)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2442, size: 192, elements: !429)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2460, file: !2399, line: 67, baseType: !34, size: 32, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2460, file: !2399, line: 68, baseType: !392, size: 256, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2460, file: !2399, line: 69, baseType: !71, size: 32, offset: 576)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2460, file: !2399, line: 70, baseType: !392, size: 256, offset: 640)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2460, file: !2399, line: 71, baseType: !51, size: 64, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2460, file: !2399, line: 72, baseType: !51, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2460, file: !2399, line: 73, baseType: !51, size: 64, offset: 1024)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2460, file: !2399, line: 74, baseType: !51, size: 64, offset: 1088)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2460, file: !2399, line: 75, baseType: !51, size: 64, offset: 1152)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2460, file: !2399, line: 76, baseType: !51, size: 64, offset: 1216)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2460, file: !2399, line: 77, baseType: !51, size: 64, offset: 1280)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2460, file: !2399, line: 78, baseType: !51, size: 64, offset: 1344)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2460, file: !2399, line: 79, baseType: !602, size: 8, offset: 1408)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2460, file: !2399, line: 80, baseType: !51, size: 64, offset: 1472)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2460, file: !2399, line: 81, baseType: !392, size: 256, offset: 1536)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2460, file: !2399, line: 82, baseType: !774, size: 256, offset: 1792)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2460, file: !2399, line: 84, baseType: !61, size: 32, offset: 2048)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2460, file: !2399, line: 87, baseType: !51, size: 64, offset: 2112)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2460, file: !2399, line: 88, baseType: !51, size: 64, offset: 2176)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2460, file: !2399, line: 89, baseType: !2485, size: 704, offset: 2240)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !736, line: 111, size: 704, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2492}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2485, file: !736, line: 112, baseType: !735, size: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2485, file: !736, line: 113, baseType: !2428, size: 320, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2485, file: !736, line: 116, baseType: !2490, size: 64, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !736, line: 18, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2485, file: !736, line: 117, baseType: !34, size: 32, offset: 640)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2460, file: !2399, line: 90, baseType: !2397, size: 64, offset: 2944)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1154, file: !120, line: 515, baseType: !2495, size: 64, offset: 8064)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2497, line: 117, size: 128, elements: !2498)
!2497 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2498 = !{!2499, !2500, !2501}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2496, file: !2497, line: 118, baseType: !526, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2496, file: !2497, line: 119, baseType: !526, size: 32, offset: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2496, file: !2497, line: 120, baseType: !836, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1154, file: !120, line: 516, baseType: !17, size: 32, offset: 8128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1154, file: !120, line: 519, baseType: !17, size: 32, offset: 8160)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1154, file: !120, line: 520, baseType: !2505, size: 64, offset: 8192)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1154, file: !120, line: 523, baseType: !2507, size: 64, offset: 8256)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !120, line: 523, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1154, file: !120, line: 524, baseType: !17, size: 32, offset: 8320)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1154, file: !120, line: 525, baseType: !2512, size: 64, offset: 8384)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2515, line: 28, size: 192, elements: !2516)
!2515 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2516 = !{!2517, !2518, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2514, file: !2515, line: 29, baseType: !29, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2514, file: !2515, line: 30, baseType: !29, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2514, file: !2515, line: 31, baseType: !51, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1154, file: !120, line: 526, baseType: !17, size: 32, offset: 8448)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1154, file: !120, line: 533, baseType: !32, size: 64, offset: 8512)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1154, file: !120, line: 534, baseType: !17, size: 32, offset: 8576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1154, file: !120, line: 535, baseType: !2524, size: 64, offset: 8640)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1154, file: !120, line: 536, baseType: !17, size: 32, offset: 8704)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1154, file: !120, line: 539, baseType: !34, size: 32, offset: 8736)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1154, file: !120, line: 540, baseType: !2528, size: 64, offset: 8768)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2530, line: 32, size: 64, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2529, file: !2530, line: 33, baseType: !526, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2529, file: !2530, line: 34, baseType: !526, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1154, file: !120, line: 563, baseType: !109, size: 128, offset: 8832)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1154, file: !120, line: 565, baseType: !109, size: 128, offset: 8960)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1154, file: !120, line: 568, baseType: !2537, size: 64, offset: 9088)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1154, file: !120, line: 570, baseType: !61, size: 32, offset: 9152)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1130, file: !169, line: 2382, baseType: !1129, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1130, file: !169, line: 2383, baseType: !446, size: 64, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1130, file: !169, line: 2385, baseType: !2544, offset: 576)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2457, line: 206, elements: !1438)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1130, file: !169, line: 2386, baseType: !2544, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1130, file: !169, line: 2387, baseType: !2544, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1130, file: !169, line: 2388, baseType: !2548, offset: 576)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2544, elements: !429)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1130, file: !169, line: 2390, baseType: !2544, offset: 576)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1130, file: !169, line: 2391, baseType: !2544, offset: 576)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1130, file: !169, line: 2392, baseType: !2544, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1130, file: !169, line: 2393, baseType: !2544, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1121, file: !169, line: 1197, baseType: !2554, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2556)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !169, line: 2057, size: 1664, elements: !2557)
!2557 = !{!2558, !2562, !2566, !2567, !2571, !2575, !2579, !2580, !2581, !2585, !2589, !2593, !2594, !2595, !2601, !2605, !2606, !2610, !2611, !2612, !2613, !2617, !2621, !2668, !2683, !2684}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2556, file: !169, line: 2058, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!912, !1120}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2556, file: !169, line: 2059, baseType: !2563, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{null, !912}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2556, file: !169, line: 2060, baseType: !2563, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2556, file: !169, line: 2062, baseType: !2568, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !912, !34}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2556, file: !169, line: 2063, baseType: !2572, size: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!34, !912, !1736}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2556, file: !169, line: 2064, baseType: !2576, size: 64, offset: 320)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!34, !912}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2556, file: !169, line: 2065, baseType: !2563, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2556, file: !169, line: 2066, baseType: !1149, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2556, file: !169, line: 2067, baseType: !2582, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!34, !1120, !34}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2556, file: !169, line: 2068, baseType: !2586, size: 64, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!34, !1120, !168}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2556, file: !169, line: 2069, baseType: !2590, size: 64, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!34, !1120}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2556, file: !169, line: 2070, baseType: !2586, size: 64, offset: 704)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2556, file: !169, line: 2071, baseType: !2590, size: 64, offset: 768)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2556, file: !169, line: 2072, baseType: !2596, size: 64, offset: 832)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!34, !872, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !169, line: 62, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2556, file: !169, line: 2073, baseType: !2602, size: 64, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!34, !1120, !2329, !613}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2556, file: !169, line: 2074, baseType: !1149, size: 64, offset: 960)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2556, file: !169, line: 2076, baseType: !2607, size: 64, offset: 1024)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!34, !2089, !872}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2556, file: !169, line: 2077, baseType: !2607, size: 64, offset: 1088)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2556, file: !169, line: 2078, baseType: !2607, size: 64, offset: 1152)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2556, file: !169, line: 2079, baseType: !2607, size: 64, offset: 1216)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2556, file: !169, line: 2081, baseType: !2614, size: 64, offset: 1280)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!1064, !1120, !34, !613, !47, !53}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2556, file: !169, line: 2082, baseType: !2618, size: 64, offset: 1344)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!1064, !1120, !34, !29, !47, !53}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2556, file: !169, line: 2083, baseType: !2622, size: 64, offset: 1408)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!2625, !912}
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !174, line: 296, size: 1664, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2653, !2654, !2655}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2627, file: !174, line: 297, baseType: !450, size: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2627, file: !174, line: 298, baseType: !109, size: 128, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2627, file: !174, line: 299, baseType: !109, size: 128, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2627, file: !174, line: 300, baseType: !109, size: 128, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2627, file: !174, line: 301, baseType: !392, size: 256, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2627, file: !174, line: 302, baseType: !71, size: 32, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2627, file: !174, line: 303, baseType: !61, size: 32, offset: 800)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2627, file: !174, line: 304, baseType: !1120, size: 64, offset: 832)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2627, file: !174, line: 305, baseType: !2638, size: 64, offset: 896)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !174, line: 68, size: 64, elements: !2639)
!2639 = !{!2640, !2652}
!2640 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !174, line: 69, baseType: !2641, size: 32)
!2641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2638, file: !174, line: 69, size: 32, elements: !2642)
!2642 = !{!2643, !2644, !2645}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2641, file: !174, line: 70, baseType: !472, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2641, file: !174, line: 71, baseType: !490, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2641, file: !174, line: 72, baseType: !2646, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2647, line: 24, baseType: !2648)
!2647 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2647, line: 22, size: 32, elements: !2649)
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2648, file: !2647, line: 23, baseType: !2651, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2647, line: 20, baseType: !478)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2638, file: !174, line: 74, baseType: !173, size: 32, offset: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2627, file: !174, line: 306, baseType: !53, size: 64, offset: 960)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2627, file: !174, line: 307, baseType: !51, size: 64, offset: 1024)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2627, file: !174, line: 308, baseType: !2656, size: 576, offset: 1088)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !174, line: 205, size: 576, elements: !2657)
!2657 = !{!2658, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2656, file: !174, line: 206, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !174, line: 66, baseType: !55)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2656, file: !174, line: 207, baseType: !2659, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2656, file: !174, line: 208, baseType: !2659, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2656, file: !174, line: 209, baseType: !2659, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2656, file: !174, line: 210, baseType: !2659, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2656, file: !174, line: 211, baseType: !2659, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2656, file: !174, line: 212, baseType: !2659, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2656, file: !174, line: 213, baseType: !557, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2656, file: !174, line: 214, baseType: !557, size: 64, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2556, file: !169, line: 2085, baseType: !2669, size: 64, offset: 1472)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!836, !1120, !2672}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2674, line: 15, size: 256, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2675 = !{!2676, !2677, !2678, !2679, !2680}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2673, file: !2674, line: 16, baseType: !1116, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2673, file: !2674, line: 19, baseType: !34, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2673, file: !2674, line: 26, baseType: !51, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2673, file: !2674, line: 33, baseType: !51, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2673, file: !2674, line: 36, baseType: !2681, size: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2674, line: 36, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2556, file: !169, line: 2087, baseType: !2669, size: 64, offset: 1536)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2556, file: !169, line: 2089, baseType: !1149, size: 64, offset: 1600)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1121, file: !169, line: 1198, baseType: !2686, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !174, line: 324, size: 704, elements: !2689)
!2689 = !{!2690, !2694, !2698, !2702, !2703, !2704, !2705, !2706, !2711, !2716, !2720}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2688, file: !174, line: 325, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!34, !2626}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2688, file: !174, line: 326, baseType: !2695, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2626, !1120, !34}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2688, file: !174, line: 327, baseType: !2699, size: 64, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{null, !2626}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2688, file: !174, line: 328, baseType: !2691, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2688, file: !174, line: 329, baseType: !2691, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2688, file: !174, line: 330, baseType: !2691, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2688, file: !174, line: 331, baseType: !2582, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2688, file: !174, line: 334, baseType: !2707, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!2710, !912}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2688, file: !174, line: 335, baseType: !2712, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!34, !912, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2688, file: !174, line: 337, baseType: !2717, size: 64, offset: 576)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!34, !912, !2710}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2688, file: !174, line: 339, baseType: !2721, size: 64, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!34, !1120, !2724}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1121, file: !169, line: 1199, baseType: !2726, size: 64, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2728)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !174, line: 430, size: 704, elements: !2729)
!2729 = !{!2730, !2734, !2735, !2739, !2740, !2741, !2756, !2779, !2783, !2784, !2807}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2728, file: !174, line: 431, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!34, !1120, !34, !34, !1033}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2728, file: !174, line: 432, baseType: !2582, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2728, file: !174, line: 433, baseType: !2736, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!34, !1120, !17}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2728, file: !174, line: 434, baseType: !2736, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2728, file: !174, line: 435, baseType: !2582, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2728, file: !174, line: 436, baseType: !2742, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!34, !1120, !34, !2745}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !174, line: 417, size: 256, elements: !2747)
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2746, file: !174, line: 418, baseType: !34, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2746, file: !174, line: 419, baseType: !17, size: 32, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2746, file: !174, line: 420, baseType: !17, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2746, file: !174, line: 422, baseType: !17, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2746, file: !174, line: 423, baseType: !17, size: 32, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2746, file: !174, line: 424, baseType: !17, size: 32, offset: 160)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2746, file: !174, line: 425, baseType: !17, size: 32, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2746, file: !174, line: 426, baseType: !17, size: 32, offset: 224)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2728, file: !174, line: 437, baseType: !2757, size: 64, offset: 384)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!34, !1120, !2638, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !174, line: 345, size: 960, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2761, file: !174, line: 346, baseType: !34, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2761, file: !174, line: 347, baseType: !509, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2761, file: !174, line: 348, baseType: !509, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2761, file: !174, line: 349, baseType: !509, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2761, file: !174, line: 350, baseType: !509, size: 64, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2761, file: !174, line: 351, baseType: !509, size: 64, offset: 320)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2761, file: !174, line: 352, baseType: !509, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2761, file: !174, line: 353, baseType: !389, size: 64, offset: 448)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2761, file: !174, line: 355, baseType: !389, size: 64, offset: 512)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2761, file: !174, line: 356, baseType: !34, size: 32, offset: 576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2761, file: !174, line: 357, baseType: !34, size: 32, offset: 608)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2761, file: !174, line: 358, baseType: !509, size: 64, offset: 640)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2761, file: !174, line: 359, baseType: !509, size: 64, offset: 704)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2761, file: !174, line: 360, baseType: !509, size: 64, offset: 768)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2761, file: !174, line: 361, baseType: !389, size: 64, offset: 832)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2761, file: !174, line: 362, baseType: !34, size: 32, offset: 896)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2728, file: !174, line: 438, baseType: !2780, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!34, !1120, !2724, !2760}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2728, file: !174, line: 440, baseType: !2757, size: 64, offset: 512)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2728, file: !174, line: 441, baseType: !2785, size: 64, offset: 576)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!34, !1120, !2788}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !174, line: 411, size: 1408, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2789, file: !174, line: 412, baseType: !17, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2789, file: !174, line: 413, baseType: !2793, size: 1344, offset: 64)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2794, size: 1344, elements: !429)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !174, line: 397, size: 448, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2806}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2794, file: !174, line: 398, baseType: !17, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2794, file: !174, line: 399, baseType: !17, size: 32, offset: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2794, file: !174, line: 401, baseType: !17, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2794, file: !174, line: 402, baseType: !17, size: 32, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2794, file: !174, line: 403, baseType: !17, size: 32, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2794, file: !174, line: 404, baseType: !17, size: 32, offset: 160)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2794, file: !174, line: 405, baseType: !17, size: 32, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2794, file: !174, line: 406, baseType: !511, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2794, file: !174, line: 407, baseType: !2805, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !509)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2794, file: !174, line: 408, baseType: !2805, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2728, file: !174, line: 442, baseType: !2736, size: 64, offset: 640)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1121, file: !169, line: 1200, baseType: !2809, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2811)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !169, line: 54, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1121, file: !169, line: 1201, baseType: !51, size: 64, offset: 640)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1121, file: !169, line: 1202, baseType: !51, size: 64, offset: 704)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1121, file: !169, line: 1203, baseType: !51, size: 64, offset: 768)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1121, file: !169, line: 1204, baseType: !872, size: 64, offset: 832)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1121, file: !169, line: 1205, baseType: !541, size: 320, offset: 896)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1121, file: !169, line: 1206, baseType: !34, size: 32, offset: 1216)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1121, file: !169, line: 1207, baseType: !61, size: 32, offset: 1248)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1121, file: !169, line: 1209, baseType: !32, size: 64, offset: 1280)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1121, file: !169, line: 1211, baseType: !2821, size: 64, offset: 1344)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2824)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !2825, line: 36, size: 384, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!2826 = !{!2827, !2828, !2829, !2830, !2834, !2838}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2824, file: !2825, line: 37, baseType: !29, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2824, file: !2825, line: 38, baseType: !29, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2824, file: !2825, line: 39, baseType: !34, size: 32, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2824, file: !2825, line: 40, baseType: !2831, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!602, !872}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2824, file: !2825, line: 41, baseType: !2835, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!34, !2822, !872, !912, !29, !32, !47}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2824, file: !2825, line: 44, baseType: !2839, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!34, !2822, !951, !872, !912, !29, !1533, !47, !34}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1121, file: !169, line: 1223, baseType: !2843, size: 64, offset: 1408)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !889, line: 34, size: 64, elements: !2844)
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2843, file: !889, line: 35, baseType: !892, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1121, file: !169, line: 1224, baseType: !109, size: 128, offset: 1472)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1121, file: !169, line: 1225, baseType: !2848, size: 64, offset: 1600)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2850, line: 40, size: 7424, elements: !2851)
!2850 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2851 = !{!2852, !2853, !2854, !3689, !3690, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3733, !3734}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2849, file: !2850, line: 41, baseType: !1854, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2849, file: !2850, line: 42, baseType: !1854, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2849, file: !2850, line: 43, baseType: !2855, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !180, line: 128, size: 4544, elements: !2857)
!2857 = !{!2858, !2859, !2860, !2861, !2865, !2866, !2867, !2868, !2869, !3059, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3655, !3656, !3657, !3658, !3661, !3662, !3665, !3668, !3669, !3672, !3673, !3674, !3675}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2856, file: !180, line: 133, baseType: !34, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2856, file: !180, line: 134, baseType: !34, size: 32, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2856, file: !180, line: 135, baseType: !34, size: 32, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2856, file: !180, line: 137, baseType: !2862, size: 256, offset: 96)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2863)
!2863 = !{!2864}
!2864 = !DISubrange(count: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2856, file: !180, line: 139, baseType: !38, size: 16, offset: 352)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2856, file: !180, line: 140, baseType: !38, size: 16, offset: 368)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2856, file: !180, line: 142, baseType: !1111, size: 128, offset: 384)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2856, file: !180, line: 143, baseType: !2848, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2856, file: !180, line: 145, baseType: !2870, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2872)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !180, line: 1388, size: 1152, elements: !2873)
!2873 = !{!2874, !2965, !2980, !2985, !2989, !2993, !2994, !2998, !2999, !3005, !3009, !3010, !3014, !3040, !3045, !3050, !3051, !3055}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2872, file: !180, line: 1389, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2850, line: 265, size: 960, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2885, !2886, !2887, !2889, !2890, !2897, !2899, !2902, !2903, !2906, !2910, !2911, !2913, !2914, !2915, !2916, !2918, !2963}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2879, file: !2850, line: 266, baseType: !2878, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2879, file: !2850, line: 267, baseType: !2848, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2879, file: !2850, line: 268, baseType: !2884, size: 32, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2850, line: 256, baseType: !567)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2879, file: !2850, line: 271, baseType: !38, size: 16, offset: 160)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2879, file: !2850, line: 272, baseType: !38, size: 16, offset: 176)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2879, file: !2850, line: 273, baseType: !2888, size: 8, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2850, line: 97, baseType: !95)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2879, file: !2850, line: 274, baseType: !61, size: 32, offset: 224)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2879, file: !2850, line: 276, baseType: !2891, size: 160, align: 32, offset: 256)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1936, line: 77, size: 160, align: 32, elements: !2892)
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2891, file: !1936, line: 78, baseType: !1854, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2891, file: !1936, line: 80, baseType: !17, size: 32, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2891, file: !1936, line: 82, baseType: !17, size: 32, offset: 96)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2891, file: !1936, line: 84, baseType: !17, size: 32, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2879, file: !2850, line: 278, baseType: !2898, size: 32, offset: 416)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2850, line: 258, baseType: !17)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2879, file: !2850, line: 279, baseType: !2900, size: 64, offset: 448)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2850, line: 20, baseType: !2876)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2879, file: !2850, line: 280, baseType: !32, size: 64, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2879, file: !2850, line: 288, baseType: !2904, size: 64, offset: 576)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2850, line: 288, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2879, file: !2850, line: 289, baseType: !2907, size: 64, offset: 640)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2850, line: 228, size: 64, elements: !2908)
!2908 = !{!2909}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2907, file: !2850, line: 229, baseType: !509, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2879, file: !2850, line: 291, baseType: !509, size: 64, offset: 704)
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2879, file: !2850, line: 299, baseType: !2912, offset: 768)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2879, file: !2850, line: 299, elements: !1438)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2879, file: !2850, line: 305, baseType: !38, size: 16, offset: 768)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2879, file: !2850, line: 311, baseType: !38, size: 16, offset: 784)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2879, file: !2850, line: 313, baseType: !61, size: 32, offset: 800)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2879, file: !2850, line: 315, baseType: !2917, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2879, file: !2850, line: 317, baseType: !2919, size: 64, offset: 896)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2921, line: 678, size: 1984, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2922 = !{!2923, !2927, !2928, !2931, !2952, !2953, !2954, !2955, !2960, !2961, !2962}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2920, file: !2921, line: 679, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2926, line: 325, flags: DIFlagFwdDecl)
!2926 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2920, file: !2921, line: 680, baseType: !17, size: 32, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2920, file: !2921, line: 685, baseType: !2929, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2921, line: 685, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2920, file: !2921, line: 687, baseType: !2932, size: 576, offset: 192)
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2933, line: 26, baseType: !2934)
!2933 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2933, line: 16, size: 576, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2946, !2951}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2934, file: !2933, line: 17, baseType: !71, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2934, file: !2933, line: 18, baseType: !34, size: 32, offset: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2934, file: !2933, line: 19, baseType: !34, size: 32, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2934, file: !2933, line: 20, baseType: !1845, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2934, file: !2933, line: 22, baseType: !32, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2934, file: !2933, line: 23, baseType: !2942, size: 64, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2933, line: 13, baseType: !2944)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!32, !1116, !32}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2934, file: !2933, line: 24, baseType: !2947, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2933, line: 14, baseType: !2949)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !32, !32}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2934, file: !2933, line: 25, baseType: !66, size: 192, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2920, file: !2921, line: 688, baseType: !2932, size: 576, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2920, file: !2921, line: 694, baseType: !17, size: 32, offset: 1344)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2920, file: !2921, line: 699, baseType: !71, size: 32, offset: 1376)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2920, file: !2921, line: 700, baseType: !2956, size: 128, offset: 1408)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2921, line: 550, size: 128, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2956, file: !2921, line: 551, baseType: !2878, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2956, file: !2921, line: 552, baseType: !2878, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2920, file: !2921, line: 701, baseType: !735, size: 256, offset: 1536)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2920, file: !2921, line: 702, baseType: !2490, size: 64, offset: 1792)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2920, file: !2921, line: 707, baseType: !450, size: 128, offset: 1856)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2879, file: !2850, line: 324, baseType: !2964, offset: 960)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1935, elements: !468)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2872, file: !180, line: 1390, baseType: !2966, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!34, !2878, !2969, !17}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !180, line: 1559, size: 192, elements: !2971)
!2971 = !{!2972, !2975, !2976}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2970, file: !180, line: 1560, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !180, line: 32, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2970, file: !180, line: 1561, baseType: !602, size: 8, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2970, file: !180, line: 1562, baseType: !2977, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !2969}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2872, file: !180, line: 1392, baseType: !2981, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!34, !2855, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !180, line: 115, baseType: !17)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2872, file: !180, line: 1393, baseType: !2986, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2855}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2872, file: !180, line: 1394, baseType: !2990, size: 64, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!34, !2848, !2984, !17, !51}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2872, file: !180, line: 1396, baseType: !2990, size: 64, offset: 320)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2872, file: !180, line: 1398, baseType: !2995, size: 64, offset: 384)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!17, !2855, !17}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2872, file: !180, line: 1400, baseType: !2986, size: 64, offset: 448)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2872, file: !180, line: 1401, baseType: !3000, size: 64, offset: 512)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!34, !2848, !3003}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !169, line: 56, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2872, file: !180, line: 1402, baseType: !3006, size: 64, offset: 576)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!34, !2848, !602}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2872, file: !180, line: 1403, baseType: !2986, size: 64, offset: 640)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2872, file: !180, line: 1405, baseType: !3011, size: 64, offset: 704)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2848, !51}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2872, file: !180, line: 1406, baseType: !3015, size: 64, offset: 768)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!34, !2855, !1854, !17, !3018, !32}
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !180, line: 342, baseType: !3019)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!34, !3022, !17, !32}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !3024, line: 106, size: 512, elements: !3025)
!3024 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3035, !3036}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3023, file: !3024, line: 107, baseType: !510, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3023, file: !3024, line: 108, baseType: !510, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !3023, file: !3024, line: 109, baseType: !510, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3023, file: !3024, line: 110, baseType: !97, size: 8, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !3023, file: !3024, line: 111, baseType: !97, size: 8, offset: 200)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !3023, file: !3024, line: 112, baseType: !97, size: 8, offset: 208)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !3023, file: !3024, line: 113, baseType: !97, size: 8, offset: 216)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3023, file: !3024, line: 114, baseType: !3034, size: 32, offset: 224)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 32, elements: !455)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !3023, file: !3024, line: 115, baseType: !510, size: 64, offset: 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3023, file: !3024, line: 116, baseType: !3037, size: 192, offset: 320)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 192, elements: !3038)
!3038 = !{!3039}
!3039 = !DISubrange(count: 24)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2872, file: !180, line: 1408, baseType: !3041, size: 64, offset: 832)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!613, !2855, !3044}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2872, file: !180, line: 1410, baseType: !3046, size: 64, offset: 896)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!34, !2855, !3049, !179}
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2872, file: !180, line: 1412, baseType: !1153, size: 64, offset: 960)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2872, file: !180, line: 1413, baseType: !3052, size: 64, offset: 1024)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3054)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !180, line: 37, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2872, file: !180, line: 1420, baseType: !3056, size: 64, offset: 1088)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!34, !2855, !1977}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2856, file: !180, line: 146, baseType: !3060, size: 64, offset: 640)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !180, line: 391, size: 7296, elements: !3062)
!3062 = !{!3063, !3064, !3067, !3068, !3071, !3074, !3075, !3079, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3520, !3521, !3525, !3526, !3527, !3528, !3561, !3562, !3563, !3566, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3585, !3586, !3587, !3588, !3589, !3590}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !3061, file: !180, line: 392, baseType: !2973, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !3061, file: !180, line: 393, baseType: !3065, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !180, line: 30, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !3061, file: !180, line: 395, baseType: !1358, size: 128, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3061, file: !180, line: 397, baseType: !3069, size: 64, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !180, line: 39, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !3061, file: !180, line: 398, baseType: !3072, size: 64, offset: 320)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !180, line: 38, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !3061, file: !180, line: 399, baseType: !392, size: 256, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !3061, file: !180, line: 401, baseType: !3076, size: 64, offset: 640)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3078)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !180, line: 401, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !3061, file: !180, line: 404, baseType: !3080, size: 64, offset: 704)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !180, line: 404, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !3061, file: !180, line: 406, baseType: !17, size: 32, offset: 768)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !3061, file: !180, line: 409, baseType: !1111, size: 128, offset: 832)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !3061, file: !180, line: 410, baseType: !17, size: 32, offset: 960)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !3061, file: !180, line: 416, baseType: !32, size: 64, offset: 1024)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !3061, file: !180, line: 421, baseType: !51, size: 64, offset: 1088)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !3061, file: !180, line: 426, baseType: !61, size: 32, offset: 1152)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3061, file: !180, line: 432, baseType: !34, size: 32, offset: 1184)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !3061, file: !180, line: 434, baseType: !71, size: 32, offset: 1216)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !3061, file: !180, line: 436, baseType: !2855, size: 64, offset: 1280)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !3061, file: !180, line: 438, baseType: !437, size: 32, offset: 1344)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !3061, file: !180, line: 443, baseType: !1172, size: 64, offset: 1408)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3061, file: !180, line: 450, baseType: !3094, size: 64, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !192, line: 705, size: 5824, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3102, !3103, !3155, !3225, !3226, !3227, !3228, !3229, !3236, !3396, !3409, !3419, !3423, !3425, !3426, !3427, !3431, !3438, !3439, !3442, !3445, !3449, !3452, !3453, !3454, !3455, !3456, !3457, !3487, !3488, !3489, !3492, !3495, !3504, !3505, !3506, !3507, !3508, !3509}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3095, file: !192, line: 706, baseType: !1166, size: 512)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3095, file: !192, line: 707, baseType: !3094, size: 64, offset: 512)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3095, file: !192, line: 709, baseType: !3100, size: 64, offset: 576)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !192, line: 37, flags: DIFlagFwdDecl)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3095, file: !192, line: 711, baseType: !29, size: 64, offset: 640)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3095, file: !192, line: 712, baseType: !3104, size: 64, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3106)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !192, line: 89, size: 384, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3116, !3120, !3124}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3106, file: !192, line: 90, baseType: !29, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3106, file: !192, line: 91, baseType: !1246, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3106, file: !192, line: 92, baseType: !3111, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!34, !3114, !1202}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3106, file: !192, line: 93, baseType: !3117, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!613, !3114, !3044, !799, !800}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3106, file: !192, line: 95, baseType: !3121, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !3094}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3106, file: !192, line: 97, baseType: !3125, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3127)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !204, line: 286, size: 1472, elements: !3128)
!3128 = !{!3129, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3127, file: !204, line: 287, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!34, !3094}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3127, file: !204, line: 288, baseType: !3121, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3127, file: !204, line: 289, baseType: !3130, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3127, file: !204, line: 290, baseType: !3130, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3127, file: !204, line: 291, baseType: !3130, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3127, file: !204, line: 292, baseType: !3130, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3127, file: !204, line: 293, baseType: !3130, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3127, file: !204, line: 294, baseType: !3130, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3127, file: !204, line: 295, baseType: !3130, size: 64, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3127, file: !204, line: 296, baseType: !3130, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3127, file: !204, line: 297, baseType: !3130, size: 64, offset: 640)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3127, file: !204, line: 298, baseType: !3130, size: 64, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3127, file: !204, line: 299, baseType: !3130, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3127, file: !204, line: 300, baseType: !3130, size: 64, offset: 832)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3127, file: !204, line: 301, baseType: !3130, size: 64, offset: 896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3127, file: !204, line: 302, baseType: !3130, size: 64, offset: 960)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3127, file: !204, line: 303, baseType: !3130, size: 64, offset: 1024)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3127, file: !204, line: 304, baseType: !3130, size: 64, offset: 1088)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3127, file: !204, line: 305, baseType: !3130, size: 64, offset: 1152)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3127, file: !204, line: 306, baseType: !3130, size: 64, offset: 1216)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3127, file: !204, line: 307, baseType: !3130, size: 64, offset: 1280)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3127, file: !204, line: 308, baseType: !3130, size: 64, offset: 1344)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3127, file: !204, line: 309, baseType: !3130, size: 64, offset: 1408)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3095, file: !192, line: 714, baseType: !3156, size: 64, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3158)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3159, line: 80, size: 1344, elements: !3160)
!3159 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3224}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3158, file: !3159, line: 81, baseType: !29, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3158, file: !3159, line: 82, baseType: !29, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3158, file: !3159, line: 83, baseType: !1246, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3158, file: !3159, line: 84, baseType: !1246, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3158, file: !3159, line: 85, baseType: !1246, size: 64, offset: 256)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3158, file: !3159, line: 87, baseType: !3167, size: 64, offset: 320)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!34, !3094, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !186, line: 96, size: 1152, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3183, !3187, !3188, !3189, !3190, !3191, !3199, !3200, !3201, !3202, !3203, !3204}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3171, file: !186, line: 97, baseType: !29, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3171, file: !186, line: 98, baseType: !3156, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3171, file: !186, line: 100, baseType: !1153, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3171, file: !186, line: 101, baseType: !29, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3171, file: !186, line: 103, baseType: !602, size: 8, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3171, file: !186, line: 104, baseType: !185, size: 32, offset: 288)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3171, file: !186, line: 106, baseType: !3180, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !186, line: 106, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3171, file: !186, line: 107, baseType: !3184, size: 64, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !186, line: 107, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3171, file: !186, line: 109, baseType: !3130, size: 64, offset: 448)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3171, file: !186, line: 110, baseType: !3121, size: 64, offset: 512)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3171, file: !186, line: 111, baseType: !3130, size: 64, offset: 576)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3171, file: !186, line: 112, baseType: !3121, size: 64, offset: 640)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3171, file: !186, line: 113, baseType: !3192, size: 64, offset: 704)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!34, !3094, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !204, line: 60, baseType: !3196)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !204, line: 58, size: 32, elements: !3197)
!3197 = !{!3198}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3196, file: !204, line: 59, baseType: !34, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3171, file: !186, line: 114, baseType: !3130, size: 64, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3171, file: !186, line: 115, baseType: !1246, size: 64, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3171, file: !186, line: 116, baseType: !1246, size: 64, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3171, file: !186, line: 118, baseType: !3125, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3171, file: !186, line: 119, baseType: !3121, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3171, file: !186, line: 121, baseType: !3205, size: 64, offset: 1088)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !186, line: 121, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3158, file: !3159, line: 88, baseType: !3111, size: 64, offset: 384)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3158, file: !3159, line: 89, baseType: !3130, size: 64, offset: 448)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3158, file: !3159, line: 90, baseType: !3121, size: 64, offset: 512)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3158, file: !3159, line: 91, baseType: !3121, size: 64, offset: 576)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3158, file: !3159, line: 92, baseType: !3121, size: 64, offset: 640)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3158, file: !3159, line: 94, baseType: !3130, size: 64, offset: 704)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3158, file: !3159, line: 95, baseType: !3130, size: 64, offset: 768)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3158, file: !3159, line: 97, baseType: !3192, size: 64, offset: 832)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3158, file: !3159, line: 98, baseType: !3130, size: 64, offset: 896)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3158, file: !3159, line: 100, baseType: !3130, size: 64, offset: 960)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3158, file: !3159, line: 102, baseType: !3130, size: 64, offset: 1024)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3158, file: !3159, line: 103, baseType: !3121, size: 64, offset: 1088)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3158, file: !3159, line: 105, baseType: !3125, size: 64, offset: 1152)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3158, file: !3159, line: 107, baseType: !3221, size: 64, offset: 1216)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3223)
!3223 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3159, line: 107, flags: DIFlagFwdDecl)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3158, file: !3159, line: 109, baseType: !602, size: 8, offset: 1280)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3095, file: !192, line: 715, baseType: !3170, size: 64, offset: 832)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3095, file: !192, line: 717, baseType: !32, size: 64, offset: 896)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3095, file: !192, line: 719, baseType: !32, size: 64, offset: 960)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3095, file: !192, line: 721, baseType: !392, size: 256, offset: 1024)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3095, file: !192, line: 725, baseType: !3230, size: 448, offset: 1280)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !192, line: 517, size: 448, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3235}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3230, file: !192, line: 518, baseType: !109, size: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3230, file: !192, line: 519, baseType: !109, size: 128, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3230, file: !192, line: 520, baseType: !109, size: 128, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3230, file: !192, line: 521, baseType: !191, size: 32, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3095, file: !192, line: 726, baseType: !3237, size: 2496, offset: 1728)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !204, line: 663, size: 2496, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3283, !3284, !3285, !3286, !3287, !3288, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3389, !3393}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3237, file: !204, line: 664, baseType: !3195, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3237, file: !204, line: 665, baseType: !17, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3237, file: !204, line: 666, baseType: !17, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3237, file: !204, line: 667, baseType: !602, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3237, file: !204, line: 668, baseType: !602, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3237, file: !204, line: 669, baseType: !602, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3237, file: !204, line: 670, baseType: !602, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3237, file: !204, line: 671, baseType: !602, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3237, file: !204, line: 672, baseType: !602, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3237, file: !204, line: 673, baseType: !602, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3237, file: !204, line: 674, baseType: !602, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3237, file: !204, line: 675, baseType: !566, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3237, file: !204, line: 676, baseType: !71, size: 32, offset: 96)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3237, file: !204, line: 678, baseType: !109, size: 128, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3237, file: !204, line: 679, baseType: !774, size: 256, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3237, file: !204, line: 680, baseType: !3255, size: 64, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3257, line: 43, size: 1536, elements: !3258)
!3257 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3266, !3267, !3268, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3256, file: !3257, line: 44, baseType: !29, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3256, file: !3257, line: 45, baseType: !34, size: 32, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3256, file: !3257, line: 46, baseType: !109, size: 128, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3256, file: !3257, line: 47, baseType: !71, size: 32, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3256, file: !3257, line: 48, baseType: !3264, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !204, line: 629, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3256, file: !3257, line: 49, baseType: !2428, size: 320, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3256, file: !3257, line: 50, baseType: !51, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3256, file: !3257, line: 51, baseType: !3269, size: 64, offset: 768)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3270, line: 29, baseType: !389)
!3270 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3256, file: !3257, line: 52, baseType: !3269, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3256, file: !3257, line: 53, baseType: !3269, size: 64, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3256, file: !3257, line: 54, baseType: !3269, size: 64, offset: 960)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3256, file: !3257, line: 55, baseType: !3269, size: 64, offset: 1024)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3256, file: !3257, line: 56, baseType: !51, size: 64, offset: 1088)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3256, file: !3257, line: 57, baseType: !51, size: 64, offset: 1152)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3256, file: !3257, line: 58, baseType: !51, size: 64, offset: 1216)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3256, file: !3257, line: 59, baseType: !51, size: 64, offset: 1280)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3256, file: !3257, line: 60, baseType: !51, size: 64, offset: 1344)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3256, file: !3257, line: 61, baseType: !3094, size: 64, offset: 1408)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3256, file: !3257, line: 62, baseType: !602, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3256, file: !3257, line: 63, baseType: !602, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3237, file: !204, line: 681, baseType: !602, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3237, file: !204, line: 682, baseType: !602, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3237, file: !204, line: 683, baseType: !602, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3237, file: !204, line: 684, baseType: !17, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3237, file: !204, line: 685, baseType: !17, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3237, file: !204, line: 690, baseType: !3289, size: 512, offset: 640)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !199, line: 118, size: 512, elements: !3290)
!3290 = !{!3291, !3297, !3298, !3303, !3351, !3352, !3353, !3354}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3289, file: !199, line: 119, baseType: !3292, size: 256)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3293, line: 9, size: 256, elements: !3294)
!3293 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3294 = !{!3295, !3296}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3292, file: !3293, line: 10, baseType: !533, size: 192, align: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3292, file: !3293, line: 11, baseType: !3269, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3289, file: !199, line: 120, baseType: !3269, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3289, file: !199, line: 121, baseType: !3299, size: 64, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!198, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3289, file: !199, line: 122, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !199, line: 159, size: 512, align: 512, elements: !3306)
!3306 = !{!3307, !3332, !3333, !3336, !3341, !3342, !3346, !3350}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3305, file: !199, line: 160, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !199, line: 215, size: 4608, align: 512, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3309, file: !199, line: 216, baseType: !397, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3309, file: !199, line: 217, baseType: !17, size: 32, offset: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3309, file: !199, line: 218, baseType: !17, size: 32, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3309, file: !199, line: 219, baseType: !17, size: 32, offset: 96)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3309, file: !199, line: 220, baseType: !17, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3309, file: !199, line: 221, baseType: !17, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3309, file: !199, line: 222, baseType: !17, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3309, file: !199, line: 223, baseType: !17, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3309, file: !199, line: 224, baseType: !17, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3309, file: !199, line: 226, baseType: !17, size: 32, offset: 160)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3309, file: !199, line: 227, baseType: !38, size: 16, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3309, file: !199, line: 228, baseType: !38, size: 16, offset: 208)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3309, file: !199, line: 229, baseType: !17, size: 32, offset: 224)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3309, file: !199, line: 235, baseType: !3269, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3309, file: !199, line: 236, baseType: !3302, size: 64, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3309, file: !199, line: 237, baseType: !3269, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3309, file: !199, line: 238, baseType: !3302, size: 64, offset: 448)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3309, file: !199, line: 239, baseType: !3329, size: 4096, align: 512, offset: 512)
!3329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3305, size: 4096, align: 512, elements: !3330)
!3330 = !{!3331}
!3331 = !DISubrange(count: 8)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3305, file: !199, line: 161, baseType: !17, size: 32, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3305, file: !199, line: 162, baseType: !3334, size: 32, offset: 96)
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !3335)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !34)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3305, file: !199, line: 163, baseType: !3337, size: 32, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !879, line: 274, baseType: !3338)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !879, line: 274, size: 32, elements: !3339)
!3339 = !{!3340}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3338, file: !879, line: 274, baseType: !883, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3305, file: !199, line: 164, baseType: !3302, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3305, file: !199, line: 165, baseType: !3343, size: 128, offset: 256)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3293, line: 14, size: 128, elements: !3344)
!3344 = !{!3345}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3343, file: !3293, line: 15, baseType: !1279, size: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3305, file: !199, line: 166, baseType: !3347, size: 64, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!3269}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3305, file: !199, line: 167, baseType: !3269, size: 64, offset: 448)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3289, file: !199, line: 123, baseType: !95, size: 8, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3289, file: !199, line: 124, baseType: !95, size: 8, offset: 456)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3289, file: !199, line: 125, baseType: !95, size: 8, offset: 464)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3289, file: !199, line: 126, baseType: !95, size: 8, offset: 472)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3237, file: !204, line: 691, baseType: !509, size: 64, offset: 1152)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3237, file: !204, line: 692, baseType: !735, size: 256, offset: 1216)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3237, file: !204, line: 693, baseType: !66, size: 192, offset: 1472)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3237, file: !204, line: 694, baseType: !3264, size: 64, offset: 1664)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3237, file: !204, line: 695, baseType: !61, size: 32, offset: 1728)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3237, file: !204, line: 696, baseType: !61, size: 32, offset: 1760)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3237, file: !204, line: 697, baseType: !17, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3237, file: !204, line: 698, baseType: !17, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3237, file: !204, line: 699, baseType: !17, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3237, file: !204, line: 700, baseType: !17, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3237, file: !204, line: 701, baseType: !17, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3237, file: !204, line: 702, baseType: !17, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3237, file: !204, line: 703, baseType: !602, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3237, file: !204, line: 704, baseType: !17, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3237, file: !204, line: 705, baseType: !17, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3237, file: !204, line: 706, baseType: !17, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3237, file: !204, line: 707, baseType: !17, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3237, file: !204, line: 708, baseType: !17, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3237, file: !204, line: 709, baseType: !17, size: 32, offset: 1824)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3237, file: !204, line: 710, baseType: !203, size: 32, offset: 1856)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3237, file: !204, line: 711, baseType: !211, size: 32, offset: 1888)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3237, file: !204, line: 712, baseType: !211, size: 32, offset: 1920)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3237, file: !204, line: 713, baseType: !34, size: 32, offset: 1952)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3237, file: !204, line: 714, baseType: !34, size: 32, offset: 1984)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3237, file: !204, line: 715, baseType: !509, size: 64, offset: 2048)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3237, file: !204, line: 716, baseType: !509, size: 64, offset: 2112)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3237, file: !204, line: 717, baseType: !509, size: 64, offset: 2176)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3237, file: !204, line: 718, baseType: !509, size: 64, offset: 2240)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3237, file: !204, line: 720, baseType: !3384, size: 64, offset: 2304)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !204, line: 632, size: 64, elements: !3386)
!3386 = !{!3387, !3388}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3385, file: !204, line: 633, baseType: !71, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3385, file: !204, line: 634, baseType: !17, size: 32, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3237, file: !204, line: 721, baseType: !3390, size: 64, offset: 2368)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !3094, !526}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3237, file: !204, line: 722, baseType: !3394, size: 64, offset: 2432)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !204, line: 722, flags: DIFlagFwdDecl)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3095, file: !192, line: 727, baseType: !3397, size: 64, offset: 4224)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !204, line: 742, size: 1792, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3406, !3407, !3408}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3398, file: !204, line: 743, baseType: !3127, size: 1472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3398, file: !204, line: 744, baseType: !3130, size: 64, offset: 1472)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3398, file: !204, line: 745, baseType: !3403, size: 64, offset: 1536)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !3094, !602}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3398, file: !204, line: 746, baseType: !3130, size: 64, offset: 1600)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3398, file: !204, line: 747, baseType: !3121, size: 64, offset: 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3398, file: !204, line: 748, baseType: !3121, size: 64, offset: 1728)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3095, file: !192, line: 736, baseType: !3410, size: 128, offset: 4288)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !192, line: 529, size: 128, elements: !3411)
!3411 = !{!3412, !3416}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3410, file: !192, line: 531, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3415, line: 13, flags: DIFlagFwdDecl)
!3415 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3410, file: !192, line: 532, baseType: !3417, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !192, line: 49, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3095, file: !192, line: 738, baseType: !3420, size: 64, offset: 4416)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3422)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !192, line: 738, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3095, file: !192, line: 740, baseType: !3424, size: 64, offset: 4480)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3095, file: !192, line: 741, baseType: !509, size: 64, offset: 4544)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3095, file: !192, line: 746, baseType: !509, size: 64, offset: 4608)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3095, file: !192, line: 747, baseType: !3428, size: 64, offset: 4672)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3430)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !192, line: 747, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3095, file: !192, line: 749, baseType: !3432, size: 64, offset: 4736)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !192, line: 428, size: 128, elements: !3434)
!3434 = !{!3435, !3436, !3437}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3433, file: !192, line: 433, baseType: !17, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3433, file: !192, line: 434, baseType: !17, size: 32, offset: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3433, file: !192, line: 435, baseType: !51, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3095, file: !192, line: 751, baseType: !109, size: 128, offset: 4800)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3095, file: !192, line: 762, baseType: !3440, size: 64, offset: 4928)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !192, line: 762, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3095, file: !192, line: 770, baseType: !3443, offset: 4992)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3444, line: 5, elements: !1438)
!3444 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3095, file: !192, line: 772, baseType: !3446, size: 64, offset: 4992)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3448, line: 18, flags: DIFlagFwdDecl)
!3448 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3095, file: !192, line: 773, baseType: !3450, size: 64, offset: 5056)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3159, line: 22, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3095, file: !192, line: 776, baseType: !34, size: 32, offset: 5120)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3095, file: !192, line: 778, baseType: !986, size: 32, offset: 5152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3095, file: !192, line: 779, baseType: !566, size: 32, offset: 5184)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3095, file: !192, line: 781, baseType: !71, size: 32, offset: 5216)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3095, file: !192, line: 782, baseType: !109, size: 128, offset: 5248)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3095, file: !192, line: 784, baseType: !3458, size: 64, offset: 5376)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3460)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3461, line: 52, size: 768, elements: !3462)
!3461 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3471, !3475, !3476, !3477, !3478, !3482, !3486}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3460, file: !3461, line: 53, baseType: !29, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3460, file: !3461, line: 55, baseType: !1246, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3460, file: !3461, line: 56, baseType: !1246, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3460, file: !3461, line: 58, baseType: !3111, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3460, file: !3461, line: 59, baseType: !3468, size: 64, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!613, !3114, !3044}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3460, file: !3461, line: 61, baseType: !3472, size: 64, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !3458}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3460, file: !3461, line: 62, baseType: !3121, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3460, file: !3461, line: 64, baseType: !3130, size: 64, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3460, file: !3461, line: 66, baseType: !2011, size: 64, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3460, file: !3461, line: 67, baseType: !3479, size: 64, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!1533, !3114}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3460, file: !3461, line: 69, baseType: !3483, size: 64, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !3114, !799, !800}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3460, file: !3461, line: 71, baseType: !3125, size: 64, offset: 704)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3095, file: !192, line: 785, baseType: !1246, size: 64, offset: 5440)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3095, file: !192, line: 787, baseType: !3121, size: 64, offset: 5504)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3095, file: !192, line: 788, baseType: !3490, size: 64, offset: 5568)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !192, line: 46, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3095, file: !192, line: 789, baseType: !3493, size: 64, offset: 5632)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !192, line: 48, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3095, file: !192, line: 791, baseType: !3496, size: 64, offset: 5696)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !192, line: 597, size: 128, elements: !3498)
!3498 = !{!3499, !3500, !3501, !3502, !3503}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3497, file: !192, line: 598, baseType: !218, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3497, file: !192, line: 599, baseType: !227, size: 32, offset: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3497, file: !192, line: 600, baseType: !232, size: 32, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3497, file: !192, line: 601, baseType: !602, size: 8, offset: 96)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3497, file: !192, line: 602, baseType: !602, size: 8, offset: 104)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3095, file: !192, line: 793, baseType: !237, size: 32, offset: 5760)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3095, file: !192, line: 795, baseType: !602, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3095, file: !192, line: 796, baseType: !602, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3095, file: !192, line: 797, baseType: !602, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3095, file: !192, line: 798, baseType: !602, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3095, file: !192, line: 799, baseType: !602, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !3061, file: !180, line: 451, baseType: !211, size: 32, offset: 1536)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !3061, file: !180, line: 457, baseType: !51, size: 64, offset: 1600)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !3061, file: !180, line: 459, baseType: !17, size: 32, offset: 1664)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !3061, file: !180, line: 466, baseType: !17, size: 32, offset: 1696)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3061, file: !180, line: 468, baseType: !2428, size: 320, offset: 1728)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !3061, file: !180, line: 469, baseType: !735, size: 256, offset: 2048)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !3061, file: !180, line: 471, baseType: !61, size: 32, offset: 2304)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !3061, file: !180, line: 473, baseType: !3518, size: 64, offset: 2368)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !180, line: 473, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3061, file: !180, line: 475, baseType: !109, size: 128, offset: 2432)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !3061, file: !180, line: 477, baseType: !3522, size: 64, offset: 2560)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !3523)
!3523 = !{!3524}
!3524 = !DISubrange(count: 1)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !3061, file: !180, line: 478, baseType: !2904, size: 64, offset: 2624)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !3061, file: !180, line: 479, baseType: !109, size: 128, offset: 2688)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !3061, file: !180, line: 480, baseType: !392, size: 256, offset: 2816)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !3061, file: !180, line: 483, baseType: !3529, size: 960, offset: 3072)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !180, line: 300, size: 960, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3529, file: !180, line: 301, baseType: !243, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3529, file: !180, line: 302, baseType: !51, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3529, file: !180, line: 303, baseType: !51, size: 64, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3529, file: !180, line: 305, baseType: !17, size: 32, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3529, file: !180, line: 306, baseType: !17, size: 32, offset: 224)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3529, file: !180, line: 307, baseType: !17, size: 32, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3529, file: !180, line: 308, baseType: !17, size: 32, offset: 288)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3529, file: !180, line: 309, baseType: !17, size: 32, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3529, file: !180, line: 310, baseType: !17, size: 32, offset: 352)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3529, file: !180, line: 311, baseType: !17, size: 32, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3529, file: !180, line: 312, baseType: !17, size: 32, offset: 416)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3529, file: !180, line: 313, baseType: !17, size: 32, offset: 448)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3529, file: !180, line: 314, baseType: !17, size: 32, offset: 480)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3529, file: !180, line: 315, baseType: !17, size: 32, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3529, file: !180, line: 316, baseType: !17, size: 32, offset: 544)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3529, file: !180, line: 317, baseType: !17, size: 32, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3529, file: !180, line: 318, baseType: !17, size: 32, offset: 608)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3529, file: !180, line: 319, baseType: !17, size: 32, offset: 640)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3529, file: !180, line: 320, baseType: !17, size: 32, offset: 672)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3529, file: !180, line: 321, baseType: !17, size: 32, offset: 704)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3529, file: !180, line: 322, baseType: !17, size: 32, offset: 736)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3529, file: !180, line: 323, baseType: !17, size: 32, offset: 768)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3529, file: !180, line: 325, baseType: !38, size: 16, offset: 800)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3529, file: !180, line: 326, baseType: !38, size: 16, offset: 816)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3529, file: !180, line: 327, baseType: !38, size: 16, offset: 832)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3529, file: !180, line: 329, baseType: !99, size: 8, offset: 848)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3529, file: !180, line: 330, baseType: !99, size: 8, offset: 856)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3529, file: !180, line: 331, baseType: !99, size: 8, offset: 864)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3529, file: !180, line: 332, baseType: !247, size: 32, offset: 896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3529, file: !180, line: 339, baseType: !17, size: 32, offset: 928)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !3061, file: !180, line: 485, baseType: !17, size: 32, offset: 4032)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3061, file: !180, line: 487, baseType: !34, size: 32, offset: 4064)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !3061, file: !180, line: 489, baseType: !3564, size: 64, offset: 4096)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !180, line: 31, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !3061, file: !180, line: 494, baseType: !3567, size: 64, offset: 4160)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !180, line: 35, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !3061, file: !180, line: 495, baseType: !109, size: 128, offset: 4224)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !3061, file: !180, line: 497, baseType: !109, size: 128, offset: 4352)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !3061, file: !180, line: 498, baseType: !71, size: 32, offset: 4480)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !3061, file: !180, line: 499, baseType: !2485, size: 704, offset: 4544)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !3061, file: !180, line: 501, baseType: !392, size: 256, offset: 5248)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !3061, file: !180, line: 502, baseType: !392, size: 256, offset: 5504)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !3061, file: !180, line: 508, baseType: !109, size: 128, offset: 5760)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !3061, file: !180, line: 509, baseType: !71, size: 32, offset: 5888)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !3061, file: !180, line: 511, baseType: !34, size: 32, offset: 5920)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3061, file: !180, line: 517, baseType: !370, size: 128, align: 64, offset: 5952)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !3061, file: !180, line: 518, baseType: !66, size: 192, offset: 6080)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !3061, file: !180, line: 523, baseType: !392, size: 256, offset: 6272)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !3061, file: !180, line: 525, baseType: !34, size: 32, offset: 6528)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !3061, file: !180, line: 527, baseType: !3583, size: 64, offset: 6592)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !180, line: 527, flags: DIFlagFwdDecl)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !3061, file: !180, line: 528, baseType: !109, size: 128, offset: 6656)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !3061, file: !180, line: 530, baseType: !872, size: 64, offset: 6784)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !3061, file: !180, line: 531, baseType: !872, size: 64, offset: 6848)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !3061, file: !180, line: 532, baseType: !872, size: 64, offset: 6912)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !3061, file: !180, line: 536, baseType: !392, size: 256, offset: 6976)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !3061, file: !180, line: 538, baseType: !602, size: 8, offset: 7232)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2856, file: !180, line: 147, baseType: !32, size: 64, offset: 704)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2856, file: !180, line: 149, baseType: !2920, size: 1984, offset: 768)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2856, file: !180, line: 151, baseType: !34, size: 32, offset: 2752)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2856, file: !180, line: 152, baseType: !51, size: 64, offset: 2816)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2856, file: !180, line: 161, baseType: !392, size: 256, offset: 2880)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2856, file: !180, line: 162, baseType: !17, size: 32, offset: 3136)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2856, file: !180, line: 164, baseType: !3598, size: 64, offset: 3200)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !253, line: 163, size: 6848, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3647, !3648, !3649, !3650, !3652, !3653, !3654}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3599, file: !253, line: 164, baseType: !509, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3599, file: !253, line: 165, baseType: !533, size: 192, align: 64, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3599, file: !253, line: 166, baseType: !109, size: 128, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3599, file: !253, line: 167, baseType: !51, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3599, file: !253, line: 168, baseType: !51, size: 64, offset: 448)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3599, file: !253, line: 170, baseType: !2178, size: 32, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3599, file: !253, line: 171, baseType: !17, size: 32, offset: 544)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3599, file: !253, line: 172, baseType: !17, size: 32, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3599, file: !253, line: 173, baseType: !17, size: 32, offset: 608)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3599, file: !253, line: 173, baseType: !17, size: 32, offset: 640)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3599, file: !253, line: 179, baseType: !383, size: 64, offset: 704)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3599, file: !253, line: 184, baseType: !51, size: 64, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3599, file: !253, line: 186, baseType: !3614, size: 4672, offset: 832)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !253, line: 105, size: 4672, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3640, !3641, !3642, !3643, !3644, !3645, !3646}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3614, file: !253, line: 106, baseType: !3598, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3614, file: !253, line: 108, baseType: !51, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3614, file: !253, line: 109, baseType: !51, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3614, file: !253, line: 111, baseType: !109, size: 128, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3614, file: !253, line: 112, baseType: !109, size: 128, offset: 320)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3614, file: !253, line: 113, baseType: !109, size: 128, offset: 448)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3614, file: !253, line: 114, baseType: !109, size: 128, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3614, file: !253, line: 115, baseType: !71, size: 32, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3614, file: !253, line: 117, baseType: !61, size: 32, offset: 736)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3614, file: !253, line: 118, baseType: !1501, size: 1280, offset: 768)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3614, file: !253, line: 120, baseType: !51, size: 64, offset: 2048)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3614, file: !253, line: 121, baseType: !51, size: 64, offset: 2112)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3614, file: !253, line: 122, baseType: !51, size: 64, offset: 2176)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3614, file: !253, line: 123, baseType: !51, size: 64, offset: 2240)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3614, file: !253, line: 124, baseType: !51, size: 64, offset: 2304)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3614, file: !253, line: 132, baseType: !51, size: 64, offset: 2368)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3614, file: !253, line: 133, baseType: !51, size: 64, offset: 2432)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3614, file: !253, line: 135, baseType: !3634, size: 384, offset: 2496)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3635, line: 76, size: 384, elements: !3636)
!3635 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3636 = !{!3637, !3638, !3639}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3634, file: !3635, line: 78, baseType: !661, size: 320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3634, file: !3635, line: 80, baseType: !17, size: 32, offset: 320)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3634, file: !3635, line: 81, baseType: !397, size: 32, offset: 352)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3614, file: !253, line: 136, baseType: !34, size: 32, offset: 2880)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3614, file: !253, line: 137, baseType: !252, size: 32, offset: 2912)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3614, file: !253, line: 139, baseType: !71, size: 32, offset: 2944)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3614, file: !253, line: 140, baseType: !109, size: 128, offset: 3008)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3614, file: !253, line: 141, baseType: !2485, size: 704, offset: 3136)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3614, file: !253, line: 142, baseType: !2485, size: 704, offset: 3840)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3614, file: !253, line: 144, baseType: !109, size: 128, offset: 4544)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3599, file: !253, line: 187, baseType: !109, size: 128, offset: 5504)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3599, file: !253, line: 193, baseType: !66, size: 192, offset: 5632)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3599, file: !253, line: 195, baseType: !3094, size: 64, offset: 5824)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3599, file: !253, line: 196, baseType: !3651, size: 512, offset: 5888)
!3651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1209)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3599, file: !253, line: 197, baseType: !3094, size: 64, offset: 6400)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3599, file: !253, line: 199, baseType: !2428, size: 320, offset: 6464)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3599, file: !253, line: 202, baseType: !872, size: 64, offset: 6784)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2856, file: !180, line: 165, baseType: !1166, size: 512, offset: 3264)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2856, file: !180, line: 166, baseType: !1172, size: 64, offset: 3776)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2856, file: !180, line: 168, baseType: !109, size: 128, offset: 3840)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2856, file: !180, line: 170, baseType: !3659, size: 64, offset: 3968)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !180, line: 170, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2856, file: !180, line: 171, baseType: !61, size: 32, offset: 4032)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2856, file: !180, line: 172, baseType: !3663, size: 64, offset: 4096)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !180, line: 104, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2856, file: !180, line: 197, baseType: !3666, size: 64, offset: 4160)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !180, line: 197, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2856, file: !180, line: 199, baseType: !34, size: 32, offset: 4224)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2856, file: !180, line: 200, baseType: !3670, size: 64, offset: 4288)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !180, line: 105, flags: DIFlagFwdDecl)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2856, file: !180, line: 201, baseType: !2456, offset: 4352)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2856, file: !180, line: 202, baseType: !509, size: 64, offset: 4352)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2856, file: !180, line: 203, baseType: !2984, size: 32, offset: 4416)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2856, file: !180, line: 209, baseType: !3676, size: 64, offset: 4480)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !180, line: 384, size: 576, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3677, file: !180, line: 385, baseType: !1166, size: 512)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3677, file: !180, line: 386, baseType: !602, size: 8, offset: 512)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3677, file: !180, line: 387, baseType: !17, size: 32, offset: 544)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3677, file: !180, line: 388, baseType: !3683, offset: 576)
!3683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3684, elements: !468)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !180, line: 378, size: 640, elements: !3685)
!3685 = !{!3686, !3687, !3688}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3684, file: !180, line: 379, baseType: !1166, size: 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3684, file: !180, line: 380, baseType: !1854, size: 64, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3684, file: !180, line: 381, baseType: !1854, size: 64, offset: 576)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2849, file: !2850, line: 44, baseType: !3060, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2849, file: !2850, line: 45, baseType: !3691, size: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2850, line: 45, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2849, file: !2850, line: 46, baseType: !51, size: 64, offset: 320)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2849, file: !2850, line: 47, baseType: !602, size: 8, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2849, file: !2850, line: 48, baseType: !95, size: 8, offset: 392)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2849, file: !2850, line: 49, baseType: !602, size: 8, offset: 400)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2849, file: !2850, line: 50, baseType: !602, size: 8, offset: 408)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2849, file: !2850, line: 51, baseType: !986, size: 32, offset: 416)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2849, file: !2850, line: 52, baseType: !61, size: 32, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2849, file: !2850, line: 53, baseType: !71, size: 32, offset: 480)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2849, file: !2850, line: 54, baseType: !912, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2849, file: !2850, line: 55, baseType: !32, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2849, file: !2850, line: 56, baseType: !32, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2849, file: !2850, line: 57, baseType: !3705, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3707)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !180, line: 1477, size: 128, elements: !3708)
!3708 = !{!3709, !3713}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3707, file: !180, line: 1478, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !2848, !602}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3707, file: !180, line: 1483, baseType: !3714, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !2848}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2849, file: !2850, line: 58, baseType: !392, size: 256, offset: 768)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2849, file: !2850, line: 60, baseType: !34, size: 32, offset: 1024)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2849, file: !2850, line: 61, baseType: !34, size: 32, offset: 1056)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2849, file: !2850, line: 62, baseType: !1172, size: 64, offset: 1088)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2849, file: !2850, line: 65, baseType: !392, size: 256, offset: 1152)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2849, file: !2850, line: 66, baseType: !1120, size: 64, offset: 1408)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2849, file: !2850, line: 68, baseType: !3724, size: 64, offset: 1472)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !180, line: 63, size: 808, elements: !3726)
!3726 = !{!3727, !3731}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3725, file: !180, line: 64, baseType: !3728, size: 296)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3729)
!3729 = !{!3730}
!3730 = !DISubrange(count: 37)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3725, file: !180, line: 65, baseType: !3732, size: 512, offset: 296)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 512, elements: !1209)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2849, file: !2850, line: 72, baseType: !602, size: 8, offset: 1536)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2849, file: !2850, line: 77, baseType: !3095, size: 5824, offset: 1600)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1121, file: !169, line: 1226, baseType: !3736, size: 64, offset: 1664)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !180, line: 1495, size: 128, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3737, file: !180, line: 1496, baseType: !2848, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3737, file: !180, line: 1497, baseType: !32, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1121, file: !169, line: 1227, baseType: !3598, size: 64, offset: 1728)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1121, file: !169, line: 1228, baseType: !3743, size: 64, offset: 1792)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !169, line: 1228, flags: DIFlagFwdDecl)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1121, file: !169, line: 1229, baseType: !450, size: 128, offset: 1856)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1121, file: !169, line: 1230, baseType: !17, size: 32, offset: 1984)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1121, file: !169, line: 1231, baseType: !3748, size: 2496, offset: 2048)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !174, line: 521, size: 2496, elements: !3749)
!3749 = !{!3750, !3751, !3752, !3754, !3786}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3748, file: !174, line: 522, baseType: !17, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3748, file: !174, line: 523, baseType: !541, size: 320, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3748, file: !174, line: 524, baseType: !3753, size: 192, offset: 384)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 192, elements: !429)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3748, file: !174, line: 525, baseType: !3755, size: 1728, offset: 576)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3756, size: 1728, elements: !429)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !174, line: 222, size: 576, elements: !3757)
!3757 = !{!3758, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3756, file: !174, line: 223, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !174, line: 445, size: 256, elements: !3761)
!3761 = !{!3762, !3763, !3776, !3777}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3760, file: !174, line: 446, baseType: !34, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3760, file: !174, line: 447, baseType: !3764, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3766)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !174, line: 312, size: 512, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3766, file: !174, line: 313, baseType: !2582, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3766, file: !174, line: 314, baseType: !2582, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3766, file: !174, line: 315, baseType: !2582, size: 64, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3766, file: !174, line: 316, baseType: !2582, size: 64, offset: 192)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3766, file: !174, line: 317, baseType: !2691, size: 64, offset: 256)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3766, file: !174, line: 318, baseType: !2691, size: 64, offset: 320)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3766, file: !174, line: 319, baseType: !2691, size: 64, offset: 384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3766, file: !174, line: 320, baseType: !2721, size: 64, offset: 448)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3760, file: !174, line: 448, baseType: !1153, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3760, file: !174, line: 449, baseType: !3759, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3756, file: !174, line: 224, baseType: !34, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3756, file: !174, line: 226, baseType: !109, size: 128, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3756, file: !174, line: 227, baseType: !51, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3756, file: !174, line: 228, baseType: !17, size: 32, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3756, file: !174, line: 229, baseType: !17, size: 32, offset: 352)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3756, file: !174, line: 230, baseType: !2659, size: 64, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3756, file: !174, line: 231, baseType: !2659, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3756, file: !174, line: 232, baseType: !32, size: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3748, file: !174, line: 526, baseType: !3787, size: 192, offset: 2304)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3764, size: 192, elements: !429)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1121, file: !169, line: 1233, baseType: !3789, size: 2368, offset: 4544)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !169, line: 1184, size: 2368, elements: !3790)
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3789, file: !169, line: 1185, baseType: !38, size: 16)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3789, file: !169, line: 1186, baseType: !38, size: 16, offset: 16)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3789, file: !169, line: 1187, baseType: !3794, size: 2304, offset: 64)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3795, size: 2304, elements: !429)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3796, line: 12, size: 768, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3797 = !{!3798, !3806, !3807, !5663, !5664}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3795, file: !3796, line: 13, baseType: !3799, size: 384)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3800, line: 17, size: 384, elements: !3801)
!3800 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3801 = !{!3802, !3803, !3804, !3805}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3799, file: !3800, line: 18, baseType: !34, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3799, file: !3800, line: 19, baseType: !34, size: 32, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3799, file: !3800, line: 20, baseType: !66, size: 192, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3799, file: !3800, line: 22, baseType: !370, size: 128, align: 64, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3795, file: !3796, line: 14, baseType: !2281, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3795, file: !3796, line: 15, baseType: !3808, size: 64, offset: 448)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3809, line: 16, size: 64, elements: !3810)
!3809 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3810 = !{!3811}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3808, file: !3809, line: 17, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !3814, line: 746, size: 58368, elements: !3815)
!3814 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!3815 = !{!3816, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3896, !3907, !3927, !3931, !3934, !3965, !3966, !3967, !3968, !3976, !3978, !3979, !3980, !3981, !3982, !3983, !3994, !3995, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4012, !4013, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4101, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4149, !4155, !4156, !4157, !4158, !4159, !4163, !4166, !4173, !4178, !4181, !4184, !4598, !4888, !5086, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5124, !5125, !5126, !5135, !5143, !5144, !5145, !5146, !5147, !5152, !5153, !5154, !5157, !5158, !5160, !5162, !5165, !5173, !5176, !5177, !5263, !5264, !5265, !5266, !5267, !5273, !5274, !5275, !5276, !5277, !5278, !5281, !5284, !5285, !5288, !5289, !5290, !5293, !5294, !5295, !5296, !5297, !5298, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5330, !5333, !5339, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5421, !5423, !5424, !5425, !5426, !5427, !5428, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3813, file: !3814, line: 752, baseType: !3817, size: 192)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3818, line: 56, size: 192, elements: !3819)
!3818 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3817, file: !3818, line: 57, baseType: !51, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3817, file: !3818, line: 58, baseType: !51, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3817, file: !3818, line: 59, baseType: !566, size: 32, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3817, file: !3818, line: 61, baseType: !566, size: 32, offset: 160)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3813, file: !3814, line: 754, baseType: !17, size: 32, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3813, file: !3814, line: 767, baseType: !32, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3813, file: !3814, line: 768, baseType: !437, size: 32, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3813, file: !3814, line: 770, baseType: !17, size: 32, offset: 352)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3813, file: !3814, line: 771, baseType: !17, size: 32, offset: 384)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3813, file: !3814, line: 774, baseType: !34, size: 32, offset: 416)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3813, file: !3814, line: 775, baseType: !3831, size: 128, offset: 448)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3832, line: 58, size: 128, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3833 = !{!3834, !3835, !3840, !3841}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3831, file: !3832, line: 59, baseType: !364, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, scope: !3831, file: !3832, line: 60, baseType: !3836, size: 32, offset: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3831, file: !3832, line: 60, size: 32, elements: !3837)
!3837 = !{!3838, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3836, file: !3832, line: 61, baseType: !17, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3836, file: !3832, line: 62, baseType: !61, size: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3831, file: !3832, line: 65, baseType: !105, size: 16, offset: 96)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3831, file: !3832, line: 65, baseType: !105, size: 16, offset: 112)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3813, file: !3814, line: 776, baseType: !17, size: 32, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3813, file: !3814, line: 777, baseType: !51, size: 64, offset: 640)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3813, file: !3814, line: 778, baseType: !3812, size: 64, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3813, file: !3814, line: 787, baseType: !34, size: 32, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3813, file: !3814, line: 788, baseType: !34, size: 32, offset: 800)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3813, file: !3814, line: 790, baseType: !34, size: 32, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3813, file: !3814, line: 792, baseType: !34, size: 32, offset: 864)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3813, file: !3814, line: 793, baseType: !34, size: 32, offset: 896)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3813, file: !3814, line: 794, baseType: !34, size: 32, offset: 928)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3813, file: !3814, line: 795, baseType: !17, size: 32, offset: 960)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3813, file: !3814, line: 797, baseType: !3853, size: 2048, offset: 1024)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !3814, line: 551, size: 2048, elements: !3854)
!3854 = !{!3855, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3875, !3878, !3879, !3880}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3853, file: !3814, line: 553, baseType: !3856, size: 128)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !3814, line: 411, size: 128, elements: !3857)
!3857 = !{!3858, !3859}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3856, file: !3814, line: 412, baseType: !51, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3856, file: !3814, line: 413, baseType: !566, size: 32, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3853, file: !3814, line: 554, baseType: !533, size: 192, align: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3853, file: !3814, line: 555, baseType: !509, size: 64, offset: 320)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3853, file: !3814, line: 556, baseType: !509, size: 64, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3853, file: !3814, line: 558, baseType: !109, size: 128, offset: 448)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3853, file: !3814, line: 559, baseType: !17, size: 32, offset: 576)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3853, file: !3814, line: 561, baseType: !509, size: 64, offset: 640)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3853, file: !3814, line: 562, baseType: !509, size: 64, offset: 704)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3853, file: !3814, line: 563, baseType: !509, size: 64, offset: 768)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3853, file: !3814, line: 564, baseType: !509, size: 64, offset: 832)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3853, file: !3814, line: 565, baseType: !389, size: 64, offset: 896)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3853, file: !3814, line: 566, baseType: !509, size: 64, offset: 960)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3853, file: !3814, line: 568, baseType: !509, size: 64, offset: 1024)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3853, file: !3814, line: 571, baseType: !34, size: 32, offset: 1088)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3853, file: !3814, line: 572, baseType: !3874, size: 64, offset: 1152)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3853, file: !3814, line: 574, baseType: !3876, size: 64, offset: 1216)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !3814, line: 49, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3853, file: !3814, line: 576, baseType: !3876, size: 64, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3853, file: !3814, line: 578, baseType: !51, size: 64, offset: 1344)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3853, file: !3814, line: 588, baseType: !3881, size: 512, align: 512, offset: 1536)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !3814, line: 497, size: 512, align: 512, elements: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3881, file: !3814, line: 498, baseType: !509, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3881, file: !3814, line: 499, baseType: !509, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3881, file: !3814, line: 500, baseType: !509, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3881, file: !3814, line: 501, baseType: !566, size: 32, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3881, file: !3814, line: 502, baseType: !566, size: 32, offset: 224)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3881, file: !3814, line: 503, baseType: !51, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3881, file: !3814, line: 504, baseType: !51, size: 64, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3881, file: !3814, line: 505, baseType: !51, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3881, file: !3814, line: 506, baseType: !3892, size: 64, align: 64, offset: 448)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !3814, line: 445, size: 64, align: 64, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3892, file: !3814, line: 446, baseType: !17, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3892, file: !3814, line: 447, baseType: !17, size: 32, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3813, file: !3814, line: 798, baseType: !3897, size: 384, offset: 3072)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !3814, line: 592, size: 384, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3902, !3903, !3904, !3905}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3897, file: !3814, line: 593, baseType: !109, size: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3897, file: !3814, line: 594, baseType: !51, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3897, file: !3814, line: 595, baseType: !51, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3897, file: !3814, line: 596, baseType: !17, size: 32, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3897, file: !3814, line: 597, baseType: !38, size: 16, offset: 288)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3897, file: !3814, line: 598, baseType: !38, size: 16, offset: 304)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3897, file: !3814, line: 600, baseType: !3906, size: 64, offset: 320)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3813, file: !3814, line: 799, baseType: !3908, size: 1792, offset: 3456)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !3814, line: 610, size: 1792, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3908, file: !3814, line: 611, baseType: !533, size: 192, align: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3908, file: !3814, line: 618, baseType: !509, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3908, file: !3814, line: 619, baseType: !509, size: 64, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3908, file: !3814, line: 620, baseType: !509, size: 64, offset: 320)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3908, file: !3814, line: 621, baseType: !509, size: 64, offset: 384)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3908, file: !3814, line: 622, baseType: !509, size: 64, offset: 448)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3908, file: !3814, line: 629, baseType: !389, size: 64, offset: 512)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3908, file: !3814, line: 630, baseType: !509, size: 64, offset: 576)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3908, file: !3814, line: 631, baseType: !17, size: 32, offset: 640)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3908, file: !3814, line: 653, baseType: !17, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3908, file: !3814, line: 654, baseType: !17, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3908, file: !3814, line: 655, baseType: !17, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3908, file: !3814, line: 656, baseType: !17, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3908, file: !3814, line: 662, baseType: !3289, size: 512, offset: 704)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3908, file: !3814, line: 671, baseType: !3289, size: 512, offset: 1216)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3908, file: !3814, line: 679, baseType: !3926, size: 64, offset: 1728)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3813, file: !3814, line: 800, baseType: !3928, size: 64, offset: 5248)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3930)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !3814, line: 800, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3813, file: !3814, line: 809, baseType: !3932, size: 64, offset: 5312)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !3814, line: 70, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3813, file: !3814, line: 825, baseType: !3935, size: 2048, align: 512, offset: 5632)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !3814, line: 509, size: 2048, align: 512, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3935, file: !3814, line: 511, baseType: !509, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3935, file: !3814, line: 512, baseType: !509, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3935, file: !3814, line: 513, baseType: !509, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3935, file: !3814, line: 514, baseType: !509, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3935, file: !3814, line: 515, baseType: !509, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3935, file: !3814, line: 516, baseType: !509, size: 64, offset: 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3935, file: !3814, line: 518, baseType: !509, size: 64, offset: 384)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3935, file: !3814, line: 519, baseType: !509, size: 64, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3935, file: !3814, line: 520, baseType: !389, size: 64, offset: 512)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3935, file: !3814, line: 522, baseType: !509, size: 64, offset: 576)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3935, file: !3814, line: 523, baseType: !509, size: 64, offset: 640)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3935, file: !3814, line: 524, baseType: !389, size: 64, offset: 704)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3935, file: !3814, line: 526, baseType: !389, size: 64, offset: 768)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3935, file: !3814, line: 527, baseType: !509, size: 64, offset: 832)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3935, file: !3814, line: 529, baseType: !509, size: 64, offset: 896)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3935, file: !3814, line: 530, baseType: !509, size: 64, offset: 960)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3935, file: !3814, line: 531, baseType: !509, size: 64, offset: 1024)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3935, file: !3814, line: 532, baseType: !509, size: 64, offset: 1088)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3935, file: !3814, line: 533, baseType: !509, size: 64, offset: 1152)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3935, file: !3814, line: 535, baseType: !509, size: 64, offset: 1216)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3935, file: !3814, line: 536, baseType: !509, size: 64, offset: 1280)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3935, file: !3814, line: 537, baseType: !509, size: 64, offset: 1344)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3935, file: !3814, line: 538, baseType: !509, size: 64, offset: 1408)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3935, file: !3814, line: 539, baseType: !509, size: 64, offset: 1472)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3935, file: !3814, line: 540, baseType: !509, size: 64, offset: 1536)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3935, file: !3814, line: 541, baseType: !509, size: 64, offset: 1600)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3935, file: !3814, line: 542, baseType: !509, size: 64, offset: 1664)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3935, file: !3814, line: 543, baseType: !509, size: 64, offset: 1728)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3813, file: !3814, line: 833, baseType: !17, size: 32, offset: 7680)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3813, file: !3814, line: 836, baseType: !17, size: 32, offset: 7712)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3813, file: !3814, line: 837, baseType: !34, size: 32, offset: 7744)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3813, file: !3814, line: 838, baseType: !3969, size: 64, offset: 7808)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3971)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3972, line: 19, baseType: !3973)
!3972 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3972, line: 19, size: 64, elements: !3974)
!3974 = !{!3975}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3973, file: !3972, line: 19, baseType: !3522, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3813, file: !3814, line: 839, baseType: !3977, size: 64, offset: 7872)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3813, file: !3814, line: 840, baseType: !3971, size: 64, offset: 7936)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3813, file: !3814, line: 841, baseType: !32, size: 64, offset: 8000)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3813, file: !3814, line: 843, baseType: !38, size: 16, offset: 8064)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3813, file: !3814, line: 845, baseType: !38, size: 16, offset: 8080)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3813, file: !3814, line: 848, baseType: !34, size: 32, offset: 8096)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3813, file: !3814, line: 849, baseType: !3984, size: 32, offset: 8128)
!3984 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !3814, line: 718, size: 32, elements: !3985)
!3985 = !{!3986, !3993}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3984, file: !3814, line: 724, baseType: !3987, size: 32)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3984, file: !3814, line: 719, size: 32, elements: !3988)
!3988 = !{!3989, !3990, !3991, !3992}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3987, file: !3814, line: 720, baseType: !95, size: 8)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3987, file: !3814, line: 721, baseType: !95, size: 8, offset: 8)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3987, file: !3814, line: 722, baseType: !95, size: 8, offset: 16)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3987, file: !3814, line: 723, baseType: !95, size: 8, offset: 24)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3984, file: !3814, line: 725, baseType: !566, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3813, file: !3814, line: 850, baseType: !109, size: 128, offset: 8192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3813, file: !3814, line: 851, baseType: !3996, size: 64, offset: 8320)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !3814, line: 60, flags: DIFlagFwdDecl)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3813, file: !3814, line: 855, baseType: !51, size: 64, offset: 8384)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3813, file: !3814, line: 856, baseType: !95, size: 8, offset: 8448)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3813, file: !3814, line: 857, baseType: !95, size: 8, offset: 8456)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3813, file: !3814, line: 858, baseType: !34, size: 32, offset: 8480)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3813, file: !3814, line: 859, baseType: !109, size: 128, offset: 8512)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3813, file: !3814, line: 860, baseType: !34, size: 32, offset: 8640)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3813, file: !3814, line: 861, baseType: !109, size: 128, offset: 8704)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3813, file: !3814, line: 873, baseType: !4006, size: 256, offset: 8832)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !3814, line: 376, size: 256, elements: !4007)
!4007 = !{!4008, !4009, !4010, !4011}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !4006, file: !3814, line: 381, baseType: !51, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !4006, file: !3814, line: 384, baseType: !511, size: 64, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !4006, file: !3814, line: 389, baseType: !511, size: 64, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !4006, file: !3814, line: 392, baseType: !511, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3813, file: !3814, line: 875, baseType: !109, size: 128, offset: 9088)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3813, file: !3814, line: 877, baseType: !4014, size: 320, offset: 9216)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !4015, line: 86, size: 320, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!4016 = !{!4017, !4018, !4019}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4014, file: !4015, line: 87, baseType: !34, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !4014, file: !4015, line: 88, baseType: !109, size: 128, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4014, file: !4015, line: 89, baseType: !109, size: 128, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3813, file: !3814, line: 878, baseType: !533, size: 192, align: 64, offset: 9536)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3813, file: !3814, line: 881, baseType: !1417, size: 64, offset: 9728)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3813, file: !3814, line: 882, baseType: !1417, size: 64, offset: 9792)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3813, file: !3814, line: 884, baseType: !34, size: 32, offset: 9856)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3813, file: !3814, line: 885, baseType: !34, size: 32, offset: 9888)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3813, file: !3814, line: 886, baseType: !34, size: 32, offset: 9920)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3813, file: !3814, line: 888, baseType: !34, size: 32, offset: 9952)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3813, file: !3814, line: 890, baseType: !51, size: 64, offset: 9984)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3813, file: !3814, line: 893, baseType: !17, size: 32, offset: 10048)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3813, file: !3814, line: 896, baseType: !17, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3813, file: !3814, line: 897, baseType: !17, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3813, file: !3814, line: 898, baseType: !17, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3813, file: !3814, line: 899, baseType: !17, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3813, file: !3814, line: 919, baseType: !17, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3813, file: !3814, line: 922, baseType: !17, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3813, file: !3814, line: 923, baseType: !17, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3813, file: !3814, line: 925, baseType: !17, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3813, file: !3814, line: 939, baseType: !17, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3813, file: !3814, line: 941, baseType: !17, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3813, file: !3814, line: 944, baseType: !17, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3813, file: !3814, line: 956, baseType: !17, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3813, file: !3814, line: 962, baseType: !17, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3813, file: !3814, line: 966, baseType: !17, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3813, file: !3814, line: 969, baseType: !51, size: 64, offset: 10176)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3813, file: !3814, line: 971, baseType: !4045, size: 448, offset: 10240)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !265, line: 25, size: 448, elements: !4046)
!4046 = !{!4047, !4048, !4053}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4045, file: !265, line: 26, baseType: !51, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4045, file: !265, line: 27, baseType: !4049, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!836, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4045, file: !265, line: 28, baseType: !4054, size: 320, offset: 128)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4045, file: !265, line: 28, size: 320, elements: !4055)
!4055 = !{!4056, !4066, !4091}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4054, file: !265, line: 37, baseType: !4057, size: 320)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !265, line: 30, size: 320, elements: !4058)
!4058 = !{!4059, !4061, !4062, !4063, !4064, !4065}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4057, file: !265, line: 31, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4057, file: !265, line: 32, baseType: !566, size: 32, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4057, file: !265, line: 33, baseType: !566, size: 32, offset: 96)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4057, file: !265, line: 34, baseType: !566, size: 32, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4057, file: !265, line: 35, baseType: !509, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4057, file: !265, line: 36, baseType: !4060, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4054, file: !265, line: 47, baseType: !4067, size: 192)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !265, line: 39, size: 192, elements: !4068)
!4068 = !{!4069, !4070, !4071, !4090}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4067, file: !265, line: 40, baseType: !3334, size: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4067, file: !265, line: 41, baseType: !264, size: 32, offset: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, scope: !4067, file: !265, line: 42, baseType: !4072, size: 64, offset: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4067, file: !265, line: 42, size: 64, elements: !4073)
!4073 = !{!4074, !4082}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4072, file: !265, line: 43, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4077, line: 7, size: 128, elements: !4078)
!4077 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4078 = !{!4079, !4081}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4076, file: !4077, line: 8, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4076, file: !4077, line: 9, baseType: !55, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4072, file: !265, line: 44, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4085, line: 7, size: 64, elements: !4086)
!4085 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4086 = !{!4087, !4089}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4084, file: !4085, line: 8, baseType: !4088, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4085, line: 5, baseType: !526)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4084, file: !4085, line: 9, baseType: !526, size: 32, offset: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4067, file: !265, line: 46, baseType: !509, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4054, file: !265, line: 55, baseType: !4092, size: 256)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !265, line: 49, size: 256, elements: !4093)
!4093 = !{!4094, !4097, !4098, !4099, !4100}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4092, file: !265, line: 50, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !265, line: 14, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4092, file: !265, line: 51, baseType: !34, size: 32, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4092, file: !265, line: 52, baseType: !34, size: 32, offset: 96)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4092, file: !265, line: 53, baseType: !51, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4092, file: !265, line: 54, baseType: !51, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3813, file: !3814, line: 973, baseType: !4102, size: 32, offset: 10688)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !4103)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !34)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3813, file: !3814, line: 974, baseType: !4102, size: 32, offset: 10720)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3813, file: !3814, line: 978, baseType: !51, size: 64, offset: 10752)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3813, file: !3814, line: 987, baseType: !3812, size: 64, offset: 10816)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3813, file: !3814, line: 990, baseType: !3812, size: 64, offset: 10880)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3813, file: !3814, line: 995, baseType: !109, size: 128, offset: 10944)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3813, file: !3814, line: 996, baseType: !109, size: 128, offset: 11072)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3813, file: !3814, line: 997, baseType: !3812, size: 64, offset: 11200)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3813, file: !3814, line: 1005, baseType: !109, size: 128, offset: 11264)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3813, file: !3814, line: 1006, baseType: !109, size: 128, offset: 11392)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3813, file: !3814, line: 1009, baseType: !433, size: 64, offset: 11520)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3813, file: !3814, line: 1010, baseType: !4115, size: 512, offset: 11584)
!4115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 512, elements: !455)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3813, file: !3814, line: 1011, baseType: !109, size: 128, offset: 12096)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3813, file: !3814, line: 1012, baseType: !109, size: 128, offset: 12224)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3813, file: !3814, line: 1014, baseType: !773, size: 64, offset: 12352)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3813, file: !3814, line: 1017, baseType: !2329, size: 64, offset: 12416)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3813, file: !3814, line: 1020, baseType: !2329, size: 64, offset: 12480)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3813, file: !3814, line: 1023, baseType: !32, size: 64, offset: 12544)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3813, file: !3814, line: 1025, baseType: !509, size: 64, offset: 12608)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3813, file: !3814, line: 1026, baseType: !509, size: 64, offset: 12672)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3813, file: !3814, line: 1031, baseType: !509, size: 64, offset: 12736)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3813, file: !3814, line: 1032, baseType: !4126, size: 192, offset: 12800)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !3814, line: 324, size: 192, elements: !4127)
!4127 = !{!4128, !4129, !4130}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4126, file: !3814, line: 326, baseType: !509, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4126, file: !3814, line: 327, baseType: !509, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4126, file: !3814, line: 328, baseType: !397, size: 32, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3813, file: !3814, line: 1041, baseType: !51, size: 64, offset: 12992)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3813, file: !3814, line: 1042, baseType: !51, size: 64, offset: 13056)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3813, file: !3814, line: 1045, baseType: !509, size: 64, offset: 13120)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3813, file: !3814, line: 1048, baseType: !509, size: 64, offset: 13184)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3813, file: !3814, line: 1051, baseType: !51, size: 64, offset: 13248)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3813, file: !3814, line: 1052, baseType: !51, size: 64, offset: 13312)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3813, file: !3814, line: 1055, baseType: !4138, size: 640, offset: 13376)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4139, line: 132, size: 640, elements: !4140)
!4139 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4140 = !{!4141, !4147, !4148}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4138, file: !4139, line: 133, baseType: !4142, size: 576)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4143, size: 576, elements: !429)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4139, line: 117, size: 192, elements: !4144)
!4144 = !{!4145, !4146}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4143, file: !4139, line: 118, baseType: !509, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4143, file: !4139, line: 119, baseType: !3343, size: 128, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4138, file: !4139, line: 134, baseType: !17, size: 32, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4138, file: !4139, line: 135, baseType: !17, size: 32, offset: 608)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3813, file: !3814, line: 1058, baseType: !4150, size: 448, offset: 14016)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4139, line: 144, size: 448, elements: !4151)
!4151 = !{!4152, !4153, !4154}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4150, file: !4139, line: 145, baseType: !370, size: 128, align: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4150, file: !4139, line: 146, baseType: !392, size: 256, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4150, file: !4139, line: 147, baseType: !17, size: 32, offset: 384)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3813, file: !3814, line: 1064, baseType: !482, size: 64, offset: 14464)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3813, file: !3814, line: 1067, baseType: !482, size: 64, offset: 14528)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3813, file: !3814, line: 1070, baseType: !482, size: 64, offset: 14592)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3813, file: !3814, line: 1074, baseType: !518, size: 64, offset: 14656)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3813, file: !3814, line: 1084, baseType: !4160, size: 128, offset: 14720)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4161)
!4161 = !{!4162}
!4162 = !DISubrange(count: 16)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3813, file: !3814, line: 1086, baseType: !4164, size: 64, offset: 14848)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !3814, line: 55, flags: DIFlagFwdDecl)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3813, file: !3814, line: 1089, baseType: !4167, size: 64, offset: 14912)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4168, line: 12, size: 64, elements: !4169)
!4168 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4169 = !{!4170}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4167, file: !4168, line: 13, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4168, line: 8, flags: DIFlagFwdDecl)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3813, file: !3814, line: 1090, baseType: !4174, size: 128, offset: 14976)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4175, line: 13, size: 128, elements: !4176)
!4175 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4176 = !{!4177}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4174, file: !4175, line: 14, baseType: !109, size: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3813, file: !3814, line: 1097, baseType: !4179, size: 64, offset: 15104)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !3814, line: 50, flags: DIFlagFwdDecl)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3813, file: !3814, line: 1100, baseType: !4182, size: 64, offset: 15168)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !3814, line: 1100, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3813, file: !3814, line: 1103, baseType: !4185, size: 64, offset: 15232)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !306, line: 52, size: 2560, elements: !4187)
!4187 = !{!4188, !4189, !4583, !4586, !4588, !4589, !4590, !4591, !4592, !4593}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "cached_refs", scope: !4186, file: !306, line: 54, baseType: !34, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4186, file: !306, line: 55, baseType: !4190, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4192)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_ring_ctx", file: !306, line: 196, size: 11776, elements: !4193)
!4193 = !{!4194, !4240, !4479, !4500, !4511, !4518, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4547, !4548, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582}
!4194 = !DIDerivedType(tag: DW_TAG_member, scope: !4192, file: !306, line: 198, baseType: !4195, size: 512, align: 512)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !306, line: 198, size: 512, align: 512, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4238, !4239}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4195, file: !306, line: 199, baseType: !17, size: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "drain_next", scope: !4195, file: !306, line: 200, baseType: !17, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "restricted", scope: !4195, file: !306, line: 201, baseType: !17, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "off_timeout_used", scope: !4195, file: !306, line: 202, baseType: !17, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "drain_active", scope: !4195, file: !306, line: 203, baseType: !17, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "has_evfd", scope: !4195, file: !306, line: 204, baseType: !17, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "task_complete", scope: !4195, file: !306, line: 206, baseType: !17, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "lockless_cq", scope: !4195, file: !306, line: 207, baseType: !17, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_iopoll", scope: !4195, file: !306, line: 208, baseType: !17, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "poll_activated", scope: !4195, file: !306, line: 209, baseType: !17, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "drain_disabled", scope: !4195, file: !306, line: 210, baseType: !17, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "compat", scope: !4195, file: !306, line: 211, baseType: !17, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "submitter_task", scope: !4195, file: !306, line: 213, baseType: !3812, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "rings", scope: !4195, file: !306, line: 214, baseType: !4211, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_rings", file: !306, line: 83, size: 512, elements: !4213)
!4213 = !{!4214, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "sq", scope: !4212, file: !306, line: 92, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring", file: !306, line: 71, size: 64, elements: !4216)
!4216 = !{!4217, !4218}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4215, file: !306, line: 72, baseType: !566, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4215, file: !306, line: 73, baseType: !566, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "cq", scope: !4212, file: !306, line: 92, baseType: !4215, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ring_mask", scope: !4212, file: !306, line: 97, baseType: !566, size: 32, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ring_mask", scope: !4212, file: !306, line: 97, baseType: !566, size: 32, offset: 160)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ring_entries", scope: !4212, file: !306, line: 99, baseType: !566, size: 32, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ring_entries", scope: !4212, file: !306, line: 99, baseType: !566, size: 32, offset: 224)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "sq_dropped", scope: !4212, file: !306, line: 112, baseType: !566, size: 32, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "sq_flags", scope: !4212, file: !306, line: 122, baseType: !61, size: 32, offset: 288)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "cq_flags", scope: !4212, file: !306, line: 129, baseType: !566, size: 32, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "cq_overflow", scope: !4212, file: !306, line: 143, baseType: !566, size: 32, offset: 352)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "cqes", scope: !4212, file: !306, line: 151, baseType: !4229, align: 512, offset: 512)
!4229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4230, elements: !468)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cqe", file: !4231, line: 380, size: 128, elements: !4232)
!4231 = !DIFile(filename: "./include/uapi/linux/io_uring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "536227ab7b095d934ae04a0fe4ddf870")
!4232 = !{!4233, !4234, !4235, !4236}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4230, file: !4231, line: 381, baseType: !510, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4230, file: !4231, line: 382, baseType: !527, size: 32, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4230, file: !4231, line: 383, baseType: !567, size: 32, offset: 96)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "big_cqe", scope: !4230, file: !4231, line: 389, baseType: !4237, offset: 128)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, elements: !468)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4195, file: !306, line: 215, baseType: !1358, size: 128, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "notify_method", scope: !4195, file: !306, line: 217, baseType: !270, size: 32, offset: 320)
!4240 = !DIDerivedType(tag: DW_TAG_member, scope: !4192, file: !306, line: 221, baseType: !4241, size: 2560, align: 512, offset: 512)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !306, line: 221, size: 2560, align: 512, elements: !4242)
!4242 = !{!4243, !4244, !4245, !4324, !4325, !4326, !4329, !4330, !4340, !4341, !4342, !4346, !4458, !4459, !4469, !4476, !4477, !4478}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "uring_lock", scope: !4241, file: !306, line: 222, baseType: !392, size: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "sq_array", scope: !4241, file: !306, line: 235, baseType: !4060, size: 64, offset: 256)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "sq_sqes", scope: !4241, file: !306, line: 236, baseType: !4246, size: 64, offset: 320)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_sqe", file: !4231, line: 30, size: 512, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4263, !4268, !4269, !4293, !4294, !4299, !4300, !4311}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4247, file: !4231, line: 31, baseType: !97, size: 8)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4247, file: !4231, line: 32, baseType: !97, size: 8, offset: 8)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4247, file: !4231, line: 33, baseType: !106, size: 16, offset: 16)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4247, file: !4231, line: 34, baseType: !527, size: 32, offset: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4231, line: 35, baseType: !4254, size: 64, offset: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4231, line: 35, size: 64, elements: !4255)
!4255 = !{!4256, !4257, !4258}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !4254, file: !4231, line: 36, baseType: !510, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "addr2", scope: !4254, file: !4231, line: 37, baseType: !510, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, scope: !4254, file: !4231, line: 38, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4254, file: !4231, line: 38, size: 64, elements: !4260)
!4260 = !{!4261, !4262}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_op", scope: !4259, file: !4231, line: 39, baseType: !567, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4259, file: !4231, line: 40, baseType: !567, size: 32, offset: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4231, line: 43, baseType: !4264, size: 64, offset: 128)
!4264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4231, line: 43, size: 64, elements: !4265)
!4265 = !{!4266, !4267}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4264, file: !4231, line: 44, baseType: !510, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "splice_off_in", scope: !4264, file: !4231, line: 45, baseType: !510, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4247, file: !4231, line: 47, baseType: !567, size: 32, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4231, line: 48, baseType: !4270, size: 32, offset: 224)
!4270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4231, line: 48, size: 32, elements: !4271)
!4271 = !{!4272, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "rw_flags", scope: !4270, file: !4231, line: 49, baseType: !4273, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_rwf_t", file: !4274, line: 287, baseType: !34)
!4274 = !DIFile(filename: "./include/uapi/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05057ca18a14d66575ba14cfa16a2889")
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "fsync_flags", scope: !4270, file: !4231, line: 50, baseType: !567, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "poll_events", scope: !4270, file: !4231, line: 51, baseType: !106, size: 16)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "poll32_events", scope: !4270, file: !4231, line: 52, baseType: !567, size: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "sync_range_flags", scope: !4270, file: !4231, line: 53, baseType: !567, size: 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !4270, file: !4231, line: 54, baseType: !567, size: 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_flags", scope: !4270, file: !4231, line: 55, baseType: !567, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "accept_flags", scope: !4270, file: !4231, line: 56, baseType: !567, size: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_flags", scope: !4270, file: !4231, line: 57, baseType: !567, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "open_flags", scope: !4270, file: !4231, line: 58, baseType: !567, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "statx_flags", scope: !4270, file: !4231, line: 59, baseType: !567, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise_advice", scope: !4270, file: !4231, line: 60, baseType: !567, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "splice_flags", scope: !4270, file: !4231, line: 61, baseType: !567, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "rename_flags", scope: !4270, file: !4231, line: 62, baseType: !567, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "unlink_flags", scope: !4270, file: !4231, line: 63, baseType: !567, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "hardlink_flags", scope: !4270, file: !4231, line: 64, baseType: !567, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_flags", scope: !4270, file: !4231, line: 65, baseType: !567, size: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ring_flags", scope: !4270, file: !4231, line: 66, baseType: !567, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_flags", scope: !4270, file: !4231, line: 67, baseType: !567, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4247, file: !4231, line: 69, baseType: !510, size: 64, offset: 256)
!4294 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4231, line: 71, baseType: !4295, size: 16, offset: 320)
!4295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4231, line: 71, size: 16, elements: !4296)
!4296 = !{!4297, !4298}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "buf_index", scope: !4295, file: !4231, line: 73, baseType: !106, size: 16)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "buf_group", scope: !4295, file: !4231, line: 75, baseType: !106, size: 16)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !4247, file: !4231, line: 78, baseType: !106, size: 16, offset: 336)
!4300 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4231, line: 79, baseType: !4301, size: 32, offset: 352)
!4301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4231, line: 79, size: 32, elements: !4302)
!4302 = !{!4303, !4304, !4305}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "splice_fd_in", scope: !4301, file: !4231, line: 80, baseType: !527, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "file_index", scope: !4301, file: !4231, line: 81, baseType: !567, size: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, scope: !4301, file: !4231, line: 82, baseType: !4306, size: 32)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4301, file: !4231, line: 82, size: 32, elements: !4307)
!4307 = !{!4308, !4309}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "addr_len", scope: !4306, file: !4231, line: 83, baseType: !106, size: 16)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4306, file: !4231, line: 84, baseType: !4310, size: 16, offset: 16)
!4310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 16, elements: !3523)
!4311 = !DIDerivedType(tag: DW_TAG_member, scope: !4247, file: !4231, line: 87, baseType: !4312, size: 128, offset: 384)
!4312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4247, file: !4231, line: 87, size: 128, elements: !4313)
!4313 = !{!4314, !4320}
!4314 = !DIDerivedType(tag: DW_TAG_member, scope: !4312, file: !4231, line: 88, baseType: !4315, size: 128)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4312, file: !4231, line: 88, size: 128, elements: !4316)
!4316 = !{!4317, !4318}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "addr3", scope: !4315, file: !4231, line: 89, baseType: !510, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4315, file: !4231, line: 90, baseType: !4319, size: 64, offset: 64)
!4319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 64, elements: !3523)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4312, file: !4231, line: 96, baseType: !4321)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !4322)
!4322 = !{!4323}
!4323 = !DISubrange(count: 0)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "cached_sq_head", scope: !4241, file: !306, line: 237, baseType: !17, size: 32, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "sq_entries", scope: !4241, file: !306, line: 238, baseType: !17, size: 32, offset: 416)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node", scope: !4241, file: !306, line: 244, baseType: !4327, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_rsrc_node", file: !306, line: 244, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_seq", scope: !4241, file: !306, line: 245, baseType: !61, size: 32, offset: 512)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "file_table", scope: !4241, file: !306, line: 246, baseType: !4331, size: 192, offset: 576)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_file_table", file: !306, line: 31, size: 192, elements: !4332)
!4332 = !{!4333, !4338, !4339}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4331, file: !306, line: 32, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_fixed_file", file: !306, line: 26, size: 64, elements: !4336)
!4336 = !{!4337}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "file_ptr", scope: !4335, file: !306, line: 28, baseType: !51, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4331, file: !306, line: 33, baseType: !2524, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !4331, file: !306, line: 34, baseType: !17, size: 32, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_files", scope: !4241, file: !306, line: 247, baseType: !17, size: 32, offset: 768)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_bufs", scope: !4241, file: !306, line: 248, baseType: !17, size: 32, offset: 800)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "user_bufs", scope: !4241, file: !306, line: 249, baseType: !4343, size: 64, offset: 832)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_mapped_ubuf", file: !306, line: 249, flags: DIFlagFwdDecl)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "submit_state", scope: !4241, file: !306, line: 251, baseType: !4347, size: 704, offset: 896)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_submit_state", file: !306, line: 167, size: 704, elements: !4348)
!4348 = !{!4349, !4354, !4359, !4444, !4445, !4446, !4447, !4448}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !4347, file: !306, line: 169, baseType: !4350, size: 64)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work_node", file: !306, line: 10, size: 64, elements: !4351)
!4351 = !{!4352}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4350, file: !306, line: 11, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "compl_reqs", scope: !4347, file: !306, line: 171, baseType: !4355, size: 128, offset: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work_list", file: !306, line: 14, size: 128, elements: !4356)
!4356 = !{!4357, !4358}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4355, file: !306, line: 15, baseType: !4353, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4355, file: !306, line: 16, baseType: !4353, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4347, file: !306, line: 172, baseType: !4360, size: 128, offset: 192)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_submit_link", file: !306, line: 162, size: 128, elements: !4361)
!4361 = !{!4362, !4443}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4360, file: !306, line: 163, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_kiocb", file: !306, line: 528, size: 1920, elements: !4365)
!4365 = !{!4366, !4376, !4377, !4378, !4379, !4380, !4390, !4392, !4393, !4394, !4404, !4409, !4410, !4411, !4424, !4425, !4426, !4429, !4430, !4431, !4432, !4438}
!4366 = !DIDerivedType(tag: DW_TAG_member, scope: !4364, file: !306, line: 529, baseType: !4367, size: 512)
!4367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4364, file: !306, line: 529, size: 512, elements: !4368)
!4368 = !{!4369, !4370}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4367, file: !306, line: 536, baseType: !357, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4367, file: !306, line: 537, baseType: !4371, size: 512)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cmd_data", file: !306, line: 512, size: 512, elements: !4372)
!4372 = !{!4373, !4374}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4371, file: !306, line: 513, baseType: !357, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4371, file: !306, line: 515, baseType: !4375, size: 448, offset: 64)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 448, elements: !1160)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4364, file: !306, line: 540, baseType: !95, size: 8, offset: 512)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll_completed", scope: !4364, file: !306, line: 542, baseType: !95, size: 8, offset: 520)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "buf_index", scope: !4364, file: !306, line: 548, baseType: !105, size: 16, offset: 528)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4364, file: !306, line: 549, baseType: !17, size: 32, offset: 544)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "cqe", scope: !4364, file: !306, line: 551, baseType: !4381, size: 128, offset: 576)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cqe", file: !306, line: 498, size: 128, elements: !4382)
!4382 = !{!4383, !4384, !4385}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4381, file: !306, line: 499, baseType: !510, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4381, file: !306, line: 500, baseType: !527, size: 32, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !306, line: 502, baseType: !4386, size: 32, offset: 96)
!4386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4381, file: !306, line: 502, size: 32, elements: !4387)
!4387 = !{!4388, !4389}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4386, file: !306, line: 503, baseType: !567, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4386, file: !306, line: 504, baseType: !34, size: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4364, file: !306, line: 553, baseType: !4391, size: 64, offset: 704)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4364, file: !306, line: 554, baseType: !3812, size: 64, offset: 768)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node", scope: !4364, file: !306, line: 556, baseType: !4327, size: 64, offset: 832)
!4394 = !DIDerivedType(tag: DW_TAG_member, scope: !4364, file: !306, line: 558, baseType: !4395, size: 64, offset: 896)
!4395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4364, file: !306, line: 558, size: 64, elements: !4396)
!4396 = !{!4397, !4398, !4401}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "imu", scope: !4395, file: !306, line: 560, baseType: !4344, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "kbuf", scope: !4395, file: !306, line: 563, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_buffer", file: !306, line: 563, flags: DIFlagFwdDecl)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "buf_list", scope: !4395, file: !306, line: 569, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_buffer_list", file: !306, line: 569, flags: DIFlagFwdDecl)
!4404 = !DIDerivedType(tag: DW_TAG_member, scope: !4364, file: !306, line: 572, baseType: !4405, size: 64, offset: 960)
!4405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4364, file: !306, line: 572, size: 64, elements: !4406)
!4406 = !{!4407, !4408}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "comp_list", scope: !4405, file: !306, line: 574, baseType: !4350, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "apoll_events", scope: !4405, file: !306, line: 576, baseType: !2156, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4364, file: !306, line: 578, baseType: !61, size: 32, offset: 1024)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "poll_refs", scope: !4364, file: !306, line: 579, baseType: !61, size: 32, offset: 1056)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "io_task_work", scope: !4364, file: !306, line: 580, baseType: !4412, size: 128, offset: 1088)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_task_work", file: !306, line: 493, size: 128, elements: !4413)
!4413 = !{!4414, !4415}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4412, file: !306, line: 494, baseType: !364, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4412, file: !306, line: 495, baseType: !4416, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_req_tw_func_t", file: !306, line: 491, baseType: !4417)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !4363, !4420}
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_tw_state", file: !306, line: 383, size: 8, elements: !4422)
!4422 = !{!4423}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4421, file: !306, line: 385, baseType: !602, size: 8)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tw", scope: !4364, file: !306, line: 581, baseType: !17, size: 32, offset: 1216)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "hash_node", scope: !4364, file: !306, line: 583, baseType: !450, size: 128, offset: 1280)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "apoll", scope: !4364, file: !306, line: 585, baseType: !4427, size: 64, offset: 1408)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "async_poll", file: !306, line: 585, flags: DIFlagFwdDecl)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "async_data", scope: !4364, file: !306, line: 587, baseType: !32, size: 64, offset: 1472)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4364, file: !306, line: 589, baseType: !4363, size: 64, offset: 1536)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "creds", scope: !4364, file: !306, line: 591, baseType: !482, size: 64, offset: 1600)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4364, file: !306, line: 592, baseType: !4433, size: 128, offset: 1664)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work", file: !306, line: 19, size: 128, elements: !4434)
!4434 = !{!4435, !4436, !4437}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4433, file: !306, line: 20, baseType: !4350, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4433, file: !306, line: 21, baseType: !17, size: 32, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_seq", scope: !4433, file: !306, line: 23, baseType: !34, size: 32, offset: 96)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "big_cqe", scope: !4364, file: !306, line: 597, baseType: !4439, size: 128, offset: 1792)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4364, file: !306, line: 594, size: 128, elements: !4440)
!4440 = !{!4441, !4442}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !4439, file: !306, line: 595, baseType: !509, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !4439, file: !306, line: 596, baseType: !509, size: 64, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4360, file: !306, line: 164, baseType: !4363, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "plug_started", scope: !4347, file: !306, line: 174, baseType: !602, size: 8, offset: 320)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "need_plug", scope: !4347, file: !306, line: 175, baseType: !602, size: 8, offset: 328)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "submit_nr", scope: !4347, file: !306, line: 176, baseType: !38, size: 16, offset: 336)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "cqes_count", scope: !4347, file: !306, line: 177, baseType: !17, size: 32, offset: 352)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !4347, file: !306, line: 178, baseType: !4449, size: 320, offset: 384)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !180, line: 976, size: 320, elements: !4450)
!4450 = !{!4451, !4452, !4453, !4454, !4455, !4456, !4457}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4449, file: !180, line: 977, baseType: !2973, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4449, file: !180, line: 980, baseType: !2973, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4449, file: !180, line: 981, baseType: !38, size: 16, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4449, file: !180, line: 983, baseType: !38, size: 16, offset: 144)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4449, file: !180, line: 985, baseType: !602, size: 8, offset: 160)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4449, file: !180, line: 986, baseType: !602, size: 8, offset: 168)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4449, file: !180, line: 988, baseType: !109, size: 128, offset: 192)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "io_bl_xa", scope: !4241, file: !306, line: 253, baseType: !1111, size: 128, offset: 1600)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_table_locked", scope: !4241, file: !306, line: 255, baseType: !4460, size: 128, offset: 1728)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_hash_table", file: !306, line: 42, size: 128, elements: !4461)
!4461 = !{!4462, !4468}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "hbs", scope: !4460, file: !306, line: 43, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_hash_bucket", file: !306, line: 37, size: 512, align: 512, elements: !4465)
!4465 = !{!4466, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4464, file: !306, line: 38, baseType: !71, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4464, file: !306, line: 39, baseType: !446, size: 64, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "hash_bits", scope: !4460, file: !306, line: 44, baseType: !17, size: 32, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "apoll_cache", scope: !4241, file: !306, line: 256, baseType: !4470, size: 192, offset: 1856)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_alloc_cache", file: !306, line: 189, size: 192, elements: !4471)
!4471 = !{!4472, !4473, !4474, !4475}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4470, file: !306, line: 190, baseType: !4350, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached", scope: !4470, file: !306, line: 191, baseType: !17, size: 32, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "max_cached", scope: !4470, file: !306, line: 192, baseType: !17, size: 32, offset: 96)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4470, file: !306, line: 193, baseType: !47, size: 64, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "netmsg_cache", scope: !4241, file: !306, line: 257, baseType: !4470, size: 192, offset: 2048)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll_list", scope: !4241, file: !306, line: 265, baseType: !4355, size: 128, offset: 2240)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "poll_multi_queue", scope: !4241, file: !306, line: 266, baseType: !602, size: 8, offset: 2368)
!4479 = !DIDerivedType(tag: DW_TAG_member, scope: !4192, file: !306, line: 269, baseType: !4480, size: 512, align: 512, offset: 3072)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !306, line: 269, size: 512, align: 512, elements: !4481)
!4481 = !{!4482, !4484, !4485, !4486, !4487, !4499}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_cached", scope: !4480, file: !306, line: 274, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_sentinel", scope: !4480, file: !306, line: 275, baseType: !4483, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "cached_cq_tail", scope: !4480, file: !306, line: 277, baseType: !17, size: 32, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "cq_entries", scope: !4480, file: !306, line: 278, baseType: !17, size: 32, offset: 160)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "io_ev_fd", scope: !4480, file: !306, line: 279, baseType: !4488, size: 64, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_ev_fd", file: !306, line: 181, size: 320, elements: !4490)
!4490 = !{!4491, !4495, !4496, !4497, !4498}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ev_fd", scope: !4489, file: !306, line: 182, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfd_ctx", file: !4494, line: 29, flags: DIFlagFwdDecl)
!4494 = !DIFile(filename: "./include/linux/eventfd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06e91fc4ebd2cc8e97773c04a86a634b")
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "eventfd_async", scope: !4489, file: !306, line: 183, baseType: !17, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4489, file: !306, line: 184, baseType: !370, size: 128, align: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4489, file: !306, line: 185, baseType: !61, size: 32, offset: 256)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4489, file: !306, line: 186, baseType: !61, size: 32, offset: 288)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "cq_extra", scope: !4480, file: !306, line: 280, baseType: !17, size: 32, offset: 256)
!4500 = !DIDerivedType(tag: DW_TAG_member, scope: !4192, file: !306, line: 287, baseType: !4501, size: 512, align: 512, offset: 3584)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !306, line: 287, size: 512, align: 512, elements: !4502)
!4502 = !{!4503, !4507, !4508, !4509, !4510}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "work_llist", scope: !4501, file: !306, line: 288, baseType: !4504, size: 64)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !365, line: 56, size: 64, elements: !4505)
!4505 = !{!4506}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4504, file: !365, line: 57, baseType: !368, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "check_cq", scope: !4501, file: !306, line: 289, baseType: !51, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "cq_wait_nr", scope: !4501, file: !306, line: 290, baseType: !61, size: 32, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "cq_timeouts", scope: !4501, file: !306, line: 291, baseType: !61, size: 32, offset: 160)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "cq_wait", scope: !4501, file: !306, line: 292, baseType: !68, size: 192, offset: 192)
!4511 = !DIDerivedType(tag: DW_TAG_member, scope: !4192, file: !306, line: 296, baseType: !4512, size: 512, align: 512, offset: 4096)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !306, line: 296, size: 512, align: 512, elements: !4513)
!4513 = !{!4514, !4515, !4516, !4517}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_lock", scope: !4512, file: !306, line: 297, baseType: !71, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_list", scope: !4512, file: !306, line: 298, baseType: !109, size: 128, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "ltimeout_list", scope: !4512, file: !306, line: 299, baseType: !109, size: 128, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "cq_last_tm_flush", scope: !4512, file: !306, line: 300, baseType: !17, size: 32, offset: 320)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cqes", scope: !4192, file: !306, line: 303, baseType: !4519, size: 2048, offset: 4608)
!4519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4230, size: 2048, elements: !4161)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "completion_lock", scope: !4192, file: !306, line: 305, baseType: !71, size: 32, offset: 6656)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "locked_free_list", scope: !4192, file: !306, line: 308, baseType: !4355, size: 128, offset: 6720)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "locked_free_nr", scope: !4192, file: !306, line: 309, baseType: !17, size: 32, offset: 6848)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_comp", scope: !4192, file: !306, line: 311, baseType: !109, size: 128, offset: 6912)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "cq_overflow_list", scope: !4192, file: !306, line: 312, baseType: !109, size: 128, offset: 7040)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_table", scope: !4192, file: !306, line: 313, baseType: !4460, size: 128, offset: 7168)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "sq_creds", scope: !4192, file: !306, line: 315, baseType: !482, size: 64, offset: 7296)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "sq_data", scope: !4192, file: !306, line: 316, baseType: !4528, size: 64, offset: 7360)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_sq_data", file: !306, line: 316, flags: DIFlagFwdDecl)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "sqo_sq_wait", scope: !4192, file: !306, line: 318, baseType: !68, size: 192, offset: 7424)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "sqd_list", scope: !4192, file: !306, line: 319, baseType: !109, size: 128, offset: 7616)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "file_alloc_start", scope: !4192, file: !306, line: 321, baseType: !17, size: 32, offset: 7744)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "file_alloc_end", scope: !4192, file: !306, line: 322, baseType: !17, size: 32, offset: 7776)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "personalities", scope: !4192, file: !306, line: 324, baseType: !1111, size: 128, offset: 7808)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "pers_next", scope: !4192, file: !306, line: 325, baseType: !566, size: 32, offset: 7936)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_cache", scope: !4192, file: !306, line: 327, baseType: !109, size: 128, offset: 8000)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "io_buf_list", scope: !4192, file: !306, line: 330, baseType: !446, size: 64, offset: 8128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wq", scope: !4192, file: !306, line: 333, baseType: !68, size: 192, offset: 8192)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "restrictions", scope: !4192, file: !306, line: 334, baseType: !4540, size: 192, offset: 8384)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_restriction", file: !306, line: 154, size: 192, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "register_op", scope: !4540, file: !306, line: 155, baseType: !3522, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_op", scope: !4540, file: !306, line: 156, baseType: !3522, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_flags_allowed", scope: !4540, file: !306, line: 157, baseType: !95, size: 8, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_flags_required", scope: !4540, file: !306, line: 158, baseType: !95, size: 8, offset: 136)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4540, file: !306, line: 159, baseType: !602, size: 8, offset: 144)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_ubuf", scope: !4192, file: !306, line: 337, baseType: !4344, size: 64, offset: 8576)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "file_data", scope: !4192, file: !306, line: 338, baseType: !4549, size: 64, offset: 8640)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_rsrc_data", file: !306, line: 338, flags: DIFlagFwdDecl)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "buf_data", scope: !4192, file: !306, line: 339, baseType: !4549, size: 64, offset: 8704)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_ref_list", scope: !4192, file: !306, line: 342, baseType: !109, size: 128, offset: 8768)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node_cache", scope: !4192, file: !306, line: 343, baseType: !4470, size: 192, offset: 8896)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_quiesce_wq", scope: !4192, file: !306, line: 344, baseType: !68, size: 192, offset: 9088)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_quiesce", scope: !4192, file: !306, line: 345, baseType: !17, size: 32, offset: 9280)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_pages", scope: !4192, file: !306, line: 347, baseType: !109, size: 128, offset: 9344)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "hash_map", scope: !4192, file: !306, line: 350, baseType: !4558, size: 64, offset: 9472)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_hash", file: !4560, line: 27, size: 320, elements: !4561)
!4560 = !DIFile(filename: "io_uring/io-wq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ae69a0ce48125548eeefce29da87ee")
!4561 = !{!4562, !4563, !4564}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4559, file: !4560, line: 28, baseType: !437, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4559, file: !4560, line: 29, baseType: !51, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4559, file: !4560, line: 30, baseType: !68, size: 192, offset: 128)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !4192, file: !306, line: 353, baseType: !655, size: 64, offset: 9536)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "mm_account", scope: !4192, file: !306, line: 354, baseType: !1417, size: 64, offset: 9600)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "fallback_llist", scope: !4192, file: !306, line: 357, baseType: !4504, size: 64, offset: 9664)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "fallback_work", scope: !4192, file: !306, line: 358, baseType: !2485, size: 704, offset: 9728)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "exit_work", scope: !4192, file: !306, line: 359, baseType: !735, size: 256, offset: 10432)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "tctx_list", scope: !4192, file: !306, line: 360, baseType: !109, size: 128, offset: 10688)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "ref_comp", scope: !4192, file: !306, line: 361, baseType: !774, size: 256, offset: 10816)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "iowq_limits", scope: !4192, file: !306, line: 364, baseType: !4573, size: 64, offset: 11072)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 64, elements: !2319)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "iowq_limits_set", scope: !4192, file: !306, line: 365, baseType: !602, size: 8, offset: 11136)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wq_task_work", scope: !4192, file: !306, line: 367, baseType: !370, size: 128, align: 64, offset: 11200)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "defer_list", scope: !4192, file: !306, line: 368, baseType: !109, size: 128, offset: 11328)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "sq_thread_idle", scope: !4192, file: !306, line: 369, baseType: !17, size: 32, offset: 11456)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "evfd_last_cq_tail", scope: !4192, file: !306, line: 371, baseType: !17, size: 32, offset: 11488)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "n_ring_pages", scope: !4192, file: !306, line: 377, baseType: !38, size: 16, offset: 11520)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "n_sqe_pages", scope: !4192, file: !306, line: 378, baseType: !38, size: 16, offset: 11536)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "ring_pages", scope: !4192, file: !306, line: 379, baseType: !1844, size: 64, offset: 11584)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_pages", scope: !4192, file: !306, line: 380, baseType: !1844, size: 64, offset: 11648)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "io_wq", scope: !4186, file: !306, line: 56, baseType: !4584, size: 64, offset: 128)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq", file: !306, line: 56, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "registered_rings", scope: !4186, file: !306, line: 57, baseType: !4587, size: 1024, offset: 192)
!4587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 1024, elements: !4161)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4186, file: !306, line: 59, baseType: !1111, size: 128, offset: 1216)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4186, file: !306, line: 60, baseType: !68, size: 192, offset: 1344)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "in_cancel", scope: !4186, file: !306, line: 61, baseType: !61, size: 32, offset: 1536)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_tracked", scope: !4186, file: !306, line: 62, baseType: !61, size: 32, offset: 1568)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "inflight", scope: !4186, file: !306, line: 63, baseType: !661, size: 320, offset: 1600)
!4593 = !DIDerivedType(tag: DW_TAG_member, scope: !4186, file: !306, line: 65, baseType: !4594, size: 512, align: 512, offset: 2048)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4186, file: !306, line: 65, size: 512, align: 512, elements: !4595)
!4595 = !{!4596, !4597}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !4594, file: !306, line: 66, baseType: !4504, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "task_work", scope: !4594, file: !306, line: 67, baseType: !370, size: 128, align: 64, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3813, file: !3814, line: 1107, baseType: !4599, size: 64, offset: 15296)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4601, line: 31, size: 576, elements: !4602)
!4601 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4602 = !{!4603, !4604, !4607, !4610, !4613, !4614, !4617, !4620, !4621}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4600, file: !4601, line: 32, baseType: !437, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4600, file: !4601, line: 33, baseType: !4605, size: 64, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4601, line: 9, flags: DIFlagFwdDecl)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4600, file: !4601, line: 34, baseType: !4608, size: 64, offset: 128)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4601, line: 10, flags: DIFlagFwdDecl)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4600, file: !4601, line: 35, baseType: !4611, size: 64, offset: 192)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4601, line: 8, flags: DIFlagFwdDecl)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4600, file: !4601, line: 36, baseType: !466, size: 64, offset: 256)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4600, file: !4601, line: 37, baseType: !4615, size: 64, offset: 320)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !520, line: 34, flags: DIFlagFwdDecl)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4600, file: !4601, line: 38, baseType: !4618, size: 64, offset: 384)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4601, line: 38, flags: DIFlagFwdDecl)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4600, file: !4601, line: 39, baseType: !4618, size: 64, offset: 448)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4600, file: !4601, line: 40, baseType: !4622, size: 64, offset: 512)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4624, line: 771, size: 384, elements: !4625)
!4624 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4625 = !{!4626, !4627, !4628, !4629}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4623, file: !4624, line: 772, baseType: !719, size: 192)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4623, file: !4624, line: 773, baseType: !686, size: 64, offset: 192)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4623, file: !4624, line: 774, baseType: !821, size: 64, offset: 256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4623, file: !4624, line: 775, baseType: !4630, size: 64, offset: 320)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4632, line: 209, size: 4736, elements: !4633)
!4632 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4633 = !{!4634, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4631, file: !4632, line: 215, baseType: !4635, size: 896)
!4635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4636, size: 896, elements: !4691)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4632, line: 152, size: 1600, elements: !4638)
!4638 = !{!4639, !4742, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4866}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4637, file: !4632, line: 154, baseType: !4640, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4632, line: 389, size: 7872, elements: !4642)
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4662, !4663, !4665, !4666, !4667, !4668, !4669, !4670, !4688, !4689, !4693, !4694, !4695, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4729, !4732, !4733, !4740}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4641, file: !4632, line: 391, baseType: !4637, size: 1600)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4641, file: !4632, line: 393, baseType: !51, size: 64, offset: 1600)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4641, file: !4632, line: 401, baseType: !34, size: 32, offset: 1664)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4641, file: !4632, line: 404, baseType: !34, size: 32, offset: 1696)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4641, file: !4632, line: 417, baseType: !34, size: 32, offset: 1728)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4641, file: !4632, line: 418, baseType: !34, size: 32, offset: 1760)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4641, file: !4632, line: 419, baseType: !34, size: 32, offset: 1792)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4641, file: !4632, line: 432, baseType: !34, size: 32, offset: 1824)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4641, file: !4632, line: 433, baseType: !34, size: 32, offset: 1856)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4641, file: !4632, line: 434, baseType: !34, size: 32, offset: 1888)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4641, file: !4632, line: 436, baseType: !34, size: 32, offset: 1920)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4641, file: !4632, line: 439, baseType: !17, size: 32, offset: 1952)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4641, file: !4632, line: 441, baseType: !2044, size: 64, offset: 1984)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4641, file: !4632, line: 442, baseType: !4657, size: 448, offset: 2048)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4632, line: 138, size: 448, elements: !4658)
!4658 = !{!4659, !4660, !4661}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4657, file: !4632, line: 140, baseType: !2044, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4657, file: !4632, line: 141, baseType: !51, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4657, file: !4632, line: 142, baseType: !2428, size: 320, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4641, file: !4632, line: 443, baseType: !4657, size: 448, offset: 2496)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4641, file: !4632, line: 446, baseType: !4664, offset: 2944)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4657, elements: !4322)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4641, file: !4632, line: 455, baseType: !105, size: 16, offset: 2944)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4641, file: !4632, line: 456, baseType: !105, size: 16, offset: 2960)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4641, file: !4632, line: 457, baseType: !105, size: 16, offset: 2976)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4641, file: !4632, line: 458, baseType: !105, size: 16, offset: 2992)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4641, file: !4632, line: 461, baseType: !4635, size: 896, offset: 3008)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4641, file: !4632, line: 463, baseType: !4671, size: 64, offset: 3904)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4632, line: 537, size: 41664, elements: !4673)
!4673 = !{!4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4687}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4672, file: !4632, line: 538, baseType: !2064, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4672, file: !4632, line: 541, baseType: !17, size: 32, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4672, file: !4632, line: 544, baseType: !34, size: 32, offset: 96)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4672, file: !4632, line: 547, baseType: !109, size: 128, offset: 128)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4672, file: !4632, line: 548, baseType: !370, size: 128, align: 64, offset: 256)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4672, file: !4632, line: 555, baseType: !4641, size: 7872, offset: 384)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4672, file: !4632, line: 558, baseType: !4640, size: 64, offset: 8256)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4672, file: !4632, line: 561, baseType: !61, size: 32, offset: 8320)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4672, file: !4632, line: 564, baseType: !17, size: 32, offset: 8352)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4672, file: !4632, line: 567, baseType: !4684, size: 32768, offset: 8384)
!4684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !4685)
!4685 = !{!4686}
!4686 = !DISubrange(count: 4096)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4672, file: !4632, line: 570, baseType: !3651, size: 512, offset: 41152)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4641, file: !4632, line: 469, baseType: !109, size: 128, offset: 3968)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4641, file: !4632, line: 478, baseType: !4690, size: 1792, offset: 4096)
!4690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1792, elements: !4691)
!4691 = !{!4692}
!4692 = !DISubrange(count: 14)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4641, file: !4632, line: 487, baseType: !4640, size: 64, offset: 5888)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4641, file: !4632, line: 488, baseType: !4640, size: 64, offset: 5952)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4641, file: !4632, line: 491, baseType: !4696, size: 64, offset: 6016)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4632, line: 327, size: 896, elements: !4698)
!4698 = !{!4699, !4702, !4712, !4713, !4714, !4715, !4716}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4697, file: !4632, line: 332, baseType: !4700)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4701, line: 64, elements: !1438)
!4701 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4697, file: !4632, line: 333, baseType: !4703, size: 192)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4632, line: 299, size: 192, elements: !4704)
!4704 = !{!4705}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4703, file: !4632, line: 300, baseType: !4706, size: 192)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4707, line: 17, size: 192, elements: !4708)
!4707 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4708 = !{!4709, !4710, !4711}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4706, file: !4707, line: 18, baseType: !509, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4706, file: !4707, line: 19, baseType: !509, size: 64, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4706, file: !4707, line: 20, baseType: !511, size: 64, offset: 128)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4697, file: !4632, line: 339, baseType: !4703, size: 192, offset: 192)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4697, file: !4632, line: 347, baseType: !4703, size: 192, offset: 384)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4697, file: !4632, line: 353, baseType: !4703, size: 192, offset: 576)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4697, file: !4632, line: 366, baseType: !4640, size: 64, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4697, file: !4632, line: 367, baseType: !4640, size: 64, offset: 832)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4641, file: !4632, line: 492, baseType: !109, size: 128, offset: 6080)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4641, file: !4632, line: 495, baseType: !4703, size: 192, offset: 6208)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4641, file: !4632, line: 496, baseType: !4703, size: 192, offset: 6400)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4641, file: !4632, line: 497, baseType: !4126, size: 192, offset: 6592)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4641, file: !4632, line: 503, baseType: !109, size: 128, offset: 6784)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4641, file: !4632, line: 504, baseType: !392, size: 256, offset: 6912)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4641, file: !4632, line: 507, baseType: !66, size: 192, offset: 7168)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4641, file: !4632, line: 510, baseType: !735, size: 256, offset: 7360)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4641, file: !4632, line: 513, baseType: !4726, size: 64, offset: 7616)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4728, line: 214, elements: !1438)
!4728 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4641, file: !4632, line: 516, baseType: !4730, offset: 7680)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4731, line: 76, elements: !1438)
!4731 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4641, file: !4632, line: 519, baseType: !61, size: 32, offset: 7680)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4641, file: !4632, line: 522, baseType: !4734, size: 128, offset: 7712)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4632, line: 370, size: 128, elements: !4735)
!4735 = !{!4736, !4737, !4738, !4739}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4734, file: !4632, line: 372, baseType: !602, size: 8)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4734, file: !4632, line: 375, baseType: !34, size: 32, offset: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4734, file: !4632, line: 380, baseType: !34, size: 32, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4734, file: !4632, line: 386, baseType: !34, size: 32, offset: 96)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4641, file: !4632, line: 529, baseType: !4741, offset: 7872)
!4741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4640, elements: !468)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4637, file: !4632, line: 157, baseType: !4743, size: 64, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4632, line: 669, size: 1984, elements: !4745)
!4745 = !{!4746, !4750, !4754, !4758, !4759, !4760, !4761, !4765, !4769, !4770, !4776, !4780, !4781, !4782, !4786, !4790, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4811, !4812, !4849, !4850}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4744, file: !4632, line: 670, baseType: !4747, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!4636, !4636}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4744, file: !4632, line: 671, baseType: !4751, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!34, !4636}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4744, file: !4632, line: 672, baseType: !4755, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{null, !4636}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4744, file: !4632, line: 673, baseType: !4755, size: 64, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4744, file: !4632, line: 674, baseType: !4755, size: 64, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4744, file: !4632, line: 675, baseType: !4755, size: 64, offset: 320)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4744, file: !4632, line: 676, baseType: !4762, size: 64, offset: 384)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{null, !4636, !34}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4744, file: !4632, line: 677, baseType: !4766, size: 64, offset: 448)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!34, !2089, !4636}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4744, file: !4632, line: 679, baseType: !4766, size: 64, offset: 512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4744, file: !4632, line: 682, baseType: !4771, size: 64, offset: 576)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!34, !4774}
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4632, line: 30, flags: DIFlagFwdDecl)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4744, file: !4632, line: 683, baseType: !4777, size: 64, offset: 640)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{null, !4774}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4744, file: !4632, line: 684, baseType: !4777, size: 64, offset: 704)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4744, file: !4632, line: 685, baseType: !2537, size: 64, offset: 768)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4744, file: !4632, line: 686, baseType: !4783, size: 64, offset: 832)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!34, !3812, !4630}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4744, file: !4632, line: 688, baseType: !4787, size: 64, offset: 896)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{null, !3812, !4630}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4744, file: !4632, line: 689, baseType: !4791, size: 64, offset: 960)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{null, !3812}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4744, file: !4632, line: 690, baseType: !4791, size: 64, offset: 1024)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4744, file: !4632, line: 691, baseType: !4791, size: 64, offset: 1088)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4744, file: !4632, line: 692, baseType: !4755, size: 64, offset: 1152)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4744, file: !4632, line: 694, baseType: !602, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4744, file: !4632, line: 707, baseType: !602, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4744, file: !4632, line: 719, baseType: !602, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4744, file: !4632, line: 722, baseType: !34, size: 32, offset: 1248)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4744, file: !4632, line: 723, baseType: !29, size: 64, offset: 1280)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4744, file: !4632, line: 726, baseType: !29, size: 64, offset: 1344)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4744, file: !4632, line: 729, baseType: !4671, size: 64, offset: 1408)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4744, file: !4632, line: 732, baseType: !4805, size: 192, offset: 1472)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4806, line: 19, size: 192, elements: !4807)
!4806 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4807 = !{!4808, !4809, !4810}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4805, file: !4806, line: 20, baseType: !1111, size: 128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4805, file: !4806, line: 21, baseType: !17, size: 32, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4805, file: !4806, line: 22, baseType: !17, size: 32, offset: 160)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4744, file: !4632, line: 738, baseType: !109, size: 128, offset: 1664)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4744, file: !4632, line: 744, baseType: !4813, size: 64, offset: 1792)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4632, line: 580, size: 1728, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4825, !4826, !4827, !4831, !4835, !4836, !4837, !4838, !4839, !4843, !4847, !4848}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4814, file: !4632, line: 586, baseType: !3651, size: 512)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4814, file: !4632, line: 587, baseType: !51, size: 64, offset: 512)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4814, file: !4632, line: 593, baseType: !47, size: 64, offset: 576)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4814, file: !4632, line: 596, baseType: !17, size: 32, offset: 640)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4814, file: !4632, line: 604, baseType: !17, size: 32, offset: 672)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4814, file: !4632, line: 610, baseType: !4743, size: 64, offset: 704)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4814, file: !4632, line: 611, baseType: !109, size: 128, offset: 768)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4814, file: !4632, line: 612, baseType: !4824, size: 64, offset: 896)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4814, file: !4632, line: 614, baseType: !2080, size: 64, offset: 960)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4814, file: !4632, line: 615, baseType: !2138, size: 64, offset: 1024)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4814, file: !4632, line: 621, baseType: !4828, size: 64, offset: 1088)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!509, !4636, !4813}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4814, file: !4632, line: 625, baseType: !4832, size: 64, offset: 1152)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!389, !4636, !4813}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4814, file: !4632, line: 628, baseType: !2119, size: 64, offset: 1216)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4814, file: !4632, line: 631, baseType: !2107, size: 64, offset: 1280)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4814, file: !4632, line: 632, baseType: !2115, size: 64, offset: 1344)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4814, file: !4632, line: 633, baseType: !2111, size: 64, offset: 1408)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4814, file: !4632, line: 640, baseType: !4840, size: 64, offset: 1472)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!34, !4636, !4813, !509}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4814, file: !4632, line: 645, baseType: !4844, size: 64, offset: 1536)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!34, !4636, !4813, !389}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4814, file: !4632, line: 654, baseType: !2146, size: 64, offset: 1600)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4814, file: !4632, line: 657, baseType: !2153, size: 64, offset: 1664)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4744, file: !4632, line: 745, baseType: !4813, size: 64, offset: 1856)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4744, file: !4632, line: 754, baseType: !17, size: 32, offset: 1920)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4637, file: !4632, line: 160, baseType: !1358, size: 128, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4637, file: !4632, line: 163, baseType: !109, size: 128, offset: 256)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4637, file: !4632, line: 164, baseType: !109, size: 128, offset: 384)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4637, file: !4632, line: 167, baseType: !109, size: 128, offset: 512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4637, file: !4632, line: 173, baseType: !34, size: 32, offset: 640)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4637, file: !4632, line: 175, baseType: !17, size: 32, offset: 672)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4637, file: !4632, line: 183, baseType: !509, size: 64, offset: 704)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4637, file: !4632, line: 189, baseType: !61, size: 32, offset: 768)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4637, file: !4632, line: 192, baseType: !735, size: 256, offset: 832)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4637, file: !4632, line: 193, baseType: !4861, size: 448, offset: 1088)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !736, line: 120, size: 448, elements: !4862)
!4862 = !{!4863, !4864, !4865}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4861, file: !736, line: 121, baseType: !735, size: 256)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4861, file: !736, line: 122, baseType: !370, size: 128, align: 64, offset: 256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4861, file: !736, line: 125, baseType: !2490, size: 64, offset: 384)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4637, file: !4632, line: 199, baseType: !4636, size: 64, offset: 1536)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4631, file: !4632, line: 218, baseType: !437, size: 32, offset: 896)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4631, file: !4632, line: 226, baseType: !4630, size: 64, offset: 960)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4631, file: !4632, line: 229, baseType: !4640, size: 64, offset: 1024)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4631, file: !4632, line: 232, baseType: !34, size: 32, offset: 1088)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4631, file: !4632, line: 241, baseType: !109, size: 128, offset: 1152)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4631, file: !4632, line: 242, baseType: !109, size: 128, offset: 1280)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4631, file: !4632, line: 243, baseType: !109, size: 128, offset: 1408)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4631, file: !4632, line: 246, baseType: !109, size: 128, offset: 1536)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4631, file: !4632, line: 255, baseType: !4690, size: 1792, offset: 1664)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4631, file: !4632, line: 258, baseType: !109, size: 128, offset: 3456)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4631, file: !4632, line: 259, baseType: !109, size: 128, offset: 3584)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4631, file: !4632, line: 265, baseType: !450, size: 128, offset: 3712)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4631, file: !4632, line: 271, baseType: !109, size: 128, offset: 3840)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4631, file: !4632, line: 277, baseType: !109, size: 128, offset: 3968)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4631, file: !4632, line: 278, baseType: !109, size: 128, offset: 4096)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4631, file: !4632, line: 279, baseType: !109, size: 128, offset: 4224)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4631, file: !4632, line: 288, baseType: !4640, size: 64, offset: 4352)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4631, file: !4632, line: 289, baseType: !4640, size: 64, offset: 4416)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4631, file: !4632, line: 290, baseType: !4630, size: 64, offset: 4480)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4631, file: !4632, line: 293, baseType: !602, size: 8, offset: 4544)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4631, file: !4632, line: 296, baseType: !370, size: 128, align: 64, offset: 4608)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3813, file: !3814, line: 1110, baseType: !4889, size: 64, offset: 15360)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4891, line: 93, size: 8768, elements: !4892)
!4891 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4892 = !{!4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4941, !4950, !4951, !4953, !4954, !4955, !4958, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4996, !4997, !5004, !5014, !5076, !5077, !5080, !5081, !5082, !5083, !5084, !5085}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4890, file: !4891, line: 94, baseType: !437, size: 32)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4890, file: !4891, line: 95, baseType: !61, size: 32, offset: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4890, file: !4891, line: 96, baseType: !34, size: 32, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4890, file: !4891, line: 97, baseType: !34, size: 32, offset: 96)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4890, file: !4891, line: 98, baseType: !109, size: 128, offset: 128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4890, file: !4891, line: 100, baseType: !66, size: 192, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4890, file: !4891, line: 103, baseType: !3812, size: 64, offset: 448)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4890, file: !4891, line: 106, baseType: !4901, size: 192, offset: 512)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4902, line: 32, size: 192, elements: !4903)
!4902 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4903 = !{!4904, !4905}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4901, file: !4902, line: 33, baseType: !109, size: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4901, file: !4902, line: 34, baseType: !4906, size: 64, offset: 128)
!4906 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4907, line: 25, baseType: !4908)
!4907 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4907, line: 23, size: 64, elements: !4909)
!4909 = !{!4910}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4908, file: !4907, line: 24, baseType: !3522, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4890, file: !4891, line: 109, baseType: !446, size: 64, offset: 704)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4890, file: !4891, line: 112, baseType: !34, size: 32, offset: 768)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4890, file: !4891, line: 114, baseType: !34, size: 32, offset: 800)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4890, file: !4891, line: 115, baseType: !3812, size: 64, offset: 832)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4890, file: !4891, line: 118, baseType: !34, size: 32, offset: 896)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4890, file: !4891, line: 119, baseType: !17, size: 32, offset: 928)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4890, file: !4891, line: 121, baseType: !4918, size: 64, offset: 960)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4891, line: 80, size: 448, elements: !4920)
!4920 = !{!4921, !4922, !4928}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4919, file: !4891, line: 81, baseType: !61, size: 32)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4919, file: !4891, line: 82, baseType: !4923, size: 128, offset: 64)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4891, line: 75, size: 128, elements: !4924)
!4924 = !{!4925, !4926}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4923, file: !4891, line: 76, baseType: !3812, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4923, file: !4891, line: 77, baseType: !4927, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4919, file: !4891, line: 83, baseType: !774, size: 256, offset: 192)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4890, file: !4891, line: 132, baseType: !17, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4890, file: !4891, line: 133, baseType: !17, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4890, file: !4891, line: 138, baseType: !17, size: 32, offset: 1056)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4890, file: !4891, line: 139, baseType: !109, size: 128, offset: 1088)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4890, file: !4891, line: 142, baseType: !3289, size: 512, offset: 1216)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4890, file: !4891, line: 143, baseType: !3269, size: 64, offset: 1728)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4890, file: !4891, line: 150, baseType: !4936, size: 256, offset: 1792)
!4936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4937, size: 256, elements: !2319)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4891, line: 38, size: 128, elements: !4938)
!4938 = !{!4939, !4940}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4937, file: !4891, line: 39, baseType: !509, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4937, file: !4891, line: 40, baseType: !509, size: 64, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4890, file: !4891, line: 156, baseType: !4942, size: 192, offset: 2048)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4891, line: 66, size: 192, elements: !4943)
!4943 = !{!4944}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4942, file: !4891, line: 67, baseType: !4945, size: 192)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4891, line: 47, size: 192, elements: !4946)
!4946 = !{!4947, !4948, !4949}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4945, file: !4891, line: 48, baseType: !385, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4945, file: !4891, line: 49, baseType: !385, size: 64, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4945, file: !4891, line: 50, baseType: !385, size: 64, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4890, file: !4891, line: 160, baseType: !4138, size: 640, offset: 2240)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4890, file: !4891, line: 163, baseType: !4952, size: 256, offset: 2880)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 256, elements: !455)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4890, file: !4891, line: 169, baseType: !433, size: 64, offset: 3136)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4890, file: !4891, line: 172, baseType: !34, size: 32, offset: 3200)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4890, file: !4891, line: 174, baseType: !4956, size: 64, offset: 3264)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4891, line: 174, flags: DIFlagFwdDecl)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4890, file: !4891, line: 185, baseType: !4959, size: 64, offset: 3328)
!4959 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !879, line: 860, baseType: !4960)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !879, line: 853, size: 64, elements: !4961)
!4961 = !{!4962, !4963}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4960, file: !879, line: 858, baseType: !878, size: 32)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4960, file: !879, line: 859, baseType: !71, size: 32, offset: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4890, file: !4891, line: 186, baseType: !509, size: 64, offset: 3392)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4890, file: !4891, line: 186, baseType: !509, size: 64, offset: 3456)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4890, file: !4891, line: 186, baseType: !509, size: 64, offset: 3520)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4890, file: !4891, line: 186, baseType: !509, size: 64, offset: 3584)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4890, file: !4891, line: 187, baseType: !509, size: 64, offset: 3648)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4890, file: !4891, line: 188, baseType: !509, size: 64, offset: 3712)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4890, file: !4891, line: 189, baseType: !4126, size: 192, offset: 3776)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4890, file: !4891, line: 190, baseType: !51, size: 64, offset: 3968)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4890, file: !4891, line: 190, baseType: !51, size: 64, offset: 4032)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4890, file: !4891, line: 190, baseType: !51, size: 64, offset: 4096)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4890, file: !4891, line: 190, baseType: !51, size: 64, offset: 4160)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4890, file: !4891, line: 191, baseType: !51, size: 64, offset: 4224)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4890, file: !4891, line: 191, baseType: !51, size: 64, offset: 4288)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4890, file: !4891, line: 191, baseType: !51, size: 64, offset: 4352)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4890, file: !4891, line: 191, baseType: !51, size: 64, offset: 4416)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4890, file: !4891, line: 192, baseType: !51, size: 64, offset: 4480)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4890, file: !4891, line: 192, baseType: !51, size: 64, offset: 4544)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4890, file: !4891, line: 192, baseType: !51, size: 64, offset: 4608)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4890, file: !4891, line: 192, baseType: !51, size: 64, offset: 4672)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4890, file: !4891, line: 193, baseType: !51, size: 64, offset: 4736)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4890, file: !4891, line: 193, baseType: !51, size: 64, offset: 4800)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4890, file: !4891, line: 194, baseType: !4986, size: 448, offset: 4864)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4987, line: 12, size: 448, elements: !4988)
!4987 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4988 = !{!4989, !4990, !4991, !4992, !4993, !4994, !4995}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4986, file: !4987, line: 15, baseType: !509, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4986, file: !4987, line: 17, baseType: !509, size: 64, offset: 64)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4986, file: !4987, line: 19, baseType: !509, size: 64, offset: 128)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4986, file: !4987, line: 21, baseType: !509, size: 64, offset: 192)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4986, file: !4987, line: 29, baseType: !509, size: 64, offset: 256)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4986, file: !4987, line: 35, baseType: !509, size: 64, offset: 320)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4986, file: !4987, line: 44, baseType: !509, size: 64, offset: 384)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4890, file: !4891, line: 202, baseType: !511, size: 64, offset: 5312)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4890, file: !4891, line: 213, baseType: !4998, size: 2048, offset: 5376)
!4998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4999, size: 2048, elements: !4161)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5000, line: 43, size: 128, elements: !5001)
!5000 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5001 = !{!5002, !5003}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4999, file: !5000, line: 44, baseType: !50, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4999, file: !5000, line: 45, baseType: !50, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4890, file: !4891, line: 216, baseType: !5005, size: 448, offset: 7424)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4891, line: 30, size: 448, elements: !5006)
!5006 = !{!5007, !5008, !5009, !5010, !5011, !5012, !5013}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5005, file: !4891, line: 31, baseType: !34, size: 32)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5005, file: !4891, line: 32, baseType: !836, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5005, file: !4891, line: 33, baseType: !51, size: 64, offset: 128)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5005, file: !4891, line: 34, baseType: !509, size: 64, offset: 192)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5005, file: !4891, line: 34, baseType: !509, size: 64, offset: 256)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5005, file: !4891, line: 35, baseType: !51, size: 64, offset: 320)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5005, file: !4891, line: 35, baseType: !51, size: 64, offset: 384)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4890, file: !4891, line: 219, baseType: !5015, size: 64, offset: 7872)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5017, line: 41, size: 3456, elements: !5018)
!5017 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5018 = !{!5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5016, file: !5017, line: 47, baseType: !106, size: 16)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5016, file: !5017, line: 48, baseType: !567, size: 32, offset: 32)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5016, file: !5017, line: 54, baseType: !97, size: 8, offset: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5016, file: !5017, line: 55, baseType: !97, size: 8, offset: 72)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5016, file: !5017, line: 73, baseType: !510, size: 64, align: 64, offset: 128)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5016, file: !5017, line: 74, baseType: !510, size: 64, offset: 192)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5016, file: !5017, line: 81, baseType: !510, size: 64, offset: 256)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5016, file: !5017, line: 82, baseType: !510, size: 64, offset: 320)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5016, file: !5017, line: 85, baseType: !510, size: 64, offset: 384)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5016, file: !5017, line: 86, baseType: !510, size: 64, offset: 448)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5016, file: !5017, line: 94, baseType: !510, size: 64, offset: 512)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5016, file: !5017, line: 102, baseType: !510, size: 64, offset: 576)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5016, file: !5017, line: 107, baseType: !2862, size: 256, offset: 640)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5016, file: !5017, line: 108, baseType: !97, size: 8, align: 64, offset: 896)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5016, file: !5017, line: 110, baseType: !5034, size: 24, offset: 904)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 24, elements: !429)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5016, file: !5017, line: 111, baseType: !567, size: 32, align: 64, offset: 960)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5016, file: !5017, line: 113, baseType: !567, size: 32, offset: 992)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5016, file: !5017, line: 114, baseType: !567, size: 32, offset: 1024)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5016, file: !5017, line: 115, baseType: !567, size: 32, offset: 1056)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5016, file: !5017, line: 117, baseType: !567, size: 32, offset: 1088)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5016, file: !5017, line: 118, baseType: !510, size: 64, align: 64, offset: 1152)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5016, file: !5017, line: 120, baseType: !510, size: 64, offset: 1216)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5016, file: !5017, line: 121, baseType: !510, size: 64, offset: 1280)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5016, file: !5017, line: 122, baseType: !510, size: 64, offset: 1344)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5016, file: !5017, line: 123, baseType: !510, size: 64, offset: 1408)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5016, file: !5017, line: 133, baseType: !510, size: 64, offset: 1472)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5016, file: !5017, line: 137, baseType: !510, size: 64, offset: 1536)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5016, file: !5017, line: 142, baseType: !510, size: 64, offset: 1600)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5016, file: !5017, line: 143, baseType: !510, size: 64, offset: 1664)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5016, file: !5017, line: 146, baseType: !510, size: 64, offset: 1728)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5016, file: !5017, line: 147, baseType: !510, size: 64, offset: 1792)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5016, file: !5017, line: 148, baseType: !510, size: 64, offset: 1856)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5016, file: !5017, line: 149, baseType: !510, size: 64, offset: 1920)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5016, file: !5017, line: 154, baseType: !510, size: 64, offset: 1984)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5016, file: !5017, line: 155, baseType: !510, size: 64, offset: 2048)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5016, file: !5017, line: 156, baseType: !510, size: 64, offset: 2112)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5016, file: !5017, line: 158, baseType: !510, size: 64, offset: 2176)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5016, file: !5017, line: 159, baseType: !510, size: 64, offset: 2240)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5016, file: !5017, line: 162, baseType: !510, size: 64, offset: 2304)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5016, file: !5017, line: 163, baseType: !510, size: 64, offset: 2368)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5016, file: !5017, line: 164, baseType: !510, size: 64, offset: 2432)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5016, file: !5017, line: 167, baseType: !510, size: 64, offset: 2496)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5016, file: !5017, line: 168, baseType: !510, size: 64, offset: 2560)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5016, file: !5017, line: 171, baseType: !510, size: 64, offset: 2624)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5016, file: !5017, line: 172, baseType: !510, size: 64, offset: 2688)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5016, file: !5017, line: 175, baseType: !510, size: 64, offset: 2752)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5016, file: !5017, line: 178, baseType: !510, size: 64, offset: 2816)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5016, file: !5017, line: 179, baseType: !510, size: 64, offset: 2880)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5016, file: !5017, line: 182, baseType: !567, size: 32, offset: 2944)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5016, file: !5017, line: 186, baseType: !510, size: 64, align: 64, offset: 3008)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5016, file: !5017, line: 194, baseType: !510, size: 64, offset: 3072)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5016, file: !5017, line: 195, baseType: !510, size: 64, offset: 3136)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5016, file: !5017, line: 199, baseType: !510, size: 64, offset: 3200)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5016, file: !5017, line: 200, baseType: !510, size: 64, offset: 3264)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5016, file: !5017, line: 203, baseType: !510, size: 64, offset: 3328)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5016, file: !5017, line: 204, baseType: !510, size: 64, offset: 3392)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4890, file: !4891, line: 222, baseType: !17, size: 32, offset: 7936)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4890, file: !4891, line: 223, baseType: !5078, size: 64, offset: 8000)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4891, line: 223, flags: DIFlagFwdDecl)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4890, file: !4891, line: 230, baseType: !602, size: 8, offset: 8064)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4890, file: !4891, line: 231, baseType: !571, size: 16, offset: 8080)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4890, file: !4891, line: 232, baseType: !571, size: 16, offset: 8096)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4890, file: !4891, line: 234, baseType: !1417, size: 64, offset: 8128)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4890, file: !4891, line: 237, baseType: !392, size: 256, offset: 8192)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4890, file: !4891, line: 243, baseType: !541, size: 320, offset: 8448)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3813, file: !3814, line: 1111, baseType: !5087, size: 64, offset: 15424)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4891, line: 20, size: 16640, elements: !5089)
!5089 = !{!5090, !5091, !5092, !5093}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5088, file: !4891, line: 21, baseType: !71, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5088, file: !4891, line: 22, baseType: !437, size: 32, offset: 32)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5088, file: !4891, line: 23, baseType: !66, size: 192, offset: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5088, file: !4891, line: 24, baseType: !5094, size: 16384, offset: 256)
!5094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5095, size: 16384, elements: !1209)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4902, line: 51, size: 256, elements: !5096)
!5096 = !{!5097}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5095, file: !4902, line: 52, baseType: !5098, size: 256)
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4902, line: 37, size: 256, elements: !5099)
!5099 = !{!5100, !5107, !5108, !5112}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5098, file: !4902, line: 39, baseType: !5101, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5102, line: 83, baseType: !5103)
!5102 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5102, line: 82, baseType: !5105)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{null, !34}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5098, file: !4902, line: 40, baseType: !51, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5098, file: !4902, line: 46, baseType: !5109, size: 64, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5102, line: 86, baseType: !5110)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5102, line: 85, baseType: !2538)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5098, file: !4902, line: 48, baseType: !4906, size: 64, offset: 192)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3813, file: !3814, line: 1112, baseType: !4906, size: 64, offset: 15488)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3813, file: !3814, line: 1113, baseType: !4906, size: 64, offset: 15552)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3813, file: !3814, line: 1115, baseType: !4906, size: 64, offset: 15616)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3813, file: !3814, line: 1116, baseType: !4901, size: 192, offset: 15680)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3813, file: !3814, line: 1117, baseType: !51, size: 64, offset: 15872)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3813, file: !3814, line: 1118, baseType: !47, size: 64, offset: 15936)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3813, file: !3814, line: 1119, baseType: !17, size: 32, offset: 16000)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3813, file: !3814, line: 1121, baseType: !373, size: 64, offset: 16064)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3813, file: !3814, line: 1125, baseType: !5122, size: 64, offset: 16128)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !3814, line: 43, flags: DIFlagFwdDecl)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3813, file: !3814, line: 1127, baseType: !472, size: 32, offset: 16192)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3813, file: !3814, line: 1128, baseType: !17, size: 32, offset: 16224)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3813, file: !3814, line: 1130, baseType: !5127, size: 128, offset: 16256)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5128, line: 37, size: 128, elements: !5129)
!5128 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5129 = !{!5130, !5131, !5132}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5127, file: !5128, line: 38, baseType: !34, size: 32)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5127, file: !5128, line: 39, baseType: !61, size: 32, offset: 32)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5127, file: !5128, line: 40, baseType: !5133, size: 64, offset: 64)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5128, line: 24, flags: DIFlagFwdDecl)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3813, file: !3814, line: 1131, baseType: !5136, size: 256, offset: 16384)
!5136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5137, line: 12, size: 256, elements: !5138)
!5137 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5138 = !{!5139, !5140, !5141, !5142}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5136, file: !5137, line: 13, baseType: !613, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5136, file: !5137, line: 14, baseType: !51, size: 64, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5136, file: !5137, line: 15, baseType: !51, size: 64, offset: 128)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5136, file: !5137, line: 16, baseType: !602, size: 8, offset: 192)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3813, file: !3814, line: 1134, baseType: !509, size: 64, offset: 16640)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3813, file: !3814, line: 1135, baseType: !509, size: 64, offset: 16704)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3813, file: !3814, line: 1138, baseType: !71, size: 32, offset: 16768)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3813, file: !3814, line: 1141, baseType: !397, size: 32, offset: 16800)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3813, file: !3814, line: 1143, baseType: !5148, size: 64, offset: 16832)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !3814, line: 735, size: 64, elements: !5149)
!5149 = !{!5150}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5148, file: !3814, line: 736, baseType: !5151, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3813, file: !3814, line: 1147, baseType: !1279, size: 128, offset: 16896)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3813, file: !3814, line: 1149, baseType: !3812, size: 64, offset: 17024)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3813, file: !3814, line: 1151, baseType: !5155, size: 64, offset: 17088)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3814, line: 1151, flags: DIFlagFwdDecl)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3813, file: !3814, line: 1188, baseType: !32, size: 64, offset: 17152)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3813, file: !3814, line: 1191, baseType: !5159, size: 64, offset: 17216)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3813, file: !3814, line: 1194, baseType: !5161, size: 64, offset: 17280)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3813, file: !3814, line: 1197, baseType: !5163, size: 64, offset: 17344)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3814, line: 61, flags: DIFlagFwdDecl)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3813, file: !3814, line: 1199, baseType: !5166, size: 64, offset: 17408)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5168, line: 99, size: 128, elements: !5169)
!5168 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5169 = !{!5170, !5171, !5172}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5167, file: !5168, line: 100, baseType: !383, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5167, file: !5168, line: 101, baseType: !61, size: 32, offset: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5167, file: !5168, line: 103, baseType: !38, size: 16, offset: 96)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3813, file: !3814, line: 1202, baseType: !5174, size: 64, offset: 17472)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !3814, line: 48, flags: DIFlagFwdDecl)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3813, file: !3814, line: 1205, baseType: !51, size: 64, offset: 17536)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3813, file: !3814, line: 1206, baseType: !5178, size: 64, offset: 17600)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4902, line: 14, baseType: !5180)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4902, line: 12, size: 384, elements: !5181)
!5181 = !{!5182}
!5182 = !DIDerivedType(tag: DW_TAG_member, scope: !5180, file: !4902, line: 13, baseType: !5183, size: 384)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5180, file: !4902, line: 13, size: 384, elements: !5184)
!5184 = !{!5185, !5186, !5187, !5188}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5183, file: !4902, line: 13, baseType: !34, size: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5183, file: !4902, line: 13, baseType: !34, size: 32, offset: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5183, file: !4902, line: 13, baseType: !34, size: 32, offset: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5183, file: !4902, line: 13, baseType: !5189, size: 256, offset: 128)
!5189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5190, line: 37, size: 256, elements: !5191)
!5190 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5191 = !{!5192, !5197, !5210, !5216, !5225, !5252, !5257}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5189, file: !5190, line: 42, baseType: !5193, size: 64)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5189, file: !5190, line: 39, size: 64, elements: !5194)
!5194 = !{!5195, !5196}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5193, file: !5190, line: 40, baseType: !4103, size: 32)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5193, file: !5190, line: 41, baseType: !478, size: 32, offset: 32)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5189, file: !5190, line: 50, baseType: !5198, size: 192)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5189, file: !5190, line: 45, size: 192, elements: !5199)
!5199 = !{!5200, !5202, !5203, !5209}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5198, file: !5190, line: 46, baseType: !5201, size: 32)
!5201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !34)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5198, file: !5190, line: 47, baseType: !34, size: 32, offset: 32)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5198, file: !5190, line: 48, baseType: !5204, size: 64, offset: 64)
!5204 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5190, line: 11, baseType: !5205)
!5205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5190, line: 8, size: 64, elements: !5206)
!5206 = !{!5207, !5208}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5205, file: !5190, line: 9, baseType: !34, size: 32)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5205, file: !5190, line: 10, baseType: !32, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5198, file: !5190, line: 49, baseType: !34, size: 32, offset: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5189, file: !5190, line: 57, baseType: !5211, size: 128)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5189, file: !5190, line: 53, size: 128, elements: !5212)
!5212 = !{!5213, !5214, !5215}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5211, file: !5190, line: 54, baseType: !4103, size: 32)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5211, file: !5190, line: 55, baseType: !478, size: 32, offset: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5211, file: !5190, line: 56, baseType: !5204, size: 64, offset: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5189, file: !5190, line: 66, baseType: !5217, size: 256)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5189, file: !5190, line: 60, size: 256, elements: !5218)
!5218 = !{!5219, !5220, !5221, !5222, !5224}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5217, file: !5190, line: 61, baseType: !4103, size: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5217, file: !5190, line: 62, baseType: !478, size: 32, offset: 32)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5217, file: !5190, line: 63, baseType: !34, size: 32, offset: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5217, file: !5190, line: 64, baseType: !5223, size: 64, offset: 128)
!5223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !1066)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5217, file: !5190, line: 65, baseType: !5223, size: 64, offset: 192)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5189, file: !5190, line: 105, baseType: !5226, size: 256)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5189, file: !5190, line: 69, size: 256, elements: !5227)
!5227 = !{!5228, !5229}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5226, file: !5190, line: 70, baseType: !32, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, scope: !5226, file: !5190, line: 79, baseType: !5230, size: 192, offset: 64)
!5230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5226, file: !5190, line: 79, size: 192, elements: !5231)
!5231 = !{!5232, !5233, !5234, !5241, !5246}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5230, file: !5190, line: 81, baseType: !34, size: 32)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5230, file: !5190, line: 86, baseType: !571, size: 16)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5230, file: !5190, line: 92, baseType: !5235, size: 192)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5230, file: !5190, line: 88, size: 192, elements: !5236)
!5236 = !{!5237, !5239, !5240}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5235, file: !5190, line: 89, baseType: !5238, size: 64)
!5238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !3330)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5235, file: !5190, line: 90, baseType: !32, size: 64, offset: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5235, file: !5190, line: 91, baseType: !32, size: 64, offset: 128)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5230, file: !5190, line: 97, baseType: !5242, size: 96)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5230, file: !5190, line: 94, size: 96, elements: !5243)
!5243 = !{!5244, !5245}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5242, file: !5190, line: 95, baseType: !5238, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5242, file: !5190, line: 96, baseType: !567, size: 32, offset: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5230, file: !5190, line: 103, baseType: !5247, size: 128)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5230, file: !5190, line: 99, size: 128, elements: !5248)
!5248 = !{!5249, !5250, !5251}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5247, file: !5190, line: 100, baseType: !51, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5247, file: !5190, line: 101, baseType: !567, size: 32, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5247, file: !5190, line: 102, baseType: !567, size: 32, offset: 96)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5189, file: !5190, line: 111, baseType: !5253, size: 128)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5189, file: !5190, line: 108, size: 128, elements: !5254)
!5254 = !{!5255, !5256}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5253, file: !5190, line: 109, baseType: !836, size: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5253, file: !5190, line: 110, baseType: !34, size: 32, offset: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5189, file: !5190, line: 118, baseType: !5258, size: 128)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5189, file: !5190, line: 114, size: 128, elements: !5259)
!5259 = !{!5260, !5261, !5262}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5258, file: !5190, line: 115, baseType: !32, size: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5258, file: !5190, line: 116, baseType: !34, size: 32, offset: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5258, file: !5190, line: 117, baseType: !17, size: 32, offset: 96)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3813, file: !3814, line: 1208, baseType: !4986, size: 448, offset: 17664)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3813, file: !3814, line: 1215, baseType: !509, size: 64, offset: 18112)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3813, file: !3814, line: 1217, baseType: !509, size: 64, offset: 18176)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3813, file: !3814, line: 1219, baseType: !509, size: 64, offset: 18240)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3813, file: !3814, line: 1223, baseType: !5268, size: 64, offset: 18304)
!5268 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5269, line: 99, baseType: !5270)
!5269 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5269, line: 99, size: 64, elements: !5271)
!5271 = !{!5272}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5270, file: !5269, line: 99, baseType: !3522, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3813, file: !3814, line: 1225, baseType: !878, size: 32, offset: 18368)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3813, file: !3814, line: 1226, baseType: !34, size: 32, offset: 18400)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3813, file: !3814, line: 1227, baseType: !34, size: 32, offset: 18432)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3813, file: !3814, line: 1231, baseType: !4630, size: 64, offset: 18496)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3813, file: !3814, line: 1233, baseType: !109, size: 128, offset: 18560)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3813, file: !3814, line: 1240, baseType: !5279, size: 64, offset: 18688)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !3814, line: 62, flags: DIFlagFwdDecl)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3813, file: !3814, line: 1242, baseType: !5282, size: 64, offset: 18752)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3814, line: 1242, flags: DIFlagFwdDecl)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3813, file: !3814, line: 1244, baseType: !109, size: 128, offset: 18816)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3813, file: !3814, line: 1245, baseType: !5286, size: 64, offset: 18944)
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !3814, line: 51, flags: DIFlagFwdDecl)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3813, file: !3814, line: 1246, baseType: !392, size: 256, offset: 19008)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3813, file: !3814, line: 1247, baseType: !17, size: 32, offset: 19264)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3813, file: !3814, line: 1250, baseType: !5291, size: 64, offset: 19328)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !3814, line: 57, flags: DIFlagFwdDecl)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3813, file: !3814, line: 1251, baseType: !392, size: 256, offset: 19392)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3813, file: !3814, line: 1252, baseType: !109, size: 128, offset: 19648)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3813, file: !3814, line: 1259, baseType: !1652, size: 64, offset: 19776)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3813, file: !3814, line: 1260, baseType: !571, size: 16, offset: 19840)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3813, file: !3814, line: 1261, baseType: !571, size: 16, offset: 19856)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3813, file: !3814, line: 1314, baseType: !5299, size: 64, offset: 19904)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5301, line: 62, size: 256, align: 256, elements: !5302)
!5301 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5302 = !{!5303, !5304, !5305, !5306, !5307, !5308, !5309}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5300, file: !5301, line: 75, baseType: !567, size: 32)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5300, file: !5301, line: 90, baseType: !567, size: 32, offset: 32)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5300, file: !5301, line: 112, baseType: !510, size: 64, offset: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5300, file: !5301, line: 132, baseType: !567, size: 32, offset: 128)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5300, file: !5301, line: 140, baseType: !567, size: 32, offset: 160)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5300, file: !5301, line: 149, baseType: !567, size: 32, offset: 192)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5300, file: !5301, line: 154, baseType: !5310, offset: 224)
!5310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !468)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3813, file: !3814, line: 1315, baseType: !566, size: 32, offset: 19968)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3813, file: !3814, line: 1316, baseType: !566, size: 32, offset: 20000)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3813, file: !3814, line: 1321, baseType: !51, size: 64, offset: 20032)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3813, file: !3814, line: 1325, baseType: !34, size: 32, offset: 20096)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3813, file: !3814, line: 1326, baseType: !34, size: 32, offset: 20128)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3813, file: !3814, line: 1327, baseType: !34, size: 32, offset: 20160)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3813, file: !3814, line: 1328, baseType: !34, size: 32, offset: 20192)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3813, file: !3814, line: 1329, baseType: !370, size: 128, align: 64, offset: 20224)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3813, file: !3814, line: 1332, baseType: !5320, size: 128, offset: 20352)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5321, line: 51, size: 128, elements: !5322)
!5321 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5322 = !{!5323, !5328, !5329}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5320, file: !5321, line: 60, baseType: !5324, size: 64)
!5324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5325, line: 7, size: 64, elements: !5326)
!5325 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5326 = !{!5327}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5324, file: !5325, line: 12, baseType: !3973, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5320, file: !5321, line: 63, baseType: !602, size: 8, offset: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5320, file: !5321, line: 70, baseType: !602, size: 8, offset: 72)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3813, file: !3814, line: 1335, baseType: !5331, size: 64, offset: 20480)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !3814, line: 59, flags: DIFlagFwdDecl)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3813, file: !3814, line: 1337, baseType: !5334, size: 128, offset: 20544)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5321, line: 39, size: 128, elements: !5335)
!5335 = !{!5336, !5337, !5338}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5334, file: !5321, line: 40, baseType: !1294, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5334, file: !5321, line: 42, baseType: !567, size: 32, offset: 64)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5334, file: !5321, line: 43, baseType: !567, size: 32, offset: 96)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3813, file: !3814, line: 1340, baseType: !5340, size: 64, offset: 20672)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !3814, line: 69, flags: DIFlagFwdDecl)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3813, file: !3814, line: 1351, baseType: !34, size: 32, offset: 20736)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3813, file: !3814, line: 1352, baseType: !34, size: 32, offset: 20768)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3813, file: !3814, line: 1354, baseType: !51, size: 64, offset: 20800)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3813, file: !3814, line: 1364, baseType: !509, size: 64, offset: 20864)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3813, file: !3814, line: 1365, baseType: !509, size: 64, offset: 20928)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3813, file: !3814, line: 1412, baseType: !51, size: 64, offset: 20992)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3813, file: !3814, line: 1453, baseType: !2855, size: 64, offset: 21056)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3813, file: !3814, line: 1457, baseType: !5350, size: 64, offset: 21120)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !281, line: 61, size: 576, elements: !5352)
!5352 = !{!5353, !5354, !5373, !5376, !5377, !5410, !5420}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5351, file: !281, line: 62, baseType: !280, size: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, scope: !5351, file: !281, line: 64, baseType: !5355, size: 192, offset: 64)
!5355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5351, file: !281, line: 64, size: 192, elements: !5356)
!5356 = !{!5357, !5368}
!5357 = !DIDerivedType(tag: DW_TAG_member, scope: !5355, file: !281, line: 65, baseType: !5358, size: 192)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5355, file: !281, line: 65, size: 192, elements: !5359)
!5359 = !{!5360, !5367}
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5358, file: !281, line: 66, baseType: !5361, size: 128)
!5361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5362, line: 50, size: 128, elements: !5363)
!5362 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5363 = !{!5364, !5365, !5366}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5361, file: !5362, line: 52, baseType: !51, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5361, file: !5362, line: 54, baseType: !17, size: 32, offset: 64)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5361, file: !5362, line: 55, baseType: !17, size: 32, offset: 96)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5358, file: !281, line: 67, baseType: !51, size: 64, offset: 128)
!5368 = !DIDerivedType(tag: DW_TAG_member, scope: !5355, file: !281, line: 70, baseType: !5369, size: 192)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5355, file: !281, line: 70, size: 192, elements: !5370)
!5370 = !{!5371, !5372}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5369, file: !281, line: 71, baseType: !370, size: 128, align: 64)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5369, file: !281, line: 72, baseType: !51, size: 64, offset: 128)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5351, file: !281, line: 76, baseType: !5374, size: 64, offset: 256)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !281, line: 76, flags: DIFlagFwdDecl)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5351, file: !281, line: 77, baseType: !51, size: 64, offset: 320)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5351, file: !281, line: 79, baseType: !5378, size: 64, offset: 384)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5362, line: 25, size: 256, elements: !5380)
!5380 = !{!5381, !5387, !5391}
!5381 = !DIDerivedType(tag: DW_TAG_member, scope: !5379, file: !5362, line: 26, baseType: !5382, size: 128)
!5382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5379, file: !5362, line: 26, size: 128, elements: !5383)
!5383 = !{!5384, !5386}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5382, file: !5362, line: 27, baseType: !5385, size: 128)
!5385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !4161)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5382, file: !5362, line: 28, baseType: !5385, size: 128)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5379, file: !5362, line: 31, baseType: !5388, size: 64, offset: 128)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5390)
!5390 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5362, line: 23, flags: DIFlagFwdDecl)
!5391 = !DIDerivedType(tag: DW_TAG_member, scope: !5379, file: !5362, line: 33, baseType: !5392, size: 64, offset: 192)
!5392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5379, file: !5362, line: 33, size: 64, elements: !5393)
!5393 = !{!5394, !5400, !5405}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5392, file: !5362, line: 38, baseType: !5395, size: 64)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5392, file: !5362, line: 34, size: 64, elements: !5396)
!5396 = !{!5397, !5398, !5399}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5395, file: !5362, line: 35, baseType: !526, size: 32)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5395, file: !5362, line: 36, baseType: !95, size: 8, offset: 32)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5395, file: !5362, line: 37, baseType: !95, size: 8, offset: 40)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5392, file: !5362, line: 42, baseType: !5401, size: 16)
!5401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5392, file: !5362, line: 39, size: 16, elements: !5402)
!5402 = !{!5403, !5404}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5401, file: !5362, line: 40, baseType: !95, size: 8)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5401, file: !5362, line: 41, baseType: !95, size: 8, offset: 8)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5392, file: !5362, line: 46, baseType: !5406, size: 16)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5392, file: !5362, line: 43, size: 16, elements: !5407)
!5407 = !{!5408, !5409}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5406, file: !5362, line: 44, baseType: !95, size: 8)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5406, file: !5362, line: 45, baseType: !95, size: 8, offset: 8)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5351, file: !281, line: 81, baseType: !5411, size: 64, offset: 448)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !281, line: 85, size: 384, elements: !5413)
!5413 = !{!5414, !5415, !5416, !5417, !5418, !5419}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5412, file: !281, line: 86, baseType: !5374, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5412, file: !281, line: 87, baseType: !51, size: 64, offset: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5412, file: !281, line: 88, baseType: !51, size: 64, offset: 128)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5412, file: !281, line: 89, baseType: !51, size: 64, offset: 192)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5412, file: !281, line: 90, baseType: !602, size: 8, offset: 256)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5412, file: !281, line: 92, baseType: !5411, size: 64, offset: 320)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5351, file: !281, line: 82, baseType: !17, size: 32, offset: 512)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3813, file: !3814, line: 1463, baseType: !5422, offset: 21184)
!5422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !3814, line: 739, elements: !1438)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3813, file: !3814, line: 1470, baseType: !370, size: 128, align: 64, offset: 21184)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3813, file: !3814, line: 1471, baseType: !437, size: 32, offset: 21312)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3813, file: !3814, line: 1472, baseType: !34, size: 32, offset: 21344)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3813, file: !3814, line: 1474, baseType: !3812, size: 64, offset: 21376)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3813, file: !3814, line: 1475, baseType: !2428, size: 320, offset: 21440)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3813, file: !3814, line: 1478, baseType: !5429, size: 64, offset: 21760)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3814, line: 1478, flags: DIFlagFwdDecl)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3813, file: !3814, line: 1482, baseType: !437, size: 32, offset: 21824)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3813, file: !3814, line: 1489, baseType: !32, size: 64, offset: 21888)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3813, file: !3814, line: 1504, baseType: !32, size: 64, offset: 21952)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3813, file: !3814, line: 1505, baseType: !510, size: 64, offset: 22016)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3813, file: !3814, line: 1506, baseType: !509, size: 64, offset: 22080)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3813, file: !3814, line: 1507, baseType: !510, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3813, file: !3814, line: 1508, baseType: !510, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3813, file: !3814, line: 1509, baseType: !510, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3813, file: !3814, line: 1510, baseType: !370, size: 128, align: 64, offset: 22208)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3813, file: !3814, line: 1511, baseType: !34, size: 32, offset: 22336)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3813, file: !3814, line: 1515, baseType: !4504, size: 64, offset: 22400)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3813, file: !3814, line: 1518, baseType: !4504, size: 64, offset: 22464)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3813, file: !3814, line: 1528, baseType: !370, size: 128, align: 64, offset: 22528)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3813, file: !3814, line: 1552, baseType: !5445, size: 35328, offset: 23040)
!5445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5446, line: 430, size: 35328, elements: !5447)
!5446 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5447 = !{!5448, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5477, !5478, !5479, !5480, !5481, !5482, !5485, !5486, !5487, !5488}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5445, file: !5446, line: 432, baseType: !5449, size: 192)
!5449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5450, size: 192, elements: !429)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5451, line: 16, size: 64, elements: !5452)
!5451 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5452 = !{!5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5450, file: !5451, line: 17, baseType: !105, size: 16)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5450, file: !5451, line: 18, baseType: !105, size: 16, offset: 16)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5450, file: !5451, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5450, file: !5451, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5450, file: !5451, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5450, file: !5451, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5450, file: !5451, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5450, file: !5451, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5450, file: !5451, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5450, file: !5451, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5450, file: !5451, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5450, file: !5451, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5450, file: !5451, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5445, file: !5446, line: 436, baseType: !51, size: 64, offset: 192)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5445, file: !5446, line: 440, baseType: !38, size: 16, offset: 256)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5445, file: !5446, line: 441, baseType: !38, size: 16, offset: 272)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5445, file: !5446, line: 442, baseType: !38, size: 16, offset: 288)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5445, file: !5446, line: 443, baseType: !38, size: 16, offset: 304)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5445, file: !5446, line: 447, baseType: !51, size: 64, offset: 320)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5445, file: !5446, line: 448, baseType: !51, size: 64, offset: 384)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5445, file: !5446, line: 459, baseType: !5474, size: 256, offset: 448)
!5474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5475, size: 256, elements: !455)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5446, line: 428, flags: DIFlagFwdDecl)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5445, file: !5446, line: 461, baseType: !51, size: 64, offset: 704)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5445, file: !5446, line: 463, baseType: !51, size: 64, offset: 768)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5445, file: !5446, line: 465, baseType: !51, size: 64, offset: 832)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5445, file: !5446, line: 466, baseType: !51, size: 64, offset: 896)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5445, file: !5446, line: 467, baseType: !51, size: 64, offset: 960)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5445, file: !5446, line: 473, baseType: !5483, size: 64, offset: 1024)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5446, line: 10, flags: DIFlagFwdDecl)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5445, file: !5446, line: 480, baseType: !51, size: 64, offset: 1088)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5445, file: !5446, line: 482, baseType: !17, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5445, file: !5446, line: 491, baseType: !566, size: 32, offset: 1184)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5445, file: !5446, line: 501, baseType: !5489, size: 33792, offset: 1536)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5490, line: 448, size: 33792, elements: !5491)
!5490 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5491 = !{!5492, !5493, !5494, !5654, !5655, !5661, !5662}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5489, file: !5490, line: 461, baseType: !17, size: 32)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5489, file: !5490, line: 468, baseType: !51, size: 64, offset: 64)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5489, file: !5490, line: 476, baseType: !5495, size: 64, offset: 128)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5490, line: 356, size: 33280, align: 512, elements: !5497)
!5497 = !{!5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5496, file: !5490, line: 358, baseType: !17, size: 32)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5496, file: !5490, line: 361, baseType: !17, size: 32, offset: 32)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5496, file: !5490, line: 364, baseType: !509, size: 64, offset: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5496, file: !5490, line: 367, baseType: !509, size: 64, offset: 128)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5496, file: !5490, line: 370, baseType: !509, size: 64, offset: 192)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5496, file: !5490, line: 373, baseType: !17, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5496, file: !5490, line: 376, baseType: !17, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5496, file: !5490, line: 391, baseType: !17, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5496, file: !5490, line: 394, baseType: !17, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5496, file: !5490, line: 397, baseType: !5508, size: 32768, offset: 512)
!5508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5490, line: 348, size: 32768, elements: !5509)
!5509 = !{!5510, !5525, !5562, !5639, !5652}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5508, file: !5490, line: 349, baseType: !5511, size: 896)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5490, line: 12, size: 896, elements: !5512)
!5512 = !{!5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5524}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5511, file: !5490, line: 13, baseType: !566, size: 32)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5511, file: !5490, line: 14, baseType: !566, size: 32, offset: 32)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5511, file: !5490, line: 15, baseType: !566, size: 32, offset: 64)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5511, file: !5490, line: 16, baseType: !566, size: 32, offset: 96)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5511, file: !5490, line: 17, baseType: !566, size: 32, offset: 128)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5511, file: !5490, line: 18, baseType: !566, size: 32, offset: 160)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5511, file: !5490, line: 19, baseType: !566, size: 32, offset: 192)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5511, file: !5490, line: 22, baseType: !5521, size: 640, offset: 224)
!5521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 640, elements: !5522)
!5522 = !{!5523}
!5523 = !DISubrange(count: 20)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5511, file: !5490, line: 25, baseType: !566, size: 32, offset: 864)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5508, file: !5490, line: 350, baseType: !5526, size: 4096, align: 128)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5490, line: 34, size: 4096, align: 128, elements: !5527)
!5527 = !{!5528, !5529, !5530, !5531, !5532, !5547, !5548, !5549, !5551, !5553, !5557}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5526, file: !5490, line: 35, baseType: !105, size: 16)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5526, file: !5490, line: 36, baseType: !105, size: 16, offset: 16)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5526, file: !5490, line: 37, baseType: !105, size: 16, offset: 32)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5526, file: !5490, line: 38, baseType: !105, size: 16, offset: 48)
!5532 = !DIDerivedType(tag: DW_TAG_member, scope: !5526, file: !5490, line: 39, baseType: !5533, size: 128, offset: 64)
!5533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5526, file: !5490, line: 39, size: 128, elements: !5534)
!5534 = !{!5535, !5540}
!5535 = !DIDerivedType(tag: DW_TAG_member, scope: !5533, file: !5490, line: 40, baseType: !5536, size: 128)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5533, file: !5490, line: 40, size: 128, elements: !5537)
!5537 = !{!5538, !5539}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5536, file: !5490, line: 41, baseType: !509, size: 64)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5536, file: !5490, line: 42, baseType: !509, size: 64, offset: 64)
!5540 = !DIDerivedType(tag: DW_TAG_member, scope: !5533, file: !5490, line: 44, baseType: !5541, size: 128)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5533, file: !5490, line: 44, size: 128, elements: !5542)
!5542 = !{!5543, !5544, !5545, !5546}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5541, file: !5490, line: 45, baseType: !566, size: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5541, file: !5490, line: 46, baseType: !566, size: 32, offset: 32)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5541, file: !5490, line: 47, baseType: !566, size: 32, offset: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5541, file: !5490, line: 48, baseType: !566, size: 32, offset: 96)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5526, file: !5490, line: 51, baseType: !566, size: 32, offset: 192)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5526, file: !5490, line: 52, baseType: !566, size: 32, offset: 224)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5526, file: !5490, line: 55, baseType: !5550, size: 1024, offset: 256)
!5550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 1024, elements: !2863)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5526, file: !5490, line: 58, baseType: !5552, size: 2048, offset: 1280)
!5552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 2048, elements: !1209)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5526, file: !5490, line: 60, baseType: !5554, size: 384, offset: 3328)
!5554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 384, elements: !5555)
!5555 = !{!5556}
!5556 = !DISubrange(count: 12)
!5557 = !DIDerivedType(tag: DW_TAG_member, scope: !5526, file: !5490, line: 62, baseType: !5558, size: 384, offset: 3712)
!5558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5526, file: !5490, line: 62, size: 384, elements: !5559)
!5559 = !{!5560, !5561}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5558, file: !5490, line: 63, baseType: !5554, size: 384)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5558, file: !5490, line: 64, baseType: !5554, size: 384)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5508, file: !5490, line: 351, baseType: !5563, size: 1088)
!5563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5490, line: 79, size: 1088, elements: !5564)
!5564 = !{!5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5638}
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5563, file: !5490, line: 80, baseType: !566, size: 32)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5563, file: !5490, line: 81, baseType: !566, size: 32, offset: 32)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5563, file: !5490, line: 82, baseType: !566, size: 32, offset: 64)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5563, file: !5490, line: 83, baseType: !566, size: 32, offset: 96)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5563, file: !5490, line: 84, baseType: !566, size: 32, offset: 128)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5563, file: !5490, line: 85, baseType: !566, size: 32, offset: 160)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5563, file: !5490, line: 86, baseType: !566, size: 32, offset: 192)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5563, file: !5490, line: 88, baseType: !5521, size: 640, offset: 224)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5563, file: !5490, line: 89, baseType: !95, size: 8, offset: 864)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5563, file: !5490, line: 90, baseType: !95, size: 8, offset: 872)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5563, file: !5490, line: 91, baseType: !95, size: 8, offset: 880)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5563, file: !5490, line: 92, baseType: !95, size: 8, offset: 888)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5563, file: !5490, line: 93, baseType: !95, size: 8, offset: 896)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5563, file: !5490, line: 94, baseType: !95, size: 8, offset: 904)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5563, file: !5490, line: 95, baseType: !5580, size: 64, offset: 960)
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5582, line: 11, size: 128, elements: !5583)
!5582 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5583 = !{!5584, !5585}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5581, file: !5582, line: 12, baseType: !836, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5581, file: !5582, line: 13, baseType: !5586, size: 64, offset: 64)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5588, line: 103, size: 1344, elements: !5589)
!5588 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5589 = !{!5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5618, !5619, !5620}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5587, file: !5588, line: 109, baseType: !51, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5587, file: !5588, line: 110, baseType: !51, size: 64, offset: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5587, file: !5588, line: 111, baseType: !51, size: 64, offset: 128)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5587, file: !5588, line: 112, baseType: !51, size: 64, offset: 192)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5587, file: !5588, line: 113, baseType: !51, size: 64, offset: 256)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5587, file: !5588, line: 114, baseType: !51, size: 64, offset: 320)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5587, file: !5588, line: 117, baseType: !51, size: 64, offset: 384)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5587, file: !5588, line: 118, baseType: !51, size: 64, offset: 448)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5587, file: !5588, line: 119, baseType: !51, size: 64, offset: 512)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5587, file: !5588, line: 120, baseType: !51, size: 64, offset: 576)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5587, file: !5588, line: 121, baseType: !51, size: 64, offset: 640)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5587, file: !5588, line: 122, baseType: !51, size: 64, offset: 704)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5587, file: !5588, line: 123, baseType: !51, size: 64, offset: 768)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5587, file: !5588, line: 124, baseType: !51, size: 64, offset: 832)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5587, file: !5588, line: 125, baseType: !51, size: 64, offset: 896)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5587, file: !5588, line: 139, baseType: !51, size: 64, offset: 960)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5587, file: !5588, line: 142, baseType: !51, size: 64, offset: 1024)
!5607 = !DIDerivedType(tag: DW_TAG_member, scope: !5587, file: !5588, line: 144, baseType: !5608, size: 64, offset: 1088)
!5608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5587, file: !5588, line: 144, size: 64, elements: !5609)
!5609 = !{!5610, !5611, !5612}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5608, file: !5588, line: 146, baseType: !105, size: 16)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5608, file: !5588, line: 148, baseType: !509, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5608, file: !5588, line: 150, baseType: !5613, size: 64)
!5613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5588, line: 59, size: 64, elements: !5614)
!5614 = !{!5615, !5616, !5617}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5613, file: !5588, line: 61, baseType: !509, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5613, file: !5588, line: 63, baseType: !509, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5613, file: !5588, line: 65, baseType: !509, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5587, file: !5588, line: 153, baseType: !51, size: 64, offset: 1152)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5587, file: !5588, line: 154, baseType: !51, size: 64, offset: 1216)
!5620 = !DIDerivedType(tag: DW_TAG_member, scope: !5587, file: !5588, line: 156, baseType: !5621, size: 64, offset: 1280)
!5621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5587, file: !5588, line: 156, size: 64, elements: !5622)
!5622 = !{!5623, !5624, !5625}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5621, file: !5588, line: 158, baseType: !105, size: 16)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5621, file: !5588, line: 160, baseType: !509, size: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5621, file: !5588, line: 162, baseType: !5626, size: 64)
!5626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5588, line: 69, size: 64, elements: !5627)
!5627 = !{!5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5626, file: !5588, line: 71, baseType: !509, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5626, file: !5588, line: 73, baseType: !509, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5626, file: !5588, line: 75, baseType: !509, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5626, file: !5588, line: 77, baseType: !509, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5626, file: !5588, line: 80, baseType: !509, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5626, file: !5588, line: 83, baseType: !509, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5626, file: !5588, line: 86, baseType: !509, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5626, file: !5588, line: 88, baseType: !509, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5626, file: !5588, line: 93, baseType: !509, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5626, file: !5588, line: 100, baseType: !509, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5563, file: !5490, line: 96, baseType: !566, size: 32, offset: 1024)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5508, file: !5490, line: 352, baseType: !5640, size: 4608, align: 512)
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5490, line: 333, size: 4608, align: 512, elements: !5641)
!5641 = !{!5642, !5643, !5650}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5640, file: !5490, line: 334, baseType: !5526, size: 4096, align: 128)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5640, file: !5490, line: 335, baseType: !5644, size: 512, offset: 4096)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5490, line: 312, size: 512, elements: !5645)
!5645 = !{!5646, !5647, !5648}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5644, file: !5490, line: 313, baseType: !509, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5644, file: !5490, line: 314, baseType: !509, size: 64, offset: 64)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5644, file: !5490, line: 315, baseType: !5649, size: 384, offset: 128)
!5649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 384, elements: !589)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5640, file: !5490, line: 336, baseType: !5651, offset: 4608)
!5651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !468)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5508, file: !5490, line: 353, baseType: !5653, size: 32768)
!5653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !4685)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5489, file: !5490, line: 484, baseType: !5495, size: 64, offset: 192)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5489, file: !5490, line: 491, baseType: !5656, size: 128, offset: 256)
!5656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5490, line: 404, size: 128, elements: !5657)
!5657 = !{!5658, !5659, !5660}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5656, file: !5490, line: 424, baseType: !509, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5656, file: !5490, line: 432, baseType: !17, size: 32, offset: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5656, file: !5490, line: 440, baseType: !17, size: 32, offset: 96)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5489, file: !5490, line: 498, baseType: !5656, size: 128, offset: 384)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5489, file: !5490, line: 508, baseType: !5496, size: 33280, align: 512, offset: 512)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3795, file: !3796, line: 16, baseType: !66, size: 192, offset: 512)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3795, file: !3796, line: 17, baseType: !61, size: 32, offset: 704)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1121, file: !169, line: 1240, baseType: !32, size: 64, offset: 6912)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1121, file: !169, line: 1243, baseType: !566, size: 32, offset: 6976)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1121, file: !169, line: 1245, baseType: !557, size: 64, offset: 7040)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1121, file: !169, line: 1246, baseType: !557, size: 64, offset: 7104)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1121, file: !169, line: 1248, baseType: !567, size: 32, offset: 7168)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1121, file: !169, line: 1249, baseType: !5671, size: 64, offset: 7232)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !169, line: 634, flags: DIFlagFwdDecl)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1121, file: !169, line: 1252, baseType: !2862, size: 256, offset: 7296)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1121, file: !169, line: 1253, baseType: !5675, size: 128, offset: 7552)
!5675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5676, line: 21, baseType: !5677)
!5676 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5676, line: 19, size: 128, elements: !5678)
!5678 = !{!5679}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5677, file: !5676, line: 20, baseType: !5680, size: 128)
!5680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !4161)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1121, file: !169, line: 1255, baseType: !17, size: 32, offset: 7680)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1121, file: !169, line: 1261, baseType: !392, size: 256, offset: 7744)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1121, file: !169, line: 1267, baseType: !29, size: 64, offset: 8000)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1121, file: !169, line: 1269, baseType: !5685, size: 64, offset: 8064)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5687)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !874, line: 128, size: 1024, align: 512, elements: !5688)
!5688 = !{!5689, !5693, !5694, !5701, !5707, !5711, !5715, !5719, !5720, !5724, !5728, !5733, !5737}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !5687, file: !874, line: 129, baseType: !5690, size: 64)
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!34, !872, !17}
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !5687, file: !874, line: 130, baseType: !5690, size: 64, offset: 64)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !5687, file: !874, line: 131, baseType: !5695, size: 64, offset: 128)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!34, !5698, !5700}
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !5687, file: !874, line: 132, baseType: !5702, size: 64, offset: 192)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!34, !5698, !17, !29, !5705}
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !5687, file: !874, line: 134, baseType: !5708, size: 64, offset: 256)
!5708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5709, size: 64)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{!34, !5698}
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !5687, file: !874, line: 135, baseType: !5712, size: 64, offset: 320)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!34, !872}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !5687, file: !874, line: 136, baseType: !5716, size: 64, offset: 384)
!5716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5717, size: 64)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{null, !872}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !5687, file: !874, line: 137, baseType: !5716, size: 64, offset: 448)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !5687, file: !874, line: 138, baseType: !5721, size: 64, offset: 512)
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{null, !872, !912}
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !5687, file: !874, line: 139, baseType: !5725, size: 64, offset: 576)
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!613, !872, !613, !34}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !5687, file: !874, line: 140, baseType: !5729, size: 64, offset: 640)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!867, !5732}
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !5687, file: !874, line: 141, baseType: !5734, size: 64, offset: 704)
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{!34, !1033, !602}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !5687, file: !874, line: 142, baseType: !5738, size: 64, offset: 768)
!5738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5739, size: 64)
!5739 = !DISubroutineType(types: !5740)
!5740 = !{!872, !872, !5741}
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1121, file: !169, line: 1271, baseType: !5744, size: 448, offset: 8128)
!5744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2674, line: 63, size: 448, elements: !5745)
!5745 = !{!5746, !5751, !5752, !5753, !5754, !5755, !5756}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5744, file: !2674, line: 64, baseType: !5747, size: 64)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!51, !5750, !2672}
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5744, size: 64)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5744, file: !2674, line: 66, baseType: !5747, size: 64, offset: 64)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5744, file: !2674, line: 69, baseType: !836, size: 64, offset: 128)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5744, file: !2674, line: 70, baseType: !34, size: 32, offset: 192)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5744, file: !2674, line: 71, baseType: !17, size: 32, offset: 224)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5744, file: !2674, line: 74, baseType: !109, size: 128, offset: 256)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5744, file: !2674, line: 85, baseType: !5757, size: 64, offset: 384)
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1121, file: !169, line: 1274, baseType: !383, size: 64, offset: 8576)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1121, file: !169, line: 1280, baseType: !383, size: 64, offset: 8640)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1121, file: !169, line: 1283, baseType: !34, size: 32, offset: 8704)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1121, file: !169, line: 1286, baseType: !1989, size: 32, offset: 8736)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1121, file: !169, line: 1289, baseType: !2490, size: 64, offset: 8768)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1121, file: !169, line: 1290, baseType: !446, size: 64, offset: 8832)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1121, file: !169, line: 1297, baseType: !686, size: 64, offset: 8896)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1121, file: !169, line: 1304, baseType: !5766, size: 64, offset: 8960)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5767, line: 49, size: 64, elements: !5768)
!5767 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5768 = !{!5769}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5766, file: !5767, line: 50, baseType: !5770, size: 64)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5771, size: 64)
!5771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5767, line: 41, size: 512, align: 512, elements: !5772)
!5772 = !{!5773, !5774, !5779}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5771, file: !5767, line: 43, baseType: !71, size: 32)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5771, file: !5767, line: 45, baseType: !5775, size: 192, offset: 64)
!5775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5767, line: 29, size: 192, elements: !5776)
!5776 = !{!5777, !5778}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5775, file: !5767, line: 30, baseType: !109, size: 128)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5775, file: !5767, line: 32, baseType: !836, size: 64, offset: 128)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5771, file: !5767, line: 46, baseType: !836, size: 64, offset: 256)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1121, file: !169, line: 1305, baseType: !5766, size: 64, offset: 9024)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1121, file: !169, line: 1306, baseType: !370, size: 128, align: 64, offset: 9088)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1121, file: !169, line: 1307, baseType: !735, size: 256, offset: 9216)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1121, file: !169, line: 1309, baseType: !392, size: 256, offset: 9472)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1121, file: !169, line: 1314, baseType: !34, size: 32, offset: 9728)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1121, file: !169, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1121, file: !169, line: 1318, baseType: !109, size: 128, offset: 10304)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1121, file: !169, line: 1320, baseType: !71, size: 32, offset: 10432)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1121, file: !169, line: 1321, baseType: !109, size: 128, offset: 10496)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !913, file: !169, line: 656, baseType: !1270, size: 64, offset: 512)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !913, file: !169, line: 659, baseType: !32, size: 64, offset: 576)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !913, file: !169, line: 663, baseType: !51, size: 64, offset: 640)
!5792 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !169, line: 671, baseType: !5793, size: 32, offset: 704)
!5793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !169, line: 671, size: 32, elements: !5794)
!5794 = !{!5795, !5797}
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5793, file: !169, line: 672, baseType: !5796, size: 32)
!5796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5793, file: !169, line: 673, baseType: !17, size: 32)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !913, file: !169, line: 675, baseType: !986, size: 32, offset: 736)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !913, file: !169, line: 676, baseType: !53, size: 64, offset: 768)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !913, file: !169, line: 677, baseType: !1022, size: 128, offset: 832)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !913, file: !169, line: 678, baseType: !1022, size: 128, offset: 960)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !913, file: !169, line: 679, baseType: !1022, size: 128, offset: 1088)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !913, file: !169, line: 680, baseType: !71, size: 32, offset: 1216)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !913, file: !169, line: 681, baseType: !38, size: 16, offset: 1248)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !913, file: !169, line: 682, baseType: !95, size: 8, offset: 1264)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !913, file: !169, line: 683, baseType: !95, size: 8, offset: 1272)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !913, file: !169, line: 684, baseType: !2805, size: 64, offset: 1280)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !913, file: !169, line: 691, baseType: !51, size: 64, offset: 1344)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !913, file: !169, line: 692, baseType: !541, size: 320, offset: 1408)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !913, file: !169, line: 694, baseType: !51, size: 64, offset: 1728)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !913, file: !169, line: 695, baseType: !51, size: 64, offset: 1792)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !913, file: !169, line: 697, baseType: !450, size: 128, offset: 1856)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !913, file: !169, line: 698, baseType: !109, size: 128, offset: 1984)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !913, file: !169, line: 707, baseType: !109, size: 128, offset: 2112)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !913, file: !169, line: 708, baseType: !109, size: 128, offset: 2240)
!5816 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !169, line: 709, baseType: !5817, size: 128, offset: 2368)
!5817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !169, line: 709, size: 128, elements: !5818)
!5818 = !{!5819, !5820}
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5817, file: !169, line: 710, baseType: !446, size: 64)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5817, file: !169, line: 711, baseType: !370, size: 128, align: 64)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !913, file: !169, line: 713, baseType: !385, size: 64, offset: 2496)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !913, file: !169, line: 714, baseType: !385, size: 64, offset: 2560)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !913, file: !169, line: 715, baseType: !61, size: 32, offset: 2624)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !913, file: !169, line: 716, baseType: !61, size: 32, offset: 2656)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !913, file: !169, line: 717, baseType: !61, size: 32, offset: 2688)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !913, file: !169, line: 719, baseType: !61, size: 32, offset: 2720)
!5827 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !169, line: 721, baseType: !5828, size: 64, offset: 2752)
!5828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !169, line: 721, size: 64, elements: !5829)
!5829 = !{!5830, !5969}
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5828, file: !169, line: 722, baseType: !5831, size: 64)
!5831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5832, size: 64)
!5832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5833)
!5833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !169, line: 1914, size: 2112, elements: !5834)
!5834 = !{!5835, !5836, !5840, !5844, !5848, !5849, !5850, !5854, !5867, !5871, !5875, !5876, !5880, !5881, !5885, !5890, !5891, !5895, !5899, !5905, !5906, !5910, !5911, !5915, !5919, !5920, !5925, !5929, !5933, !5937, !5941, !5942, !5965}
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5833, file: !169, line: 1915, baseType: !1153, size: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5833, file: !169, line: 1916, baseType: !5837, size: 64, offset: 64)
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5838, size: 64)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!53, !357, !53, !34}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5833, file: !169, line: 1917, baseType: !5841, size: 64, offset: 128)
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DISubroutineType(types: !5843)
!5843 = !{!1064, !357, !613, !47, !52}
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5833, file: !169, line: 1918, baseType: !5845, size: 64, offset: 192)
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{!1064, !357, !29, !47, !52}
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5833, file: !169, line: 1919, baseType: !1868, size: 64, offset: 256)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5833, file: !169, line: 1920, baseType: !1868, size: 64, offset: 320)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5833, file: !169, line: 1921, baseType: !5851, size: 64, offset: 384)
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DISubroutineType(types: !5853)
!5853 = !{!34, !1871, !2969, !17}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5833, file: !169, line: 1923, baseType: !5855, size: 64, offset: 448)
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5856, size: 64)
!5856 = !DISubroutineType(types: !5857)
!5857 = !{!34, !357, !5858}
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !169, line: 1858, size: 128, elements: !5860)
!5860 = !{!5861, !5866}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5859, file: !169, line: 1859, baseType: !5862, size: 64)
!5862 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !169, line: 1855, baseType: !5863)
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = !DISubroutineType(types: !5865)
!5865 = !{!602, !5858, !29, !34, !53, !509, !17}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5859, file: !169, line: 1860, baseType: !53, size: 64, offset: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5833, file: !169, line: 1924, baseType: !5868, size: 64, offset: 512)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!2156, !357, !2158}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5833, file: !169, line: 1925, baseType: !5872, size: 64, offset: 576)
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!836, !357, !17, !51}
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5833, file: !169, line: 1926, baseType: !5872, size: 64, offset: 640)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5833, file: !169, line: 1927, baseType: !5877, size: 64, offset: 704)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!34, !357, !1404}
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5833, file: !169, line: 1928, baseType: !51, size: 64, offset: 768)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5833, file: !169, line: 1929, baseType: !5882, size: 64, offset: 832)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = !DISubroutineType(types: !5884)
!5884 = !{!34, !912, !357}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5833, file: !169, line: 1930, baseType: !5886, size: 64, offset: 896)
!5886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5887, size: 64)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!34, !357, !5889}
!5889 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !169, line: 1061, baseType: !32)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5833, file: !169, line: 1931, baseType: !5882, size: 64, offset: 960)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5833, file: !169, line: 1932, baseType: !5892, size: 64, offset: 1024)
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!34, !357, !53, !53, !34}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5833, file: !169, line: 1933, baseType: !5896, size: 64, offset: 1088)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!34, !34, !357, !34}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5833, file: !169, line: 1934, baseType: !5900, size: 64, offset: 1152)
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = !DISubroutineType(types: !5902)
!5902 = !{!34, !357, !34, !5903}
!5903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5904, size: 64)
!5904 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !169, line: 1063, flags: DIFlagFwdDecl)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5833, file: !169, line: 1935, baseType: !1442, size: 64, offset: 1216)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5833, file: !169, line: 1936, baseType: !5907, size: 64, offset: 1280)
!5907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5908, size: 64)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!34, !34}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5833, file: !169, line: 1937, baseType: !5900, size: 64, offset: 1344)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5833, file: !169, line: 1938, baseType: !5912, size: 64, offset: 1408)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{!1064, !5331, !357, !52, !47, !17}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5833, file: !169, line: 1939, baseType: !5916, size: 64, offset: 1472)
!5916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5917, size: 64)
!5917 = !DISubroutineType(types: !5918)
!5918 = !{!1064, !357, !52, !5331, !47, !17}
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5833, file: !169, line: 1940, baseType: !1979, size: 64, offset: 1536)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5833, file: !169, line: 1941, baseType: !5921, size: 64, offset: 1600)
!5921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5922, size: 64)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{!34, !357, !34, !5924, !1845}
!5924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5903, size: 64)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5833, file: !169, line: 1942, baseType: !5926, size: 64, offset: 1664)
!5926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5927, size: 64)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{!836, !357, !34, !53, !53}
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5833, file: !169, line: 1944, baseType: !5930, size: 64, offset: 1728)
!5930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5931, size: 64)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{null, !2089, !357}
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5833, file: !169, line: 1948, baseType: !5934, size: 64, offset: 1792)
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5935, size: 64)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!1064, !357, !53, !357, !53, !47, !17}
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5833, file: !169, line: 1950, baseType: !5938, size: 64, offset: 1856)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{!53, !357, !53, !357, !53, !53, !17}
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5833, file: !169, line: 1953, baseType: !5892, size: 64, offset: 1920)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5833, file: !169, line: 1954, baseType: !5943, size: 64, offset: 1984)
!5943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5944, size: 64)
!5944 = !DISubroutineType(types: !5945)
!5945 = !{!34, !5946, !17}
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5947, size: 64)
!5947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !288, line: 25, size: 512, elements: !5948)
!5948 = !{!5949, !5950, !5953, !5961, !5962, !5963}
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5947, file: !288, line: 26, baseType: !357, size: 64)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "sqe", scope: !5947, file: !288, line: 27, baseType: !5951, size: 64, offset: 64)
!5951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5952, size: 64)
!5952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!5953 = !DIDerivedType(tag: DW_TAG_member, scope: !5947, file: !288, line: 28, baseType: !5954, size: 64, offset: 128)
!5954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5947, file: !288, line: 28, size: 64, elements: !5955)
!5955 = !{!5956, !5960}
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "task_work_cb", scope: !5954, file: !288, line: 30, baseType: !5957, size: 64)
!5957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5958, size: 64)
!5958 = !DISubroutineType(types: !5959)
!5959 = !{null, !5946, !17}
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !5954, file: !288, line: 32, baseType: !32, size: 64)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_op", scope: !5947, file: !288, line: 34, baseType: !566, size: 32, offset: 192)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5947, file: !288, line: 35, baseType: !566, size: 32, offset: 224)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "pdu", scope: !5947, file: !288, line: 36, baseType: !5964, size: 256, offset: 256)
!5964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !2863)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5833, file: !169, line: 1955, baseType: !5966, size: 64, offset: 2048)
!5966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5967, size: 64)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!34, !5946, !2969, !17}
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5828, file: !169, line: 723, baseType: !2563, size: 64)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !913, file: !169, line: 725, baseType: !5971, size: 64, offset: 2816)
!5971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5972, size: 64)
!5972 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !169, line: 725, flags: DIFlagFwdDecl)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !913, file: !169, line: 726, baseType: !1271, size: 1536, align: 64, offset: 2880)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !913, file: !169, line: 727, baseType: !109, size: 128, offset: 4416)
!5975 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !169, line: 728, baseType: !5976, size: 64, offset: 4544)
!5976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !169, line: 728, size: 64, elements: !5977)
!5977 = !{!5978, !5979, !5982, !5983}
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5976, file: !169, line: 729, baseType: !5331, size: 64)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5976, file: !169, line: 730, baseType: !5980, size: 64)
!5980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5981, size: 64)
!5981 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !169, line: 730, flags: DIFlagFwdDecl)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5976, file: !169, line: 731, baseType: !613, size: 64)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5976, file: !169, line: 732, baseType: !17, size: 32)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !913, file: !169, line: 735, baseType: !567, size: 32, offset: 4608)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !913, file: !169, line: 738, baseType: !567, size: 32, offset: 4640)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !913, file: !169, line: 739, baseType: !5671, size: 64, offset: 4672)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !913, file: !169, line: 750, baseType: !32, size: 64, offset: 4736)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !873, file: !874, line: 91, baseType: !5989, size: 256, offset: 448)
!5989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !2863)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !873, file: !874, line: 94, baseType: !5991, size: 64, offset: 704)
!5991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5992, line: 25, size: 64, elements: !5993)
!5992 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5993 = !{!5994}
!5994 = !DIDerivedType(tag: DW_TAG_member, scope: !5991, file: !5992, line: 26, baseType: !5995, size: 64)
!5995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5991, file: !5992, line: 26, size: 64, elements: !5996)
!5996 = !{!5997, !5998}
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5995, file: !5992, line: 28, baseType: !510, size: 64, align: 64)
!5998 = !DIDerivedType(tag: DW_TAG_member, scope: !5995, file: !5992, line: 30, baseType: !5999, size: 64)
!5999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5995, file: !5992, line: 30, size: 64, elements: !6000)
!6000 = !{!6001, !6002}
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5999, file: !5992, line: 31, baseType: !71, size: 32)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5999, file: !5992, line: 32, baseType: !34, size: 32, offset: 32)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !873, file: !874, line: 95, baseType: !5685, size: 64, offset: 768)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !873, file: !874, line: 96, baseType: !1120, size: 64, offset: 832)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !873, file: !874, line: 97, baseType: !51, size: 64, offset: 896)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !873, file: !874, line: 98, baseType: !32, size: 64, offset: 960)
!6007 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !874, line: 100, baseType: !6008, size: 128, offset: 1024)
!6008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !874, line: 100, size: 128, elements: !6009)
!6009 = !{!6010, !6011}
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !6008, file: !874, line: 101, baseType: !109, size: 128)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !6008, file: !874, line: 102, baseType: !6012, size: 64)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !873, file: !874, line: 104, baseType: !109, size: 128, offset: 1152)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !873, file: !874, line: 105, baseType: !109, size: 128, offset: 1280)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !873, file: !874, line: 113, baseType: !6016, size: 128, offset: 1408)
!6016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !874, line: 109, size: 128, elements: !6017)
!6017 = !{!6018, !6019, !6020}
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !6016, file: !874, line: 110, baseType: !450, size: 128)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !6016, file: !874, line: 111, baseType: !888, size: 128)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !6016, file: !874, line: 112, baseType: !370, size: 128, align: 64)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !868, file: !869, line: 72, baseType: !1120, size: 64, offset: 64)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !868, file: !869, line: 73, baseType: !34, size: 32, offset: 128)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !868, file: !869, line: 74, baseType: !951, size: 64, offset: 192)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !863, file: !864, line: 10, baseType: !872, size: 64, offset: 64)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !358, file: !169, line: 1015, baseType: !912, size: 64, offset: 1344)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !358, file: !169, line: 1016, baseType: !5831, size: 64, offset: 1408)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !358, file: !169, line: 1018, baseType: !509, size: 64, offset: 1472)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !358, file: !169, line: 1020, baseType: !32, size: 64, offset: 1536)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !358, file: !169, line: 1023, baseType: !32, size: 64, offset: 1600)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !358, file: !169, line: 1027, baseType: !6031, size: 64, offset: 1664)
!6031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !358, file: !169, line: 1029, baseType: !1270, size: 64, offset: 1728)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !358, file: !169, line: 1030, baseType: !1989, size: 32, offset: 1792)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !358, file: !169, line: 1031, baseType: !1989, size: 32, offset: 1824)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !354, file: !2, line: 21, baseType: !6036, size: 320, offset: 64)
!6036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_ctx", file: !6037, line: 250, size: 320, elements: !6038)
!6037 = !DIFile(filename: "io_uring/../fs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc0abbd20470e9e11dfbcff1f3969f")
!6038 = !{!6039, !6044, !6045, !6046, !6054}
!6039 = !DIDerivedType(tag: DW_TAG_member, scope: !6036, file: !6037, line: 252, baseType: !6040, size: 64)
!6040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6036, file: !6037, line: 252, size: 64, elements: !6041)
!6041 = !{!6042, !6043}
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "cvalue", scope: !6040, file: !6037, line: 253, baseType: !1533, size: 64)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6040, file: !6037, line: 254, baseType: !32, size: 64)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "kvalue", scope: !6036, file: !6037, line: 256, baseType: !32, size: 64, offset: 64)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6036, file: !6037, line: 257, baseType: !47, size: 64, offset: 128)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "kname", scope: !6036, file: !6037, line: 259, baseType: !6047, size: 64, offset: 192)
!6047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6048, size: 64)
!6048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_name", file: !6037, line: 246, size: 2048, elements: !6049)
!6049 = !{!6050}
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6048, file: !6037, line: 247, baseType: !6051, size: 2048)
!6051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !6052)
!6052 = !{!6053}
!6053 = !DISubrange(count: 256)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6036, file: !6037, line: 260, baseType: !17, size: 32, offset: 256)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !354, file: !2, line: 22, baseType: !6056, size: 64, offset: 384)
!6056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6057, size: 64)
!6057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !169, line: 2470, size: 256, elements: !6058)
!6058 = !{!6059, !6060, !6061, !6062, !6065}
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6057, file: !169, line: 2471, baseType: !29, size: 64)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !6057, file: !169, line: 2472, baseType: !29, size: 64, offset: 64)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !6057, file: !169, line: 2473, baseType: !61, size: 32, offset: 128)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !6057, file: !169, line: 2474, baseType: !6063, size: 64, offset: 192)
!6063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6064, size: 64)
!6064 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !169, line: 2469, flags: DIFlagFwdDecl)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !6057, file: !169, line: 2475, baseType: !6066, offset: 256)
!6066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !468)
!6067 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !37, line: 42, baseType: !51)
!6068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6069, size: 64)
!6069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6070)
!6070 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !511)
!6071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6072, size: 64)
!6072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6073)
!6073 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!6074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6075, size: 64)
!6075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6076)
!6076 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !951)
!6077 = !{!0, !7}
!6078 = !{i32 7, !"Dwarf Version", i32 5}
!6079 = !{i32 2, !"Debug Info Version", i32 3}
!6080 = !{i32 1, !"wchar_size", i32 2}
!6081 = !{i32 8, !"cf-protection-branch", i32 1}
!6082 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6083 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6084 = !{i32 1, !"Code Model", i32 2}
!6085 = !{i32 1, !"override-stack-alignment", i32 8}
!6086 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6087 = distinct !DISubprogram(name: "io_xattr_cleanup", scope: !2, file: !2, line: 25, type: !6088, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{null, !4363}
!6090 = !{!6091, !6092}
!6091 = !DILocalVariable(name: "req", arg: 1, scope: !6087, file: !2, line: 25, type: !4363)
!6092 = !DILocalVariable(name: "ix", scope: !6087, file: !2, line: 27, type: !353)
!6093 = !DILocation(line: 25, column: 40, scope: !6087)
!6094 = !DILocation(line: 27, column: 2, scope: !6087)
!6095 = !DILocation(line: 27, column: 19, scope: !6087)
!6096 = !DILocation(line: 27, column: 24, scope: !6087)
!6097 = !DILocation(line: 29, column: 6, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6087, file: !2, line: 29, column: 6)
!6099 = !DILocation(line: 29, column: 10, scope: !6098)
!6100 = !DILocation(line: 29, column: 6, scope: !6087)
!6101 = !DILocation(line: 30, column: 11, scope: !6098)
!6102 = !DILocation(line: 30, column: 15, scope: !6098)
!6103 = !DILocation(line: 30, column: 3, scope: !6098)
!6104 = !DILocation(line: 32, column: 8, scope: !6087)
!6105 = !DILocation(line: 32, column: 12, scope: !6087)
!6106 = !DILocation(line: 32, column: 16, scope: !6087)
!6107 = !DILocation(line: 32, column: 2, scope: !6087)
!6108 = !DILocation(line: 33, column: 9, scope: !6087)
!6109 = !DILocation(line: 33, column: 13, scope: !6087)
!6110 = !DILocation(line: 33, column: 17, scope: !6087)
!6111 = !DILocation(line: 33, column: 2, scope: !6087)
!6112 = !DILocation(line: 34, column: 1, scope: !6087)
!6113 = distinct !DISubprogram(name: "io_kiocb_cmd_sz_check", scope: !306, file: !306, line: 518, type: !6114, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6116)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{null, !47}
!6116 = !{!6117}
!6117 = !DILocalVariable(name: "cmd_sz", arg: 1, scope: !6113, file: !306, line: 518, type: !47)
!6118 = !DILocation(line: 518, column: 49, scope: !6113)
!6119 = !DILocation(line: 520, column: 2, scope: !6113)
!6120 = !DILocation(line: 520, column: 2, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6122, file: !306, line: 520, column: 2)
!6122 = distinct !DILexicalBlock(scope: !6113, file: !306, line: 520, column: 2)
!6123 = !DILocation(line: 520, column: 2, scope: !6122)
!6124 = !{i32 -2139241991}
!6125 = !DILocation(line: 521, column: 1, scope: !6113)
!6126 = !DISubprogram(name: "putname", scope: !169, file: !169, line: 2549, type: !6127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6127 = !DISubroutineType(types: !6128)
!6128 = !{null, !6056}
!6129 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !6130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6130 = !DISubroutineType(types: !6131)
!6131 = !{null, !1533}
!6132 = !DISubprogram(name: "kvfree", scope: !9, file: !9, line: 766, type: !6130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6133 = distinct !DISubprogram(name: "io_fgetxattr_prep", scope: !2, file: !2, line: 82, type: !6134, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6136)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!34, !4363, !5951}
!6136 = !{!6137, !6138}
!6137 = !DILocalVariable(name: "req", arg: 1, scope: !6133, file: !2, line: 82, type: !4363)
!6138 = !DILocalVariable(name: "sqe", arg: 2, scope: !6133, file: !2, line: 82, type: !5951)
!6139 = !DILocation(line: 82, column: 40, scope: !6133)
!6140 = !DILocation(line: 82, column: 72, scope: !6133)
!6141 = !DILocation(line: 84, column: 28, scope: !6133)
!6142 = !DILocation(line: 84, column: 33, scope: !6133)
!6143 = !DILocation(line: 84, column: 9, scope: !6133)
!6144 = !DILocation(line: 84, column: 2, scope: !6133)
!6145 = distinct !DISubprogram(name: "__io_getxattr_prep", scope: !2, file: !2, line: 44, type: !6134, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6146)
!6146 = !{!6147, !6148, !6149, !6150, !6151, !6152, !6155, !6156, !6159}
!6147 = !DILocalVariable(name: "req", arg: 1, scope: !6145, file: !2, line: 44, type: !4363)
!6148 = !DILocalVariable(name: "sqe", arg: 2, scope: !6145, file: !2, line: 45, type: !5951)
!6149 = !DILocalVariable(name: "ix", scope: !6145, file: !2, line: 47, type: !353)
!6150 = !DILocalVariable(name: "name", scope: !6145, file: !2, line: 48, type: !29)
!6151 = !DILocalVariable(name: "ret", scope: !6145, file: !2, line: 49, type: !34)
!6152 = !DILocalVariable(name: "__dummy", scope: !6153, file: !2, line: 56, type: !509)
!6153 = distinct !DILexicalBlock(scope: !6154, file: !2, line: 56, column: 9)
!6154 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 56, column: 9)
!6155 = !DILocalVariable(name: "__dummy2", scope: !6153, file: !2, line: 56, type: !511)
!6156 = !DILocalVariable(name: "__dummy", scope: !6157, file: !2, line: 57, type: !509)
!6157 = distinct !DILexicalBlock(scope: !6158, file: !2, line: 57, column: 19)
!6158 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 57, column: 19)
!6159 = !DILocalVariable(name: "__dummy2", scope: !6157, file: !2, line: 57, type: !511)
!6160 = !DILocation(line: 44, column: 48, scope: !6145)
!6161 = !DILocation(line: 45, column: 37, scope: !6145)
!6162 = !DILocation(line: 47, column: 2, scope: !6145)
!6163 = !DILocation(line: 47, column: 19, scope: !6145)
!6164 = !DILocation(line: 47, column: 24, scope: !6145)
!6165 = !DILocation(line: 48, column: 2, scope: !6145)
!6166 = !DILocation(line: 48, column: 21, scope: !6145)
!6167 = !DILocation(line: 49, column: 2, scope: !6145)
!6168 = !DILocation(line: 49, column: 6, scope: !6145)
!6169 = !DILocation(line: 51, column: 6, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 51, column: 6)
!6171 = !DILocation(line: 51, column: 6, scope: !6145)
!6172 = !DILocation(line: 52, column: 3, scope: !6170)
!6173 = !DILocation(line: 54, column: 2, scope: !6145)
!6174 = !DILocation(line: 54, column: 6, scope: !6145)
!6175 = !DILocation(line: 54, column: 15, scope: !6145)
!6176 = !DILocation(line: 55, column: 2, scope: !6145)
!6177 = !DILocation(line: 55, column: 6, scope: !6145)
!6178 = !DILocation(line: 55, column: 10, scope: !6145)
!6179 = !DILocation(line: 55, column: 17, scope: !6145)
!6180 = !DILocation(line: 56, column: 9, scope: !6153)
!6181 = !DILocation(line: 56, column: 9, scope: !6154)
!6182 = !DILocation(line: 56, column: 9, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6154, file: !2, line: 56, column: 9)
!6184 = !DILocation(line: 56, column: 9, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6183, file: !2, line: 56, column: 9)
!6186 = !DILocation(line: 56, column: 7, scope: !6145)
!6187 = !DILocation(line: 57, column: 19, scope: !6157)
!6188 = !DILocation(line: 57, column: 19, scope: !6158)
!6189 = !DILocation(line: 57, column: 19, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6158, file: !2, line: 57, column: 19)
!6191 = !DILocation(line: 57, column: 19, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6190, file: !2, line: 57, column: 19)
!6193 = !DILocation(line: 57, column: 2, scope: !6145)
!6194 = !DILocation(line: 57, column: 6, scope: !6145)
!6195 = !DILocation(line: 57, column: 10, scope: !6145)
!6196 = !DILocation(line: 57, column: 17, scope: !6145)
!6197 = !DILocation(line: 58, column: 17, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 58, column: 17)
!6199 = !DILocation(line: 58, column: 17, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6198, file: !2, line: 58, column: 17)
!6201 = !DILocation(line: 58, column: 17, scope: !6145)
!6202 = !DILocation(line: 58, column: 2, scope: !6145)
!6203 = !DILocation(line: 58, column: 6, scope: !6145)
!6204 = !DILocation(line: 58, column: 10, scope: !6145)
!6205 = !DILocation(line: 58, column: 15, scope: !6145)
!6206 = !DILocation(line: 59, column: 18, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 59, column: 18)
!6208 = !DILocation(line: 59, column: 18, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6207, file: !2, line: 59, column: 18)
!6210 = !DILocation(line: 59, column: 2, scope: !6145)
!6211 = !DILocation(line: 59, column: 6, scope: !6145)
!6212 = !DILocation(line: 59, column: 10, scope: !6145)
!6213 = !DILocation(line: 59, column: 16, scope: !6145)
!6214 = !DILocation(line: 61, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 61, column: 6)
!6216 = !DILocation(line: 61, column: 10, scope: !6215)
!6217 = !DILocation(line: 61, column: 14, scope: !6215)
!6218 = !DILocation(line: 61, column: 6, scope: !6145)
!6219 = !DILocation(line: 62, column: 3, scope: !6215)
!6220 = !DILocation(line: 64, column: 18, scope: !6145)
!6221 = !DILocation(line: 64, column: 2, scope: !6145)
!6222 = !DILocation(line: 64, column: 6, scope: !6145)
!6223 = !DILocation(line: 64, column: 10, scope: !6145)
!6224 = !DILocation(line: 64, column: 16, scope: !6145)
!6225 = !DILocation(line: 65, column: 7, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 65, column: 6)
!6227 = !DILocation(line: 65, column: 11, scope: !6226)
!6228 = !DILocation(line: 65, column: 15, scope: !6226)
!6229 = !DILocation(line: 65, column: 6, scope: !6145)
!6230 = !DILocation(line: 66, column: 3, scope: !6226)
!6231 = !DILocation(line: 68, column: 26, scope: !6145)
!6232 = !DILocation(line: 68, column: 30, scope: !6145)
!6233 = !DILocation(line: 68, column: 34, scope: !6145)
!6234 = !DILocation(line: 68, column: 41, scope: !6145)
!6235 = !DILocation(line: 68, column: 47, scope: !6145)
!6236 = !DILocation(line: 68, column: 8, scope: !6145)
!6237 = !DILocation(line: 68, column: 6, scope: !6145)
!6238 = !DILocation(line: 70, column: 7, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 70, column: 6)
!6240 = !DILocation(line: 70, column: 11, scope: !6239)
!6241 = !DILocation(line: 70, column: 14, scope: !6239)
!6242 = !DILocation(line: 70, column: 18, scope: !6239)
!6243 = !DILocation(line: 70, column: 6, scope: !6145)
!6244 = !DILocation(line: 71, column: 7, scope: !6239)
!6245 = !DILocation(line: 71, column: 3, scope: !6239)
!6246 = !DILocation(line: 72, column: 6, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 72, column: 6)
!6248 = !DILocation(line: 72, column: 10, scope: !6247)
!6249 = !DILocation(line: 72, column: 6, scope: !6145)
!6250 = !DILocation(line: 73, column: 9, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6247, file: !2, line: 72, column: 15)
!6252 = !DILocation(line: 73, column: 13, scope: !6251)
!6253 = !DILocation(line: 73, column: 17, scope: !6251)
!6254 = !DILocation(line: 73, column: 3, scope: !6251)
!6255 = !DILocation(line: 74, column: 10, scope: !6251)
!6256 = !DILocation(line: 74, column: 3, scope: !6251)
!6257 = !DILocation(line: 77, column: 2, scope: !6145)
!6258 = !DILocation(line: 77, column: 7, scope: !6145)
!6259 = !DILocation(line: 77, column: 13, scope: !6145)
!6260 = !DILocation(line: 78, column: 2, scope: !6145)
!6261 = !DILocation(line: 78, column: 7, scope: !6145)
!6262 = !DILocation(line: 78, column: 13, scope: !6145)
!6263 = !DILocation(line: 79, column: 2, scope: !6145)
!6264 = !DILocation(line: 80, column: 1, scope: !6145)
!6265 = distinct !DISubprogram(name: "io_getxattr_prep", scope: !2, file: !2, line: 87, type: !6134, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6266)
!6266 = !{!6267, !6268, !6269, !6270, !6271, !6272, !6275}
!6267 = !DILocalVariable(name: "req", arg: 1, scope: !6265, file: !2, line: 87, type: !4363)
!6268 = !DILocalVariable(name: "sqe", arg: 2, scope: !6265, file: !2, line: 87, type: !5951)
!6269 = !DILocalVariable(name: "ix", scope: !6265, file: !2, line: 89, type: !353)
!6270 = !DILocalVariable(name: "path", scope: !6265, file: !2, line: 90, type: !29)
!6271 = !DILocalVariable(name: "ret", scope: !6265, file: !2, line: 91, type: !34)
!6272 = !DILocalVariable(name: "__dummy", scope: !6273, file: !2, line: 97, type: !509)
!6273 = distinct !DILexicalBlock(scope: !6274, file: !2, line: 97, column: 9)
!6274 = distinct !DILexicalBlock(scope: !6265, file: !2, line: 97, column: 9)
!6275 = !DILocalVariable(name: "__dummy2", scope: !6273, file: !2, line: 97, type: !511)
!6276 = !DILocation(line: 87, column: 39, scope: !6265)
!6277 = !DILocation(line: 87, column: 71, scope: !6265)
!6278 = !DILocation(line: 89, column: 2, scope: !6265)
!6279 = !DILocation(line: 89, column: 19, scope: !6265)
!6280 = !DILocation(line: 89, column: 24, scope: !6265)
!6281 = !DILocation(line: 90, column: 2, scope: !6265)
!6282 = !DILocation(line: 90, column: 21, scope: !6265)
!6283 = !DILocation(line: 91, column: 2, scope: !6265)
!6284 = !DILocation(line: 91, column: 6, scope: !6265)
!6285 = !DILocation(line: 93, column: 27, scope: !6265)
!6286 = !DILocation(line: 93, column: 32, scope: !6265)
!6287 = !DILocation(line: 93, column: 8, scope: !6265)
!6288 = !DILocation(line: 93, column: 6, scope: !6265)
!6289 = !DILocation(line: 94, column: 6, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6265, file: !2, line: 94, column: 6)
!6291 = !DILocation(line: 94, column: 6, scope: !6265)
!6292 = !DILocation(line: 95, column: 10, scope: !6290)
!6293 = !DILocation(line: 95, column: 3, scope: !6290)
!6294 = !DILocation(line: 97, column: 9, scope: !6273)
!6295 = !DILocation(line: 97, column: 9, scope: !6274)
!6296 = !DILocation(line: 97, column: 9, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6274, file: !2, line: 97, column: 9)
!6298 = !DILocation(line: 97, column: 9, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 97, column: 9)
!6300 = !DILocation(line: 97, column: 7, scope: !6265)
!6301 = !DILocation(line: 99, column: 31, scope: !6265)
!6302 = !DILocation(line: 99, column: 17, scope: !6265)
!6303 = !DILocation(line: 99, column: 2, scope: !6265)
!6304 = !DILocation(line: 99, column: 6, scope: !6265)
!6305 = !DILocation(line: 99, column: 15, scope: !6265)
!6306 = !DILocation(line: 100, column: 13, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6265, file: !2, line: 100, column: 6)
!6308 = !DILocation(line: 100, column: 17, scope: !6307)
!6309 = !DILocation(line: 100, column: 6, scope: !6307)
!6310 = !DILocation(line: 100, column: 6, scope: !6265)
!6311 = !DILocation(line: 101, column: 17, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6307, file: !2, line: 100, column: 28)
!6313 = !DILocation(line: 101, column: 21, scope: !6312)
!6314 = !DILocation(line: 101, column: 9, scope: !6312)
!6315 = !DILocation(line: 101, column: 7, scope: !6312)
!6316 = !DILocation(line: 102, column: 3, scope: !6312)
!6317 = !DILocation(line: 102, column: 7, scope: !6312)
!6318 = !DILocation(line: 102, column: 16, scope: !6312)
!6319 = !DILocation(line: 103, column: 2, scope: !6312)
!6320 = !DILocation(line: 105, column: 9, scope: !6265)
!6321 = !DILocation(line: 105, column: 2, scope: !6265)
!6322 = !DILocation(line: 106, column: 1, scope: !6265)
!6323 = !DISubprogram(name: "getname_flags", scope: !169, file: !169, line: 2545, type: !6324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{!6056, !29, !34, !2329}
!6326 = distinct !DISubprogram(name: "IS_ERR", scope: !6327, file: !6327, line: 59, type: !6328, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6330)
!6327 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!602, !1533}
!6330 = !{!6331}
!6331 = !DILocalVariable(name: "ptr", arg: 1, scope: !6326, file: !6327, line: 59, type: !1533)
!6332 = !DILocation(line: 59, column: 60, scope: !6326)
!6333 = !DILocation(line: 61, column: 9, scope: !6326)
!6334 = !DILocation(line: 61, column: 2, scope: !6326)
!6335 = distinct !DISubprogram(name: "PTR_ERR", scope: !6327, file: !6327, line: 49, type: !6336, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6338)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{!836, !1533}
!6338 = !{!6339}
!6339 = !DILocalVariable(name: "ptr", arg: 1, scope: !6335, file: !6327, line: 49, type: !1533)
!6340 = !DILocation(line: 49, column: 61, scope: !6335)
!6341 = !DILocation(line: 51, column: 16, scope: !6335)
!6342 = !DILocation(line: 51, column: 9, scope: !6335)
!6343 = !DILocation(line: 51, column: 2, scope: !6335)
!6344 = distinct !DISubprogram(name: "io_fgetxattr", scope: !2, file: !2, line: 108, type: !6345, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6347)
!6345 = !DISubroutineType(types: !6346)
!6346 = !{!34, !4363, !17}
!6347 = !{!6348, !6349, !6350, !6351, !6352, !6354}
!6348 = !DILocalVariable(name: "req", arg: 1, scope: !6344, file: !2, line: 108, type: !4363)
!6349 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6344, file: !2, line: 108, type: !17)
!6350 = !DILocalVariable(name: "ix", scope: !6344, file: !2, line: 110, type: !353)
!6351 = !DILocalVariable(name: "ret", scope: !6344, file: !2, line: 111, type: !34)
!6352 = !DILocalVariable(name: "__ret_warn_on", scope: !6353, file: !2, line: 113, type: !34)
!6353 = distinct !DILexicalBlock(scope: !6344, file: !2, line: 113, column: 2)
!6354 = !DILocalVariable(name: "__flags", scope: !6355, file: !2, line: 113, type: !34)
!6355 = distinct !DILexicalBlock(scope: !6356, file: !2, line: 113, column: 2)
!6356 = distinct !DILexicalBlock(scope: !6353, file: !2, line: 113, column: 2)
!6357 = !DILocation(line: 108, column: 35, scope: !6344)
!6358 = !DILocation(line: 108, column: 53, scope: !6344)
!6359 = !DILocation(line: 110, column: 2, scope: !6344)
!6360 = !DILocation(line: 110, column: 19, scope: !6344)
!6361 = !DILocation(line: 110, column: 24, scope: !6344)
!6362 = !DILocation(line: 111, column: 2, scope: !6344)
!6363 = !DILocation(line: 111, column: 6, scope: !6344)
!6364 = !DILocation(line: 113, column: 2, scope: !6353)
!6365 = !DILocation(line: 113, column: 2, scope: !6356)
!6366 = !DILocation(line: 113, column: 2, scope: !6355)
!6367 = !DILocation(line: 113, column: 2, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6355, file: !2, line: 113, column: 2)
!6369 = !DILocation(line: 113, column: 2, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6355, file: !2, line: 113, column: 2)
!6371 = !{i64 2156759726, i64 2156759755, i64 2156759801, i64 2156759859, i64 2156759913, i64 2156759967, i64 2156760022, i64 2156760053, i64 2156760361, i64 2156760367, i64 2156760414, i64 2156760437, i64 2156760463}
!6372 = !DILocation(line: 113, column: 2, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6355, file: !2, line: 113, column: 2)
!6374 = !DILocation(line: 113, column: 2, scope: !6344)
!6375 = !DILocation(line: 115, column: 30, scope: !6344)
!6376 = !DILocation(line: 115, column: 35, scope: !6344)
!6377 = !DILocation(line: 115, column: 41, scope: !6344)
!6378 = !DILocation(line: 115, column: 48, scope: !6344)
!6379 = !DILocation(line: 115, column: 20, scope: !6344)
!6380 = !DILocation(line: 116, column: 4, scope: !6344)
!6381 = !DILocation(line: 116, column: 9, scope: !6344)
!6382 = !DILocation(line: 116, column: 15, scope: !6344)
!6383 = !DILocation(line: 116, column: 22, scope: !6344)
!6384 = !DILocation(line: 117, column: 5, scope: !6344)
!6385 = !DILocation(line: 117, column: 9, scope: !6344)
!6386 = !DILocation(line: 115, column: 8, scope: !6344)
!6387 = !DILocation(line: 115, column: 6, scope: !6344)
!6388 = !DILocation(line: 119, column: 18, scope: !6344)
!6389 = !DILocation(line: 119, column: 23, scope: !6344)
!6390 = !DILocation(line: 119, column: 2, scope: !6344)
!6391 = !DILocation(line: 121, column: 1, scope: !6344)
!6392 = !DILocation(line: 120, column: 2, scope: !6344)
!6393 = !DISubprogram(name: "do_getxattr", scope: !6037, file: !6037, line: 264, type: !6394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6394 = !DISubroutineType(types: !6395)
!6395 = !{!1064, !951, !872, !6396}
!6396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6036, size: 64)
!6397 = distinct !DISubprogram(name: "mnt_idmap", scope: !869, file: !869, line: 77, type: !6398, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6402)
!6398 = !DISubroutineType(types: !6399)
!6399 = !{!951, !6400}
!6400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6401, size: 64)
!6401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!6402 = !{!6403, !6404}
!6403 = !DILocalVariable(name: "mnt", arg: 1, scope: !6397, file: !869, line: 77, type: !6400)
!6404 = !DILocalVariable(name: "___p1", scope: !6405, file: !869, line: 80, type: !6406)
!6405 = distinct !DILexicalBlock(scope: !6397, file: !869, line: 80, column: 9)
!6406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !951)
!6407 = !DILocation(line: 77, column: 66, scope: !6397)
!6408 = !DILocation(line: 80, column: 9, scope: !6405)
!6409 = !DILocation(line: 80, column: 9, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6405, file: !869, line: 80, column: 9)
!6411 = !DILocation(line: 80, column: 9, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6410, file: !869, line: 80, column: 9)
!6413 = !DILocation(line: 80, column: 9, scope: !6414)
!6414 = distinct !DILexicalBlock(scope: !6405, file: !869, line: 80, column: 9)
!6415 = !{i64 2153122440}
!6416 = !DILocation(line: 80, column: 9, scope: !6397)
!6417 = !DILocation(line: 80, column: 2, scope: !6397)
!6418 = distinct !DISubprogram(name: "io_xattr_finish", scope: !2, file: !2, line: 36, type: !6419, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6421)
!6419 = !DISubroutineType(types: !6420)
!6420 = !{null, !4363, !34}
!6421 = !{!6422, !6423}
!6422 = !DILocalVariable(name: "req", arg: 1, scope: !6418, file: !2, line: 36, type: !4363)
!6423 = !DILocalVariable(name: "ret", arg: 2, scope: !6418, file: !2, line: 36, type: !34)
!6424 = !DILocation(line: 36, column: 46, scope: !6418)
!6425 = !DILocation(line: 36, column: 55, scope: !6418)
!6426 = !DILocation(line: 38, column: 2, scope: !6418)
!6427 = !DILocation(line: 38, column: 7, scope: !6418)
!6428 = !DILocation(line: 38, column: 13, scope: !6418)
!6429 = !DILocation(line: 40, column: 19, scope: !6418)
!6430 = !DILocation(line: 40, column: 2, scope: !6418)
!6431 = !DILocation(line: 41, column: 17, scope: !6418)
!6432 = !DILocation(line: 41, column: 22, scope: !6418)
!6433 = !DILocation(line: 41, column: 2, scope: !6418)
!6434 = !DILocation(line: 42, column: 1, scope: !6418)
!6435 = distinct !DISubprogram(name: "io_getxattr", scope: !2, file: !2, line: 123, type: !6345, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6436)
!6436 = !{!6437, !6438, !6439, !6440, !6441, !6442, !6443, !6445, !6448}
!6437 = !DILocalVariable(name: "req", arg: 1, scope: !6435, file: !2, line: 123, type: !4363)
!6438 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6435, file: !2, line: 123, type: !17)
!6439 = !DILocalVariable(name: "ix", scope: !6435, file: !2, line: 125, type: !353)
!6440 = !DILocalVariable(name: "lookup_flags", scope: !6435, file: !2, line: 126, type: !17)
!6441 = !DILocalVariable(name: "path", scope: !6435, file: !2, line: 127, type: !863)
!6442 = !DILocalVariable(name: "ret", scope: !6435, file: !2, line: 128, type: !34)
!6443 = !DILocalVariable(name: "__ret_warn_on", scope: !6444, file: !2, line: 130, type: !34)
!6444 = distinct !DILexicalBlock(scope: !6435, file: !2, line: 130, column: 2)
!6445 = !DILocalVariable(name: "__flags", scope: !6446, file: !2, line: 130, type: !34)
!6446 = distinct !DILexicalBlock(scope: !6447, file: !2, line: 130, column: 2)
!6447 = distinct !DILexicalBlock(scope: !6444, file: !2, line: 130, column: 2)
!6448 = !DILabel(scope: !6435, name: "retry", file: !2, line: 132)
!6449 = !DILocation(line: 123, column: 34, scope: !6435)
!6450 = !DILocation(line: 123, column: 52, scope: !6435)
!6451 = !DILocation(line: 125, column: 2, scope: !6435)
!6452 = !DILocation(line: 125, column: 19, scope: !6435)
!6453 = !DILocation(line: 125, column: 24, scope: !6435)
!6454 = !DILocation(line: 126, column: 2, scope: !6435)
!6455 = !DILocation(line: 126, column: 15, scope: !6435)
!6456 = !DILocation(line: 127, column: 2, scope: !6435)
!6457 = !DILocation(line: 127, column: 14, scope: !6435)
!6458 = !DILocation(line: 128, column: 2, scope: !6435)
!6459 = !DILocation(line: 128, column: 6, scope: !6435)
!6460 = !DILocation(line: 130, column: 2, scope: !6444)
!6461 = !DILocation(line: 130, column: 2, scope: !6447)
!6462 = !DILocation(line: 130, column: 2, scope: !6446)
!6463 = !DILocation(line: 130, column: 2, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6446, file: !2, line: 130, column: 2)
!6465 = !DILocation(line: 130, column: 2, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6446, file: !2, line: 130, column: 2)
!6467 = !{i64 2156761390, i64 2156761419, i64 2156761465, i64 2156761523, i64 2156761577, i64 2156761631, i64 2156761686, i64 2156761717, i64 2156762025, i64 2156762031, i64 2156762078, i64 2156762101, i64 2156762127}
!6468 = !DILocation(line: 130, column: 2, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6446, file: !2, line: 130, column: 2)
!6470 = !DILocation(line: 130, column: 2, scope: !6435)
!6471 = !DILocation(line: 132, column: 1, scope: !6435)
!6472 = !DILocation(line: 133, column: 34, scope: !6435)
!6473 = !DILocation(line: 133, column: 38, scope: !6435)
!6474 = !DILocation(line: 133, column: 48, scope: !6435)
!6475 = !DILocation(line: 133, column: 8, scope: !6435)
!6476 = !DILocation(line: 133, column: 6, scope: !6435)
!6477 = !DILocation(line: 134, column: 7, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6435, file: !2, line: 134, column: 6)
!6479 = !DILocation(line: 134, column: 6, scope: !6435)
!6480 = !DILocation(line: 135, column: 36, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6478, file: !2, line: 134, column: 12)
!6482 = !DILocation(line: 135, column: 21, scope: !6481)
!6483 = !DILocation(line: 135, column: 47, scope: !6481)
!6484 = !DILocation(line: 135, column: 56, scope: !6481)
!6485 = !DILocation(line: 135, column: 60, scope: !6481)
!6486 = !DILocation(line: 135, column: 9, scope: !6481)
!6487 = !DILocation(line: 135, column: 7, scope: !6481)
!6488 = !DILocation(line: 137, column: 3, scope: !6481)
!6489 = !DILocation(line: 138, column: 20, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6481, file: !2, line: 138, column: 7)
!6491 = !DILocation(line: 138, column: 25, scope: !6490)
!6492 = !DILocation(line: 138, column: 7, scope: !6490)
!6493 = !DILocation(line: 138, column: 7, scope: !6481)
!6494 = !DILocation(line: 139, column: 17, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6490, file: !2, line: 138, column: 40)
!6496 = !DILocation(line: 140, column: 4, scope: !6495)
!6497 = !DILocation(line: 142, column: 2, scope: !6481)
!6498 = !DILocation(line: 144, column: 18, scope: !6435)
!6499 = !DILocation(line: 144, column: 23, scope: !6435)
!6500 = !DILocation(line: 144, column: 2, scope: !6435)
!6501 = !DILocation(line: 146, column: 1, scope: !6435)
!6502 = !DILocation(line: 145, column: 2, scope: !6435)
!6503 = !DISubprogram(name: "filename_lookup", scope: !6037, file: !6037, line: 54, type: !6504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!34, !34, !6056, !17, !5732, !5732}
!6506 = !DISubprogram(name: "path_put", scope: !864, file: !864, line: 14, type: !6507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6507 = !DISubroutineType(types: !6508)
!6508 = !{null, !1033}
!6509 = distinct !DISubprogram(name: "retry_estale", scope: !6510, file: !6510, line: 113, type: !6511, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6514)
!6510 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!6511 = !DISubroutineType(types: !6512)
!6512 = !{!602, !6513, !5796}
!6513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!6514 = !{!6515, !6516}
!6515 = !DILocalVariable(name: "error", arg: 1, scope: !6509, file: !6510, line: 113, type: !6513)
!6516 = !DILocalVariable(name: "flags", arg: 2, scope: !6509, file: !6510, line: 113, type: !5796)
!6517 = !DILocation(line: 113, column: 25, scope: !6509)
!6518 = !DILocation(line: 113, column: 51, scope: !6509)
!6519 = !DILocation(line: 115, column: 9, scope: !6509)
!6520 = !DILocation(line: 115, column: 15, scope: !6509)
!6521 = !DILocation(line: 115, column: 26, scope: !6509)
!6522 = !DILocation(line: 115, column: 31, scope: !6509)
!6523 = !DILocation(line: 115, column: 37, scope: !6509)
!6524 = !DILocation(line: 115, column: 29, scope: !6509)
!6525 = !DILocation(line: 0, scope: !6509)
!6526 = !DILocation(line: 115, column: 2, scope: !6509)
!6527 = distinct !DISubprogram(name: "io_setxattr_prep", scope: !2, file: !2, line: 180, type: !6134, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6528)
!6528 = !{!6529, !6530, !6531, !6532, !6533, !6534, !6537}
!6529 = !DILocalVariable(name: "req", arg: 1, scope: !6527, file: !2, line: 180, type: !4363)
!6530 = !DILocalVariable(name: "sqe", arg: 2, scope: !6527, file: !2, line: 180, type: !5951)
!6531 = !DILocalVariable(name: "ix", scope: !6527, file: !2, line: 182, type: !353)
!6532 = !DILocalVariable(name: "path", scope: !6527, file: !2, line: 183, type: !29)
!6533 = !DILocalVariable(name: "ret", scope: !6527, file: !2, line: 184, type: !34)
!6534 = !DILocalVariable(name: "__dummy", scope: !6535, file: !2, line: 190, type: !509)
!6535 = distinct !DILexicalBlock(scope: !6536, file: !2, line: 190, column: 9)
!6536 = distinct !DILexicalBlock(scope: !6527, file: !2, line: 190, column: 9)
!6537 = !DILocalVariable(name: "__dummy2", scope: !6535, file: !2, line: 190, type: !511)
!6538 = !DILocation(line: 180, column: 39, scope: !6527)
!6539 = !DILocation(line: 180, column: 71, scope: !6527)
!6540 = !DILocation(line: 182, column: 2, scope: !6527)
!6541 = !DILocation(line: 182, column: 19, scope: !6527)
!6542 = !DILocation(line: 182, column: 24, scope: !6527)
!6543 = !DILocation(line: 183, column: 2, scope: !6527)
!6544 = !DILocation(line: 183, column: 21, scope: !6527)
!6545 = !DILocation(line: 184, column: 2, scope: !6527)
!6546 = !DILocation(line: 184, column: 6, scope: !6527)
!6547 = !DILocation(line: 186, column: 27, scope: !6527)
!6548 = !DILocation(line: 186, column: 32, scope: !6527)
!6549 = !DILocation(line: 186, column: 8, scope: !6527)
!6550 = !DILocation(line: 186, column: 6, scope: !6527)
!6551 = !DILocation(line: 187, column: 6, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6527, file: !2, line: 187, column: 6)
!6553 = !DILocation(line: 187, column: 6, scope: !6527)
!6554 = !DILocation(line: 188, column: 10, scope: !6552)
!6555 = !DILocation(line: 188, column: 3, scope: !6552)
!6556 = !DILocation(line: 190, column: 9, scope: !6535)
!6557 = !DILocation(line: 190, column: 9, scope: !6536)
!6558 = !DILocation(line: 190, column: 9, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6536, file: !2, line: 190, column: 9)
!6560 = !DILocation(line: 190, column: 9, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6559, file: !2, line: 190, column: 9)
!6562 = !DILocation(line: 190, column: 7, scope: !6527)
!6563 = !DILocation(line: 192, column: 31, scope: !6527)
!6564 = !DILocation(line: 192, column: 17, scope: !6527)
!6565 = !DILocation(line: 192, column: 2, scope: !6527)
!6566 = !DILocation(line: 192, column: 6, scope: !6527)
!6567 = !DILocation(line: 192, column: 15, scope: !6527)
!6568 = !DILocation(line: 193, column: 13, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6527, file: !2, line: 193, column: 6)
!6570 = !DILocation(line: 193, column: 17, scope: !6569)
!6571 = !DILocation(line: 193, column: 6, scope: !6569)
!6572 = !DILocation(line: 193, column: 6, scope: !6527)
!6573 = !DILocation(line: 194, column: 17, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6569, file: !2, line: 193, column: 28)
!6575 = !DILocation(line: 194, column: 21, scope: !6574)
!6576 = !DILocation(line: 194, column: 9, scope: !6574)
!6577 = !DILocation(line: 194, column: 7, scope: !6574)
!6578 = !DILocation(line: 195, column: 3, scope: !6574)
!6579 = !DILocation(line: 195, column: 7, scope: !6574)
!6580 = !DILocation(line: 195, column: 16, scope: !6574)
!6581 = !DILocation(line: 196, column: 2, scope: !6574)
!6582 = !DILocation(line: 198, column: 9, scope: !6527)
!6583 = !DILocation(line: 198, column: 2, scope: !6527)
!6584 = !DILocation(line: 199, column: 1, scope: !6527)
!6585 = distinct !DISubprogram(name: "__io_setxattr_prep", scope: !2, file: !2, line: 148, type: !6134, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6586)
!6586 = !{!6587, !6588, !6589, !6590, !6591, !6592, !6595, !6596, !6599}
!6587 = !DILocalVariable(name: "req", arg: 1, scope: !6585, file: !2, line: 148, type: !4363)
!6588 = !DILocalVariable(name: "sqe", arg: 2, scope: !6585, file: !2, line: 149, type: !5951)
!6589 = !DILocalVariable(name: "ix", scope: !6585, file: !2, line: 151, type: !353)
!6590 = !DILocalVariable(name: "name", scope: !6585, file: !2, line: 152, type: !29)
!6591 = !DILocalVariable(name: "ret", scope: !6585, file: !2, line: 153, type: !34)
!6592 = !DILocalVariable(name: "__dummy", scope: !6593, file: !2, line: 159, type: !509)
!6593 = distinct !DILexicalBlock(scope: !6594, file: !2, line: 159, column: 9)
!6594 = distinct !DILexicalBlock(scope: !6585, file: !2, line: 159, column: 9)
!6595 = !DILocalVariable(name: "__dummy2", scope: !6593, file: !2, line: 159, type: !511)
!6596 = !DILocalVariable(name: "__dummy", scope: !6597, file: !2, line: 160, type: !509)
!6597 = distinct !DILexicalBlock(scope: !6598, file: !2, line: 160, column: 19)
!6598 = distinct !DILexicalBlock(scope: !6585, file: !2, line: 160, column: 19)
!6599 = !DILocalVariable(name: "__dummy2", scope: !6597, file: !2, line: 160, type: !511)
!6600 = !DILocation(line: 148, column: 48, scope: !6585)
!6601 = !DILocation(line: 149, column: 31, scope: !6585)
!6602 = !DILocation(line: 151, column: 2, scope: !6585)
!6603 = !DILocation(line: 151, column: 19, scope: !6585)
!6604 = !DILocation(line: 151, column: 24, scope: !6585)
!6605 = !DILocation(line: 152, column: 2, scope: !6585)
!6606 = !DILocation(line: 152, column: 21, scope: !6585)
!6607 = !DILocation(line: 153, column: 2, scope: !6585)
!6608 = !DILocation(line: 153, column: 6, scope: !6585)
!6609 = !DILocation(line: 155, column: 6, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6585, file: !2, line: 155, column: 6)
!6611 = !DILocation(line: 155, column: 6, scope: !6585)
!6612 = !DILocation(line: 156, column: 3, scope: !6610)
!6613 = !DILocation(line: 158, column: 2, scope: !6585)
!6614 = !DILocation(line: 158, column: 6, scope: !6585)
!6615 = !DILocation(line: 158, column: 15, scope: !6585)
!6616 = !DILocation(line: 159, column: 9, scope: !6593)
!6617 = !DILocation(line: 159, column: 9, scope: !6594)
!6618 = !DILocation(line: 159, column: 9, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6594, file: !2, line: 159, column: 9)
!6620 = !DILocation(line: 159, column: 9, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6619, file: !2, line: 159, column: 9)
!6622 = !DILocation(line: 159, column: 7, scope: !6585)
!6623 = !DILocation(line: 160, column: 19, scope: !6597)
!6624 = !DILocation(line: 160, column: 19, scope: !6598)
!6625 = !DILocation(line: 160, column: 19, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6598, file: !2, line: 160, column: 19)
!6627 = !DILocation(line: 160, column: 19, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6626, file: !2, line: 160, column: 19)
!6629 = !DILocation(line: 160, column: 2, scope: !6585)
!6630 = !DILocation(line: 160, column: 6, scope: !6585)
!6631 = !DILocation(line: 160, column: 10, scope: !6585)
!6632 = !DILocation(line: 160, column: 17, scope: !6585)
!6633 = !DILocation(line: 161, column: 2, scope: !6585)
!6634 = !DILocation(line: 161, column: 6, scope: !6585)
!6635 = !DILocation(line: 161, column: 10, scope: !6585)
!6636 = !DILocation(line: 161, column: 17, scope: !6585)
!6637 = !DILocation(line: 162, column: 17, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6585, file: !2, line: 162, column: 17)
!6639 = !DILocation(line: 162, column: 17, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6638, file: !2, line: 162, column: 17)
!6641 = !DILocation(line: 162, column: 17, scope: !6585)
!6642 = !DILocation(line: 162, column: 2, scope: !6585)
!6643 = !DILocation(line: 162, column: 6, scope: !6585)
!6644 = !DILocation(line: 162, column: 10, scope: !6585)
!6645 = !DILocation(line: 162, column: 15, scope: !6585)
!6646 = !DILocation(line: 163, column: 18, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6585, file: !2, line: 163, column: 18)
!6648 = !DILocation(line: 163, column: 18, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6647, file: !2, line: 163, column: 18)
!6650 = !DILocation(line: 163, column: 2, scope: !6585)
!6651 = !DILocation(line: 163, column: 6, scope: !6585)
!6652 = !DILocation(line: 163, column: 10, scope: !6585)
!6653 = !DILocation(line: 163, column: 16, scope: !6585)
!6654 = !DILocation(line: 165, column: 18, scope: !6585)
!6655 = !DILocation(line: 165, column: 2, scope: !6585)
!6656 = !DILocation(line: 165, column: 6, scope: !6585)
!6657 = !DILocation(line: 165, column: 10, scope: !6585)
!6658 = !DILocation(line: 165, column: 16, scope: !6585)
!6659 = !DILocation(line: 166, column: 7, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6585, file: !2, line: 166, column: 6)
!6661 = !DILocation(line: 166, column: 11, scope: !6660)
!6662 = !DILocation(line: 166, column: 15, scope: !6660)
!6663 = !DILocation(line: 166, column: 6, scope: !6585)
!6664 = !DILocation(line: 167, column: 3, scope: !6660)
!6665 = !DILocation(line: 169, column: 22, scope: !6585)
!6666 = !DILocation(line: 169, column: 29, scope: !6585)
!6667 = !DILocation(line: 169, column: 33, scope: !6585)
!6668 = !DILocation(line: 169, column: 8, scope: !6585)
!6669 = !DILocation(line: 169, column: 6, scope: !6585)
!6670 = !DILocation(line: 170, column: 6, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6585, file: !2, line: 170, column: 6)
!6672 = !DILocation(line: 170, column: 6, scope: !6585)
!6673 = !DILocation(line: 171, column: 9, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6671, file: !2, line: 170, column: 11)
!6675 = !DILocation(line: 171, column: 13, scope: !6674)
!6676 = !DILocation(line: 171, column: 17, scope: !6674)
!6677 = !DILocation(line: 171, column: 3, scope: !6674)
!6678 = !DILocation(line: 172, column: 10, scope: !6674)
!6679 = !DILocation(line: 172, column: 3, scope: !6674)
!6680 = !DILocation(line: 175, column: 2, scope: !6585)
!6681 = !DILocation(line: 175, column: 7, scope: !6585)
!6682 = !DILocation(line: 175, column: 13, scope: !6585)
!6683 = !DILocation(line: 176, column: 2, scope: !6585)
!6684 = !DILocation(line: 176, column: 7, scope: !6585)
!6685 = !DILocation(line: 176, column: 13, scope: !6585)
!6686 = !DILocation(line: 177, column: 2, scope: !6585)
!6687 = !DILocation(line: 178, column: 1, scope: !6585)
!6688 = distinct !DISubprogram(name: "io_fsetxattr_prep", scope: !2, file: !2, line: 201, type: !6134, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6689)
!6689 = !{!6690, !6691}
!6690 = !DILocalVariable(name: "req", arg: 1, scope: !6688, file: !2, line: 201, type: !4363)
!6691 = !DILocalVariable(name: "sqe", arg: 2, scope: !6688, file: !2, line: 201, type: !5951)
!6692 = !DILocation(line: 201, column: 40, scope: !6688)
!6693 = !DILocation(line: 201, column: 72, scope: !6688)
!6694 = !DILocation(line: 203, column: 28, scope: !6688)
!6695 = !DILocation(line: 203, column: 33, scope: !6688)
!6696 = !DILocation(line: 203, column: 9, scope: !6688)
!6697 = !DILocation(line: 203, column: 2, scope: !6688)
!6698 = distinct !DISubprogram(name: "io_fsetxattr", scope: !2, file: !2, line: 221, type: !6345, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6699)
!6699 = !{!6700, !6701, !6702, !6703, !6705}
!6700 = !DILocalVariable(name: "req", arg: 1, scope: !6698, file: !2, line: 221, type: !4363)
!6701 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6698, file: !2, line: 221, type: !17)
!6702 = !DILocalVariable(name: "ret", scope: !6698, file: !2, line: 223, type: !34)
!6703 = !DILocalVariable(name: "__ret_warn_on", scope: !6704, file: !2, line: 225, type: !34)
!6704 = distinct !DILexicalBlock(scope: !6698, file: !2, line: 225, column: 2)
!6705 = !DILocalVariable(name: "__flags", scope: !6706, file: !2, line: 225, type: !34)
!6706 = distinct !DILexicalBlock(scope: !6707, file: !2, line: 225, column: 2)
!6707 = distinct !DILexicalBlock(scope: !6704, file: !2, line: 225, column: 2)
!6708 = !DILocation(line: 221, column: 35, scope: !6698)
!6709 = !DILocation(line: 221, column: 53, scope: !6698)
!6710 = !DILocation(line: 223, column: 2, scope: !6698)
!6711 = !DILocation(line: 223, column: 6, scope: !6698)
!6712 = !DILocation(line: 225, column: 2, scope: !6704)
!6713 = !DILocation(line: 225, column: 2, scope: !6707)
!6714 = !DILocation(line: 225, column: 2, scope: !6706)
!6715 = !DILocation(line: 225, column: 2, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6706, file: !2, line: 225, column: 2)
!6717 = !DILocation(line: 225, column: 2, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6706, file: !2, line: 225, column: 2)
!6719 = !{i64 2156786881, i64 2156786910, i64 2156786956, i64 2156787014, i64 2156787068, i64 2156787122, i64 2156787177, i64 2156787208, i64 2156787516, i64 2156787522, i64 2156787569, i64 2156787592, i64 2156787618}
!6720 = !DILocation(line: 225, column: 2, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6706, file: !2, line: 225, column: 2)
!6722 = !DILocation(line: 225, column: 2, scope: !6698)
!6723 = !DILocation(line: 227, column: 22, scope: !6698)
!6724 = !DILocation(line: 227, column: 27, scope: !6698)
!6725 = !DILocation(line: 227, column: 41, scope: !6698)
!6726 = !DILocation(line: 227, column: 46, scope: !6698)
!6727 = !DILocation(line: 227, column: 52, scope: !6698)
!6728 = !DILocation(line: 227, column: 8, scope: !6698)
!6729 = !DILocation(line: 227, column: 6, scope: !6698)
!6730 = !DILocation(line: 228, column: 18, scope: !6698)
!6731 = !DILocation(line: 228, column: 23, scope: !6698)
!6732 = !DILocation(line: 228, column: 2, scope: !6698)
!6733 = !DILocation(line: 230, column: 1, scope: !6698)
!6734 = !DILocation(line: 229, column: 2, scope: !6698)
!6735 = distinct !DISubprogram(name: "__io_setxattr", scope: !2, file: !2, line: 206, type: !6736, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6738)
!6736 = !DISubroutineType(types: !6737)
!6737 = !{!34, !4363, !17, !1033}
!6738 = !{!6739, !6740, !6741, !6742, !6743}
!6739 = !DILocalVariable(name: "req", arg: 1, scope: !6735, file: !2, line: 206, type: !4363)
!6740 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6735, file: !2, line: 206, type: !17)
!6741 = !DILocalVariable(name: "path", arg: 3, scope: !6735, file: !2, line: 207, type: !1033)
!6742 = !DILocalVariable(name: "ix", scope: !6735, file: !2, line: 209, type: !353)
!6743 = !DILocalVariable(name: "ret", scope: !6735, file: !2, line: 210, type: !34)
!6744 = !DILocation(line: 206, column: 43, scope: !6735)
!6745 = !DILocation(line: 206, column: 61, scope: !6735)
!6746 = !DILocation(line: 207, column: 23, scope: !6735)
!6747 = !DILocation(line: 209, column: 2, scope: !6735)
!6748 = !DILocation(line: 209, column: 19, scope: !6735)
!6749 = !DILocation(line: 209, column: 24, scope: !6735)
!6750 = !DILocation(line: 210, column: 2, scope: !6735)
!6751 = !DILocation(line: 210, column: 6, scope: !6735)
!6752 = !DILocation(line: 212, column: 23, scope: !6735)
!6753 = !DILocation(line: 212, column: 29, scope: !6735)
!6754 = !DILocation(line: 212, column: 8, scope: !6735)
!6755 = !DILocation(line: 212, column: 6, scope: !6735)
!6756 = !DILocation(line: 213, column: 7, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6735, file: !2, line: 213, column: 6)
!6758 = !DILocation(line: 213, column: 6, scope: !6735)
!6759 = !DILocation(line: 214, column: 31, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6757, file: !2, line: 213, column: 12)
!6761 = !DILocation(line: 214, column: 37, scope: !6760)
!6762 = !DILocation(line: 214, column: 21, scope: !6760)
!6763 = !DILocation(line: 214, column: 43, scope: !6760)
!6764 = !DILocation(line: 214, column: 49, scope: !6760)
!6765 = !DILocation(line: 214, column: 58, scope: !6760)
!6766 = !DILocation(line: 214, column: 62, scope: !6760)
!6767 = !DILocation(line: 214, column: 9, scope: !6760)
!6768 = !DILocation(line: 214, column: 7, scope: !6760)
!6769 = !DILocation(line: 215, column: 18, scope: !6760)
!6770 = !DILocation(line: 215, column: 24, scope: !6760)
!6771 = !DILocation(line: 215, column: 3, scope: !6760)
!6772 = !DILocation(line: 216, column: 2, scope: !6760)
!6773 = !DILocation(line: 218, column: 9, scope: !6735)
!6774 = !DILocation(line: 219, column: 1, scope: !6735)
!6775 = !DILocation(line: 218, column: 2, scope: !6735)
!6776 = distinct !DISubprogram(name: "io_setxattr", scope: !2, file: !2, line: 232, type: !6345, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6777)
!6777 = !{!6778, !6779, !6780, !6781, !6782, !6783, !6784, !6786, !6789}
!6778 = !DILocalVariable(name: "req", arg: 1, scope: !6776, file: !2, line: 232, type: !4363)
!6779 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6776, file: !2, line: 232, type: !17)
!6780 = !DILocalVariable(name: "ix", scope: !6776, file: !2, line: 234, type: !353)
!6781 = !DILocalVariable(name: "lookup_flags", scope: !6776, file: !2, line: 235, type: !17)
!6782 = !DILocalVariable(name: "path", scope: !6776, file: !2, line: 236, type: !863)
!6783 = !DILocalVariable(name: "ret", scope: !6776, file: !2, line: 237, type: !34)
!6784 = !DILocalVariable(name: "__ret_warn_on", scope: !6785, file: !2, line: 239, type: !34)
!6785 = distinct !DILexicalBlock(scope: !6776, file: !2, line: 239, column: 2)
!6786 = !DILocalVariable(name: "__flags", scope: !6787, file: !2, line: 239, type: !34)
!6787 = distinct !DILexicalBlock(scope: !6788, file: !2, line: 239, column: 2)
!6788 = distinct !DILexicalBlock(scope: !6785, file: !2, line: 239, column: 2)
!6789 = !DILabel(scope: !6776, name: "retry", file: !2, line: 241)
!6790 = !DILocation(line: 232, column: 34, scope: !6776)
!6791 = !DILocation(line: 232, column: 52, scope: !6776)
!6792 = !DILocation(line: 234, column: 2, scope: !6776)
!6793 = !DILocation(line: 234, column: 19, scope: !6776)
!6794 = !DILocation(line: 234, column: 24, scope: !6776)
!6795 = !DILocation(line: 235, column: 2, scope: !6776)
!6796 = !DILocation(line: 235, column: 15, scope: !6776)
!6797 = !DILocation(line: 236, column: 2, scope: !6776)
!6798 = !DILocation(line: 236, column: 14, scope: !6776)
!6799 = !DILocation(line: 237, column: 2, scope: !6776)
!6800 = !DILocation(line: 237, column: 6, scope: !6776)
!6801 = !DILocation(line: 239, column: 2, scope: !6785)
!6802 = !DILocation(line: 239, column: 2, scope: !6788)
!6803 = !DILocation(line: 239, column: 2, scope: !6787)
!6804 = !DILocation(line: 239, column: 2, scope: !6805)
!6805 = distinct !DILexicalBlock(scope: !6787, file: !2, line: 239, column: 2)
!6806 = !DILocation(line: 239, column: 2, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6787, file: !2, line: 239, column: 2)
!6808 = !{i64 2156788545, i64 2156788574, i64 2156788620, i64 2156788678, i64 2156788732, i64 2156788786, i64 2156788841, i64 2156788872, i64 2156789180, i64 2156789186, i64 2156789233, i64 2156789256, i64 2156789282}
!6809 = !DILocation(line: 239, column: 2, scope: !6810)
!6810 = distinct !DILexicalBlock(scope: !6787, file: !2, line: 239, column: 2)
!6811 = !DILocation(line: 239, column: 2, scope: !6776)
!6812 = !DILocation(line: 241, column: 1, scope: !6776)
!6813 = !DILocation(line: 242, column: 34, scope: !6776)
!6814 = !DILocation(line: 242, column: 38, scope: !6776)
!6815 = !DILocation(line: 242, column: 48, scope: !6776)
!6816 = !DILocation(line: 242, column: 8, scope: !6776)
!6817 = !DILocation(line: 242, column: 6, scope: !6776)
!6818 = !DILocation(line: 243, column: 7, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6776, file: !2, line: 243, column: 6)
!6820 = !DILocation(line: 243, column: 6, scope: !6776)
!6821 = !DILocation(line: 244, column: 23, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6819, file: !2, line: 243, column: 12)
!6823 = !DILocation(line: 244, column: 28, scope: !6822)
!6824 = !DILocation(line: 244, column: 9, scope: !6822)
!6825 = !DILocation(line: 244, column: 7, scope: !6822)
!6826 = !DILocation(line: 245, column: 3, scope: !6822)
!6827 = !DILocation(line: 246, column: 20, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6822, file: !2, line: 246, column: 7)
!6829 = !DILocation(line: 246, column: 25, scope: !6828)
!6830 = !DILocation(line: 246, column: 7, scope: !6828)
!6831 = !DILocation(line: 246, column: 7, scope: !6822)
!6832 = !DILocation(line: 247, column: 17, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6828, file: !2, line: 246, column: 40)
!6834 = !DILocation(line: 248, column: 4, scope: !6833)
!6835 = !DILocation(line: 250, column: 2, scope: !6822)
!6836 = !DILocation(line: 252, column: 18, scope: !6776)
!6837 = !DILocation(line: 252, column: 23, scope: !6776)
!6838 = !DILocation(line: 252, column: 2, scope: !6776)
!6839 = !DILocation(line: 254, column: 1, scope: !6776)
!6840 = !DILocation(line: 253, column: 2, scope: !6776)
!6841 = !DISubprogram(name: "__compiletime_assert_352", scope: !306, file: !306, line: 520, type: !2538, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6842 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !6843, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6845)
!6843 = !DISubroutineType(types: !6844)
!6844 = !{!32, !47, !1116}
!6845 = !{!6846, !6847, !6848}
!6846 = !DILocalVariable(name: "size", arg: 1, scope: !6842, file: !9, line: 591, type: !47)
!6847 = !DILocalVariable(name: "flags", arg: 2, scope: !6842, file: !9, line: 591, type: !1116)
!6848 = !DILocalVariable(name: "index", scope: !6849, file: !9, line: 594, type: !17)
!6849 = distinct !DILexicalBlock(scope: !6850, file: !9, line: 593, column: 42)
!6850 = distinct !DILexicalBlock(scope: !6842, file: !9, line: 593, column: 6)
!6851 = !DILocation(line: 591, column: 61, scope: !6842)
!6852 = !DILocation(line: 591, column: 73, scope: !6842)
!6853 = !DILocation(line: 593, column: 27, scope: !6850)
!6854 = !DILocation(line: 593, column: 6, scope: !6850)
!6855 = !DILocation(line: 593, column: 33, scope: !6850)
!6856 = !DILocation(line: 593, column: 36, scope: !6850)
!6857 = !DILocation(line: 593, column: 6, scope: !6842)
!6858 = !DILocation(line: 594, column: 3, scope: !6849)
!6859 = !DILocation(line: 594, column: 16, scope: !6849)
!6860 = !DILocation(line: 596, column: 7, scope: !6861)
!6861 = distinct !DILexicalBlock(scope: !6849, file: !9, line: 596, column: 7)
!6862 = !DILocation(line: 596, column: 12, scope: !6861)
!6863 = !DILocation(line: 596, column: 7, scope: !6849)
!6864 = !DILocation(line: 597, column: 25, scope: !6861)
!6865 = !DILocation(line: 597, column: 31, scope: !6861)
!6866 = !DILocation(line: 597, column: 11, scope: !6861)
!6867 = !DILocation(line: 597, column: 4, scope: !6861)
!6868 = !DILocation(line: 599, column: 11, scope: !6849)
!6869 = !DILocation(line: 599, column: 9, scope: !6849)
!6870 = !DILocation(line: 601, column: 33, scope: !6849)
!6871 = !DILocation(line: 601, column: 40, scope: !6849)
!6872 = !DILocation(line: 601, column: 20, scope: !6849)
!6873 = !DILocation(line: 601, column: 5, scope: !6849)
!6874 = !DILocation(line: 601, column: 51, scope: !6849)
!6875 = !DILocation(line: 602, column: 5, scope: !6849)
!6876 = !DILocation(line: 602, column: 12, scope: !6849)
!6877 = !DILocation(line: 600, column: 10, scope: !6849)
!6878 = !DILocation(line: 600, column: 3, scope: !6849)
!6879 = !DILocation(line: 603, column: 2, scope: !6850)
!6880 = !DILocation(line: 604, column: 19, scope: !6842)
!6881 = !DILocation(line: 604, column: 25, scope: !6842)
!6882 = !DILocation(line: 604, column: 9, scope: !6842)
!6883 = !DILocation(line: 604, column: 2, scope: !6842)
!6884 = !DILocation(line: 605, column: 1, scope: !6842)
!6885 = !DISubprogram(name: "strncpy_from_user", scope: !6886, file: !6886, line: 489, type: !6887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6886 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!6887 = !DISubroutineType(types: !6888)
!6888 = !{!836, !613, !29, !836}
!6889 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !6843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6890 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !6891, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6893)
!6891 = !DISubroutineType(types: !6892)
!6892 = !{!17, !47, !602}
!6893 = !{!6894, !6895}
!6894 = !DILocalVariable(name: "size", arg: 1, scope: !6890, file: !9, line: 444, type: !47)
!6895 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6890, file: !9, line: 445, type: !602)
!6896 = !DILocation(line: 444, column: 60, scope: !6890)
!6897 = !DILocation(line: 445, column: 16, scope: !6890)
!6898 = !DILocation(line: 447, column: 7, scope: !6899)
!6899 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 447, column: 6)
!6900 = !DILocation(line: 447, column: 6, scope: !6890)
!6901 = !DILocation(line: 448, column: 3, scope: !6899)
!6902 = !DILocation(line: 450, column: 6, scope: !6903)
!6903 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 450, column: 6)
!6904 = !DILocation(line: 450, column: 11, scope: !6903)
!6905 = !DILocation(line: 450, column: 6, scope: !6890)
!6906 = !DILocation(line: 451, column: 3, scope: !6903)
!6907 = !DILocation(line: 453, column: 32, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 453, column: 6)
!6909 = !DILocation(line: 453, column: 37, scope: !6908)
!6910 = !DILocation(line: 453, column: 42, scope: !6908)
!6911 = !DILocation(line: 453, column: 45, scope: !6908)
!6912 = !DILocation(line: 453, column: 50, scope: !6908)
!6913 = !DILocation(line: 453, column: 6, scope: !6890)
!6914 = !DILocation(line: 454, column: 3, scope: !6908)
!6915 = !DILocation(line: 455, column: 32, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 455, column: 6)
!6917 = !DILocation(line: 455, column: 37, scope: !6916)
!6918 = !DILocation(line: 455, column: 43, scope: !6916)
!6919 = !DILocation(line: 455, column: 46, scope: !6916)
!6920 = !DILocation(line: 455, column: 51, scope: !6916)
!6921 = !DILocation(line: 455, column: 6, scope: !6890)
!6922 = !DILocation(line: 456, column: 3, scope: !6916)
!6923 = !DILocation(line: 457, column: 6, scope: !6924)
!6924 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 457, column: 6)
!6925 = !DILocation(line: 457, column: 11, scope: !6924)
!6926 = !DILocation(line: 457, column: 6, scope: !6890)
!6927 = !DILocation(line: 457, column: 26, scope: !6924)
!6928 = !DILocation(line: 458, column: 6, scope: !6929)
!6929 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 458, column: 6)
!6930 = !DILocation(line: 458, column: 11, scope: !6929)
!6931 = !DILocation(line: 458, column: 6, scope: !6890)
!6932 = !DILocation(line: 458, column: 26, scope: !6929)
!6933 = !DILocation(line: 459, column: 6, scope: !6934)
!6934 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 459, column: 6)
!6935 = !DILocation(line: 459, column: 11, scope: !6934)
!6936 = !DILocation(line: 459, column: 6, scope: !6890)
!6937 = !DILocation(line: 459, column: 26, scope: !6934)
!6938 = !DILocation(line: 460, column: 6, scope: !6939)
!6939 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 460, column: 6)
!6940 = !DILocation(line: 460, column: 11, scope: !6939)
!6941 = !DILocation(line: 460, column: 6, scope: !6890)
!6942 = !DILocation(line: 460, column: 26, scope: !6939)
!6943 = !DILocation(line: 461, column: 6, scope: !6944)
!6944 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 461, column: 6)
!6945 = !DILocation(line: 461, column: 11, scope: !6944)
!6946 = !DILocation(line: 461, column: 6, scope: !6890)
!6947 = !DILocation(line: 461, column: 26, scope: !6944)
!6948 = !DILocation(line: 462, column: 6, scope: !6949)
!6949 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 462, column: 6)
!6950 = !DILocation(line: 462, column: 11, scope: !6949)
!6951 = !DILocation(line: 462, column: 6, scope: !6890)
!6952 = !DILocation(line: 462, column: 26, scope: !6949)
!6953 = !DILocation(line: 463, column: 6, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 463, column: 6)
!6955 = !DILocation(line: 463, column: 11, scope: !6954)
!6956 = !DILocation(line: 463, column: 6, scope: !6890)
!6957 = !DILocation(line: 463, column: 26, scope: !6954)
!6958 = !DILocation(line: 464, column: 6, scope: !6959)
!6959 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 464, column: 6)
!6960 = !DILocation(line: 464, column: 11, scope: !6959)
!6961 = !DILocation(line: 464, column: 6, scope: !6890)
!6962 = !DILocation(line: 464, column: 26, scope: !6959)
!6963 = !DILocation(line: 465, column: 6, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 465, column: 6)
!6965 = !DILocation(line: 465, column: 11, scope: !6964)
!6966 = !DILocation(line: 465, column: 6, scope: !6890)
!6967 = !DILocation(line: 465, column: 26, scope: !6964)
!6968 = !DILocation(line: 466, column: 6, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 466, column: 6)
!6970 = !DILocation(line: 466, column: 11, scope: !6969)
!6971 = !DILocation(line: 466, column: 6, scope: !6890)
!6972 = !DILocation(line: 466, column: 26, scope: !6969)
!6973 = !DILocation(line: 467, column: 6, scope: !6974)
!6974 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 467, column: 6)
!6975 = !DILocation(line: 467, column: 11, scope: !6974)
!6976 = !DILocation(line: 467, column: 6, scope: !6890)
!6977 = !DILocation(line: 467, column: 26, scope: !6974)
!6978 = !DILocation(line: 468, column: 6, scope: !6979)
!6979 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 468, column: 6)
!6980 = !DILocation(line: 468, column: 11, scope: !6979)
!6981 = !DILocation(line: 468, column: 6, scope: !6890)
!6982 = !DILocation(line: 468, column: 26, scope: !6979)
!6983 = !DILocation(line: 469, column: 6, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 469, column: 6)
!6985 = !DILocation(line: 469, column: 11, scope: !6984)
!6986 = !DILocation(line: 469, column: 6, scope: !6890)
!6987 = !DILocation(line: 469, column: 26, scope: !6984)
!6988 = !DILocation(line: 470, column: 6, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 470, column: 6)
!6990 = !DILocation(line: 470, column: 11, scope: !6989)
!6991 = !DILocation(line: 470, column: 6, scope: !6890)
!6992 = !DILocation(line: 470, column: 26, scope: !6989)
!6993 = !DILocation(line: 471, column: 6, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 471, column: 6)
!6995 = !DILocation(line: 471, column: 11, scope: !6994)
!6996 = !DILocation(line: 471, column: 6, scope: !6890)
!6997 = !DILocation(line: 471, column: 26, scope: !6994)
!6998 = !DILocation(line: 472, column: 6, scope: !6999)
!6999 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 472, column: 6)
!7000 = !DILocation(line: 472, column: 11, scope: !6999)
!7001 = !DILocation(line: 472, column: 6, scope: !6890)
!7002 = !DILocation(line: 472, column: 26, scope: !6999)
!7003 = !DILocation(line: 473, column: 6, scope: !7004)
!7004 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 473, column: 6)
!7005 = !DILocation(line: 473, column: 11, scope: !7004)
!7006 = !DILocation(line: 473, column: 6, scope: !6890)
!7007 = !DILocation(line: 473, column: 26, scope: !7004)
!7008 = !DILocation(line: 474, column: 6, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 474, column: 6)
!7010 = !DILocation(line: 474, column: 11, scope: !7009)
!7011 = !DILocation(line: 474, column: 6, scope: !6890)
!7012 = !DILocation(line: 474, column: 27, scope: !7009)
!7013 = !DILocation(line: 475, column: 6, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 475, column: 6)
!7015 = !DILocation(line: 475, column: 11, scope: !7014)
!7016 = !DILocation(line: 475, column: 6, scope: !6890)
!7017 = !DILocation(line: 475, column: 32, scope: !7014)
!7018 = !DILocation(line: 477, column: 50, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !6890, file: !9, line: 477, column: 6)
!7020 = !{i8 0, i8 2}
!7021 = !DILocation(line: 477, column: 6, scope: !6890)
!7022 = !DILocation(line: 478, column: 3, scope: !7019)
!7023 = !DILocation(line: 478, column: 3, scope: !7024)
!7024 = distinct !DILexicalBlock(scope: !7025, file: !9, line: 478, column: 3)
!7025 = distinct !DILexicalBlock(scope: !7019, file: !9, line: 478, column: 3)
!7026 = !{i32 -2141719489}
!7027 = !DILocation(line: 478, column: 3, scope: !7025)
!7028 = !DILocation(line: 480, column: 3, scope: !7019)
!7029 = !DILocation(line: 480, column: 3, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !7019, file: !9, line: 480, column: 3)
!7031 = !DILocation(line: 480, column: 3, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !7030, file: !9, line: 480, column: 3)
!7033 = !DILocation(line: 480, column: 3, scope: !7034)
!7034 = distinct !DILexicalBlock(scope: !7030, file: !9, line: 480, column: 3)
!7035 = !{i64 2153248010, i64 2153248039, i64 2153248085, i64 2153248143, i64 2153248197, i64 2153248251, i64 2153248306, i64 2153248337}
!7036 = !DILocation(line: 483, column: 2, scope: !6890)
!7037 = !DILocation(line: 484, column: 1, scope: !6890)
!7038 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !7039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7039 = !DISubroutineType(types: !7040)
!7040 = !{!32, !2924, !1116, !47}
!7041 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !7042, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7044)
!7042 = !DISubroutineType(types: !7043)
!7043 = !{!343, !1116, !51}
!7044 = !{!7045, !7046}
!7045 = !DILocalVariable(name: "flags", arg: 1, scope: !7041, file: !9, line: 401, type: !1116)
!7046 = !DILocalVariable(name: "caller", arg: 2, scope: !7041, file: !9, line: 401, type: !51)
!7047 = !DILocation(line: 401, column: 67, scope: !7041)
!7048 = !DILocation(line: 401, column: 88, scope: !7041)
!7049 = !DILocation(line: 407, column: 6, scope: !7050)
!7050 = distinct !DILexicalBlock(scope: !7041, file: !9, line: 407, column: 6)
!7051 = !DILocation(line: 407, column: 6, scope: !7041)
!7052 = !DILocation(line: 413, column: 3, scope: !7050)
!7053 = !DILocation(line: 423, column: 38, scope: !7054)
!7054 = distinct !DILexicalBlock(scope: !7041, file: !9, line: 423, column: 6)
!7055 = !DILocation(line: 423, column: 44, scope: !7054)
!7056 = !DILocation(line: 423, column: 6, scope: !7041)
!7057 = !DILocation(line: 424, column: 3, scope: !7054)
!7058 = !DILocation(line: 426, column: 3, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !7041, file: !9, line: 425, column: 6)
!7060 = !DILocation(line: 429, column: 1, scope: !7041)
!7061 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !6843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7062 = !DISubprogram(name: "__compiletime_assert_245", scope: !9, file: !9, line: 478, type: !2538, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7063 = distinct !DISubprogram(name: "io_req_set_res", scope: !299, file: !299, line: 191, type: !7064, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7066)
!7064 = !DISubroutineType(types: !7065)
!7065 = !{null, !4363, !526, !566}
!7066 = !{!7067, !7068, !7069}
!7067 = !DILocalVariable(name: "req", arg: 1, scope: !7063, file: !299, line: 191, type: !4363)
!7068 = !DILocalVariable(name: "res", arg: 2, scope: !7063, file: !299, line: 191, type: !526)
!7069 = !DILocalVariable(name: "cflags", arg: 3, scope: !7063, file: !299, line: 191, type: !566)
!7070 = !DILocation(line: 191, column: 52, scope: !7063)
!7071 = !DILocation(line: 191, column: 61, scope: !7063)
!7072 = !DILocation(line: 191, column: 70, scope: !7063)
!7073 = !DILocation(line: 193, column: 17, scope: !7063)
!7074 = !DILocation(line: 193, column: 2, scope: !7063)
!7075 = !DILocation(line: 193, column: 7, scope: !7063)
!7076 = !DILocation(line: 193, column: 11, scope: !7063)
!7077 = !DILocation(line: 193, column: 15, scope: !7063)
!7078 = !DILocation(line: 194, column: 19, scope: !7063)
!7079 = !DILocation(line: 194, column: 2, scope: !7063)
!7080 = !DILocation(line: 194, column: 7, scope: !7063)
!7081 = !DILocation(line: 194, column: 11, scope: !7063)
!7082 = !DILocation(line: 194, column: 17, scope: !7063)
!7083 = !DILocation(line: 195, column: 1, scope: !7063)
!7084 = !DISubprogram(name: "setxattr_copy", scope: !6037, file: !6037, line: 268, type: !7085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7085 = !DISubroutineType(types: !7086)
!7086 = !{!34, !29, !6396}
!7087 = !DISubprogram(name: "mnt_want_write", scope: !869, file: !869, line: 83, type: !7088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7088 = !DISubroutineType(types: !7089)
!7089 = !{!34, !867}
!7090 = !DISubprogram(name: "do_setxattr", scope: !6037, file: !6037, line: 269, type: !7091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7091 = !DISubroutineType(types: !7092)
!7092 = !{!34, !951, !872, !6396}
!7093 = !DISubprogram(name: "mnt_drop_write", scope: !869, file: !869, line: 85, type: !7094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7094 = !DISubroutineType(types: !7095)
!7095 = !{null, !867}
