; ModuleID = 'drivers/acpi/acpica/evglock.c'
source_filename = "drivers/acpi/acpica/evglock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.acpi_object_mutex = type { ptr, i8, i8, i16, i8, i8, i16, ptr, i64, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_table_facs = type { [4 x i8], i32, i32, i32, i32, i32, i64, i8, [3 x i8], i32, [24 x i8] }

@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@acpi_gbl_global_lock_present = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"evglock\00", align 1, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"No response from Global Lock hardware, disabling lock\00", align 1, !dbg !37
@acpi_gbl_global_lock_pending_lock = external dso_local global ptr, align 8
@acpi_gbl_global_lock_pending = external dso_local global i8, align 1
@acpi_gbl_global_lock_mutex = external dso_local global ptr, align 8
@acpi_gbl_global_lock_handle = external dso_local global i16, align 2
@acpi_gbl_global_lock_acquired = external dso_local global i8, align 1
@acpi_gbl_FACS = external dso_local global ptr, align 8
@acpi_gbl_global_lock_semaphore = external dso_local global ptr, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Cannot release the ACPI Global Lock, it has not been acquired\00", align 1, !dbg !43
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !48
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not signal Global Lock semaphore\00", align 1, !dbg !53

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_init_global_lock_handler() #0 align 16 !dbg !71 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %lock = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %status, metadata !75, metadata !DIExpression()), !dbg !121
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !122
  %tobool = icmp ne i8 %0, 0, !dbg !122
  br i1 %tobool, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !125

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_install_fixed_event_handler(i32 noundef 1, ptr noundef @acpi_ev_global_lock_handler, ptr noundef null) #14, !dbg !127
  store i32 %call, ptr %status, align 4, !dbg !128
  store i8 0, ptr @acpi_gbl_global_lock_present, align 1, !dbg !129
  %1 = load i32, ptr %status, align 4, !dbg !130
  %cmp = icmp eq i32 %1, 22, !dbg !132
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !133

if.then1:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 59, ptr noundef @.str) #14, !dbg !134
  store i32 0, ptr %retval, align 4, !dbg !136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !136

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock) #13, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %lock, metadata !76, metadata !DIExpression()), !dbg !137
  %call3 = call ptr @acpi_os_allocate(i64 noundef 4) #14, !dbg !137
  store ptr %call3, ptr %lock, align 8, !dbg !137
  %2 = load ptr, ptr %lock, align 8, !dbg !138
  %tobool4 = icmp ne ptr %2, null, !dbg !138
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !137

if.then5:                                         ; preds = %if.end2
  %3 = load ptr, ptr %lock, align 8, !dbg !140
  store ptr %3, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !140
  br label %do.body, !dbg !140

do.body:                                          ; preds = %if.then5
  %4 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !142
  %call6 = call ptr @spinlock_check(ptr noundef %4) #14, !dbg !142
  %5 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !142
  %6 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !142
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !142
  %7 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !142
  %counter = getelementptr inbounds %struct.atomic_t, ptr %7, i32 0, i32 0, !dbg !142
  store i32 0, ptr %counter, align 4, !dbg !142
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !142
  br label %do.cond, !dbg !142

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !142

do.end:                                           ; preds = %do.cond
  br label %if.end7, !dbg !140

if.end7:                                          ; preds = %do.end, %if.end2
  %8 = load ptr, ptr %lock, align 8, !dbg !137
  %tobool8 = icmp ne ptr %8, null, !dbg !137
  %9 = zext i1 %tobool8 to i64, !dbg !137
  %cond = select i1 %tobool8, i32 0, i32 4, !dbg !137
  store i32 %cond, ptr %tmp, align 4, !dbg !138
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock) #13, !dbg !144
  %10 = load i32, ptr %tmp, align 4, !dbg !137
  store i32 %10, ptr %status, align 4, !dbg !145
  %11 = load i32, ptr %status, align 4, !dbg !146
  %tobool9 = icmp ne i32 %11, 0, !dbg !146
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !148

if.then10:                                        ; preds = %if.end7
  %12 = load i32, ptr %status, align 4, !dbg !149
  store i32 %12, ptr %retval, align 4, !dbg !149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !149

if.end11:                                         ; preds = %if.end7
  store i8 0, ptr @acpi_gbl_global_lock_pending, align 1, !dbg !151
  store i8 1, ptr @acpi_gbl_global_lock_present, align 1, !dbg !152
  %13 = load i32, ptr %status, align 4, !dbg !153
  store i32 %13, ptr %retval, align 4, !dbg !153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !153

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !154
  %14 = load i32, ptr %retval, align 4, !dbg !154
  ret i32 %14, !dbg !154
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !155 dso_local i32 @acpi_install_fixed_event_handler(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_global_lock_handler(ptr noundef %context) #0 align 16 !dbg !163 {
entry:
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !165, metadata !DIExpression()), !dbg !169
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %status, metadata !166, metadata !DIExpression()), !dbg !171
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !167, metadata !DIExpression()), !dbg !173
  %0 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !174
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !175
  store i64 %call, ptr %flags, align 8, !dbg !176
  %1 = load i8, ptr @acpi_gbl_global_lock_pending, align 1, !dbg !177
  %tobool = icmp ne i8 %1, 0, !dbg !177
  br i1 %tobool, label %if.end, label %if.then, !dbg !179

if.then:                                          ; preds = %entry
  br label %cleanup_and_exit, !dbg !180

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_global_lock_semaphore, align 8, !dbg !182
  %call1 = call i32 @acpi_os_signal_semaphore(ptr noundef %2, i32 noundef 1) #14, !dbg !183
  store i32 %call1, ptr %status, align 4, !dbg !184
  %3 = load i32, ptr %status, align 4, !dbg !185
  %tobool2 = icmp ne i32 %3, 0, !dbg !185
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !187

if.then3:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 137, ptr noundef @.str.3) #14, !dbg !188
  br label %if.end4, !dbg !190

if.end4:                                          ; preds = %if.then3, %if.end
  store i8 0, ptr @acpi_gbl_global_lock_pending, align 1, !dbg !191
  br label %cleanup_and_exit, !dbg !192

cleanup_and_exit:                                 ; preds = %if.end4, %if.then
  call void @llvm.dbg.label(metadata !168), !dbg !193
  %4 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !194
  %5 = load i64, ptr %flags, align 8, !dbg !195
  call void @acpi_os_release_lock(ptr noundef %4, i64 noundef %5) #14, !dbg !196
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !197
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !197
  ret i32 1, !dbg !198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !199 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #4 align 16 !dbg !203 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !208, metadata !DIExpression()), !dbg !219
  %0 = load i64, ptr %size.addr, align 8, !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !209, metadata !DIExpression()), !dbg !221
  br label %do.body, !dbg !221

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !211, metadata !DIExpression()), !dbg !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !214, metadata !DIExpression()), !dbg !222
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !222
  %conv = zext i1 %cmp to i32, !dbg !222
  store i32 1, ptr %tmp, align 4, !dbg !222
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !223
  %1 = load i32, ptr %tmp, align 4, !dbg !222
  %call = call i64 @arch_local_save_flags() #14, !dbg !223
  store i64 %call, ptr %_flags, align 8, !dbg !223
  br label %do.cond, !dbg !223

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !223

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !215, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !218, metadata !DIExpression()), !dbg !224
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !224
  %conv6 = zext i1 %cmp5 to i32, !dbg !224
  store i32 1, ptr %tmp7, align 4, !dbg !224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !225
  %2 = load i32, ptr %tmp7, align 4, !dbg !224
  %3 = load i64, ptr %_flags, align 8, !dbg !225
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !225
  store i32 %call9, ptr %tmp8, align 4, !dbg !225
  %4 = load i32, ptr %tmp8, align 4, !dbg !225
  store i32 %4, ptr %tmp1, align 4, !dbg !223
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !226
  %5 = load i32, ptr %tmp1, align 4, !dbg !221
  %tobool = icmp ne i32 %5, 0, !dbg !226
  %6 = zext i1 %tobool to i64, !dbg !226
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !226
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !227
  ret ptr %call10, !dbg !228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !229 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !238
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !239
  ret ptr %1, !dbg !240
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_remove_global_lock_handler() #0 align 16 !dbg !241 {
entry:
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %status, metadata !243, metadata !DIExpression()), !dbg !245
  store i8 0, ptr @acpi_gbl_global_lock_present, align 1, !dbg !246
  %call = call i32 @acpi_remove_fixed_event_handler(i32 noundef 1, ptr noundef @acpi_ev_global_lock_handler) #14, !dbg !247
  store i32 %call, ptr %status, align 4, !dbg !248
  %0 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !249
  call void @acpi_os_delete_lock(ptr noundef %0) #14, !dbg !250
  %1 = load i32, ptr %status, align 4, !dbg !251
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !252
  ret i32 %1, !dbg !251
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !253 dso_local i32 @acpi_remove_fixed_event_handler(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !256 dso_local void @acpi_os_delete_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_acquire_global_lock(i16 noundef zeroext %timeout) #0 align 16 !dbg !260 {
entry:
  %retval = alloca i32, align 4
  %timeout.addr = alloca i16, align 2
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  %acquired = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %timeout, ptr %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !264, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !265, metadata !DIExpression()), !dbg !270
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %status, metadata !266, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 1, ptr %acquired) #13, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %acquired, metadata !267, metadata !DIExpression()), !dbg !274
  store i8 0, ptr %acquired, align 1, !dbg !274
  %0 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !275
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %0, i32 0, i32 7, !dbg !276
  %1 = load ptr, ptr %os_mutex, align 8, !dbg !276
  %2 = load i16, ptr %timeout.addr, align 2, !dbg !277
  %call = call i32 @acpi_ex_system_wait_mutex(ptr noundef %1, i16 noundef zeroext %2) #14, !dbg !278
  store i32 %call, ptr %status, align 4, !dbg !279
  %3 = load i32, ptr %status, align 4, !dbg !280
  %tobool = icmp ne i32 %3, 0, !dbg !280
  br i1 %tobool, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status, align 4, !dbg !283
  store i32 %4, ptr %retval, align 4, !dbg !283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !283

if.end:                                           ; preds = %entry
  %5 = load i16, ptr @acpi_gbl_global_lock_handle, align 2, !dbg !285
  %inc = add i16 %5, 1, !dbg !285
  store i16 %inc, ptr @acpi_gbl_global_lock_handle, align 2, !dbg !285
  %6 = load i16, ptr @acpi_gbl_global_lock_handle, align 2, !dbg !286
  %conv = zext i16 %6 to i32, !dbg !286
  %cmp = icmp eq i32 %conv, 0, !dbg !288
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !289

if.then2:                                         ; preds = %if.end
  store i16 1, ptr @acpi_gbl_global_lock_handle, align 2, !dbg !290
  br label %if.end3, !dbg !292

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load i8, ptr @acpi_gbl_global_lock_present, align 1, !dbg !293
  %tobool4 = icmp ne i8 %7, 0, !dbg !293
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !295

if.then5:                                         ; preds = %if.end3
  store i8 1, ptr @acpi_gbl_global_lock_acquired, align 1, !dbg !296
  store i32 0, ptr %retval, align 4, !dbg !298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !298

if.end6:                                          ; preds = %if.end3
  %8 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !299
  %call7 = call i64 @acpi_os_acquire_lock(ptr noundef %8) #14, !dbg !300
  store i64 %call7, ptr %flags, align 8, !dbg !301
  br label %do.body, !dbg !302

do.body:                                          ; preds = %do.cond, %if.end6
  %9 = load ptr, ptr @acpi_gbl_FACS, align 8, !dbg !303
  %global_lock = getelementptr inbounds %struct.acpi_table_facs, ptr %9, i32 0, i32 4, !dbg !303
  %call8 = call i32 @__acpi_acquire_global_lock(ptr noundef %global_lock) #14, !dbg !303
  %conv9 = trunc i32 %call8 to i8, !dbg !303
  store i8 %conv9, ptr %acquired, align 1, !dbg !303
  %10 = load i8, ptr %acquired, align 1, !dbg !305
  %tobool10 = icmp ne i8 %10, 0, !dbg !305
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !307

if.then11:                                        ; preds = %do.body
  store i8 1, ptr @acpi_gbl_global_lock_acquired, align 1, !dbg !308
  br label %do.end, !dbg !310

if.end12:                                         ; preds = %do.body
  store i8 1, ptr @acpi_gbl_global_lock_pending, align 1, !dbg !311
  %11 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !312
  %12 = load i64, ptr %flags, align 8, !dbg !313
  call void @acpi_os_release_lock(ptr noundef %11, i64 noundef %12) #14, !dbg !314
  %13 = load ptr, ptr @acpi_gbl_global_lock_semaphore, align 8, !dbg !315
  %call13 = call i32 @acpi_ex_system_wait_semaphore(ptr noundef %13, i16 noundef zeroext -1) #14, !dbg !316
  store i32 %call13, ptr %status, align 4, !dbg !317
  %14 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !318
  %call14 = call i64 @acpi_os_acquire_lock(ptr noundef %14) #14, !dbg !319
  store i64 %call14, ptr %flags, align 8, !dbg !320
  br label %do.cond, !dbg !321

do.cond:                                          ; preds = %if.end12
  %15 = load i32, ptr %status, align 4, !dbg !322
  %tobool15 = icmp ne i32 %15, 0, !dbg !322
  %lnot = xor i1 %tobool15, true, !dbg !322
  br i1 %lnot, label %do.body, label %do.end, !dbg !321, !llvm.loop !323

do.end:                                           ; preds = %do.cond, %if.then11
  store i8 0, ptr @acpi_gbl_global_lock_pending, align 1, !dbg !327
  %16 = load ptr, ptr @acpi_gbl_global_lock_pending_lock, align 8, !dbg !328
  %17 = load i64, ptr %flags, align 8, !dbg !329
  call void @acpi_os_release_lock(ptr noundef %16, i64 noundef %17) #14, !dbg !330
  %18 = load i32, ptr %status, align 4, !dbg !331
  store i32 %18, ptr %retval, align 4, !dbg !331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !331

cleanup:                                          ; preds = %do.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %acquired) #13, !dbg !332
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !332
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !332
  %19 = load i32, ptr %retval, align 4, !dbg !332
  ret i32 %19, !dbg !332
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !333 dso_local i32 @acpi_ex_system_wait_mutex(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !337 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !340 dso_local i32 @__acpi_acquire_global_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !345 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !348 dso_local i32 @acpi_ex_system_wait_semaphore(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_release_global_lock() #0 align 16 !dbg !349 {
entry:
  %retval = alloca i32, align 4
  %pending = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %pending) #13, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %pending, metadata !351, metadata !DIExpression()), !dbg !354
  store i8 0, ptr %pending, align 1, !dbg !354
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %status, metadata !352, metadata !DIExpression()), !dbg !356
  store i32 0, ptr %status, align 4, !dbg !356
  %0 = load i8, ptr @acpi_gbl_global_lock_acquired, align 1, !dbg !357
  %tobool = icmp ne i8 %0, 0, !dbg !357
  br i1 %tobool, label %if.end, label %if.then, !dbg !359

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 276, ptr noundef @.str.1) #14, !dbg !360
  store i32 20, ptr %retval, align 4, !dbg !362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !362

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @acpi_gbl_global_lock_present, align 1, !dbg !363
  %tobool1 = icmp ne i8 %1, 0, !dbg !363
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !365

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @acpi_gbl_FACS, align 8, !dbg !366
  %global_lock = getelementptr inbounds %struct.acpi_table_facs, ptr %2, i32 0, i32 4, !dbg !366
  %call = call i32 @__acpi_release_global_lock(ptr noundef %global_lock) #14, !dbg !366
  %conv = trunc i32 %call to i8, !dbg !366
  store i8 %conv, ptr %pending, align 1, !dbg !366
  %3 = load i8, ptr %pending, align 1, !dbg !368
  %tobool3 = icmp ne i8 %3, 0, !dbg !368
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !370

if.then4:                                         ; preds = %if.then2
  %call5 = call i32 @acpi_write_bit_register(i32 noundef 16, i32 noundef 1) #14, !dbg !371
  store i32 %call5, ptr %status, align 4, !dbg !373
  br label %if.end6, !dbg !374

if.end6:                                          ; preds = %if.then4, %if.then2
  br label %if.end7, !dbg !375

if.end7:                                          ; preds = %if.end6, %if.end
  store i8 0, ptr @acpi_gbl_global_lock_acquired, align 1, !dbg !376
  %4 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !377
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %4, i32 0, i32 7, !dbg !377
  %5 = load ptr, ptr %os_mutex, align 8, !dbg !377
  %call8 = call i32 @acpi_os_signal_semaphore(ptr noundef %5, i32 noundef 1) #14, !dbg !377
  %6 = load i32, ptr %status, align 4, !dbg !378
  store i32 %6, ptr %retval, align 4, !dbg !378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !378

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !379
  call void @llvm.lifetime.end.p0(i64 1, ptr %pending) #13, !dbg !379
  %7 = load i32, ptr %retval, align 4, !dbg !379
  ret i32 %7, !dbg !379
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !380 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !381 dso_local i32 @__acpi_release_global_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !382 dso_local i32 @acpi_write_bit_register(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !385 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !388 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !396, metadata !DIExpression()), !dbg !401
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !397, metadata !DIExpression()), !dbg !402
  %0 = load i64, ptr %size.addr, align 8, !dbg !403
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !404
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !405

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !406
  %tobool = icmp ne i64 %2, 0, !dbg !406
  br i1 %tobool, label %if.then, label %if.end7, !dbg !407

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !408
  call void @llvm.dbg.declare(metadata ptr %index, metadata !398, metadata !DIExpression()), !dbg !409
  %3 = load i64, ptr %size.addr, align 8, !dbg !410
  %cmp = icmp ugt i64 %3, 8192, !dbg !412
  br i1 %cmp, label %if.then1, label %if.end, !dbg !413

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !414
  %5 = load i32, ptr %flags.addr, align 4, !dbg !415
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !416
  store ptr %call, ptr %retval, align 8, !dbg !417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !417

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !418
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !418
  store i32 %call2, ptr %index, align 4, !dbg !419
  %7 = load i32, ptr %flags.addr, align 4, !dbg !420
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !421
  %9 = ptrtoint ptr %8 to i64, !dbg !421
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !422
  %idxprom = zext i32 %call3 to i64, !dbg !423
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !423
  %10 = load i32, ptr %index, align 4, !dbg !424
  %idxprom4 = zext i32 %10 to i64, !dbg !423
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !423
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !423
  %12 = load i32, ptr %flags.addr, align 4, !dbg !425
  %13 = load i64, ptr %size.addr, align 8, !dbg !426
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !427
  store ptr %call6, ptr %retval, align 8, !dbg !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !428

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !429
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !430
  %15 = load i32, ptr %flags.addr, align 4, !dbg !431
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !432
  store ptr %call8, ptr %retval, align 8, !dbg !433
  br label %return, !dbg !433

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !434
  ret ptr %16, !dbg !434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !435 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !439
  ret i64 %call, !dbg !440
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !441 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load i64, ptr %flags.addr, align 8, !dbg !447
  %and = and i64 %0, 512, !dbg !448
  %tobool = icmp ne i64 %and, 0, !dbg !449
  %lnot = xor i1 %tobool, true, !dbg !449
  %lnot.ext = zext i1 %lnot to i32, !dbg !449
  ret i32 %lnot.ext, !dbg !450
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !451 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !452 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !458, metadata !DIExpression()), !dbg !460
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !459, metadata !DIExpression()), !dbg !461
  %0 = load i64, ptr %size.addr, align 8, !dbg !462
  %tobool = icmp ne i64 %0, 0, !dbg !462
  br i1 %tobool, label %if.end, label %if.then, !dbg !464

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !465
  br label %return, !dbg !465

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !466
  %cmp = icmp ule i64 %1, 8, !dbg !468
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !469

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !470
  br label %return, !dbg !470

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !471
  %cmp3 = icmp ugt i64 %2, 64, !dbg !473
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !474

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !475
  %cmp4 = icmp ule i64 %3, 96, !dbg !476
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !477

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !478
  br label %return, !dbg !478

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !479
  %cmp7 = icmp ugt i64 %4, 128, !dbg !481
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !482

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !483
  %cmp9 = icmp ule i64 %5, 192, !dbg !484
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !485

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !486
  br label %return, !dbg !486

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !487
  %cmp12 = icmp ule i64 %6, 8, !dbg !489
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !490

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !491
  br label %return, !dbg !491

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !492
  %cmp15 = icmp ule i64 %7, 16, !dbg !494
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !495

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !496
  br label %return, !dbg !496

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !497
  %cmp18 = icmp ule i64 %8, 32, !dbg !499
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !500

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !501
  br label %return, !dbg !501

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !502
  %cmp21 = icmp ule i64 %9, 64, !dbg !504
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !505

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !506
  br label %return, !dbg !506

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !507
  %cmp24 = icmp ule i64 %10, 128, !dbg !509
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !510

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !511
  br label %return, !dbg !511

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !512
  %cmp27 = icmp ule i64 %11, 256, !dbg !514
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !515

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !516
  br label %return, !dbg !516

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !517
  %cmp30 = icmp ule i64 %12, 512, !dbg !519
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !520

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !521
  br label %return, !dbg !521

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !522
  %cmp33 = icmp ule i64 %13, 1024, !dbg !524
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !525

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !526
  br label %return, !dbg !526

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !527
  %cmp36 = icmp ule i64 %14, 2048, !dbg !529
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !530

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !531
  br label %return, !dbg !531

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !532
  %cmp39 = icmp ule i64 %15, 4096, !dbg !534
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !535

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !536
  br label %return, !dbg !536

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !537
  %cmp42 = icmp ule i64 %16, 8192, !dbg !539
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !540

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !541
  br label %return, !dbg !541

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !542
  %cmp45 = icmp ule i64 %17, 16384, !dbg !544
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !545

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !546
  br label %return, !dbg !546

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !547
  %cmp48 = icmp ule i64 %18, 32768, !dbg !549
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !550

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !551
  br label %return, !dbg !551

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !552
  %cmp51 = icmp ule i64 %19, 65536, !dbg !554
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !555

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !556
  br label %return, !dbg !556

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !557
  %cmp54 = icmp ule i64 %20, 131072, !dbg !559
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !560

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !561
  br label %return, !dbg !561

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !562
  %cmp57 = icmp ule i64 %21, 262144, !dbg !564
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !565

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !566
  br label %return, !dbg !566

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !567
  %cmp60 = icmp ule i64 %22, 524288, !dbg !569
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !570

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !571
  br label %return, !dbg !571

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !572
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !574
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !575

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !576
  br label %return, !dbg !576

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !577
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !579
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !580

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !581
  br label %return, !dbg !581

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !582, !range !584, !noundef !585
  %tobool69 = trunc i8 %25 to i1, !dbg !582
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !586

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !587

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !588, !srcloc !591
  unreachable, !dbg !588

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !592

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !593

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !594

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !596

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !594

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #13, !dbg !598, !srcloc !600
  br label %do.end75, !dbg !598

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !594

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !601
  br label %return, !dbg !601

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !602
  ret i32 %26, !dbg !602
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !603 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !609 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !613, metadata !DIExpression()), !dbg !615
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !614, metadata !DIExpression()), !dbg !616
  %0 = load i32, ptr %flags.addr, align 4, !dbg !617
  %and = and i32 %0, 17, !dbg !617
  %cmp = icmp eq i32 %and, 0, !dbg !617
  %lnot = xor i1 %cmp, true, !dbg !617
  %lnot1 = xor i1 %lnot, true, !dbg !617
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !617
  %conv = sext i32 %lnot.ext to i64, !dbg !617
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !617
  %tobool = icmp ne i64 %expval, 0, !dbg !617
  br i1 %tobool, label %if.then, label %if.end, !dbg !619

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !620
  br label %return, !dbg !620

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !621
  %and2 = and i32 %1, 1, !dbg !623
  %tobool3 = icmp ne i32 %and2, 0, !dbg !623
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !624

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !625
  br label %return, !dbg !625

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !626
  br label %return, !dbg !626

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !628
  ret i32 %2, !dbg !628
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !629 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !630 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !633 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !635, metadata !DIExpression()), !dbg !637
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !638, !srcloc !639
  %0 = load i64, ptr %flags, align 8, !dbg !640
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !641
  ret i64 %0, !dbg !642
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evglock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evglock\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evglock.ll drivers/acpi/acpica/evglock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !36, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evglock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ae9818886182703366da2fbf60b9915")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !28, !29, !33, !35}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !32)
!32 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !7)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !{!37, !43, !0, !48, !53}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 432, elements: !41)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42}
!42 = !DISubrange(count: 54)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 496, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 62)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 168, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 21)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 312, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 39)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !60)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!60 = !{!61}
!61 = !DISubrange(count: 8)
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 8, !"cf-protection-branch", i32 1}
!66 = !{i32 4, !"function_return_thunk_extern", i32 1}
!67 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!68 = !{i32 1, !"Code Model", i32 2}
!69 = !{i32 1, !"override-stack-alignment", i32 8}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = distinct !DISubprogram(name: "acpi_ev_init_global_lock_handler", scope: !3, file: !3, line: 33, type: !72, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!22}
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "status", scope: !71, file: !3, line: 35, type: !22)
!76 = !DILocalVariable(name: "lock", scope: !77, file: !3, line: 65, type: !78)
!77 = distinct !DILexicalBlock(scope: !71, file: !3, line: 65, column: 11)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !104, !112}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !34, line: 174, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 172, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !100, file: !34, line: 173, baseType: !103, size: 32)
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !105, size: 16)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !106)
!106 = !{!107, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !105, file: !92, line: 25, baseType: !108, size: 8)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !110)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !105, file: !92, line: 26, baseType: !108, size: 8, offset: 8)
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !114)
!114 = !{!115, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !113, file: !92, line: 29, baseType: !116, size: 16)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !118)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !113, file: !92, line: 30, baseType: !116, size: 16, offset: 16)
!120 = !DILocation(line: 35, column: 2, scope: !71)
!121 = !DILocation(line: 35, column: 14, scope: !71)
!122 = !DILocation(line: 41, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !71, file: !3, line: 41, column: 6)
!124 = !DILocation(line: 41, column: 6, scope: !71)
!125 = !DILocation(line: 42, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !3, line: 41, column: 33)
!127 = !DILocation(line: 47, column: 11, scope: !71)
!128 = !DILocation(line: 47, column: 9, scope: !71)
!129 = !DILocation(line: 57, column: 31, scope: !71)
!130 = !DILocation(line: 58, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !71, file: !3, line: 58, column: 6)
!132 = !DILocation(line: 58, column: 13, scope: !131)
!133 = !DILocation(line: 58, column: 6, scope: !71)
!134 = !DILocation(line: 59, column: 3, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 58, column: 41)
!136 = !DILocation(line: 62, column: 3, scope: !135)
!137 = !DILocation(line: 65, column: 11, scope: !77)
!138 = !DILocation(line: 65, column: 11, scope: !139)
!139 = distinct !DILexicalBlock(scope: !77, file: !3, line: 65, column: 11)
!140 = !DILocation(line: 65, column: 11, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !3, line: 65, column: 11)
!142 = !DILocation(line: 65, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !141, file: !3, line: 65, column: 11)
!144 = !DILocation(line: 65, column: 11, scope: !71)
!145 = !DILocation(line: 65, column: 9, scope: !71)
!146 = !DILocation(line: 66, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !71, file: !3, line: 66, column: 6)
!148 = !DILocation(line: 66, column: 6, scope: !71)
!149 = !DILocation(line: 67, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !3, line: 66, column: 28)
!151 = !DILocation(line: 70, column: 31, scope: !71)
!152 = !DILocation(line: 71, column: 31, scope: !71)
!153 = !DILocation(line: 72, column: 2, scope: !71)
!154 = !DILocation(line: 73, column: 1, scope: !71)
!155 = !DISubprogram(name: "acpi_install_fixed_event_handler", scope: !156, file: !156, line: 602, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!157 = !DISubroutineType(types: !158)
!158 = !{!22, !24, !159, !28}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_handler", file: !23, line: 1055, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!24, !28}
!163 = distinct !DISubprogram(name: "acpi_ev_global_lock_handler", scope: !3, file: !3, line: 115, type: !161, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DILocalVariable(name: "context", arg: 1, scope: !163, file: !3, line: 115, type: !28)
!166 = !DILocalVariable(name: "status", scope: !163, file: !3, line: 117, type: !22)
!167 = !DILocalVariable(name: "flags", scope: !163, file: !3, line: 118, type: !35)
!168 = !DILabel(scope: !163, name: "cleanup_and_exit", file: !3, line: 142)
!169 = !DILocation(line: 115, column: 46, scope: !163)
!170 = !DILocation(line: 117, column: 2, scope: !163)
!171 = !DILocation(line: 117, column: 14, scope: !163)
!172 = !DILocation(line: 118, column: 2, scope: !163)
!173 = !DILocation(line: 118, column: 17, scope: !163)
!174 = !DILocation(line: 120, column: 31, scope: !163)
!175 = !DILocation(line: 120, column: 10, scope: !163)
!176 = !DILocation(line: 120, column: 8, scope: !163)
!177 = !DILocation(line: 127, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !163, file: !3, line: 127, column: 6)
!179 = !DILocation(line: 127, column: 6, scope: !163)
!180 = !DILocation(line: 128, column: 3, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !3, line: 127, column: 37)
!182 = !DILocation(line: 135, column: 36, scope: !163)
!183 = !DILocation(line: 135, column: 11, scope: !163)
!184 = !DILocation(line: 135, column: 9, scope: !163)
!185 = !DILocation(line: 136, column: 6, scope: !186)
!186 = distinct !DILexicalBlock(scope: !163, file: !3, line: 136, column: 6)
!187 = !DILocation(line: 136, column: 6, scope: !163)
!188 = !DILocation(line: 137, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 136, column: 28)
!190 = !DILocation(line: 138, column: 2, scope: !189)
!191 = !DILocation(line: 140, column: 31, scope: !163)
!192 = !DILocation(line: 140, column: 2, scope: !163)
!193 = !DILocation(line: 142, column: 1, scope: !163)
!194 = !DILocation(line: 144, column: 23, scope: !163)
!195 = !DILocation(line: 144, column: 58, scope: !163)
!196 = !DILocation(line: 144, column: 2, scope: !163)
!197 = !DILocation(line: 146, column: 1, scope: !163)
!198 = !DILocation(line: 145, column: 2, scope: !163)
!199 = !DISubprogram(name: "acpi_error", scope: !156, file: !156, line: 901, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !202, !24, !202, null}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!203 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !204, file: !204, line: 50, type: !205, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!204 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!205 = !DISubroutineType(types: !206)
!206 = !{!28, !29}
!207 = !{!208, !209, !211, !214, !215, !218}
!208 = !DILocalVariable(name: "size", arg: 1, scope: !203, file: !204, line: 50, type: !29)
!209 = !DILocalVariable(name: "_flags", scope: !210, file: !204, line: 52, type: !35)
!210 = distinct !DILexicalBlock(scope: !203, file: !204, line: 52, column: 23)
!211 = !DILocalVariable(name: "__dummy", scope: !212, file: !204, line: 52, type: !35)
!212 = distinct !DILexicalBlock(scope: !213, file: !204, line: 52, column: 23)
!213 = distinct !DILexicalBlock(scope: !210, file: !204, line: 52, column: 23)
!214 = !DILocalVariable(name: "__dummy2", scope: !212, file: !204, line: 52, type: !35)
!215 = !DILocalVariable(name: "__dummy", scope: !216, file: !204, line: 52, type: !35)
!216 = distinct !DILexicalBlock(scope: !217, file: !204, line: 52, column: 23)
!217 = distinct !DILexicalBlock(scope: !210, file: !204, line: 52, column: 23)
!218 = !DILocalVariable(name: "__dummy2", scope: !216, file: !204, line: 52, type: !35)
!219 = !DILocation(line: 50, column: 48, scope: !203)
!220 = !DILocation(line: 52, column: 17, scope: !203)
!221 = !DILocation(line: 52, column: 23, scope: !210)
!222 = !DILocation(line: 52, column: 23, scope: !212)
!223 = !DILocation(line: 52, column: 23, scope: !213)
!224 = !DILocation(line: 52, column: 23, scope: !216)
!225 = !DILocation(line: 52, column: 23, scope: !217)
!226 = !DILocation(line: 52, column: 23, scope: !203)
!227 = !DILocation(line: 52, column: 9, scope: !203)
!228 = !DILocation(line: 52, column: 2, scope: !203)
!229 = distinct !DISubprogram(name: "spinlock_check", scope: !230, file: !230, line: 324, type: !231, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!230 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !78}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!235 = !{!236}
!236 = !DILocalVariable(name: "lock", arg: 1, scope: !229, file: !230, line: 324, type: !78)
!237 = !DILocation(line: 324, column: 67, scope: !229)
!238 = !DILocation(line: 326, column: 10, scope: !229)
!239 = !DILocation(line: 326, column: 16, scope: !229)
!240 = !DILocation(line: 326, column: 2, scope: !229)
!241 = distinct !DISubprogram(name: "acpi_ev_remove_global_lock_handler", scope: !3, file: !3, line: 87, type: !72, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !242)
!242 = !{!243}
!243 = !DILocalVariable(name: "status", scope: !241, file: !3, line: 89, type: !22)
!244 = !DILocation(line: 89, column: 2, scope: !241)
!245 = !DILocation(line: 89, column: 14, scope: !241)
!246 = !DILocation(line: 93, column: 31, scope: !241)
!247 = !DILocation(line: 94, column: 11, scope: !241)
!248 = !DILocation(line: 94, column: 9, scope: !241)
!249 = !DILocation(line: 97, column: 22, scope: !241)
!250 = !DILocation(line: 97, column: 2, scope: !241)
!251 = !DILocation(line: 98, column: 2, scope: !241)
!252 = !DILocation(line: 99, column: 1, scope: !241)
!253 = !DISubprogram(name: "acpi_remove_fixed_event_handler", scope: !156, file: !156, line: 609, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{!22, !24, !159}
!256 = !DISubprogram(name: "acpi_os_delete_lock", scope: !257, file: !257, line: 89, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!258 = !DISubroutineType(types: !259)
!259 = !{null, !78}
!260 = distinct !DISubprogram(name: "acpi_ev_acquire_global_lock", scope: !3, file: !3, line: 170, type: !261, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!22, !116}
!263 = !{!264, !265, !266, !267}
!264 = !DILocalVariable(name: "timeout", arg: 1, scope: !260, file: !3, line: 170, type: !116)
!265 = !DILocalVariable(name: "flags", scope: !260, file: !3, line: 172, type: !35)
!266 = !DILocalVariable(name: "status", scope: !260, file: !3, line: 173, type: !22)
!267 = !DILocalVariable(name: "acquired", scope: !260, file: !3, line: 174, type: !108)
!268 = !DILocation(line: 170, column: 45, scope: !260)
!269 = !DILocation(line: 172, column: 2, scope: !260)
!270 = !DILocation(line: 172, column: 17, scope: !260)
!271 = !DILocation(line: 173, column: 2, scope: !260)
!272 = !DILocation(line: 173, column: 14, scope: !260)
!273 = !DILocation(line: 174, column: 2, scope: !260)
!274 = !DILocation(line: 174, column: 5, scope: !260)
!275 = !DILocation(line: 183, column: 32, scope: !260)
!276 = !DILocation(line: 184, column: 11, scope: !260)
!277 = !DILocation(line: 184, column: 21, scope: !260)
!278 = !DILocation(line: 183, column: 6, scope: !260)
!279 = !DILocation(line: 182, column: 9, scope: !260)
!280 = !DILocation(line: 185, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !260, file: !3, line: 185, column: 6)
!282 = !DILocation(line: 185, column: 6, scope: !260)
!283 = !DILocation(line: 186, column: 3, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !3, line: 185, column: 28)
!285 = !DILocation(line: 197, column: 29, scope: !260)
!286 = !DILocation(line: 198, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !260, file: !3, line: 198, column: 6)
!288 = !DILocation(line: 198, column: 34, scope: !287)
!289 = !DILocation(line: 198, column: 6, scope: !260)
!290 = !DILocation(line: 199, column: 31, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 198, column: 40)
!292 = !DILocation(line: 200, column: 2, scope: !291)
!293 = !DILocation(line: 206, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !260, file: !3, line: 206, column: 6)
!295 = !DILocation(line: 206, column: 6, scope: !260)
!296 = !DILocation(line: 207, column: 33, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !3, line: 206, column: 37)
!298 = !DILocation(line: 208, column: 3, scope: !297)
!299 = !DILocation(line: 211, column: 31, scope: !260)
!300 = !DILocation(line: 211, column: 10, scope: !260)
!301 = !DILocation(line: 211, column: 8, scope: !260)
!302 = !DILocation(line: 213, column: 2, scope: !260)
!303 = !DILocation(line: 217, column: 3, scope: !304)
!304 = distinct !DILexicalBlock(scope: !260, file: !3, line: 213, column: 5)
!305 = !DILocation(line: 218, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !304, file: !3, line: 218, column: 7)
!307 = !DILocation(line: 218, column: 7, scope: !304)
!308 = !DILocation(line: 219, column: 34, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !3, line: 218, column: 17)
!310 = !DILocation(line: 222, column: 4, scope: !309)
!311 = !DILocation(line: 230, column: 32, scope: !304)
!312 = !DILocation(line: 231, column: 24, scope: !304)
!313 = !DILocation(line: 231, column: 59, scope: !304)
!314 = !DILocation(line: 231, column: 3, scope: !304)
!315 = !DILocation(line: 242, column: 8, scope: !304)
!316 = !DILocation(line: 241, column: 7, scope: !304)
!317 = !DILocation(line: 240, column: 10, scope: !304)
!318 = !DILocation(line: 244, column: 32, scope: !304)
!319 = !DILocation(line: 244, column: 11, scope: !304)
!320 = !DILocation(line: 244, column: 9, scope: !304)
!321 = !DILocation(line: 246, column: 2, scope: !304)
!322 = !DILocation(line: 246, column: 11, scope: !260)
!323 = distinct !{!323, !302, !324, !325, !326}
!324 = !DILocation(line: 246, column: 31, scope: !260)
!325 = !{!"llvm.loop.mustprogress"}
!326 = !{!"llvm.loop.unroll.disable"}
!327 = !DILocation(line: 248, column: 31, scope: !260)
!328 = !DILocation(line: 249, column: 23, scope: !260)
!329 = !DILocation(line: 249, column: 58, scope: !260)
!330 = !DILocation(line: 249, column: 2, scope: !260)
!331 = !DILocation(line: 251, column: 2, scope: !260)
!332 = !DILocation(line: 252, column: 1, scope: !260)
!333 = !DISubprogram(name: "acpi_ex_system_wait_mutex", scope: !334, file: !334, line: 315, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!335 = !DISubroutineType(types: !336)
!336 = !{!22, !28, !116}
!337 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !257, file: !257, line: 93, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DISubroutineType(types: !339)
!339 = !{!35, !78}
!340 = !DISubprogram(name: "__acpi_acquire_global_lock", scope: !341, file: !341, line: 30, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DIFile(filename: "./arch/x86/include/asm/acenv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e632a14742a0fa265989507184a59ff")
!342 = !DISubroutineType(types: !343)
!343 = !{!103, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!345 = !DISubprogram(name: "acpi_os_release_lock", scope: !257, file: !257, line: 97, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !78, !35}
!348 = !DISubprogram(name: "acpi_ex_system_wait_semaphore", scope: !334, file: !334, line: 313, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = distinct !DISubprogram(name: "acpi_ev_release_global_lock", scope: !3, file: !3, line: 266, type: !72, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !350)
!350 = !{!351, !352}
!351 = !DILocalVariable(name: "pending", scope: !349, file: !3, line: 268, type: !108)
!352 = !DILocalVariable(name: "status", scope: !349, file: !3, line: 269, type: !22)
!353 = !DILocation(line: 268, column: 2, scope: !349)
!354 = !DILocation(line: 268, column: 5, scope: !349)
!355 = !DILocation(line: 269, column: 2, scope: !349)
!356 = !DILocation(line: 269, column: 14, scope: !349)
!357 = !DILocation(line: 275, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !349, file: !3, line: 275, column: 6)
!359 = !DILocation(line: 275, column: 6, scope: !349)
!360 = !DILocation(line: 276, column: 3, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !3, line: 275, column: 38)
!362 = !DILocation(line: 278, column: 3, scope: !361)
!363 = !DILocation(line: 281, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !349, file: !3, line: 281, column: 6)
!365 = !DILocation(line: 281, column: 6, scope: !349)
!366 = !DILocation(line: 285, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !3, line: 281, column: 36)
!368 = !DILocation(line: 291, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !3, line: 291, column: 7)
!370 = !DILocation(line: 291, column: 7, scope: !367)
!371 = !DILocation(line: 293, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !3, line: 291, column: 16)
!373 = !DILocation(line: 292, column: 11, scope: !372)
!374 = !DILocation(line: 296, column: 3, scope: !372)
!375 = !DILocation(line: 300, column: 2, scope: !367)
!376 = !DILocation(line: 302, column: 32, scope: !349)
!377 = !DILocation(line: 306, column: 2, scope: !349)
!378 = !DILocation(line: 307, column: 2, scope: !349)
!379 = !DILocation(line: 308, column: 1, scope: !349)
!380 = !DISubprogram(name: "acpi_warning", scope: !156, file: !156, line: 912, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DISubprogram(name: "__acpi_release_global_lock", scope: !341, file: !341, line: 31, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubprogram(name: "acpi_write_bit_register", scope: !156, file: !156, line: 860, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubroutineType(types: !384)
!384 = !{!22, !24, !24}
!385 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !257, file: !257, line: 140, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DISubroutineType(types: !387)
!387 = !{!22, !28, !24}
!388 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !389, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!389 = !DISubroutineType(types: !390)
!390 = !{!28, !391, !33}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !393, line: 72, baseType: !394)
!393 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !393, line: 16, baseType: !35)
!395 = !{!396, !397, !398}
!396 = !DILocalVariable(name: "size", arg: 1, scope: !388, file: !12, line: 591, type: !391)
!397 = !DILocalVariable(name: "flags", arg: 2, scope: !388, file: !12, line: 591, type: !33)
!398 = !DILocalVariable(name: "index", scope: !399, file: !12, line: 594, type: !7)
!399 = distinct !DILexicalBlock(scope: !400, file: !12, line: 593, column: 42)
!400 = distinct !DILexicalBlock(scope: !388, file: !12, line: 593, column: 6)
!401 = !DILocation(line: 591, column: 61, scope: !388)
!402 = !DILocation(line: 591, column: 73, scope: !388)
!403 = !DILocation(line: 593, column: 27, scope: !400)
!404 = !DILocation(line: 593, column: 6, scope: !400)
!405 = !DILocation(line: 593, column: 33, scope: !400)
!406 = !DILocation(line: 593, column: 36, scope: !400)
!407 = !DILocation(line: 593, column: 6, scope: !388)
!408 = !DILocation(line: 594, column: 3, scope: !399)
!409 = !DILocation(line: 594, column: 16, scope: !399)
!410 = !DILocation(line: 596, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !399, file: !12, line: 596, column: 7)
!412 = !DILocation(line: 596, column: 12, scope: !411)
!413 = !DILocation(line: 596, column: 7, scope: !399)
!414 = !DILocation(line: 597, column: 25, scope: !411)
!415 = !DILocation(line: 597, column: 31, scope: !411)
!416 = !DILocation(line: 597, column: 11, scope: !411)
!417 = !DILocation(line: 597, column: 4, scope: !411)
!418 = !DILocation(line: 599, column: 11, scope: !399)
!419 = !DILocation(line: 599, column: 9, scope: !399)
!420 = !DILocation(line: 601, column: 33, scope: !399)
!421 = !DILocation(line: 601, column: 40, scope: !399)
!422 = !DILocation(line: 601, column: 20, scope: !399)
!423 = !DILocation(line: 601, column: 5, scope: !399)
!424 = !DILocation(line: 601, column: 51, scope: !399)
!425 = !DILocation(line: 602, column: 5, scope: !399)
!426 = !DILocation(line: 602, column: 12, scope: !399)
!427 = !DILocation(line: 600, column: 10, scope: !399)
!428 = !DILocation(line: 600, column: 3, scope: !399)
!429 = !DILocation(line: 603, column: 2, scope: !400)
!430 = !DILocation(line: 604, column: 19, scope: !388)
!431 = !DILocation(line: 604, column: 25, scope: !388)
!432 = !DILocation(line: 604, column: 9, scope: !388)
!433 = !DILocation(line: 604, column: 2, scope: !388)
!434 = !DILocation(line: 605, column: 1, scope: !388)
!435 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !436, file: !436, line: 65, type: !437, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!436 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!437 = !DISubroutineType(types: !438)
!438 = !{!35}
!439 = !DILocation(line: 67, column: 9, scope: !435)
!440 = !DILocation(line: 67, column: 2, scope: !435)
!441 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !436, file: !436, line: 120, type: !442, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!103, !35}
!444 = !{!445}
!445 = !DILocalVariable(name: "flags", arg: 1, scope: !441, file: !436, line: 120, type: !35)
!446 = !DILocation(line: 120, column: 67, scope: !441)
!447 = !DILocation(line: 122, column: 11, scope: !441)
!448 = !DILocation(line: 122, column: 17, scope: !441)
!449 = !DILocation(line: 122, column: 9, scope: !441)
!450 = !DILocation(line: 122, column: 2, scope: !441)
!451 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !453, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!453 = !DISubroutineType(types: !454)
!454 = !{!7, !391, !455}
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !456)
!456 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!457 = !{!458, !459}
!458 = !DILocalVariable(name: "size", arg: 1, scope: !452, file: !12, line: 444, type: !391)
!459 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !452, file: !12, line: 445, type: !455)
!460 = !DILocation(line: 444, column: 60, scope: !452)
!461 = !DILocation(line: 445, column: 16, scope: !452)
!462 = !DILocation(line: 447, column: 7, scope: !463)
!463 = distinct !DILexicalBlock(scope: !452, file: !12, line: 447, column: 6)
!464 = !DILocation(line: 447, column: 6, scope: !452)
!465 = !DILocation(line: 448, column: 3, scope: !463)
!466 = !DILocation(line: 450, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !452, file: !12, line: 450, column: 6)
!468 = !DILocation(line: 450, column: 11, scope: !467)
!469 = !DILocation(line: 450, column: 6, scope: !452)
!470 = !DILocation(line: 451, column: 3, scope: !467)
!471 = !DILocation(line: 453, column: 32, scope: !472)
!472 = distinct !DILexicalBlock(scope: !452, file: !12, line: 453, column: 6)
!473 = !DILocation(line: 453, column: 37, scope: !472)
!474 = !DILocation(line: 453, column: 42, scope: !472)
!475 = !DILocation(line: 453, column: 45, scope: !472)
!476 = !DILocation(line: 453, column: 50, scope: !472)
!477 = !DILocation(line: 453, column: 6, scope: !452)
!478 = !DILocation(line: 454, column: 3, scope: !472)
!479 = !DILocation(line: 455, column: 32, scope: !480)
!480 = distinct !DILexicalBlock(scope: !452, file: !12, line: 455, column: 6)
!481 = !DILocation(line: 455, column: 37, scope: !480)
!482 = !DILocation(line: 455, column: 43, scope: !480)
!483 = !DILocation(line: 455, column: 46, scope: !480)
!484 = !DILocation(line: 455, column: 51, scope: !480)
!485 = !DILocation(line: 455, column: 6, scope: !452)
!486 = !DILocation(line: 456, column: 3, scope: !480)
!487 = !DILocation(line: 457, column: 6, scope: !488)
!488 = distinct !DILexicalBlock(scope: !452, file: !12, line: 457, column: 6)
!489 = !DILocation(line: 457, column: 11, scope: !488)
!490 = !DILocation(line: 457, column: 6, scope: !452)
!491 = !DILocation(line: 457, column: 26, scope: !488)
!492 = !DILocation(line: 458, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !452, file: !12, line: 458, column: 6)
!494 = !DILocation(line: 458, column: 11, scope: !493)
!495 = !DILocation(line: 458, column: 6, scope: !452)
!496 = !DILocation(line: 458, column: 26, scope: !493)
!497 = !DILocation(line: 459, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !452, file: !12, line: 459, column: 6)
!499 = !DILocation(line: 459, column: 11, scope: !498)
!500 = !DILocation(line: 459, column: 6, scope: !452)
!501 = !DILocation(line: 459, column: 26, scope: !498)
!502 = !DILocation(line: 460, column: 6, scope: !503)
!503 = distinct !DILexicalBlock(scope: !452, file: !12, line: 460, column: 6)
!504 = !DILocation(line: 460, column: 11, scope: !503)
!505 = !DILocation(line: 460, column: 6, scope: !452)
!506 = !DILocation(line: 460, column: 26, scope: !503)
!507 = !DILocation(line: 461, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !452, file: !12, line: 461, column: 6)
!509 = !DILocation(line: 461, column: 11, scope: !508)
!510 = !DILocation(line: 461, column: 6, scope: !452)
!511 = !DILocation(line: 461, column: 26, scope: !508)
!512 = !DILocation(line: 462, column: 6, scope: !513)
!513 = distinct !DILexicalBlock(scope: !452, file: !12, line: 462, column: 6)
!514 = !DILocation(line: 462, column: 11, scope: !513)
!515 = !DILocation(line: 462, column: 6, scope: !452)
!516 = !DILocation(line: 462, column: 26, scope: !513)
!517 = !DILocation(line: 463, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !452, file: !12, line: 463, column: 6)
!519 = !DILocation(line: 463, column: 11, scope: !518)
!520 = !DILocation(line: 463, column: 6, scope: !452)
!521 = !DILocation(line: 463, column: 26, scope: !518)
!522 = !DILocation(line: 464, column: 6, scope: !523)
!523 = distinct !DILexicalBlock(scope: !452, file: !12, line: 464, column: 6)
!524 = !DILocation(line: 464, column: 11, scope: !523)
!525 = !DILocation(line: 464, column: 6, scope: !452)
!526 = !DILocation(line: 464, column: 26, scope: !523)
!527 = !DILocation(line: 465, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !452, file: !12, line: 465, column: 6)
!529 = !DILocation(line: 465, column: 11, scope: !528)
!530 = !DILocation(line: 465, column: 6, scope: !452)
!531 = !DILocation(line: 465, column: 26, scope: !528)
!532 = !DILocation(line: 466, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !452, file: !12, line: 466, column: 6)
!534 = !DILocation(line: 466, column: 11, scope: !533)
!535 = !DILocation(line: 466, column: 6, scope: !452)
!536 = !DILocation(line: 466, column: 26, scope: !533)
!537 = !DILocation(line: 467, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !452, file: !12, line: 467, column: 6)
!539 = !DILocation(line: 467, column: 11, scope: !538)
!540 = !DILocation(line: 467, column: 6, scope: !452)
!541 = !DILocation(line: 467, column: 26, scope: !538)
!542 = !DILocation(line: 468, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !452, file: !12, line: 468, column: 6)
!544 = !DILocation(line: 468, column: 11, scope: !543)
!545 = !DILocation(line: 468, column: 6, scope: !452)
!546 = !DILocation(line: 468, column: 26, scope: !543)
!547 = !DILocation(line: 469, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !452, file: !12, line: 469, column: 6)
!549 = !DILocation(line: 469, column: 11, scope: !548)
!550 = !DILocation(line: 469, column: 6, scope: !452)
!551 = !DILocation(line: 469, column: 26, scope: !548)
!552 = !DILocation(line: 470, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !452, file: !12, line: 470, column: 6)
!554 = !DILocation(line: 470, column: 11, scope: !553)
!555 = !DILocation(line: 470, column: 6, scope: !452)
!556 = !DILocation(line: 470, column: 26, scope: !553)
!557 = !DILocation(line: 471, column: 6, scope: !558)
!558 = distinct !DILexicalBlock(scope: !452, file: !12, line: 471, column: 6)
!559 = !DILocation(line: 471, column: 11, scope: !558)
!560 = !DILocation(line: 471, column: 6, scope: !452)
!561 = !DILocation(line: 471, column: 26, scope: !558)
!562 = !DILocation(line: 472, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !452, file: !12, line: 472, column: 6)
!564 = !DILocation(line: 472, column: 11, scope: !563)
!565 = !DILocation(line: 472, column: 6, scope: !452)
!566 = !DILocation(line: 472, column: 26, scope: !563)
!567 = !DILocation(line: 473, column: 6, scope: !568)
!568 = distinct !DILexicalBlock(scope: !452, file: !12, line: 473, column: 6)
!569 = !DILocation(line: 473, column: 11, scope: !568)
!570 = !DILocation(line: 473, column: 6, scope: !452)
!571 = !DILocation(line: 473, column: 26, scope: !568)
!572 = !DILocation(line: 474, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !452, file: !12, line: 474, column: 6)
!574 = !DILocation(line: 474, column: 11, scope: !573)
!575 = !DILocation(line: 474, column: 6, scope: !452)
!576 = !DILocation(line: 474, column: 27, scope: !573)
!577 = !DILocation(line: 475, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !452, file: !12, line: 475, column: 6)
!579 = !DILocation(line: 475, column: 11, scope: !578)
!580 = !DILocation(line: 475, column: 6, scope: !452)
!581 = !DILocation(line: 475, column: 32, scope: !578)
!582 = !DILocation(line: 477, column: 50, scope: !583)
!583 = distinct !DILexicalBlock(scope: !452, file: !12, line: 477, column: 6)
!584 = !{i8 0, i8 2}
!585 = !{}
!586 = !DILocation(line: 477, column: 6, scope: !452)
!587 = !DILocation(line: 478, column: 3, scope: !583)
!588 = !DILocation(line: 478, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !12, line: 478, column: 3)
!590 = distinct !DILexicalBlock(scope: !583, file: !12, line: 478, column: 3)
!591 = !{i32 -2143040740}
!592 = !DILocation(line: 478, column: 3, scope: !590)
!593 = !DILocation(line: 480, column: 3, scope: !583)
!594 = !DILocation(line: 480, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !583, file: !12, line: 480, column: 3)
!596 = !DILocation(line: 480, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !595, file: !12, line: 480, column: 3)
!598 = !DILocation(line: 480, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !12, line: 480, column: 3)
!600 = !{i64 2151926759, i64 2151926788, i64 2151926834, i64 2151926892, i64 2151926946, i64 2151927000, i64 2151927055, i64 2151927086}
!601 = !DILocation(line: 483, column: 2, scope: !452)
!602 = !DILocation(line: 484, column: 1, scope: !452)
!603 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{!28, !606, !33, !391}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !608, line: 11, flags: DIFlagFwdDecl)
!608 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!609 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !610, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!11, !33, !35}
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "flags", arg: 1, scope: !609, file: !12, line: 401, type: !33)
!614 = !DILocalVariable(name: "caller", arg: 2, scope: !609, file: !12, line: 401, type: !35)
!615 = !DILocation(line: 401, column: 67, scope: !609)
!616 = !DILocation(line: 401, column: 88, scope: !609)
!617 = !DILocation(line: 407, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !609, file: !12, line: 407, column: 6)
!619 = !DILocation(line: 407, column: 6, scope: !609)
!620 = !DILocation(line: 413, column: 3, scope: !618)
!621 = !DILocation(line: 423, column: 38, scope: !622)
!622 = distinct !DILexicalBlock(scope: !609, file: !12, line: 423, column: 6)
!623 = !DILocation(line: 423, column: 44, scope: !622)
!624 = !DILocation(line: 423, column: 6, scope: !609)
!625 = !DILocation(line: 424, column: 3, scope: !622)
!626 = !DILocation(line: 426, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !609, file: !12, line: 425, column: 6)
!628 = !DILocation(line: 429, column: 1, scope: !609)
!629 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!630 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !631, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!631 = !DISubroutineType(types: !632)
!632 = !{null}
!633 = distinct !DISubprogram(name: "native_save_fl", scope: !436, file: !436, line: 17, type: !437, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !634)
!634 = !{!635}
!635 = !DILocalVariable(name: "flags", scope: !633, file: !436, line: 19, type: !35)
!636 = !DILocation(line: 19, column: 2, scope: !633)
!637 = !DILocation(line: 19, column: 16, scope: !633)
!638 = !DILocation(line: 26, column: 2, scope: !633)
!639 = !{i64 1516678, i64 1516699}
!640 = !DILocation(line: 32, column: 9, scope: !633)
!641 = !DILocation(line: 33, column: 1, scope: !633)
!642 = !DILocation(line: 32, column: 2, scope: !633)
