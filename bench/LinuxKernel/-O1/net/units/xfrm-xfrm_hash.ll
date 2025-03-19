; ModuleID = 'net/xfrm/xfrm_hash.c'
source_filename = "net/xfrm/xfrm_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hashdist = external dso_local global i32, align 4
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_hash_alloc(i32 noundef %sz) #0 align 16 !dbg !49 {
entry:
  %sz.addr = alloca i32, align 4
  %n = alloca ptr, align 8
  store i32 %sz, ptr %sz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !53, metadata !DIExpression()), !dbg !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #13, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %n, metadata !54, metadata !DIExpression()), !dbg !57
  %0 = load i32, ptr %sz.addr, align 4, !dbg !58
  %conv = zext i32 %0 to i64, !dbg !58
  %cmp = icmp ule i64 %conv, 4096, !dbg !60
  br i1 %cmp, label %if.then, label %if.else, !dbg !61

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %sz.addr, align 4, !dbg !62
  %conv2 = zext i32 %1 to i64, !dbg !62
  %call = call noalias ptr @kzalloc(i64 noundef %conv2, i32 noundef 3264) #14, !dbg !63
  store ptr %call, ptr %n, align 8, !dbg !64
  br label %if.end10, !dbg !65

if.else:                                          ; preds = %entry
  %2 = load i32, ptr @hashdist, align 4, !dbg !66
  %tobool = icmp ne i32 %2, 0, !dbg !66
  br i1 %tobool, label %if.then3, label %if.else6, !dbg !68

if.then3:                                         ; preds = %if.else
  %3 = load i32, ptr %sz.addr, align 4, !dbg !69
  %conv4 = zext i32 %3 to i64, !dbg !69
  %call5 = call noalias ptr @vzalloc(i64 noundef %conv4) #14, !dbg !70
  store ptr %call5, ptr %n, align 8, !dbg !71
  br label %if.end, !dbg !72

if.else6:                                         ; preds = %if.else
  %4 = load i32, ptr %sz.addr, align 4, !dbg !73
  %conv7 = zext i32 %4 to i64, !dbg !73
  %call8 = call i32 @get_order(i64 noundef %conv7) #15, !dbg !74
  %call9 = call i64 @__get_free_pages(i32 noundef 11712, i32 noundef %call8) #16, !dbg !75
  %5 = inttoptr i64 %call9 to ptr, !dbg !76
  store ptr %5, ptr %n, align 8, !dbg !77
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then3
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %6 = load ptr, ptr %n, align 8, !dbg !78
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #13, !dbg !79
  ret ptr %6, !dbg !80
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !81 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !91, metadata !DIExpression()), !dbg !93
  %0 = load i64, ptr %size.addr, align 8, !dbg !94
  %1 = load i32, ptr %flags.addr, align 4, !dbg !95
  %or = or i32 %1, 256, !dbg !96
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #14, !dbg !97
  ret ptr %call, !dbg !98
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !99 dso_local noalias ptr @vzalloc(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !103 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @get_order(i64 noundef %size) #6 align 16 !dbg !107 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load i64, ptr %size.addr, align 8, !dbg !115
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !117
  br i1 %1, label %if.then, label %if.end14, !dbg !118

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !119
  %tobool = icmp ne i64 %2, 0, !dbg !119
  br i1 %tobool, label %if.end, label %if.then1, !dbg !122

if.then1:                                         ; preds = %if.then
  store i32 52, ptr %retval, align 4, !dbg !123
  br label %return, !dbg !123

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %size.addr, align 8, !dbg !124
  %cmp = icmp ult i64 %3, 4096, !dbg !126
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !127

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !128
  br label %return, !dbg !128

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !129
  %sub = sub i64 %4, 1, !dbg !129
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !129
  br i1 %5, label %cond.true, label %cond.false9, !dbg !129

cond.true:                                        ; preds = %if.end3
  %6 = load i64, ptr %size.addr, align 8, !dbg !129
  %sub4 = sub i64 %6, 1, !dbg !129
  %cmp5 = icmp ult i64 %sub4, 2, !dbg !129
  br i1 %cmp5, label %cond.true6, label %cond.false, !dbg !129

cond.true6:                                       ; preds = %cond.true
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %cond.true
  %7 = load i64, ptr %size.addr, align 8, !dbg !129
  %sub7 = sub i64 %7, 1, !dbg !129
  %8 = call i64 @llvm.ctlz.i64(i64 %sub7, i1 true), !dbg !129
  %cast = trunc i64 %8 to i32, !dbg !129
  %sub8 = sub i32 63, %cast, !dbg !129
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ 0, %cond.true6 ], [ %sub8, %cond.false ], !dbg !129
  br label %cond.end11, !dbg !129

cond.false9:                                      ; preds = %if.end3
  %9 = load i64, ptr %size.addr, align 8, !dbg !129
  %sub10 = sub i64 %9, 1, !dbg !129
  %call = call i32 @__ilog2_u64(i64 noundef %sub10) #15, !dbg !129
  br label %cond.end11, !dbg !129

cond.end11:                                       ; preds = %cond.false9, %cond.end
  %cond12 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false9 ], !dbg !129
  %sub13 = sub i32 %cond12, 12, !dbg !130
  %add = add i32 %sub13, 1, !dbg !131
  store i32 %add, ptr %retval, align 4, !dbg !132
  br label %return, !dbg !132

if.end14:                                         ; preds = %entry
  %10 = load i64, ptr %size.addr, align 8, !dbg !133
  %dec = add i64 %10, -1, !dbg !133
  store i64 %dec, ptr %size.addr, align 8, !dbg !133
  %11 = load i64, ptr %size.addr, align 8, !dbg !134
  %shr = lshr i64 %11, 12, !dbg !134
  store i64 %shr, ptr %size.addr, align 8, !dbg !134
  %12 = load i64, ptr %size.addr, align 8, !dbg !135
  %call15 = call i32 @fls64(i64 noundef %12) #16, !dbg !136
  store i32 %call15, ptr %retval, align 4, !dbg !137
  br label %return, !dbg !137

return:                                           ; preds = %if.end14, %cond.end11, %if.then2, %if.then1
  %13 = load i32, ptr %retval, align 4, !dbg !138
  ret i32 %13, !dbg !138
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xfrm_hash_free(ptr noundef %n, i32 noundef %sz) #0 align 16 !dbg !139 {
entry:
  %n.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !143, metadata !DIExpression()), !dbg !145
  store i32 %sz, ptr %sz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !144, metadata !DIExpression()), !dbg !146
  %0 = load i32, ptr %sz.addr, align 4, !dbg !147
  %conv = zext i32 %0 to i64, !dbg !147
  %cmp = icmp ule i64 %conv, 4096, !dbg !149
  br i1 %cmp, label %if.then, label %if.else, !dbg !150

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8, !dbg !151
  call void @kfree(ptr noundef %1) #16, !dbg !152
  br label %if.end5, !dbg !152

if.else:                                          ; preds = %entry
  %2 = load i32, ptr @hashdist, align 4, !dbg !153
  %tobool = icmp ne i32 %2, 0, !dbg !153
  br i1 %tobool, label %if.then2, label %if.else3, !dbg !155

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %n.addr, align 8, !dbg !156
  call void @vfree(ptr noundef %3) #16, !dbg !157
  br label %if.end, !dbg !157

if.else3:                                         ; preds = %if.else
  %4 = load ptr, ptr %n.addr, align 8, !dbg !158
  %5 = ptrtoint ptr %4 to i64, !dbg !159
  %6 = load i32, ptr %sz.addr, align 4, !dbg !160
  %conv4 = zext i32 %6 to i64, !dbg !160
  %call = call i32 @get_order(i64 noundef %conv4) #15, !dbg !161
  call void @free_pages(i64 noundef %5, i32 noundef %call) #16, !dbg !162
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void, !dbg !163
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !164 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !169 dso_local void @vfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !170 dso_local void @free_pages(i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !173 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !175, metadata !DIExpression()), !dbg !180
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !176, metadata !DIExpression()), !dbg !181
  %0 = load i64, ptr %size.addr, align 8, !dbg !182
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !183
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !184

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !185
  %tobool = icmp ne i64 %2, 0, !dbg !185
  br i1 %tobool, label %if.then, label %if.end7, !dbg !186

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !187
  call void @llvm.dbg.declare(metadata ptr %index, metadata !177, metadata !DIExpression()), !dbg !188
  %3 = load i64, ptr %size.addr, align 8, !dbg !189
  %cmp = icmp ugt i64 %3, 8192, !dbg !191
  br i1 %cmp, label %if.then1, label %if.end, !dbg !192

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !193
  %5 = load i32, ptr %flags.addr, align 4, !dbg !194
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #14, !dbg !195
  store ptr %call, ptr %retval, align 8, !dbg !196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !196

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !197
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !197
  store i32 %call2, ptr %index, align 4, !dbg !198
  %7 = load i32, ptr %flags.addr, align 4, !dbg !199
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !200
  %9 = ptrtoint ptr %8 to i64, !dbg !200
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !201
  %idxprom = zext i32 %call3 to i64, !dbg !202
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !202
  %10 = load i32, ptr %index, align 4, !dbg !203
  %idxprom4 = zext i32 %10 to i64, !dbg !202
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !202
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !202
  %12 = load i32, ptr %flags.addr, align 4, !dbg !204
  %13 = load i64, ptr %size.addr, align 8, !dbg !205
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !206
  store ptr %call6, ptr %retval, align 8, !dbg !207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !207

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !208
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !209
  %15 = load i32, ptr %flags.addr, align 4, !dbg !210
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #14, !dbg !211
  store ptr %call8, ptr %retval, align 8, !dbg !212
  br label %return, !dbg !212

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !213
  ret ptr %16, !dbg !213
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !214 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !215 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !221, metadata !DIExpression()), !dbg !223
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !222, metadata !DIExpression()), !dbg !224
  %0 = load i64, ptr %size.addr, align 8, !dbg !225
  %tobool = icmp ne i64 %0, 0, !dbg !225
  br i1 %tobool, label %if.end, label %if.then, !dbg !227

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !228
  br label %return, !dbg !228

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !229
  %cmp = icmp ule i64 %1, 8, !dbg !231
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !232

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !233
  br label %return, !dbg !233

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !234
  %cmp3 = icmp ugt i64 %2, 64, !dbg !236
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !237

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !238
  %cmp4 = icmp ule i64 %3, 96, !dbg !239
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !240

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !241
  br label %return, !dbg !241

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !242
  %cmp7 = icmp ugt i64 %4, 128, !dbg !244
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !245

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !246
  %cmp9 = icmp ule i64 %5, 192, !dbg !247
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !248

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !249
  br label %return, !dbg !249

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !250
  %cmp12 = icmp ule i64 %6, 8, !dbg !252
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !253

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !254
  br label %return, !dbg !254

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !255
  %cmp15 = icmp ule i64 %7, 16, !dbg !257
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !258

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !259
  br label %return, !dbg !259

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !260
  %cmp18 = icmp ule i64 %8, 32, !dbg !262
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !263

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !264
  br label %return, !dbg !264

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !265
  %cmp21 = icmp ule i64 %9, 64, !dbg !267
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !268

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !269
  br label %return, !dbg !269

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !270
  %cmp24 = icmp ule i64 %10, 128, !dbg !272
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !273

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !274
  br label %return, !dbg !274

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !275
  %cmp27 = icmp ule i64 %11, 256, !dbg !277
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !278

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !279
  br label %return, !dbg !279

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !280
  %cmp30 = icmp ule i64 %12, 512, !dbg !282
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !283

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !284
  br label %return, !dbg !284

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !285
  %cmp33 = icmp ule i64 %13, 1024, !dbg !287
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !288

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !289
  br label %return, !dbg !289

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !290
  %cmp36 = icmp ule i64 %14, 2048, !dbg !292
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !293

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !294
  br label %return, !dbg !294

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !295
  %cmp39 = icmp ule i64 %15, 4096, !dbg !297
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !298

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !299
  br label %return, !dbg !299

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !300
  %cmp42 = icmp ule i64 %16, 8192, !dbg !302
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !303

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !304
  br label %return, !dbg !304

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !305
  %cmp45 = icmp ule i64 %17, 16384, !dbg !307
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !308

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !309
  br label %return, !dbg !309

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !310
  %cmp48 = icmp ule i64 %18, 32768, !dbg !312
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !313

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !314
  br label %return, !dbg !314

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !315
  %cmp51 = icmp ule i64 %19, 65536, !dbg !317
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !318

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !319
  br label %return, !dbg !319

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !320
  %cmp54 = icmp ule i64 %20, 131072, !dbg !322
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !323

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !324
  br label %return, !dbg !324

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !325
  %cmp57 = icmp ule i64 %21, 262144, !dbg !327
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !328

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !329
  br label %return, !dbg !329

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !330
  %cmp60 = icmp ule i64 %22, 524288, !dbg !332
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !333

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !334
  br label %return, !dbg !334

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !335
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !337
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !338

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !339
  br label %return, !dbg !339

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !340
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !342
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !343

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !344
  br label %return, !dbg !344

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !345, !range !347, !noundef !348
  %tobool69 = trunc i8 %25 to i1, !dbg !345
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !349

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !350

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #18, !dbg !351, !srcloc !354
  unreachable, !dbg !351

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !355

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !356

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !357

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !359

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !357

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !361, !srcloc !363
  br label %do.end75, !dbg !361

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !357

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !364
  br label %return, !dbg !364

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !365
  ret i32 %26, !dbg !365
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !366 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !372 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !376, metadata !DIExpression()), !dbg !378
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !377, metadata !DIExpression()), !dbg !379
  %0 = load i32, ptr %flags.addr, align 4, !dbg !380
  %and = and i32 %0, 17, !dbg !380
  %cmp = icmp eq i32 %and, 0, !dbg !380
  %lnot = xor i1 %cmp, true, !dbg !380
  %lnot1 = xor i1 %lnot, true, !dbg !380
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !380
  %conv = sext i32 %lnot.ext to i64, !dbg !380
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !380
  %tobool = icmp ne i64 %expval, 0, !dbg !380
  br i1 %tobool, label %if.then, label %if.end, !dbg !382

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !383
  br label %return, !dbg !383

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !384
  %and2 = and i32 %1, 1, !dbg !386
  %tobool3 = icmp ne i32 %and2, 0, !dbg !386
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !387

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !388
  br label %return, !dbg !388

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !389
  br label %return, !dbg !389

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !391
  ret i32 %2, !dbg !391
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !392 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #4

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !393 dso_local void @__compiletime_assert_206() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #6 align 16 !dbg !396 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load i64, ptr %n.addr, align 8, !dbg !408
  %call = call i32 @fls64(i64 noundef %0) #16, !dbg !409
  %sub = sub i32 %call, 1, !dbg !410
  ret i32 %sub, !dbg !411
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #9 align 16 !dbg !412 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !417, metadata !DIExpression()), !dbg !419
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #13, !dbg !420
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !418, metadata !DIExpression()), !dbg !421
  store i32 -1, ptr %bitpos, align 4, !dbg !421
  %0 = load i32, ptr %bitpos, align 4, !dbg !422
  %1 = load i64, ptr %x.addr, align 8, !dbg !423
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #19, !dbg !422, !srcloc !424
  store i32 %2, ptr %bitpos, align 4, !dbg !422
  %3 = load i32, ptr %bitpos, align 4, !dbg !425
  %add = add i32 %3, 1, !dbg !426
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #13, !dbg !427
  ret i32 %add, !dbg !428
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone allocsize(0) }
attributes #15 = { noredzone nounwind willreturn memory(none) }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }
attributes #19 = { nounwind memory(read) }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/xfrm/.xfrm_hash.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/xfrm/xfrm_hash\22 -D KBUILD_BASENAME=\22xfrm_hash\22 -D KBUILD_MODNAME=\22xfrm_hash\22 -D __KBUILD_MODNAME=kmod_xfrm_hash -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/xfrm/xfrm_hash.ll net/xfrm/xfrm_hash.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !25, globals: !39, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "net/xfrm/xfrm_hash.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7899378bba2050e176a9b2a037bc9520")
!9 = !{!10, !16}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !12, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!19 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!20 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!23 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!24 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!25 = !{!26, !28, !38}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !27, line: 154, baseType: !12)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !27, line: 194, size: 64, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !29, file: !27, line: 195, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !27, line: 198, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !33, file: !27, line: 199, baseType: !32, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !33, file: !27, line: 199, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !{!0}
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 8, !"cf-protection-branch", i32 1}
!44 = !{i32 4, !"function_return_thunk_extern", i32 1}
!45 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!46 = !{i32 1, !"Code Model", i32 2}
!47 = !{i32 1, !"override-stack-alignment", i32 8}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = distinct !DISubprogram(name: "xfrm_hash_alloc", scope: !8, file: !8, line: 16, type: !50, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{!28, !12}
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "sz", arg: 1, scope: !49, file: !8, line: 16, type: !12)
!54 = !DILocalVariable(name: "n", scope: !49, file: !8, line: 18, type: !28)
!55 = !DILocation(line: 16, column: 49, scope: !49)
!56 = !DILocation(line: 18, column: 2, scope: !49)
!57 = !DILocation(line: 18, column: 21, scope: !49)
!58 = !DILocation(line: 20, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !49, file: !8, line: 20, column: 6)
!60 = !DILocation(line: 20, column: 9, scope: !59)
!61 = !DILocation(line: 20, column: 6, scope: !49)
!62 = !DILocation(line: 21, column: 15, scope: !59)
!63 = !DILocation(line: 21, column: 7, scope: !59)
!64 = !DILocation(line: 21, column: 5, scope: !59)
!65 = !DILocation(line: 21, column: 3, scope: !59)
!66 = !DILocation(line: 22, column: 11, scope: !67)
!67 = distinct !DILexicalBlock(scope: !59, file: !8, line: 22, column: 11)
!68 = !DILocation(line: 22, column: 11, scope: !59)
!69 = !DILocation(line: 23, column: 15, scope: !67)
!70 = !DILocation(line: 23, column: 7, scope: !67)
!71 = !DILocation(line: 23, column: 5, scope: !67)
!72 = !DILocation(line: 23, column: 3, scope: !67)
!73 = !DILocation(line: 27, column: 17, scope: !67)
!74 = !DILocation(line: 27, column: 7, scope: !67)
!75 = !DILocation(line: 26, column: 4, scope: !67)
!76 = !DILocation(line: 25, column: 7, scope: !67)
!77 = !DILocation(line: 25, column: 5, scope: !67)
!78 = !DILocation(line: 29, column: 9, scope: !49)
!79 = !DILocation(line: 30, column: 1, scope: !49)
!80 = !DILocation(line: 29, column: 2, scope: !49)
!81 = distinct !DISubprogram(name: "kzalloc", scope: !2, file: !2, line: 719, type: !82, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !89)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !85, !26}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 61, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !87, line: 72, baseType: !88)
!87 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !87, line: 16, baseType: !38)
!89 = !{!90, !91}
!90 = !DILocalVariable(name: "size", arg: 1, scope: !81, file: !2, line: 719, type: !85)
!91 = !DILocalVariable(name: "flags", arg: 2, scope: !81, file: !2, line: 719, type: !26)
!92 = !DILocation(line: 719, column: 52, scope: !81)
!93 = !DILocation(line: 719, column: 64, scope: !81)
!94 = !DILocation(line: 721, column: 17, scope: !81)
!95 = !DILocation(line: 721, column: 23, scope: !81)
!96 = !DILocation(line: 721, column: 29, scope: !81)
!97 = !DILocation(line: 721, column: 9, scope: !81)
!98 = !DILocation(line: 721, column: 2, scope: !81)
!99 = !DISubprogram(name: "vzalloc", scope: !100, file: !100, line: 141, type: !101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!101 = !DISubroutineType(types: !102)
!102 = !{!84, !38}
!103 = !DISubprogram(name: "__get_free_pages", scope: !104, file: !104, line: 289, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!105 = !DISubroutineType(types: !106)
!106 = !{!38, !26, !12}
!107 = distinct !DISubprogram(name: "get_order", scope: !108, file: !108, line: 29, type: !109, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !112)
!108 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ad2a20729bf2780fb61509a4eca111b")
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !38}
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !{!113}
!113 = !DILocalVariable(name: "size", arg: 1, scope: !107, file: !108, line: 29, type: !38)
!114 = !DILocation(line: 29, column: 72, scope: !107)
!115 = !DILocation(line: 31, column: 27, scope: !116)
!116 = distinct !DILexicalBlock(scope: !107, file: !108, line: 31, column: 6)
!117 = !DILocation(line: 31, column: 6, scope: !116)
!118 = !DILocation(line: 31, column: 6, scope: !107)
!119 = !DILocation(line: 32, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !108, line: 32, column: 7)
!121 = distinct !DILexicalBlock(scope: !116, file: !108, line: 31, column: 34)
!122 = !DILocation(line: 32, column: 7, scope: !121)
!123 = !DILocation(line: 33, column: 4, scope: !120)
!124 = !DILocation(line: 35, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !108, line: 35, column: 7)
!126 = !DILocation(line: 35, column: 12, scope: !125)
!127 = !DILocation(line: 35, column: 7, scope: !121)
!128 = !DILocation(line: 36, column: 4, scope: !125)
!129 = !DILocation(line: 38, column: 10, scope: !121)
!130 = !DILocation(line: 38, column: 28, scope: !121)
!131 = !DILocation(line: 38, column: 41, scope: !121)
!132 = !DILocation(line: 38, column: 3, scope: !121)
!133 = !DILocation(line: 41, column: 6, scope: !107)
!134 = !DILocation(line: 42, column: 7, scope: !107)
!135 = !DILocation(line: 46, column: 15, scope: !107)
!136 = !DILocation(line: 46, column: 9, scope: !107)
!137 = !DILocation(line: 46, column: 2, scope: !107)
!138 = !DILocation(line: 48, column: 1, scope: !107)
!139 = distinct !DISubprogram(name: "xfrm_hash_free", scope: !8, file: !8, line: 32, type: !140, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !28, !12}
!142 = !{!143, !144}
!143 = !DILocalVariable(name: "n", arg: 1, scope: !139, file: !8, line: 32, type: !28)
!144 = !DILocalVariable(name: "sz", arg: 2, scope: !139, file: !8, line: 32, type: !12)
!145 = !DILocation(line: 32, column: 40, scope: !139)
!146 = !DILocation(line: 32, column: 56, scope: !139)
!147 = !DILocation(line: 34, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !139, file: !8, line: 34, column: 6)
!149 = !DILocation(line: 34, column: 9, scope: !148)
!150 = !DILocation(line: 34, column: 6, scope: !139)
!151 = !DILocation(line: 35, column: 9, scope: !148)
!152 = !DILocation(line: 35, column: 3, scope: !148)
!153 = !DILocation(line: 36, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !148, file: !8, line: 36, column: 11)
!155 = !DILocation(line: 36, column: 11, scope: !148)
!156 = !DILocation(line: 37, column: 9, scope: !154)
!157 = !DILocation(line: 37, column: 3, scope: !154)
!158 = !DILocation(line: 39, column: 29, scope: !154)
!159 = !DILocation(line: 39, column: 14, scope: !154)
!160 = !DILocation(line: 39, column: 42, scope: !154)
!161 = !DILocation(line: 39, column: 32, scope: !154)
!162 = !DILocation(line: 39, column: 3, scope: !154)
!163 = !DILocation(line: 40, column: 1, scope: !139)
!164 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!169 = !DISubprogram(name: "vfree", scope: !100, file: !100, line: 161, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubprogram(name: "free_pages", scope: !104, file: !104, line: 303, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !38, !12}
!173 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !82, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !174)
!174 = !{!175, !176, !177}
!175 = !DILocalVariable(name: "size", arg: 1, scope: !173, file: !2, line: 591, type: !85)
!176 = !DILocalVariable(name: "flags", arg: 2, scope: !173, file: !2, line: 591, type: !26)
!177 = !DILocalVariable(name: "index", scope: !178, file: !2, line: 594, type: !12)
!178 = distinct !DILexicalBlock(scope: !179, file: !2, line: 593, column: 42)
!179 = distinct !DILexicalBlock(scope: !173, file: !2, line: 593, column: 6)
!180 = !DILocation(line: 591, column: 61, scope: !173)
!181 = !DILocation(line: 591, column: 73, scope: !173)
!182 = !DILocation(line: 593, column: 27, scope: !179)
!183 = !DILocation(line: 593, column: 6, scope: !179)
!184 = !DILocation(line: 593, column: 33, scope: !179)
!185 = !DILocation(line: 593, column: 36, scope: !179)
!186 = !DILocation(line: 593, column: 6, scope: !173)
!187 = !DILocation(line: 594, column: 3, scope: !178)
!188 = !DILocation(line: 594, column: 16, scope: !178)
!189 = !DILocation(line: 596, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !178, file: !2, line: 596, column: 7)
!191 = !DILocation(line: 596, column: 12, scope: !190)
!192 = !DILocation(line: 596, column: 7, scope: !178)
!193 = !DILocation(line: 597, column: 25, scope: !190)
!194 = !DILocation(line: 597, column: 31, scope: !190)
!195 = !DILocation(line: 597, column: 11, scope: !190)
!196 = !DILocation(line: 597, column: 4, scope: !190)
!197 = !DILocation(line: 599, column: 11, scope: !178)
!198 = !DILocation(line: 599, column: 9, scope: !178)
!199 = !DILocation(line: 601, column: 33, scope: !178)
!200 = !DILocation(line: 601, column: 40, scope: !178)
!201 = !DILocation(line: 601, column: 20, scope: !178)
!202 = !DILocation(line: 601, column: 5, scope: !178)
!203 = !DILocation(line: 601, column: 51, scope: !178)
!204 = !DILocation(line: 602, column: 5, scope: !178)
!205 = !DILocation(line: 602, column: 12, scope: !178)
!206 = !DILocation(line: 600, column: 10, scope: !178)
!207 = !DILocation(line: 600, column: 3, scope: !178)
!208 = !DILocation(line: 603, column: 2, scope: !179)
!209 = !DILocation(line: 604, column: 19, scope: !173)
!210 = !DILocation(line: 604, column: 25, scope: !173)
!211 = !DILocation(line: 604, column: 9, scope: !173)
!212 = !DILocation(line: 604, column: 2, scope: !173)
!213 = !DILocation(line: 605, column: 1, scope: !173)
!214 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !216, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !220)
!216 = !DISubroutineType(types: !217)
!217 = !{!12, !85, !218}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !219)
!219 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "size", arg: 1, scope: !215, file: !2, line: 444, type: !85)
!222 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !215, file: !2, line: 445, type: !218)
!223 = !DILocation(line: 444, column: 60, scope: !215)
!224 = !DILocation(line: 445, column: 16, scope: !215)
!225 = !DILocation(line: 447, column: 7, scope: !226)
!226 = distinct !DILexicalBlock(scope: !215, file: !2, line: 447, column: 6)
!227 = !DILocation(line: 447, column: 6, scope: !215)
!228 = !DILocation(line: 448, column: 3, scope: !226)
!229 = !DILocation(line: 450, column: 6, scope: !230)
!230 = distinct !DILexicalBlock(scope: !215, file: !2, line: 450, column: 6)
!231 = !DILocation(line: 450, column: 11, scope: !230)
!232 = !DILocation(line: 450, column: 6, scope: !215)
!233 = !DILocation(line: 451, column: 3, scope: !230)
!234 = !DILocation(line: 453, column: 32, scope: !235)
!235 = distinct !DILexicalBlock(scope: !215, file: !2, line: 453, column: 6)
!236 = !DILocation(line: 453, column: 37, scope: !235)
!237 = !DILocation(line: 453, column: 42, scope: !235)
!238 = !DILocation(line: 453, column: 45, scope: !235)
!239 = !DILocation(line: 453, column: 50, scope: !235)
!240 = !DILocation(line: 453, column: 6, scope: !215)
!241 = !DILocation(line: 454, column: 3, scope: !235)
!242 = !DILocation(line: 455, column: 32, scope: !243)
!243 = distinct !DILexicalBlock(scope: !215, file: !2, line: 455, column: 6)
!244 = !DILocation(line: 455, column: 37, scope: !243)
!245 = !DILocation(line: 455, column: 43, scope: !243)
!246 = !DILocation(line: 455, column: 46, scope: !243)
!247 = !DILocation(line: 455, column: 51, scope: !243)
!248 = !DILocation(line: 455, column: 6, scope: !215)
!249 = !DILocation(line: 456, column: 3, scope: !243)
!250 = !DILocation(line: 457, column: 6, scope: !251)
!251 = distinct !DILexicalBlock(scope: !215, file: !2, line: 457, column: 6)
!252 = !DILocation(line: 457, column: 11, scope: !251)
!253 = !DILocation(line: 457, column: 6, scope: !215)
!254 = !DILocation(line: 457, column: 26, scope: !251)
!255 = !DILocation(line: 458, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !215, file: !2, line: 458, column: 6)
!257 = !DILocation(line: 458, column: 11, scope: !256)
!258 = !DILocation(line: 458, column: 6, scope: !215)
!259 = !DILocation(line: 458, column: 26, scope: !256)
!260 = !DILocation(line: 459, column: 6, scope: !261)
!261 = distinct !DILexicalBlock(scope: !215, file: !2, line: 459, column: 6)
!262 = !DILocation(line: 459, column: 11, scope: !261)
!263 = !DILocation(line: 459, column: 6, scope: !215)
!264 = !DILocation(line: 459, column: 26, scope: !261)
!265 = !DILocation(line: 460, column: 6, scope: !266)
!266 = distinct !DILexicalBlock(scope: !215, file: !2, line: 460, column: 6)
!267 = !DILocation(line: 460, column: 11, scope: !266)
!268 = !DILocation(line: 460, column: 6, scope: !215)
!269 = !DILocation(line: 460, column: 26, scope: !266)
!270 = !DILocation(line: 461, column: 6, scope: !271)
!271 = distinct !DILexicalBlock(scope: !215, file: !2, line: 461, column: 6)
!272 = !DILocation(line: 461, column: 11, scope: !271)
!273 = !DILocation(line: 461, column: 6, scope: !215)
!274 = !DILocation(line: 461, column: 26, scope: !271)
!275 = !DILocation(line: 462, column: 6, scope: !276)
!276 = distinct !DILexicalBlock(scope: !215, file: !2, line: 462, column: 6)
!277 = !DILocation(line: 462, column: 11, scope: !276)
!278 = !DILocation(line: 462, column: 6, scope: !215)
!279 = !DILocation(line: 462, column: 26, scope: !276)
!280 = !DILocation(line: 463, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !215, file: !2, line: 463, column: 6)
!282 = !DILocation(line: 463, column: 11, scope: !281)
!283 = !DILocation(line: 463, column: 6, scope: !215)
!284 = !DILocation(line: 463, column: 26, scope: !281)
!285 = !DILocation(line: 464, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !215, file: !2, line: 464, column: 6)
!287 = !DILocation(line: 464, column: 11, scope: !286)
!288 = !DILocation(line: 464, column: 6, scope: !215)
!289 = !DILocation(line: 464, column: 26, scope: !286)
!290 = !DILocation(line: 465, column: 6, scope: !291)
!291 = distinct !DILexicalBlock(scope: !215, file: !2, line: 465, column: 6)
!292 = !DILocation(line: 465, column: 11, scope: !291)
!293 = !DILocation(line: 465, column: 6, scope: !215)
!294 = !DILocation(line: 465, column: 26, scope: !291)
!295 = !DILocation(line: 466, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !215, file: !2, line: 466, column: 6)
!297 = !DILocation(line: 466, column: 11, scope: !296)
!298 = !DILocation(line: 466, column: 6, scope: !215)
!299 = !DILocation(line: 466, column: 26, scope: !296)
!300 = !DILocation(line: 467, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !215, file: !2, line: 467, column: 6)
!302 = !DILocation(line: 467, column: 11, scope: !301)
!303 = !DILocation(line: 467, column: 6, scope: !215)
!304 = !DILocation(line: 467, column: 26, scope: !301)
!305 = !DILocation(line: 468, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !215, file: !2, line: 468, column: 6)
!307 = !DILocation(line: 468, column: 11, scope: !306)
!308 = !DILocation(line: 468, column: 6, scope: !215)
!309 = !DILocation(line: 468, column: 26, scope: !306)
!310 = !DILocation(line: 469, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !215, file: !2, line: 469, column: 6)
!312 = !DILocation(line: 469, column: 11, scope: !311)
!313 = !DILocation(line: 469, column: 6, scope: !215)
!314 = !DILocation(line: 469, column: 26, scope: !311)
!315 = !DILocation(line: 470, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !215, file: !2, line: 470, column: 6)
!317 = !DILocation(line: 470, column: 11, scope: !316)
!318 = !DILocation(line: 470, column: 6, scope: !215)
!319 = !DILocation(line: 470, column: 26, scope: !316)
!320 = !DILocation(line: 471, column: 6, scope: !321)
!321 = distinct !DILexicalBlock(scope: !215, file: !2, line: 471, column: 6)
!322 = !DILocation(line: 471, column: 11, scope: !321)
!323 = !DILocation(line: 471, column: 6, scope: !215)
!324 = !DILocation(line: 471, column: 26, scope: !321)
!325 = !DILocation(line: 472, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !215, file: !2, line: 472, column: 6)
!327 = !DILocation(line: 472, column: 11, scope: !326)
!328 = !DILocation(line: 472, column: 6, scope: !215)
!329 = !DILocation(line: 472, column: 26, scope: !326)
!330 = !DILocation(line: 473, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !215, file: !2, line: 473, column: 6)
!332 = !DILocation(line: 473, column: 11, scope: !331)
!333 = !DILocation(line: 473, column: 6, scope: !215)
!334 = !DILocation(line: 473, column: 26, scope: !331)
!335 = !DILocation(line: 474, column: 6, scope: !336)
!336 = distinct !DILexicalBlock(scope: !215, file: !2, line: 474, column: 6)
!337 = !DILocation(line: 474, column: 11, scope: !336)
!338 = !DILocation(line: 474, column: 6, scope: !215)
!339 = !DILocation(line: 474, column: 27, scope: !336)
!340 = !DILocation(line: 475, column: 6, scope: !341)
!341 = distinct !DILexicalBlock(scope: !215, file: !2, line: 475, column: 6)
!342 = !DILocation(line: 475, column: 11, scope: !341)
!343 = !DILocation(line: 475, column: 6, scope: !215)
!344 = !DILocation(line: 475, column: 32, scope: !341)
!345 = !DILocation(line: 477, column: 50, scope: !346)
!346 = distinct !DILexicalBlock(scope: !215, file: !2, line: 477, column: 6)
!347 = !{i8 0, i8 2}
!348 = !{}
!349 = !DILocation(line: 477, column: 6, scope: !215)
!350 = !DILocation(line: 478, column: 3, scope: !346)
!351 = !DILocation(line: 478, column: 3, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 478, column: 3)
!353 = distinct !DILexicalBlock(scope: !346, file: !2, line: 478, column: 3)
!354 = !{i32 -2142335885}
!355 = !DILocation(line: 478, column: 3, scope: !353)
!356 = !DILocation(line: 480, column: 3, scope: !346)
!357 = !DILocation(line: 480, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !346, file: !2, line: 480, column: 3)
!359 = !DILocation(line: 480, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !358, file: !2, line: 480, column: 3)
!361 = !DILocation(line: 480, column: 3, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !2, line: 480, column: 3)
!363 = !{i64 2152631614, i64 2152631643, i64 2152631689, i64 2152631747, i64 2152631801, i64 2152631855, i64 2152631910, i64 2152631941}
!364 = !DILocation(line: 483, column: 2, scope: !215)
!365 = !DILocation(line: 484, column: 1, scope: !215)
!366 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!84, !369, !26, !85}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !371, line: 11, flags: DIFlagFwdDecl)
!371 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!372 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !373, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!16, !26, !38}
!375 = !{!376, !377}
!376 = !DILocalVariable(name: "flags", arg: 1, scope: !372, file: !2, line: 401, type: !26)
!377 = !DILocalVariable(name: "caller", arg: 2, scope: !372, file: !2, line: 401, type: !38)
!378 = !DILocation(line: 401, column: 67, scope: !372)
!379 = !DILocation(line: 401, column: 88, scope: !372)
!380 = !DILocation(line: 407, column: 6, scope: !381)
!381 = distinct !DILexicalBlock(scope: !372, file: !2, line: 407, column: 6)
!382 = !DILocation(line: 407, column: 6, scope: !372)
!383 = !DILocation(line: 413, column: 3, scope: !381)
!384 = !DILocation(line: 423, column: 38, scope: !385)
!385 = distinct !DILexicalBlock(scope: !372, file: !2, line: 423, column: 6)
!386 = !DILocation(line: 423, column: 44, scope: !385)
!387 = !DILocation(line: 423, column: 6, scope: !372)
!388 = !DILocation(line: 424, column: 3, scope: !385)
!389 = !DILocation(line: 426, column: 3, scope: !390)
!390 = distinct !DILexicalBlock(scope: !372, file: !2, line: 425, column: 6)
!391 = !DILocation(line: 429, column: 1, scope: !372)
!392 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubprogram(name: "__compiletime_assert_206", scope: !2, file: !2, line: 478, type: !394, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{null}
!396 = distinct !DISubprogram(name: "__ilog2_u64", scope: !397, file: !397, line: 30, type: !398, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !405)
!397 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!398 = !DISubroutineType(types: !399)
!399 = !{!111, !400}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !401, line: 23, baseType: !402)
!401 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !403, line: 31, baseType: !404)
!403 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!404 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!405 = !{!406}
!406 = !DILocalVariable(name: "n", arg: 1, scope: !396, file: !397, line: 30, type: !400)
!407 = !DILocation(line: 30, column: 21, scope: !396)
!408 = !DILocation(line: 32, column: 15, scope: !396)
!409 = !DILocation(line: 32, column: 9, scope: !396)
!410 = !DILocation(line: 32, column: 18, scope: !396)
!411 = !DILocation(line: 32, column: 2, scope: !396)
!412 = distinct !DISubprogram(name: "fls64", scope: !413, file: !413, line: 401, type: !414, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !416)
!413 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!414 = !DISubroutineType(types: !415)
!415 = !{!111, !402}
!416 = !{!417, !418}
!417 = !DILocalVariable(name: "x", arg: 1, scope: !412, file: !413, line: 401, type: !402)
!418 = !DILocalVariable(name: "bitpos", scope: !412, file: !413, line: 403, type: !111)
!419 = !DILocation(line: 401, column: 40, scope: !412)
!420 = !DILocation(line: 403, column: 2, scope: !412)
!421 = !DILocation(line: 403, column: 6, scope: !412)
!422 = !DILocation(line: 409, column: 2, scope: !412)
!423 = !DILocation(line: 411, column: 14, scope: !412)
!424 = !{i64 297838}
!425 = !DILocation(line: 412, column: 9, scope: !412)
!426 = !DILocation(line: 412, column: 16, scope: !412)
!427 = !DILocation(line: 413, column: 1, scope: !412)
!428 = !DILocation(line: 412, column: 2, scope: !412)
