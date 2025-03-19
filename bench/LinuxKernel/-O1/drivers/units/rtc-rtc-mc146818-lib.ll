; ModuleID = 'drivers/rtc/rtc-mc146818-lib.c'
source_filename = "drivers/rtc/rtc-mc146818-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mc146818_avoid_UIP: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mc146818_avoid_UIP ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mc146818_does_rtc_work: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mc146818_does_rtc_work ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mc146818_get_time: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mc146818_get_time ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mc146818_set_time: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mc146818_set_time ; .previous"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.cpuinfo_x86 = type { %union.anon.2, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.4, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { i64, [88 x i8] }
%struct.mc146818_get_time_callback_param = type { ptr, i8, i8 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.3 = type { i8, i8, i8, i8 }

@rtc_lock = external dso_local global %struct.spinlock, align 4
@.str = private unnamed_addr constant [52 x i8] c"\014Reading current time from RTC took around %li ms\0A\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_mc146818_avoid_UIP267 = internal global ptr @mc146818_avoid_UIP, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_mc146818_does_rtc_work268 = internal global ptr @mc146818_does_rtc_work, section ".discard.addressable", align 8, !dbg !25
@__UNIQUE_ID___addressable_mc146818_get_time269 = internal global ptr @mc146818_get_time, section ".discard.addressable", align 8, !dbg !27
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@__UNIQUE_ID___addressable_mc146818_set_time270 = internal global ptr @mc146818_set_time, section ".discard.addressable", align 8, !dbg !29
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_mc146818_avoid_UIP267, ptr @__UNIQUE_ID___addressable_mc146818_does_rtc_work268, ptr @__UNIQUE_ID___addressable_mc146818_get_time269, ptr @__UNIQUE_ID___addressable_mc146818_set_time270], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @mc146818_avoid_UIP(ptr noundef %callback, i32 noundef %timeout, ptr noundef %param) #0 align 16 !dbg !40 {
entry:
  %retval = alloca i1, align 1
  %callback.addr = alloca ptr, align 8
  %timeout.addr = alloca i32, align 4
  %param.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %flags = alloca i64, align 8
  %seconds = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %callback, ptr %callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !51, metadata !DIExpression()), !dbg !66
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !52, metadata !DIExpression()), !dbg !67
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !53, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %i, metadata !54, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !55, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 1, ptr %seconds) #9, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %seconds, metadata !57, metadata !DIExpression()), !dbg !74
  store i32 0, ptr %i, align 4, !dbg !75
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !77
  %conv = sext i32 %0 to i64, !dbg !77
  %div = sdiv i64 %conv, 10, !dbg !77
  %1 = load i32, ptr %timeout.addr, align 4, !dbg !78
  %conv1 = sext i32 %1 to i64, !dbg !78
  %cmp = icmp slt i64 %div, %conv1, !dbg !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !81

do.body:                                          ; preds = %for.body
  br label %do.body3, !dbg !82

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !58, metadata !DIExpression()), !dbg !83
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !65, metadata !DIExpression()), !dbg !83
  %cmp4 = icmp eq ptr %__dummy, %__dummy2, !dbg !83
  %conv5 = zext i1 %cmp4 to i32, !dbg !83
  store i32 1, ptr %tmp, align 4, !dbg !83
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !84
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !84
  %2 = load i32, ptr %tmp, align 4, !dbg !83
  %call = call ptr @spinlock_check(ptr noundef @rtc_lock) #10, !dbg !84
  %call6 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !84
  store i64 %call6, ptr %flags, align 8, !dbg !84
  br label %do.cond, !dbg !84

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !84

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !82

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !82

do.end8:                                          ; preds = %do.cond7
  %call9 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 0) #10, !dbg !85
  store i8 %call9, ptr %seconds, align 1, !dbg !86
  %call10 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 10) #10, !dbg !87
  %conv11 = zext i8 %call10 to i32, !dbg !87
  %and = and i32 %conv11, 128, !dbg !89
  %tobool = icmp ne i32 %and, 0, !dbg !89
  br i1 %tobool, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %do.end8
  %3 = load i64, ptr %flags, align 8, !dbg !91
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %3) #10, !dbg !93
  call void @__const_udelay(i64 noundef 429500) #10, !dbg !94
  br label %for.inc, !dbg !99

if.end:                                           ; preds = %do.end8
  %4 = load i8, ptr %seconds, align 1, !dbg !100
  %conv12 = zext i8 %4 to i32, !dbg !100
  %call13 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 0) #10, !dbg !102
  %conv14 = zext i8 %call13 to i32, !dbg !102
  %cmp15 = icmp ne i32 %conv12, %conv14, !dbg !103
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !104

if.then17:                                        ; preds = %if.end
  %5 = load i64, ptr %flags, align 8, !dbg !105
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %5) #10, !dbg !107
  br label %for.inc, !dbg !108

if.end18:                                         ; preds = %if.end
  %6 = load ptr, ptr %callback.addr, align 8, !dbg !109
  %tobool19 = icmp ne ptr %6, null, !dbg !109
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !111

if.then20:                                        ; preds = %if.end18
  %7 = load ptr, ptr %callback.addr, align 8, !dbg !112
  %8 = load i8, ptr %seconds, align 1, !dbg !113
  %9 = load ptr, ptr %param.addr, align 8, !dbg !114
  call void %7(i8 noundef zeroext %8, ptr noundef %9) #10, !dbg !112
  br label %if.end21, !dbg !112

if.end21:                                         ; preds = %if.then20, %if.end18
  %call22 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 10) #10, !dbg !115
  %conv23 = zext i8 %call22 to i32, !dbg !115
  %and24 = and i32 %conv23, 128, !dbg !117
  %tobool25 = icmp ne i32 %and24, 0, !dbg !117
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !118

if.then26:                                        ; preds = %if.end21
  %10 = load i64, ptr %flags, align 8, !dbg !119
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %10) #10, !dbg !121
  call void @__const_udelay(i64 noundef 429500) #10, !dbg !122
  br label %for.inc, !dbg !127

if.end27:                                         ; preds = %if.end21
  %11 = load i8, ptr %seconds, align 1, !dbg !128
  %conv28 = zext i8 %11 to i32, !dbg !128
  %call29 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 0) #10, !dbg !130
  %conv30 = zext i8 %call29 to i32, !dbg !130
  %cmp31 = icmp ne i32 %conv28, %conv30, !dbg !131
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !132

if.then33:                                        ; preds = %if.end27
  %12 = load i64, ptr %flags, align 8, !dbg !133
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %12) #10, !dbg !135
  br label %for.inc, !dbg !136

if.end34:                                         ; preds = %if.end27
  %13 = load i64, ptr %flags, align 8, !dbg !137
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %13) #10, !dbg !138
  %14 = load i32, ptr %i, align 4, !dbg !139
  %conv35 = sext i32 %14 to i64, !dbg !139
  %div36 = sdiv i64 %conv35, 10, !dbg !139
  %cmp37 = icmp sge i64 %div36, 100, !dbg !141
  br i1 %cmp37, label %if.then39, label %if.end47, !dbg !142

if.then39:                                        ; preds = %if.end34
  br label %do.body40, !dbg !143

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !145

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !145

do.end42:                                         ; preds = %do.cond41
  %15 = load i32, ptr %i, align 4, !dbg !143
  %conv44 = sext i32 %15 to i64, !dbg !143
  %div45 = sdiv i64 %conv44, 10, !dbg !143
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i64 noundef %div45) #11, !dbg !143
  store i32 %call46, ptr %tmp43, align 4, !dbg !145
  %16 = load i32, ptr %tmp43, align 4, !dbg !143
  br label %if.end47, !dbg !147

if.end47:                                         ; preds = %do.end42, %if.end34
  store i1 true, ptr %retval, align 1, !dbg !148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !148

for.inc:                                          ; preds = %if.then33, %if.then26, %if.then17, %if.then
  %17 = load i32, ptr %i, align 4, !dbg !149
  %inc = add i32 %17, 1, !dbg !149
  store i32 %inc, ptr %i, align 4, !dbg !149
  br label %for.cond, !dbg !150, !llvm.loop !151

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !155

cleanup:                                          ; preds = %for.end, %if.end47
  call void @llvm.lifetime.end.p0(i64 1, ptr %seconds) #9, !dbg !156
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !156
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !156
  %18 = load i1, ptr %retval, align 1, !dbg !156
  ret i1 %18, !dbg !156
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !157 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !192 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !206, metadata !DIExpression()), !dbg !207
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !208
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !209
  ret ptr %1, !dbg !210
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !211 dso_local zeroext i8 @rtc_cmos_read(i8 noundef zeroext) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !215 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !219, metadata !DIExpression()), !dbg !225
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !220, metadata !DIExpression()), !dbg !226
  br label %do.body, !dbg !227

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !221, metadata !DIExpression()), !dbg !228
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !224, metadata !DIExpression()), !dbg !228
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !228
  %conv = zext i1 %cmp to i32, !dbg !228
  store i32 1, ptr %tmp, align 4, !dbg !228
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !229
  %0 = load i32, ptr %tmp, align 4, !dbg !228
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !229
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !229
  %3 = load i64, ptr %flags.addr, align 8, !dbg !229
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #10, !dbg !229
  br label %do.end, !dbg !229

do.end:                                           ; preds = %do.body
  ret void, !dbg !230
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !231 dso_local void @__const_udelay(i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !235 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @mc146818_does_rtc_work() #0 align 16 !dbg !241 {
entry:
  %call = call zeroext i1 @mc146818_avoid_UIP(ptr noundef null, i32 noundef 1000, ptr noundef null) #10, !dbg !244
  ret i1 %call, !dbg !245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mc146818_get_time(ptr noundef %time, i32 noundef %timeout) #0 align 16 !dbg !246 {
entry:
  %retval = alloca i32, align 4
  %time.addr = alloca ptr, align 8
  %timeout.addr = alloca i32, align 4
  %p = alloca %struct.mc146818_get_time_callback_param, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !263, metadata !DIExpression()), !dbg !271
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 16, ptr %p) #9, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %p, metadata !265, metadata !DIExpression()), !dbg !274
  %time1 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 0, !dbg !275
  %0 = load ptr, ptr %time.addr, align 8, !dbg !276
  store ptr %0, ptr %time1, align 8, !dbg !275
  %ctrl = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 1, !dbg !275
  store i8 0, ptr %ctrl, align 8, !dbg !275
  %century = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 2, !dbg !275
  store i8 0, ptr %century, align 1, !dbg !275
  %1 = load i32, ptr %timeout.addr, align 4, !dbg !277
  %call = call zeroext i1 @mc146818_avoid_UIP(ptr noundef @mc146818_get_time_callback, i32 noundef %1, ptr noundef %p) #10, !dbg !279
  br i1 %call, label %if.end, label %if.then, !dbg !280

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %time.addr, align 8, !dbg !281
  call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 36, i1 false), !dbg !283
  store i32 -110, ptr %retval, align 4, !dbg !284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !284

if.end:                                           ; preds = %entry
  %ctrl2 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 1, !dbg !285
  %3 = load i8, ptr %ctrl2, align 8, !dbg !285
  %conv = zext i8 %3 to i32, !dbg !287
  %and = and i32 %conv, 4, !dbg !288
  %tobool = icmp ne i32 %and, 0, !dbg !288
  br i1 %tobool, label %lor.lhs.false, label %if.then3, !dbg !289

lor.lhs.false:                                    ; preds = %if.end
  br i1 true, label %if.then3, label %if.end104, !dbg !290

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %4 = load ptr, ptr %time.addr, align 8, !dbg !291
  %tm_sec = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 0, !dbg !291
  %5 = load i32, ptr %tm_sec, align 4, !dbg !291
  %conv4 = trunc i32 %5 to i8, !dbg !291
  %6 = call i1 @llvm.is.constant.i8(i8 %conv4), !dbg !291
  br i1 %6, label %cond.true, label %cond.false, !dbg !291

cond.true:                                        ; preds = %if.then3
  %7 = load ptr, ptr %time.addr, align 8, !dbg !291
  %tm_sec5 = getelementptr inbounds %struct.rtc_time, ptr %7, i32 0, i32 0, !dbg !291
  %8 = load i32, ptr %tm_sec5, align 4, !dbg !291
  %and6 = and i32 %8, 15, !dbg !291
  %9 = load ptr, ptr %time.addr, align 8, !dbg !291
  %tm_sec7 = getelementptr inbounds %struct.rtc_time, ptr %9, i32 0, i32 0, !dbg !291
  %10 = load i32, ptr %tm_sec7, align 4, !dbg !291
  %shr = ashr i32 %10, 4, !dbg !291
  %mul = mul i32 %shr, 10, !dbg !291
  %add = add i32 %and6, %mul, !dbg !291
  br label %cond.end, !dbg !291

cond.false:                                       ; preds = %if.then3
  %11 = load ptr, ptr %time.addr, align 8, !dbg !291
  %tm_sec8 = getelementptr inbounds %struct.rtc_time, ptr %11, i32 0, i32 0, !dbg !291
  %12 = load i32, ptr %tm_sec8, align 4, !dbg !291
  %conv9 = trunc i32 %12 to i8, !dbg !291
  %call10 = call i32 @_bcd2bin(i8 noundef zeroext %conv9) #12, !dbg !291
  br label %cond.end, !dbg !291

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %call10, %cond.false ], !dbg !291
  %13 = load ptr, ptr %time.addr, align 8, !dbg !293
  %tm_sec11 = getelementptr inbounds %struct.rtc_time, ptr %13, i32 0, i32 0, !dbg !294
  store i32 %cond, ptr %tm_sec11, align 4, !dbg !295
  %14 = load ptr, ptr %time.addr, align 8, !dbg !296
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %14, i32 0, i32 1, !dbg !296
  %15 = load i32, ptr %tm_min, align 4, !dbg !296
  %conv12 = trunc i32 %15 to i8, !dbg !296
  %16 = call i1 @llvm.is.constant.i8(i8 %conv12), !dbg !296
  br i1 %16, label %cond.true13, label %cond.false20, !dbg !296

cond.true13:                                      ; preds = %cond.end
  %17 = load ptr, ptr %time.addr, align 8, !dbg !296
  %tm_min14 = getelementptr inbounds %struct.rtc_time, ptr %17, i32 0, i32 1, !dbg !296
  %18 = load i32, ptr %tm_min14, align 4, !dbg !296
  %and15 = and i32 %18, 15, !dbg !296
  %19 = load ptr, ptr %time.addr, align 8, !dbg !296
  %tm_min16 = getelementptr inbounds %struct.rtc_time, ptr %19, i32 0, i32 1, !dbg !296
  %20 = load i32, ptr %tm_min16, align 4, !dbg !296
  %shr17 = ashr i32 %20, 4, !dbg !296
  %mul18 = mul i32 %shr17, 10, !dbg !296
  %add19 = add i32 %and15, %mul18, !dbg !296
  br label %cond.end24, !dbg !296

cond.false20:                                     ; preds = %cond.end
  %21 = load ptr, ptr %time.addr, align 8, !dbg !296
  %tm_min21 = getelementptr inbounds %struct.rtc_time, ptr %21, i32 0, i32 1, !dbg !296
  %22 = load i32, ptr %tm_min21, align 4, !dbg !296
  %conv22 = trunc i32 %22 to i8, !dbg !296
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %conv22) #12, !dbg !296
  br label %cond.end24, !dbg !296

cond.end24:                                       ; preds = %cond.false20, %cond.true13
  %cond25 = phi i32 [ %add19, %cond.true13 ], [ %call23, %cond.false20 ], !dbg !296
  %23 = load ptr, ptr %time.addr, align 8, !dbg !297
  %tm_min26 = getelementptr inbounds %struct.rtc_time, ptr %23, i32 0, i32 1, !dbg !298
  store i32 %cond25, ptr %tm_min26, align 4, !dbg !299
  %24 = load ptr, ptr %time.addr, align 8, !dbg !300
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %24, i32 0, i32 2, !dbg !300
  %25 = load i32, ptr %tm_hour, align 4, !dbg !300
  %conv27 = trunc i32 %25 to i8, !dbg !300
  %26 = call i1 @llvm.is.constant.i8(i8 %conv27), !dbg !300
  br i1 %26, label %cond.true28, label %cond.false35, !dbg !300

cond.true28:                                      ; preds = %cond.end24
  %27 = load ptr, ptr %time.addr, align 8, !dbg !300
  %tm_hour29 = getelementptr inbounds %struct.rtc_time, ptr %27, i32 0, i32 2, !dbg !300
  %28 = load i32, ptr %tm_hour29, align 4, !dbg !300
  %and30 = and i32 %28, 15, !dbg !300
  %29 = load ptr, ptr %time.addr, align 8, !dbg !300
  %tm_hour31 = getelementptr inbounds %struct.rtc_time, ptr %29, i32 0, i32 2, !dbg !300
  %30 = load i32, ptr %tm_hour31, align 4, !dbg !300
  %shr32 = ashr i32 %30, 4, !dbg !300
  %mul33 = mul i32 %shr32, 10, !dbg !300
  %add34 = add i32 %and30, %mul33, !dbg !300
  br label %cond.end39, !dbg !300

cond.false35:                                     ; preds = %cond.end24
  %31 = load ptr, ptr %time.addr, align 8, !dbg !300
  %tm_hour36 = getelementptr inbounds %struct.rtc_time, ptr %31, i32 0, i32 2, !dbg !300
  %32 = load i32, ptr %tm_hour36, align 4, !dbg !300
  %conv37 = trunc i32 %32 to i8, !dbg !300
  %call38 = call i32 @_bcd2bin(i8 noundef zeroext %conv37) #12, !dbg !300
  br label %cond.end39, !dbg !300

cond.end39:                                       ; preds = %cond.false35, %cond.true28
  %cond40 = phi i32 [ %add34, %cond.true28 ], [ %call38, %cond.false35 ], !dbg !300
  %33 = load ptr, ptr %time.addr, align 8, !dbg !301
  %tm_hour41 = getelementptr inbounds %struct.rtc_time, ptr %33, i32 0, i32 2, !dbg !302
  store i32 %cond40, ptr %tm_hour41, align 4, !dbg !303
  %34 = load ptr, ptr %time.addr, align 8, !dbg !304
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %34, i32 0, i32 3, !dbg !304
  %35 = load i32, ptr %tm_mday, align 4, !dbg !304
  %conv42 = trunc i32 %35 to i8, !dbg !304
  %36 = call i1 @llvm.is.constant.i8(i8 %conv42), !dbg !304
  br i1 %36, label %cond.true43, label %cond.false50, !dbg !304

cond.true43:                                      ; preds = %cond.end39
  %37 = load ptr, ptr %time.addr, align 8, !dbg !304
  %tm_mday44 = getelementptr inbounds %struct.rtc_time, ptr %37, i32 0, i32 3, !dbg !304
  %38 = load i32, ptr %tm_mday44, align 4, !dbg !304
  %and45 = and i32 %38, 15, !dbg !304
  %39 = load ptr, ptr %time.addr, align 8, !dbg !304
  %tm_mday46 = getelementptr inbounds %struct.rtc_time, ptr %39, i32 0, i32 3, !dbg !304
  %40 = load i32, ptr %tm_mday46, align 4, !dbg !304
  %shr47 = ashr i32 %40, 4, !dbg !304
  %mul48 = mul i32 %shr47, 10, !dbg !304
  %add49 = add i32 %and45, %mul48, !dbg !304
  br label %cond.end54, !dbg !304

cond.false50:                                     ; preds = %cond.end39
  %41 = load ptr, ptr %time.addr, align 8, !dbg !304
  %tm_mday51 = getelementptr inbounds %struct.rtc_time, ptr %41, i32 0, i32 3, !dbg !304
  %42 = load i32, ptr %tm_mday51, align 4, !dbg !304
  %conv52 = trunc i32 %42 to i8, !dbg !304
  %call53 = call i32 @_bcd2bin(i8 noundef zeroext %conv52) #12, !dbg !304
  br label %cond.end54, !dbg !304

cond.end54:                                       ; preds = %cond.false50, %cond.true43
  %cond55 = phi i32 [ %add49, %cond.true43 ], [ %call53, %cond.false50 ], !dbg !304
  %43 = load ptr, ptr %time.addr, align 8, !dbg !305
  %tm_mday56 = getelementptr inbounds %struct.rtc_time, ptr %43, i32 0, i32 3, !dbg !306
  store i32 %cond55, ptr %tm_mday56, align 4, !dbg !307
  %44 = load ptr, ptr %time.addr, align 8, !dbg !308
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %44, i32 0, i32 4, !dbg !308
  %45 = load i32, ptr %tm_mon, align 4, !dbg !308
  %conv57 = trunc i32 %45 to i8, !dbg !308
  %46 = call i1 @llvm.is.constant.i8(i8 %conv57), !dbg !308
  br i1 %46, label %cond.true58, label %cond.false65, !dbg !308

cond.true58:                                      ; preds = %cond.end54
  %47 = load ptr, ptr %time.addr, align 8, !dbg !308
  %tm_mon59 = getelementptr inbounds %struct.rtc_time, ptr %47, i32 0, i32 4, !dbg !308
  %48 = load i32, ptr %tm_mon59, align 4, !dbg !308
  %and60 = and i32 %48, 15, !dbg !308
  %49 = load ptr, ptr %time.addr, align 8, !dbg !308
  %tm_mon61 = getelementptr inbounds %struct.rtc_time, ptr %49, i32 0, i32 4, !dbg !308
  %50 = load i32, ptr %tm_mon61, align 4, !dbg !308
  %shr62 = ashr i32 %50, 4, !dbg !308
  %mul63 = mul i32 %shr62, 10, !dbg !308
  %add64 = add i32 %and60, %mul63, !dbg !308
  br label %cond.end69, !dbg !308

cond.false65:                                     ; preds = %cond.end54
  %51 = load ptr, ptr %time.addr, align 8, !dbg !308
  %tm_mon66 = getelementptr inbounds %struct.rtc_time, ptr %51, i32 0, i32 4, !dbg !308
  %52 = load i32, ptr %tm_mon66, align 4, !dbg !308
  %conv67 = trunc i32 %52 to i8, !dbg !308
  %call68 = call i32 @_bcd2bin(i8 noundef zeroext %conv67) #12, !dbg !308
  br label %cond.end69, !dbg !308

cond.end69:                                       ; preds = %cond.false65, %cond.true58
  %cond70 = phi i32 [ %add64, %cond.true58 ], [ %call68, %cond.false65 ], !dbg !308
  %53 = load ptr, ptr %time.addr, align 8, !dbg !309
  %tm_mon71 = getelementptr inbounds %struct.rtc_time, ptr %53, i32 0, i32 4, !dbg !310
  store i32 %cond70, ptr %tm_mon71, align 4, !dbg !311
  %54 = load ptr, ptr %time.addr, align 8, !dbg !312
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %54, i32 0, i32 5, !dbg !312
  %55 = load i32, ptr %tm_year, align 4, !dbg !312
  %conv72 = trunc i32 %55 to i8, !dbg !312
  %56 = call i1 @llvm.is.constant.i8(i8 %conv72), !dbg !312
  br i1 %56, label %cond.true73, label %cond.false80, !dbg !312

cond.true73:                                      ; preds = %cond.end69
  %57 = load ptr, ptr %time.addr, align 8, !dbg !312
  %tm_year74 = getelementptr inbounds %struct.rtc_time, ptr %57, i32 0, i32 5, !dbg !312
  %58 = load i32, ptr %tm_year74, align 4, !dbg !312
  %and75 = and i32 %58, 15, !dbg !312
  %59 = load ptr, ptr %time.addr, align 8, !dbg !312
  %tm_year76 = getelementptr inbounds %struct.rtc_time, ptr %59, i32 0, i32 5, !dbg !312
  %60 = load i32, ptr %tm_year76, align 4, !dbg !312
  %shr77 = ashr i32 %60, 4, !dbg !312
  %mul78 = mul i32 %shr77, 10, !dbg !312
  %add79 = add i32 %and75, %mul78, !dbg !312
  br label %cond.end84, !dbg !312

cond.false80:                                     ; preds = %cond.end69
  %61 = load ptr, ptr %time.addr, align 8, !dbg !312
  %tm_year81 = getelementptr inbounds %struct.rtc_time, ptr %61, i32 0, i32 5, !dbg !312
  %62 = load i32, ptr %tm_year81, align 4, !dbg !312
  %conv82 = trunc i32 %62 to i8, !dbg !312
  %call83 = call i32 @_bcd2bin(i8 noundef zeroext %conv82) #12, !dbg !312
  br label %cond.end84, !dbg !312

cond.end84:                                       ; preds = %cond.false80, %cond.true73
  %cond85 = phi i32 [ %add79, %cond.true73 ], [ %call83, %cond.false80 ], !dbg !312
  %63 = load ptr, ptr %time.addr, align 8, !dbg !313
  %tm_year86 = getelementptr inbounds %struct.rtc_time, ptr %63, i32 0, i32 5, !dbg !314
  store i32 %cond85, ptr %tm_year86, align 4, !dbg !315
  %century87 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 2, !dbg !316
  %64 = load i8, ptr %century87, align 1, !dbg !316
  %65 = call i1 @llvm.is.constant.i8(i8 %64), !dbg !316
  br i1 %65, label %cond.true88, label %cond.false97, !dbg !316

cond.true88:                                      ; preds = %cond.end84
  %century89 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 2, !dbg !316
  %66 = load i8, ptr %century89, align 1, !dbg !316
  %conv90 = zext i8 %66 to i32, !dbg !316
  %and91 = and i32 %conv90, 15, !dbg !316
  %century92 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 2, !dbg !316
  %67 = load i8, ptr %century92, align 1, !dbg !316
  %conv93 = zext i8 %67 to i32, !dbg !316
  %shr94 = ashr i32 %conv93, 4, !dbg !316
  %mul95 = mul i32 %shr94, 10, !dbg !316
  %add96 = add i32 %and91, %mul95, !dbg !316
  br label %cond.end100, !dbg !316

cond.false97:                                     ; preds = %cond.end84
  %century98 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 2, !dbg !316
  %68 = load i8, ptr %century98, align 1, !dbg !316
  %call99 = call i32 @_bcd2bin(i8 noundef zeroext %68) #12, !dbg !316
  br label %cond.end100, !dbg !316

cond.end100:                                      ; preds = %cond.false97, %cond.true88
  %cond101 = phi i32 [ %add96, %cond.true88 ], [ %call99, %cond.false97 ], !dbg !316
  %conv102 = trunc i32 %cond101 to i8, !dbg !316
  %century103 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 2, !dbg !317
  store i8 %conv102, ptr %century103, align 1, !dbg !318
  br label %if.end104, !dbg !319

if.end104:                                        ; preds = %cond.end100, %lor.lhs.false
  %century105 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 2, !dbg !320
  %69 = load i8, ptr %century105, align 1, !dbg !320
  %conv106 = zext i8 %69 to i32, !dbg !322
  %cmp = icmp sgt i32 %conv106, 19, !dbg !323
  br i1 %cmp, label %if.then108, label %if.end114, !dbg !324

if.then108:                                       ; preds = %if.end104
  %century109 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %p, i32 0, i32 2, !dbg !325
  %70 = load i8, ptr %century109, align 1, !dbg !325
  %conv110 = zext i8 %70 to i32, !dbg !326
  %sub = sub i32 %conv110, 19, !dbg !327
  %mul111 = mul i32 %sub, 100, !dbg !328
  %71 = load ptr, ptr %time.addr, align 8, !dbg !329
  %tm_year112 = getelementptr inbounds %struct.rtc_time, ptr %71, i32 0, i32 5, !dbg !330
  %72 = load i32, ptr %tm_year112, align 4, !dbg !331
  %add113 = add i32 %72, %mul111, !dbg !331
  store i32 %add113, ptr %tm_year112, align 4, !dbg !331
  br label %if.end114, !dbg !329

if.end114:                                        ; preds = %if.then108, %if.end104
  %73 = load ptr, ptr %time.addr, align 8, !dbg !332
  %tm_year115 = getelementptr inbounds %struct.rtc_time, ptr %73, i32 0, i32 5, !dbg !334
  %74 = load i32, ptr %tm_year115, align 4, !dbg !334
  %cmp116 = icmp sle i32 %74, 69, !dbg !335
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !336

if.then118:                                       ; preds = %if.end114
  %75 = load ptr, ptr %time.addr, align 8, !dbg !337
  %tm_year119 = getelementptr inbounds %struct.rtc_time, ptr %75, i32 0, i32 5, !dbg !338
  %76 = load i32, ptr %tm_year119, align 4, !dbg !339
  %add120 = add i32 %76, 100, !dbg !339
  store i32 %add120, ptr %tm_year119, align 4, !dbg !339
  br label %if.end121, !dbg !337

if.end121:                                        ; preds = %if.then118, %if.end114
  %77 = load ptr, ptr %time.addr, align 8, !dbg !340
  %tm_mon122 = getelementptr inbounds %struct.rtc_time, ptr %77, i32 0, i32 4, !dbg !341
  %78 = load i32, ptr %tm_mon122, align 4, !dbg !342
  %dec = add i32 %78, -1, !dbg !342
  store i32 %dec, ptr %tm_mon122, align 4, !dbg !342
  store i32 0, ptr %retval, align 4, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

cleanup:                                          ; preds = %if.end121, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %p) #9, !dbg !344
  %79 = load i32, ptr %retval, align 4, !dbg !344
  ret i32 %79, !dbg !344
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mc146818_get_time_callback(i8 noundef zeroext %seconds, ptr noundef %param_in) #0 align 16 !dbg !345 {
entry:
  %seconds.addr = alloca i8, align 1
  %param_in.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i8 %seconds, ptr %seconds.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %seconds.addr, metadata !347, metadata !DIExpression()), !dbg !351
  store ptr %param_in, ptr %param_in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param_in.addr, metadata !348, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %p, metadata !349, metadata !DIExpression()), !dbg !354
  %0 = load ptr, ptr %param_in.addr, align 8, !dbg !355
  store ptr %0, ptr %p, align 8, !dbg !354
  %1 = load i8, ptr %seconds.addr, align 1, !dbg !356
  %conv = zext i8 %1 to i32, !dbg !356
  %2 = load ptr, ptr %p, align 8, !dbg !357
  %time = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %2, i32 0, i32 0, !dbg !358
  %3 = load ptr, ptr %time, align 8, !dbg !358
  %tm_sec = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 0, !dbg !359
  store i32 %conv, ptr %tm_sec, align 4, !dbg !360
  %call = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 2) #10, !dbg !361
  %conv1 = zext i8 %call to i32, !dbg !361
  %4 = load ptr, ptr %p, align 8, !dbg !362
  %time2 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %4, i32 0, i32 0, !dbg !363
  %5 = load ptr, ptr %time2, align 8, !dbg !363
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %5, i32 0, i32 1, !dbg !364
  store i32 %conv1, ptr %tm_min, align 4, !dbg !365
  %call3 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 4) #10, !dbg !366
  %conv4 = zext i8 %call3 to i32, !dbg !366
  %6 = load ptr, ptr %p, align 8, !dbg !367
  %time5 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %6, i32 0, i32 0, !dbg !368
  %7 = load ptr, ptr %time5, align 8, !dbg !368
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %7, i32 0, i32 2, !dbg !369
  store i32 %conv4, ptr %tm_hour, align 4, !dbg !370
  %call6 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 7) #10, !dbg !371
  %conv7 = zext i8 %call6 to i32, !dbg !371
  %8 = load ptr, ptr %p, align 8, !dbg !372
  %time8 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %8, i32 0, i32 0, !dbg !373
  %9 = load ptr, ptr %time8, align 8, !dbg !373
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %9, i32 0, i32 3, !dbg !374
  store i32 %conv7, ptr %tm_mday, align 4, !dbg !375
  %call9 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 8) #10, !dbg !376
  %conv10 = zext i8 %call9 to i32, !dbg !376
  %10 = load ptr, ptr %p, align 8, !dbg !377
  %time11 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %10, i32 0, i32 0, !dbg !378
  %11 = load ptr, ptr %time11, align 8, !dbg !378
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %11, i32 0, i32 4, !dbg !379
  store i32 %conv10, ptr %tm_mon, align 4, !dbg !380
  %call12 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 9) #10, !dbg !381
  %conv13 = zext i8 %call12 to i32, !dbg !381
  %12 = load ptr, ptr %p, align 8, !dbg !382
  %time14 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %12, i32 0, i32 0, !dbg !383
  %13 = load ptr, ptr %time14, align 8, !dbg !383
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %13, i32 0, i32 5, !dbg !384
  store i32 %conv13, ptr %tm_year, align 4, !dbg !385
  %14 = load i8, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_FADT, i32 0, i32 2), align 1, !dbg !386
  %conv15 = zext i8 %14 to i32, !dbg !388
  %cmp = icmp sge i32 %conv15, 3, !dbg !389
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !390

land.lhs.true:                                    ; preds = %entry
  %15 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !391
  %conv17 = zext i8 %15 to i32, !dbg !392
  %tobool = icmp ne i32 %conv17, 0, !dbg !392
  br i1 %tobool, label %if.then, label %if.else, !dbg !393

if.then:                                          ; preds = %land.lhs.true
  %16 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !394
  %call18 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext %16) #10, !dbg !394
  %17 = load ptr, ptr %p, align 8, !dbg !396
  %century = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %17, i32 0, i32 2, !dbg !397
  store i8 %call18, ptr %century, align 1, !dbg !398
  br label %if.end, !dbg !399

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load ptr, ptr %p, align 8, !dbg !400
  %century19 = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %18, i32 0, i32 2, !dbg !402
  store i8 0, ptr %century19, align 1, !dbg !403
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call20 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 11) #10, !dbg !404
  %19 = load ptr, ptr %p, align 8, !dbg !405
  %ctrl = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %19, i32 0, i32 1, !dbg !406
  store i8 %call20, ptr %ctrl, align 8, !dbg !407
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !408
  ret void, !dbg !408
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i8(i8) #7

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(none)
declare !dbg !409 dso_local i32 @_bcd2bin(i8 noundef zeroext) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mc146818_set_time(ptr noundef %time) #0 align 16 !dbg !413 {
entry:
  %retval = alloca i32, align 4
  %time.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %mon = alloca i8, align 1
  %day = alloca i8, align 1
  %hrs = alloca i8, align 1
  %min = alloca i8, align 1
  %sec = alloca i8, align 1
  %save_control = alloca i8, align 1
  %save_freq_select = alloca i8, align 1
  %yrs = alloca i32, align 4
  %century = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy125 = alloca i64, align 8
  %__dummy2126 = alloca i64, align 8
  %tmp129 = alloca i32, align 4
  store ptr %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !417, metadata !DIExpression()), !dbg !438
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !418, metadata !DIExpression()), !dbg !440
  call void @llvm.lifetime.start.p0(i64 1, ptr %mon) #9, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %mon, metadata !419, metadata !DIExpression()), !dbg !442
  call void @llvm.lifetime.start.p0(i64 1, ptr %day) #9, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %day, metadata !420, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 1, ptr %hrs) #9, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %hrs, metadata !421, metadata !DIExpression()), !dbg !444
  call void @llvm.lifetime.start.p0(i64 1, ptr %min) #9, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %min, metadata !422, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 1, ptr %sec) #9, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !423, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 1, ptr %save_control) #9, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %save_control, metadata !424, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 1, ptr %save_freq_select) #9, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %save_freq_select, metadata !425, metadata !DIExpression()), !dbg !449
  call void @llvm.lifetime.start.p0(i64 4, ptr %yrs) #9, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %yrs, metadata !426, metadata !DIExpression()), !dbg !451
  call void @llvm.lifetime.start.p0(i64 1, ptr %century) #9, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %century, metadata !427, metadata !DIExpression()), !dbg !453
  store i8 0, ptr %century, align 1, !dbg !453
  %0 = load ptr, ptr %time.addr, align 8, !dbg !454
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 5, !dbg !455
  %1 = load i32, ptr %tm_year, align 4, !dbg !455
  store i32 %1, ptr %yrs, align 4, !dbg !456
  %2 = load ptr, ptr %time.addr, align 8, !dbg !457
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 4, !dbg !458
  %3 = load i32, ptr %tm_mon, align 4, !dbg !458
  %add = add i32 %3, 1, !dbg !459
  %conv = trunc i32 %add to i8, !dbg !457
  store i8 %conv, ptr %mon, align 1, !dbg !460
  %4 = load ptr, ptr %time.addr, align 8, !dbg !461
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 3, !dbg !462
  %5 = load i32, ptr %tm_mday, align 4, !dbg !462
  %conv1 = trunc i32 %5 to i8, !dbg !461
  store i8 %conv1, ptr %day, align 1, !dbg !463
  %6 = load ptr, ptr %time.addr, align 8, !dbg !464
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 2, !dbg !465
  %7 = load i32, ptr %tm_hour, align 4, !dbg !465
  %conv2 = trunc i32 %7 to i8, !dbg !464
  store i8 %conv2, ptr %hrs, align 1, !dbg !466
  %8 = load ptr, ptr %time.addr, align 8, !dbg !467
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %8, i32 0, i32 1, !dbg !468
  %9 = load i32, ptr %tm_min, align 4, !dbg !468
  %conv3 = trunc i32 %9 to i8, !dbg !467
  store i8 %conv3, ptr %min, align 1, !dbg !469
  %10 = load ptr, ptr %time.addr, align 8, !dbg !470
  %tm_sec = getelementptr inbounds %struct.rtc_time, ptr %10, i32 0, i32 0, !dbg !471
  %11 = load i32, ptr %tm_sec, align 4, !dbg !471
  %conv4 = trunc i32 %11 to i8, !dbg !470
  store i8 %conv4, ptr %sec, align 1, !dbg !472
  %12 = load i32, ptr %yrs, align 4, !dbg !473
  %cmp = icmp ugt i32 %12, 255, !dbg !475
  br i1 %cmp, label %if.then, label %if.end, !dbg !476

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !477

if.end:                                           ; preds = %entry
  %13 = load i8, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_FADT, i32 0, i32 2), align 1, !dbg !478
  %conv6 = zext i8 %13 to i32, !dbg !480
  %cmp7 = icmp sge i32 %conv6, 3, !dbg !481
  br i1 %cmp7, label %land.lhs.true, label %if.end13, !dbg !482

land.lhs.true:                                    ; preds = %if.end
  %14 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !483
  %conv9 = zext i8 %14 to i32, !dbg !484
  %tobool = icmp ne i32 %conv9, 0, !dbg !484
  br i1 %tobool, label %if.then10, label %if.end13, !dbg !485

if.then10:                                        ; preds = %land.lhs.true
  %15 = load i32, ptr %yrs, align 4, !dbg !486
  %add11 = add i32 %15, 1900, !dbg !488
  %div = udiv i32 %add11, 100, !dbg !489
  %conv12 = trunc i32 %div to i8, !dbg !490
  store i8 %conv12, ptr %century, align 1, !dbg !491
  %16 = load i32, ptr %yrs, align 4, !dbg !492
  %rem = urem i32 %16, 100, !dbg !492
  store i32 %rem, ptr %yrs, align 4, !dbg !492
  br label %if.end13, !dbg !493

if.end13:                                         ; preds = %if.then10, %land.lhs.true, %if.end
  %17 = load i32, ptr %yrs, align 4, !dbg !494
  %cmp14 = icmp ugt i32 %17, 169, !dbg !496
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !497

if.then16:                                        ; preds = %if.end13
  store i32 -22, ptr %retval, align 4, !dbg !498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !498

if.end17:                                         ; preds = %if.end13
  %18 = load i32, ptr %yrs, align 4, !dbg !499
  %cmp18 = icmp uge i32 %18, 100, !dbg !501
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !502

if.then20:                                        ; preds = %if.end17
  %19 = load i32, ptr %yrs, align 4, !dbg !503
  %sub = sub i32 %19, 100, !dbg !503
  store i32 %sub, ptr %yrs, align 4, !dbg !503
  br label %if.end21, !dbg !504

if.end21:                                         ; preds = %if.then20, %if.end17
  br label %do.body, !dbg !505

do.body:                                          ; preds = %if.end21
  br label %do.body22, !dbg !506

do.body22:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !428, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !432, metadata !DIExpression()), !dbg !507
  %cmp23 = icmp eq ptr %__dummy, %__dummy2, !dbg !507
  %conv24 = zext i1 %cmp23 to i32, !dbg !507
  store i32 1, ptr %tmp, align 4, !dbg !507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !508
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !508
  %20 = load i32, ptr %tmp, align 4, !dbg !507
  %call = call ptr @spinlock_check(ptr noundef @rtc_lock) #10, !dbg !508
  %call25 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !508
  store i64 %call25, ptr %flags, align 8, !dbg !508
  br label %do.cond, !dbg !508

do.cond:                                          ; preds = %do.body22
  br label %do.end, !dbg !508

do.end:                                           ; preds = %do.cond
  br label %do.cond26, !dbg !506

do.cond26:                                        ; preds = %do.end
  br label %do.end27, !dbg !506

do.end27:                                         ; preds = %do.cond26
  %call28 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 11) #10, !dbg !509
  store i8 %call28, ptr %save_control, align 1, !dbg !510
  %21 = load i64, ptr %flags, align 8, !dbg !511
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %21) #10, !dbg !512
  %22 = load i8, ptr %save_control, align 1, !dbg !513
  %conv29 = zext i8 %22 to i32, !dbg !513
  %and = and i32 %conv29, 4, !dbg !515
  %tobool30 = icmp ne i32 %and, 0, !dbg !515
  br i1 %tobool30, label %lor.lhs.false, label %if.then31, !dbg !516

lor.lhs.false:                                    ; preds = %do.end27
  br i1 true, label %if.then31, label %if.end122, !dbg !517

if.then31:                                        ; preds = %lor.lhs.false, %do.end27
  %23 = load i8, ptr %sec, align 1, !dbg !518
  %24 = call i1 @llvm.is.constant.i8(i8 %23), !dbg !518
  br i1 %24, label %cond.true, label %cond.false, !dbg !518

cond.true:                                        ; preds = %if.then31
  %25 = load i8, ptr %sec, align 1, !dbg !518
  %conv32 = zext i8 %25 to i32, !dbg !518
  %div33 = sdiv i32 %conv32, 10, !dbg !518
  %shl = shl i32 %div33, 4, !dbg !518
  %26 = load i8, ptr %sec, align 1, !dbg !518
  %conv34 = zext i8 %26 to i32, !dbg !518
  %rem35 = srem i32 %conv34, 10, !dbg !518
  %add36 = add i32 %shl, %rem35, !dbg !518
  br label %cond.end, !dbg !518

cond.false:                                       ; preds = %if.then31
  %27 = load i8, ptr %sec, align 1, !dbg !518
  %conv37 = zext i8 %27 to i32, !dbg !518
  %call38 = call zeroext i8 @_bin2bcd(i32 noundef %conv37) #12, !dbg !518
  %conv39 = zext i8 %call38 to i32, !dbg !518
  br label %cond.end, !dbg !518

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add36, %cond.true ], [ %conv39, %cond.false ], !dbg !518
  %conv40 = trunc i32 %cond to i8, !dbg !518
  store i8 %conv40, ptr %sec, align 1, !dbg !520
  %28 = load i8, ptr %min, align 1, !dbg !521
  %29 = call i1 @llvm.is.constant.i8(i8 %28), !dbg !521
  br i1 %29, label %cond.true41, label %cond.false48, !dbg !521

cond.true41:                                      ; preds = %cond.end
  %30 = load i8, ptr %min, align 1, !dbg !521
  %conv42 = zext i8 %30 to i32, !dbg !521
  %div43 = sdiv i32 %conv42, 10, !dbg !521
  %shl44 = shl i32 %div43, 4, !dbg !521
  %31 = load i8, ptr %min, align 1, !dbg !521
  %conv45 = zext i8 %31 to i32, !dbg !521
  %rem46 = srem i32 %conv45, 10, !dbg !521
  %add47 = add i32 %shl44, %rem46, !dbg !521
  br label %cond.end52, !dbg !521

cond.false48:                                     ; preds = %cond.end
  %32 = load i8, ptr %min, align 1, !dbg !521
  %conv49 = zext i8 %32 to i32, !dbg !521
  %call50 = call zeroext i8 @_bin2bcd(i32 noundef %conv49) #12, !dbg !521
  %conv51 = zext i8 %call50 to i32, !dbg !521
  br label %cond.end52, !dbg !521

cond.end52:                                       ; preds = %cond.false48, %cond.true41
  %cond53 = phi i32 [ %add47, %cond.true41 ], [ %conv51, %cond.false48 ], !dbg !521
  %conv54 = trunc i32 %cond53 to i8, !dbg !521
  store i8 %conv54, ptr %min, align 1, !dbg !522
  %33 = load i8, ptr %hrs, align 1, !dbg !523
  %34 = call i1 @llvm.is.constant.i8(i8 %33), !dbg !523
  br i1 %34, label %cond.true55, label %cond.false62, !dbg !523

cond.true55:                                      ; preds = %cond.end52
  %35 = load i8, ptr %hrs, align 1, !dbg !523
  %conv56 = zext i8 %35 to i32, !dbg !523
  %div57 = sdiv i32 %conv56, 10, !dbg !523
  %shl58 = shl i32 %div57, 4, !dbg !523
  %36 = load i8, ptr %hrs, align 1, !dbg !523
  %conv59 = zext i8 %36 to i32, !dbg !523
  %rem60 = srem i32 %conv59, 10, !dbg !523
  %add61 = add i32 %shl58, %rem60, !dbg !523
  br label %cond.end66, !dbg !523

cond.false62:                                     ; preds = %cond.end52
  %37 = load i8, ptr %hrs, align 1, !dbg !523
  %conv63 = zext i8 %37 to i32, !dbg !523
  %call64 = call zeroext i8 @_bin2bcd(i32 noundef %conv63) #12, !dbg !523
  %conv65 = zext i8 %call64 to i32, !dbg !523
  br label %cond.end66, !dbg !523

cond.end66:                                       ; preds = %cond.false62, %cond.true55
  %cond67 = phi i32 [ %add61, %cond.true55 ], [ %conv65, %cond.false62 ], !dbg !523
  %conv68 = trunc i32 %cond67 to i8, !dbg !523
  store i8 %conv68, ptr %hrs, align 1, !dbg !524
  %38 = load i8, ptr %day, align 1, !dbg !525
  %39 = call i1 @llvm.is.constant.i8(i8 %38), !dbg !525
  br i1 %39, label %cond.true69, label %cond.false76, !dbg !525

cond.true69:                                      ; preds = %cond.end66
  %40 = load i8, ptr %day, align 1, !dbg !525
  %conv70 = zext i8 %40 to i32, !dbg !525
  %div71 = sdiv i32 %conv70, 10, !dbg !525
  %shl72 = shl i32 %div71, 4, !dbg !525
  %41 = load i8, ptr %day, align 1, !dbg !525
  %conv73 = zext i8 %41 to i32, !dbg !525
  %rem74 = srem i32 %conv73, 10, !dbg !525
  %add75 = add i32 %shl72, %rem74, !dbg !525
  br label %cond.end80, !dbg !525

cond.false76:                                     ; preds = %cond.end66
  %42 = load i8, ptr %day, align 1, !dbg !525
  %conv77 = zext i8 %42 to i32, !dbg !525
  %call78 = call zeroext i8 @_bin2bcd(i32 noundef %conv77) #12, !dbg !525
  %conv79 = zext i8 %call78 to i32, !dbg !525
  br label %cond.end80, !dbg !525

cond.end80:                                       ; preds = %cond.false76, %cond.true69
  %cond81 = phi i32 [ %add75, %cond.true69 ], [ %conv79, %cond.false76 ], !dbg !525
  %conv82 = trunc i32 %cond81 to i8, !dbg !525
  store i8 %conv82, ptr %day, align 1, !dbg !526
  %43 = load i8, ptr %mon, align 1, !dbg !527
  %44 = call i1 @llvm.is.constant.i8(i8 %43), !dbg !527
  br i1 %44, label %cond.true83, label %cond.false90, !dbg !527

cond.true83:                                      ; preds = %cond.end80
  %45 = load i8, ptr %mon, align 1, !dbg !527
  %conv84 = zext i8 %45 to i32, !dbg !527
  %div85 = sdiv i32 %conv84, 10, !dbg !527
  %shl86 = shl i32 %div85, 4, !dbg !527
  %46 = load i8, ptr %mon, align 1, !dbg !527
  %conv87 = zext i8 %46 to i32, !dbg !527
  %rem88 = srem i32 %conv87, 10, !dbg !527
  %add89 = add i32 %shl86, %rem88, !dbg !527
  br label %cond.end94, !dbg !527

cond.false90:                                     ; preds = %cond.end80
  %47 = load i8, ptr %mon, align 1, !dbg !527
  %conv91 = zext i8 %47 to i32, !dbg !527
  %call92 = call zeroext i8 @_bin2bcd(i32 noundef %conv91) #12, !dbg !527
  %conv93 = zext i8 %call92 to i32, !dbg !527
  br label %cond.end94, !dbg !527

cond.end94:                                       ; preds = %cond.false90, %cond.true83
  %cond95 = phi i32 [ %add89, %cond.true83 ], [ %conv93, %cond.false90 ], !dbg !527
  %conv96 = trunc i32 %cond95 to i8, !dbg !527
  store i8 %conv96, ptr %mon, align 1, !dbg !528
  %48 = load i32, ptr %yrs, align 4, !dbg !529
  %conv97 = trunc i32 %48 to i8, !dbg !529
  %49 = call i1 @llvm.is.constant.i8(i8 %conv97), !dbg !529
  br i1 %49, label %cond.true98, label %cond.false103, !dbg !529

cond.true98:                                      ; preds = %cond.end94
  %50 = load i32, ptr %yrs, align 4, !dbg !529
  %div99 = udiv i32 %50, 10, !dbg !529
  %shl100 = shl i32 %div99, 4, !dbg !529
  %51 = load i32, ptr %yrs, align 4, !dbg !529
  %rem101 = urem i32 %51, 10, !dbg !529
  %add102 = add i32 %shl100, %rem101, !dbg !529
  br label %cond.end106, !dbg !529

cond.false103:                                    ; preds = %cond.end94
  %52 = load i32, ptr %yrs, align 4, !dbg !529
  %call104 = call zeroext i8 @_bin2bcd(i32 noundef %52) #12, !dbg !529
  %conv105 = zext i8 %call104 to i32, !dbg !529
  br label %cond.end106, !dbg !529

cond.end106:                                      ; preds = %cond.false103, %cond.true98
  %cond107 = phi i32 [ %add102, %cond.true98 ], [ %conv105, %cond.false103 ], !dbg !529
  store i32 %cond107, ptr %yrs, align 4, !dbg !530
  %53 = load i8, ptr %century, align 1, !dbg !531
  %54 = call i1 @llvm.is.constant.i8(i8 %53), !dbg !531
  br i1 %54, label %cond.true108, label %cond.false115, !dbg !531

cond.true108:                                     ; preds = %cond.end106
  %55 = load i8, ptr %century, align 1, !dbg !531
  %conv109 = zext i8 %55 to i32, !dbg !531
  %div110 = sdiv i32 %conv109, 10, !dbg !531
  %shl111 = shl i32 %div110, 4, !dbg !531
  %56 = load i8, ptr %century, align 1, !dbg !531
  %conv112 = zext i8 %56 to i32, !dbg !531
  %rem113 = srem i32 %conv112, 10, !dbg !531
  %add114 = add i32 %shl111, %rem113, !dbg !531
  br label %cond.end119, !dbg !531

cond.false115:                                    ; preds = %cond.end106
  %57 = load i8, ptr %century, align 1, !dbg !531
  %conv116 = zext i8 %57 to i32, !dbg !531
  %call117 = call zeroext i8 @_bin2bcd(i32 noundef %conv116) #12, !dbg !531
  %conv118 = zext i8 %call117 to i32, !dbg !531
  br label %cond.end119, !dbg !531

cond.end119:                                      ; preds = %cond.false115, %cond.true108
  %cond120 = phi i32 [ %add114, %cond.true108 ], [ %conv118, %cond.false115 ], !dbg !531
  %conv121 = trunc i32 %cond120 to i8, !dbg !531
  store i8 %conv121, ptr %century, align 1, !dbg !532
  br label %if.end122, !dbg !533

if.end122:                                        ; preds = %cond.end119, %lor.lhs.false
  br label %do.body123, !dbg !534

do.body123:                                       ; preds = %if.end122
  br label %do.body124, !dbg !535

do.body124:                                       ; preds = %do.body123
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy125) #9, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %__dummy125, metadata !433, metadata !DIExpression()), !dbg !536
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2126) #9, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %__dummy2126, metadata !437, metadata !DIExpression()), !dbg !536
  %cmp127 = icmp eq ptr %__dummy125, %__dummy2126, !dbg !536
  %conv128 = zext i1 %cmp127 to i32, !dbg !536
  store i32 1, ptr %tmp129, align 4, !dbg !536
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2126) #9, !dbg !537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy125) #9, !dbg !537
  %58 = load i32, ptr %tmp129, align 4, !dbg !536
  %call130 = call ptr @spinlock_check(ptr noundef @rtc_lock) #10, !dbg !537
  %call131 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call130) #10, !dbg !537
  store i64 %call131, ptr %flags, align 8, !dbg !537
  br label %do.cond132, !dbg !537

do.cond132:                                       ; preds = %do.body124
  br label %do.end133, !dbg !537

do.end133:                                        ; preds = %do.cond132
  br label %do.cond134, !dbg !535

do.cond134:                                       ; preds = %do.end133
  br label %do.end135, !dbg !535

do.end135:                                        ; preds = %do.cond134
  %call136 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 11) #10, !dbg !538
  store i8 %call136, ptr %save_control, align 1, !dbg !539
  %59 = load i8, ptr %save_control, align 1, !dbg !540
  %conv137 = zext i8 %59 to i32, !dbg !540
  %or = or i32 %conv137, 128, !dbg !540
  %conv138 = trunc i32 %or to i8, !dbg !540
  call void @rtc_cmos_write(i8 noundef zeroext %conv138, i8 noundef zeroext 11) #10, !dbg !540
  %call139 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext 10) #10, !dbg !541
  store i8 %call139, ptr %save_freq_select, align 1, !dbg !542
  %call140 = call zeroext i1 @apply_amd_register_a_behavior() #10, !dbg !543
  br i1 %call140, label %if.then141, label %if.else, !dbg !545

if.then141:                                       ; preds = %do.end135
  %60 = load i8, ptr %save_freq_select, align 1, !dbg !546
  %conv142 = zext i8 %60 to i32, !dbg !546
  %and143 = and i32 %conv142, -17, !dbg !546
  %conv144 = trunc i32 %and143 to i8, !dbg !546
  call void @rtc_cmos_write(i8 noundef zeroext %conv144, i8 noundef zeroext 10) #10, !dbg !546
  br label %if.end148, !dbg !546

if.else:                                          ; preds = %do.end135
  %61 = load i8, ptr %save_freq_select, align 1, !dbg !547
  %conv145 = zext i8 %61 to i32, !dbg !547
  %or146 = or i32 %conv145, 112, !dbg !547
  %conv147 = trunc i32 %or146 to i8, !dbg !547
  call void @rtc_cmos_write(i8 noundef zeroext %conv147, i8 noundef zeroext 10) #10, !dbg !547
  br label %if.end148

if.end148:                                        ; preds = %if.else, %if.then141
  %62 = load i32, ptr %yrs, align 4, !dbg !548
  %conv149 = trunc i32 %62 to i8, !dbg !548
  call void @rtc_cmos_write(i8 noundef zeroext %conv149, i8 noundef zeroext 9) #10, !dbg !548
  %63 = load i8, ptr %mon, align 1, !dbg !549
  call void @rtc_cmos_write(i8 noundef zeroext %63, i8 noundef zeroext 8) #10, !dbg !549
  %64 = load i8, ptr %day, align 1, !dbg !550
  call void @rtc_cmos_write(i8 noundef zeroext %64, i8 noundef zeroext 7) #10, !dbg !550
  %65 = load i8, ptr %hrs, align 1, !dbg !551
  call void @rtc_cmos_write(i8 noundef zeroext %65, i8 noundef zeroext 4) #10, !dbg !551
  %66 = load i8, ptr %min, align 1, !dbg !552
  call void @rtc_cmos_write(i8 noundef zeroext %66, i8 noundef zeroext 2) #10, !dbg !552
  %67 = load i8, ptr %sec, align 1, !dbg !553
  call void @rtc_cmos_write(i8 noundef zeroext %67, i8 noundef zeroext 0) #10, !dbg !553
  %68 = load i8, ptr getelementptr inbounds (%struct.acpi_table_header, ptr @acpi_gbl_FADT, i32 0, i32 2), align 1, !dbg !554
  %conv150 = zext i8 %68 to i32, !dbg !556
  %cmp151 = icmp sge i32 %conv150, 3, !dbg !557
  br i1 %cmp151, label %land.lhs.true153, label %if.end157, !dbg !558

land.lhs.true153:                                 ; preds = %if.end148
  %69 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !559
  %conv154 = zext i8 %69 to i32, !dbg !560
  %tobool155 = icmp ne i32 %conv154, 0, !dbg !560
  br i1 %tobool155, label %if.then156, label %if.end157, !dbg !561

if.then156:                                       ; preds = %land.lhs.true153
  %70 = load i8, ptr %century, align 1, !dbg !562
  %71 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !562
  call void @rtc_cmos_write(i8 noundef zeroext %70, i8 noundef zeroext %71) #10, !dbg !562
  br label %if.end157, !dbg !562

if.end157:                                        ; preds = %if.then156, %land.lhs.true153, %if.end148
  %72 = load i8, ptr %save_control, align 1, !dbg !563
  call void @rtc_cmos_write(i8 noundef zeroext %72, i8 noundef zeroext 11) #10, !dbg !563
  %73 = load i8, ptr %save_freq_select, align 1, !dbg !564
  call void @rtc_cmos_write(i8 noundef zeroext %73, i8 noundef zeroext 10) #10, !dbg !564
  %74 = load i64, ptr %flags, align 8, !dbg !565
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %74) #10, !dbg !566
  store i32 0, ptr %retval, align 4, !dbg !567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !567

cleanup:                                          ; preds = %if.end157, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %century) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 4, ptr %yrs) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 1, ptr %save_freq_select) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 1, ptr %save_control) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 1, ptr %sec) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 1, ptr %min) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 1, ptr %hrs) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 1, ptr %day) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 1, ptr %mon) #9, !dbg !568
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !568
  %75 = load i32, ptr %retval, align 4, !dbg !568
  ret i32 %75, !dbg !568
}

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(none)
declare !dbg !569 dso_local zeroext i8 @_bin2bcd(i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !572 dso_local void @rtc_cmos_write(i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @apply_amd_register_a_behavior() #0 align 16 !dbg !575 {
entry:
  %retval = alloca i1, align 1
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !576
  %conv = zext i8 %0 to i32, !dbg !578
  %cmp = icmp eq i32 %conv, 2, !dbg !579
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !580

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !581
  %conv2 = zext i8 %1 to i32, !dbg !582
  %cmp3 = icmp eq i32 %conv2, 9, !dbg !583
  br i1 %cmp3, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 true, ptr %retval, align 1, !dbg !585
  br label %return, !dbg !585

if.end:                                           ; preds = %lor.lhs.false
  store i1 false, ptr %retval, align 1, !dbg !586
  br label %return, !dbg !586

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !587
  ret i1 %2, !dbg !587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !588 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/rtc/rtc-mc146818-lib.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431c331aee1babe537e8496ef29faf4d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 52)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mc146818_avoid_UIP267", scope: !9, file: !2, line: 88, type: !18, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/rtc/.rtc-mc146818-lib.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/rtc/rtc-mc146818-lib\22 -D KBUILD_BASENAME=\22rtc_mc146818_lib\22 -D KBUILD_MODNAME=\22rtc_mc146818_lib\22 -D __KBUILD_MODNAME=kmod_rtc_mc146818_lib -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/rtc/rtc-mc146818-lib.ll drivers/rtc/rtc-mc146818-lib.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !17, globals: !24, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 17, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !22, line: 21, baseType: !23)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !{!0, !7, !25, !27, !29}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mc146818_does_rtc_work268", scope: !9, file: !2, line: 98, type: !18, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mc146818_get_time269", scope: !9, file: !2, line: 198, type: !18, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mc146818_set_time270", scope: !9, file: !2, line: 311, type: !18, isLocal: true, isDefinition: true)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 8, !"cf-protection-branch", i32 1}
!35 = !{i32 4, !"function_return_thunk_extern", i32 1}
!36 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{i32 1, !"override-stack-alignment", i32 8}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "mc146818_avoid_UIP", scope: !2, file: !2, line: 21, type: !41, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !50)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !46, !49, !18}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 35, baseType: !45)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !23, !18}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !{!51, !52, !53, !54, !55, !57, !58, !65}
!51 = !DILocalVariable(name: "callback", arg: 1, scope: !40, file: !2, line: 21, type: !46)
!52 = !DILocalVariable(name: "timeout", arg: 2, scope: !40, file: !2, line: 22, type: !49)
!53 = !DILocalVariable(name: "param", arg: 3, scope: !40, file: !2, line: 23, type: !18)
!54 = !DILocalVariable(name: "i", scope: !40, file: !2, line: 25, type: !49)
!55 = !DILocalVariable(name: "flags", scope: !40, file: !2, line: 26, type: !56)
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DILocalVariable(name: "seconds", scope: !40, file: !2, line: 27, type: !23)
!58 = !DILocalVariable(name: "__dummy", scope: !59, file: !2, line: 30, type: !56)
!59 = distinct !DILexicalBlock(scope: !60, file: !2, line: 30, column: 3)
!60 = distinct !DILexicalBlock(scope: !61, file: !2, line: 30, column: 3)
!61 = distinct !DILexicalBlock(scope: !62, file: !2, line: 30, column: 3)
!62 = distinct !DILexicalBlock(scope: !63, file: !2, line: 29, column: 54)
!63 = distinct !DILexicalBlock(scope: !64, file: !2, line: 29, column: 2)
!64 = distinct !DILexicalBlock(scope: !40, file: !2, line: 29, column: 2)
!65 = !DILocalVariable(name: "__dummy2", scope: !59, file: !2, line: 30, type: !56)
!66 = !DILocation(line: 21, column: 32, scope: !40)
!67 = !DILocation(line: 22, column: 8, scope: !40)
!68 = !DILocation(line: 23, column: 10, scope: !40)
!69 = !DILocation(line: 25, column: 2, scope: !40)
!70 = !DILocation(line: 25, column: 6, scope: !40)
!71 = !DILocation(line: 26, column: 2, scope: !40)
!72 = !DILocation(line: 26, column: 16, scope: !40)
!73 = !DILocation(line: 27, column: 2, scope: !40)
!74 = !DILocation(line: 27, column: 16, scope: !40)
!75 = !DILocation(line: 29, column: 9, scope: !64)
!76 = !DILocation(line: 29, column: 7, scope: !64)
!77 = !DILocation(line: 29, column: 14, scope: !63)
!78 = !DILocation(line: 29, column: 40, scope: !63)
!79 = !DILocation(line: 29, column: 38, scope: !63)
!80 = !DILocation(line: 29, column: 2, scope: !64)
!81 = !DILocation(line: 30, column: 3, scope: !62)
!82 = !DILocation(line: 30, column: 3, scope: !61)
!83 = !DILocation(line: 30, column: 3, scope: !59)
!84 = !DILocation(line: 30, column: 3, scope: !60)
!85 = !DILocation(line: 41, column: 13, scope: !62)
!86 = !DILocation(line: 41, column: 11, scope: !62)
!87 = !DILocation(line: 43, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !62, file: !2, line: 43, column: 7)
!89 = !DILocation(line: 43, column: 34, scope: !88)
!90 = !DILocation(line: 43, column: 7, scope: !62)
!91 = !DILocation(line: 44, column: 38, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !2, line: 43, column: 45)
!93 = !DILocation(line: 44, column: 4, scope: !92)
!94 = !DILocation(line: 45, column: 4, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 45, column: 4)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 45, column: 4)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 45, column: 4)
!98 = distinct !DILexicalBlock(scope: !92, file: !2, line: 45, column: 4)
!99 = !DILocation(line: 46, column: 4, scope: !92)
!100 = !DILocation(line: 50, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !62, file: !2, line: 50, column: 7)
!102 = !DILocation(line: 50, column: 18, scope: !101)
!103 = !DILocation(line: 50, column: 15, scope: !101)
!104 = !DILocation(line: 50, column: 7, scope: !62)
!105 = !DILocation(line: 51, column: 38, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !2, line: 50, column: 42)
!107 = !DILocation(line: 51, column: 4, scope: !106)
!108 = !DILocation(line: 52, column: 4, scope: !106)
!109 = !DILocation(line: 55, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !62, file: !2, line: 55, column: 7)
!111 = !DILocation(line: 55, column: 7, scope: !62)
!112 = !DILocation(line: 56, column: 4, scope: !110)
!113 = !DILocation(line: 56, column: 13, scope: !110)
!114 = !DILocation(line: 56, column: 22, scope: !110)
!115 = !DILocation(line: 62, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !62, file: !2, line: 62, column: 7)
!117 = !DILocation(line: 62, column: 34, scope: !116)
!118 = !DILocation(line: 62, column: 7, scope: !62)
!119 = !DILocation(line: 63, column: 38, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !2, line: 62, column: 45)
!121 = !DILocation(line: 63, column: 4, scope: !120)
!122 = !DILocation(line: 64, column: 4, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 64, column: 4)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 64, column: 4)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 64, column: 4)
!126 = distinct !DILexicalBlock(scope: !120, file: !2, line: 64, column: 4)
!127 = !DILocation(line: 65, column: 4, scope: !120)
!128 = !DILocation(line: 74, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !62, file: !2, line: 74, column: 7)
!130 = !DILocation(line: 74, column: 18, scope: !129)
!131 = !DILocation(line: 74, column: 15, scope: !129)
!132 = !DILocation(line: 74, column: 7, scope: !62)
!133 = !DILocation(line: 75, column: 38, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !2, line: 74, column: 42)
!135 = !DILocation(line: 75, column: 4, scope: !134)
!136 = !DILocation(line: 76, column: 4, scope: !134)
!137 = !DILocation(line: 78, column: 37, scope: !62)
!138 = !DILocation(line: 78, column: 3, scope: !62)
!139 = !DILocation(line: 80, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !62, file: !2, line: 80, column: 7)
!141 = !DILocation(line: 80, column: 31, scope: !140)
!142 = !DILocation(line: 80, column: 7, scope: !62)
!143 = !DILocation(line: 81, column: 4, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !2, line: 81, column: 4)
!145 = !DILocation(line: 81, column: 4, scope: !146)
!146 = distinct !DILexicalBlock(scope: !144, file: !2, line: 81, column: 4)
!147 = !DILocation(line: 81, column: 4, scope: !140)
!148 = !DILocation(line: 84, column: 3, scope: !62)
!149 = !DILocation(line: 29, column: 50, scope: !63)
!150 = !DILocation(line: 29, column: 2, scope: !63)
!151 = distinct !{!151, !80, !152, !153, !154}
!152 = !DILocation(line: 85, column: 2, scope: !64)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = !DILocation(line: 86, column: 2, scope: !40)
!156 = !DILocation(line: 87, column: 1, scope: !40)
!157 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !158, file: !158, line: 32, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!159 = !DISubroutineType(types: !160)
!160 = !{!56, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !163, line: 23, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !163, line: 14, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !164, file: !163, line: 15, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !168, line: 44, baseType: !169)
!168 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !168, line: 14, size: 32, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !168, line: 15, baseType: !172, size: 32)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !168, line: 15, size: 32, elements: !173)
!173 = !{!174, !179, !184}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !172, file: !168, line: 16, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !44, line: 174, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 172, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !176, file: !44, line: 173, baseType: !49, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !168, line: 24, baseType: !180, size: 16)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !172, file: !168, line: 24, size: 16, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !180, file: !168, line: 25, baseType: !19, size: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !180, file: !168, line: 26, baseType: !19, size: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !168, line: 28, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !172, file: !168, line: 28, size: 32, elements: !186)
!186 = !{!187, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !185, file: !168, line: 29, baseType: !188, size: 16)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !20, line: 19, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !22, line: 24, baseType: !190)
!190 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !185, file: !168, line: 30, baseType: !188, size: 16, offset: 16)
!192 = distinct !DISubprogram(name: "spinlock_check", scope: !193, file: !193, line: 324, type: !194, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !205)
!193 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!194 = !DISubroutineType(types: !195)
!195 = !{!161, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !198, line: 29, baseType: !199)
!198 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !198, line: 17, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !198, line: 18, baseType: !202, size: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !198, line: 18, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !202, file: !198, line: 19, baseType: !164, size: 32)
!205 = !{!206}
!206 = !DILocalVariable(name: "lock", arg: 1, scope: !192, file: !193, line: 324, type: !196)
!207 = !DILocation(line: 324, column: 67, scope: !192)
!208 = !DILocation(line: 326, column: 10, scope: !192)
!209 = !DILocation(line: 326, column: 16, scope: !192)
!210 = !DILocation(line: 326, column: 2, scope: !192)
!211 = !DISubprogram(name: "rtc_cmos_read", scope: !212, file: !212, line: 95, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DIFile(filename: "./arch/x86/include/asm/mc146818rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcbd5e3b55fc68b6e5a552bc57e3029b")
!213 = !DISubroutineType(types: !214)
!214 = !{!23, !23}
!215 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !193, file: !193, line: 404, type: !216, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !196, !56}
!218 = !{!219, !220, !221, !224}
!219 = !DILocalVariable(name: "lock", arg: 1, scope: !215, file: !193, line: 404, type: !196)
!220 = !DILocalVariable(name: "flags", arg: 2, scope: !215, file: !193, line: 404, type: !56)
!221 = !DILocalVariable(name: "__dummy", scope: !222, file: !193, line: 406, type: !56)
!222 = distinct !DILexicalBlock(scope: !223, file: !193, line: 406, column: 2)
!223 = distinct !DILexicalBlock(scope: !215, file: !193, line: 406, column: 2)
!224 = !DILocalVariable(name: "__dummy2", scope: !222, file: !193, line: 406, type: !56)
!225 = !DILocation(line: 404, column: 64, scope: !215)
!226 = !DILocation(line: 404, column: 84, scope: !215)
!227 = !DILocation(line: 406, column: 2, scope: !215)
!228 = !DILocation(line: 406, column: 2, scope: !222)
!229 = !DILocation(line: 406, column: 2, scope: !223)
!230 = !DILocation(line: 407, column: 1, scope: !215)
!231 = !DISubprogram(name: "__const_udelay", scope: !232, file: !232, line: 11, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!233 = !DISubroutineType(types: !234)
!234 = !{null, !56}
!235 = !DISubprogram(name: "_printk", scope: !236, file: !236, line: 153, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!237 = !DISubroutineType(types: !238)
!238 = !{!49, !239, null}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!241 = distinct !DISubprogram(name: "mc146818_does_rtc_work", scope: !2, file: !2, line: 94, type: !242, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!242 = !DISubroutineType(types: !243)
!243 = !{!43}
!244 = !DILocation(line: 96, column: 9, scope: !241)
!245 = !DILocation(line: 96, column: 2, scope: !241)
!246 = distinct !DISubprogram(name: "mc146818_get_time", scope: !2, file: !2, line: 154, type: !247, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !262)
!247 = !DISubroutineType(types: !248)
!248 = !{!49, !249, !49}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_time", file: !251, line: 25, size: 288, elements: !252)
!251 = !DIFile(filename: "./include/uapi/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80f54d46d0d21ef6b644244083c34d9c")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !250, file: !251, line: 26, baseType: !49, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !250, file: !251, line: 27, baseType: !49, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !250, file: !251, line: 28, baseType: !49, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !250, file: !251, line: 29, baseType: !49, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !250, file: !251, line: 30, baseType: !49, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !250, file: !251, line: 31, baseType: !49, size: 32, offset: 160)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !250, file: !251, line: 32, baseType: !49, size: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !250, file: !251, line: 33, baseType: !49, size: 32, offset: 224)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !250, file: !251, line: 34, baseType: !49, size: 32, offset: 256)
!262 = !{!263, !264, !265}
!263 = !DILocalVariable(name: "time", arg: 1, scope: !246, file: !2, line: 154, type: !249)
!264 = !DILocalVariable(name: "timeout", arg: 2, scope: !246, file: !2, line: 154, type: !49)
!265 = !DILocalVariable(name: "p", scope: !246, file: !2, line: 156, type: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mc146818_get_time_callback_param", file: !2, line: 100, size: 128, elements: !267)
!267 = !{!268, !269, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !266, file: !2, line: 101, baseType: !249, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !266, file: !2, line: 102, baseType: !23, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "century", scope: !266, file: !2, line: 104, baseType: !23, size: 8, offset: 72)
!271 = !DILocation(line: 154, column: 40, scope: !246)
!272 = !DILocation(line: 154, column: 50, scope: !246)
!273 = !DILocation(line: 156, column: 2, scope: !246)
!274 = !DILocation(line: 156, column: 42, scope: !246)
!275 = !DILocation(line: 156, column: 46, scope: !246)
!276 = !DILocation(line: 157, column: 11, scope: !246)
!277 = !DILocation(line: 160, column: 54, scope: !278)
!278 = distinct !DILexicalBlock(scope: !246, file: !2, line: 160, column: 6)
!279 = !DILocation(line: 160, column: 7, scope: !278)
!280 = !DILocation(line: 160, column: 6, scope: !246)
!281 = !DILocation(line: 161, column: 10, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !2, line: 160, column: 68)
!283 = !DILocation(line: 161, column: 3, scope: !282)
!284 = !DILocation(line: 162, column: 3, scope: !282)
!285 = !DILocation(line: 165, column: 10, scope: !286)
!286 = distinct !DILexicalBlock(scope: !246, file: !2, line: 165, column: 6)
!287 = !DILocation(line: 165, column: 8, scope: !286)
!288 = !DILocation(line: 165, column: 15, scope: !286)
!289 = !DILocation(line: 165, column: 32, scope: !286)
!290 = !DILocation(line: 165, column: 6, scope: !246)
!291 = !DILocation(line: 167, column: 18, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !2, line: 166, column: 2)
!293 = !DILocation(line: 167, column: 3, scope: !292)
!294 = !DILocation(line: 167, column: 9, scope: !292)
!295 = !DILocation(line: 167, column: 16, scope: !292)
!296 = !DILocation(line: 168, column: 18, scope: !292)
!297 = !DILocation(line: 168, column: 3, scope: !292)
!298 = !DILocation(line: 168, column: 9, scope: !292)
!299 = !DILocation(line: 168, column: 16, scope: !292)
!300 = !DILocation(line: 169, column: 19, scope: !292)
!301 = !DILocation(line: 169, column: 3, scope: !292)
!302 = !DILocation(line: 169, column: 9, scope: !292)
!303 = !DILocation(line: 169, column: 17, scope: !292)
!304 = !DILocation(line: 170, column: 19, scope: !292)
!305 = !DILocation(line: 170, column: 3, scope: !292)
!306 = !DILocation(line: 170, column: 9, scope: !292)
!307 = !DILocation(line: 170, column: 17, scope: !292)
!308 = !DILocation(line: 171, column: 18, scope: !292)
!309 = !DILocation(line: 171, column: 3, scope: !292)
!310 = !DILocation(line: 171, column: 9, scope: !292)
!311 = !DILocation(line: 171, column: 16, scope: !292)
!312 = !DILocation(line: 172, column: 19, scope: !292)
!313 = !DILocation(line: 172, column: 3, scope: !292)
!314 = !DILocation(line: 172, column: 9, scope: !292)
!315 = !DILocation(line: 172, column: 17, scope: !292)
!316 = !DILocation(line: 174, column: 15, scope: !292)
!317 = !DILocation(line: 174, column: 5, scope: !292)
!318 = !DILocation(line: 174, column: 13, scope: !292)
!319 = !DILocation(line: 176, column: 2, scope: !292)
!320 = !DILocation(line: 183, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !246, file: !2, line: 183, column: 6)
!322 = !DILocation(line: 183, column: 6, scope: !321)
!323 = !DILocation(line: 183, column: 16, scope: !321)
!324 = !DILocation(line: 183, column: 6, scope: !246)
!325 = !DILocation(line: 184, column: 23, scope: !321)
!326 = !DILocation(line: 184, column: 21, scope: !321)
!327 = !DILocation(line: 184, column: 31, scope: !321)
!328 = !DILocation(line: 184, column: 37, scope: !321)
!329 = !DILocation(line: 184, column: 3, scope: !321)
!330 = !DILocation(line: 184, column: 9, scope: !321)
!331 = !DILocation(line: 184, column: 17, scope: !321)
!332 = !DILocation(line: 191, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !246, file: !2, line: 191, column: 6)
!334 = !DILocation(line: 191, column: 12, scope: !333)
!335 = !DILocation(line: 191, column: 20, scope: !333)
!336 = !DILocation(line: 191, column: 6, scope: !246)
!337 = !DILocation(line: 192, column: 3, scope: !333)
!338 = !DILocation(line: 192, column: 9, scope: !333)
!339 = !DILocation(line: 192, column: 17, scope: !333)
!340 = !DILocation(line: 194, column: 2, scope: !246)
!341 = !DILocation(line: 194, column: 8, scope: !246)
!342 = !DILocation(line: 194, column: 14, scope: !246)
!343 = !DILocation(line: 196, column: 2, scope: !246)
!344 = !DILocation(line: 197, column: 1, scope: !246)
!345 = distinct !DISubprogram(name: "mc146818_get_time_callback", scope: !2, file: !2, line: 111, type: !47, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !346)
!346 = !{!347, !348, !349}
!347 = !DILocalVariable(name: "seconds", arg: 1, scope: !345, file: !2, line: 111, type: !23)
!348 = !DILocalVariable(name: "param_in", arg: 2, scope: !345, file: !2, line: 111, type: !18)
!349 = !DILocalVariable(name: "p", scope: !345, file: !2, line: 113, type: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!351 = !DILocation(line: 111, column: 54, scope: !345)
!352 = !DILocation(line: 111, column: 69, scope: !345)
!353 = !DILocation(line: 113, column: 2, scope: !345)
!354 = !DILocation(line: 113, column: 43, scope: !345)
!355 = !DILocation(line: 113, column: 47, scope: !345)
!356 = !DILocation(line: 121, column: 20, scope: !345)
!357 = !DILocation(line: 121, column: 2, scope: !345)
!358 = !DILocation(line: 121, column: 5, scope: !345)
!359 = !DILocation(line: 121, column: 11, scope: !345)
!360 = !DILocation(line: 121, column: 18, scope: !345)
!361 = !DILocation(line: 122, column: 20, scope: !345)
!362 = !DILocation(line: 122, column: 2, scope: !345)
!363 = !DILocation(line: 122, column: 5, scope: !345)
!364 = !DILocation(line: 122, column: 11, scope: !345)
!365 = !DILocation(line: 122, column: 18, scope: !345)
!366 = !DILocation(line: 123, column: 21, scope: !345)
!367 = !DILocation(line: 123, column: 2, scope: !345)
!368 = !DILocation(line: 123, column: 5, scope: !345)
!369 = !DILocation(line: 123, column: 11, scope: !345)
!370 = !DILocation(line: 123, column: 19, scope: !345)
!371 = !DILocation(line: 124, column: 21, scope: !345)
!372 = !DILocation(line: 124, column: 2, scope: !345)
!373 = !DILocation(line: 124, column: 5, scope: !345)
!374 = !DILocation(line: 124, column: 11, scope: !345)
!375 = !DILocation(line: 124, column: 19, scope: !345)
!376 = !DILocation(line: 125, column: 20, scope: !345)
!377 = !DILocation(line: 125, column: 2, scope: !345)
!378 = !DILocation(line: 125, column: 5, scope: !345)
!379 = !DILocation(line: 125, column: 11, scope: !345)
!380 = !DILocation(line: 125, column: 18, scope: !345)
!381 = !DILocation(line: 126, column: 21, scope: !345)
!382 = !DILocation(line: 126, column: 2, scope: !345)
!383 = !DILocation(line: 126, column: 5, scope: !345)
!384 = !DILocation(line: 126, column: 11, scope: !345)
!385 = !DILocation(line: 126, column: 19, scope: !345)
!386 = !DILocation(line: 131, column: 27, scope: !387)
!387 = distinct !DILexicalBlock(scope: !345, file: !2, line: 131, column: 6)
!388 = !DILocation(line: 131, column: 6, scope: !387)
!389 = !DILocation(line: 131, column: 36, scope: !387)
!390 = !DILocation(line: 131, column: 57, scope: !387)
!391 = !DILocation(line: 132, column: 20, scope: !387)
!392 = !DILocation(line: 132, column: 6, scope: !387)
!393 = !DILocation(line: 131, column: 6, scope: !345)
!394 = !DILocation(line: 133, column: 16, scope: !395)
!395 = distinct !DILexicalBlock(scope: !387, file: !2, line: 132, column: 29)
!396 = !DILocation(line: 133, column: 3, scope: !395)
!397 = !DILocation(line: 133, column: 6, scope: !395)
!398 = !DILocation(line: 133, column: 14, scope: !395)
!399 = !DILocation(line: 134, column: 2, scope: !395)
!400 = !DILocation(line: 135, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !387, file: !2, line: 134, column: 9)
!402 = !DILocation(line: 135, column: 6, scope: !401)
!403 = !DILocation(line: 135, column: 14, scope: !401)
!404 = !DILocation(line: 139, column: 12, scope: !345)
!405 = !DILocation(line: 139, column: 2, scope: !345)
!406 = !DILocation(line: 139, column: 5, scope: !345)
!407 = !DILocation(line: 139, column: 10, scope: !345)
!408 = !DILocation(line: 140, column: 1, scope: !345)
!409 = !DISubprogram(name: "_bcd2bin", scope: !410, file: !410, line: 24, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!410 = !DIFile(filename: "./include/linux/bcd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea482159b94a3d2b924daf9d79830292")
!411 = !DISubroutineType(types: !412)
!412 = !{!13, !23}
!413 = distinct !DISubprogram(name: "mc146818_set_time", scope: !2, file: !2, line: 212, type: !414, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!49, !249}
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !432, !433, !437}
!417 = !DILocalVariable(name: "time", arg: 1, scope: !413, file: !2, line: 212, type: !249)
!418 = !DILocalVariable(name: "flags", scope: !413, file: !2, line: 214, type: !56)
!419 = !DILocalVariable(name: "mon", scope: !413, file: !2, line: 215, type: !23)
!420 = !DILocalVariable(name: "day", scope: !413, file: !2, line: 215, type: !23)
!421 = !DILocalVariable(name: "hrs", scope: !413, file: !2, line: 215, type: !23)
!422 = !DILocalVariable(name: "min", scope: !413, file: !2, line: 215, type: !23)
!423 = !DILocalVariable(name: "sec", scope: !413, file: !2, line: 215, type: !23)
!424 = !DILocalVariable(name: "save_control", scope: !413, file: !2, line: 216, type: !23)
!425 = !DILocalVariable(name: "save_freq_select", scope: !413, file: !2, line: 216, type: !23)
!426 = !DILocalVariable(name: "yrs", scope: !413, file: !2, line: 217, type: !13)
!427 = !DILocalVariable(name: "century", scope: !413, file: !2, line: 221, type: !23)
!428 = !DILocalVariable(name: "__dummy", scope: !429, file: !2, line: 267, type: !56)
!429 = distinct !DILexicalBlock(scope: !430, file: !2, line: 267, column: 2)
!430 = distinct !DILexicalBlock(scope: !431, file: !2, line: 267, column: 2)
!431 = distinct !DILexicalBlock(scope: !413, file: !2, line: 267, column: 2)
!432 = !DILocalVariable(name: "__dummy2", scope: !429, file: !2, line: 267, type: !56)
!433 = !DILocalVariable(name: "__dummy", scope: !434, file: !2, line: 280, type: !56)
!434 = distinct !DILexicalBlock(scope: !435, file: !2, line: 280, column: 2)
!435 = distinct !DILexicalBlock(scope: !436, file: !2, line: 280, column: 2)
!436 = distinct !DILexicalBlock(scope: !413, file: !2, line: 280, column: 2)
!437 = !DILocalVariable(name: "__dummy2", scope: !434, file: !2, line: 280, type: !56)
!438 = !DILocation(line: 212, column: 40, scope: !413)
!439 = !DILocation(line: 214, column: 2, scope: !413)
!440 = !DILocation(line: 214, column: 16, scope: !413)
!441 = !DILocation(line: 215, column: 2, scope: !413)
!442 = !DILocation(line: 215, column: 16, scope: !413)
!443 = !DILocation(line: 215, column: 21, scope: !413)
!444 = !DILocation(line: 215, column: 26, scope: !413)
!445 = !DILocation(line: 215, column: 31, scope: !413)
!446 = !DILocation(line: 215, column: 36, scope: !413)
!447 = !DILocation(line: 216, column: 2, scope: !413)
!448 = !DILocation(line: 216, column: 16, scope: !413)
!449 = !DILocation(line: 216, column: 30, scope: !413)
!450 = !DILocation(line: 217, column: 2, scope: !413)
!451 = !DILocation(line: 217, column: 15, scope: !413)
!452 = !DILocation(line: 221, column: 2, scope: !413)
!453 = !DILocation(line: 221, column: 16, scope: !413)
!454 = !DILocation(line: 223, column: 8, scope: !413)
!455 = !DILocation(line: 223, column: 14, scope: !413)
!456 = !DILocation(line: 223, column: 6, scope: !413)
!457 = !DILocation(line: 224, column: 8, scope: !413)
!458 = !DILocation(line: 224, column: 14, scope: !413)
!459 = !DILocation(line: 224, column: 21, scope: !413)
!460 = !DILocation(line: 224, column: 6, scope: !413)
!461 = !DILocation(line: 225, column: 8, scope: !413)
!462 = !DILocation(line: 225, column: 14, scope: !413)
!463 = !DILocation(line: 225, column: 6, scope: !413)
!464 = !DILocation(line: 226, column: 8, scope: !413)
!465 = !DILocation(line: 226, column: 14, scope: !413)
!466 = !DILocation(line: 226, column: 6, scope: !413)
!467 = !DILocation(line: 227, column: 8, scope: !413)
!468 = !DILocation(line: 227, column: 14, scope: !413)
!469 = !DILocation(line: 227, column: 6, scope: !413)
!470 = !DILocation(line: 228, column: 8, scope: !413)
!471 = !DILocation(line: 228, column: 14, scope: !413)
!472 = !DILocation(line: 228, column: 6, scope: !413)
!473 = !DILocation(line: 230, column: 6, scope: !474)
!474 = distinct !DILexicalBlock(scope: !413, file: !2, line: 230, column: 6)
!475 = !DILocation(line: 230, column: 10, scope: !474)
!476 = !DILocation(line: 230, column: 6, scope: !413)
!477 = !DILocation(line: 231, column: 3, scope: !474)
!478 = !DILocation(line: 251, column: 27, scope: !479)
!479 = distinct !DILexicalBlock(scope: !413, file: !2, line: 251, column: 6)
!480 = !DILocation(line: 251, column: 6, scope: !479)
!481 = !DILocation(line: 251, column: 36, scope: !479)
!482 = !DILocation(line: 251, column: 57, scope: !479)
!483 = !DILocation(line: 252, column: 20, scope: !479)
!484 = !DILocation(line: 252, column: 6, scope: !479)
!485 = !DILocation(line: 251, column: 6, scope: !413)
!486 = !DILocation(line: 253, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !479, file: !2, line: 252, column: 29)
!488 = !DILocation(line: 253, column: 18, scope: !487)
!489 = !DILocation(line: 253, column: 26, scope: !487)
!490 = !DILocation(line: 253, column: 13, scope: !487)
!491 = !DILocation(line: 253, column: 11, scope: !487)
!492 = !DILocation(line: 254, column: 7, scope: !487)
!493 = !DILocation(line: 255, column: 2, scope: !487)
!494 = !DILocation(line: 261, column: 6, scope: !495)
!495 = distinct !DILexicalBlock(scope: !413, file: !2, line: 261, column: 6)
!496 = !DILocation(line: 261, column: 10, scope: !495)
!497 = !DILocation(line: 261, column: 6, scope: !413)
!498 = !DILocation(line: 262, column: 3, scope: !495)
!499 = !DILocation(line: 264, column: 6, scope: !500)
!500 = distinct !DILexicalBlock(scope: !413, file: !2, line: 264, column: 6)
!501 = !DILocation(line: 264, column: 10, scope: !500)
!502 = !DILocation(line: 264, column: 6, scope: !413)
!503 = !DILocation(line: 265, column: 7, scope: !500)
!504 = !DILocation(line: 265, column: 3, scope: !500)
!505 = !DILocation(line: 267, column: 2, scope: !413)
!506 = !DILocation(line: 267, column: 2, scope: !431)
!507 = !DILocation(line: 267, column: 2, scope: !429)
!508 = !DILocation(line: 267, column: 2, scope: !430)
!509 = !DILocation(line: 268, column: 17, scope: !413)
!510 = !DILocation(line: 268, column: 15, scope: !413)
!511 = !DILocation(line: 269, column: 36, scope: !413)
!512 = !DILocation(line: 269, column: 2, scope: !413)
!513 = !DILocation(line: 270, column: 8, scope: !514)
!514 = distinct !DILexicalBlock(scope: !413, file: !2, line: 270, column: 6)
!515 = !DILocation(line: 270, column: 21, scope: !514)
!516 = !DILocation(line: 270, column: 38, scope: !514)
!517 = !DILocation(line: 270, column: 6, scope: !413)
!518 = !DILocation(line: 271, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !2, line: 270, column: 57)
!520 = !DILocation(line: 271, column: 7, scope: !519)
!521 = !DILocation(line: 272, column: 9, scope: !519)
!522 = !DILocation(line: 272, column: 7, scope: !519)
!523 = !DILocation(line: 273, column: 9, scope: !519)
!524 = !DILocation(line: 273, column: 7, scope: !519)
!525 = !DILocation(line: 274, column: 9, scope: !519)
!526 = !DILocation(line: 274, column: 7, scope: !519)
!527 = !DILocation(line: 275, column: 9, scope: !519)
!528 = !DILocation(line: 275, column: 7, scope: !519)
!529 = !DILocation(line: 276, column: 9, scope: !519)
!530 = !DILocation(line: 276, column: 7, scope: !519)
!531 = !DILocation(line: 277, column: 13, scope: !519)
!532 = !DILocation(line: 277, column: 11, scope: !519)
!533 = !DILocation(line: 278, column: 2, scope: !519)
!534 = !DILocation(line: 280, column: 2, scope: !413)
!535 = !DILocation(line: 280, column: 2, scope: !436)
!536 = !DILocation(line: 280, column: 2, scope: !434)
!537 = !DILocation(line: 280, column: 2, scope: !435)
!538 = !DILocation(line: 281, column: 17, scope: !413)
!539 = !DILocation(line: 281, column: 15, scope: !413)
!540 = !DILocation(line: 282, column: 2, scope: !413)
!541 = !DILocation(line: 283, column: 21, scope: !413)
!542 = !DILocation(line: 283, column: 19, scope: !413)
!543 = !DILocation(line: 284, column: 6, scope: !544)
!544 = distinct !DILexicalBlock(scope: !413, file: !2, line: 284, column: 6)
!545 = !DILocation(line: 284, column: 6, scope: !413)
!546 = !DILocation(line: 285, column: 3, scope: !544)
!547 = !DILocation(line: 287, column: 3, scope: !544)
!548 = !DILocation(line: 292, column: 2, scope: !413)
!549 = !DILocation(line: 293, column: 2, scope: !413)
!550 = !DILocation(line: 294, column: 2, scope: !413)
!551 = !DILocation(line: 295, column: 2, scope: !413)
!552 = !DILocation(line: 296, column: 2, scope: !413)
!553 = !DILocation(line: 297, column: 2, scope: !413)
!554 = !DILocation(line: 299, column: 27, scope: !555)
!555 = distinct !DILexicalBlock(scope: !413, file: !2, line: 299, column: 6)
!556 = !DILocation(line: 299, column: 6, scope: !555)
!557 = !DILocation(line: 299, column: 36, scope: !555)
!558 = !DILocation(line: 299, column: 57, scope: !555)
!559 = !DILocation(line: 300, column: 20, scope: !555)
!560 = !DILocation(line: 300, column: 6, scope: !555)
!561 = !DILocation(line: 299, column: 6, scope: !413)
!562 = !DILocation(line: 301, column: 3, scope: !555)
!563 = !DILocation(line: 304, column: 2, scope: !413)
!564 = !DILocation(line: 305, column: 2, scope: !413)
!565 = !DILocation(line: 307, column: 36, scope: !413)
!566 = !DILocation(line: 307, column: 2, scope: !413)
!567 = !DILocation(line: 309, column: 2, scope: !413)
!568 = !DILocation(line: 310, column: 1, scope: !413)
!569 = !DISubprogram(name: "_bin2bcd", scope: !410, file: !410, line: 25, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DISubroutineType(types: !571)
!571 = !{!23, !13}
!572 = !DISubprogram(name: "rtc_cmos_write", scope: !212, file: !212, line: 96, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !23, !23}
!575 = distinct !DISubprogram(name: "apply_amd_register_a_behavior", scope: !2, file: !2, line: 201, type: !242, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!576 = !DILocation(line: 204, column: 20, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !2, line: 204, column: 6)
!578 = !DILocation(line: 204, column: 6, scope: !577)
!579 = !DILocation(line: 204, column: 31, scope: !577)
!580 = !DILocation(line: 204, column: 49, scope: !577)
!581 = !DILocation(line: 205, column: 20, scope: !577)
!582 = !DILocation(line: 205, column: 6, scope: !577)
!583 = !DILocation(line: 205, column: 31, scope: !577)
!584 = !DILocation(line: 204, column: 6, scope: !575)
!585 = !DILocation(line: 206, column: 3, scope: !577)
!586 = !DILocation(line: 208, column: 2, scope: !575)
!587 = !DILocation(line: 209, column: 1, scope: !575)
!588 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !158, file: !158, line: 43, type: !589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !161, !56}
