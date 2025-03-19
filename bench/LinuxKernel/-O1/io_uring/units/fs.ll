; ModuleID = 'io_uring/fs.c'
source_filename = "io_uring/fs.c"
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
%struct.io_uring_sqe = type { i8, i8, i16, i32, %union.anon.19, %union.anon.21, i32, %union.anon.22, i64, %union.anon.23, i16, %union.anon.24, %union.anon.26 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.22 = type { i32 }
%union.anon.23 = type { i16 }
%union.anon.24 = type { i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i64, [1 x i64] }
%struct.io_rename = type { ptr, i32, i32, ptr, ptr, i32 }
%struct.io_unlink = type { ptr, i32, i32, ptr }
%struct.io_mkdir = type { ptr, i32, i16, ptr }
%struct.io_link = type { ptr, i32, i32, ptr, ptr, i32 }

@.str = private unnamed_addr constant [14 x i8] c"io_uring/fs.c\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_renameat_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6055 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %ren = alloca ptr, align 8
  %oldf = alloca ptr, align 8
  %newf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %tmp10 = alloca ptr, align 8
  %tmp14 = alloca i64, align 8
  %__dummy15 = alloca i64, align 8
  %__dummy216 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  %tmp20 = alloca ptr, align 8
  %tmp24 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6059, metadata !DIExpression()), !dbg !6072
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6060, metadata !DIExpression()), !dbg !6073
  call void @llvm.lifetime.start.p0(i64 8, ptr %ren) #7, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %ren, metadata !6061, metadata !DIExpression()), !dbg !6075
  call void @io_kiocb_cmd_sz_check(i64 noundef 40) #8, !dbg !6076
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6076
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6076
  store ptr %1, ptr %ren, align 8, !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldf) #7, !dbg !6077
  call void @llvm.dbg.declare(metadata ptr %oldf, metadata !6062, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %newf) #7, !dbg !6077
  call void @llvm.dbg.declare(metadata ptr %newf, metadata !6063, metadata !DIExpression()), !dbg !6079
  %2 = load ptr, ptr %sqe.addr, align 8, !dbg !6080
  %3 = getelementptr inbounds %struct.io_uring_sqe, ptr %2, i32 0, i32 9, !dbg !6082
  %4 = load i16, ptr %3, align 8, !dbg !6082
  %conv = zext i16 %4 to i32, !dbg !6080
  %tobool = icmp ne i32 %conv, 0, !dbg !6080
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6083

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %sqe.addr, align 8, !dbg !6084
  %6 = getelementptr inbounds %struct.io_uring_sqe, ptr %5, i32 0, i32 11, !dbg !6085
  %7 = load i32, ptr %6, align 4, !dbg !6085
  %tobool1 = icmp ne i32 %7, 0, !dbg !6084
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6086

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6087

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %req.addr, align 8, !dbg !6088
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %8, i32 0, i32 4, !dbg !6088
  %9 = load i32, ptr %flags, align 4, !dbg !6088
  %and = and i32 %9, 1, !dbg !6088
  %tobool2 = icmp ne i32 %and, 0, !dbg !6088
  %lnot = xor i1 %tobool2, true, !dbg !6088
  %lnot3 = xor i1 %lnot, true, !dbg !6088
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6088
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6088
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !6088
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6088
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6090

if.then6:                                         ; preds = %if.end
  store i32 -9, ptr %retval, align 4, !dbg !6091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6091

if.end7:                                          ; preds = %if.end
  br label %do.body, !dbg !6092

do.body:                                          ; preds = %if.end7
  br label %do.cond, !dbg !6094

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6094

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %sqe.addr, align 8, !dbg !6092
  %fd = getelementptr inbounds %struct.io_uring_sqe, ptr %10, i32 0, i32 3, !dbg !6092
  %11 = load volatile i32, ptr %fd, align 4, !dbg !6092
  store i32 %11, ptr %tmp, align 4, !dbg !6094
  %12 = load i32, ptr %tmp, align 4, !dbg !6092
  %13 = load ptr, ptr %ren, align 8, !dbg !6096
  %old_dfd = getelementptr inbounds %struct.io_rename, ptr %13, i32 0, i32 1, !dbg !6097
  store i32 %12, ptr %old_dfd, align 8, !dbg !6098
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6064, metadata !DIExpression()), !dbg !6099
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6067, metadata !DIExpression()), !dbg !6099
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6099
  %conv8 = zext i1 %cmp to i32, !dbg !6099
  store i32 1, ptr %tmp9, align 4, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !6100
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !6100
  %14 = load i32, ptr %tmp9, align 4, !dbg !6099
  br label %do.body11, !dbg !6101

do.body11:                                        ; preds = %do.end
  br label %do.cond12, !dbg !6103

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6103

do.end13:                                         ; preds = %do.cond12
  %15 = load ptr, ptr %sqe.addr, align 8, !dbg !6101
  %16 = getelementptr inbounds %struct.io_uring_sqe, ptr %15, i32 0, i32 5, !dbg !6101
  %17 = load volatile i64, ptr %16, align 8, !dbg !6101
  store i64 %17, ptr %tmp14, align 8, !dbg !6103
  %18 = load i64, ptr %tmp14, align 8, !dbg !6101
  %19 = inttoptr i64 %18 to ptr, !dbg !6100
  store ptr %19, ptr %tmp10, align 8, !dbg !6100
  %20 = load ptr, ptr %tmp10, align 8, !dbg !6100
  store ptr %20, ptr %oldf, align 8, !dbg !6105
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy15) #7, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %__dummy15, metadata !6068, metadata !DIExpression()), !dbg !6106
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy216) #7, !dbg !6106
  call void @llvm.dbg.declare(metadata ptr %__dummy216, metadata !6071, metadata !DIExpression()), !dbg !6106
  %cmp17 = icmp eq ptr %__dummy15, %__dummy216, !dbg !6106
  %conv18 = zext i1 %cmp17 to i32, !dbg !6106
  store i32 1, ptr %tmp19, align 4, !dbg !6106
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy216) #7, !dbg !6107
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy15) #7, !dbg !6107
  %21 = load i32, ptr %tmp19, align 4, !dbg !6106
  br label %do.body21, !dbg !6108

do.body21:                                        ; preds = %do.end13
  br label %do.cond22, !dbg !6110

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6110

do.end23:                                         ; preds = %do.cond22
  %22 = load ptr, ptr %sqe.addr, align 8, !dbg !6108
  %23 = getelementptr inbounds %struct.io_uring_sqe, ptr %22, i32 0, i32 4, !dbg !6108
  %24 = load volatile i64, ptr %23, align 8, !dbg !6108
  store i64 %24, ptr %tmp24, align 8, !dbg !6110
  %25 = load i64, ptr %tmp24, align 8, !dbg !6108
  %26 = inttoptr i64 %25 to ptr, !dbg !6107
  store ptr %26, ptr %tmp20, align 8, !dbg !6107
  %27 = load ptr, ptr %tmp20, align 8, !dbg !6107
  store ptr %27, ptr %newf, align 8, !dbg !6112
  br label %do.body25, !dbg !6113

do.body25:                                        ; preds = %do.end23
  br label %do.cond26, !dbg !6115

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !6115

do.end27:                                         ; preds = %do.cond26
  %28 = load ptr, ptr %sqe.addr, align 8, !dbg !6113
  %len = getelementptr inbounds %struct.io_uring_sqe, ptr %28, i32 0, i32 6, !dbg !6113
  %29 = load volatile i32, ptr %len, align 8, !dbg !6113
  store i32 %29, ptr %tmp28, align 4, !dbg !6115
  %30 = load i32, ptr %tmp28, align 4, !dbg !6113
  %31 = load ptr, ptr %ren, align 8, !dbg !6117
  %new_dfd = getelementptr inbounds %struct.io_rename, ptr %31, i32 0, i32 2, !dbg !6118
  store i32 %30, ptr %new_dfd, align 4, !dbg !6119
  br label %do.body29, !dbg !6120

do.body29:                                        ; preds = %do.end27
  br label %do.cond30, !dbg !6122

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6122

do.end31:                                         ; preds = %do.cond30
  %32 = load ptr, ptr %sqe.addr, align 8, !dbg !6120
  %33 = getelementptr inbounds %struct.io_uring_sqe, ptr %32, i32 0, i32 7, !dbg !6120
  %34 = load volatile i32, ptr %33, align 4, !dbg !6120
  store i32 %34, ptr %tmp32, align 4, !dbg !6122
  %35 = load i32, ptr %tmp32, align 4, !dbg !6120
  %36 = load ptr, ptr %ren, align 8, !dbg !6124
  %flags33 = getelementptr inbounds %struct.io_rename, ptr %36, i32 0, i32 5, !dbg !6125
  store i32 %35, ptr %flags33, align 8, !dbg !6126
  %37 = load ptr, ptr %oldf, align 8, !dbg !6127
  %call = call ptr @getname(ptr noundef %37) #8, !dbg !6128
  %38 = load ptr, ptr %ren, align 8, !dbg !6129
  %oldpath = getelementptr inbounds %struct.io_rename, ptr %38, i32 0, i32 3, !dbg !6130
  store ptr %call, ptr %oldpath, align 8, !dbg !6131
  %39 = load ptr, ptr %ren, align 8, !dbg !6132
  %oldpath34 = getelementptr inbounds %struct.io_rename, ptr %39, i32 0, i32 3, !dbg !6134
  %40 = load ptr, ptr %oldpath34, align 8, !dbg !6134
  %call35 = call zeroext i1 @IS_ERR(ptr noundef %40) #8, !dbg !6135
  br i1 %call35, label %if.then36, label %if.end40, !dbg !6136

if.then36:                                        ; preds = %do.end31
  %41 = load ptr, ptr %ren, align 8, !dbg !6137
  %oldpath37 = getelementptr inbounds %struct.io_rename, ptr %41, i32 0, i32 3, !dbg !6138
  %42 = load ptr, ptr %oldpath37, align 8, !dbg !6138
  %call38 = call i64 @PTR_ERR(ptr noundef %42) #8, !dbg !6139
  %conv39 = trunc i64 %call38 to i32, !dbg !6139
  store i32 %conv39, ptr %retval, align 4, !dbg !6140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6140

if.end40:                                         ; preds = %do.end31
  %43 = load ptr, ptr %newf, align 8, !dbg !6141
  %call41 = call ptr @getname(ptr noundef %43) #8, !dbg !6142
  %44 = load ptr, ptr %ren, align 8, !dbg !6143
  %newpath = getelementptr inbounds %struct.io_rename, ptr %44, i32 0, i32 4, !dbg !6144
  store ptr %call41, ptr %newpath, align 8, !dbg !6145
  %45 = load ptr, ptr %ren, align 8, !dbg !6146
  %newpath42 = getelementptr inbounds %struct.io_rename, ptr %45, i32 0, i32 4, !dbg !6148
  %46 = load ptr, ptr %newpath42, align 8, !dbg !6148
  %call43 = call zeroext i1 @IS_ERR(ptr noundef %46) #8, !dbg !6149
  br i1 %call43, label %if.then44, label %if.end49, !dbg !6150

if.then44:                                        ; preds = %if.end40
  %47 = load ptr, ptr %ren, align 8, !dbg !6151
  %oldpath45 = getelementptr inbounds %struct.io_rename, ptr %47, i32 0, i32 3, !dbg !6153
  %48 = load ptr, ptr %oldpath45, align 8, !dbg !6153
  call void @putname(ptr noundef %48) #8, !dbg !6154
  %49 = load ptr, ptr %ren, align 8, !dbg !6155
  %newpath46 = getelementptr inbounds %struct.io_rename, ptr %49, i32 0, i32 4, !dbg !6156
  %50 = load ptr, ptr %newpath46, align 8, !dbg !6156
  %call47 = call i64 @PTR_ERR(ptr noundef %50) #8, !dbg !6157
  %conv48 = trunc i64 %call47 to i32, !dbg !6157
  store i32 %conv48, ptr %retval, align 4, !dbg !6158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6158

if.end49:                                         ; preds = %if.end40
  %51 = load ptr, ptr %req.addr, align 8, !dbg !6159
  %flags50 = getelementptr inbounds %struct.io_kiocb, ptr %51, i32 0, i32 4, !dbg !6160
  %52 = load i32, ptr %flags50, align 4, !dbg !6161
  %or = or i32 %52, 8192, !dbg !6161
  store i32 %or, ptr %flags50, align 4, !dbg !6161
  %53 = load ptr, ptr %req.addr, align 8, !dbg !6162
  %flags51 = getelementptr inbounds %struct.io_kiocb, ptr %53, i32 0, i32 4, !dbg !6163
  %54 = load i32, ptr %flags51, align 4, !dbg !6164
  %or52 = or i32 %54, 16, !dbg !6164
  store i32 %or52, ptr %flags51, align 4, !dbg !6164
  store i32 0, ptr %retval, align 4, !dbg !6165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6165

cleanup:                                          ; preds = %if.end49, %if.then44, %if.then36, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %newf) #7, !dbg !6166
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldf) #7, !dbg !6166
  call void @llvm.lifetime.end.p0(i64 8, ptr %ren) #7, !dbg !6166
  %55 = load i32, ptr %retval, align 4, !dbg !6166
  ret i32 %55, !dbg !6166
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_kiocb_cmd_sz_check(i64 noundef %cmd_sz) #3 align 16 !dbg !6167 {
entry:
  %cmd_sz.addr = alloca i64, align 8
  store i64 %cmd_sz, ptr %cmd_sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd_sz.addr, metadata !6171, metadata !DIExpression()), !dbg !6172
  br label %do.body, !dbg !6173

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %cmd_sz.addr, align 8, !dbg !6174
  %cmp = icmp ugt i64 %0, 64, !dbg !6174
  br i1 %cmp, label %if.then, label %if.end, !dbg !6177

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_352() #9, !dbg !6174, !srcloc !6178
  unreachable, !dbg !6174

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6177

do.end:                                           ; preds = %if.end
  ret void, !dbg !6179
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6180 dso_local ptr @getname(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6183 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6190
  %1 = ptrtoint ptr %0 to i64, !dbg !6190
  %2 = inttoptr i64 %1 to ptr, !dbg !6190
  %3 = ptrtoint ptr %2 to i64, !dbg !6190
  %cmp = icmp uge i64 %3, -4095, !dbg !6190
  %lnot = xor i1 %cmp, true, !dbg !6190
  %lnot1 = xor i1 %lnot, true, !dbg !6190
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6190
  %conv = sext i32 %lnot.ext to i64, !dbg !6190
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6190
  %tobool = icmp ne i64 %expval, 0, !dbg !6190
  ret i1 %tobool, !dbg !6191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6192 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6196, metadata !DIExpression()), !dbg !6197
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6198
  %1 = ptrtoint ptr %0 to i64, !dbg !6199
  ret i64 %1, !dbg !6200
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6201 dso_local void @putname(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_renameat(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6204 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %ren = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6208, metadata !DIExpression()), !dbg !6217
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6209, metadata !DIExpression()), !dbg !6218
  call void @llvm.lifetime.start.p0(i64 8, ptr %ren) #7, !dbg !6219
  call void @llvm.dbg.declare(metadata ptr %ren, metadata !6210, metadata !DIExpression()), !dbg !6220
  call void @io_kiocb_cmd_sz_check(i64 noundef 40) #8, !dbg !6221
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6221
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6221
  store ptr %1, ptr %ren, align 8, !dbg !6220
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6211, metadata !DIExpression()), !dbg !6223
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6212, metadata !DIExpression()), !dbg !6224
  %2 = load i32, ptr %issue_flags.addr, align 4, !dbg !6224
  %and = and i32 %2, -2147483648, !dbg !6224
  %tobool = icmp ne i32 %and, 0, !dbg !6224
  %lnot = xor i1 %tobool, true, !dbg !6224
  %lnot1 = xor i1 %lnot, true, !dbg !6224
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6224
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6224
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6225
  %tobool2 = icmp ne i32 %3, 0, !dbg !6225
  %lnot3 = xor i1 %tobool2, true, !dbg !6225
  %lnot5 = xor i1 %lnot3, true, !dbg !6225
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6225
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6225
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6225
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6225
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6224

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6225

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !6226
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6214, metadata !DIExpression()), !dbg !6226
  store i32 2307, ptr %__flags, align 4, !dbg !6226
  br label %do.body8, !dbg !6226

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6227

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6227

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6226

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6229
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 86, i32 %4, i64 12) #7, !dbg !6229, !srcloc !6231
  br label %do.cond10, !dbg !6229

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6229

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6226

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6232

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6232

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !6225
  br label %do.cond15, !dbg !6226

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6226

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6226

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6224
  %tobool17 = icmp ne i32 %5, 0, !dbg !6224
  %lnot18 = xor i1 %tobool17, true, !dbg !6224
  %lnot20 = xor i1 %lnot18, true, !dbg !6224
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6224
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6224
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6224
  store i64 %expval23, ptr %tmp, align 8, !dbg !6225
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6234
  %6 = load i64, ptr %tmp, align 8, !dbg !6224
  %7 = load ptr, ptr %ren, align 8, !dbg !6235
  %old_dfd = getelementptr inbounds %struct.io_rename, ptr %7, i32 0, i32 1, !dbg !6236
  %8 = load i32, ptr %old_dfd, align 8, !dbg !6236
  %9 = load ptr, ptr %ren, align 8, !dbg !6237
  %oldpath = getelementptr inbounds %struct.io_rename, ptr %9, i32 0, i32 3, !dbg !6238
  %10 = load ptr, ptr %oldpath, align 8, !dbg !6238
  %11 = load ptr, ptr %ren, align 8, !dbg !6239
  %new_dfd = getelementptr inbounds %struct.io_rename, ptr %11, i32 0, i32 2, !dbg !6240
  %12 = load i32, ptr %new_dfd, align 4, !dbg !6240
  %13 = load ptr, ptr %ren, align 8, !dbg !6241
  %newpath = getelementptr inbounds %struct.io_rename, ptr %13, i32 0, i32 4, !dbg !6242
  %14 = load ptr, ptr %newpath, align 8, !dbg !6242
  %15 = load ptr, ptr %ren, align 8, !dbg !6243
  %flags = getelementptr inbounds %struct.io_rename, ptr %15, i32 0, i32 5, !dbg !6244
  %16 = load i32, ptr %flags, align 8, !dbg !6244
  %call = call i32 @do_renameat2(i32 noundef %8, ptr noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef %16) #8, !dbg !6245
  store i32 %call, ptr %ret, align 4, !dbg !6246
  %17 = load ptr, ptr %req.addr, align 8, !dbg !6247
  %flags24 = getelementptr inbounds %struct.io_kiocb, ptr %17, i32 0, i32 4, !dbg !6248
  %18 = load i32, ptr %flags24, align 4, !dbg !6249
  %and25 = and i32 %18, -8193, !dbg !6249
  store i32 %and25, ptr %flags24, align 4, !dbg !6249
  %19 = load ptr, ptr %req.addr, align 8, !dbg !6250
  %20 = load i32, ptr %ret, align 4, !dbg !6251
  call void @io_req_set_res(ptr noundef %19, i32 noundef %20, i32 noundef 0) #8, !dbg !6252
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6253
  call void @llvm.lifetime.end.p0(i64 8, ptr %ren) #7, !dbg !6253
  ret i32 0, !dbg !6254
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6255 dso_local i32 @do_renameat2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_req_set_res(ptr noundef %req, i32 noundef %res, i32 noundef %cflags) #3 align 16 !dbg !6259 {
entry:
  %req.addr = alloca ptr, align 8
  %res.addr = alloca i32, align 4
  %cflags.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6263, metadata !DIExpression()), !dbg !6266
  store i32 %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6264, metadata !DIExpression()), !dbg !6267
  store i32 %cflags, ptr %cflags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cflags.addr, metadata !6265, metadata !DIExpression()), !dbg !6268
  %0 = load i32, ptr %res.addr, align 4, !dbg !6269
  %1 = load ptr, ptr %req.addr, align 8, !dbg !6270
  %cqe = getelementptr inbounds %struct.io_kiocb, ptr %1, i32 0, i32 5, !dbg !6271
  %res1 = getelementptr inbounds %struct.io_cqe, ptr %cqe, i32 0, i32 1, !dbg !6272
  store i32 %0, ptr %res1, align 8, !dbg !6273
  %2 = load i32, ptr %cflags.addr, align 4, !dbg !6274
  %3 = load ptr, ptr %req.addr, align 8, !dbg !6275
  %cqe2 = getelementptr inbounds %struct.io_kiocb, ptr %3, i32 0, i32 5, !dbg !6276
  %4 = getelementptr inbounds %struct.io_cqe, ptr %cqe2, i32 0, i32 2, !dbg !6277
  store i32 %2, ptr %4, align 4, !dbg !6278
  ret void, !dbg !6279
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @io_renameat_cleanup(ptr noundef %req) #0 align 16 !dbg !6280 {
entry:
  %req.addr = alloca ptr, align 8
  %ren = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6284, metadata !DIExpression()), !dbg !6286
  call void @llvm.lifetime.start.p0(i64 8, ptr %ren) #7, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %ren, metadata !6285, metadata !DIExpression()), !dbg !6288
  call void @io_kiocb_cmd_sz_check(i64 noundef 40) #8, !dbg !6289
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6289
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6289
  store ptr %1, ptr %ren, align 8, !dbg !6288
  %2 = load ptr, ptr %ren, align 8, !dbg !6290
  %oldpath = getelementptr inbounds %struct.io_rename, ptr %2, i32 0, i32 3, !dbg !6291
  %3 = load ptr, ptr %oldpath, align 8, !dbg !6291
  call void @putname(ptr noundef %3) #8, !dbg !6292
  %4 = load ptr, ptr %ren, align 8, !dbg !6293
  %newpath = getelementptr inbounds %struct.io_rename, ptr %4, i32 0, i32 4, !dbg !6294
  %5 = load ptr, ptr %newpath, align 8, !dbg !6294
  call void @putname(ptr noundef %5) #8, !dbg !6295
  call void @llvm.lifetime.end.p0(i64 8, ptr %ren) #7, !dbg !6296
  ret void, !dbg !6296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_unlinkat_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6297 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %un = alloca ptr, align 8
  %fname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  %tmp24 = alloca ptr, align 8
  %tmp28 = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6299, metadata !DIExpression()), !dbg !6307
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6300, metadata !DIExpression()), !dbg !6308
  call void @llvm.lifetime.start.p0(i64 8, ptr %un) #7, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %un, metadata !6301, metadata !DIExpression()), !dbg !6310
  call void @io_kiocb_cmd_sz_check(i64 noundef 24) #8, !dbg !6311
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6311
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6311
  store ptr %1, ptr %un, align 8, !dbg !6310
  call void @llvm.lifetime.start.p0(i64 8, ptr %fname) #7, !dbg !6312
  call void @llvm.dbg.declare(metadata ptr %fname, metadata !6302, metadata !DIExpression()), !dbg !6313
  %2 = load ptr, ptr %sqe.addr, align 8, !dbg !6314
  %3 = getelementptr inbounds %struct.io_uring_sqe, ptr %2, i32 0, i32 4, !dbg !6316
  %4 = load i64, ptr %3, align 8, !dbg !6316
  %tobool = icmp ne i64 %4, 0, !dbg !6314
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6317

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %sqe.addr, align 8, !dbg !6318
  %len = getelementptr inbounds %struct.io_uring_sqe, ptr %5, i32 0, i32 6, !dbg !6319
  %6 = load i32, ptr %len, align 8, !dbg !6319
  %tobool1 = icmp ne i32 %6, 0, !dbg !6318
  br i1 %tobool1, label %if.then, label %lor.lhs.false2, !dbg !6320

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %sqe.addr, align 8, !dbg !6321
  %8 = getelementptr inbounds %struct.io_uring_sqe, ptr %7, i32 0, i32 9, !dbg !6322
  %9 = load i16, ptr %8, align 8, !dbg !6322
  %conv = zext i16 %9 to i32, !dbg !6321
  %tobool3 = icmp ne i32 %conv, 0, !dbg !6321
  br i1 %tobool3, label %if.then, label %lor.lhs.false4, !dbg !6323

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %10 = load ptr, ptr %sqe.addr, align 8, !dbg !6324
  %11 = getelementptr inbounds %struct.io_uring_sqe, ptr %10, i32 0, i32 11, !dbg !6325
  %12 = load i32, ptr %11, align 4, !dbg !6325
  %tobool5 = icmp ne i32 %12, 0, !dbg !6324
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6326

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6327

if.end:                                           ; preds = %lor.lhs.false4
  %13 = load ptr, ptr %req.addr, align 8, !dbg !6328
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %13, i32 0, i32 4, !dbg !6328
  %14 = load i32, ptr %flags, align 4, !dbg !6328
  %and = and i32 %14, 1, !dbg !6328
  %tobool6 = icmp ne i32 %and, 0, !dbg !6328
  %lnot = xor i1 %tobool6, true, !dbg !6328
  %lnot7 = xor i1 %lnot, true, !dbg !6328
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6328
  %conv8 = sext i32 %lnot.ext to i64, !dbg !6328
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6328
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6328
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6330

if.then10:                                        ; preds = %if.end
  store i32 -9, ptr %retval, align 4, !dbg !6331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6331

if.end11:                                         ; preds = %if.end
  br label %do.body, !dbg !6332

do.body:                                          ; preds = %if.end11
  br label %do.cond, !dbg !6334

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6334

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %sqe.addr, align 8, !dbg !6332
  %fd = getelementptr inbounds %struct.io_uring_sqe, ptr %15, i32 0, i32 3, !dbg !6332
  %16 = load volatile i32, ptr %fd, align 4, !dbg !6332
  store i32 %16, ptr %tmp, align 4, !dbg !6334
  %17 = load i32, ptr %tmp, align 4, !dbg !6332
  %18 = load ptr, ptr %un, align 8, !dbg !6336
  %dfd = getelementptr inbounds %struct.io_unlink, ptr %18, i32 0, i32 1, !dbg !6337
  store i32 %17, ptr %dfd, align 8, !dbg !6338
  br label %do.body12, !dbg !6339

do.body12:                                        ; preds = %do.end
  br label %do.cond13, !dbg !6341

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6341

do.end14:                                         ; preds = %do.cond13
  %19 = load ptr, ptr %sqe.addr, align 8, !dbg !6339
  %20 = getelementptr inbounds %struct.io_uring_sqe, ptr %19, i32 0, i32 7, !dbg !6339
  %21 = load volatile i32, ptr %20, align 4, !dbg !6339
  store i32 %21, ptr %tmp15, align 4, !dbg !6341
  %22 = load i32, ptr %tmp15, align 4, !dbg !6339
  %23 = load ptr, ptr %un, align 8, !dbg !6343
  %flags16 = getelementptr inbounds %struct.io_unlink, ptr %23, i32 0, i32 2, !dbg !6344
  store i32 %22, ptr %flags16, align 4, !dbg !6345
  %24 = load ptr, ptr %un, align 8, !dbg !6346
  %flags17 = getelementptr inbounds %struct.io_unlink, ptr %24, i32 0, i32 2, !dbg !6348
  %25 = load i32, ptr %flags17, align 4, !dbg !6348
  %and18 = and i32 %25, -513, !dbg !6349
  %tobool19 = icmp ne i32 %and18, 0, !dbg !6349
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6350

if.then20:                                        ; preds = %do.end14
  store i32 -22, ptr %retval, align 4, !dbg !6351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6351

if.end21:                                         ; preds = %do.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !6352
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6303, metadata !DIExpression()), !dbg !6352
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !6352
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6306, metadata !DIExpression()), !dbg !6352
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6352
  %conv22 = zext i1 %cmp to i32, !dbg !6352
  store i32 1, ptr %tmp23, align 4, !dbg !6352
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !6353
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !6353
  %26 = load i32, ptr %tmp23, align 4, !dbg !6352
  br label %do.body25, !dbg !6354

do.body25:                                        ; preds = %if.end21
  br label %do.cond26, !dbg !6356

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !6356

do.end27:                                         ; preds = %do.cond26
  %27 = load ptr, ptr %sqe.addr, align 8, !dbg !6354
  %28 = getelementptr inbounds %struct.io_uring_sqe, ptr %27, i32 0, i32 5, !dbg !6354
  %29 = load volatile i64, ptr %28, align 8, !dbg !6354
  store i64 %29, ptr %tmp28, align 8, !dbg !6356
  %30 = load i64, ptr %tmp28, align 8, !dbg !6354
  %31 = inttoptr i64 %30 to ptr, !dbg !6353
  store ptr %31, ptr %tmp24, align 8, !dbg !6353
  %32 = load ptr, ptr %tmp24, align 8, !dbg !6353
  store ptr %32, ptr %fname, align 8, !dbg !6358
  %33 = load ptr, ptr %fname, align 8, !dbg !6359
  %call = call ptr @getname(ptr noundef %33) #8, !dbg !6360
  %34 = load ptr, ptr %un, align 8, !dbg !6361
  %filename = getelementptr inbounds %struct.io_unlink, ptr %34, i32 0, i32 3, !dbg !6362
  store ptr %call, ptr %filename, align 8, !dbg !6363
  %35 = load ptr, ptr %un, align 8, !dbg !6364
  %filename29 = getelementptr inbounds %struct.io_unlink, ptr %35, i32 0, i32 3, !dbg !6366
  %36 = load ptr, ptr %filename29, align 8, !dbg !6366
  %call30 = call zeroext i1 @IS_ERR(ptr noundef %36) #8, !dbg !6367
  br i1 %call30, label %if.then31, label %if.end35, !dbg !6368

if.then31:                                        ; preds = %do.end27
  %37 = load ptr, ptr %un, align 8, !dbg !6369
  %filename32 = getelementptr inbounds %struct.io_unlink, ptr %37, i32 0, i32 3, !dbg !6370
  %38 = load ptr, ptr %filename32, align 8, !dbg !6370
  %call33 = call i64 @PTR_ERR(ptr noundef %38) #8, !dbg !6371
  %conv34 = trunc i64 %call33 to i32, !dbg !6371
  store i32 %conv34, ptr %retval, align 4, !dbg !6372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6372

if.end35:                                         ; preds = %do.end27
  %39 = load ptr, ptr %req.addr, align 8, !dbg !6373
  %flags36 = getelementptr inbounds %struct.io_kiocb, ptr %39, i32 0, i32 4, !dbg !6374
  %40 = load i32, ptr %flags36, align 4, !dbg !6375
  %or = or i32 %40, 8192, !dbg !6375
  store i32 %or, ptr %flags36, align 4, !dbg !6375
  %41 = load ptr, ptr %req.addr, align 8, !dbg !6376
  %flags37 = getelementptr inbounds %struct.io_kiocb, ptr %41, i32 0, i32 4, !dbg !6377
  %42 = load i32, ptr %flags37, align 4, !dbg !6378
  %or38 = or i32 %42, 16, !dbg !6378
  store i32 %or38, ptr %flags37, align 4, !dbg !6378
  store i32 0, ptr %retval, align 4, !dbg !6379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6379

cleanup:                                          ; preds = %if.end35, %if.then31, %if.then20, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fname) #7, !dbg !6380
  call void @llvm.lifetime.end.p0(i64 8, ptr %un) #7, !dbg !6380
  %43 = load i32, ptr %retval, align 4, !dbg !6380
  ret i32 %43, !dbg !6380
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_unlinkat(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6381 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %un = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6383, metadata !DIExpression()), !dbg !6392
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6384, metadata !DIExpression()), !dbg !6393
  call void @llvm.lifetime.start.p0(i64 8, ptr %un) #7, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %un, metadata !6385, metadata !DIExpression()), !dbg !6395
  call void @io_kiocb_cmd_sz_check(i64 noundef 24) #8, !dbg !6396
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6396
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6396
  store ptr %1, ptr %un, align 8, !dbg !6395
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6397
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6386, metadata !DIExpression()), !dbg !6398
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6399
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6387, metadata !DIExpression()), !dbg !6399
  %2 = load i32, ptr %issue_flags.addr, align 4, !dbg !6399
  %and = and i32 %2, -2147483648, !dbg !6399
  %tobool = icmp ne i32 %and, 0, !dbg !6399
  %lnot = xor i1 %tobool, true, !dbg !6399
  %lnot1 = xor i1 %lnot, true, !dbg !6399
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6399
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6399
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6400
  %tobool2 = icmp ne i32 %3, 0, !dbg !6400
  %lnot3 = xor i1 %tobool2, true, !dbg !6400
  %lnot5 = xor i1 %lnot3, true, !dbg !6400
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6400
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6400
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6400
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6400
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6399

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6400

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !6401
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6389, metadata !DIExpression()), !dbg !6401
  store i32 2307, ptr %__flags, align 4, !dbg !6401
  br label %do.body8, !dbg !6401

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6402

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6402

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6401

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6404
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 135, i32 %4, i64 12) #7, !dbg !6404, !srcloc !6406
  br label %do.cond10, !dbg !6404

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6404

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6401

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6407

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6407

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !6400
  br label %do.cond15, !dbg !6401

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6401

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6401

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6399
  %tobool17 = icmp ne i32 %5, 0, !dbg !6399
  %lnot18 = xor i1 %tobool17, true, !dbg !6399
  %lnot20 = xor i1 %lnot18, true, !dbg !6399
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6399
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6399
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6399
  store i64 %expval23, ptr %tmp, align 8, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6409
  %6 = load i64, ptr %tmp, align 8, !dbg !6399
  %7 = load ptr, ptr %un, align 8, !dbg !6410
  %flags = getelementptr inbounds %struct.io_unlink, ptr %7, i32 0, i32 2, !dbg !6412
  %8 = load i32, ptr %flags, align 4, !dbg !6412
  %and24 = and i32 %8, 512, !dbg !6413
  %tobool25 = icmp ne i32 %and24, 0, !dbg !6413
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !6414

if.then26:                                        ; preds = %if.end
  %9 = load ptr, ptr %un, align 8, !dbg !6415
  %dfd = getelementptr inbounds %struct.io_unlink, ptr %9, i32 0, i32 1, !dbg !6416
  %10 = load i32, ptr %dfd, align 8, !dbg !6416
  %11 = load ptr, ptr %un, align 8, !dbg !6417
  %filename = getelementptr inbounds %struct.io_unlink, ptr %11, i32 0, i32 3, !dbg !6418
  %12 = load ptr, ptr %filename, align 8, !dbg !6418
  %call = call i32 @do_rmdir(i32 noundef %10, ptr noundef %12) #8, !dbg !6419
  store i32 %call, ptr %ret, align 4, !dbg !6420
  br label %if.end30, !dbg !6421

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %un, align 8, !dbg !6422
  %dfd27 = getelementptr inbounds %struct.io_unlink, ptr %13, i32 0, i32 1, !dbg !6423
  %14 = load i32, ptr %dfd27, align 8, !dbg !6423
  %15 = load ptr, ptr %un, align 8, !dbg !6424
  %filename28 = getelementptr inbounds %struct.io_unlink, ptr %15, i32 0, i32 3, !dbg !6425
  %16 = load ptr, ptr %filename28, align 8, !dbg !6425
  %call29 = call i32 @do_unlinkat(i32 noundef %14, ptr noundef %16) #8, !dbg !6426
  store i32 %call29, ptr %ret, align 4, !dbg !6427
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %17 = load ptr, ptr %req.addr, align 8, !dbg !6428
  %flags31 = getelementptr inbounds %struct.io_kiocb, ptr %17, i32 0, i32 4, !dbg !6429
  %18 = load i32, ptr %flags31, align 4, !dbg !6430
  %and32 = and i32 %18, -8193, !dbg !6430
  store i32 %and32, ptr %flags31, align 4, !dbg !6430
  %19 = load ptr, ptr %req.addr, align 8, !dbg !6431
  %20 = load i32, ptr %ret, align 4, !dbg !6432
  call void @io_req_set_res(ptr noundef %19, i32 noundef %20, i32 noundef 0) #8, !dbg !6433
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6434
  call void @llvm.lifetime.end.p0(i64 8, ptr %un) #7, !dbg !6434
  ret i32 0, !dbg !6435
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6436 dso_local i32 @do_rmdir(i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6439 dso_local i32 @do_unlinkat(i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @io_unlinkat_cleanup(ptr noundef %req) #0 align 16 !dbg !6440 {
entry:
  %req.addr = alloca ptr, align 8
  %ul = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6442, metadata !DIExpression()), !dbg !6444
  call void @llvm.lifetime.start.p0(i64 8, ptr %ul) #7, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %ul, metadata !6443, metadata !DIExpression()), !dbg !6446
  call void @io_kiocb_cmd_sz_check(i64 noundef 24) #8, !dbg !6447
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6447
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6447
  store ptr %1, ptr %ul, align 8, !dbg !6446
  %2 = load ptr, ptr %ul, align 8, !dbg !6448
  %filename = getelementptr inbounds %struct.io_unlink, ptr %2, i32 0, i32 3, !dbg !6449
  %3 = load ptr, ptr %filename, align 8, !dbg !6449
  call void @putname(ptr noundef %3) #8, !dbg !6450
  call void @llvm.lifetime.end.p0(i64 8, ptr %ul) #7, !dbg !6451
  ret void, !dbg !6451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_mkdirat_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6452 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %mkd = alloca ptr, align 8
  %fname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  %tmp19 = alloca ptr, align 8
  %tmp23 = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6454, metadata !DIExpression()), !dbg !6462
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6455, metadata !DIExpression()), !dbg !6463
  call void @llvm.lifetime.start.p0(i64 8, ptr %mkd) #7, !dbg !6464
  call void @llvm.dbg.declare(metadata ptr %mkd, metadata !6456, metadata !DIExpression()), !dbg !6465
  call void @io_kiocb_cmd_sz_check(i64 noundef 24) #8, !dbg !6466
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6466
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6466
  store ptr %1, ptr %mkd, align 8, !dbg !6465
  call void @llvm.lifetime.start.p0(i64 8, ptr %fname) #7, !dbg !6467
  call void @llvm.dbg.declare(metadata ptr %fname, metadata !6457, metadata !DIExpression()), !dbg !6468
  %2 = load ptr, ptr %sqe.addr, align 8, !dbg !6469
  %3 = getelementptr inbounds %struct.io_uring_sqe, ptr %2, i32 0, i32 4, !dbg !6471
  %4 = load i64, ptr %3, align 8, !dbg !6471
  %tobool = icmp ne i64 %4, 0, !dbg !6469
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6472

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %sqe.addr, align 8, !dbg !6473
  %6 = getelementptr inbounds %struct.io_uring_sqe, ptr %5, i32 0, i32 7, !dbg !6474
  %7 = load i32, ptr %6, align 4, !dbg !6474
  %tobool1 = icmp ne i32 %7, 0, !dbg !6473
  br i1 %tobool1, label %if.then, label %lor.lhs.false2, !dbg !6475

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %sqe.addr, align 8, !dbg !6476
  %9 = getelementptr inbounds %struct.io_uring_sqe, ptr %8, i32 0, i32 9, !dbg !6477
  %10 = load i16, ptr %9, align 8, !dbg !6477
  %conv = zext i16 %10 to i32, !dbg !6476
  %tobool3 = icmp ne i32 %conv, 0, !dbg !6476
  br i1 %tobool3, label %if.then, label %lor.lhs.false4, !dbg !6478

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %11 = load ptr, ptr %sqe.addr, align 8, !dbg !6479
  %12 = getelementptr inbounds %struct.io_uring_sqe, ptr %11, i32 0, i32 11, !dbg !6480
  %13 = load i32, ptr %12, align 4, !dbg !6480
  %tobool5 = icmp ne i32 %13, 0, !dbg !6479
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6481

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6482

if.end:                                           ; preds = %lor.lhs.false4
  %14 = load ptr, ptr %req.addr, align 8, !dbg !6483
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %14, i32 0, i32 4, !dbg !6483
  %15 = load i32, ptr %flags, align 4, !dbg !6483
  %and = and i32 %15, 1, !dbg !6483
  %tobool6 = icmp ne i32 %and, 0, !dbg !6483
  %lnot = xor i1 %tobool6, true, !dbg !6483
  %lnot7 = xor i1 %lnot, true, !dbg !6483
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6483
  %conv8 = sext i32 %lnot.ext to i64, !dbg !6483
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6483
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6483
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6485

if.then10:                                        ; preds = %if.end
  store i32 -9, ptr %retval, align 4, !dbg !6486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6486

if.end11:                                         ; preds = %if.end
  br label %do.body, !dbg !6487

do.body:                                          ; preds = %if.end11
  br label %do.cond, !dbg !6489

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6489

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %sqe.addr, align 8, !dbg !6487
  %fd = getelementptr inbounds %struct.io_uring_sqe, ptr %16, i32 0, i32 3, !dbg !6487
  %17 = load volatile i32, ptr %fd, align 4, !dbg !6487
  store i32 %17, ptr %tmp, align 4, !dbg !6489
  %18 = load i32, ptr %tmp, align 4, !dbg !6487
  %19 = load ptr, ptr %mkd, align 8, !dbg !6491
  %dfd = getelementptr inbounds %struct.io_mkdir, ptr %19, i32 0, i32 1, !dbg !6492
  store i32 %18, ptr %dfd, align 8, !dbg !6493
  br label %do.body12, !dbg !6494

do.body12:                                        ; preds = %do.end
  br label %do.cond13, !dbg !6496

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6496

do.end14:                                         ; preds = %do.cond13
  %20 = load ptr, ptr %sqe.addr, align 8, !dbg !6494
  %len = getelementptr inbounds %struct.io_uring_sqe, ptr %20, i32 0, i32 6, !dbg !6494
  %21 = load volatile i32, ptr %len, align 8, !dbg !6494
  store i32 %21, ptr %tmp15, align 4, !dbg !6496
  %22 = load i32, ptr %tmp15, align 4, !dbg !6494
  %conv16 = trunc i32 %22 to i16, !dbg !6498
  %23 = load ptr, ptr %mkd, align 8, !dbg !6499
  %mode = getelementptr inbounds %struct.io_mkdir, ptr %23, i32 0, i32 2, !dbg !6500
  store i16 %conv16, ptr %mode, align 4, !dbg !6501
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6458, metadata !DIExpression()), !dbg !6502
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6461, metadata !DIExpression()), !dbg !6502
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6502
  %conv17 = zext i1 %cmp to i32, !dbg !6502
  store i32 1, ptr %tmp18, align 4, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !6503
  %24 = load i32, ptr %tmp18, align 4, !dbg !6502
  br label %do.body20, !dbg !6504

do.body20:                                        ; preds = %do.end14
  br label %do.cond21, !dbg !6506

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6506

do.end22:                                         ; preds = %do.cond21
  %25 = load ptr, ptr %sqe.addr, align 8, !dbg !6504
  %26 = getelementptr inbounds %struct.io_uring_sqe, ptr %25, i32 0, i32 5, !dbg !6504
  %27 = load volatile i64, ptr %26, align 8, !dbg !6504
  store i64 %27, ptr %tmp23, align 8, !dbg !6506
  %28 = load i64, ptr %tmp23, align 8, !dbg !6504
  %29 = inttoptr i64 %28 to ptr, !dbg !6503
  store ptr %29, ptr %tmp19, align 8, !dbg !6503
  %30 = load ptr, ptr %tmp19, align 8, !dbg !6503
  store ptr %30, ptr %fname, align 8, !dbg !6508
  %31 = load ptr, ptr %fname, align 8, !dbg !6509
  %call = call ptr @getname(ptr noundef %31) #8, !dbg !6510
  %32 = load ptr, ptr %mkd, align 8, !dbg !6511
  %filename = getelementptr inbounds %struct.io_mkdir, ptr %32, i32 0, i32 3, !dbg !6512
  store ptr %call, ptr %filename, align 8, !dbg !6513
  %33 = load ptr, ptr %mkd, align 8, !dbg !6514
  %filename24 = getelementptr inbounds %struct.io_mkdir, ptr %33, i32 0, i32 3, !dbg !6516
  %34 = load ptr, ptr %filename24, align 8, !dbg !6516
  %call25 = call zeroext i1 @IS_ERR(ptr noundef %34) #8, !dbg !6517
  br i1 %call25, label %if.then26, label %if.end30, !dbg !6518

if.then26:                                        ; preds = %do.end22
  %35 = load ptr, ptr %mkd, align 8, !dbg !6519
  %filename27 = getelementptr inbounds %struct.io_mkdir, ptr %35, i32 0, i32 3, !dbg !6520
  %36 = load ptr, ptr %filename27, align 8, !dbg !6520
  %call28 = call i64 @PTR_ERR(ptr noundef %36) #8, !dbg !6521
  %conv29 = trunc i64 %call28 to i32, !dbg !6521
  store i32 %conv29, ptr %retval, align 4, !dbg !6522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6522

if.end30:                                         ; preds = %do.end22
  %37 = load ptr, ptr %req.addr, align 8, !dbg !6523
  %flags31 = getelementptr inbounds %struct.io_kiocb, ptr %37, i32 0, i32 4, !dbg !6524
  %38 = load i32, ptr %flags31, align 4, !dbg !6525
  %or = or i32 %38, 8192, !dbg !6525
  store i32 %or, ptr %flags31, align 4, !dbg !6525
  %39 = load ptr, ptr %req.addr, align 8, !dbg !6526
  %flags32 = getelementptr inbounds %struct.io_kiocb, ptr %39, i32 0, i32 4, !dbg !6527
  %40 = load i32, ptr %flags32, align 4, !dbg !6528
  %or33 = or i32 %40, 16, !dbg !6528
  store i32 %or33, ptr %flags32, align 4, !dbg !6528
  store i32 0, ptr %retval, align 4, !dbg !6529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6529

cleanup:                                          ; preds = %if.end30, %if.then26, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fname) #7, !dbg !6530
  call void @llvm.lifetime.end.p0(i64 8, ptr %mkd) #7, !dbg !6530
  %41 = load i32, ptr %retval, align 4, !dbg !6530
  ret i32 %41, !dbg !6530
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_mkdirat(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6531 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %mkd = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6533, metadata !DIExpression()), !dbg !6542
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6534, metadata !DIExpression()), !dbg !6543
  call void @llvm.lifetime.start.p0(i64 8, ptr %mkd) #7, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %mkd, metadata !6535, metadata !DIExpression()), !dbg !6545
  call void @io_kiocb_cmd_sz_check(i64 noundef 24) #8, !dbg !6546
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6546
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6546
  store ptr %1, ptr %mkd, align 8, !dbg !6545
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6547
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6536, metadata !DIExpression()), !dbg !6548
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6549
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6537, metadata !DIExpression()), !dbg !6549
  %2 = load i32, ptr %issue_flags.addr, align 4, !dbg !6549
  %and = and i32 %2, -2147483648, !dbg !6549
  %tobool = icmp ne i32 %and, 0, !dbg !6549
  %lnot = xor i1 %tobool, true, !dbg !6549
  %lnot1 = xor i1 %lnot, true, !dbg !6549
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6549
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6549
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6550
  %tobool2 = icmp ne i32 %3, 0, !dbg !6550
  %lnot3 = xor i1 %tobool2, true, !dbg !6550
  %lnot5 = xor i1 %lnot3, true, !dbg !6550
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6550
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6550
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6550
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6550
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6549

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6550

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6539, metadata !DIExpression()), !dbg !6551
  store i32 2307, ptr %__flags, align 4, !dbg !6551
  br label %do.body8, !dbg !6551

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6552

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6552

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6551

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6554
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 182, i32 %4, i64 12) #7, !dbg !6554, !srcloc !6556
  br label %do.cond10, !dbg !6554

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6554

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6551

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6557

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6557

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !6550
  br label %do.cond15, !dbg !6551

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6551

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6551

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6549
  %tobool17 = icmp ne i32 %5, 0, !dbg !6549
  %lnot18 = xor i1 %tobool17, true, !dbg !6549
  %lnot20 = xor i1 %lnot18, true, !dbg !6549
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6549
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6549
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6549
  store i64 %expval23, ptr %tmp, align 8, !dbg !6550
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6559
  %6 = load i64, ptr %tmp, align 8, !dbg !6549
  %7 = load ptr, ptr %mkd, align 8, !dbg !6560
  %dfd = getelementptr inbounds %struct.io_mkdir, ptr %7, i32 0, i32 1, !dbg !6561
  %8 = load i32, ptr %dfd, align 8, !dbg !6561
  %9 = load ptr, ptr %mkd, align 8, !dbg !6562
  %filename = getelementptr inbounds %struct.io_mkdir, ptr %9, i32 0, i32 3, !dbg !6563
  %10 = load ptr, ptr %filename, align 8, !dbg !6563
  %11 = load ptr, ptr %mkd, align 8, !dbg !6564
  %mode = getelementptr inbounds %struct.io_mkdir, ptr %11, i32 0, i32 2, !dbg !6565
  %12 = load i16, ptr %mode, align 4, !dbg !6565
  %call = call i32 @do_mkdirat(i32 noundef %8, ptr noundef %10, i16 noundef zeroext %12) #8, !dbg !6566
  store i32 %call, ptr %ret, align 4, !dbg !6567
  %13 = load ptr, ptr %req.addr, align 8, !dbg !6568
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %13, i32 0, i32 4, !dbg !6569
  %14 = load i32, ptr %flags, align 4, !dbg !6570
  %and24 = and i32 %14, -8193, !dbg !6570
  store i32 %and24, ptr %flags, align 4, !dbg !6570
  %15 = load ptr, ptr %req.addr, align 8, !dbg !6571
  %16 = load i32, ptr %ret, align 4, !dbg !6572
  call void @io_req_set_res(ptr noundef %15, i32 noundef %16, i32 noundef 0) #8, !dbg !6573
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6574
  call void @llvm.lifetime.end.p0(i64 8, ptr %mkd) #7, !dbg !6574
  ret i32 0, !dbg !6575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6576 dso_local i32 @do_mkdirat(i32 noundef, ptr noundef, i16 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @io_mkdirat_cleanup(ptr noundef %req) #0 align 16 !dbg !6579 {
entry:
  %req.addr = alloca ptr, align 8
  %md = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6581, metadata !DIExpression()), !dbg !6583
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #7, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %md, metadata !6582, metadata !DIExpression()), !dbg !6585
  call void @io_kiocb_cmd_sz_check(i64 noundef 24) #8, !dbg !6586
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6586
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6586
  store ptr %1, ptr %md, align 8, !dbg !6585
  %2 = load ptr, ptr %md, align 8, !dbg !6587
  %filename = getelementptr inbounds %struct.io_mkdir, ptr %2, i32 0, i32 3, !dbg !6588
  %3 = load ptr, ptr %filename, align 8, !dbg !6588
  call void @putname(ptr noundef %3) #8, !dbg !6589
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #7, !dbg !6590
  ret void, !dbg !6590
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_symlinkat_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6591 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %sl = alloca ptr, align 8
  %oldpath = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  %tmp14 = alloca ptr, align 8
  %tmp18 = alloca i64, align 8
  %__dummy19 = alloca i64, align 8
  %__dummy220 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  %tmp24 = alloca ptr, align 8
  %tmp28 = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6593, metadata !DIExpression()), !dbg !6606
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6594, metadata !DIExpression()), !dbg !6607
  call void @llvm.lifetime.start.p0(i64 8, ptr %sl) #7, !dbg !6608
  call void @llvm.dbg.declare(metadata ptr %sl, metadata !6595, metadata !DIExpression()), !dbg !6609
  call void @io_kiocb_cmd_sz_check(i64 noundef 40) #8, !dbg !6610
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6610
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6610
  store ptr %1, ptr %sl, align 8, !dbg !6609
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldpath) #7, !dbg !6611
  call void @llvm.dbg.declare(metadata ptr %oldpath, metadata !6596, metadata !DIExpression()), !dbg !6612
  call void @llvm.lifetime.start.p0(i64 8, ptr %newpath) #7, !dbg !6611
  call void @llvm.dbg.declare(metadata ptr %newpath, metadata !6597, metadata !DIExpression()), !dbg !6613
  %2 = load ptr, ptr %sqe.addr, align 8, !dbg !6614
  %len = getelementptr inbounds %struct.io_uring_sqe, ptr %2, i32 0, i32 6, !dbg !6616
  %3 = load i32, ptr %len, align 8, !dbg !6616
  %tobool = icmp ne i32 %3, 0, !dbg !6614
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6617

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %sqe.addr, align 8, !dbg !6618
  %5 = getelementptr inbounds %struct.io_uring_sqe, ptr %4, i32 0, i32 7, !dbg !6619
  %6 = load i32, ptr %5, align 4, !dbg !6619
  %tobool1 = icmp ne i32 %6, 0, !dbg !6618
  br i1 %tobool1, label %if.then, label %lor.lhs.false2, !dbg !6620

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %sqe.addr, align 8, !dbg !6621
  %8 = getelementptr inbounds %struct.io_uring_sqe, ptr %7, i32 0, i32 9, !dbg !6622
  %9 = load i16, ptr %8, align 8, !dbg !6622
  %conv = zext i16 %9 to i32, !dbg !6621
  %tobool3 = icmp ne i32 %conv, 0, !dbg !6621
  br i1 %tobool3, label %if.then, label %lor.lhs.false4, !dbg !6623

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %10 = load ptr, ptr %sqe.addr, align 8, !dbg !6624
  %11 = getelementptr inbounds %struct.io_uring_sqe, ptr %10, i32 0, i32 11, !dbg !6625
  %12 = load i32, ptr %11, align 4, !dbg !6625
  %tobool5 = icmp ne i32 %12, 0, !dbg !6624
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6626

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6627

if.end:                                           ; preds = %lor.lhs.false4
  %13 = load ptr, ptr %req.addr, align 8, !dbg !6628
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %13, i32 0, i32 4, !dbg !6628
  %14 = load i32, ptr %flags, align 4, !dbg !6628
  %and = and i32 %14, 1, !dbg !6628
  %tobool6 = icmp ne i32 %and, 0, !dbg !6628
  %lnot = xor i1 %tobool6, true, !dbg !6628
  %lnot7 = xor i1 %lnot, true, !dbg !6628
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6628
  %conv8 = sext i32 %lnot.ext to i64, !dbg !6628
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6628
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6628
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6630

if.then10:                                        ; preds = %if.end
  store i32 -9, ptr %retval, align 4, !dbg !6631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6631

if.end11:                                         ; preds = %if.end
  br label %do.body, !dbg !6632

do.body:                                          ; preds = %if.end11
  br label %do.cond, !dbg !6634

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6634

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %sqe.addr, align 8, !dbg !6632
  %fd = getelementptr inbounds %struct.io_uring_sqe, ptr %15, i32 0, i32 3, !dbg !6632
  %16 = load volatile i32, ptr %fd, align 4, !dbg !6632
  store i32 %16, ptr %tmp, align 4, !dbg !6634
  %17 = load i32, ptr %tmp, align 4, !dbg !6632
  %18 = load ptr, ptr %sl, align 8, !dbg !6636
  %new_dfd = getelementptr inbounds %struct.io_link, ptr %18, i32 0, i32 2, !dbg !6637
  store i32 %17, ptr %new_dfd, align 4, !dbg !6638
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !6639
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6598, metadata !DIExpression()), !dbg !6639
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !6639
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6601, metadata !DIExpression()), !dbg !6639
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6639
  %conv12 = zext i1 %cmp to i32, !dbg !6639
  store i32 1, ptr %tmp13, align 4, !dbg !6639
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !6640
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !6640
  %19 = load i32, ptr %tmp13, align 4, !dbg !6639
  br label %do.body15, !dbg !6641

do.body15:                                        ; preds = %do.end
  br label %do.cond16, !dbg !6643

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6643

do.end17:                                         ; preds = %do.cond16
  %20 = load ptr, ptr %sqe.addr, align 8, !dbg !6641
  %21 = getelementptr inbounds %struct.io_uring_sqe, ptr %20, i32 0, i32 5, !dbg !6641
  %22 = load volatile i64, ptr %21, align 8, !dbg !6641
  store i64 %22, ptr %tmp18, align 8, !dbg !6643
  %23 = load i64, ptr %tmp18, align 8, !dbg !6641
  %24 = inttoptr i64 %23 to ptr, !dbg !6640
  store ptr %24, ptr %tmp14, align 8, !dbg !6640
  %25 = load ptr, ptr %tmp14, align 8, !dbg !6640
  store ptr %25, ptr %oldpath, align 8, !dbg !6645
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy19) #7, !dbg !6646
  call void @llvm.dbg.declare(metadata ptr %__dummy19, metadata !6602, metadata !DIExpression()), !dbg !6646
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy220) #7, !dbg !6646
  call void @llvm.dbg.declare(metadata ptr %__dummy220, metadata !6605, metadata !DIExpression()), !dbg !6646
  %cmp21 = icmp eq ptr %__dummy19, %__dummy220, !dbg !6646
  %conv22 = zext i1 %cmp21 to i32, !dbg !6646
  store i32 1, ptr %tmp23, align 4, !dbg !6646
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy220) #7, !dbg !6647
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy19) #7, !dbg !6647
  %26 = load i32, ptr %tmp23, align 4, !dbg !6646
  br label %do.body25, !dbg !6648

do.body25:                                        ; preds = %do.end17
  br label %do.cond26, !dbg !6650

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !6650

do.end27:                                         ; preds = %do.cond26
  %27 = load ptr, ptr %sqe.addr, align 8, !dbg !6648
  %28 = getelementptr inbounds %struct.io_uring_sqe, ptr %27, i32 0, i32 4, !dbg !6648
  %29 = load volatile i64, ptr %28, align 8, !dbg !6648
  store i64 %29, ptr %tmp28, align 8, !dbg !6650
  %30 = load i64, ptr %tmp28, align 8, !dbg !6648
  %31 = inttoptr i64 %30 to ptr, !dbg !6647
  store ptr %31, ptr %tmp24, align 8, !dbg !6647
  %32 = load ptr, ptr %tmp24, align 8, !dbg !6647
  store ptr %32, ptr %newpath, align 8, !dbg !6652
  %33 = load ptr, ptr %oldpath, align 8, !dbg !6653
  %call = call ptr @getname(ptr noundef %33) #8, !dbg !6654
  %34 = load ptr, ptr %sl, align 8, !dbg !6655
  %oldpath29 = getelementptr inbounds %struct.io_link, ptr %34, i32 0, i32 3, !dbg !6656
  store ptr %call, ptr %oldpath29, align 8, !dbg !6657
  %35 = load ptr, ptr %sl, align 8, !dbg !6658
  %oldpath30 = getelementptr inbounds %struct.io_link, ptr %35, i32 0, i32 3, !dbg !6660
  %36 = load ptr, ptr %oldpath30, align 8, !dbg !6660
  %call31 = call zeroext i1 @IS_ERR(ptr noundef %36) #8, !dbg !6661
  br i1 %call31, label %if.then32, label %if.end36, !dbg !6662

if.then32:                                        ; preds = %do.end27
  %37 = load ptr, ptr %sl, align 8, !dbg !6663
  %oldpath33 = getelementptr inbounds %struct.io_link, ptr %37, i32 0, i32 3, !dbg !6664
  %38 = load ptr, ptr %oldpath33, align 8, !dbg !6664
  %call34 = call i64 @PTR_ERR(ptr noundef %38) #8, !dbg !6665
  %conv35 = trunc i64 %call34 to i32, !dbg !6665
  store i32 %conv35, ptr %retval, align 4, !dbg !6666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6666

if.end36:                                         ; preds = %do.end27
  %39 = load ptr, ptr %newpath, align 8, !dbg !6667
  %call37 = call ptr @getname(ptr noundef %39) #8, !dbg !6668
  %40 = load ptr, ptr %sl, align 8, !dbg !6669
  %newpath38 = getelementptr inbounds %struct.io_link, ptr %40, i32 0, i32 4, !dbg !6670
  store ptr %call37, ptr %newpath38, align 8, !dbg !6671
  %41 = load ptr, ptr %sl, align 8, !dbg !6672
  %newpath39 = getelementptr inbounds %struct.io_link, ptr %41, i32 0, i32 4, !dbg !6674
  %42 = load ptr, ptr %newpath39, align 8, !dbg !6674
  %call40 = call zeroext i1 @IS_ERR(ptr noundef %42) #8, !dbg !6675
  br i1 %call40, label %if.then41, label %if.end46, !dbg !6676

if.then41:                                        ; preds = %if.end36
  %43 = load ptr, ptr %sl, align 8, !dbg !6677
  %oldpath42 = getelementptr inbounds %struct.io_link, ptr %43, i32 0, i32 3, !dbg !6679
  %44 = load ptr, ptr %oldpath42, align 8, !dbg !6679
  call void @putname(ptr noundef %44) #8, !dbg !6680
  %45 = load ptr, ptr %sl, align 8, !dbg !6681
  %newpath43 = getelementptr inbounds %struct.io_link, ptr %45, i32 0, i32 4, !dbg !6682
  %46 = load ptr, ptr %newpath43, align 8, !dbg !6682
  %call44 = call i64 @PTR_ERR(ptr noundef %46) #8, !dbg !6683
  %conv45 = trunc i64 %call44 to i32, !dbg !6683
  store i32 %conv45, ptr %retval, align 4, !dbg !6684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6684

if.end46:                                         ; preds = %if.end36
  %47 = load ptr, ptr %req.addr, align 8, !dbg !6685
  %flags47 = getelementptr inbounds %struct.io_kiocb, ptr %47, i32 0, i32 4, !dbg !6686
  %48 = load i32, ptr %flags47, align 4, !dbg !6687
  %or = or i32 %48, 8192, !dbg !6687
  store i32 %or, ptr %flags47, align 4, !dbg !6687
  %49 = load ptr, ptr %req.addr, align 8, !dbg !6688
  %flags48 = getelementptr inbounds %struct.io_kiocb, ptr %49, i32 0, i32 4, !dbg !6689
  %50 = load i32, ptr %flags48, align 4, !dbg !6690
  %or49 = or i32 %50, 16, !dbg !6690
  store i32 %or49, ptr %flags48, align 4, !dbg !6690
  store i32 0, ptr %retval, align 4, !dbg !6691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6691

cleanup:                                          ; preds = %if.end46, %if.then41, %if.then32, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %newpath) #7, !dbg !6692
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldpath) #7, !dbg !6692
  call void @llvm.lifetime.end.p0(i64 8, ptr %sl) #7, !dbg !6692
  %51 = load i32, ptr %retval, align 4, !dbg !6692
  ret i32 %51, !dbg !6692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_symlinkat(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6693 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %sl = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6695, metadata !DIExpression()), !dbg !6704
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6696, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 8, ptr %sl) #7, !dbg !6706
  call void @llvm.dbg.declare(metadata ptr %sl, metadata !6697, metadata !DIExpression()), !dbg !6707
  call void @io_kiocb_cmd_sz_check(i64 noundef 40) #8, !dbg !6708
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6708
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6708
  store ptr %1, ptr %sl, align 8, !dbg !6707
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6709
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6698, metadata !DIExpression()), !dbg !6710
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6711
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6699, metadata !DIExpression()), !dbg !6711
  %2 = load i32, ptr %issue_flags.addr, align 4, !dbg !6711
  %and = and i32 %2, -2147483648, !dbg !6711
  %tobool = icmp ne i32 %and, 0, !dbg !6711
  %lnot = xor i1 %tobool, true, !dbg !6711
  %lnot1 = xor i1 %lnot, true, !dbg !6711
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6711
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6711
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6712
  %tobool2 = icmp ne i32 %3, 0, !dbg !6712
  %lnot3 = xor i1 %tobool2, true, !dbg !6712
  %lnot5 = xor i1 %lnot3, true, !dbg !6712
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6712
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6712
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6712
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6712
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6711

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6712

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !6713
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6701, metadata !DIExpression()), !dbg !6713
  store i32 2307, ptr %__flags, align 4, !dbg !6713
  br label %do.body8, !dbg !6713

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6714

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6714

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6713

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6716
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 232, i32 %4, i64 12) #7, !dbg !6716, !srcloc !6718
  br label %do.cond10, !dbg !6716

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6716

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6713

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6719

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6719

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !6712
  br label %do.cond15, !dbg !6713

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6713

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6713

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6711
  %tobool17 = icmp ne i32 %5, 0, !dbg !6711
  %lnot18 = xor i1 %tobool17, true, !dbg !6711
  %lnot20 = xor i1 %lnot18, true, !dbg !6711
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6711
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6711
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6711
  store i64 %expval23, ptr %tmp, align 8, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6721
  %6 = load i64, ptr %tmp, align 8, !dbg !6711
  %7 = load ptr, ptr %sl, align 8, !dbg !6722
  %oldpath = getelementptr inbounds %struct.io_link, ptr %7, i32 0, i32 3, !dbg !6723
  %8 = load ptr, ptr %oldpath, align 8, !dbg !6723
  %9 = load ptr, ptr %sl, align 8, !dbg !6724
  %new_dfd = getelementptr inbounds %struct.io_link, ptr %9, i32 0, i32 2, !dbg !6725
  %10 = load i32, ptr %new_dfd, align 4, !dbg !6725
  %11 = load ptr, ptr %sl, align 8, !dbg !6726
  %newpath = getelementptr inbounds %struct.io_link, ptr %11, i32 0, i32 4, !dbg !6727
  %12 = load ptr, ptr %newpath, align 8, !dbg !6727
  %call = call i32 @do_symlinkat(ptr noundef %8, i32 noundef %10, ptr noundef %12) #8, !dbg !6728
  store i32 %call, ptr %ret, align 4, !dbg !6729
  %13 = load ptr, ptr %req.addr, align 8, !dbg !6730
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %13, i32 0, i32 4, !dbg !6731
  %14 = load i32, ptr %flags, align 4, !dbg !6732
  %and24 = and i32 %14, -8193, !dbg !6732
  store i32 %and24, ptr %flags, align 4, !dbg !6732
  %15 = load ptr, ptr %req.addr, align 8, !dbg !6733
  %16 = load i32, ptr %ret, align 4, !dbg !6734
  call void @io_req_set_res(ptr noundef %15, i32 noundef %16, i32 noundef 0) #8, !dbg !6735
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6736
  call void @llvm.lifetime.end.p0(i64 8, ptr %sl) #7, !dbg !6736
  ret i32 0, !dbg !6737
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6738 dso_local i32 @do_symlinkat(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_linkat_prep(ptr noundef %req, ptr noundef %sqe) #0 align 16 !dbg !6741 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %sqe.addr = alloca ptr, align 8
  %lnk = alloca ptr, align 8
  %oldf = alloca ptr, align 8
  %newf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  %tmp14 = alloca ptr, align 8
  %tmp18 = alloca i64, align 8
  %__dummy19 = alloca i64, align 8
  %__dummy220 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  %tmp24 = alloca ptr, align 8
  %tmp28 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6743, metadata !DIExpression()), !dbg !6756
  store ptr %sqe, ptr %sqe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sqe.addr, metadata !6744, metadata !DIExpression()), !dbg !6757
  call void @llvm.lifetime.start.p0(i64 8, ptr %lnk) #7, !dbg !6758
  call void @llvm.dbg.declare(metadata ptr %lnk, metadata !6745, metadata !DIExpression()), !dbg !6759
  call void @io_kiocb_cmd_sz_check(i64 noundef 40) #8, !dbg !6760
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6760
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6760
  store ptr %1, ptr %lnk, align 8, !dbg !6759
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldf) #7, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %oldf, metadata !6746, metadata !DIExpression()), !dbg !6762
  call void @llvm.lifetime.start.p0(i64 8, ptr %newf) #7, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %newf, metadata !6747, metadata !DIExpression()), !dbg !6763
  %2 = load ptr, ptr %sqe.addr, align 8, !dbg !6764
  %3 = getelementptr inbounds %struct.io_uring_sqe, ptr %2, i32 0, i32 9, !dbg !6766
  %4 = load i16, ptr %3, align 8, !dbg !6766
  %conv = zext i16 %4 to i32, !dbg !6764
  %tobool = icmp ne i32 %conv, 0, !dbg !6764
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6767

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %sqe.addr, align 8, !dbg !6768
  %6 = getelementptr inbounds %struct.io_uring_sqe, ptr %5, i32 0, i32 11, !dbg !6769
  %7 = load i32, ptr %6, align 4, !dbg !6769
  %tobool1 = icmp ne i32 %7, 0, !dbg !6768
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6770

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6771

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %req.addr, align 8, !dbg !6772
  %flags = getelementptr inbounds %struct.io_kiocb, ptr %8, i32 0, i32 4, !dbg !6772
  %9 = load i32, ptr %flags, align 4, !dbg !6772
  %and = and i32 %9, 1, !dbg !6772
  %tobool2 = icmp ne i32 %and, 0, !dbg !6772
  %lnot = xor i1 %tobool2, true, !dbg !6772
  %lnot3 = xor i1 %lnot, true, !dbg !6772
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6772
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6772
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !6772
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6772
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6774

if.then6:                                         ; preds = %if.end
  store i32 -9, ptr %retval, align 4, !dbg !6775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6775

if.end7:                                          ; preds = %if.end
  br label %do.body, !dbg !6776

do.body:                                          ; preds = %if.end7
  br label %do.cond, !dbg !6778

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6778

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %sqe.addr, align 8, !dbg !6776
  %fd = getelementptr inbounds %struct.io_uring_sqe, ptr %10, i32 0, i32 3, !dbg !6776
  %11 = load volatile i32, ptr %fd, align 4, !dbg !6776
  store i32 %11, ptr %tmp, align 4, !dbg !6778
  %12 = load i32, ptr %tmp, align 4, !dbg !6776
  %13 = load ptr, ptr %lnk, align 8, !dbg !6780
  %old_dfd = getelementptr inbounds %struct.io_link, ptr %13, i32 0, i32 1, !dbg !6781
  store i32 %12, ptr %old_dfd, align 8, !dbg !6782
  br label %do.body8, !dbg !6783

do.body8:                                         ; preds = %do.end
  br label %do.cond9, !dbg !6785

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6785

do.end10:                                         ; preds = %do.cond9
  %14 = load ptr, ptr %sqe.addr, align 8, !dbg !6783
  %len = getelementptr inbounds %struct.io_uring_sqe, ptr %14, i32 0, i32 6, !dbg !6783
  %15 = load volatile i32, ptr %len, align 8, !dbg !6783
  store i32 %15, ptr %tmp11, align 4, !dbg !6785
  %16 = load i32, ptr %tmp11, align 4, !dbg !6783
  %17 = load ptr, ptr %lnk, align 8, !dbg !6787
  %new_dfd = getelementptr inbounds %struct.io_link, ptr %17, i32 0, i32 2, !dbg !6788
  store i32 %16, ptr %new_dfd, align 4, !dbg !6789
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !6790
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6748, metadata !DIExpression()), !dbg !6790
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !6790
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6751, metadata !DIExpression()), !dbg !6790
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6790
  %conv12 = zext i1 %cmp to i32, !dbg !6790
  store i32 1, ptr %tmp13, align 4, !dbg !6790
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !6791
  %18 = load i32, ptr %tmp13, align 4, !dbg !6790
  br label %do.body15, !dbg !6792

do.body15:                                        ; preds = %do.end10
  br label %do.cond16, !dbg !6794

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6794

do.end17:                                         ; preds = %do.cond16
  %19 = load ptr, ptr %sqe.addr, align 8, !dbg !6792
  %20 = getelementptr inbounds %struct.io_uring_sqe, ptr %19, i32 0, i32 5, !dbg !6792
  %21 = load volatile i64, ptr %20, align 8, !dbg !6792
  store i64 %21, ptr %tmp18, align 8, !dbg !6794
  %22 = load i64, ptr %tmp18, align 8, !dbg !6792
  %23 = inttoptr i64 %22 to ptr, !dbg !6791
  store ptr %23, ptr %tmp14, align 8, !dbg !6791
  %24 = load ptr, ptr %tmp14, align 8, !dbg !6791
  store ptr %24, ptr %oldf, align 8, !dbg !6796
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy19) #7, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %__dummy19, metadata !6752, metadata !DIExpression()), !dbg !6797
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy220) #7, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %__dummy220, metadata !6755, metadata !DIExpression()), !dbg !6797
  %cmp21 = icmp eq ptr %__dummy19, %__dummy220, !dbg !6797
  %conv22 = zext i1 %cmp21 to i32, !dbg !6797
  store i32 1, ptr %tmp23, align 4, !dbg !6797
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy220) #7, !dbg !6798
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy19) #7, !dbg !6798
  %25 = load i32, ptr %tmp23, align 4, !dbg !6797
  br label %do.body25, !dbg !6799

do.body25:                                        ; preds = %do.end17
  br label %do.cond26, !dbg !6801

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !6801

do.end27:                                         ; preds = %do.cond26
  %26 = load ptr, ptr %sqe.addr, align 8, !dbg !6799
  %27 = getelementptr inbounds %struct.io_uring_sqe, ptr %26, i32 0, i32 4, !dbg !6799
  %28 = load volatile i64, ptr %27, align 8, !dbg !6799
  store i64 %28, ptr %tmp28, align 8, !dbg !6801
  %29 = load i64, ptr %tmp28, align 8, !dbg !6799
  %30 = inttoptr i64 %29 to ptr, !dbg !6798
  store ptr %30, ptr %tmp24, align 8, !dbg !6798
  %31 = load ptr, ptr %tmp24, align 8, !dbg !6798
  store ptr %31, ptr %newf, align 8, !dbg !6803
  br label %do.body29, !dbg !6804

do.body29:                                        ; preds = %do.end27
  br label %do.cond30, !dbg !6806

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6806

do.end31:                                         ; preds = %do.cond30
  %32 = load ptr, ptr %sqe.addr, align 8, !dbg !6804
  %33 = getelementptr inbounds %struct.io_uring_sqe, ptr %32, i32 0, i32 7, !dbg !6804
  %34 = load volatile i32, ptr %33, align 4, !dbg !6804
  store i32 %34, ptr %tmp32, align 4, !dbg !6806
  %35 = load i32, ptr %tmp32, align 4, !dbg !6804
  %36 = load ptr, ptr %lnk, align 8, !dbg !6808
  %flags33 = getelementptr inbounds %struct.io_link, ptr %36, i32 0, i32 5, !dbg !6809
  store i32 %35, ptr %flags33, align 8, !dbg !6810
  %37 = load ptr, ptr %oldf, align 8, !dbg !6811
  %38 = load ptr, ptr %lnk, align 8, !dbg !6812
  %flags34 = getelementptr inbounds %struct.io_link, ptr %38, i32 0, i32 5, !dbg !6813
  %39 = load i32, ptr %flags34, align 8, !dbg !6813
  %call = call ptr @getname_uflags(ptr noundef %37, i32 noundef %39) #8, !dbg !6814
  %40 = load ptr, ptr %lnk, align 8, !dbg !6815
  %oldpath = getelementptr inbounds %struct.io_link, ptr %40, i32 0, i32 3, !dbg !6816
  store ptr %call, ptr %oldpath, align 8, !dbg !6817
  %41 = load ptr, ptr %lnk, align 8, !dbg !6818
  %oldpath35 = getelementptr inbounds %struct.io_link, ptr %41, i32 0, i32 3, !dbg !6820
  %42 = load ptr, ptr %oldpath35, align 8, !dbg !6820
  %call36 = call zeroext i1 @IS_ERR(ptr noundef %42) #8, !dbg !6821
  br i1 %call36, label %if.then37, label %if.end41, !dbg !6822

if.then37:                                        ; preds = %do.end31
  %43 = load ptr, ptr %lnk, align 8, !dbg !6823
  %oldpath38 = getelementptr inbounds %struct.io_link, ptr %43, i32 0, i32 3, !dbg !6824
  %44 = load ptr, ptr %oldpath38, align 8, !dbg !6824
  %call39 = call i64 @PTR_ERR(ptr noundef %44) #8, !dbg !6825
  %conv40 = trunc i64 %call39 to i32, !dbg !6825
  store i32 %conv40, ptr %retval, align 4, !dbg !6826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6826

if.end41:                                         ; preds = %do.end31
  %45 = load ptr, ptr %newf, align 8, !dbg !6827
  %call42 = call ptr @getname(ptr noundef %45) #8, !dbg !6828
  %46 = load ptr, ptr %lnk, align 8, !dbg !6829
  %newpath = getelementptr inbounds %struct.io_link, ptr %46, i32 0, i32 4, !dbg !6830
  store ptr %call42, ptr %newpath, align 8, !dbg !6831
  %47 = load ptr, ptr %lnk, align 8, !dbg !6832
  %newpath43 = getelementptr inbounds %struct.io_link, ptr %47, i32 0, i32 4, !dbg !6834
  %48 = load ptr, ptr %newpath43, align 8, !dbg !6834
  %call44 = call zeroext i1 @IS_ERR(ptr noundef %48) #8, !dbg !6835
  br i1 %call44, label %if.then45, label %if.end50, !dbg !6836

if.then45:                                        ; preds = %if.end41
  %49 = load ptr, ptr %lnk, align 8, !dbg !6837
  %oldpath46 = getelementptr inbounds %struct.io_link, ptr %49, i32 0, i32 3, !dbg !6839
  %50 = load ptr, ptr %oldpath46, align 8, !dbg !6839
  call void @putname(ptr noundef %50) #8, !dbg !6840
  %51 = load ptr, ptr %lnk, align 8, !dbg !6841
  %newpath47 = getelementptr inbounds %struct.io_link, ptr %51, i32 0, i32 4, !dbg !6842
  %52 = load ptr, ptr %newpath47, align 8, !dbg !6842
  %call48 = call i64 @PTR_ERR(ptr noundef %52) #8, !dbg !6843
  %conv49 = trunc i64 %call48 to i32, !dbg !6843
  store i32 %conv49, ptr %retval, align 4, !dbg !6844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6844

if.end50:                                         ; preds = %if.end41
  %53 = load ptr, ptr %req.addr, align 8, !dbg !6845
  %flags51 = getelementptr inbounds %struct.io_kiocb, ptr %53, i32 0, i32 4, !dbg !6846
  %54 = load i32, ptr %flags51, align 4, !dbg !6847
  %or = or i32 %54, 8192, !dbg !6847
  store i32 %or, ptr %flags51, align 4, !dbg !6847
  %55 = load ptr, ptr %req.addr, align 8, !dbg !6848
  %flags52 = getelementptr inbounds %struct.io_kiocb, ptr %55, i32 0, i32 4, !dbg !6849
  %56 = load i32, ptr %flags52, align 4, !dbg !6850
  %or53 = or i32 %56, 16, !dbg !6850
  store i32 %or53, ptr %flags52, align 4, !dbg !6850
  store i32 0, ptr %retval, align 4, !dbg !6851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6851

cleanup:                                          ; preds = %if.end50, %if.then45, %if.then37, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %newf) #7, !dbg !6852
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldf) #7, !dbg !6852
  call void @llvm.lifetime.end.p0(i64 8, ptr %lnk) #7, !dbg !6852
  %57 = load i32, ptr %retval, align 4, !dbg !6852
  ret i32 %57, !dbg !6852
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6853 dso_local ptr @getname_uflags(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @io_linkat(ptr noundef %req, i32 noundef %issue_flags) #0 align 16 !dbg !6856 {
entry:
  %req.addr = alloca ptr, align 8
  %issue_flags.addr = alloca i32, align 4
  %lnk = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6858, metadata !DIExpression()), !dbg !6867
  store i32 %issue_flags, ptr %issue_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %issue_flags.addr, metadata !6859, metadata !DIExpression()), !dbg !6868
  call void @llvm.lifetime.start.p0(i64 8, ptr %lnk) #7, !dbg !6869
  call void @llvm.dbg.declare(metadata ptr %lnk, metadata !6860, metadata !DIExpression()), !dbg !6870
  call void @io_kiocb_cmd_sz_check(i64 noundef 40) #8, !dbg !6871
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6871
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6871
  store ptr %1, ptr %lnk, align 8, !dbg !6870
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6872
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6861, metadata !DIExpression()), !dbg !6873
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6874
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6862, metadata !DIExpression()), !dbg !6874
  %2 = load i32, ptr %issue_flags.addr, align 4, !dbg !6874
  %and = and i32 %2, -2147483648, !dbg !6874
  %tobool = icmp ne i32 %and, 0, !dbg !6874
  %lnot = xor i1 %tobool, true, !dbg !6874
  %lnot1 = xor i1 %lnot, true, !dbg !6874
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6874
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6874
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6875
  %tobool2 = icmp ne i32 %3, 0, !dbg !6875
  %lnot3 = xor i1 %tobool2, true, !dbg !6875
  %lnot5 = xor i1 %lnot3, true, !dbg !6875
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6875
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6875
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6875
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6875
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6874

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6875

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !6876
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6864, metadata !DIExpression()), !dbg !6876
  store i32 2307, ptr %__flags, align 4, !dbg !6876
  br label %do.body8, !dbg !6876

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6877

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6877

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6876

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6879
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 277, i32 %4, i64 12) #7, !dbg !6879, !srcloc !6881
  br label %do.cond10, !dbg !6879

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6879

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6876

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6882

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6882

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !6875
  br label %do.cond15, !dbg !6876

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6876

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6876

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6874
  %tobool17 = icmp ne i32 %5, 0, !dbg !6874
  %lnot18 = xor i1 %tobool17, true, !dbg !6874
  %lnot20 = xor i1 %lnot18, true, !dbg !6874
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6874
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6874
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6874
  store i64 %expval23, ptr %tmp, align 8, !dbg !6875
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6884
  %6 = load i64, ptr %tmp, align 8, !dbg !6874
  %7 = load ptr, ptr %lnk, align 8, !dbg !6885
  %old_dfd = getelementptr inbounds %struct.io_link, ptr %7, i32 0, i32 1, !dbg !6886
  %8 = load i32, ptr %old_dfd, align 8, !dbg !6886
  %9 = load ptr, ptr %lnk, align 8, !dbg !6887
  %oldpath = getelementptr inbounds %struct.io_link, ptr %9, i32 0, i32 3, !dbg !6888
  %10 = load ptr, ptr %oldpath, align 8, !dbg !6888
  %11 = load ptr, ptr %lnk, align 8, !dbg !6889
  %new_dfd = getelementptr inbounds %struct.io_link, ptr %11, i32 0, i32 2, !dbg !6890
  %12 = load i32, ptr %new_dfd, align 4, !dbg !6890
  %13 = load ptr, ptr %lnk, align 8, !dbg !6891
  %newpath = getelementptr inbounds %struct.io_link, ptr %13, i32 0, i32 4, !dbg !6892
  %14 = load ptr, ptr %newpath, align 8, !dbg !6892
  %15 = load ptr, ptr %lnk, align 8, !dbg !6893
  %flags = getelementptr inbounds %struct.io_link, ptr %15, i32 0, i32 5, !dbg !6894
  %16 = load i32, ptr %flags, align 8, !dbg !6894
  %call = call i32 @do_linkat(i32 noundef %8, ptr noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef %16) #8, !dbg !6895
  store i32 %call, ptr %ret, align 4, !dbg !6896
  %17 = load ptr, ptr %req.addr, align 8, !dbg !6897
  %flags24 = getelementptr inbounds %struct.io_kiocb, ptr %17, i32 0, i32 4, !dbg !6898
  %18 = load i32, ptr %flags24, align 4, !dbg !6899
  %and25 = and i32 %18, -8193, !dbg !6899
  store i32 %and25, ptr %flags24, align 4, !dbg !6899
  %19 = load ptr, ptr %req.addr, align 8, !dbg !6900
  %20 = load i32, ptr %ret, align 4, !dbg !6901
  call void @io_req_set_res(ptr noundef %19, i32 noundef %20, i32 noundef 0) #8, !dbg !6902
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6903
  call void @llvm.lifetime.end.p0(i64 8, ptr %lnk) #7, !dbg !6903
  ret i32 0, !dbg !6904
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6905 dso_local i32 @do_linkat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @io_link_cleanup(ptr noundef %req) #0 align 16 !dbg !6908 {
entry:
  %req.addr = alloca ptr, align 8
  %sl = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6910, metadata !DIExpression()), !dbg !6912
  call void @llvm.lifetime.start.p0(i64 8, ptr %sl) #7, !dbg !6913
  call void @llvm.dbg.declare(metadata ptr %sl, metadata !6911, metadata !DIExpression()), !dbg !6914
  call void @io_kiocb_cmd_sz_check(i64 noundef 40) #8, !dbg !6915
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6915
  %1 = getelementptr inbounds %struct.io_kiocb, ptr %0, i32 0, i32 0, !dbg !6915
  store ptr %1, ptr %sl, align 8, !dbg !6914
  %2 = load ptr, ptr %sl, align 8, !dbg !6916
  %oldpath = getelementptr inbounds %struct.io_link, ptr %2, i32 0, i32 3, !dbg !6917
  %3 = load ptr, ptr %oldpath, align 8, !dbg !6917
  call void @putname(ptr noundef %3) #8, !dbg !6918
  %4 = load ptr, ptr %sl, align 8, !dbg !6919
  %newpath = getelementptr inbounds %struct.io_link, ptr %4, i32 0, i32 4, !dbg !6920
  %5 = load ptr, ptr %newpath, align 8, !dbg !6920
  call void @putname(ptr noundef %5) #8, !dbg !6921
  call void @llvm.lifetime.end.p0(i64 8, ptr %sl) #7, !dbg !6922
  ret void, !dbg !6922
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6923 dso_local void @__compiletime_assert_352() #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: cmd_sz > sizeof(struct io_cmd_data)" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!6046, !6047, !6048, !6049, !6050, !6051, !6052, !6053}
!llvm.ident = !{!6054}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "io_uring/fs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31fa4b63359c05e63b0f9153cebc7aaf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF io_uring/.fs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22io_uring/fs\22 -D KBUILD_BASENAME=\22fs\22 -D KBUILD_MODNAME=\22fs\22 -D __KBUILD_MODNAME=kmod_fs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o io_uring/fs.ll io_uring/fs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !332, globals: !6045, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !18, !113, !120, !128, !144, !149, !156, !162, !167, !173, !179, !185, !192, !197, !205, !212, !221, !226, !231, !237, !241, !246, !258, !264, !274, !281, !314, !325}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !10, line: 9, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!14 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!15 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!16 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!17 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !20, file: !19, line: 147, baseType: !11, size: 32, elements: !110)
!19 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !19, line: 135, size: 512, elements: !21)
!21 = !{!22, !25, !27, !29, !33, !34, !50, !108, !109}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !20, file: !19, line: 136, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !19, line: 137, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !20, file: !19, line: 138, baseType: !28, size: 32, offset: 128)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !20, file: !19, line: 139, baseType: !30, size: 16, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !31, line: 24, baseType: !32)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !19, line: 150, baseType: !18, size: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !20, file: !19, line: 151, baseType: !35, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !19, line: 64, baseType: !37)
!37 = !DISubroutineType(types: !38)
!38 = !{!28, !39, !28, !26, !40, !46}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 61, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !43, line: 72, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !43, line: 16, baseType: !45)
!45 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !31, line: 52, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !43, line: 88, baseType: !49)
!49 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !20, file: !19, line: 152, baseType: !51, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !19, line: 117, size: 256, elements: !53)
!53 = !{!54, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !52, file: !19, line: 118, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !31, line: 174, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 172, size: 32, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !56, file: !31, line: 173, baseType: !28, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !52, file: !19, line: 119, baseType: !60, size: 192, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !61, line: 41, baseType: !62)
!61 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !61, line: 37, size: 192, elements: !63)
!63 = !{!64, !102}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !62, file: !61, line: 38, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !66, line: 29, baseType: !67)
!66 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !66, line: 17, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 18, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 18, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !70, file: !66, line: 19, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !74, line: 14, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !73, file: !74, line: 15, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !78, line: 44, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !78, line: 14, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !78, line: 15, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !78, line: 15, size: 32, elements: !83)
!83 = !{!84, !85, !95}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !78, line: 16, baseType: !55, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !78, line: 24, baseType: !86, size: 16)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !78, line: 24, size: 16, elements: !87)
!87 = !{!88, !94}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !86, file: !78, line: 25, baseType: !89, size: 8)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !90, line: 17, baseType: !91)
!90 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !92, line: 21, baseType: !93)
!92 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !86, file: !78, line: 26, baseType: !89, size: 8, offset: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !78, line: 28, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !78, line: 28, size: 32, elements: !97)
!97 = !{!98, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !96, file: !78, line: 29, baseType: !99, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !90, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !92, line: 24, baseType: !32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !96, file: !78, line: 30, baseType: !99, size: 16, offset: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !62, file: !61, line: 39, baseType: !103, size: 128, offset: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !31, line: 190, size: 128, elements: !104)
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !31, line: 191, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !31, line: 191, baseType: !106, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !20, file: !19, line: 153, baseType: !26, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !20, file: !19, line: 154, baseType: !26, size: 64, offset: 448)
!110 = !{!111, !112}
!111 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!112 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !114, line: 312, baseType: !11, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!117 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!118 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!119 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !121, line: 68, baseType: !11, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!125 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !129, line: 1325, baseType: !11, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!131 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!132 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!133 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!134 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!135 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!136 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!137 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!138 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!139 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!140 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!141 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!142 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!143 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !145, line: 32, baseType: !11, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!148 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !150, line: 15, baseType: !11, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!153 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!154 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !157, line: 26, baseType: !11, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!160 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!161 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !163, line: 2052, baseType: !11, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!164 = !{!165, !166}
!165 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!166 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !168, line: 54, baseType: !11, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "USRQUOTA", value: 0)
!171 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!172 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !174, line: 1381, baseType: !11, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!177 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!178 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !180, line: 45, baseType: !11, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!181 = !{!182, !183, !184}
!182 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!183 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!184 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !186, line: 487, baseType: !11, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!187 = !{!188, !189, !190, !191}
!188 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!189 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!190 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!191 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !193, line: 65, baseType: !11, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!194 = !{!195, !196}
!195 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!196 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !198, line: 620, baseType: !11, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!199 = !{!200, !201, !202, !203, !204}
!200 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!201 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!202 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!203 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!204 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !198, line: 597, baseType: !28, size: 32, elements: !206)
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!208 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!209 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!210 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!211 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !186, line: 547, baseType: !11, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220}
!214 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!215 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!216 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!217 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!218 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!219 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!220 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !186, line: 564, baseType: !11, size: 32, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!224 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!225 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !186, line: 577, baseType: !11, size: 32, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!229 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!230 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !186, line: 503, baseType: !11, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!234 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!235 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!236 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !174, line: 295, baseType: !11, size: 32, elements: !238)
!238 = !{!239, !240}
!239 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!240 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !174, line: 285, baseType: !11, size: 32, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!244 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!245 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !247, line: 44, baseType: !11, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257}
!249 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!250 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!251 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!252 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!253 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!254 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!255 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!256 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!257 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !259, line: 16, baseType: !11, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "TT_NONE", value: 0)
!262 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!263 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "task_work_notify_mode", file: !265, line: 16, baseType: !11, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/task_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ebc04ad3d34f218a70d101adf88369f")
!266 = !{!267, !268, !269, !270, !271, !272, !273}
!267 = !DIEnumerator(name: "TWA_NONE", value: 0)
!268 = !DIEnumerator(name: "TWA_RESUME", value: 1)
!269 = !DIEnumerator(name: "TWA_SIGNAL", value: 2)
!270 = !DIEnumerator(name: "TWA_SIGNAL_NO_IPI", value: 3)
!271 = !DIEnumerator(name: "TWA_NMI_CURRENT", value: 4)
!272 = !DIEnumerator(name: "TWA_FLAGS", value: 65280)
!273 = !DIEnumerator(name: "TWAF_NO_ALLOC", value: 256)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !275, line: 51, baseType: !11, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!276 = !{!277, !278, !279, !280}
!277 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!278 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!279 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!280 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !282, line: 427, baseType: !11, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/io_uring_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84243b3d9541de3e1162017e4d1448e5")
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!284 = !DIEnumerator(name: "REQ_F_FIXED_FILE", value: 1)
!285 = !DIEnumerator(name: "REQ_F_IO_DRAIN", value: 2)
!286 = !DIEnumerator(name: "REQ_F_LINK", value: 4)
!287 = !DIEnumerator(name: "REQ_F_HARDLINK", value: 8)
!288 = !DIEnumerator(name: "REQ_F_FORCE_ASYNC", value: 16)
!289 = !DIEnumerator(name: "REQ_F_BUFFER_SELECT", value: 32)
!290 = !DIEnumerator(name: "REQ_F_CQE_SKIP", value: 64)
!291 = !DIEnumerator(name: "REQ_F_FAIL", value: 256)
!292 = !DIEnumerator(name: "REQ_F_INFLIGHT", value: 512)
!293 = !DIEnumerator(name: "REQ_F_CUR_POS", value: 1024)
!294 = !DIEnumerator(name: "REQ_F_NOWAIT", value: 2048)
!295 = !DIEnumerator(name: "REQ_F_LINK_TIMEOUT", value: 4096)
!296 = !DIEnumerator(name: "REQ_F_NEED_CLEANUP", value: 8192)
!297 = !DIEnumerator(name: "REQ_F_POLLED", value: 16384)
!298 = !DIEnumerator(name: "REQ_F_BUFFER_SELECTED", value: 32768)
!299 = !DIEnumerator(name: "REQ_F_BUFFER_RING", value: 65536)
!300 = !DIEnumerator(name: "REQ_F_REISSUE", value: 131072)
!301 = !DIEnumerator(name: "REQ_F_SUPPORT_NOWAIT", value: 536870912)
!302 = !DIEnumerator(name: "REQ_F_ISREG", value: 1073741824)
!303 = !DIEnumerator(name: "REQ_F_CREDS", value: 262144)
!304 = !DIEnumerator(name: "REQ_F_REFCOUNT", value: 524288)
!305 = !DIEnumerator(name: "REQ_F_ARM_LTIMEOUT", value: 1048576)
!306 = !DIEnumerator(name: "REQ_F_ASYNC_DATA", value: 2097152)
!307 = !DIEnumerator(name: "REQ_F_SKIP_LINK_CQES", value: 4194304)
!308 = !DIEnumerator(name: "REQ_F_SINGLE_POLL", value: 8388608)
!309 = !DIEnumerator(name: "REQ_F_DOUBLE_POLL", value: 16777216)
!310 = !DIEnumerator(name: "REQ_F_PARTIAL_IO", value: 33554432)
!311 = !DIEnumerator(name: "REQ_F_APOLL_MULTISHOT", value: 67108864)
!312 = !DIEnumerator(name: "REQ_F_CLEAR_POLLIN", value: 134217728)
!313 = !DIEnumerator(name: "REQ_F_HASH_LOCKED", value: 268435456)
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "io_uring_cmd_flags", file: !315, line: 9, baseType: !28, size: 32, elements: !316)
!315 = !DIFile(filename: "./include/linux/io_uring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e93e7b072305b4b1ab0f621d0cec38df")
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324}
!317 = !DIEnumerator(name: "IO_URING_F_COMPLETE_DEFER", value: 1)
!318 = !DIEnumerator(name: "IO_URING_F_UNLOCKED", value: 2)
!319 = !DIEnumerator(name: "IO_URING_F_MULTISHOT", value: 4)
!320 = !DIEnumerator(name: "IO_URING_F_IOWQ", value: 8)
!321 = !DIEnumerator(name: "IO_URING_F_NONBLOCK", value: -2147483648)
!322 = !DIEnumerator(name: "IO_URING_F_SQE128", value: 256)
!323 = !DIEnumerator(name: "IO_URING_F_CQE32", value: 512)
!324 = !DIEnumerator(name: "IO_URING_F_IOPOLL", value: 1024)
!325 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !326, line: 29, baseType: !28, size: 32, elements: !327)
!326 = !DIFile(filename: "io_uring/io_uring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83ed11713af5311b3f28bbad17894f9c")
!327 = !{!328, !329, !330, !331}
!328 = !DIEnumerator(name: "IOU_OK", value: 0)
!329 = !DIEnumerator(name: "IOU_ISSUE_SKIP_COMPLETE", value: -529)
!330 = !DIEnumerator(name: "IOU_REQUEUE", value: -3072)
!331 = !DIEnumerator(name: "IOU_STOP_MULTISHOT", value: -125)
!332 = !{!333, !6012, !26, !6015, !6016, !6019, !6022, !6029, !6036, !45, !816}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_rename", file: !2, line: 18, size: 320, elements: !335)
!335 = !{!336, !5996, !5997, !5998, !6010, !6011}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !334, file: !2, line: 19, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !163, line: 994, size: 1856, align: 64, elements: !339)
!339 = !{!340, !359, !360, !362, !371, !384, !385, !386, !461, !833, !842, !5986, !5987, !5988, !5989, !5990, !5991, !5993, !5994, !5995}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !163, line: 995, baseType: !341, size: 128)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !163, line: 995, size: 128, elements: !342)
!342 = !{!343, !349, !358}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !341, file: !163, line: 996, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !345, line: 60, size: 64, elements: !346)
!345 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !345, line: 61, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !341, file: !163, line: 997, baseType: !350, size: 128, align: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !31, line: 232, size: 128, align: 64, elements: !351)
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !31, line: 233, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !350, file: !31, line: 234, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !353}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !341, file: !163, line: 998, baseType: !11, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !338, file: !163, line: 1005, baseType: !65, size: 32, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !338, file: !163, line: 1006, baseType: !361, size: 32, offset: 160)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !31, line: 156, baseType: !11)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !338, file: !163, line: 1007, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !364, line: 13, baseType: !365)
!364 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !31, line: 181, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 179, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !366, file: !31, line: 180, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !90, line: 22, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !92, line: 30, baseType: !49)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !338, file: !163, line: 1008, baseType: !372, size: 256, offset: 256)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !373, line: 66, size: 256, elements: !374)
!373 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!374 = !{!375, !376, !378, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !372, file: !373, line: 67, baseType: !363, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !372, file: !373, line: 68, baseType: !377, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !74, line: 23, baseType: !73)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !372, file: !373, line: 70, baseType: !379, size: 32, offset: 96)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !380, line: 15, size: 32, elements: !381)
!380 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !379, file: !380, line: 20, baseType: !55, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !372, file: !373, line: 72, baseType: !103, size: 128, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !338, file: !163, line: 1009, baseType: !47, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !338, file: !163, line: 1010, baseType: !11, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !338, file: !163, line: 1011, baseType: !387, size: 256, offset: 640)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !163, line: 948, size: 256, elements: !388)
!388 = !{!389, !412, !450, !451, !459, !460}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !387, file: !163, line: 949, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !391, line: 34, baseType: !392)
!391 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 25, size: 64, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !392, file: !391, line: 26, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !396, line: 27, baseType: !397)
!396 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !396, line: 13, size: 64, elements: !398)
!398 = !{!399, !411}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !396, line: 14, baseType: !400, size: 32)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !396, line: 14, size: 32, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !400, file: !396, line: 15, baseType: !55, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !396, line: 16, baseType: !404, size: 32)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !396, line: 16, size: 32, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !404, file: !396, line: 18, baseType: !89, size: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !404, file: !396, line: 19, baseType: !408, size: 24, offset: 8)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 24, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 3)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !397, file: !396, line: 26, baseType: !77, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !387, file: !163, line: 950, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !10, line: 59, size: 768, elements: !415)
!415 = !{!416, !422, !423, !424, !437, !438, !439, !440}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !414, file: !10, line: 61, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !418, line: 113, baseType: !419)
!418 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !418, line: 111, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !419, file: !418, line: 112, baseType: !55, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !414, file: !10, line: 62, baseType: !11, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !10, line: 63, baseType: !65, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !414, file: !10, line: 65, baseType: !425, size: 256, offset: 128)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 256, elements: !435)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !31, line: 194, size: 64, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !426, file: !31, line: 195, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !31, line: 198, size: 128, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !31, line: 199, baseType: !429, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !430, file: !31, line: 199, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!435 = !{!436}
!436 = !DISubrange(count: 4)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !414, file: !10, line: 66, baseType: !426, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !414, file: !10, line: 68, baseType: !60, size: 192, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !414, file: !10, line: 69, baseType: !350, size: 128, align: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !414, file: !10, line: 70, baseType: !441, offset: 768)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, elements: !448)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !10, line: 54, size: 128, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !442, file: !10, line: 55, baseType: !28, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !442, file: !10, line: 56, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !10, line: 56, flags: DIFlagFwdDecl)
!448 = !{!449}
!449 = !DISubrange(count: -1)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !387, file: !163, line: 951, baseType: !9, size: 32, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !387, file: !163, line: 952, baseType: !452, size: 32, offset: 160)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !453, line: 23, baseType: !454)
!453 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 21, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !454, file: !453, line: 22, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !31, line: 37, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !43, line: 49, baseType: !11)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !387, file: !163, line: 952, baseType: !452, size: 32, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !387, file: !163, line: 953, baseType: !28, size: 32, offset: 224)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !338, file: !163, line: 1012, baseType: !462, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !465, line: 110, size: 1472, elements: !466)
!465 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!466 = !{!467, !468, !469, !476, !477, !478, !479, !480, !481, !482, !483, !492, !493, !494, !495, !496, !497, !630, !631, !632, !633, !634, !665, !819, !820, !828}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !464, file: !465, line: 111, baseType: !363, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !464, file: !465, line: 112, baseType: !452, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !464, file: !465, line: 113, baseType: !470, size: 32, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !453, line: 28, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 26, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !471, file: !453, line: 27, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !31, line: 38, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !43, line: 50, baseType: !11)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !464, file: !465, line: 114, baseType: !452, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !464, file: !465, line: 115, baseType: !470, size: 32, offset: 160)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !464, file: !465, line: 116, baseType: !452, size: 32, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !464, file: !465, line: 117, baseType: !470, size: 32, offset: 224)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !464, file: !465, line: 118, baseType: !452, size: 32, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !464, file: !465, line: 119, baseType: !470, size: 32, offset: 288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !464, file: !465, line: 120, baseType: !11, size: 32, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !464, file: !465, line: 121, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !485, line: 24, baseType: !486)
!485 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 24, size: 64, elements: !487)
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !486, file: !485, line: 24, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !90, line: 23, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !92, line: 31, baseType: !491)
!491 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !464, file: !465, line: 122, baseType: !484, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !464, file: !465, line: 123, baseType: !484, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !464, file: !465, line: 124, baseType: !484, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !464, file: !465, line: 125, baseType: !484, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !464, file: !465, line: 127, baseType: !93, size: 8, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !464, file: !465, line: 129, baseType: !498, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !500, line: 195, size: 1728, elements: !501)
!500 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!501 = !{!502, !503, !508, !520, !529, !532, !533, !540, !541, !542, !543, !548, !549, !550, !552, !553, !594, !615}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !499, file: !500, line: 196, baseType: !417, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !499, file: !500, line: 197, baseType: !504, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !500, line: 28, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !31, line: 104, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !90, line: 20, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !92, line: 26, baseType: !28)
!508 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !500, line: 198, baseType: !509, size: 192, offset: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !500, line: 198, size: 192, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !509, file: !500, line: 199, baseType: !103, size: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !509, file: !500, line: 200, baseType: !513, size: 192, align: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !514, line: 5, size: 192, align: 64, elements: !515)
!514 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!515 = !{!516, !517, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !513, file: !514, line: 6, baseType: !45, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !513, file: !514, line: 7, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !513, file: !514, line: 8, baseType: !518, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !499, file: !500, line: 205, baseType: !521, size: 320, offset: 256)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !522, line: 48, size: 320, elements: !523)
!522 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!523 = !{!524, !525, !526, !527, !528}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !521, file: !522, line: 49, baseType: !363, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !521, file: !522, line: 55, baseType: !363, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !521, file: !522, line: 57, baseType: !379, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !521, file: !522, line: 59, baseType: !377, size: 32, offset: 160)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !521, file: !522, line: 60, baseType: !103, size: 128, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !499, file: !500, line: 206, baseType: !530, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !500, line: 206, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !499, file: !500, line: 207, baseType: !26, size: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !500, line: 208, baseType: !534, size: 64, offset: 704)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !500, line: 208, size: 64, elements: !535)
!535 = !{!536, !539}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !534, file: !500, line: 209, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !538, line: 8, baseType: !370)
!538 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !534, file: !500, line: 210, baseType: !537, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !499, file: !500, line: 212, baseType: !537, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !499, file: !500, line: 213, baseType: !452, size: 32, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !499, file: !500, line: 214, baseType: !470, size: 32, offset: 864)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !499, file: !500, line: 215, baseType: !544, size: 32, offset: 896)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !500, line: 31, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 110, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !90, line: 21, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !92, line: 27, baseType: !11)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !499, file: !500, line: 216, baseType: !32, size: 16, offset: 928)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !499, file: !500, line: 217, baseType: !32, size: 16, offset: 944)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !499, file: !500, line: 221, baseType: !551, size: 16, offset: 960)
!551 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !500, line: 228, baseType: !45, size: 64, offset: 1024)
!553 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !500, line: 245, baseType: !554, size: 320, offset: 1088)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !500, line: 245, size: 320, elements: !555)
!555 = !{!556, !585}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !554, file: !500, line: 246, baseType: !557, size: 320)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !500, line: 114, size: 320, elements: !558)
!558 = !{!559, !560, !572, !575, !584}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !557, file: !500, line: 116, baseType: !45, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !557, file: !500, line: 117, baseType: !561, size: 64, offset: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !500, line: 117, size: 64, elements: !562)
!562 = !{!563, !571}
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !500, line: 118, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !561, file: !500, line: 118, size: 64, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !564, file: !500, line: 120, baseType: !99, size: 16)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !564, file: !500, line: 121, baseType: !568, size: 48, offset: 16)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 6)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !561, file: !500, line: 127, baseType: !45, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !500, line: 129, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !500, line: 102, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !557, file: !500, line: 130, baseType: !576, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !500, line: 108, size: 192, elements: !578)
!578 = !{!579, !580, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !577, file: !500, line: 109, baseType: !350, size: 128, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !577, file: !500, line: 110, baseType: !417, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !577, file: !500, line: 111, baseType: !582, size: 8, offset: 160)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !31, line: 35, baseType: !583)
!583 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !557, file: !500, line: 131, baseType: !23, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !554, file: !500, line: 247, baseType: !586, size: 320)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !554, file: !500, line: 247, size: 320, elements: !587)
!587 = !{!588, !589, !590, !591, !592}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !586, file: !500, line: 248, baseType: !45, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !586, file: !500, line: 249, baseType: !45, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !500, line: 250, baseType: !573, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !586, file: !500, line: 251, baseType: !576, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !586, file: !500, line: 252, baseType: !593, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !500, line: 260, baseType: !595, size: 256, offset: 1408)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !500, line: 260, size: 256, elements: !596)
!596 = !{!597, !603}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !595, file: !500, line: 261, baseType: !598, size: 256)
!598 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !500, line: 134, size: 256, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !598, file: !500, line: 135, baseType: !26, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !598, file: !500, line: 136, baseType: !602, size: 256)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !435)
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !500, line: 262, baseType: !604, size: 256)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !500, line: 262, size: 256, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !604, file: !500, line: 264, baseType: !103, size: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !604, file: !500, line: 265, baseType: !608, size: 128, offset: 128)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !609, line: 22, size: 128, elements: !610)
!609 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!610 = !{!611, !614}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !608, file: !609, line: 23, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !609, line: 23, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !608, file: !609, line: 24, baseType: !45, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !499, file: !500, line: 280, baseType: !616, size: 64, offset: 1664)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !500, line: 176, size: 192, elements: !618)
!618 = !{!619, !628, !629}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !617, file: !500, line: 177, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !500, line: 171, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!28, !498, !624, !626, !498}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !617, file: !500, line: 178, baseType: !498, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !617, file: !500, line: 179, baseType: !573, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !464, file: !465, line: 130, baseType: !498, size: 64, offset: 832)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !464, file: !465, line: 131, baseType: !498, size: 64, offset: 896)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !464, file: !465, line: 132, baseType: !498, size: 64, offset: 960)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !464, file: !465, line: 135, baseType: !26, size: 64, offset: 1024)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !464, file: !465, line: 137, baseType: !635, size: 64, offset: 1088)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !637, line: 14, size: 1088, elements: !638)
!637 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!638 = !{!639, !640, !649, !650, !651, !652, !653, !654}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !636, file: !637, line: 15, baseType: !417, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !636, file: !637, line: 17, baseType: !641, size: 320, offset: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !642, line: 22, size: 320, elements: !643)
!642 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!643 = !{!644, !645, !646, !647}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !641, file: !642, line: 23, baseType: !377, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !641, file: !642, line: 24, baseType: !369, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !641, file: !642, line: 26, baseType: !103, size: 128, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !641, file: !642, line: 28, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !636, file: !637, line: 19, baseType: !45, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !636, file: !637, line: 20, baseType: !363, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !636, file: !637, line: 23, baseType: !430, size: 128, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !636, file: !637, line: 24, baseType: !452, size: 32, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !636, file: !637, line: 29, baseType: !363, size: 64, offset: 704)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !636, file: !637, line: 36, baseType: !655, size: 320, offset: 768)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !656, line: 15, size: 320, elements: !657)
!656 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!657 = !{!658, !659, !660, !661, !662, !663, !664}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !655, file: !656, line: 16, baseType: !377, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !655, file: !656, line: 18, baseType: !28, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !655, file: !656, line: 19, baseType: !28, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !655, file: !656, line: 20, baseType: !28, size: 32, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !655, file: !656, line: 21, baseType: !28, size: 32, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !655, file: !656, line: 22, baseType: !45, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !656, line: 23, baseType: !45, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !464, file: !465, line: 138, baseType: !666, size: 64, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !668, line: 68, size: 4800, elements: !669)
!668 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!669 = !{!670, !692, !693, !694, !695, !696, !697, !698, !709, !710, !711, !712, !713, !714, !726, !799, !800, !814, !817}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !667, file: !668, line: 69, baseType: !671, size: 576)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !668, line: 23, size: 576, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !671, file: !668, line: 24, baseType: !546, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !668, line: 25, baseType: !675, size: 512, offset: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !668, line: 25, size: 512, elements: !676)
!676 = !{!677, !686}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !675, file: !668, line: 26, baseType: !678, size: 480)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 480, elements: !684)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !668, line: 17, size: 96, elements: !680)
!680 = !{!681, !682, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !679, file: !668, line: 18, baseType: !546, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !679, file: !668, line: 19, baseType: !546, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !679, file: !668, line: 20, baseType: !546, size: 32, offset: 64)
!684 = !{!685}
!685 = !DISubrange(count: 5)
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !668, line: 27, baseType: !687, size: 128)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !675, file: !668, line: 27, size: 128, elements: !688)
!688 = !{!689, !691}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !687, file: !668, line: 28, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !687, file: !668, line: 29, baseType: !690, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !667, file: !668, line: 70, baseType: !671, size: 576, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !667, file: !668, line: 71, baseType: !671, size: 576, offset: 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !667, file: !668, line: 72, baseType: !666, size: 64, offset: 1728)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !667, file: !668, line: 73, baseType: !28, size: 32, offset: 1792)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !667, file: !668, line: 74, baseType: !452, size: 32, offset: 1824)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !667, file: !668, line: 75, baseType: !470, size: 32, offset: 1856)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !667, file: !668, line: 76, baseType: !699, size: 192, offset: 1920)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !700, line: 9, size: 192, elements: !701)
!700 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!701 = !{!702, !703, !707, !708}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !699, file: !700, line: 10, baseType: !363, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !699, file: !700, line: 11, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !700, line: 7, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !699, file: !700, line: 12, baseType: !11, size: 32, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !699, file: !700, line: 13, baseType: !417, size: 32, offset: 160)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !668, line: 77, baseType: !45, size: 64, offset: 2112)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !667, file: !668, line: 80, baseType: !582, size: 8, offset: 2176)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !667, file: !668, line: 88, baseType: !103, size: 128, offset: 2240)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !667, file: !668, line: 89, baseType: !498, size: 64, offset: 2368)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !667, file: !668, line: 90, baseType: !521, size: 320, offset: 2432)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !667, file: !668, line: 97, baseType: !715, size: 256, offset: 2752)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !716, line: 98, size: 256, elements: !717)
!716 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !715, file: !716, line: 99, baseType: !363, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !715, file: !716, line: 100, baseType: !103, size: 128, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !715, file: !716, line: 101, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !716, line: 21, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !667, file: !668, line: 99, baseType: !727, size: 768, offset: 3008)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !19, line: 199, size: 768, elements: !728)
!728 = !{!729, !734}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !727, file: !19, line: 200, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!28, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !727, file: !19, line: 201, baseType: !735, size: 704, offset: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !19, line: 193, size: 704, elements: !736)
!736 = !{!737, !795}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !735, file: !19, line: 195, baseType: !738, size: 640)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !19, line: 173, size: 640, elements: !739)
!739 = !{!740, !752, !764, !765, !785, !786, !788, !794}
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !19, line: 174, baseType: !741, size: 192)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !19, line: 174, size: 192, elements: !742)
!742 = !{!743, !751}
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !19, line: 175, baseType: !744, size: 192)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !19, line: 175, size: 192, elements: !745)
!745 = !{!746, !747, !748, !749, !750}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !744, file: !19, line: 176, baseType: !39, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !744, file: !19, line: 177, baseType: !28, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !744, file: !19, line: 178, baseType: !28, size: 32, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !19, line: 179, baseType: !28, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !744, file: !19, line: 180, baseType: !28, size: 32, offset: 160)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !741, file: !19, line: 182, baseType: !350, size: 128, align: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !738, file: !19, line: 184, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !755, line: 26, size: 256, elements: !756)
!755 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !754, file: !755, line: 27, baseType: !11, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !754, file: !755, line: 28, baseType: !759, size: 192, offset: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !760, line: 43, size: 192, elements: !761)
!760 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !759, file: !760, line: 44, baseType: !377, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !759, file: !760, line: 45, baseType: !103, size: 128, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !738, file: !19, line: 185, baseType: !39, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !738, file: !19, line: 186, baseType: !766, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !19, line: 204, size: 960, elements: !768)
!768 = !{!769, !770, !774, !781}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !767, file: !19, line: 205, baseType: !727, size: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !767, file: !19, line: 206, baseType: !771, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!733, !766}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !767, file: !19, line: 207, baseType: !775, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !767, file: !19, line: 209, baseType: !782, size: 64, offset: 896)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!28, !778, !39}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !738, file: !19, line: 187, baseType: !733, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !738, file: !19, line: 188, baseType: !787, size: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !19, line: 189, baseType: !789, size: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !19, line: 157, size: 256, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !790, file: !19, line: 158, baseType: !513, size: 192, align: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !790, file: !19, line: 159, baseType: !778, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !738, file: !19, line: 190, baseType: !426, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !735, file: !19, line: 196, baseType: !796, size: 64, offset: 640)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !514, line: 12, size: 64, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !796, file: !514, line: 13, baseType: !518, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !667, file: !668, line: 100, baseType: !778, size: 64, offset: 3776)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !667, file: !668, line: 102, baseType: !801, size: 64, offset: 3840)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !668, line: 107, size: 1152, elements: !803)
!803 = !{!804, !805, !806, !807, !808, !812}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !802, file: !668, line: 108, baseType: !430, size: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !802, file: !668, line: 109, baseType: !666, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !802, file: !668, line: 110, baseType: !452, size: 32, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !802, file: !668, line: 111, baseType: !55, size: 32, offset: 224)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !802, file: !668, line: 112, baseType: !809, size: 640, offset: 256)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 640, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 10)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !802, file: !668, line: 113, baseType: !813, size: 256, offset: 896)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !435)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !667, file: !668, line: 103, baseType: !815, size: 640, offset: 3904)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 640, elements: !810)
!816 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !667, file: !668, line: 104, baseType: !818, size: 256, offset: 4544)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 256, elements: !435)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !464, file: !465, line: 139, baseType: !801, size: 64, offset: 1216)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !464, file: !465, line: 140, baseType: !821, size: 64, offset: 1280)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !465, line: 25, size: 64, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !822, file: !465, line: 26, baseType: !55, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !822, file: !465, line: 27, baseType: !28, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !822, file: !465, line: 28, baseType: !827, offset: 64)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, elements: !448)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !465, line: 142, baseType: !829, size: 128, offset: 1344)
!829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !465, line: 142, size: 128, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !829, file: !465, line: 143, baseType: !28, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !829, file: !465, line: 144, baseType: !350, size: 128, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !338, file: !163, line: 1013, baseType: !834, size: 256, offset: 960)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !163, line: 970, size: 256, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !834, file: !163, line: 971, baseType: !45, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !834, file: !163, line: 972, baseType: !11, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !834, file: !163, line: 973, baseType: !11, size: 32, offset: 96)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !834, file: !163, line: 974, baseType: !11, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !834, file: !163, line: 975, baseType: !11, size: 32, offset: 160)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !834, file: !163, line: 976, baseType: !47, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !338, file: !163, line: 1014, baseType: !843, size: 128, offset: 1216)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !844, line: 8, size: 128, elements: !845)
!844 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!845 = !{!846, !5985}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !843, file: !844, line: 9, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !849, line: 70, size: 256, elements: !850)
!849 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!850 = !{!851, !5982, !5983, !5984}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !848, file: !849, line: 71, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !854, line: 82, size: 1536, elements: !855)
!854 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!855 = !{!856, !857, !867, !875, !876, !891, !5949, !5951, !5964, !5965, !5966, !5967, !5968, !5974, !5975, !5976}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !853, file: !854, line: 84, baseType: !11, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !853, file: !854, line: 85, baseType: !858, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !859, line: 275, baseType: !860)
!859 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !859, line: 275, size: 32, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !860, file: !859, line: 275, baseType: !863, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !859, line: 69, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !859, line: 64, size: 32, elements: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !864, file: !859, line: 65, baseType: !11, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !853, file: !854, line: 86, baseType: !868, size: 128, offset: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !869, line: 38, size: 128, elements: !870)
!869 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!870 = !{!871, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !869, line: 39, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !868, file: !869, line: 39, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !853, file: !854, line: 87, baseType: !852, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !853, file: !854, line: 88, baseType: !877, size: 128, offset: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !854, line: 49, size: 128, elements: !878)
!878 = !{!879, !888}
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !854, line: 50, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !854, line: 50, size: 64, elements: !881)
!881 = !{!882, !887}
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !854, line: 51, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !880, file: !854, line: 51, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !883, file: !854, line: 52, baseType: !546, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !883, file: !854, line: 52, baseType: !546, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !880, file: !854, line: 54, baseType: !489, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !877, file: !854, line: 56, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !853, file: !854, line: 89, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !163, line: 641, size: 4800, elements: !894)
!894 = !{!895, !896, !897, !898, !899, !900, !901, !904, !905, !1099, !5750, !5751, !5752, !5753, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5931, !5934, !5935, !5936, !5945, !5946, !5947, !5948}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !893, file: !163, line: 642, baseType: !30, size: 16)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !893, file: !163, line: 643, baseType: !32, size: 16, offset: 16)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !893, file: !163, line: 644, baseType: !452, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !893, file: !163, line: 645, baseType: !103, size: 128, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !893, file: !163, line: 646, baseType: !470, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !893, file: !163, line: 647, baseType: !11, size: 32, offset: 224)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !893, file: !163, line: 650, baseType: !902, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !163, line: 607, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !893, file: !163, line: 651, baseType: !902, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !893, file: !163, line: 654, baseType: !906, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !163, line: 1966, size: 2048, align: 512, elements: !909)
!909 = !{!910, !914, !927, !933, !937, !941, !945, !949, !953, !957, !961, !962, !968, !972, !1009, !1040, !1047, !1053, !1057, !1061, !1065, !1069, !1073, !1079, !1083}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !908, file: !163, line: 1967, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!852, !892, !852, !11}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !908, file: !163, line: 1968, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!23, !852, !892, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !920, line: 10, size: 128, elements: !921)
!920 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!921 = !{!922, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !919, file: !920, line: 11, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !26}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !919, file: !920, line: 12, baseType: !26, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !908, file: !163, line: 1969, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!28, !931, !892, !28}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !485, line: 42, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !908, file: !163, line: 1970, baseType: !934, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!902, !892, !28, !582}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !908, file: !163, line: 1972, baseType: !938, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!28, !852, !593, !28}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !908, file: !163, line: 1974, baseType: !942, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!28, !931, !892, !852, !30, !582}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !908, file: !163, line: 1976, baseType: !946, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!28, !852, !892, !852}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !908, file: !163, line: 1977, baseType: !950, size: 64, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!28, !892, !852}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !908, file: !163, line: 1978, baseType: !954, size: 64, offset: 512)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!28, !931, !892, !852, !23}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !908, file: !163, line: 1980, baseType: !958, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!28, !931, !892, !852, !30}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !908, file: !163, line: 1982, baseType: !950, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !908, file: !163, line: 1983, baseType: !963, size: 64, offset: 704)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!28, !931, !892, !852, !30, !966}
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !31, line: 21, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !31, line: 18, baseType: !546)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !908, file: !163, line: 1985, baseType: !969, size: 64, offset: 768)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!28, !931, !892, !852, !892, !852, !11}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !908, file: !163, line: 1987, baseType: !973, size: 64, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!28, !931, !852, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !163, line: 226, size: 640, elements: !978)
!978 = !{!979, !980, !981, !991, !1000, !1001, !1006, !1007, !1008}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !977, file: !163, line: 227, baseType: !11, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !977, file: !163, line: 228, baseType: !30, size: 16, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !163, line: 241, baseType: !982, size: 32, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !163, line: 241, size: 32, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !982, file: !163, line: 242, baseType: !452, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !982, file: !163, line: 243, baseType: !986, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !987, line: 16, baseType: !988)
!987 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 14, size: 32, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !988, file: !987, line: 15, baseType: !457, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !163, line: 245, baseType: !992, size: 32, offset: 96)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !163, line: 245, size: 32, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !992, file: !163, line: 246, baseType: !470, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !992, file: !163, line: 247, baseType: !996, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !987, line: 20, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 18, size: 32, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !997, file: !987, line: 19, baseType: !474, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !977, file: !163, line: 249, baseType: !47, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !977, file: !163, line: 250, baseType: !1002, size: 128, offset: 192)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !538, line: 13, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1002, file: !538, line: 14, baseType: !537, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1002, file: !538, line: 15, baseType: !816, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !977, file: !163, line: 251, baseType: !1002, size: 128, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !977, file: !163, line: 252, baseType: !1002, size: 128, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !977, file: !163, line: 259, baseType: !337, size: 64, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !908, file: !163, line: 1988, baseType: !1010, size: 64, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!28, !931, !1013, !1015, !546, !11}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1017, line: 22, size: 1280, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1016, file: !1017, line: 23, baseType: !546, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1016, file: !1017, line: 24, baseType: !30, size: 16, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1016, file: !1017, line: 25, baseType: !11, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1016, file: !1017, line: 26, baseType: !545, size: 32, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1016, file: !1017, line: 27, baseType: !489, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1016, file: !1017, line: 28, baseType: !489, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1016, file: !1017, line: 41, baseType: !489, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1016, file: !1017, line: 42, baseType: !966, size: 32, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1016, file: !1017, line: 43, baseType: !966, size: 32, offset: 352)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1016, file: !1017, line: 44, baseType: !452, size: 32, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1016, file: !1017, line: 45, baseType: !470, size: 32, offset: 416)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1016, file: !1017, line: 46, baseType: !47, size: 64, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1016, file: !1017, line: 47, baseType: !1002, size: 128, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1016, file: !1017, line: 48, baseType: !1002, size: 128, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1016, file: !1017, line: 49, baseType: !1002, size: 128, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1016, file: !1017, line: 50, baseType: !1002, size: 128, offset: 896)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1016, file: !1017, line: 51, baseType: !489, size: 64, offset: 1024)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1016, file: !1017, line: 52, baseType: !489, size: 64, offset: 1088)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1016, file: !1017, line: 53, baseType: !546, size: 32, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1016, file: !1017, line: 54, baseType: !546, size: 32, offset: 1184)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1016, file: !1017, line: 55, baseType: !489, size: 64, offset: 1216)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !908, file: !163, line: 1990, baseType: !1041, size: 64, offset: 960)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!1044, !852, !593, !41}
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !31, line: 66, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !43, line: 73, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !43, line: 15, baseType: !816)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !908, file: !163, line: 1991, baseType: !1048, size: 64, offset: 1024)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!28, !892, !1051, !489, !489}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !163, line: 55, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !908, file: !163, line: 1993, baseType: !1054, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!28, !892, !28}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !908, file: !163, line: 1994, baseType: !1058, size: 64, offset: 1152)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!28, !892, !852, !337, !11, !30}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !908, file: !163, line: 1997, baseType: !1062, size: 64, offset: 1216)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!28, !931, !892, !337, !30}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !908, file: !163, line: 1999, baseType: !1066, size: 64, offset: 1280)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!902, !931, !852, !28}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !908, file: !163, line: 2001, baseType: !1070, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!28, !931, !852, !902, !28}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !908, file: !163, line: 2003, baseType: !1074, size: 64, offset: 1408)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!28, !931, !852, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !163, line: 76, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !908, file: !163, line: 2005, baseType: !1080, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!28, !852, !1077}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !908, file: !163, line: 2006, baseType: !1084, size: 64, offset: 1536)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1087, !892}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !163, line: 3192, size: 192, elements: !1089)
!1089 = !{!1090, !1098}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1088, file: !163, line: 3193, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1092, line: 296, size: 128, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1093 = !{!1094, !1095, !1097}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1091, file: !1092, line: 297, baseType: !65, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1091, file: !1092, line: 299, baseType: !1096, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !31, line: 154, baseType: !11)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1091, file: !1092, line: 300, baseType: !26, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1088, file: !163, line: 3194, baseType: !546, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !893, file: !163, line: 655, baseType: !1100, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !163, line: 1190, size: 10752, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !2533, !2665, !2705, !2788, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2805, !2809, !2810, !3698, !3704, !3705, !3708, !3709, !3710, !3751, !5626, !5627, !5628, !5629, !5630, !5631, !5634, !5635, !5642, !5643, !5644, !5645, !5704, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1101, file: !163, line: 1191, baseType: !103, size: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1101, file: !163, line: 1192, baseType: !966, size: 32, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1101, file: !163, line: 1193, baseType: !93, size: 8, offset: 160)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1101, file: !163, line: 1194, baseType: !45, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1101, file: !163, line: 1195, baseType: !47, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1101, file: !163, line: 1196, baseType: !1109, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !163, line: 2366, size: 576, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1120, !1124, !1128, !1132, !2521, !2522, !2523, !2525, !2526, !2527, !2529, !2530, !2531, !2532}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1110, file: !163, line: 2367, baseType: !23, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1110, file: !163, line: 2368, baseType: !28, size: 32, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1110, file: !163, line: 2376, baseType: !1115, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!28, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !849, line: 21, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1110, file: !163, line: 2377, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !163, line: 75, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1110, file: !163, line: 2378, baseType: !1125, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!852, !1109, !28, !23, !26}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1110, file: !163, line: 2380, baseType: !1129, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1100}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1110, file: !163, line: 2381, baseType: !1133, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !114, line: 402, size: 9216, align: 512, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1142, !2173, !2199, !2200, !2201, !2202, !2206, !2209, !2210, !2211, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2279, !2283, !2303, !2321, !2322, !2323, !2324, !2333, !2356, !2357, !2360, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2374, !2375, !2474, !2482, !2483, !2484, !2486, !2490, !2491, !2500, !2501, !2502, !2503, !2505, !2506, !2507, !2514, !2515, !2516, !2520}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1134, file: !114, line: 403, baseType: !113, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1134, file: !114, line: 406, baseType: !103, size: 128, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1134, file: !114, line: 409, baseType: !1139, size: 448, offset: 192)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 56)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1134, file: !114, line: 417, baseType: !1143, size: 768, offset: 640)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !114, line: 45, size: 768, elements: !1144)
!1144 = !{!1145, !2167, !2168, !2169, !2172}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1143, file: !114, line: 46, baseType: !1146, size: 512)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1147, line: 64, size: 512, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1148 = !{!1149, !1150, !1151, !1153, !1197, !2023, !2157, !2162, !2163, !2164, !2165, !2166}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1146, file: !1147, line: 65, baseType: !23, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1146, file: !1147, line: 66, baseType: !103, size: 128, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1146, file: !1147, line: 67, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1146, file: !1147, line: 68, baseType: !1154, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1147, line: 168, size: 768, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1155, file: !1147, line: 169, baseType: !103, size: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1155, file: !1147, line: 170, baseType: !65, size: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1155, file: !1147, line: 171, baseType: !1146, size: 512, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1155, file: !1147, line: 172, baseType: !1161, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1147, line: 133, size: 192, elements: !1164)
!1164 = !{!1165, !1172, !1177}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1163, file: !1147, line: 134, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!28, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1163, file: !1147, line: 135, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!23, !1170}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1163, file: !1147, line: 136, baseType: !1178, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!28, !1170, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1147, line: 125, size: 20736, elements: !1184)
!1184 = !{!1185, !1187, !1191, !1192, !1196}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1183, file: !1147, line: 126, baseType: !1186, size: 192)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 192, elements: !409)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1183, file: !1147, line: 127, baseType: !1188, size: 4096, offset: 192)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 4096, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1183, file: !1147, line: 128, baseType: !28, size: 32, offset: 4288)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1183, file: !1147, line: 129, baseType: !1193, size: 16384, offset: 4320)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 2048)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1183, file: !1147, line: 130, baseType: !28, size: 32, offset: 20704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1146, file: !1147, line: 69, baseType: !1198, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1147, line: 116, size: 384, elements: !1201)
!1201 = !{!1202, !1206, !1225, !1987, !2015, !2019}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1200, file: !1147, line: 117, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1152}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1200, file: !1147, line: 118, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1210, line: 254, size: 128, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1211 = !{!1212, !1221}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1209, file: !1210, line: 255, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!1044, !1152, !1216, !593}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1210, line: 30, size: 128, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1217, file: !1210, line: 31, baseType: !23, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1217, file: !1210, line: 32, baseType: !30, size: 16, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1209, file: !1210, line: 256, baseType: !1222, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1044, !1152, !1216, !23, !41}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1200, file: !1147, line: 119, baseType: !1226, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1210, line: 84, size: 320, elements: !1230)
!1230 = !{!1231, !1232, !1236, !1983, !1985}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1229, file: !1210, line: 85, baseType: !23, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1229, file: !1210, line: 86, baseType: !1233, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!30, !1152, !1216, !28}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1229, file: !1210, line: 88, baseType: !1237, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!30, !1152, !1240, !28}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1210, line: 175, size: 512, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1974, !1978, !1979}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1241, file: !1210, line: 176, baseType: !1217, size: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1241, file: !1210, line: 177, baseType: !41, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1241, file: !1210, line: 178, baseType: !26, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1241, file: !1210, line: 179, baseType: !1247, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !163, line: 472, size: 1536, align: 64, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1263, !1264, !1265, !1966, !1967, !1968, !1971, !1972, !1973}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1251, file: !163, line: 473, baseType: !892, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1251, file: !163, line: 474, baseType: !1091, size: 128, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1251, file: !163, line: 475, baseType: !521, size: 320, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1251, file: !163, line: 476, baseType: !1096, size: 32, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1251, file: !163, line: 477, baseType: !55, size: 32, offset: 544)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1251, file: !163, line: 482, baseType: !1259, size: 128, offset: 576)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !514, line: 26, size: 128, elements: !1260)
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1259, file: !514, line: 27, baseType: !796, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1259, file: !514, line: 28, baseType: !518, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1251, file: !163, line: 483, baseType: !45, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1251, file: !163, line: 484, baseType: !45, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1251, file: !163, line: 485, baseType: !1266, size: 64, offset: 832)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !163, line: 404, size: 1280, elements: !1269)
!1269 = !{!1270, !1736, !1806, !1810, !1814, !1820, !1826, !1830, !1835, !1839, !1843, !1847, !1930, !1934, !1938, !1942, !1947, !1951, !1958, !1962}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1268, file: !163, line: 405, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!28, !1274, !1716}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !129, line: 74, size: 512, align: 128, elements: !1276)
!1276 = !{!1277, !1278, !1710, !1715}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1275, file: !129, line: 75, baseType: !45, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !129, line: 83, baseType: !1279, size: 320, offset: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !129, line: 83, size: 320, elements: !1280)
!1280 = !{!1281, !1302, !1316, !1320, !1709}
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !129, line: 84, baseType: !1282, size: 320)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !129, line: 84, size: 320, elements: !1283)
!1283 = !{!1284, !1295, !1296, !1301}
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !129, line: 90, baseType: !1285, size: 128)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !129, line: 90, size: 128, elements: !1286)
!1286 = !{!1287, !1288, !1293, !1294}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1285, file: !129, line: 91, baseType: !103, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !129, line: 94, baseType: !1289, size: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1285, file: !129, line: 94, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1289, file: !129, line: 96, baseType: !26, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1289, file: !129, line: 98, baseType: !11, size: 32, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1285, file: !129, line: 102, baseType: !103, size: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1285, file: !129, line: 103, baseType: !103, size: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1282, file: !129, line: 106, baseType: !1250, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !129, line: 107, baseType: !1297, size: 64, offset: 192)
!1297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !129, line: 107, size: 64, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1297, file: !129, line: 108, baseType: !45, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1297, file: !129, line: 109, baseType: !45, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1282, file: !129, line: 117, baseType: !45, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !129, line: 119, baseType: !1303, size: 320)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !129, line: 119, size: 320, elements: !1304)
!1304 = !{!1305, !1306, !1309, !1310, !1311}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1303, file: !129, line: 124, baseType: !45, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1303, file: !129, line: 125, baseType: !1307, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !129, line: 125, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1303, file: !129, line: 126, baseType: !45, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1303, file: !129, line: 127, baseType: !45, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !129, line: 128, baseType: !1312, size: 64, offset: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1303, file: !129, line: 128, size: 64, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1312, file: !129, line: 133, baseType: !45, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1312, file: !129, line: 138, baseType: !363, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !129, line: 141, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !129, line: 141, size: 64, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1317, file: !129, line: 142, baseType: !45, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !129, line: 144, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !129, line: 144, size: 128, elements: !1322)
!1322 = !{!1323, !1708}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1321, file: !129, line: 146, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !121, line: 126, size: 1216, elements: !1326)
!1326 = !{!1327, !1337, !1358, !1359, !1360, !1361, !1362, !1690, !1691, !1692}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1325, file: !121, line: 127, baseType: !1328, size: 384)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !121, line: 21, size: 384, elements: !1329)
!1329 = !{!1330, !1331, !1333, !1334, !1335, !1336}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1328, file: !121, line: 22, baseType: !45, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1328, file: !121, line: 23, baseType: !1332, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1328, file: !121, line: 24, baseType: !1332, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1328, file: !121, line: 25, baseType: !45, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1328, file: !121, line: 26, baseType: !45, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1328, file: !121, line: 27, baseType: !45, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1325, file: !121, line: 128, baseType: !1338, size: 128, offset: 384)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1339, line: 105, size: 128, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1338, file: !1339, line: 110, baseType: !45, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1338, file: !1339, line: 118, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1339, line: 95, size: 448, elements: !1345)
!1345 = !{!1346, !1347, !1353, !1354, !1355, !1356, !1357}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1344, file: !1339, line: 96, baseType: !363, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1344, file: !1339, line: 97, baseType: !1348, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1339, line: 60, baseType: !1350)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1344, file: !1339, line: 98, baseType: !1348, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1344, file: !1339, line: 99, baseType: !582, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1344, file: !1339, line: 100, baseType: !582, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1344, file: !1339, line: 101, baseType: !350, size: 128, align: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1344, file: !1339, line: 102, baseType: !1352, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1325, file: !121, line: 129, baseType: !754, size: 256, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1325, file: !121, line: 130, baseType: !120, size: 32, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1325, file: !121, line: 131, baseType: !11, size: 32, offset: 800)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1325, file: !121, line: 132, baseType: !45, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1325, file: !121, line: 133, baseType: !1363, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !121, line: 77, size: 192, elements: !1366)
!1366 = !{!1367, !1371, !1686}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1365, file: !121, line: 83, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1274}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1365, file: !121, line: 89, baseType: !1372, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !129, line: 1184, baseType: !11)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1378, line: 512, size: 896, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1379 = !{!1380, !1653, !1654, !1661, !1668, !1678, !1679, !1680, !1682, !1684}
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !1378, line: 513, baseType: !1381, size: 320)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !1378, line: 513, size: 320, elements: !1382)
!1382 = !{!1383, !1649, !1650, !1651, !1652}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1381, file: !1378, line: 514, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !129, line: 625, size: 1344, elements: !1386)
!1386 = !{!1387, !1396, !1554, !1560, !1567, !1568, !1573, !1574, !1579, !1580, !1583, !1642, !1643, !1644, !1645, !1646, !1647}
!1387 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !129, line: 628, baseType: !1388, size: 128)
!1388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !129, line: 628, size: 128, elements: !1389)
!1389 = !{!1390, !1395}
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !129, line: 629, baseType: !1391, size: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1388, file: !129, line: 629, size: 128, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1391, file: !129, line: 631, baseType: !45, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1391, file: !129, line: 632, baseType: !45, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1388, file: !129, line: 635, baseType: !350, size: 128, align: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1385, file: !129, line: 639, baseType: !1397, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !129, line: 733, size: 10240, elements: !1399)
!1399 = !{!1400, !1552}
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !129, line: 734, baseType: !1401, size: 10240)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !129, line: 734, size: 10240, elements: !1402)
!1402 = !{!1403, !1407, !1421, !1425, !1426, !1427, !1428, !1429, !1430, !1439, !1440, !1441, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1480, !1482, !1485, !1532, !1533, !1534, !1537, !1538, !1539, !1542, !1543, !1544, !1550, !1551}
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !129, line: 739, baseType: !1404, size: 512, align: 512)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !129, line: 739, size: 512, align: 512, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1404, file: !129, line: 747, baseType: !55, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1401, file: !129, line: 750, baseType: !1408, size: 128, offset: 512)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1409, line: 218, size: 128, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1410 = !{!1411, !1419, !1420}
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 219, baseType: !1412, size: 32)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 219, size: 32, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1412, file: !1409, line: 220, baseType: !65, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1412, file: !1409, line: 221, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1409, line: 197, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1409, line: 197, elements: !1418)
!1418 = !{}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1408, file: !1409, line: 223, baseType: !11, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1408, file: !1409, line: 224, baseType: !26, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1401, file: !129, line: 752, baseType: !1422, size: 64, offset: 640)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!45, !337, !45, !45, !45, !45}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1401, file: !129, line: 756, baseType: !45, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1401, file: !129, line: 757, baseType: !45, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1401, file: !129, line: 760, baseType: !45, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1401, file: !129, line: 761, baseType: !45, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1401, file: !129, line: 763, baseType: !45, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1401, file: !129, line: 764, baseType: !1431, size: 64, offset: 1024)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1433, line: 299, baseType: !1434)
!1433 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1433, line: 299, size: 64, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1434, file: !1433, line: 299, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1438, line: 18, baseType: !45)
!1438 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1401, file: !129, line: 773, baseType: !55, size: 32, offset: 1088)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1401, file: !129, line: 785, baseType: !55, size: 32, offset: 1120)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1401, file: !129, line: 795, baseType: !1442, size: 64, offset: 1152)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !129, line: 726, size: 128, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1443, file: !129, line: 727, baseType: !489, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1443, file: !129, line: 728, baseType: !28, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1401, file: !129, line: 801, baseType: !45, size: 64, offset: 1216)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1401, file: !129, line: 804, baseType: !363, size: 64, offset: 1280)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1401, file: !129, line: 806, baseType: !28, size: 32, offset: 1344)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1401, file: !129, line: 808, baseType: !65, size: 32, offset: 1376)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1401, file: !129, line: 823, baseType: !521, size: 320, offset: 1408)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1401, file: !129, line: 825, baseType: !103, size: 128, offset: 1728)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1401, file: !129, line: 845, baseType: !28, size: 32, offset: 1856)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1401, file: !129, line: 849, baseType: !45, size: 64, offset: 1920)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1401, file: !129, line: 850, baseType: !45, size: 64, offset: 1984)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1401, file: !129, line: 852, baseType: !45, size: 64, offset: 2048)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1401, file: !129, line: 853, baseType: !45, size: 64, offset: 2112)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1401, file: !129, line: 854, baseType: !365, size: 64, offset: 2176)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1401, file: !129, line: 855, baseType: !45, size: 64, offset: 2240)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1401, file: !129, line: 856, baseType: !45, size: 64, offset: 2304)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1401, file: !129, line: 857, baseType: !45, size: 64, offset: 2368)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1401, file: !129, line: 858, baseType: !45, size: 64, offset: 2432)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1401, file: !129, line: 865, baseType: !863, size: 32, offset: 2496)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1401, file: !129, line: 867, baseType: !65, size: 32, offset: 2528)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1401, file: !129, line: 869, baseType: !45, size: 64, offset: 2560)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1401, file: !129, line: 869, baseType: !45, size: 64, offset: 2624)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1401, file: !129, line: 869, baseType: !45, size: 64, offset: 2688)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1401, file: !129, line: 869, baseType: !45, size: 64, offset: 2752)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1401, file: !129, line: 870, baseType: !45, size: 64, offset: 2816)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1401, file: !129, line: 870, baseType: !45, size: 64, offset: 2880)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1401, file: !129, line: 870, baseType: !45, size: 64, offset: 2944)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1401, file: !129, line: 871, baseType: !45, size: 64, offset: 3008)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1401, file: !129, line: 871, baseType: !45, size: 64, offset: 3072)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1401, file: !129, line: 871, baseType: !45, size: 64, offset: 3136)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1401, file: !129, line: 871, baseType: !45, size: 64, offset: 3200)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1401, file: !129, line: 873, baseType: !1477, size: 3328, offset: 3264)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3328, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 52)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1401, file: !129, line: 875, baseType: !1481, size: 1280, offset: 6592)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 1280, elements: !435)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1401, file: !129, line: 877, baseType: !1483, size: 64, offset: 7872)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !129, line: 877, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1401, file: !129, line: 880, baseType: !1486, size: 1088, offset: 7936)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1487, line: 72, baseType: !1488)
!1487 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1487, line: 23, size: 1088, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1497, !1498, !1499, !1500, !1527, !1528, !1529}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1488, file: !1487, line: 28, baseType: !489, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1488, file: !1487, line: 38, baseType: !365, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1488, file: !1487, line: 40, baseType: !45, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1488, file: !1487, line: 43, baseType: !521, size: 320, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1488, file: !1487, line: 44, baseType: !1495, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1487, line: 44, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1488, file: !1487, line: 48, baseType: !45, size: 64, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !1487, line: 59, baseType: !372, size: 256, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1488, file: !1487, line: 60, baseType: !26, size: 64, offset: 896)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1488, file: !1487, line: 61, baseType: !1501, size: 64, offset: 960)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1504, line: 13, size: 1216, elements: !1505)
!1504 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1503, file: !1504, line: 14, baseType: !26, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1503, file: !1504, line: 15, baseType: !45, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1503, file: !1504, line: 17, baseType: !45, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1503, file: !1504, line: 17, baseType: !45, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1503, file: !1504, line: 18, baseType: !45, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1503, file: !1504, line: 18, baseType: !45, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1503, file: !1504, line: 19, baseType: !1513, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1503, file: !1504, line: 21, baseType: !816, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1503, file: !1504, line: 23, baseType: !816, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1503, file: !1504, line: 24, baseType: !816, size: 64, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1503, file: !1504, line: 25, baseType: !816, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1503, file: !1504, line: 26, baseType: !816, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1503, file: !1504, line: 27, baseType: !816, size: 64, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1503, file: !1504, line: 28, baseType: !816, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1503, file: !1504, line: 29, baseType: !816, size: 64, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1503, file: !1504, line: 30, baseType: !816, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1503, file: !1504, line: 31, baseType: !816, size: 64, offset: 1024)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1503, file: !1504, line: 32, baseType: !816, size: 64, offset: 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1503, file: !1504, line: 33, baseType: !816, size: 64, offset: 1152)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1488, file: !1487, line: 63, baseType: !55, size: 32, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1488, file: !1487, line: 69, baseType: !99, size: 16, offset: 1056)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1488, file: !1487, line: 70, baseType: !1530, size: 16, offset: 1072)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !90, line: 18, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !92, line: 23, baseType: !551)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !129, line: 882, baseType: !45, size: 64, offset: 9024)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1401, file: !129, line: 885, baseType: !65, size: 32, offset: 9088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1401, file: !129, line: 886, baseType: !1535, size: 64, offset: 9152)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !129, line: 732, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1401, file: !129, line: 901, baseType: !666, size: 64, offset: 9216)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1401, file: !129, line: 904, baseType: !337, size: 64, offset: 9280)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1401, file: !129, line: 906, baseType: !1540, size: 64, offset: 9344)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !129, line: 906, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1401, file: !129, line: 930, baseType: !55, size: 32, offset: 9408)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1401, file: !129, line: 933, baseType: !55, size: 32, offset: 9440)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1401, file: !129, line: 935, baseType: !1545, size: 64, offset: 9472)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !275, line: 103, size: 64, elements: !1546)
!1546 = !{!1547}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1545, file: !275, line: 104, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !275, line: 101, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1401, file: !129, line: 940, baseType: !363, size: 64, offset: 9536)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1401, file: !129, line: 942, baseType: !715, size: 256, offset: 9600)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1398, file: !129, line: 986, baseType: !1553, offset: 10240)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, elements: !448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1385, file: !129, line: 640, baseType: !1555, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1433, line: 297, baseType: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1433, line: 297, size: 64, elements: !1557)
!1557 = !{!1558}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1556, file: !1433, line: 297, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1438, line: 19, baseType: !45)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !129, line: 646, baseType: !1561, size: 64, offset: 256)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !129, line: 646, size: 64, elements: !1562)
!1562 = !{!1563, !1566}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1561, file: !129, line: 647, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !129, line: 542, baseType: !45)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1561, file: !129, line: 648, baseType: !1565, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1385, file: !129, line: 666, baseType: !28, size: 32, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1385, file: !129, line: 667, baseType: !1569, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !129, line: 579, size: 320, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1570, file: !129, line: 580, baseType: !521, size: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1385, file: !129, line: 670, baseType: !582, size: 8, offset: 448)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1385, file: !129, line: 681, baseType: !1575, size: 256, offset: 512)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !129, line: 678, size: 256, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1575, file: !129, line: 679, baseType: !513, size: 192, align: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1575, file: !129, line: 680, baseType: !45, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1385, file: !129, line: 689, baseType: !103, size: 128, offset: 768)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1385, file: !129, line: 691, baseType: !1581, size: 64, offset: 896)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !129, line: 691, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1385, file: !129, line: 694, baseType: !1584, size: 64, offset: 960)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1378, line: 563, size: 1024, elements: !1587)
!1587 = !{!1588, !1592, !1593, !1597, !1601, !1605, !1606, !1610, !1614, !1618, !1619, !1620, !1624, !1628, !1634, !1638}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1586, file: !1378, line: 564, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1384}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1586, file: !1378, line: 569, baseType: !1589, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1586, file: !1378, line: 571, baseType: !1594, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!28, !1384, !45}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1586, file: !1378, line: 572, baseType: !1598, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!28, !1384}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1586, file: !1378, line: 578, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!28, !1384, !45, !45, !45}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1586, file: !1378, line: 580, baseType: !1372, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1586, file: !1378, line: 581, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1375, !1376, !11}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1586, file: !1378, line: 582, baseType: !1611, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1375, !1376, !45, !45}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1586, file: !1378, line: 584, baseType: !1615, size: 64, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!45, !1384}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1586, file: !1378, line: 588, baseType: !1372, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1586, file: !1378, line: 591, baseType: !1372, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1586, file: !1378, line: 597, baseType: !1621, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!28, !1384, !45, !26, !28, !28}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1586, file: !1378, line: 603, baseType: !1625, size: 64, offset: 768)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!23, !1384}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1586, file: !1378, line: 613, baseType: !1629, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!28, !1384, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !129, line: 717, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1586, file: !1378, line: 625, baseType: !1635, size: 64, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1632, !1384, !45}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1586, file: !1378, line: 633, baseType: !1639, size: 64, offset: 960)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1274, !1384, !45}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1385, file: !129, line: 697, baseType: !45, size: 64, offset: 1024)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1385, file: !129, line: 699, baseType: !337, size: 64, offset: 1088)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1385, file: !129, line: 700, baseType: !26, size: 64, offset: 1152)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1385, file: !129, line: 711, baseType: !363, size: 64, offset: 1216)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1385, file: !129, line: 717, baseType: !1632, size: 64, offset: 1280)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1385, file: !129, line: 722, baseType: !1648, offset: 1344)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !129, line: 570, elements: !1418)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1381, file: !1378, line: 515, baseType: !1096, size: 32, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1381, file: !1378, line: 516, baseType: !45, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1381, file: !1378, line: 517, baseType: !45, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1381, file: !1378, line: 518, baseType: !45, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1377, file: !1378, line: 520, baseType: !128, size: 32, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1377, file: !1378, line: 522, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1438, line: 22, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1438, line: 22, size: 64, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1657, file: !1438, line: 22, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1438, line: 15, baseType: !45)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1377, file: !1378, line: 524, baseType: !1662, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1433, line: 372, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1433, line: 372, size: 64, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1664, file: !1433, line: 372, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1438, line: 16, baseType: !45)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !1378, line: 527, baseType: !1669, size: 64, offset: 512)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !1378, line: 527, size: 64, elements: !1670)
!1670 = !{!1671, !1677}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1669, file: !1378, line: 528, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1438, line: 21, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1438, line: 21, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1673, file: !1438, line: 21, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1438, line: 14, baseType: !45)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1669, file: !1378, line: 529, baseType: !1656, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1377, file: !1378, line: 534, baseType: !1274, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1377, file: !1378, line: 535, baseType: !1274, size: 64, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1377, file: !1378, line: 541, baseType: !1681, size: 64, offset: 704)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1377, file: !1378, line: 545, baseType: !1683, size: 64, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1377, file: !1378, line: 549, baseType: !1685, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1433, line: 520, baseType: !1274)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1365, file: !121, line: 100, baseType: !1687, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!28, !1324, !45, !45, !28}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1325, file: !121, line: 134, baseType: !26, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1325, file: !121, line: 135, baseType: !28, size: 32, offset: 1024)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !121, line: 136, baseType: !1693, size: 128, offset: 1088)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1325, file: !121, line: 136, size: 128, elements: !1694)
!1694 = !{!1695, !1701}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1693, file: !121, line: 137, baseType: !1696, size: 128)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1697, line: 6, size: 128, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1696, file: !1697, line: 7, baseType: !489, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1696, file: !1697, line: 8, baseType: !489, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !121, line: 138, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !121, line: 138, elements: !1703)
!1703 = !{!1704, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1702, file: !121, line: 138, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !121, line: 138, elements: !1418)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1702, file: !121, line: 138, baseType: !1707)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1696, elements: !448)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1321, file: !129, line: 147, baseType: !26, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1279, file: !129, line: 161, baseType: !350, size: 128, align: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !129, line: 164, baseType: !1711, size: 32, offset: 384)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !129, line: 164, size: 32, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1711, file: !129, line: 169, baseType: !55, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1711, file: !129, line: 177, baseType: !11, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1275, file: !129, line: 181, baseType: !55, size: 32, offset: 416)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !145, line: 42, size: 384, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1717, file: !145, line: 43, baseType: !816, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1717, file: !145, line: 45, baseType: !816, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1717, file: !145, line: 52, baseType: !47, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1717, file: !145, line: 53, baseType: !47, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1717, file: !145, line: 55, baseType: !144, size: 32, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1717, file: !145, line: 57, baseType: !11, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1717, file: !145, line: 58, baseType: !11, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1717, file: !145, line: 59, baseType: !11, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1717, file: !145, line: 60, baseType: !11, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1717, file: !145, line: 61, baseType: !11, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1717, file: !145, line: 62, baseType: !11, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1717, file: !145, line: 63, baseType: !11, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1717, file: !145, line: 71, baseType: !11, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1717, file: !145, line: 78, baseType: !1733, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !145, line: 78, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1268, file: !163, line: 406, baseType: !1737, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!28, !337, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !129, line: 293, size: 1536, elements: !1742)
!1742 = !{!1743, !1773, !1787}
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !129, line: 295, baseType: !1744, size: 512)
!1744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !129, line: 295, size: 512, elements: !1745)
!1745 = !{!1746, !1772}
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !129, line: 296, baseType: !1747, size: 448)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1744, file: !129, line: 296, size: 448, elements: !1748)
!1748 = !{!1749, !1750, !1759, !1760, !1761, !1770, !1771}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1747, file: !129, line: 298, baseType: !45, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !129, line: 299, baseType: !1751, size: 128, offset: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !129, line: 299, size: 128, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1751, file: !129, line: 300, baseType: !103, size: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !129, line: 302, baseType: !1755, size: 128)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !129, line: 302, size: 128, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1755, file: !129, line: 303, baseType: !26, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1755, file: !129, line: 305, baseType: !11, size: 32, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1747, file: !129, line: 310, baseType: !1250, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1747, file: !129, line: 311, baseType: !45, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !129, line: 312, baseType: !1762, size: 64, offset: 320)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !129, line: 312, size: 64, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1762, file: !129, line: 313, baseType: !26, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1762, file: !129, line: 314, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !129, line: 257, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 255, size: 64, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1767, file: !129, line: 256, baseType: !45, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1747, file: !129, line: 316, baseType: !55, size: 32, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1747, file: !129, line: 317, baseType: !55, size: 32, offset: 416)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1744, file: !129, line: 323, baseType: !1275, size: 512, align: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !129, line: 325, baseType: !1774, size: 512, offset: 512)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !129, line: 325, size: 512, elements: !1775)
!1775 = !{!1776, !1786}
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !129, line: 326, baseType: !1777, size: 320)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1774, file: !129, line: 326, size: 320, elements: !1778)
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1777, file: !129, line: 327, baseType: !45, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1777, file: !129, line: 328, baseType: !45, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1777, file: !129, line: 329, baseType: !45, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1777, file: !129, line: 331, baseType: !55, size: 32, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1777, file: !129, line: 332, baseType: !55, size: 32, offset: 224)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1777, file: !129, line: 333, baseType: !55, size: 32, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1777, file: !129, line: 335, baseType: !11, size: 32, offset: 288)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1774, file: !129, line: 339, baseType: !1275, size: 512, align: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !129, line: 341, baseType: !1788, size: 512, offset: 1024)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !129, line: 341, size: 512, elements: !1789)
!1789 = !{!1790, !1799, !1805}
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !129, line: 342, baseType: !1791, size: 384)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1788, file: !129, line: 342, size: 384, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1791, file: !129, line: 343, baseType: !45, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1791, file: !129, line: 344, baseType: !45, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1791, file: !129, line: 346, baseType: !26, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1791, file: !129, line: 347, baseType: !26, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1791, file: !129, line: 348, baseType: !26, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1791, file: !129, line: 349, baseType: !26, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !129, line: 352, baseType: !1800, size: 256)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1788, file: !129, line: 352, size: 256, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1800, file: !129, line: 353, baseType: !45, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1800, file: !129, line: 354, baseType: !45, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1800, file: !129, line: 356, baseType: !103, size: 128, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1788, file: !129, line: 359, baseType: !1275, size: 512, align: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1268, file: !163, line: 409, baseType: !1807, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!28, !1250, !1716}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1268, file: !163, line: 412, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!582, !1250, !1740}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1268, file: !163, line: 414, baseType: !1815, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !1818}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !163, line: 310, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1268, file: !163, line: 416, baseType: !1821, size: 64, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!28, !337, !1250, !47, !11, !1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1268, file: !163, line: 419, baseType: !1827, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!28, !337, !1250, !47, !11, !11, !1274, !26}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1268, file: !163, line: 424, baseType: !1831, size: 64, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!1834, !1250, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !31, line: 131, baseType: !489)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1268, file: !163, line: 425, baseType: !1836, size: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !1740, !41, !41}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1268, file: !163, line: 426, baseType: !1840, size: 64, offset: 576)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!582, !1740, !1096}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1268, file: !163, line: 427, baseType: !1844, size: 64, offset: 640)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1740}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1268, file: !163, line: 428, baseType: !1848, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!1044, !1851, !1873}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !163, line: 373, size: 384, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1860, !1861, !1862, !1863}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1852, file: !163, line: 374, baseType: !337, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1852, file: !163, line: 375, baseType: !47, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1852, file: !163, line: 376, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1851, !816}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1852, file: !163, line: 377, baseType: !26, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1852, file: !163, line: 378, baseType: !28, size: 32, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1852, file: !163, line: 379, baseType: !99, size: 16, offset: 288)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !163, line: 380, baseType: !1864, size: 64, offset: 320)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !163, line: 380, size: 64, elements: !1865)
!1865 = !{!1866, !1869}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1864, file: !163, line: 386, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !163, line: 386, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1864, file: !163, line: 395, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!1044, !26}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1875, line: 41, size: 320, elements: !1876)
!1875 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1887, !1925}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1874, file: !1875, line: 42, baseType: !89, size: 8)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1874, file: !1875, line: 43, baseType: !582, size: 8, offset: 8)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1874, file: !1875, line: 44, baseType: !582, size: 8, offset: 16)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1874, file: !1875, line: 45, baseType: !582, size: 8, offset: 24)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1874, file: !1875, line: 46, baseType: !582, size: 8, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1875, line: 47, baseType: !1883, size: 64, offset: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1875, line: 47, size: 64, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1883, file: !1875, line: 48, baseType: !41, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1883, file: !1875, line: 49, baseType: !28, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1875, line: 61, baseType: !1888, size: 128, offset: 128)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1875, line: 61, size: 128, elements: !1889)
!1889 = !{!1890, !1896}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1888, file: !1875, line: 67, baseType: !1891, size: 128)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1892, line: 17, size: 128, elements: !1893)
!1892 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1891, file: !1892, line: 19, baseType: !26, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1891, file: !1892, line: 20, baseType: !42, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1875, line: 68, baseType: !1897, size: 128)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1888, file: !1875, line: 68, size: 128, elements: !1898)
!1898 = !{!1899, !1924}
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1875, line: 69, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !1875, line: 69, size: 64, elements: !1901)
!1901 = !{!1902, !1905, !1912, !1921, !1923}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1900, file: !1875, line: 71, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1900, file: !1875, line: 72, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1875, line: 17, size: 128, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1908, file: !1875, line: 18, baseType: !26, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1908, file: !1875, line: 19, baseType: !41, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1900, file: !1875, line: 73, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1916, line: 31, size: 128, elements: !1917)
!1916 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1915, file: !1916, line: 32, baseType: !1274, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1915, file: !1916, line: 33, baseType: !11, size: 32, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1915, file: !1916, line: 34, baseType: !11, size: 32, offset: 96)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1900, file: !1875, line: 74, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1900, file: !1875, line: 75, baseType: !26, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1897, file: !1875, line: 77, baseType: !41, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1875, line: 80, baseType: !1926, size: 64, offset: 256)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1875, line: 80, size: 64, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1926, file: !1875, line: 81, baseType: !45, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1926, file: !1875, line: 82, baseType: !47, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1268, file: !163, line: 433, baseType: !1931, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!28, !1250, !1740, !1740, !149}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1268, file: !163, line: 435, baseType: !1935, size: 64, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!28, !1740}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1268, file: !163, line: 436, baseType: !1939, size: 64, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!582, !1740, !41, !41}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1268, file: !163, line: 438, baseType: !1943, size: 64, offset: 960)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1740, !1946, !1946}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1268, file: !163, line: 439, baseType: !1948, size: 64, offset: 1024)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!28, !1250, !1274}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1268, file: !163, line: 442, baseType: !1952, size: 64, offset: 1088)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!28, !1955, !337, !1957}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !163, line: 66, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1268, file: !163, line: 444, baseType: !1959, size: 64, offset: 1152)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !337}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1268, file: !163, line: 445, baseType: !1963, size: 64, offset: 1216)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!28, !1851, !1873}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1251, file: !163, line: 486, baseType: !45, size: 64, offset: 896)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1251, file: !163, line: 487, baseType: !521, size: 320, offset: 960)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1251, file: !163, line: 488, baseType: !1969, size: 32, offset: 1280)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1970, line: 8, baseType: !546)
!1970 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1251, file: !163, line: 489, baseType: !65, size: 32, offset: 1312)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1251, file: !163, line: 490, baseType: !103, size: 128, offset: 1344)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1251, file: !163, line: 491, baseType: !26, size: 64, offset: 1472)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1241, file: !1210, line: 180, baseType: !1975, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1044, !337, !1152, !1240, !593, !47, !41}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1241, file: !1210, line: 182, baseType: !1975, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1241, file: !1210, line: 184, baseType: !1980, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!28, !337, !1152, !1240, !1384}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1229, file: !1210, line: 90, baseType: !1984, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1229, file: !1210, line: 91, baseType: !1986, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1200, file: !1147, line: 120, baseType: !1988, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1991, !1170}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !157, line: 39, size: 384, elements: !1994)
!1994 = !{!1995, !1996, !2000, !2004, !2010, !2014}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1993, file: !157, line: 40, baseType: !156, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1993, file: !157, line: 41, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!582}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1993, file: !157, line: 42, baseType: !2001, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!26}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1993, file: !157, line: 43, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1513, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !157, line: 19, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1993, file: !157, line: 44, baseType: !2011, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!1513}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1993, file: !157, line: 45, baseType: !923, size: 64, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1200, file: !1147, line: 121, baseType: !2016, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!1513, !1170}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1200, file: !1147, line: 122, baseType: !2020, size: 64, offset: 320)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !1170, !779, !780}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1146, file: !1147, line: 70, baseType: !2024, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2026, line: 190, size: 1152, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2149, !2150, !2151, !2152, !2153, !2156}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2025, file: !2026, line: 191, baseType: !55, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2025, file: !2026, line: 192, baseType: !55, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2025, file: !2026, line: 202, baseType: !2024, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2025, file: !2026, line: 203, baseType: !23, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2025, file: !2026, line: 205, baseType: !513, size: 192, align: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2025, file: !2026, line: 207, baseType: !1513, size: 64, offset: 384)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2025, file: !2026, line: 208, baseType: !11, size: 32, offset: 448)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !2026, line: 209, baseType: !2036, size: 256, offset: 512)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !2026, line: 209, size: 256, elements: !2037)
!2037 = !{!2038, !2047, !2051}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2036, file: !2026, line: 210, baseType: !2039, size: 256)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2026, line: 153, size: 256, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2046}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2039, file: !2026, line: 154, baseType: !45, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2039, file: !2026, line: 156, baseType: !796, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2039, file: !2026, line: 162, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2026, line: 162, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2039, file: !2026, line: 167, baseType: !45, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2036, file: !2026, line: 211, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2026, line: 170, size: 64, elements: !2049)
!2049 = !{!2050}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2048, file: !2026, line: 171, baseType: !2024, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2036, file: !2026, line: 212, baseType: !2052, size: 256)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2026, line: 174, size: 256, elements: !2053)
!2053 = !{!2054, !2144, !2147, !2148}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2052, file: !2026, line: 175, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2057)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2026, line: 271, size: 768, elements: !2058)
!2058 = !{!2059, !2117, !2121, !2122, !2123, !2124, !2125, !2129, !2130, !2131, !2132, !2140}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2057, file: !2026, line: 276, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!28, !2063}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2026, line: 251, size: 1216, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2064, file: !2026, line: 253, baseType: !2024, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2064, file: !2026, line: 254, baseType: !337, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2064, file: !2026, line: 255, baseType: !2069, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2071, line: 17, size: 960, elements: !2072)
!2071 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2102, !2103, !2106}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2070, file: !2071, line: 18, baseType: !593, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2070, file: !2071, line: 19, baseType: !41, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2070, file: !2071, line: 20, baseType: !41, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2070, file: !2071, line: 21, baseType: !41, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2070, file: !2071, line: 22, baseType: !41, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2070, file: !2071, line: 23, baseType: !47, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2070, file: !2071, line: 24, baseType: !47, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2070, file: !2071, line: 25, baseType: !372, size: 256, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2070, file: !2071, line: 26, baseType: !2082, size: 64, offset: 704)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2071, line: 32, size: 256, elements: !2085)
!2085 = !{!2086, !2090, !2094, !2098}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2084, file: !2071, line: 33, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!26, !2069, !46}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2084, file: !2071, line: 34, baseType: !2091, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{null, !2069, !26}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2084, file: !2071, line: 35, baseType: !2095, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!26, !2069, !26, !46}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2084, file: !2071, line: 36, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!28, !2069, !26}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2070, file: !2071, line: 27, baseType: !28, size: 32, offset: 768)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2070, file: !2071, line: 28, baseType: !2104, size: 64, offset: 832)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2070, file: !2071, line: 29, baseType: !26, size: 64, offset: 896)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2064, file: !2026, line: 256, baseType: !26, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2064, file: !2026, line: 259, baseType: !372, size: 256, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2064, file: !2026, line: 260, baseType: !372, size: 256, offset: 512)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2064, file: !2026, line: 261, baseType: !28, size: 32, offset: 768)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2064, file: !2026, line: 262, baseType: !103, size: 128, offset: 832)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2064, file: !2026, line: 263, baseType: !593, size: 64, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2064, file: !2026, line: 265, baseType: !41, size: 64, offset: 1024)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2064, file: !2026, line: 266, baseType: !582, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2064, file: !2026, line: 267, baseType: !582, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2064, file: !2026, line: 268, baseType: !1584, size: 64, offset: 1152)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2057, file: !2026, line: 277, baseType: !2118, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !2063}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2057, file: !2026, line: 290, baseType: !2099, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2057, file: !2026, line: 292, baseType: !2087, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2057, file: !2026, line: 293, baseType: !2095, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2057, file: !2026, line: 294, baseType: !2091, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2057, file: !2026, line: 296, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!1044, !2063, !593, !41, !47}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2057, file: !2026, line: 306, baseType: !41, size: 64, offset: 448)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2057, file: !2026, line: 313, baseType: !582, size: 8, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2057, file: !2026, line: 314, baseType: !2126, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2057, file: !2026, line: 317, baseType: !2133, size: 64, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !2063, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2137, line: 59, baseType: !11)
!2137 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !163, line: 61, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2057, file: !2026, line: 320, baseType: !2141, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!28, !2063, !1384}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2052, file: !2026, line: 176, baseType: !2145, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2026, line: 35, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2052, file: !2026, line: 177, baseType: !47, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2052, file: !2026, line: 178, baseType: !2024, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2025, file: !2026, line: 215, baseType: !26, size: 64, offset: 768)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2025, file: !2026, line: 221, baseType: !489, size: 64, offset: 832)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2025, file: !2026, line: 223, baseType: !32, size: 16, offset: 896)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2025, file: !2026, line: 224, baseType: !30, size: 16, offset: 912)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2025, file: !2026, line: 225, baseType: !2154, size: 64, offset: 960)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2026, line: 36, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2025, file: !2026, line: 227, baseType: !350, size: 128, align: 64, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1146, file: !1147, line: 71, baseType: !2158, size: 32, offset: 448)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2159, line: 19, size: 32, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2160 = !{!2161}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2158, file: !2159, line: 20, baseType: !417, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1146, file: !1147, line: 73, baseType: !11, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1146, file: !1147, line: 74, baseType: !11, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1146, file: !1147, line: 75, baseType: !11, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1146, file: !1147, line: 76, baseType: !11, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1146, file: !1147, line: 77, baseType: !11, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1143, file: !114, line: 47, baseType: !1133, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1143, file: !114, line: 48, baseType: !1152, size: 64, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1143, file: !114, line: 49, baseType: !2170, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !114, line: 49, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1143, file: !114, line: 50, baseType: !753, size: 64, offset: 704)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1134, file: !114, line: 418, baseType: !2174, size: 64, offset: 1408)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !114, line: 53, size: 448, elements: !2176)
!2176 = !{!2177, !2178, !2183, !2187, !2191, !2195}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2175, file: !114, line: 54, baseType: !1217, size: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2175, file: !114, line: 55, baseType: !2179, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!1044, !2174, !2182, !593}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2175, file: !114, line: 57, baseType: !2184, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!1044, !2174, !2182, !23, !41}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2175, file: !114, line: 59, baseType: !2188, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !1133, !23}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2175, file: !114, line: 60, baseType: !2192, size: 64, offset: 320)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!28, !1133}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2175, file: !114, line: 61, baseType: !2196, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !1133}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1134, file: !114, line: 419, baseType: !23, size: 64, offset: 1472)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1134, file: !114, line: 420, baseType: !23, size: 64, offset: 1536)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1134, file: !114, line: 421, baseType: !1152, size: 64, offset: 1600)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1134, file: !114, line: 424, baseType: !2203, size: 64, offset: 1664)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !114, line: 424, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1134, file: !114, line: 425, baseType: !2207, size: 64, offset: 1728)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1134, file: !114, line: 426, baseType: !11, size: 32, offset: 1792)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1134, file: !114, line: 435, baseType: !372, size: 256, offset: 1856)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1134, file: !114, line: 437, baseType: !2212, size: 64, offset: 2112)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2214, line: 69, size: 320, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2215 = !{!2216, !2217, !2218, !2235, !2237, !2241, !2242}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2213, file: !2214, line: 70, baseType: !23, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2213, file: !2214, line: 71, baseType: !1133, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2213, file: !2214, line: 72, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2214, line: 47, size: 256, elements: !2222)
!2222 = !{!2223, !2224, !2230, !2234}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2221, file: !2214, line: 49, baseType: !11, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2221, file: !2214, line: 51, baseType: !2225, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!28, !23, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2221, file: !2214, line: 53, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!28, !593, !2228}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2221, file: !2214, line: 55, baseType: !923, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2213, file: !2214, line: 73, baseType: !2236, size: 16, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2213, file: !2214, line: 74, baseType: !2238, size: 8, offset: 208)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !90, line: 16, baseType: !2239)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !92, line: 20, baseType: !2240)
!2240 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2213, file: !2214, line: 75, baseType: !89, size: 8, offset: 216)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !2214, line: 76, baseType: !2243, size: 64, offset: 256)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !2214, line: 76, size: 64, elements: !2244)
!2244 = !{!2245, !2246, !2253}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2243, file: !2214, line: 77, baseType: !26, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2243, file: !2214, line: 78, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2214, line: 86, size: 128, elements: !2250)
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2249, file: !2214, line: 87, baseType: !11, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2249, file: !2214, line: 88, baseType: !593, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2243, file: !2214, line: 79, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2214, line: 92, size: 256, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2262, !2263}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2256, file: !2214, line: 94, baseType: !11, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2256, file: !2214, line: 95, baseType: !11, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2256, file: !2214, line: 96, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2256, file: !2214, line: 97, baseType: !2219, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2256, file: !2214, line: 98, baseType: !26, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1134, file: !114, line: 438, baseType: !11, size: 32, offset: 2176)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1134, file: !114, line: 441, baseType: !11, size: 32, offset: 2208)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1134, file: !114, line: 442, baseType: !2203, size: 64, offset: 2240)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1134, file: !114, line: 443, baseType: !2207, size: 64, offset: 2304)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1134, file: !114, line: 444, baseType: !582, size: 8, offset: 2368)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1134, file: !114, line: 451, baseType: !582, size: 8, offset: 2376)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1134, file: !114, line: 454, baseType: !11, size: 32, offset: 2400)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1134, file: !114, line: 455, baseType: !2272, size: 64, offset: 2432)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2274, line: 23, size: 96, elements: !2275)
!2274 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2273, file: !2274, line: 24, baseType: !28, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2273, file: !2274, line: 24, baseType: !28, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2273, file: !2274, line: 24, baseType: !28, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1134, file: !114, line: 458, baseType: !2280, size: 64, offset: 2496)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!28}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1134, file: !114, line: 460, baseType: !2284, size: 4032, align: 512, offset: 2560)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2285, size: 4032, elements: !2301)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !114, line: 362, size: 576, elements: !2286)
!2286 = !{!2287, !2288, !2289}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2285, file: !114, line: 363, baseType: !26, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2285, file: !114, line: 364, baseType: !11, size: 32, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2285, file: !114, line: 367, baseType: !2290, size: 448, offset: 128)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !114, line: 319, size: 448, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2290, file: !114, line: 320, baseType: !1133, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2290, file: !114, line: 321, baseType: !2294, size: 384, offset: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2295, line: 40, size: 384, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2296 = !{!2297}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2294, file: !2295, line: 41, baseType: !2298, size: 384, align: 64)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 384, align: 64, elements: !2299)
!2299 = !{!2300}
!2300 = !DISubrange(count: 2)
!2301 = !{!2302}
!2302 = !DISubrange(count: 7)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1134, file: !114, line: 463, baseType: !2304, size: 192, offset: 6592)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2305, line: 8, size: 192, elements: !2306)
!2305 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2306 = !{!2307, !2308, !2310}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2304, file: !2305, line: 10, baseType: !11, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2304, file: !2305, line: 11, baseType: !2309, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2304, file: !2305, line: 12, baseType: !2311, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2313, line: 59, size: 48, elements: !2314)
!2313 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2312, file: !2313, line: 60, baseType: !1530, size: 16)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2312, file: !2313, line: 61, baseType: !1530, size: 16, offset: 16)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2312, file: !2313, line: 63, baseType: !11, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2312, file: !2313, line: 64, baseType: !11, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2312, file: !2313, line: 65, baseType: !11, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2312, file: !2313, line: 66, baseType: !11, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1134, file: !114, line: 465, baseType: !45, size: 64, offset: 6784)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1134, file: !114, line: 469, baseType: !11, size: 32, offset: 6848)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1134, file: !114, line: 470, baseType: !103, size: 128, offset: 6912)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1134, file: !114, line: 471, baseType: !2325, size: 64, offset: 7040)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2327, line: 33, size: 96, elements: !2328)
!2327 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2328 = !{!2329, !2330, !2331, !2332}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2326, file: !2327, line: 37, baseType: !28, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2326, file: !2327, line: 43, baseType: !28, size: 32, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2326, file: !2327, line: 45, baseType: !32, size: 16, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2326, file: !2327, line: 47, baseType: !32, size: 16, offset: 80)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1134, file: !114, line: 476, baseType: !2334, size: 64, offset: 7104)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !114, line: 378, size: 256, elements: !2336)
!2336 = !{!2337, !2353, !2354, !2355}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2335, file: !114, line: 379, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2340, line: 204, baseType: !2341)
!2340 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2340, line: 197, size: 192, elements: !2342)
!2342 = !{!2343, !2345, !2346, !2347, !2349, !2351}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2341, file: !2340, line: 198, baseType: !2344, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2340, line: 21, baseType: !547)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2341, file: !2340, line: 199, baseType: !93, size: 8, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2341, file: !2340, line: 200, baseType: !93, size: 8, offset: 40)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2341, file: !2340, line: 201, baseType: !2348, size: 16, offset: 48)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2340, line: 17, baseType: !100)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2341, file: !2340, line: 202, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2340, line: 16, baseType: !490)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2341, file: !2340, line: 203, baseType: !2352, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2340, line: 22, baseType: !490)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2335, file: !114, line: 380, baseType: !11, size: 32, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2335, file: !114, line: 381, baseType: !593, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2335, file: !114, line: 382, baseType: !593, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1134, file: !114, line: 477, baseType: !2335, size: 256, offset: 7168)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1134, file: !114, line: 480, baseType: !2358, size: 64, offset: 7424)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !114, line: 480, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1134, file: !114, line: 483, baseType: !2361, size: 64, offset: 7488)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !114, line: 483, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1134, file: !114, line: 488, baseType: !593, size: 64, offset: 7552)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1134, file: !114, line: 492, baseType: !26, size: 64, offset: 7616)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1134, file: !114, line: 493, baseType: !11, size: 32, offset: 7680)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1134, file: !114, line: 495, baseType: !26, size: 64, offset: 7744)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1134, file: !114, line: 496, baseType: !11, size: 32, offset: 7808)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1134, file: !114, line: 499, baseType: !11, size: 32, offset: 7840)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1134, file: !114, line: 500, baseType: !2370, size: 64, offset: 7872)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2372, line: 45, baseType: !2373)
!2372 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1134, file: !114, line: 503, baseType: !11, size: 32, offset: 7936)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1134, file: !114, line: 504, baseType: !2376, size: 64, offset: 8000)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2379, line: 96, size: 192, elements: !2380)
!2379 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2380 = !{!2381, !2382, !2435, !2438}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2378, file: !2379, line: 97, baseType: !11, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2378, file: !2379, line: 98, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2379, line: 24, size: 3072, elements: !2385)
!2385 = !{!2386, !2388, !2389, !2390, !2391, !2404, !2405, !2406, !2407, !2419, !2420, !2421, !2432, !2433, !2434}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2384, file: !2379, line: 26, baseType: !2387, size: 128)
!2387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 128, elements: !2299)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2384, file: !2379, line: 27, baseType: !2387, size: 128, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2384, file: !2379, line: 28, baseType: !28, size: 32, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2384, file: !2379, line: 31, baseType: !65, size: 32, align: 512, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2384, file: !2379, line: 32, baseType: !2392, size: 960, offset: 576)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2393, line: 206, size: 960, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2394 = !{!2395, !2396, !2399, !2401, !2402, !2403}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2392, file: !2393, line: 207, baseType: !353, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2392, file: !2393, line: 208, baseType: !2397, size: 256, offset: 64)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2398, size: 256, elements: !435)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2392, file: !2393, line: 209, baseType: !2400, size: 256, offset: 320)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !435)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2392, file: !2393, line: 213, baseType: !816, size: 64, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2392, file: !2393, line: 215, baseType: !818, size: 256, offset: 640)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2392, file: !2393, line: 216, baseType: !89, size: 8, offset: 896)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2384, file: !2379, line: 33, baseType: !45, size: 64, offset: 1536)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2384, file: !2379, line: 34, baseType: !45, size: 64, offset: 1600)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2384, file: !2379, line: 35, baseType: !582, size: 8, offset: 1664)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2384, file: !2379, line: 36, baseType: !2408, size: 320, offset: 1728)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2409, line: 11, size: 320, elements: !2410)
!2409 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2410 = !{!2411, !2412, !2413, !2418}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2408, file: !2409, line: 16, baseType: !430, size: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2408, file: !2409, line: 17, baseType: !45, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2408, file: !2409, line: 18, baseType: !2414, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2408, file: !2409, line: 19, baseType: !546, size: 32, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2384, file: !2379, line: 37, baseType: !715, size: 256, offset: 2048)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2384, file: !2379, line: 38, baseType: !350, size: 128, align: 64, offset: 2304)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2384, file: !2379, line: 39, baseType: !2422, size: 64, offset: 2432)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2379, line: 49, size: 768, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2423, file: !2379, line: 50, baseType: !65, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2423, file: !2379, line: 51, baseType: !2400, size: 256, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2423, file: !2379, line: 53, baseType: !2400, size: 256, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2423, file: !2379, line: 54, baseType: !45, size: 64, offset: 576)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2423, file: !2379, line: 55, baseType: !2422, size: 64, offset: 640)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2423, file: !2379, line: 56, baseType: !28, size: 32, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2423, file: !2379, line: 57, baseType: !28, size: 32, offset: 736)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2384, file: !2379, line: 40, baseType: !45, size: 64, offset: 2496)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2384, file: !2379, line: 42, baseType: !28, size: 32, offset: 2560)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2384, file: !2379, line: 43, baseType: !2377, size: 64, offset: 2624)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2378, file: !2379, line: 99, baseType: !2436, offset: 128)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2437, line: 211, elements: !1418)
!2437 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2378, file: !2379, line: 100, baseType: !2439, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2379, line: 63, size: 3008, elements: !2441)
!2441 = !{!2442, !2443, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2473}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2440, file: !2379, line: 64, baseType: !2422, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2440, file: !2379, line: 65, baseType: !2444, size: 192, offset: 64)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 192, elements: !409)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2440, file: !2379, line: 67, baseType: !28, size: 32, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2440, file: !2379, line: 68, baseType: !372, size: 256, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2440, file: !2379, line: 69, baseType: !65, size: 32, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2440, file: !2379, line: 70, baseType: !372, size: 256, offset: 640)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2440, file: !2379, line: 71, baseType: !45, size: 64, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2440, file: !2379, line: 72, baseType: !45, size: 64, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2440, file: !2379, line: 73, baseType: !45, size: 64, offset: 1024)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2440, file: !2379, line: 74, baseType: !45, size: 64, offset: 1088)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2440, file: !2379, line: 75, baseType: !45, size: 64, offset: 1152)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2440, file: !2379, line: 76, baseType: !45, size: 64, offset: 1216)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2440, file: !2379, line: 77, baseType: !45, size: 64, offset: 1280)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2440, file: !2379, line: 78, baseType: !45, size: 64, offset: 1344)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2440, file: !2379, line: 79, baseType: !582, size: 8, offset: 1408)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2440, file: !2379, line: 80, baseType: !45, size: 64, offset: 1472)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2440, file: !2379, line: 81, baseType: !372, size: 256, offset: 1536)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2440, file: !2379, line: 82, baseType: !754, size: 256, offset: 1792)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2440, file: !2379, line: 84, baseType: !55, size: 32, offset: 2048)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2440, file: !2379, line: 87, baseType: !45, size: 64, offset: 2112)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2440, file: !2379, line: 88, baseType: !45, size: 64, offset: 2176)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2440, file: !2379, line: 89, baseType: !2465, size: 704, offset: 2240)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !716, line: 111, size: 704, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2472}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2465, file: !716, line: 112, baseType: !715, size: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2465, file: !716, line: 113, baseType: !2408, size: 320, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2465, file: !716, line: 116, baseType: !2470, size: 64, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !716, line: 18, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2465, file: !716, line: 117, baseType: !28, size: 32, offset: 640)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2440, file: !2379, line: 90, baseType: !2377, size: 64, offset: 2944)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1134, file: !114, line: 515, baseType: !2475, size: 64, offset: 8064)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2477, line: 117, size: 128, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2478 = !{!2479, !2480, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2476, file: !2477, line: 118, baseType: !506, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2476, file: !2477, line: 119, baseType: !506, size: 32, offset: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2476, file: !2477, line: 120, baseType: !816, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1134, file: !114, line: 516, baseType: !11, size: 32, offset: 8128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1134, file: !114, line: 519, baseType: !11, size: 32, offset: 8160)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1134, file: !114, line: 520, baseType: !2485, size: 64, offset: 8192)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1134, file: !114, line: 523, baseType: !2487, size: 64, offset: 8256)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !114, line: 523, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1134, file: !114, line: 524, baseType: !11, size: 32, offset: 8320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1134, file: !114, line: 525, baseType: !2492, size: 64, offset: 8384)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2495, line: 28, size: 192, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2494, file: !2495, line: 29, baseType: !23, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2494, file: !2495, line: 30, baseType: !23, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2494, file: !2495, line: 31, baseType: !45, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1134, file: !114, line: 526, baseType: !11, size: 32, offset: 8448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1134, file: !114, line: 533, baseType: !26, size: 64, offset: 8512)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1134, file: !114, line: 534, baseType: !11, size: 32, offset: 8576)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1134, file: !114, line: 535, baseType: !2504, size: 64, offset: 8640)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1134, file: !114, line: 536, baseType: !11, size: 32, offset: 8704)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1134, file: !114, line: 539, baseType: !28, size: 32, offset: 8736)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1134, file: !114, line: 540, baseType: !2508, size: 64, offset: 8768)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2510, line: 32, size: 64, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2511 = !{!2512, !2513}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2509, file: !2510, line: 33, baseType: !506, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2509, file: !2510, line: 34, baseType: !506, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1134, file: !114, line: 563, baseType: !103, size: 128, offset: 8832)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1134, file: !114, line: 565, baseType: !103, size: 128, offset: 8960)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1134, file: !114, line: 568, baseType: !2517, size: 64, offset: 9088)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1134, file: !114, line: 570, baseType: !55, size: 32, offset: 9152)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1110, file: !163, line: 2382, baseType: !1109, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1110, file: !163, line: 2383, baseType: !426, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1110, file: !163, line: 2385, baseType: !2524, offset: 576)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2437, line: 206, elements: !1418)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1110, file: !163, line: 2386, baseType: !2524, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1110, file: !163, line: 2387, baseType: !2524, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1110, file: !163, line: 2388, baseType: !2528, offset: 576)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2524, elements: !409)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1110, file: !163, line: 2390, baseType: !2524, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1110, file: !163, line: 2391, baseType: !2524, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1110, file: !163, line: 2392, baseType: !2524, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1110, file: !163, line: 2393, baseType: !2524, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1101, file: !163, line: 1197, baseType: !2534, size: 64, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !163, line: 2057, size: 1664, elements: !2537)
!2537 = !{!2538, !2542, !2546, !2547, !2551, !2555, !2559, !2560, !2561, !2565, !2569, !2573, !2574, !2575, !2581, !2585, !2586, !2590, !2591, !2592, !2593, !2597, !2601, !2648, !2663, !2664}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2536, file: !163, line: 2058, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!892, !1100}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2536, file: !163, line: 2059, baseType: !2543, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !892}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2536, file: !163, line: 2060, baseType: !2543, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2536, file: !163, line: 2062, baseType: !2548, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !892, !28}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2536, file: !163, line: 2063, baseType: !2552, size: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!28, !892, !1716}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2536, file: !163, line: 2064, baseType: !2556, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!28, !892}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2536, file: !163, line: 2065, baseType: !2543, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2536, file: !163, line: 2066, baseType: !1129, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2536, file: !163, line: 2067, baseType: !2562, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!28, !1100, !28}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2536, file: !163, line: 2068, baseType: !2566, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!28, !1100, !162}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2536, file: !163, line: 2069, baseType: !2570, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!28, !1100}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2536, file: !163, line: 2070, baseType: !2566, size: 64, offset: 704)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2536, file: !163, line: 2071, baseType: !2570, size: 64, offset: 768)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2536, file: !163, line: 2072, baseType: !2576, size: 64, offset: 832)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!28, !852, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !163, line: 62, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2536, file: !163, line: 2073, baseType: !2582, size: 64, offset: 896)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!28, !1100, !2309, !593}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2536, file: !163, line: 2074, baseType: !1129, size: 64, offset: 960)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2536, file: !163, line: 2076, baseType: !2587, size: 64, offset: 1024)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!28, !2069, !852}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2536, file: !163, line: 2077, baseType: !2587, size: 64, offset: 1088)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2536, file: !163, line: 2078, baseType: !2587, size: 64, offset: 1152)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2536, file: !163, line: 2079, baseType: !2587, size: 64, offset: 1216)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2536, file: !163, line: 2081, baseType: !2594, size: 64, offset: 1280)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!1044, !1100, !28, !593, !41, !47}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2536, file: !163, line: 2082, baseType: !2598, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!1044, !1100, !28, !23, !41, !47}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2536, file: !163, line: 2083, baseType: !2602, size: 64, offset: 1408)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!2605, !892}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !168, line: 296, size: 1664, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2633, !2634, !2635}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2607, file: !168, line: 297, baseType: !430, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2607, file: !168, line: 298, baseType: !103, size: 128, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2607, file: !168, line: 299, baseType: !103, size: 128, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2607, file: !168, line: 300, baseType: !103, size: 128, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2607, file: !168, line: 301, baseType: !372, size: 256, offset: 512)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2607, file: !168, line: 302, baseType: !65, size: 32, offset: 768)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2607, file: !168, line: 303, baseType: !55, size: 32, offset: 800)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2607, file: !168, line: 304, baseType: !1100, size: 64, offset: 832)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2607, file: !168, line: 305, baseType: !2618, size: 64, offset: 896)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !168, line: 68, size: 64, elements: !2619)
!2619 = !{!2620, !2632}
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !168, line: 69, baseType: !2621, size: 32)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2618, file: !168, line: 69, size: 32, elements: !2622)
!2622 = !{!2623, !2624, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2621, file: !168, line: 70, baseType: !452, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2621, file: !168, line: 71, baseType: !470, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2621, file: !168, line: 72, baseType: !2626, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2627, line: 24, baseType: !2628)
!2627 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2627, line: 22, size: 32, elements: !2629)
!2629 = !{!2630}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2628, file: !2627, line: 23, baseType: !2631, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2627, line: 20, baseType: !458)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2618, file: !168, line: 74, baseType: !167, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2607, file: !168, line: 306, baseType: !47, size: 64, offset: 960)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2607, file: !168, line: 307, baseType: !45, size: 64, offset: 1024)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2607, file: !168, line: 308, baseType: !2636, size: 576, offset: 1088)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !168, line: 205, size: 576, elements: !2637)
!2637 = !{!2638, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2636, file: !168, line: 206, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !168, line: 66, baseType: !49)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2636, file: !168, line: 207, baseType: !2639, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2636, file: !168, line: 208, baseType: !2639, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2636, file: !168, line: 209, baseType: !2639, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2636, file: !168, line: 210, baseType: !2639, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2636, file: !168, line: 211, baseType: !2639, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2636, file: !168, line: 212, baseType: !2639, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2636, file: !168, line: 213, baseType: !537, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2636, file: !168, line: 214, baseType: !537, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2536, file: !163, line: 2085, baseType: !2649, size: 64, offset: 1472)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!816, !1100, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2654, line: 15, size: 256, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2655 = !{!2656, !2657, !2658, !2659, !2660}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2653, file: !2654, line: 16, baseType: !1096, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2653, file: !2654, line: 19, baseType: !28, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2653, file: !2654, line: 26, baseType: !45, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2653, file: !2654, line: 33, baseType: !45, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2653, file: !2654, line: 36, baseType: !2661, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2654, line: 36, flags: DIFlagFwdDecl)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2536, file: !163, line: 2087, baseType: !2649, size: 64, offset: 1536)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2536, file: !163, line: 2089, baseType: !1129, size: 64, offset: 1600)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1101, file: !163, line: 1198, baseType: !2666, size: 64, offset: 448)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !168, line: 324, size: 704, elements: !2669)
!2669 = !{!2670, !2674, !2678, !2682, !2683, !2684, !2685, !2686, !2691, !2696, !2700}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2668, file: !168, line: 325, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!28, !2606}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2668, file: !168, line: 326, baseType: !2675, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!2606, !1100, !28}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2668, file: !168, line: 327, baseType: !2679, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !2606}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2668, file: !168, line: 328, baseType: !2671, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2668, file: !168, line: 329, baseType: !2671, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2668, file: !168, line: 330, baseType: !2671, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2668, file: !168, line: 331, baseType: !2562, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2668, file: !168, line: 334, baseType: !2687, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!2690, !892}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2668, file: !168, line: 335, baseType: !2692, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!28, !892, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2668, file: !168, line: 337, baseType: !2697, size: 64, offset: 576)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!28, !892, !2690}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2668, file: !168, line: 339, baseType: !2701, size: 64, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!28, !1100, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1101, file: !163, line: 1199, baseType: !2706, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !168, line: 430, size: 704, elements: !2709)
!2709 = !{!2710, !2714, !2715, !2719, !2720, !2721, !2736, !2759, !2763, !2764, !2787}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2708, file: !168, line: 431, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!28, !1100, !28, !28, !1013}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2708, file: !168, line: 432, baseType: !2562, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2708, file: !168, line: 433, baseType: !2716, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!28, !1100, !11}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2708, file: !168, line: 434, baseType: !2716, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2708, file: !168, line: 435, baseType: !2562, size: 64, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2708, file: !168, line: 436, baseType: !2722, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!28, !1100, !28, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !168, line: 417, size: 256, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2726, file: !168, line: 418, baseType: !28, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2726, file: !168, line: 419, baseType: !11, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2726, file: !168, line: 420, baseType: !11, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2726, file: !168, line: 422, baseType: !11, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2726, file: !168, line: 423, baseType: !11, size: 32, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2726, file: !168, line: 424, baseType: !11, size: 32, offset: 160)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2726, file: !168, line: 425, baseType: !11, size: 32, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2726, file: !168, line: 426, baseType: !11, size: 32, offset: 224)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2708, file: !168, line: 437, baseType: !2737, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!28, !1100, !2618, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !168, line: 345, size: 960, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2741, file: !168, line: 346, baseType: !28, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2741, file: !168, line: 347, baseType: !489, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2741, file: !168, line: 348, baseType: !489, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2741, file: !168, line: 349, baseType: !489, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2741, file: !168, line: 350, baseType: !489, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2741, file: !168, line: 351, baseType: !489, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2741, file: !168, line: 352, baseType: !489, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2741, file: !168, line: 353, baseType: !369, size: 64, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2741, file: !168, line: 355, baseType: !369, size: 64, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2741, file: !168, line: 356, baseType: !28, size: 32, offset: 576)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2741, file: !168, line: 357, baseType: !28, size: 32, offset: 608)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2741, file: !168, line: 358, baseType: !489, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2741, file: !168, line: 359, baseType: !489, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2741, file: !168, line: 360, baseType: !489, size: 64, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2741, file: !168, line: 361, baseType: !369, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2741, file: !168, line: 362, baseType: !28, size: 32, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2708, file: !168, line: 438, baseType: !2760, size: 64, offset: 448)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!28, !1100, !2704, !2740}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2708, file: !168, line: 440, baseType: !2737, size: 64, offset: 512)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2708, file: !168, line: 441, baseType: !2765, size: 64, offset: 576)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!28, !1100, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !168, line: 411, size: 1408, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2769, file: !168, line: 412, baseType: !11, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2769, file: !168, line: 413, baseType: !2773, size: 1344, offset: 64)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2774, size: 1344, elements: !409)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !168, line: 397, size: 448, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2786}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2774, file: !168, line: 398, baseType: !11, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2774, file: !168, line: 399, baseType: !11, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2774, file: !168, line: 401, baseType: !11, size: 32, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2774, file: !168, line: 402, baseType: !11, size: 32, offset: 96)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2774, file: !168, line: 403, baseType: !11, size: 32, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2774, file: !168, line: 404, baseType: !11, size: 32, offset: 160)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2774, file: !168, line: 405, baseType: !11, size: 32, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2774, file: !168, line: 406, baseType: !491, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2774, file: !168, line: 407, baseType: !2785, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !31, line: 132, baseType: !489)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2774, file: !168, line: 408, baseType: !2785, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2708, file: !168, line: 442, baseType: !2716, size: 64, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1101, file: !163, line: 1200, baseType: !2789, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2791)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !163, line: 54, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1101, file: !163, line: 1201, baseType: !45, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1101, file: !163, line: 1202, baseType: !45, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1101, file: !163, line: 1203, baseType: !45, size: 64, offset: 768)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1101, file: !163, line: 1204, baseType: !852, size: 64, offset: 832)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1101, file: !163, line: 1205, baseType: !521, size: 320, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1101, file: !163, line: 1206, baseType: !28, size: 32, offset: 1216)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1101, file: !163, line: 1207, baseType: !55, size: 32, offset: 1248)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1101, file: !163, line: 1209, baseType: !26, size: 64, offset: 1280)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1101, file: !163, line: 1211, baseType: !2801, size: 64, offset: 1344)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2804)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !163, line: 1211, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1101, file: !163, line: 1223, baseType: !2806, size: 64, offset: 1408)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !869, line: 34, size: 64, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2806, file: !869, line: 35, baseType: !872, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1101, file: !163, line: 1224, baseType: !103, size: 128, offset: 1472)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1101, file: !163, line: 1225, baseType: !2811, size: 64, offset: 1600)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2813, line: 40, size: 7424, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2814 = !{!2815, !2816, !2817, !3652, !3653, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3696, !3697}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2812, file: !2813, line: 41, baseType: !1834, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2812, file: !2813, line: 42, baseType: !1834, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2812, file: !2813, line: 43, baseType: !2818, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !174, line: 128, size: 4544, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2824, !2828, !2829, !2830, !2831, !2832, !3022, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3618, !3619, !3620, !3621, !3624, !3625, !3628, !3631, !3632, !3635, !3636, !3637, !3638}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2819, file: !174, line: 133, baseType: !28, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2819, file: !174, line: 134, baseType: !28, size: 32, offset: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2819, file: !174, line: 135, baseType: !28, size: 32, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2819, file: !174, line: 137, baseType: !2825, size: 256, offset: 96)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2826)
!2826 = !{!2827}
!2827 = !DISubrange(count: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2819, file: !174, line: 139, baseType: !32, size: 16, offset: 352)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2819, file: !174, line: 140, baseType: !32, size: 16, offset: 368)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2819, file: !174, line: 142, baseType: !1091, size: 128, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2819, file: !174, line: 143, baseType: !2811, size: 64, offset: 512)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2819, file: !174, line: 145, baseType: !2833, size: 64, offset: 576)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2835)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !174, line: 1388, size: 1152, elements: !2836)
!2836 = !{!2837, !2928, !2943, !2948, !2952, !2956, !2957, !2961, !2962, !2968, !2972, !2973, !2977, !3003, !3008, !3013, !3014, !3018}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2835, file: !174, line: 1389, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2813, line: 265, size: 960, elements: !2843)
!2843 = !{!2844, !2845, !2846, !2848, !2849, !2850, !2852, !2853, !2860, !2862, !2865, !2866, !2869, !2873, !2874, !2876, !2877, !2878, !2879, !2881, !2926}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2842, file: !2813, line: 266, baseType: !2841, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2842, file: !2813, line: 267, baseType: !2811, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2842, file: !2813, line: 268, baseType: !2847, size: 32, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2813, line: 256, baseType: !547)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2842, file: !2813, line: 271, baseType: !32, size: 16, offset: 160)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2842, file: !2813, line: 272, baseType: !32, size: 16, offset: 176)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2842, file: !2813, line: 273, baseType: !2851, size: 8, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2813, line: 97, baseType: !89)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2842, file: !2813, line: 274, baseType: !55, size: 32, offset: 224)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2842, file: !2813, line: 276, baseType: !2854, size: 160, align: 32, offset: 256)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1916, line: 77, size: 160, align: 32, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2854, file: !1916, line: 78, baseType: !1834, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2854, file: !1916, line: 80, baseType: !11, size: 32, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2854, file: !1916, line: 82, baseType: !11, size: 32, offset: 96)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2854, file: !1916, line: 84, baseType: !11, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2842, file: !2813, line: 278, baseType: !2861, size: 32, offset: 416)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2813, line: 258, baseType: !11)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2842, file: !2813, line: 279, baseType: !2863, size: 64, offset: 448)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2813, line: 20, baseType: !2839)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2842, file: !2813, line: 280, baseType: !26, size: 64, offset: 512)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2842, file: !2813, line: 288, baseType: !2867, size: 64, offset: 576)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2813, line: 288, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2842, file: !2813, line: 289, baseType: !2870, size: 64, offset: 640)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2813, line: 228, size: 64, elements: !2871)
!2871 = !{!2872}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2870, file: !2813, line: 229, baseType: !489, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2842, file: !2813, line: 291, baseType: !489, size: 64, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_member, scope: !2842, file: !2813, line: 299, baseType: !2875, offset: 768)
!2875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2842, file: !2813, line: 299, elements: !1418)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2842, file: !2813, line: 305, baseType: !32, size: 16, offset: 768)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2842, file: !2813, line: 311, baseType: !32, size: 16, offset: 784)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2842, file: !2813, line: 313, baseType: !55, size: 32, offset: 800)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2842, file: !2813, line: 315, baseType: !2880, size: 64, offset: 832)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2842, file: !2813, line: 317, baseType: !2882, size: 64, offset: 896)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2884, line: 678, size: 1984, elements: !2885)
!2884 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2885 = !{!2886, !2890, !2891, !2894, !2915, !2916, !2917, !2918, !2923, !2924, !2925}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2883, file: !2884, line: 679, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2889, line: 325, flags: DIFlagFwdDecl)
!2889 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2883, file: !2884, line: 680, baseType: !11, size: 32, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2883, file: !2884, line: 685, baseType: !2892, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2884, line: 685, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2883, file: !2884, line: 687, baseType: !2895, size: 576, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2896, line: 26, baseType: !2897)
!2896 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2896, line: 16, size: 576, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904, !2909, !2914}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2897, file: !2896, line: 17, baseType: !65, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2897, file: !2896, line: 18, baseType: !28, size: 32, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2897, file: !2896, line: 19, baseType: !28, size: 32, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2897, file: !2896, line: 20, baseType: !1825, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2897, file: !2896, line: 22, baseType: !26, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2897, file: !2896, line: 23, baseType: !2905, size: 64, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2896, line: 13, baseType: !2907)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!26, !1096, !26}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2897, file: !2896, line: 24, baseType: !2910, size: 64, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2896, line: 14, baseType: !2912)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !26, !26}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2897, file: !2896, line: 25, baseType: !60, size: 192, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2883, file: !2884, line: 688, baseType: !2895, size: 576, offset: 768)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2883, file: !2884, line: 694, baseType: !11, size: 32, offset: 1344)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2883, file: !2884, line: 699, baseType: !65, size: 32, offset: 1376)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2883, file: !2884, line: 700, baseType: !2919, size: 128, offset: 1408)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2884, line: 550, size: 128, elements: !2920)
!2920 = !{!2921, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2919, file: !2884, line: 551, baseType: !2841, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2919, file: !2884, line: 552, baseType: !2841, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2883, file: !2884, line: 701, baseType: !715, size: 256, offset: 1536)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2883, file: !2884, line: 702, baseType: !2470, size: 64, offset: 1792)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2883, file: !2884, line: 707, baseType: !430, size: 128, offset: 1856)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2842, file: !2813, line: 324, baseType: !2927, offset: 960)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1915, elements: !448)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2835, file: !174, line: 1390, baseType: !2929, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!28, !2841, !2932, !11}
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !174, line: 1559, size: 192, elements: !2934)
!2934 = !{!2935, !2938, !2939}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2933, file: !174, line: 1560, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !174, line: 32, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2933, file: !174, line: 1561, baseType: !582, size: 8, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2933, file: !174, line: 1562, baseType: !2940, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !2932}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2835, file: !174, line: 1392, baseType: !2944, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!28, !2818, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !174, line: 115, baseType: !11)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2835, file: !174, line: 1393, baseType: !2949, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2818}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2835, file: !174, line: 1394, baseType: !2953, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!28, !2811, !2947, !11, !45}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2835, file: !174, line: 1396, baseType: !2953, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2835, file: !174, line: 1398, baseType: !2958, size: 64, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!11, !2818, !11}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2835, file: !174, line: 1400, baseType: !2949, size: 64, offset: 448)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2835, file: !174, line: 1401, baseType: !2963, size: 64, offset: 512)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!28, !2811, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !163, line: 56, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2835, file: !174, line: 1402, baseType: !2969, size: 64, offset: 576)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!28, !2811, !582}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2835, file: !174, line: 1403, baseType: !2949, size: 64, offset: 640)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2835, file: !174, line: 1405, baseType: !2974, size: 64, offset: 704)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !2811, !45}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2835, file: !174, line: 1406, baseType: !2978, size: 64, offset: 768)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!28, !2818, !1834, !11, !2981, !26}
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !174, line: 342, baseType: !2982)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!28, !2985, !11, !26}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2987, line: 106, size: 512, elements: !2988)
!2987 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2998, !2999}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2986, file: !2987, line: 107, baseType: !490, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2986, file: !2987, line: 108, baseType: !490, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2986, file: !2987, line: 109, baseType: !490, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2986, file: !2987, line: 110, baseType: !91, size: 8, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2986, file: !2987, line: 111, baseType: !91, size: 8, offset: 200)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2986, file: !2987, line: 112, baseType: !91, size: 8, offset: 208)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2986, file: !2987, line: 113, baseType: !91, size: 8, offset: 216)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2986, file: !2987, line: 114, baseType: !2997, size: 32, offset: 224)
!2997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32, elements: !435)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2986, file: !2987, line: 115, baseType: !490, size: 64, offset: 256)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2986, file: !2987, line: 116, baseType: !3000, size: 192, offset: 320)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 192, elements: !3001)
!3001 = !{!3002}
!3002 = !DISubrange(count: 24)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2835, file: !174, line: 1408, baseType: !3004, size: 64, offset: 832)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!593, !2818, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2835, file: !174, line: 1410, baseType: !3009, size: 64, offset: 896)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!28, !2818, !3012, !173}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2835, file: !174, line: 1412, baseType: !1133, size: 64, offset: 960)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2835, file: !174, line: 1413, baseType: !3015, size: 64, offset: 1024)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3017)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !174, line: 37, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2835, file: !174, line: 1420, baseType: !3019, size: 64, offset: 1088)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!28, !2818, !1957}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2819, file: !174, line: 146, baseType: !3023, size: 64, offset: 640)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !174, line: 391, size: 7296, elements: !3025)
!3025 = !{!3026, !3027, !3030, !3031, !3034, !3037, !3038, !3042, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3483, !3484, !3488, !3489, !3490, !3491, !3524, !3525, !3526, !3529, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3548, !3549, !3550, !3551, !3552, !3553}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !3024, file: !174, line: 392, baseType: !2936, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !3024, file: !174, line: 393, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !174, line: 30, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !3024, file: !174, line: 395, baseType: !1338, size: 128, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3024, file: !174, line: 397, baseType: !3032, size: 64, offset: 256)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !174, line: 39, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !3024, file: !174, line: 398, baseType: !3035, size: 64, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !174, line: 38, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !3024, file: !174, line: 399, baseType: !372, size: 256, offset: 384)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !3024, file: !174, line: 401, baseType: !3039, size: 64, offset: 640)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3041)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !174, line: 401, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !3024, file: !174, line: 404, baseType: !3043, size: 64, offset: 704)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !174, line: 404, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !3024, file: !174, line: 406, baseType: !11, size: 32, offset: 768)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !3024, file: !174, line: 409, baseType: !1091, size: 128, offset: 832)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !3024, file: !174, line: 410, baseType: !11, size: 32, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !3024, file: !174, line: 416, baseType: !26, size: 64, offset: 1024)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !3024, file: !174, line: 421, baseType: !45, size: 64, offset: 1088)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !3024, file: !174, line: 426, baseType: !55, size: 32, offset: 1152)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3024, file: !174, line: 432, baseType: !28, size: 32, offset: 1184)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !3024, file: !174, line: 434, baseType: !65, size: 32, offset: 1216)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !3024, file: !174, line: 436, baseType: !2818, size: 64, offset: 1280)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !3024, file: !174, line: 438, baseType: !417, size: 32, offset: 1344)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !3024, file: !174, line: 443, baseType: !1152, size: 64, offset: 1408)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3024, file: !174, line: 450, baseType: !3057, size: 64, offset: 1472)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !186, line: 705, size: 5824, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3065, !3066, !3118, !3188, !3189, !3190, !3191, !3192, !3199, !3359, !3372, !3382, !3386, !3388, !3389, !3390, !3394, !3401, !3402, !3405, !3408, !3412, !3415, !3416, !3417, !3418, !3419, !3420, !3450, !3451, !3452, !3455, !3458, !3467, !3468, !3469, !3470, !3471, !3472}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3058, file: !186, line: 706, baseType: !1146, size: 512)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3058, file: !186, line: 707, baseType: !3057, size: 64, offset: 512)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3058, file: !186, line: 709, baseType: !3063, size: 64, offset: 576)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !186, line: 37, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3058, file: !186, line: 711, baseType: !23, size: 64, offset: 640)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3058, file: !186, line: 712, baseType: !3067, size: 64, offset: 704)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3069)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !186, line: 89, size: 384, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3079, !3083, !3087}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3069, file: !186, line: 90, baseType: !23, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3069, file: !186, line: 91, baseType: !1226, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3069, file: !186, line: 92, baseType: !3074, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!28, !3077, !1182}
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3058)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3069, file: !186, line: 93, baseType: !3080, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!593, !3077, !3007, !779, !780}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3069, file: !186, line: 95, baseType: !3084, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{null, !3057}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3069, file: !186, line: 97, baseType: !3088, size: 64, offset: 320)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !198, line: 286, size: 1472, elements: !3091)
!3091 = !{!3092, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3090, file: !198, line: 287, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!28, !3057}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3090, file: !198, line: 288, baseType: !3084, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3090, file: !198, line: 289, baseType: !3093, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3090, file: !198, line: 290, baseType: !3093, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3090, file: !198, line: 291, baseType: !3093, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3090, file: !198, line: 292, baseType: !3093, size: 64, offset: 320)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3090, file: !198, line: 293, baseType: !3093, size: 64, offset: 384)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3090, file: !198, line: 294, baseType: !3093, size: 64, offset: 448)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3090, file: !198, line: 295, baseType: !3093, size: 64, offset: 512)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3090, file: !198, line: 296, baseType: !3093, size: 64, offset: 576)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3090, file: !198, line: 297, baseType: !3093, size: 64, offset: 640)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3090, file: !198, line: 298, baseType: !3093, size: 64, offset: 704)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3090, file: !198, line: 299, baseType: !3093, size: 64, offset: 768)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3090, file: !198, line: 300, baseType: !3093, size: 64, offset: 832)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3090, file: !198, line: 301, baseType: !3093, size: 64, offset: 896)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3090, file: !198, line: 302, baseType: !3093, size: 64, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3090, file: !198, line: 303, baseType: !3093, size: 64, offset: 1024)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3090, file: !198, line: 304, baseType: !3093, size: 64, offset: 1088)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3090, file: !198, line: 305, baseType: !3093, size: 64, offset: 1152)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3090, file: !198, line: 306, baseType: !3093, size: 64, offset: 1216)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3090, file: !198, line: 307, baseType: !3093, size: 64, offset: 1280)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3090, file: !198, line: 308, baseType: !3093, size: 64, offset: 1344)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3090, file: !198, line: 309, baseType: !3093, size: 64, offset: 1408)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3058, file: !186, line: 714, baseType: !3119, size: 64, offset: 768)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3121)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3122, line: 80, size: 1344, elements: !3123)
!3122 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3187}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3121, file: !3122, line: 81, baseType: !23, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3121, file: !3122, line: 82, baseType: !23, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3121, file: !3122, line: 83, baseType: !1226, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3121, file: !3122, line: 84, baseType: !1226, size: 64, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3121, file: !3122, line: 85, baseType: !1226, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3121, file: !3122, line: 87, baseType: !3130, size: 64, offset: 320)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!28, !3057, !3133}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !180, line: 96, size: 1152, elements: !3135)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142, !3146, !3150, !3151, !3152, !3153, !3154, !3162, !3163, !3164, !3165, !3166, !3167}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3134, file: !180, line: 97, baseType: !23, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3134, file: !180, line: 98, baseType: !3119, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3134, file: !180, line: 100, baseType: !1133, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3134, file: !180, line: 101, baseType: !23, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3134, file: !180, line: 103, baseType: !582, size: 8, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3134, file: !180, line: 104, baseType: !179, size: 32, offset: 288)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3134, file: !180, line: 106, baseType: !3143, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3145)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !180, line: 106, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3134, file: !180, line: 107, baseType: !3147, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3149)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !180, line: 107, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3134, file: !180, line: 109, baseType: !3093, size: 64, offset: 448)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3134, file: !180, line: 110, baseType: !3084, size: 64, offset: 512)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3134, file: !180, line: 111, baseType: !3093, size: 64, offset: 576)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3134, file: !180, line: 112, baseType: !3084, size: 64, offset: 640)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3134, file: !180, line: 113, baseType: !3155, size: 64, offset: 704)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!28, !3057, !3158}
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !198, line: 60, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !198, line: 58, size: 32, elements: !3160)
!3160 = !{!3161}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3159, file: !198, line: 59, baseType: !28, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3134, file: !180, line: 114, baseType: !3093, size: 64, offset: 768)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3134, file: !180, line: 115, baseType: !1226, size: 64, offset: 832)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3134, file: !180, line: 116, baseType: !1226, size: 64, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3134, file: !180, line: 118, baseType: !3088, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3134, file: !180, line: 119, baseType: !3084, size: 64, offset: 1024)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3134, file: !180, line: 121, baseType: !3168, size: 64, offset: 1088)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !180, line: 121, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3121, file: !3122, line: 88, baseType: !3074, size: 64, offset: 384)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3121, file: !3122, line: 89, baseType: !3093, size: 64, offset: 448)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3121, file: !3122, line: 90, baseType: !3084, size: 64, offset: 512)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3121, file: !3122, line: 91, baseType: !3084, size: 64, offset: 576)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3121, file: !3122, line: 92, baseType: !3084, size: 64, offset: 640)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3121, file: !3122, line: 94, baseType: !3093, size: 64, offset: 704)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3121, file: !3122, line: 95, baseType: !3093, size: 64, offset: 768)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3121, file: !3122, line: 97, baseType: !3155, size: 64, offset: 832)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3121, file: !3122, line: 98, baseType: !3093, size: 64, offset: 896)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3121, file: !3122, line: 100, baseType: !3093, size: 64, offset: 960)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3121, file: !3122, line: 102, baseType: !3093, size: 64, offset: 1024)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3121, file: !3122, line: 103, baseType: !3084, size: 64, offset: 1088)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3121, file: !3122, line: 105, baseType: !3088, size: 64, offset: 1152)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3121, file: !3122, line: 107, baseType: !3184, size: 64, offset: 1216)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3122, line: 107, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3121, file: !3122, line: 109, baseType: !582, size: 8, offset: 1280)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3058, file: !186, line: 715, baseType: !3133, size: 64, offset: 832)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3058, file: !186, line: 717, baseType: !26, size: 64, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3058, file: !186, line: 719, baseType: !26, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3058, file: !186, line: 721, baseType: !372, size: 256, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3058, file: !186, line: 725, baseType: !3193, size: 448, offset: 1280)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !186, line: 517, size: 448, elements: !3194)
!3194 = !{!3195, !3196, !3197, !3198}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3193, file: !186, line: 518, baseType: !103, size: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3193, file: !186, line: 519, baseType: !103, size: 128, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3193, file: !186, line: 520, baseType: !103, size: 128, offset: 256)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3193, file: !186, line: 521, baseType: !185, size: 32, offset: 384)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3058, file: !186, line: 726, baseType: !3200, size: 2496, offset: 1728)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !198, line: 663, size: 2496, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3246, !3247, !3248, !3249, !3250, !3251, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3352, !3356}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3200, file: !198, line: 664, baseType: !3158, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3200, file: !198, line: 665, baseType: !11, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3200, file: !198, line: 666, baseType: !11, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3200, file: !198, line: 667, baseType: !582, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3200, file: !198, line: 668, baseType: !582, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3200, file: !198, line: 669, baseType: !582, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3200, file: !198, line: 670, baseType: !582, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3200, file: !198, line: 671, baseType: !582, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3200, file: !198, line: 672, baseType: !582, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3200, file: !198, line: 673, baseType: !582, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3200, file: !198, line: 674, baseType: !582, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3200, file: !198, line: 675, baseType: !546, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3200, file: !198, line: 676, baseType: !65, size: 32, offset: 96)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3200, file: !198, line: 678, baseType: !103, size: 128, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3200, file: !198, line: 679, baseType: !754, size: 256, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3200, file: !198, line: 680, baseType: !3218, size: 64, offset: 512)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3220, line: 43, size: 1536, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3229, !3230, !3231, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3219, file: !3220, line: 44, baseType: !23, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3219, file: !3220, line: 45, baseType: !28, size: 32, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3219, file: !3220, line: 46, baseType: !103, size: 128, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3219, file: !3220, line: 47, baseType: !65, size: 32, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3219, file: !3220, line: 48, baseType: !3227, size: 64, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !198, line: 629, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3219, file: !3220, line: 49, baseType: !2408, size: 320, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3219, file: !3220, line: 50, baseType: !45, size: 64, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3219, file: !3220, line: 51, baseType: !3232, size: 64, offset: 768)
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3233, line: 29, baseType: !369)
!3233 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3219, file: !3220, line: 52, baseType: !3232, size: 64, offset: 832)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3219, file: !3220, line: 53, baseType: !3232, size: 64, offset: 896)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3219, file: !3220, line: 54, baseType: !3232, size: 64, offset: 960)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3219, file: !3220, line: 55, baseType: !3232, size: 64, offset: 1024)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3219, file: !3220, line: 56, baseType: !45, size: 64, offset: 1088)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3219, file: !3220, line: 57, baseType: !45, size: 64, offset: 1152)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3219, file: !3220, line: 58, baseType: !45, size: 64, offset: 1216)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3219, file: !3220, line: 59, baseType: !45, size: 64, offset: 1280)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3219, file: !3220, line: 60, baseType: !45, size: 64, offset: 1344)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3219, file: !3220, line: 61, baseType: !3057, size: 64, offset: 1408)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3219, file: !3220, line: 62, baseType: !582, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3219, file: !3220, line: 63, baseType: !582, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3200, file: !198, line: 681, baseType: !582, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3200, file: !198, line: 682, baseType: !582, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3200, file: !198, line: 683, baseType: !582, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3200, file: !198, line: 684, baseType: !11, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3200, file: !198, line: 685, baseType: !11, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3200, file: !198, line: 690, baseType: !3252, size: 512, offset: 640)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !193, line: 118, size: 512, elements: !3253)
!3253 = !{!3254, !3260, !3261, !3266, !3314, !3315, !3316, !3317}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3252, file: !193, line: 119, baseType: !3255, size: 256)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3256, line: 9, size: 256, elements: !3257)
!3256 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3255, file: !3256, line: 10, baseType: !513, size: 192, align: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3255, file: !3256, line: 11, baseType: !3232, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3252, file: !193, line: 120, baseType: !3232, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3252, file: !193, line: 121, baseType: !3262, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!192, !3265}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3252, file: !193, line: 122, baseType: !3267, size: 64, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !193, line: 159, size: 512, align: 512, elements: !3269)
!3269 = !{!3270, !3295, !3296, !3299, !3304, !3305, !3309, !3313}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3268, file: !193, line: 160, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !193, line: 215, size: 4608, align: 512, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3272, file: !193, line: 216, baseType: !377, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3272, file: !193, line: 217, baseType: !11, size: 32, offset: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3272, file: !193, line: 218, baseType: !11, size: 32, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3272, file: !193, line: 219, baseType: !11, size: 32, offset: 96)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3272, file: !193, line: 220, baseType: !11, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3272, file: !193, line: 221, baseType: !11, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3272, file: !193, line: 222, baseType: !11, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3272, file: !193, line: 223, baseType: !11, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3272, file: !193, line: 224, baseType: !11, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3272, file: !193, line: 226, baseType: !11, size: 32, offset: 160)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3272, file: !193, line: 227, baseType: !32, size: 16, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3272, file: !193, line: 228, baseType: !32, size: 16, offset: 208)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3272, file: !193, line: 229, baseType: !11, size: 32, offset: 224)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3272, file: !193, line: 235, baseType: !3232, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3272, file: !193, line: 236, baseType: !3265, size: 64, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3272, file: !193, line: 237, baseType: !3232, size: 64, offset: 384)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3272, file: !193, line: 238, baseType: !3265, size: 64, offset: 448)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3272, file: !193, line: 239, baseType: !3292, size: 4096, align: 512, offset: 512)
!3292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 4096, align: 512, elements: !3293)
!3293 = !{!3294}
!3294 = !DISubrange(count: 8)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3268, file: !193, line: 161, baseType: !11, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3268, file: !193, line: 162, baseType: !3297, size: 32, offset: 96)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !31, line: 32, baseType: !3298)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !43, line: 96, baseType: !28)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3268, file: !193, line: 163, baseType: !3300, size: 32, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !859, line: 274, baseType: !3301)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !859, line: 274, size: 32, elements: !3302)
!3302 = !{!3303}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3301, file: !859, line: 274, baseType: !863, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3268, file: !193, line: 164, baseType: !3265, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3268, file: !193, line: 165, baseType: !3306, size: 128, offset: 256)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3256, line: 14, size: 128, elements: !3307)
!3307 = !{!3308}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3306, file: !3256, line: 15, baseType: !1259, size: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3268, file: !193, line: 166, baseType: !3310, size: 64, offset: 384)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!3232}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3268, file: !193, line: 167, baseType: !3232, size: 64, offset: 448)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3252, file: !193, line: 123, baseType: !89, size: 8, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3252, file: !193, line: 124, baseType: !89, size: 8, offset: 456)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3252, file: !193, line: 125, baseType: !89, size: 8, offset: 464)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3252, file: !193, line: 126, baseType: !89, size: 8, offset: 472)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3200, file: !198, line: 691, baseType: !489, size: 64, offset: 1152)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3200, file: !198, line: 692, baseType: !715, size: 256, offset: 1216)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3200, file: !198, line: 693, baseType: !60, size: 192, offset: 1472)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3200, file: !198, line: 694, baseType: !3227, size: 64, offset: 1664)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3200, file: !198, line: 695, baseType: !55, size: 32, offset: 1728)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3200, file: !198, line: 696, baseType: !55, size: 32, offset: 1760)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3200, file: !198, line: 697, baseType: !11, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3200, file: !198, line: 698, baseType: !11, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3200, file: !198, line: 699, baseType: !11, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3200, file: !198, line: 700, baseType: !11, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3200, file: !198, line: 701, baseType: !11, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3200, file: !198, line: 702, baseType: !11, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3200, file: !198, line: 703, baseType: !582, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3200, file: !198, line: 704, baseType: !11, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3200, file: !198, line: 705, baseType: !11, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3200, file: !198, line: 706, baseType: !11, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3200, file: !198, line: 707, baseType: !11, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3200, file: !198, line: 708, baseType: !11, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3200, file: !198, line: 709, baseType: !11, size: 32, offset: 1824)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3200, file: !198, line: 710, baseType: !197, size: 32, offset: 1856)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3200, file: !198, line: 711, baseType: !205, size: 32, offset: 1888)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3200, file: !198, line: 712, baseType: !205, size: 32, offset: 1920)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3200, file: !198, line: 713, baseType: !28, size: 32, offset: 1952)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3200, file: !198, line: 714, baseType: !28, size: 32, offset: 1984)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3200, file: !198, line: 715, baseType: !489, size: 64, offset: 2048)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3200, file: !198, line: 716, baseType: !489, size: 64, offset: 2112)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3200, file: !198, line: 717, baseType: !489, size: 64, offset: 2176)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3200, file: !198, line: 718, baseType: !489, size: 64, offset: 2240)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3200, file: !198, line: 720, baseType: !3347, size: 64, offset: 2304)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !198, line: 632, size: 64, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3348, file: !198, line: 633, baseType: !65, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3348, file: !198, line: 634, baseType: !11, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3200, file: !198, line: 721, baseType: !3353, size: 64, offset: 2368)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{null, !3057, !506}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3200, file: !198, line: 722, baseType: !3357, size: 64, offset: 2432)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !198, line: 722, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3058, file: !186, line: 727, baseType: !3360, size: 64, offset: 4224)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !198, line: 742, size: 1792, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3369, !3370, !3371}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3361, file: !198, line: 743, baseType: !3090, size: 1472)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3361, file: !198, line: 744, baseType: !3093, size: 64, offset: 1472)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3361, file: !198, line: 745, baseType: !3366, size: 64, offset: 1536)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{null, !3057, !582}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3361, file: !198, line: 746, baseType: !3093, size: 64, offset: 1600)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3361, file: !198, line: 747, baseType: !3084, size: 64, offset: 1664)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3361, file: !198, line: 748, baseType: !3084, size: 64, offset: 1728)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3058, file: !186, line: 736, baseType: !3373, size: 128, offset: 4288)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !186, line: 529, size: 128, elements: !3374)
!3374 = !{!3375, !3379}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3373, file: !186, line: 531, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3378, line: 13, flags: DIFlagFwdDecl)
!3378 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3373, file: !186, line: 532, baseType: !3380, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !186, line: 49, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3058, file: !186, line: 738, baseType: !3383, size: 64, offset: 4416)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3385)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !186, line: 738, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3058, file: !186, line: 740, baseType: !3387, size: 64, offset: 4480)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3058, file: !186, line: 741, baseType: !489, size: 64, offset: 4544)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3058, file: !186, line: 746, baseType: !489, size: 64, offset: 4608)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3058, file: !186, line: 747, baseType: !3391, size: 64, offset: 4672)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3393)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !186, line: 747, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3058, file: !186, line: 749, baseType: !3395, size: 64, offset: 4736)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !186, line: 428, size: 128, elements: !3397)
!3397 = !{!3398, !3399, !3400}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3396, file: !186, line: 433, baseType: !11, size: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3396, file: !186, line: 434, baseType: !11, size: 32, offset: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3396, file: !186, line: 435, baseType: !45, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3058, file: !186, line: 751, baseType: !103, size: 128, offset: 4800)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3058, file: !186, line: 762, baseType: !3403, size: 64, offset: 4928)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !186, line: 762, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3058, file: !186, line: 770, baseType: !3406, offset: 4992)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3407, line: 5, elements: !1418)
!3407 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3058, file: !186, line: 772, baseType: !3409, size: 64, offset: 4992)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3411, line: 18, flags: DIFlagFwdDecl)
!3411 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3058, file: !186, line: 773, baseType: !3413, size: 64, offset: 5056)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3122, line: 22, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3058, file: !186, line: 776, baseType: !28, size: 32, offset: 5120)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3058, file: !186, line: 778, baseType: !966, size: 32, offset: 5152)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3058, file: !186, line: 779, baseType: !546, size: 32, offset: 5184)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3058, file: !186, line: 781, baseType: !65, size: 32, offset: 5216)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3058, file: !186, line: 782, baseType: !103, size: 128, offset: 5248)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3058, file: !186, line: 784, baseType: !3421, size: 64, offset: 5376)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3424, line: 52, size: 768, elements: !3425)
!3424 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3434, !3438, !3439, !3440, !3441, !3445, !3449}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3423, file: !3424, line: 53, baseType: !23, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3423, file: !3424, line: 55, baseType: !1226, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3423, file: !3424, line: 56, baseType: !1226, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3423, file: !3424, line: 58, baseType: !3074, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3423, file: !3424, line: 59, baseType: !3431, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!593, !3077, !3007}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3423, file: !3424, line: 61, baseType: !3435, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !3421}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3423, file: !3424, line: 62, baseType: !3084, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3423, file: !3424, line: 64, baseType: !3093, size: 64, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3423, file: !3424, line: 66, baseType: !1991, size: 64, offset: 512)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3423, file: !3424, line: 67, baseType: !3442, size: 64, offset: 576)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!1513, !3077}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3423, file: !3424, line: 69, baseType: !3446, size: 64, offset: 640)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{null, !3077, !779, !780}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3423, file: !3424, line: 71, baseType: !3088, size: 64, offset: 704)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3058, file: !186, line: 785, baseType: !1226, size: 64, offset: 5440)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3058, file: !186, line: 787, baseType: !3084, size: 64, offset: 5504)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3058, file: !186, line: 788, baseType: !3453, size: 64, offset: 5568)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !186, line: 46, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3058, file: !186, line: 789, baseType: !3456, size: 64, offset: 5632)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !186, line: 48, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3058, file: !186, line: 791, baseType: !3459, size: 64, offset: 5696)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !186, line: 597, size: 128, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465, !3466}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3460, file: !186, line: 598, baseType: !212, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3460, file: !186, line: 599, baseType: !221, size: 32, offset: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3460, file: !186, line: 600, baseType: !226, size: 32, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3460, file: !186, line: 601, baseType: !582, size: 8, offset: 96)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3460, file: !186, line: 602, baseType: !582, size: 8, offset: 104)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3058, file: !186, line: 793, baseType: !231, size: 32, offset: 5760)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3058, file: !186, line: 795, baseType: !582, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3058, file: !186, line: 796, baseType: !582, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3058, file: !186, line: 797, baseType: !582, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3058, file: !186, line: 798, baseType: !582, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3058, file: !186, line: 799, baseType: !582, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !3024, file: !174, line: 451, baseType: !205, size: 32, offset: 1536)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !3024, file: !174, line: 457, baseType: !45, size: 64, offset: 1600)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !3024, file: !174, line: 459, baseType: !11, size: 32, offset: 1664)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !3024, file: !174, line: 466, baseType: !11, size: 32, offset: 1696)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3024, file: !174, line: 468, baseType: !2408, size: 320, offset: 1728)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !3024, file: !174, line: 469, baseType: !715, size: 256, offset: 2048)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !3024, file: !174, line: 471, baseType: !55, size: 32, offset: 2304)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !3024, file: !174, line: 473, baseType: !3481, size: 64, offset: 2368)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !174, line: 473, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3024, file: !174, line: 475, baseType: !103, size: 128, offset: 2432)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !3024, file: !174, line: 477, baseType: !3485, size: 64, offset: 2560)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !3486)
!3486 = !{!3487}
!3487 = !DISubrange(count: 1)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !3024, file: !174, line: 478, baseType: !2867, size: 64, offset: 2624)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !3024, file: !174, line: 479, baseType: !103, size: 128, offset: 2688)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !3024, file: !174, line: 480, baseType: !372, size: 256, offset: 2816)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !3024, file: !174, line: 483, baseType: !3492, size: 960, offset: 3072)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !174, line: 300, size: 960, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3492, file: !174, line: 301, baseType: !237, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3492, file: !174, line: 302, baseType: !45, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3492, file: !174, line: 303, baseType: !45, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3492, file: !174, line: 305, baseType: !11, size: 32, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3492, file: !174, line: 306, baseType: !11, size: 32, offset: 224)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3492, file: !174, line: 307, baseType: !11, size: 32, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3492, file: !174, line: 308, baseType: !11, size: 32, offset: 288)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3492, file: !174, line: 309, baseType: !11, size: 32, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3492, file: !174, line: 310, baseType: !11, size: 32, offset: 352)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3492, file: !174, line: 311, baseType: !11, size: 32, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3492, file: !174, line: 312, baseType: !11, size: 32, offset: 416)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3492, file: !174, line: 313, baseType: !11, size: 32, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3492, file: !174, line: 314, baseType: !11, size: 32, offset: 480)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3492, file: !174, line: 315, baseType: !11, size: 32, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3492, file: !174, line: 316, baseType: !11, size: 32, offset: 544)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3492, file: !174, line: 317, baseType: !11, size: 32, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3492, file: !174, line: 318, baseType: !11, size: 32, offset: 608)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3492, file: !174, line: 319, baseType: !11, size: 32, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3492, file: !174, line: 320, baseType: !11, size: 32, offset: 672)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3492, file: !174, line: 321, baseType: !11, size: 32, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3492, file: !174, line: 322, baseType: !11, size: 32, offset: 736)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3492, file: !174, line: 323, baseType: !11, size: 32, offset: 768)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3492, file: !174, line: 325, baseType: !32, size: 16, offset: 800)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3492, file: !174, line: 326, baseType: !32, size: 16, offset: 816)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3492, file: !174, line: 327, baseType: !32, size: 16, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3492, file: !174, line: 329, baseType: !93, size: 8, offset: 848)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3492, file: !174, line: 330, baseType: !93, size: 8, offset: 856)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3492, file: !174, line: 331, baseType: !93, size: 8, offset: 864)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3492, file: !174, line: 332, baseType: !241, size: 32, offset: 896)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3492, file: !174, line: 339, baseType: !11, size: 32, offset: 928)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !3024, file: !174, line: 485, baseType: !11, size: 32, offset: 4032)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3024, file: !174, line: 487, baseType: !28, size: 32, offset: 4064)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !3024, file: !174, line: 489, baseType: !3527, size: 64, offset: 4096)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !174, line: 31, flags: DIFlagFwdDecl)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !3024, file: !174, line: 494, baseType: !3530, size: 64, offset: 4160)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !174, line: 35, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !3024, file: !174, line: 495, baseType: !103, size: 128, offset: 4224)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !3024, file: !174, line: 497, baseType: !103, size: 128, offset: 4352)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !3024, file: !174, line: 498, baseType: !65, size: 32, offset: 4480)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !3024, file: !174, line: 499, baseType: !2465, size: 704, offset: 4544)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !3024, file: !174, line: 501, baseType: !372, size: 256, offset: 5248)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !3024, file: !174, line: 502, baseType: !372, size: 256, offset: 5504)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !3024, file: !174, line: 508, baseType: !103, size: 128, offset: 5760)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !3024, file: !174, line: 509, baseType: !65, size: 32, offset: 5888)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !3024, file: !174, line: 511, baseType: !28, size: 32, offset: 5920)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3024, file: !174, line: 517, baseType: !350, size: 128, align: 64, offset: 5952)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !3024, file: !174, line: 518, baseType: !60, size: 192, offset: 6080)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !3024, file: !174, line: 523, baseType: !372, size: 256, offset: 6272)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !3024, file: !174, line: 525, baseType: !28, size: 32, offset: 6528)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !3024, file: !174, line: 527, baseType: !3546, size: 64, offset: 6592)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !174, line: 527, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !3024, file: !174, line: 528, baseType: !103, size: 128, offset: 6656)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !3024, file: !174, line: 530, baseType: !852, size: 64, offset: 6784)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !3024, file: !174, line: 531, baseType: !852, size: 64, offset: 6848)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !3024, file: !174, line: 532, baseType: !852, size: 64, offset: 6912)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !3024, file: !174, line: 536, baseType: !372, size: 256, offset: 6976)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !3024, file: !174, line: 538, baseType: !582, size: 8, offset: 7232)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2819, file: !174, line: 147, baseType: !26, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2819, file: !174, line: 149, baseType: !2883, size: 1984, offset: 768)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2819, file: !174, line: 151, baseType: !28, size: 32, offset: 2752)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2819, file: !174, line: 152, baseType: !45, size: 64, offset: 2816)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2819, file: !174, line: 161, baseType: !372, size: 256, offset: 2880)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2819, file: !174, line: 162, baseType: !11, size: 32, offset: 3136)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2819, file: !174, line: 164, baseType: !3561, size: 64, offset: 3200)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !247, line: 163, size: 6848, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3610, !3611, !3612, !3613, !3615, !3616, !3617}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3562, file: !247, line: 164, baseType: !489, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3562, file: !247, line: 165, baseType: !513, size: 192, align: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3562, file: !247, line: 166, baseType: !103, size: 128, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3562, file: !247, line: 167, baseType: !45, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3562, file: !247, line: 168, baseType: !45, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3562, file: !247, line: 170, baseType: !2158, size: 32, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3562, file: !247, line: 171, baseType: !11, size: 32, offset: 544)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3562, file: !247, line: 172, baseType: !11, size: 32, offset: 576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3562, file: !247, line: 173, baseType: !11, size: 32, offset: 608)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3562, file: !247, line: 173, baseType: !11, size: 32, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3562, file: !247, line: 179, baseType: !363, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3562, file: !247, line: 184, baseType: !45, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3562, file: !247, line: 186, baseType: !3577, size: 4672, offset: 832)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !247, line: 105, size: 4672, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3603, !3604, !3605, !3606, !3607, !3608, !3609}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3577, file: !247, line: 106, baseType: !3561, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3577, file: !247, line: 108, baseType: !45, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3577, file: !247, line: 109, baseType: !45, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3577, file: !247, line: 111, baseType: !103, size: 128, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3577, file: !247, line: 112, baseType: !103, size: 128, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3577, file: !247, line: 113, baseType: !103, size: 128, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3577, file: !247, line: 114, baseType: !103, size: 128, offset: 576)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3577, file: !247, line: 115, baseType: !65, size: 32, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3577, file: !247, line: 117, baseType: !55, size: 32, offset: 736)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3577, file: !247, line: 118, baseType: !1481, size: 1280, offset: 768)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3577, file: !247, line: 120, baseType: !45, size: 64, offset: 2048)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3577, file: !247, line: 121, baseType: !45, size: 64, offset: 2112)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3577, file: !247, line: 122, baseType: !45, size: 64, offset: 2176)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3577, file: !247, line: 123, baseType: !45, size: 64, offset: 2240)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3577, file: !247, line: 124, baseType: !45, size: 64, offset: 2304)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3577, file: !247, line: 132, baseType: !45, size: 64, offset: 2368)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3577, file: !247, line: 133, baseType: !45, size: 64, offset: 2432)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3577, file: !247, line: 135, baseType: !3597, size: 384, offset: 2496)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3598, line: 76, size: 384, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3599 = !{!3600, !3601, !3602}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3597, file: !3598, line: 78, baseType: !641, size: 320)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3597, file: !3598, line: 80, baseType: !11, size: 32, offset: 320)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3597, file: !3598, line: 81, baseType: !377, size: 32, offset: 352)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3577, file: !247, line: 136, baseType: !28, size: 32, offset: 2880)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3577, file: !247, line: 137, baseType: !246, size: 32, offset: 2912)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3577, file: !247, line: 139, baseType: !65, size: 32, offset: 2944)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3577, file: !247, line: 140, baseType: !103, size: 128, offset: 3008)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3577, file: !247, line: 141, baseType: !2465, size: 704, offset: 3136)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3577, file: !247, line: 142, baseType: !2465, size: 704, offset: 3840)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3577, file: !247, line: 144, baseType: !103, size: 128, offset: 4544)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3562, file: !247, line: 187, baseType: !103, size: 128, offset: 5504)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3562, file: !247, line: 193, baseType: !60, size: 192, offset: 5632)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3562, file: !247, line: 195, baseType: !3057, size: 64, offset: 5824)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3562, file: !247, line: 196, baseType: !3614, size: 512, offset: 5888)
!3614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1189)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3562, file: !247, line: 197, baseType: !3057, size: 64, offset: 6400)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3562, file: !247, line: 199, baseType: !2408, size: 320, offset: 6464)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3562, file: !247, line: 202, baseType: !852, size: 64, offset: 6784)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2819, file: !174, line: 165, baseType: !1146, size: 512, offset: 3264)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2819, file: !174, line: 166, baseType: !1152, size: 64, offset: 3776)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2819, file: !174, line: 168, baseType: !103, size: 128, offset: 3840)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2819, file: !174, line: 170, baseType: !3622, size: 64, offset: 3968)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !174, line: 170, flags: DIFlagFwdDecl)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2819, file: !174, line: 171, baseType: !55, size: 32, offset: 4032)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2819, file: !174, line: 172, baseType: !3626, size: 64, offset: 4096)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !174, line: 104, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2819, file: !174, line: 197, baseType: !3629, size: 64, offset: 4160)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !174, line: 197, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2819, file: !174, line: 199, baseType: !28, size: 32, offset: 4224)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2819, file: !174, line: 200, baseType: !3633, size: 64, offset: 4288)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !174, line: 105, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2819, file: !174, line: 201, baseType: !2436, offset: 4352)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2819, file: !174, line: 202, baseType: !489, size: 64, offset: 4352)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2819, file: !174, line: 203, baseType: !2947, size: 32, offset: 4416)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2819, file: !174, line: 209, baseType: !3639, size: 64, offset: 4480)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !174, line: 384, size: 576, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3645}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3640, file: !174, line: 385, baseType: !1146, size: 512)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3640, file: !174, line: 386, baseType: !582, size: 8, offset: 512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3640, file: !174, line: 387, baseType: !11, size: 32, offset: 544)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3640, file: !174, line: 388, baseType: !3646, offset: 576)
!3646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3647, elements: !448)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !174, line: 378, size: 640, elements: !3648)
!3648 = !{!3649, !3650, !3651}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3647, file: !174, line: 379, baseType: !1146, size: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3647, file: !174, line: 380, baseType: !1834, size: 64, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3647, file: !174, line: 381, baseType: !1834, size: 64, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2812, file: !2813, line: 44, baseType: !3023, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2812, file: !2813, line: 45, baseType: !3654, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2813, line: 45, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2812, file: !2813, line: 46, baseType: !45, size: 64, offset: 320)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2812, file: !2813, line: 47, baseType: !582, size: 8, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2812, file: !2813, line: 48, baseType: !89, size: 8, offset: 392)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2812, file: !2813, line: 49, baseType: !582, size: 8, offset: 400)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2812, file: !2813, line: 50, baseType: !582, size: 8, offset: 408)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2812, file: !2813, line: 51, baseType: !966, size: 32, offset: 416)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2812, file: !2813, line: 52, baseType: !55, size: 32, offset: 448)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2812, file: !2813, line: 53, baseType: !65, size: 32, offset: 480)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2812, file: !2813, line: 54, baseType: !892, size: 64, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2812, file: !2813, line: 55, baseType: !26, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2812, file: !2813, line: 56, baseType: !26, size: 64, offset: 640)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2812, file: !2813, line: 57, baseType: !3668, size: 64, offset: 704)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !174, line: 1477, size: 128, elements: !3671)
!3671 = !{!3672, !3676}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3670, file: !174, line: 1478, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !2811, !582}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3670, file: !174, line: 1483, baseType: !3677, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !2811}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2812, file: !2813, line: 58, baseType: !372, size: 256, offset: 768)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2812, file: !2813, line: 60, baseType: !28, size: 32, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2812, file: !2813, line: 61, baseType: !28, size: 32, offset: 1056)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2812, file: !2813, line: 62, baseType: !1152, size: 64, offset: 1088)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2812, file: !2813, line: 65, baseType: !372, size: 256, offset: 1152)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2812, file: !2813, line: 66, baseType: !1100, size: 64, offset: 1408)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2812, file: !2813, line: 68, baseType: !3687, size: 64, offset: 1472)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !174, line: 63, size: 808, elements: !3689)
!3689 = !{!3690, !3694}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3688, file: !174, line: 64, baseType: !3691, size: 296)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3692)
!3692 = !{!3693}
!3693 = !DISubrange(count: 37)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3688, file: !174, line: 65, baseType: !3695, size: 512, offset: 296)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 512, elements: !1189)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2812, file: !2813, line: 72, baseType: !582, size: 8, offset: 1536)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2812, file: !2813, line: 77, baseType: !3058, size: 5824, offset: 1600)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1101, file: !163, line: 1226, baseType: !3699, size: 64, offset: 1664)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !174, line: 1495, size: 128, elements: !3701)
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3700, file: !174, line: 1496, baseType: !2811, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3700, file: !174, line: 1497, baseType: !26, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1101, file: !163, line: 1227, baseType: !3561, size: 64, offset: 1728)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1101, file: !163, line: 1228, baseType: !3706, size: 64, offset: 1792)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !163, line: 1228, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1101, file: !163, line: 1229, baseType: !430, size: 128, offset: 1856)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1101, file: !163, line: 1230, baseType: !11, size: 32, offset: 1984)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1101, file: !163, line: 1231, baseType: !3711, size: 2496, offset: 2048)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !168, line: 521, size: 2496, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3717, !3749}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3711, file: !168, line: 522, baseType: !11, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3711, file: !168, line: 523, baseType: !521, size: 320, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3711, file: !168, line: 524, baseType: !3716, size: 192, offset: 384)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 192, elements: !409)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3711, file: !168, line: 525, baseType: !3718, size: 1728, offset: 576)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3719, size: 1728, elements: !409)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !168, line: 222, size: 576, elements: !3720)
!3720 = !{!3721, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3719, file: !168, line: 223, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !168, line: 445, size: 256, elements: !3724)
!3724 = !{!3725, !3726, !3739, !3740}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3723, file: !168, line: 446, baseType: !28, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3723, file: !168, line: 447, baseType: !3727, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !168, line: 312, size: 512, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3729, file: !168, line: 313, baseType: !2562, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3729, file: !168, line: 314, baseType: !2562, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3729, file: !168, line: 315, baseType: !2562, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3729, file: !168, line: 316, baseType: !2562, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3729, file: !168, line: 317, baseType: !2671, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3729, file: !168, line: 318, baseType: !2671, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3729, file: !168, line: 319, baseType: !2671, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3729, file: !168, line: 320, baseType: !2701, size: 64, offset: 448)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3723, file: !168, line: 448, baseType: !1133, size: 64, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3723, file: !168, line: 449, baseType: !3722, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3719, file: !168, line: 224, baseType: !28, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3719, file: !168, line: 226, baseType: !103, size: 128, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3719, file: !168, line: 227, baseType: !45, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3719, file: !168, line: 228, baseType: !11, size: 32, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3719, file: !168, line: 229, baseType: !11, size: 32, offset: 352)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3719, file: !168, line: 230, baseType: !2639, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3719, file: !168, line: 231, baseType: !2639, size: 64, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3719, file: !168, line: 232, baseType: !26, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !168, line: 526, baseType: !3750, size: 192, offset: 2304)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3727, size: 192, elements: !409)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1101, file: !163, line: 1233, baseType: !3752, size: 2368, offset: 4544)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !163, line: 1184, size: 2368, elements: !3753)
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3752, file: !163, line: 1185, baseType: !32, size: 16)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3752, file: !163, line: 1186, baseType: !32, size: 16, offset: 16)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3752, file: !163, line: 1187, baseType: !3757, size: 2304, offset: 64)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3758, size: 2304, elements: !409)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3759, line: 12, size: 768, elements: !3760)
!3759 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3760 = !{!3761, !3769, !3770, !5624, !5625}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3758, file: !3759, line: 13, baseType: !3762, size: 384)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3763, line: 17, size: 384, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3764 = !{!3765, !3766, !3767, !3768}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3762, file: !3763, line: 18, baseType: !28, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3762, file: !3763, line: 19, baseType: !28, size: 32, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3762, file: !3763, line: 20, baseType: !60, size: 192, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3762, file: !3763, line: 22, baseType: !350, size: 128, align: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3758, file: !3759, line: 14, baseType: !2261, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3758, file: !3759, line: 15, baseType: !3771, size: 64, offset: 448)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3772, line: 16, size: 64, elements: !3773)
!3772 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3773 = !{!3774}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3771, file: !3772, line: 17, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !3777, line: 746, size: 58368, elements: !3778)
!3777 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!3778 = !{!3779, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3859, !3870, !3890, !3894, !3897, !3928, !3929, !3930, !3931, !3939, !3941, !3942, !3943, !3944, !3945, !3946, !3957, !3958, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3975, !3976, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4064, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4112, !4118, !4119, !4120, !4121, !4122, !4126, !4129, !4136, !4141, !4144, !4147, !4561, !4849, !5047, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5085, !5086, !5087, !5096, !5104, !5105, !5106, !5107, !5108, !5113, !5114, !5115, !5118, !5119, !5121, !5123, !5126, !5134, !5137, !5138, !5224, !5225, !5226, !5227, !5228, !5234, !5235, !5236, !5237, !5238, !5239, !5242, !5245, !5246, !5249, !5250, !5251, !5254, !5255, !5256, !5257, !5258, !5259, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5291, !5294, !5300, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5382, !5384, !5385, !5386, !5387, !5388, !5389, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3776, file: !3777, line: 752, baseType: !3780, size: 192)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3781, line: 56, size: 192, elements: !3782)
!3781 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3782 = !{!3783, !3784, !3785, !3786}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3780, file: !3781, line: 57, baseType: !45, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3780, file: !3781, line: 58, baseType: !45, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3780, file: !3781, line: 59, baseType: !546, size: 32, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3780, file: !3781, line: 61, baseType: !546, size: 32, offset: 160)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3776, file: !3777, line: 754, baseType: !11, size: 32, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3776, file: !3777, line: 767, baseType: !26, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3776, file: !3777, line: 768, baseType: !417, size: 32, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !3777, line: 770, baseType: !11, size: 32, offset: 352)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3776, file: !3777, line: 771, baseType: !11, size: 32, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3776, file: !3777, line: 774, baseType: !28, size: 32, offset: 416)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3776, file: !3777, line: 775, baseType: !3794, size: 128, offset: 448)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3795, line: 58, size: 128, elements: !3796)
!3795 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3796 = !{!3797, !3798, !3803, !3804}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3794, file: !3795, line: 59, baseType: !344, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, scope: !3794, file: !3795, line: 60, baseType: !3799, size: 32, offset: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3794, file: !3795, line: 60, size: 32, elements: !3800)
!3800 = !{!3801, !3802}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3799, file: !3795, line: 61, baseType: !11, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3799, file: !3795, line: 62, baseType: !55, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3794, file: !3795, line: 65, baseType: !99, size: 16, offset: 96)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3794, file: !3795, line: 65, baseType: !99, size: 16, offset: 112)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3776, file: !3777, line: 776, baseType: !11, size: 32, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3776, file: !3777, line: 777, baseType: !45, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3776, file: !3777, line: 778, baseType: !3775, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3776, file: !3777, line: 787, baseType: !28, size: 32, offset: 768)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3776, file: !3777, line: 788, baseType: !28, size: 32, offset: 800)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3776, file: !3777, line: 790, baseType: !28, size: 32, offset: 832)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3776, file: !3777, line: 792, baseType: !28, size: 32, offset: 864)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3776, file: !3777, line: 793, baseType: !28, size: 32, offset: 896)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3776, file: !3777, line: 794, baseType: !28, size: 32, offset: 928)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3776, file: !3777, line: 795, baseType: !11, size: 32, offset: 960)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3776, file: !3777, line: 797, baseType: !3816, size: 2048, offset: 1024)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !3777, line: 551, size: 2048, elements: !3817)
!3817 = !{!3818, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3838, !3841, !3842, !3843}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3816, file: !3777, line: 553, baseType: !3819, size: 128)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !3777, line: 411, size: 128, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3819, file: !3777, line: 412, baseType: !45, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3819, file: !3777, line: 413, baseType: !546, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3816, file: !3777, line: 554, baseType: !513, size: 192, align: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3816, file: !3777, line: 555, baseType: !489, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3816, file: !3777, line: 556, baseType: !489, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3816, file: !3777, line: 558, baseType: !103, size: 128, offset: 448)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3816, file: !3777, line: 559, baseType: !11, size: 32, offset: 576)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3816, file: !3777, line: 561, baseType: !489, size: 64, offset: 640)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3816, file: !3777, line: 562, baseType: !489, size: 64, offset: 704)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3816, file: !3777, line: 563, baseType: !489, size: 64, offset: 768)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3816, file: !3777, line: 564, baseType: !489, size: 64, offset: 832)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3816, file: !3777, line: 565, baseType: !369, size: 64, offset: 896)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3816, file: !3777, line: 566, baseType: !489, size: 64, offset: 960)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3816, file: !3777, line: 568, baseType: !489, size: 64, offset: 1024)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3816, file: !3777, line: 571, baseType: !28, size: 32, offset: 1088)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3816, file: !3777, line: 572, baseType: !3837, size: 64, offset: 1152)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3816, file: !3777, line: 574, baseType: !3839, size: 64, offset: 1216)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !3777, line: 49, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3816, file: !3777, line: 576, baseType: !3839, size: 64, offset: 1280)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3816, file: !3777, line: 578, baseType: !45, size: 64, offset: 1344)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3816, file: !3777, line: 588, baseType: !3844, size: 512, align: 512, offset: 1536)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !3777, line: 497, size: 512, align: 512, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3844, file: !3777, line: 498, baseType: !489, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3844, file: !3777, line: 499, baseType: !489, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3844, file: !3777, line: 500, baseType: !489, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3844, file: !3777, line: 501, baseType: !546, size: 32, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3844, file: !3777, line: 502, baseType: !546, size: 32, offset: 224)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3844, file: !3777, line: 503, baseType: !45, size: 64, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3844, file: !3777, line: 504, baseType: !45, size: 64, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3844, file: !3777, line: 505, baseType: !45, size: 64, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3844, file: !3777, line: 506, baseType: !3855, size: 64, align: 64, offset: 448)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !3777, line: 445, size: 64, align: 64, elements: !3856)
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3855, file: !3777, line: 446, baseType: !11, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3855, file: !3777, line: 447, baseType: !11, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3776, file: !3777, line: 798, baseType: !3860, size: 384, offset: 3072)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !3777, line: 592, size: 384, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867, !3868}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3860, file: !3777, line: 593, baseType: !103, size: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3860, file: !3777, line: 594, baseType: !45, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3860, file: !3777, line: 595, baseType: !45, size: 64, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3860, file: !3777, line: 596, baseType: !11, size: 32, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3860, file: !3777, line: 597, baseType: !32, size: 16, offset: 288)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3860, file: !3777, line: 598, baseType: !32, size: 16, offset: 304)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3860, file: !3777, line: 600, baseType: !3869, size: 64, offset: 320)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3776, file: !3777, line: 799, baseType: !3871, size: 1792, offset: 3456)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !3777, line: 610, size: 1792, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3871, file: !3777, line: 611, baseType: !513, size: 192, align: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3871, file: !3777, line: 618, baseType: !489, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3871, file: !3777, line: 619, baseType: !489, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3871, file: !3777, line: 620, baseType: !489, size: 64, offset: 320)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3871, file: !3777, line: 621, baseType: !489, size: 64, offset: 384)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3871, file: !3777, line: 622, baseType: !489, size: 64, offset: 448)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3871, file: !3777, line: 629, baseType: !369, size: 64, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3871, file: !3777, line: 630, baseType: !489, size: 64, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3871, file: !3777, line: 631, baseType: !11, size: 32, offset: 640)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3871, file: !3777, line: 653, baseType: !11, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3871, file: !3777, line: 654, baseType: !11, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3871, file: !3777, line: 655, baseType: !11, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3871, file: !3777, line: 656, baseType: !11, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3871, file: !3777, line: 662, baseType: !3252, size: 512, offset: 704)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3871, file: !3777, line: 671, baseType: !3252, size: 512, offset: 1216)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3871, file: !3777, line: 679, baseType: !3889, size: 64, offset: 1728)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3776, file: !3777, line: 800, baseType: !3891, size: 64, offset: 5248)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !3777, line: 800, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3776, file: !3777, line: 809, baseType: !3895, size: 64, offset: 5312)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !3777, line: 70, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3776, file: !3777, line: 825, baseType: !3898, size: 2048, align: 512, offset: 5632)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !3777, line: 509, size: 2048, align: 512, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3898, file: !3777, line: 511, baseType: !489, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3898, file: !3777, line: 512, baseType: !489, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3898, file: !3777, line: 513, baseType: !489, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3898, file: !3777, line: 514, baseType: !489, size: 64, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3898, file: !3777, line: 515, baseType: !489, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3898, file: !3777, line: 516, baseType: !489, size: 64, offset: 320)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3898, file: !3777, line: 518, baseType: !489, size: 64, offset: 384)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3898, file: !3777, line: 519, baseType: !489, size: 64, offset: 448)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3898, file: !3777, line: 520, baseType: !369, size: 64, offset: 512)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3898, file: !3777, line: 522, baseType: !489, size: 64, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3898, file: !3777, line: 523, baseType: !489, size: 64, offset: 640)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3898, file: !3777, line: 524, baseType: !369, size: 64, offset: 704)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3898, file: !3777, line: 526, baseType: !369, size: 64, offset: 768)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3898, file: !3777, line: 527, baseType: !489, size: 64, offset: 832)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3898, file: !3777, line: 529, baseType: !489, size: 64, offset: 896)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3898, file: !3777, line: 530, baseType: !489, size: 64, offset: 960)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3898, file: !3777, line: 531, baseType: !489, size: 64, offset: 1024)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3898, file: !3777, line: 532, baseType: !489, size: 64, offset: 1088)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3898, file: !3777, line: 533, baseType: !489, size: 64, offset: 1152)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3898, file: !3777, line: 535, baseType: !489, size: 64, offset: 1216)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3898, file: !3777, line: 536, baseType: !489, size: 64, offset: 1280)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3898, file: !3777, line: 537, baseType: !489, size: 64, offset: 1344)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3898, file: !3777, line: 538, baseType: !489, size: 64, offset: 1408)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3898, file: !3777, line: 539, baseType: !489, size: 64, offset: 1472)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3898, file: !3777, line: 540, baseType: !489, size: 64, offset: 1536)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3898, file: !3777, line: 541, baseType: !489, size: 64, offset: 1600)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3898, file: !3777, line: 542, baseType: !489, size: 64, offset: 1664)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3898, file: !3777, line: 543, baseType: !489, size: 64, offset: 1728)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3776, file: !3777, line: 833, baseType: !11, size: 32, offset: 7680)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3776, file: !3777, line: 836, baseType: !11, size: 32, offset: 7712)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3776, file: !3777, line: 837, baseType: !28, size: 32, offset: 7744)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3776, file: !3777, line: 838, baseType: !3932, size: 64, offset: 7808)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3934)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3935, line: 19, baseType: !3936)
!3935 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3935, line: 19, size: 64, elements: !3937)
!3937 = !{!3938}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3936, file: !3935, line: 19, baseType: !3485, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3776, file: !3777, line: 839, baseType: !3940, size: 64, offset: 7872)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3776, file: !3777, line: 840, baseType: !3934, size: 64, offset: 7936)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3776, file: !3777, line: 841, baseType: !26, size: 64, offset: 8000)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3776, file: !3777, line: 843, baseType: !32, size: 16, offset: 8064)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3776, file: !3777, line: 845, baseType: !32, size: 16, offset: 8080)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3776, file: !3777, line: 848, baseType: !28, size: 32, offset: 8096)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3776, file: !3777, line: 849, baseType: !3947, size: 32, offset: 8128)
!3947 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !3777, line: 718, size: 32, elements: !3948)
!3948 = !{!3949, !3956}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3947, file: !3777, line: 724, baseType: !3950, size: 32)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3947, file: !3777, line: 719, size: 32, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3950, file: !3777, line: 720, baseType: !89, size: 8)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3950, file: !3777, line: 721, baseType: !89, size: 8, offset: 8)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3950, file: !3777, line: 722, baseType: !89, size: 8, offset: 16)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3950, file: !3777, line: 723, baseType: !89, size: 8, offset: 24)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3947, file: !3777, line: 725, baseType: !546, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3776, file: !3777, line: 850, baseType: !103, size: 128, offset: 8192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3776, file: !3777, line: 851, baseType: !3959, size: 64, offset: 8320)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !3777, line: 60, flags: DIFlagFwdDecl)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3776, file: !3777, line: 855, baseType: !45, size: 64, offset: 8384)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3776, file: !3777, line: 856, baseType: !89, size: 8, offset: 8448)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3776, file: !3777, line: 857, baseType: !89, size: 8, offset: 8456)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3776, file: !3777, line: 858, baseType: !28, size: 32, offset: 8480)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3776, file: !3777, line: 859, baseType: !103, size: 128, offset: 8512)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3776, file: !3777, line: 860, baseType: !28, size: 32, offset: 8640)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3776, file: !3777, line: 861, baseType: !103, size: 128, offset: 8704)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3776, file: !3777, line: 873, baseType: !3969, size: 256, offset: 8832)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !3777, line: 376, size: 256, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3974}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3969, file: !3777, line: 381, baseType: !45, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3969, file: !3777, line: 384, baseType: !491, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3969, file: !3777, line: 389, baseType: !491, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3969, file: !3777, line: 392, baseType: !491, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3776, file: !3777, line: 875, baseType: !103, size: 128, offset: 9088)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3776, file: !3777, line: 877, baseType: !3977, size: 320, offset: 9216)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3978, line: 86, size: 320, elements: !3979)
!3978 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3979 = !{!3980, !3981, !3982}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3977, file: !3978, line: 87, baseType: !28, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3977, file: !3978, line: 88, baseType: !103, size: 128, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3977, file: !3978, line: 89, baseType: !103, size: 128, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3776, file: !3777, line: 878, baseType: !513, size: 192, align: 64, offset: 9536)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3776, file: !3777, line: 881, baseType: !1397, size: 64, offset: 9728)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3776, file: !3777, line: 882, baseType: !1397, size: 64, offset: 9792)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3776, file: !3777, line: 884, baseType: !28, size: 32, offset: 9856)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3776, file: !3777, line: 885, baseType: !28, size: 32, offset: 9888)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3776, file: !3777, line: 886, baseType: !28, size: 32, offset: 9920)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3776, file: !3777, line: 888, baseType: !28, size: 32, offset: 9952)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3776, file: !3777, line: 890, baseType: !45, size: 64, offset: 9984)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3776, file: !3777, line: 893, baseType: !11, size: 32, offset: 10048)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3776, file: !3777, line: 896, baseType: !11, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3776, file: !3777, line: 897, baseType: !11, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3776, file: !3777, line: 898, baseType: !11, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3776, file: !3777, line: 899, baseType: !11, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3776, file: !3777, line: 919, baseType: !11, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3776, file: !3777, line: 922, baseType: !11, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3776, file: !3777, line: 923, baseType: !11, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3776, file: !3777, line: 925, baseType: !11, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3776, file: !3777, line: 939, baseType: !11, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3776, file: !3777, line: 941, baseType: !11, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3776, file: !3777, line: 944, baseType: !11, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3776, file: !3777, line: 956, baseType: !11, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3776, file: !3777, line: 962, baseType: !11, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3776, file: !3777, line: 966, baseType: !11, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3776, file: !3777, line: 969, baseType: !45, size: 64, offset: 10176)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3776, file: !3777, line: 971, baseType: !4008, size: 448, offset: 10240)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !259, line: 25, size: 448, elements: !4009)
!4009 = !{!4010, !4011, !4016}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4008, file: !259, line: 26, baseType: !45, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4008, file: !259, line: 27, baseType: !4012, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!816, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !4008, file: !259, line: 28, baseType: !4017, size: 320, offset: 128)
!4017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4008, file: !259, line: 28, size: 320, elements: !4018)
!4018 = !{!4019, !4029, !4054}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4017, file: !259, line: 37, baseType: !4020, size: 320)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4017, file: !259, line: 30, size: 320, elements: !4021)
!4021 = !{!4022, !4024, !4025, !4026, !4027, !4028}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4020, file: !259, line: 31, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4020, file: !259, line: 32, baseType: !546, size: 32, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4020, file: !259, line: 33, baseType: !546, size: 32, offset: 96)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4020, file: !259, line: 34, baseType: !546, size: 32, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4020, file: !259, line: 35, baseType: !489, size: 64, offset: 192)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4020, file: !259, line: 36, baseType: !4023, size: 64, offset: 256)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4017, file: !259, line: 47, baseType: !4030, size: 192)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4017, file: !259, line: 39, size: 192, elements: !4031)
!4031 = !{!4032, !4033, !4034, !4053}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4030, file: !259, line: 40, baseType: !3297, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4030, file: !259, line: 41, baseType: !258, size: 32, offset: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !4030, file: !259, line: 42, baseType: !4035, size: 64, offset: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4030, file: !259, line: 42, size: 64, elements: !4036)
!4036 = !{!4037, !4045}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4035, file: !259, line: 43, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4040, line: 7, size: 128, elements: !4041)
!4040 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4041 = !{!4042, !4044}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4039, file: !4040, line: 8, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !43, line: 93, baseType: !49)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4039, file: !4040, line: 9, baseType: !49, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4035, file: !259, line: 44, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4048, line: 7, size: 64, elements: !4049)
!4048 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4049 = !{!4050, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4047, file: !4048, line: 8, baseType: !4051, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4048, line: 5, baseType: !506)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4047, file: !4048, line: 9, baseType: !506, size: 32, offset: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4030, file: !259, line: 46, baseType: !489, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4017, file: !259, line: 55, baseType: !4055, size: 256)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4017, file: !259, line: 49, size: 256, elements: !4056)
!4056 = !{!4057, !4060, !4061, !4062, !4063}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4055, file: !259, line: 50, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !259, line: 14, flags: DIFlagFwdDecl)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4055, file: !259, line: 51, baseType: !28, size: 32, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4055, file: !259, line: 52, baseType: !28, size: 32, offset: 96)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4055, file: !259, line: 53, baseType: !45, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4055, file: !259, line: 54, baseType: !45, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3776, file: !3777, line: 973, baseType: !4065, size: 32, offset: 10688)
!4065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !31, line: 27, baseType: !4066)
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !43, line: 28, baseType: !28)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3776, file: !3777, line: 974, baseType: !4065, size: 32, offset: 10720)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3776, file: !3777, line: 978, baseType: !45, size: 64, offset: 10752)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3776, file: !3777, line: 987, baseType: !3775, size: 64, offset: 10816)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3776, file: !3777, line: 990, baseType: !3775, size: 64, offset: 10880)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3776, file: !3777, line: 995, baseType: !103, size: 128, offset: 10944)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3776, file: !3777, line: 996, baseType: !103, size: 128, offset: 11072)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3776, file: !3777, line: 997, baseType: !3775, size: 64, offset: 11200)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3776, file: !3777, line: 1005, baseType: !103, size: 128, offset: 11264)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3776, file: !3777, line: 1006, baseType: !103, size: 128, offset: 11392)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3776, file: !3777, line: 1009, baseType: !413, size: 64, offset: 11520)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3776, file: !3777, line: 1010, baseType: !4078, size: 512, offset: 11584)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 512, elements: !435)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3776, file: !3777, line: 1011, baseType: !103, size: 128, offset: 12096)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3776, file: !3777, line: 1012, baseType: !103, size: 128, offset: 12224)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3776, file: !3777, line: 1014, baseType: !753, size: 64, offset: 12352)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3776, file: !3777, line: 1017, baseType: !2309, size: 64, offset: 12416)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3776, file: !3777, line: 1020, baseType: !2309, size: 64, offset: 12480)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3776, file: !3777, line: 1023, baseType: !26, size: 64, offset: 12544)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3776, file: !3777, line: 1025, baseType: !489, size: 64, offset: 12608)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3776, file: !3777, line: 1026, baseType: !489, size: 64, offset: 12672)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3776, file: !3777, line: 1031, baseType: !489, size: 64, offset: 12736)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3776, file: !3777, line: 1032, baseType: !4089, size: 192, offset: 12800)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !3777, line: 324, size: 192, elements: !4090)
!4090 = !{!4091, !4092, !4093}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4089, file: !3777, line: 326, baseType: !489, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4089, file: !3777, line: 327, baseType: !489, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4089, file: !3777, line: 328, baseType: !377, size: 32, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3776, file: !3777, line: 1041, baseType: !45, size: 64, offset: 12992)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3776, file: !3777, line: 1042, baseType: !45, size: 64, offset: 13056)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3776, file: !3777, line: 1045, baseType: !489, size: 64, offset: 13120)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3776, file: !3777, line: 1048, baseType: !489, size: 64, offset: 13184)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3776, file: !3777, line: 1051, baseType: !45, size: 64, offset: 13248)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3776, file: !3777, line: 1052, baseType: !45, size: 64, offset: 13312)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3776, file: !3777, line: 1055, baseType: !4101, size: 640, offset: 13376)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4102, line: 132, size: 640, elements: !4103)
!4102 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4103 = !{!4104, !4110, !4111}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4101, file: !4102, line: 133, baseType: !4105, size: 576)
!4105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4106, size: 576, elements: !409)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4102, line: 117, size: 192, elements: !4107)
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4106, file: !4102, line: 118, baseType: !489, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4106, file: !4102, line: 119, baseType: !3306, size: 128, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4101, file: !4102, line: 134, baseType: !11, size: 32, offset: 576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4101, file: !4102, line: 135, baseType: !11, size: 32, offset: 608)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3776, file: !3777, line: 1058, baseType: !4113, size: 448, offset: 14016)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4102, line: 144, size: 448, elements: !4114)
!4114 = !{!4115, !4116, !4117}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4113, file: !4102, line: 145, baseType: !350, size: 128, align: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4113, file: !4102, line: 146, baseType: !372, size: 256, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4113, file: !4102, line: 147, baseType: !11, size: 32, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3776, file: !3777, line: 1064, baseType: !462, size: 64, offset: 14464)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3776, file: !3777, line: 1067, baseType: !462, size: 64, offset: 14528)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3776, file: !3777, line: 1070, baseType: !462, size: 64, offset: 14592)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3776, file: !3777, line: 1074, baseType: !498, size: 64, offset: 14656)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3776, file: !3777, line: 1084, baseType: !4123, size: 128, offset: 14720)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4124)
!4124 = !{!4125}
!4125 = !DISubrange(count: 16)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3776, file: !3777, line: 1086, baseType: !4127, size: 64, offset: 14848)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !3777, line: 55, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3776, file: !3777, line: 1089, baseType: !4130, size: 64, offset: 14912)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4131, line: 12, size: 64, elements: !4132)
!4131 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4132 = !{!4133}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4130, file: !4131, line: 13, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4131, line: 8, flags: DIFlagFwdDecl)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3776, file: !3777, line: 1090, baseType: !4137, size: 128, offset: 14976)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4138, line: 13, size: 128, elements: !4139)
!4138 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4139 = !{!4140}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4137, file: !4138, line: 14, baseType: !103, size: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3776, file: !3777, line: 1097, baseType: !4142, size: 64, offset: 15104)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !3777, line: 50, flags: DIFlagFwdDecl)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3776, file: !3777, line: 1100, baseType: !4145, size: 64, offset: 15168)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !3777, line: 1100, flags: DIFlagFwdDecl)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3776, file: !3777, line: 1103, baseType: !4148, size: 64, offset: 15232)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !282, line: 52, size: 2560, elements: !4150)
!4150 = !{!4151, !4152, !4546, !4549, !4551, !4552, !4553, !4554, !4555, !4556}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "cached_refs", scope: !4149, file: !282, line: 54, baseType: !28, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4149, file: !282, line: 55, baseType: !4153, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_ring_ctx", file: !282, line: 196, size: 11776, elements: !4156)
!4156 = !{!4157, !4203, !4442, !4463, !4474, !4481, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4510, !4511, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545}
!4157 = !DIDerivedType(tag: DW_TAG_member, scope: !4155, file: !282, line: 198, baseType: !4158, size: 512, align: 512)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4155, file: !282, line: 198, size: 512, align: 512, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4201, !4202}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4158, file: !282, line: 199, baseType: !11, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "drain_next", scope: !4158, file: !282, line: 200, baseType: !11, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "restricted", scope: !4158, file: !282, line: 201, baseType: !11, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "off_timeout_used", scope: !4158, file: !282, line: 202, baseType: !11, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "drain_active", scope: !4158, file: !282, line: 203, baseType: !11, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "has_evfd", scope: !4158, file: !282, line: 204, baseType: !11, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "task_complete", scope: !4158, file: !282, line: 206, baseType: !11, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "lockless_cq", scope: !4158, file: !282, line: 207, baseType: !11, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_iopoll", scope: !4158, file: !282, line: 208, baseType: !11, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "poll_activated", scope: !4158, file: !282, line: 209, baseType: !11, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "drain_disabled", scope: !4158, file: !282, line: 210, baseType: !11, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "compat", scope: !4158, file: !282, line: 211, baseType: !11, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "submitter_task", scope: !4158, file: !282, line: 213, baseType: !3775, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "rings", scope: !4158, file: !282, line: 214, baseType: !4174, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_rings", file: !282, line: 83, size: 512, elements: !4176)
!4176 = !{!4177, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "sq", scope: !4175, file: !282, line: 92, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring", file: !282, line: 71, size: 64, elements: !4179)
!4179 = !{!4180, !4181}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4178, file: !282, line: 72, baseType: !546, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4178, file: !282, line: 73, baseType: !546, size: 32, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "cq", scope: !4175, file: !282, line: 92, baseType: !4178, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ring_mask", scope: !4175, file: !282, line: 97, baseType: !546, size: 32, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ring_mask", scope: !4175, file: !282, line: 97, baseType: !546, size: 32, offset: 160)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ring_entries", scope: !4175, file: !282, line: 99, baseType: !546, size: 32, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ring_entries", scope: !4175, file: !282, line: 99, baseType: !546, size: 32, offset: 224)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_dropped", scope: !4175, file: !282, line: 112, baseType: !546, size: 32, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_flags", scope: !4175, file: !282, line: 122, baseType: !55, size: 32, offset: 288)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "cq_flags", scope: !4175, file: !282, line: 129, baseType: !546, size: 32, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "cq_overflow", scope: !4175, file: !282, line: 143, baseType: !546, size: 32, offset: 352)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "cqes", scope: !4175, file: !282, line: 151, baseType: !4192, align: 512, offset: 512)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4193, elements: !448)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cqe", file: !4194, line: 380, size: 128, elements: !4195)
!4194 = !DIFile(filename: "./include/uapi/linux/io_uring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "536227ab7b095d934ae04a0fe4ddf870")
!4195 = !{!4196, !4197, !4198, !4199}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4193, file: !4194, line: 381, baseType: !490, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4193, file: !4194, line: 382, baseType: !507, size: 32, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4193, file: !4194, line: 383, baseType: !547, size: 32, offset: 96)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "big_cqe", scope: !4193, file: !4194, line: 389, baseType: !4200, offset: 128)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, elements: !448)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4158, file: !282, line: 215, baseType: !1338, size: 128, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "notify_method", scope: !4158, file: !282, line: 217, baseType: !264, size: 32, offset: 320)
!4203 = !DIDerivedType(tag: DW_TAG_member, scope: !4155, file: !282, line: 221, baseType: !4204, size: 2560, align: 512, offset: 512)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4155, file: !282, line: 221, size: 2560, align: 512, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4287, !4288, !4289, !4292, !4293, !4303, !4304, !4305, !4309, !4421, !4422, !4432, !4439, !4440, !4441}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "uring_lock", scope: !4204, file: !282, line: 222, baseType: !372, size: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_array", scope: !4204, file: !282, line: 235, baseType: !4023, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_sqes", scope: !4204, file: !282, line: 236, baseType: !4209, size: 64, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_sqe", file: !4194, line: 30, size: 512, elements: !4211)
!4211 = !{!4212, !4213, !4214, !4215, !4216, !4226, !4231, !4232, !4256, !4257, !4262, !4263, !4274}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4210, file: !4194, line: 31, baseType: !91, size: 8)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4210, file: !4194, line: 32, baseType: !91, size: 8, offset: 8)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4210, file: !4194, line: 33, baseType: !100, size: 16, offset: 16)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4210, file: !4194, line: 34, baseType: !507, size: 32, offset: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, scope: !4210, file: !4194, line: 35, baseType: !4217, size: 64, offset: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4210, file: !4194, line: 35, size: 64, elements: !4218)
!4218 = !{!4219, !4220, !4221}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !4217, file: !4194, line: 36, baseType: !490, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "addr2", scope: !4217, file: !4194, line: 37, baseType: !490, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, scope: !4217, file: !4194, line: 38, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4217, file: !4194, line: 38, size: 64, elements: !4223)
!4223 = !{!4224, !4225}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_op", scope: !4222, file: !4194, line: 39, baseType: !547, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4222, file: !4194, line: 40, baseType: !547, size: 32, offset: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, scope: !4210, file: !4194, line: 43, baseType: !4227, size: 64, offset: 128)
!4227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4210, file: !4194, line: 43, size: 64, elements: !4228)
!4228 = !{!4229, !4230}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4227, file: !4194, line: 44, baseType: !490, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "splice_off_in", scope: !4227, file: !4194, line: 45, baseType: !490, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4210, file: !4194, line: 47, baseType: !547, size: 32, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_member, scope: !4210, file: !4194, line: 48, baseType: !4233, size: 32, offset: 224)
!4233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4210, file: !4194, line: 48, size: 32, elements: !4234)
!4234 = !{!4235, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rw_flags", scope: !4233, file: !4194, line: 49, baseType: !4236, size: 32)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_rwf_t", file: !4237, line: 287, baseType: !28)
!4237 = !DIFile(filename: "./include/uapi/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05057ca18a14d66575ba14cfa16a2889")
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "fsync_flags", scope: !4233, file: !4194, line: 50, baseType: !547, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "poll_events", scope: !4233, file: !4194, line: 51, baseType: !100, size: 16)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "poll32_events", scope: !4233, file: !4194, line: 52, baseType: !547, size: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "sync_range_flags", scope: !4233, file: !4194, line: 53, baseType: !547, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !4233, file: !4194, line: 54, baseType: !547, size: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_flags", scope: !4233, file: !4194, line: 55, baseType: !547, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "accept_flags", scope: !4233, file: !4194, line: 56, baseType: !547, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_flags", scope: !4233, file: !4194, line: 57, baseType: !547, size: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "open_flags", scope: !4233, file: !4194, line: 58, baseType: !547, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "statx_flags", scope: !4233, file: !4194, line: 59, baseType: !547, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise_advice", scope: !4233, file: !4194, line: 60, baseType: !547, size: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "splice_flags", scope: !4233, file: !4194, line: 61, baseType: !547, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "rename_flags", scope: !4233, file: !4194, line: 62, baseType: !547, size: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "unlink_flags", scope: !4233, file: !4194, line: 63, baseType: !547, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "hardlink_flags", scope: !4233, file: !4194, line: 64, baseType: !547, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_flags", scope: !4233, file: !4194, line: 65, baseType: !547, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ring_flags", scope: !4233, file: !4194, line: 66, baseType: !547, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_flags", scope: !4233, file: !4194, line: 67, baseType: !547, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4210, file: !4194, line: 69, baseType: !490, size: 64, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_member, scope: !4210, file: !4194, line: 71, baseType: !4258, size: 16, offset: 320)
!4258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4210, file: !4194, line: 71, size: 16, elements: !4259)
!4259 = !{!4260, !4261}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "buf_index", scope: !4258, file: !4194, line: 73, baseType: !100, size: 16)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "buf_group", scope: !4258, file: !4194, line: 75, baseType: !100, size: 16)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !4210, file: !4194, line: 78, baseType: !100, size: 16, offset: 336)
!4263 = !DIDerivedType(tag: DW_TAG_member, scope: !4210, file: !4194, line: 79, baseType: !4264, size: 32, offset: 352)
!4264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4210, file: !4194, line: 79, size: 32, elements: !4265)
!4265 = !{!4266, !4267, !4268}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "splice_fd_in", scope: !4264, file: !4194, line: 80, baseType: !507, size: 32)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "file_index", scope: !4264, file: !4194, line: 81, baseType: !547, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, scope: !4264, file: !4194, line: 82, baseType: !4269, size: 32)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4264, file: !4194, line: 82, size: 32, elements: !4270)
!4270 = !{!4271, !4272}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "addr_len", scope: !4269, file: !4194, line: 83, baseType: !100, size: 16)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4269, file: !4194, line: 84, baseType: !4273, size: 16, offset: 16)
!4273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 16, elements: !3486)
!4274 = !DIDerivedType(tag: DW_TAG_member, scope: !4210, file: !4194, line: 87, baseType: !4275, size: 128, offset: 384)
!4275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4210, file: !4194, line: 87, size: 128, elements: !4276)
!4276 = !{!4277, !4283}
!4277 = !DIDerivedType(tag: DW_TAG_member, scope: !4275, file: !4194, line: 88, baseType: !4278, size: 128)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4275, file: !4194, line: 88, size: 128, elements: !4279)
!4279 = !{!4280, !4281}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "addr3", scope: !4278, file: !4194, line: 89, baseType: !490, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4278, file: !4194, line: 90, baseType: !4282, size: 64, offset: 64)
!4282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 64, elements: !3486)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4275, file: !4194, line: 96, baseType: !4284)
!4284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !4285)
!4285 = !{!4286}
!4286 = !DISubrange(count: 0)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "cached_sq_head", scope: !4204, file: !282, line: 237, baseType: !11, size: 32, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "sq_entries", scope: !4204, file: !282, line: 238, baseType: !11, size: 32, offset: 416)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node", scope: !4204, file: !282, line: 244, baseType: !4290, size: 64, offset: 448)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_rsrc_node", file: !282, line: 244, flags: DIFlagFwdDecl)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_seq", scope: !4204, file: !282, line: 245, baseType: !55, size: 32, offset: 512)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "file_table", scope: !4204, file: !282, line: 246, baseType: !4294, size: 192, offset: 576)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_file_table", file: !282, line: 31, size: 192, elements: !4295)
!4295 = !{!4296, !4301, !4302}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4294, file: !282, line: 32, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_fixed_file", file: !282, line: 26, size: 64, elements: !4299)
!4299 = !{!4300}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "file_ptr", scope: !4298, file: !282, line: 28, baseType: !45, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4294, file: !282, line: 33, baseType: !2504, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !4294, file: !282, line: 34, baseType: !11, size: 32, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_files", scope: !4204, file: !282, line: 247, baseType: !11, size: 32, offset: 768)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_bufs", scope: !4204, file: !282, line: 248, baseType: !11, size: 32, offset: 800)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "user_bufs", scope: !4204, file: !282, line: 249, baseType: !4306, size: 64, offset: 832)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_mapped_ubuf", file: !282, line: 249, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "submit_state", scope: !4204, file: !282, line: 251, baseType: !4310, size: 704, offset: 896)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_submit_state", file: !282, line: 167, size: 704, elements: !4311)
!4311 = !{!4312, !4317, !4322, !4407, !4408, !4409, !4410, !4411}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !4310, file: !282, line: 169, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work_node", file: !282, line: 10, size: 64, elements: !4314)
!4314 = !{!4315}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4313, file: !282, line: 11, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "compl_reqs", scope: !4310, file: !282, line: 171, baseType: !4318, size: 128, offset: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work_list", file: !282, line: 14, size: 128, elements: !4319)
!4319 = !{!4320, !4321}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4318, file: !282, line: 15, baseType: !4316, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4318, file: !282, line: 16, baseType: !4316, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4310, file: !282, line: 172, baseType: !4323, size: 128, offset: 192)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_submit_link", file: !282, line: 162, size: 128, elements: !4324)
!4324 = !{!4325, !4406}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4323, file: !282, line: 163, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_kiocb", file: !282, line: 528, size: 1920, elements: !4328)
!4328 = !{!4329, !4339, !4340, !4341, !4342, !4343, !4353, !4355, !4356, !4357, !4367, !4372, !4373, !4374, !4387, !4388, !4389, !4392, !4393, !4394, !4395, !4401}
!4329 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !282, line: 529, baseType: !4330, size: 512)
!4330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4327, file: !282, line: 529, size: 512, elements: !4331)
!4331 = !{!4332, !4333}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4330, file: !282, line: 536, baseType: !337, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4330, file: !282, line: 537, baseType: !4334, size: 512)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cmd_data", file: !282, line: 512, size: 512, elements: !4335)
!4335 = !{!4336, !4337}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4334, file: !282, line: 513, baseType: !337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4334, file: !282, line: 515, baseType: !4338, size: 448, offset: 64)
!4338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 448, elements: !1140)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4327, file: !282, line: 540, baseType: !89, size: 8, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll_completed", scope: !4327, file: !282, line: 542, baseType: !89, size: 8, offset: 520)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "buf_index", scope: !4327, file: !282, line: 548, baseType: !99, size: 16, offset: 528)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4327, file: !282, line: 549, baseType: !11, size: 32, offset: 544)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "cqe", scope: !4327, file: !282, line: 551, baseType: !4344, size: 128, offset: 576)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cqe", file: !282, line: 498, size: 128, elements: !4345)
!4345 = !{!4346, !4347, !4348}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !4344, file: !282, line: 499, baseType: !490, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4344, file: !282, line: 500, baseType: !507, size: 32, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !4344, file: !282, line: 502, baseType: !4349, size: 32, offset: 96)
!4349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4344, file: !282, line: 502, size: 32, elements: !4350)
!4350 = !{!4351, !4352}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4349, file: !282, line: 503, baseType: !547, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4349, file: !282, line: 504, baseType: !28, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4327, file: !282, line: 553, baseType: !4354, size: 64, offset: 704)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4327, file: !282, line: 554, baseType: !3775, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node", scope: !4327, file: !282, line: 556, baseType: !4290, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !282, line: 558, baseType: !4358, size: 64, offset: 896)
!4358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4327, file: !282, line: 558, size: 64, elements: !4359)
!4359 = !{!4360, !4361, !4364}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "imu", scope: !4358, file: !282, line: 560, baseType: !4307, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "kbuf", scope: !4358, file: !282, line: 563, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_buffer", file: !282, line: 563, flags: DIFlagFwdDecl)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "buf_list", scope: !4358, file: !282, line: 569, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_buffer_list", file: !282, line: 569, flags: DIFlagFwdDecl)
!4367 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !282, line: 572, baseType: !4368, size: 64, offset: 960)
!4368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4327, file: !282, line: 572, size: 64, elements: !4369)
!4369 = !{!4370, !4371}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "comp_list", scope: !4368, file: !282, line: 574, baseType: !4313, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "apoll_events", scope: !4368, file: !282, line: 576, baseType: !2136, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4327, file: !282, line: 578, baseType: !55, size: 32, offset: 1024)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "poll_refs", scope: !4327, file: !282, line: 579, baseType: !55, size: 32, offset: 1056)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "io_task_work", scope: !4327, file: !282, line: 580, baseType: !4375, size: 128, offset: 1088)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_task_work", file: !282, line: 493, size: 128, elements: !4376)
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4375, file: !282, line: 494, baseType: !344, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4375, file: !282, line: 495, baseType: !4379, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_req_tw_func_t", file: !282, line: 491, baseType: !4380)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !4326, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_tw_state", file: !282, line: 383, size: 8, elements: !4385)
!4385 = !{!4386}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4384, file: !282, line: 385, baseType: !582, size: 8)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tw", scope: !4327, file: !282, line: 581, baseType: !11, size: 32, offset: 1216)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "hash_node", scope: !4327, file: !282, line: 583, baseType: !430, size: 128, offset: 1280)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "apoll", scope: !4327, file: !282, line: 585, baseType: !4390, size: 64, offset: 1408)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DICompositeType(tag: DW_TAG_structure_type, name: "async_poll", file: !282, line: 585, flags: DIFlagFwdDecl)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "async_data", scope: !4327, file: !282, line: 587, baseType: !26, size: 64, offset: 1472)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4327, file: !282, line: 589, baseType: !4326, size: 64, offset: 1536)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "creds", scope: !4327, file: !282, line: 591, baseType: !462, size: 64, offset: 1600)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4327, file: !282, line: 592, baseType: !4396, size: 128, offset: 1664)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_work", file: !282, line: 19, size: 128, elements: !4397)
!4397 = !{!4398, !4399, !4400}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4396, file: !282, line: 20, baseType: !4313, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4396, file: !282, line: 21, baseType: !11, size: 32, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_seq", scope: !4396, file: !282, line: 23, baseType: !28, size: 32, offset: 96)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "big_cqe", scope: !4327, file: !282, line: 597, baseType: !4402, size: 128, offset: 1792)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !282, line: 594, size: 128, elements: !4403)
!4403 = !{!4404, !4405}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !4402, file: !282, line: 595, baseType: !489, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !4402, file: !282, line: 596, baseType: !489, size: 64, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4323, file: !282, line: 164, baseType: !4326, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "plug_started", scope: !4310, file: !282, line: 174, baseType: !582, size: 8, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "need_plug", scope: !4310, file: !282, line: 175, baseType: !582, size: 8, offset: 328)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "submit_nr", scope: !4310, file: !282, line: 176, baseType: !32, size: 16, offset: 336)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "cqes_count", scope: !4310, file: !282, line: 177, baseType: !11, size: 32, offset: 352)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !4310, file: !282, line: 178, baseType: !4412, size: 320, offset: 384)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !174, line: 976, size: 320, elements: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419, !4420}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4412, file: !174, line: 977, baseType: !2936, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4412, file: !174, line: 980, baseType: !2936, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4412, file: !174, line: 981, baseType: !32, size: 16, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4412, file: !174, line: 983, baseType: !32, size: 16, offset: 144)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4412, file: !174, line: 985, baseType: !582, size: 8, offset: 160)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4412, file: !174, line: 986, baseType: !582, size: 8, offset: 168)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4412, file: !174, line: 988, baseType: !103, size: 128, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "io_bl_xa", scope: !4204, file: !282, line: 253, baseType: !1091, size: 128, offset: 1600)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_table_locked", scope: !4204, file: !282, line: 255, baseType: !4423, size: 128, offset: 1728)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_hash_table", file: !282, line: 42, size: 128, elements: !4424)
!4424 = !{!4425, !4431}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "hbs", scope: !4423, file: !282, line: 43, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_hash_bucket", file: !282, line: 37, size: 512, align: 512, elements: !4428)
!4428 = !{!4429, !4430}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4427, file: !282, line: 38, baseType: !65, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4427, file: !282, line: 39, baseType: !426, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "hash_bits", scope: !4423, file: !282, line: 44, baseType: !11, size: 32, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "apoll_cache", scope: !4204, file: !282, line: 256, baseType: !4433, size: 192, offset: 1856)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_alloc_cache", file: !282, line: 189, size: 192, elements: !4434)
!4434 = !{!4435, !4436, !4437, !4438}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4433, file: !282, line: 190, baseType: !4313, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached", scope: !4433, file: !282, line: 191, baseType: !11, size: 32, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "max_cached", scope: !4433, file: !282, line: 192, baseType: !11, size: 32, offset: 96)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4433, file: !282, line: 193, baseType: !41, size: 64, offset: 128)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "netmsg_cache", scope: !4204, file: !282, line: 257, baseType: !4433, size: 192, offset: 2048)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll_list", scope: !4204, file: !282, line: 265, baseType: !4318, size: 128, offset: 2240)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "poll_multi_queue", scope: !4204, file: !282, line: 266, baseType: !582, size: 8, offset: 2368)
!4442 = !DIDerivedType(tag: DW_TAG_member, scope: !4155, file: !282, line: 269, baseType: !4443, size: 512, align: 512, offset: 3072)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4155, file: !282, line: 269, size: 512, align: 512, elements: !4444)
!4444 = !{!4445, !4447, !4448, !4449, !4450, !4462}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_cached", scope: !4443, file: !282, line: 274, baseType: !4446, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "cqe_sentinel", scope: !4443, file: !282, line: 275, baseType: !4446, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "cached_cq_tail", scope: !4443, file: !282, line: 277, baseType: !11, size: 32, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "cq_entries", scope: !4443, file: !282, line: 278, baseType: !11, size: 32, offset: 160)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "io_ev_fd", scope: !4443, file: !282, line: 279, baseType: !4451, size: 64, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_ev_fd", file: !282, line: 181, size: 320, elements: !4453)
!4453 = !{!4454, !4458, !4459, !4460, !4461}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "cq_ev_fd", scope: !4452, file: !282, line: 182, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfd_ctx", file: !4457, line: 29, flags: DIFlagFwdDecl)
!4457 = !DIFile(filename: "./include/linux/eventfd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06e91fc4ebd2cc8e97773c04a86a634b")
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "eventfd_async", scope: !4452, file: !282, line: 183, baseType: !11, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4452, file: !282, line: 184, baseType: !350, size: 128, align: 64, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4452, file: !282, line: 185, baseType: !55, size: 32, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4452, file: !282, line: 186, baseType: !55, size: 32, offset: 288)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "cq_extra", scope: !4443, file: !282, line: 280, baseType: !11, size: 32, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, scope: !4155, file: !282, line: 287, baseType: !4464, size: 512, align: 512, offset: 3584)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4155, file: !282, line: 287, size: 512, align: 512, elements: !4465)
!4465 = !{!4466, !4470, !4471, !4472, !4473}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "work_llist", scope: !4464, file: !282, line: 288, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !345, line: 56, size: 64, elements: !4468)
!4468 = !{!4469}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4467, file: !345, line: 57, baseType: !348, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "check_cq", scope: !4464, file: !282, line: 289, baseType: !45, size: 64, offset: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "cq_wait_nr", scope: !4464, file: !282, line: 290, baseType: !55, size: 32, offset: 128)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "cq_timeouts", scope: !4464, file: !282, line: 291, baseType: !55, size: 32, offset: 160)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "cq_wait", scope: !4464, file: !282, line: 292, baseType: !62, size: 192, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, scope: !4155, file: !282, line: 296, baseType: !4475, size: 512, align: 512, offset: 4096)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4155, file: !282, line: 296, size: 512, align: 512, elements: !4476)
!4476 = !{!4477, !4478, !4479, !4480}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_lock", scope: !4475, file: !282, line: 297, baseType: !65, size: 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_list", scope: !4475, file: !282, line: 298, baseType: !103, size: 128, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "ltimeout_list", scope: !4475, file: !282, line: 299, baseType: !103, size: 128, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "cq_last_tm_flush", scope: !4475, file: !282, line: 300, baseType: !11, size: 32, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cqes", scope: !4155, file: !282, line: 303, baseType: !4482, size: 2048, offset: 4608)
!4482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4193, size: 2048, elements: !4124)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "completion_lock", scope: !4155, file: !282, line: 305, baseType: !65, size: 32, offset: 6656)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "locked_free_list", scope: !4155, file: !282, line: 308, baseType: !4318, size: 128, offset: 6720)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "locked_free_nr", scope: !4155, file: !282, line: 309, baseType: !11, size: 32, offset: 6848)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_comp", scope: !4155, file: !282, line: 311, baseType: !103, size: 128, offset: 6912)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "cq_overflow_list", scope: !4155, file: !282, line: 312, baseType: !103, size: 128, offset: 7040)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_table", scope: !4155, file: !282, line: 313, baseType: !4423, size: 128, offset: 7168)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "sq_creds", scope: !4155, file: !282, line: 315, baseType: !462, size: 64, offset: 7296)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "sq_data", scope: !4155, file: !282, line: 316, baseType: !4491, size: 64, offset: 7360)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_sq_data", file: !282, line: 316, flags: DIFlagFwdDecl)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "sqo_sq_wait", scope: !4155, file: !282, line: 318, baseType: !62, size: 192, offset: 7424)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "sqd_list", scope: !4155, file: !282, line: 319, baseType: !103, size: 128, offset: 7616)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "file_alloc_start", scope: !4155, file: !282, line: 321, baseType: !11, size: 32, offset: 7744)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "file_alloc_end", scope: !4155, file: !282, line: 322, baseType: !11, size: 32, offset: 7776)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "personalities", scope: !4155, file: !282, line: 324, baseType: !1091, size: 128, offset: 7808)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "pers_next", scope: !4155, file: !282, line: 325, baseType: !546, size: 32, offset: 7936)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_cache", scope: !4155, file: !282, line: 327, baseType: !103, size: 128, offset: 8000)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "io_buf_list", scope: !4155, file: !282, line: 330, baseType: !426, size: 64, offset: 8128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wq", scope: !4155, file: !282, line: 333, baseType: !62, size: 192, offset: 8192)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "restrictions", scope: !4155, file: !282, line: 334, baseType: !4503, size: 192, offset: 8384)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_restriction", file: !282, line: 154, size: 192, elements: !4504)
!4504 = !{!4505, !4506, !4507, !4508, !4509}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "register_op", scope: !4503, file: !282, line: 155, baseType: !3485, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_op", scope: !4503, file: !282, line: 156, baseType: !3485, size: 64, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_flags_allowed", scope: !4503, file: !282, line: 157, baseType: !89, size: 8, offset: 128)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_flags_required", scope: !4503, file: !282, line: 158, baseType: !89, size: 8, offset: 136)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4503, file: !282, line: 159, baseType: !582, size: 8, offset: 144)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_ubuf", scope: !4155, file: !282, line: 337, baseType: !4307, size: 64, offset: 8576)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "file_data", scope: !4155, file: !282, line: 338, baseType: !4512, size: 64, offset: 8640)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_rsrc_data", file: !282, line: 338, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "buf_data", scope: !4155, file: !282, line: 339, baseType: !4512, size: 64, offset: 8704)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_ref_list", scope: !4155, file: !282, line: 342, baseType: !103, size: 128, offset: 8768)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_node_cache", scope: !4155, file: !282, line: 343, baseType: !4433, size: 192, offset: 8896)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_quiesce_wq", scope: !4155, file: !282, line: 344, baseType: !62, size: 192, offset: 9088)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_quiesce", scope: !4155, file: !282, line: 345, baseType: !11, size: 32, offset: 9280)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffers_pages", scope: !4155, file: !282, line: 347, baseType: !103, size: 128, offset: 9344)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "hash_map", scope: !4155, file: !282, line: 350, baseType: !4521, size: 64, offset: 9472)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq_hash", file: !4523, line: 27, size: 320, elements: !4524)
!4523 = !DIFile(filename: "io_uring/io-wq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ae69a0ce48125548eeefce29da87ee")
!4524 = !{!4525, !4526, !4527}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4522, file: !4523, line: 28, baseType: !417, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4522, file: !4523, line: 29, baseType: !45, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4522, file: !4523, line: 30, baseType: !62, size: 192, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !4155, file: !282, line: 353, baseType: !635, size: 64, offset: 9536)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "mm_account", scope: !4155, file: !282, line: 354, baseType: !1397, size: 64, offset: 9600)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "fallback_llist", scope: !4155, file: !282, line: 357, baseType: !4467, size: 64, offset: 9664)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "fallback_work", scope: !4155, file: !282, line: 358, baseType: !2465, size: 704, offset: 9728)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "exit_work", scope: !4155, file: !282, line: 359, baseType: !715, size: 256, offset: 10432)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "tctx_list", scope: !4155, file: !282, line: 360, baseType: !103, size: 128, offset: 10688)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ref_comp", scope: !4155, file: !282, line: 361, baseType: !754, size: 256, offset: 10816)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "iowq_limits", scope: !4155, file: !282, line: 364, baseType: !4536, size: 64, offset: 11072)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 64, elements: !2299)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "iowq_limits_set", scope: !4155, file: !282, line: 365, baseType: !582, size: 8, offset: 11136)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wq_task_work", scope: !4155, file: !282, line: 367, baseType: !350, size: 128, align: 64, offset: 11200)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "defer_list", scope: !4155, file: !282, line: 368, baseType: !103, size: 128, offset: 11328)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "sq_thread_idle", scope: !4155, file: !282, line: 369, baseType: !11, size: 32, offset: 11456)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "evfd_last_cq_tail", scope: !4155, file: !282, line: 371, baseType: !11, size: 32, offset: 11488)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "n_ring_pages", scope: !4155, file: !282, line: 377, baseType: !32, size: 16, offset: 11520)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "n_sqe_pages", scope: !4155, file: !282, line: 378, baseType: !32, size: 16, offset: 11536)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ring_pages", scope: !4155, file: !282, line: 379, baseType: !1824, size: 64, offset: 11584)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "sqe_pages", scope: !4155, file: !282, line: 380, baseType: !1824, size: 64, offset: 11648)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "io_wq", scope: !4149, file: !282, line: 56, baseType: !4547, size: 64, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_wq", file: !282, line: 56, flags: DIFlagFwdDecl)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "registered_rings", scope: !4149, file: !282, line: 57, baseType: !4550, size: 1024, offset: 192)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 1024, elements: !4124)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4149, file: !282, line: 59, baseType: !1091, size: 128, offset: 1216)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4149, file: !282, line: 60, baseType: !62, size: 192, offset: 1344)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "in_cancel", scope: !4149, file: !282, line: 61, baseType: !55, size: 32, offset: 1536)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_tracked", scope: !4149, file: !282, line: 62, baseType: !55, size: 32, offset: 1568)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "inflight", scope: !4149, file: !282, line: 63, baseType: !641, size: 320, offset: 1600)
!4556 = !DIDerivedType(tag: DW_TAG_member, scope: !4149, file: !282, line: 65, baseType: !4557, size: 512, align: 512, offset: 2048)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4149, file: !282, line: 65, size: 512, align: 512, elements: !4558)
!4558 = !{!4559, !4560}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !4557, file: !282, line: 66, baseType: !4467, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "task_work", scope: !4557, file: !282, line: 67, baseType: !350, size: 128, align: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3776, file: !3777, line: 1107, baseType: !4562, size: 64, offset: 15296)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4564, line: 31, size: 576, elements: !4565)
!4564 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4565 = !{!4566, !4567, !4570, !4573, !4576, !4577, !4580, !4583, !4584}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4563, file: !4564, line: 32, baseType: !417, size: 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4563, file: !4564, line: 33, baseType: !4568, size: 64, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4564, line: 9, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4563, file: !4564, line: 34, baseType: !4571, size: 64, offset: 128)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4564, line: 10, flags: DIFlagFwdDecl)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4563, file: !4564, line: 35, baseType: !4574, size: 64, offset: 192)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4564, line: 8, flags: DIFlagFwdDecl)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4563, file: !4564, line: 36, baseType: !446, size: 64, offset: 256)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4563, file: !4564, line: 37, baseType: !4578, size: 64, offset: 320)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !500, line: 34, flags: DIFlagFwdDecl)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4563, file: !4564, line: 38, baseType: !4581, size: 64, offset: 384)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4564, line: 38, flags: DIFlagFwdDecl)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4563, file: !4564, line: 39, baseType: !4581, size: 64, offset: 448)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4563, file: !4564, line: 40, baseType: !4585, size: 64, offset: 512)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4587, line: 771, size: 384, elements: !4588)
!4587 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4588 = !{!4589, !4590, !4591, !4592}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4586, file: !4587, line: 772, baseType: !699, size: 192)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4586, file: !4587, line: 773, baseType: !666, size: 64, offset: 192)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4586, file: !4587, line: 774, baseType: !801, size: 64, offset: 256)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4586, file: !4587, line: 775, baseType: !4593, size: 64, offset: 320)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4595, line: 209, size: 4736, elements: !4596)
!4595 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4596 = !{!4597, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4594, file: !4595, line: 215, baseType: !4598, size: 896)
!4598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4599, size: 896, elements: !5)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4595, line: 152, size: 1600, elements: !4601)
!4601 = !{!4602, !4703, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4827}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4600, file: !4595, line: 154, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4595, line: 389, size: 7872, elements: !4605)
!4605 = !{!4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4625, !4626, !4628, !4629, !4630, !4631, !4632, !4633, !4651, !4652, !4654, !4655, !4656, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4690, !4693, !4694, !4701}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4604, file: !4595, line: 391, baseType: !4600, size: 1600)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4604, file: !4595, line: 393, baseType: !45, size: 64, offset: 1600)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4604, file: !4595, line: 401, baseType: !28, size: 32, offset: 1664)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4604, file: !4595, line: 404, baseType: !28, size: 32, offset: 1696)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4604, file: !4595, line: 417, baseType: !28, size: 32, offset: 1728)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4604, file: !4595, line: 418, baseType: !28, size: 32, offset: 1760)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4604, file: !4595, line: 419, baseType: !28, size: 32, offset: 1792)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4604, file: !4595, line: 432, baseType: !28, size: 32, offset: 1824)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4604, file: !4595, line: 433, baseType: !28, size: 32, offset: 1856)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4604, file: !4595, line: 434, baseType: !28, size: 32, offset: 1888)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4604, file: !4595, line: 436, baseType: !28, size: 32, offset: 1920)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4604, file: !4595, line: 439, baseType: !11, size: 32, offset: 1952)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4604, file: !4595, line: 441, baseType: !2024, size: 64, offset: 1984)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4604, file: !4595, line: 442, baseType: !4620, size: 448, offset: 2048)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4595, line: 138, size: 448, elements: !4621)
!4621 = !{!4622, !4623, !4624}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4620, file: !4595, line: 140, baseType: !2024, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4620, file: !4595, line: 141, baseType: !45, size: 64, offset: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4620, file: !4595, line: 142, baseType: !2408, size: 320, offset: 128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4604, file: !4595, line: 443, baseType: !4620, size: 448, offset: 2496)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4604, file: !4595, line: 446, baseType: !4627, offset: 2944)
!4627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4620, elements: !4285)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4604, file: !4595, line: 455, baseType: !99, size: 16, offset: 2944)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4604, file: !4595, line: 456, baseType: !99, size: 16, offset: 2960)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4604, file: !4595, line: 457, baseType: !99, size: 16, offset: 2976)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4604, file: !4595, line: 458, baseType: !99, size: 16, offset: 2992)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4604, file: !4595, line: 461, baseType: !4598, size: 896, offset: 3008)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4604, file: !4595, line: 463, baseType: !4634, size: 64, offset: 3904)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4595, line: 537, size: 41664, elements: !4636)
!4636 = !{!4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4650}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4635, file: !4595, line: 538, baseType: !2044, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4635, file: !4595, line: 541, baseType: !11, size: 32, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4635, file: !4595, line: 544, baseType: !28, size: 32, offset: 96)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4635, file: !4595, line: 547, baseType: !103, size: 128, offset: 128)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4635, file: !4595, line: 548, baseType: !350, size: 128, align: 64, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4635, file: !4595, line: 555, baseType: !4604, size: 7872, offset: 384)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4635, file: !4595, line: 558, baseType: !4603, size: 64, offset: 8256)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4635, file: !4595, line: 561, baseType: !55, size: 32, offset: 8320)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4635, file: !4595, line: 564, baseType: !11, size: 32, offset: 8352)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4635, file: !4595, line: 567, baseType: !4647, size: 32768, offset: 8384)
!4647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !4648)
!4648 = !{!4649}
!4649 = !DISubrange(count: 4096)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4635, file: !4595, line: 570, baseType: !3614, size: 512, offset: 41152)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4604, file: !4595, line: 469, baseType: !103, size: 128, offset: 3968)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4604, file: !4595, line: 478, baseType: !4653, size: 1792, offset: 4096)
!4653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 1792, elements: !5)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4604, file: !4595, line: 487, baseType: !4603, size: 64, offset: 5888)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4604, file: !4595, line: 488, baseType: !4603, size: 64, offset: 5952)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4604, file: !4595, line: 491, baseType: !4657, size: 64, offset: 6016)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4595, line: 327, size: 896, elements: !4659)
!4659 = !{!4660, !4663, !4673, !4674, !4675, !4676, !4677}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4658, file: !4595, line: 332, baseType: !4661)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4662, line: 64, elements: !1418)
!4662 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4658, file: !4595, line: 333, baseType: !4664, size: 192)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4595, line: 299, size: 192, elements: !4665)
!4665 = !{!4666}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4664, file: !4595, line: 300, baseType: !4667, size: 192)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4668, line: 17, size: 192, elements: !4669)
!4668 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4669 = !{!4670, !4671, !4672}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4667, file: !4668, line: 18, baseType: !489, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4667, file: !4668, line: 19, baseType: !489, size: 64, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4667, file: !4668, line: 20, baseType: !491, size: 64, offset: 128)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4658, file: !4595, line: 339, baseType: !4664, size: 192, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4658, file: !4595, line: 347, baseType: !4664, size: 192, offset: 384)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4658, file: !4595, line: 353, baseType: !4664, size: 192, offset: 576)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4658, file: !4595, line: 366, baseType: !4603, size: 64, offset: 768)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4658, file: !4595, line: 367, baseType: !4603, size: 64, offset: 832)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4604, file: !4595, line: 492, baseType: !103, size: 128, offset: 6080)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4604, file: !4595, line: 495, baseType: !4664, size: 192, offset: 6208)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4604, file: !4595, line: 496, baseType: !4664, size: 192, offset: 6400)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4604, file: !4595, line: 497, baseType: !4089, size: 192, offset: 6592)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4604, file: !4595, line: 503, baseType: !103, size: 128, offset: 6784)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4604, file: !4595, line: 504, baseType: !372, size: 256, offset: 6912)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4604, file: !4595, line: 507, baseType: !60, size: 192, offset: 7168)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4604, file: !4595, line: 510, baseType: !715, size: 256, offset: 7360)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4604, file: !4595, line: 513, baseType: !4687, size: 64, offset: 7616)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4689, line: 214, elements: !1418)
!4689 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4604, file: !4595, line: 516, baseType: !4691, offset: 7680)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4692, line: 76, elements: !1418)
!4692 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4604, file: !4595, line: 519, baseType: !55, size: 32, offset: 7680)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4604, file: !4595, line: 522, baseType: !4695, size: 128, offset: 7712)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4595, line: 370, size: 128, elements: !4696)
!4696 = !{!4697, !4698, !4699, !4700}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4695, file: !4595, line: 372, baseType: !582, size: 8)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4695, file: !4595, line: 375, baseType: !28, size: 32, offset: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4695, file: !4595, line: 380, baseType: !28, size: 32, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4695, file: !4595, line: 386, baseType: !28, size: 32, offset: 96)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4604, file: !4595, line: 529, baseType: !4702, offset: 7872)
!4702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4603, elements: !448)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4600, file: !4595, line: 157, baseType: !4704, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4595, line: 669, size: 1984, elements: !4706)
!4706 = !{!4707, !4711, !4715, !4719, !4720, !4721, !4722, !4726, !4730, !4731, !4737, !4741, !4742, !4743, !4747, !4751, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4772, !4773, !4810, !4811}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4705, file: !4595, line: 670, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!4599, !4599}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4705, file: !4595, line: 671, baseType: !4712, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!28, !4599}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4705, file: !4595, line: 672, baseType: !4716, size: 64, offset: 128)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{null, !4599}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4705, file: !4595, line: 673, baseType: !4716, size: 64, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4705, file: !4595, line: 674, baseType: !4716, size: 64, offset: 256)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4705, file: !4595, line: 675, baseType: !4716, size: 64, offset: 320)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4705, file: !4595, line: 676, baseType: !4723, size: 64, offset: 384)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !4599, !28}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4705, file: !4595, line: 677, baseType: !4727, size: 64, offset: 448)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!28, !2069, !4599}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4705, file: !4595, line: 679, baseType: !4727, size: 64, offset: 512)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4705, file: !4595, line: 682, baseType: !4732, size: 64, offset: 576)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!28, !4735}
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4595, line: 30, flags: DIFlagFwdDecl)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4705, file: !4595, line: 683, baseType: !4738, size: 64, offset: 640)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{null, !4735}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4705, file: !4595, line: 684, baseType: !4738, size: 64, offset: 704)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4705, file: !4595, line: 685, baseType: !2517, size: 64, offset: 768)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4705, file: !4595, line: 686, baseType: !4744, size: 64, offset: 832)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!28, !3775, !4593}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4705, file: !4595, line: 688, baseType: !4748, size: 64, offset: 896)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{null, !3775, !4593}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4705, file: !4595, line: 689, baseType: !4752, size: 64, offset: 960)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{null, !3775}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4705, file: !4595, line: 690, baseType: !4752, size: 64, offset: 1024)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4705, file: !4595, line: 691, baseType: !4752, size: 64, offset: 1088)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4705, file: !4595, line: 692, baseType: !4716, size: 64, offset: 1152)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4705, file: !4595, line: 694, baseType: !582, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4705, file: !4595, line: 707, baseType: !582, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4705, file: !4595, line: 719, baseType: !582, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4705, file: !4595, line: 722, baseType: !28, size: 32, offset: 1248)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4705, file: !4595, line: 723, baseType: !23, size: 64, offset: 1280)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4705, file: !4595, line: 726, baseType: !23, size: 64, offset: 1344)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4705, file: !4595, line: 729, baseType: !4634, size: 64, offset: 1408)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4705, file: !4595, line: 732, baseType: !4766, size: 192, offset: 1472)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4767, line: 19, size: 192, elements: !4768)
!4767 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4768 = !{!4769, !4770, !4771}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4766, file: !4767, line: 20, baseType: !1091, size: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4766, file: !4767, line: 21, baseType: !11, size: 32, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4766, file: !4767, line: 22, baseType: !11, size: 32, offset: 160)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4705, file: !4595, line: 738, baseType: !103, size: 128, offset: 1664)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4705, file: !4595, line: 744, baseType: !4774, size: 64, offset: 1792)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4595, line: 580, size: 1728, elements: !4776)
!4776 = !{!4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4786, !4787, !4788, !4792, !4796, !4797, !4798, !4799, !4800, !4804, !4808, !4809}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4775, file: !4595, line: 586, baseType: !3614, size: 512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4775, file: !4595, line: 587, baseType: !45, size: 64, offset: 512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4775, file: !4595, line: 593, baseType: !41, size: 64, offset: 576)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4775, file: !4595, line: 596, baseType: !11, size: 32, offset: 640)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4775, file: !4595, line: 604, baseType: !11, size: 32, offset: 672)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4775, file: !4595, line: 610, baseType: !4704, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4775, file: !4595, line: 611, baseType: !103, size: 128, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4775, file: !4595, line: 612, baseType: !4785, size: 64, offset: 896)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4775, file: !4595, line: 614, baseType: !2060, size: 64, offset: 960)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4775, file: !4595, line: 615, baseType: !2118, size: 64, offset: 1024)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4775, file: !4595, line: 621, baseType: !4789, size: 64, offset: 1088)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!489, !4599, !4774}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4775, file: !4595, line: 625, baseType: !4793, size: 64, offset: 1152)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!369, !4599, !4774}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4775, file: !4595, line: 628, baseType: !2099, size: 64, offset: 1216)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4775, file: !4595, line: 631, baseType: !2087, size: 64, offset: 1280)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4775, file: !4595, line: 632, baseType: !2095, size: 64, offset: 1344)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4775, file: !4595, line: 633, baseType: !2091, size: 64, offset: 1408)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4775, file: !4595, line: 640, baseType: !4801, size: 64, offset: 1472)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!28, !4599, !4774, !489}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4775, file: !4595, line: 645, baseType: !4805, size: 64, offset: 1536)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!28, !4599, !4774, !369}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4775, file: !4595, line: 654, baseType: !2126, size: 64, offset: 1600)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4775, file: !4595, line: 657, baseType: !2133, size: 64, offset: 1664)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4705, file: !4595, line: 745, baseType: !4774, size: 64, offset: 1856)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4705, file: !4595, line: 754, baseType: !11, size: 32, offset: 1920)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4600, file: !4595, line: 160, baseType: !1338, size: 128, offset: 128)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4600, file: !4595, line: 163, baseType: !103, size: 128, offset: 256)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4600, file: !4595, line: 164, baseType: !103, size: 128, offset: 384)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4600, file: !4595, line: 167, baseType: !103, size: 128, offset: 512)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4600, file: !4595, line: 173, baseType: !28, size: 32, offset: 640)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4600, file: !4595, line: 175, baseType: !11, size: 32, offset: 672)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4600, file: !4595, line: 183, baseType: !489, size: 64, offset: 704)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4600, file: !4595, line: 189, baseType: !55, size: 32, offset: 768)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4600, file: !4595, line: 192, baseType: !715, size: 256, offset: 832)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4600, file: !4595, line: 193, baseType: !4822, size: 448, offset: 1088)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !716, line: 120, size: 448, elements: !4823)
!4823 = !{!4824, !4825, !4826}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4822, file: !716, line: 121, baseType: !715, size: 256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4822, file: !716, line: 122, baseType: !350, size: 128, align: 64, offset: 256)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4822, file: !716, line: 125, baseType: !2470, size: 64, offset: 384)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4600, file: !4595, line: 199, baseType: !4599, size: 64, offset: 1536)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4594, file: !4595, line: 218, baseType: !417, size: 32, offset: 896)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4594, file: !4595, line: 226, baseType: !4593, size: 64, offset: 960)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4594, file: !4595, line: 229, baseType: !4603, size: 64, offset: 1024)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4594, file: !4595, line: 232, baseType: !28, size: 32, offset: 1088)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4594, file: !4595, line: 241, baseType: !103, size: 128, offset: 1152)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4594, file: !4595, line: 242, baseType: !103, size: 128, offset: 1280)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4594, file: !4595, line: 243, baseType: !103, size: 128, offset: 1408)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4594, file: !4595, line: 246, baseType: !103, size: 128, offset: 1536)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4594, file: !4595, line: 255, baseType: !4653, size: 1792, offset: 1664)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4594, file: !4595, line: 258, baseType: !103, size: 128, offset: 3456)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4594, file: !4595, line: 259, baseType: !103, size: 128, offset: 3584)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4594, file: !4595, line: 265, baseType: !430, size: 128, offset: 3712)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4594, file: !4595, line: 271, baseType: !103, size: 128, offset: 3840)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4594, file: !4595, line: 277, baseType: !103, size: 128, offset: 3968)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4594, file: !4595, line: 278, baseType: !103, size: 128, offset: 4096)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4594, file: !4595, line: 279, baseType: !103, size: 128, offset: 4224)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4594, file: !4595, line: 288, baseType: !4603, size: 64, offset: 4352)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4594, file: !4595, line: 289, baseType: !4603, size: 64, offset: 4416)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4594, file: !4595, line: 290, baseType: !4593, size: 64, offset: 4480)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4594, file: !4595, line: 293, baseType: !582, size: 8, offset: 4544)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4594, file: !4595, line: 296, baseType: !350, size: 128, align: 64, offset: 4608)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3776, file: !3777, line: 1110, baseType: !4850, size: 64, offset: 15360)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4852, line: 93, size: 8768, elements: !4853)
!4852 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4853 = !{!4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4902, !4911, !4912, !4914, !4915, !4916, !4919, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4957, !4958, !4965, !4975, !5037, !5038, !5041, !5042, !5043, !5044, !5045, !5046}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4851, file: !4852, line: 94, baseType: !417, size: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4851, file: !4852, line: 95, baseType: !55, size: 32, offset: 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4851, file: !4852, line: 96, baseType: !28, size: 32, offset: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4851, file: !4852, line: 97, baseType: !28, size: 32, offset: 96)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4851, file: !4852, line: 98, baseType: !103, size: 128, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4851, file: !4852, line: 100, baseType: !60, size: 192, offset: 256)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4851, file: !4852, line: 103, baseType: !3775, size: 64, offset: 448)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4851, file: !4852, line: 106, baseType: !4862, size: 192, offset: 512)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4863, line: 32, size: 192, elements: !4864)
!4863 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4864 = !{!4865, !4866}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4862, file: !4863, line: 33, baseType: !103, size: 128)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4862, file: !4863, line: 34, baseType: !4867, size: 64, offset: 128)
!4867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4868, line: 25, baseType: !4869)
!4868 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4868, line: 23, size: 64, elements: !4870)
!4870 = !{!4871}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4869, file: !4868, line: 24, baseType: !3485, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4851, file: !4852, line: 109, baseType: !426, size: 64, offset: 704)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4851, file: !4852, line: 112, baseType: !28, size: 32, offset: 768)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4851, file: !4852, line: 114, baseType: !28, size: 32, offset: 800)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4851, file: !4852, line: 115, baseType: !3775, size: 64, offset: 832)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4851, file: !4852, line: 118, baseType: !28, size: 32, offset: 896)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4851, file: !4852, line: 119, baseType: !11, size: 32, offset: 928)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4851, file: !4852, line: 121, baseType: !4879, size: 64, offset: 960)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4852, line: 80, size: 448, elements: !4881)
!4881 = !{!4882, !4883, !4889}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4880, file: !4852, line: 81, baseType: !55, size: 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4880, file: !4852, line: 82, baseType: !4884, size: 128, offset: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4852, line: 75, size: 128, elements: !4885)
!4885 = !{!4886, !4887}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4884, file: !4852, line: 76, baseType: !3775, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4884, file: !4852, line: 77, baseType: !4888, size: 64, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4880, file: !4852, line: 83, baseType: !754, size: 256, offset: 192)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4851, file: !4852, line: 132, baseType: !11, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4851, file: !4852, line: 133, baseType: !11, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4851, file: !4852, line: 138, baseType: !11, size: 32, offset: 1056)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4851, file: !4852, line: 139, baseType: !103, size: 128, offset: 1088)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4851, file: !4852, line: 142, baseType: !3252, size: 512, offset: 1216)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4851, file: !4852, line: 143, baseType: !3232, size: 64, offset: 1728)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4851, file: !4852, line: 150, baseType: !4897, size: 256, offset: 1792)
!4897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4898, size: 256, elements: !2299)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4852, line: 38, size: 128, elements: !4899)
!4899 = !{!4900, !4901}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4898, file: !4852, line: 39, baseType: !489, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4898, file: !4852, line: 40, baseType: !489, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4851, file: !4852, line: 156, baseType: !4903, size: 192, offset: 2048)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4852, line: 66, size: 192, elements: !4904)
!4904 = !{!4905}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4903, file: !4852, line: 67, baseType: !4906, size: 192)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4852, line: 47, size: 192, elements: !4907)
!4907 = !{!4908, !4909, !4910}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4906, file: !4852, line: 48, baseType: !365, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4906, file: !4852, line: 49, baseType: !365, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4906, file: !4852, line: 50, baseType: !365, size: 64, offset: 128)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4851, file: !4852, line: 160, baseType: !4101, size: 640, offset: 2240)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4851, file: !4852, line: 163, baseType: !4913, size: 256, offset: 2880)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 256, elements: !435)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4851, file: !4852, line: 169, baseType: !413, size: 64, offset: 3136)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4851, file: !4852, line: 172, baseType: !28, size: 32, offset: 3200)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4851, file: !4852, line: 174, baseType: !4917, size: 64, offset: 3264)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4852, line: 174, flags: DIFlagFwdDecl)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4851, file: !4852, line: 185, baseType: !4920, size: 64, offset: 3328)
!4920 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !859, line: 860, baseType: !4921)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !859, line: 853, size: 64, elements: !4922)
!4922 = !{!4923, !4924}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4921, file: !859, line: 858, baseType: !858, size: 32)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4921, file: !859, line: 859, baseType: !65, size: 32, offset: 32)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4851, file: !4852, line: 186, baseType: !489, size: 64, offset: 3392)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4851, file: !4852, line: 186, baseType: !489, size: 64, offset: 3456)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4851, file: !4852, line: 186, baseType: !489, size: 64, offset: 3520)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4851, file: !4852, line: 186, baseType: !489, size: 64, offset: 3584)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4851, file: !4852, line: 187, baseType: !489, size: 64, offset: 3648)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4851, file: !4852, line: 188, baseType: !489, size: 64, offset: 3712)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4851, file: !4852, line: 189, baseType: !4089, size: 192, offset: 3776)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4851, file: !4852, line: 190, baseType: !45, size: 64, offset: 3968)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4851, file: !4852, line: 190, baseType: !45, size: 64, offset: 4032)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4851, file: !4852, line: 190, baseType: !45, size: 64, offset: 4096)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4851, file: !4852, line: 190, baseType: !45, size: 64, offset: 4160)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4851, file: !4852, line: 191, baseType: !45, size: 64, offset: 4224)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4851, file: !4852, line: 191, baseType: !45, size: 64, offset: 4288)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4851, file: !4852, line: 191, baseType: !45, size: 64, offset: 4352)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4851, file: !4852, line: 191, baseType: !45, size: 64, offset: 4416)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4851, file: !4852, line: 192, baseType: !45, size: 64, offset: 4480)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4851, file: !4852, line: 192, baseType: !45, size: 64, offset: 4544)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4851, file: !4852, line: 192, baseType: !45, size: 64, offset: 4608)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4851, file: !4852, line: 192, baseType: !45, size: 64, offset: 4672)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4851, file: !4852, line: 193, baseType: !45, size: 64, offset: 4736)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4851, file: !4852, line: 193, baseType: !45, size: 64, offset: 4800)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4851, file: !4852, line: 194, baseType: !4947, size: 448, offset: 4864)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4948, line: 12, size: 448, elements: !4949)
!4948 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4949 = !{!4950, !4951, !4952, !4953, !4954, !4955, !4956}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4947, file: !4948, line: 15, baseType: !489, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4947, file: !4948, line: 17, baseType: !489, size: 64, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4947, file: !4948, line: 19, baseType: !489, size: 64, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4947, file: !4948, line: 21, baseType: !489, size: 64, offset: 192)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4947, file: !4948, line: 29, baseType: !489, size: 64, offset: 256)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4947, file: !4948, line: 35, baseType: !489, size: 64, offset: 320)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4947, file: !4948, line: 44, baseType: !489, size: 64, offset: 384)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4851, file: !4852, line: 202, baseType: !491, size: 64, offset: 5312)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4851, file: !4852, line: 213, baseType: !4959, size: 2048, offset: 5376)
!4959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4960, size: 2048, elements: !4124)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4961, line: 43, size: 128, elements: !4962)
!4961 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4962 = !{!4963, !4964}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4960, file: !4961, line: 44, baseType: !44, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4960, file: !4961, line: 45, baseType: !44, size: 64, offset: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4851, file: !4852, line: 216, baseType: !4966, size: 448, offset: 7424)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4852, line: 30, size: 448, elements: !4967)
!4967 = !{!4968, !4969, !4970, !4971, !4972, !4973, !4974}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4966, file: !4852, line: 31, baseType: !28, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4966, file: !4852, line: 32, baseType: !816, size: 64, offset: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4966, file: !4852, line: 33, baseType: !45, size: 64, offset: 128)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4966, file: !4852, line: 34, baseType: !489, size: 64, offset: 192)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4966, file: !4852, line: 34, baseType: !489, size: 64, offset: 256)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4966, file: !4852, line: 35, baseType: !45, size: 64, offset: 320)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4966, file: !4852, line: 35, baseType: !45, size: 64, offset: 384)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4851, file: !4852, line: 219, baseType: !4976, size: 64, offset: 7872)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4978, line: 41, size: 3456, elements: !4979)
!4978 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4979 = !{!4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4977, file: !4978, line: 47, baseType: !100, size: 16)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4977, file: !4978, line: 48, baseType: !547, size: 32, offset: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4977, file: !4978, line: 54, baseType: !91, size: 8, offset: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4977, file: !4978, line: 55, baseType: !91, size: 8, offset: 72)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4977, file: !4978, line: 73, baseType: !490, size: 64, align: 64, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4977, file: !4978, line: 74, baseType: !490, size: 64, offset: 192)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4977, file: !4978, line: 81, baseType: !490, size: 64, offset: 256)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4977, file: !4978, line: 82, baseType: !490, size: 64, offset: 320)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4977, file: !4978, line: 85, baseType: !490, size: 64, offset: 384)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4977, file: !4978, line: 86, baseType: !490, size: 64, offset: 448)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4977, file: !4978, line: 94, baseType: !490, size: 64, offset: 512)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4977, file: !4978, line: 102, baseType: !490, size: 64, offset: 576)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4977, file: !4978, line: 107, baseType: !2825, size: 256, offset: 640)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4977, file: !4978, line: 108, baseType: !91, size: 8, align: 64, offset: 896)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4977, file: !4978, line: 110, baseType: !4995, size: 24, offset: 904)
!4995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !409)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4977, file: !4978, line: 111, baseType: !547, size: 32, align: 64, offset: 960)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4977, file: !4978, line: 113, baseType: !547, size: 32, offset: 992)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4977, file: !4978, line: 114, baseType: !547, size: 32, offset: 1024)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4977, file: !4978, line: 115, baseType: !547, size: 32, offset: 1056)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4977, file: !4978, line: 117, baseType: !547, size: 32, offset: 1088)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4977, file: !4978, line: 118, baseType: !490, size: 64, align: 64, offset: 1152)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4977, file: !4978, line: 120, baseType: !490, size: 64, offset: 1216)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4977, file: !4978, line: 121, baseType: !490, size: 64, offset: 1280)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4977, file: !4978, line: 122, baseType: !490, size: 64, offset: 1344)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4977, file: !4978, line: 123, baseType: !490, size: 64, offset: 1408)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4977, file: !4978, line: 133, baseType: !490, size: 64, offset: 1472)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4977, file: !4978, line: 137, baseType: !490, size: 64, offset: 1536)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4977, file: !4978, line: 142, baseType: !490, size: 64, offset: 1600)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4977, file: !4978, line: 143, baseType: !490, size: 64, offset: 1664)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4977, file: !4978, line: 146, baseType: !490, size: 64, offset: 1728)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4977, file: !4978, line: 147, baseType: !490, size: 64, offset: 1792)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4977, file: !4978, line: 148, baseType: !490, size: 64, offset: 1856)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4977, file: !4978, line: 149, baseType: !490, size: 64, offset: 1920)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4977, file: !4978, line: 154, baseType: !490, size: 64, offset: 1984)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4977, file: !4978, line: 155, baseType: !490, size: 64, offset: 2048)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4977, file: !4978, line: 156, baseType: !490, size: 64, offset: 2112)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4977, file: !4978, line: 158, baseType: !490, size: 64, offset: 2176)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4977, file: !4978, line: 159, baseType: !490, size: 64, offset: 2240)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4977, file: !4978, line: 162, baseType: !490, size: 64, offset: 2304)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4977, file: !4978, line: 163, baseType: !490, size: 64, offset: 2368)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4977, file: !4978, line: 164, baseType: !490, size: 64, offset: 2432)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4977, file: !4978, line: 167, baseType: !490, size: 64, offset: 2496)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4977, file: !4978, line: 168, baseType: !490, size: 64, offset: 2560)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4977, file: !4978, line: 171, baseType: !490, size: 64, offset: 2624)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4977, file: !4978, line: 172, baseType: !490, size: 64, offset: 2688)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4977, file: !4978, line: 175, baseType: !490, size: 64, offset: 2752)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4977, file: !4978, line: 178, baseType: !490, size: 64, offset: 2816)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4977, file: !4978, line: 179, baseType: !490, size: 64, offset: 2880)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4977, file: !4978, line: 182, baseType: !547, size: 32, offset: 2944)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4977, file: !4978, line: 186, baseType: !490, size: 64, align: 64, offset: 3008)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4977, file: !4978, line: 194, baseType: !490, size: 64, offset: 3072)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4977, file: !4978, line: 195, baseType: !490, size: 64, offset: 3136)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4977, file: !4978, line: 199, baseType: !490, size: 64, offset: 3200)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4977, file: !4978, line: 200, baseType: !490, size: 64, offset: 3264)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4977, file: !4978, line: 203, baseType: !490, size: 64, offset: 3328)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4977, file: !4978, line: 204, baseType: !490, size: 64, offset: 3392)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4851, file: !4852, line: 222, baseType: !11, size: 32, offset: 7936)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4851, file: !4852, line: 223, baseType: !5039, size: 64, offset: 8000)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4852, line: 223, flags: DIFlagFwdDecl)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4851, file: !4852, line: 230, baseType: !582, size: 8, offset: 8064)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4851, file: !4852, line: 231, baseType: !551, size: 16, offset: 8080)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4851, file: !4852, line: 232, baseType: !551, size: 16, offset: 8096)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4851, file: !4852, line: 234, baseType: !1397, size: 64, offset: 8128)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4851, file: !4852, line: 237, baseType: !372, size: 256, offset: 8192)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4851, file: !4852, line: 243, baseType: !521, size: 320, offset: 8448)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3776, file: !3777, line: 1111, baseType: !5048, size: 64, offset: 15424)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4852, line: 20, size: 16640, elements: !5050)
!5050 = !{!5051, !5052, !5053, !5054}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5049, file: !4852, line: 21, baseType: !65, size: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5049, file: !4852, line: 22, baseType: !417, size: 32, offset: 32)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5049, file: !4852, line: 23, baseType: !60, size: 192, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5049, file: !4852, line: 24, baseType: !5055, size: 16384, offset: 256)
!5055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5056, size: 16384, elements: !1189)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4863, line: 51, size: 256, elements: !5057)
!5057 = !{!5058}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5056, file: !4863, line: 52, baseType: !5059, size: 256)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4863, line: 37, size: 256, elements: !5060)
!5060 = !{!5061, !5068, !5069, !5073}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5059, file: !4863, line: 39, baseType: !5062, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5063, line: 83, baseType: !5064)
!5063 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5063, line: 82, baseType: !5066)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{null, !28}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5059, file: !4863, line: 40, baseType: !45, size: 64, offset: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5059, file: !4863, line: 46, baseType: !5070, size: 64, offset: 128)
!5070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5063, line: 86, baseType: !5071)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5063, line: 85, baseType: !2518)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5059, file: !4863, line: 48, baseType: !4867, size: 64, offset: 192)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3776, file: !3777, line: 1112, baseType: !4867, size: 64, offset: 15488)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3776, file: !3777, line: 1113, baseType: !4867, size: 64, offset: 15552)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3776, file: !3777, line: 1115, baseType: !4867, size: 64, offset: 15616)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3776, file: !3777, line: 1116, baseType: !4862, size: 192, offset: 15680)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3776, file: !3777, line: 1117, baseType: !45, size: 64, offset: 15872)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3776, file: !3777, line: 1118, baseType: !41, size: 64, offset: 15936)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3776, file: !3777, line: 1119, baseType: !11, size: 32, offset: 16000)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3776, file: !3777, line: 1121, baseType: !353, size: 64, offset: 16064)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3776, file: !3777, line: 1125, baseType: !5083, size: 64, offset: 16128)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !3777, line: 43, flags: DIFlagFwdDecl)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3776, file: !3777, line: 1127, baseType: !452, size: 32, offset: 16192)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3776, file: !3777, line: 1128, baseType: !11, size: 32, offset: 16224)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3776, file: !3777, line: 1130, baseType: !5088, size: 128, offset: 16256)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5089, line: 37, size: 128, elements: !5090)
!5089 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5090 = !{!5091, !5092, !5093}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5088, file: !5089, line: 38, baseType: !28, size: 32)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5088, file: !5089, line: 39, baseType: !55, size: 32, offset: 32)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5088, file: !5089, line: 40, baseType: !5094, size: 64, offset: 64)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5089, line: 24, flags: DIFlagFwdDecl)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3776, file: !3777, line: 1131, baseType: !5097, size: 256, offset: 16384)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5098, line: 12, size: 256, elements: !5099)
!5098 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5099 = !{!5100, !5101, !5102, !5103}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5097, file: !5098, line: 13, baseType: !593, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5097, file: !5098, line: 14, baseType: !45, size: 64, offset: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5097, file: !5098, line: 15, baseType: !45, size: 64, offset: 128)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5097, file: !5098, line: 16, baseType: !582, size: 8, offset: 192)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3776, file: !3777, line: 1134, baseType: !489, size: 64, offset: 16640)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3776, file: !3777, line: 1135, baseType: !489, size: 64, offset: 16704)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3776, file: !3777, line: 1138, baseType: !65, size: 32, offset: 16768)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3776, file: !3777, line: 1141, baseType: !377, size: 32, offset: 16800)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3776, file: !3777, line: 1143, baseType: !5109, size: 64, offset: 16832)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !3777, line: 735, size: 64, elements: !5110)
!5110 = !{!5111}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5109, file: !3777, line: 736, baseType: !5112, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3776, file: !3777, line: 1147, baseType: !1259, size: 128, offset: 16896)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3776, file: !3777, line: 1149, baseType: !3775, size: 64, offset: 17024)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3776, file: !3777, line: 1151, baseType: !5116, size: 64, offset: 17088)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3777, line: 1151, flags: DIFlagFwdDecl)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3776, file: !3777, line: 1188, baseType: !26, size: 64, offset: 17152)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3776, file: !3777, line: 1191, baseType: !5120, size: 64, offset: 17216)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3776, file: !3777, line: 1194, baseType: !5122, size: 64, offset: 17280)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3776, file: !3777, line: 1197, baseType: !5124, size: 64, offset: 17344)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3777, line: 61, flags: DIFlagFwdDecl)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3776, file: !3777, line: 1199, baseType: !5127, size: 64, offset: 17408)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5129, line: 99, size: 128, elements: !5130)
!5129 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5130 = !{!5131, !5132, !5133}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5128, file: !5129, line: 100, baseType: !363, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5128, file: !5129, line: 101, baseType: !55, size: 32, offset: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5128, file: !5129, line: 103, baseType: !32, size: 16, offset: 96)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3776, file: !3777, line: 1202, baseType: !5135, size: 64, offset: 17472)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !3777, line: 48, flags: DIFlagFwdDecl)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3776, file: !3777, line: 1205, baseType: !45, size: 64, offset: 17536)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3776, file: !3777, line: 1206, baseType: !5139, size: 64, offset: 17600)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4863, line: 14, baseType: !5141)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4863, line: 12, size: 384, elements: !5142)
!5142 = !{!5143}
!5143 = !DIDerivedType(tag: DW_TAG_member, scope: !5141, file: !4863, line: 13, baseType: !5144, size: 384)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5141, file: !4863, line: 13, size: 384, elements: !5145)
!5145 = !{!5146, !5147, !5148, !5149}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5144, file: !4863, line: 13, baseType: !28, size: 32)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5144, file: !4863, line: 13, baseType: !28, size: 32, offset: 32)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5144, file: !4863, line: 13, baseType: !28, size: 32, offset: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5144, file: !4863, line: 13, baseType: !5150, size: 256, offset: 128)
!5150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5151, line: 37, size: 256, elements: !5152)
!5151 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5152 = !{!5153, !5158, !5171, !5177, !5186, !5213, !5218}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5150, file: !5151, line: 42, baseType: !5154, size: 64)
!5154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5150, file: !5151, line: 39, size: 64, elements: !5155)
!5155 = !{!5156, !5157}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5154, file: !5151, line: 40, baseType: !4066, size: 32)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5154, file: !5151, line: 41, baseType: !458, size: 32, offset: 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5150, file: !5151, line: 50, baseType: !5159, size: 192)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5150, file: !5151, line: 45, size: 192, elements: !5160)
!5160 = !{!5161, !5163, !5164, !5170}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5159, file: !5151, line: 46, baseType: !5162, size: 32)
!5162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !43, line: 95, baseType: !28)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5159, file: !5151, line: 47, baseType: !28, size: 32, offset: 32)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5159, file: !5151, line: 48, baseType: !5165, size: 64, offset: 64)
!5165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5151, line: 11, baseType: !5166)
!5166 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5151, line: 8, size: 64, elements: !5167)
!5167 = !{!5168, !5169}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5166, file: !5151, line: 9, baseType: !28, size: 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5166, file: !5151, line: 10, baseType: !26, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5159, file: !5151, line: 49, baseType: !28, size: 32, offset: 128)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5150, file: !5151, line: 57, baseType: !5172, size: 128)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5150, file: !5151, line: 53, size: 128, elements: !5173)
!5173 = !{!5174, !5175, !5176}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5172, file: !5151, line: 54, baseType: !4066, size: 32)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5172, file: !5151, line: 55, baseType: !458, size: 32, offset: 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5172, file: !5151, line: 56, baseType: !5165, size: 64, offset: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5150, file: !5151, line: 66, baseType: !5178, size: 256)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5150, file: !5151, line: 60, size: 256, elements: !5179)
!5179 = !{!5180, !5181, !5182, !5183, !5185}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5178, file: !5151, line: 61, baseType: !4066, size: 32)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5178, file: !5151, line: 62, baseType: !458, size: 32, offset: 32)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5178, file: !5151, line: 63, baseType: !28, size: 32, offset: 64)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5178, file: !5151, line: 64, baseType: !5184, size: 64, offset: 128)
!5184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !43, line: 94, baseType: !1046)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5178, file: !5151, line: 65, baseType: !5184, size: 64, offset: 192)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5150, file: !5151, line: 105, baseType: !5187, size: 256)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5150, file: !5151, line: 69, size: 256, elements: !5188)
!5188 = !{!5189, !5190}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5187, file: !5151, line: 70, baseType: !26, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, scope: !5187, file: !5151, line: 79, baseType: !5191, size: 192, offset: 64)
!5191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5187, file: !5151, line: 79, size: 192, elements: !5192)
!5192 = !{!5193, !5194, !5195, !5202, !5207}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5191, file: !5151, line: 81, baseType: !28, size: 32)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5191, file: !5151, line: 86, baseType: !551, size: 16)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5191, file: !5151, line: 92, baseType: !5196, size: 192)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5191, file: !5151, line: 88, size: 192, elements: !5197)
!5197 = !{!5198, !5200, !5201}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5196, file: !5151, line: 89, baseType: !5199, size: 64)
!5199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !3293)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5196, file: !5151, line: 90, baseType: !26, size: 64, offset: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5196, file: !5151, line: 91, baseType: !26, size: 64, offset: 128)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5191, file: !5151, line: 97, baseType: !5203, size: 96)
!5203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5191, file: !5151, line: 94, size: 96, elements: !5204)
!5204 = !{!5205, !5206}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5203, file: !5151, line: 95, baseType: !5199, size: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5203, file: !5151, line: 96, baseType: !547, size: 32, offset: 64)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5191, file: !5151, line: 103, baseType: !5208, size: 128)
!5208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5191, file: !5151, line: 99, size: 128, elements: !5209)
!5209 = !{!5210, !5211, !5212}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5208, file: !5151, line: 100, baseType: !45, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5208, file: !5151, line: 101, baseType: !547, size: 32, offset: 64)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5208, file: !5151, line: 102, baseType: !547, size: 32, offset: 96)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5150, file: !5151, line: 111, baseType: !5214, size: 128)
!5214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5150, file: !5151, line: 108, size: 128, elements: !5215)
!5215 = !{!5216, !5217}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5214, file: !5151, line: 109, baseType: !816, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5214, file: !5151, line: 110, baseType: !28, size: 32, offset: 64)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5150, file: !5151, line: 118, baseType: !5219, size: 128)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5150, file: !5151, line: 114, size: 128, elements: !5220)
!5220 = !{!5221, !5222, !5223}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5219, file: !5151, line: 115, baseType: !26, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5219, file: !5151, line: 116, baseType: !28, size: 32, offset: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5219, file: !5151, line: 117, baseType: !11, size: 32, offset: 96)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3776, file: !3777, line: 1208, baseType: !4947, size: 448, offset: 17664)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3776, file: !3777, line: 1215, baseType: !489, size: 64, offset: 18112)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3776, file: !3777, line: 1217, baseType: !489, size: 64, offset: 18176)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3776, file: !3777, line: 1219, baseType: !489, size: 64, offset: 18240)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3776, file: !3777, line: 1223, baseType: !5229, size: 64, offset: 18304)
!5229 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5230, line: 99, baseType: !5231)
!5230 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5230, line: 99, size: 64, elements: !5232)
!5232 = !{!5233}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5231, file: !5230, line: 99, baseType: !3485, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3776, file: !3777, line: 1225, baseType: !858, size: 32, offset: 18368)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3776, file: !3777, line: 1226, baseType: !28, size: 32, offset: 18400)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3776, file: !3777, line: 1227, baseType: !28, size: 32, offset: 18432)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3776, file: !3777, line: 1231, baseType: !4593, size: 64, offset: 18496)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3776, file: !3777, line: 1233, baseType: !103, size: 128, offset: 18560)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3776, file: !3777, line: 1240, baseType: !5240, size: 64, offset: 18688)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !3777, line: 62, flags: DIFlagFwdDecl)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3776, file: !3777, line: 1242, baseType: !5243, size: 64, offset: 18752)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3777, line: 1242, flags: DIFlagFwdDecl)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3776, file: !3777, line: 1244, baseType: !103, size: 128, offset: 18816)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3776, file: !3777, line: 1245, baseType: !5247, size: 64, offset: 18944)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !3777, line: 51, flags: DIFlagFwdDecl)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3776, file: !3777, line: 1246, baseType: !372, size: 256, offset: 19008)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3776, file: !3777, line: 1247, baseType: !11, size: 32, offset: 19264)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3776, file: !3777, line: 1250, baseType: !5252, size: 64, offset: 19328)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !3777, line: 57, flags: DIFlagFwdDecl)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3776, file: !3777, line: 1251, baseType: !372, size: 256, offset: 19392)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3776, file: !3777, line: 1252, baseType: !103, size: 128, offset: 19648)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3776, file: !3777, line: 1259, baseType: !1632, size: 64, offset: 19776)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3776, file: !3777, line: 1260, baseType: !551, size: 16, offset: 19840)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3776, file: !3777, line: 1261, baseType: !551, size: 16, offset: 19856)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3776, file: !3777, line: 1314, baseType: !5260, size: 64, offset: 19904)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5262, line: 62, size: 256, align: 256, elements: !5263)
!5262 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5263 = !{!5264, !5265, !5266, !5267, !5268, !5269, !5270}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5261, file: !5262, line: 75, baseType: !547, size: 32)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5261, file: !5262, line: 90, baseType: !547, size: 32, offset: 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5261, file: !5262, line: 112, baseType: !490, size: 64, offset: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5261, file: !5262, line: 132, baseType: !547, size: 32, offset: 128)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5261, file: !5262, line: 140, baseType: !547, size: 32, offset: 160)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5261, file: !5262, line: 149, baseType: !547, size: 32, offset: 192)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5261, file: !5262, line: 154, baseType: !5271, offset: 224)
!5271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !448)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3776, file: !3777, line: 1315, baseType: !546, size: 32, offset: 19968)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3776, file: !3777, line: 1316, baseType: !546, size: 32, offset: 20000)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3776, file: !3777, line: 1321, baseType: !45, size: 64, offset: 20032)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3776, file: !3777, line: 1325, baseType: !28, size: 32, offset: 20096)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3776, file: !3777, line: 1326, baseType: !28, size: 32, offset: 20128)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3776, file: !3777, line: 1327, baseType: !28, size: 32, offset: 20160)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3776, file: !3777, line: 1328, baseType: !28, size: 32, offset: 20192)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3776, file: !3777, line: 1329, baseType: !350, size: 128, align: 64, offset: 20224)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3776, file: !3777, line: 1332, baseType: !5281, size: 128, offset: 20352)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5282, line: 51, size: 128, elements: !5283)
!5282 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5283 = !{!5284, !5289, !5290}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5281, file: !5282, line: 60, baseType: !5285, size: 64)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5286, line: 7, size: 64, elements: !5287)
!5286 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5287 = !{!5288}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5285, file: !5286, line: 12, baseType: !3936, size: 64)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5281, file: !5282, line: 63, baseType: !582, size: 8, offset: 64)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5281, file: !5282, line: 70, baseType: !582, size: 8, offset: 72)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3776, file: !3777, line: 1335, baseType: !5292, size: 64, offset: 20480)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !3777, line: 59, flags: DIFlagFwdDecl)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3776, file: !3777, line: 1337, baseType: !5295, size: 128, offset: 20544)
!5295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5282, line: 39, size: 128, elements: !5296)
!5296 = !{!5297, !5298, !5299}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5295, file: !5282, line: 40, baseType: !1274, size: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5295, file: !5282, line: 42, baseType: !547, size: 32, offset: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5295, file: !5282, line: 43, baseType: !547, size: 32, offset: 96)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3776, file: !3777, line: 1340, baseType: !5301, size: 64, offset: 20672)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !3777, line: 69, flags: DIFlagFwdDecl)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3776, file: !3777, line: 1351, baseType: !28, size: 32, offset: 20736)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3776, file: !3777, line: 1352, baseType: !28, size: 32, offset: 20768)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3776, file: !3777, line: 1354, baseType: !45, size: 64, offset: 20800)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3776, file: !3777, line: 1364, baseType: !489, size: 64, offset: 20864)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3776, file: !3777, line: 1365, baseType: !489, size: 64, offset: 20928)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3776, file: !3777, line: 1412, baseType: !45, size: 64, offset: 20992)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3776, file: !3777, line: 1453, baseType: !2818, size: 64, offset: 21056)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3776, file: !3777, line: 1457, baseType: !5311, size: 64, offset: 21120)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !275, line: 61, size: 576, elements: !5313)
!5313 = !{!5314, !5315, !5334, !5337, !5338, !5371, !5381}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5312, file: !275, line: 62, baseType: !274, size: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, scope: !5312, file: !275, line: 64, baseType: !5316, size: 192, offset: 64)
!5316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5312, file: !275, line: 64, size: 192, elements: !5317)
!5317 = !{!5318, !5329}
!5318 = !DIDerivedType(tag: DW_TAG_member, scope: !5316, file: !275, line: 65, baseType: !5319, size: 192)
!5319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5316, file: !275, line: 65, size: 192, elements: !5320)
!5320 = !{!5321, !5328}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5319, file: !275, line: 66, baseType: !5322, size: 128)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5323, line: 50, size: 128, elements: !5324)
!5323 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5324 = !{!5325, !5326, !5327}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5322, file: !5323, line: 52, baseType: !45, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5322, file: !5323, line: 54, baseType: !11, size: 32, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5322, file: !5323, line: 55, baseType: !11, size: 32, offset: 96)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5319, file: !275, line: 67, baseType: !45, size: 64, offset: 128)
!5329 = !DIDerivedType(tag: DW_TAG_member, scope: !5316, file: !275, line: 70, baseType: !5330, size: 192)
!5330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5316, file: !275, line: 70, size: 192, elements: !5331)
!5331 = !{!5332, !5333}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5330, file: !275, line: 71, baseType: !350, size: 128, align: 64)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5330, file: !275, line: 72, baseType: !45, size: 64, offset: 128)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5312, file: !275, line: 76, baseType: !5335, size: 64, offset: 256)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !275, line: 76, flags: DIFlagFwdDecl)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5312, file: !275, line: 77, baseType: !45, size: 64, offset: 320)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5312, file: !275, line: 79, baseType: !5339, size: 64, offset: 384)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5323, line: 25, size: 256, elements: !5341)
!5341 = !{!5342, !5348, !5352}
!5342 = !DIDerivedType(tag: DW_TAG_member, scope: !5340, file: !5323, line: 26, baseType: !5343, size: 128)
!5343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5340, file: !5323, line: 26, size: 128, elements: !5344)
!5344 = !{!5345, !5347}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5343, file: !5323, line: 27, baseType: !5346, size: 128)
!5346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !4124)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5343, file: !5323, line: 28, baseType: !5346, size: 128)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5340, file: !5323, line: 31, baseType: !5349, size: 64, offset: 128)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5351)
!5351 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5323, line: 23, flags: DIFlagFwdDecl)
!5352 = !DIDerivedType(tag: DW_TAG_member, scope: !5340, file: !5323, line: 33, baseType: !5353, size: 64, offset: 192)
!5353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5340, file: !5323, line: 33, size: 64, elements: !5354)
!5354 = !{!5355, !5361, !5366}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5353, file: !5323, line: 38, baseType: !5356, size: 64)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5353, file: !5323, line: 34, size: 64, elements: !5357)
!5357 = !{!5358, !5359, !5360}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5356, file: !5323, line: 35, baseType: !506, size: 32)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5356, file: !5323, line: 36, baseType: !89, size: 8, offset: 32)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5356, file: !5323, line: 37, baseType: !89, size: 8, offset: 40)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5353, file: !5323, line: 42, baseType: !5362, size: 16)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5353, file: !5323, line: 39, size: 16, elements: !5363)
!5363 = !{!5364, !5365}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5362, file: !5323, line: 40, baseType: !89, size: 8)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5362, file: !5323, line: 41, baseType: !89, size: 8, offset: 8)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5353, file: !5323, line: 46, baseType: !5367, size: 16)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5353, file: !5323, line: 43, size: 16, elements: !5368)
!5368 = !{!5369, !5370}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5367, file: !5323, line: 44, baseType: !89, size: 8)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5367, file: !5323, line: 45, baseType: !89, size: 8, offset: 8)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5312, file: !275, line: 81, baseType: !5372, size: 64, offset: 448)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !275, line: 85, size: 384, elements: !5374)
!5374 = !{!5375, !5376, !5377, !5378, !5379, !5380}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5373, file: !275, line: 86, baseType: !5335, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5373, file: !275, line: 87, baseType: !45, size: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5373, file: !275, line: 88, baseType: !45, size: 64, offset: 128)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5373, file: !275, line: 89, baseType: !45, size: 64, offset: 192)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5373, file: !275, line: 90, baseType: !582, size: 8, offset: 256)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5373, file: !275, line: 92, baseType: !5372, size: 64, offset: 320)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5312, file: !275, line: 82, baseType: !11, size: 32, offset: 512)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3776, file: !3777, line: 1463, baseType: !5383, offset: 21184)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !3777, line: 739, elements: !1418)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3776, file: !3777, line: 1470, baseType: !350, size: 128, align: 64, offset: 21184)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3776, file: !3777, line: 1471, baseType: !417, size: 32, offset: 21312)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3776, file: !3777, line: 1472, baseType: !28, size: 32, offset: 21344)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3776, file: !3777, line: 1474, baseType: !3775, size: 64, offset: 21376)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3776, file: !3777, line: 1475, baseType: !2408, size: 320, offset: 21440)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3776, file: !3777, line: 1478, baseType: !5390, size: 64, offset: 21760)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3777, line: 1478, flags: DIFlagFwdDecl)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3776, file: !3777, line: 1482, baseType: !417, size: 32, offset: 21824)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3776, file: !3777, line: 1489, baseType: !26, size: 64, offset: 21888)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3776, file: !3777, line: 1504, baseType: !26, size: 64, offset: 21952)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3776, file: !3777, line: 1505, baseType: !490, size: 64, offset: 22016)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3776, file: !3777, line: 1506, baseType: !489, size: 64, offset: 22080)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3776, file: !3777, line: 1507, baseType: !490, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3776, file: !3777, line: 1508, baseType: !490, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3776, file: !3777, line: 1509, baseType: !490, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3776, file: !3777, line: 1510, baseType: !350, size: 128, align: 64, offset: 22208)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3776, file: !3777, line: 1511, baseType: !28, size: 32, offset: 22336)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3776, file: !3777, line: 1515, baseType: !4467, size: 64, offset: 22400)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3776, file: !3777, line: 1518, baseType: !4467, size: 64, offset: 22464)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3776, file: !3777, line: 1528, baseType: !350, size: 128, align: 64, offset: 22528)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3776, file: !3777, line: 1552, baseType: !5406, size: 35328, offset: 23040)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5407, line: 430, size: 35328, elements: !5408)
!5407 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5408 = !{!5409, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5438, !5439, !5440, !5441, !5442, !5443, !5446, !5447, !5448, !5449}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5406, file: !5407, line: 432, baseType: !5410, size: 192)
!5410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5411, size: 192, elements: !409)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5412, line: 16, size: 64, elements: !5413)
!5412 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5413 = !{!5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5411, file: !5412, line: 17, baseType: !99, size: 16)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5411, file: !5412, line: 18, baseType: !99, size: 16, offset: 16)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5411, file: !5412, line: 19, baseType: !99, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5411, file: !5412, line: 19, baseType: !99, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5411, file: !5412, line: 19, baseType: !99, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5411, file: !5412, line: 19, baseType: !99, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5411, file: !5412, line: 19, baseType: !99, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5411, file: !5412, line: 20, baseType: !99, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5411, file: !5412, line: 20, baseType: !99, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5411, file: !5412, line: 20, baseType: !99, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5411, file: !5412, line: 20, baseType: !99, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5411, file: !5412, line: 20, baseType: !99, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5411, file: !5412, line: 20, baseType: !99, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5406, file: !5407, line: 436, baseType: !45, size: 64, offset: 192)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5406, file: !5407, line: 440, baseType: !32, size: 16, offset: 256)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5406, file: !5407, line: 441, baseType: !32, size: 16, offset: 272)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5406, file: !5407, line: 442, baseType: !32, size: 16, offset: 288)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5406, file: !5407, line: 443, baseType: !32, size: 16, offset: 304)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5406, file: !5407, line: 447, baseType: !45, size: 64, offset: 320)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5406, file: !5407, line: 448, baseType: !45, size: 64, offset: 384)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5406, file: !5407, line: 459, baseType: !5435, size: 256, offset: 448)
!5435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5436, size: 256, elements: !435)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5407, line: 428, flags: DIFlagFwdDecl)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5406, file: !5407, line: 461, baseType: !45, size: 64, offset: 704)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5406, file: !5407, line: 463, baseType: !45, size: 64, offset: 768)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5406, file: !5407, line: 465, baseType: !45, size: 64, offset: 832)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5406, file: !5407, line: 466, baseType: !45, size: 64, offset: 896)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5406, file: !5407, line: 467, baseType: !45, size: 64, offset: 960)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5406, file: !5407, line: 473, baseType: !5444, size: 64, offset: 1024)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5407, line: 10, flags: DIFlagFwdDecl)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5406, file: !5407, line: 480, baseType: !45, size: 64, offset: 1088)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5406, file: !5407, line: 482, baseType: !11, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5406, file: !5407, line: 491, baseType: !546, size: 32, offset: 1184)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5406, file: !5407, line: 501, baseType: !5450, size: 33792, offset: 1536)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5451, line: 448, size: 33792, elements: !5452)
!5451 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5452 = !{!5453, !5454, !5455, !5615, !5616, !5622, !5623}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5450, file: !5451, line: 461, baseType: !11, size: 32)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5450, file: !5451, line: 468, baseType: !45, size: 64, offset: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5450, file: !5451, line: 476, baseType: !5456, size: 64, offset: 128)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5451, line: 356, size: 33280, align: 512, elements: !5458)
!5458 = !{!5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5457, file: !5451, line: 358, baseType: !11, size: 32)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5457, file: !5451, line: 361, baseType: !11, size: 32, offset: 32)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5457, file: !5451, line: 364, baseType: !489, size: 64, offset: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5457, file: !5451, line: 367, baseType: !489, size: 64, offset: 128)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5457, file: !5451, line: 370, baseType: !489, size: 64, offset: 192)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5457, file: !5451, line: 373, baseType: !11, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5457, file: !5451, line: 376, baseType: !11, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5457, file: !5451, line: 391, baseType: !11, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5457, file: !5451, line: 394, baseType: !11, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5457, file: !5451, line: 397, baseType: !5469, size: 32768, offset: 512)
!5469 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5451, line: 348, size: 32768, elements: !5470)
!5470 = !{!5471, !5486, !5523, !5600, !5613}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5469, file: !5451, line: 349, baseType: !5472, size: 896)
!5472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5451, line: 12, size: 896, elements: !5473)
!5473 = !{!5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5485}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5472, file: !5451, line: 13, baseType: !546, size: 32)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5472, file: !5451, line: 14, baseType: !546, size: 32, offset: 32)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5472, file: !5451, line: 15, baseType: !546, size: 32, offset: 64)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5472, file: !5451, line: 16, baseType: !546, size: 32, offset: 96)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5472, file: !5451, line: 17, baseType: !546, size: 32, offset: 128)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5472, file: !5451, line: 18, baseType: !546, size: 32, offset: 160)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5472, file: !5451, line: 19, baseType: !546, size: 32, offset: 192)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5472, file: !5451, line: 22, baseType: !5482, size: 640, offset: 224)
!5482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 640, elements: !5483)
!5483 = !{!5484}
!5484 = !DISubrange(count: 20)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5472, file: !5451, line: 25, baseType: !546, size: 32, offset: 864)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5469, file: !5451, line: 350, baseType: !5487, size: 4096, align: 128)
!5487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5451, line: 34, size: 4096, align: 128, elements: !5488)
!5488 = !{!5489, !5490, !5491, !5492, !5493, !5508, !5509, !5510, !5512, !5514, !5518}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5487, file: !5451, line: 35, baseType: !99, size: 16)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5487, file: !5451, line: 36, baseType: !99, size: 16, offset: 16)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5487, file: !5451, line: 37, baseType: !99, size: 16, offset: 32)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5487, file: !5451, line: 38, baseType: !99, size: 16, offset: 48)
!5493 = !DIDerivedType(tag: DW_TAG_member, scope: !5487, file: !5451, line: 39, baseType: !5494, size: 128, offset: 64)
!5494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5487, file: !5451, line: 39, size: 128, elements: !5495)
!5495 = !{!5496, !5501}
!5496 = !DIDerivedType(tag: DW_TAG_member, scope: !5494, file: !5451, line: 40, baseType: !5497, size: 128)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5494, file: !5451, line: 40, size: 128, elements: !5498)
!5498 = !{!5499, !5500}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5497, file: !5451, line: 41, baseType: !489, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5497, file: !5451, line: 42, baseType: !489, size: 64, offset: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, scope: !5494, file: !5451, line: 44, baseType: !5502, size: 128)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5494, file: !5451, line: 44, size: 128, elements: !5503)
!5503 = !{!5504, !5505, !5506, !5507}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5502, file: !5451, line: 45, baseType: !546, size: 32)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5502, file: !5451, line: 46, baseType: !546, size: 32, offset: 32)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5502, file: !5451, line: 47, baseType: !546, size: 32, offset: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5502, file: !5451, line: 48, baseType: !546, size: 32, offset: 96)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5487, file: !5451, line: 51, baseType: !546, size: 32, offset: 192)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5487, file: !5451, line: 52, baseType: !546, size: 32, offset: 224)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5487, file: !5451, line: 55, baseType: !5511, size: 1024, offset: 256)
!5511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 1024, elements: !2826)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5487, file: !5451, line: 58, baseType: !5513, size: 2048, offset: 1280)
!5513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 2048, elements: !1189)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5487, file: !5451, line: 60, baseType: !5515, size: 384, offset: 3328)
!5515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 384, elements: !5516)
!5516 = !{!5517}
!5517 = !DISubrange(count: 12)
!5518 = !DIDerivedType(tag: DW_TAG_member, scope: !5487, file: !5451, line: 62, baseType: !5519, size: 384, offset: 3712)
!5519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5487, file: !5451, line: 62, size: 384, elements: !5520)
!5520 = !{!5521, !5522}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5519, file: !5451, line: 63, baseType: !5515, size: 384)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5519, file: !5451, line: 64, baseType: !5515, size: 384)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5469, file: !5451, line: 351, baseType: !5524, size: 1088)
!5524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5451, line: 79, size: 1088, elements: !5525)
!5525 = !{!5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5599}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5524, file: !5451, line: 80, baseType: !546, size: 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5524, file: !5451, line: 81, baseType: !546, size: 32, offset: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5524, file: !5451, line: 82, baseType: !546, size: 32, offset: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5524, file: !5451, line: 83, baseType: !546, size: 32, offset: 96)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5524, file: !5451, line: 84, baseType: !546, size: 32, offset: 128)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5524, file: !5451, line: 85, baseType: !546, size: 32, offset: 160)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5524, file: !5451, line: 86, baseType: !546, size: 32, offset: 192)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5524, file: !5451, line: 88, baseType: !5482, size: 640, offset: 224)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5524, file: !5451, line: 89, baseType: !89, size: 8, offset: 864)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5524, file: !5451, line: 90, baseType: !89, size: 8, offset: 872)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5524, file: !5451, line: 91, baseType: !89, size: 8, offset: 880)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5524, file: !5451, line: 92, baseType: !89, size: 8, offset: 888)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5524, file: !5451, line: 93, baseType: !89, size: 8, offset: 896)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5524, file: !5451, line: 94, baseType: !89, size: 8, offset: 904)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5524, file: !5451, line: 95, baseType: !5541, size: 64, offset: 960)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5543, line: 11, size: 128, elements: !5544)
!5543 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5544 = !{!5545, !5546}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5542, file: !5543, line: 12, baseType: !816, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5542, file: !5543, line: 13, baseType: !5547, size: 64, offset: 64)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5549, line: 103, size: 1344, elements: !5550)
!5549 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5550 = !{!5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5579, !5580, !5581}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5548, file: !5549, line: 109, baseType: !45, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5548, file: !5549, line: 110, baseType: !45, size: 64, offset: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5548, file: !5549, line: 111, baseType: !45, size: 64, offset: 128)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5548, file: !5549, line: 112, baseType: !45, size: 64, offset: 192)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5548, file: !5549, line: 113, baseType: !45, size: 64, offset: 256)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5548, file: !5549, line: 114, baseType: !45, size: 64, offset: 320)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5548, file: !5549, line: 117, baseType: !45, size: 64, offset: 384)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5548, file: !5549, line: 118, baseType: !45, size: 64, offset: 448)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5548, file: !5549, line: 119, baseType: !45, size: 64, offset: 512)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5548, file: !5549, line: 120, baseType: !45, size: 64, offset: 576)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5548, file: !5549, line: 121, baseType: !45, size: 64, offset: 640)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5548, file: !5549, line: 122, baseType: !45, size: 64, offset: 704)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5548, file: !5549, line: 123, baseType: !45, size: 64, offset: 768)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5548, file: !5549, line: 124, baseType: !45, size: 64, offset: 832)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5548, file: !5549, line: 125, baseType: !45, size: 64, offset: 896)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5548, file: !5549, line: 139, baseType: !45, size: 64, offset: 960)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5548, file: !5549, line: 142, baseType: !45, size: 64, offset: 1024)
!5568 = !DIDerivedType(tag: DW_TAG_member, scope: !5548, file: !5549, line: 144, baseType: !5569, size: 64, offset: 1088)
!5569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5548, file: !5549, line: 144, size: 64, elements: !5570)
!5570 = !{!5571, !5572, !5573}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5569, file: !5549, line: 146, baseType: !99, size: 16)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5569, file: !5549, line: 148, baseType: !489, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5569, file: !5549, line: 150, baseType: !5574, size: 64)
!5574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5549, line: 59, size: 64, elements: !5575)
!5575 = !{!5576, !5577, !5578}
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5574, file: !5549, line: 61, baseType: !489, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5574, file: !5549, line: 63, baseType: !489, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5574, file: !5549, line: 65, baseType: !489, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5548, file: !5549, line: 153, baseType: !45, size: 64, offset: 1152)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5548, file: !5549, line: 154, baseType: !45, size: 64, offset: 1216)
!5581 = !DIDerivedType(tag: DW_TAG_member, scope: !5548, file: !5549, line: 156, baseType: !5582, size: 64, offset: 1280)
!5582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5548, file: !5549, line: 156, size: 64, elements: !5583)
!5583 = !{!5584, !5585, !5586}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5582, file: !5549, line: 158, baseType: !99, size: 16)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5582, file: !5549, line: 160, baseType: !489, size: 64)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5582, file: !5549, line: 162, baseType: !5587, size: 64)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5549, line: 69, size: 64, elements: !5588)
!5588 = !{!5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5587, file: !5549, line: 71, baseType: !489, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5587, file: !5549, line: 73, baseType: !489, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5587, file: !5549, line: 75, baseType: !489, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5587, file: !5549, line: 77, baseType: !489, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5587, file: !5549, line: 80, baseType: !489, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5587, file: !5549, line: 83, baseType: !489, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5587, file: !5549, line: 86, baseType: !489, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5587, file: !5549, line: 88, baseType: !489, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5587, file: !5549, line: 93, baseType: !489, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5587, file: !5549, line: 100, baseType: !489, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5524, file: !5451, line: 96, baseType: !546, size: 32, offset: 1024)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5469, file: !5451, line: 352, baseType: !5601, size: 4608, align: 512)
!5601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5451, line: 333, size: 4608, align: 512, elements: !5602)
!5602 = !{!5603, !5604, !5611}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5601, file: !5451, line: 334, baseType: !5487, size: 4096, align: 128)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5601, file: !5451, line: 335, baseType: !5605, size: 512, offset: 4096)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5451, line: 312, size: 512, elements: !5606)
!5606 = !{!5607, !5608, !5609}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5605, file: !5451, line: 313, baseType: !489, size: 64)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5605, file: !5451, line: 314, baseType: !489, size: 64, offset: 64)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5605, file: !5451, line: 315, baseType: !5610, size: 384, offset: 128)
!5610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 384, elements: !569)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5601, file: !5451, line: 336, baseType: !5612, offset: 4608)
!5612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, elements: !448)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5469, file: !5451, line: 353, baseType: !5614, size: 32768)
!5614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 32768, elements: !4648)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5450, file: !5451, line: 484, baseType: !5456, size: 64, offset: 192)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5450, file: !5451, line: 491, baseType: !5617, size: 128, offset: 256)
!5617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5451, line: 404, size: 128, elements: !5618)
!5618 = !{!5619, !5620, !5621}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5617, file: !5451, line: 424, baseType: !489, size: 64)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5617, file: !5451, line: 432, baseType: !11, size: 32, offset: 64)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5617, file: !5451, line: 440, baseType: !11, size: 32, offset: 96)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5450, file: !5451, line: 498, baseType: !5617, size: 128, offset: 384)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5450, file: !5451, line: 508, baseType: !5457, size: 33280, align: 512, offset: 512)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3758, file: !3759, line: 16, baseType: !60, size: 192, offset: 512)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3758, file: !3759, line: 17, baseType: !55, size: 32, offset: 704)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1101, file: !163, line: 1240, baseType: !26, size: 64, offset: 6912)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1101, file: !163, line: 1243, baseType: !546, size: 32, offset: 6976)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1101, file: !163, line: 1245, baseType: !537, size: 64, offset: 7040)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1101, file: !163, line: 1246, baseType: !537, size: 64, offset: 7104)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1101, file: !163, line: 1248, baseType: !547, size: 32, offset: 7168)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1101, file: !163, line: 1249, baseType: !5632, size: 64, offset: 7232)
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5633, size: 64)
!5633 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !163, line: 634, flags: DIFlagFwdDecl)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1101, file: !163, line: 1252, baseType: !2825, size: 256, offset: 7296)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1101, file: !163, line: 1253, baseType: !5636, size: 128, offset: 7552)
!5636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5637, line: 21, baseType: !5638)
!5637 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5637, line: 19, size: 128, elements: !5639)
!5639 = !{!5640}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5638, file: !5637, line: 20, baseType: !5641, size: 128)
!5641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !4124)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1101, file: !163, line: 1255, baseType: !11, size: 32, offset: 7680)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1101, file: !163, line: 1261, baseType: !372, size: 256, offset: 7744)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1101, file: !163, line: 1267, baseType: !23, size: 64, offset: 8000)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1101, file: !163, line: 1269, baseType: !5646, size: 64, offset: 8064)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5648)
!5648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !854, line: 128, size: 1024, align: 512, elements: !5649)
!5649 = !{!5650, !5654, !5655, !5662, !5668, !5672, !5676, !5680, !5681, !5685, !5689, !5694, !5698}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !5648, file: !854, line: 129, baseType: !5651, size: 64)
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5652, size: 64)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!28, !852, !11}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !5648, file: !854, line: 130, baseType: !5651, size: 64, offset: 64)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !5648, file: !854, line: 131, baseType: !5656, size: 64, offset: 128)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!28, !5659, !5661}
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !5648, file: !854, line: 132, baseType: !5663, size: 64, offset: 192)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!28, !5659, !11, !23, !5666}
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !5648, file: !854, line: 134, baseType: !5669, size: 64, offset: 256)
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!28, !5659}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !5648, file: !854, line: 135, baseType: !5673, size: 64, offset: 320)
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5674, size: 64)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!28, !852}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !5648, file: !854, line: 136, baseType: !5677, size: 64, offset: 384)
!5677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5678, size: 64)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !852}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !5648, file: !854, line: 137, baseType: !5677, size: 64, offset: 448)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !5648, file: !854, line: 138, baseType: !5682, size: 64, offset: 512)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{null, !852, !892}
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !5648, file: !854, line: 139, baseType: !5686, size: 64, offset: 576)
!5686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5687, size: 64)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{!593, !852, !593, !28}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !5648, file: !854, line: 140, baseType: !5690, size: 64, offset: 640)
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!847, !5693}
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !5648, file: !854, line: 141, baseType: !5695, size: 64, offset: 704)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!28, !1013, !582}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !5648, file: !854, line: 142, baseType: !5699, size: 64, offset: 768)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{!852, !852, !5702}
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1101, file: !163, line: 1271, baseType: !5705, size: 448, offset: 8128)
!5705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2654, line: 63, size: 448, elements: !5706)
!5706 = !{!5707, !5712, !5713, !5714, !5715, !5716, !5717}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5705, file: !2654, line: 64, baseType: !5708, size: 64)
!5708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5709, size: 64)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{!45, !5711, !2652}
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5705, size: 64)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5705, file: !2654, line: 66, baseType: !5708, size: 64, offset: 64)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5705, file: !2654, line: 69, baseType: !816, size: 64, offset: 128)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5705, file: !2654, line: 70, baseType: !28, size: 32, offset: 192)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5705, file: !2654, line: 71, baseType: !11, size: 32, offset: 224)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5705, file: !2654, line: 74, baseType: !103, size: 128, offset: 256)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5705, file: !2654, line: 85, baseType: !5718, size: 64, offset: 384)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1101, file: !163, line: 1274, baseType: !363, size: 64, offset: 8576)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1101, file: !163, line: 1280, baseType: !363, size: 64, offset: 8640)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1101, file: !163, line: 1283, baseType: !28, size: 32, offset: 8704)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1101, file: !163, line: 1286, baseType: !1969, size: 32, offset: 8736)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1101, file: !163, line: 1289, baseType: !2470, size: 64, offset: 8768)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1101, file: !163, line: 1290, baseType: !426, size: 64, offset: 8832)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1101, file: !163, line: 1297, baseType: !666, size: 64, offset: 8896)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1101, file: !163, line: 1304, baseType: !5727, size: 64, offset: 8960)
!5727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5728, line: 49, size: 64, elements: !5729)
!5728 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5729 = !{!5730}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5727, file: !5728, line: 50, baseType: !5731, size: 64)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5728, line: 41, size: 512, align: 512, elements: !5733)
!5733 = !{!5734, !5735, !5740}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5732, file: !5728, line: 43, baseType: !65, size: 32)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5732, file: !5728, line: 45, baseType: !5736, size: 192, offset: 64)
!5736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5728, line: 29, size: 192, elements: !5737)
!5737 = !{!5738, !5739}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5736, file: !5728, line: 30, baseType: !103, size: 128)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5736, file: !5728, line: 32, baseType: !816, size: 64, offset: 128)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5732, file: !5728, line: 46, baseType: !816, size: 64, offset: 256)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1101, file: !163, line: 1305, baseType: !5727, size: 64, offset: 9024)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1101, file: !163, line: 1306, baseType: !350, size: 128, align: 64, offset: 9088)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1101, file: !163, line: 1307, baseType: !715, size: 256, offset: 9216)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1101, file: !163, line: 1309, baseType: !372, size: 256, offset: 9472)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1101, file: !163, line: 1314, baseType: !28, size: 32, offset: 9728)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1101, file: !163, line: 1317, baseType: !65, size: 32, align: 512, offset: 10240)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1101, file: !163, line: 1318, baseType: !103, size: 128, offset: 10304)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1101, file: !163, line: 1320, baseType: !65, size: 32, offset: 10432)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1101, file: !163, line: 1321, baseType: !103, size: 128, offset: 10496)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !893, file: !163, line: 656, baseType: !1250, size: 64, offset: 512)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !893, file: !163, line: 659, baseType: !26, size: 64, offset: 576)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !893, file: !163, line: 663, baseType: !45, size: 64, offset: 640)
!5753 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !163, line: 671, baseType: !5754, size: 32, offset: 704)
!5754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !163, line: 671, size: 32, elements: !5755)
!5755 = !{!5756, !5758}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5754, file: !163, line: 672, baseType: !5757, size: 32)
!5757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5754, file: !163, line: 673, baseType: !11, size: 32)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !893, file: !163, line: 675, baseType: !966, size: 32, offset: 736)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !893, file: !163, line: 676, baseType: !47, size: 64, offset: 768)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !893, file: !163, line: 677, baseType: !1002, size: 128, offset: 832)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !893, file: !163, line: 678, baseType: !1002, size: 128, offset: 960)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !893, file: !163, line: 679, baseType: !1002, size: 128, offset: 1088)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !893, file: !163, line: 680, baseType: !65, size: 32, offset: 1216)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !893, file: !163, line: 681, baseType: !32, size: 16, offset: 1248)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !893, file: !163, line: 682, baseType: !89, size: 8, offset: 1264)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !893, file: !163, line: 683, baseType: !89, size: 8, offset: 1272)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !893, file: !163, line: 684, baseType: !2785, size: 64, offset: 1280)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !893, file: !163, line: 691, baseType: !45, size: 64, offset: 1344)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !893, file: !163, line: 692, baseType: !521, size: 320, offset: 1408)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !893, file: !163, line: 694, baseType: !45, size: 64, offset: 1728)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !893, file: !163, line: 695, baseType: !45, size: 64, offset: 1792)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !893, file: !163, line: 697, baseType: !430, size: 128, offset: 1856)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !893, file: !163, line: 698, baseType: !103, size: 128, offset: 1984)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !893, file: !163, line: 707, baseType: !103, size: 128, offset: 2112)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !893, file: !163, line: 708, baseType: !103, size: 128, offset: 2240)
!5777 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !163, line: 709, baseType: !5778, size: 128, offset: 2368)
!5778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !163, line: 709, size: 128, elements: !5779)
!5779 = !{!5780, !5781}
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5778, file: !163, line: 710, baseType: !426, size: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5778, file: !163, line: 711, baseType: !350, size: 128, align: 64)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !893, file: !163, line: 713, baseType: !365, size: 64, offset: 2496)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !893, file: !163, line: 714, baseType: !365, size: 64, offset: 2560)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !893, file: !163, line: 715, baseType: !55, size: 32, offset: 2624)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !893, file: !163, line: 716, baseType: !55, size: 32, offset: 2656)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !893, file: !163, line: 717, baseType: !55, size: 32, offset: 2688)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !893, file: !163, line: 719, baseType: !55, size: 32, offset: 2720)
!5788 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !163, line: 721, baseType: !5789, size: 64, offset: 2752)
!5789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !163, line: 721, size: 64, elements: !5790)
!5790 = !{!5791, !5930}
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5789, file: !163, line: 722, baseType: !5792, size: 64)
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5794)
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !163, line: 1914, size: 2112, elements: !5795)
!5795 = !{!5796, !5797, !5801, !5805, !5809, !5810, !5811, !5815, !5828, !5832, !5836, !5837, !5841, !5842, !5846, !5851, !5852, !5856, !5860, !5866, !5867, !5871, !5872, !5876, !5880, !5881, !5886, !5890, !5894, !5898, !5902, !5903, !5926}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5794, file: !163, line: 1915, baseType: !1133, size: 64)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5794, file: !163, line: 1916, baseType: !5798, size: 64, offset: 64)
!5798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5799, size: 64)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!47, !337, !47, !28}
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5794, file: !163, line: 1917, baseType: !5802, size: 64, offset: 128)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5803, size: 64)
!5803 = !DISubroutineType(types: !5804)
!5804 = !{!1044, !337, !593, !41, !46}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5794, file: !163, line: 1918, baseType: !5806, size: 64, offset: 192)
!5806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5807, size: 64)
!5807 = !DISubroutineType(types: !5808)
!5808 = !{!1044, !337, !23, !41, !46}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5794, file: !163, line: 1919, baseType: !1848, size: 64, offset: 256)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5794, file: !163, line: 1920, baseType: !1848, size: 64, offset: 320)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5794, file: !163, line: 1921, baseType: !5812, size: 64, offset: 384)
!5812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5813, size: 64)
!5813 = !DISubroutineType(types: !5814)
!5814 = !{!28, !1851, !2932, !11}
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5794, file: !163, line: 1923, baseType: !5816, size: 64, offset: 448)
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5817, size: 64)
!5817 = !DISubroutineType(types: !5818)
!5818 = !{!28, !337, !5819}
!5819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5820, size: 64)
!5820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !163, line: 1858, size: 128, elements: !5821)
!5821 = !{!5822, !5827}
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5820, file: !163, line: 1859, baseType: !5823, size: 64)
!5823 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !163, line: 1855, baseType: !5824)
!5824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5825, size: 64)
!5825 = !DISubroutineType(types: !5826)
!5826 = !{!582, !5819, !23, !28, !47, !489, !11}
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5820, file: !163, line: 1860, baseType: !47, size: 64, offset: 64)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5794, file: !163, line: 1924, baseType: !5829, size: 64, offset: 512)
!5829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5830, size: 64)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!2136, !337, !2138}
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5794, file: !163, line: 1925, baseType: !5833, size: 64, offset: 576)
!5833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5834, size: 64)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{!816, !337, !11, !45}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5794, file: !163, line: 1926, baseType: !5833, size: 64, offset: 640)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5794, file: !163, line: 1927, baseType: !5838, size: 64, offset: 704)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!28, !337, !1384}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5794, file: !163, line: 1928, baseType: !45, size: 64, offset: 768)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5794, file: !163, line: 1929, baseType: !5843, size: 64, offset: 832)
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5844, size: 64)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{!28, !892, !337}
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5794, file: !163, line: 1930, baseType: !5847, size: 64, offset: 896)
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!28, !337, !5850}
!5850 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !163, line: 1061, baseType: !26)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5794, file: !163, line: 1931, baseType: !5843, size: 64, offset: 960)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5794, file: !163, line: 1932, baseType: !5853, size: 64, offset: 1024)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!28, !337, !47, !47, !28}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5794, file: !163, line: 1933, baseType: !5857, size: 64, offset: 1088)
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!28, !28, !337, !28}
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5794, file: !163, line: 1934, baseType: !5861, size: 64, offset: 1152)
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5862, size: 64)
!5862 = !DISubroutineType(types: !5863)
!5863 = !{!28, !337, !28, !5864}
!5864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5865, size: 64)
!5865 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !163, line: 1063, flags: DIFlagFwdDecl)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5794, file: !163, line: 1935, baseType: !1422, size: 64, offset: 1216)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5794, file: !163, line: 1936, baseType: !5868, size: 64, offset: 1280)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!28, !28}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5794, file: !163, line: 1937, baseType: !5861, size: 64, offset: 1344)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5794, file: !163, line: 1938, baseType: !5873, size: 64, offset: 1408)
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{!1044, !5292, !337, !46, !41, !11}
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5794, file: !163, line: 1939, baseType: !5877, size: 64, offset: 1472)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!1044, !337, !46, !5292, !41, !11}
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5794, file: !163, line: 1940, baseType: !1959, size: 64, offset: 1536)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5794, file: !163, line: 1941, baseType: !5882, size: 64, offset: 1600)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = !DISubroutineType(types: !5884)
!5884 = !{!28, !337, !28, !5885, !1825}
!5885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5794, file: !163, line: 1942, baseType: !5887, size: 64, offset: 1664)
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!816, !337, !28, !47, !47}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5794, file: !163, line: 1944, baseType: !5891, size: 64, offset: 1728)
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{null, !2069, !337}
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5794, file: !163, line: 1948, baseType: !5895, size: 64, offset: 1792)
!5895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5896, size: 64)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!1044, !337, !47, !337, !47, !41, !11}
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5794, file: !163, line: 1950, baseType: !5899, size: 64, offset: 1856)
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!47, !337, !47, !337, !47, !47, !11}
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5794, file: !163, line: 1953, baseType: !5853, size: 64, offset: 1920)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5794, file: !163, line: 1954, baseType: !5904, size: 64, offset: 1984)
!5904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5905, size: 64)
!5905 = !DISubroutineType(types: !5906)
!5906 = !{!28, !5907, !11}
!5907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5908, size: 64)
!5908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !315, line: 25, size: 512, elements: !5909)
!5909 = !{!5910, !5911, !5914, !5922, !5923, !5924}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5908, file: !315, line: 26, baseType: !337, size: 64)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "sqe", scope: !5908, file: !315, line: 27, baseType: !5912, size: 64, offset: 64)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!5914 = !DIDerivedType(tag: DW_TAG_member, scope: !5908, file: !315, line: 28, baseType: !5915, size: 64, offset: 128)
!5915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5908, file: !315, line: 28, size: 64, elements: !5916)
!5916 = !{!5917, !5921}
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "task_work_cb", scope: !5915, file: !315, line: 30, baseType: !5918, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5919, size: 64)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{null, !5907, !11}
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !5915, file: !315, line: 32, baseType: !26, size: 64)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_op", scope: !5908, file: !315, line: 34, baseType: !546, size: 32, offset: 192)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5908, file: !315, line: 35, baseType: !546, size: 32, offset: 224)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "pdu", scope: !5908, file: !315, line: 36, baseType: !5925, size: 256, offset: 256)
!5925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !2826)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5794, file: !163, line: 1955, baseType: !5927, size: 64, offset: 2048)
!5927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5928, size: 64)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{!28, !5907, !2932, !11}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5789, file: !163, line: 723, baseType: !2543, size: 64)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !893, file: !163, line: 725, baseType: !5932, size: 64, offset: 2816)
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !163, line: 725, flags: DIFlagFwdDecl)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !893, file: !163, line: 726, baseType: !1251, size: 1536, align: 64, offset: 2880)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !893, file: !163, line: 727, baseType: !103, size: 128, offset: 4416)
!5936 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !163, line: 728, baseType: !5937, size: 64, offset: 4544)
!5937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !163, line: 728, size: 64, elements: !5938)
!5938 = !{!5939, !5940, !5943, !5944}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5937, file: !163, line: 729, baseType: !5292, size: 64)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5937, file: !163, line: 730, baseType: !5941, size: 64)
!5941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5942, size: 64)
!5942 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !163, line: 730, flags: DIFlagFwdDecl)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5937, file: !163, line: 731, baseType: !593, size: 64)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5937, file: !163, line: 732, baseType: !11, size: 32)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !893, file: !163, line: 735, baseType: !547, size: 32, offset: 4608)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !893, file: !163, line: 738, baseType: !547, size: 32, offset: 4640)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !893, file: !163, line: 739, baseType: !5632, size: 64, offset: 4672)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !893, file: !163, line: 750, baseType: !26, size: 64, offset: 4736)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !853, file: !854, line: 91, baseType: !5950, size: 256, offset: 448)
!5950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !2826)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !853, file: !854, line: 94, baseType: !5952, size: 64, offset: 704)
!5952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5953, line: 25, size: 64, elements: !5954)
!5953 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5954 = !{!5955}
!5955 = !DIDerivedType(tag: DW_TAG_member, scope: !5952, file: !5953, line: 26, baseType: !5956, size: 64)
!5956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5952, file: !5953, line: 26, size: 64, elements: !5957)
!5957 = !{!5958, !5959}
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5956, file: !5953, line: 28, baseType: !490, size: 64, align: 64)
!5959 = !DIDerivedType(tag: DW_TAG_member, scope: !5956, file: !5953, line: 30, baseType: !5960, size: 64)
!5960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5956, file: !5953, line: 30, size: 64, elements: !5961)
!5961 = !{!5962, !5963}
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5960, file: !5953, line: 31, baseType: !65, size: 32)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5960, file: !5953, line: 32, baseType: !28, size: 32, offset: 32)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !853, file: !854, line: 95, baseType: !5646, size: 64, offset: 768)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !853, file: !854, line: 96, baseType: !1100, size: 64, offset: 832)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !853, file: !854, line: 97, baseType: !45, size: 64, offset: 896)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !853, file: !854, line: 98, baseType: !26, size: 64, offset: 960)
!5968 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !854, line: 100, baseType: !5969, size: 128, offset: 1024)
!5969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !854, line: 100, size: 128, elements: !5970)
!5970 = !{!5971, !5972}
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5969, file: !854, line: 101, baseType: !103, size: 128)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5969, file: !854, line: 102, baseType: !5973, size: 64)
!5973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !853, file: !854, line: 104, baseType: !103, size: 128, offset: 1152)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !853, file: !854, line: 105, baseType: !103, size: 128, offset: 1280)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !853, file: !854, line: 113, baseType: !5977, size: 128, offset: 1408)
!5977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !854, line: 109, size: 128, elements: !5978)
!5978 = !{!5979, !5980, !5981}
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5977, file: !854, line: 110, baseType: !430, size: 128)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5977, file: !854, line: 111, baseType: !868, size: 128)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5977, file: !854, line: 112, baseType: !350, size: 128, align: 64)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !848, file: !849, line: 72, baseType: !1100, size: 64, offset: 64)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !848, file: !849, line: 73, baseType: !28, size: 32, offset: 128)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !848, file: !849, line: 74, baseType: !931, size: 64, offset: 192)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !843, file: !844, line: 10, baseType: !852, size: 64, offset: 64)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !338, file: !163, line: 1015, baseType: !892, size: 64, offset: 1344)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !338, file: !163, line: 1016, baseType: !5792, size: 64, offset: 1408)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !338, file: !163, line: 1018, baseType: !489, size: 64, offset: 1472)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !338, file: !163, line: 1020, baseType: !26, size: 64, offset: 1536)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !338, file: !163, line: 1023, baseType: !26, size: 64, offset: 1600)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !338, file: !163, line: 1027, baseType: !5992, size: 64, offset: 1664)
!5992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !338, file: !163, line: 1029, baseType: !1250, size: 64, offset: 1728)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !338, file: !163, line: 1030, baseType: !1969, size: 32, offset: 1792)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !338, file: !163, line: 1031, baseType: !1969, size: 32, offset: 1824)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "old_dfd", scope: !334, file: !2, line: 20, baseType: !28, size: 32, offset: 64)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "new_dfd", scope: !334, file: !2, line: 21, baseType: !28, size: 32, offset: 96)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "oldpath", scope: !334, file: !2, line: 22, baseType: !5999, size: 64, offset: 128)
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6000, size: 64)
!6000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !163, line: 2470, size: 256, elements: !6001)
!6001 = !{!6002, !6003, !6004, !6005, !6008}
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6000, file: !163, line: 2471, baseType: !23, size: 64)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !6000, file: !163, line: 2472, baseType: !23, size: 64, offset: 64)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !6000, file: !163, line: 2473, baseType: !55, size: 32, offset: 128)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !6000, file: !163, line: 2474, baseType: !6006, size: 64, offset: 192)
!6006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6007, size: 64)
!6007 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !163, line: 2469, flags: DIFlagFwdDecl)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !6000, file: !163, line: 2475, baseType: !6009, offset: 256)
!6009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, elements: !448)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "newpath", scope: !334, file: !2, line: 23, baseType: !5999, size: 64, offset: 192)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !2, line: 24, baseType: !28, size: 32, offset: 256)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6014)
!6014 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!6015 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 42, baseType: !45)
!6016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6017, size: 64)
!6017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6018)
!6018 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !491)
!6019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6020, size: 64)
!6020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6021)
!6021 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!6022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6023, size: 64)
!6023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_unlink", file: !2, line: 27, size: 192, elements: !6024)
!6024 = !{!6025, !6026, !6027, !6028}
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6023, file: !2, line: 28, baseType: !337, size: 64)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "dfd", scope: !6023, file: !2, line: 29, baseType: !28, size: 32, offset: 64)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6023, file: !2, line: 30, baseType: !28, size: 32, offset: 96)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !6023, file: !2, line: 31, baseType: !5999, size: 64, offset: 128)
!6029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6030, size: 64)
!6030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_mkdir", file: !2, line: 34, size: 192, elements: !6031)
!6031 = !{!6032, !6033, !6034, !6035}
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6030, file: !2, line: 35, baseType: !337, size: 64)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "dfd", scope: !6030, file: !2, line: 36, baseType: !28, size: 32, offset: 64)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6030, file: !2, line: 37, baseType: !30, size: 16, offset: 96)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !6030, file: !2, line: 38, baseType: !5999, size: 64, offset: 128)
!6036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6037, size: 64)
!6037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_link", file: !2, line: 41, size: 320, elements: !6038)
!6038 = !{!6039, !6040, !6041, !6042, !6043, !6044}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6037, file: !2, line: 42, baseType: !337, size: 64)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "old_dfd", scope: !6037, file: !2, line: 43, baseType: !28, size: 32, offset: 64)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "new_dfd", scope: !6037, file: !2, line: 44, baseType: !28, size: 32, offset: 96)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "oldpath", scope: !6037, file: !2, line: 45, baseType: !5999, size: 64, offset: 128)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "newpath", scope: !6037, file: !2, line: 46, baseType: !5999, size: 64, offset: 192)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6037, file: !2, line: 47, baseType: !28, size: 32, offset: 256)
!6045 = !{!0}
!6046 = !{i32 7, !"Dwarf Version", i32 5}
!6047 = !{i32 2, !"Debug Info Version", i32 3}
!6048 = !{i32 1, !"wchar_size", i32 2}
!6049 = !{i32 8, !"cf-protection-branch", i32 1}
!6050 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6051 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6052 = !{i32 1, !"Code Model", i32 2}
!6053 = !{i32 1, !"override-stack-alignment", i32 8}
!6054 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6055 = distinct !DISubprogram(name: "io_renameat_prep", scope: !2, file: !2, line: 50, type: !6056, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6058)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!28, !4326, !5912}
!6058 = !{!6059, !6060, !6061, !6062, !6063, !6064, !6067, !6068, !6071}
!6059 = !DILocalVariable(name: "req", arg: 1, scope: !6055, file: !2, line: 50, type: !4326)
!6060 = !DILocalVariable(name: "sqe", arg: 2, scope: !6055, file: !2, line: 50, type: !5912)
!6061 = !DILocalVariable(name: "ren", scope: !6055, file: !2, line: 52, type: !333)
!6062 = !DILocalVariable(name: "oldf", scope: !6055, file: !2, line: 53, type: !23)
!6063 = !DILocalVariable(name: "newf", scope: !6055, file: !2, line: 53, type: !23)
!6064 = !DILocalVariable(name: "__dummy", scope: !6065, file: !2, line: 61, type: !489)
!6065 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 61, column: 9)
!6066 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 61, column: 9)
!6067 = !DILocalVariable(name: "__dummy2", scope: !6065, file: !2, line: 61, type: !491)
!6068 = !DILocalVariable(name: "__dummy", scope: !6069, file: !2, line: 62, type: !489)
!6069 = distinct !DILexicalBlock(scope: !6070, file: !2, line: 62, column: 9)
!6070 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 62, column: 9)
!6071 = !DILocalVariable(name: "__dummy2", scope: !6069, file: !2, line: 62, type: !491)
!6072 = !DILocation(line: 50, column: 39, scope: !6055)
!6073 = !DILocation(line: 50, column: 71, scope: !6055)
!6074 = !DILocation(line: 52, column: 2, scope: !6055)
!6075 = !DILocation(line: 52, column: 20, scope: !6055)
!6076 = !DILocation(line: 52, column: 26, scope: !6055)
!6077 = !DILocation(line: 53, column: 2, scope: !6055)
!6078 = !DILocation(line: 53, column: 21, scope: !6055)
!6079 = !DILocation(line: 53, column: 28, scope: !6055)
!6080 = !DILocation(line: 55, column: 6, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 55, column: 6)
!6082 = !DILocation(line: 55, column: 11, scope: !6081)
!6083 = !DILocation(line: 55, column: 21, scope: !6081)
!6084 = !DILocation(line: 55, column: 24, scope: !6081)
!6085 = !DILocation(line: 55, column: 29, scope: !6081)
!6086 = !DILocation(line: 55, column: 6, scope: !6055)
!6087 = !DILocation(line: 56, column: 3, scope: !6081)
!6088 = !DILocation(line: 57, column: 6, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 57, column: 6)
!6090 = !DILocation(line: 57, column: 6, scope: !6055)
!6091 = !DILocation(line: 58, column: 3, scope: !6089)
!6092 = !DILocation(line: 60, column: 17, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 60, column: 17)
!6094 = !DILocation(line: 60, column: 17, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6093, file: !2, line: 60, column: 17)
!6096 = !DILocation(line: 60, column: 2, scope: !6055)
!6097 = !DILocation(line: 60, column: 7, scope: !6055)
!6098 = !DILocation(line: 60, column: 15, scope: !6055)
!6099 = !DILocation(line: 61, column: 9, scope: !6065)
!6100 = !DILocation(line: 61, column: 9, scope: !6066)
!6101 = !DILocation(line: 61, column: 9, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 61, column: 9)
!6103 = !DILocation(line: 61, column: 9, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6102, file: !2, line: 61, column: 9)
!6105 = !DILocation(line: 61, column: 7, scope: !6055)
!6106 = !DILocation(line: 62, column: 9, scope: !6069)
!6107 = !DILocation(line: 62, column: 9, scope: !6070)
!6108 = !DILocation(line: 62, column: 9, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6070, file: !2, line: 62, column: 9)
!6110 = !DILocation(line: 62, column: 9, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6109, file: !2, line: 62, column: 9)
!6112 = !DILocation(line: 62, column: 7, scope: !6055)
!6113 = !DILocation(line: 63, column: 17, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 63, column: 17)
!6115 = !DILocation(line: 63, column: 17, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6114, file: !2, line: 63, column: 17)
!6117 = !DILocation(line: 63, column: 2, scope: !6055)
!6118 = !DILocation(line: 63, column: 7, scope: !6055)
!6119 = !DILocation(line: 63, column: 15, scope: !6055)
!6120 = !DILocation(line: 64, column: 15, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 64, column: 15)
!6122 = !DILocation(line: 64, column: 15, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6121, file: !2, line: 64, column: 15)
!6124 = !DILocation(line: 64, column: 2, scope: !6055)
!6125 = !DILocation(line: 64, column: 7, scope: !6055)
!6126 = !DILocation(line: 64, column: 13, scope: !6055)
!6127 = !DILocation(line: 66, column: 25, scope: !6055)
!6128 = !DILocation(line: 66, column: 17, scope: !6055)
!6129 = !DILocation(line: 66, column: 2, scope: !6055)
!6130 = !DILocation(line: 66, column: 7, scope: !6055)
!6131 = !DILocation(line: 66, column: 15, scope: !6055)
!6132 = !DILocation(line: 67, column: 13, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 67, column: 6)
!6134 = !DILocation(line: 67, column: 18, scope: !6133)
!6135 = !DILocation(line: 67, column: 6, scope: !6133)
!6136 = !DILocation(line: 67, column: 6, scope: !6055)
!6137 = !DILocation(line: 68, column: 18, scope: !6133)
!6138 = !DILocation(line: 68, column: 23, scope: !6133)
!6139 = !DILocation(line: 68, column: 10, scope: !6133)
!6140 = !DILocation(line: 68, column: 3, scope: !6133)
!6141 = !DILocation(line: 70, column: 25, scope: !6055)
!6142 = !DILocation(line: 70, column: 17, scope: !6055)
!6143 = !DILocation(line: 70, column: 2, scope: !6055)
!6144 = !DILocation(line: 70, column: 7, scope: !6055)
!6145 = !DILocation(line: 70, column: 15, scope: !6055)
!6146 = !DILocation(line: 71, column: 13, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6055, file: !2, line: 71, column: 6)
!6148 = !DILocation(line: 71, column: 18, scope: !6147)
!6149 = !DILocation(line: 71, column: 6, scope: !6147)
!6150 = !DILocation(line: 71, column: 6, scope: !6055)
!6151 = !DILocation(line: 72, column: 11, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6147, file: !2, line: 71, column: 28)
!6153 = !DILocation(line: 72, column: 16, scope: !6152)
!6154 = !DILocation(line: 72, column: 3, scope: !6152)
!6155 = !DILocation(line: 73, column: 18, scope: !6152)
!6156 = !DILocation(line: 73, column: 23, scope: !6152)
!6157 = !DILocation(line: 73, column: 10, scope: !6152)
!6158 = !DILocation(line: 73, column: 3, scope: !6152)
!6159 = !DILocation(line: 76, column: 2, scope: !6055)
!6160 = !DILocation(line: 76, column: 7, scope: !6055)
!6161 = !DILocation(line: 76, column: 13, scope: !6055)
!6162 = !DILocation(line: 77, column: 2, scope: !6055)
!6163 = !DILocation(line: 77, column: 7, scope: !6055)
!6164 = !DILocation(line: 77, column: 13, scope: !6055)
!6165 = !DILocation(line: 78, column: 2, scope: !6055)
!6166 = !DILocation(line: 79, column: 1, scope: !6055)
!6167 = distinct !DISubprogram(name: "io_kiocb_cmd_sz_check", scope: !282, file: !282, line: 518, type: !6168, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6170)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{null, !41}
!6170 = !{!6171}
!6171 = !DILocalVariable(name: "cmd_sz", arg: 1, scope: !6167, file: !282, line: 518, type: !41)
!6172 = !DILocation(line: 518, column: 49, scope: !6167)
!6173 = !DILocation(line: 520, column: 2, scope: !6167)
!6174 = !DILocation(line: 520, column: 2, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6176, file: !282, line: 520, column: 2)
!6176 = distinct !DILexicalBlock(scope: !6167, file: !282, line: 520, column: 2)
!6177 = !DILocation(line: 520, column: 2, scope: !6176)
!6178 = !{i32 -2139257214}
!6179 = !DILocation(line: 521, column: 1, scope: !6167)
!6180 = !DISubprogram(name: "getname", scope: !163, file: !163, line: 2547, type: !6181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6181 = !DISubroutineType(types: !6182)
!6182 = !{!5999, !23}
!6183 = distinct !DISubprogram(name: "IS_ERR", scope: !6184, file: !6184, line: 59, type: !6185, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6187)
!6184 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6185 = !DISubroutineType(types: !6186)
!6186 = !{!582, !1513}
!6187 = !{!6188}
!6188 = !DILocalVariable(name: "ptr", arg: 1, scope: !6183, file: !6184, line: 59, type: !1513)
!6189 = !DILocation(line: 59, column: 60, scope: !6183)
!6190 = !DILocation(line: 61, column: 9, scope: !6183)
!6191 = !DILocation(line: 61, column: 2, scope: !6183)
!6192 = distinct !DISubprogram(name: "PTR_ERR", scope: !6184, file: !6184, line: 49, type: !6193, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6195)
!6193 = !DISubroutineType(types: !6194)
!6194 = !{!816, !1513}
!6195 = !{!6196}
!6196 = !DILocalVariable(name: "ptr", arg: 1, scope: !6192, file: !6184, line: 49, type: !1513)
!6197 = !DILocation(line: 49, column: 61, scope: !6192)
!6198 = !DILocation(line: 51, column: 16, scope: !6192)
!6199 = !DILocation(line: 51, column: 9, scope: !6192)
!6200 = !DILocation(line: 51, column: 2, scope: !6192)
!6201 = !DISubprogram(name: "putname", scope: !163, file: !163, line: 2549, type: !6202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6202 = !DISubroutineType(types: !6203)
!6203 = !{null, !5999}
!6204 = distinct !DISubprogram(name: "io_renameat", scope: !2, file: !2, line: 81, type: !6205, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6207)
!6205 = !DISubroutineType(types: !6206)
!6206 = !{!28, !4326, !11}
!6207 = !{!6208, !6209, !6210, !6211, !6212, !6214}
!6208 = !DILocalVariable(name: "req", arg: 1, scope: !6204, file: !2, line: 81, type: !4326)
!6209 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6204, file: !2, line: 81, type: !11)
!6210 = !DILocalVariable(name: "ren", scope: !6204, file: !2, line: 83, type: !333)
!6211 = !DILocalVariable(name: "ret", scope: !6204, file: !2, line: 84, type: !28)
!6212 = !DILocalVariable(name: "__ret_warn_on", scope: !6213, file: !2, line: 86, type: !28)
!6213 = distinct !DILexicalBlock(scope: !6204, file: !2, line: 86, column: 2)
!6214 = !DILocalVariable(name: "__flags", scope: !6215, file: !2, line: 86, type: !28)
!6215 = distinct !DILexicalBlock(scope: !6216, file: !2, line: 86, column: 2)
!6216 = distinct !DILexicalBlock(scope: !6213, file: !2, line: 86, column: 2)
!6217 = !DILocation(line: 81, column: 34, scope: !6204)
!6218 = !DILocation(line: 81, column: 52, scope: !6204)
!6219 = !DILocation(line: 83, column: 2, scope: !6204)
!6220 = !DILocation(line: 83, column: 20, scope: !6204)
!6221 = !DILocation(line: 83, column: 26, scope: !6204)
!6222 = !DILocation(line: 84, column: 2, scope: !6204)
!6223 = !DILocation(line: 84, column: 6, scope: !6204)
!6224 = !DILocation(line: 86, column: 2, scope: !6213)
!6225 = !DILocation(line: 86, column: 2, scope: !6216)
!6226 = !DILocation(line: 86, column: 2, scope: !6215)
!6227 = !DILocation(line: 86, column: 2, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6215, file: !2, line: 86, column: 2)
!6229 = !DILocation(line: 86, column: 2, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6215, file: !2, line: 86, column: 2)
!6231 = !{i64 2156741120, i64 2156741149, i64 2156741195, i64 2156741253, i64 2156741307, i64 2156741361, i64 2156741416, i64 2156741447, i64 2156741755, i64 2156741761, i64 2156741808, i64 2156741831, i64 2156741857}
!6232 = !DILocation(line: 86, column: 2, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6215, file: !2, line: 86, column: 2)
!6234 = !DILocation(line: 86, column: 2, scope: !6204)
!6235 = !DILocation(line: 88, column: 21, scope: !6204)
!6236 = !DILocation(line: 88, column: 26, scope: !6204)
!6237 = !DILocation(line: 88, column: 35, scope: !6204)
!6238 = !DILocation(line: 88, column: 40, scope: !6204)
!6239 = !DILocation(line: 88, column: 49, scope: !6204)
!6240 = !DILocation(line: 88, column: 54, scope: !6204)
!6241 = !DILocation(line: 89, column: 5, scope: !6204)
!6242 = !DILocation(line: 89, column: 10, scope: !6204)
!6243 = !DILocation(line: 89, column: 19, scope: !6204)
!6244 = !DILocation(line: 89, column: 24, scope: !6204)
!6245 = !DILocation(line: 88, column: 8, scope: !6204)
!6246 = !DILocation(line: 88, column: 6, scope: !6204)
!6247 = !DILocation(line: 91, column: 2, scope: !6204)
!6248 = !DILocation(line: 91, column: 7, scope: !6204)
!6249 = !DILocation(line: 91, column: 13, scope: !6204)
!6250 = !DILocation(line: 92, column: 17, scope: !6204)
!6251 = !DILocation(line: 92, column: 22, scope: !6204)
!6252 = !DILocation(line: 92, column: 2, scope: !6204)
!6253 = !DILocation(line: 94, column: 1, scope: !6204)
!6254 = !DILocation(line: 93, column: 2, scope: !6204)
!6255 = !DISubprogram(name: "do_renameat2", scope: !6256, file: !6256, line: 59, type: !6257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6256 = !DIFile(filename: "io_uring/../fs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc0abbd20470e9e11dfbcff1f3969f")
!6257 = !DISubroutineType(types: !6258)
!6258 = !{!28, !28, !5999, !28, !5999, !11}
!6259 = distinct !DISubprogram(name: "io_req_set_res", scope: !326, file: !326, line: 191, type: !6260, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6262)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{null, !4326, !506, !546}
!6262 = !{!6263, !6264, !6265}
!6263 = !DILocalVariable(name: "req", arg: 1, scope: !6259, file: !326, line: 191, type: !4326)
!6264 = !DILocalVariable(name: "res", arg: 2, scope: !6259, file: !326, line: 191, type: !506)
!6265 = !DILocalVariable(name: "cflags", arg: 3, scope: !6259, file: !326, line: 191, type: !546)
!6266 = !DILocation(line: 191, column: 52, scope: !6259)
!6267 = !DILocation(line: 191, column: 61, scope: !6259)
!6268 = !DILocation(line: 191, column: 70, scope: !6259)
!6269 = !DILocation(line: 193, column: 17, scope: !6259)
!6270 = !DILocation(line: 193, column: 2, scope: !6259)
!6271 = !DILocation(line: 193, column: 7, scope: !6259)
!6272 = !DILocation(line: 193, column: 11, scope: !6259)
!6273 = !DILocation(line: 193, column: 15, scope: !6259)
!6274 = !DILocation(line: 194, column: 19, scope: !6259)
!6275 = !DILocation(line: 194, column: 2, scope: !6259)
!6276 = !DILocation(line: 194, column: 7, scope: !6259)
!6277 = !DILocation(line: 194, column: 11, scope: !6259)
!6278 = !DILocation(line: 194, column: 17, scope: !6259)
!6279 = !DILocation(line: 195, column: 1, scope: !6259)
!6280 = distinct !DISubprogram(name: "io_renameat_cleanup", scope: !2, file: !2, line: 96, type: !6281, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6283)
!6281 = !DISubroutineType(types: !6282)
!6282 = !{null, !4326}
!6283 = !{!6284, !6285}
!6284 = !DILocalVariable(name: "req", arg: 1, scope: !6280, file: !2, line: 96, type: !4326)
!6285 = !DILocalVariable(name: "ren", scope: !6280, file: !2, line: 98, type: !333)
!6286 = !DILocation(line: 96, column: 43, scope: !6280)
!6287 = !DILocation(line: 98, column: 2, scope: !6280)
!6288 = !DILocation(line: 98, column: 20, scope: !6280)
!6289 = !DILocation(line: 98, column: 26, scope: !6280)
!6290 = !DILocation(line: 100, column: 10, scope: !6280)
!6291 = !DILocation(line: 100, column: 15, scope: !6280)
!6292 = !DILocation(line: 100, column: 2, scope: !6280)
!6293 = !DILocation(line: 101, column: 10, scope: !6280)
!6294 = !DILocation(line: 101, column: 15, scope: !6280)
!6295 = !DILocation(line: 101, column: 2, scope: !6280)
!6296 = !DILocation(line: 102, column: 1, scope: !6280)
!6297 = distinct !DISubprogram(name: "io_unlinkat_prep", scope: !2, file: !2, line: 104, type: !6056, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6298)
!6298 = !{!6299, !6300, !6301, !6302, !6303, !6306}
!6299 = !DILocalVariable(name: "req", arg: 1, scope: !6297, file: !2, line: 104, type: !4326)
!6300 = !DILocalVariable(name: "sqe", arg: 2, scope: !6297, file: !2, line: 104, type: !5912)
!6301 = !DILocalVariable(name: "un", scope: !6297, file: !2, line: 106, type: !6022)
!6302 = !DILocalVariable(name: "fname", scope: !6297, file: !2, line: 107, type: !23)
!6303 = !DILocalVariable(name: "__dummy", scope: !6304, file: !2, line: 120, type: !489)
!6304 = distinct !DILexicalBlock(scope: !6305, file: !2, line: 120, column: 10)
!6305 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 120, column: 10)
!6306 = !DILocalVariable(name: "__dummy2", scope: !6304, file: !2, line: 120, type: !491)
!6307 = !DILocation(line: 104, column: 39, scope: !6297)
!6308 = !DILocation(line: 104, column: 71, scope: !6297)
!6309 = !DILocation(line: 106, column: 2, scope: !6297)
!6310 = !DILocation(line: 106, column: 20, scope: !6297)
!6311 = !DILocation(line: 106, column: 25, scope: !6297)
!6312 = !DILocation(line: 107, column: 2, scope: !6297)
!6313 = !DILocation(line: 107, column: 21, scope: !6297)
!6314 = !DILocation(line: 109, column: 6, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 109, column: 6)
!6316 = !DILocation(line: 109, column: 11, scope: !6315)
!6317 = !DILocation(line: 109, column: 15, scope: !6315)
!6318 = !DILocation(line: 109, column: 18, scope: !6315)
!6319 = !DILocation(line: 109, column: 23, scope: !6315)
!6320 = !DILocation(line: 109, column: 27, scope: !6315)
!6321 = !DILocation(line: 109, column: 30, scope: !6315)
!6322 = !DILocation(line: 109, column: 35, scope: !6315)
!6323 = !DILocation(line: 109, column: 45, scope: !6315)
!6324 = !DILocation(line: 109, column: 48, scope: !6315)
!6325 = !DILocation(line: 109, column: 53, scope: !6315)
!6326 = !DILocation(line: 109, column: 6, scope: !6297)
!6327 = !DILocation(line: 110, column: 3, scope: !6315)
!6328 = !DILocation(line: 111, column: 6, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 111, column: 6)
!6330 = !DILocation(line: 111, column: 6, scope: !6297)
!6331 = !DILocation(line: 112, column: 3, scope: !6329)
!6332 = !DILocation(line: 114, column: 12, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 114, column: 12)
!6334 = !DILocation(line: 114, column: 12, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6333, file: !2, line: 114, column: 12)
!6336 = !DILocation(line: 114, column: 2, scope: !6297)
!6337 = !DILocation(line: 114, column: 6, scope: !6297)
!6338 = !DILocation(line: 114, column: 10, scope: !6297)
!6339 = !DILocation(line: 116, column: 14, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 116, column: 14)
!6341 = !DILocation(line: 116, column: 14, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6340, file: !2, line: 116, column: 14)
!6343 = !DILocation(line: 116, column: 2, scope: !6297)
!6344 = !DILocation(line: 116, column: 6, scope: !6297)
!6345 = !DILocation(line: 116, column: 12, scope: !6297)
!6346 = !DILocation(line: 117, column: 6, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 117, column: 6)
!6348 = !DILocation(line: 117, column: 10, scope: !6347)
!6349 = !DILocation(line: 117, column: 16, scope: !6347)
!6350 = !DILocation(line: 117, column: 6, scope: !6297)
!6351 = !DILocation(line: 118, column: 3, scope: !6347)
!6352 = !DILocation(line: 120, column: 10, scope: !6304)
!6353 = !DILocation(line: 120, column: 10, scope: !6305)
!6354 = !DILocation(line: 120, column: 10, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6305, file: !2, line: 120, column: 10)
!6356 = !DILocation(line: 120, column: 10, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6355, file: !2, line: 120, column: 10)
!6358 = !DILocation(line: 120, column: 8, scope: !6297)
!6359 = !DILocation(line: 121, column: 25, scope: !6297)
!6360 = !DILocation(line: 121, column: 17, scope: !6297)
!6361 = !DILocation(line: 121, column: 2, scope: !6297)
!6362 = !DILocation(line: 121, column: 6, scope: !6297)
!6363 = !DILocation(line: 121, column: 15, scope: !6297)
!6364 = !DILocation(line: 122, column: 13, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 122, column: 6)
!6366 = !DILocation(line: 122, column: 17, scope: !6365)
!6367 = !DILocation(line: 122, column: 6, scope: !6365)
!6368 = !DILocation(line: 122, column: 6, scope: !6297)
!6369 = !DILocation(line: 123, column: 18, scope: !6365)
!6370 = !DILocation(line: 123, column: 22, scope: !6365)
!6371 = !DILocation(line: 123, column: 10, scope: !6365)
!6372 = !DILocation(line: 123, column: 3, scope: !6365)
!6373 = !DILocation(line: 125, column: 2, scope: !6297)
!6374 = !DILocation(line: 125, column: 7, scope: !6297)
!6375 = !DILocation(line: 125, column: 13, scope: !6297)
!6376 = !DILocation(line: 126, column: 2, scope: !6297)
!6377 = !DILocation(line: 126, column: 7, scope: !6297)
!6378 = !DILocation(line: 126, column: 13, scope: !6297)
!6379 = !DILocation(line: 127, column: 2, scope: !6297)
!6380 = !DILocation(line: 128, column: 1, scope: !6297)
!6381 = distinct !DISubprogram(name: "io_unlinkat", scope: !2, file: !2, line: 130, type: !6205, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6382)
!6382 = !{!6383, !6384, !6385, !6386, !6387, !6389}
!6383 = !DILocalVariable(name: "req", arg: 1, scope: !6381, file: !2, line: 130, type: !4326)
!6384 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6381, file: !2, line: 130, type: !11)
!6385 = !DILocalVariable(name: "un", scope: !6381, file: !2, line: 132, type: !6022)
!6386 = !DILocalVariable(name: "ret", scope: !6381, file: !2, line: 133, type: !28)
!6387 = !DILocalVariable(name: "__ret_warn_on", scope: !6388, file: !2, line: 135, type: !28)
!6388 = distinct !DILexicalBlock(scope: !6381, file: !2, line: 135, column: 2)
!6389 = !DILocalVariable(name: "__flags", scope: !6390, file: !2, line: 135, type: !28)
!6390 = distinct !DILexicalBlock(scope: !6391, file: !2, line: 135, column: 2)
!6391 = distinct !DILexicalBlock(scope: !6388, file: !2, line: 135, column: 2)
!6392 = !DILocation(line: 130, column: 34, scope: !6381)
!6393 = !DILocation(line: 130, column: 52, scope: !6381)
!6394 = !DILocation(line: 132, column: 2, scope: !6381)
!6395 = !DILocation(line: 132, column: 20, scope: !6381)
!6396 = !DILocation(line: 132, column: 25, scope: !6381)
!6397 = !DILocation(line: 133, column: 2, scope: !6381)
!6398 = !DILocation(line: 133, column: 6, scope: !6381)
!6399 = !DILocation(line: 135, column: 2, scope: !6388)
!6400 = !DILocation(line: 135, column: 2, scope: !6391)
!6401 = !DILocation(line: 135, column: 2, scope: !6390)
!6402 = !DILocation(line: 135, column: 2, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6390, file: !2, line: 135, column: 2)
!6404 = !DILocation(line: 135, column: 2, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6390, file: !2, line: 135, column: 2)
!6406 = !{i64 2156754577, i64 2156754606, i64 2156754652, i64 2156754710, i64 2156754764, i64 2156754818, i64 2156754873, i64 2156754904, i64 2156755212, i64 2156755218, i64 2156755265, i64 2156755288, i64 2156755314}
!6407 = !DILocation(line: 135, column: 2, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6390, file: !2, line: 135, column: 2)
!6409 = !DILocation(line: 135, column: 2, scope: !6381)
!6410 = !DILocation(line: 137, column: 6, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6381, file: !2, line: 137, column: 6)
!6412 = !DILocation(line: 137, column: 10, scope: !6411)
!6413 = !DILocation(line: 137, column: 16, scope: !6411)
!6414 = !DILocation(line: 137, column: 6, scope: !6381)
!6415 = !DILocation(line: 138, column: 18, scope: !6411)
!6416 = !DILocation(line: 138, column: 22, scope: !6411)
!6417 = !DILocation(line: 138, column: 27, scope: !6411)
!6418 = !DILocation(line: 138, column: 31, scope: !6411)
!6419 = !DILocation(line: 138, column: 9, scope: !6411)
!6420 = !DILocation(line: 138, column: 7, scope: !6411)
!6421 = !DILocation(line: 138, column: 3, scope: !6411)
!6422 = !DILocation(line: 140, column: 21, scope: !6411)
!6423 = !DILocation(line: 140, column: 25, scope: !6411)
!6424 = !DILocation(line: 140, column: 30, scope: !6411)
!6425 = !DILocation(line: 140, column: 34, scope: !6411)
!6426 = !DILocation(line: 140, column: 9, scope: !6411)
!6427 = !DILocation(line: 140, column: 7, scope: !6411)
!6428 = !DILocation(line: 142, column: 2, scope: !6381)
!6429 = !DILocation(line: 142, column: 7, scope: !6381)
!6430 = !DILocation(line: 142, column: 13, scope: !6381)
!6431 = !DILocation(line: 143, column: 17, scope: !6381)
!6432 = !DILocation(line: 143, column: 22, scope: !6381)
!6433 = !DILocation(line: 143, column: 2, scope: !6381)
!6434 = !DILocation(line: 145, column: 1, scope: !6381)
!6435 = !DILocation(line: 144, column: 2, scope: !6381)
!6436 = !DISubprogram(name: "do_rmdir", scope: !6256, file: !6256, line: 56, type: !6437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!28, !28, !5999}
!6439 = !DISubprogram(name: "do_unlinkat", scope: !6256, file: !6256, line: 57, type: !6437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6440 = distinct !DISubprogram(name: "io_unlinkat_cleanup", scope: !2, file: !2, line: 147, type: !6281, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6441)
!6441 = !{!6442, !6443}
!6442 = !DILocalVariable(name: "req", arg: 1, scope: !6440, file: !2, line: 147, type: !4326)
!6443 = !DILocalVariable(name: "ul", scope: !6440, file: !2, line: 149, type: !6022)
!6444 = !DILocation(line: 147, column: 43, scope: !6440)
!6445 = !DILocation(line: 149, column: 2, scope: !6440)
!6446 = !DILocation(line: 149, column: 20, scope: !6440)
!6447 = !DILocation(line: 149, column: 25, scope: !6440)
!6448 = !DILocation(line: 151, column: 10, scope: !6440)
!6449 = !DILocation(line: 151, column: 14, scope: !6440)
!6450 = !DILocation(line: 151, column: 2, scope: !6440)
!6451 = !DILocation(line: 152, column: 1, scope: !6440)
!6452 = distinct !DISubprogram(name: "io_mkdirat_prep", scope: !2, file: !2, line: 154, type: !6056, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6453)
!6453 = !{!6454, !6455, !6456, !6457, !6458, !6461}
!6454 = !DILocalVariable(name: "req", arg: 1, scope: !6452, file: !2, line: 154, type: !4326)
!6455 = !DILocalVariable(name: "sqe", arg: 2, scope: !6452, file: !2, line: 154, type: !5912)
!6456 = !DILocalVariable(name: "mkd", scope: !6452, file: !2, line: 156, type: !6029)
!6457 = !DILocalVariable(name: "fname", scope: !6452, file: !2, line: 157, type: !23)
!6458 = !DILocalVariable(name: "__dummy", scope: !6459, file: !2, line: 167, type: !489)
!6459 = distinct !DILexicalBlock(scope: !6460, file: !2, line: 167, column: 10)
!6460 = distinct !DILexicalBlock(scope: !6452, file: !2, line: 167, column: 10)
!6461 = !DILocalVariable(name: "__dummy2", scope: !6459, file: !2, line: 167, type: !491)
!6462 = !DILocation(line: 154, column: 38, scope: !6452)
!6463 = !DILocation(line: 154, column: 70, scope: !6452)
!6464 = !DILocation(line: 156, column: 2, scope: !6452)
!6465 = !DILocation(line: 156, column: 19, scope: !6452)
!6466 = !DILocation(line: 156, column: 25, scope: !6452)
!6467 = !DILocation(line: 157, column: 2, scope: !6452)
!6468 = !DILocation(line: 157, column: 21, scope: !6452)
!6469 = !DILocation(line: 159, column: 6, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6452, file: !2, line: 159, column: 6)
!6471 = !DILocation(line: 159, column: 11, scope: !6470)
!6472 = !DILocation(line: 159, column: 15, scope: !6470)
!6473 = !DILocation(line: 159, column: 18, scope: !6470)
!6474 = !DILocation(line: 159, column: 23, scope: !6470)
!6475 = !DILocation(line: 159, column: 32, scope: !6470)
!6476 = !DILocation(line: 159, column: 35, scope: !6470)
!6477 = !DILocation(line: 159, column: 40, scope: !6470)
!6478 = !DILocation(line: 159, column: 50, scope: !6470)
!6479 = !DILocation(line: 159, column: 53, scope: !6470)
!6480 = !DILocation(line: 159, column: 58, scope: !6470)
!6481 = !DILocation(line: 159, column: 6, scope: !6452)
!6482 = !DILocation(line: 160, column: 3, scope: !6470)
!6483 = !DILocation(line: 161, column: 6, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6452, file: !2, line: 161, column: 6)
!6485 = !DILocation(line: 161, column: 6, scope: !6452)
!6486 = !DILocation(line: 162, column: 3, scope: !6484)
!6487 = !DILocation(line: 164, column: 13, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6452, file: !2, line: 164, column: 13)
!6489 = !DILocation(line: 164, column: 13, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6488, file: !2, line: 164, column: 13)
!6491 = !DILocation(line: 164, column: 2, scope: !6452)
!6492 = !DILocation(line: 164, column: 7, scope: !6452)
!6493 = !DILocation(line: 164, column: 11, scope: !6452)
!6494 = !DILocation(line: 165, column: 14, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6452, file: !2, line: 165, column: 14)
!6496 = !DILocation(line: 165, column: 14, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6495, file: !2, line: 165, column: 14)
!6498 = !DILocation(line: 165, column: 14, scope: !6452)
!6499 = !DILocation(line: 165, column: 2, scope: !6452)
!6500 = !DILocation(line: 165, column: 7, scope: !6452)
!6501 = !DILocation(line: 165, column: 12, scope: !6452)
!6502 = !DILocation(line: 167, column: 10, scope: !6459)
!6503 = !DILocation(line: 167, column: 10, scope: !6460)
!6504 = !DILocation(line: 167, column: 10, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6460, file: !2, line: 167, column: 10)
!6506 = !DILocation(line: 167, column: 10, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6505, file: !2, line: 167, column: 10)
!6508 = !DILocation(line: 167, column: 8, scope: !6452)
!6509 = !DILocation(line: 168, column: 26, scope: !6452)
!6510 = !DILocation(line: 168, column: 18, scope: !6452)
!6511 = !DILocation(line: 168, column: 2, scope: !6452)
!6512 = !DILocation(line: 168, column: 7, scope: !6452)
!6513 = !DILocation(line: 168, column: 16, scope: !6452)
!6514 = !DILocation(line: 169, column: 13, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6452, file: !2, line: 169, column: 6)
!6516 = !DILocation(line: 169, column: 18, scope: !6515)
!6517 = !DILocation(line: 169, column: 6, scope: !6515)
!6518 = !DILocation(line: 169, column: 6, scope: !6452)
!6519 = !DILocation(line: 170, column: 18, scope: !6515)
!6520 = !DILocation(line: 170, column: 23, scope: !6515)
!6521 = !DILocation(line: 170, column: 10, scope: !6515)
!6522 = !DILocation(line: 170, column: 3, scope: !6515)
!6523 = !DILocation(line: 172, column: 2, scope: !6452)
!6524 = !DILocation(line: 172, column: 7, scope: !6452)
!6525 = !DILocation(line: 172, column: 13, scope: !6452)
!6526 = !DILocation(line: 173, column: 2, scope: !6452)
!6527 = !DILocation(line: 173, column: 7, scope: !6452)
!6528 = !DILocation(line: 173, column: 13, scope: !6452)
!6529 = !DILocation(line: 174, column: 2, scope: !6452)
!6530 = !DILocation(line: 175, column: 1, scope: !6452)
!6531 = distinct !DISubprogram(name: "io_mkdirat", scope: !2, file: !2, line: 177, type: !6205, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6532)
!6532 = !{!6533, !6534, !6535, !6536, !6537, !6539}
!6533 = !DILocalVariable(name: "req", arg: 1, scope: !6531, file: !2, line: 177, type: !4326)
!6534 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6531, file: !2, line: 177, type: !11)
!6535 = !DILocalVariable(name: "mkd", scope: !6531, file: !2, line: 179, type: !6029)
!6536 = !DILocalVariable(name: "ret", scope: !6531, file: !2, line: 180, type: !28)
!6537 = !DILocalVariable(name: "__ret_warn_on", scope: !6538, file: !2, line: 182, type: !28)
!6538 = distinct !DILexicalBlock(scope: !6531, file: !2, line: 182, column: 2)
!6539 = !DILocalVariable(name: "__flags", scope: !6540, file: !2, line: 182, type: !28)
!6540 = distinct !DILexicalBlock(scope: !6541, file: !2, line: 182, column: 2)
!6541 = distinct !DILexicalBlock(scope: !6538, file: !2, line: 182, column: 2)
!6542 = !DILocation(line: 177, column: 33, scope: !6531)
!6543 = !DILocation(line: 177, column: 51, scope: !6531)
!6544 = !DILocation(line: 179, column: 2, scope: !6531)
!6545 = !DILocation(line: 179, column: 19, scope: !6531)
!6546 = !DILocation(line: 179, column: 25, scope: !6531)
!6547 = !DILocation(line: 180, column: 2, scope: !6531)
!6548 = !DILocation(line: 180, column: 6, scope: !6531)
!6549 = !DILocation(line: 182, column: 2, scope: !6538)
!6550 = !DILocation(line: 182, column: 2, scope: !6541)
!6551 = !DILocation(line: 182, column: 2, scope: !6540)
!6552 = !DILocation(line: 182, column: 2, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6540, file: !2, line: 182, column: 2)
!6554 = !DILocation(line: 182, column: 2, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6540, file: !2, line: 182, column: 2)
!6556 = !{i64 2156767785, i64 2156767814, i64 2156767860, i64 2156767918, i64 2156767972, i64 2156768026, i64 2156768081, i64 2156768112, i64 2156768420, i64 2156768426, i64 2156768473, i64 2156768496, i64 2156768522}
!6557 = !DILocation(line: 182, column: 2, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6540, file: !2, line: 182, column: 2)
!6559 = !DILocation(line: 182, column: 2, scope: !6531)
!6560 = !DILocation(line: 184, column: 19, scope: !6531)
!6561 = !DILocation(line: 184, column: 24, scope: !6531)
!6562 = !DILocation(line: 184, column: 29, scope: !6531)
!6563 = !DILocation(line: 184, column: 34, scope: !6531)
!6564 = !DILocation(line: 184, column: 44, scope: !6531)
!6565 = !DILocation(line: 184, column: 49, scope: !6531)
!6566 = !DILocation(line: 184, column: 8, scope: !6531)
!6567 = !DILocation(line: 184, column: 6, scope: !6531)
!6568 = !DILocation(line: 186, column: 2, scope: !6531)
!6569 = !DILocation(line: 186, column: 7, scope: !6531)
!6570 = !DILocation(line: 186, column: 13, scope: !6531)
!6571 = !DILocation(line: 187, column: 17, scope: !6531)
!6572 = !DILocation(line: 187, column: 22, scope: !6531)
!6573 = !DILocation(line: 187, column: 2, scope: !6531)
!6574 = !DILocation(line: 189, column: 1, scope: !6531)
!6575 = !DILocation(line: 188, column: 2, scope: !6531)
!6576 = !DISubprogram(name: "do_mkdirat", scope: !6256, file: !6256, line: 61, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6577 = !DISubroutineType(types: !6578)
!6578 = !{!28, !28, !5999, !30}
!6579 = distinct !DISubprogram(name: "io_mkdirat_cleanup", scope: !2, file: !2, line: 191, type: !6281, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6580)
!6580 = !{!6581, !6582}
!6581 = !DILocalVariable(name: "req", arg: 1, scope: !6579, file: !2, line: 191, type: !4326)
!6582 = !DILocalVariable(name: "md", scope: !6579, file: !2, line: 193, type: !6029)
!6583 = !DILocation(line: 191, column: 42, scope: !6579)
!6584 = !DILocation(line: 193, column: 2, scope: !6579)
!6585 = !DILocation(line: 193, column: 19, scope: !6579)
!6586 = !DILocation(line: 193, column: 24, scope: !6579)
!6587 = !DILocation(line: 195, column: 10, scope: !6579)
!6588 = !DILocation(line: 195, column: 14, scope: !6579)
!6589 = !DILocation(line: 195, column: 2, scope: !6579)
!6590 = !DILocation(line: 196, column: 1, scope: !6579)
!6591 = distinct !DISubprogram(name: "io_symlinkat_prep", scope: !2, file: !2, line: 198, type: !6056, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6592)
!6592 = !{!6593, !6594, !6595, !6596, !6597, !6598, !6601, !6602, !6605}
!6593 = !DILocalVariable(name: "req", arg: 1, scope: !6591, file: !2, line: 198, type: !4326)
!6594 = !DILocalVariable(name: "sqe", arg: 2, scope: !6591, file: !2, line: 198, type: !5912)
!6595 = !DILocalVariable(name: "sl", scope: !6591, file: !2, line: 200, type: !6036)
!6596 = !DILocalVariable(name: "oldpath", scope: !6591, file: !2, line: 201, type: !23)
!6597 = !DILocalVariable(name: "newpath", scope: !6591, file: !2, line: 201, type: !23)
!6598 = !DILocalVariable(name: "__dummy", scope: !6599, file: !2, line: 209, type: !489)
!6599 = distinct !DILexicalBlock(scope: !6600, file: !2, line: 209, column: 12)
!6600 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 209, column: 12)
!6601 = !DILocalVariable(name: "__dummy2", scope: !6599, file: !2, line: 209, type: !491)
!6602 = !DILocalVariable(name: "__dummy", scope: !6603, file: !2, line: 210, type: !489)
!6603 = distinct !DILexicalBlock(scope: !6604, file: !2, line: 210, column: 12)
!6604 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 210, column: 12)
!6605 = !DILocalVariable(name: "__dummy2", scope: !6603, file: !2, line: 210, type: !491)
!6606 = !DILocation(line: 198, column: 40, scope: !6591)
!6607 = !DILocation(line: 198, column: 72, scope: !6591)
!6608 = !DILocation(line: 200, column: 2, scope: !6591)
!6609 = !DILocation(line: 200, column: 18, scope: !6591)
!6610 = !DILocation(line: 200, column: 23, scope: !6591)
!6611 = !DILocation(line: 201, column: 2, scope: !6591)
!6612 = !DILocation(line: 201, column: 21, scope: !6591)
!6613 = !DILocation(line: 201, column: 31, scope: !6591)
!6614 = !DILocation(line: 203, column: 6, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 203, column: 6)
!6616 = !DILocation(line: 203, column: 11, scope: !6615)
!6617 = !DILocation(line: 203, column: 15, scope: !6615)
!6618 = !DILocation(line: 203, column: 18, scope: !6615)
!6619 = !DILocation(line: 203, column: 23, scope: !6615)
!6620 = !DILocation(line: 203, column: 32, scope: !6615)
!6621 = !DILocation(line: 203, column: 35, scope: !6615)
!6622 = !DILocation(line: 203, column: 40, scope: !6615)
!6623 = !DILocation(line: 203, column: 50, scope: !6615)
!6624 = !DILocation(line: 203, column: 53, scope: !6615)
!6625 = !DILocation(line: 203, column: 58, scope: !6615)
!6626 = !DILocation(line: 203, column: 6, scope: !6591)
!6627 = !DILocation(line: 204, column: 3, scope: !6615)
!6628 = !DILocation(line: 205, column: 6, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 205, column: 6)
!6630 = !DILocation(line: 205, column: 6, scope: !6591)
!6631 = !DILocation(line: 206, column: 3, scope: !6629)
!6632 = !DILocation(line: 208, column: 16, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 208, column: 16)
!6634 = !DILocation(line: 208, column: 16, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6633, file: !2, line: 208, column: 16)
!6636 = !DILocation(line: 208, column: 2, scope: !6591)
!6637 = !DILocation(line: 208, column: 6, scope: !6591)
!6638 = !DILocation(line: 208, column: 14, scope: !6591)
!6639 = !DILocation(line: 209, column: 12, scope: !6599)
!6640 = !DILocation(line: 209, column: 12, scope: !6600)
!6641 = !DILocation(line: 209, column: 12, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6600, file: !2, line: 209, column: 12)
!6643 = !DILocation(line: 209, column: 12, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6642, file: !2, line: 209, column: 12)
!6645 = !DILocation(line: 209, column: 10, scope: !6591)
!6646 = !DILocation(line: 210, column: 12, scope: !6603)
!6647 = !DILocation(line: 210, column: 12, scope: !6604)
!6648 = !DILocation(line: 210, column: 12, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6604, file: !2, line: 210, column: 12)
!6650 = !DILocation(line: 210, column: 12, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6649, file: !2, line: 210, column: 12)
!6652 = !DILocation(line: 210, column: 10, scope: !6591)
!6653 = !DILocation(line: 212, column: 24, scope: !6591)
!6654 = !DILocation(line: 212, column: 16, scope: !6591)
!6655 = !DILocation(line: 212, column: 2, scope: !6591)
!6656 = !DILocation(line: 212, column: 6, scope: !6591)
!6657 = !DILocation(line: 212, column: 14, scope: !6591)
!6658 = !DILocation(line: 213, column: 13, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 213, column: 6)
!6660 = !DILocation(line: 213, column: 17, scope: !6659)
!6661 = !DILocation(line: 213, column: 6, scope: !6659)
!6662 = !DILocation(line: 213, column: 6, scope: !6591)
!6663 = !DILocation(line: 214, column: 18, scope: !6659)
!6664 = !DILocation(line: 214, column: 22, scope: !6659)
!6665 = !DILocation(line: 214, column: 10, scope: !6659)
!6666 = !DILocation(line: 214, column: 3, scope: !6659)
!6667 = !DILocation(line: 216, column: 24, scope: !6591)
!6668 = !DILocation(line: 216, column: 16, scope: !6591)
!6669 = !DILocation(line: 216, column: 2, scope: !6591)
!6670 = !DILocation(line: 216, column: 6, scope: !6591)
!6671 = !DILocation(line: 216, column: 14, scope: !6591)
!6672 = !DILocation(line: 217, column: 13, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 217, column: 6)
!6674 = !DILocation(line: 217, column: 17, scope: !6673)
!6675 = !DILocation(line: 217, column: 6, scope: !6673)
!6676 = !DILocation(line: 217, column: 6, scope: !6591)
!6677 = !DILocation(line: 218, column: 11, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6673, file: !2, line: 217, column: 27)
!6679 = !DILocation(line: 218, column: 15, scope: !6678)
!6680 = !DILocation(line: 218, column: 3, scope: !6678)
!6681 = !DILocation(line: 219, column: 18, scope: !6678)
!6682 = !DILocation(line: 219, column: 22, scope: !6678)
!6683 = !DILocation(line: 219, column: 10, scope: !6678)
!6684 = !DILocation(line: 219, column: 3, scope: !6678)
!6685 = !DILocation(line: 222, column: 2, scope: !6591)
!6686 = !DILocation(line: 222, column: 7, scope: !6591)
!6687 = !DILocation(line: 222, column: 13, scope: !6591)
!6688 = !DILocation(line: 223, column: 2, scope: !6591)
!6689 = !DILocation(line: 223, column: 7, scope: !6591)
!6690 = !DILocation(line: 223, column: 13, scope: !6591)
!6691 = !DILocation(line: 224, column: 2, scope: !6591)
!6692 = !DILocation(line: 225, column: 1, scope: !6591)
!6693 = distinct !DISubprogram(name: "io_symlinkat", scope: !2, file: !2, line: 227, type: !6205, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6694)
!6694 = !{!6695, !6696, !6697, !6698, !6699, !6701}
!6695 = !DILocalVariable(name: "req", arg: 1, scope: !6693, file: !2, line: 227, type: !4326)
!6696 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6693, file: !2, line: 227, type: !11)
!6697 = !DILocalVariable(name: "sl", scope: !6693, file: !2, line: 229, type: !6036)
!6698 = !DILocalVariable(name: "ret", scope: !6693, file: !2, line: 230, type: !28)
!6699 = !DILocalVariable(name: "__ret_warn_on", scope: !6700, file: !2, line: 232, type: !28)
!6700 = distinct !DILexicalBlock(scope: !6693, file: !2, line: 232, column: 2)
!6701 = !DILocalVariable(name: "__flags", scope: !6702, file: !2, line: 232, type: !28)
!6702 = distinct !DILexicalBlock(scope: !6703, file: !2, line: 232, column: 2)
!6703 = distinct !DILexicalBlock(scope: !6700, file: !2, line: 232, column: 2)
!6704 = !DILocation(line: 227, column: 35, scope: !6693)
!6705 = !DILocation(line: 227, column: 53, scope: !6693)
!6706 = !DILocation(line: 229, column: 2, scope: !6693)
!6707 = !DILocation(line: 229, column: 18, scope: !6693)
!6708 = !DILocation(line: 229, column: 23, scope: !6693)
!6709 = !DILocation(line: 230, column: 2, scope: !6693)
!6710 = !DILocation(line: 230, column: 6, scope: !6693)
!6711 = !DILocation(line: 232, column: 2, scope: !6700)
!6712 = !DILocation(line: 232, column: 2, scope: !6703)
!6713 = !DILocation(line: 232, column: 2, scope: !6702)
!6714 = !DILocation(line: 232, column: 2, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6702, file: !2, line: 232, column: 2)
!6716 = !DILocation(line: 232, column: 2, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6702, file: !2, line: 232, column: 2)
!6718 = !{i64 2156784150, i64 2156784179, i64 2156784225, i64 2156784283, i64 2156784337, i64 2156784391, i64 2156784446, i64 2156784477, i64 2156784785, i64 2156784791, i64 2156784838, i64 2156784861, i64 2156784887}
!6719 = !DILocation(line: 232, column: 2, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6702, file: !2, line: 232, column: 2)
!6721 = !DILocation(line: 232, column: 2, scope: !6693)
!6722 = !DILocation(line: 234, column: 21, scope: !6693)
!6723 = !DILocation(line: 234, column: 25, scope: !6693)
!6724 = !DILocation(line: 234, column: 34, scope: !6693)
!6725 = !DILocation(line: 234, column: 38, scope: !6693)
!6726 = !DILocation(line: 234, column: 47, scope: !6693)
!6727 = !DILocation(line: 234, column: 51, scope: !6693)
!6728 = !DILocation(line: 234, column: 8, scope: !6693)
!6729 = !DILocation(line: 234, column: 6, scope: !6693)
!6730 = !DILocation(line: 236, column: 2, scope: !6693)
!6731 = !DILocation(line: 236, column: 7, scope: !6693)
!6732 = !DILocation(line: 236, column: 13, scope: !6693)
!6733 = !DILocation(line: 237, column: 17, scope: !6693)
!6734 = !DILocation(line: 237, column: 22, scope: !6693)
!6735 = !DILocation(line: 237, column: 2, scope: !6693)
!6736 = !DILocation(line: 239, column: 1, scope: !6693)
!6737 = !DILocation(line: 238, column: 2, scope: !6693)
!6738 = !DISubprogram(name: "do_symlinkat", scope: !6256, file: !6256, line: 62, type: !6739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6739 = !DISubroutineType(types: !6740)
!6740 = !{!28, !5999, !28, !5999}
!6741 = distinct !DISubprogram(name: "io_linkat_prep", scope: !2, file: !2, line: 241, type: !6056, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6742)
!6742 = !{!6743, !6744, !6745, !6746, !6747, !6748, !6751, !6752, !6755}
!6743 = !DILocalVariable(name: "req", arg: 1, scope: !6741, file: !2, line: 241, type: !4326)
!6744 = !DILocalVariable(name: "sqe", arg: 2, scope: !6741, file: !2, line: 241, type: !5912)
!6745 = !DILocalVariable(name: "lnk", scope: !6741, file: !2, line: 243, type: !6036)
!6746 = !DILocalVariable(name: "oldf", scope: !6741, file: !2, line: 244, type: !23)
!6747 = !DILocalVariable(name: "newf", scope: !6741, file: !2, line: 244, type: !23)
!6748 = !DILocalVariable(name: "__dummy", scope: !6749, file: !2, line: 253, type: !489)
!6749 = distinct !DILexicalBlock(scope: !6750, file: !2, line: 253, column: 9)
!6750 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 253, column: 9)
!6751 = !DILocalVariable(name: "__dummy2", scope: !6749, file: !2, line: 253, type: !491)
!6752 = !DILocalVariable(name: "__dummy", scope: !6753, file: !2, line: 254, type: !489)
!6753 = distinct !DILexicalBlock(scope: !6754, file: !2, line: 254, column: 9)
!6754 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 254, column: 9)
!6755 = !DILocalVariable(name: "__dummy2", scope: !6753, file: !2, line: 254, type: !491)
!6756 = !DILocation(line: 241, column: 37, scope: !6741)
!6757 = !DILocation(line: 241, column: 69, scope: !6741)
!6758 = !DILocation(line: 243, column: 2, scope: !6741)
!6759 = !DILocation(line: 243, column: 18, scope: !6741)
!6760 = !DILocation(line: 243, column: 24, scope: !6741)
!6761 = !DILocation(line: 244, column: 2, scope: !6741)
!6762 = !DILocation(line: 244, column: 21, scope: !6741)
!6763 = !DILocation(line: 244, column: 28, scope: !6741)
!6764 = !DILocation(line: 246, column: 6, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 246, column: 6)
!6766 = !DILocation(line: 246, column: 11, scope: !6765)
!6767 = !DILocation(line: 246, column: 21, scope: !6765)
!6768 = !DILocation(line: 246, column: 24, scope: !6765)
!6769 = !DILocation(line: 246, column: 29, scope: !6765)
!6770 = !DILocation(line: 246, column: 6, scope: !6741)
!6771 = !DILocation(line: 247, column: 3, scope: !6765)
!6772 = !DILocation(line: 248, column: 6, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 248, column: 6)
!6774 = !DILocation(line: 248, column: 6, scope: !6741)
!6775 = !DILocation(line: 249, column: 3, scope: !6773)
!6776 = !DILocation(line: 251, column: 17, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 251, column: 17)
!6778 = !DILocation(line: 251, column: 17, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6777, file: !2, line: 251, column: 17)
!6780 = !DILocation(line: 251, column: 2, scope: !6741)
!6781 = !DILocation(line: 251, column: 7, scope: !6741)
!6782 = !DILocation(line: 251, column: 15, scope: !6741)
!6783 = !DILocation(line: 252, column: 17, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 252, column: 17)
!6785 = !DILocation(line: 252, column: 17, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6784, file: !2, line: 252, column: 17)
!6787 = !DILocation(line: 252, column: 2, scope: !6741)
!6788 = !DILocation(line: 252, column: 7, scope: !6741)
!6789 = !DILocation(line: 252, column: 15, scope: !6741)
!6790 = !DILocation(line: 253, column: 9, scope: !6749)
!6791 = !DILocation(line: 253, column: 9, scope: !6750)
!6792 = !DILocation(line: 253, column: 9, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6750, file: !2, line: 253, column: 9)
!6794 = !DILocation(line: 253, column: 9, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6793, file: !2, line: 253, column: 9)
!6796 = !DILocation(line: 253, column: 7, scope: !6741)
!6797 = !DILocation(line: 254, column: 9, scope: !6753)
!6798 = !DILocation(line: 254, column: 9, scope: !6754)
!6799 = !DILocation(line: 254, column: 9, scope: !6800)
!6800 = distinct !DILexicalBlock(scope: !6754, file: !2, line: 254, column: 9)
!6801 = !DILocation(line: 254, column: 9, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6800, file: !2, line: 254, column: 9)
!6803 = !DILocation(line: 254, column: 7, scope: !6741)
!6804 = !DILocation(line: 255, column: 15, scope: !6805)
!6805 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 255, column: 15)
!6806 = !DILocation(line: 255, column: 15, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6805, file: !2, line: 255, column: 15)
!6808 = !DILocation(line: 255, column: 2, scope: !6741)
!6809 = !DILocation(line: 255, column: 7, scope: !6741)
!6810 = !DILocation(line: 255, column: 13, scope: !6741)
!6811 = !DILocation(line: 257, column: 32, scope: !6741)
!6812 = !DILocation(line: 257, column: 38, scope: !6741)
!6813 = !DILocation(line: 257, column: 43, scope: !6741)
!6814 = !DILocation(line: 257, column: 17, scope: !6741)
!6815 = !DILocation(line: 257, column: 2, scope: !6741)
!6816 = !DILocation(line: 257, column: 7, scope: !6741)
!6817 = !DILocation(line: 257, column: 15, scope: !6741)
!6818 = !DILocation(line: 258, column: 13, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 258, column: 6)
!6820 = !DILocation(line: 258, column: 18, scope: !6819)
!6821 = !DILocation(line: 258, column: 6, scope: !6819)
!6822 = !DILocation(line: 258, column: 6, scope: !6741)
!6823 = !DILocation(line: 259, column: 18, scope: !6819)
!6824 = !DILocation(line: 259, column: 23, scope: !6819)
!6825 = !DILocation(line: 259, column: 10, scope: !6819)
!6826 = !DILocation(line: 259, column: 3, scope: !6819)
!6827 = !DILocation(line: 261, column: 25, scope: !6741)
!6828 = !DILocation(line: 261, column: 17, scope: !6741)
!6829 = !DILocation(line: 261, column: 2, scope: !6741)
!6830 = !DILocation(line: 261, column: 7, scope: !6741)
!6831 = !DILocation(line: 261, column: 15, scope: !6741)
!6832 = !DILocation(line: 262, column: 13, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 262, column: 6)
!6834 = !DILocation(line: 262, column: 18, scope: !6833)
!6835 = !DILocation(line: 262, column: 6, scope: !6833)
!6836 = !DILocation(line: 262, column: 6, scope: !6741)
!6837 = !DILocation(line: 263, column: 11, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6833, file: !2, line: 262, column: 28)
!6839 = !DILocation(line: 263, column: 16, scope: !6838)
!6840 = !DILocation(line: 263, column: 3, scope: !6838)
!6841 = !DILocation(line: 264, column: 18, scope: !6838)
!6842 = !DILocation(line: 264, column: 23, scope: !6838)
!6843 = !DILocation(line: 264, column: 10, scope: !6838)
!6844 = !DILocation(line: 264, column: 3, scope: !6838)
!6845 = !DILocation(line: 267, column: 2, scope: !6741)
!6846 = !DILocation(line: 267, column: 7, scope: !6741)
!6847 = !DILocation(line: 267, column: 13, scope: !6741)
!6848 = !DILocation(line: 268, column: 2, scope: !6741)
!6849 = !DILocation(line: 268, column: 7, scope: !6741)
!6850 = !DILocation(line: 268, column: 13, scope: !6741)
!6851 = !DILocation(line: 269, column: 2, scope: !6741)
!6852 = !DILocation(line: 270, column: 1, scope: !6741)
!6853 = !DISubprogram(name: "getname_uflags", scope: !163, file: !163, line: 2546, type: !6854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6854 = !DISubroutineType(types: !6855)
!6855 = !{!5999, !23, !28}
!6856 = distinct !DISubprogram(name: "io_linkat", scope: !2, file: !2, line: 272, type: !6205, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6857)
!6857 = !{!6858, !6859, !6860, !6861, !6862, !6864}
!6858 = !DILocalVariable(name: "req", arg: 1, scope: !6856, file: !2, line: 272, type: !4326)
!6859 = !DILocalVariable(name: "issue_flags", arg: 2, scope: !6856, file: !2, line: 272, type: !11)
!6860 = !DILocalVariable(name: "lnk", scope: !6856, file: !2, line: 274, type: !6036)
!6861 = !DILocalVariable(name: "ret", scope: !6856, file: !2, line: 275, type: !28)
!6862 = !DILocalVariable(name: "__ret_warn_on", scope: !6863, file: !2, line: 277, type: !28)
!6863 = distinct !DILexicalBlock(scope: !6856, file: !2, line: 277, column: 2)
!6864 = !DILocalVariable(name: "__flags", scope: !6865, file: !2, line: 277, type: !28)
!6865 = distinct !DILexicalBlock(scope: !6866, file: !2, line: 277, column: 2)
!6866 = distinct !DILexicalBlock(scope: !6863, file: !2, line: 277, column: 2)
!6867 = !DILocation(line: 272, column: 32, scope: !6856)
!6868 = !DILocation(line: 272, column: 50, scope: !6856)
!6869 = !DILocation(line: 274, column: 2, scope: !6856)
!6870 = !DILocation(line: 274, column: 18, scope: !6856)
!6871 = !DILocation(line: 274, column: 24, scope: !6856)
!6872 = !DILocation(line: 275, column: 2, scope: !6856)
!6873 = !DILocation(line: 275, column: 6, scope: !6856)
!6874 = !DILocation(line: 277, column: 2, scope: !6863)
!6875 = !DILocation(line: 277, column: 2, scope: !6866)
!6876 = !DILocation(line: 277, column: 2, scope: !6865)
!6877 = !DILocation(line: 277, column: 2, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6865, file: !2, line: 277, column: 2)
!6879 = !DILocation(line: 277, column: 2, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6865, file: !2, line: 277, column: 2)
!6881 = !{i64 2156806124, i64 2156806153, i64 2156806199, i64 2156806257, i64 2156806311, i64 2156806365, i64 2156806420, i64 2156806451, i64 2156806759, i64 2156806765, i64 2156806812, i64 2156806835, i64 2156806861}
!6882 = !DILocation(line: 277, column: 2, scope: !6883)
!6883 = distinct !DILexicalBlock(scope: !6865, file: !2, line: 277, column: 2)
!6884 = !DILocation(line: 277, column: 2, scope: !6856)
!6885 = !DILocation(line: 279, column: 18, scope: !6856)
!6886 = !DILocation(line: 279, column: 23, scope: !6856)
!6887 = !DILocation(line: 279, column: 32, scope: !6856)
!6888 = !DILocation(line: 279, column: 37, scope: !6856)
!6889 = !DILocation(line: 279, column: 46, scope: !6856)
!6890 = !DILocation(line: 279, column: 51, scope: !6856)
!6891 = !DILocation(line: 280, column: 5, scope: !6856)
!6892 = !DILocation(line: 280, column: 10, scope: !6856)
!6893 = !DILocation(line: 280, column: 19, scope: !6856)
!6894 = !DILocation(line: 280, column: 24, scope: !6856)
!6895 = !DILocation(line: 279, column: 8, scope: !6856)
!6896 = !DILocation(line: 279, column: 6, scope: !6856)
!6897 = !DILocation(line: 282, column: 2, scope: !6856)
!6898 = !DILocation(line: 282, column: 7, scope: !6856)
!6899 = !DILocation(line: 282, column: 13, scope: !6856)
!6900 = !DILocation(line: 283, column: 17, scope: !6856)
!6901 = !DILocation(line: 283, column: 22, scope: !6856)
!6902 = !DILocation(line: 283, column: 2, scope: !6856)
!6903 = !DILocation(line: 285, column: 1, scope: !6856)
!6904 = !DILocation(line: 284, column: 2, scope: !6856)
!6905 = !DISubprogram(name: "do_linkat", scope: !6256, file: !6256, line: 63, type: !6906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6906 = !DISubroutineType(types: !6907)
!6907 = !{!28, !28, !5999, !28, !5999, !28}
!6908 = distinct !DISubprogram(name: "io_link_cleanup", scope: !2, file: !2, line: 287, type: !6281, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6909)
!6909 = !{!6910, !6911}
!6910 = !DILocalVariable(name: "req", arg: 1, scope: !6908, file: !2, line: 287, type: !4326)
!6911 = !DILocalVariable(name: "sl", scope: !6908, file: !2, line: 289, type: !6036)
!6912 = !DILocation(line: 287, column: 39, scope: !6908)
!6913 = !DILocation(line: 289, column: 2, scope: !6908)
!6914 = !DILocation(line: 289, column: 18, scope: !6908)
!6915 = !DILocation(line: 289, column: 23, scope: !6908)
!6916 = !DILocation(line: 291, column: 10, scope: !6908)
!6917 = !DILocation(line: 291, column: 14, scope: !6908)
!6918 = !DILocation(line: 291, column: 2, scope: !6908)
!6919 = !DILocation(line: 292, column: 10, scope: !6908)
!6920 = !DILocation(line: 292, column: 14, scope: !6908)
!6921 = !DILocation(line: 292, column: 2, scope: !6908)
!6922 = !DILocation(line: 293, column: 1, scope: !6908)
!6923 = !DISubprogram(name: "__compiletime_assert_352", scope: !282, file: !282, line: 520, type: !2518, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
