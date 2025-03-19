; ModuleID = 'lib/extable.c'
source_filename = "lib/extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32, i32, i32 }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sort_extable(ptr noundef %start, ptr noundef %finish) #0 align 16 !dbg !46 {
entry:
  %start.addr = alloca ptr, align 8
  %finish.addr = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !57, metadata !DIExpression()), !dbg !59
  store ptr %finish, ptr %finish.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %finish.addr, metadata !58, metadata !DIExpression()), !dbg !60
  %0 = load ptr, ptr %start.addr, align 8, !dbg !61
  %1 = load ptr, ptr %finish.addr, align 8, !dbg !62
  %2 = load ptr, ptr %start.addr, align 8, !dbg !63
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !64
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12, !dbg !64
  call void @sort(ptr noundef %0, i64 noundef %sub.ptr.div, i64 noundef 12, ptr noundef @cmp_ex_sort, ptr noundef @swap_ex) #6, !dbg !65
  ret void, !dbg !66
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !67 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmp_ex_sort(ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !87 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !89, metadata !DIExpression()), !dbg !95
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !90, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #7, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %x, metadata !91, metadata !DIExpression()), !dbg !98
  %0 = load ptr, ptr %a.addr, align 8, !dbg !99
  store ptr %0, ptr %x, align 8, !dbg !98
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #7, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %y, metadata !94, metadata !DIExpression()), !dbg !100
  %1 = load ptr, ptr %b.addr, align 8, !dbg !101
  store ptr %1, ptr %y, align 8, !dbg !100
  %2 = load ptr, ptr %x, align 8, !dbg !102
  %call = call i64 @ex_to_insn(ptr noundef %2) #6, !dbg !104
  %3 = load ptr, ptr %y, align 8, !dbg !105
  %call1 = call i64 @ex_to_insn(ptr noundef %3) #6, !dbg !106
  %cmp = icmp ugt i64 %call, %call1, !dbg !107
  br i1 %cmp, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !109

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %x, align 8, !dbg !110
  %call2 = call i64 @ex_to_insn(ptr noundef %4) #6, !dbg !112
  %5 = load ptr, ptr %y, align 8, !dbg !113
  %call3 = call i64 @ex_to_insn(ptr noundef %5) #6, !dbg !114
  %cmp4 = icmp ult i64 %call2, %call3, !dbg !115
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !116

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !117

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !118

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #7, !dbg !119
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #7, !dbg !119
  %6 = load i32, ptr %retval, align 4, !dbg !119
  ret i32 %6, !dbg !119
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @swap_ex(ptr noundef %a, ptr noundef %b, i32 noundef %size) #0 align 16 !dbg !120 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %tmp = alloca %struct.exception_table_entry, align 4
  %delta = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !122, metadata !DIExpression()), !dbg !129
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !123, metadata !DIExpression()), !dbg !130
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !124, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #7, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %x, metadata !125, metadata !DIExpression()), !dbg !133
  %0 = load ptr, ptr %a.addr, align 8, !dbg !134
  store ptr %0, ptr %x, align 8, !dbg !133
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #7, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %y, metadata !126, metadata !DIExpression()), !dbg !135
  %1 = load ptr, ptr %b.addr, align 8, !dbg !136
  store ptr %1, ptr %y, align 8, !dbg !135
  call void @llvm.lifetime.start.p0(i64 12, ptr %tmp) #7, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !127, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #7, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !128, metadata !DIExpression()), !dbg !139
  %2 = load ptr, ptr %b.addr, align 8, !dbg !140
  %3 = load ptr, ptr %a.addr, align 8, !dbg !141
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64, !dbg !142
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64, !dbg !142
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !142
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !140
  store i32 %conv, ptr %delta, align 4, !dbg !139
  %4 = load ptr, ptr %x, align 8, !dbg !143
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %4, i64 12, i1 false), !dbg !144
  %5 = load ptr, ptr %y, align 8, !dbg !145
  %insn = getelementptr inbounds %struct.exception_table_entry, ptr %5, i32 0, i32 0, !dbg !146
  %6 = load i32, ptr %insn, align 4, !dbg !146
  %7 = load i32, ptr %delta, align 4, !dbg !147
  %add = add i32 %6, %7, !dbg !148
  %8 = load ptr, ptr %x, align 8, !dbg !149
  %insn1 = getelementptr inbounds %struct.exception_table_entry, ptr %8, i32 0, i32 0, !dbg !150
  store i32 %add, ptr %insn1, align 4, !dbg !151
  %insn2 = getelementptr inbounds %struct.exception_table_entry, ptr %tmp, i32 0, i32 0, !dbg !152
  %9 = load i32, ptr %insn2, align 4, !dbg !152
  %10 = load i32, ptr %delta, align 4, !dbg !153
  %sub = sub i32 %9, %10, !dbg !154
  %11 = load ptr, ptr %y, align 8, !dbg !155
  %insn3 = getelementptr inbounds %struct.exception_table_entry, ptr %11, i32 0, i32 0, !dbg !156
  store i32 %sub, ptr %insn3, align 4, !dbg !157
  br label %do.body, !dbg !158

do.body:                                          ; preds = %entry
  %12 = load ptr, ptr %y, align 8, !dbg !159
  %fixup = getelementptr inbounds %struct.exception_table_entry, ptr %12, i32 0, i32 1, !dbg !159
  %13 = load i32, ptr %fixup, align 4, !dbg !159
  %14 = load i32, ptr %delta, align 4, !dbg !159
  %add4 = add i32 %13, %14, !dbg !159
  %15 = load ptr, ptr %x, align 8, !dbg !159
  %fixup5 = getelementptr inbounds %struct.exception_table_entry, ptr %15, i32 0, i32 1, !dbg !159
  store i32 %add4, ptr %fixup5, align 4, !dbg !159
  %fixup6 = getelementptr inbounds %struct.exception_table_entry, ptr %tmp, i32 0, i32 1, !dbg !159
  %16 = load i32, ptr %fixup6, align 4, !dbg !159
  %17 = load i32, ptr %delta, align 4, !dbg !159
  %sub7 = sub i32 %16, %17, !dbg !159
  %18 = load ptr, ptr %y, align 8, !dbg !159
  %fixup8 = getelementptr inbounds %struct.exception_table_entry, ptr %18, i32 0, i32 1, !dbg !159
  store i32 %sub7, ptr %fixup8, align 4, !dbg !159
  %19 = load ptr, ptr %y, align 8, !dbg !159
  %data = getelementptr inbounds %struct.exception_table_entry, ptr %19, i32 0, i32 2, !dbg !159
  %20 = load i32, ptr %data, align 4, !dbg !159
  %21 = load ptr, ptr %x, align 8, !dbg !159
  %data9 = getelementptr inbounds %struct.exception_table_entry, ptr %21, i32 0, i32 2, !dbg !159
  store i32 %20, ptr %data9, align 4, !dbg !159
  %data10 = getelementptr inbounds %struct.exception_table_entry, ptr %tmp, i32 0, i32 2, !dbg !159
  %22 = load i32, ptr %data10, align 4, !dbg !159
  %23 = load ptr, ptr %y, align 8, !dbg !159
  %data11 = getelementptr inbounds %struct.exception_table_entry, ptr %23, i32 0, i32 2, !dbg !159
  store i32 %22, ptr %data11, align 4, !dbg !159
  br label %do.cond, !dbg !159

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !159

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #7, !dbg !161
  call void @llvm.lifetime.end.p0(i64 12, ptr %tmp) #7, !dbg !161
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #7, !dbg !161
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #7, !dbg !161
  ret void, !dbg !161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trim_init_extable(ptr noundef %m) #0 align 16 !dbg !162 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !1197, metadata !DIExpression()), !dbg !1198
  br label %while.cond, !dbg !1199

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %m.addr, align 8, !dbg !1200
  %num_exentries = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 19, !dbg !1201
  %1 = load i32, ptr %num_exentries, align 4, !dbg !1201
  %tobool = icmp ne i32 %1, 0, !dbg !1200
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1202

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %m.addr, align 8, !dbg !1203
  %extable = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 20, !dbg !1204
  %3 = load ptr, ptr %extable, align 16, !dbg !1204
  %arrayidx = getelementptr %struct.exception_table_entry, ptr %3, i64 0, !dbg !1203
  %call = call i64 @ex_to_insn(ptr noundef %arrayidx) #6, !dbg !1205
  %4 = load ptr, ptr %m.addr, align 8, !dbg !1206
  %call1 = call zeroext i1 @within_module_init(i64 noundef %call, ptr noundef %4) #6, !dbg !1207
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %call1, %land.rhs ], !dbg !1208
  br i1 %5, label %while.body, label %while.end, !dbg !1199

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %m.addr, align 8, !dbg !1209
  %extable2 = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 20, !dbg !1211
  %7 = load ptr, ptr %extable2, align 16, !dbg !1212
  %incdec.ptr = getelementptr %struct.exception_table_entry, ptr %7, i32 1, !dbg !1212
  store ptr %incdec.ptr, ptr %extable2, align 16, !dbg !1212
  %8 = load ptr, ptr %m.addr, align 8, !dbg !1213
  %num_exentries3 = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 19, !dbg !1214
  %9 = load i32, ptr %num_exentries3, align 4, !dbg !1215
  %dec = add i32 %9, -1, !dbg !1215
  store i32 %dec, ptr %num_exentries3, align 4, !dbg !1215
  br label %while.cond, !dbg !1199, !llvm.loop !1216

while.end:                                        ; preds = %land.end
  br label %while.cond4, !dbg !1220

while.cond4:                                      ; preds = %while.body14, %while.end
  %10 = load ptr, ptr %m.addr, align 8, !dbg !1221
  %num_exentries5 = getelementptr inbounds %struct.module, ptr %10, i32 0, i32 19, !dbg !1222
  %11 = load i32, ptr %num_exentries5, align 4, !dbg !1222
  %tobool6 = icmp ne i32 %11, 0, !dbg !1221
  br i1 %tobool6, label %land.rhs7, label %land.end13, !dbg !1223

land.rhs7:                                        ; preds = %while.cond4
  %12 = load ptr, ptr %m.addr, align 8, !dbg !1224
  %extable8 = getelementptr inbounds %struct.module, ptr %12, i32 0, i32 20, !dbg !1225
  %13 = load ptr, ptr %extable8, align 16, !dbg !1225
  %14 = load ptr, ptr %m.addr, align 8, !dbg !1226
  %num_exentries9 = getelementptr inbounds %struct.module, ptr %14, i32 0, i32 19, !dbg !1227
  %15 = load i32, ptr %num_exentries9, align 4, !dbg !1227
  %sub = sub i32 %15, 1, !dbg !1228
  %idxprom = zext i32 %sub to i64, !dbg !1224
  %arrayidx10 = getelementptr %struct.exception_table_entry, ptr %13, i64 %idxprom, !dbg !1224
  %call11 = call i64 @ex_to_insn(ptr noundef %arrayidx10) #6, !dbg !1229
  %16 = load ptr, ptr %m.addr, align 8, !dbg !1230
  %call12 = call zeroext i1 @within_module_init(i64 noundef %call11, ptr noundef %16) #6, !dbg !1231
  br label %land.end13

land.end13:                                       ; preds = %land.rhs7, %while.cond4
  %17 = phi i1 [ false, %while.cond4 ], [ %call12, %land.rhs7 ], !dbg !1208
  br i1 %17, label %while.body14, label %while.end17, !dbg !1220

while.body14:                                     ; preds = %land.end13
  %18 = load ptr, ptr %m.addr, align 8, !dbg !1232
  %num_exentries15 = getelementptr inbounds %struct.module, ptr %18, i32 0, i32 19, !dbg !1233
  %19 = load i32, ptr %num_exentries15, align 4, !dbg !1234
  %dec16 = add i32 %19, -1, !dbg !1234
  store i32 %dec16, ptr %num_exentries15, align 4, !dbg !1234
  br label %while.cond4, !dbg !1220, !llvm.loop !1235

while.end17:                                      ; preds = %land.end13
  ret void, !dbg !1236
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_init(i64 noundef %addr, ptr noundef %mod) #3 align 16 !dbg !1237 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1243, metadata !DIExpression()), !dbg !1247
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1244, metadata !DIExpression()), !dbg !1248
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #7, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1245, metadata !DIExpression()), !dbg !1249
  store i32 0, ptr %type, align 4, !dbg !1249
  br label %for.cond, !dbg !1249

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !1250
  %cmp = icmp slt i32 %0, 7, !dbg !1250
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1249

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1249

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %type, align 4, !dbg !1252
  %cmp1 = icmp eq i32 %1, 4, !dbg !1252
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1252

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, ptr %type, align 4, !dbg !1252
  %cmp2 = icmp eq i32 %2, 5, !dbg !1252
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !1252

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !1252
  %cmp4 = icmp eq i32 %3, 6, !dbg !1252
  br i1 %cmp4, label %if.then, label %if.end6, !dbg !1250

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  %4 = load i64, ptr %addr.addr, align 8, !dbg !1254
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !1257
  %6 = load i32, ptr %type, align 4, !dbg !1258
  %call = call zeroext i1 @within_module_mem_type(i64 noundef %4, ptr noundef %5, i32 noundef %6) #6, !dbg !1259
  br i1 %call, label %if.then5, label %if.end, !dbg !1260

if.then5:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !1261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1261

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1262

if.end6:                                          ; preds = %if.end, %lor.lhs.false3
  br label %for.inc, !dbg !1252

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %type, align 4, !dbg !1250
  %inc = add i32 %7, 1, !dbg !1250
  store i32 %inc, ptr %type, align 4, !dbg !1250
  br label %for.cond, !dbg !1250, !llvm.loop !1263

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #7, !dbg !1250
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i1 false, ptr %retval, align 1, !dbg !1265
  br label %return, !dbg !1265

return:                                           ; preds = %for.end, %cleanup
  %8 = load i1, ptr %retval, align 1, !dbg !1266
  ret i1 %8, !dbg !1266

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ex_to_insn(ptr noundef %x) #3 align 16 !dbg !1267 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1271, metadata !DIExpression()), !dbg !1272
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1273
  %insn = getelementptr inbounds %struct.exception_table_entry, ptr %0, i32 0, i32 0, !dbg !1274
  %1 = ptrtoint ptr %insn to i64, !dbg !1275
  %2 = load ptr, ptr %x.addr, align 8, !dbg !1276
  %insn1 = getelementptr inbounds %struct.exception_table_entry, ptr %2, i32 0, i32 0, !dbg !1277
  %3 = load i32, ptr %insn1, align 4, !dbg !1277
  %conv = sext i32 %3 to i64, !dbg !1276
  %add = add i64 %1, %conv, !dbg !1278
  ret i64 %add, !dbg !1279
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @search_extable(ptr noundef %base, i64 noundef %num, i64 noundef %value) #0 align 16 !dbg !1280 {
entry:
  %base.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !1285, metadata !DIExpression()), !dbg !1288
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1286, metadata !DIExpression()), !dbg !1289
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1287, metadata !DIExpression()), !dbg !1290
  %0 = load ptr, ptr %base.addr, align 8, !dbg !1291
  %1 = load i64, ptr %num.addr, align 8, !dbg !1292
  %call = call ptr @bsearch(ptr noundef %value.addr, ptr noundef %0, i64 noundef %1, i64 noundef 12, ptr noundef @cmp_ex_search) #6, !dbg !1293
  ret ptr %call, !dbg !1294
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1295 dso_local ptr @bsearch(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmp_ex_search(ptr noundef %key, ptr noundef %elt) #0 align 16 !dbg !1299 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %elt.addr = alloca ptr, align 8
  %_elt = alloca ptr, align 8
  %_key = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1301, metadata !DIExpression()), !dbg !1305
  store ptr %elt, ptr %elt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %elt.addr, metadata !1302, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 8, ptr %_elt) #7, !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %_elt, metadata !1303, metadata !DIExpression()), !dbg !1308
  %0 = load ptr, ptr %elt.addr, align 8, !dbg !1309
  store ptr %0, ptr %_elt, align 8, !dbg !1308
  call void @llvm.lifetime.start.p0(i64 8, ptr %_key) #7, !dbg !1310
  call void @llvm.dbg.declare(metadata ptr %_key, metadata !1304, metadata !DIExpression()), !dbg !1311
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1312
  %2 = load i64, ptr %1, align 8, !dbg !1313
  store i64 %2, ptr %_key, align 8, !dbg !1311
  %3 = load i64, ptr %_key, align 8, !dbg !1314
  %4 = load ptr, ptr %_elt, align 8, !dbg !1316
  %call = call i64 @ex_to_insn(ptr noundef %4) #6, !dbg !1317
  %cmp = icmp ugt i64 %3, %call, !dbg !1318
  br i1 %cmp, label %if.then, label %if.end, !dbg !1319

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1320

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %_key, align 8, !dbg !1321
  %6 = load ptr, ptr %_elt, align 8, !dbg !1323
  %call1 = call i64 @ex_to_insn(ptr noundef %6) #6, !dbg !1324
  %cmp2 = icmp ult i64 %5, %call1, !dbg !1325
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1326

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1327

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1328

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %_key) #7, !dbg !1329
  call void @llvm.lifetime.end.p0(i64 8, ptr %_elt) #7, !dbg !1329
  %7 = load i32, ptr %retval, align 4, !dbg !1329
  ret i32 %7, !dbg !1329
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_mem_type(i64 noundef %addr, ptr noundef %mod, i32 noundef %type) #3 align 16 !dbg !1330 {
entry:
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1334, metadata !DIExpression()), !dbg !1339
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1335, metadata !DIExpression()), !dbg !1340
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1336, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #7, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %base, metadata !1337, metadata !DIExpression()), !dbg !1343
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1338, metadata !DIExpression()), !dbg !1344
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !1345
  %mem = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 22, !dbg !1346
  %1 = load i32, ptr %type.addr, align 4, !dbg !1347
  %idxprom = sext i32 %1 to i64, !dbg !1345
  %arrayidx = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 %idxprom, !dbg !1345
  %base1 = getelementptr inbounds %struct.module_memory, ptr %arrayidx, i32 0, i32 0, !dbg !1348
  %2 = load ptr, ptr %base1, align 8, !dbg !1348
  %3 = ptrtoint ptr %2 to i64, !dbg !1349
  store i64 %3, ptr %base, align 8, !dbg !1350
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !1351
  %mem2 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 22, !dbg !1352
  %5 = load i32, ptr %type.addr, align 4, !dbg !1353
  %idxprom3 = sext i32 %5 to i64, !dbg !1351
  %arrayidx4 = getelementptr [7 x %struct.module_memory], ptr %mem2, i64 0, i64 %idxprom3, !dbg !1351
  %size5 = getelementptr inbounds %struct.module_memory, ptr %arrayidx4, i32 0, i32 1, !dbg !1354
  %6 = load i32, ptr %size5, align 8, !dbg !1354
  %conv = zext i32 %6 to i64, !dbg !1351
  store i64 %conv, ptr %size, align 8, !dbg !1355
  %7 = load i64, ptr %addr.addr, align 8, !dbg !1356
  %8 = load i64, ptr %base, align 8, !dbg !1357
  %sub = sub i64 %7, %8, !dbg !1358
  %9 = load i64, ptr %size, align 8, !dbg !1359
  %cmp = icmp ult i64 %sub, %9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !1361
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #7, !dbg !1361
  ret i1 %cmp, !dbg !1362
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.extable.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/extable\22 -D KBUILD_BASENAME=\22extable\22 -D KBUILD_MODNAME=\22extable\22 -D __KBUILD_MODNAME=kmod_extable -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/extable.ll lib/extable.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !34, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/extable.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09f79bfaf7909024602eabb26db1dc2d")
!2 = !{!3, !11, !17, !29}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !4, line: 312, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!8 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!9 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!10 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !12, line: 26, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mod_mem_type", file: !4, line: 324, baseType: !18, size: 32, elements: !19)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28}
!20 = !DIEnumerator(name: "MOD_TEXT", value: 0)
!21 = !DIEnumerator(name: "MOD_DATA", value: 1)
!22 = !DIEnumerator(name: "MOD_RODATA", value: 2)
!23 = !DIEnumerator(name: "MOD_RO_AFTER_INIT", value: 3)
!24 = !DIEnumerator(name: "MOD_INIT_TEXT", value: 4)
!25 = !DIEnumerator(name: "MOD_INIT_DATA", value: 5)
!26 = !DIEnumerator(name: "MOD_INIT_RODATA", value: 6)
!27 = !DIEnumerator(name: "MOD_MEM_NUM_TYPES", value: 7)
!28 = !DIEnumerator(name: "MOD_INVALID", value: -1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 10, baseType: !5, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "false", value: 0)
!33 = !DIEnumerator(name: "true", value: 1)
!34 = !{!35, !36}
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 8, !"cf-protection-branch", i32 1}
!41 = !{i32 4, !"function_return_thunk_extern", i32 1}
!42 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!43 = !{i32 1, !"Code Model", i32 2}
!44 = !{i32 1, !"override-stack-alignment", i32 8}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = distinct !DISubprogram(name: "sort_extable", scope: !1, file: !1, line: 63, type: !47, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !51, line: 23, size: 96, elements: !52)
!51 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!52 = !{!53, !54, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !50, file: !51, line: 24, baseType: !18, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !50, file: !51, line: 24, baseType: !18, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !50, file: !51, line: 24, baseType: !18, size: 32, offset: 64)
!56 = !{!57, !58}
!57 = !DILocalVariable(name: "start", arg: 1, scope: !46, file: !1, line: 63, type: !49)
!58 = !DILocalVariable(name: "finish", arg: 2, scope: !46, file: !1, line: 64, type: !49)
!59 = !DILocation(line: 63, column: 49, scope: !46)
!60 = !DILocation(line: 64, column: 35, scope: !46)
!61 = !DILocation(line: 66, column: 7, scope: !46)
!62 = !DILocation(line: 66, column: 14, scope: !46)
!63 = !DILocation(line: 66, column: 23, scope: !46)
!64 = !DILocation(line: 66, column: 21, scope: !46)
!65 = !DILocation(line: 66, column: 2, scope: !46)
!66 = !DILocation(line: 68, column: 1, scope: !46)
!67 = !DISubprogram(name: "sort", scope: !68, file: !68, line: 12, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!68 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !72, !72, !77, !83}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 61, baseType: !74)
!73 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !75, line: 72, baseType: !76)
!75 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !75, line: 16, baseType: !35)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !73, line: 245, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!18, !81, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !73, line: 242, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !71, !71, !18}
!87 = distinct !DISubprogram(name: "cmp_ex_sort", scope: !1, file: !1, line: 51, type: !79, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!88 = !{!89, !90, !91, !94}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !87, file: !1, line: 51, type: !81)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !87, file: !1, line: 51, type: !81)
!91 = !DILocalVariable(name: "x", scope: !87, file: !1, line: 53, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!94 = !DILocalVariable(name: "y", scope: !87, file: !1, line: 53, type: !92)
!95 = !DILocation(line: 51, column: 36, scope: !87)
!96 = !DILocation(line: 51, column: 51, scope: !87)
!97 = !DILocation(line: 53, column: 2, scope: !87)
!98 = !DILocation(line: 53, column: 38, scope: !87)
!99 = !DILocation(line: 53, column: 42, scope: !87)
!100 = !DILocation(line: 53, column: 46, scope: !87)
!101 = !DILocation(line: 53, column: 50, scope: !87)
!102 = !DILocation(line: 56, column: 17, scope: !103)
!103 = distinct !DILexicalBlock(scope: !87, file: !1, line: 56, column: 6)
!104 = !DILocation(line: 56, column: 6, scope: !103)
!105 = !DILocation(line: 56, column: 33, scope: !103)
!106 = !DILocation(line: 56, column: 22, scope: !103)
!107 = !DILocation(line: 56, column: 20, scope: !103)
!108 = !DILocation(line: 56, column: 6, scope: !87)
!109 = !DILocation(line: 57, column: 3, scope: !103)
!110 = !DILocation(line: 58, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !87, file: !1, line: 58, column: 6)
!112 = !DILocation(line: 58, column: 6, scope: !111)
!113 = !DILocation(line: 58, column: 33, scope: !111)
!114 = !DILocation(line: 58, column: 22, scope: !111)
!115 = !DILocation(line: 58, column: 20, scope: !111)
!116 = !DILocation(line: 58, column: 6, scope: !87)
!117 = !DILocation(line: 59, column: 3, scope: !111)
!118 = !DILocation(line: 60, column: 2, scope: !87)
!119 = !DILocation(line: 61, column: 1, scope: !87)
!120 = distinct !DISubprogram(name: "swap_ex", scope: !1, file: !1, line: 27, type: !85, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128}
!122 = !DILocalVariable(name: "a", arg: 1, scope: !120, file: !1, line: 27, type: !71)
!123 = !DILocalVariable(name: "b", arg: 2, scope: !120, file: !1, line: 27, type: !71)
!124 = !DILocalVariable(name: "size", arg: 3, scope: !120, file: !1, line: 27, type: !18)
!125 = !DILocalVariable(name: "x", scope: !120, file: !1, line: 29, type: !49)
!126 = !DILocalVariable(name: "y", scope: !120, file: !1, line: 29, type: !49)
!127 = !DILocalVariable(name: "tmp", scope: !120, file: !1, line: 29, type: !50)
!128 = !DILocalVariable(name: "delta", scope: !120, file: !1, line: 30, type: !18)
!129 = !DILocation(line: 27, column: 27, scope: !120)
!130 = !DILocation(line: 27, column: 36, scope: !120)
!131 = !DILocation(line: 27, column: 43, scope: !120)
!132 = !DILocation(line: 29, column: 2, scope: !120)
!133 = !DILocation(line: 29, column: 32, scope: !120)
!134 = !DILocation(line: 29, column: 36, scope: !120)
!135 = !DILocation(line: 29, column: 40, scope: !120)
!136 = !DILocation(line: 29, column: 44, scope: !120)
!137 = !DILocation(line: 29, column: 47, scope: !120)
!138 = !DILocation(line: 30, column: 2, scope: !120)
!139 = !DILocation(line: 30, column: 6, scope: !120)
!140 = !DILocation(line: 30, column: 14, scope: !120)
!141 = !DILocation(line: 30, column: 18, scope: !120)
!142 = !DILocation(line: 30, column: 16, scope: !120)
!143 = !DILocation(line: 32, column: 9, scope: !120)
!144 = !DILocation(line: 32, column: 8, scope: !120)
!145 = !DILocation(line: 33, column: 12, scope: !120)
!146 = !DILocation(line: 33, column: 15, scope: !120)
!147 = !DILocation(line: 33, column: 22, scope: !120)
!148 = !DILocation(line: 33, column: 20, scope: !120)
!149 = !DILocation(line: 33, column: 2, scope: !120)
!150 = !DILocation(line: 33, column: 5, scope: !120)
!151 = !DILocation(line: 33, column: 10, scope: !120)
!152 = !DILocation(line: 34, column: 16, scope: !120)
!153 = !DILocation(line: 34, column: 23, scope: !120)
!154 = !DILocation(line: 34, column: 21, scope: !120)
!155 = !DILocation(line: 34, column: 2, scope: !120)
!156 = !DILocation(line: 34, column: 5, scope: !120)
!157 = !DILocation(line: 34, column: 10, scope: !120)
!158 = !DILocation(line: 37, column: 2, scope: !120)
!159 = !DILocation(line: 37, column: 2, scope: !160)
!160 = distinct !DILexicalBlock(scope: !120, file: !1, line: 37, column: 2)
!161 = !DILocation(line: 42, column: 1, scope: !120)
!162 = distinct !DISubprogram(name: "trim_init_extable", scope: !1, file: !1, line: 75, type: !163, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1196)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !4, line: 402, size: 9216, align: 512, elements: !167)
!167 = !{!168, !169, !175, !180, !854, !878, !879, !880, !881, !885, !888, !889, !890, !943, !944, !945, !946, !947, !948, !949, !950, !951, !955, !975, !993, !994, !995, !996, !1005, !1029, !1030, !1033, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1047, !1048, !1155, !1163, !1164, !1165, !1167, !1171, !1172, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1189, !1190, !1191, !1195}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !166, file: !4, line: 403, baseType: !3, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !166, file: !4, line: 406, baseType: !170, size: 128, offset: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !73, line: 190, size: 128, elements: !171)
!171 = !{!172, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !73, line: 191, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !170, file: !73, line: 191, baseType: !173, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !4, line: 409, baseType: !176, size: 448, offset: 192)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 448, elements: !178)
!177 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!178 = !{!179}
!179 = !DISubrange(count: 56)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !166, file: !4, line: 417, baseType: !181, size: 768, offset: 640)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !4, line: 45, size: 768, elements: !182)
!182 = !{!183, !837, !838, !839, !842}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !181, file: !4, line: 46, baseType: !184, size: 512)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !185, line: 64, size: 512, elements: !186)
!185 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!186 = !{!187, !190, !191, !193, !282, !707, !822, !832, !833, !834, !835, !836}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !185, line: 65, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !184, file: !185, line: 66, baseType: !170, size: 128, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !185, line: 67, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !184, file: !185, line: 68, baseType: !194, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !185, line: 168, size: 768, elements: !196)
!196 = !{!197, !198, !241, !242}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !195, file: !185, line: 169, baseType: !170, size: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !195, file: !185, line: 170, baseType: !199, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !200, line: 29, baseType: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !200, line: 17, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !200, line: 18, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !200, line: 18, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !204, file: !200, line: 19, baseType: !207, size: 32)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !208, line: 14, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !207, file: !208, line: 15, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !212, line: 44, baseType: !213)
!212 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !212, line: 14, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !212, line: 15, baseType: !216, size: 32)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !212, line: 15, size: 32, elements: !217)
!217 = !{!218, !223, !233}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !212, line: 16, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !73, line: 174, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 172, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !220, file: !73, line: 173, baseType: !18, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !212, line: 24, baseType: !224, size: 16)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !212, line: 24, size: 16, elements: !225)
!225 = !{!226, !232}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !224, file: !212, line: 25, baseType: !227, size: 8)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !228, line: 17, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!231 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !224, file: !212, line: 26, baseType: !227, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !212, line: 28, baseType: !234, size: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !212, line: 28, size: 32, elements: !235)
!235 = !{!236, !240}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !234, file: !212, line: 29, baseType: !237, size: 16)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !228, line: 19, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !230, line: 24, baseType: !239)
!239 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !212, line: 30, baseType: !237, size: 16, offset: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !195, file: !185, line: 171, baseType: !184, size: 512, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !195, file: !185, line: 172, baseType: !243, size: 64, offset: 704)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !185, line: 133, size: 192, elements: !246)
!246 = !{!247, !254, !259}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !245, file: !185, line: 134, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!18, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !185, line: 135, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!188, !252}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !245, file: !185, line: 136, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!18, !252, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !185, line: 125, size: 20736, elements: !266)
!266 = !{!267, !272, !276, !277, !281}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !265, file: !185, line: 126, baseType: !268, size: 192)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 192, elements: !270)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!270 = !{!271}
!271 = !DISubrange(count: 3)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !265, file: !185, line: 127, baseType: !273, size: 4096, offset: 192)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 4096, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !265, file: !185, line: 128, baseType: !18, size: 32, offset: 4288)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !265, file: !185, line: 129, baseType: !278, size: 16384, offset: 4320)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 16384, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 2048)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !265, file: !185, line: 130, baseType: !18, size: 32, offset: 20704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !184, file: !185, line: 69, baseType: !283, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !185, line: 116, size: 384, elements: !286)
!286 = !{!287, !291, !315, !654, !685, !689}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !285, file: !185, line: 117, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !192}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !285, file: !185, line: 118, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !295, line: 254, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!296 = !{!297, !311}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !294, file: !295, line: 255, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !192, !305, !269}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !73, line: 66, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !75, line: 73, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !75, line: 15, baseType: !304)
!304 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !295, line: 30, size: 128, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !295, line: 31, baseType: !188, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !306, file: !295, line: 32, baseType: !310, size: 16, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !73, line: 24, baseType: !239)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !294, file: !295, line: 256, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!301, !192, !305, !188, !72}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !285, file: !185, line: 119, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !295, line: 84, size: 320, elements: !320)
!320 = !{!321, !322, !326, !650, !652}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !295, line: 85, baseType: !188, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !319, file: !295, line: 86, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!310, !192, !305, !18}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !319, file: !295, line: 88, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!310, !192, !330, !18}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !295, line: 175, size: 512, elements: !332)
!332 = !{!333, !334, !335, !336, !343, !353, !354}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !331, file: !295, line: 176, baseType: !306, size: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !331, file: !295, line: 177, baseType: !72, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !331, file: !295, line: 178, baseType: !71, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !331, file: !295, line: 179, baseType: !337, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !342, line: 32, flags: DIFlagFwdDecl)
!342 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !331, file: !295, line: 180, baseType: !344, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!301, !347, !192, !330, !269, !350, !72}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !349, line: 537, flags: DIFlagFwdDecl)
!349 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !73, line: 52, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !75, line: 88, baseType: !352)
!352 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !331, file: !295, line: 182, baseType: !344, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !331, file: !295, line: 184, baseType: !355, size: 64, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!18, !347, !192, !330, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !342, line: 625, size: 1344, elements: !360)
!360 = !{!361, !378, !599, !605, !612, !613, !618, !621, !633, !634, !637, !641, !642, !643, !644, !645, !648}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !342, line: 628, baseType: !362, size: 128)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !342, line: 628, size: 128, elements: !363)
!363 = !{!364, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !342, line: 629, baseType: !365, size: 128)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !362, file: !342, line: 629, size: 128, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !365, file: !342, line: 631, baseType: !35, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !365, file: !342, line: 632, baseType: !35, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !362, file: !342, line: 635, baseType: !370, size: 128, align: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !73, line: 232, size: 128, align: 64, elements: !371)
!371 = !{!372, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !73, line: 233, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !370, file: !73, line: 234, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !373}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !359, file: !342, line: 639, baseType: !379, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !342, line: 733, size: 10240, elements: !381)
!381 = !{!382, !595}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !342, line: 734, baseType: !383, size: 10240)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !342, line: 734, size: 10240, elements: !384)
!384 = !{!385, !389, !403, !407, !408, !409, !410, !411, !412, !420, !421, !422, !431, !432, !441, !442, !443, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !490, !504, !507, !560, !561, !562, !565, !569, !570, !573, !574, !575, !582, !583}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !342, line: 739, baseType: !386, size: 512, align: 512)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !342, line: 739, size: 512, align: 512, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !386, file: !342, line: 747, baseType: !219, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !383, file: !342, line: 750, baseType: !390, size: 128, offset: 512)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !391, line: 218, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!392 = !{!393, !401, !402}
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !391, line: 219, baseType: !394, size: 32)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 219, size: 32, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !394, file: !391, line: 220, baseType: !199, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !394, file: !391, line: 221, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !391, line: 197, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 197, elements: !400)
!400 = !{}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !390, file: !391, line: 223, baseType: !5, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !390, file: !391, line: 224, baseType: !71, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !383, file: !342, line: 752, baseType: !404, size: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!35, !347, !35, !35, !35, !35}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !383, file: !342, line: 756, baseType: !35, size: 64, offset: 704)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !383, file: !342, line: 757, baseType: !35, size: 64, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !383, file: !342, line: 760, baseType: !35, size: 64, offset: 832)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !383, file: !342, line: 761, baseType: !35, size: 64, offset: 896)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !383, file: !342, line: 763, baseType: !35, size: 64, offset: 960)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !383, file: !342, line: 764, baseType: !413, size: 64, offset: 1024)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !349, line: 299, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !349, line: 299, size: 64, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !415, file: !349, line: 299, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !419, line: 18, baseType: !35)
!419 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!420 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !383, file: !342, line: 773, baseType: !219, size: 32, offset: 1088)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !383, file: !342, line: 785, baseType: !219, size: 32, offset: 1120)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !383, file: !342, line: 795, baseType: !423, size: 64, offset: 1152)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !342, line: 726, size: 128, elements: !425)
!425 = !{!426, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !424, file: !342, line: 727, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !228, line: 23, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !230, line: 31, baseType: !429)
!429 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !424, file: !342, line: 728, baseType: !18, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !383, file: !342, line: 801, baseType: !35, size: 64, offset: 1216)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !383, file: !342, line: 804, baseType: !433, size: 64, offset: 1280)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !434, line: 13, baseType: !435)
!434 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !73, line: 181, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 179, size: 64, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !436, file: !73, line: 180, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !228, line: 22, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !230, line: 30, baseType: !352)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !383, file: !342, line: 806, baseType: !18, size: 32, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !383, file: !342, line: 808, baseType: !199, size: 32, offset: 1376)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !383, file: !342, line: 823, baseType: !444, size: 320, offset: 1408)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !445, line: 48, size: 320, elements: !446)
!445 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!446 = !{!447, !448, !449, !454, !456}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !444, file: !445, line: 49, baseType: !433, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !444, file: !445, line: 55, baseType: !433, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !444, file: !445, line: 57, baseType: !450, size: 32, offset: 128)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !451, line: 15, size: 32, elements: !452)
!451 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !450, file: !451, line: 20, baseType: !219, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !444, file: !445, line: 59, baseType: !455, size: 32, offset: 160)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !208, line: 23, baseType: !207)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !444, file: !445, line: 60, baseType: !170, size: 128, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !383, file: !342, line: 825, baseType: !170, size: 128, offset: 1728)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !383, file: !342, line: 845, baseType: !18, size: 32, offset: 1856)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !383, file: !342, line: 849, baseType: !35, size: 64, offset: 1920)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !383, file: !342, line: 850, baseType: !35, size: 64, offset: 1984)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !383, file: !342, line: 852, baseType: !35, size: 64, offset: 2048)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !383, file: !342, line: 853, baseType: !35, size: 64, offset: 2112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !383, file: !342, line: 854, baseType: !435, size: 64, offset: 2176)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !383, file: !342, line: 855, baseType: !35, size: 64, offset: 2240)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !383, file: !342, line: 856, baseType: !35, size: 64, offset: 2304)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !383, file: !342, line: 857, baseType: !35, size: 64, offset: 2368)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !383, file: !342, line: 858, baseType: !35, size: 64, offset: 2432)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !383, file: !342, line: 865, baseType: !469, size: 32, offset: 2496)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !470, line: 69, baseType: !471)
!470 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !470, line: 64, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !471, file: !470, line: 65, baseType: !5, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !383, file: !342, line: 867, baseType: !199, size: 32, offset: 2528)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !383, file: !342, line: 869, baseType: !35, size: 64, offset: 2560)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !383, file: !342, line: 869, baseType: !35, size: 64, offset: 2624)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !383, file: !342, line: 869, baseType: !35, size: 64, offset: 2688)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !383, file: !342, line: 869, baseType: !35, size: 64, offset: 2752)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !383, file: !342, line: 870, baseType: !35, size: 64, offset: 2816)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !383, file: !342, line: 870, baseType: !35, size: 64, offset: 2880)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !383, file: !342, line: 870, baseType: !35, size: 64, offset: 2944)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !383, file: !342, line: 871, baseType: !35, size: 64, offset: 3008)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !383, file: !342, line: 871, baseType: !35, size: 64, offset: 3072)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !383, file: !342, line: 871, baseType: !35, size: 64, offset: 3136)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !383, file: !342, line: 871, baseType: !35, size: 64, offset: 3200)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !383, file: !342, line: 873, baseType: !487, size: 3328, offset: 3264)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3328, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 52)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !383, file: !342, line: 875, baseType: !491, size: 1280, offset: 6592)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 1280, elements: !502)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !493, line: 22, size: 320, elements: !494)
!493 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!494 = !{!495, !496, !497, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !492, file: !493, line: 23, baseType: !455, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !492, file: !493, line: 24, baseType: !439, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !492, file: !493, line: 26, baseType: !170, size: 128, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !492, file: !493, line: 28, baseType: !499, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !228, line: 20, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !230, line: 26, baseType: !18)
!502 = !{!503}
!503 = !DISubrange(count: 4)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !383, file: !342, line: 877, baseType: !505, size: 64, offset: 7872)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !342, line: 877, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !383, file: !342, line: 880, baseType: !508, size: 1088, offset: 7936)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !509, line: 72, baseType: !510)
!509 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 23, size: 1088, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !519, !520, !528, !529, !554, !555, !556}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !510, file: !509, line: 28, baseType: !427, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !510, file: !509, line: 38, baseType: !435, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !510, file: !509, line: 40, baseType: !35, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !510, file: !509, line: 43, baseType: !444, size: 320, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !510, file: !509, line: 44, baseType: !517, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !509, line: 44, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !509, line: 48, baseType: !35, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !510, file: !509, line: 59, baseType: !521, size: 256, offset: 640)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !522, line: 66, size: 256, elements: !523)
!522 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!523 = !{!524, !525, !526, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !521, file: !522, line: 67, baseType: !433, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !521, file: !522, line: 68, baseType: !455, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !521, file: !522, line: 70, baseType: !450, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !521, file: !522, line: 72, baseType: !170, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !510, file: !509, line: 60, baseType: !71, size: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !510, file: !509, line: 61, baseType: !530, size: 64, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !533, line: 13, size: 1216, elements: !534)
!533 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !532, file: !533, line: 14, baseType: !71, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !532, file: !533, line: 15, baseType: !35, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !532, file: !533, line: 17, baseType: !35, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !532, file: !533, line: 17, baseType: !35, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !532, file: !533, line: 18, baseType: !35, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !532, file: !533, line: 18, baseType: !35, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !532, file: !533, line: 19, baseType: !81, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !532, file: !533, line: 21, baseType: !304, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !532, file: !533, line: 23, baseType: !304, size: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !532, file: !533, line: 24, baseType: !304, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !532, file: !533, line: 25, baseType: !304, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !532, file: !533, line: 26, baseType: !304, size: 64, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !532, file: !533, line: 27, baseType: !304, size: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !532, file: !533, line: 28, baseType: !304, size: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !532, file: !533, line: 29, baseType: !304, size: 64, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !532, file: !533, line: 30, baseType: !304, size: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !532, file: !533, line: 31, baseType: !304, size: 64, offset: 1024)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !532, file: !533, line: 32, baseType: !304, size: 64, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !532, file: !533, line: 33, baseType: !304, size: 64, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !510, file: !509, line: 63, baseType: !219, size: 32, offset: 1024)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !510, file: !509, line: 69, baseType: !237, size: 16, offset: 1056)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !510, file: !509, line: 70, baseType: !557, size: 16, offset: 1072)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !228, line: 18, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !230, line: 23, baseType: !559)
!559 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !383, file: !342, line: 882, baseType: !35, size: 64, offset: 9024)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !383, file: !342, line: 885, baseType: !199, size: 32, offset: 9088)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !383, file: !342, line: 886, baseType: !563, size: 64, offset: 9152)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !342, line: 732, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !383, file: !342, line: 901, baseType: !566, size: 64, offset: 9216)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !568, line: 18, flags: DIFlagFwdDecl)
!568 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !383, file: !342, line: 904, baseType: !347, size: 64, offset: 9280)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !383, file: !342, line: 906, baseType: !571, size: 64, offset: 9344)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !342, line: 906, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !383, file: !342, line: 930, baseType: !219, size: 32, offset: 9408)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !383, file: !342, line: 933, baseType: !219, size: 32, offset: 9440)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !383, file: !342, line: 935, baseType: !576, size: 64, offset: 9472)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !577, line: 103, size: 64, elements: !578)
!577 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !576, file: !577, line: 104, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !577, line: 101, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !383, file: !342, line: 940, baseType: !433, size: 64, offset: 9536)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !383, file: !342, line: 942, baseType: !584, size: 256, offset: 9600)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !585, line: 98, size: 256, elements: !586)
!585 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!586 = !{!587, !588, !589}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !584, file: !585, line: 99, baseType: !433, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !584, file: !585, line: 100, baseType: !170, size: 128, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !584, file: !585, line: 101, baseType: !590, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !585, line: 21, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !380, file: !342, line: 986, baseType: !596, offset: 10240)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: -1)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !359, file: !342, line: 640, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !349, line: 297, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !349, line: 297, size: 64, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !601, file: !349, line: 297, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !419, line: 19, baseType: !35)
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !342, line: 646, baseType: !606, size: 64, offset: 256)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !342, line: 646, size: 64, elements: !607)
!607 = !{!608, !611}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !606, file: !342, line: 647, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !342, line: 542, baseType: !35)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !606, file: !342, line: 648, baseType: !610, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !359, file: !342, line: 666, baseType: !18, size: 32, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !359, file: !342, line: 667, baseType: !614, size: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !342, line: 579, size: 320, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !615, file: !342, line: 580, baseType: !444, size: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !359, file: !342, line: 670, baseType: !619, size: 8, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !73, line: 35, baseType: !620)
!620 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !359, file: !342, line: 681, baseType: !622, size: 256, offset: 512)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !342, line: 678, size: 256, elements: !623)
!623 = !{!624, !632}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !622, file: !342, line: 679, baseType: !625, size: 192, align: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !626, line: 5, size: 192, align: 64, elements: !627)
!626 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!627 = !{!628, !629, !631}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !625, file: !626, line: 6, baseType: !35, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !625, file: !626, line: 7, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !625, file: !626, line: 8, baseType: !630, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !622, file: !342, line: 680, baseType: !35, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !359, file: !342, line: 689, baseType: !170, size: 128, offset: 768)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !359, file: !342, line: 691, baseType: !635, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !342, line: 691, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !359, file: !342, line: 694, baseType: !638, size: 64, offset: 960)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !342, line: 694, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !359, file: !342, line: 697, baseType: !35, size: 64, offset: 1024)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !359, file: !342, line: 699, baseType: !347, size: 64, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !359, file: !342, line: 700, baseType: !71, size: 64, offset: 1152)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !359, file: !342, line: 711, baseType: !433, size: 64, offset: 1216)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !359, file: !342, line: 717, baseType: !646, size: 64, offset: 1280)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !342, line: 717, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !359, file: !342, line: 722, baseType: !649, offset: 1344)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !342, line: 570, elements: !400)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !319, file: !295, line: 90, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !319, file: !295, line: 91, baseType: !653, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !285, file: !185, line: 120, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!658, !252}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !661)
!661 = !{!662, !663, !667, !671, !677, !681}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !12, line: 40, baseType: !11, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !660, file: !12, line: 41, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!619}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !660, file: !12, line: 42, baseType: !668, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!71}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !660, file: !12, line: 43, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!81, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !660, file: !12, line: 44, baseType: !678, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!81}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !660, file: !12, line: 45, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !71}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !285, file: !185, line: 121, baseType: !686, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!81, !252}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !285, file: !185, line: 122, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !252, !693, !700}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !568, line: 23, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 21, size: 32, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !695, file: !568, line: 22, baseType: !698, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !73, line: 37, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !75, line: 49, baseType: !5)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !568, line: 28, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 26, size: 32, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !702, file: !568, line: 27, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !73, line: 38, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !75, line: 50, baseType: !5)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !184, file: !185, line: 70, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !710, line: 190, size: 1152, elements: !711)
!710 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !814, !815, !816, !817, !818, !821}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !710, line: 191, baseType: !219, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !709, file: !710, line: 192, baseType: !219, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !709, file: !710, line: 202, baseType: !708, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !709, file: !710, line: 203, baseType: !188, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !709, file: !710, line: 205, baseType: !625, size: 192, align: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !709, file: !710, line: 207, baseType: !81, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !709, file: !710, line: 208, baseType: !5, size: 32, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !710, line: 209, baseType: !720, size: 256, offset: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !709, file: !710, line: 209, size: 256, elements: !721)
!721 = !{!722, !734, !738}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !720, file: !710, line: 210, baseType: !723, size: 256)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !710, line: 153, size: 256, elements: !724)
!724 = !{!725, !726, !730, !733}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !723, file: !710, line: 154, baseType: !35, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !723, file: !710, line: 156, baseType: !727, size: 64, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !626, line: 12, size: 64, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !727, file: !626, line: 13, baseType: !630, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !723, file: !710, line: 162, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !710, line: 162, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !723, file: !710, line: 167, baseType: !35, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !720, file: !710, line: 211, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !710, line: 170, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !735, file: !710, line: 171, baseType: !708, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !720, file: !710, line: 212, baseType: !739, size: 256)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !710, line: 174, size: 256, elements: !740)
!740 = !{!741, !809, !812, !813}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !739, file: !710, line: 175, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !710, line: 271, size: 768, elements: !745)
!745 = !{!746, !769, !773, !777, !782, !786, !790, !794, !795, !796, !797, !805}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !744, file: !710, line: 276, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!18, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !710, line: 251, size: 1216, elements: !752)
!752 = !{!753, !754, !755, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !751, file: !710, line: 253, baseType: !708, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !751, file: !710, line: 254, baseType: !347, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !751, file: !710, line: 255, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !758, line: 66, flags: DIFlagFwdDecl)
!758 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !751, file: !710, line: 256, baseType: !71, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !751, file: !710, line: 259, baseType: !521, size: 256, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !751, file: !710, line: 260, baseType: !521, size: 256, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !751, file: !710, line: 261, baseType: !18, size: 32, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !751, file: !710, line: 262, baseType: !170, size: 128, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !751, file: !710, line: 263, baseType: !269, size: 64, offset: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !751, file: !710, line: 265, baseType: !72, size: 64, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !751, file: !710, line: 266, baseType: !619, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !751, file: !710, line: 267, baseType: !619, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !751, file: !710, line: 268, baseType: !638, size: 64, offset: 1152)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !744, file: !710, line: 277, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !750}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !744, file: !710, line: 290, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!18, !756, !71}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !744, file: !710, line: 292, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!71, !756, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !744, file: !710, line: 293, baseType: !783, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!71, !756, !71, !781}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !744, file: !710, line: 294, baseType: !787, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !756, !71}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !744, file: !710, line: 296, baseType: !791, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!301, !750, !269, !72, !350}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !744, file: !710, line: 306, baseType: !72, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !744, file: !710, line: 313, baseType: !619, size: 8, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !744, file: !710, line: 314, baseType: !791, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !744, file: !710, line: 317, baseType: !798, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!801, !750, !803}
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !802, line: 59, baseType: !5)
!802 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !710, line: 31, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !744, file: !710, line: 320, baseType: !806, size: 64, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!18, !750, !358}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !739, file: !710, line: 176, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !710, line: 35, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !739, file: !710, line: 177, baseType: !350, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !739, file: !710, line: 178, baseType: !708, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !709, file: !710, line: 215, baseType: !71, size: 64, offset: 768)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !709, file: !710, line: 221, baseType: !427, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !710, line: 223, baseType: !239, size: 16, offset: 896)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !709, file: !710, line: 224, baseType: !310, size: 16, offset: 912)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !709, file: !710, line: 225, baseType: !819, size: 64, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !710, line: 36, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !709, file: !710, line: 227, baseType: !370, size: 128, align: 64, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !184, file: !185, line: 71, baseType: !823, size: 32, offset: 448)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !824, line: 19, size: 32, elements: !825)
!824 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !823, file: !824, line: 20, baseType: !827, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !828, line: 113, baseType: !829)
!828 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !828, line: 111, size: 32, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !829, file: !828, line: 112, baseType: !219, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !184, file: !185, line: 73, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !184, file: !185, line: 74, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !184, file: !185, line: 75, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !184, file: !185, line: 76, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !184, file: !185, line: 77, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !181, file: !4, line: 47, baseType: !165, size: 64, offset: 512)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !181, file: !4, line: 48, baseType: !192, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !181, file: !4, line: 49, baseType: !840, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !4, line: 49, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !181, file: !4, line: 50, baseType: !843, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !845, line: 26, size: 256, elements: !846)
!845 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !844, file: !845, line: 27, baseType: !5, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !844, file: !845, line: 28, baseType: !849, size: 192, offset: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !850, line: 43, size: 192, elements: !851)
!850 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !849, file: !850, line: 44, baseType: !455, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !849, file: !850, line: 45, baseType: !170, size: 128, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !166, file: !4, line: 418, baseType: !855, size: 64, offset: 1408)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !4, line: 53, size: 448, elements: !857)
!857 = !{!858, !859, !864, !868, !872, !876}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !856, file: !4, line: 54, baseType: !306, size: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !856, file: !4, line: 55, baseType: !860, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!301, !855, !863, !269}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !856, file: !4, line: 57, baseType: !865, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!301, !855, !863, !188, !72}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !856, file: !4, line: 59, baseType: !869, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !165, !188}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !856, file: !4, line: 60, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!18, !165}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !856, file: !4, line: 61, baseType: !877, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !166, file: !4, line: 419, baseType: !188, size: 64, offset: 1472)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !166, file: !4, line: 420, baseType: !188, size: 64, offset: 1536)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !166, file: !4, line: 421, baseType: !192, size: 64, offset: 1600)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !166, file: !4, line: 424, baseType: !882, size: 64, offset: 1664)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !4, line: 424, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !166, file: !4, line: 425, baseType: !886, size: 64, offset: 1728)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !166, file: !4, line: 426, baseType: !5, size: 32, offset: 1792)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !166, file: !4, line: 435, baseType: !521, size: 256, offset: 1856)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !166, file: !4, line: 437, baseType: !891, size: 64, offset: 2112)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !893, line: 69, size: 320, elements: !894)
!893 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!894 = !{!895, !896, !897, !914, !916, !920, !921}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !892, file: !893, line: 70, baseType: !188, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !892, file: !893, line: 71, baseType: !165, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !892, file: !893, line: 72, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !893, line: 47, size: 256, elements: !901)
!901 = !{!902, !903, !909, !913}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !900, file: !893, line: 49, baseType: !5, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !900, file: !893, line: 51, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!18, !188, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !900, file: !893, line: 53, baseType: !910, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!18, !269, !907}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !900, file: !893, line: 55, baseType: !682, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !892, file: !893, line: 73, baseType: !915, size: 16, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !892, file: !893, line: 74, baseType: !917, size: 8, offset: 208)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !228, line: 16, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !230, line: 20, baseType: !919)
!919 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !892, file: !893, line: 75, baseType: !227, size: 8, offset: 216)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !893, line: 76, baseType: !922, size: 64, offset: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !893, line: 76, size: 64, elements: !923)
!923 = !{!924, !925, !932}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !922, file: !893, line: 77, baseType: !71, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !922, file: !893, line: 78, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !893, line: 86, size: 128, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !928, file: !893, line: 87, baseType: !5, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !928, file: !893, line: 88, baseType: !269, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !922, file: !893, line: 79, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !893, line: 92, size: 256, elements: !936)
!936 = !{!937, !938, !939, !941, !942}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !935, file: !893, line: 94, baseType: !5, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !935, file: !893, line: 95, baseType: !5, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !935, file: !893, line: 96, baseType: !940, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !935, file: !893, line: 97, baseType: !898, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !935, file: !893, line: 98, baseType: !71, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !166, file: !4, line: 438, baseType: !5, size: 32, offset: 2176)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !166, file: !4, line: 441, baseType: !5, size: 32, offset: 2208)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !166, file: !4, line: 442, baseType: !882, size: 64, offset: 2240)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !166, file: !4, line: 443, baseType: !886, size: 64, offset: 2304)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !166, file: !4, line: 444, baseType: !619, size: 8, offset: 2368)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !166, file: !4, line: 451, baseType: !619, size: 8, offset: 2376)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !166, file: !4, line: 454, baseType: !5, size: 32, offset: 2400)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !166, file: !4, line: 455, baseType: !49, size: 64, offset: 2432)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !166, file: !4, line: 458, baseType: !952, size: 64, offset: 2496)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!18}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !166, file: !4, line: 460, baseType: !956, size: 4032, align: 512, offset: 2560)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 4032, elements: !973)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !4, line: 362, size: 576, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !957, file: !4, line: 363, baseType: !71, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !957, file: !4, line: 364, baseType: !5, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !957, file: !4, line: 367, baseType: !962, size: 448, offset: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !4, line: 319, size: 448, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !962, file: !4, line: 320, baseType: !165, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !962, file: !4, line: 321, baseType: !966, size: 384, offset: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !967, line: 40, size: 384, elements: !968)
!967 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !966, file: !967, line: 41, baseType: !970, size: 384, align: 64)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 384, align: 64, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 2)
!973 = !{!974}
!974 = !DISubrange(count: 7)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !166, file: !4, line: 463, baseType: !976, size: 192, offset: 6592)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !977, line: 8, size: 192, elements: !978)
!977 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!978 = !{!979, !980, !982}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !976, file: !977, line: 10, baseType: !5, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !976, file: !977, line: 11, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !976, file: !977, line: 12, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !985, line: 59, size: 48, elements: !986)
!985 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!986 = !{!987, !988, !989, !990, !991, !992}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !984, file: !985, line: 60, baseType: !557, size: 16)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !984, file: !985, line: 61, baseType: !557, size: 16, offset: 16)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !984, file: !985, line: 63, baseType: !5, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !984, file: !985, line: 64, baseType: !5, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !984, file: !985, line: 65, baseType: !5, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !984, file: !985, line: 66, baseType: !5, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !166, file: !4, line: 465, baseType: !35, size: 64, offset: 6784)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !166, file: !4, line: 469, baseType: !5, size: 32, offset: 6848)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !166, file: !4, line: 470, baseType: !170, size: 128, offset: 6912)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !166, file: !4, line: 471, baseType: !997, size: 64, offset: 7040)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !999, line: 33, size: 96, elements: !1000)
!999 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1000 = !{!1001, !1002, !1003, !1004}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !998, file: !999, line: 37, baseType: !18, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !998, file: !999, line: 43, baseType: !18, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !998, file: !999, line: 45, baseType: !239, size: 16, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !998, file: !999, line: 47, baseType: !239, size: 16, offset: 80)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !166, file: !4, line: 476, baseType: !1006, size: 64, offset: 7104)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !4, line: 378, size: 256, elements: !1008)
!1008 = !{!1009, !1026, !1027, !1028}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1007, file: !4, line: 379, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1012, line: 204, baseType: !1013)
!1012 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1012, line: 197, size: 192, elements: !1014)
!1014 = !{!1015, !1018, !1019, !1020, !1022, !1024}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1013, file: !1012, line: 198, baseType: !1016, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1012, line: 21, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !230, line: 27, baseType: !5)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1013, file: !1012, line: 199, baseType: !231, size: 8, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1013, file: !1012, line: 200, baseType: !231, size: 8, offset: 40)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1013, file: !1012, line: 201, baseType: !1021, size: 16, offset: 48)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1012, line: 17, baseType: !238)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1013, file: !1012, line: 202, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1012, line: 16, baseType: !428)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1013, file: !1012, line: 203, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1012, line: 22, baseType: !428)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1007, file: !4, line: 380, baseType: !5, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1007, file: !4, line: 381, baseType: !269, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1007, file: !4, line: 382, baseType: !269, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !166, file: !4, line: 477, baseType: !1007, size: 256, offset: 7168)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !166, file: !4, line: 480, baseType: !1031, size: 64, offset: 7424)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !4, line: 480, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !166, file: !4, line: 483, baseType: !1034, size: 64, offset: 7488)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !4, line: 483, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !166, file: !4, line: 488, baseType: !269, size: 64, offset: 7552)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !166, file: !4, line: 492, baseType: !71, size: 64, offset: 7616)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !166, file: !4, line: 493, baseType: !5, size: 32, offset: 7680)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !166, file: !4, line: 495, baseType: !71, size: 64, offset: 7744)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !166, file: !4, line: 496, baseType: !5, size: 32, offset: 7808)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !166, file: !4, line: 499, baseType: !5, size: 32, offset: 7840)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !166, file: !4, line: 500, baseType: !1043, size: 64, offset: 7872)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1045, line: 45, baseType: !1046)
!1045 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !166, file: !4, line: 503, baseType: !5, size: 32, offset: 7936)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !166, file: !4, line: 504, baseType: !1049, size: 64, offset: 8000)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1052, line: 96, size: 192, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1053 = !{!1054, !1055, !1116, !1119}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1051, file: !1052, line: 97, baseType: !5, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1051, file: !1052, line: 98, baseType: !1056, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1052, line: 24, size: 3072, elements: !1058)
!1058 = !{!1059, !1061, !1062, !1063, !1064, !1078, !1079, !1080, !1081, !1100, !1101, !1102, !1113, !1114, !1115}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1057, file: !1052, line: 26, baseType: !1060, size: 128)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 128, elements: !971)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1057, file: !1052, line: 27, baseType: !1060, size: 128, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1057, file: !1052, line: 28, baseType: !18, size: 32, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1057, file: !1052, line: 31, baseType: !199, size: 32, align: 512, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1057, file: !1052, line: 32, baseType: !1065, size: 960, offset: 576)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1066, line: 206, size: 960, elements: !1067)
!1066 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1067 = !{!1068, !1069, !1072, !1074, !1075, !1077}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1065, file: !1066, line: 207, baseType: !373, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1065, file: !1066, line: 208, baseType: !1070, size: 256, offset: 64)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 256, elements: !502)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1065, file: !1066, line: 209, baseType: !1073, size: 256, offset: 320)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !502)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1065, file: !1066, line: 213, baseType: !304, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1065, file: !1066, line: 215, baseType: !1076, size: 256, offset: 640)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 256, elements: !502)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !1066, line: 216, baseType: !227, size: 8, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1057, file: !1052, line: 33, baseType: !35, size: 64, offset: 1536)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1057, file: !1052, line: 34, baseType: !35, size: 64, offset: 1600)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1057, file: !1052, line: 35, baseType: !619, size: 8, offset: 1664)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1057, file: !1052, line: 36, baseType: !1082, size: 320, offset: 1728)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1083, line: 11, size: 320, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1084 = !{!1085, !1092, !1093, !1098}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1082, file: !1083, line: 16, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !73, line: 198, size: 128, elements: !1087)
!1087 = !{!1088, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1086, file: !73, line: 199, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1086, file: !73, line: 199, baseType: !1091, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1082, file: !1083, line: 17, baseType: !35, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1082, file: !1083, line: 18, baseType: !1094, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !1083, line: 19, baseType: !1099, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !228, line: 21, baseType: !1017)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1057, file: !1052, line: 37, baseType: !584, size: 256, offset: 2048)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1057, file: !1052, line: 38, baseType: !370, size: 128, align: 64, offset: 2304)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1057, file: !1052, line: 39, baseType: !1103, size: 64, offset: 2432)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1052, line: 49, size: 768, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1104, file: !1052, line: 50, baseType: !199, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1104, file: !1052, line: 51, baseType: !1073, size: 256, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1104, file: !1052, line: 53, baseType: !1073, size: 256, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1104, file: !1052, line: 54, baseType: !35, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1104, file: !1052, line: 55, baseType: !1103, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1104, file: !1052, line: 56, baseType: !18, size: 32, offset: 704)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1104, file: !1052, line: 57, baseType: !18, size: 32, offset: 736)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1057, file: !1052, line: 40, baseType: !35, size: 64, offset: 2496)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1057, file: !1052, line: 42, baseType: !18, size: 32, offset: 2560)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1057, file: !1052, line: 43, baseType: !1050, size: 64, offset: 2624)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1051, file: !1052, line: 99, baseType: !1117, offset: 128)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1118, line: 211, elements: !400)
!1118 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1051, file: !1052, line: 100, baseType: !1120, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1052, line: 63, size: 3008, elements: !1122)
!1122 = !{!1123, !1124, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1154}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1121, file: !1052, line: 64, baseType: !1103, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1121, file: !1052, line: 65, baseType: !1125, size: 192, offset: 64)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, size: 192, elements: !270)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1121, file: !1052, line: 67, baseType: !18, size: 32, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1121, file: !1052, line: 68, baseType: !521, size: 256, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1121, file: !1052, line: 69, baseType: !199, size: 32, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1121, file: !1052, line: 70, baseType: !521, size: 256, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1121, file: !1052, line: 71, baseType: !35, size: 64, offset: 896)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1121, file: !1052, line: 72, baseType: !35, size: 64, offset: 960)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1121, file: !1052, line: 73, baseType: !35, size: 64, offset: 1024)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1121, file: !1052, line: 74, baseType: !35, size: 64, offset: 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1121, file: !1052, line: 75, baseType: !35, size: 64, offset: 1152)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1121, file: !1052, line: 76, baseType: !35, size: 64, offset: 1216)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1121, file: !1052, line: 77, baseType: !35, size: 64, offset: 1280)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1121, file: !1052, line: 78, baseType: !35, size: 64, offset: 1344)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1121, file: !1052, line: 79, baseType: !619, size: 8, offset: 1408)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1121, file: !1052, line: 80, baseType: !35, size: 64, offset: 1472)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1121, file: !1052, line: 81, baseType: !521, size: 256, offset: 1536)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1121, file: !1052, line: 82, baseType: !844, size: 256, offset: 1792)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1121, file: !1052, line: 84, baseType: !219, size: 32, offset: 2048)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1121, file: !1052, line: 87, baseType: !35, size: 64, offset: 2112)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1121, file: !1052, line: 88, baseType: !35, size: 64, offset: 2176)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1121, file: !1052, line: 89, baseType: !1146, size: 704, offset: 2240)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !585, line: 111, size: 704, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1153}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1146, file: !585, line: 112, baseType: !584, size: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1146, file: !585, line: 113, baseType: !1082, size: 320, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1146, file: !585, line: 116, baseType: !1151, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !585, line: 18, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1146, file: !585, line: 117, baseType: !18, size: 32, offset: 640)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1121, file: !1052, line: 90, baseType: !1050, size: 64, offset: 2944)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !166, file: !4, line: 515, baseType: !1156, size: 64, offset: 8064)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1158, line: 117, size: 128, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1157, file: !1158, line: 118, baseType: !500, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1157, file: !1158, line: 119, baseType: !500, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1157, file: !1158, line: 120, baseType: !304, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !166, file: !4, line: 516, baseType: !5, size: 32, offset: 8128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !166, file: !4, line: 519, baseType: !5, size: 32, offset: 8160)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !166, file: !4, line: 520, baseType: !1166, size: 64, offset: 8192)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !166, file: !4, line: 523, baseType: !1168, size: 64, offset: 8256)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !4, line: 523, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !166, file: !4, line: 524, baseType: !5, size: 32, offset: 8320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !166, file: !4, line: 525, baseType: !1173, size: 64, offset: 8384)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4, line: 525, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !166, file: !4, line: 526, baseType: !5, size: 32, offset: 8448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !166, file: !4, line: 533, baseType: !71, size: 64, offset: 8512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !166, file: !4, line: 534, baseType: !5, size: 32, offset: 8576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !166, file: !4, line: 535, baseType: !36, size: 64, offset: 8640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !166, file: !4, line: 536, baseType: !5, size: 32, offset: 8704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !166, file: !4, line: 539, baseType: !18, size: 32, offset: 8736)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !166, file: !4, line: 540, baseType: !1183, size: 64, offset: 8768)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1185, line: 32, size: 64, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1184, file: !1185, line: 33, baseType: !500, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1184, file: !1185, line: 34, baseType: !500, size: 32, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !166, file: !4, line: 563, baseType: !170, size: 128, offset: 8832)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !166, file: !4, line: 565, baseType: !170, size: 128, offset: 8960)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !166, file: !4, line: 568, baseType: !1192, size: 64, offset: 9088)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !166, file: !4, line: 570, baseType: !219, size: 32, offset: 9152)
!1196 = !{!1197}
!1197 = !DILocalVariable(name: "m", arg: 1, scope: !162, file: !1, line: 75, type: !165)
!1198 = !DILocation(line: 75, column: 39, scope: !162)
!1199 = !DILocation(line: 78, column: 2, scope: !162)
!1200 = !DILocation(line: 78, column: 9, scope: !162)
!1201 = !DILocation(line: 78, column: 12, scope: !162)
!1202 = !DILocation(line: 78, column: 26, scope: !162)
!1203 = !DILocation(line: 79, column: 40, scope: !162)
!1204 = !DILocation(line: 79, column: 43, scope: !162)
!1205 = !DILocation(line: 79, column: 28, scope: !162)
!1206 = !DILocation(line: 79, column: 56, scope: !162)
!1207 = !DILocation(line: 79, column: 9, scope: !162)
!1208 = !DILocation(line: 0, scope: !162)
!1209 = !DILocation(line: 80, column: 3, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !162, file: !1, line: 79, column: 60)
!1211 = !DILocation(line: 80, column: 6, scope: !1210)
!1212 = !DILocation(line: 80, column: 13, scope: !1210)
!1213 = !DILocation(line: 81, column: 3, scope: !1210)
!1214 = !DILocation(line: 81, column: 6, scope: !1210)
!1215 = !DILocation(line: 81, column: 19, scope: !1210)
!1216 = distinct !{!1216, !1199, !1217, !1218, !1219}
!1217 = !DILocation(line: 82, column: 2, scope: !162)
!1218 = !{!"llvm.loop.mustprogress"}
!1219 = !{!"llvm.loop.unroll.disable"}
!1220 = !DILocation(line: 84, column: 2, scope: !162)
!1221 = !DILocation(line: 84, column: 9, scope: !162)
!1222 = !DILocation(line: 84, column: 12, scope: !162)
!1223 = !DILocation(line: 84, column: 26, scope: !162)
!1224 = !DILocation(line: 85, column: 40, scope: !162)
!1225 = !DILocation(line: 85, column: 43, scope: !162)
!1226 = !DILocation(line: 85, column: 51, scope: !162)
!1227 = !DILocation(line: 85, column: 54, scope: !162)
!1228 = !DILocation(line: 85, column: 68, scope: !162)
!1229 = !DILocation(line: 85, column: 28, scope: !162)
!1230 = !DILocation(line: 86, column: 7, scope: !162)
!1231 = !DILocation(line: 85, column: 9, scope: !162)
!1232 = !DILocation(line: 87, column: 3, scope: !162)
!1233 = !DILocation(line: 87, column: 6, scope: !162)
!1234 = !DILocation(line: 87, column: 19, scope: !162)
!1235 = distinct !{!1235, !1220, !1234, !1218, !1219}
!1236 = !DILocation(line: 88, column: 1, scope: !162)
!1237 = distinct !DISubprogram(name: "within_module_init", scope: !4, file: !4, line: 634, type: !1238, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1242)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!619, !35, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1242 = !{!1243, !1244, !1245}
!1243 = !DILocalVariable(name: "addr", arg: 1, scope: !1237, file: !4, line: 634, type: !35)
!1244 = !DILocalVariable(name: "mod", arg: 2, scope: !1237, file: !4, line: 635, type: !1240)
!1245 = !DILocalVariable(name: "type", scope: !1246, file: !4, line: 637, type: !17)
!1246 = distinct !DILexicalBlock(scope: !1237, file: !4, line: 637, column: 2)
!1247 = !DILocation(line: 634, column: 53, scope: !1237)
!1248 = !DILocation(line: 635, column: 32, scope: !1237)
!1249 = !DILocation(line: 637, column: 2, scope: !1246)
!1250 = !DILocation(line: 637, column: 2, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !4, line: 637, column: 2)
!1252 = !DILocation(line: 637, column: 2, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1251, file: !4, line: 637, column: 2)
!1254 = !DILocation(line: 638, column: 30, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !4, line: 638, column: 7)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !4, line: 637, column: 37)
!1257 = !DILocation(line: 638, column: 36, scope: !1255)
!1258 = !DILocation(line: 638, column: 41, scope: !1255)
!1259 = !DILocation(line: 638, column: 7, scope: !1255)
!1260 = !DILocation(line: 638, column: 7, scope: !1256)
!1261 = !DILocation(line: 639, column: 4, scope: !1255)
!1262 = !DILocation(line: 640, column: 2, scope: !1256)
!1263 = distinct !{!1263, !1249, !1264, !1218, !1219}
!1264 = !DILocation(line: 640, column: 2, scope: !1246)
!1265 = !DILocation(line: 641, column: 2, scope: !1237)
!1266 = !DILocation(line: 642, column: 1, scope: !1237)
!1267 = distinct !DISubprogram(name: "ex_to_insn", scope: !1, file: !1, line: 18, type: !1268, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!35, !92}
!1270 = !{!1271}
!1271 = !DILocalVariable(name: "x", arg: 1, scope: !1267, file: !1, line: 18, type: !92)
!1272 = !DILocation(line: 18, column: 76, scope: !1267)
!1273 = !DILocation(line: 20, column: 25, scope: !1267)
!1274 = !DILocation(line: 20, column: 28, scope: !1267)
!1275 = !DILocation(line: 20, column: 9, scope: !1267)
!1276 = !DILocation(line: 20, column: 35, scope: !1267)
!1277 = !DILocation(line: 20, column: 38, scope: !1267)
!1278 = !DILocation(line: 20, column: 33, scope: !1267)
!1279 = !DILocation(line: 20, column: 2, scope: !1267)
!1280 = distinct !DISubprogram(name: "search_extable", scope: !1, file: !1, line: 112, type: !1281, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1284)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!92, !92, !1283, !35}
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!1284 = !{!1285, !1286, !1287}
!1285 = !DILocalVariable(name: "base", arg: 1, scope: !1280, file: !1, line: 112, type: !92)
!1286 = !DILocalVariable(name: "num", arg: 2, scope: !1280, file: !1, line: 113, type: !1283)
!1287 = !DILocalVariable(name: "value", arg: 3, scope: !1280, file: !1, line: 114, type: !35)
!1288 = !DILocation(line: 112, column: 52, scope: !1280)
!1289 = !DILocation(line: 113, column: 22, scope: !1280)
!1290 = !DILocation(line: 114, column: 23, scope: !1280)
!1291 = !DILocation(line: 116, column: 25, scope: !1280)
!1292 = !DILocation(line: 116, column: 31, scope: !1280)
!1293 = !DILocation(line: 116, column: 9, scope: !1280)
!1294 = !DILocation(line: 116, column: 2, scope: !1280)
!1295 = !DISubprogram(name: "bsearch", scope: !1296, file: !1296, line: 30, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DIFile(filename: "./include/linux/bsearch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "349c7fd6b20db6d92bc7bafdce6c5532")
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!71, !81, !81, !72, !72, !77}
!1299 = distinct !DISubprogram(name: "cmp_ex_search", scope: !1, file: !1, line: 91, type: !79, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1300)
!1300 = !{!1301, !1302, !1303, !1304}
!1301 = !DILocalVariable(name: "key", arg: 1, scope: !1299, file: !1, line: 91, type: !81)
!1302 = !DILocalVariable(name: "elt", arg: 2, scope: !1299, file: !1, line: 91, type: !81)
!1303 = !DILocalVariable(name: "_elt", scope: !1299, file: !1, line: 93, type: !92)
!1304 = !DILocalVariable(name: "_key", scope: !1299, file: !1, line: 94, type: !35)
!1305 = !DILocation(line: 91, column: 38, scope: !1299)
!1306 = !DILocation(line: 91, column: 55, scope: !1299)
!1307 = !DILocation(line: 93, column: 2, scope: !1299)
!1308 = !DILocation(line: 93, column: 38, scope: !1299)
!1309 = !DILocation(line: 93, column: 45, scope: !1299)
!1310 = !DILocation(line: 94, column: 2, scope: !1299)
!1311 = !DILocation(line: 94, column: 16, scope: !1299)
!1312 = !DILocation(line: 94, column: 41, scope: !1299)
!1313 = !DILocation(line: 94, column: 23, scope: !1299)
!1314 = !DILocation(line: 97, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 97, column: 6)
!1316 = !DILocation(line: 97, column: 24, scope: !1315)
!1317 = !DILocation(line: 97, column: 13, scope: !1315)
!1318 = !DILocation(line: 97, column: 11, scope: !1315)
!1319 = !DILocation(line: 97, column: 6, scope: !1299)
!1320 = !DILocation(line: 98, column: 3, scope: !1315)
!1321 = !DILocation(line: 99, column: 6, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 99, column: 6)
!1323 = !DILocation(line: 99, column: 24, scope: !1322)
!1324 = !DILocation(line: 99, column: 13, scope: !1322)
!1325 = !DILocation(line: 99, column: 11, scope: !1322)
!1326 = !DILocation(line: 99, column: 6, scope: !1299)
!1327 = !DILocation(line: 100, column: 3, scope: !1322)
!1328 = !DILocation(line: 101, column: 2, scope: !1299)
!1329 = !DILocation(line: 102, column: 1, scope: !1299)
!1330 = distinct !DISubprogram(name: "within_module_mem_type", scope: !4, file: !4, line: 613, type: !1331, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!619, !35, !1240, !17}
!1333 = !{!1334, !1335, !1336, !1337, !1338}
!1334 = !DILocalVariable(name: "addr", arg: 1, scope: !1330, file: !4, line: 613, type: !35)
!1335 = !DILocalVariable(name: "mod", arg: 2, scope: !1330, file: !4, line: 614, type: !1240)
!1336 = !DILocalVariable(name: "type", arg: 3, scope: !1330, file: !4, line: 615, type: !17)
!1337 = !DILocalVariable(name: "base", scope: !1330, file: !4, line: 617, type: !35)
!1338 = !DILocalVariable(name: "size", scope: !1330, file: !4, line: 617, type: !35)
!1339 = !DILocation(line: 613, column: 57, scope: !1330)
!1340 = !DILocation(line: 614, column: 29, scope: !1330)
!1341 = !DILocation(line: 615, column: 26, scope: !1330)
!1342 = !DILocation(line: 617, column: 2, scope: !1330)
!1343 = !DILocation(line: 617, column: 16, scope: !1330)
!1344 = !DILocation(line: 617, column: 22, scope: !1330)
!1345 = !DILocation(line: 619, column: 24, scope: !1330)
!1346 = !DILocation(line: 619, column: 29, scope: !1330)
!1347 = !DILocation(line: 619, column: 33, scope: !1330)
!1348 = !DILocation(line: 619, column: 39, scope: !1330)
!1349 = !DILocation(line: 619, column: 9, scope: !1330)
!1350 = !DILocation(line: 619, column: 7, scope: !1330)
!1351 = !DILocation(line: 620, column: 9, scope: !1330)
!1352 = !DILocation(line: 620, column: 14, scope: !1330)
!1353 = !DILocation(line: 620, column: 18, scope: !1330)
!1354 = !DILocation(line: 620, column: 24, scope: !1330)
!1355 = !DILocation(line: 620, column: 7, scope: !1330)
!1356 = !DILocation(line: 621, column: 9, scope: !1330)
!1357 = !DILocation(line: 621, column: 16, scope: !1330)
!1358 = !DILocation(line: 621, column: 14, scope: !1330)
!1359 = !DILocation(line: 621, column: 23, scope: !1330)
!1360 = !DILocation(line: 621, column: 21, scope: !1330)
!1361 = !DILocation(line: 622, column: 1, scope: !1330)
!1362 = !DILocation(line: 621, column: 2, scope: !1330)
