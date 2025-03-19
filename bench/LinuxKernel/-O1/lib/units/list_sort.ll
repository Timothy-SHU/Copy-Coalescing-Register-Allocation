; ModuleID = 'lib/list_sort.c'
source_filename = "lib/list_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_list_sort: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad list_sort ; .previous"

%struct.list_head = type { ptr, ptr }

@__UNIQUE_ID___addressable_list_sort30 = internal global ptr @list_sort, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_list_sort30], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @list_sort(ptr noundef %priv, ptr noundef %head, ptr noundef %cmp) #0 align 16 !dbg !16 {
entry:
  %priv.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %cmp.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %pending = alloca ptr, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %bits = alloca i64, align 8
  %tail = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %next19 = alloca ptr, align 8
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !34, metadata !DIExpression()), !dbg !57
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !35, metadata !DIExpression()), !dbg !58
  store ptr %cmp, ptr %cmp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp.addr, metadata !36, metadata !DIExpression()), !dbg !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #4, !dbg !60
  call void @llvm.dbg.declare(metadata ptr %list, metadata !37, metadata !DIExpression()), !dbg !61
  %0 = load ptr, ptr %head.addr, align 8, !dbg !62
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !63
  %1 = load ptr, ptr %next, align 8, !dbg !63
  store ptr %1, ptr %list, align 8, !dbg !61
  call void @llvm.lifetime.start.p0(i64 8, ptr %pending) #4, !dbg !60
  call void @llvm.dbg.declare(metadata ptr %pending, metadata !38, metadata !DIExpression()), !dbg !64
  store ptr null, ptr %pending, align 8, !dbg !64
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #4, !dbg !65
  call void @llvm.dbg.declare(metadata ptr %count, metadata !39, metadata !DIExpression()), !dbg !66
  store i64 0, ptr %count, align 8, !dbg !66
  %2 = load ptr, ptr %list, align 8, !dbg !67
  %3 = load ptr, ptr %head.addr, align 8, !dbg !69
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !70
  %4 = load ptr, ptr %prev, align 8, !dbg !70
  %cmp1 = icmp eq ptr %2, %4, !dbg !71
  br i1 %cmp1, label %if.then, label %if.end, !dbg !72

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !73

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %head.addr, align 8, !dbg !74
  %prev2 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !75
  %6 = load ptr, ptr %prev2, align 8, !dbg !75
  %next3 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !76
  store ptr null, ptr %next3, align 8, !dbg !77
  br label %do.body, !dbg !78

do.body:                                          ; preds = %do.cond, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #4, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !45, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #4, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !47, metadata !DIExpression()), !dbg !82
  store ptr %pending, ptr %tail, align 8, !dbg !82
  %7 = load i64, ptr %count, align 8, !dbg !83
  store i64 %7, ptr %bits, align 8, !dbg !85
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.inc, %do.body
  %8 = load i64, ptr %bits, align 8, !dbg !87
  %and = and i64 %8, 1, !dbg !89
  %tobool = icmp ne i64 %and, 0, !dbg !90
  br i1 %tobool, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %tail, align 8, !dbg !91
  %10 = load ptr, ptr %9, align 8, !dbg !92
  %prev4 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1, !dbg !93
  store ptr %prev4, ptr %tail, align 8, !dbg !94
  br label %for.inc, !dbg !95

for.inc:                                          ; preds = %for.body
  %11 = load i64, ptr %bits, align 8, !dbg !96
  %shr = lshr i64 %11, 1, !dbg !96
  store i64 %shr, ptr %bits, align 8, !dbg !96
  br label %for.cond, !dbg !97, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %bits, align 8, !dbg !102
  %tobool5 = icmp ne i64 %12, 0, !dbg !102
  %lnot = xor i1 %tobool5, true, !dbg !102
  %lnot6 = xor i1 %lnot, true, !dbg !102
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !102
  %conv = sext i32 %lnot.ext to i64, !dbg !102
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !102
  %tobool7 = icmp ne i64 %expval, 0, !dbg !102
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !103

if.then8:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #4, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %a, metadata !49, metadata !DIExpression()), !dbg !105
  %13 = load ptr, ptr %tail, align 8, !dbg !106
  %14 = load ptr, ptr %13, align 8, !dbg !107
  store ptr %14, ptr %a, align 8, !dbg !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %b, metadata !52, metadata !DIExpression()), !dbg !108
  %15 = load ptr, ptr %a, align 8, !dbg !109
  %prev9 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1, !dbg !110
  %16 = load ptr, ptr %prev9, align 8, !dbg !110
  store ptr %16, ptr %b, align 8, !dbg !108
  %17 = load ptr, ptr %priv.addr, align 8, !dbg !111
  %18 = load ptr, ptr %cmp.addr, align 8, !dbg !112
  %19 = load ptr, ptr %b, align 8, !dbg !113
  %20 = load ptr, ptr %a, align 8, !dbg !114
  %call = call ptr @merge(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #5, !dbg !115
  store ptr %call, ptr %a, align 8, !dbg !116
  %21 = load ptr, ptr %b, align 8, !dbg !117
  %prev10 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1, !dbg !118
  %22 = load ptr, ptr %prev10, align 8, !dbg !118
  %23 = load ptr, ptr %a, align 8, !dbg !119
  %prev11 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1, !dbg !120
  store ptr %22, ptr %prev11, align 8, !dbg !121
  %24 = load ptr, ptr %a, align 8, !dbg !122
  %25 = load ptr, ptr %tail, align 8, !dbg !123
  store ptr %24, ptr %25, align 8, !dbg !124
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !125
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #4, !dbg !125
  br label %if.end12, !dbg !126

if.end12:                                         ; preds = %if.then8, %for.end
  %26 = load ptr, ptr %pending, align 8, !dbg !127
  %27 = load ptr, ptr %list, align 8, !dbg !128
  %prev13 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1, !dbg !129
  store ptr %26, ptr %prev13, align 8, !dbg !130
  %28 = load ptr, ptr %list, align 8, !dbg !131
  store ptr %28, ptr %pending, align 8, !dbg !132
  %29 = load ptr, ptr %list, align 8, !dbg !133
  %next14 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 0, !dbg !134
  %30 = load ptr, ptr %next14, align 8, !dbg !134
  store ptr %30, ptr %list, align 8, !dbg !135
  %31 = load ptr, ptr %pending, align 8, !dbg !136
  %next15 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 0, !dbg !137
  store ptr null, ptr %next15, align 8, !dbg !138
  %32 = load i64, ptr %count, align 8, !dbg !139
  %inc = add i64 %32, 1, !dbg !139
  store i64 %inc, ptr %count, align 8, !dbg !139
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #4, !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #4, !dbg !140
  br label %do.cond, !dbg !141

do.cond:                                          ; preds = %if.end12
  %33 = load ptr, ptr %list, align 8, !dbg !142
  %tobool16 = icmp ne ptr %33, null, !dbg !141
  br i1 %tobool16, label %do.body, label %do.end, !dbg !141, !llvm.loop !143

do.end:                                           ; preds = %do.cond
  %34 = load ptr, ptr %pending, align 8, !dbg !145
  store ptr %34, ptr %list, align 8, !dbg !146
  %35 = load ptr, ptr %pending, align 8, !dbg !147
  %prev17 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1, !dbg !148
  %36 = load ptr, ptr %prev17, align 8, !dbg !148
  store ptr %36, ptr %pending, align 8, !dbg !149
  br label %for.cond18, !dbg !150

for.cond18:                                       ; preds = %cleanup.cont, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %next19) #4, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %next19, metadata !53, metadata !DIExpression()), !dbg !152
  %37 = load ptr, ptr %pending, align 8, !dbg !153
  %prev20 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1, !dbg !154
  %38 = load ptr, ptr %prev20, align 8, !dbg !154
  store ptr %38, ptr %next19, align 8, !dbg !152
  %39 = load ptr, ptr %next19, align 8, !dbg !155
  %tobool21 = icmp ne ptr %39, null, !dbg !155
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !157

if.then22:                                        ; preds = %for.cond18
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !158

if.end23:                                         ; preds = %for.cond18
  %40 = load ptr, ptr %priv.addr, align 8, !dbg !159
  %41 = load ptr, ptr %cmp.addr, align 8, !dbg !160
  %42 = load ptr, ptr %pending, align 8, !dbg !161
  %43 = load ptr, ptr %list, align 8, !dbg !162
  %call24 = call ptr @merge(ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43) #5, !dbg !163
  store ptr %call24, ptr %list, align 8, !dbg !164
  %44 = load ptr, ptr %next19, align 8, !dbg !165
  store ptr %44, ptr %pending, align 8, !dbg !166
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !167
  br label %cleanup, !dbg !167

cleanup:                                          ; preds = %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %next19) #4, !dbg !167
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.end25
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond18, !dbg !168, !llvm.loop !169

for.end25:                                        ; preds = %cleanup
  %45 = load ptr, ptr %priv.addr, align 8, !dbg !172
  %46 = load ptr, ptr %cmp.addr, align 8, !dbg !173
  %47 = load ptr, ptr %head.addr, align 8, !dbg !174
  %48 = load ptr, ptr %pending, align 8, !dbg !175
  %49 = load ptr, ptr %list, align 8, !dbg !176
  call void @merge_final(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49) #5, !dbg !177
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !178
  br label %cleanup26, !dbg !178

cleanup26:                                        ; preds = %for.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #4, !dbg !178
  call void @llvm.lifetime.end.p0(i64 8, ptr %pending) #4, !dbg !178
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #4, !dbg !178
  %cleanup.dest29 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest29, label %unreachable [
    i32 0, label %cleanup.cont30
    i32 1, label %cleanup.cont30
  ]

cleanup.cont30:                                   ; preds = %cleanup26, %cleanup26
  ret void, !dbg !178

unreachable:                                      ; preds = %cleanup26, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @merge(ptr noundef %priv, ptr noundef %cmp, ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !179 {
entry:
  %priv.addr = alloca ptr, align 8
  %cmp.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %tail = alloca ptr, align 8
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !183, metadata !DIExpression()), !dbg !189
  store ptr %cmp, ptr %cmp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp.addr, metadata !184, metadata !DIExpression()), !dbg !190
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !185, metadata !DIExpression()), !dbg !191
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !186, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %head, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #4, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !188, metadata !DIExpression()), !dbg !195
  store ptr %head, ptr %tail, align 8, !dbg !195
  br label %for.cond, !dbg !196

for.cond:                                         ; preds = %if.end9, %entry
  %0 = load ptr, ptr %cmp.addr, align 8, !dbg !197
  %1 = load ptr, ptr %priv.addr, align 8, !dbg !202
  %2 = load ptr, ptr %a.addr, align 8, !dbg !203
  %3 = load ptr, ptr %b.addr, align 8, !dbg !204
  %call = call i32 %0(ptr noundef %1, ptr noundef %2, ptr noundef %3) #5, !dbg !197
  %cmp1 = icmp sle i32 %call, 0, !dbg !205
  br i1 %cmp1, label %if.then, label %if.else, !dbg !206

if.then:                                          ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !dbg !207
  %5 = load ptr, ptr %tail, align 8, !dbg !209
  store ptr %4, ptr %5, align 8, !dbg !210
  %6 = load ptr, ptr %a.addr, align 8, !dbg !211
  %next = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !212
  store ptr %next, ptr %tail, align 8, !dbg !213
  %7 = load ptr, ptr %a.addr, align 8, !dbg !214
  %next2 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !215
  %8 = load ptr, ptr %next2, align 8, !dbg !215
  store ptr %8, ptr %a.addr, align 8, !dbg !216
  %9 = load ptr, ptr %a.addr, align 8, !dbg !217
  %tobool = icmp ne ptr %9, null, !dbg !217
  br i1 %tobool, label %if.end, label %if.then3, !dbg !219

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %b.addr, align 8, !dbg !220
  %11 = load ptr, ptr %tail, align 8, !dbg !222
  store ptr %10, ptr %11, align 8, !dbg !223
  br label %for.end, !dbg !224

if.end:                                           ; preds = %if.then
  br label %if.end9, !dbg !225

if.else:                                          ; preds = %for.cond
  %12 = load ptr, ptr %b.addr, align 8, !dbg !226
  %13 = load ptr, ptr %tail, align 8, !dbg !228
  store ptr %12, ptr %13, align 8, !dbg !229
  %14 = load ptr, ptr %b.addr, align 8, !dbg !230
  %next4 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 0, !dbg !231
  store ptr %next4, ptr %tail, align 8, !dbg !232
  %15 = load ptr, ptr %b.addr, align 8, !dbg !233
  %next5 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !234
  %16 = load ptr, ptr %next5, align 8, !dbg !234
  store ptr %16, ptr %b.addr, align 8, !dbg !235
  %17 = load ptr, ptr %b.addr, align 8, !dbg !236
  %tobool6 = icmp ne ptr %17, null, !dbg !236
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !238

if.then7:                                         ; preds = %if.else
  %18 = load ptr, ptr %a.addr, align 8, !dbg !239
  %19 = load ptr, ptr %tail, align 8, !dbg !241
  store ptr %18, ptr %19, align 8, !dbg !242
  br label %for.end, !dbg !243

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  br label %for.cond, !dbg !244, !llvm.loop !245

for.end:                                          ; preds = %if.then7, %if.then3
  %20 = load ptr, ptr %head, align 8, !dbg !248
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4, !dbg !249
  ret ptr %20, !dbg !250
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @merge_final(ptr noundef %priv, ptr noundef %cmp, ptr noundef %head, ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !251 {
entry:
  %priv.addr = alloca ptr, align 8
  %cmp.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %tail = alloca ptr, align 8
  %count = alloca i8, align 1
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !255, metadata !DIExpression()), !dbg !267
  store ptr %cmp, ptr %cmp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp.addr, metadata !256, metadata !DIExpression()), !dbg !268
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !257, metadata !DIExpression()), !dbg !269
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !258, metadata !DIExpression()), !dbg !270
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !259, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #4, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !260, metadata !DIExpression()), !dbg !273
  %0 = load ptr, ptr %head.addr, align 8, !dbg !274
  store ptr %0, ptr %tail, align 8, !dbg !273
  call void @llvm.lifetime.start.p0(i64 1, ptr %count) #4, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %count, metadata !261, metadata !DIExpression()), !dbg !276
  store i8 0, ptr %count, align 1, !dbg !276
  br label %for.cond, !dbg !277

for.cond:                                         ; preds = %if.end10, %entry
  %1 = load ptr, ptr %cmp.addr, align 8, !dbg !278
  %2 = load ptr, ptr %priv.addr, align 8, !dbg !283
  %3 = load ptr, ptr %a.addr, align 8, !dbg !284
  %4 = load ptr, ptr %b.addr, align 8, !dbg !285
  %call = call i32 %1(ptr noundef %2, ptr noundef %3, ptr noundef %4) #5, !dbg !278
  %cmp1 = icmp sle i32 %call, 0, !dbg !286
  br i1 %cmp1, label %if.then, label %if.else, !dbg !287

if.then:                                          ; preds = %for.cond
  %5 = load ptr, ptr %a.addr, align 8, !dbg !288
  %6 = load ptr, ptr %tail, align 8, !dbg !290
  %next = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !291
  store ptr %5, ptr %next, align 8, !dbg !292
  %7 = load ptr, ptr %tail, align 8, !dbg !293
  %8 = load ptr, ptr %a.addr, align 8, !dbg !294
  %prev = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !295
  store ptr %7, ptr %prev, align 8, !dbg !296
  %9 = load ptr, ptr %a.addr, align 8, !dbg !297
  store ptr %9, ptr %tail, align 8, !dbg !298
  %10 = load ptr, ptr %a.addr, align 8, !dbg !299
  %next2 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !300
  %11 = load ptr, ptr %next2, align 8, !dbg !300
  store ptr %11, ptr %a.addr, align 8, !dbg !301
  %12 = load ptr, ptr %a.addr, align 8, !dbg !302
  %tobool = icmp ne ptr %12, null, !dbg !302
  br i1 %tobool, label %if.end, label %if.then3, !dbg !304

if.then3:                                         ; preds = %if.then
  br label %for.end, !dbg !305

if.end:                                           ; preds = %if.then
  br label %if.end10, !dbg !306

if.else:                                          ; preds = %for.cond
  %13 = load ptr, ptr %b.addr, align 8, !dbg !307
  %14 = load ptr, ptr %tail, align 8, !dbg !309
  %next4 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 0, !dbg !310
  store ptr %13, ptr %next4, align 8, !dbg !311
  %15 = load ptr, ptr %tail, align 8, !dbg !312
  %16 = load ptr, ptr %b.addr, align 8, !dbg !313
  %prev5 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1, !dbg !314
  store ptr %15, ptr %prev5, align 8, !dbg !315
  %17 = load ptr, ptr %b.addr, align 8, !dbg !316
  store ptr %17, ptr %tail, align 8, !dbg !317
  %18 = load ptr, ptr %b.addr, align 8, !dbg !318
  %next6 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 0, !dbg !319
  %19 = load ptr, ptr %next6, align 8, !dbg !319
  store ptr %19, ptr %b.addr, align 8, !dbg !320
  %20 = load ptr, ptr %b.addr, align 8, !dbg !321
  %tobool7 = icmp ne ptr %20, null, !dbg !321
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !323

if.then8:                                         ; preds = %if.else
  %21 = load ptr, ptr %a.addr, align 8, !dbg !324
  store ptr %21, ptr %b.addr, align 8, !dbg !326
  br label %for.end, !dbg !327

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  br label %for.cond, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %if.then8, %if.then3
  %22 = load ptr, ptr %b.addr, align 8, !dbg !332
  %23 = load ptr, ptr %tail, align 8, !dbg !333
  %next11 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 0, !dbg !334
  store ptr %22, ptr %next11, align 8, !dbg !335
  br label %do.body, !dbg !336

do.body:                                          ; preds = %do.cond, %for.end
  %24 = load i8, ptr %count, align 1, !dbg !337
  %inc = add i8 %24, 1, !dbg !337
  store i8 %inc, ptr %count, align 1, !dbg !337
  %tobool12 = icmp ne i8 %inc, 0, !dbg !337
  %lnot = xor i1 %tobool12, true, !dbg !337
  %lnot13 = xor i1 %lnot, true, !dbg !337
  %lnot14 = xor i1 %lnot13, true, !dbg !337
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !337
  %conv = sext i32 %lnot.ext to i64, !dbg !337
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !337
  %tobool15 = icmp ne i64 %expval, 0, !dbg !337
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !340

if.then16:                                        ; preds = %do.body
  %25 = load ptr, ptr %cmp.addr, align 8, !dbg !341
  %26 = load ptr, ptr %priv.addr, align 8, !dbg !342
  %27 = load ptr, ptr %b.addr, align 8, !dbg !343
  %28 = load ptr, ptr %b.addr, align 8, !dbg !344
  %call17 = call i32 %25(ptr noundef %26, ptr noundef %27, ptr noundef %28) #5, !dbg !341
  br label %if.end18, !dbg !341

if.end18:                                         ; preds = %if.then16, %do.body
  %29 = load ptr, ptr %tail, align 8, !dbg !345
  %30 = load ptr, ptr %b.addr, align 8, !dbg !346
  %prev19 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1, !dbg !347
  store ptr %29, ptr %prev19, align 8, !dbg !348
  %31 = load ptr, ptr %b.addr, align 8, !dbg !349
  store ptr %31, ptr %tail, align 8, !dbg !350
  %32 = load ptr, ptr %b.addr, align 8, !dbg !351
  %next20 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 0, !dbg !352
  %33 = load ptr, ptr %next20, align 8, !dbg !352
  store ptr %33, ptr %b.addr, align 8, !dbg !353
  br label %do.cond, !dbg !354

do.cond:                                          ; preds = %if.end18
  %34 = load ptr, ptr %b.addr, align 8, !dbg !355
  %tobool21 = icmp ne ptr %34, null, !dbg !354
  br i1 %tobool21, label %do.body, label %do.end, !dbg !354, !llvm.loop !356

do.end:                                           ; preds = %do.cond
  %35 = load ptr, ptr %head.addr, align 8, !dbg !358
  %36 = load ptr, ptr %tail, align 8, !dbg !359
  %next22 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 0, !dbg !360
  store ptr %35, ptr %next22, align 8, !dbg !361
  %37 = load ptr, ptr %tail, align 8, !dbg !362
  %38 = load ptr, ptr %head.addr, align 8, !dbg !363
  %prev23 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1, !dbg !364
  store ptr %37, ptr %prev23, align 8, !dbg !365
  call void @llvm.lifetime.end.p0(i64 1, ptr %count) #4, !dbg !366
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #4, !dbg !366
  ret void, !dbg !366
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_list_sort30", scope: !2, file: !3, line: 253, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.list_sort.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/list_sort\22 -D KBUILD_BASENAME=\22list_sort\22 -D KBUILD_MODNAME=\22list_sort\22 -D __KBUILD_MODNAME=kmod_list_sort -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/list_sort.ll lib/list_sort.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/list_sort.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "234958c4a425552ec562b68397b6c44b")
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
!16 = distinct !DISubprogram(name: "list_sort", scope: !3, file: !3, line: 185, type: !17, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !5, !19, !25}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !21, line: 190, size: 128, elements: !22)
!21 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !21, line: 191, baseType: !19, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !20, file: !21, line: 191, baseType: !19, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_cmp_func_t", file: !26, line: 9, baseType: !27)
!26 = !DIFile(filename: "./include/linux/list_sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ae2bf7a3695fabcec35994eeb9cb0a8")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !5, !31, !31}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!33 = !{!34, !35, !36, !37, !38, !39, !45, !47, !49, !52, !53}
!34 = !DILocalVariable(name: "priv", arg: 1, scope: !16, file: !3, line: 185, type: !5)
!35 = !DILocalVariable(name: "head", arg: 2, scope: !16, file: !3, line: 185, type: !19)
!36 = !DILocalVariable(name: "cmp", arg: 3, scope: !16, file: !3, line: 185, type: !25)
!37 = !DILocalVariable(name: "list", scope: !16, file: !3, line: 187, type: !19)
!38 = !DILocalVariable(name: "pending", scope: !16, file: !3, line: 187, type: !19)
!39 = !DILocalVariable(name: "count", scope: !16, file: !3, line: 188, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 61, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !42, line: 72, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !42, line: 16, baseType: !44)
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "bits", scope: !46, file: !3, line: 215, type: !40)
!46 = distinct !DILexicalBlock(scope: !16, file: !3, line: 214, column: 5)
!47 = !DILocalVariable(name: "tail", scope: !46, file: !3, line: 216, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!49 = !DILocalVariable(name: "a", scope: !50, file: !3, line: 223, type: !19)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 222, column: 21)
!51 = distinct !DILexicalBlock(scope: !46, file: !3, line: 222, column: 7)
!52 = !DILocalVariable(name: "b", scope: !50, file: !3, line: 223, type: !19)
!53 = !DILocalVariable(name: "next", scope: !54, file: !3, line: 243, type: !19)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 242, column: 11)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 242, column: 2)
!56 = distinct !DILexicalBlock(scope: !16, file: !3, line: 242, column: 2)
!57 = !DILocation(line: 185, column: 22, scope: !16)
!58 = !DILocation(line: 185, column: 46, scope: !16)
!59 = !DILocation(line: 185, column: 68, scope: !16)
!60 = !DILocation(line: 187, column: 2, scope: !16)
!61 = !DILocation(line: 187, column: 20, scope: !16)
!62 = !DILocation(line: 187, column: 27, scope: !16)
!63 = !DILocation(line: 187, column: 33, scope: !16)
!64 = !DILocation(line: 187, column: 40, scope: !16)
!65 = !DILocation(line: 188, column: 2, scope: !16)
!66 = !DILocation(line: 188, column: 9, scope: !16)
!67 = !DILocation(line: 190, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !16, file: !3, line: 190, column: 6)
!69 = !DILocation(line: 190, column: 14, scope: !68)
!70 = !DILocation(line: 190, column: 20, scope: !68)
!71 = !DILocation(line: 190, column: 11, scope: !68)
!72 = !DILocation(line: 190, column: 6, scope: !16)
!73 = !DILocation(line: 191, column: 3, scope: !68)
!74 = !DILocation(line: 194, column: 2, scope: !16)
!75 = !DILocation(line: 194, column: 8, scope: !16)
!76 = !DILocation(line: 194, column: 14, scope: !16)
!77 = !DILocation(line: 194, column: 19, scope: !16)
!78 = !DILocation(line: 214, column: 2, scope: !16)
!79 = !DILocation(line: 215, column: 3, scope: !46)
!80 = !DILocation(line: 215, column: 10, scope: !46)
!81 = !DILocation(line: 216, column: 3, scope: !46)
!82 = !DILocation(line: 216, column: 22, scope: !46)
!83 = !DILocation(line: 219, column: 15, scope: !84)
!84 = distinct !DILexicalBlock(scope: !46, file: !3, line: 219, column: 3)
!85 = !DILocation(line: 219, column: 13, scope: !84)
!86 = !DILocation(line: 219, column: 8, scope: !84)
!87 = !DILocation(line: 219, column: 22, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 219, column: 3)
!89 = !DILocation(line: 219, column: 27, scope: !88)
!90 = !DILocation(line: 219, column: 3, scope: !84)
!91 = !DILocation(line: 220, column: 14, scope: !88)
!92 = !DILocation(line: 220, column: 13, scope: !88)
!93 = !DILocation(line: 220, column: 21, scope: !88)
!94 = !DILocation(line: 220, column: 9, scope: !88)
!95 = !DILocation(line: 220, column: 4, scope: !88)
!96 = !DILocation(line: 219, column: 37, scope: !88)
!97 = !DILocation(line: 219, column: 3, scope: !88)
!98 = distinct !{!98, !90, !99, !100, !101}
!99 = !DILocation(line: 220, column: 21, scope: !84)
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !DILocation(line: 222, column: 7, scope: !51)
!103 = !DILocation(line: 222, column: 7, scope: !46)
!104 = !DILocation(line: 223, column: 4, scope: !50)
!105 = !DILocation(line: 223, column: 22, scope: !50)
!106 = !DILocation(line: 223, column: 27, scope: !50)
!107 = !DILocation(line: 223, column: 26, scope: !50)
!108 = !DILocation(line: 223, column: 34, scope: !50)
!109 = !DILocation(line: 223, column: 38, scope: !50)
!110 = !DILocation(line: 223, column: 41, scope: !50)
!111 = !DILocation(line: 225, column: 14, scope: !50)
!112 = !DILocation(line: 225, column: 20, scope: !50)
!113 = !DILocation(line: 225, column: 25, scope: !50)
!114 = !DILocation(line: 225, column: 28, scope: !50)
!115 = !DILocation(line: 225, column: 8, scope: !50)
!116 = !DILocation(line: 225, column: 6, scope: !50)
!117 = !DILocation(line: 227, column: 14, scope: !50)
!118 = !DILocation(line: 227, column: 17, scope: !50)
!119 = !DILocation(line: 227, column: 4, scope: !50)
!120 = !DILocation(line: 227, column: 7, scope: !50)
!121 = !DILocation(line: 227, column: 12, scope: !50)
!122 = !DILocation(line: 228, column: 12, scope: !50)
!123 = !DILocation(line: 228, column: 5, scope: !50)
!124 = !DILocation(line: 228, column: 10, scope: !50)
!125 = !DILocation(line: 229, column: 3, scope: !51)
!126 = !DILocation(line: 229, column: 3, scope: !50)
!127 = !DILocation(line: 232, column: 16, scope: !46)
!128 = !DILocation(line: 232, column: 3, scope: !46)
!129 = !DILocation(line: 232, column: 9, scope: !46)
!130 = !DILocation(line: 232, column: 14, scope: !46)
!131 = !DILocation(line: 233, column: 13, scope: !46)
!132 = !DILocation(line: 233, column: 11, scope: !46)
!133 = !DILocation(line: 234, column: 10, scope: !46)
!134 = !DILocation(line: 234, column: 16, scope: !46)
!135 = !DILocation(line: 234, column: 8, scope: !46)
!136 = !DILocation(line: 235, column: 3, scope: !46)
!137 = !DILocation(line: 235, column: 12, scope: !46)
!138 = !DILocation(line: 235, column: 17, scope: !46)
!139 = !DILocation(line: 236, column: 8, scope: !46)
!140 = !DILocation(line: 237, column: 2, scope: !16)
!141 = !DILocation(line: 237, column: 2, scope: !46)
!142 = !DILocation(line: 237, column: 11, scope: !16)
!143 = distinct !{!143, !78, !144, !100, !101}
!144 = !DILocation(line: 237, column: 15, scope: !16)
!145 = !DILocation(line: 240, column: 9, scope: !16)
!146 = !DILocation(line: 240, column: 7, scope: !16)
!147 = !DILocation(line: 241, column: 12, scope: !16)
!148 = !DILocation(line: 241, column: 21, scope: !16)
!149 = !DILocation(line: 241, column: 10, scope: !16)
!150 = !DILocation(line: 242, column: 2, scope: !16)
!151 = !DILocation(line: 243, column: 3, scope: !54)
!152 = !DILocation(line: 243, column: 21, scope: !54)
!153 = !DILocation(line: 243, column: 28, scope: !54)
!154 = !DILocation(line: 243, column: 37, scope: !54)
!155 = !DILocation(line: 245, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !54, file: !3, line: 245, column: 7)
!157 = !DILocation(line: 245, column: 7, scope: !54)
!158 = !DILocation(line: 246, column: 4, scope: !156)
!159 = !DILocation(line: 247, column: 16, scope: !54)
!160 = !DILocation(line: 247, column: 22, scope: !54)
!161 = !DILocation(line: 247, column: 27, scope: !54)
!162 = !DILocation(line: 247, column: 36, scope: !54)
!163 = !DILocation(line: 247, column: 10, scope: !54)
!164 = !DILocation(line: 247, column: 8, scope: !54)
!165 = !DILocation(line: 248, column: 13, scope: !54)
!166 = !DILocation(line: 248, column: 11, scope: !54)
!167 = !DILocation(line: 249, column: 2, scope: !55)
!168 = !DILocation(line: 242, column: 2, scope: !55)
!169 = distinct !{!169, !170, !171, !101}
!170 = !DILocation(line: 242, column: 2, scope: !56)
!171 = !DILocation(line: 249, column: 2, scope: !56)
!172 = !DILocation(line: 251, column: 14, scope: !16)
!173 = !DILocation(line: 251, column: 20, scope: !16)
!174 = !DILocation(line: 251, column: 25, scope: !16)
!175 = !DILocation(line: 251, column: 31, scope: !16)
!176 = !DILocation(line: 251, column: 40, scope: !16)
!177 = !DILocation(line: 251, column: 2, scope: !16)
!178 = !DILocation(line: 252, column: 1, scope: !16)
!179 = distinct !DISubprogram(name: "merge", scope: !3, file: !3, line: 16, type: !180, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!19, !5, !25, !19, !19}
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DILocalVariable(name: "priv", arg: 1, scope: !179, file: !3, line: 16, type: !5)
!184 = !DILocalVariable(name: "cmp", arg: 2, scope: !179, file: !3, line: 16, type: !25)
!185 = !DILocalVariable(name: "a", arg: 3, scope: !179, file: !3, line: 17, type: !19)
!186 = !DILocalVariable(name: "b", arg: 4, scope: !179, file: !3, line: 17, type: !19)
!187 = !DILocalVariable(name: "head", scope: !179, file: !3, line: 19, type: !19)
!188 = !DILocalVariable(name: "tail", scope: !179, file: !3, line: 19, type: !48)
!189 = !DILocation(line: 16, column: 38, scope: !179)
!190 = !DILocation(line: 16, column: 60, scope: !179)
!191 = !DILocation(line: 17, column: 23, scope: !179)
!192 = !DILocation(line: 17, column: 44, scope: !179)
!193 = !DILocation(line: 19, column: 2, scope: !179)
!194 = !DILocation(line: 19, column: 20, scope: !179)
!195 = !DILocation(line: 19, column: 28, scope: !179)
!196 = !DILocation(line: 21, column: 2, scope: !179)
!197 = !DILocation(line: 23, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 23, column: 7)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 21, column: 11)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 21, column: 2)
!201 = distinct !DILexicalBlock(scope: !179, file: !3, line: 21, column: 2)
!202 = !DILocation(line: 23, column: 11, scope: !198)
!203 = !DILocation(line: 23, column: 17, scope: !198)
!204 = !DILocation(line: 23, column: 20, scope: !198)
!205 = !DILocation(line: 23, column: 23, scope: !198)
!206 = !DILocation(line: 23, column: 7, scope: !199)
!207 = !DILocation(line: 24, column: 12, scope: !208)
!208 = distinct !DILexicalBlock(scope: !198, file: !3, line: 23, column: 29)
!209 = !DILocation(line: 24, column: 5, scope: !208)
!210 = !DILocation(line: 24, column: 10, scope: !208)
!211 = !DILocation(line: 25, column: 12, scope: !208)
!212 = !DILocation(line: 25, column: 15, scope: !208)
!213 = !DILocation(line: 25, column: 9, scope: !208)
!214 = !DILocation(line: 26, column: 8, scope: !208)
!215 = !DILocation(line: 26, column: 11, scope: !208)
!216 = !DILocation(line: 26, column: 6, scope: !208)
!217 = !DILocation(line: 27, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !208, file: !3, line: 27, column: 8)
!219 = !DILocation(line: 27, column: 8, scope: !208)
!220 = !DILocation(line: 28, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 27, column: 12)
!222 = !DILocation(line: 28, column: 6, scope: !221)
!223 = !DILocation(line: 28, column: 11, scope: !221)
!224 = !DILocation(line: 29, column: 5, scope: !221)
!225 = !DILocation(line: 31, column: 3, scope: !208)
!226 = !DILocation(line: 32, column: 12, scope: !227)
!227 = distinct !DILexicalBlock(scope: !198, file: !3, line: 31, column: 10)
!228 = !DILocation(line: 32, column: 5, scope: !227)
!229 = !DILocation(line: 32, column: 10, scope: !227)
!230 = !DILocation(line: 33, column: 12, scope: !227)
!231 = !DILocation(line: 33, column: 15, scope: !227)
!232 = !DILocation(line: 33, column: 9, scope: !227)
!233 = !DILocation(line: 34, column: 8, scope: !227)
!234 = !DILocation(line: 34, column: 11, scope: !227)
!235 = !DILocation(line: 34, column: 6, scope: !227)
!236 = !DILocation(line: 35, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !227, file: !3, line: 35, column: 8)
!238 = !DILocation(line: 35, column: 8, scope: !227)
!239 = !DILocation(line: 36, column: 13, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 35, column: 12)
!241 = !DILocation(line: 36, column: 6, scope: !240)
!242 = !DILocation(line: 36, column: 11, scope: !240)
!243 = !DILocation(line: 37, column: 5, scope: !240)
!244 = !DILocation(line: 21, column: 2, scope: !200)
!245 = distinct !{!245, !246, !247, !101}
!246 = !DILocation(line: 21, column: 2, scope: !201)
!247 = !DILocation(line: 40, column: 2, scope: !201)
!248 = !DILocation(line: 41, column: 9, scope: !179)
!249 = !DILocation(line: 42, column: 1, scope: !179)
!250 = !DILocation(line: 41, column: 2, scope: !179)
!251 = distinct !DISubprogram(name: "merge_final", scope: !3, file: !3, line: 52, type: !252, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !5, !25, !19, !19, !19}
!254 = !{!255, !256, !257, !258, !259, !260, !261}
!255 = !DILocalVariable(name: "priv", arg: 1, scope: !251, file: !3, line: 52, type: !5)
!256 = !DILocalVariable(name: "cmp", arg: 2, scope: !251, file: !3, line: 52, type: !25)
!257 = !DILocalVariable(name: "head", arg: 3, scope: !251, file: !3, line: 52, type: !19)
!258 = !DILocalVariable(name: "a", arg: 4, scope: !251, file: !3, line: 53, type: !19)
!259 = !DILocalVariable(name: "b", arg: 5, scope: !251, file: !3, line: 53, type: !19)
!260 = !DILocalVariable(name: "tail", scope: !251, file: !3, line: 55, type: !19)
!261 = !DILocalVariable(name: "count", scope: !251, file: !3, line: 56, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !263, line: 17, baseType: !264)
!263 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !265, line: 21, baseType: !266)
!265 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!266 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!267 = !DILocation(line: 52, column: 31, scope: !251)
!268 = !DILocation(line: 52, column: 53, scope: !251)
!269 = !DILocation(line: 52, column: 76, scope: !251)
!270 = !DILocation(line: 53, column: 22, scope: !251)
!271 = !DILocation(line: 53, column: 43, scope: !251)
!272 = !DILocation(line: 55, column: 2, scope: !251)
!273 = !DILocation(line: 55, column: 20, scope: !251)
!274 = !DILocation(line: 55, column: 27, scope: !251)
!275 = !DILocation(line: 56, column: 2, scope: !251)
!276 = !DILocation(line: 56, column: 5, scope: !251)
!277 = !DILocation(line: 58, column: 2, scope: !251)
!278 = !DILocation(line: 60, column: 7, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 60, column: 7)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 58, column: 11)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 58, column: 2)
!282 = distinct !DILexicalBlock(scope: !251, file: !3, line: 58, column: 2)
!283 = !DILocation(line: 60, column: 11, scope: !279)
!284 = !DILocation(line: 60, column: 17, scope: !279)
!285 = !DILocation(line: 60, column: 20, scope: !279)
!286 = !DILocation(line: 60, column: 23, scope: !279)
!287 = !DILocation(line: 60, column: 7, scope: !280)
!288 = !DILocation(line: 61, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !279, file: !3, line: 60, column: 29)
!290 = !DILocation(line: 61, column: 4, scope: !289)
!291 = !DILocation(line: 61, column: 10, scope: !289)
!292 = !DILocation(line: 61, column: 15, scope: !289)
!293 = !DILocation(line: 62, column: 14, scope: !289)
!294 = !DILocation(line: 62, column: 4, scope: !289)
!295 = !DILocation(line: 62, column: 7, scope: !289)
!296 = !DILocation(line: 62, column: 12, scope: !289)
!297 = !DILocation(line: 63, column: 11, scope: !289)
!298 = !DILocation(line: 63, column: 9, scope: !289)
!299 = !DILocation(line: 64, column: 8, scope: !289)
!300 = !DILocation(line: 64, column: 11, scope: !289)
!301 = !DILocation(line: 64, column: 6, scope: !289)
!302 = !DILocation(line: 65, column: 9, scope: !303)
!303 = distinct !DILexicalBlock(scope: !289, file: !3, line: 65, column: 8)
!304 = !DILocation(line: 65, column: 8, scope: !289)
!305 = !DILocation(line: 66, column: 5, scope: !303)
!306 = !DILocation(line: 67, column: 3, scope: !289)
!307 = !DILocation(line: 68, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !279, file: !3, line: 67, column: 10)
!309 = !DILocation(line: 68, column: 4, scope: !308)
!310 = !DILocation(line: 68, column: 10, scope: !308)
!311 = !DILocation(line: 68, column: 15, scope: !308)
!312 = !DILocation(line: 69, column: 14, scope: !308)
!313 = !DILocation(line: 69, column: 4, scope: !308)
!314 = !DILocation(line: 69, column: 7, scope: !308)
!315 = !DILocation(line: 69, column: 12, scope: !308)
!316 = !DILocation(line: 70, column: 11, scope: !308)
!317 = !DILocation(line: 70, column: 9, scope: !308)
!318 = !DILocation(line: 71, column: 8, scope: !308)
!319 = !DILocation(line: 71, column: 11, scope: !308)
!320 = !DILocation(line: 71, column: 6, scope: !308)
!321 = !DILocation(line: 72, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !308, file: !3, line: 72, column: 8)
!323 = !DILocation(line: 72, column: 8, scope: !308)
!324 = !DILocation(line: 73, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !3, line: 72, column: 12)
!326 = !DILocation(line: 73, column: 7, scope: !325)
!327 = !DILocation(line: 74, column: 5, scope: !325)
!328 = !DILocation(line: 58, column: 2, scope: !281)
!329 = distinct !{!329, !330, !331, !101}
!330 = !DILocation(line: 58, column: 2, scope: !282)
!331 = !DILocation(line: 77, column: 2, scope: !282)
!332 = !DILocation(line: 80, column: 15, scope: !251)
!333 = !DILocation(line: 80, column: 2, scope: !251)
!334 = !DILocation(line: 80, column: 8, scope: !251)
!335 = !DILocation(line: 80, column: 13, scope: !251)
!336 = !DILocation(line: 81, column: 2, scope: !251)
!337 = !DILocation(line: 89, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 89, column: 7)
!339 = distinct !DILexicalBlock(scope: !251, file: !3, line: 81, column: 5)
!340 = !DILocation(line: 89, column: 7, scope: !339)
!341 = !DILocation(line: 90, column: 4, scope: !338)
!342 = !DILocation(line: 90, column: 8, scope: !338)
!343 = !DILocation(line: 90, column: 14, scope: !338)
!344 = !DILocation(line: 90, column: 17, scope: !338)
!345 = !DILocation(line: 91, column: 13, scope: !339)
!346 = !DILocation(line: 91, column: 3, scope: !339)
!347 = !DILocation(line: 91, column: 6, scope: !339)
!348 = !DILocation(line: 91, column: 11, scope: !339)
!349 = !DILocation(line: 92, column: 10, scope: !339)
!350 = !DILocation(line: 92, column: 8, scope: !339)
!351 = !DILocation(line: 93, column: 7, scope: !339)
!352 = !DILocation(line: 93, column: 10, scope: !339)
!353 = !DILocation(line: 93, column: 5, scope: !339)
!354 = !DILocation(line: 94, column: 2, scope: !339)
!355 = !DILocation(line: 94, column: 11, scope: !251)
!356 = distinct !{!356, !336, !357, !100, !101}
!357 = !DILocation(line: 94, column: 12, scope: !251)
!358 = !DILocation(line: 97, column: 15, scope: !251)
!359 = !DILocation(line: 97, column: 2, scope: !251)
!360 = !DILocation(line: 97, column: 8, scope: !251)
!361 = !DILocation(line: 97, column: 13, scope: !251)
!362 = !DILocation(line: 98, column: 15, scope: !251)
!363 = !DILocation(line: 98, column: 2, scope: !251)
!364 = !DILocation(line: 98, column: 8, scope: !251)
!365 = !DILocation(line: 98, column: 13, scope: !251)
!366 = !DILocation(line: 99, column: 1, scope: !251)
