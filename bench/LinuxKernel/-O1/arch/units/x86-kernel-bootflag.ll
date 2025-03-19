; ModuleID = 'arch/x86/kernel/bootflag.c'
source_filename = "arch/x86/kernel/bootflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_bootflag__267_102_sbf_init\22, \22a\22\09\09"
module asm "__initcall__kmod_bootflag__267_102_sbf_init3:\09\09\09"
module asm ".long\09__initstub__kmod_bootflag__267_102_sbf_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@sbf_port = hidden global i32 -1, section ".init.data", align 4, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_bootflag__267_102_sbf_init3268 = internal global ptr @__initstub__kmod_bootflag__267_102_sbf_init3, section ".discard.addressable", align 8, !dbg !7
@.str = private unnamed_addr constant [62 x i8] c"\014Simple Boot Flag value 0x%x read from CMOS RAM was invalid\0A\00", align 1, !dbg !9
@rtc_lock = external dso_local global %struct.spinlock, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\016Simple Boot Flag at 0x%x set to 0x%x\0A\00", align 1, !dbg !15
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_bootflag__267_102_sbf_init3268], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_bootflag__267_102_sbf_init3() #0 section ".init.text" align 16 !dbg !30 {
entry:
  %call = call i32 @sbf_init() #6, !dbg !33
  ret i32 %call, !dbg !33
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @sbf_init() #0 section ".init.text" align 16 !dbg !34 {
entry:
  %retval = alloca i32, align 4
  %v = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !42
  call void @llvm.dbg.declare(metadata ptr %v, metadata !36, metadata !DIExpression()), !dbg !43
  %0 = load i32, ptr @sbf_port, align 4, !dbg !44
  %cmp = icmp eq i32 %0, -1, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !48
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !48

if.end:                                           ; preds = %entry
  %call = call zeroext i8 @sbf_read() #6, !dbg !49
  store i8 %call, ptr %v, align 1, !dbg !50
  %1 = load i8, ptr %v, align 1, !dbg !51
  %call1 = call i32 @sbf_value_valid(i8 noundef zeroext %1) #6, !dbg !53
  %tobool = icmp ne i32 %call1, 0, !dbg !53
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !54

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !55

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !58

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !58

do.end:                                           ; preds = %do.cond
  %2 = load i8, ptr %v, align 1, !dbg !55
  %conv = zext i8 %2 to i32, !dbg !55
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %conv) #6, !dbg !55
  store i32 %call3, ptr %tmp, align 4, !dbg !58
  %3 = load i32, ptr %tmp, align 4, !dbg !55
  br label %if.end4, !dbg !60

if.end4:                                          ; preds = %do.end, %if.end
  %4 = load i8, ptr %v, align 1, !dbg !61
  %conv5 = zext i8 %4 to i32, !dbg !61
  %and = and i32 %conv5, -121, !dbg !61
  %conv6 = trunc i32 %and to i8, !dbg !61
  store i8 %conv6, ptr %v, align 1, !dbg !61
  %5 = load i8, ptr %v, align 1, !dbg !62
  %conv7 = zext i8 %5 to i32, !dbg !62
  %and8 = and i32 %conv7, -3, !dbg !62
  %conv9 = trunc i32 %and8 to i8, !dbg !62
  store i8 %conv9, ptr %v, align 1, !dbg !62
  %6 = load i8, ptr %v, align 1, !dbg !63
  %conv10 = zext i8 %6 to i32, !dbg !63
  %and11 = and i32 %conv10, -5, !dbg !63
  %conv12 = trunc i32 %and11 to i8, !dbg !63
  store i8 %conv12, ptr %v, align 1, !dbg !63
  %7 = load i8, ptr %v, align 1, !dbg !64
  call void @sbf_write(i8 noundef zeroext %7) #6, !dbg !65
  store i32 0, ptr %retval, align 4, !dbg !66
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !66

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !67
  %8 = load i32, ptr %retval, align 4, !dbg !67
  ret i32 %8, !dbg !67
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i8 @sbf_read() #0 section ".init.text" align 16 !dbg !68 {
entry:
  %retval = alloca i8, align 1
  %flags = alloca i64, align 8
  %v = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !72, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %v, metadata !74, metadata !DIExpression()), !dbg !83
  %0 = load i32, ptr @sbf_port, align 4, !dbg !84
  %cmp = icmp eq i32 %0, -1, !dbg !86
  br i1 %cmp, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !88
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !88

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !89

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !90

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !75, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !79, metadata !DIExpression()), !dbg !91
  %cmp2 = icmp eq ptr %__dummy, %__dummy2, !dbg !91
  %conv = zext i1 %cmp2 to i32, !dbg !91
  store i32 1, ptr %tmp, align 4, !dbg !91
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !92
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !92
  %1 = load i32, ptr %tmp, align 4, !dbg !91
  %call = call ptr @spinlock_check(ptr noundef @rtc_lock) #8, !dbg !92
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #8, !dbg !92
  store i64 %call3, ptr %flags, align 8, !dbg !92
  br label %do.cond, !dbg !92

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !92

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !90

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !90

do.end5:                                          ; preds = %do.cond4
  %2 = load i32, ptr @sbf_port, align 4, !dbg !93
  %conv6 = trunc i32 %2 to i8, !dbg !93
  %call7 = call zeroext i8 @rtc_cmos_read(i8 noundef zeroext %conv6) #8, !dbg !93
  store i8 %call7, ptr %v, align 1, !dbg !94
  %3 = load i64, ptr %flags, align 8, !dbg !95
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %3) #8, !dbg !96
  %4 = load i8, ptr %v, align 1, !dbg !97
  store i8 %4, ptr %retval, align 1, !dbg !98
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !98

cleanup:                                          ; preds = %do.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !99
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !99
  %5 = load i8, ptr %retval, align 1, !dbg !99
  ret i8 %5, !dbg !99
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @sbf_value_valid(i8 noundef zeroext %v) #0 section ".init.text" align 16 !dbg !100 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i8, align 1
  store i8 %v, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i8, ptr %v.addr, align 1, !dbg !106
  %conv = zext i8 %0 to i32, !dbg !106
  %and = and i32 %conv, 120, !dbg !108
  %tobool = icmp ne i32 %and, 0, !dbg !108
  br i1 %tobool, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !110
  br label %return, !dbg !110

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %v.addr, align 1, !dbg !111
  %call = call i32 @parity(i8 noundef zeroext %1) #6, !dbg !113
  %tobool1 = icmp ne i32 %call, 0, !dbg !113
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !114

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !115
  br label %return, !dbg !115

if.end3:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !116
  br label %return, !dbg !116

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !117
  ret i32 %2, !dbg !117
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !118 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sbf_write(i8 noundef zeroext %v) #0 section ".init.text" align 16 !dbg !124 {
entry:
  %v.addr = alloca i8, align 1
  %flags = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store i8 %v, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !128, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !129, metadata !DIExpression()), !dbg !139
  %0 = load i32, ptr @sbf_port, align 4, !dbg !140
  %cmp = icmp ne i32 %0, -1, !dbg !141
  br i1 %cmp, label %if.then, label %if.end19, !dbg !142

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %v.addr, align 1, !dbg !143
  %conv = zext i8 %1 to i32, !dbg !143
  %and = and i32 %conv, -129, !dbg !143
  %conv1 = trunc i32 %and to i8, !dbg !143
  store i8 %conv1, ptr %v.addr, align 1, !dbg !143
  %2 = load i8, ptr %v.addr, align 1, !dbg !144
  %call = call i32 @parity(i8 noundef zeroext %2) #6, !dbg !146
  %tobool = icmp ne i32 %call, 0, !dbg !146
  br i1 %tobool, label %if.end, label %if.then2, !dbg !147

if.then2:                                         ; preds = %if.then
  %3 = load i8, ptr %v.addr, align 1, !dbg !148
  %conv3 = zext i8 %3 to i32, !dbg !148
  %or = or i32 %conv3, 128, !dbg !148
  %conv4 = trunc i32 %or to i8, !dbg !148
  store i8 %conv4, ptr %v.addr, align 1, !dbg !148
  br label %if.end, !dbg !149

if.end:                                           ; preds = %if.then2, %if.then
  br label %do.body, !dbg !150

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !152

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !152

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr @sbf_port, align 4, !dbg !150
  %5 = load i8, ptr %v.addr, align 1, !dbg !150
  %conv5 = zext i8 %5 to i32, !dbg !150
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %4, i32 noundef %conv5) #6, !dbg !150
  store i32 %call6, ptr %tmp, align 4, !dbg !152
  %6 = load i32, ptr %tmp, align 4, !dbg !150
  br label %do.body7, !dbg !154

do.body7:                                         ; preds = %do.end
  br label %do.body8, !dbg !155

do.body8:                                         ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !130, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !136, metadata !DIExpression()), !dbg !156
  %cmp9 = icmp eq ptr %__dummy, %__dummy2, !dbg !156
  %conv10 = zext i1 %cmp9 to i32, !dbg !156
  store i32 1, ptr %tmp11, align 4, !dbg !156
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !157
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !157
  %7 = load i32, ptr %tmp11, align 4, !dbg !156
  %call12 = call ptr @spinlock_check(ptr noundef @rtc_lock) #8, !dbg !157
  %call13 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call12) #8, !dbg !157
  store i64 %call13, ptr %flags, align 8, !dbg !157
  br label %do.cond14, !dbg !157

do.cond14:                                        ; preds = %do.body8
  br label %do.end15, !dbg !157

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !155

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !155

do.end17:                                         ; preds = %do.cond16
  %8 = load i8, ptr %v.addr, align 1, !dbg !158
  %9 = load i32, ptr @sbf_port, align 4, !dbg !158
  %conv18 = trunc i32 %9 to i8, !dbg !158
  call void @rtc_cmos_write(i8 noundef zeroext %8, i8 noundef zeroext %conv18) #8, !dbg !158
  %10 = load i64, ptr %flags, align 8, !dbg !159
  call void @spin_unlock_irqrestore(ptr noundef @rtc_lock, i64 noundef %10) #8, !dbg !160
  br label %if.end19, !dbg !161

if.end19:                                         ; preds = %do.end17, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !162
  ret void, !dbg !162
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !163 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !199 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !215
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !216
  ret ptr %1, !dbg !217
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !218 dso_local zeroext i8 @rtc_cmos_read(i8 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !222 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !226, metadata !DIExpression()), !dbg !232
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !227, metadata !DIExpression()), !dbg !233
  br label %do.body, !dbg !234

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !228, metadata !DIExpression()), !dbg !235
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !231, metadata !DIExpression()), !dbg !235
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !235
  %conv = zext i1 %cmp to i32, !dbg !235
  store i32 1, ptr %tmp, align 4, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !236
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !236
  %0 = load i32, ptr %tmp, align 4, !dbg !235
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !236
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !236
  %3 = load i64, ptr %flags.addr, align 8, !dbg !236
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #8, !dbg !236
  br label %do.end, !dbg !236

do.end:                                           ; preds = %do.body
  ret void, !dbg !237
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !238 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parity(i8 noundef zeroext %v) #0 section ".init.text" align 16 !dbg !241 {
entry:
  %v.addr = alloca i8, align 1
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i8 %v, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #7, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %x, metadata !244, metadata !DIExpression()), !dbg !248
  store i32 0, ptr %x, align 4, !dbg !248
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %i, metadata !245, metadata !DIExpression()), !dbg !250
  store i32 0, ptr %i, align 4, !dbg !251
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !254
  %cmp = icmp slt i32 %0, 8, !dbg !256
  br i1 %cmp, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %v.addr, align 1, !dbg !258
  %conv = zext i8 %1 to i32, !dbg !258
  %and = and i32 %conv, 1, !dbg !260
  %2 = load i32, ptr %x, align 4, !dbg !261
  %xor = xor i32 %2, %and, !dbg !261
  store i32 %xor, ptr %x, align 4, !dbg !261
  %3 = load i8, ptr %v.addr, align 1, !dbg !262
  %conv1 = zext i8 %3 to i32, !dbg !262
  %shr = ashr i32 %conv1, 1, !dbg !262
  %conv2 = trunc i32 %shr to i8, !dbg !262
  store i8 %conv2, ptr %v.addr, align 1, !dbg !262
  br label %for.inc, !dbg !263

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !264
  %inc = add i32 %4, 1, !dbg !264
  store i32 %inc, ptr %i, align 4, !dbg !264
  br label %for.cond, !dbg !265, !llvm.loop !266

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %x, align 4, !dbg !270
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !271
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #7, !dbg !271
  ret i32 %5, !dbg !272
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !273 dso_local void @rtc_cmos_write(i8 noundef zeroext, i8 noundef zeroext) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sbf_port", scope: !2, file: !3, line: 21, type: !20, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.bootflag.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/bootflag\22 -D KBUILD_BASENAME=\22bootflag\22 -D KBUILD_MODNAME=\22bootflag\22 -D __KBUILD_MODNAME=kmod_bootflag -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/bootflag.ll arch/x86/kernel/bootflag.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/bootflag.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00293b1ce22c62ae869c420c873c2dae")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !15}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_bootflag__267_102_sbf_init3268", scope: !2, file: !3, line: 102, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 496, elements: !13)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{!14}
!14 = !DISubrange(count: 62)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 40)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 8, !"cf-protection-branch", i32 1}
!25 = !{i32 4, !"function_return_thunk_extern", i32 1}
!26 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!27 = !{i32 1, !"Code Model", i32 2}
!28 = !{i32 1, !"override-stack-alignment", i32 8}
!29 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!30 = distinct !DISubprogram(name: "__initstub__kmod_bootflag__267_102_sbf_init3", scope: !3, file: !3, line: 102, type: !31, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{!20}
!33 = !DILocation(line: 102, column: 1, scope: !30)
!34 = distinct !DISubprogram(name: "sbf_init", scope: !3, file: !3, line: 79, type: !31, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!35 = !{!36}
!36 = !DILocalVariable(name: "v", scope: !34, file: !3, line: 81, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !38, line: 17, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !40, line: 21, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DILocation(line: 81, column: 2, scope: !34)
!43 = !DILocation(line: 81, column: 5, scope: !34)
!44 = !DILocation(line: 83, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !3, line: 83, column: 6)
!46 = !DILocation(line: 83, column: 15, scope: !45)
!47 = !DILocation(line: 83, column: 6, scope: !34)
!48 = !DILocation(line: 84, column: 3, scope: !45)
!49 = !DILocation(line: 86, column: 6, scope: !34)
!50 = !DILocation(line: 86, column: 4, scope: !34)
!51 = !DILocation(line: 87, column: 23, scope: !52)
!52 = distinct !DILexicalBlock(scope: !34, file: !3, line: 87, column: 6)
!53 = !DILocation(line: 87, column: 7, scope: !52)
!54 = !DILocation(line: 87, column: 6, scope: !34)
!55 = !DILocation(line: 88, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 88, column: 3)
!57 = distinct !DILexicalBlock(scope: !52, file: !3, line: 87, column: 27)
!58 = !DILocation(line: 88, column: 3, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 88, column: 3)
!60 = !DILocation(line: 90, column: 2, scope: !57)
!61 = !DILocation(line: 92, column: 4, scope: !34)
!62 = !DILocation(line: 93, column: 4, scope: !34)
!63 = !DILocation(line: 94, column: 4, scope: !34)
!64 = !DILocation(line: 98, column: 12, scope: !34)
!65 = !DILocation(line: 98, column: 2, scope: !34)
!66 = !DILocation(line: 100, column: 2, scope: !34)
!67 = !DILocation(line: 101, column: 1, scope: !34)
!68 = distinct !DISubprogram(name: "sbf_read", scope: !3, file: !3, line: 54, type: !69, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{!37}
!71 = !{!72, !74, !75, !79}
!72 = !DILocalVariable(name: "flags", scope: !68, file: !3, line: 56, type: !73)
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "v", scope: !68, file: !3, line: 57, type: !37)
!75 = !DILocalVariable(name: "__dummy", scope: !76, file: !3, line: 62, type: !73)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 62, column: 2)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 62, column: 2)
!78 = distinct !DILexicalBlock(scope: !68, file: !3, line: 62, column: 2)
!79 = !DILocalVariable(name: "__dummy2", scope: !76, file: !3, line: 62, type: !73)
!80 = !DILocation(line: 56, column: 2, scope: !68)
!81 = !DILocation(line: 56, column: 16, scope: !68)
!82 = !DILocation(line: 57, column: 2, scope: !68)
!83 = !DILocation(line: 57, column: 5, scope: !68)
!84 = !DILocation(line: 59, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !68, file: !3, line: 59, column: 6)
!86 = !DILocation(line: 59, column: 15, scope: !85)
!87 = !DILocation(line: 59, column: 6, scope: !68)
!88 = !DILocation(line: 60, column: 3, scope: !85)
!89 = !DILocation(line: 62, column: 2, scope: !68)
!90 = !DILocation(line: 62, column: 2, scope: !78)
!91 = !DILocation(line: 62, column: 2, scope: !76)
!92 = !DILocation(line: 62, column: 2, scope: !77)
!93 = !DILocation(line: 63, column: 6, scope: !68)
!94 = !DILocation(line: 63, column: 4, scope: !68)
!95 = !DILocation(line: 64, column: 36, scope: !68)
!96 = !DILocation(line: 64, column: 2, scope: !68)
!97 = !DILocation(line: 66, column: 9, scope: !68)
!98 = !DILocation(line: 66, column: 2, scope: !68)
!99 = !DILocation(line: 67, column: 1, scope: !68)
!100 = distinct !DISubprogram(name: "sbf_value_valid", scope: !3, file: !3, line: 69, type: !101, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!20, !37}
!103 = !{!104}
!104 = !DILocalVariable(name: "v", arg: 1, scope: !100, file: !3, line: 69, type: !37)
!105 = !DILocation(line: 69, column: 38, scope: !100)
!106 = !DILocation(line: 71, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !3, line: 71, column: 6)
!108 = !DILocation(line: 71, column: 8, scope: !107)
!109 = !DILocation(line: 71, column: 6, scope: !100)
!110 = !DILocation(line: 72, column: 3, scope: !107)
!111 = !DILocation(line: 73, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !100, file: !3, line: 73, column: 6)
!113 = !DILocation(line: 73, column: 7, scope: !112)
!114 = !DILocation(line: 73, column: 6, scope: !100)
!115 = !DILocation(line: 74, column: 3, scope: !112)
!116 = !DILocation(line: 76, column: 2, scope: !100)
!117 = !DILocation(line: 77, column: 1, scope: !100)
!118 = !DISubprogram(name: "_printk", scope: !119, file: !119, line: 153, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!120 = !DISubroutineType(types: !121)
!121 = !{!20, !122, null}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!124 = distinct !DISubprogram(name: "sbf_write", scope: !3, file: !3, line: 36, type: !125, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !37}
!127 = !{!128, !129, !130, !136}
!128 = !DILocalVariable(name: "v", arg: 1, scope: !124, file: !3, line: 36, type: !37)
!129 = !DILocalVariable(name: "flags", scope: !124, file: !3, line: 38, type: !73)
!130 = !DILocalVariable(name: "__dummy", scope: !131, file: !3, line: 48, type: !73)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 48, column: 3)
!132 = distinct !DILexicalBlock(scope: !133, file: !3, line: 48, column: 3)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 48, column: 3)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 40, column: 22)
!135 = distinct !DILexicalBlock(scope: !124, file: !3, line: 40, column: 6)
!136 = !DILocalVariable(name: "__dummy2", scope: !131, file: !3, line: 48, type: !73)
!137 = !DILocation(line: 36, column: 33, scope: !124)
!138 = !DILocation(line: 38, column: 2, scope: !124)
!139 = !DILocation(line: 38, column: 16, scope: !124)
!140 = !DILocation(line: 40, column: 6, scope: !135)
!141 = !DILocation(line: 40, column: 15, scope: !135)
!142 = !DILocation(line: 40, column: 6, scope: !124)
!143 = !DILocation(line: 41, column: 5, scope: !134)
!144 = !DILocation(line: 42, column: 15, scope: !145)
!145 = distinct !DILexicalBlock(scope: !134, file: !3, line: 42, column: 7)
!146 = !DILocation(line: 42, column: 8, scope: !145)
!147 = !DILocation(line: 42, column: 7, scope: !134)
!148 = !DILocation(line: 43, column: 6, scope: !145)
!149 = !DILocation(line: 43, column: 4, scope: !145)
!150 = !DILocation(line: 45, column: 3, scope: !151)
!151 = distinct !DILexicalBlock(scope: !134, file: !3, line: 45, column: 3)
!152 = !DILocation(line: 45, column: 3, scope: !153)
!153 = distinct !DILexicalBlock(scope: !151, file: !3, line: 45, column: 3)
!154 = !DILocation(line: 48, column: 3, scope: !134)
!155 = !DILocation(line: 48, column: 3, scope: !133)
!156 = !DILocation(line: 48, column: 3, scope: !131)
!157 = !DILocation(line: 48, column: 3, scope: !132)
!158 = !DILocation(line: 49, column: 3, scope: !134)
!159 = !DILocation(line: 50, column: 37, scope: !134)
!160 = !DILocation(line: 50, column: 3, scope: !134)
!161 = !DILocation(line: 51, column: 2, scope: !134)
!162 = !DILocation(line: 52, column: 1, scope: !124)
!163 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !164, file: !164, line: 32, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!165 = !DISubroutineType(types: !166)
!166 = !{!73, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !169, line: 23, baseType: !170)
!169 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !169, line: 14, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !170, file: !169, line: 15, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !174, line: 44, baseType: !175)
!174 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !174, line: 14, size: 32, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !174, line: 15, baseType: !178, size: 32)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !174, line: 15, size: 32, elements: !179)
!179 = !{!180, !186, !191}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !174, line: 16, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !182, line: 174, baseType: !183)
!182 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 172, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !183, file: !182, line: 173, baseType: !20, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !174, line: 24, baseType: !187, size: 16)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !174, line: 24, size: 16, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !187, file: !174, line: 25, baseType: !37, size: 8)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !187, file: !174, line: 26, baseType: !37, size: 8, offset: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !174, line: 28, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !174, line: 28, size: 32, elements: !193)
!193 = !{!194, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !192, file: !174, line: 29, baseType: !195, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !38, line: 19, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !40, line: 24, baseType: !197)
!197 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !192, file: !174, line: 30, baseType: !195, size: 16, offset: 16)
!199 = distinct !DISubprogram(name: "spinlock_check", scope: !200, file: !200, line: 324, type: !201, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!200 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!201 = !DISubroutineType(types: !202)
!202 = !{!167, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !205, line: 29, baseType: !206)
!205 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !205, line: 17, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 18, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 18, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !209, file: !205, line: 19, baseType: !170, size: 32)
!212 = !{!213}
!213 = !DILocalVariable(name: "lock", arg: 1, scope: !199, file: !200, line: 324, type: !203)
!214 = !DILocation(line: 324, column: 67, scope: !199)
!215 = !DILocation(line: 326, column: 10, scope: !199)
!216 = !DILocation(line: 326, column: 16, scope: !199)
!217 = !DILocation(line: 326, column: 2, scope: !199)
!218 = !DISubprogram(name: "rtc_cmos_read", scope: !219, file: !219, line: 95, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DIFile(filename: "./arch/x86/include/asm/mc146818rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcbd5e3b55fc68b6e5a552bc57e3029b")
!220 = !DISubroutineType(types: !221)
!221 = !{!41, !41}
!222 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !200, file: !200, line: 404, type: !223, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !203, !73}
!225 = !{!226, !227, !228, !231}
!226 = !DILocalVariable(name: "lock", arg: 1, scope: !222, file: !200, line: 404, type: !203)
!227 = !DILocalVariable(name: "flags", arg: 2, scope: !222, file: !200, line: 404, type: !73)
!228 = !DILocalVariable(name: "__dummy", scope: !229, file: !200, line: 406, type: !73)
!229 = distinct !DILexicalBlock(scope: !230, file: !200, line: 406, column: 2)
!230 = distinct !DILexicalBlock(scope: !222, file: !200, line: 406, column: 2)
!231 = !DILocalVariable(name: "__dummy2", scope: !229, file: !200, line: 406, type: !73)
!232 = !DILocation(line: 404, column: 64, scope: !222)
!233 = !DILocation(line: 404, column: 84, scope: !222)
!234 = !DILocation(line: 406, column: 2, scope: !222)
!235 = !DILocation(line: 406, column: 2, scope: !229)
!236 = !DILocation(line: 406, column: 2, scope: !230)
!237 = !DILocation(line: 407, column: 1, scope: !222)
!238 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !164, file: !164, line: 43, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !167, !73}
!241 = distinct !DISubprogram(name: "parity", scope: !3, file: !3, line: 23, type: !101, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !242)
!242 = !{!243, !244, !245}
!243 = !DILocalVariable(name: "v", arg: 1, scope: !241, file: !3, line: 23, type: !37)
!244 = !DILocalVariable(name: "x", scope: !241, file: !3, line: 25, type: !20)
!245 = !DILocalVariable(name: "i", scope: !241, file: !3, line: 26, type: !20)
!246 = !DILocation(line: 23, column: 29, scope: !241)
!247 = !DILocation(line: 25, column: 2, scope: !241)
!248 = !DILocation(line: 25, column: 6, scope: !241)
!249 = !DILocation(line: 26, column: 2, scope: !241)
!250 = !DILocation(line: 26, column: 6, scope: !241)
!251 = !DILocation(line: 28, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !241, file: !3, line: 28, column: 2)
!253 = !DILocation(line: 28, column: 7, scope: !252)
!254 = !DILocation(line: 28, column: 14, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !3, line: 28, column: 2)
!256 = !DILocation(line: 28, column: 16, scope: !255)
!257 = !DILocation(line: 28, column: 2, scope: !252)
!258 = !DILocation(line: 29, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 28, column: 26)
!260 = !DILocation(line: 29, column: 11, scope: !259)
!261 = !DILocation(line: 29, column: 5, scope: !259)
!262 = !DILocation(line: 30, column: 5, scope: !259)
!263 = !DILocation(line: 31, column: 2, scope: !259)
!264 = !DILocation(line: 28, column: 22, scope: !255)
!265 = !DILocation(line: 28, column: 2, scope: !255)
!266 = distinct !{!266, !257, !267, !268, !269}
!267 = !DILocation(line: 31, column: 2, scope: !252)
!268 = !{!"llvm.loop.mustprogress"}
!269 = !{!"llvm.loop.unroll.disable"}
!270 = !DILocation(line: 33, column: 9, scope: !241)
!271 = !DILocation(line: 34, column: 1, scope: !241)
!272 = !DILocation(line: 33, column: 2, scope: !241)
!273 = !DISubprogram(name: "rtc_cmos_write", scope: !219, file: !219, line: 96, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !41, !41}
