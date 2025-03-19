; ModuleID = 'kernel/extable.c'
source_filename = "kernel/extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.exception_table_entry = type { i32, i32, i32 }
%struct.kprobe_insn_cache = type { %struct.mutex, ptr, ptr, ptr, %struct.list_head, i64, i32 }

@text_mutex = hidden global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @text_mutex, i64 16), ptr getelementptr (i8, ptr @text_mutex, i64 16) } }, align 8, !dbg !0
@main_extable_sort_needed = hidden global i32 1, section ".init.data", align 4, !dbg !26
@__stop___ex_table = external dso_local global [0 x %struct.exception_table_entry], align 4
@__start___ex_table = external dso_local global [0 x %struct.exception_table_entry], align 4
@.str = private unnamed_addr constant [25 x i8] c"\015Sorting __ex_table...\0A\00", align 1, !dbg !32
@system_state = external dso_local global i32, align 4
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_sinittext = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@kprobe_optinsn_slots = external dso_local global %struct.kprobe_insn_cache, align 8
@kprobe_insn_slots = external dso_local global %struct.kprobe_insn_cache, align 8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @sort_main_extable() #0 section ".init.text" align 16 !dbg !107 {
entry:
  %tmp = alloca i32, align 4
  %0 = load i32, ptr @main_extable_sort_needed, align 4, !dbg !110
  %tobool = icmp ne i32 %0, 0, !dbg !110
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !112

land.lhs.true:                                    ; preds = %entry
  br i1 icmp ugt (ptr @__stop___ex_table, ptr @__start___ex_table), label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !114

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !117

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #7, !dbg !114
  store i32 %call, ptr %tmp, align 4, !dbg !117
  %1 = load i32, ptr %tmp, align 4, !dbg !114
  call void @sort_extable(ptr noundef @__start___ex_table, ptr noundef @__stop___ex_table) #8, !dbg !119
  br label %if.end, !dbg !120

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  ret void, !dbg !121
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !122 dso_local i32 @_printk(ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !128 dso_local void @sort_extable(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @search_kernel_exception_table(i64 noundef %addr) #3 align 16 !dbg !139 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !145, metadata !DIExpression()), !dbg !146
  %sub.ptr.div = sdiv exact i64 sub (i64 ptrtoint (ptr @__stop___ex_table to i64), i64 ptrtoint (ptr @__start___ex_table to i64)), 12, !dbg !147
  %0 = load i64, ptr %addr.addr, align 8, !dbg !148
  %call = call ptr @search_extable(ptr noundef @__start___ex_table, i64 noundef %sub.ptr.div, i64 noundef %0) #8, !dbg !149
  ret ptr %call, !dbg !150
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !151 dso_local ptr @search_extable(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @search_exception_tables(i64 noundef %addr) #3 align 16 !dbg !159 {
entry:
  %addr.addr = alloca i64, align 8
  %e = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !161, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #9, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %e, metadata !162, metadata !DIExpression()), !dbg !165
  %0 = load i64, ptr %addr.addr, align 8, !dbg !166
  %call = call ptr @search_kernel_exception_table(i64 noundef %0) #8, !dbg !167
  store ptr %call, ptr %e, align 8, !dbg !168
  %1 = load ptr, ptr %e, align 8, !dbg !169
  %tobool = icmp ne ptr %1, null, !dbg !169
  br i1 %tobool, label %if.end, label %if.then, !dbg !171

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %addr.addr, align 8, !dbg !172
  %call1 = call ptr @search_module_extables(i64 noundef %2) #8, !dbg !173
  store ptr %call1, ptr %e, align 8, !dbg !174
  br label %if.end, !dbg !175

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %e, align 8, !dbg !176
  %tobool2 = icmp ne ptr %3, null, !dbg !176
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !178

if.then3:                                         ; preds = %if.end
  %4 = load i64, ptr %addr.addr, align 8, !dbg !179
  %call4 = call ptr @search_bpf_extables(i64 noundef %4) #8, !dbg !180
  store ptr %call4, ptr %e, align 8, !dbg !181
  br label %if.end5, !dbg !182

if.end5:                                          ; preds = %if.then3, %if.end
  %5 = load ptr, ptr %e, align 8, !dbg !183
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #9, !dbg !184
  ret ptr %5, !dbg !185
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !186 dso_local ptr @search_module_extables(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @search_bpf_extables(i64 noundef %addr) #6 align 16 !dbg !187 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !189, metadata !DIExpression()), !dbg !190
  ret ptr null, !dbg !191
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @core_kernel_text(i64 noundef %addr) #3 align 16 !dbg !192 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i64, ptr %addr.addr, align 8, !dbg !198
  %call = call i32 @is_kernel_text(i64 noundef %0) #8, !dbg !200
  %tobool = icmp ne i32 %call, 0, !dbg !200
  br i1 %tobool, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !202
  br label %return, !dbg !202

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @system_state, align 4, !dbg !203
  %cmp = icmp ult i32 %1, 2, !dbg !205
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !206

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, ptr %addr.addr, align 8, !dbg !207
  %call1 = call zeroext i1 @is_kernel_inittext(i64 noundef %2) #8, !dbg !208
  br i1 %call1, label %if.then2, label %if.end3, !dbg !209

if.then2:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !210
  br label %return, !dbg !210

if.end3:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %retval, align 4, !dbg !211
  br label %return, !dbg !211

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !212
  ret i32 %3, !dbg !212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_kernel_text(i64 noundef %addr) #6 align 16 !dbg !213 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = load i64, ptr %addr.addr, align 8, !dbg !218
  %call = call zeroext i1 @__is_kernel_text(i64 noundef %0) #8, !dbg !220
  br i1 %call, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !222
  br label %return, !dbg !222

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !223
  %call1 = call i32 @in_gate_area_no_mm(i64 noundef %1) #8, !dbg !224
  store i32 %call1, ptr %retval, align 4, !dbg !225
  br label %return, !dbg !225

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !226
  ret i32 %2, !dbg !226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_kernel_inittext(i64 noundef %addr) #6 align 16 !dbg !227 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = load i64, ptr %addr.addr, align 8, !dbg !236
  %cmp = icmp uge i64 %0, ptrtoint (ptr @_sinittext to i64), !dbg !237
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !238

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !239
  %cmp1 = icmp ult i64 %1, ptrtoint (ptr @_einittext to i64), !dbg !240
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !241
  ret i1 %2, !dbg !242
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kernel_text_address(i64 noundef %addr) #3 align 16 !dbg !243 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i64, ptr %addr.addr, align 8, !dbg !247
  %call = call i32 @kernel_text_address(i64 noundef %0) #8, !dbg !249
  %tobool = icmp ne i32 %call, 0, !dbg !249
  br i1 %tobool, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !251
  br label %return, !dbg !251

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !252
  %call1 = call zeroext i1 @is_kernel_inittext(i64 noundef %1) #8, !dbg !254
  br i1 %call1, label %if.then2, label %if.end3, !dbg !255

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !256
  br label %return, !dbg !256

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !257
  br label %return, !dbg !257

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !258
  ret i32 %2, !dbg !258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernel_text_address(i64 noundef %addr) #3 align 16 !dbg !259 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %no_rcu = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !261, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 1, ptr %no_rcu) #9, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %no_rcu, metadata !262, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !263, metadata !DIExpression()), !dbg !269
  store i32 1, ptr %ret, align 4, !dbg !269
  %0 = load i64, ptr %addr.addr, align 8, !dbg !270
  %call = call i32 @core_kernel_text(i64 noundef %0) #8, !dbg !272
  %tobool = icmp ne i32 %call, 0, !dbg !272
  br i1 %tobool, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !274

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @rcu_is_watching() #8, !dbg !275
  %lnot = xor i1 %call1, true, !dbg !276
  %frombool = zext i1 %lnot to i8, !dbg !277
  store i8 %frombool, ptr %no_rcu, align 1, !dbg !277
  %1 = load i8, ptr %no_rcu, align 1, !dbg !278, !range !280, !noundef !281
  %tobool2 = trunc i8 %1 to i1, !dbg !278
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !282

if.then3:                                         ; preds = %if.end
  call void @ct_nmi_enter() #8, !dbg !283
  br label %if.end4, !dbg !283

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i64, ptr %addr.addr, align 8, !dbg !284
  %call5 = call zeroext i1 @is_module_text_address(i64 noundef %2) #8, !dbg !286
  br i1 %call5, label %if.then6, label %if.end7, !dbg !287

if.then6:                                         ; preds = %if.end4
  br label %out, !dbg !288

if.end7:                                          ; preds = %if.end4
  %3 = load i64, ptr %addr.addr, align 8, !dbg !289
  %call8 = call zeroext i1 @is_ftrace_trampoline(i64 noundef %3) #8, !dbg !291
  br i1 %call8, label %if.then9, label %if.end10, !dbg !292

if.then9:                                         ; preds = %if.end7
  br label %out, !dbg !293

if.end10:                                         ; preds = %if.end7
  %4 = load i64, ptr %addr.addr, align 8, !dbg !294
  %call11 = call zeroext i1 @is_kprobe_optinsn_slot(i64 noundef %4) #8, !dbg !296
  br i1 %call11, label %if.then13, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %if.end10
  %5 = load i64, ptr %addr.addr, align 8, !dbg !298
  %call12 = call zeroext i1 @is_kprobe_insn_slot(i64 noundef %5) #8, !dbg !299
  br i1 %call12, label %if.then13, label %if.end14, !dbg !300

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  br label %out, !dbg !301

if.end14:                                         ; preds = %lor.lhs.false
  %6 = load i64, ptr %addr.addr, align 8, !dbg !302
  %call15 = call zeroext i1 @is_bpf_text_address(i64 noundef %6) #8, !dbg !304
  br i1 %call15, label %if.then16, label %if.end17, !dbg !305

if.then16:                                        ; preds = %if.end14
  br label %out, !dbg !306

if.end17:                                         ; preds = %if.end14
  store i32 0, ptr %ret, align 4, !dbg !307
  br label %out, !dbg !308

out:                                              ; preds = %if.end17, %if.then16, %if.then13, %if.then9, %if.then6
  call void @llvm.dbg.label(metadata !264), !dbg !309
  %7 = load i8, ptr %no_rcu, align 1, !dbg !310, !range !280, !noundef !281
  %tobool18 = trunc i8 %7 to i1, !dbg !310
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !312

if.then19:                                        ; preds = %out
  call void @ct_nmi_exit() #8, !dbg !313
  br label %if.end20, !dbg !313

if.end20:                                         ; preds = %if.then19, %out
  %8 = load i32, ptr %ret, align 4, !dbg !314
  store i32 %8, ptr %retval, align 4, !dbg !315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !315

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !316
  call void @llvm.lifetime.end.p0(i64 1, ptr %no_rcu) #9, !dbg !316
  %9 = load i32, ptr %retval, align 4, !dbg !316
  ret i32 %9, !dbg !316
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !317 dso_local zeroext i1 @rcu_is_watching() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !321 dso_local void @ct_nmi_enter() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !323 dso_local zeroext i1 @is_module_text_address(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_ftrace_trampoline(i64 noundef %addr) #6 align 16 !dbg !325 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !328, metadata !DIExpression()), !dbg !329
  ret i1 false, !dbg !330
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_kprobe_optinsn_slot(i64 noundef %addr) #6 align 16 !dbg !331 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load i64, ptr %addr.addr, align 8, !dbg !335
  %call = call zeroext i1 @__is_insn_slot_addr(ptr noundef @kprobe_optinsn_slots, i64 noundef %0) #8, !dbg !335
  ret i1 %call, !dbg !335
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_kprobe_insn_slot(i64 noundef %addr) #6 align 16 !dbg !336 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i64, ptr %addr.addr, align 8, !dbg !339
  %call = call zeroext i1 @__is_insn_slot_addr(ptr noundef @kprobe_insn_slots, i64 noundef %0) #8, !dbg !339
  ret i1 %call, !dbg !339
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_bpf_text_address(i64 noundef %addr) #6 align 16 !dbg !340 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !343, metadata !DIExpression()), !dbg !344
  ret i1 false, !dbg !345
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !346 dso_local void @ct_nmi_exit() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @func_ptr_is_kernel_text(ptr noundef %ptr) #3 align 16 !dbg !347 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !351, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !352, metadata !DIExpression()), !dbg !355
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !356
  %1 = ptrtoint ptr %0 to i64, !dbg !357
  store i64 %1, ptr %addr, align 8, !dbg !358
  %2 = load i64, ptr %addr, align 8, !dbg !359
  %call = call i32 @core_kernel_text(i64 noundef %2) #8, !dbg !361
  %tobool = icmp ne i32 %call, 0, !dbg !361
  br i1 %tobool, label %if.then, label %if.end, !dbg !362

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !363

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %addr, align 8, !dbg !364
  %call1 = call zeroext i1 @is_module_text_address(i64 noundef %3) #8, !dbg !365
  %conv = zext i1 %call1 to i32, !dbg !365
  store i32 %conv, ptr %retval, align 4, !dbg !366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !366

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !367
  %4 = load i32, ptr %retval, align 4, !dbg !367
  ret i32 %4, !dbg !367
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__is_kernel_text(i64 noundef %addr) #6 align 16 !dbg !368 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load i64, ptr %addr.addr, align 8, !dbg !372
  %cmp = icmp uge i64 %0, ptrtoint (ptr @_stext to i64), !dbg !373
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !374

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !375
  %cmp1 = icmp ult i64 %1, ptrtoint (ptr @_etext to i64), !dbg !376
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !377
  ret i1 %2, !dbg !378
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !379 dso_local i32 @in_gate_area_no_mm(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !381 dso_local zeroext i1 @__is_insn_slot_addr(ptr noundef, i64 noundef) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "text_mutex", scope: !2, file: !3, line: 27, type: !38, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.extable.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/extable\22 -D KBUILD_BASENAME=\22extable\22 -D KBUILD_MODNAME=\22extable\22 -D __KBUILD_MODNAME=kmod_extable -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/extable.ll kernel/extable.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/extable.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6321a9c49572e8a93000fac2cfa57e48")
!4 = !{!5, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !6, line: 228, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0)
!10 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1)
!11 = !DIEnumerator(name: "SYSTEM_FREEING_INITMEM", value: 2)
!12 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 3)
!13 = !DIEnumerator(name: "SYSTEM_HALT", value: 4)
!14 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 5)
!15 = !DIEnumerator(name: "SYSTEM_RESTART", value: 6)
!16 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 7)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !{!23, !24}
!23 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{!0, !26, !32}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "main_extable_sort_needed", scope: !2, file: !3, line: 33, type: !28, isLocal: false, isDefinition: true)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !7)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 200, elements: !36)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 25)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !39, line: 66, size: 256, elements: !40)
!39 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!40 = !{!41, !52, !87, !92}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !38, file: !39, line: 67, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !43, line: 13, baseType: !44)
!43 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !46, file: !45, line: 180, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !29, line: 22, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !31, line: 30, baseType: !51)
!51 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !38, file: !39, line: 68, baseType: !53, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !54, line: 23, baseType: !55)
!54 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !54, line: 14, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !55, file: !54, line: 15, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !59, line: 44, baseType: !60)
!59 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !59, line: 14, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !59, line: 15, baseType: !63, size: 32)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !59, line: 15, size: 32, elements: !64)
!64 = !{!65, !71, !79}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !63, file: !59, line: 16, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !67, file: !45, line: 173, baseType: !70, size: 32)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !59, line: 24, baseType: !72, size: 16)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !63, file: !59, line: 24, size: 16, elements: !73)
!73 = !{!74, !78}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !72, file: !59, line: 25, baseType: !75, size: 8)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !77)
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !72, file: !59, line: 26, baseType: !75, size: 8, offset: 8)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !59, line: 28, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !63, file: !59, line: 28, size: 32, elements: !81)
!81 = !{!82, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !80, file: !59, line: 29, baseType: !83, size: 16)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !29, line: 19, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !85)
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !80, file: !59, line: 30, baseType: !83, size: 16, offset: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !38, file: !39, line: 70, baseType: !88, size: 32, offset: 96)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !89, line: 15, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !88, file: !89, line: 20, baseType: !66, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !38, file: !39, line: 72, baseType: !93, size: 128, offset: 128)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !94)
!94 = !{!95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !45, line: 191, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !93, file: !45, line: 191, baseType: !96, size: 64, offset: 64)
!98 = !{i32 7, !"Dwarf Version", i32 5}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 8, !"cf-protection-branch", i32 1}
!102 = !{i32 4, !"function_return_thunk_extern", i32 1}
!103 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!104 = !{i32 1, !"Code Model", i32 2}
!105 = !{i32 1, !"override-stack-alignment", i32 8}
!106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!107 = distinct !DISubprogram(name: "sort_main_extable", scope: !3, file: !3, line: 36, type: !108, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!108 = !DISubroutineType(types: !109)
!109 = !{null}
!110 = !DILocation(line: 38, column: 6, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 38, column: 6)
!112 = !DILocation(line: 38, column: 31, scope: !111)
!113 = !DILocation(line: 38, column: 6, scope: !107)
!114 = !DILocation(line: 40, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 40, column: 3)
!116 = distinct !DILexicalBlock(scope: !111, file: !3, line: 39, column: 48)
!117 = !DILocation(line: 40, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !3, line: 40, column: 3)
!119 = !DILocation(line: 41, column: 3, scope: !116)
!120 = !DILocation(line: 42, column: 2, scope: !116)
!121 = !DILocation(line: 43, column: 1, scope: !107)
!122 = !DISubprogram(name: "_printk", scope: !123, file: !123, line: 153, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!124 = !DISubroutineType(types: !125)
!125 = !{!70, !126, null}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!128 = !DISubprogram(name: "sort_extable", scope: !129, file: !129, line: 15, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DIFile(filename: "./include/linux/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1481929230e3bbd9bb07205c0c5f22e")
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !134, line: 23, size: 96, elements: !135)
!134 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!135 = !{!136, !137, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !133, file: !134, line: 24, baseType: !70, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !133, file: !134, line: 24, baseType: !70, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !133, file: !134, line: 24, baseType: !70, size: 32, offset: 64)
!139 = distinct !DISubprogram(name: "search_kernel_exception_table", scope: !3, file: !3, line: 47, type: !140, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !23}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!144 = !{!145}
!145 = !DILocalVariable(name: "addr", arg: 1, scope: !139, file: !3, line: 47, type: !23)
!146 = !DILocation(line: 47, column: 75, scope: !139)
!147 = !DILocation(line: 50, column: 28, scope: !139)
!148 = !DILocation(line: 50, column: 50, scope: !139)
!149 = !DILocation(line: 49, column: 9, scope: !139)
!150 = !DILocation(line: 49, column: 2, scope: !139)
!151 = !DISubprogram(name: "search_extable", scope: !129, file: !129, line: 12, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{!142, !142, !154, !23}
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !157, line: 72, baseType: !158)
!157 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !157, line: 16, baseType: !23)
!159 = distinct !DISubprogram(name: "search_exception_tables", scope: !3, file: !3, line: 54, type: !140, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "addr", arg: 1, scope: !159, file: !3, line: 54, type: !23)
!162 = !DILocalVariable(name: "e", scope: !159, file: !3, line: 56, type: !142)
!163 = !DILocation(line: 54, column: 75, scope: !159)
!164 = !DILocation(line: 56, column: 2, scope: !159)
!165 = !DILocation(line: 56, column: 38, scope: !159)
!166 = !DILocation(line: 58, column: 36, scope: !159)
!167 = !DILocation(line: 58, column: 6, scope: !159)
!168 = !DILocation(line: 58, column: 4, scope: !159)
!169 = !DILocation(line: 59, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !159, file: !3, line: 59, column: 6)
!171 = !DILocation(line: 59, column: 6, scope: !159)
!172 = !DILocation(line: 60, column: 30, scope: !170)
!173 = !DILocation(line: 60, column: 7, scope: !170)
!174 = !DILocation(line: 60, column: 5, scope: !170)
!175 = !DILocation(line: 60, column: 3, scope: !170)
!176 = !DILocation(line: 61, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !159, file: !3, line: 61, column: 6)
!178 = !DILocation(line: 61, column: 6, scope: !159)
!179 = !DILocation(line: 62, column: 27, scope: !177)
!180 = !DILocation(line: 62, column: 7, scope: !177)
!181 = !DILocation(line: 62, column: 5, scope: !177)
!182 = !DILocation(line: 62, column: 3, scope: !177)
!183 = !DILocation(line: 63, column: 9, scope: !159)
!184 = !DILocation(line: 64, column: 1, scope: !159)
!185 = !DILocation(line: 63, column: 2, scope: !159)
!186 = !DISubprogram(name: "search_module_extables", scope: !129, file: !129, line: 27, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = distinct !DISubprogram(name: "search_bpf_extables", scope: !129, file: !129, line: 40, type: !140, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !188)
!188 = !{!189}
!189 = !DILocalVariable(name: "addr", arg: 1, scope: !187, file: !129, line: 40, type: !23)
!190 = !DILocation(line: 40, column: 35, scope: !187)
!191 = !DILocation(line: 42, column: 2, scope: !187)
!192 = distinct !DISubprogram(name: "core_kernel_text", scope: !3, file: !3, line: 66, type: !193, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!70, !23}
!195 = !{!196}
!196 = !DILocalVariable(name: "addr", arg: 1, scope: !192, file: !3, line: 66, type: !23)
!197 = !DILocation(line: 66, column: 44, scope: !192)
!198 = !DILocation(line: 68, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !3, line: 68, column: 6)
!200 = !DILocation(line: 68, column: 6, scope: !199)
!201 = !DILocation(line: 68, column: 6, scope: !192)
!202 = !DILocation(line: 69, column: 3, scope: !199)
!203 = !DILocation(line: 71, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !192, file: !3, line: 71, column: 6)
!205 = !DILocation(line: 71, column: 19, scope: !204)
!206 = !DILocation(line: 71, column: 44, scope: !204)
!207 = !DILocation(line: 72, column: 25, scope: !204)
!208 = !DILocation(line: 72, column: 6, scope: !204)
!209 = !DILocation(line: 71, column: 6, scope: !192)
!210 = !DILocation(line: 73, column: 3, scope: !204)
!211 = !DILocation(line: 74, column: 2, scope: !192)
!212 = !DILocation(line: 75, column: 1, scope: !192)
!213 = distinct !DISubprogram(name: "is_kernel_text", scope: !214, file: !214, line: 27, type: !193, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !215)
!214 = !DIFile(filename: "./include/linux/kallsyms.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "797c3ad2c64a1b2c16a6a757c7a94236")
!215 = !{!216}
!216 = !DILocalVariable(name: "addr", arg: 1, scope: !213, file: !214, line: 27, type: !23)
!217 = !DILocation(line: 27, column: 48, scope: !213)
!218 = !DILocation(line: 29, column: 23, scope: !219)
!219 = distinct !DILexicalBlock(scope: !213, file: !214, line: 29, column: 6)
!220 = !DILocation(line: 29, column: 6, scope: !219)
!221 = !DILocation(line: 29, column: 6, scope: !213)
!222 = !DILocation(line: 30, column: 3, scope: !219)
!223 = !DILocation(line: 31, column: 28, scope: !213)
!224 = !DILocation(line: 31, column: 9, scope: !213)
!225 = !DILocation(line: 31, column: 2, scope: !213)
!226 = !DILocation(line: 32, column: 1, scope: !213)
!227 = distinct !DISubprogram(name: "is_kernel_inittext", scope: !228, file: !228, line: 191, type: !229, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !233)
!228 = !DIFile(filename: "./include/asm-generic/sections.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f39e7a49fe27b92edee06ba1fa02c96a")
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !23}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !232)
!232 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!233 = !{!234}
!234 = !DILocalVariable(name: "addr", arg: 1, scope: !227, file: !228, line: 191, type: !23)
!235 = !DILocation(line: 191, column: 53, scope: !227)
!236 = !DILocation(line: 193, column: 9, scope: !227)
!237 = !DILocation(line: 193, column: 14, scope: !227)
!238 = !DILocation(line: 193, column: 43, scope: !227)
!239 = !DILocation(line: 194, column: 9, scope: !227)
!240 = !DILocation(line: 194, column: 14, scope: !227)
!241 = !DILocation(line: 0, scope: !227)
!242 = !DILocation(line: 193, column: 2, scope: !227)
!243 = distinct !DISubprogram(name: "__kernel_text_address", scope: !3, file: !3, line: 77, type: !193, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!244 = !{!245}
!245 = !DILocalVariable(name: "addr", arg: 1, scope: !243, file: !3, line: 77, type: !23)
!246 = !DILocation(line: 77, column: 41, scope: !243)
!247 = !DILocation(line: 79, column: 26, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 79, column: 6)
!249 = !DILocation(line: 79, column: 6, scope: !248)
!250 = !DILocation(line: 79, column: 6, scope: !243)
!251 = !DILocation(line: 80, column: 3, scope: !248)
!252 = !DILocation(line: 89, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !243, file: !3, line: 89, column: 6)
!254 = !DILocation(line: 89, column: 6, scope: !253)
!255 = !DILocation(line: 89, column: 6, scope: !243)
!256 = !DILocation(line: 90, column: 3, scope: !253)
!257 = !DILocation(line: 91, column: 2, scope: !243)
!258 = !DILocation(line: 92, column: 1, scope: !243)
!259 = distinct !DISubprogram(name: "kernel_text_address", scope: !3, file: !3, line: 94, type: !193, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DILocalVariable(name: "addr", arg: 1, scope: !259, file: !3, line: 94, type: !23)
!262 = !DILocalVariable(name: "no_rcu", scope: !259, file: !3, line: 96, type: !231)
!263 = !DILocalVariable(name: "ret", scope: !259, file: !3, line: 97, type: !70)
!264 = !DILabel(scope: !259, name: "out", file: !3, line: 128)
!265 = !DILocation(line: 94, column: 39, scope: !259)
!266 = !DILocation(line: 96, column: 2, scope: !259)
!267 = !DILocation(line: 96, column: 7, scope: !259)
!268 = !DILocation(line: 97, column: 2, scope: !259)
!269 = !DILocation(line: 97, column: 6, scope: !259)
!270 = !DILocation(line: 99, column: 23, scope: !271)
!271 = distinct !DILexicalBlock(scope: !259, file: !3, line: 99, column: 6)
!272 = !DILocation(line: 99, column: 6, scope: !271)
!273 = !DILocation(line: 99, column: 6, scope: !259)
!274 = !DILocation(line: 100, column: 3, scope: !271)
!275 = !DILocation(line: 113, column: 12, scope: !259)
!276 = !DILocation(line: 113, column: 11, scope: !259)
!277 = !DILocation(line: 113, column: 9, scope: !259)
!278 = !DILocation(line: 116, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !259, file: !3, line: 116, column: 6)
!280 = !{i8 0, i8 2}
!281 = !{}
!282 = !DILocation(line: 116, column: 6, scope: !259)
!283 = !DILocation(line: 117, column: 3, scope: !279)
!284 = !DILocation(line: 119, column: 29, scope: !285)
!285 = distinct !DILexicalBlock(scope: !259, file: !3, line: 119, column: 6)
!286 = !DILocation(line: 119, column: 6, scope: !285)
!287 = !DILocation(line: 119, column: 6, scope: !259)
!288 = !DILocation(line: 120, column: 3, scope: !285)
!289 = !DILocation(line: 121, column: 27, scope: !290)
!290 = distinct !DILexicalBlock(scope: !259, file: !3, line: 121, column: 6)
!291 = !DILocation(line: 121, column: 6, scope: !290)
!292 = !DILocation(line: 121, column: 6, scope: !259)
!293 = !DILocation(line: 122, column: 3, scope: !290)
!294 = !DILocation(line: 123, column: 29, scope: !295)
!295 = distinct !DILexicalBlock(scope: !259, file: !3, line: 123, column: 6)
!296 = !DILocation(line: 123, column: 6, scope: !295)
!297 = !DILocation(line: 123, column: 35, scope: !295)
!298 = !DILocation(line: 123, column: 58, scope: !295)
!299 = !DILocation(line: 123, column: 38, scope: !295)
!300 = !DILocation(line: 123, column: 6, scope: !259)
!301 = !DILocation(line: 124, column: 3, scope: !295)
!302 = !DILocation(line: 125, column: 26, scope: !303)
!303 = distinct !DILexicalBlock(scope: !259, file: !3, line: 125, column: 6)
!304 = !DILocation(line: 125, column: 6, scope: !303)
!305 = !DILocation(line: 125, column: 6, scope: !259)
!306 = !DILocation(line: 126, column: 3, scope: !303)
!307 = !DILocation(line: 127, column: 6, scope: !259)
!308 = !DILocation(line: 127, column: 2, scope: !259)
!309 = !DILocation(line: 128, column: 1, scope: !259)
!310 = !DILocation(line: 129, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !259, file: !3, line: 129, column: 6)
!312 = !DILocation(line: 129, column: 6, scope: !259)
!313 = !DILocation(line: 130, column: 3, scope: !311)
!314 = !DILocation(line: 132, column: 9, scope: !259)
!315 = !DILocation(line: 132, column: 2, scope: !259)
!316 = !DILocation(line: 133, column: 1, scope: !259)
!317 = !DISubprogram(name: "rcu_is_watching", scope: !318, file: !318, line: 106, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!319 = !DISubroutineType(types: !320)
!320 = !{!231}
!321 = !DISubprogram(name: "ct_nmi_enter", scope: !322, file: !322, line: 10, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DIFile(filename: "./include/linux/context_tracking_irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b134542232810151ee599c7dcc02f3c")
!323 = !DISubprogram(name: "is_module_text_address", scope: !324, file: !324, line: 611, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!325 = distinct !DISubprogram(name: "is_ftrace_trampoline", scope: !326, file: !326, line: 900, type: !229, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!326 = !DIFile(filename: "./include/linux/ftrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4b80d89eac182dfc62518530b9fd5d2")
!327 = !{!328}
!328 = !DILocalVariable(name: "addr", arg: 1, scope: !325, file: !326, line: 900, type: !23)
!329 = !DILocation(line: 900, column: 55, scope: !325)
!330 = !DILocation(line: 902, column: 2, scope: !325)
!331 = distinct !DISubprogram(name: "is_kprobe_optinsn_slot", scope: !332, file: !332, line: 373, type: !229, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!332 = !DIFile(filename: "./include/linux/kprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "110870054f860a0910edee7c61ce83a6")
!333 = !{!334}
!334 = !DILocalVariable(name: "addr", arg: 1, scope: !331, file: !332, line: 373, type: !23)
!335 = !DILocation(line: 373, column: 1, scope: !331)
!336 = distinct !DISubprogram(name: "is_kprobe_insn_slot", scope: !332, file: !332, line: 346, type: !229, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!337 = !{!338}
!338 = !DILocalVariable(name: "addr", arg: 1, scope: !336, file: !332, line: 346, type: !23)
!339 = !DILocation(line: 346, column: 1, scope: !336)
!340 = distinct !DISubprogram(name: "is_bpf_text_address", scope: !341, file: !341, line: 1189, type: !229, scopeLine: 1190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!341 = !DIFile(filename: "./include/linux/filter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43b67721304eb507e213c9e8d238baef")
!342 = !{!343}
!343 = !DILocalVariable(name: "addr", arg: 1, scope: !340, file: !341, line: 1189, type: !23)
!344 = !DILocation(line: 1189, column: 54, scope: !340)
!345 = !DILocation(line: 1191, column: 2, scope: !340)
!346 = !DISubprogram(name: "ct_nmi_exit", scope: !322, file: !322, line: 11, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = distinct !DISubprogram(name: "func_ptr_is_kernel_text", scope: !3, file: !3, line: 163, type: !348, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!70, !24}
!350 = !{!351, !352}
!351 = !DILocalVariable(name: "ptr", arg: 1, scope: !347, file: !3, line: 163, type: !24)
!352 = !DILocalVariable(name: "addr", scope: !347, file: !3, line: 165, type: !23)
!353 = !DILocation(line: 163, column: 35, scope: !347)
!354 = !DILocation(line: 165, column: 2, scope: !347)
!355 = !DILocation(line: 165, column: 16, scope: !347)
!356 = !DILocation(line: 166, column: 25, scope: !347)
!357 = !DILocation(line: 166, column: 9, scope: !347)
!358 = !DILocation(line: 166, column: 7, scope: !347)
!359 = !DILocation(line: 167, column: 23, scope: !360)
!360 = distinct !DILexicalBlock(scope: !347, file: !3, line: 167, column: 6)
!361 = !DILocation(line: 167, column: 6, scope: !360)
!362 = !DILocation(line: 167, column: 6, scope: !347)
!363 = !DILocation(line: 168, column: 3, scope: !360)
!364 = !DILocation(line: 169, column: 32, scope: !347)
!365 = !DILocation(line: 169, column: 9, scope: !347)
!366 = !DILocation(line: 169, column: 2, scope: !347)
!367 = !DILocation(line: 170, column: 1, scope: !347)
!368 = distinct !DISubprogram(name: "__is_kernel_text", scope: !228, file: !228, line: 206, type: !229, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !369)
!369 = !{!370}
!370 = !DILocalVariable(name: "addr", arg: 1, scope: !368, file: !228, line: 206, type: !23)
!371 = !DILocation(line: 206, column: 51, scope: !368)
!372 = !DILocation(line: 208, column: 9, scope: !368)
!373 = !DILocation(line: 208, column: 14, scope: !368)
!374 = !DILocation(line: 208, column: 39, scope: !368)
!375 = !DILocation(line: 209, column: 9, scope: !368)
!376 = !DILocation(line: 209, column: 14, scope: !368)
!377 = !DILocation(line: 0, scope: !368)
!378 = !DILocation(line: 208, column: 2, scope: !368)
!379 = !DISubprogram(name: "in_gate_area_no_mm", scope: !380, file: !380, line: 3724, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!381 = !DISubprogram(name: "__is_insn_slot_addr", scope: !332, file: !332, line: 314, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{!231, !384, !23}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kprobe_insn_cache", file: !332, line: 299, size: 704, elements: !386)
!386 = !{!387, !388, !392, !396, !397, !398, !399}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !385, file: !332, line: 300, baseType: !38, size: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !385, file: !332, line: 301, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!24}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !385, file: !332, line: 302, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !24}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !385, file: !332, line: 303, baseType: !126, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !385, file: !332, line: 304, baseType: !93, size: 128, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "insn_size", scope: !385, file: !332, line: 305, baseType: !155, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_garbage", scope: !385, file: !332, line: 306, baseType: !70, size: 32, offset: 640)
