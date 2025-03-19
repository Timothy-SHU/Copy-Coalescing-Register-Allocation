; ModuleID = 'drivers/clocksource/i8253.c'
source_filename = "drivers/clocksource/i8253.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_i8253_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad i8253_lock ; .previous"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.paravirt_patch_template = type { %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_cpu_ops = type { ptr }
%struct.pv_irq_ops = type {}
%struct.pv_mmu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pv_lock_ops = type { ptr, %struct.paravirt_callee_save, ptr, ptr, %struct.paravirt_callee_save }
%struct.paravirt_callee_save = type { ptr }

@i8253_lock = hidden global %struct.raw_spinlock zeroinitializer, align 4, !dbg !0
@__UNIQUE_ID___addressable_i8253_lock198 = internal global ptr @i8253_lock, section ".discard.addressable", align 8, !dbg !41
@i8253_clear_counter_on_shutdown = hidden global i8 1, section ".data..ro_after_init", align 1, !dbg !43
@.str = private unnamed_addr constant [4 x i8] c"pit\00", align 1, !dbg !48
@i8253_clockevent = hidden global %struct.clock_event_device { ptr null, ptr @pit_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 1, i64 0, ptr @pit_set_periodic, ptr null, ptr null, ptr @pit_shutdown, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, ptr @.str, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [48 x i8] undef }, align 64, !dbg !54
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !1142
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_i8253_lock198], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clockevent_i8253_disable() #0 align 16 !dbg !1157 {
entry:
  call void @_raw_spin_lock(ptr noundef @i8253_lock) #9, !dbg !1158
  call void @outb_p(i8 noundef zeroext 48, i16 noundef zeroext 67) #9, !dbg !1159
  %0 = load i8, ptr @i8253_clear_counter_on_shutdown, align 1, !dbg !1160, !range !1162, !noundef !351
  %tobool = trunc i8 %0 to i1, !dbg !1160
  br i1 %tobool, label %if.then, label %if.end, !dbg !1163

if.then:                                          ; preds = %entry
  call void @outb_p(i8 noundef zeroext 0, i16 noundef zeroext 64) #9, !dbg !1164
  call void @outb_p(i8 noundef zeroext 0, i16 noundef zeroext 64) #9, !dbg !1166
  br label %if.end, !dbg !1167

if.end:                                           ; preds = %if.then, %entry
  call void @_raw_spin_unlock(ptr noundef @i8253_lock) #9, !dbg !1168
  ret void, !dbg !1169
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1170 dso_local void @_raw_spin_lock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @outb_p(i8 noundef zeroext %value, i16 noundef zeroext %port) #2 align 16 !dbg !1175 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1180, metadata !DIExpression()), !dbg !1182
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1181, metadata !DIExpression()), !dbg !1182
  %0 = load i8, ptr %value.addr, align 1, !dbg !1182
  %1 = load i16, ptr %port.addr, align 2, !dbg !1182
  call void @__outb(i8 noundef zeroext %0, i16 noundef zeroext %1) #9, !dbg !1182
  call void @slow_down_io() #9, !dbg !1182
  ret void, !dbg !1182
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1183 dso_local void @_raw_spin_unlock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pit_next_event(i64 noundef %delta, ptr noundef %evt) #0 align 16 !dbg !1184 {
entry:
  %delta.addr = alloca i64, align 8
  %evt.addr = alloca ptr, align 8
  store i64 %delta, ptr %delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delta.addr, metadata !1186, metadata !DIExpression()), !dbg !1188
  store ptr %evt, ptr %evt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %evt.addr, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @_raw_spin_lock(ptr noundef @i8253_lock) #9, !dbg !1190
  %0 = load i64, ptr %delta.addr, align 8, !dbg !1191
  %and = and i64 %0, 255, !dbg !1192
  %conv = trunc i64 %and to i8, !dbg !1191
  call void @outb_p(i8 noundef zeroext %conv, i16 noundef zeroext 64) #9, !dbg !1193
  %1 = load i64, ptr %delta.addr, align 8, !dbg !1194
  %shr = lshr i64 %1, 8, !dbg !1195
  %conv1 = trunc i64 %shr to i8, !dbg !1194
  call void @outb_p(i8 noundef zeroext %conv1, i16 noundef zeroext 64) #9, !dbg !1196
  call void @_raw_spin_unlock(ptr noundef @i8253_lock) #9, !dbg !1197
  ret i32 0, !dbg !1198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pit_set_periodic(ptr noundef %evt) #0 align 16 !dbg !1199 {
entry:
  %evt.addr = alloca ptr, align 8
  store ptr %evt, ptr %evt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %evt.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @_raw_spin_lock(ptr noundef @i8253_lock) #9, !dbg !1203
  call void @outb_p(i8 noundef zeroext 52, i16 noundef zeroext 67) #9, !dbg !1204
  call void @outb_p(i8 noundef zeroext -87, i16 noundef zeroext 64) #9, !dbg !1205
  call void @outb_p(i8 noundef zeroext 4, i16 noundef zeroext 64) #9, !dbg !1206
  call void @_raw_spin_unlock(ptr noundef @i8253_lock) #9, !dbg !1207
  ret i32 0, !dbg !1208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pit_shutdown(ptr noundef %evt) #0 align 16 !dbg !1209 {
entry:
  %retval = alloca i32, align 4
  %evt.addr = alloca ptr, align 8
  store ptr %evt, ptr %evt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %evt.addr, metadata !1211, metadata !DIExpression()), !dbg !1212
  %0 = load ptr, ptr %evt.addr, align 8, !dbg !1213
  %call = call zeroext i1 @clockevent_state_oneshot(ptr noundef %0) #9, !dbg !1215
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !1216

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %evt.addr, align 8, !dbg !1217
  %call1 = call zeroext i1 @clockevent_state_periodic(ptr noundef %1) #9, !dbg !1218
  br i1 %call1, label %if.end, label %if.then, !dbg !1219

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1220
  br label %return, !dbg !1220

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @clockevent_i8253_disable() #9, !dbg !1221
  store i32 0, ptr %retval, align 4, !dbg !1222
  br label %return, !dbg !1222

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1223
  ret i32 %2, !dbg !1223
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @clockevent_i8253_init(i1 noundef zeroext %oneshot) #3 section ".init.text" align 16 !dbg !1224 {
entry:
  %oneshot.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %frombool = zext i1 %oneshot to i8
  store i8 %frombool, ptr %oneshot.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %oneshot.addr, metadata !1228, metadata !DIExpression()), !dbg !1236
  %0 = load i8, ptr %oneshot.addr, align 1, !dbg !1237, !range !1162, !noundef !351
  %tobool = trunc i8 %0 to i1, !dbg !1237
  br i1 %tobool, label %if.then, label %if.end, !dbg !1239

if.then:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.clock_event_device, ptr @i8253_clockevent, i32 0, i32 9), align 4, !dbg !1240
  %or = or i32 %1, 2, !dbg !1240
  store i32 %or, ptr getelementptr inbounds (%struct.clock_event_device, ptr @i8253_clockevent, i32 0, i32 9), align 4, !dbg !1240
  store ptr @pit_set_oneshot, ptr getelementptr inbounds (%struct.clock_event_device, ptr @i8253_clockevent, i32 0, i32 12), align 16, !dbg !1242
  br label %if.end, !dbg !1243

if.end:                                           ; preds = %if.then, %entry
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #9, !dbg !1244
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #10, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1229, metadata !DIExpression()), !dbg !1245
  br label %do.body, !dbg !1245

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1232, metadata !DIExpression()), !dbg !1246
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1246
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !1245
  br label %do.cond, !dbg !1246

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1246

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #10, !dbg !1247
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1234, metadata !DIExpression()), !dbg !1247
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !1247, !srcloc !1248
  store i32 %3, ptr %pfo_val__, align 4, !dbg !1247
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !1247
  %conv = zext i32 %4 to i64, !dbg !1247
  %conv2 = trunc i64 %conv to i32, !dbg !1247
  store i32 %conv2, ptr %tmp1, align 4, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #10, !dbg !1245
  %5 = load i32, ptr %tmp1, align 4, !dbg !1247
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !1245
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !1245
  store i32 %6, ptr %tmp3, align 4, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #10, !dbg !1244
  %7 = load i32, ptr %tmp3, align 4, !dbg !1245
  store i32 %7, ptr %tmp, align 4, !dbg !1244
  %8 = load i32, ptr %tmp, align 4, !dbg !1244
  %call = call ptr @get_cpu_mask(i32 noundef %8) #9, !dbg !1249
  store ptr %call, ptr getelementptr inbounds (%struct.clock_event_device, ptr @i8253_clockevent, i32 0, i32 25), align 16, !dbg !1250
  call void @clockevents_config_and_register(ptr noundef @i8253_clockevent, i32 noundef 1193182, i64 noundef 15, i64 noundef 32767) #9, !dbg !1251
  ret void, !dbg !1252
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pit_set_oneshot(ptr noundef %evt) #0 align 16 !dbg !1253 {
entry:
  %evt.addr = alloca ptr, align 8
  store ptr %evt, ptr %evt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %evt.addr, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @_raw_spin_lock(ptr noundef @i8253_lock) #9, !dbg !1257
  call void @outb_p(i8 noundef zeroext 56, i16 noundef zeroext 67) #9, !dbg !1258
  call void @_raw_spin_unlock(ptr noundef @i8253_lock) #9, !dbg !1259
  ret i32 0, !dbg !1260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_mask(i32 noundef %cpu) #2 align 16 !dbg !1261 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1265, metadata !DIExpression()), !dbg !1269
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1266, metadata !DIExpression()), !dbg !1271
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1272
  %rem = urem i32 %0, 64, !dbg !1273
  %add = add i32 1, %rem, !dbg !1274
  %idxprom = zext i32 %add to i64, !dbg !1275
  %arrayidx = getelementptr [65 x [1 x i64]], ptr @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !1275
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !1275
  store ptr %arraydecay, ptr %p, align 8, !dbg !1271
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1276
  %div = udiv i32 %1, 64, !dbg !1277
  %2 = load ptr, ptr %p, align 8, !dbg !1278
  %idx.ext = zext i32 %div to i64, !dbg !1278
  %idx.neg = sub i64 0, %idx.ext, !dbg !1278
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !1278
  store ptr %add.ptr, ptr %p, align 8, !dbg !1278
  %3 = load ptr, ptr %p, align 8, !dbg !1279
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !1280
  ret ptr %3, !dbg !1281
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !1282 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1287, metadata !DIExpression()), !dbg !1288
  ret void, !dbg !1289
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1290 dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #5 align 16 !dbg !1293 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1296, metadata !DIExpression()), !dbg !1298
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1297, metadata !DIExpression()), !dbg !1298
  %0 = load i8, ptr %value.addr, align 1, !dbg !1298
  %1 = load i16, ptr %port.addr, align 2, !dbg !1298
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #10, !dbg !1298, !srcloc !1299
  ret void, !dbg !1298
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @slow_down_io() #2 align 16 !dbg !1300 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__edi) #10, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %__edi, metadata !1303, metadata !DIExpression()), !dbg !1309
  %0 = load i64, ptr %__edi, align 8, !dbg !1309
  store i64 %0, ptr %__edi, align 8, !dbg !1309
  call void @llvm.lifetime.start.p0(i64 8, ptr %__esi) #10, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %__esi, metadata !1305, metadata !DIExpression()), !dbg !1309
  %1 = load i64, ptr %__esi, align 8, !dbg !1309
  store i64 %1, ptr %__esi, align 8, !dbg !1309
  call void @llvm.lifetime.start.p0(i64 8, ptr %__edx) #10, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %__edx, metadata !1306, metadata !DIExpression()), !dbg !1309
  %2 = load i64, ptr %__edx, align 8, !dbg !1309
  store i64 %2, ptr %__edx, align 8, !dbg !1309
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ecx) #10, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %__ecx, metadata !1307, metadata !DIExpression()), !dbg !1309
  %3 = load i64, ptr %__ecx, align 8, !dbg !1309
  store i64 %3, ptr %__ecx, align 8, !dbg !1309
  call void @llvm.lifetime.start.p0(i64 8, ptr %__eax) #10, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %__eax, metadata !1308, metadata !DIExpression()), !dbg !1309
  %4 = load i64, ptr %__eax, align 8, !dbg !1309
  store i64 %4, ptr %__eax, align 8, !dbg !1309
  %5 = load ptr, ptr @pv_ops, align 8, !dbg !1309
  %6 = call i64 @llvm.read_register.i64(metadata !1147), !dbg !1309
  %7 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09.long 999b\0A\09.popsection\0A\09call *$6;\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A .balign 8 \0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,*m,{rsp},~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 0, ptr elementtype(ptr) @pv_ops, i64 %6) #10, !dbg !1309, !srcloc !1310
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %7, 0, !dbg !1309
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %7, 1, !dbg !1309
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %7, 2, !dbg !1309
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %7, 3, !dbg !1309
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %7, 4, !dbg !1309
  store i64 %asmresult, ptr %__edi, align 8, !dbg !1309
  store i64 %asmresult1, ptr %__esi, align 8, !dbg !1309
  store i64 %asmresult2, ptr %__edx, align 8, !dbg !1309
  store i64 %asmresult3, ptr %__ecx, align 8, !dbg !1309
  call void @llvm.write_register.i64(metadata !1147, i64 %asmresult4), !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %__eax) #10, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ecx) #10, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__edx) #10, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__esi) #10, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__edi) #10, !dbg !1311
  ret void, !dbg !1312
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_oneshot(ptr noundef %dev) #2 align 16 !dbg !1313 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1317, metadata !DIExpression()), !dbg !1318
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1319
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !1320
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !1320
  %cmp = icmp eq i32 %1, 3, !dbg !1321
  ret i1 %cmp, !dbg !1322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_periodic(ptr noundef %dev) #2 align 16 !dbg !1323 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1325, metadata !DIExpression()), !dbg !1326
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1327
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !1328
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !1328
  %cmp = icmp eq i32 %1, 2, !dbg !1329
  ret i1 %cmp, !dbg !1330
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1147}
!llvm.module.flags = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!llvm.ident = !{!1156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i8253_lock", scope: !2, file: !3, line: 20, type: !401, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/clocksource/.i8253.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/clocksource/i8253\22 -D KBUILD_BASENAME=\22i8253\22 -D KBUILD_MODNAME=\22i8253\22 -D __KBUILD_MODNAME=kmod_i8253 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/clocksource/i8253.ll drivers/clocksource/i8253.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !40, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clocksource/i8253.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c6e2067f5bd36404243b7779a06d30e")
!4 = !{!5, !14, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_event_state", file: !6, line: 35, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/clockchips.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86f5f8ec61303214145eac8153b8fae6")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CLOCK_EVT_STATE_DETACHED", value: 0)
!10 = !DIEnumerator(name: "CLOCK_EVT_STATE_SHUTDOWN", value: 1)
!11 = !DIEnumerator(name: "CLOCK_EVT_STATE_PERIODIC", value: 2)
!12 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT", value: 3)
!13 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT_STOPPED", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !22, line: 26, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!25 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!26 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!27 = !{!28, !29, !30, !31, !32}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !34, line: 19, size: 64, elements: !35)
!34 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !33, file: !34, line: 19, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 1)
!40 = !{!0, !41, !43, !48, !54, !1142}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_i8253_lock198", scope: !2, file: !3, line: 21, type: !28, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "i8253_clear_counter_on_shutdown", scope: !2, file: !3, line: 28, type: !45, isLocal: false, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !47)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !52)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !{!53}
!53 = !DISubrange(count: 4)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "i8253_clockevent", scope: !2, file: !3, line: 174, type: !56, isLocal: false, isDefinition: true)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_event_device", file: !6, line: 100, size: 2048, align: 512, elements: !57)
!57 = !{!58, !63, !67, !78, !79, !83, !84, !87, !88, !89, !90, !91, !95, !96, !97, !98, !99, !105, !106, !107, !108, !109, !112, !113, !114, !115, !116, !122}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !56, file: !6, line: 101, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_event", scope: !56, file: !6, line: 102, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!30, !31, !62}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_ktime", scope: !56, file: !6, line: 103, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!30, !71, !62}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !74, line: 22, baseType: !75)
!74 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !76, line: 30, baseType: !77)
!76 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!77 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_event", scope: !56, file: !6, line: 104, baseType: !71, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ns", scope: !56, file: !6, line: 105, baseType: !80, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !74, line: 23, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !76, line: 31, baseType: !82)
!82 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ns", scope: !56, file: !6, line: 106, baseType: !80, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !56, file: !6, line: 107, baseType: !85, size: 32, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !74, line: 21, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !76, line: 27, baseType: !7)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !56, file: !6, line: 108, baseType: !85, size: 32, offset: 416)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !56, file: !6, line: 109, baseType: !5, size: 32, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !56, file: !6, line: 110, baseType: !7, size: 32, offset: 480)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !56, file: !6, line: 111, baseType: !31, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_periodic", scope: !56, file: !6, line: 113, baseType: !92, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!30, !62}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot", scope: !56, file: !6, line: 114, baseType: !92, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot_stopped", scope: !56, file: !6, line: 115, baseType: !92, size: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_shutdown", scope: !56, file: !6, line: 116, baseType: !92, size: 64, offset: 768)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tick_resume", scope: !56, file: !6, line: 117, baseType: !92, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast", scope: !56, file: !6, line: 119, baseType: !100, size: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !56, file: !6, line: 120, baseType: !59, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !56, file: !6, line: 121, baseType: !59, size: 64, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ticks", scope: !56, file: !6, line: 122, baseType: !31, size: 64, offset: 1088)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ticks", scope: !56, file: !6, line: 123, baseType: !31, size: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !6, line: 125, baseType: !110, size: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !56, file: !6, line: 126, baseType: !30, size: 32, offset: 1280)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !56, file: !6, line: 127, baseType: !30, size: 32, offset: 1312)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "bound_on", scope: !56, file: !6, line: 128, baseType: !30, size: 32, offset: 1344)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !56, file: !6, line: 129, baseType: !103, size: 64, offset: 1408)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !56, file: !6, line: 130, baseType: !117, size: 128, offset: 1472)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !46, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !46, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !46, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !56, file: !6, line: 131, baseType: !123, size: 64, offset: 1600)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !125)
!125 = !{!126, !127, !128, !132, !798, !824, !825, !826, !827, !831, !834, !835, !836, !889, !890, !891, !892, !893, !894, !895, !896, !899, !903, !923, !940, !941, !942, !943, !952, !975, !976, !979, !982, !983, !984, !985, !986, !987, !988, !993, !994, !1100, !1108, !1109, !1110, !1112, !1116, !1117, !1121, !1122, !1123, !1124, !1126, !1127, !1128, !1135, !1136, !1137, !1141}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !124, file: !15, line: 403, baseType: !14, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !124, file: !15, line: 406, baseType: !117, size: 128, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !15, line: 409, baseType: !129, size: 448, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 448, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 56)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !124, file: !15, line: 417, baseType: !133, size: 768, offset: 640)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !134)
!134 = !{!135, !781, !782, !783, !786}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !133, file: !15, line: 46, baseType: !136, size: 512)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !137, line: 64, size: 512, elements: !138)
!137 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!138 = !{!139, !140, !141, !143, !230, !651, !766, !776, !777, !778, !779, !780}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !137, line: 65, baseType: !110, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !136, file: !137, line: 66, baseType: !117, size: 128, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !137, line: 67, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !136, file: !137, line: 68, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !137, line: 168, size: 768, elements: !146)
!146 = !{!147, !148, !189, !190}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !145, file: !137, line: 169, baseType: !117, size: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !145, file: !137, line: 170, baseType: !149, size: 32, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !150, line: 29, baseType: !151)
!150 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !150, line: 17, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !150, line: 18, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !150, line: 18, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !154, file: !150, line: 19, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !158, line: 14, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !157, file: !158, line: 15, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !162, line: 44, baseType: !163)
!162 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !162, line: 14, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !162, line: 15, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !162, line: 15, size: 32, elements: !167)
!167 = !{!168, !173, !181}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !166, file: !162, line: 16, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !46, line: 174, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 172, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !170, file: !46, line: 173, baseType: !30, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !162, line: 24, baseType: !174, size: 16)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !162, line: 24, size: 16, elements: !175)
!175 = !{!176, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !174, file: !162, line: 25, baseType: !177, size: 8)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !74, line: 17, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !76, line: 21, baseType: !179)
!179 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !174, file: !162, line: 26, baseType: !177, size: 8, offset: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !162, line: 28, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !162, line: 28, size: 32, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !182, file: !162, line: 29, baseType: !185, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !74, line: 19, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !76, line: 24, baseType: !187)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !182, file: !162, line: 30, baseType: !185, size: 16, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !145, file: !137, line: 171, baseType: !136, size: 512, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !145, file: !137, line: 172, baseType: !191, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !137, line: 133, size: 192, elements: !194)
!194 = !{!195, !202, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !193, file: !137, line: 134, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!30, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !137, line: 135, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!110, !200}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !193, file: !137, line: 136, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!30, !200, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !137, line: 125, size: 20736, elements: !214)
!214 = !{!215, !220, !224, !225, !229}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !213, file: !137, line: 126, baseType: !216, size: 192)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !218)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!218 = !{!219}
!219 = !DISubrange(count: 3)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !213, file: !137, line: 127, baseType: !221, size: 4096, offset: 192)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 4096, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !213, file: !137, line: 128, baseType: !30, size: 32, offset: 4288)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !213, file: !137, line: 129, baseType: !226, size: 16384, offset: 4320)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 16384, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2048)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !213, file: !137, line: 130, baseType: !30, size: 32, offset: 20704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !136, file: !137, line: 69, baseType: !231, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !137, line: 116, size: 384, elements: !234)
!234 = !{!235, !239, !267, !597, !628, !632}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !137, line: 117, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !142}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !233, file: !137, line: 118, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !243, line: 254, size: 128, elements: !244)
!243 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!244 = !{!245, !260}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !242, file: !243, line: 255, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !142, !254, !217}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !46, line: 66, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !251, line: 73, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !251, line: 15, baseType: !253)
!253 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !243, line: 30, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !243, line: 31, baseType: !110, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !255, file: !243, line: 32, baseType: !259, size: 16, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !46, line: 24, baseType: !187)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !242, file: !243, line: 256, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!249, !142, !254, !110, !264}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !251, line: 72, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !251, line: 16, baseType: !31)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !233, file: !137, line: 119, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !243, line: 84, size: 320, elements: !272)
!272 = !{!273, !274, !278, !593, !595}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !243, line: 85, baseType: !110, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !271, file: !243, line: 86, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!259, !142, !254, !30}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !271, file: !243, line: 88, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!259, !142, !282, !30}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !243, line: 175, size: 512, elements: !284)
!284 = !{!285, !286, !287, !288, !295, !304, !305}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !283, file: !243, line: 176, baseType: !255, size: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !283, file: !243, line: 177, baseType: !264, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !283, file: !243, line: 178, baseType: !28, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !283, file: !243, line: 179, baseType: !289, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !294, line: 32, flags: DIFlagFwdDecl)
!294 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !283, file: !243, line: 180, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!249, !299, !142, !282, !217, !302, !264}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !301, line: 537, flags: DIFlagFwdDecl)
!301 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !46, line: 52, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !251, line: 88, baseType: !77)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !283, file: !243, line: 182, baseType: !296, size: 64, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !283, file: !243, line: 184, baseType: !306, size: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!30, !299, !142, !282, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !294, line: 625, size: 1344, elements: !311)
!311 = !{!312, !329, !544, !550, !557, !558, !563, !564, !576, !577, !580, !584, !585, !586, !587, !588, !591}
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !294, line: 628, baseType: !313, size: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !294, line: 628, size: 128, elements: !314)
!314 = !{!315, !320}
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !294, line: 629, baseType: !316, size: 128)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !313, file: !294, line: 629, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !316, file: !294, line: 631, baseType: !31, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !316, file: !294, line: 632, baseType: !31, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !313, file: !294, line: 635, baseType: !321, size: 128, align: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !46, line: 232, size: 128, align: 64, elements: !322)
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !46, line: 233, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !321, file: !46, line: 234, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !324}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !310, file: !294, line: 639, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !294, line: 733, size: 10240, elements: !332)
!332 = !{!333, !540}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !294, line: 734, baseType: !334, size: 10240)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !294, line: 734, size: 10240, elements: !335)
!335 = !{!336, !340, !354, !358, !359, !360, !361, !362, !363, !371, !372, !373, !379, !380, !387, !388, !389, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !436, !448, !451, !506, !507, !508, !511, !514, !515, !518, !519, !520, !527, !528}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !294, line: 739, baseType: !337, size: 512, align: 512)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !294, line: 739, size: 512, align: 512, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !337, file: !294, line: 747, baseType: !169, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !334, file: !294, line: 750, baseType: !341, size: 128, offset: 512)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !342, line: 218, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!343 = !{!344, !352, !353}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !342, line: 219, baseType: !345, size: 32)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !342, line: 219, size: 32, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !345, file: !342, line: 220, baseType: !149, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !345, file: !342, line: 221, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !342, line: 197, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 197, elements: !351)
!351 = !{}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !341, file: !342, line: 223, baseType: !7, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !341, file: !342, line: 224, baseType: !28, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !334, file: !294, line: 752, baseType: !355, size: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!31, !299, !31, !31, !31, !31}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !334, file: !294, line: 756, baseType: !31, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !334, file: !294, line: 757, baseType: !31, size: 64, offset: 768)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !334, file: !294, line: 760, baseType: !31, size: 64, offset: 832)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !334, file: !294, line: 761, baseType: !31, size: 64, offset: 896)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !334, file: !294, line: 763, baseType: !31, size: 64, offset: 960)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !334, file: !294, line: 764, baseType: !364, size: 64, offset: 1024)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !301, line: 299, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 299, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !366, file: !301, line: 299, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !370, line: 18, baseType: !31)
!370 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !334, file: !294, line: 773, baseType: !169, size: 32, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !334, file: !294, line: 785, baseType: !169, size: 32, offset: 1120)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !334, file: !294, line: 795, baseType: !374, size: 64, offset: 1152)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !294, line: 726, size: 128, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !375, file: !294, line: 727, baseType: !80, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !375, file: !294, line: 728, baseType: !30, size: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !334, file: !294, line: 801, baseType: !31, size: 64, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !334, file: !294, line: 804, baseType: !381, size: 64, offset: 1280)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !382, line: 13, baseType: !383)
!382 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !46, line: 181, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 179, size: 64, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !384, file: !46, line: 180, baseType: !73, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !334, file: !294, line: 806, baseType: !30, size: 32, offset: 1344)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !334, file: !294, line: 808, baseType: !149, size: 32, offset: 1376)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !334, file: !294, line: 823, baseType: !390, size: 320, offset: 1408)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !391, line: 48, size: 320, elements: !392)
!391 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!392 = !{!393, !394, !395, !400, !402}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !390, file: !391, line: 49, baseType: !381, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !390, file: !391, line: 55, baseType: !381, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !390, file: !391, line: 57, baseType: !396, size: 32, offset: 128)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !397, line: 15, size: 32, elements: !398)
!397 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !396, file: !397, line: 20, baseType: !169, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !390, file: !391, line: 59, baseType: !401, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !158, line: 23, baseType: !157)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !390, file: !391, line: 60, baseType: !117, size: 128, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !334, file: !294, line: 825, baseType: !117, size: 128, offset: 1728)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !334, file: !294, line: 845, baseType: !30, size: 32, offset: 1856)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !334, file: !294, line: 849, baseType: !31, size: 64, offset: 1920)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !334, file: !294, line: 850, baseType: !31, size: 64, offset: 1984)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !334, file: !294, line: 852, baseType: !31, size: 64, offset: 2048)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !334, file: !294, line: 853, baseType: !31, size: 64, offset: 2112)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !334, file: !294, line: 854, baseType: !383, size: 64, offset: 2176)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !334, file: !294, line: 855, baseType: !31, size: 64, offset: 2240)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !334, file: !294, line: 856, baseType: !31, size: 64, offset: 2304)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !334, file: !294, line: 857, baseType: !31, size: 64, offset: 2368)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !334, file: !294, line: 858, baseType: !31, size: 64, offset: 2432)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !334, file: !294, line: 865, baseType: !415, size: 32, offset: 2496)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !416, line: 69, baseType: !417)
!416 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !416, line: 64, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !417, file: !416, line: 65, baseType: !7, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !334, file: !294, line: 867, baseType: !149, size: 32, offset: 2528)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !334, file: !294, line: 869, baseType: !31, size: 64, offset: 2560)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !334, file: !294, line: 869, baseType: !31, size: 64, offset: 2624)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !334, file: !294, line: 869, baseType: !31, size: 64, offset: 2688)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !334, file: !294, line: 869, baseType: !31, size: 64, offset: 2752)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !334, file: !294, line: 870, baseType: !31, size: 64, offset: 2816)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !334, file: !294, line: 870, baseType: !31, size: 64, offset: 2880)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !334, file: !294, line: 870, baseType: !31, size: 64, offset: 2944)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !334, file: !294, line: 871, baseType: !31, size: 64, offset: 3008)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !334, file: !294, line: 871, baseType: !31, size: 64, offset: 3072)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !334, file: !294, line: 871, baseType: !31, size: 64, offset: 3136)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !334, file: !294, line: 871, baseType: !31, size: 64, offset: 3200)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !334, file: !294, line: 873, baseType: !433, size: 3328, offset: 3264)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3328, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 52)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !334, file: !294, line: 875, baseType: !437, size: 1280, offset: 6592)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 1280, elements: !52)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !439, line: 22, size: 320, elements: !440)
!439 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!440 = !{!441, !442, !443, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !438, file: !439, line: 23, baseType: !401, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !438, file: !439, line: 24, baseType: !73, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !438, file: !439, line: 26, baseType: !117, size: 128, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !438, file: !439, line: 28, baseType: !445, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !74, line: 20, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !76, line: 26, baseType: !30)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !334, file: !294, line: 877, baseType: !449, size: 64, offset: 7872)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !294, line: 877, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !334, file: !294, line: 880, baseType: !452, size: 1088, offset: 7936)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !453, line: 72, baseType: !454)
!453 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 23, size: 1088, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !463, !464, !472, !473, !500, !501, !502}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !454, file: !453, line: 28, baseType: !80, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !454, file: !453, line: 38, baseType: !383, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !454, file: !453, line: 40, baseType: !31, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !454, file: !453, line: 43, baseType: !390, size: 320, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !454, file: !453, line: 44, baseType: !461, size: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !453, line: 44, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !453, line: 48, baseType: !31, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !454, file: !453, line: 59, baseType: !465, size: 256, offset: 640)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !466, line: 66, size: 256, elements: !467)
!466 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!467 = !{!468, !469, !470, !471}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !465, file: !466, line: 67, baseType: !381, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !465, file: !466, line: 68, baseType: !401, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !465, file: !466, line: 70, baseType: !396, size: 32, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !465, file: !466, line: 72, baseType: !117, size: 128, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !454, file: !453, line: 60, baseType: !28, size: 64, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !454, file: !453, line: 61, baseType: !474, size: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !477, line: 13, size: 1216, elements: !478)
!477 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!478 = !{!479, !480, !481, !482, !483, !484, !485, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !476, file: !477, line: 14, baseType: !28, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !476, file: !477, line: 15, baseType: !31, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !476, file: !477, line: 17, baseType: !31, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !476, file: !477, line: 17, baseType: !31, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !476, file: !477, line: 18, baseType: !31, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !476, file: !477, line: 18, baseType: !31, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !476, file: !477, line: 19, baseType: !486, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !476, file: !477, line: 21, baseType: !253, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !476, file: !477, line: 23, baseType: !253, size: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !476, file: !477, line: 24, baseType: !253, size: 64, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !476, file: !477, line: 25, baseType: !253, size: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !476, file: !477, line: 26, baseType: !253, size: 64, offset: 704)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !476, file: !477, line: 27, baseType: !253, size: 64, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !476, file: !477, line: 28, baseType: !253, size: 64, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !476, file: !477, line: 29, baseType: !253, size: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !476, file: !477, line: 30, baseType: !253, size: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !476, file: !477, line: 31, baseType: !253, size: 64, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !476, file: !477, line: 32, baseType: !253, size: 64, offset: 1088)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !476, file: !477, line: 33, baseType: !253, size: 64, offset: 1152)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !454, file: !453, line: 63, baseType: !169, size: 32, offset: 1024)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !454, file: !453, line: 69, baseType: !185, size: 16, offset: 1056)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !454, file: !453, line: 70, baseType: !503, size: 16, offset: 1072)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !74, line: 18, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !76, line: 23, baseType: !505)
!505 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !294, line: 882, baseType: !31, size: 64, offset: 9024)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !334, file: !294, line: 885, baseType: !149, size: 32, offset: 9088)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !334, file: !294, line: 886, baseType: !509, size: 64, offset: 9152)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !294, line: 732, flags: DIFlagFwdDecl)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !334, file: !294, line: 901, baseType: !512, size: 64, offset: 9216)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !294, line: 901, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !334, file: !294, line: 904, baseType: !299, size: 64, offset: 9280)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !334, file: !294, line: 906, baseType: !516, size: 64, offset: 9344)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !294, line: 906, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !334, file: !294, line: 930, baseType: !169, size: 32, offset: 9408)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !334, file: !294, line: 933, baseType: !169, size: 32, offset: 9440)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !334, file: !294, line: 935, baseType: !521, size: 64, offset: 9472)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !522, line: 103, size: 64, elements: !523)
!522 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !521, file: !522, line: 104, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !522, line: 101, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !334, file: !294, line: 940, baseType: !381, size: 64, offset: 9536)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !334, file: !294, line: 942, baseType: !529, size: 256, offset: 9600)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !530, line: 98, size: 256, elements: !531)
!530 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!531 = !{!532, !533, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !529, file: !530, line: 99, baseType: !381, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !529, file: !530, line: 100, baseType: !117, size: 128, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !529, file: !530, line: 101, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !530, line: 21, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !331, file: !294, line: 986, baseType: !541, offset: 10240)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: -1)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !310, file: !294, line: 640, baseType: !545, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !301, line: 297, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !301, line: 297, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !546, file: !301, line: 297, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !370, line: 19, baseType: !31)
!550 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !294, line: 646, baseType: !551, size: 64, offset: 256)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !294, line: 646, size: 64, elements: !552)
!552 = !{!553, !556}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !551, file: !294, line: 647, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !294, line: 542, baseType: !31)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !551, file: !294, line: 648, baseType: !555, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !310, file: !294, line: 666, baseType: !30, size: 32, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !310, file: !294, line: 667, baseType: !559, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !294, line: 579, size: 320, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !294, line: 580, baseType: !390, size: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !310, file: !294, line: 670, baseType: !45, size: 8, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !310, file: !294, line: 681, baseType: !565, size: 256, offset: 512)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !294, line: 678, size: 256, elements: !566)
!566 = !{!567, !575}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !565, file: !294, line: 679, baseType: !568, size: 192, align: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !569, line: 5, size: 192, align: 64, elements: !570)
!569 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!570 = !{!571, !572, !574}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !568, file: !569, line: 6, baseType: !31, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !568, file: !569, line: 7, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !568, file: !569, line: 8, baseType: !573, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !565, file: !294, line: 680, baseType: !31, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !310, file: !294, line: 689, baseType: !117, size: 128, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !310, file: !294, line: 691, baseType: !578, size: 64, offset: 896)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !294, line: 691, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !310, file: !294, line: 694, baseType: !581, size: 64, offset: 960)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !294, line: 694, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !310, file: !294, line: 697, baseType: !31, size: 64, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !310, file: !294, line: 699, baseType: !299, size: 64, offset: 1088)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !310, file: !294, line: 700, baseType: !28, size: 64, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !310, file: !294, line: 711, baseType: !381, size: 64, offset: 1216)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !310, file: !294, line: 717, baseType: !589, size: 64, offset: 1280)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !294, line: 717, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !310, file: !294, line: 722, baseType: !592, offset: 1344)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !294, line: 570, elements: !351)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !271, file: !243, line: 90, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !271, file: !243, line: 91, baseType: !596, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !233, file: !137, line: 120, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!601, !200}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !22, line: 39, size: 384, elements: !604)
!604 = !{!605, !606, !610, !614, !620, !624}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !22, line: 40, baseType: !21, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !603, file: !22, line: 41, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!45}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !603, file: !22, line: 42, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!28}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !603, file: !22, line: 43, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!486, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !22, line: 19, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !603, file: !22, line: 44, baseType: !621, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!486}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !603, file: !22, line: 45, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !28}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !233, file: !137, line: 121, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!486, !200}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !233, file: !137, line: 122, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !200, !636, !644}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !638, line: 23, baseType: !639)
!638 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 21, size: 32, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !639, file: !638, line: 22, baseType: !642, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !46, line: 37, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !251, line: 49, baseType: !7)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !638, line: 28, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 26, size: 32, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !646, file: !638, line: 27, baseType: !649, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !46, line: 38, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !251, line: 50, baseType: !7)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !136, file: !137, line: 70, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !654, line: 190, size: 1152, elements: !655)
!654 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !758, !759, !760, !761, !762, !765}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !653, file: !654, line: 191, baseType: !169, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !653, file: !654, line: 192, baseType: !169, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !653, file: !654, line: 202, baseType: !652, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !654, line: 203, baseType: !110, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !653, file: !654, line: 205, baseType: !568, size: 192, align: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !653, file: !654, line: 207, baseType: !486, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !653, file: !654, line: 208, baseType: !7, size: 32, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 209, baseType: !664, size: 256, offset: 512)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 209, size: 256, elements: !665)
!665 = !{!666, !678, !682}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !664, file: !654, line: 210, baseType: !667, size: 256)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !654, line: 153, size: 256, elements: !668)
!668 = !{!669, !670, !674, !677}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !667, file: !654, line: 154, baseType: !31, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !667, file: !654, line: 156, baseType: !671, size: 64, offset: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !569, line: 12, size: 64, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !671, file: !569, line: 13, baseType: !573, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !667, file: !654, line: 162, baseType: !675, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !654, line: 162, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !667, file: !654, line: 167, baseType: !31, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !664, file: !654, line: 211, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !654, line: 170, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !679, file: !654, line: 171, baseType: !652, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !664, file: !654, line: 212, baseType: !683, size: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !654, line: 174, size: 256, elements: !684)
!684 = !{!685, !753, !756, !757}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !683, file: !654, line: 175, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !654, line: 271, size: 768, elements: !689)
!689 = !{!690, !713, !717, !721, !726, !730, !734, !738, !739, !740, !741, !749}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !688, file: !654, line: 276, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!30, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !654, line: 251, size: 1216, elements: !696)
!696 = !{!697, !698, !699, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !695, file: !654, line: 253, baseType: !652, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !695, file: !654, line: 254, baseType: !299, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !695, file: !654, line: 255, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !702, line: 66, flags: DIFlagFwdDecl)
!702 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !695, file: !654, line: 256, baseType: !28, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !695, file: !654, line: 259, baseType: !465, size: 256, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !695, file: !654, line: 260, baseType: !465, size: 256, offset: 512)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !695, file: !654, line: 261, baseType: !30, size: 32, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !695, file: !654, line: 262, baseType: !117, size: 128, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !695, file: !654, line: 263, baseType: !217, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !695, file: !654, line: 265, baseType: !264, size: 64, offset: 1024)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !695, file: !654, line: 266, baseType: !45, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !695, file: !654, line: 267, baseType: !45, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !695, file: !654, line: 268, baseType: !581, size: 64, offset: 1152)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !688, file: !654, line: 277, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !694}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !688, file: !654, line: 290, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!30, !700, !28}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !688, file: !654, line: 292, baseType: !722, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!28, !700, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !688, file: !654, line: 293, baseType: !727, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!28, !700, !28, !725}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !688, file: !654, line: 294, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !700, !28}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !688, file: !654, line: 296, baseType: !735, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!249, !694, !217, !264, !302}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !688, file: !654, line: 306, baseType: !264, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !688, file: !654, line: 313, baseType: !45, size: 8, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !688, file: !654, line: 314, baseType: !735, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !688, file: !654, line: 317, baseType: !742, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!745, !694, !747}
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !746, line: 59, baseType: !7)
!746 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !654, line: 31, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !688, file: !654, line: 320, baseType: !750, size: 64, offset: 704)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!30, !694, !309}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !683, file: !654, line: 176, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !654, line: 35, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !683, file: !654, line: 177, baseType: !302, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !683, file: !654, line: 178, baseType: !652, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !653, file: !654, line: 215, baseType: !28, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !653, file: !654, line: 221, baseType: !80, size: 64, offset: 832)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !654, line: 223, baseType: !187, size: 16, offset: 896)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !653, file: !654, line: 224, baseType: !259, size: 16, offset: 912)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !653, file: !654, line: 225, baseType: !763, size: 64, offset: 960)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !654, line: 36, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !653, file: !654, line: 227, baseType: !321, size: 128, align: 64, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !136, file: !137, line: 71, baseType: !767, size: 32, offset: 448)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !768, line: 19, size: 32, elements: !769)
!768 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !767, file: !768, line: 20, baseType: !771, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !772, line: 113, baseType: !773)
!772 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !772, line: 111, size: 32, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !773, file: !772, line: 112, baseType: !169, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !136, file: !137, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !136, file: !137, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !136, file: !137, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !136, file: !137, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !136, file: !137, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !133, file: !15, line: 47, baseType: !123, size: 64, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !133, file: !15, line: 48, baseType: !142, size: 64, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !133, file: !15, line: 49, baseType: !784, size: 64, offset: 640)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !133, file: !15, line: 50, baseType: !787, size: 64, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !789, line: 26, size: 256, elements: !790)
!789 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !788, file: !789, line: 27, baseType: !7, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !788, file: !789, line: 28, baseType: !793, size: 192, offset: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !794, line: 43, size: 192, elements: !795)
!794 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !793, file: !794, line: 44, baseType: !401, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !793, file: !794, line: 45, baseType: !117, size: 128, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !124, file: !15, line: 418, baseType: !799, size: 64, offset: 1408)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !801)
!801 = !{!802, !803, !808, !812, !816, !820}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !800, file: !15, line: 54, baseType: !255, size: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !800, file: !15, line: 55, baseType: !804, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!249, !799, !807, !217}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !800, file: !15, line: 57, baseType: !809, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!249, !799, !807, !110, !264}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !800, file: !15, line: 59, baseType: !813, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !123, !110}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !800, file: !15, line: 60, baseType: !817, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!30, !123}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !800, file: !15, line: 61, baseType: !821, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !123}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !124, file: !15, line: 419, baseType: !110, size: 64, offset: 1472)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !124, file: !15, line: 420, baseType: !110, size: 64, offset: 1536)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !124, file: !15, line: 421, baseType: !142, size: 64, offset: 1600)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !124, file: !15, line: 424, baseType: !828, size: 64, offset: 1664)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !124, file: !15, line: 425, baseType: !832, size: 64, offset: 1728)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !124, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !124, file: !15, line: 435, baseType: !465, size: 256, offset: 1856)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !124, file: !15, line: 437, baseType: !837, size: 64, offset: 2112)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !839, line: 69, size: 320, elements: !840)
!839 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!840 = !{!841, !842, !843, !860, !862, !866, !867}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !838, file: !839, line: 70, baseType: !110, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !838, file: !839, line: 71, baseType: !123, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !838, file: !839, line: 72, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !839, line: 47, size: 256, elements: !847)
!847 = !{!848, !849, !855, !859}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !839, line: 49, baseType: !7, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !846, file: !839, line: 51, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!30, !110, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !846, file: !839, line: 53, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!30, !217, !853}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !846, file: !839, line: 55, baseType: !625, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !838, file: !839, line: 73, baseType: !861, size: 16, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !838, file: !839, line: 74, baseType: !863, size: 8, offset: 208)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !74, line: 16, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !76, line: 20, baseType: !865)
!865 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !839, line: 75, baseType: !177, size: 8, offset: 216)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !839, line: 76, baseType: !868, size: 64, offset: 256)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !839, line: 76, size: 64, elements: !869)
!869 = !{!870, !871, !878}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !868, file: !839, line: 77, baseType: !28, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !868, file: !839, line: 78, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !839, line: 86, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !874, file: !839, line: 87, baseType: !7, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !874, file: !839, line: 88, baseType: !217, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !868, file: !839, line: 79, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !839, line: 92, size: 256, elements: !882)
!882 = !{!883, !884, !885, !887, !888}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !881, file: !839, line: 94, baseType: !7, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !881, file: !839, line: 95, baseType: !7, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !881, file: !839, line: 96, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !881, file: !839, line: 97, baseType: !844, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !881, file: !839, line: 98, baseType: !28, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !124, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !124, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !124, file: !15, line: 442, baseType: !828, size: 64, offset: 2240)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !124, file: !15, line: 443, baseType: !832, size: 64, offset: 2304)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !124, file: !15, line: 444, baseType: !45, size: 8, offset: 2368)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !124, file: !15, line: 451, baseType: !45, size: 8, offset: 2376)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !124, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !124, file: !15, line: 455, baseType: !897, size: 64, offset: 2432)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !15, line: 43, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !124, file: !15, line: 458, baseType: !900, size: 64, offset: 2496)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!30}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !124, file: !15, line: 460, baseType: !904, size: 4032, align: 512, offset: 2560)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 4032, elements: !921)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !905, file: !15, line: 363, baseType: !28, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !905, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !905, file: !15, line: 367, baseType: !910, size: 448, offset: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !910, file: !15, line: 320, baseType: !123, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !910, file: !15, line: 321, baseType: !914, size: 384, offset: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !915, line: 40, size: 384, elements: !916)
!915 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !914, file: !915, line: 41, baseType: !918, size: 384, align: 64)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 384, align: 64, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 2)
!921 = !{!922}
!922 = !DISubrange(count: 7)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !124, file: !15, line: 463, baseType: !924, size: 192, offset: 6592)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !925, line: 8, size: 192, elements: !926)
!925 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !924, file: !925, line: 10, baseType: !7, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !924, file: !925, line: 11, baseType: !29, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !924, file: !925, line: 12, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !932, line: 59, size: 48, elements: !933)
!932 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!933 = !{!934, !935, !936, !937, !938, !939}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !931, file: !932, line: 60, baseType: !503, size: 16)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !931, file: !932, line: 61, baseType: !503, size: 16, offset: 16)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !931, file: !932, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !931, file: !932, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !931, file: !932, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !931, file: !932, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !124, file: !15, line: 465, baseType: !31, size: 64, offset: 6784)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !124, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !124, file: !15, line: 470, baseType: !117, size: 128, offset: 6912)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !124, file: !15, line: 471, baseType: !944, size: 64, offset: 7040)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !946, line: 33, size: 96, elements: !947)
!946 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!947 = !{!948, !949, !950, !951}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !945, file: !946, line: 37, baseType: !30, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !945, file: !946, line: 43, baseType: !30, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !945, file: !946, line: 45, baseType: !187, size: 16, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !945, file: !946, line: 47, baseType: !187, size: 16, offset: 80)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !124, file: !15, line: 476, baseType: !953, size: 64, offset: 7104)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !955)
!955 = !{!956, !972, !973, !974}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !954, file: !15, line: 379, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !959, line: 204, baseType: !960)
!959 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !959, line: 197, size: 192, elements: !961)
!961 = !{!962, !964, !965, !966, !968, !970}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !960, file: !959, line: 198, baseType: !963, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !959, line: 21, baseType: !86)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !960, file: !959, line: 199, baseType: !179, size: 8, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !960, file: !959, line: 200, baseType: !179, size: 8, offset: 40)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !960, file: !959, line: 201, baseType: !967, size: 16, offset: 48)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !959, line: 17, baseType: !186)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !960, file: !959, line: 202, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !959, line: 16, baseType: !81)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !960, file: !959, line: 203, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !959, line: 22, baseType: !81)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !954, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !954, file: !15, line: 381, baseType: !217, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !954, file: !15, line: 382, baseType: !217, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !124, file: !15, line: 477, baseType: !954, size: 256, offset: 7168)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !124, file: !15, line: 480, baseType: !977, size: 64, offset: 7424)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !124, file: !15, line: 483, baseType: !980, size: 64, offset: 7488)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !124, file: !15, line: 488, baseType: !217, size: 64, offset: 7552)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !124, file: !15, line: 492, baseType: !28, size: 64, offset: 7616)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !124, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !124, file: !15, line: 495, baseType: !28, size: 64, offset: 7744)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !124, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !124, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !124, file: !15, line: 500, baseType: !989, size: 64, offset: 7872)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !991, line: 45, baseType: !992)
!991 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !124, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !124, file: !15, line: 504, baseType: !995, size: 64, offset: 8000)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !998, line: 96, size: 192, elements: !999)
!998 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!999 = !{!1000, !1001, !1061, !1064}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !997, file: !998, line: 97, baseType: !7, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !997, file: !998, line: 98, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !998, line: 24, size: 3072, elements: !1004)
!1004 = !{!1005, !1007, !1008, !1009, !1010, !1024, !1025, !1026, !1027, !1045, !1046, !1047, !1058, !1059, !1060}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1003, file: !998, line: 26, baseType: !1006, size: 128)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 128, elements: !919)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1003, file: !998, line: 27, baseType: !1006, size: 128, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1003, file: !998, line: 28, baseType: !30, size: 32, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1003, file: !998, line: 31, baseType: !149, size: 32, align: 512, offset: 512)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1003, file: !998, line: 32, baseType: !1011, size: 960, offset: 576)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1012, line: 206, size: 960, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1013 = !{!1014, !1015, !1018, !1020, !1021, !1023}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1011, file: !1012, line: 207, baseType: !324, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1011, file: !1012, line: 208, baseType: !1016, size: 256, offset: 64)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1017, size: 256, elements: !52)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1011, file: !1012, line: 209, baseType: !1019, size: 256, offset: 320)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !52)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1011, file: !1012, line: 213, baseType: !253, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1011, file: !1012, line: 215, baseType: !1022, size: 256, offset: 640)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !52)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !1012, line: 216, baseType: !177, size: 8, offset: 896)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1003, file: !998, line: 33, baseType: !31, size: 64, offset: 1536)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1003, file: !998, line: 34, baseType: !31, size: 64, offset: 1600)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1003, file: !998, line: 35, baseType: !45, size: 8, offset: 1664)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1003, file: !998, line: 36, baseType: !1028, size: 320, offset: 1728)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1029, line: 11, size: 320, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1030 = !{!1031, !1038, !1039, !1044}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1028, file: !1029, line: 16, baseType: !1032, size: 128)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !46, line: 198, size: 128, elements: !1033)
!1033 = !{!1034, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1032, file: !46, line: 199, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1032, file: !46, line: 199, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1028, file: !1029, line: 17, baseType: !31, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1028, file: !1029, line: 18, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1028, file: !1029, line: 19, baseType: !85, size: 32, offset: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1003, file: !998, line: 37, baseType: !529, size: 256, offset: 2048)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1003, file: !998, line: 38, baseType: !321, size: 128, align: 64, offset: 2304)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1003, file: !998, line: 39, baseType: !1048, size: 64, offset: 2432)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !998, line: 49, size: 768, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1049, file: !998, line: 50, baseType: !149, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1049, file: !998, line: 51, baseType: !1019, size: 256, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1049, file: !998, line: 53, baseType: !1019, size: 256, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1049, file: !998, line: 54, baseType: !31, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1049, file: !998, line: 55, baseType: !1048, size: 64, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1049, file: !998, line: 56, baseType: !30, size: 32, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1049, file: !998, line: 57, baseType: !30, size: 32, offset: 736)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1003, file: !998, line: 40, baseType: !31, size: 64, offset: 2496)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1003, file: !998, line: 42, baseType: !30, size: 32, offset: 2560)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1003, file: !998, line: 43, baseType: !996, size: 64, offset: 2624)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !997, file: !998, line: 99, baseType: !1062, offset: 128)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1063, line: 211, elements: !351)
!1063 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !997, file: !998, line: 100, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !998, line: 63, size: 3008, elements: !1067)
!1067 = !{!1068, !1069, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1099}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1066, file: !998, line: 64, baseType: !1048, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1066, file: !998, line: 65, baseType: !1070, size: 192, offset: 64)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 192, elements: !218)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1066, file: !998, line: 67, baseType: !30, size: 32, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1066, file: !998, line: 68, baseType: !465, size: 256, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1066, file: !998, line: 69, baseType: !149, size: 32, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1066, file: !998, line: 70, baseType: !465, size: 256, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1066, file: !998, line: 71, baseType: !31, size: 64, offset: 896)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1066, file: !998, line: 72, baseType: !31, size: 64, offset: 960)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1066, file: !998, line: 73, baseType: !31, size: 64, offset: 1024)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1066, file: !998, line: 74, baseType: !31, size: 64, offset: 1088)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1066, file: !998, line: 75, baseType: !31, size: 64, offset: 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1066, file: !998, line: 76, baseType: !31, size: 64, offset: 1216)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1066, file: !998, line: 77, baseType: !31, size: 64, offset: 1280)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1066, file: !998, line: 78, baseType: !31, size: 64, offset: 1344)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1066, file: !998, line: 79, baseType: !45, size: 8, offset: 1408)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1066, file: !998, line: 80, baseType: !31, size: 64, offset: 1472)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1066, file: !998, line: 81, baseType: !465, size: 256, offset: 1536)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1066, file: !998, line: 82, baseType: !788, size: 256, offset: 1792)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1066, file: !998, line: 84, baseType: !169, size: 32, offset: 2048)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1066, file: !998, line: 87, baseType: !31, size: 64, offset: 2112)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1066, file: !998, line: 88, baseType: !31, size: 64, offset: 2176)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1066, file: !998, line: 89, baseType: !1091, size: 704, offset: 2240)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !530, line: 111, size: 704, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1098}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1091, file: !530, line: 112, baseType: !529, size: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1091, file: !530, line: 113, baseType: !1028, size: 320, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1091, file: !530, line: 116, baseType: !1096, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !530, line: 18, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1091, file: !530, line: 117, baseType: !30, size: 32, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1066, file: !998, line: 90, baseType: !996, size: 64, offset: 2944)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !124, file: !15, line: 515, baseType: !1101, size: 64, offset: 8064)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1103, line: 117, size: 128, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1102, file: !1103, line: 118, baseType: !446, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1102, file: !1103, line: 119, baseType: !446, size: 32, offset: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1102, file: !1103, line: 120, baseType: !253, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !124, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !124, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !124, file: !15, line: 520, baseType: !1111, size: 64, offset: 8192)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !124, file: !15, line: 523, baseType: !1113, size: 64, offset: 8256)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !124, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !124, file: !15, line: 525, baseType: !1118, size: 64, offset: 8384)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !124, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !124, file: !15, line: 533, baseType: !28, size: 64, offset: 8512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !124, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !124, file: !15, line: 535, baseType: !1125, size: 64, offset: 8640)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !124, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !124, file: !15, line: 539, baseType: !30, size: 32, offset: 8736)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !124, file: !15, line: 540, baseType: !1129, size: 64, offset: 8768)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1131, line: 32, size: 64, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1130, file: !1131, line: 33, baseType: !446, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1130, file: !1131, line: 34, baseType: !446, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !124, file: !15, line: 563, baseType: !117, size: 128, offset: 8832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !124, file: !15, line: 565, baseType: !117, size: 128, offset: 8960)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !124, file: !15, line: 568, baseType: !1138, size: 64, offset: 9088)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !124, file: !15, line: 570, baseType: !169, size: 32, offset: 9152)
!1142 = !DIGlobalVariableExpression(var: !1143, expr: !DIExpression())
!1143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !1144, isLocal: true, isDefinition: true)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 40, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 5)
!1147 = !{!"rsp"}
!1148 = !{i32 7, !"Dwarf Version", i32 5}
!1149 = !{i32 2, !"Debug Info Version", i32 3}
!1150 = !{i32 1, !"wchar_size", i32 2}
!1151 = !{i32 8, !"cf-protection-branch", i32 1}
!1152 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1153 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1154 = !{i32 1, !"Code Model", i32 2}
!1155 = !{i32 1, !"override-stack-alignment", i32 8}
!1156 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1157 = distinct !DISubprogram(name: "clockevent_i8253_disable", scope: !3, file: !3, line: 111, type: !1139, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1158 = !DILocation(line: 113, column: 2, scope: !1157)
!1159 = !DILocation(line: 115, column: 2, scope: !1157)
!1160 = !DILocation(line: 117, column: 6, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 117, column: 6)
!1162 = !{i8 0, i8 2}
!1163 = !DILocation(line: 117, column: 6, scope: !1157)
!1164 = !DILocation(line: 118, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 117, column: 39)
!1166 = !DILocation(line: 119, column: 3, scope: !1165)
!1167 = !DILocation(line: 120, column: 2, scope: !1165)
!1168 = !DILocation(line: 122, column: 2, scope: !1157)
!1169 = !DILocation(line: 123, column: 1, scope: !1157)
!1170 = !DISubprogram(name: "_raw_spin_lock", scope: !1171, file: !1171, line: 22, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1175 = distinct !DISubprogram(name: "outb_p", scope: !1176, file: !1176, line: 291, type: !1177, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1176 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !177, !185}
!1179 = !{!1180, !1181}
!1180 = !DILocalVariable(name: "value", arg: 1, scope: !1175, file: !1176, line: 291, type: !177)
!1181 = !DILocalVariable(name: "port", arg: 2, scope: !1175, file: !1176, line: 291, type: !185)
!1182 = !DILocation(line: 291, column: 1, scope: !1175)
!1183 = !DISubprogram(name: "_raw_spin_unlock", scope: !1171, file: !1171, line: 39, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = distinct !DISubprogram(name: "pit_next_event", scope: !3, file: !3, line: 160, type: !65, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1185 = !{!1186, !1187}
!1186 = !DILocalVariable(name: "delta", arg: 1, scope: !1184, file: !3, line: 160, type: !31)
!1187 = !DILocalVariable(name: "evt", arg: 2, scope: !1184, file: !3, line: 160, type: !62)
!1188 = !DILocation(line: 160, column: 41, scope: !1184)
!1189 = !DILocation(line: 160, column: 75, scope: !1184)
!1190 = !DILocation(line: 162, column: 2, scope: !1184)
!1191 = !DILocation(line: 163, column: 9, scope: !1184)
!1192 = !DILocation(line: 163, column: 15, scope: !1184)
!1193 = !DILocation(line: 163, column: 2, scope: !1184)
!1194 = !DILocation(line: 164, column: 9, scope: !1184)
!1195 = !DILocation(line: 164, column: 15, scope: !1184)
!1196 = !DILocation(line: 164, column: 2, scope: !1184)
!1197 = !DILocation(line: 165, column: 2, scope: !1184)
!1198 = !DILocation(line: 167, column: 2, scope: !1184)
!1199 = distinct !DISubprogram(name: "pit_set_periodic", scope: !3, file: !3, line: 142, type: !93, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1200)
!1200 = !{!1201}
!1201 = !DILocalVariable(name: "evt", arg: 1, scope: !1199, file: !3, line: 142, type: !62)
!1202 = !DILocation(line: 142, column: 56, scope: !1199)
!1203 = !DILocation(line: 144, column: 2, scope: !1199)
!1204 = !DILocation(line: 147, column: 2, scope: !1199)
!1205 = !DILocation(line: 148, column: 2, scope: !1199)
!1206 = !DILocation(line: 149, column: 2, scope: !1199)
!1207 = !DILocation(line: 151, column: 2, scope: !1199)
!1208 = !DILocation(line: 152, column: 2, scope: !1199)
!1209 = distinct !DISubprogram(name: "pit_shutdown", scope: !3, file: !3, line: 125, type: !93, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1210)
!1210 = !{!1211}
!1211 = !DILocalVariable(name: "evt", arg: 1, scope: !1209, file: !3, line: 125, type: !62)
!1212 = !DILocation(line: 125, column: 52, scope: !1209)
!1213 = !DILocation(line: 127, column: 32, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 127, column: 6)
!1215 = !DILocation(line: 127, column: 7, scope: !1214)
!1216 = !DILocation(line: 127, column: 37, scope: !1214)
!1217 = !DILocation(line: 127, column: 67, scope: !1214)
!1218 = !DILocation(line: 127, column: 41, scope: !1214)
!1219 = !DILocation(line: 127, column: 6, scope: !1209)
!1220 = !DILocation(line: 128, column: 3, scope: !1214)
!1221 = !DILocation(line: 130, column: 2, scope: !1209)
!1222 = !DILocation(line: 131, column: 2, scope: !1209)
!1223 = !DILocation(line: 132, column: 1, scope: !1209)
!1224 = distinct !DISubprogram(name: "clockevent_i8253_init", scope: !3, file: !3, line: 186, type: !1225, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !45}
!1227 = !{!1228, !1229, !1232, !1234}
!1228 = !DILocalVariable(name: "oneshot", arg: 1, scope: !1224, file: !3, line: 186, type: !45)
!1229 = !DILocalVariable(name: "pscr_ret__", scope: !1230, file: !3, line: 196, type: !30)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 196, column: 29)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 196, column: 29)
!1232 = !DILocalVariable(name: "__vpp_verify", scope: !1233, file: !3, line: 196, type: !486)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 196, column: 29)
!1234 = !DILocalVariable(name: "pfo_val__", scope: !1235, file: !3, line: 196, type: !85)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 196, column: 29)
!1236 = !DILocation(line: 186, column: 40, scope: !1224)
!1237 = !DILocation(line: 188, column: 6, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 188, column: 6)
!1239 = !DILocation(line: 188, column: 6, scope: !1224)
!1240 = !DILocation(line: 189, column: 29, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 188, column: 15)
!1242 = !DILocation(line: 190, column: 38, scope: !1241)
!1243 = !DILocation(line: 191, column: 2, scope: !1241)
!1244 = !DILocation(line: 196, column: 29, scope: !1231)
!1245 = !DILocation(line: 196, column: 29, scope: !1230)
!1246 = !DILocation(line: 196, column: 29, scope: !1233)
!1247 = !DILocation(line: 196, column: 29, scope: !1235)
!1248 = !{i64 2152538689}
!1249 = !DILocation(line: 196, column: 29, scope: !1224)
!1250 = !DILocation(line: 196, column: 27, scope: !1224)
!1251 = !DILocation(line: 198, column: 2, scope: !1224)
!1252 = !DILocation(line: 200, column: 1, scope: !1224)
!1253 = distinct !DISubprogram(name: "pit_set_oneshot", scope: !3, file: !3, line: 134, type: !93, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1254)
!1254 = !{!1255}
!1255 = !DILocalVariable(name: "evt", arg: 1, scope: !1253, file: !3, line: 134, type: !62)
!1256 = !DILocation(line: 134, column: 55, scope: !1253)
!1257 = !DILocation(line: 136, column: 2, scope: !1253)
!1258 = !DILocation(line: 137, column: 2, scope: !1253)
!1259 = !DILocation(line: 138, column: 2, scope: !1253)
!1260 = !DILocation(line: 139, column: 2, scope: !1253)
!1261 = distinct !DISubprogram(name: "get_cpu_mask", scope: !34, file: !34, line: 1056, type: !1262, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!103, !7}
!1264 = !{!1265, !1266}
!1265 = !DILocalVariable(name: "cpu", arg: 1, scope: !1261, file: !34, line: 1056, type: !7)
!1266 = !DILocalVariable(name: "p", scope: !1261, file: !34, line: 1058, type: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!1269 = !DILocation(line: 1056, column: 63, scope: !1261)
!1270 = !DILocation(line: 1058, column: 2, scope: !1261)
!1271 = !DILocation(line: 1058, column: 23, scope: !1261)
!1272 = !DILocation(line: 1058, column: 46, scope: !1261)
!1273 = !DILocation(line: 1058, column: 50, scope: !1261)
!1274 = !DILocation(line: 1058, column: 44, scope: !1261)
!1275 = !DILocation(line: 1058, column: 27, scope: !1261)
!1276 = !DILocation(line: 1059, column: 7, scope: !1261)
!1277 = !DILocation(line: 1059, column: 11, scope: !1261)
!1278 = !DILocation(line: 1059, column: 4, scope: !1261)
!1279 = !DILocation(line: 1060, column: 9, scope: !1261)
!1280 = !DILocation(line: 1061, column: 1, scope: !1261)
!1281 = !DILocation(line: 1060, column: 2, scope: !1261)
!1282 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !1283, file: !1283, line: 313, type: !1284, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1286)
!1283 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !110}
!1286 = !{!1287}
!1287 = !DILocalVariable(name: "op", arg: 1, scope: !1282, file: !1283, line: 313, type: !110)
!1288 = !DILocation(line: 313, column: 66, scope: !1282)
!1289 = !DILocation(line: 313, column: 72, scope: !1282)
!1290 = !DISubprogram(name: "clockevents_config_and_register", scope: !6, file: !6, line: 186, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !62, !85, !31, !31}
!1293 = distinct !DISubprogram(name: "__outb", scope: !1294, file: !1294, line: 22, type: !1177, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!1295 = !{!1296, !1297}
!1296 = !DILocalVariable(name: "value", arg: 1, scope: !1293, file: !1294, line: 22, type: !177)
!1297 = !DILocalVariable(name: "port", arg: 2, scope: !1293, file: !1294, line: 22, type: !185)
!1298 = !DILocation(line: 22, column: 1, scope: !1293)
!1299 = !{i64 2152233914}
!1300 = distinct !DISubprogram(name: "slow_down_io", scope: !1301, file: !1301, line: 53, type: !1139, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1302)
!1301 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03130265545439d5fc6fd2b961c93410")
!1302 = !{!1303, !1305, !1306, !1307, !1308}
!1303 = !DILocalVariable(name: "__edi", scope: !1304, file: !1301, line: 55, type: !31)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !1301, line: 55, column: 2)
!1305 = !DILocalVariable(name: "__esi", scope: !1304, file: !1301, line: 55, type: !31)
!1306 = !DILocalVariable(name: "__edx", scope: !1304, file: !1301, line: 55, type: !31)
!1307 = !DILocalVariable(name: "__ecx", scope: !1304, file: !1301, line: 55, type: !31)
!1308 = !DILocalVariable(name: "__eax", scope: !1304, file: !1301, line: 55, type: !31)
!1309 = !DILocation(line: 55, column: 2, scope: !1304)
!1310 = !{i64 2149734747, i64 2149734754, i64 2149734981, i64 2149735032, i64 2149735053, i64 2149735078, i64 2149734776, i64 2149734789, i64 2149735189, i64 2149735322, i64 2149734881, i64 2149734908, i64 2149735455, i64 2149734959}
!1311 = !DILocation(line: 55, column: 2, scope: !1300)
!1312 = !DILocation(line: 61, column: 1, scope: !1300)
!1313 = distinct !DISubprogram(name: "clockevent_state_oneshot", scope: !6, file: !6, line: 150, type: !1314, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1316)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!45, !62}
!1316 = !{!1317}
!1317 = !DILocalVariable(name: "dev", arg: 1, scope: !1313, file: !6, line: 150, type: !62)
!1318 = !DILocation(line: 150, column: 72, scope: !1313)
!1319 = !DILocation(line: 152, column: 9, scope: !1313)
!1320 = !DILocation(line: 152, column: 14, scope: !1313)
!1321 = !DILocation(line: 152, column: 34, scope: !1313)
!1322 = !DILocation(line: 152, column: 2, scope: !1313)
!1323 = distinct !DISubprogram(name: "clockevent_state_periodic", scope: !6, file: !6, line: 145, type: !1314, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1324)
!1324 = !{!1325}
!1325 = !DILocalVariable(name: "dev", arg: 1, scope: !1323, file: !6, line: 145, type: !62)
!1326 = !DILocation(line: 145, column: 73, scope: !1323)
!1327 = !DILocation(line: 147, column: 9, scope: !1323)
!1328 = !DILocation(line: 147, column: 14, scope: !1323)
!1329 = !DILocation(line: 147, column: 34, scope: !1323)
!1330 = !DILocation(line: 147, column: 2, scope: !1323)
