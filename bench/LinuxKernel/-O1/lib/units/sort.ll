; ModuleID = 'lib/sort.c'
source_filename = "lib/sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sort_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sort_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sort: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sort ; .previous"

%struct.wrapper = type { ptr, ptr }

@__UNIQUE_ID___addressable_sort_r0 = internal global ptr @sort_r, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_sort1 = internal global ptr @sort, section ".discard.addressable", align 8, !dbg !47
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_sort_r0, ptr @__UNIQUE_ID___addressable_sort1], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sort_r(ptr noundef %base, i64 noundef %num, i64 noundef %size, ptr noundef %cmp_func, ptr noundef %swap_func, ptr noundef %priv) #0 align 16 !dbg !58 {
entry:
  %base.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %cmp_func.addr = alloca ptr, align 8
  %swap_func.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  %n = alloca i64, align 8
  %a = alloca i64, align 8
  %lsbit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  %d = alloca i64, align 8
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !67, metadata !DIExpression()), !dbg !83
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !68, metadata !DIExpression()), !dbg !84
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !69, metadata !DIExpression()), !dbg !85
  store ptr %cmp_func, ptr %cmp_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp_func.addr, metadata !70, metadata !DIExpression()), !dbg !86
  store ptr %swap_func, ptr %swap_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %swap_func.addr, metadata !71, metadata !DIExpression()), !dbg !87
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !72, metadata !DIExpression()), !dbg !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #4, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %n, metadata !73, metadata !DIExpression()), !dbg !90
  %0 = load i64, ptr %num.addr, align 8, !dbg !91
  %1 = load i64, ptr %size.addr, align 8, !dbg !92
  %mul = mul i64 %0, %1, !dbg !93
  store i64 %mul, ptr %n, align 8, !dbg !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #4, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %a, metadata !74, metadata !DIExpression()), !dbg !94
  %2 = load i64, ptr %num.addr, align 8, !dbg !95
  %div = udiv i64 %2, 2, !dbg !96
  %3 = load i64, ptr %size.addr, align 8, !dbg !97
  %mul1 = mul i64 %div, %3, !dbg !98
  store i64 %mul1, ptr %a, align 8, !dbg !94
  call void @llvm.lifetime.start.p0(i64 4, ptr %lsbit) #4, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %lsbit, metadata !75, metadata !DIExpression()), !dbg !100
  %4 = load i64, ptr %size.addr, align 8, !dbg !101
  %5 = load i64, ptr %size.addr, align 8, !dbg !102
  %sub = sub i64 0, %5, !dbg !103
  %and = and i64 %4, %sub, !dbg !104
  %conv = trunc i64 %and to i32, !dbg !101
  store i32 %conv, ptr %lsbit, align 4, !dbg !100
  %6 = load i64, ptr %a, align 8, !dbg !105
  %tobool = icmp ne i64 %6, 0, !dbg !105
  br i1 %tobool, label %if.end, label %if.then, !dbg !107

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !108

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %swap_func.addr, align 8, !dbg !109
  %cmp = icmp eq ptr %7, inttoptr (i64 3 to ptr), !dbg !111
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !112

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %priv.addr, align 8, !dbg !113
  %swap = getelementptr inbounds %struct.wrapper, ptr %8, i32 0, i32 1, !dbg !114
  %9 = load ptr, ptr %swap, align 8, !dbg !114
  %tobool3 = icmp ne ptr %9, null, !dbg !115
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !116

if.then4:                                         ; preds = %land.lhs.true
  store ptr null, ptr %swap_func.addr, align 8, !dbg !117
  br label %if.end5, !dbg !118

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %10 = load ptr, ptr %swap_func.addr, align 8, !dbg !119
  %tobool6 = icmp ne ptr %10, null, !dbg !119
  br i1 %tobool6, label %if.end14, label %if.then7, !dbg !121

if.then7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %base.addr, align 8, !dbg !122
  %12 = load i64, ptr %size.addr, align 8, !dbg !125
  %call = call zeroext i1 @is_aligned(ptr noundef %11, i64 noundef %12, i8 noundef zeroext 8) #5, !dbg !126
  br i1 %call, label %if.then8, label %if.else, !dbg !127

if.then8:                                         ; preds = %if.then7
  store ptr null, ptr %swap_func.addr, align 8, !dbg !128
  br label %if.end13, !dbg !129

if.else:                                          ; preds = %if.then7
  %13 = load ptr, ptr %base.addr, align 8, !dbg !130
  %14 = load i64, ptr %size.addr, align 8, !dbg !132
  %call9 = call zeroext i1 @is_aligned(ptr noundef %13, i64 noundef %14, i8 noundef zeroext 4) #5, !dbg !133
  br i1 %call9, label %if.then10, label %if.else11, !dbg !134

if.then10:                                        ; preds = %if.else
  store ptr inttoptr (i64 1 to ptr), ptr %swap_func.addr, align 8, !dbg !135
  br label %if.end12, !dbg !136

if.else11:                                        ; preds = %if.else
  store ptr inttoptr (i64 2 to ptr), ptr %swap_func.addr, align 8, !dbg !137
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then8
  br label %if.end14, !dbg !138

if.end14:                                         ; preds = %if.end13, %if.end5
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %cleanup.cont, %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %b, metadata !77, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %c, metadata !81, metadata !DIExpression()), !dbg !142
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #4, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %d, metadata !82, metadata !DIExpression()), !dbg !143
  %15 = load i64, ptr %a, align 8, !dbg !144
  %tobool15 = icmp ne i64 %15, 0, !dbg !144
  br i1 %tobool15, label %if.then16, label %if.else18, !dbg !146

if.then16:                                        ; preds = %for.cond
  %16 = load i64, ptr %size.addr, align 8, !dbg !147
  %17 = load i64, ptr %a, align 8, !dbg !148
  %sub17 = sub i64 %17, %16, !dbg !148
  store i64 %sub17, ptr %a, align 8, !dbg !148
  br label %if.end24, !dbg !149

if.else18:                                        ; preds = %for.cond
  %18 = load i64, ptr %size.addr, align 8, !dbg !150
  %19 = load i64, ptr %n, align 8, !dbg !152
  %sub19 = sub i64 %19, %18, !dbg !152
  store i64 %sub19, ptr %n, align 8, !dbg !152
  %tobool20 = icmp ne i64 %sub19, 0, !dbg !152
  br i1 %tobool20, label %if.then21, label %if.else22, !dbg !153

if.then21:                                        ; preds = %if.else18
  %20 = load ptr, ptr %base.addr, align 8, !dbg !154
  %21 = load ptr, ptr %base.addr, align 8, !dbg !155
  %22 = load i64, ptr %n, align 8, !dbg !156
  %add.ptr = getelementptr i8, ptr %21, i64 %22, !dbg !157
  %23 = load i64, ptr %size.addr, align 8, !dbg !158
  %24 = load ptr, ptr %swap_func.addr, align 8, !dbg !159
  %25 = load ptr, ptr %priv.addr, align 8, !dbg !160
  call void @do_swap(ptr noundef %20, ptr noundef %add.ptr, i64 noundef %23, ptr noundef %24, ptr noundef %25) #6, !dbg !161
  br label %if.end23, !dbg !161

if.else22:                                        ; preds = %if.else18
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !162

if.end23:                                         ; preds = %if.then21
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then16
  %26 = load i64, ptr %a, align 8, !dbg !163
  store i64 %26, ptr %b, align 8, !dbg !165
  br label %for.cond25, !dbg !166

for.cond25:                                       ; preds = %cond.end, %if.end24
  %27 = load i64, ptr %b, align 8, !dbg !167
  %mul26 = mul i64 2, %27, !dbg !169
  %28 = load i64, ptr %size.addr, align 8, !dbg !170
  %add = add i64 %mul26, %28, !dbg !171
  store i64 %add, ptr %c, align 8, !dbg !172
  %29 = load i64, ptr %c, align 8, !dbg !173
  %30 = load i64, ptr %size.addr, align 8, !dbg !174
  %add27 = add i64 %29, %30, !dbg !175
  store i64 %add27, ptr %d, align 8, !dbg !176
  %31 = load i64, ptr %n, align 8, !dbg !177
  %cmp28 = icmp ult i64 %add27, %31, !dbg !178
  br i1 %cmp28, label %for.body, label %for.end, !dbg !179

for.body:                                         ; preds = %for.cond25
  %32 = load ptr, ptr %base.addr, align 8, !dbg !180
  %33 = load i64, ptr %c, align 8, !dbg !181
  %add.ptr30 = getelementptr i8, ptr %32, i64 %33, !dbg !182
  %34 = load ptr, ptr %base.addr, align 8, !dbg !183
  %35 = load i64, ptr %d, align 8, !dbg !184
  %add.ptr31 = getelementptr i8, ptr %34, i64 %35, !dbg !185
  %36 = load ptr, ptr %cmp_func.addr, align 8, !dbg !186
  %37 = load ptr, ptr %priv.addr, align 8, !dbg !187
  %call32 = call i32 @do_cmp(ptr noundef %add.ptr30, ptr noundef %add.ptr31, ptr noundef %36, ptr noundef %37) #6, !dbg !188
  %cmp33 = icmp sge i32 %call32, 0, !dbg !189
  br i1 %cmp33, label %cond.true, label %cond.false, !dbg !188

cond.true:                                        ; preds = %for.body
  %38 = load i64, ptr %c, align 8, !dbg !190
  br label %cond.end, !dbg !188

cond.false:                                       ; preds = %for.body
  %39 = load i64, ptr %d, align 8, !dbg !191
  br label %cond.end, !dbg !188

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !188
  store i64 %cond, ptr %b, align 8, !dbg !192
  br label %for.cond25, !dbg !193, !llvm.loop !194

for.end:                                          ; preds = %for.cond25
  %40 = load i64, ptr %d, align 8, !dbg !198
  %41 = load i64, ptr %n, align 8, !dbg !200
  %cmp35 = icmp eq i64 %40, %41, !dbg !201
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !202

if.then37:                                        ; preds = %for.end
  %42 = load i64, ptr %c, align 8, !dbg !203
  store i64 %42, ptr %b, align 8, !dbg !204
  br label %if.end38, !dbg !205

if.end38:                                         ; preds = %if.then37, %for.end
  br label %while.cond, !dbg !206

while.cond:                                       ; preds = %while.body, %if.end38
  %43 = load i64, ptr %b, align 8, !dbg !207
  %44 = load i64, ptr %a, align 8, !dbg !208
  %cmp39 = icmp ne i64 %43, %44, !dbg !209
  br i1 %cmp39, label %land.rhs, label %land.end, !dbg !210

land.rhs:                                         ; preds = %while.cond
  %45 = load ptr, ptr %base.addr, align 8, !dbg !211
  %46 = load i64, ptr %a, align 8, !dbg !212
  %add.ptr41 = getelementptr i8, ptr %45, i64 %46, !dbg !213
  %47 = load ptr, ptr %base.addr, align 8, !dbg !214
  %48 = load i64, ptr %b, align 8, !dbg !215
  %add.ptr42 = getelementptr i8, ptr %47, i64 %48, !dbg !216
  %49 = load ptr, ptr %cmp_func.addr, align 8, !dbg !217
  %50 = load ptr, ptr %priv.addr, align 8, !dbg !218
  %call43 = call i32 @do_cmp(ptr noundef %add.ptr41, ptr noundef %add.ptr42, ptr noundef %49, ptr noundef %50) #6, !dbg !219
  %cmp44 = icmp sge i32 %call43, 0, !dbg !220
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %51 = phi i1 [ false, %while.cond ], [ %cmp44, %land.rhs ], !dbg !221
  br i1 %51, label %while.body, label %while.end, !dbg !206

while.body:                                       ; preds = %land.end
  %52 = load i64, ptr %b, align 8, !dbg !222
  %53 = load i32, ptr %lsbit, align 4, !dbg !223
  %54 = load i64, ptr %size.addr, align 8, !dbg !224
  %call46 = call i64 @parent(i64 noundef %52, i32 noundef %53, i64 noundef %54) #5, !dbg !225
  store i64 %call46, ptr %b, align 8, !dbg !226
  br label %while.cond, !dbg !206, !llvm.loop !227

while.end:                                        ; preds = %land.end
  %55 = load i64, ptr %b, align 8, !dbg !229
  store i64 %55, ptr %c, align 8, !dbg !230
  br label %while.cond47, !dbg !231

while.cond47:                                     ; preds = %while.body50, %while.end
  %56 = load i64, ptr %b, align 8, !dbg !232
  %57 = load i64, ptr %a, align 8, !dbg !233
  %cmp48 = icmp ne i64 %56, %57, !dbg !234
  br i1 %cmp48, label %while.body50, label %while.end54, !dbg !231

while.body50:                                     ; preds = %while.cond47
  %58 = load i64, ptr %b, align 8, !dbg !235
  %59 = load i32, ptr %lsbit, align 4, !dbg !237
  %60 = load i64, ptr %size.addr, align 8, !dbg !238
  %call51 = call i64 @parent(i64 noundef %58, i32 noundef %59, i64 noundef %60) #5, !dbg !239
  store i64 %call51, ptr %b, align 8, !dbg !240
  %61 = load ptr, ptr %base.addr, align 8, !dbg !241
  %62 = load i64, ptr %b, align 8, !dbg !242
  %add.ptr52 = getelementptr i8, ptr %61, i64 %62, !dbg !243
  %63 = load ptr, ptr %base.addr, align 8, !dbg !244
  %64 = load i64, ptr %c, align 8, !dbg !245
  %add.ptr53 = getelementptr i8, ptr %63, i64 %64, !dbg !246
  %65 = load i64, ptr %size.addr, align 8, !dbg !247
  %66 = load ptr, ptr %swap_func.addr, align 8, !dbg !248
  %67 = load ptr, ptr %priv.addr, align 8, !dbg !249
  call void @do_swap(ptr noundef %add.ptr52, ptr noundef %add.ptr53, i64 noundef %65, ptr noundef %66, ptr noundef %67) #6, !dbg !250
  br label %while.cond47, !dbg !231, !llvm.loop !251

while.end54:                                      ; preds = %while.cond47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !253
  br label %cleanup, !dbg !253

cleanup:                                          ; preds = %while.end54, %if.else22
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #4, !dbg !253
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #4, !dbg !253
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !253
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end57
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !254, !llvm.loop !255

for.end57:                                        ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !258
  br label %cleanup58, !dbg !258

cleanup58:                                        ; preds = %for.end57, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %lsbit) #4, !dbg !258
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #4, !dbg !258
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #4, !dbg !258
  %cleanup.dest61 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest61, label %unreachable [
    i32 0, label %cleanup.cont62
    i32 1, label %cleanup.cont62
  ]

cleanup.cont62:                                   ; preds = %cleanup58, %cleanup58
  ret void, !dbg !258

unreachable:                                      ; preds = %cleanup58, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_aligned(ptr noundef %base, i64 noundef %size, i8 noundef zeroext %align) #3 align 16 !dbg !259 {
entry:
  %base.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i8, align 1
  %lsbits = alloca i8, align 1
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !265, metadata !DIExpression()), !dbg !269
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !266, metadata !DIExpression()), !dbg !270
  store i8 %align, ptr %align.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !267, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 1, ptr %lsbits) #4, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %lsbits, metadata !268, metadata !DIExpression()), !dbg !273
  %0 = load i64, ptr %size.addr, align 8, !dbg !274
  %conv = trunc i64 %0 to i8, !dbg !275
  store i8 %conv, ptr %lsbits, align 1, !dbg !273
  %1 = load ptr, ptr %base.addr, align 8, !dbg !276
  %2 = load i8, ptr %lsbits, align 1, !dbg !277
  %conv1 = zext i8 %2 to i32, !dbg !277
  %3 = load i8, ptr %align.addr, align 1, !dbg !278
  %conv2 = zext i8 %3 to i32, !dbg !278
  %sub = sub i32 %conv2, 1, !dbg !279
  %and = and i32 %conv1, %sub, !dbg !280
  %cmp = icmp eq i32 %and, 0, !dbg !281
  call void @llvm.lifetime.end.p0(i64 1, ptr %lsbits) #4, !dbg !282
  ret i1 %cmp, !dbg !283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_swap(ptr noundef %a, ptr noundef %b, i64 noundef %size, ptr noundef %swap_func, ptr noundef %priv) #0 align 16 !dbg !284 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %swap_func.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !288, metadata !DIExpression()), !dbg !293
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !289, metadata !DIExpression()), !dbg !294
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !290, metadata !DIExpression()), !dbg !295
  store ptr %swap_func, ptr %swap_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %swap_func.addr, metadata !291, metadata !DIExpression()), !dbg !296
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !292, metadata !DIExpression()), !dbg !297
  %0 = load ptr, ptr %swap_func.addr, align 8, !dbg !298
  %cmp = icmp eq ptr %0, inttoptr (i64 3 to ptr), !dbg !300
  br i1 %cmp, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %priv.addr, align 8, !dbg !302
  %swap = getelementptr inbounds %struct.wrapper, ptr %1, i32 0, i32 1, !dbg !304
  %2 = load ptr, ptr %swap, align 8, !dbg !304
  %3 = load ptr, ptr %a.addr, align 8, !dbg !305
  %4 = load ptr, ptr %b.addr, align 8, !dbg !306
  %5 = load i64, ptr %size.addr, align 8, !dbg !307
  %conv = trunc i64 %5 to i32, !dbg !308
  call void %2(ptr noundef %3, ptr noundef %4, i32 noundef %conv) #6, !dbg !309
  br label %if.end15, !dbg !310

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %swap_func.addr, align 8, !dbg !311
  %cmp1 = icmp eq ptr %6, null, !dbg !313
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !314

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %a.addr, align 8, !dbg !315
  %8 = load ptr, ptr %b.addr, align 8, !dbg !316
  %9 = load i64, ptr %size.addr, align 8, !dbg !317
  call void @swap_words_64(ptr noundef %7, ptr noundef %8, i64 noundef %9) #6, !dbg !318
  br label %if.end15, !dbg !318

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %swap_func.addr, align 8, !dbg !319
  %cmp4 = icmp eq ptr %10, inttoptr (i64 1 to ptr), !dbg !321
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !322

if.then6:                                         ; preds = %if.else
  %11 = load ptr, ptr %a.addr, align 8, !dbg !323
  %12 = load ptr, ptr %b.addr, align 8, !dbg !324
  %13 = load i64, ptr %size.addr, align 8, !dbg !325
  call void @swap_words_32(ptr noundef %11, ptr noundef %12, i64 noundef %13) #6, !dbg !326
  br label %if.end14, !dbg !326

if.else7:                                         ; preds = %if.else
  %14 = load ptr, ptr %swap_func.addr, align 8, !dbg !327
  %cmp8 = icmp eq ptr %14, inttoptr (i64 2 to ptr), !dbg !329
  br i1 %cmp8, label %if.then10, label %if.else11, !dbg !330

if.then10:                                        ; preds = %if.else7
  %15 = load ptr, ptr %a.addr, align 8, !dbg !331
  %16 = load ptr, ptr %b.addr, align 8, !dbg !332
  %17 = load i64, ptr %size.addr, align 8, !dbg !333
  call void @swap_bytes(ptr noundef %15, ptr noundef %16, i64 noundef %17) #6, !dbg !334
  br label %if.end13, !dbg !334

if.else11:                                        ; preds = %if.else7
  %18 = load ptr, ptr %swap_func.addr, align 8, !dbg !335
  %19 = load ptr, ptr %a.addr, align 8, !dbg !336
  %20 = load ptr, ptr %b.addr, align 8, !dbg !337
  %21 = load i64, ptr %size.addr, align 8, !dbg !338
  %conv12 = trunc i64 %21 to i32, !dbg !339
  %22 = load ptr, ptr %priv.addr, align 8, !dbg !340
  call void %18(ptr noundef %19, ptr noundef %20, i32 noundef %conv12, ptr noundef %22) #6, !dbg !335
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then6
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.end14, %if.then3
  ret void, !dbg !341
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_cmp(ptr noundef %a, ptr noundef %b, ptr noundef %cmp, ptr noundef %priv) #0 align 16 !dbg !342 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %cmp.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !346, metadata !DIExpression()), !dbg !350
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !347, metadata !DIExpression()), !dbg !351
  store ptr %cmp, ptr %cmp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp.addr, metadata !348, metadata !DIExpression()), !dbg !352
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !349, metadata !DIExpression()), !dbg !353
  %0 = load ptr, ptr %cmp.addr, align 8, !dbg !354
  %cmp1 = icmp eq ptr %0, null, !dbg !356
  br i1 %cmp1, label %if.then, label %if.end, !dbg !357

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %priv.addr, align 8, !dbg !358
  %cmp2 = getelementptr inbounds %struct.wrapper, ptr %1, i32 0, i32 0, !dbg !359
  %2 = load ptr, ptr %cmp2, align 8, !dbg !359
  %3 = load ptr, ptr %a.addr, align 8, !dbg !360
  %4 = load ptr, ptr %b.addr, align 8, !dbg !361
  %call = call i32 %2(ptr noundef %3, ptr noundef %4) #6, !dbg !362
  store i32 %call, ptr %retval, align 4, !dbg !363
  br label %return, !dbg !363

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %cmp.addr, align 8, !dbg !364
  %6 = load ptr, ptr %a.addr, align 8, !dbg !365
  %7 = load ptr, ptr %b.addr, align 8, !dbg !366
  %8 = load ptr, ptr %priv.addr, align 8, !dbg !367
  %call3 = call i32 %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #6, !dbg !364
  store i32 %call3, ptr %retval, align 4, !dbg !368
  br label %return, !dbg !368

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !369
  ret i32 %9, !dbg !369
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @parent(i64 noundef %i, i32 noundef %lsbit, i64 noundef %size) #3 align 16 !dbg !370 {
entry:
  %i.addr = alloca i64, align 8
  %lsbit.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !374, metadata !DIExpression()), !dbg !377
  store i32 %lsbit, ptr %lsbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lsbit.addr, metadata !375, metadata !DIExpression()), !dbg !378
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !376, metadata !DIExpression()), !dbg !379
  %0 = load i64, ptr %size.addr, align 8, !dbg !380
  %1 = load i64, ptr %i.addr, align 8, !dbg !381
  %sub = sub i64 %1, %0, !dbg !381
  store i64 %sub, ptr %i.addr, align 8, !dbg !381
  %2 = load i64, ptr %size.addr, align 8, !dbg !382
  %3 = load i64, ptr %i.addr, align 8, !dbg !383
  %4 = load i32, ptr %lsbit.addr, align 4, !dbg !384
  %conv = zext i32 %4 to i64, !dbg !384
  %and = and i64 %3, %conv, !dbg !385
  %sub1 = sub i64 0, %and, !dbg !386
  %and2 = and i64 %2, %sub1, !dbg !387
  %5 = load i64, ptr %i.addr, align 8, !dbg !388
  %sub3 = sub i64 %5, %and2, !dbg !388
  store i64 %sub3, ptr %i.addr, align 8, !dbg !388
  %6 = load i64, ptr %i.addr, align 8, !dbg !389
  %div = udiv i64 %6, 2, !dbg !390
  ret i64 %div, !dbg !391
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sort(ptr noundef %base, i64 noundef %num, i64 noundef %size, ptr noundef %cmp_func, ptr noundef %swap_func) #0 align 16 !dbg !392 {
entry:
  %base.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %cmp_func.addr = alloca ptr, align 8
  %swap_func.addr = alloca ptr, align 8
  %w = alloca %struct.wrapper, align 8
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !396, metadata !DIExpression()), !dbg !402
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !397, metadata !DIExpression()), !dbg !403
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !398, metadata !DIExpression()), !dbg !404
  store ptr %cmp_func, ptr %cmp_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp_func.addr, metadata !399, metadata !DIExpression()), !dbg !405
  store ptr %swap_func, ptr %swap_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %swap_func.addr, metadata !400, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 16, ptr %w) #4, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %w, metadata !401, metadata !DIExpression()), !dbg !408
  %cmp = getelementptr inbounds %struct.wrapper, ptr %w, i32 0, i32 0, !dbg !409
  %0 = load ptr, ptr %cmp_func.addr, align 8, !dbg !410
  store ptr %0, ptr %cmp, align 8, !dbg !409
  %swap = getelementptr inbounds %struct.wrapper, ptr %w, i32 0, i32 1, !dbg !409
  %1 = load ptr, ptr %swap_func.addr, align 8, !dbg !411
  store ptr %1, ptr %swap, align 8, !dbg !409
  %2 = load ptr, ptr %base.addr, align 8, !dbg !412
  %3 = load i64, ptr %num.addr, align 8, !dbg !413
  %4 = load i64, ptr %size.addr, align 8, !dbg !414
  call void @sort_r(ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef null, ptr noundef inttoptr (i64 3 to ptr), ptr noundef %w) #6, !dbg !415
  call void @llvm.lifetime.end.p0(i64 16, ptr %w) #4, !dbg !416
  ret void, !dbg !416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @swap_words_64(ptr noundef %a, ptr noundef %b, i64 noundef %n) #0 align 16 !dbg !417 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %t = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !421, metadata !DIExpression()), !dbg !426
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !422, metadata !DIExpression()), !dbg !427
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !423, metadata !DIExpression()), !dbg !428
  br label %do.body, !dbg !429

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #4, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %t, metadata !424, metadata !DIExpression()), !dbg !431
  %0 = load ptr, ptr %a.addr, align 8, !dbg !432
  %1 = load i64, ptr %n.addr, align 8, !dbg !433
  %sub = sub i64 %1, 8, !dbg !433
  store i64 %sub, ptr %n.addr, align 8, !dbg !433
  %add.ptr = getelementptr i8, ptr %0, i64 %sub, !dbg !434
  %2 = load i64, ptr %add.ptr, align 8, !dbg !435
  store i64 %2, ptr %t, align 8, !dbg !431
  %3 = load ptr, ptr %b.addr, align 8, !dbg !436
  %4 = load i64, ptr %n.addr, align 8, !dbg !437
  %add.ptr1 = getelementptr i8, ptr %3, i64 %4, !dbg !438
  %5 = load i64, ptr %add.ptr1, align 8, !dbg !439
  %6 = load ptr, ptr %a.addr, align 8, !dbg !440
  %7 = load i64, ptr %n.addr, align 8, !dbg !441
  %add.ptr2 = getelementptr i8, ptr %6, i64 %7, !dbg !442
  store i64 %5, ptr %add.ptr2, align 8, !dbg !443
  %8 = load i64, ptr %t, align 8, !dbg !444
  %9 = load ptr, ptr %b.addr, align 8, !dbg !445
  %10 = load i64, ptr %n.addr, align 8, !dbg !446
  %add.ptr3 = getelementptr i8, ptr %9, i64 %10, !dbg !447
  store i64 %8, ptr %add.ptr3, align 8, !dbg !448
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #4, !dbg !449
  br label %do.cond, !dbg !450

do.cond:                                          ; preds = %do.body
  %11 = load i64, ptr %n.addr, align 8, !dbg !451
  %tobool = icmp ne i64 %11, 0, !dbg !450
  br i1 %tobool, label %do.body, label %do.end, !dbg !450, !llvm.loop !452

do.end:                                           ; preds = %do.cond
  ret void, !dbg !454
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @swap_words_32(ptr noundef %a, ptr noundef %b, i64 noundef %n) #0 align 16 !dbg !455 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %t = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !457, metadata !DIExpression()), !dbg !462
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !458, metadata !DIExpression()), !dbg !463
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !459, metadata !DIExpression()), !dbg !464
  br label %do.body, !dbg !465

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %t, metadata !460, metadata !DIExpression()), !dbg !467
  %0 = load ptr, ptr %a.addr, align 8, !dbg !468
  %1 = load i64, ptr %n.addr, align 8, !dbg !469
  %sub = sub i64 %1, 4, !dbg !469
  store i64 %sub, ptr %n.addr, align 8, !dbg !469
  %add.ptr = getelementptr i8, ptr %0, i64 %sub, !dbg !470
  %2 = load i32, ptr %add.ptr, align 4, !dbg !471
  store i32 %2, ptr %t, align 4, !dbg !467
  %3 = load ptr, ptr %b.addr, align 8, !dbg !472
  %4 = load i64, ptr %n.addr, align 8, !dbg !473
  %add.ptr1 = getelementptr i8, ptr %3, i64 %4, !dbg !474
  %5 = load i32, ptr %add.ptr1, align 4, !dbg !475
  %6 = load ptr, ptr %a.addr, align 8, !dbg !476
  %7 = load i64, ptr %n.addr, align 8, !dbg !477
  %add.ptr2 = getelementptr i8, ptr %6, i64 %7, !dbg !478
  store i32 %5, ptr %add.ptr2, align 4, !dbg !479
  %8 = load i32, ptr %t, align 4, !dbg !480
  %9 = load ptr, ptr %b.addr, align 8, !dbg !481
  %10 = load i64, ptr %n.addr, align 8, !dbg !482
  %add.ptr3 = getelementptr i8, ptr %9, i64 %10, !dbg !483
  store i32 %8, ptr %add.ptr3, align 4, !dbg !484
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4, !dbg !485
  br label %do.cond, !dbg !486

do.cond:                                          ; preds = %do.body
  %11 = load i64, ptr %n.addr, align 8, !dbg !487
  %tobool = icmp ne i64 %11, 0, !dbg !486
  br i1 %tobool, label %do.body, label %do.end, !dbg !486, !llvm.loop !488

do.end:                                           ; preds = %do.cond
  ret void, !dbg !490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @swap_bytes(ptr noundef %a, ptr noundef %b, i64 noundef %n) #0 align 16 !dbg !491 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %t = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !493, metadata !DIExpression()), !dbg !498
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !494, metadata !DIExpression()), !dbg !499
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !495, metadata !DIExpression()), !dbg !500
  br label %do.body, !dbg !501

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %t) #4, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %t, metadata !496, metadata !DIExpression()), !dbg !503
  %0 = load ptr, ptr %a.addr, align 8, !dbg !504
  %1 = load i64, ptr %n.addr, align 8, !dbg !505
  %dec = add i64 %1, -1, !dbg !505
  store i64 %dec, ptr %n.addr, align 8, !dbg !505
  %arrayidx = getelementptr i8, ptr %0, i64 %dec, !dbg !506
  %2 = load i8, ptr %arrayidx, align 1, !dbg !506
  store i8 %2, ptr %t, align 1, !dbg !503
  %3 = load ptr, ptr %b.addr, align 8, !dbg !507
  %4 = load i64, ptr %n.addr, align 8, !dbg !508
  %arrayidx1 = getelementptr i8, ptr %3, i64 %4, !dbg !509
  %5 = load i8, ptr %arrayidx1, align 1, !dbg !509
  %6 = load ptr, ptr %a.addr, align 8, !dbg !510
  %7 = load i64, ptr %n.addr, align 8, !dbg !511
  %arrayidx2 = getelementptr i8, ptr %6, i64 %7, !dbg !512
  store i8 %5, ptr %arrayidx2, align 1, !dbg !513
  %8 = load i8, ptr %t, align 1, !dbg !514
  %9 = load ptr, ptr %b.addr, align 8, !dbg !515
  %10 = load i64, ptr %n.addr, align 8, !dbg !516
  %arrayidx3 = getelementptr i8, ptr %9, i64 %10, !dbg !517
  store i8 %8, ptr %arrayidx3, align 1, !dbg !518
  call void @llvm.lifetime.end.p0(i64 1, ptr %t) #4, !dbg !519
  br label %do.cond, !dbg !520

do.cond:                                          ; preds = %do.body
  %11 = load i64, ptr %n.addr, align 8, !dbg !521
  %tobool = icmp ne i64 %11, 0, !dbg !520
  br i1 %tobool, label %do.body, label %do.end, !dbg !520, !llvm.loop !522

do.end:                                           ; preds = %do.cond
  ret void, !dbg !524
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone nounwind willreturn memory(none) }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sort_r0", scope: !2, file: !3, line: 279, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.sort.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/sort\22 -D KBUILD_BASENAME=\22sort\22 -D KBUILD_MODNAME=\22sort\22 -D __KBUILD_MODNAME=kmod_sort -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/sort.ll lib/sort.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !46, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/sort.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1103ab1360cb96c837f5db89145b4fb1")
!4 = !{!5, !14, !10, !27, !31, !32, !11, !34, !40, !44}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_r_func_t", file: !6, line: 241, baseType: !7)
!6 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !11, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wrapper", file: !3, line: 130, size: 128, elements: !16)
!16 = !{!17, !22}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !15, file: !3, line: 131, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !6, line: 245, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!11, !12, !12}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !15, file: !3, line: 132, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !6, line: 242, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !10, !10, !11}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_r_func_t", file: !6, line: 244, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!11, !12, !12, !12}
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !36, line: 23, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !38, line: 31, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !43)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!0, !47}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sort1", scope: !2, file: !3, line: 292, type: !10, isLocal: true, isDefinition: true)
!49 = !{i32 7, !"Dwarf Version", i32 5}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 8, !"cf-protection-branch", i32 1}
!53 = !{i32 4, !"function_return_thunk_extern", i32 1}
!54 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!55 = !{i32 1, !"Code Model", i32 2}
!56 = !{i32 1, !"override-stack-alignment", i32 8}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = distinct !DISubprogram(name: "sort_r", scope: !3, file: !3, line: 210, type: !59, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !10, !61, !61, !27, !5, !12}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 61, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !63, line: 72, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !63, line: 16, baseType: !65)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !81, !82}
!67 = !DILocalVariable(name: "base", arg: 1, scope: !58, file: !3, line: 210, type: !10)
!68 = !DILocalVariable(name: "num", arg: 2, scope: !58, file: !3, line: 210, type: !61)
!69 = !DILocalVariable(name: "size", arg: 3, scope: !58, file: !3, line: 210, type: !61)
!70 = !DILocalVariable(name: "cmp_func", arg: 4, scope: !58, file: !3, line: 211, type: !27)
!71 = !DILocalVariable(name: "swap_func", arg: 5, scope: !58, file: !3, line: 212, type: !5)
!72 = !DILocalVariable(name: "priv", arg: 6, scope: !58, file: !3, line: 213, type: !12)
!73 = !DILocalVariable(name: "n", scope: !58, file: !3, line: 216, type: !61)
!74 = !DILocalVariable(name: "a", scope: !58, file: !3, line: 216, type: !61)
!75 = !DILocalVariable(name: "lsbit", scope: !58, file: !3, line: 217, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!77 = !DILocalVariable(name: "b", scope: !78, file: !3, line: 243, type: !61)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 242, column: 11)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 242, column: 2)
!80 = distinct !DILexicalBlock(scope: !58, file: !3, line: 242, column: 2)
!81 = !DILocalVariable(name: "c", scope: !78, file: !3, line: 243, type: !61)
!82 = !DILocalVariable(name: "d", scope: !78, file: !3, line: 243, type: !61)
!83 = !DILocation(line: 210, column: 19, scope: !58)
!84 = !DILocation(line: 210, column: 32, scope: !58)
!85 = !DILocation(line: 210, column: 44, scope: !58)
!86 = !DILocation(line: 211, column: 19, scope: !58)
!87 = !DILocation(line: 212, column: 20, scope: !58)
!88 = !DILocation(line: 213, column: 18, scope: !58)
!89 = !DILocation(line: 216, column: 2, scope: !58)
!90 = !DILocation(line: 216, column: 9, scope: !58)
!91 = !DILocation(line: 216, column: 13, scope: !58)
!92 = !DILocation(line: 216, column: 19, scope: !58)
!93 = !DILocation(line: 216, column: 17, scope: !58)
!94 = !DILocation(line: 216, column: 25, scope: !58)
!95 = !DILocation(line: 216, column: 30, scope: !58)
!96 = !DILocation(line: 216, column: 33, scope: !58)
!97 = !DILocation(line: 216, column: 39, scope: !58)
!98 = !DILocation(line: 216, column: 37, scope: !58)
!99 = !DILocation(line: 217, column: 2, scope: !58)
!100 = !DILocation(line: 217, column: 21, scope: !58)
!101 = !DILocation(line: 217, column: 29, scope: !58)
!102 = !DILocation(line: 217, column: 37, scope: !58)
!103 = !DILocation(line: 217, column: 36, scope: !58)
!104 = !DILocation(line: 217, column: 34, scope: !58)
!105 = !DILocation(line: 219, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !58, file: !3, line: 219, column: 6)
!107 = !DILocation(line: 219, column: 6, scope: !58)
!108 = !DILocation(line: 220, column: 3, scope: !106)
!109 = !DILocation(line: 223, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !58, file: !3, line: 223, column: 6)
!111 = !DILocation(line: 223, column: 16, scope: !110)
!112 = !DILocation(line: 223, column: 32, scope: !110)
!113 = !DILocation(line: 223, column: 55, scope: !110)
!114 = !DILocation(line: 223, column: 62, scope: !110)
!115 = !DILocation(line: 223, column: 36, scope: !110)
!116 = !DILocation(line: 223, column: 6, scope: !58)
!117 = !DILocation(line: 224, column: 13, scope: !110)
!118 = !DILocation(line: 224, column: 3, scope: !110)
!119 = !DILocation(line: 226, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !58, file: !3, line: 226, column: 6)
!121 = !DILocation(line: 226, column: 6, scope: !58)
!122 = !DILocation(line: 227, column: 18, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 227, column: 7)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 226, column: 18)
!125 = !DILocation(line: 227, column: 24, scope: !123)
!126 = !DILocation(line: 227, column: 7, scope: !123)
!127 = !DILocation(line: 227, column: 7, scope: !124)
!128 = !DILocation(line: 228, column: 14, scope: !123)
!129 = !DILocation(line: 228, column: 4, scope: !123)
!130 = !DILocation(line: 229, column: 23, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !3, line: 229, column: 12)
!132 = !DILocation(line: 229, column: 29, scope: !131)
!133 = !DILocation(line: 229, column: 12, scope: !131)
!134 = !DILocation(line: 229, column: 12, scope: !123)
!135 = !DILocation(line: 230, column: 14, scope: !131)
!136 = !DILocation(line: 230, column: 4, scope: !131)
!137 = !DILocation(line: 232, column: 14, scope: !131)
!138 = !DILocation(line: 233, column: 2, scope: !124)
!139 = !DILocation(line: 242, column: 2, scope: !58)
!140 = !DILocation(line: 243, column: 3, scope: !78)
!141 = !DILocation(line: 243, column: 10, scope: !78)
!142 = !DILocation(line: 243, column: 13, scope: !78)
!143 = !DILocation(line: 243, column: 16, scope: !78)
!144 = !DILocation(line: 245, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !78, file: !3, line: 245, column: 7)
!146 = !DILocation(line: 245, column: 7, scope: !78)
!147 = !DILocation(line: 246, column: 9, scope: !145)
!148 = !DILocation(line: 246, column: 6, scope: !145)
!149 = !DILocation(line: 246, column: 4, scope: !145)
!150 = !DILocation(line: 247, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !3, line: 247, column: 12)
!152 = !DILocation(line: 247, column: 14, scope: !151)
!153 = !DILocation(line: 247, column: 12, scope: !145)
!154 = !DILocation(line: 248, column: 12, scope: !151)
!155 = !DILocation(line: 248, column: 18, scope: !151)
!156 = !DILocation(line: 248, column: 25, scope: !151)
!157 = !DILocation(line: 248, column: 23, scope: !151)
!158 = !DILocation(line: 248, column: 28, scope: !151)
!159 = !DILocation(line: 248, column: 34, scope: !151)
!160 = !DILocation(line: 248, column: 45, scope: !151)
!161 = !DILocation(line: 248, column: 4, scope: !151)
!162 = !DILocation(line: 250, column: 4, scope: !151)
!163 = !DILocation(line: 264, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !78, file: !3, line: 264, column: 3)
!165 = !DILocation(line: 264, column: 10, scope: !164)
!166 = !DILocation(line: 264, column: 8, scope: !164)
!167 = !DILocation(line: 264, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !3, line: 264, column: 3)
!169 = !DILocation(line: 264, column: 20, scope: !168)
!170 = !DILocation(line: 264, column: 25, scope: !168)
!171 = !DILocation(line: 264, column: 23, scope: !168)
!172 = !DILocation(line: 264, column: 17, scope: !168)
!173 = !DILocation(line: 264, column: 36, scope: !168)
!174 = !DILocation(line: 264, column: 40, scope: !168)
!175 = !DILocation(line: 264, column: 38, scope: !168)
!176 = !DILocation(line: 264, column: 34, scope: !168)
!177 = !DILocation(line: 264, column: 48, scope: !168)
!178 = !DILocation(line: 264, column: 46, scope: !168)
!179 = !DILocation(line: 264, column: 3, scope: !164)
!180 = !DILocation(line: 265, column: 15, scope: !168)
!181 = !DILocation(line: 265, column: 22, scope: !168)
!182 = !DILocation(line: 265, column: 20, scope: !168)
!183 = !DILocation(line: 265, column: 25, scope: !168)
!184 = !DILocation(line: 265, column: 32, scope: !168)
!185 = !DILocation(line: 265, column: 30, scope: !168)
!186 = !DILocation(line: 265, column: 35, scope: !168)
!187 = !DILocation(line: 265, column: 45, scope: !168)
!188 = !DILocation(line: 265, column: 8, scope: !168)
!189 = !DILocation(line: 265, column: 51, scope: !168)
!190 = !DILocation(line: 265, column: 58, scope: !168)
!191 = !DILocation(line: 265, column: 62, scope: !168)
!192 = !DILocation(line: 265, column: 6, scope: !168)
!193 = !DILocation(line: 264, column: 3, scope: !168)
!194 = distinct !{!194, !179, !195, !196, !197}
!195 = !DILocation(line: 265, column: 62, scope: !164)
!196 = !{!"llvm.loop.mustprogress"}
!197 = !{!"llvm.loop.unroll.disable"}
!198 = !DILocation(line: 266, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !78, file: !3, line: 266, column: 7)
!200 = !DILocation(line: 266, column: 12, scope: !199)
!201 = !DILocation(line: 266, column: 9, scope: !199)
!202 = !DILocation(line: 266, column: 7, scope: !78)
!203 = !DILocation(line: 267, column: 8, scope: !199)
!204 = !DILocation(line: 267, column: 6, scope: !199)
!205 = !DILocation(line: 267, column: 4, scope: !199)
!206 = !DILocation(line: 270, column: 3, scope: !78)
!207 = !DILocation(line: 270, column: 10, scope: !78)
!208 = !DILocation(line: 270, column: 15, scope: !78)
!209 = !DILocation(line: 270, column: 12, scope: !78)
!210 = !DILocation(line: 270, column: 17, scope: !78)
!211 = !DILocation(line: 270, column: 27, scope: !78)
!212 = !DILocation(line: 270, column: 34, scope: !78)
!213 = !DILocation(line: 270, column: 32, scope: !78)
!214 = !DILocation(line: 270, column: 37, scope: !78)
!215 = !DILocation(line: 270, column: 44, scope: !78)
!216 = !DILocation(line: 270, column: 42, scope: !78)
!217 = !DILocation(line: 270, column: 47, scope: !78)
!218 = !DILocation(line: 270, column: 57, scope: !78)
!219 = !DILocation(line: 270, column: 20, scope: !78)
!220 = !DILocation(line: 270, column: 63, scope: !78)
!221 = !DILocation(line: 0, scope: !78)
!222 = !DILocation(line: 271, column: 15, scope: !78)
!223 = !DILocation(line: 271, column: 18, scope: !78)
!224 = !DILocation(line: 271, column: 25, scope: !78)
!225 = !DILocation(line: 271, column: 8, scope: !78)
!226 = !DILocation(line: 271, column: 6, scope: !78)
!227 = distinct !{!227, !206, !228, !196, !197}
!228 = !DILocation(line: 271, column: 29, scope: !78)
!229 = !DILocation(line: 272, column: 7, scope: !78)
!230 = !DILocation(line: 272, column: 5, scope: !78)
!231 = !DILocation(line: 273, column: 3, scope: !78)
!232 = !DILocation(line: 273, column: 10, scope: !78)
!233 = !DILocation(line: 273, column: 15, scope: !78)
!234 = !DILocation(line: 273, column: 12, scope: !78)
!235 = !DILocation(line: 274, column: 15, scope: !236)
!236 = distinct !DILexicalBlock(scope: !78, file: !3, line: 273, column: 18)
!237 = !DILocation(line: 274, column: 18, scope: !236)
!238 = !DILocation(line: 274, column: 25, scope: !236)
!239 = !DILocation(line: 274, column: 8, scope: !236)
!240 = !DILocation(line: 274, column: 6, scope: !236)
!241 = !DILocation(line: 275, column: 12, scope: !236)
!242 = !DILocation(line: 275, column: 19, scope: !236)
!243 = !DILocation(line: 275, column: 17, scope: !236)
!244 = !DILocation(line: 275, column: 22, scope: !236)
!245 = !DILocation(line: 275, column: 29, scope: !236)
!246 = !DILocation(line: 275, column: 27, scope: !236)
!247 = !DILocation(line: 275, column: 32, scope: !236)
!248 = !DILocation(line: 275, column: 38, scope: !236)
!249 = !DILocation(line: 275, column: 49, scope: !236)
!250 = !DILocation(line: 275, column: 4, scope: !236)
!251 = distinct !{!251, !231, !252, !196, !197}
!252 = !DILocation(line: 276, column: 3, scope: !78)
!253 = !DILocation(line: 277, column: 2, scope: !79)
!254 = !DILocation(line: 242, column: 2, scope: !79)
!255 = distinct !{!255, !256, !257, !197}
!256 = !DILocation(line: 242, column: 2, scope: !80)
!257 = !DILocation(line: 277, column: 2, scope: !80)
!258 = !DILocation(line: 278, column: 1, scope: !58)
!259 = distinct !DISubprogram(name: "is_aligned", scope: !3, file: !3, line: 33, type: !260, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !12, !61, !31}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !6, line: 35, baseType: !263)
!263 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!264 = !{!265, !266, !267, !268}
!265 = !DILocalVariable(name: "base", arg: 1, scope: !259, file: !3, line: 33, type: !12)
!266 = !DILocalVariable(name: "size", arg: 2, scope: !259, file: !3, line: 33, type: !61)
!267 = !DILocalVariable(name: "align", arg: 3, scope: !259, file: !3, line: 33, type: !31)
!268 = !DILocalVariable(name: "lsbits", scope: !259, file: !3, line: 35, type: !31)
!269 = !DILocation(line: 33, column: 36, scope: !259)
!270 = !DILocation(line: 33, column: 49, scope: !259)
!271 = !DILocation(line: 33, column: 69, scope: !259)
!272 = !DILocation(line: 35, column: 2, scope: !259)
!273 = !DILocation(line: 35, column: 16, scope: !259)
!274 = !DILocation(line: 35, column: 40, scope: !259)
!275 = !DILocation(line: 35, column: 25, scope: !259)
!276 = !DILocation(line: 37, column: 8, scope: !259)
!277 = !DILocation(line: 41, column: 10, scope: !259)
!278 = !DILocation(line: 41, column: 20, scope: !259)
!279 = !DILocation(line: 41, column: 26, scope: !259)
!280 = !DILocation(line: 41, column: 17, scope: !259)
!281 = !DILocation(line: 41, column: 32, scope: !259)
!282 = !DILocation(line: 42, column: 1, scope: !259)
!283 = !DILocation(line: 41, column: 2, scope: !259)
!284 = distinct !DISubprogram(name: "do_swap", scope: !3, file: !3, line: 139, type: !285, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !10, !10, !61, !5, !12}
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "a", arg: 1, scope: !284, file: !3, line: 139, type: !10)
!289 = !DILocalVariable(name: "b", arg: 2, scope: !284, file: !3, line: 139, type: !10)
!290 = !DILocalVariable(name: "size", arg: 3, scope: !284, file: !3, line: 139, type: !61)
!291 = !DILocalVariable(name: "swap_func", arg: 4, scope: !284, file: !3, line: 139, type: !5)
!292 = !DILocalVariable(name: "priv", arg: 5, scope: !284, file: !3, line: 139, type: !12)
!293 = !DILocation(line: 139, column: 27, scope: !284)
!294 = !DILocation(line: 139, column: 36, scope: !284)
!295 = !DILocation(line: 139, column: 46, scope: !284)
!296 = !DILocation(line: 139, column: 66, scope: !284)
!297 = !DILocation(line: 139, column: 89, scope: !284)
!298 = !DILocation(line: 141, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !284, file: !3, line: 141, column: 6)
!300 = !DILocation(line: 141, column: 16, scope: !299)
!301 = !DILocation(line: 141, column: 6, scope: !284)
!302 = !DILocation(line: 142, column: 28, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 141, column: 33)
!304 = !DILocation(line: 142, column: 35, scope: !303)
!305 = !DILocation(line: 142, column: 40, scope: !303)
!306 = !DILocation(line: 142, column: 43, scope: !303)
!307 = !DILocation(line: 142, column: 51, scope: !303)
!308 = !DILocation(line: 142, column: 46, scope: !303)
!309 = !DILocation(line: 142, column: 3, scope: !303)
!310 = !DILocation(line: 143, column: 3, scope: !303)
!311 = !DILocation(line: 146, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !284, file: !3, line: 146, column: 6)
!313 = !DILocation(line: 146, column: 16, scope: !312)
!314 = !DILocation(line: 146, column: 6, scope: !284)
!315 = !DILocation(line: 147, column: 17, scope: !312)
!316 = !DILocation(line: 147, column: 20, scope: !312)
!317 = !DILocation(line: 147, column: 23, scope: !312)
!318 = !DILocation(line: 147, column: 3, scope: !312)
!319 = !DILocation(line: 148, column: 11, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !3, line: 148, column: 11)
!321 = !DILocation(line: 148, column: 21, scope: !320)
!322 = !DILocation(line: 148, column: 11, scope: !312)
!323 = !DILocation(line: 149, column: 17, scope: !320)
!324 = !DILocation(line: 149, column: 20, scope: !320)
!325 = !DILocation(line: 149, column: 23, scope: !320)
!326 = !DILocation(line: 149, column: 3, scope: !320)
!327 = !DILocation(line: 150, column: 11, scope: !328)
!328 = distinct !DILexicalBlock(scope: !320, file: !3, line: 150, column: 11)
!329 = !DILocation(line: 150, column: 21, scope: !328)
!330 = !DILocation(line: 150, column: 11, scope: !320)
!331 = !DILocation(line: 151, column: 14, scope: !328)
!332 = !DILocation(line: 151, column: 17, scope: !328)
!333 = !DILocation(line: 151, column: 20, scope: !328)
!334 = !DILocation(line: 151, column: 3, scope: !328)
!335 = !DILocation(line: 153, column: 3, scope: !328)
!336 = !DILocation(line: 153, column: 13, scope: !328)
!337 = !DILocation(line: 153, column: 16, scope: !328)
!338 = !DILocation(line: 153, column: 24, scope: !328)
!339 = !DILocation(line: 153, column: 19, scope: !328)
!340 = !DILocation(line: 153, column: 30, scope: !328)
!341 = !DILocation(line: 154, column: 1, scope: !284)
!342 = distinct !DISubprogram(name: "do_cmp", scope: !3, file: !3, line: 158, type: !343, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!11, !12, !12, !27, !12}
!345 = !{!346, !347, !348, !349}
!346 = !DILocalVariable(name: "a", arg: 1, scope: !342, file: !3, line: 158, type: !12)
!347 = !DILocalVariable(name: "b", arg: 2, scope: !342, file: !3, line: 158, type: !12)
!348 = !DILocalVariable(name: "cmp", arg: 3, scope: !342, file: !3, line: 158, type: !27)
!349 = !DILocalVariable(name: "priv", arg: 4, scope: !342, file: !3, line: 158, type: !12)
!350 = !DILocation(line: 158, column: 31, scope: !342)
!351 = !DILocation(line: 158, column: 46, scope: !342)
!352 = !DILocation(line: 158, column: 62, scope: !342)
!353 = !DILocation(line: 158, column: 79, scope: !342)
!354 = !DILocation(line: 160, column: 6, scope: !355)
!355 = distinct !DILexicalBlock(scope: !342, file: !3, line: 160, column: 6)
!356 = !DILocation(line: 160, column: 10, scope: !355)
!357 = !DILocation(line: 160, column: 6, scope: !342)
!358 = !DILocation(line: 161, column: 35, scope: !355)
!359 = !DILocation(line: 161, column: 42, scope: !355)
!360 = !DILocation(line: 161, column: 46, scope: !355)
!361 = !DILocation(line: 161, column: 49, scope: !355)
!362 = !DILocation(line: 161, column: 10, scope: !355)
!363 = !DILocation(line: 161, column: 3, scope: !355)
!364 = !DILocation(line: 162, column: 9, scope: !342)
!365 = !DILocation(line: 162, column: 13, scope: !342)
!366 = !DILocation(line: 162, column: 16, scope: !342)
!367 = !DILocation(line: 162, column: 19, scope: !342)
!368 = !DILocation(line: 162, column: 2, scope: !342)
!369 = !DILocation(line: 163, column: 1, scope: !342)
!370 = distinct !DISubprogram(name: "parent", scope: !3, file: !3, line: 184, type: !371, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!61, !61, !43, !61}
!373 = !{!374, !375, !376}
!374 = !DILocalVariable(name: "i", arg: 1, scope: !370, file: !3, line: 184, type: !61)
!375 = !DILocalVariable(name: "lsbit", arg: 2, scope: !370, file: !3, line: 184, type: !43)
!376 = !DILocalVariable(name: "size", arg: 3, scope: !370, file: !3, line: 184, type: !61)
!377 = !DILocation(line: 184, column: 29, scope: !370)
!378 = !DILocation(line: 184, column: 45, scope: !370)
!379 = !DILocation(line: 184, column: 59, scope: !370)
!380 = !DILocation(line: 186, column: 7, scope: !370)
!381 = !DILocation(line: 186, column: 4, scope: !370)
!382 = !DILocation(line: 187, column: 7, scope: !370)
!383 = !DILocation(line: 187, column: 16, scope: !370)
!384 = !DILocation(line: 187, column: 20, scope: !370)
!385 = !DILocation(line: 187, column: 18, scope: !370)
!386 = !DILocation(line: 187, column: 14, scope: !370)
!387 = !DILocation(line: 187, column: 12, scope: !370)
!388 = !DILocation(line: 187, column: 4, scope: !370)
!389 = !DILocation(line: 188, column: 9, scope: !370)
!390 = !DILocation(line: 188, column: 11, scope: !370)
!391 = !DILocation(line: 188, column: 2, scope: !370)
!392 = distinct !DISubprogram(name: "sort", scope: !3, file: !3, line: 281, type: !393, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !10, !61, !61, !18, !23}
!395 = !{!396, !397, !398, !399, !400, !401}
!396 = !DILocalVariable(name: "base", arg: 1, scope: !392, file: !3, line: 281, type: !10)
!397 = !DILocalVariable(name: "num", arg: 2, scope: !392, file: !3, line: 281, type: !61)
!398 = !DILocalVariable(name: "size", arg: 3, scope: !392, file: !3, line: 281, type: !61)
!399 = !DILocalVariable(name: "cmp_func", arg: 4, scope: !392, file: !3, line: 282, type: !18)
!400 = !DILocalVariable(name: "swap_func", arg: 5, scope: !392, file: !3, line: 283, type: !23)
!401 = !DILocalVariable(name: "w", scope: !392, file: !3, line: 285, type: !15)
!402 = !DILocation(line: 281, column: 17, scope: !392)
!403 = !DILocation(line: 281, column: 30, scope: !392)
!404 = !DILocation(line: 281, column: 42, scope: !392)
!405 = !DILocation(line: 282, column: 15, scope: !392)
!406 = !DILocation(line: 283, column: 16, scope: !392)
!407 = !DILocation(line: 285, column: 2, scope: !392)
!408 = !DILocation(line: 285, column: 17, scope: !392)
!409 = !DILocation(line: 285, column: 21, scope: !392)
!410 = !DILocation(line: 286, column: 11, scope: !392)
!411 = !DILocation(line: 287, column: 11, scope: !392)
!412 = !DILocation(line: 290, column: 16, scope: !392)
!413 = !DILocation(line: 290, column: 22, scope: !392)
!414 = !DILocation(line: 290, column: 27, scope: !392)
!415 = !DILocation(line: 290, column: 9, scope: !392)
!416 = !DILocation(line: 291, column: 1, scope: !392)
!417 = distinct !DISubprogram(name: "swap_words_64", scope: !3, file: !3, line: 83, type: !418, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !10, !10, !61}
!420 = !{!421, !422, !423, !424}
!421 = !DILocalVariable(name: "a", arg: 1, scope: !417, file: !3, line: 83, type: !10)
!422 = !DILocalVariable(name: "b", arg: 2, scope: !417, file: !3, line: 83, type: !10)
!423 = !DILocalVariable(name: "n", arg: 3, scope: !417, file: !3, line: 83, type: !61)
!424 = !DILocalVariable(name: "t", scope: !425, file: !3, line: 87, type: !35)
!425 = distinct !DILexicalBlock(scope: !417, file: !3, line: 85, column: 5)
!426 = !DILocation(line: 83, column: 33, scope: !417)
!427 = !DILocation(line: 83, column: 42, scope: !417)
!428 = !DILocation(line: 83, column: 52, scope: !417)
!429 = !DILocation(line: 85, column: 2, scope: !417)
!430 = !DILocation(line: 87, column: 3, scope: !425)
!431 = !DILocation(line: 87, column: 7, scope: !425)
!432 = !DILocation(line: 87, column: 20, scope: !425)
!433 = !DILocation(line: 87, column: 27, scope: !425)
!434 = !DILocation(line: 87, column: 22, scope: !425)
!435 = !DILocation(line: 87, column: 11, scope: !425)
!436 = !DILocation(line: 88, column: 30, scope: !425)
!437 = !DILocation(line: 88, column: 34, scope: !425)
!438 = !DILocation(line: 88, column: 32, scope: !425)
!439 = !DILocation(line: 88, column: 21, scope: !425)
!440 = !DILocation(line: 88, column: 12, scope: !425)
!441 = !DILocation(line: 88, column: 16, scope: !425)
!442 = !DILocation(line: 88, column: 14, scope: !425)
!443 = !DILocation(line: 88, column: 19, scope: !425)
!444 = !DILocation(line: 89, column: 21, scope: !425)
!445 = !DILocation(line: 89, column: 12, scope: !425)
!446 = !DILocation(line: 89, column: 16, scope: !425)
!447 = !DILocation(line: 89, column: 14, scope: !425)
!448 = !DILocation(line: 89, column: 19, scope: !425)
!449 = !DILocation(line: 100, column: 2, scope: !417)
!450 = !DILocation(line: 100, column: 2, scope: !425)
!451 = !DILocation(line: 100, column: 11, scope: !417)
!452 = distinct !{!452, !429, !453, !196, !197}
!453 = !DILocation(line: 100, column: 12, scope: !417)
!454 = !DILocation(line: 101, column: 1, scope: !417)
!455 = distinct !DISubprogram(name: "swap_words_32", scope: !3, file: !3, line: 58, type: !418, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !456)
!456 = !{!457, !458, !459, !460}
!457 = !DILocalVariable(name: "a", arg: 1, scope: !455, file: !3, line: 58, type: !10)
!458 = !DILocalVariable(name: "b", arg: 2, scope: !455, file: !3, line: 58, type: !10)
!459 = !DILocalVariable(name: "n", arg: 3, scope: !455, file: !3, line: 58, type: !61)
!460 = !DILocalVariable(name: "t", scope: !461, file: !3, line: 61, type: !41)
!461 = distinct !DILexicalBlock(scope: !455, file: !3, line: 60, column: 5)
!462 = !DILocation(line: 58, column: 33, scope: !455)
!463 = !DILocation(line: 58, column: 42, scope: !455)
!464 = !DILocation(line: 58, column: 52, scope: !455)
!465 = !DILocation(line: 60, column: 2, scope: !455)
!466 = !DILocation(line: 61, column: 3, scope: !461)
!467 = !DILocation(line: 61, column: 7, scope: !461)
!468 = !DILocation(line: 61, column: 20, scope: !461)
!469 = !DILocation(line: 61, column: 27, scope: !461)
!470 = !DILocation(line: 61, column: 22, scope: !461)
!471 = !DILocation(line: 61, column: 11, scope: !461)
!472 = !DILocation(line: 62, column: 30, scope: !461)
!473 = !DILocation(line: 62, column: 34, scope: !461)
!474 = !DILocation(line: 62, column: 32, scope: !461)
!475 = !DILocation(line: 62, column: 21, scope: !461)
!476 = !DILocation(line: 62, column: 12, scope: !461)
!477 = !DILocation(line: 62, column: 16, scope: !461)
!478 = !DILocation(line: 62, column: 14, scope: !461)
!479 = !DILocation(line: 62, column: 19, scope: !461)
!480 = !DILocation(line: 63, column: 21, scope: !461)
!481 = !DILocation(line: 63, column: 12, scope: !461)
!482 = !DILocation(line: 63, column: 16, scope: !461)
!483 = !DILocation(line: 63, column: 14, scope: !461)
!484 = !DILocation(line: 63, column: 19, scope: !461)
!485 = !DILocation(line: 64, column: 2, scope: !455)
!486 = !DILocation(line: 64, column: 2, scope: !461)
!487 = !DILocation(line: 64, column: 11, scope: !455)
!488 = distinct !{!488, !465, !489, !196, !197}
!489 = !DILocation(line: 64, column: 12, scope: !455)
!490 = !DILocation(line: 65, column: 1, scope: !455)
!491 = distinct !DISubprogram(name: "swap_bytes", scope: !3, file: !3, line: 111, type: !418, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!492 = !{!493, !494, !495, !496}
!493 = !DILocalVariable(name: "a", arg: 1, scope: !491, file: !3, line: 111, type: !10)
!494 = !DILocalVariable(name: "b", arg: 2, scope: !491, file: !3, line: 111, type: !10)
!495 = !DILocalVariable(name: "n", arg: 3, scope: !491, file: !3, line: 111, type: !61)
!496 = !DILocalVariable(name: "t", scope: !497, file: !3, line: 114, type: !45)
!497 = distinct !DILexicalBlock(scope: !491, file: !3, line: 113, column: 5)
!498 = !DILocation(line: 111, column: 30, scope: !491)
!499 = !DILocation(line: 111, column: 39, scope: !491)
!500 = !DILocation(line: 111, column: 49, scope: !491)
!501 = !DILocation(line: 113, column: 2, scope: !491)
!502 = !DILocation(line: 114, column: 3, scope: !497)
!503 = !DILocation(line: 114, column: 8, scope: !497)
!504 = !DILocation(line: 114, column: 21, scope: !497)
!505 = !DILocation(line: 114, column: 24, scope: !497)
!506 = !DILocation(line: 114, column: 12, scope: !497)
!507 = !DILocation(line: 115, column: 29, scope: !497)
!508 = !DILocation(line: 115, column: 32, scope: !497)
!509 = !DILocation(line: 115, column: 20, scope: !497)
!510 = !DILocation(line: 115, column: 12, scope: !497)
!511 = !DILocation(line: 115, column: 15, scope: !497)
!512 = !DILocation(line: 115, column: 3, scope: !497)
!513 = !DILocation(line: 115, column: 18, scope: !497)
!514 = !DILocation(line: 116, column: 20, scope: !497)
!515 = !DILocation(line: 116, column: 12, scope: !497)
!516 = !DILocation(line: 116, column: 15, scope: !497)
!517 = !DILocation(line: 116, column: 3, scope: !497)
!518 = !DILocation(line: 116, column: 18, scope: !497)
!519 = !DILocation(line: 117, column: 2, scope: !491)
!520 = !DILocation(line: 117, column: 2, scope: !497)
!521 = !DILocation(line: 117, column: 11, scope: !491)
!522 = distinct !{!522, !501, !523, !196, !197}
!523 = !DILocation(line: 117, column: 12, scope: !491)
!524 = !DILocation(line: 118, column: 1, scope: !491)
