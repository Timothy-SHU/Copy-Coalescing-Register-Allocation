; ModuleID = 'net/netlabel/netlabel_addrlist.c'
source_filename = "net/netlabel/netlabel_addrlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.netlbl_af4list = type { i32, i32, i32, %struct.list_head }
%struct.netlbl_af6list = type { %struct.in6_addr, %struct.in6_addr, i32, %struct.list_head }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"dst\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c" netif=%s\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [9 x i8] c" %s=%pI4\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [17 x i8] c" %s_prefixlen=%d\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [9 x i8] c" %s=%pI6\00", align 1, !dbg !24

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_af4list_search(i32 noundef %addr, ptr noundef %head) #0 align 16 !dbg !103 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !107, metadata !DIExpression()), !dbg !116
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !108, metadata !DIExpression()), !dbg !117
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !109, metadata !DIExpression()), !dbg !119
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !110, metadata !DIExpression()), !dbg !120
  br label %do.body, !dbg !121

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !123

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !123

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !121
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !121
  %1 = load volatile ptr, ptr %next, align 8, !dbg !121
  store ptr %1, ptr %tmp, align 8, !dbg !123
  %2 = load ptr, ptr %tmp, align 8, !dbg !121
  store ptr %2, ptr %__mptr, align 8, !dbg !120
  %3 = load ptr, ptr %__mptr, align 8, !dbg !120
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !120
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !120
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !125
  %4 = load ptr, ptr %tmp1, align 8, !dbg !120
  store ptr %4, ptr %iter, align 8, !dbg !125
  br label %for.cond, !dbg !125

for.cond:                                         ; preds = %do.end7, %do.end
  %5 = load ptr, ptr %iter, align 8, !dbg !126
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %5, i32 0, i32 3, !dbg !126
  %6 = load ptr, ptr %head.addr, align 8, !dbg !126
  %cmp = icmp ne ptr %list, %6, !dbg !126
  br i1 %cmp, label %for.body, label %for.end, !dbg !125

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %iter, align 8, !dbg !127
  %valid = getelementptr inbounds %struct.netlbl_af4list, ptr %7, i32 0, i32 2, !dbg !129
  %8 = load i32, ptr %valid, align 8, !dbg !129
  %tobool = icmp ne i32 %8, 0, !dbg !127
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !130

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, ptr %addr.addr, align 4, !dbg !131
  %10 = load ptr, ptr %iter, align 8, !dbg !132
  %mask = getelementptr inbounds %struct.netlbl_af4list, ptr %10, i32 0, i32 1, !dbg !133
  %11 = load i32, ptr %mask, align 4, !dbg !133
  %and = and i32 %9, %11, !dbg !134
  %12 = load ptr, ptr %iter, align 8, !dbg !135
  %addr2 = getelementptr inbounds %struct.netlbl_af4list, ptr %12, i32 0, i32 0, !dbg !136
  %13 = load i32, ptr %addr2, align 8, !dbg !136
  %cmp3 = icmp eq i32 %and, %13, !dbg !137
  br i1 %cmp3, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %iter, align 8, !dbg !139
  store ptr %14, ptr %retval, align 8, !dbg !140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !140

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !136

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #5, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !113, metadata !DIExpression()), !dbg !141
  br label %do.body5, !dbg !142

do.body5:                                         ; preds = %for.inc
  br label %do.cond6, !dbg !144

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !144

do.end7:                                          ; preds = %do.cond6
  %15 = load ptr, ptr %iter, align 8, !dbg !142
  %list9 = getelementptr inbounds %struct.netlbl_af4list, ptr %15, i32 0, i32 3, !dbg !142
  %next10 = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !142
  %16 = load volatile ptr, ptr %next10, align 8, !dbg !142
  store ptr %16, ptr %tmp8, align 8, !dbg !144
  %17 = load ptr, ptr %tmp8, align 8, !dbg !142
  store ptr %17, ptr %__mptr4, align 8, !dbg !141
  %18 = load ptr, ptr %__mptr4, align 8, !dbg !141
  %add.ptr12 = getelementptr i8, ptr %18, i64 -16, !dbg !141
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !141
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #5, !dbg !126
  %19 = load ptr, ptr %tmp11, align 8, !dbg !141
  store ptr %19, ptr %iter, align 8, !dbg !126
  br label %for.cond, !dbg !126, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !150

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5, !dbg !151
  %20 = load ptr, ptr %retval, align 8, !dbg !151
  ret ptr %20, !dbg !151
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_af4list_search_exact(i32 noundef %addr, i32 noundef %mask, ptr noundef %head) #0 align 16 !dbg !152 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr7 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !156, metadata !DIExpression()), !dbg !166
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !157, metadata !DIExpression()), !dbg !167
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !158, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !159, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !160, metadata !DIExpression()), !dbg !171
  br label %do.body, !dbg !172

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !174

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !174

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !172
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !172
  %1 = load volatile ptr, ptr %next, align 8, !dbg !172
  store ptr %1, ptr %tmp, align 8, !dbg !174
  %2 = load ptr, ptr %tmp, align 8, !dbg !172
  store ptr %2, ptr %__mptr, align 8, !dbg !171
  %3 = load ptr, ptr %__mptr, align 8, !dbg !171
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !171
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !171
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !176
  %4 = load ptr, ptr %tmp1, align 8, !dbg !171
  store ptr %4, ptr %iter, align 8, !dbg !176
  br label %for.cond, !dbg !176

for.cond:                                         ; preds = %do.end10, %do.end
  %5 = load ptr, ptr %iter, align 8, !dbg !177
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %5, i32 0, i32 3, !dbg !177
  %6 = load ptr, ptr %head.addr, align 8, !dbg !177
  %cmp = icmp ne ptr %list, %6, !dbg !177
  br i1 %cmp, label %for.body, label %for.end, !dbg !176

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %iter, align 8, !dbg !178
  %valid = getelementptr inbounds %struct.netlbl_af4list, ptr %7, i32 0, i32 2, !dbg !180
  %8 = load i32, ptr %valid, align 8, !dbg !180
  %tobool = icmp ne i32 %8, 0, !dbg !178
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !181

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %iter, align 8, !dbg !182
  %addr2 = getelementptr inbounds %struct.netlbl_af4list, ptr %9, i32 0, i32 0, !dbg !183
  %10 = load i32, ptr %addr2, align 8, !dbg !183
  %11 = load i32, ptr %addr.addr, align 4, !dbg !184
  %cmp3 = icmp eq i32 %10, %11, !dbg !185
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !186

land.lhs.true4:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %iter, align 8, !dbg !187
  %mask5 = getelementptr inbounds %struct.netlbl_af4list, ptr %12, i32 0, i32 1, !dbg !188
  %13 = load i32, ptr %mask5, align 4, !dbg !188
  %14 = load i32, ptr %mask.addr, align 4, !dbg !189
  %cmp6 = icmp eq i32 %13, %14, !dbg !190
  br i1 %cmp6, label %if.then, label %if.end, !dbg !191

if.then:                                          ; preds = %land.lhs.true4
  %15 = load ptr, ptr %iter, align 8, !dbg !192
  store ptr %15, ptr %retval, align 8, !dbg !193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !193

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %for.body
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #5, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !163, metadata !DIExpression()), !dbg !194
  br label %do.body8, !dbg !195

do.body8:                                         ; preds = %for.inc
  br label %do.cond9, !dbg !197

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !197

do.end10:                                         ; preds = %do.cond9
  %16 = load ptr, ptr %iter, align 8, !dbg !195
  %list12 = getelementptr inbounds %struct.netlbl_af4list, ptr %16, i32 0, i32 3, !dbg !195
  %next13 = getelementptr inbounds %struct.list_head, ptr %list12, i32 0, i32 0, !dbg !195
  %17 = load volatile ptr, ptr %next13, align 8, !dbg !195
  store ptr %17, ptr %tmp11, align 8, !dbg !197
  %18 = load ptr, ptr %tmp11, align 8, !dbg !195
  store ptr %18, ptr %__mptr7, align 8, !dbg !194
  %19 = load ptr, ptr %__mptr7, align 8, !dbg !194
  %add.ptr15 = getelementptr i8, ptr %19, i64 -16, !dbg !194
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #5, !dbg !177
  %20 = load ptr, ptr %tmp14, align 8, !dbg !194
  store ptr %20, ptr %iter, align 8, !dbg !177
  br label %for.cond, !dbg !177, !llvm.loop !199

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !201

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5, !dbg !202
  %21 = load ptr, ptr %retval, align 8, !dbg !202
  ret ptr %21, !dbg !202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_af6list_search(ptr noundef %addr, ptr noundef %head) #0 align 16 !dbg !203 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr5 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !209, metadata !DIExpression()), !dbg !218
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !210, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !211, metadata !DIExpression()), !dbg !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !212, metadata !DIExpression()), !dbg !222
  br label %do.body, !dbg !223

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !225

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !225

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !223
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !223
  %1 = load volatile ptr, ptr %next, align 8, !dbg !223
  store ptr %1, ptr %tmp, align 8, !dbg !225
  %2 = load ptr, ptr %tmp, align 8, !dbg !223
  store ptr %2, ptr %__mptr, align 8, !dbg !222
  %3 = load ptr, ptr %__mptr, align 8, !dbg !222
  %add.ptr = getelementptr i8, ptr %3, i64 -40, !dbg !222
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !222
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !227
  %4 = load ptr, ptr %tmp1, align 8, !dbg !222
  store ptr %4, ptr %iter, align 8, !dbg !227
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %do.end8, %do.end
  %5 = load ptr, ptr %iter, align 8, !dbg !228
  %list = getelementptr inbounds %struct.netlbl_af6list, ptr %5, i32 0, i32 3, !dbg !228
  %6 = load ptr, ptr %head.addr, align 8, !dbg !228
  %cmp = icmp ne ptr %list, %6, !dbg !228
  br i1 %cmp, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %iter, align 8, !dbg !229
  %valid = getelementptr inbounds %struct.netlbl_af6list, ptr %7, i32 0, i32 2, !dbg !231
  %8 = load i32, ptr %valid, align 8, !dbg !231
  %tobool = icmp ne i32 %8, 0, !dbg !229
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !232

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %iter, align 8, !dbg !233
  %addr2 = getelementptr inbounds %struct.netlbl_af6list, ptr %9, i32 0, i32 0, !dbg !234
  %10 = load ptr, ptr %iter, align 8, !dbg !235
  %mask = getelementptr inbounds %struct.netlbl_af6list, ptr %10, i32 0, i32 1, !dbg !236
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !237
  %call = call zeroext i1 @ipv6_masked_addr_cmp(ptr noundef %addr2, ptr noundef %mask, ptr noundef %11) #6, !dbg !238
  %conv = zext i1 %call to i32, !dbg !238
  %cmp3 = icmp eq i32 %conv, 0, !dbg !239
  br i1 %cmp3, label %if.then, label %if.end, !dbg !240

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %iter, align 8, !dbg !241
  store ptr %12, ptr %retval, align 8, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !243

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #5, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !215, metadata !DIExpression()), !dbg !244
  br label %do.body6, !dbg !245

do.body6:                                         ; preds = %for.inc
  br label %do.cond7, !dbg !247

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !247

do.end8:                                          ; preds = %do.cond7
  %13 = load ptr, ptr %iter, align 8, !dbg !245
  %list10 = getelementptr inbounds %struct.netlbl_af6list, ptr %13, i32 0, i32 3, !dbg !245
  %next11 = getelementptr inbounds %struct.list_head, ptr %list10, i32 0, i32 0, !dbg !245
  %14 = load volatile ptr, ptr %next11, align 8, !dbg !245
  store ptr %14, ptr %tmp9, align 8, !dbg !247
  %15 = load ptr, ptr %tmp9, align 8, !dbg !245
  store ptr %15, ptr %__mptr5, align 8, !dbg !244
  %16 = load ptr, ptr %__mptr5, align 8, !dbg !244
  %add.ptr13 = getelementptr i8, ptr %16, i64 -40, !dbg !244
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !244
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #5, !dbg !228
  %17 = load ptr, ptr %tmp12, align 8, !dbg !244
  store ptr %17, ptr %iter, align 8, !dbg !228
  br label %for.cond, !dbg !228, !llvm.loop !249

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !251

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5, !dbg !252
  %18 = load ptr, ptr %retval, align 8, !dbg !252
  ret ptr %18, !dbg !252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ipv6_masked_addr_cmp(ptr noundef %a1, ptr noundef %m, ptr noundef %a2) #3 align 16 !dbg !253 {
entry:
  %a1.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %a2.addr = alloca ptr, align 8
  %ul1 = alloca ptr, align 8
  %ulm = alloca ptr, align 8
  %ul2 = alloca ptr, align 8
  store ptr %a1, ptr %a1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a1.addr, metadata !260, metadata !DIExpression()), !dbg !266
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !261, metadata !DIExpression()), !dbg !267
  store ptr %a2, ptr %a2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a2.addr, metadata !262, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 8, ptr %ul1) #5, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %ul1, metadata !263, metadata !DIExpression()), !dbg !270
  %0 = load ptr, ptr %a1.addr, align 8, !dbg !271
  store ptr %0, ptr %ul1, align 8, !dbg !270
  call void @llvm.lifetime.start.p0(i64 8, ptr %ulm) #5, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %ulm, metadata !264, metadata !DIExpression()), !dbg !273
  %1 = load ptr, ptr %m.addr, align 8, !dbg !274
  store ptr %1, ptr %ulm, align 8, !dbg !273
  call void @llvm.lifetime.start.p0(i64 8, ptr %ul2) #5, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %ul2, metadata !265, metadata !DIExpression()), !dbg !276
  %2 = load ptr, ptr %a2.addr, align 8, !dbg !277
  store ptr %2, ptr %ul2, align 8, !dbg !276
  %3 = load ptr, ptr %ul1, align 8, !dbg !278
  %arrayidx = getelementptr i64, ptr %3, i64 0, !dbg !278
  %4 = load i64, ptr %arrayidx, align 8, !dbg !278
  %5 = load ptr, ptr %ul2, align 8, !dbg !279
  %arrayidx1 = getelementptr i64, ptr %5, i64 0, !dbg !279
  %6 = load i64, ptr %arrayidx1, align 8, !dbg !279
  %xor = xor i64 %4, %6, !dbg !280
  %7 = load ptr, ptr %ulm, align 8, !dbg !281
  %arrayidx2 = getelementptr i64, ptr %7, i64 0, !dbg !281
  %8 = load i64, ptr %arrayidx2, align 8, !dbg !281
  %and = and i64 %xor, %8, !dbg !282
  %9 = load ptr, ptr %ul1, align 8, !dbg !283
  %arrayidx3 = getelementptr i64, ptr %9, i64 1, !dbg !283
  %10 = load i64, ptr %arrayidx3, align 8, !dbg !283
  %11 = load ptr, ptr %ul2, align 8, !dbg !284
  %arrayidx4 = getelementptr i64, ptr %11, i64 1, !dbg !284
  %12 = load i64, ptr %arrayidx4, align 8, !dbg !284
  %xor5 = xor i64 %10, %12, !dbg !285
  %13 = load ptr, ptr %ulm, align 8, !dbg !286
  %arrayidx6 = getelementptr i64, ptr %13, i64 1, !dbg !286
  %14 = load i64, ptr %arrayidx6, align 8, !dbg !286
  %and7 = and i64 %xor5, %14, !dbg !287
  %or = or i64 %and, %and7, !dbg !288
  %tobool = icmp ne i64 %or, 0, !dbg !289
  %lnot = xor i1 %tobool, true, !dbg !289
  %lnot8 = xor i1 %lnot, true, !dbg !290
  call void @llvm.lifetime.end.p0(i64 8, ptr %ul2) #5, !dbg !291
  call void @llvm.lifetime.end.p0(i64 8, ptr %ulm) #5, !dbg !291
  call void @llvm.lifetime.end.p0(i64 8, ptr %ul1) #5, !dbg !291
  ret i1 %lnot8, !dbg !292
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_af6list_search_exact(ptr noundef %addr, ptr noundef %mask, ptr noundef %head) #0 align 16 !dbg !293 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr6 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !297, metadata !DIExpression()), !dbg !307
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !298, metadata !DIExpression()), !dbg !308
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !299, metadata !DIExpression()), !dbg !309
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !300, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !301, metadata !DIExpression()), !dbg !312
  br label %do.body, !dbg !313

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !315

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !315

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !313
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !313
  %1 = load volatile ptr, ptr %next, align 8, !dbg !313
  store ptr %1, ptr %tmp, align 8, !dbg !315
  %2 = load ptr, ptr %tmp, align 8, !dbg !313
  store ptr %2, ptr %__mptr, align 8, !dbg !312
  %3 = load ptr, ptr %__mptr, align 8, !dbg !312
  %add.ptr = getelementptr i8, ptr %3, i64 -40, !dbg !312
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !312
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !317
  %4 = load ptr, ptr %tmp1, align 8, !dbg !312
  store ptr %4, ptr %iter, align 8, !dbg !317
  br label %for.cond, !dbg !317

for.cond:                                         ; preds = %do.end9, %do.end
  %5 = load ptr, ptr %iter, align 8, !dbg !318
  %list = getelementptr inbounds %struct.netlbl_af6list, ptr %5, i32 0, i32 3, !dbg !318
  %6 = load ptr, ptr %head.addr, align 8, !dbg !318
  %cmp = icmp ne ptr %list, %6, !dbg !318
  br i1 %cmp, label %for.body, label %for.end, !dbg !317

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %iter, align 8, !dbg !319
  %valid = getelementptr inbounds %struct.netlbl_af6list, ptr %7, i32 0, i32 2, !dbg !321
  %8 = load i32, ptr %valid, align 8, !dbg !321
  %tobool = icmp ne i32 %8, 0, !dbg !319
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !322

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %iter, align 8, !dbg !323
  %addr2 = getelementptr inbounds %struct.netlbl_af6list, ptr %9, i32 0, i32 0, !dbg !324
  %10 = load ptr, ptr %addr.addr, align 8, !dbg !325
  %call = call zeroext i1 @ipv6_addr_equal(ptr noundef %addr2, ptr noundef %10) #6, !dbg !326
  br i1 %call, label %land.lhs.true3, label %if.end, !dbg !327

land.lhs.true3:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %iter, align 8, !dbg !328
  %mask4 = getelementptr inbounds %struct.netlbl_af6list, ptr %11, i32 0, i32 1, !dbg !329
  %12 = load ptr, ptr %mask.addr, align 8, !dbg !330
  %call5 = call zeroext i1 @ipv6_addr_equal(ptr noundef %mask4, ptr noundef %12) #6, !dbg !331
  br i1 %call5, label %if.then, label %if.end, !dbg !332

if.then:                                          ; preds = %land.lhs.true3
  %13 = load ptr, ptr %iter, align 8, !dbg !333
  store ptr %13, ptr %retval, align 8, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !334

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %for.body
  br label %for.inc, !dbg !335

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #5, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !304, metadata !DIExpression()), !dbg !336
  br label %do.body7, !dbg !337

do.body7:                                         ; preds = %for.inc
  br label %do.cond8, !dbg !339

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !339

do.end9:                                          ; preds = %do.cond8
  %14 = load ptr, ptr %iter, align 8, !dbg !337
  %list11 = getelementptr inbounds %struct.netlbl_af6list, ptr %14, i32 0, i32 3, !dbg !337
  %next12 = getelementptr inbounds %struct.list_head, ptr %list11, i32 0, i32 0, !dbg !337
  %15 = load volatile ptr, ptr %next12, align 8, !dbg !337
  store ptr %15, ptr %tmp10, align 8, !dbg !339
  %16 = load ptr, ptr %tmp10, align 8, !dbg !337
  store ptr %16, ptr %__mptr6, align 8, !dbg !336
  %17 = load ptr, ptr %__mptr6, align 8, !dbg !336
  %add.ptr14 = getelementptr i8, ptr %17, i64 -40, !dbg !336
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #5, !dbg !318
  %18 = load ptr, ptr %tmp13, align 8, !dbg !336
  store ptr %18, ptr %iter, align 8, !dbg !318
  br label %for.cond, !dbg !318, !llvm.loop !341

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5, !dbg !344
  %19 = load ptr, ptr %retval, align 8, !dbg !344
  ret ptr %19, !dbg !344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ipv6_addr_equal(ptr noundef %a1, ptr noundef %a2) #3 align 16 !dbg !345 {
entry:
  %a1.addr = alloca ptr, align 8
  %a2.addr = alloca ptr, align 8
  %ul1 = alloca ptr, align 8
  %ul2 = alloca ptr, align 8
  store ptr %a1, ptr %a1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a1.addr, metadata !349, metadata !DIExpression()), !dbg !353
  store ptr %a2, ptr %a2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a2.addr, metadata !350, metadata !DIExpression()), !dbg !354
  call void @llvm.lifetime.start.p0(i64 8, ptr %ul1) #5, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %ul1, metadata !351, metadata !DIExpression()), !dbg !356
  %0 = load ptr, ptr %a1.addr, align 8, !dbg !357
  store ptr %0, ptr %ul1, align 8, !dbg !356
  call void @llvm.lifetime.start.p0(i64 8, ptr %ul2) #5, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %ul2, metadata !352, metadata !DIExpression()), !dbg !359
  %1 = load ptr, ptr %a2.addr, align 8, !dbg !360
  store ptr %1, ptr %ul2, align 8, !dbg !359
  %2 = load ptr, ptr %ul1, align 8, !dbg !361
  %arrayidx = getelementptr i64, ptr %2, i64 0, !dbg !361
  %3 = load i64, ptr %arrayidx, align 8, !dbg !361
  %4 = load ptr, ptr %ul2, align 8, !dbg !362
  %arrayidx1 = getelementptr i64, ptr %4, i64 0, !dbg !362
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !362
  %xor = xor i64 %3, %5, !dbg !363
  %6 = load ptr, ptr %ul1, align 8, !dbg !364
  %arrayidx2 = getelementptr i64, ptr %6, i64 1, !dbg !364
  %7 = load i64, ptr %arrayidx2, align 8, !dbg !364
  %8 = load ptr, ptr %ul2, align 8, !dbg !365
  %arrayidx3 = getelementptr i64, ptr %8, i64 1, !dbg !365
  %9 = load i64, ptr %arrayidx3, align 8, !dbg !365
  %xor4 = xor i64 %7, %9, !dbg !366
  %or = or i64 %xor, %xor4, !dbg !367
  %cmp = icmp eq i64 %or, 0, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %ul2) #5, !dbg !369
  call void @llvm.lifetime.end.p0(i64 8, ptr %ul1) #5, !dbg !369
  ret i1 %cmp, !dbg !370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_af4list_add(ptr noundef %entry1, ptr noundef %head) #0 align 16 !dbg !371 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !376, metadata !DIExpression()), !dbg !385
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !377, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !378, metadata !DIExpression()), !dbg !388
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !389
  %addr = getelementptr inbounds %struct.netlbl_af4list, ptr %0, i32 0, i32 0, !dbg !390
  %1 = load i32, ptr %addr, align 8, !dbg !390
  %2 = load ptr, ptr %head.addr, align 8, !dbg !391
  %call = call ptr @netlbl_af4list_search(i32 noundef %1, ptr noundef %2) #6, !dbg !392
  store ptr %call, ptr %iter, align 8, !dbg !393
  %3 = load ptr, ptr %iter, align 8, !dbg !394
  %cmp = icmp ne ptr %3, null, !dbg !396
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !397

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %iter, align 8, !dbg !398
  %addr2 = getelementptr inbounds %struct.netlbl_af4list, ptr %4, i32 0, i32 0, !dbg !399
  %5 = load i32, ptr %addr2, align 8, !dbg !399
  %6 = load ptr, ptr %entry.addr, align 8, !dbg !400
  %addr3 = getelementptr inbounds %struct.netlbl_af4list, ptr %6, i32 0, i32 0, !dbg !401
  %7 = load i32, ptr %addr3, align 8, !dbg !401
  %cmp4 = icmp eq i32 %5, %7, !dbg !402
  br i1 %cmp4, label %land.lhs.true5, label %if.end, !dbg !403

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %iter, align 8, !dbg !404
  %mask = getelementptr inbounds %struct.netlbl_af4list, ptr %8, i32 0, i32 1, !dbg !405
  %9 = load i32, ptr %mask, align 4, !dbg !405
  %10 = load ptr, ptr %entry.addr, align 8, !dbg !406
  %mask6 = getelementptr inbounds %struct.netlbl_af4list, ptr %10, i32 0, i32 1, !dbg !407
  %11 = load i32, ptr %mask6, align 4, !dbg !407
  %cmp7 = icmp eq i32 %9, %11, !dbg !408
  br i1 %cmp7, label %if.then, label %if.end, !dbg !409

if.then:                                          ; preds = %land.lhs.true5
  store i32 -17, ptr %retval, align 4, !dbg !410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !410

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !379, metadata !DIExpression()), !dbg !411
  br label %do.body, !dbg !412

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !414

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !414

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %head.addr, align 8, !dbg !412
  %next = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !412
  %13 = load volatile ptr, ptr %next, align 8, !dbg !412
  store ptr %13, ptr %tmp, align 8, !dbg !414
  %14 = load ptr, ptr %tmp, align 8, !dbg !412
  store ptr %14, ptr %__mptr, align 8, !dbg !411
  %15 = load ptr, ptr %__mptr, align 8, !dbg !411
  %add.ptr = getelementptr i8, ptr %15, i64 -16, !dbg !411
  store ptr %add.ptr, ptr %tmp8, align 8, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !416
  %16 = load ptr, ptr %tmp8, align 8, !dbg !411
  store ptr %16, ptr %iter, align 8, !dbg !416
  br label %for.cond, !dbg !416

for.cond:                                         ; preds = %do.end22, %do.end
  %17 = load ptr, ptr %iter, align 8, !dbg !417
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %17, i32 0, i32 3, !dbg !417
  %18 = load ptr, ptr %head.addr, align 8, !dbg !417
  %cmp9 = icmp ne ptr %list, %18, !dbg !417
  br i1 %cmp9, label %for.body, label %for.end, !dbg !416

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %iter, align 8, !dbg !418
  %valid = getelementptr inbounds %struct.netlbl_af4list, ptr %19, i32 0, i32 2, !dbg !420
  %20 = load i32, ptr %valid, align 8, !dbg !420
  %tobool = icmp ne i32 %20, 0, !dbg !418
  br i1 %tobool, label %land.lhs.true10, label %if.end18, !dbg !421

land.lhs.true10:                                  ; preds = %for.body
  %21 = load ptr, ptr %entry.addr, align 8, !dbg !422
  %mask11 = getelementptr inbounds %struct.netlbl_af4list, ptr %21, i32 0, i32 1, !dbg !422
  %22 = load i32, ptr %mask11, align 4, !dbg !422
  %23 = call i32 @llvm.bswap.i32(i32 %22), !dbg !422
  %24 = load ptr, ptr %iter, align 8, !dbg !423
  %mask12 = getelementptr inbounds %struct.netlbl_af4list, ptr %24, i32 0, i32 1, !dbg !423
  %25 = load i32, ptr %mask12, align 4, !dbg !423
  %26 = call i32 @llvm.bswap.i32(i32 %25), !dbg !423
  %cmp13 = icmp ugt i32 %23, %26, !dbg !424
  br i1 %cmp13, label %if.then14, label %if.end18, !dbg !425

if.then14:                                        ; preds = %land.lhs.true10
  %27 = load ptr, ptr %entry.addr, align 8, !dbg !426
  %list15 = getelementptr inbounds %struct.netlbl_af4list, ptr %27, i32 0, i32 3, !dbg !428
  %28 = load ptr, ptr %iter, align 8, !dbg !429
  %list16 = getelementptr inbounds %struct.netlbl_af4list, ptr %28, i32 0, i32 3, !dbg !430
  %prev = getelementptr inbounds %struct.list_head, ptr %list16, i32 0, i32 1, !dbg !431
  %29 = load ptr, ptr %prev, align 8, !dbg !431
  %30 = load ptr, ptr %iter, align 8, !dbg !432
  %list17 = getelementptr inbounds %struct.netlbl_af4list, ptr %30, i32 0, i32 3, !dbg !433
  call void @__list_add_rcu(ptr noundef %list15, ptr noundef %29, ptr noundef %list17) #6, !dbg !434
  store i32 0, ptr %retval, align 4, !dbg !435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !435

if.end18:                                         ; preds = %land.lhs.true10, %for.body
  br label %for.inc, !dbg !423

for.inc:                                          ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #5, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !382, metadata !DIExpression()), !dbg !436
  br label %do.body20, !dbg !437

do.body20:                                        ; preds = %for.inc
  br label %do.cond21, !dbg !439

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !439

do.end22:                                         ; preds = %do.cond21
  %31 = load ptr, ptr %iter, align 8, !dbg !437
  %list24 = getelementptr inbounds %struct.netlbl_af4list, ptr %31, i32 0, i32 3, !dbg !437
  %next25 = getelementptr inbounds %struct.list_head, ptr %list24, i32 0, i32 0, !dbg !437
  %32 = load volatile ptr, ptr %next25, align 8, !dbg !437
  store ptr %32, ptr %tmp23, align 8, !dbg !439
  %33 = load ptr, ptr %tmp23, align 8, !dbg !437
  store ptr %33, ptr %__mptr19, align 8, !dbg !436
  %34 = load ptr, ptr %__mptr19, align 8, !dbg !436
  %add.ptr27 = getelementptr i8, ptr %34, i64 -16, !dbg !436
  store ptr %add.ptr27, ptr %tmp26, align 8, !dbg !436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #5, !dbg !417
  %35 = load ptr, ptr %tmp26, align 8, !dbg !436
  store ptr %35, ptr %iter, align 8, !dbg !417
  br label %for.cond, !dbg !417, !llvm.loop !441

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %entry.addr, align 8, !dbg !443
  %list28 = getelementptr inbounds %struct.netlbl_af4list, ptr %36, i32 0, i32 3, !dbg !444
  %37 = load ptr, ptr %head.addr, align 8, !dbg !445
  call void @list_add_tail_rcu(ptr noundef %list28, ptr noundef %37) #6, !dbg !446
  store i32 0, ptr %retval, align 4, !dbg !447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !447

cleanup:                                          ; preds = %for.end, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5, !dbg !448
  %38 = load i32, ptr %retval, align 4, !dbg !448
  ret i32 %38, !dbg !448
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !449 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !454, metadata !DIExpression()), !dbg !459
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !455, metadata !DIExpression()), !dbg !460
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !456, metadata !DIExpression()), !dbg !461
  %0 = load ptr, ptr %new.addr, align 8, !dbg !462
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !464
  %2 = load ptr, ptr %next.addr, align 8, !dbg !465
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6, !dbg !466
  br i1 %call, label %if.end, label %if.then, !dbg !467

if.then:                                          ; preds = %entry
  br label %return, !dbg !468

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !469
  %4 = load ptr, ptr %new.addr, align 8, !dbg !470
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !471
  store ptr %3, ptr %next1, align 8, !dbg !472
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !473
  %6 = load ptr, ptr %new.addr, align 8, !dbg !474
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !475
  store ptr %5, ptr %prev2, align 8, !dbg !476
  br label %do.body, !dbg !477

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #5, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !457, metadata !DIExpression()), !dbg !478
  %7 = load ptr, ptr %new.addr, align 8, !dbg !478
  %8 = ptrtoint ptr %7 to i64, !dbg !478
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !478
  br i1 false, label %land.lhs.true, label %if.else, !dbg !479

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !479
  %cmp = icmp eq i64 %9, 0, !dbg !479
  br i1 %cmp, label %if.then3, label %if.else, !dbg !478

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !479

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !481

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !483

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !483

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !481

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !485
  %11 = inttoptr i64 %10 to ptr, !dbg !485
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !485
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !485
  store volatile ptr %11, ptr %next7, align 8, !dbg !485
  br label %do.cond8, !dbg !485

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !485

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !481

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !481

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !481

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !479

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !487

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !489

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !489

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !487

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !491

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !493

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !493

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !491, !srcloc !495
  br label %do.body20, !dbg !491

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !496

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !498

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !498

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !496

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !500
  %14 = inttoptr i64 %13 to ptr, !dbg !500
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !500
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !500
  store volatile ptr %14, ptr %next25, align 8, !dbg !500
  br label %do.cond26, !dbg !500

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !500

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !496

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !496

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !491

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !491

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !487

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !487

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #5, !dbg !477
  br label %do.end36, !dbg !478

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !502
  %17 = load ptr, ptr %next.addr, align 8, !dbg !503
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !504
  store ptr %16, ptr %prev37, align 8, !dbg !505
  br label %return, !dbg !506

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !507 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !511, metadata !DIExpression()), !dbg !513
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !512, metadata !DIExpression()), !dbg !514
  %0 = load ptr, ptr %new.addr, align 8, !dbg !515
  %1 = load ptr, ptr %head.addr, align 8, !dbg !516
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !517
  %2 = load ptr, ptr %prev, align 8, !dbg !517
  %3 = load ptr, ptr %head.addr, align 8, !dbg !518
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %2, ptr noundef %3) #6, !dbg !519
  ret void, !dbg !520
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_af6list_add(ptr noundef %entry1, ptr noundef %head) #0 align 16 !dbg !521 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !525, metadata !DIExpression()), !dbg !534
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !526, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !527, metadata !DIExpression()), !dbg !537
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !538
  %addr = getelementptr inbounds %struct.netlbl_af6list, ptr %0, i32 0, i32 0, !dbg !539
  %1 = load ptr, ptr %head.addr, align 8, !dbg !540
  %call = call ptr @netlbl_af6list_search(ptr noundef %addr, ptr noundef %1) #6, !dbg !541
  store ptr %call, ptr %iter, align 8, !dbg !542
  %2 = load ptr, ptr %iter, align 8, !dbg !543
  %cmp = icmp ne ptr %2, null, !dbg !545
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !546

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %iter, align 8, !dbg !547
  %addr2 = getelementptr inbounds %struct.netlbl_af6list, ptr %3, i32 0, i32 0, !dbg !548
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !549
  %addr3 = getelementptr inbounds %struct.netlbl_af6list, ptr %4, i32 0, i32 0, !dbg !550
  %call4 = call zeroext i1 @ipv6_addr_equal(ptr noundef %addr2, ptr noundef %addr3) #6, !dbg !551
  br i1 %call4, label %land.lhs.true5, label %if.end, !dbg !552

land.lhs.true5:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %iter, align 8, !dbg !553
  %mask = getelementptr inbounds %struct.netlbl_af6list, ptr %5, i32 0, i32 1, !dbg !554
  %6 = load ptr, ptr %entry.addr, align 8, !dbg !555
  %mask6 = getelementptr inbounds %struct.netlbl_af6list, ptr %6, i32 0, i32 1, !dbg !556
  %call7 = call zeroext i1 @ipv6_addr_equal(ptr noundef %mask, ptr noundef %mask6) #6, !dbg !557
  br i1 %call7, label %if.then, label %if.end, !dbg !558

if.then:                                          ; preds = %land.lhs.true5
  store i32 -17, ptr %retval, align 4, !dbg !559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !559

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !528, metadata !DIExpression()), !dbg !560
  br label %do.body, !dbg !561

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !563

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !563

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %head.addr, align 8, !dbg !561
  %next = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !561
  %8 = load volatile ptr, ptr %next, align 8, !dbg !561
  store ptr %8, ptr %tmp, align 8, !dbg !563
  %9 = load ptr, ptr %tmp, align 8, !dbg !561
  store ptr %9, ptr %__mptr, align 8, !dbg !560
  %10 = load ptr, ptr %__mptr, align 8, !dbg !560
  %add.ptr = getelementptr i8, ptr %10, i64 -40, !dbg !560
  store ptr %add.ptr, ptr %tmp8, align 8, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !565
  %11 = load ptr, ptr %tmp8, align 8, !dbg !560
  store ptr %11, ptr %iter, align 8, !dbg !565
  br label %for.cond, !dbg !565

for.cond:                                         ; preds = %do.end23, %do.end
  %12 = load ptr, ptr %iter, align 8, !dbg !566
  %list = getelementptr inbounds %struct.netlbl_af6list, ptr %12, i32 0, i32 3, !dbg !566
  %13 = load ptr, ptr %head.addr, align 8, !dbg !566
  %cmp9 = icmp ne ptr %list, %13, !dbg !566
  br i1 %cmp9, label %for.body, label %for.end, !dbg !565

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %iter, align 8, !dbg !567
  %valid = getelementptr inbounds %struct.netlbl_af6list, ptr %14, i32 0, i32 2, !dbg !569
  %15 = load i32, ptr %valid, align 8, !dbg !569
  %tobool = icmp ne i32 %15, 0, !dbg !567
  br i1 %tobool, label %land.lhs.true10, label %if.end19, !dbg !570

land.lhs.true10:                                  ; preds = %for.body
  %16 = load ptr, ptr %entry.addr, align 8, !dbg !571
  %mask11 = getelementptr inbounds %struct.netlbl_af6list, ptr %16, i32 0, i32 1, !dbg !572
  %17 = load ptr, ptr %iter, align 8, !dbg !573
  %mask12 = getelementptr inbounds %struct.netlbl_af6list, ptr %17, i32 0, i32 1, !dbg !574
  %call13 = call i32 @ipv6_addr_cmp(ptr noundef %mask11, ptr noundef %mask12) #6, !dbg !575
  %cmp14 = icmp sgt i32 %call13, 0, !dbg !576
  br i1 %cmp14, label %if.then15, label %if.end19, !dbg !577

if.then15:                                        ; preds = %land.lhs.true10
  %18 = load ptr, ptr %entry.addr, align 8, !dbg !578
  %list16 = getelementptr inbounds %struct.netlbl_af6list, ptr %18, i32 0, i32 3, !dbg !580
  %19 = load ptr, ptr %iter, align 8, !dbg !581
  %list17 = getelementptr inbounds %struct.netlbl_af6list, ptr %19, i32 0, i32 3, !dbg !582
  %prev = getelementptr inbounds %struct.list_head, ptr %list17, i32 0, i32 1, !dbg !583
  %20 = load ptr, ptr %prev, align 8, !dbg !583
  %21 = load ptr, ptr %iter, align 8, !dbg !584
  %list18 = getelementptr inbounds %struct.netlbl_af6list, ptr %21, i32 0, i32 3, !dbg !585
  call void @__list_add_rcu(ptr noundef %list16, ptr noundef %20, ptr noundef %list18) #6, !dbg !586
  store i32 0, ptr %retval, align 4, !dbg !587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !587

if.end19:                                         ; preds = %land.lhs.true10, %for.body
  br label %for.inc, !dbg !588

for.inc:                                          ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #5, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !531, metadata !DIExpression()), !dbg !589
  br label %do.body21, !dbg !590

do.body21:                                        ; preds = %for.inc
  br label %do.cond22, !dbg !592

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !592

do.end23:                                         ; preds = %do.cond22
  %22 = load ptr, ptr %iter, align 8, !dbg !590
  %list25 = getelementptr inbounds %struct.netlbl_af6list, ptr %22, i32 0, i32 3, !dbg !590
  %next26 = getelementptr inbounds %struct.list_head, ptr %list25, i32 0, i32 0, !dbg !590
  %23 = load volatile ptr, ptr %next26, align 8, !dbg !590
  store ptr %23, ptr %tmp24, align 8, !dbg !592
  %24 = load ptr, ptr %tmp24, align 8, !dbg !590
  store ptr %24, ptr %__mptr20, align 8, !dbg !589
  %25 = load ptr, ptr %__mptr20, align 8, !dbg !589
  %add.ptr28 = getelementptr i8, ptr %25, i64 -40, !dbg !589
  store ptr %add.ptr28, ptr %tmp27, align 8, !dbg !589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #5, !dbg !566
  %26 = load ptr, ptr %tmp27, align 8, !dbg !589
  store ptr %26, ptr %iter, align 8, !dbg !566
  br label %for.cond, !dbg !566, !llvm.loop !594

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %entry.addr, align 8, !dbg !596
  %list29 = getelementptr inbounds %struct.netlbl_af6list, ptr %27, i32 0, i32 3, !dbg !597
  %28 = load ptr, ptr %head.addr, align 8, !dbg !598
  call void @list_add_tail_rcu(ptr noundef %list29, ptr noundef %28) #6, !dbg !599
  store i32 0, ptr %retval, align 4, !dbg !600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !600

cleanup:                                          ; preds = %for.end, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5, !dbg !601
  %29 = load i32, ptr %retval, align 4, !dbg !601
  ret i32 %29, !dbg !601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ipv6_addr_cmp(ptr noundef %a1, ptr noundef %a2) #3 align 16 !dbg !602 {
entry:
  %a1.addr = alloca ptr, align 8
  %a2.addr = alloca ptr, align 8
  store ptr %a1, ptr %a1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a1.addr, metadata !606, metadata !DIExpression()), !dbg !608
  store ptr %a2, ptr %a2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a2.addr, metadata !607, metadata !DIExpression()), !dbg !609
  %0 = load ptr, ptr %a1.addr, align 8, !dbg !610
  %1 = load ptr, ptr %a2.addr, align 8, !dbg !611
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef 16) #6, !dbg !612
  ret i32 %call, !dbg !613
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netlbl_af4list_remove_entry(ptr noundef %entry1) #0 align 16 !dbg !614 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !620
  %valid = getelementptr inbounds %struct.netlbl_af4list, ptr %0, i32 0, i32 2, !dbg !621
  store i32 0, ptr %valid, align 8, !dbg !622
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !623
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %1, i32 0, i32 3, !dbg !624
  call void @list_del_rcu(ptr noundef %list) #6, !dbg !625
  ret void, !dbg !626
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #3 align 16 !dbg !627 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !631, metadata !DIExpression()), !dbg !632
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !633
  call void @__list_del_entry(ptr noundef %0) #6, !dbg !634
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !635
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !636
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !637
  ret void, !dbg !638
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_af4list_remove(i32 noundef %addr, i32 noundef %mask, ptr noundef %head) #0 align 16 !dbg !639 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !641, metadata !DIExpression()), !dbg !645
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !642, metadata !DIExpression()), !dbg !646
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !643, metadata !DIExpression()), !dbg !647
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #5, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !644, metadata !DIExpression()), !dbg !649
  %0 = load i32, ptr %addr.addr, align 4, !dbg !650
  %1 = load i32, ptr %mask.addr, align 4, !dbg !651
  %2 = load ptr, ptr %head.addr, align 8, !dbg !652
  %call = call ptr @netlbl_af4list_search_exact(i32 noundef %0, i32 noundef %1, ptr noundef %2) #6, !dbg !653
  store ptr %call, ptr %entry1, align 8, !dbg !654
  %3 = load ptr, ptr %entry1, align 8, !dbg !655
  %cmp = icmp eq ptr %3, null, !dbg !657
  br i1 %cmp, label %if.then, label %if.end, !dbg !658

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !659

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !660
  call void @netlbl_af4list_remove_entry(ptr noundef %4) #6, !dbg !661
  %5 = load ptr, ptr %entry1, align 8, !dbg !662
  store ptr %5, ptr %retval, align 8, !dbg !663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !663

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #5, !dbg !664
  %6 = load ptr, ptr %retval, align 8, !dbg !664
  ret ptr %6, !dbg !664
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netlbl_af6list_remove_entry(ptr noundef %entry1) #0 align 16 !dbg !665 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !669, metadata !DIExpression()), !dbg !670
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !671
  %valid = getelementptr inbounds %struct.netlbl_af6list, ptr %0, i32 0, i32 2, !dbg !672
  store i32 0, ptr %valid, align 8, !dbg !673
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !674
  %list = getelementptr inbounds %struct.netlbl_af6list, ptr %1, i32 0, i32 3, !dbg !675
  call void @list_del_rcu(ptr noundef %list) #6, !dbg !676
  ret void, !dbg !677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_af6list_remove(ptr noundef %addr, ptr noundef %mask, ptr noundef %head) #0 align 16 !dbg !678 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !680, metadata !DIExpression()), !dbg !684
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !681, metadata !DIExpression()), !dbg !685
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !682, metadata !DIExpression()), !dbg !686
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #5, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !683, metadata !DIExpression()), !dbg !688
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !689
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !690
  %2 = load ptr, ptr %head.addr, align 8, !dbg !691
  %call = call ptr @netlbl_af6list_search_exact(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6, !dbg !692
  store ptr %call, ptr %entry1, align 8, !dbg !693
  %3 = load ptr, ptr %entry1, align 8, !dbg !694
  %cmp = icmp eq ptr %3, null, !dbg !696
  br i1 %cmp, label %if.then, label %if.end, !dbg !697

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !698

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !699
  call void @netlbl_af6list_remove_entry(ptr noundef %4) #6, !dbg !700
  %5 = load ptr, ptr %entry1, align 8, !dbg !701
  store ptr %5, ptr %retval, align 8, !dbg !702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !702

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #5, !dbg !703
  %6 = load ptr, ptr %retval, align 8, !dbg !703
  ret ptr %6, !dbg !703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netlbl_af4list_audit_addr(ptr noundef %audit_buf, i32 noundef %src, ptr noundef %dev, i32 noundef %addr, i32 noundef %mask) #0 align 16 !dbg !704 {
entry:
  %audit_buf.addr = alloca ptr, align 8
  %src.addr = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %mask_val = alloca i32, align 4
  %dir = alloca ptr, align 8
  %mask_len = alloca i32, align 4
  store ptr %audit_buf, ptr %audit_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_buf.addr, metadata !713, metadata !DIExpression()), !dbg !724
  store i32 %src, ptr %src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !714, metadata !DIExpression()), !dbg !725
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !715, metadata !DIExpression()), !dbg !726
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !716, metadata !DIExpression()), !dbg !727
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !717, metadata !DIExpression()), !dbg !728
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_val) #5, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %mask_val, metadata !718, metadata !DIExpression()), !dbg !730
  %0 = load i32, ptr %mask.addr, align 4, !dbg !731
  %1 = call i32 @llvm.bswap.i32(i32 %0), !dbg !731
  store i32 %1, ptr %mask_val, align 4, !dbg !730
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #5, !dbg !732
  call void @llvm.dbg.declare(metadata ptr %dir, metadata !719, metadata !DIExpression()), !dbg !733
  %2 = load i32, ptr %src.addr, align 4, !dbg !734
  %tobool = icmp ne i32 %2, 0, !dbg !734
  %3 = zext i1 %tobool to i64, !dbg !734
  %cond = select i1 %tobool, ptr @.str, ptr @.str.1, !dbg !734
  store ptr %cond, ptr %dir, align 8, !dbg !733
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !735
  %cmp = icmp ne ptr %4, null, !dbg !737
  br i1 %cmp, label %if.then, label %if.end, !dbg !738

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %audit_buf.addr, align 8, !dbg !739
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !740
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %5, ptr noundef @.str.2, ptr noundef %6) #6, !dbg !741
  br label %if.end, !dbg !741

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %audit_buf.addr, align 8, !dbg !742
  %8 = load ptr, ptr %dir, align 8, !dbg !743
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %7, ptr noundef @.str.3, ptr noundef %8, ptr noundef %addr.addr) #6, !dbg !744
  %9 = load i32, ptr %mask_val, align 4, !dbg !745
  %cmp1 = icmp ne i32 %9, -1, !dbg !746
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !747

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_len) #5, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %mask_len, metadata !721, metadata !DIExpression()), !dbg !749
  store i32 0, ptr %mask_len, align 4, !dbg !749
  br label %while.cond, !dbg !750

while.cond:                                       ; preds = %while.body, %if.then2
  %10 = load i32, ptr %mask_val, align 4, !dbg !751
  %cmp3 = icmp ugt i32 %10, 0, !dbg !752
  br i1 %cmp3, label %while.body, label %while.end, !dbg !750

while.body:                                       ; preds = %while.cond
  %11 = load i32, ptr %mask_val, align 4, !dbg !753
  %shl = shl i32 %11, 1, !dbg !753
  store i32 %shl, ptr %mask_val, align 4, !dbg !753
  %12 = load i32, ptr %mask_len, align 4, !dbg !755
  %inc = add i32 %12, 1, !dbg !755
  store i32 %inc, ptr %mask_len, align 4, !dbg !755
  br label %while.cond, !dbg !750, !llvm.loop !756

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %audit_buf.addr, align 8, !dbg !758
  %14 = load ptr, ptr %dir, align 8, !dbg !759
  %15 = load i32, ptr %mask_len, align 4, !dbg !760
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %13, ptr noundef @.str.4, ptr noundef %14, i32 noundef %15) #6, !dbg !761
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_len) #5, !dbg !762
  br label %if.end4, !dbg !763

if.end4:                                          ; preds = %while.end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #5, !dbg !764
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_val) #5, !dbg !764
  ret void, !dbg !764
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !765 dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netlbl_af6list_audit_addr(ptr noundef %audit_buf, i32 noundef %src, ptr noundef %dev, ptr noundef %addr, ptr noundef %mask) #0 align 16 !dbg !768 {
entry:
  %audit_buf.addr = alloca ptr, align 8
  %src.addr = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %mask_len = alloca i32, align 4
  %mask_val = alloca i32, align 4
  %iter = alloca i32, align 4
  store ptr %audit_buf, ptr %audit_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_buf.addr, metadata !772, metadata !DIExpression()), !dbg !783
  store i32 %src, ptr %src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !773, metadata !DIExpression()), !dbg !784
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !774, metadata !DIExpression()), !dbg !785
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !775, metadata !DIExpression()), !dbg !786
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !776, metadata !DIExpression()), !dbg !787
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #5, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %dir, metadata !777, metadata !DIExpression()), !dbg !789
  %0 = load i32, ptr %src.addr, align 4, !dbg !790
  %tobool = icmp ne i32 %0, 0, !dbg !790
  %1 = zext i1 %tobool to i64, !dbg !790
  %cond = select i1 %tobool, ptr @.str, ptr @.str.1, !dbg !790
  store ptr %cond, ptr %dir, align 8, !dbg !789
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !791
  %cmp = icmp ne ptr %2, null, !dbg !793
  br i1 %cmp, label %if.then, label %if.end, !dbg !794

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %audit_buf.addr, align 8, !dbg !795
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !796
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %3, ptr noundef @.str.2, ptr noundef %4) #6, !dbg !797
  br label %if.end, !dbg !797

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %audit_buf.addr, align 8, !dbg !798
  %6 = load ptr, ptr %dir, align 8, !dbg !799
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !800
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %5, ptr noundef @.str.5, ptr noundef %6, ptr noundef %7) #6, !dbg !801
  %8 = load ptr, ptr %mask.addr, align 8, !dbg !802
  %in6_u = getelementptr inbounds %struct.in6_addr, ptr %8, i32 0, i32 0, !dbg !802
  %arrayidx = getelementptr [4 x i32], ptr %in6_u, i64 0, i64 3, !dbg !802
  %9 = load i32, ptr %arrayidx, align 4, !dbg !802
  %10 = call i32 @llvm.bswap.i32(i32 %9), !dbg !802
  %cmp1 = icmp ne i32 %10, -1, !dbg !803
  br i1 %cmp1, label %if.then2, label %if.end14, !dbg !804

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_len) #5, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %mask_len, metadata !778, metadata !DIExpression()), !dbg !806
  store i32 0, ptr %mask_len, align 4, !dbg !806
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_val) #5, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %mask_val, metadata !781, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #5, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !782, metadata !DIExpression()), !dbg !810
  store i32 -1, ptr %iter, align 4, !dbg !810
  br label %while.cond, !dbg !811

while.cond:                                       ; preds = %while.body, %if.then2
  %11 = load ptr, ptr %mask.addr, align 8, !dbg !812
  %in6_u3 = getelementptr inbounds %struct.in6_addr, ptr %11, i32 0, i32 0, !dbg !812
  %12 = load i32, ptr %iter, align 4, !dbg !812
  %inc = add i32 %12, 1, !dbg !812
  store i32 %inc, ptr %iter, align 4, !dbg !812
  %idxprom = sext i32 %inc to i64, !dbg !812
  %arrayidx4 = getelementptr [4 x i32], ptr %in6_u3, i64 0, i64 %idxprom, !dbg !812
  %13 = load i32, ptr %arrayidx4, align 4, !dbg !812
  %14 = call i32 @llvm.bswap.i32(i32 %13), !dbg !812
  %cmp5 = icmp eq i32 %14, -1, !dbg !813
  br i1 %cmp5, label %while.body, label %while.end, !dbg !811

while.body:                                       ; preds = %while.cond
  %15 = load i32, ptr %mask_len, align 4, !dbg !814
  %add = add i32 %15, 32, !dbg !814
  store i32 %add, ptr %mask_len, align 4, !dbg !814
  br label %while.cond, !dbg !811, !llvm.loop !815

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %mask.addr, align 8, !dbg !817
  %in6_u6 = getelementptr inbounds %struct.in6_addr, ptr %16, i32 0, i32 0, !dbg !817
  %17 = load i32, ptr %iter, align 4, !dbg !817
  %idxprom7 = sext i32 %17 to i64, !dbg !817
  %arrayidx8 = getelementptr [4 x i32], ptr %in6_u6, i64 0, i64 %idxprom7, !dbg !817
  %18 = load i32, ptr %arrayidx8, align 4, !dbg !817
  %19 = call i32 @llvm.bswap.i32(i32 %18), !dbg !817
  store i32 %19, ptr %mask_val, align 4, !dbg !818
  br label %while.cond9, !dbg !819

while.cond9:                                      ; preds = %while.body11, %while.end
  %20 = load i32, ptr %mask_val, align 4, !dbg !820
  %cmp10 = icmp ugt i32 %20, 0, !dbg !821
  br i1 %cmp10, label %while.body11, label %while.end13, !dbg !819

while.body11:                                     ; preds = %while.cond9
  %21 = load i32, ptr %mask_val, align 4, !dbg !822
  %shl = shl i32 %21, 1, !dbg !822
  store i32 %shl, ptr %mask_val, align 4, !dbg !822
  %22 = load i32, ptr %mask_len, align 4, !dbg !824
  %inc12 = add i32 %22, 1, !dbg !824
  store i32 %inc12, ptr %mask_len, align 4, !dbg !824
  br label %while.cond9, !dbg !819, !llvm.loop !825

while.end13:                                      ; preds = %while.cond9
  %23 = load ptr, ptr %audit_buf.addr, align 8, !dbg !827
  %24 = load ptr, ptr %dir, align 8, !dbg !828
  %25 = load i32, ptr %mask_len, align 4, !dbg !829
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %23, ptr noundef @.str.4, ptr noundef %24, i32 noundef %25) #6, !dbg !830
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #5, !dbg !831
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_val) #5, !dbg !831
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_len) #5, !dbg !831
  br label %if.end14, !dbg !832

if.end14:                                         ; preds = %while.end13, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #5, !dbg !833
  ret void, !dbg !833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !834 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !839, metadata !DIExpression()), !dbg !842
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !840, metadata !DIExpression()), !dbg !843
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !841, metadata !DIExpression()), !dbg !844
  ret i1 true, !dbg !845
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !846 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !855 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !857, metadata !DIExpression()), !dbg !858
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !859
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #6, !dbg !861
  br i1 %call, label %if.end, label %if.then, !dbg !862

if.then:                                          ; preds = %entry
  br label %return, !dbg !863

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !864
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !865
  %2 = load ptr, ptr %prev, align 8, !dbg !865
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !866
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !867
  %4 = load ptr, ptr %next, align 8, !dbg !867
  call void @__list_del(ptr noundef %2, ptr noundef %4) #6, !dbg !868
  br label %return, !dbg !869

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !869
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !870 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !874, metadata !DIExpression()), !dbg !875
  ret i1 true, !dbg !876
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !877 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !879, metadata !DIExpression()), !dbg !881
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !880, metadata !DIExpression()), !dbg !882
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !883
  %1 = load ptr, ptr %next.addr, align 8, !dbg !884
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !885
  store ptr %0, ptr %prev1, align 8, !dbg !886
  br label %do.body, !dbg !887

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !888

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !890

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !888

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !892
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !892
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !892
  store volatile ptr %2, ptr %next4, align 8, !dbg !892
  br label %do.end5, !dbg !892

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !888

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !894
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "net/netlabel/netlabel_addrlist.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af2ebdb58a7a3d89f96937a15c172601")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 10)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 9)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 17)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !16, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/netlabel/.netlabel_addrlist.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/netlabel/netlabel_addrlist\22 -D KBUILD_BASENAME=\22netlabel_addrlist\22 -D KBUILD_MODNAME=\22netlabel_addrlist\22 -D __KBUILD_MODNAME=kmod_netlabel_addrlist -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/netlabel/netlabel_addrlist.ll net/netlabel/netlabel_addrlist.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !27, retainedTypes: !34, globals: !93, splitDebugInlining: false, nameTableKind: None)
!27 = !{!28}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 10, baseType: !30, size: 32, elements: !31)
!29 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "false", value: 0)
!33 = !DIEnumerator(name: "true", value: 1)
!34 = !{!35, !36, !45, !59, !52, !50, !87, !90, !39, !91, !92}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !40, file: !41, line: 191, baseType: !39, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !40, file: !41, line: 191, baseType: !39, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_af4list", file: !47, line: 33, size: 256, elements: !48)
!47 = !DIFile(filename: "net/netlabel/netlabel_addrlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37c4d29795db6150a5fcd41fadb25f4c")
!48 = !{!49, !54, !55, !58}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !46, file: !47, line: 34, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !51, line: 39, baseType: !52)
!51 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !53, line: 27, baseType: !30)
!53 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !46, file: !47, line: 35, baseType: !50, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !46, file: !47, line: 37, baseType: !56, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !57, line: 21, baseType: !52)
!57 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !46, file: !47, line: 38, baseType: !40, size: 128, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_af6list", file: !47, line: 48, size: 448, elements: !61)
!61 = !{!62, !84, !85, !86}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !60, file: !47, line: 49, baseType: !63, size: 128)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !64, line: 33, size: 128, elements: !65)
!64 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !63, file: !64, line: 40, baseType: !67, size: 128)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !64, line: 34, size: 128, elements: !68)
!68 = !{!69, !75, !82}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !67, file: !64, line: 35, baseType: !70, size: 128)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 128, elements: !73)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !53, line: 21, baseType: !72)
!72 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !{!74}
!74 = !DISubrange(count: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !67, file: !64, line: 37, baseType: !76, size: 128)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !80)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !51, line: 37, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !53, line: 24, baseType: !79)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !{!81}
!81 = !DISubrange(count: 8)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !67, file: !64, line: 38, baseType: !83, size: 128)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !5)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !60, file: !47, line: 50, baseType: !63, size: 128, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !60, file: !47, line: 52, baseType: !56, size: 32, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !60, file: !47, line: 53, baseType: !40, size: 128, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !41, line: 42, baseType: !89)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!93 = !{!0, !7, !9, !14, !19, !24}
!94 = !{i32 7, !"Dwarf Version", i32 5}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 8, !"cf-protection-branch", i32 1}
!98 = !{i32 4, !"function_return_thunk_extern", i32 1}
!99 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!100 = !{i32 1, !"Code Model", i32 2}
!101 = !{i32 1, !"override-stack-alignment", i32 8}
!102 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!103 = distinct !DISubprogram(name: "netlbl_af4list_search", scope: !2, file: !2, line: 46, type: !104, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!45, !50, !39}
!106 = !{!107, !108, !109, !110, !113}
!107 = !DILocalVariable(name: "addr", arg: 1, scope: !103, file: !2, line: 46, type: !50)
!108 = !DILocalVariable(name: "head", arg: 2, scope: !103, file: !2, line: 47, type: !39)
!109 = !DILocalVariable(name: "iter", scope: !103, file: !2, line: 49, type: !45)
!110 = !DILocalVariable(name: "__mptr", scope: !111, file: !2, line: 51, type: !35)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 51, column: 2)
!112 = distinct !DILexicalBlock(scope: !103, file: !2, line: 51, column: 2)
!113 = !DILocalVariable(name: "__mptr", scope: !114, file: !2, line: 51, type: !35)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 51, column: 2)
!115 = distinct !DILexicalBlock(scope: !112, file: !2, line: 51, column: 2)
!116 = !DILocation(line: 46, column: 53, scope: !103)
!117 = !DILocation(line: 47, column: 29, scope: !103)
!118 = !DILocation(line: 49, column: 2, scope: !103)
!119 = !DILocation(line: 49, column: 25, scope: !103)
!120 = !DILocation(line: 51, column: 2, scope: !111)
!121 = !DILocation(line: 51, column: 2, scope: !122)
!122 = distinct !DILexicalBlock(scope: !111, file: !2, line: 51, column: 2)
!123 = !DILocation(line: 51, column: 2, scope: !124)
!124 = distinct !DILexicalBlock(scope: !122, file: !2, line: 51, column: 2)
!125 = !DILocation(line: 51, column: 2, scope: !112)
!126 = !DILocation(line: 51, column: 2, scope: !115)
!127 = !DILocation(line: 52, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !115, file: !2, line: 52, column: 7)
!129 = !DILocation(line: 52, column: 13, scope: !128)
!130 = !DILocation(line: 52, column: 19, scope: !128)
!131 = !DILocation(line: 52, column: 23, scope: !128)
!132 = !DILocation(line: 52, column: 30, scope: !128)
!133 = !DILocation(line: 52, column: 36, scope: !128)
!134 = !DILocation(line: 52, column: 28, scope: !128)
!135 = !DILocation(line: 52, column: 45, scope: !128)
!136 = !DILocation(line: 52, column: 51, scope: !128)
!137 = !DILocation(line: 52, column: 42, scope: !128)
!138 = !DILocation(line: 52, column: 7, scope: !115)
!139 = !DILocation(line: 53, column: 11, scope: !128)
!140 = !DILocation(line: 53, column: 4, scope: !128)
!141 = !DILocation(line: 51, column: 2, scope: !114)
!142 = !DILocation(line: 51, column: 2, scope: !143)
!143 = distinct !DILexicalBlock(scope: !114, file: !2, line: 51, column: 2)
!144 = !DILocation(line: 51, column: 2, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !2, line: 51, column: 2)
!146 = distinct !{!146, !125, !147, !148, !149}
!147 = !DILocation(line: 53, column: 11, scope: !112)
!148 = !{!"llvm.loop.mustprogress"}
!149 = !{!"llvm.loop.unroll.disable"}
!150 = !DILocation(line: 55, column: 2, scope: !103)
!151 = !DILocation(line: 56, column: 1, scope: !103)
!152 = distinct !DISubprogram(name: "netlbl_af4list_search_exact", scope: !2, file: !2, line: 70, type: !153, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{!45, !50, !50, !39}
!155 = !{!156, !157, !158, !159, !160, !163}
!156 = !DILocalVariable(name: "addr", arg: 1, scope: !152, file: !2, line: 70, type: !50)
!157 = !DILocalVariable(name: "mask", arg: 2, scope: !152, file: !2, line: 71, type: !50)
!158 = !DILocalVariable(name: "head", arg: 3, scope: !152, file: !2, line: 72, type: !39)
!159 = !DILocalVariable(name: "iter", scope: !152, file: !2, line: 74, type: !45)
!160 = !DILocalVariable(name: "__mptr", scope: !161, file: !2, line: 76, type: !35)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 76, column: 2)
!162 = distinct !DILexicalBlock(scope: !152, file: !2, line: 76, column: 2)
!163 = !DILocalVariable(name: "__mptr", scope: !164, file: !2, line: 76, type: !35)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 76, column: 2)
!165 = distinct !DILexicalBlock(scope: !162, file: !2, line: 76, column: 2)
!166 = !DILocation(line: 70, column: 59, scope: !152)
!167 = !DILocation(line: 71, column: 17, scope: !152)
!168 = !DILocation(line: 72, column: 28, scope: !152)
!169 = !DILocation(line: 74, column: 2, scope: !152)
!170 = !DILocation(line: 74, column: 25, scope: !152)
!171 = !DILocation(line: 76, column: 2, scope: !161)
!172 = !DILocation(line: 76, column: 2, scope: !173)
!173 = distinct !DILexicalBlock(scope: !161, file: !2, line: 76, column: 2)
!174 = !DILocation(line: 76, column: 2, scope: !175)
!175 = distinct !DILexicalBlock(scope: !173, file: !2, line: 76, column: 2)
!176 = !DILocation(line: 76, column: 2, scope: !162)
!177 = !DILocation(line: 76, column: 2, scope: !165)
!178 = !DILocation(line: 77, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !165, file: !2, line: 77, column: 7)
!180 = !DILocation(line: 77, column: 13, scope: !179)
!181 = !DILocation(line: 77, column: 19, scope: !179)
!182 = !DILocation(line: 77, column: 22, scope: !179)
!183 = !DILocation(line: 77, column: 28, scope: !179)
!184 = !DILocation(line: 77, column: 36, scope: !179)
!185 = !DILocation(line: 77, column: 33, scope: !179)
!186 = !DILocation(line: 77, column: 41, scope: !179)
!187 = !DILocation(line: 77, column: 44, scope: !179)
!188 = !DILocation(line: 77, column: 50, scope: !179)
!189 = !DILocation(line: 77, column: 58, scope: !179)
!190 = !DILocation(line: 77, column: 55, scope: !179)
!191 = !DILocation(line: 77, column: 7, scope: !165)
!192 = !DILocation(line: 78, column: 11, scope: !179)
!193 = !DILocation(line: 78, column: 4, scope: !179)
!194 = !DILocation(line: 76, column: 2, scope: !164)
!195 = !DILocation(line: 76, column: 2, scope: !196)
!196 = distinct !DILexicalBlock(scope: !164, file: !2, line: 76, column: 2)
!197 = !DILocation(line: 76, column: 2, scope: !198)
!198 = distinct !DILexicalBlock(scope: !196, file: !2, line: 76, column: 2)
!199 = distinct !{!199, !176, !200, !148, !149}
!200 = !DILocation(line: 78, column: 11, scope: !162)
!201 = !DILocation(line: 80, column: 2, scope: !152)
!202 = !DILocation(line: 81, column: 1, scope: !152)
!203 = distinct !DISubprogram(name: "netlbl_af6list_search", scope: !2, file: !2, line: 96, type: !204, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !208)
!204 = !DISubroutineType(types: !205)
!205 = !{!59, !206, !39}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!208 = !{!209, !210, !211, !212, !215}
!209 = !DILocalVariable(name: "addr", arg: 1, scope: !203, file: !2, line: 96, type: !206)
!210 = !DILocalVariable(name: "head", arg: 2, scope: !203, file: !2, line: 97, type: !39)
!211 = !DILocalVariable(name: "iter", scope: !203, file: !2, line: 99, type: !59)
!212 = !DILocalVariable(name: "__mptr", scope: !213, file: !2, line: 101, type: !35)
!213 = distinct !DILexicalBlock(scope: !214, file: !2, line: 101, column: 2)
!214 = distinct !DILexicalBlock(scope: !203, file: !2, line: 101, column: 2)
!215 = !DILocalVariable(name: "__mptr", scope: !216, file: !2, line: 101, type: !35)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 101, column: 2)
!217 = distinct !DILexicalBlock(scope: !214, file: !2, line: 101, column: 2)
!218 = !DILocation(line: 96, column: 69, scope: !203)
!219 = !DILocation(line: 97, column: 29, scope: !203)
!220 = !DILocation(line: 99, column: 2, scope: !203)
!221 = !DILocation(line: 99, column: 25, scope: !203)
!222 = !DILocation(line: 101, column: 2, scope: !213)
!223 = !DILocation(line: 101, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !213, file: !2, line: 101, column: 2)
!225 = !DILocation(line: 101, column: 2, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !2, line: 101, column: 2)
!227 = !DILocation(line: 101, column: 2, scope: !214)
!228 = !DILocation(line: 101, column: 2, scope: !217)
!229 = !DILocation(line: 102, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !217, file: !2, line: 102, column: 7)
!231 = !DILocation(line: 102, column: 13, scope: !230)
!232 = !DILocation(line: 102, column: 19, scope: !230)
!233 = !DILocation(line: 103, column: 29, scope: !230)
!234 = !DILocation(line: 103, column: 35, scope: !230)
!235 = !DILocation(line: 103, column: 42, scope: !230)
!236 = !DILocation(line: 103, column: 48, scope: !230)
!237 = !DILocation(line: 103, column: 54, scope: !230)
!238 = !DILocation(line: 103, column: 7, scope: !230)
!239 = !DILocation(line: 103, column: 60, scope: !230)
!240 = !DILocation(line: 102, column: 7, scope: !217)
!241 = !DILocation(line: 104, column: 11, scope: !230)
!242 = !DILocation(line: 104, column: 4, scope: !230)
!243 = !DILocation(line: 103, column: 63, scope: !230)
!244 = !DILocation(line: 101, column: 2, scope: !216)
!245 = !DILocation(line: 101, column: 2, scope: !246)
!246 = distinct !DILexicalBlock(scope: !216, file: !2, line: 101, column: 2)
!247 = !DILocation(line: 101, column: 2, scope: !248)
!248 = distinct !DILexicalBlock(scope: !246, file: !2, line: 101, column: 2)
!249 = distinct !{!249, !227, !250, !148, !149}
!250 = !DILocation(line: 104, column: 11, scope: !214)
!251 = !DILocation(line: 106, column: 2, scope: !203)
!252 = !DILocation(line: 107, column: 1, scope: !203)
!253 = distinct !DISubprogram(name: "ipv6_masked_addr_cmp", scope: !254, file: !254, line: 589, type: !255, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !259)
!254 = !DIFile(filename: "./include/net/ipv6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd47d34fa721352efda10acf415765ad")
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !206, !206, !206}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !258)
!258 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!259 = !{!260, !261, !262, !263, !264, !265}
!260 = !DILocalVariable(name: "a1", arg: 1, scope: !253, file: !254, line: 589, type: !206)
!261 = !DILocalVariable(name: "m", arg: 2, scope: !253, file: !254, line: 589, type: !206)
!262 = !DILocalVariable(name: "a2", arg: 3, scope: !253, file: !254, line: 590, type: !206)
!263 = !DILocalVariable(name: "ul1", scope: !253, file: !254, line: 593, type: !87)
!264 = !DILocalVariable(name: "ulm", scope: !253, file: !254, line: 594, type: !87)
!265 = !DILocalVariable(name: "ul2", scope: !253, file: !254, line: 595, type: !87)
!266 = !DILocation(line: 589, column: 45, scope: !253)
!267 = !DILocation(line: 589, column: 72, scope: !253)
!268 = !DILocation(line: 590, column: 31, scope: !253)
!269 = !DILocation(line: 593, column: 2, scope: !253)
!270 = !DILocation(line: 593, column: 23, scope: !253)
!271 = !DILocation(line: 593, column: 52, scope: !253)
!272 = !DILocation(line: 594, column: 2, scope: !253)
!273 = !DILocation(line: 594, column: 23, scope: !253)
!274 = !DILocation(line: 594, column: 52, scope: !253)
!275 = !DILocation(line: 595, column: 2, scope: !253)
!276 = !DILocation(line: 595, column: 23, scope: !253)
!277 = !DILocation(line: 595, column: 52, scope: !253)
!278 = !DILocation(line: 597, column: 14, scope: !253)
!279 = !DILocation(line: 597, column: 23, scope: !253)
!280 = !DILocation(line: 597, column: 21, scope: !253)
!281 = !DILocation(line: 597, column: 33, scope: !253)
!282 = !DILocation(line: 597, column: 31, scope: !253)
!283 = !DILocation(line: 598, column: 7, scope: !253)
!284 = !DILocation(line: 598, column: 16, scope: !253)
!285 = !DILocation(line: 598, column: 14, scope: !253)
!286 = !DILocation(line: 598, column: 26, scope: !253)
!287 = !DILocation(line: 598, column: 24, scope: !253)
!288 = !DILocation(line: 597, column: 41, scope: !253)
!289 = !DILocation(line: 597, column: 10, scope: !253)
!290 = !DILocation(line: 597, column: 9, scope: !253)
!291 = !DILocation(line: 605, column: 1, scope: !253)
!292 = !DILocation(line: 597, column: 2, scope: !253)
!293 = distinct !DISubprogram(name: "netlbl_af6list_search_exact", scope: !2, file: !2, line: 121, type: !294, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{!59, !206, !206, !39}
!296 = !{!297, !298, !299, !300, !301, !304}
!297 = !DILocalVariable(name: "addr", arg: 1, scope: !293, file: !2, line: 121, type: !206)
!298 = !DILocalVariable(name: "mask", arg: 2, scope: !293, file: !2, line: 122, type: !206)
!299 = !DILocalVariable(name: "head", arg: 3, scope: !293, file: !2, line: 123, type: !39)
!300 = !DILocalVariable(name: "iter", scope: !293, file: !2, line: 125, type: !59)
!301 = !DILocalVariable(name: "__mptr", scope: !302, file: !2, line: 127, type: !35)
!302 = distinct !DILexicalBlock(scope: !303, file: !2, line: 127, column: 2)
!303 = distinct !DILexicalBlock(scope: !293, file: !2, line: 127, column: 2)
!304 = !DILocalVariable(name: "__mptr", scope: !305, file: !2, line: 127, type: !35)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 127, column: 2)
!306 = distinct !DILexicalBlock(scope: !303, file: !2, line: 127, column: 2)
!307 = !DILocation(line: 121, column: 75, scope: !293)
!308 = !DILocation(line: 122, column: 33, scope: !293)
!309 = !DILocation(line: 123, column: 28, scope: !293)
!310 = !DILocation(line: 125, column: 2, scope: !293)
!311 = !DILocation(line: 125, column: 25, scope: !293)
!312 = !DILocation(line: 127, column: 2, scope: !302)
!313 = !DILocation(line: 127, column: 2, scope: !314)
!314 = distinct !DILexicalBlock(scope: !302, file: !2, line: 127, column: 2)
!315 = !DILocation(line: 127, column: 2, scope: !316)
!316 = distinct !DILexicalBlock(scope: !314, file: !2, line: 127, column: 2)
!317 = !DILocation(line: 127, column: 2, scope: !303)
!318 = !DILocation(line: 127, column: 2, scope: !306)
!319 = !DILocation(line: 128, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !306, file: !2, line: 128, column: 7)
!321 = !DILocation(line: 128, column: 13, scope: !320)
!322 = !DILocation(line: 128, column: 19, scope: !320)
!323 = !DILocation(line: 129, column: 24, scope: !320)
!324 = !DILocation(line: 129, column: 30, scope: !320)
!325 = !DILocation(line: 129, column: 36, scope: !320)
!326 = !DILocation(line: 129, column: 7, scope: !320)
!327 = !DILocation(line: 129, column: 42, scope: !320)
!328 = !DILocation(line: 130, column: 24, scope: !320)
!329 = !DILocation(line: 130, column: 30, scope: !320)
!330 = !DILocation(line: 130, column: 36, scope: !320)
!331 = !DILocation(line: 130, column: 7, scope: !320)
!332 = !DILocation(line: 128, column: 7, scope: !306)
!333 = !DILocation(line: 131, column: 11, scope: !320)
!334 = !DILocation(line: 131, column: 4, scope: !320)
!335 = !DILocation(line: 130, column: 40, scope: !320)
!336 = !DILocation(line: 127, column: 2, scope: !305)
!337 = !DILocation(line: 127, column: 2, scope: !338)
!338 = distinct !DILexicalBlock(scope: !305, file: !2, line: 127, column: 2)
!339 = !DILocation(line: 127, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !338, file: !2, line: 127, column: 2)
!341 = distinct !{!341, !317, !342, !148, !149}
!342 = !DILocation(line: 131, column: 11, scope: !303)
!343 = !DILocation(line: 133, column: 2, scope: !293)
!344 = !DILocation(line: 134, column: 1, scope: !293)
!345 = distinct !DISubprogram(name: "ipv6_addr_equal", scope: !254, file: !254, line: 664, type: !346, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!257, !206, !206}
!348 = !{!349, !350, !351, !352}
!349 = !DILocalVariable(name: "a1", arg: 1, scope: !345, file: !254, line: 664, type: !206)
!350 = !DILocalVariable(name: "a2", arg: 2, scope: !345, file: !254, line: 665, type: !206)
!351 = !DILocalVariable(name: "ul1", scope: !345, file: !254, line: 668, type: !87)
!352 = !DILocalVariable(name: "ul2", scope: !345, file: !254, line: 669, type: !87)
!353 = !DILocation(line: 664, column: 59, scope: !345)
!354 = !DILocation(line: 665, column: 31, scope: !345)
!355 = !DILocation(line: 668, column: 2, scope: !345)
!356 = !DILocation(line: 668, column: 23, scope: !345)
!357 = !DILocation(line: 668, column: 52, scope: !345)
!358 = !DILocation(line: 669, column: 2, scope: !345)
!359 = !DILocation(line: 669, column: 23, scope: !345)
!360 = !DILocation(line: 669, column: 52, scope: !345)
!361 = !DILocation(line: 671, column: 11, scope: !345)
!362 = !DILocation(line: 671, column: 20, scope: !345)
!363 = !DILocation(line: 671, column: 18, scope: !345)
!364 = !DILocation(line: 671, column: 31, scope: !345)
!365 = !DILocation(line: 671, column: 40, scope: !345)
!366 = !DILocation(line: 671, column: 38, scope: !345)
!367 = !DILocation(line: 671, column: 28, scope: !345)
!368 = !DILocation(line: 671, column: 49, scope: !345)
!369 = !DILocation(line: 678, column: 1, scope: !345)
!370 = !DILocation(line: 671, column: 2, scope: !345)
!371 = distinct !DISubprogram(name: "netlbl_af4list_add", scope: !2, file: !2, line: 148, type: !372, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !375)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !45, !39}
!374 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!375 = !{!376, !377, !378, !379, !382}
!376 = !DILocalVariable(name: "entry", arg: 1, scope: !371, file: !2, line: 148, type: !45)
!377 = !DILocalVariable(name: "head", arg: 2, scope: !371, file: !2, line: 148, type: !39)
!378 = !DILocalVariable(name: "iter", scope: !371, file: !2, line: 150, type: !45)
!379 = !DILocalVariable(name: "__mptr", scope: !380, file: !2, line: 161, type: !35)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 161, column: 2)
!381 = distinct !DILexicalBlock(scope: !371, file: !2, line: 161, column: 2)
!382 = !DILocalVariable(name: "__mptr", scope: !383, file: !2, line: 161, type: !35)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 161, column: 2)
!384 = distinct !DILexicalBlock(scope: !381, file: !2, line: 161, column: 2)
!385 = !DILocation(line: 148, column: 47, scope: !371)
!386 = !DILocation(line: 148, column: 72, scope: !371)
!387 = !DILocation(line: 150, column: 2, scope: !371)
!388 = !DILocation(line: 150, column: 25, scope: !371)
!389 = !DILocation(line: 152, column: 31, scope: !371)
!390 = !DILocation(line: 152, column: 38, scope: !371)
!391 = !DILocation(line: 152, column: 44, scope: !371)
!392 = !DILocation(line: 152, column: 9, scope: !371)
!393 = !DILocation(line: 152, column: 7, scope: !371)
!394 = !DILocation(line: 153, column: 6, scope: !395)
!395 = distinct !DILexicalBlock(scope: !371, file: !2, line: 153, column: 6)
!396 = !DILocation(line: 153, column: 11, scope: !395)
!397 = !DILocation(line: 153, column: 19, scope: !395)
!398 = !DILocation(line: 154, column: 6, scope: !395)
!399 = !DILocation(line: 154, column: 12, scope: !395)
!400 = !DILocation(line: 154, column: 20, scope: !395)
!401 = !DILocation(line: 154, column: 27, scope: !395)
!402 = !DILocation(line: 154, column: 17, scope: !395)
!403 = !DILocation(line: 154, column: 32, scope: !395)
!404 = !DILocation(line: 154, column: 35, scope: !395)
!405 = !DILocation(line: 154, column: 41, scope: !395)
!406 = !DILocation(line: 154, column: 49, scope: !395)
!407 = !DILocation(line: 154, column: 56, scope: !395)
!408 = !DILocation(line: 154, column: 46, scope: !395)
!409 = !DILocation(line: 153, column: 6, scope: !371)
!410 = !DILocation(line: 155, column: 3, scope: !395)
!411 = !DILocation(line: 161, column: 2, scope: !380)
!412 = !DILocation(line: 161, column: 2, scope: !413)
!413 = distinct !DILexicalBlock(scope: !380, file: !2, line: 161, column: 2)
!414 = !DILocation(line: 161, column: 2, scope: !415)
!415 = distinct !DILexicalBlock(scope: !413, file: !2, line: 161, column: 2)
!416 = !DILocation(line: 161, column: 2, scope: !381)
!417 = !DILocation(line: 161, column: 2, scope: !384)
!418 = !DILocation(line: 162, column: 7, scope: !419)
!419 = distinct !DILexicalBlock(scope: !384, file: !2, line: 162, column: 7)
!420 = !DILocation(line: 162, column: 13, scope: !419)
!421 = !DILocation(line: 162, column: 19, scope: !419)
!422 = !DILocation(line: 163, column: 7, scope: !419)
!423 = !DILocation(line: 163, column: 28, scope: !419)
!424 = !DILocation(line: 163, column: 26, scope: !419)
!425 = !DILocation(line: 162, column: 7, scope: !384)
!426 = !DILocation(line: 164, column: 20, scope: !427)
!427 = distinct !DILexicalBlock(scope: !419, file: !2, line: 163, column: 47)
!428 = !DILocation(line: 164, column: 27, scope: !427)
!429 = !DILocation(line: 165, column: 12, scope: !427)
!430 = !DILocation(line: 165, column: 18, scope: !427)
!431 = !DILocation(line: 165, column: 23, scope: !427)
!432 = !DILocation(line: 166, column: 13, scope: !427)
!433 = !DILocation(line: 166, column: 19, scope: !427)
!434 = !DILocation(line: 164, column: 4, scope: !427)
!435 = !DILocation(line: 167, column: 4, scope: !427)
!436 = !DILocation(line: 161, column: 2, scope: !383)
!437 = !DILocation(line: 161, column: 2, scope: !438)
!438 = distinct !DILexicalBlock(scope: !383, file: !2, line: 161, column: 2)
!439 = !DILocation(line: 161, column: 2, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !2, line: 161, column: 2)
!441 = distinct !{!441, !416, !442, !148, !149}
!442 = !DILocation(line: 168, column: 3, scope: !381)
!443 = !DILocation(line: 169, column: 21, scope: !371)
!444 = !DILocation(line: 169, column: 28, scope: !371)
!445 = !DILocation(line: 169, column: 34, scope: !371)
!446 = !DILocation(line: 169, column: 2, scope: !371)
!447 = !DILocation(line: 170, column: 2, scope: !371)
!448 = !DILocation(line: 171, column: 1, scope: !371)
!449 = distinct !DISubprogram(name: "__list_add_rcu", scope: !450, file: !450, line: 76, type: !451, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !453)
!450 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!451 = !DISubroutineType(types: !452)
!452 = !{null, !39, !39, !39}
!453 = !{!454, !455, !456, !457}
!454 = !DILocalVariable(name: "new", arg: 1, scope: !449, file: !450, line: 76, type: !39)
!455 = !DILocalVariable(name: "prev", arg: 2, scope: !449, file: !450, line: 77, type: !39)
!456 = !DILocalVariable(name: "next", arg: 3, scope: !449, file: !450, line: 77, type: !39)
!457 = !DILocalVariable(name: "_r_a_p__v", scope: !458, file: !450, line: 84, type: !90)
!458 = distinct !DILexicalBlock(scope: !449, file: !450, line: 84, column: 2)
!459 = !DILocation(line: 76, column: 53, scope: !449)
!460 = !DILocation(line: 77, column: 21, scope: !449)
!461 = !DILocation(line: 77, column: 45, scope: !449)
!462 = !DILocation(line: 79, column: 24, scope: !463)
!463 = distinct !DILexicalBlock(scope: !449, file: !450, line: 79, column: 6)
!464 = !DILocation(line: 79, column: 29, scope: !463)
!465 = !DILocation(line: 79, column: 35, scope: !463)
!466 = !DILocation(line: 79, column: 7, scope: !463)
!467 = !DILocation(line: 79, column: 6, scope: !449)
!468 = !DILocation(line: 80, column: 3, scope: !463)
!469 = !DILocation(line: 82, column: 14, scope: !449)
!470 = !DILocation(line: 82, column: 2, scope: !449)
!471 = !DILocation(line: 82, column: 7, scope: !449)
!472 = !DILocation(line: 82, column: 12, scope: !449)
!473 = !DILocation(line: 83, column: 14, scope: !449)
!474 = !DILocation(line: 83, column: 2, scope: !449)
!475 = !DILocation(line: 83, column: 7, scope: !449)
!476 = !DILocation(line: 83, column: 12, scope: !449)
!477 = !DILocation(line: 84, column: 2, scope: !449)
!478 = !DILocation(line: 84, column: 2, scope: !458)
!479 = !DILocation(line: 84, column: 2, scope: !480)
!480 = distinct !DILexicalBlock(scope: !458, file: !450, line: 84, column: 2)
!481 = !DILocation(line: 84, column: 2, scope: !482)
!482 = distinct !DILexicalBlock(scope: !480, file: !450, line: 84, column: 2)
!483 = !DILocation(line: 84, column: 2, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !450, line: 84, column: 2)
!485 = !DILocation(line: 84, column: 2, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !450, line: 84, column: 2)
!487 = !DILocation(line: 84, column: 2, scope: !488)
!488 = distinct !DILexicalBlock(scope: !480, file: !450, line: 84, column: 2)
!489 = !DILocation(line: 84, column: 2, scope: !490)
!490 = distinct !DILexicalBlock(scope: !488, file: !450, line: 84, column: 2)
!491 = !DILocation(line: 84, column: 2, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !450, line: 84, column: 2)
!493 = !DILocation(line: 84, column: 2, scope: !494)
!494 = distinct !DILexicalBlock(scope: !492, file: !450, line: 84, column: 2)
!495 = !{i64 2150900232}
!496 = !DILocation(line: 84, column: 2, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !450, line: 84, column: 2)
!498 = !DILocation(line: 84, column: 2, scope: !499)
!499 = distinct !DILexicalBlock(scope: !497, file: !450, line: 84, column: 2)
!500 = !DILocation(line: 84, column: 2, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !450, line: 84, column: 2)
!502 = !DILocation(line: 85, column: 15, scope: !449)
!503 = !DILocation(line: 85, column: 2, scope: !449)
!504 = !DILocation(line: 85, column: 8, scope: !449)
!505 = !DILocation(line: 85, column: 13, scope: !449)
!506 = !DILocation(line: 86, column: 1, scope: !449)
!507 = distinct !DISubprogram(name: "list_add_tail_rcu", scope: !450, file: !450, line: 125, type: !508, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !39, !39}
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "new", arg: 1, scope: !507, file: !450, line: 125, type: !39)
!512 = !DILocalVariable(name: "head", arg: 2, scope: !507, file: !450, line: 126, type: !39)
!513 = !DILocation(line: 125, column: 56, scope: !507)
!514 = !DILocation(line: 126, column: 24, scope: !507)
!515 = !DILocation(line: 128, column: 17, scope: !507)
!516 = !DILocation(line: 128, column: 22, scope: !507)
!517 = !DILocation(line: 128, column: 28, scope: !507)
!518 = !DILocation(line: 128, column: 34, scope: !507)
!519 = !DILocation(line: 128, column: 2, scope: !507)
!520 = !DILocation(line: 129, column: 1, scope: !507)
!521 = distinct !DISubprogram(name: "netlbl_af6list_add", scope: !2, file: !2, line: 185, type: !522, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{!374, !59, !39}
!524 = !{!525, !526, !527, !528, !531}
!525 = !DILocalVariable(name: "entry", arg: 1, scope: !521, file: !2, line: 185, type: !59)
!526 = !DILocalVariable(name: "head", arg: 2, scope: !521, file: !2, line: 185, type: !39)
!527 = !DILocalVariable(name: "iter", scope: !521, file: !2, line: 187, type: !59)
!528 = !DILocalVariable(name: "__mptr", scope: !529, file: !2, line: 199, type: !35)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 199, column: 2)
!530 = distinct !DILexicalBlock(scope: !521, file: !2, line: 199, column: 2)
!531 = !DILocalVariable(name: "__mptr", scope: !532, file: !2, line: 199, type: !35)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 199, column: 2)
!533 = distinct !DILexicalBlock(scope: !530, file: !2, line: 199, column: 2)
!534 = !DILocation(line: 185, column: 47, scope: !521)
!535 = !DILocation(line: 185, column: 72, scope: !521)
!536 = !DILocation(line: 187, column: 2, scope: !521)
!537 = !DILocation(line: 187, column: 25, scope: !521)
!538 = !DILocation(line: 189, column: 32, scope: !521)
!539 = !DILocation(line: 189, column: 39, scope: !521)
!540 = !DILocation(line: 189, column: 45, scope: !521)
!541 = !DILocation(line: 189, column: 9, scope: !521)
!542 = !DILocation(line: 189, column: 7, scope: !521)
!543 = !DILocation(line: 190, column: 6, scope: !544)
!544 = distinct !DILexicalBlock(scope: !521, file: !2, line: 190, column: 6)
!545 = !DILocation(line: 190, column: 11, scope: !544)
!546 = !DILocation(line: 190, column: 19, scope: !544)
!547 = !DILocation(line: 191, column: 23, scope: !544)
!548 = !DILocation(line: 191, column: 29, scope: !544)
!549 = !DILocation(line: 191, column: 36, scope: !544)
!550 = !DILocation(line: 191, column: 43, scope: !544)
!551 = !DILocation(line: 191, column: 6, scope: !544)
!552 = !DILocation(line: 191, column: 49, scope: !544)
!553 = !DILocation(line: 192, column: 23, scope: !544)
!554 = !DILocation(line: 192, column: 29, scope: !544)
!555 = !DILocation(line: 192, column: 36, scope: !544)
!556 = !DILocation(line: 192, column: 43, scope: !544)
!557 = !DILocation(line: 192, column: 6, scope: !544)
!558 = !DILocation(line: 190, column: 6, scope: !521)
!559 = !DILocation(line: 193, column: 3, scope: !544)
!560 = !DILocation(line: 199, column: 2, scope: !529)
!561 = !DILocation(line: 199, column: 2, scope: !562)
!562 = distinct !DILexicalBlock(scope: !529, file: !2, line: 199, column: 2)
!563 = !DILocation(line: 199, column: 2, scope: !564)
!564 = distinct !DILexicalBlock(scope: !562, file: !2, line: 199, column: 2)
!565 = !DILocation(line: 199, column: 2, scope: !530)
!566 = !DILocation(line: 199, column: 2, scope: !533)
!567 = !DILocation(line: 200, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !533, file: !2, line: 200, column: 7)
!569 = !DILocation(line: 200, column: 13, scope: !568)
!570 = !DILocation(line: 200, column: 19, scope: !568)
!571 = !DILocation(line: 201, column: 22, scope: !568)
!572 = !DILocation(line: 201, column: 29, scope: !568)
!573 = !DILocation(line: 201, column: 36, scope: !568)
!574 = !DILocation(line: 201, column: 42, scope: !568)
!575 = !DILocation(line: 201, column: 7, scope: !568)
!576 = !DILocation(line: 201, column: 48, scope: !568)
!577 = !DILocation(line: 200, column: 7, scope: !533)
!578 = !DILocation(line: 202, column: 20, scope: !579)
!579 = distinct !DILexicalBlock(scope: !568, file: !2, line: 201, column: 53)
!580 = !DILocation(line: 202, column: 27, scope: !579)
!581 = !DILocation(line: 203, column: 12, scope: !579)
!582 = !DILocation(line: 203, column: 18, scope: !579)
!583 = !DILocation(line: 203, column: 23, scope: !579)
!584 = !DILocation(line: 204, column: 13, scope: !579)
!585 = !DILocation(line: 204, column: 19, scope: !579)
!586 = !DILocation(line: 202, column: 4, scope: !579)
!587 = !DILocation(line: 205, column: 4, scope: !579)
!588 = !DILocation(line: 201, column: 50, scope: !568)
!589 = !DILocation(line: 199, column: 2, scope: !532)
!590 = !DILocation(line: 199, column: 2, scope: !591)
!591 = distinct !DILexicalBlock(scope: !532, file: !2, line: 199, column: 2)
!592 = !DILocation(line: 199, column: 2, scope: !593)
!593 = distinct !DILexicalBlock(scope: !591, file: !2, line: 199, column: 2)
!594 = distinct !{!594, !565, !595, !148, !149}
!595 = !DILocation(line: 206, column: 3, scope: !530)
!596 = !DILocation(line: 207, column: 21, scope: !521)
!597 = !DILocation(line: 207, column: 28, scope: !521)
!598 = !DILocation(line: 207, column: 34, scope: !521)
!599 = !DILocation(line: 207, column: 2, scope: !521)
!600 = !DILocation(line: 208, column: 2, scope: !521)
!601 = !DILocation(line: 209, column: 1, scope: !521)
!602 = distinct !DISubprogram(name: "ipv6_addr_cmp", scope: !254, file: !254, line: 583, type: !603, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!374, !206, !206}
!605 = !{!606, !607}
!606 = !DILocalVariable(name: "a1", arg: 1, scope: !602, file: !254, line: 583, type: !206)
!607 = !DILocalVariable(name: "a2", arg: 2, scope: !602, file: !254, line: 583, type: !206)
!608 = !DILocation(line: 583, column: 56, scope: !602)
!609 = !DILocation(line: 583, column: 83, scope: !602)
!610 = !DILocation(line: 585, column: 16, scope: !602)
!611 = !DILocation(line: 585, column: 20, scope: !602)
!612 = !DILocation(line: 585, column: 9, scope: !602)
!613 = !DILocation(line: 585, column: 2, scope: !602)
!614 = distinct !DISubprogram(name: "netlbl_af4list_remove_entry", scope: !2, file: !2, line: 221, type: !615, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !45}
!617 = !{!618}
!618 = !DILocalVariable(name: "entry", arg: 1, scope: !614, file: !2, line: 221, type: !45)
!619 = !DILocation(line: 221, column: 57, scope: !614)
!620 = !DILocation(line: 223, column: 2, scope: !614)
!621 = !DILocation(line: 223, column: 9, scope: !614)
!622 = !DILocation(line: 223, column: 15, scope: !614)
!623 = !DILocation(line: 224, column: 16, scope: !614)
!624 = !DILocation(line: 224, column: 23, scope: !614)
!625 = !DILocation(line: 224, column: 2, scope: !614)
!626 = !DILocation(line: 225, column: 1, scope: !614)
!627 = distinct !DISubprogram(name: "list_del_rcu", scope: !450, file: !450, line: 155, type: !628, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !39}
!630 = !{!631}
!631 = !DILocalVariable(name: "entry", arg: 1, scope: !627, file: !450, line: 155, type: !39)
!632 = !DILocation(line: 155, column: 51, scope: !627)
!633 = !DILocation(line: 157, column: 19, scope: !627)
!634 = !DILocation(line: 157, column: 2, scope: !627)
!635 = !DILocation(line: 158, column: 2, scope: !627)
!636 = !DILocation(line: 158, column: 9, scope: !627)
!637 = !DILocation(line: 158, column: 14, scope: !627)
!638 = !DILocation(line: 159, column: 1, scope: !627)
!639 = distinct !DISubprogram(name: "netlbl_af4list_remove", scope: !2, file: !2, line: 239, type: !153, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !640)
!640 = !{!641, !642, !643, !644}
!641 = !DILocalVariable(name: "addr", arg: 1, scope: !639, file: !2, line: 239, type: !50)
!642 = !DILocalVariable(name: "mask", arg: 2, scope: !639, file: !2, line: 239, type: !50)
!643 = !DILocalVariable(name: "head", arg: 3, scope: !639, file: !2, line: 240, type: !39)
!644 = !DILocalVariable(name: "entry", scope: !639, file: !2, line: 242, type: !45)
!645 = !DILocation(line: 239, column: 53, scope: !639)
!646 = !DILocation(line: 239, column: 66, scope: !639)
!647 = !DILocation(line: 240, column: 29, scope: !639)
!648 = !DILocation(line: 242, column: 2, scope: !639)
!649 = !DILocation(line: 242, column: 25, scope: !639)
!650 = !DILocation(line: 244, column: 38, scope: !639)
!651 = !DILocation(line: 244, column: 44, scope: !639)
!652 = !DILocation(line: 244, column: 50, scope: !639)
!653 = !DILocation(line: 244, column: 10, scope: !639)
!654 = !DILocation(line: 244, column: 8, scope: !639)
!655 = !DILocation(line: 245, column: 6, scope: !656)
!656 = distinct !DILexicalBlock(scope: !639, file: !2, line: 245, column: 6)
!657 = !DILocation(line: 245, column: 12, scope: !656)
!658 = !DILocation(line: 245, column: 6, scope: !639)
!659 = !DILocation(line: 246, column: 3, scope: !656)
!660 = !DILocation(line: 247, column: 30, scope: !639)
!661 = !DILocation(line: 247, column: 2, scope: !639)
!662 = !DILocation(line: 248, column: 9, scope: !639)
!663 = !DILocation(line: 248, column: 2, scope: !639)
!664 = !DILocation(line: 249, column: 1, scope: !639)
!665 = distinct !DISubprogram(name: "netlbl_af6list_remove_entry", scope: !2, file: !2, line: 261, type: !666, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !59}
!668 = !{!669}
!669 = !DILocalVariable(name: "entry", arg: 1, scope: !665, file: !2, line: 261, type: !59)
!670 = !DILocation(line: 261, column: 57, scope: !665)
!671 = !DILocation(line: 263, column: 2, scope: !665)
!672 = !DILocation(line: 263, column: 9, scope: !665)
!673 = !DILocation(line: 263, column: 15, scope: !665)
!674 = !DILocation(line: 264, column: 16, scope: !665)
!675 = !DILocation(line: 264, column: 23, scope: !665)
!676 = !DILocation(line: 264, column: 2, scope: !665)
!677 = !DILocation(line: 265, column: 1, scope: !665)
!678 = distinct !DISubprogram(name: "netlbl_af6list_remove", scope: !2, file: !2, line: 279, type: !294, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !679)
!679 = !{!680, !681, !682, !683}
!680 = !DILocalVariable(name: "addr", arg: 1, scope: !678, file: !2, line: 279, type: !206)
!681 = !DILocalVariable(name: "mask", arg: 2, scope: !678, file: !2, line: 280, type: !206)
!682 = !DILocalVariable(name: "head", arg: 3, scope: !678, file: !2, line: 281, type: !39)
!683 = !DILocalVariable(name: "entry", scope: !678, file: !2, line: 283, type: !59)
!684 = !DILocation(line: 279, column: 69, scope: !678)
!685 = !DILocation(line: 280, column: 34, scope: !678)
!686 = !DILocation(line: 281, column: 29, scope: !678)
!687 = !DILocation(line: 283, column: 2, scope: !678)
!688 = !DILocation(line: 283, column: 25, scope: !678)
!689 = !DILocation(line: 285, column: 38, scope: !678)
!690 = !DILocation(line: 285, column: 44, scope: !678)
!691 = !DILocation(line: 285, column: 50, scope: !678)
!692 = !DILocation(line: 285, column: 10, scope: !678)
!693 = !DILocation(line: 285, column: 8, scope: !678)
!694 = !DILocation(line: 286, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !678, file: !2, line: 286, column: 6)
!696 = !DILocation(line: 286, column: 12, scope: !695)
!697 = !DILocation(line: 286, column: 6, scope: !678)
!698 = !DILocation(line: 287, column: 3, scope: !695)
!699 = !DILocation(line: 288, column: 30, scope: !678)
!700 = !DILocation(line: 288, column: 2, scope: !678)
!701 = !DILocation(line: 289, column: 9, scope: !678)
!702 = !DILocation(line: 289, column: 2, scope: !678)
!703 = !DILocation(line: 290, column: 1, scope: !678)
!704 = distinct !DISubprogram(name: "netlbl_af4list_audit_addr", scope: !2, file: !2, line: 310, type: !705, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !712)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !707, !374, !710, !50, !50}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_buffer", file: !709, line: 28, flags: DIFlagFwdDecl)
!709 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !721}
!713 = !DILocalVariable(name: "audit_buf", arg: 1, scope: !704, file: !2, line: 310, type: !707)
!714 = !DILocalVariable(name: "src", arg: 2, scope: !704, file: !2, line: 311, type: !374)
!715 = !DILocalVariable(name: "dev", arg: 3, scope: !704, file: !2, line: 311, type: !710)
!716 = !DILocalVariable(name: "addr", arg: 4, scope: !704, file: !2, line: 312, type: !50)
!717 = !DILocalVariable(name: "mask", arg: 5, scope: !704, file: !2, line: 312, type: !50)
!718 = !DILocalVariable(name: "mask_val", scope: !704, file: !2, line: 314, type: !56)
!719 = !DILocalVariable(name: "dir", scope: !704, file: !2, line: 315, type: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!721 = !DILocalVariable(name: "mask_len", scope: !722, file: !2, line: 321, type: !56)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 320, column: 30)
!723 = distinct !DILexicalBlock(scope: !704, file: !2, line: 320, column: 6)
!724 = !DILocation(line: 310, column: 53, scope: !704)
!725 = !DILocation(line: 311, column: 10, scope: !704)
!726 = !DILocation(line: 311, column: 27, scope: !704)
!727 = !DILocation(line: 312, column: 13, scope: !704)
!728 = !DILocation(line: 312, column: 26, scope: !704)
!729 = !DILocation(line: 314, column: 2, scope: !704)
!730 = !DILocation(line: 314, column: 6, scope: !704)
!731 = !DILocation(line: 314, column: 17, scope: !704)
!732 = !DILocation(line: 315, column: 2, scope: !704)
!733 = !DILocation(line: 315, column: 8, scope: !704)
!734 = !DILocation(line: 315, column: 15, scope: !704)
!735 = !DILocation(line: 317, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !704, file: !2, line: 317, column: 6)
!737 = !DILocation(line: 317, column: 10, scope: !736)
!738 = !DILocation(line: 317, column: 6, scope: !704)
!739 = !DILocation(line: 318, column: 20, scope: !736)
!740 = !DILocation(line: 318, column: 44, scope: !736)
!741 = !DILocation(line: 318, column: 3, scope: !736)
!742 = !DILocation(line: 319, column: 19, scope: !704)
!743 = !DILocation(line: 319, column: 42, scope: !704)
!744 = !DILocation(line: 319, column: 2, scope: !704)
!745 = !DILocation(line: 320, column: 6, scope: !723)
!746 = !DILocation(line: 320, column: 15, scope: !723)
!747 = !DILocation(line: 320, column: 6, scope: !704)
!748 = !DILocation(line: 321, column: 3, scope: !722)
!749 = !DILocation(line: 321, column: 7, scope: !722)
!750 = !DILocation(line: 322, column: 3, scope: !722)
!751 = !DILocation(line: 322, column: 10, scope: !722)
!752 = !DILocation(line: 322, column: 19, scope: !722)
!753 = !DILocation(line: 323, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !722, file: !2, line: 322, column: 24)
!755 = !DILocation(line: 324, column: 12, scope: !754)
!756 = distinct !{!756, !750, !757, !148, !149}
!757 = !DILocation(line: 325, column: 3, scope: !722)
!758 = !DILocation(line: 326, column: 20, scope: !722)
!759 = !DILocation(line: 326, column: 51, scope: !722)
!760 = !DILocation(line: 326, column: 56, scope: !722)
!761 = !DILocation(line: 326, column: 3, scope: !722)
!762 = !DILocation(line: 327, column: 2, scope: !723)
!763 = !DILocation(line: 327, column: 2, scope: !722)
!764 = !DILocation(line: 328, column: 1, scope: !704)
!765 = !DISubprogram(name: "audit_log_format", scope: !709, file: !709, line: 163, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !707, !710, null}
!768 = distinct !DISubprogram(name: "netlbl_af6list_audit_addr", scope: !2, file: !2, line: 343, type: !769, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !707, !374, !710, !206, !206}
!771 = !{!772, !773, !774, !775, !776, !777, !778, !781, !782}
!772 = !DILocalVariable(name: "audit_buf", arg: 1, scope: !768, file: !2, line: 343, type: !707)
!773 = !DILocalVariable(name: "src", arg: 2, scope: !768, file: !2, line: 344, type: !374)
!774 = !DILocalVariable(name: "dev", arg: 3, scope: !768, file: !2, line: 345, type: !710)
!775 = !DILocalVariable(name: "addr", arg: 4, scope: !768, file: !2, line: 346, type: !206)
!776 = !DILocalVariable(name: "mask", arg: 5, scope: !768, file: !2, line: 347, type: !206)
!777 = !DILocalVariable(name: "dir", scope: !768, file: !2, line: 349, type: !720)
!778 = !DILocalVariable(name: "mask_len", scope: !779, file: !2, line: 355, type: !56)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 354, column: 47)
!780 = distinct !DILexicalBlock(scope: !768, file: !2, line: 354, column: 6)
!781 = !DILocalVariable(name: "mask_val", scope: !779, file: !2, line: 356, type: !56)
!782 = !DILocalVariable(name: "iter", scope: !779, file: !2, line: 357, type: !374)
!783 = !DILocation(line: 343, column: 53, scope: !768)
!784 = !DILocation(line: 344, column: 10, scope: !768)
!785 = !DILocation(line: 345, column: 18, scope: !768)
!786 = !DILocation(line: 346, column: 29, scope: !768)
!787 = !DILocation(line: 347, column: 29, scope: !768)
!788 = !DILocation(line: 349, column: 2, scope: !768)
!789 = !DILocation(line: 349, column: 8, scope: !768)
!790 = !DILocation(line: 349, column: 15, scope: !768)
!791 = !DILocation(line: 351, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !768, file: !2, line: 351, column: 6)
!793 = !DILocation(line: 351, column: 10, scope: !792)
!794 = !DILocation(line: 351, column: 6, scope: !768)
!795 = !DILocation(line: 352, column: 20, scope: !792)
!796 = !DILocation(line: 352, column: 44, scope: !792)
!797 = !DILocation(line: 352, column: 3, scope: !792)
!798 = !DILocation(line: 353, column: 19, scope: !768)
!799 = !DILocation(line: 353, column: 42, scope: !768)
!800 = !DILocation(line: 353, column: 47, scope: !768)
!801 = !DILocation(line: 353, column: 2, scope: !768)
!802 = !DILocation(line: 354, column: 6, scope: !780)
!803 = !DILocation(line: 354, column: 32, scope: !780)
!804 = !DILocation(line: 354, column: 6, scope: !768)
!805 = !DILocation(line: 355, column: 3, scope: !779)
!806 = !DILocation(line: 355, column: 7, scope: !779)
!807 = !DILocation(line: 356, column: 3, scope: !779)
!808 = !DILocation(line: 356, column: 7, scope: !779)
!809 = !DILocation(line: 357, column: 3, scope: !779)
!810 = !DILocation(line: 357, column: 7, scope: !779)
!811 = !DILocation(line: 358, column: 3, scope: !779)
!812 = !DILocation(line: 358, column: 10, scope: !779)
!813 = !DILocation(line: 358, column: 41, scope: !779)
!814 = !DILocation(line: 359, column: 13, scope: !779)
!815 = distinct !{!815, !811, !816, !148, !149}
!816 = !DILocation(line: 359, column: 16, scope: !779)
!817 = !DILocation(line: 360, column: 14, scope: !779)
!818 = !DILocation(line: 360, column: 12, scope: !779)
!819 = !DILocation(line: 361, column: 3, scope: !779)
!820 = !DILocation(line: 361, column: 10, scope: !779)
!821 = !DILocation(line: 361, column: 19, scope: !779)
!822 = !DILocation(line: 362, column: 13, scope: !823)
!823 = distinct !DILexicalBlock(scope: !779, file: !2, line: 361, column: 24)
!824 = !DILocation(line: 363, column: 12, scope: !823)
!825 = distinct !{!825, !819, !826, !148, !149}
!826 = !DILocation(line: 364, column: 3, scope: !779)
!827 = !DILocation(line: 365, column: 20, scope: !779)
!828 = !DILocation(line: 365, column: 51, scope: !779)
!829 = !DILocation(line: 365, column: 56, scope: !779)
!830 = !DILocation(line: 365, column: 3, scope: !779)
!831 = !DILocation(line: 366, column: 2, scope: !780)
!832 = !DILocation(line: 366, column: 2, scope: !779)
!833 = !DILocation(line: 367, column: 1, scope: !768)
!834 = distinct !DISubprogram(name: "__list_add_valid", scope: !835, file: !835, line: 128, type: !836, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !838)
!835 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!836 = !DISubroutineType(types: !837)
!837 = !{!257, !39, !39, !39}
!838 = !{!839, !840, !841}
!839 = !DILocalVariable(name: "new", arg: 1, scope: !834, file: !835, line: 128, type: !39)
!840 = !DILocalVariable(name: "prev", arg: 2, scope: !834, file: !835, line: 129, type: !39)
!841 = !DILocalVariable(name: "next", arg: 3, scope: !834, file: !835, line: 130, type: !39)
!842 = !DILocation(line: 128, column: 55, scope: !834)
!843 = !DILocation(line: 129, column: 23, scope: !834)
!844 = !DILocation(line: 130, column: 23, scope: !834)
!845 = !DILocation(line: 132, column: 2, scope: !834)
!846 = !DISubprogram(name: "memcmp", scope: !847, file: !847, line: 196, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!848 = !DISubroutineType(types: !849)
!849 = !{!374, !850, !850, !852}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !853, line: 72, baseType: !854)
!853 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !853, line: 16, baseType: !89)
!855 = distinct !DISubprogram(name: "__list_del_entry", scope: !835, file: !835, line: 213, type: !628, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !856)
!856 = !{!857}
!857 = !DILocalVariable(name: "entry", arg: 1, scope: !855, file: !835, line: 213, type: !39)
!858 = !DILocation(line: 213, column: 55, scope: !855)
!859 = !DILocation(line: 215, column: 30, scope: !860)
!860 = distinct !DILexicalBlock(scope: !855, file: !835, line: 215, column: 6)
!861 = !DILocation(line: 215, column: 7, scope: !860)
!862 = !DILocation(line: 215, column: 6, scope: !855)
!863 = !DILocation(line: 216, column: 3, scope: !860)
!864 = !DILocation(line: 218, column: 13, scope: !855)
!865 = !DILocation(line: 218, column: 20, scope: !855)
!866 = !DILocation(line: 218, column: 26, scope: !855)
!867 = !DILocation(line: 218, column: 33, scope: !855)
!868 = !DILocation(line: 218, column: 2, scope: !855)
!869 = !DILocation(line: 219, column: 1, scope: !855)
!870 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !835, file: !835, line: 134, type: !871, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!257, !39}
!873 = !{!874}
!874 = !DILocalVariable(name: "entry", arg: 1, scope: !870, file: !835, line: 134, type: !39)
!875 = !DILocation(line: 134, column: 61, scope: !870)
!876 = !DILocation(line: 136, column: 2, scope: !870)
!877 = distinct !DISubprogram(name: "__list_del", scope: !835, file: !835, line: 193, type: !508, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !878)
!878 = !{!879, !880}
!879 = !DILocalVariable(name: "prev", arg: 1, scope: !877, file: !835, line: 193, type: !39)
!880 = !DILocalVariable(name: "next", arg: 2, scope: !877, file: !835, line: 193, type: !39)
!881 = !DILocation(line: 193, column: 50, scope: !877)
!882 = !DILocation(line: 193, column: 75, scope: !877)
!883 = !DILocation(line: 195, column: 15, scope: !877)
!884 = !DILocation(line: 195, column: 2, scope: !877)
!885 = !DILocation(line: 195, column: 8, scope: !877)
!886 = !DILocation(line: 195, column: 13, scope: !877)
!887 = !DILocation(line: 196, column: 2, scope: !877)
!888 = !DILocation(line: 196, column: 2, scope: !889)
!889 = distinct !DILexicalBlock(scope: !877, file: !835, line: 196, column: 2)
!890 = !DILocation(line: 196, column: 2, scope: !891)
!891 = distinct !DILexicalBlock(scope: !889, file: !835, line: 196, column: 2)
!892 = !DILocation(line: 196, column: 2, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !835, line: 196, column: 2)
!894 = !DILocation(line: 197, column: 1, scope: !877)
