; ModuleID = 'drivers/acpi/acpica/evxfgpe.c'
source_filename = "drivers/acpi/acpica/evxfgpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_update_all_gpes: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_update_all_gpes ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_enable_gpe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_enable_gpe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_disable_gpe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_disable_gpe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_set_gpe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_set_gpe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_mask_gpe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_mask_gpe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_mark_gpe_for_wake: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_mark_gpe_for_wake ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_setup_gpe_for_wake: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_setup_gpe_for_wake ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_set_gpe_wake_mask: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_set_gpe_wake_mask ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_clear_gpe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_clear_gpe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_gpe_status: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_gpe_status ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dispatch_gpe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dispatch_gpe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_finish_gpe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_finish_gpe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_disable_all_gpes: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_disable_all_gpes ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_enable_all_runtime_gpes: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_enable_all_runtime_gpes ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_enable_all_wakeup_gpes: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_enable_all_wakeup_gpes ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_any_gpe_status_set: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_any_gpe_status_set ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_gpe_block: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_gpe_block ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_remove_gpe_block: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_remove_gpe_block ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_gpe_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_gpe_device ; .previous"

%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, ptr, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_gpe_notify_info = type { ptr, ptr }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_device_info = type { i32, i32, i32, ptr }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_object_device = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr, ptr }

@acpi_gbl_all_gpes_initialized = external dso_local global i8, align 1
@acpi_gbl_gpe_xrupt_list_head = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_update_all_gpes174 = internal global ptr @acpi_update_all_gpes, section ".discard.addressable", align 8, !dbg !0
@acpi_gbl_gpe_lock = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_enable_gpe175 = internal global ptr @acpi_enable_gpe, section ".discard.addressable", align 8, !dbg !805
@__UNIQUE_ID___addressable_acpi_disable_gpe176 = internal global ptr @acpi_disable_gpe, section ".discard.addressable", align 8, !dbg !807
@__UNIQUE_ID___addressable_acpi_set_gpe177 = internal global ptr @acpi_set_gpe, section ".discard.addressable", align 8, !dbg !809
@__UNIQUE_ID___addressable_acpi_mask_gpe178 = internal global ptr @acpi_mask_gpe, section ".discard.addressable", align 8, !dbg !811
@__UNIQUE_ID___addressable_acpi_mark_gpe_for_wake179 = internal global ptr @acpi_mark_gpe_for_wake, section ".discard.addressable", align 8, !dbg !813
@acpi_gbl_root_node = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_setup_gpe_for_wake180 = internal global ptr @acpi_setup_gpe_for_wake, section ".discard.addressable", align 8, !dbg !815
@_acpi_module_name = internal constant [8 x i8] c"evxfgpe\00", align 1, !dbg !851
@.str = private unnamed_addr constant [19 x i8] c"%u, Invalid action\00", align 1, !dbg !817
@__UNIQUE_ID___addressable_acpi_set_gpe_wake_mask181 = internal global ptr @acpi_set_gpe_wake_mask, section ".discard.addressable", align 8, !dbg !822
@__UNIQUE_ID___addressable_acpi_clear_gpe182 = internal global ptr @acpi_clear_gpe, section ".discard.addressable", align 8, !dbg !824
@__UNIQUE_ID___addressable_acpi_get_gpe_status183 = internal global ptr @acpi_get_gpe_status, section ".discard.addressable", align 8, !dbg !826
@__UNIQUE_ID___addressable_acpi_dispatch_gpe184 = internal global ptr @acpi_dispatch_gpe, section ".discard.addressable", align 8, !dbg !828
@__UNIQUE_ID___addressable_acpi_finish_gpe185 = internal global ptr @acpi_finish_gpe, section ".discard.addressable", align 8, !dbg !830
@__UNIQUE_ID___addressable_acpi_disable_all_gpes186 = internal global ptr @acpi_disable_all_gpes, section ".discard.addressable", align 8, !dbg !832
@__UNIQUE_ID___addressable_acpi_enable_all_runtime_gpes187 = internal global ptr @acpi_enable_all_runtime_gpes, section ".discard.addressable", align 8, !dbg !834
@__UNIQUE_ID___addressable_acpi_enable_all_wakeup_gpes188 = internal global ptr @acpi_enable_all_wakeup_gpes, section ".discard.addressable", align 8, !dbg !836
@__UNIQUE_ID___addressable_acpi_any_gpe_status_set189 = internal global ptr @acpi_any_gpe_status_set, section ".discard.addressable", align 8, !dbg !838
@__UNIQUE_ID___addressable_acpi_install_gpe_block190 = internal global ptr @acpi_install_gpe_block, section ".discard.addressable", align 8, !dbg !840
@__UNIQUE_ID___addressable_acpi_remove_gpe_block191 = internal global ptr @acpi_remove_gpe_block, section ".discard.addressable", align 8, !dbg !842
@acpi_current_gpe_count = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_acpi_get_gpe_device192 = internal global ptr @acpi_get_gpe_device, section ".discard.addressable", align 8, !dbg !844
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !846
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_update_all_gpes174, ptr @__UNIQUE_ID___addressable_acpi_enable_gpe175, ptr @__UNIQUE_ID___addressable_acpi_disable_gpe176, ptr @__UNIQUE_ID___addressable_acpi_set_gpe177, ptr @__UNIQUE_ID___addressable_acpi_mask_gpe178, ptr @__UNIQUE_ID___addressable_acpi_mark_gpe_for_wake179, ptr @__UNIQUE_ID___addressable_acpi_setup_gpe_for_wake180, ptr @__UNIQUE_ID___addressable_acpi_set_gpe_wake_mask181, ptr @__UNIQUE_ID___addressable_acpi_clear_gpe182, ptr @__UNIQUE_ID___addressable_acpi_get_gpe_status183, ptr @__UNIQUE_ID___addressable_acpi_dispatch_gpe184, ptr @__UNIQUE_ID___addressable_acpi_finish_gpe185, ptr @__UNIQUE_ID___addressable_acpi_disable_all_gpes186, ptr @__UNIQUE_ID___addressable_acpi_enable_all_runtime_gpes187, ptr @__UNIQUE_ID___addressable_acpi_enable_all_wakeup_gpes188, ptr @__UNIQUE_ID___addressable_acpi_any_gpe_status_set189, ptr @__UNIQUE_ID___addressable_acpi_install_gpe_block190, ptr @__UNIQUE_ID___addressable_acpi_remove_gpe_block191, ptr @__UNIQUE_ID___addressable_acpi_get_gpe_device192], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_update_all_gpes() #0 align 16 !dbg !864 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %is_polling_needed = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %status, metadata !868, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_polling_needed) #13, !dbg !873
  call void @llvm.dbg.declare(metadata ptr %is_polling_needed, metadata !869, metadata !DIExpression()), !dbg !874
  store i8 0, ptr %is_polling_needed, align 1, !dbg !874
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !875
  store i32 %call, ptr %status, align 4, !dbg !876
  %0 = load i32, ptr %status, align 4, !dbg !877
  %tobool = icmp ne i32 %0, 0, !dbg !877
  br i1 %tobool, label %if.then, label %if.end, !dbg !879

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !880
  store i32 %1, ptr %retval, align 4, !dbg !880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !880

if.end:                                           ; preds = %entry
  %2 = load i8, ptr @acpi_gbl_all_gpes_initialized, align 1, !dbg !882
  %tobool1 = icmp ne i8 %2, 0, !dbg !882
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !884

if.then2:                                         ; preds = %if.end
  br label %unlock_and_exit, !dbg !885

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_ev_initialize_gpe_block, ptr noundef %is_polling_needed) #14, !dbg !887
  store i32 %call4, ptr %status, align 4, !dbg !888
  %3 = load i32, ptr %status, align 4, !dbg !889
  %tobool5 = icmp ne i32 %3, 0, !dbg !889
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !891

if.then6:                                         ; preds = %if.end3
  store i8 1, ptr @acpi_gbl_all_gpes_initialized, align 1, !dbg !892
  br label %if.end7, !dbg !894

if.end7:                                          ; preds = %if.then6, %if.end3
  br label %unlock_and_exit, !dbg !889

unlock_and_exit:                                  ; preds = %if.end7, %if.then2
  call void @llvm.dbg.label(metadata !870), !dbg !895
  %call8 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !896
  %4 = load i8, ptr %is_polling_needed, align 1, !dbg !897
  %conv = zext i8 %4 to i32, !dbg !897
  %tobool9 = icmp ne i32 %conv, 0, !dbg !897
  br i1 %tobool9, label %land.lhs.true, label %if.end14, !dbg !899

land.lhs.true:                                    ; preds = %unlock_and_exit
  %5 = load i8, ptr @acpi_gbl_all_gpes_initialized, align 1, !dbg !900
  %conv10 = zext i8 %5 to i32, !dbg !900
  %tobool11 = icmp ne i32 %conv10, 0, !dbg !900
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !901

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !902
  %call13 = call i32 @acpi_ev_gpe_detect(ptr noundef %6) #14, !dbg !904
  br label %if.end14, !dbg !905

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %unlock_and_exit
  %7 = load i32, ptr %status, align 4, !dbg !906
  store i32 %7, ptr %retval, align 4, !dbg !906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !906

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_polling_needed) #13, !dbg !907
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !907
  %8 = load i32, ptr %retval, align 4, !dbg !907
  ret i32 %8, !dbg !907
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !908 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !913 dso_local i32 @acpi_ev_walk_gpe_list(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_initialize_gpe_block(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !921 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !922 dso_local i32 @acpi_ev_gpe_detect(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enable_gpe(ptr noundef %gpe_device, i32 noundef %gpe_number) #0 align 16 !dbg !925 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !929, metadata !DIExpression()), !dbg !934
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !930, metadata !DIExpression()), !dbg !935
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %status, metadata !931, metadata !DIExpression()), !dbg !937
  store i32 4097, ptr %status, align 4, !dbg !937
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !932, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !933, metadata !DIExpression()), !dbg !941
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !942
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !943
  store i64 %call, ptr %flags, align 8, !dbg !944
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !945
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !946
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !947
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !948
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !949
  %tobool = icmp ne ptr %3, null, !dbg !949
  br i1 %tobool, label %if.then, label %if.end27, !dbg !951

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !952
  %flags2 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %4, i32 0, i32 2, !dbg !952
  %5 = load i8, ptr %flags2, align 8, !dbg !952
  %conv = zext i8 %5 to i32, !dbg !952
  %and = and i32 %conv, 7, !dbg !952
  %conv3 = trunc i32 %and to i8, !dbg !952
  %conv4 = zext i8 %conv3 to i32, !dbg !952
  %cmp = icmp ne i32 %conv4, 0, !dbg !955
  br i1 %cmp, label %if.then6, label %if.else, !dbg !956

if.then6:                                         ; preds = %if.then
  %6 = load ptr, ptr %gpe_event_info, align 8, !dbg !957
  %call7 = call i32 @acpi_ev_add_gpe_reference(ptr noundef %6, i8 noundef zeroext 1) #14, !dbg !959
  store i32 %call7, ptr %status, align 4, !dbg !960
  %7 = load i32, ptr %status, align 4, !dbg !961
  %tobool8 = icmp ne i32 %7, 0, !dbg !961
  br i1 %tobool8, label %if.end, label %land.lhs.true, !dbg !963

land.lhs.true:                                    ; preds = %if.then6
  %8 = load ptr, ptr %gpe_event_info, align 8, !dbg !964
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %8, i32 0, i32 4, !dbg !964
  %9 = load i8, ptr %runtime_count, align 2, !dbg !964
  %conv9 = zext i8 %9 to i32, !dbg !964
  %cmp10 = icmp eq i32 %conv9, 1, !dbg !964
  br i1 %cmp10, label %land.lhs.true12, label %if.end, !dbg !964

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = load ptr, ptr %gpe_event_info, align 8, !dbg !964
  %flags13 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %10, i32 0, i32 2, !dbg !964
  %11 = load i8, ptr %flags13, align 8, !dbg !964
  %conv14 = zext i8 %11 to i32, !dbg !964
  %and15 = and i32 %conv14, 64, !dbg !964
  %tobool16 = icmp ne i32 %and15, 0, !dbg !964
  br i1 %tobool16, label %land.lhs.true17, label %if.end, !dbg !964

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %12 = load ptr, ptr %gpe_event_info, align 8, !dbg !964
  %flags18 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %12, i32 0, i32 2, !dbg !964
  %13 = load i8, ptr %flags18, align 8, !dbg !964
  %conv19 = zext i8 %13 to i32, !dbg !964
  %and20 = and i32 %conv19, 8, !dbg !964
  %cmp21 = icmp eq i32 %and20, 0, !dbg !964
  br i1 %cmp21, label %if.then23, label %if.end, !dbg !965

if.then23:                                        ; preds = %land.lhs.true17
  %14 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !966
  %15 = load i64, ptr %flags, align 8, !dbg !968
  call void @acpi_os_release_lock(ptr noundef %14, i64 noundef %15) #14, !dbg !969
  %16 = load ptr, ptr %gpe_device.addr, align 8, !dbg !970
  %17 = load ptr, ptr %gpe_event_info, align 8, !dbg !971
  %18 = load i32, ptr %gpe_number.addr, align 4, !dbg !972
  %call24 = call i32 @acpi_ev_detect_gpe(ptr noundef %16, ptr noundef %17, i32 noundef %18) #14, !dbg !973
  %19 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !974
  %call25 = call i64 @acpi_os_acquire_lock(ptr noundef %19) #14, !dbg !975
  store i64 %call25, ptr %flags, align 8, !dbg !976
  br label %if.end, !dbg !977

if.end:                                           ; preds = %if.then23, %land.lhs.true17, %land.lhs.true12, %land.lhs.true, %if.then6
  br label %if.end26, !dbg !978

if.else:                                          ; preds = %if.then
  store i32 26, ptr %status, align 4, !dbg !979
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end
  br label %if.end27, !dbg !981

if.end27:                                         ; preds = %if.end26, %entry
  %20 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !982
  %21 = load i64, ptr %flags, align 8, !dbg !983
  call void @acpi_os_release_lock(ptr noundef %20, i64 noundef %21) #14, !dbg !984
  %22 = load i32, ptr %status, align 4, !dbg !985
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !986
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !986
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !986
  ret i32 %22, !dbg !985
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !987 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1027 dso_local ptr @acpi_ev_get_gpe_event_info(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1030 dso_local i32 @acpi_ev_add_gpe_reference(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1033 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1036 dso_local i32 @acpi_ev_detect_gpe(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_disable_gpe(ptr noundef %gpe_device, i32 noundef %gpe_number) #0 align 16 !dbg !1039 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1041, metadata !DIExpression()), !dbg !1046
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1042, metadata !DIExpression()), !dbg !1047
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1048
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1043, metadata !DIExpression()), !dbg !1049
  store i32 4097, ptr %status, align 4, !dbg !1049
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1050
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1044, metadata !DIExpression()), !dbg !1051
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1052
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1045, metadata !DIExpression()), !dbg !1053
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1054
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1055
  store i64 %call, ptr %flags, align 8, !dbg !1056
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1057
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1058
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !1059
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1060
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1061
  %tobool = icmp ne ptr %3, null, !dbg !1061
  br i1 %tobool, label %if.then, label %if.end, !dbg !1063

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !1064
  %call2 = call i32 @acpi_ev_remove_gpe_reference(ptr noundef %4) #14, !dbg !1066
  store i32 %call2, ptr %status, align 4, !dbg !1067
  br label %if.end, !dbg !1068

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1069
  %6 = load i64, ptr %flags, align 8, !dbg !1070
  call void @acpi_os_release_lock(ptr noundef %5, i64 noundef %6) #14, !dbg !1071
  %7 = load i32, ptr %status, align 4, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1073
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1073
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1073
  ret i32 %7, !dbg !1072
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1074 dso_local i32 @acpi_ev_remove_gpe_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_set_gpe(ptr noundef %gpe_device, i32 noundef %gpe_number, i8 noundef zeroext %action) #0 align 16 !dbg !1077 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %action.addr = alloca i8, align 1
  %gpe_event_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1081, metadata !DIExpression()), !dbg !1088
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1082, metadata !DIExpression()), !dbg !1089
  store i8 %action, ptr %action.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1084, metadata !DIExpression()), !dbg !1092
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1085, metadata !DIExpression()), !dbg !1094
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1095
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1086, metadata !DIExpression()), !dbg !1096
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1097
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1098
  store i64 %call, ptr %flags, align 8, !dbg !1099
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1100
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1101
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !1102
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1103
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1104
  %tobool = icmp ne ptr %3, null, !dbg !1104
  br i1 %tobool, label %if.end, label %if.then, !dbg !1106

if.then:                                          ; preds = %entry
  store i32 4097, ptr %status, align 4, !dbg !1107
  br label %unlock_and_exit, !dbg !1109

if.end:                                           ; preds = %entry
  %4 = load i8, ptr %action.addr, align 1, !dbg !1110
  %conv = zext i8 %4 to i32, !dbg !1110
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !1111

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %gpe_event_info, align 8, !dbg !1112
  %call2 = call i32 @acpi_hw_low_set_gpe(ptr noundef %5, i32 noundef 0) #14, !dbg !1114
  store i32 %call2, ptr %status, align 4, !dbg !1115
  %6 = load ptr, ptr %gpe_event_info, align 8, !dbg !1116
  %disable_for_dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %6, i32 0, i32 5, !dbg !1117
  store i8 0, ptr %disable_for_dispatch, align 1, !dbg !1118
  br label %sw.epilog, !dbg !1119

sw.bb3:                                           ; preds = %if.end
  %7 = load ptr, ptr %gpe_event_info, align 8, !dbg !1120
  %call4 = call i32 @acpi_hw_low_set_gpe(ptr noundef %7, i32 noundef 1) #14, !dbg !1121
  store i32 %call4, ptr %status, align 4, !dbg !1122
  %8 = load ptr, ptr %gpe_event_info, align 8, !dbg !1123
  %disable_for_dispatch5 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %8, i32 0, i32 5, !dbg !1124
  store i8 1, ptr %disable_for_dispatch5, align 1, !dbg !1125
  br label %sw.epilog, !dbg !1126

sw.default:                                       ; preds = %if.end
  store i32 4097, ptr %status, align 4, !dbg !1127
  br label %sw.epilog, !dbg !1128

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %unlock_and_exit, !dbg !1129

unlock_and_exit:                                  ; preds = %sw.epilog, %if.then
  call void @llvm.dbg.label(metadata !1087), !dbg !1130
  %9 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1131
  %10 = load i64, ptr %flags, align 8, !dbg !1132
  call void @acpi_os_release_lock(ptr noundef %9, i64 noundef %10) #14, !dbg !1133
  %11 = load i32, ptr %status, align 4, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1135
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1135
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1135
  ret i32 %11, !dbg !1134
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1136 dso_local i32 @acpi_hw_low_set_gpe(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_mask_gpe(ptr noundef %gpe_device, i32 noundef %gpe_number, i8 noundef zeroext %is_masked) #0 align 16 !dbg !1140 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %is_masked.addr = alloca i8, align 1
  %gpe_event_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1142, metadata !DIExpression()), !dbg !1149
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1143, metadata !DIExpression()), !dbg !1150
  store i8 %is_masked, ptr %is_masked.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_masked.addr, metadata !1144, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1145, metadata !DIExpression()), !dbg !1153
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1154
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1146, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1156
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1147, metadata !DIExpression()), !dbg !1157
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1158
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1159
  store i64 %call, ptr %flags, align 8, !dbg !1160
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1161
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1162
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !1163
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1164
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1165
  %tobool = icmp ne ptr %3, null, !dbg !1165
  br i1 %tobool, label %if.end, label %if.then, !dbg !1167

if.then:                                          ; preds = %entry
  store i32 4097, ptr %status, align 4, !dbg !1168
  br label %unlock_and_exit, !dbg !1170

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !1171
  %5 = load i8, ptr %is_masked.addr, align 1, !dbg !1172
  %call2 = call i32 @acpi_ev_mask_gpe(ptr noundef %4, i8 noundef zeroext %5) #14, !dbg !1173
  store i32 %call2, ptr %status, align 4, !dbg !1174
  br label %unlock_and_exit, !dbg !1175

unlock_and_exit:                                  ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1148), !dbg !1176
  %6 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1177
  %7 = load i64, ptr %flags, align 8, !dbg !1178
  call void @acpi_os_release_lock(ptr noundef %6, i64 noundef %7) #14, !dbg !1179
  %8 = load i32, ptr %status, align 4, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1181
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1181
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1181
  ret i32 %8, !dbg !1180
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1182 dso_local i32 @acpi_ev_mask_gpe(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_mark_gpe_for_wake(ptr noundef %gpe_device, i32 noundef %gpe_number) #0 align 16 !dbg !1183 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1185, metadata !DIExpression()), !dbg !1190
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1187, metadata !DIExpression()), !dbg !1193
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1194
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1188, metadata !DIExpression()), !dbg !1195
  store i32 4097, ptr %status, align 4, !dbg !1195
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1189, metadata !DIExpression()), !dbg !1197
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1198
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1199
  store i64 %call, ptr %flags, align 8, !dbg !1200
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1201
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1202
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !1203
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1204
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1205
  %tobool = icmp ne ptr %3, null, !dbg !1205
  br i1 %tobool, label %if.then, label %if.end, !dbg !1207

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !1208
  %flags2 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %4, i32 0, i32 2, !dbg !1210
  %5 = load i8, ptr %flags2, align 8, !dbg !1211
  %conv = zext i8 %5 to i32, !dbg !1211
  %or = or i32 %conv, 16, !dbg !1211
  %conv3 = trunc i32 %or to i8, !dbg !1211
  store i8 %conv3, ptr %flags2, align 8, !dbg !1211
  store i32 0, ptr %status, align 4, !dbg !1212
  br label %if.end, !dbg !1213

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1214
  %7 = load i64, ptr %flags, align 8, !dbg !1215
  call void @acpi_os_release_lock(ptr noundef %6, i64 noundef %7) #14, !dbg !1216
  %8 = load i32, ptr %status, align 4, !dbg !1217
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1218
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1218
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1218
  ret i32 %8, !dbg !1217
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_setup_gpe_for_wake(ptr noundef %wake_device, ptr noundef %gpe_device, i32 noundef %gpe_number) #0 align 16 !dbg !1219 {
entry:
  %retval = alloca i32, align 4
  %wake_device.addr = alloca ptr, align 8
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %device_node = alloca ptr, align 8
  %notify = alloca ptr, align 8
  %new_notify = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wake_device, ptr %wake_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wake_device.addr, metadata !1223, metadata !DIExpression()), !dbg !1233
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1224, metadata !DIExpression()), !dbg !1234
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1225, metadata !DIExpression()), !dbg !1235
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1226, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1238
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1227, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 8, ptr %device_node) #13, !dbg !1240
  call void @llvm.dbg.declare(metadata ptr %device_node, metadata !1228, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.start.p0(i64 8, ptr %notify) #13, !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %notify, metadata !1229, metadata !DIExpression()), !dbg !1243
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_notify) #13, !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %new_notify, metadata !1230, metadata !DIExpression()), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1231, metadata !DIExpression()), !dbg !1247
  %0 = load ptr, ptr %wake_device.addr, align 8, !dbg !1248
  %tobool = icmp ne ptr %0, null, !dbg !1248
  br i1 %tobool, label %if.end, label %if.then, !dbg !1250

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1251

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %wake_device.addr, align 8, !dbg !1253
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !1255
  br i1 %cmp, label %if.then1, label %if.else, !dbg !1256

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1257
  store ptr %2, ptr %device_node, align 8, !dbg !1259
  br label %if.end2, !dbg !1260

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %wake_device.addr, align 8, !dbg !1261
  %4 = ptrtoint ptr %3 to i64, !dbg !1261
  %5 = inttoptr i64 %4 to ptr, !dbg !1261
  store ptr %5, ptr %device_node, align 8, !dbg !1263
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %6 = load ptr, ptr %device_node, align 8, !dbg !1264
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 2, !dbg !1266
  %7 = load i8, ptr %type, align 1, !dbg !1266
  %conv = zext i8 %7 to i32, !dbg !1264
  %cmp3 = icmp ne i32 %conv, 6, !dbg !1267
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1268

if.then5:                                         ; preds = %if.end2
  store i32 4097, ptr %retval, align 4, !dbg !1269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1269

if.end6:                                          ; preds = %if.end2
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 16) #14, !dbg !1271
  store ptr %call, ptr %new_notify, align 8, !dbg !1272
  %8 = load ptr, ptr %new_notify, align 8, !dbg !1273
  %tobool7 = icmp ne ptr %8, null, !dbg !1273
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1275

if.then8:                                         ; preds = %if.end6
  store i32 4, ptr %retval, align 4, !dbg !1276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1276

if.end9:                                          ; preds = %if.end6
  %9 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1278
  %call10 = call i64 @acpi_os_acquire_lock(ptr noundef %9) #14, !dbg !1279
  store i64 %call10, ptr %flags, align 8, !dbg !1280
  %10 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1281
  %11 = load i32, ptr %gpe_number.addr, align 4, !dbg !1282
  %call11 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %10, i32 noundef %11) #14, !dbg !1283
  store ptr %call11, ptr %gpe_event_info, align 8, !dbg !1284
  %12 = load ptr, ptr %gpe_event_info, align 8, !dbg !1285
  %tobool12 = icmp ne ptr %12, null, !dbg !1285
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1287

if.then13:                                        ; preds = %if.end9
  store i32 4097, ptr %status, align 4, !dbg !1288
  br label %unlock_and_exit, !dbg !1290

if.end14:                                         ; preds = %if.end9
  %13 = load ptr, ptr %gpe_event_info, align 8, !dbg !1291
  %flags15 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %13, i32 0, i32 2, !dbg !1291
  %14 = load i8, ptr %flags15, align 8, !dbg !1291
  %conv16 = zext i8 %14 to i32, !dbg !1291
  %and = and i32 %conv16, 7, !dbg !1291
  %conv17 = trunc i32 %and to i8, !dbg !1291
  %conv18 = zext i8 %conv17 to i32, !dbg !1291
  %cmp19 = icmp eq i32 %conv18, 0, !dbg !1293
  br i1 %cmp19, label %if.then21, label %if.else23, !dbg !1294

if.then21:                                        ; preds = %if.end14
  %15 = load ptr, ptr %gpe_event_info, align 8, !dbg !1295
  %flags22 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %15, i32 0, i32 2, !dbg !1297
  store i8 11, ptr %flags22, align 8, !dbg !1298
  br label %if.end35, !dbg !1299

if.else23:                                        ; preds = %if.end14
  %16 = load ptr, ptr %gpe_event_info, align 8, !dbg !1300
  %flags24 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %16, i32 0, i32 2, !dbg !1302
  %17 = load i8, ptr %flags24, align 8, !dbg !1302
  %conv25 = zext i8 %17 to i32, !dbg !1300
  %and26 = and i32 %conv25, 32, !dbg !1303
  %tobool27 = icmp ne i32 %and26, 0, !dbg !1303
  br i1 %tobool27, label %if.then28, label %if.end34, !dbg !1304

if.then28:                                        ; preds = %if.else23
  %18 = load ptr, ptr %gpe_event_info, align 8, !dbg !1305
  %call29 = call i32 @acpi_ev_remove_gpe_reference(ptr noundef %18) #14, !dbg !1307
  %19 = load ptr, ptr %gpe_event_info, align 8, !dbg !1308
  %flags30 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %19, i32 0, i32 2, !dbg !1309
  %20 = load i8, ptr %flags30, align 8, !dbg !1310
  %conv31 = zext i8 %20 to i32, !dbg !1310
  %and32 = and i32 %conv31, -33, !dbg !1310
  %conv33 = trunc i32 %and32 to i8, !dbg !1310
  store i8 %conv33, ptr %flags30, align 8, !dbg !1310
  br label %if.end34, !dbg !1311

if.end34:                                         ; preds = %if.then28, %if.else23
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then21
  %21 = load ptr, ptr %gpe_event_info, align 8, !dbg !1312
  %flags36 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %21, i32 0, i32 2, !dbg !1312
  %22 = load i8, ptr %flags36, align 8, !dbg !1312
  %conv37 = zext i8 %22 to i32, !dbg !1312
  %and38 = and i32 %conv37, 7, !dbg !1312
  %conv39 = trunc i32 %and38 to i8, !dbg !1312
  %conv40 = zext i8 %conv39 to i32, !dbg !1312
  %cmp41 = icmp eq i32 %conv40, 3, !dbg !1314
  br i1 %cmp41, label %if.then43, label %if.end54, !dbg !1315

if.then43:                                        ; preds = %if.end35
  %23 = load ptr, ptr %gpe_event_info, align 8, !dbg !1316
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %23, i32 0, i32 0, !dbg !1318
  %24 = load ptr, ptr %dispatch, align 8, !dbg !1319
  store ptr %24, ptr %notify, align 8, !dbg !1320
  br label %while.cond, !dbg !1321

while.cond:                                       ; preds = %if.end49, %if.then43
  %25 = load ptr, ptr %notify, align 8, !dbg !1322
  %tobool44 = icmp ne ptr %25, null, !dbg !1321
  br i1 %tobool44, label %while.body, label %while.end, !dbg !1321

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %notify, align 8, !dbg !1323
  %device_node45 = getelementptr inbounds %struct.acpi_gpe_notify_info, ptr %26, i32 0, i32 0, !dbg !1326
  %27 = load ptr, ptr %device_node45, align 8, !dbg !1326
  %28 = load ptr, ptr %device_node, align 8, !dbg !1327
  %cmp46 = icmp eq ptr %27, %28, !dbg !1328
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !1329

if.then48:                                        ; preds = %while.body
  store i32 7, ptr %status, align 4, !dbg !1330
  br label %unlock_and_exit, !dbg !1332

if.end49:                                         ; preds = %while.body
  %29 = load ptr, ptr %notify, align 8, !dbg !1333
  %next = getelementptr inbounds %struct.acpi_gpe_notify_info, ptr %29, i32 0, i32 1, !dbg !1334
  %30 = load ptr, ptr %next, align 8, !dbg !1334
  store ptr %30, ptr %notify, align 8, !dbg !1335
  br label %while.cond, !dbg !1321, !llvm.loop !1336

while.end:                                        ; preds = %while.cond
  %31 = load ptr, ptr %device_node, align 8, !dbg !1340
  %32 = load ptr, ptr %new_notify, align 8, !dbg !1341
  %device_node50 = getelementptr inbounds %struct.acpi_gpe_notify_info, ptr %32, i32 0, i32 0, !dbg !1342
  store ptr %31, ptr %device_node50, align 8, !dbg !1343
  %33 = load ptr, ptr %gpe_event_info, align 8, !dbg !1344
  %dispatch51 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %33, i32 0, i32 0, !dbg !1345
  %34 = load ptr, ptr %dispatch51, align 8, !dbg !1346
  %35 = load ptr, ptr %new_notify, align 8, !dbg !1347
  %next52 = getelementptr inbounds %struct.acpi_gpe_notify_info, ptr %35, i32 0, i32 1, !dbg !1348
  store ptr %34, ptr %next52, align 8, !dbg !1349
  %36 = load ptr, ptr %new_notify, align 8, !dbg !1350
  %37 = load ptr, ptr %gpe_event_info, align 8, !dbg !1351
  %dispatch53 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %37, i32 0, i32 0, !dbg !1352
  store ptr %36, ptr %dispatch53, align 8, !dbg !1353
  store ptr null, ptr %new_notify, align 8, !dbg !1354
  br label %if.end54, !dbg !1355

if.end54:                                         ; preds = %while.end, %if.end35
  %38 = load ptr, ptr %gpe_event_info, align 8, !dbg !1356
  %flags55 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %38, i32 0, i32 2, !dbg !1357
  %39 = load i8, ptr %flags55, align 8, !dbg !1358
  %conv56 = zext i8 %39 to i32, !dbg !1358
  %or = or i32 %conv56, 16, !dbg !1358
  %conv57 = trunc i32 %or to i8, !dbg !1358
  store i8 %conv57, ptr %flags55, align 8, !dbg !1358
  store i32 0, ptr %status, align 4, !dbg !1359
  br label %unlock_and_exit, !dbg !1360

unlock_and_exit:                                  ; preds = %if.end54, %if.then48, %if.then13
  call void @llvm.dbg.label(metadata !1232), !dbg !1361
  %40 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1362
  %41 = load i64, ptr %flags, align 8, !dbg !1363
  call void @acpi_os_release_lock(ptr noundef %40, i64 noundef %41) #14, !dbg !1364
  %42 = load ptr, ptr %new_notify, align 8, !dbg !1365
  %tobool58 = icmp ne ptr %42, null, !dbg !1365
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !1367

if.then59:                                        ; preds = %unlock_and_exit
  %43 = load ptr, ptr %new_notify, align 8, !dbg !1368
  call void @acpi_os_free(ptr noundef %43) #14, !dbg !1368
  br label %if.end60, !dbg !1370

if.end60:                                         ; preds = %if.then59, %unlock_and_exit
  %44 = load i32, ptr %status, align 4, !dbg !1371
  store i32 %44, ptr %retval, align 4, !dbg !1371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1371

cleanup:                                          ; preds = %if.end60, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_notify) #13, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 8, ptr %notify) #13, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 8, ptr %device_node) #13, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1372
  %45 = load i32, ptr %retval, align 4, !dbg !1372
  ret i32 %45, !dbg !1372
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1373 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1378, metadata !DIExpression()), !dbg !1389
  %0 = load i64, ptr %size.addr, align 8, !dbg !1390
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1391
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1379, metadata !DIExpression()), !dbg !1391
  br label %do.body, !dbg !1391

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1392
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1381, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1392
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1384, metadata !DIExpression()), !dbg !1392
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1392
  %conv = zext i1 %cmp to i32, !dbg !1392
  store i32 1, ptr %tmp, align 4, !dbg !1392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1393
  %1 = load i32, ptr %tmp, align 4, !dbg !1392
  %call = call i64 @arch_local_save_flags() #14, !dbg !1393
  store i64 %call, ptr %_flags, align 8, !dbg !1393
  br label %do.cond, !dbg !1393

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1393

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1394
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1385, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1394
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1388, metadata !DIExpression()), !dbg !1394
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1394
  %conv6 = zext i1 %cmp5 to i32, !dbg !1394
  store i32 1, ptr %tmp7, align 4, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1395
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1395
  %2 = load i32, ptr %tmp7, align 4, !dbg !1394
  %3 = load i64, ptr %_flags, align 8, !dbg !1395
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1395
  store i32 %call9, ptr %tmp8, align 4, !dbg !1395
  %4 = load i32, ptr %tmp8, align 4, !dbg !1395
  store i32 %4, ptr %tmp1, align 4, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1396
  %5 = load i32, ptr %tmp1, align 4, !dbg !1391
  %tobool = icmp ne i32 %5, 0, !dbg !1396
  %6 = zext i1 %tobool to i64, !dbg !1396
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1396
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1397
  ret ptr %call10, !dbg !1398
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1399 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1403, metadata !DIExpression()), !dbg !1404
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1405
  call void @kfree(ptr noundef %0) #14, !dbg !1406
  ret void, !dbg !1407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_set_gpe_wake_mask(ptr noundef %gpe_device, i32 noundef %gpe_number, i8 noundef zeroext %action) #0 align 16 !dbg !1408 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %action.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %gpe_register_info = alloca ptr, align 8
  %flags = alloca i64, align 8
  %register_bit = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1410, metadata !DIExpression()), !dbg !1419
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1411, metadata !DIExpression()), !dbg !1420
  store i8 %action, ptr %action.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !1412, metadata !DIExpression()), !dbg !1421
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1422
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1413, metadata !DIExpression()), !dbg !1423
  store i32 0, ptr %status, align 4, !dbg !1423
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1424
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1414, metadata !DIExpression()), !dbg !1425
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #13, !dbg !1426
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !1415, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1416, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_bit) #13, !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %register_bit, metadata !1417, metadata !DIExpression()), !dbg !1431
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1432
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1433
  store i64 %call, ptr %flags, align 8, !dbg !1434
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1435
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1436
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !1437
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1438
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1439
  %tobool = icmp ne ptr %3, null, !dbg !1439
  br i1 %tobool, label %if.end, label %if.then, !dbg !1441

if.then:                                          ; preds = %entry
  store i32 4097, ptr %status, align 4, !dbg !1442
  br label %unlock_and_exit, !dbg !1444

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !1445
  %flags2 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %4, i32 0, i32 2, !dbg !1447
  %5 = load i8, ptr %flags2, align 8, !dbg !1447
  %conv = zext i8 %5 to i32, !dbg !1445
  %and = and i32 %conv, 16, !dbg !1448
  %tobool3 = icmp ne i32 %and, 0, !dbg !1448
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1449

if.then4:                                         ; preds = %if.end
  store i32 8, ptr %status, align 4, !dbg !1450
  br label %unlock_and_exit, !dbg !1452

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %gpe_event_info, align 8, !dbg !1453
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %6, i32 0, i32 1, !dbg !1454
  %7 = load ptr, ptr %register_info, align 8, !dbg !1454
  store ptr %7, ptr %gpe_register_info, align 8, !dbg !1455
  %8 = load ptr, ptr %gpe_register_info, align 8, !dbg !1456
  %tobool6 = icmp ne ptr %8, null, !dbg !1456
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1458

if.then7:                                         ; preds = %if.end5
  store i32 6, ptr %status, align 4, !dbg !1459
  br label %unlock_and_exit, !dbg !1461

if.end8:                                          ; preds = %if.end5
  %9 = load ptr, ptr %gpe_event_info, align 8, !dbg !1462
  %call9 = call i32 @acpi_hw_get_gpe_register_bit(ptr noundef %9) #14, !dbg !1463
  store i32 %call9, ptr %register_bit, align 4, !dbg !1464
  %10 = load i8, ptr %action.addr, align 1, !dbg !1465
  %conv10 = zext i8 %10 to i32, !dbg !1465
  switch i32 %conv10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
  ], !dbg !1466

sw.bb:                                            ; preds = %if.end8
  %11 = load i32, ptr %register_bit, align 4, !dbg !1467
  %conv11 = trunc i32 %11 to i8, !dbg !1467
  %conv12 = zext i8 %conv11 to i32, !dbg !1467
  %12 = load ptr, ptr %gpe_register_info, align 8, !dbg !1467
  %enable_for_wake = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %12, i32 0, i32 3, !dbg !1467
  %13 = load i8, ptr %enable_for_wake, align 2, !dbg !1467
  %conv13 = zext i8 %13 to i32, !dbg !1467
  %or = or i32 %conv13, %conv12, !dbg !1467
  %conv14 = trunc i32 %or to i8, !dbg !1467
  store i8 %conv14, ptr %enable_for_wake, align 2, !dbg !1467
  br label %sw.epilog, !dbg !1469

sw.bb15:                                          ; preds = %if.end8
  %14 = load i32, ptr %register_bit, align 4, !dbg !1470
  %conv16 = trunc i32 %14 to i8, !dbg !1470
  %conv17 = zext i8 %conv16 to i32, !dbg !1470
  %not = xor i32 %conv17, -1, !dbg !1470
  %15 = load ptr, ptr %gpe_register_info, align 8, !dbg !1470
  %enable_for_wake18 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %15, i32 0, i32 3, !dbg !1470
  %16 = load i8, ptr %enable_for_wake18, align 2, !dbg !1470
  %conv19 = zext i8 %16 to i32, !dbg !1470
  %and20 = and i32 %conv19, %not, !dbg !1470
  %conv21 = trunc i32 %and20 to i8, !dbg !1470
  store i8 %conv21, ptr %enable_for_wake18, align 2, !dbg !1470
  br label %sw.epilog, !dbg !1471

sw.default:                                       ; preds = %if.end8
  %17 = load i8, ptr %action.addr, align 1, !dbg !1472
  %conv22 = zext i8 %17 to i32, !dbg !1472
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 544, ptr noundef @.str, i32 noundef %conv22) #14, !dbg !1472
  store i32 4097, ptr %status, align 4, !dbg !1473
  br label %sw.epilog, !dbg !1474

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb
  br label %unlock_and_exit, !dbg !1475

unlock_and_exit:                                  ; preds = %sw.epilog, %if.then7, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !1418), !dbg !1476
  %18 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1477
  %19 = load i64, ptr %flags, align 8, !dbg !1478
  call void @acpi_os_release_lock(ptr noundef %18, i64 noundef %19) #14, !dbg !1479
  %20 = load i32, ptr %status, align 4, !dbg !1480
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_bit) #13, !dbg !1481
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1481
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #13, !dbg !1481
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1481
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1481
  ret i32 %20, !dbg !1480
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1482 dso_local i32 @acpi_hw_get_gpe_register_bit(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1485 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_clear_gpe(ptr noundef %gpe_device, i32 noundef %gpe_number) #0 align 16 !dbg !1490 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1492, metadata !DIExpression()), !dbg !1498
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1493, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1494, metadata !DIExpression()), !dbg !1501
  store i32 0, ptr %status, align 4, !dbg !1501
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1502
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1495, metadata !DIExpression()), !dbg !1503
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1504
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1496, metadata !DIExpression()), !dbg !1505
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1506
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1507
  store i64 %call, ptr %flags, align 8, !dbg !1508
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1509
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1510
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !1511
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1512
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1513
  %tobool = icmp ne ptr %3, null, !dbg !1513
  br i1 %tobool, label %if.end, label %if.then, !dbg !1515

if.then:                                          ; preds = %entry
  store i32 4097, ptr %status, align 4, !dbg !1516
  br label %unlock_and_exit, !dbg !1518

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !1519
  %call2 = call i32 @acpi_hw_clear_gpe(ptr noundef %4) #14, !dbg !1520
  store i32 %call2, ptr %status, align 4, !dbg !1521
  br label %unlock_and_exit, !dbg !1522

unlock_and_exit:                                  ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1497), !dbg !1523
  %5 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1524
  %6 = load i64, ptr %flags, align 8, !dbg !1525
  call void @acpi_os_release_lock(ptr noundef %5, i64 noundef %6) #14, !dbg !1526
  %7 = load i32, ptr %status, align 4, !dbg !1527
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1528
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1528
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1528
  ret i32 %7, !dbg !1527
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1529 dso_local i32 @acpi_hw_clear_gpe(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_gpe_status(ptr noundef %gpe_device, i32 noundef %gpe_number, ptr noundef %event_status) #0 align 16 !dbg !1530 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %event_status.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1536, metadata !DIExpression()), !dbg !1543
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1537, metadata !DIExpression()), !dbg !1544
  store ptr %event_status, ptr %event_status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event_status.addr, metadata !1538, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1539, metadata !DIExpression()), !dbg !1547
  store i32 0, ptr %status, align 4, !dbg !1547
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1548
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1540, metadata !DIExpression()), !dbg !1549
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1541, metadata !DIExpression()), !dbg !1551
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1552
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1553
  store i64 %call, ptr %flags, align 8, !dbg !1554
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1555
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1556
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !1557
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1558
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1559
  %tobool = icmp ne ptr %3, null, !dbg !1559
  br i1 %tobool, label %if.end, label %if.then, !dbg !1561

if.then:                                          ; preds = %entry
  store i32 4097, ptr %status, align 4, !dbg !1562
  br label %unlock_and_exit, !dbg !1564

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !1565
  %5 = load ptr, ptr %event_status.addr, align 8, !dbg !1566
  %call2 = call i32 @acpi_hw_get_gpe_status(ptr noundef %4, ptr noundef %5) #14, !dbg !1567
  store i32 %call2, ptr %status, align 4, !dbg !1568
  br label %unlock_and_exit, !dbg !1569

unlock_and_exit:                                  ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1542), !dbg !1570
  %6 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1571
  %7 = load i64, ptr %flags, align 8, !dbg !1572
  call void @acpi_os_release_lock(ptr noundef %6, i64 noundef %7) #14, !dbg !1573
  %8 = load i32, ptr %status, align 4, !dbg !1574
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1575
  ret i32 %8, !dbg !1574
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1576 dso_local i32 @acpi_hw_get_gpe_status(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dispatch_gpe(ptr noundef %gpe_device, i32 noundef %gpe_number) #0 align 16 !dbg !1579 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1583, metadata !DIExpression()), !dbg !1585
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1584, metadata !DIExpression()), !dbg !1586
  %0 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1587
  %1 = load i32, ptr %gpe_number.addr, align 4, !dbg !1588
  %call = call i32 @acpi_ev_detect_gpe(ptr noundef %0, ptr noundef null, i32 noundef %1) #14, !dbg !1589
  ret i32 %call, !dbg !1590
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_finish_gpe(ptr noundef %gpe_device, i32 noundef %gpe_number) #0 align 16 !dbg !1591 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1593, metadata !DIExpression()), !dbg !1599
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1594, metadata !DIExpression()), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1601
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1595, metadata !DIExpression()), !dbg !1602
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1603
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1596, metadata !DIExpression()), !dbg !1604
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1605
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1597, metadata !DIExpression()), !dbg !1606
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1607
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1608
  store i64 %call, ptr %flags, align 8, !dbg !1609
  %1 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1610
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1611
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #14, !dbg !1612
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1613
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1614
  %tobool = icmp ne ptr %3, null, !dbg !1614
  br i1 %tobool, label %if.end, label %if.then, !dbg !1616

if.then:                                          ; preds = %entry
  store i32 4097, ptr %status, align 4, !dbg !1617
  br label %unlock_and_exit, !dbg !1619

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !1620
  %call2 = call i32 @acpi_ev_finish_gpe(ptr noundef %4) #14, !dbg !1621
  store i32 %call2, ptr %status, align 4, !dbg !1622
  br label %unlock_and_exit, !dbg !1623

unlock_and_exit:                                  ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1598), !dbg !1624
  %5 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1625
  %6 = load i64, ptr %flags, align 8, !dbg !1626
  call void @acpi_os_release_lock(ptr noundef %5, i64 noundef %6) #14, !dbg !1627
  %7 = load i32, ptr %status, align 4, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1629
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1629
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1629
  ret i32 %7, !dbg !1628
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1630 dso_local i32 @acpi_ev_finish_gpe(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_disable_all_gpes() #0 align 16 !dbg !1631 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1634
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1633, metadata !DIExpression()), !dbg !1635
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !1636
  store i32 %call, ptr %status, align 4, !dbg !1637
  %0 = load i32, ptr %status, align 4, !dbg !1638
  %tobool = icmp ne i32 %0, 0, !dbg !1638
  br i1 %tobool, label %if.then, label %if.end, !dbg !1640

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !1641
  store i32 %1, ptr %retval, align 4, !dbg !1641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1641

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_disable_all_gpes() #14, !dbg !1643
  store i32 %call1, ptr %status, align 4, !dbg !1644
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !1645
  %2 = load i32, ptr %status, align 4, !dbg !1646
  store i32 %2, ptr %retval, align 4, !dbg !1646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1646

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1647
  %3 = load i32, ptr %retval, align 4, !dbg !1647
  ret i32 %3, !dbg !1647
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1648 dso_local i32 @acpi_hw_disable_all_gpes() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enable_all_runtime_gpes() #0 align 16 !dbg !1649 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1652
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1651, metadata !DIExpression()), !dbg !1653
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !1654
  store i32 %call, ptr %status, align 4, !dbg !1655
  %0 = load i32, ptr %status, align 4, !dbg !1656
  %tobool = icmp ne i32 %0, 0, !dbg !1656
  br i1 %tobool, label %if.then, label %if.end, !dbg !1658

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !1659
  store i32 %1, ptr %retval, align 4, !dbg !1659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1659

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_enable_all_runtime_gpes() #14, !dbg !1661
  store i32 %call1, ptr %status, align 4, !dbg !1662
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !1663
  %2 = load i32, ptr %status, align 4, !dbg !1664
  store i32 %2, ptr %retval, align 4, !dbg !1664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1664

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1665
  %3 = load i32, ptr %retval, align 4, !dbg !1665
  ret i32 %3, !dbg !1665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1666 dso_local i32 @acpi_hw_enable_all_runtime_gpes() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enable_all_wakeup_gpes() #0 align 16 !dbg !1667 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1670
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1669, metadata !DIExpression()), !dbg !1671
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !1672
  store i32 %call, ptr %status, align 4, !dbg !1673
  %0 = load i32, ptr %status, align 4, !dbg !1674
  %tobool = icmp ne i32 %0, 0, !dbg !1674
  br i1 %tobool, label %if.then, label %if.end, !dbg !1676

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !1677
  store i32 %1, ptr %retval, align 4, !dbg !1677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1677

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_enable_all_wakeup_gpes() #14, !dbg !1679
  store i32 %call1, ptr %status, align 4, !dbg !1680
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !1681
  %2 = load i32, ptr %status, align 4, !dbg !1682
  store i32 %2, ptr %retval, align 4, !dbg !1682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1682

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1683
  %3 = load i32, ptr %retval, align 4, !dbg !1683
  ret i32 %3, !dbg !1683
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1684 dso_local i32 @acpi_hw_enable_all_wakeup_gpes() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_any_gpe_status_set(i32 noundef %gpe_skip_number) #0 align 16 !dbg !1685 {
entry:
  %retval = alloca i32, align 4
  %gpe_skip_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_device = alloca ptr, align 8
  %ret = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gpe_skip_number, ptr %gpe_skip_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_skip_number.addr, metadata !1689, metadata !DIExpression()), !dbg !1693
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1690, metadata !DIExpression()), !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_device) #13, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %gpe_device, metadata !1691, metadata !DIExpression()), !dbg !1697
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #13, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1692, metadata !DIExpression()), !dbg !1699
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !1700
  store i32 %call, ptr %status, align 4, !dbg !1701
  %0 = load i32, ptr %status, align 4, !dbg !1702
  %tobool = icmp ne i32 %0, 0, !dbg !1702
  br i1 %tobool, label %if.then, label %if.end, !dbg !1704

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1705

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %gpe_skip_number.addr, align 4, !dbg !1707
  %call1 = call i32 @acpi_get_gpe_device(i32 noundef %1, ptr noundef %gpe_device) #14, !dbg !1708
  store i32 %call1, ptr %status, align 4, !dbg !1709
  %2 = load i32, ptr %status, align 4, !dbg !1710
  %tobool2 = icmp ne i32 %2, 0, !dbg !1710
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1712

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %gpe_device, align 8, !dbg !1713
  br label %if.end4, !dbg !1715

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load ptr, ptr %gpe_device, align 8, !dbg !1716
  %4 = load i32, ptr %gpe_skip_number.addr, align 4, !dbg !1717
  %call5 = call zeroext i8 @acpi_hw_check_all_gpes(ptr noundef %3, i32 noundef %4) #14, !dbg !1718
  store i8 %call5, ptr %ret, align 1, !dbg !1719
  %call6 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !1720
  %5 = load i8, ptr %ret, align 1, !dbg !1721
  %conv = zext i8 %5 to i32, !dbg !1722
  store i32 %conv, ptr %retval, align 4, !dbg !1723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1723

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #13, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_device) #13, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1724
  %6 = load i32, ptr %retval, align 4, !dbg !1724
  ret i32 %6, !dbg !1724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_gpe_device(i32 noundef %index, ptr noundef %gpe_device) #0 align 16 !dbg !1725 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %gpe_device.addr = alloca ptr, align 8
  %info = alloca %struct.acpi_gpe_device_info, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1729, metadata !DIExpression()), !dbg !1739
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1730, metadata !DIExpression()), !dbg !1740
  call void @llvm.lifetime.start.p0(i64 24, ptr %info) #13, !dbg !1741
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1731, metadata !DIExpression()), !dbg !1742
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1743
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1738, metadata !DIExpression()), !dbg !1744
  %0 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1745
  %tobool = icmp ne ptr %0, null, !dbg !1745
  br i1 %tobool, label %if.end, label %if.then, !dbg !1747

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1748

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %index.addr, align 4, !dbg !1750
  %2 = load i32, ptr @acpi_current_gpe_count, align 4, !dbg !1752
  %cmp = icmp uge i32 %1, %2, !dbg !1753
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1754

if.then1:                                         ; preds = %if.end
  store i32 6, ptr %retval, align 4, !dbg !1755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1755

if.end2:                                          ; preds = %if.end
  %3 = load i32, ptr %index.addr, align 4, !dbg !1757
  %index3 = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %info, i32 0, i32 0, !dbg !1758
  store i32 %3, ptr %index3, align 8, !dbg !1759
  %status4 = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %info, i32 0, i32 2, !dbg !1760
  store i32 6, ptr %status4, align 8, !dbg !1761
  %gpe_device5 = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %info, i32 0, i32 3, !dbg !1762
  store ptr null, ptr %gpe_device5, align 8, !dbg !1763
  %next_block_base_index = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %info, i32 0, i32 1, !dbg !1764
  store i32 0, ptr %next_block_base_index, align 4, !dbg !1765
  %call = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_ev_get_gpe_device, ptr noundef %info) #14, !dbg !1766
  store i32 %call, ptr %status, align 4, !dbg !1767
  %4 = load i32, ptr %status, align 4, !dbg !1768
  %tobool6 = icmp ne i32 %4, 0, !dbg !1768
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1770

if.then7:                                         ; preds = %if.end2
  %5 = load i32, ptr %status, align 4, !dbg !1771
  store i32 %5, ptr %retval, align 4, !dbg !1771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1771

if.end8:                                          ; preds = %if.end2
  %gpe_device9 = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %info, i32 0, i32 3, !dbg !1773
  %6 = load ptr, ptr %gpe_device9, align 8, !dbg !1773
  %7 = ptrtoint ptr %6 to i64, !dbg !1773
  %8 = inttoptr i64 %7 to ptr, !dbg !1773
  %9 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1774
  store ptr %8, ptr %9, align 8, !dbg !1775
  %status10 = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %info, i32 0, i32 2, !dbg !1776
  %10 = load i32, ptr %status10, align 8, !dbg !1776
  store i32 %10, ptr %retval, align 4, !dbg !1776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1776

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 24, ptr %info) #13, !dbg !1777
  %11 = load i32, ptr %retval, align 4, !dbg !1777
  ret i32 %11, !dbg !1777
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1778 dso_local zeroext i8 @acpi_hw_check_all_gpes(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_gpe_block(ptr noundef %gpe_device, ptr noundef %gpe_block_address, i32 noundef %register_count, i32 noundef %interrupt_number) #0 align 16 !dbg !1781 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca ptr, align 8
  %gpe_block_address.addr = alloca ptr, align 8
  %register_count.addr = alloca i32, align 4
  %interrupt_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %gpe_block = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1793, metadata !DIExpression()), !dbg !1802
  store ptr %gpe_block_address, ptr %gpe_block_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block_address.addr, metadata !1794, metadata !DIExpression()), !dbg !1803
  store i32 %register_count, ptr %register_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %register_count.addr, metadata !1795, metadata !DIExpression()), !dbg !1804
  store i32 %interrupt_number, ptr %interrupt_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interrupt_number.addr, metadata !1796, metadata !DIExpression()), !dbg !1805
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1806
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1797, metadata !DIExpression()), !dbg !1807
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1808
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1798, metadata !DIExpression()), !dbg !1809
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1799, metadata !DIExpression()), !dbg !1811
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_block) #13, !dbg !1812
  call void @llvm.dbg.declare(metadata ptr %gpe_block, metadata !1800, metadata !DIExpression()), !dbg !1813
  %0 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1814
  %tobool = icmp ne ptr %0, null, !dbg !1814
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1816

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %gpe_block_address.addr, align 8, !dbg !1817
  %tobool1 = icmp ne ptr %1, null, !dbg !1817
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1818

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %register_count.addr, align 4, !dbg !1819
  %tobool3 = icmp ne i32 %2, 0, !dbg !1819
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1820

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1821

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1823
  store i32 %call, ptr %status, align 4, !dbg !1824
  %3 = load i32, ptr %status, align 4, !dbg !1825
  %tobool4 = icmp ne i32 %3, 0, !dbg !1825
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1827

if.then5:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !dbg !1828
  store i32 %4, ptr %retval, align 4, !dbg !1828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1828

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1830
  %call7 = call ptr @acpi_ns_validate_handle(ptr noundef %5) #14, !dbg !1831
  store ptr %call7, ptr %node, align 8, !dbg !1832
  %6 = load ptr, ptr %node, align 8, !dbg !1833
  %tobool8 = icmp ne ptr %6, null, !dbg !1833
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1835

if.then9:                                         ; preds = %if.end6
  store i32 4097, ptr %status, align 4, !dbg !1836
  br label %unlock_and_exit, !dbg !1838

if.end10:                                         ; preds = %if.end6
  %7 = load ptr, ptr %node, align 8, !dbg !1839
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 2, !dbg !1841
  %8 = load i8, ptr %type, align 1, !dbg !1841
  %conv = zext i8 %8 to i32, !dbg !1839
  %cmp = icmp ne i32 %conv, 6, !dbg !1842
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !1843

if.then12:                                        ; preds = %if.end10
  store i32 8, ptr %status, align 4, !dbg !1844
  br label %unlock_and_exit, !dbg !1846

if.end13:                                         ; preds = %if.end10
  %9 = load ptr, ptr %node, align 8, !dbg !1847
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 0, !dbg !1849
  %10 = load ptr, ptr %object, align 8, !dbg !1849
  %tobool14 = icmp ne ptr %10, null, !dbg !1847
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1850

if.then15:                                        ; preds = %if.end13
  store i32 7, ptr %status, align 4, !dbg !1851
  br label %unlock_and_exit, !dbg !1853

if.end16:                                         ; preds = %if.end13
  %11 = load ptr, ptr %node, align 8, !dbg !1854
  %12 = load ptr, ptr %gpe_block_address.addr, align 8, !dbg !1855
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %12, i32 0, i32 4, !dbg !1856
  %13 = load i64, ptr %address, align 1, !dbg !1856
  %14 = load ptr, ptr %gpe_block_address.addr, align 8, !dbg !1857
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %14, i32 0, i32 0, !dbg !1858
  %15 = load i8, ptr %space_id, align 1, !dbg !1858
  %16 = load i32, ptr %register_count.addr, align 4, !dbg !1859
  %17 = load i32, ptr %interrupt_number.addr, align 4, !dbg !1860
  %call17 = call i32 @acpi_ev_create_gpe_block(ptr noundef %11, i64 noundef %13, i8 noundef zeroext %15, i32 noundef %16, i16 noundef zeroext 0, i32 noundef %17, ptr noundef %gpe_block) #14, !dbg !1861
  store i32 %call17, ptr %status, align 4, !dbg !1862
  %18 = load i32, ptr %status, align 4, !dbg !1863
  %tobool18 = icmp ne i32 %18, 0, !dbg !1863
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1865

if.then19:                                        ; preds = %if.end16
  br label %unlock_and_exit, !dbg !1866

if.end20:                                         ; preds = %if.end16
  %19 = load ptr, ptr %node, align 8, !dbg !1868
  %call21 = call ptr @acpi_ns_get_attached_object(ptr noundef %19) #14, !dbg !1869
  store ptr %call21, ptr %obj_desc, align 8, !dbg !1870
  %20 = load ptr, ptr %obj_desc, align 8, !dbg !1871
  %tobool22 = icmp ne ptr %20, null, !dbg !1871
  br i1 %tobool22, label %if.end32, label %if.then23, !dbg !1873

if.then23:                                        ; preds = %if.end20
  %call24 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 912, i32 noundef 4, i32 noundef 6) #14, !dbg !1874
  store ptr %call24, ptr %obj_desc, align 8, !dbg !1876
  %21 = load ptr, ptr %obj_desc, align 8, !dbg !1877
  %tobool25 = icmp ne ptr %21, null, !dbg !1877
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1879

if.then26:                                        ; preds = %if.then23
  store i32 4, ptr %status, align 4, !dbg !1880
  br label %unlock_and_exit, !dbg !1882

if.end27:                                         ; preds = %if.then23
  %22 = load ptr, ptr %node, align 8, !dbg !1883
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !1884
  %call28 = call i32 @acpi_ns_attach_object(ptr noundef %22, ptr noundef %23, i32 noundef 6) #14, !dbg !1885
  store i32 %call28, ptr %status, align 4, !dbg !1886
  %24 = load ptr, ptr %obj_desc, align 8, !dbg !1887
  call void @acpi_ut_remove_reference(ptr noundef %24) #14, !dbg !1888
  %25 = load i32, ptr %status, align 4, !dbg !1889
  %tobool29 = icmp ne i32 %25, 0, !dbg !1889
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1891

if.then30:                                        ; preds = %if.end27
  br label %unlock_and_exit, !dbg !1892

if.end31:                                         ; preds = %if.end27
  br label %if.end32, !dbg !1894

if.end32:                                         ; preds = %if.end31, %if.end20
  %26 = load ptr, ptr %gpe_block, align 8, !dbg !1895
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !1896
  %gpe_block33 = getelementptr inbounds %struct.acpi_object_device, ptr %27, i32 0, i32 7, !dbg !1897
  store ptr %26, ptr %gpe_block33, align 8, !dbg !1898
  br label %unlock_and_exit, !dbg !1896

unlock_and_exit:                                  ; preds = %if.end32, %if.then30, %if.then26, %if.then19, %if.then15, %if.then12, %if.then9
  call void @llvm.dbg.label(metadata !1801), !dbg !1899
  %call34 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1900
  %28 = load i32, ptr %status, align 4, !dbg !1901
  store i32 %28, ptr %retval, align 4, !dbg !1901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1901

cleanup:                                          ; preds = %unlock_and_exit, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_block) #13, !dbg !1902
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1902
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1902
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1902
  %29 = load i32, ptr %retval, align 4, !dbg !1902
  ret i32 %29, !dbg !1902
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1903 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1907 dso_local i32 @acpi_ev_create_gpe_block(ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1911 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1914 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1918 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1921 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_remove_gpe_block(ptr noundef %gpe_device) #0 align 16 !dbg !1924 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1928, metadata !DIExpression()), !dbg !1933
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1934
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1929, metadata !DIExpression()), !dbg !1935
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1936
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1930, metadata !DIExpression()), !dbg !1937
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1938
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1931, metadata !DIExpression()), !dbg !1939
  %0 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1940
  %tobool = icmp ne ptr %0, null, !dbg !1940
  br i1 %tobool, label %if.end, label %if.then, !dbg !1942

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1943

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1945
  store i32 %call, ptr %status, align 4, !dbg !1946
  %1 = load i32, ptr %status, align 4, !dbg !1947
  %tobool1 = icmp ne i32 %1, 0, !dbg !1947
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1949

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !1950
  store i32 %2, ptr %retval, align 4, !dbg !1950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1950

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1952
  %call4 = call ptr @acpi_ns_validate_handle(ptr noundef %3) #14, !dbg !1953
  store ptr %call4, ptr %node, align 8, !dbg !1954
  %4 = load ptr, ptr %node, align 8, !dbg !1955
  %tobool5 = icmp ne ptr %4, null, !dbg !1955
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1957

if.then6:                                         ; preds = %if.end3
  store i32 4097, ptr %status, align 4, !dbg !1958
  br label %unlock_and_exit, !dbg !1960

if.end7:                                          ; preds = %if.end3
  %5 = load ptr, ptr %node, align 8, !dbg !1961
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %5, i32 0, i32 2, !dbg !1963
  %6 = load i8, ptr %type, align 1, !dbg !1963
  %conv = zext i8 %6 to i32, !dbg !1961
  %cmp = icmp ne i32 %conv, 6, !dbg !1964
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !1965

if.then9:                                         ; preds = %if.end7
  store i32 8, ptr %status, align 4, !dbg !1966
  br label %unlock_and_exit, !dbg !1968

if.end10:                                         ; preds = %if.end7
  %7 = load ptr, ptr %node, align 8, !dbg !1969
  %call11 = call ptr @acpi_ns_get_attached_object(ptr noundef %7) #14, !dbg !1970
  store ptr %call11, ptr %obj_desc, align 8, !dbg !1971
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1972
  %tobool12 = icmp ne ptr %8, null, !dbg !1972
  br i1 %tobool12, label %lor.lhs.false, label %if.then14, !dbg !1974

lor.lhs.false:                                    ; preds = %if.end10
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !1975
  %gpe_block = getelementptr inbounds %struct.acpi_object_device, ptr %9, i32 0, i32 7, !dbg !1976
  %10 = load ptr, ptr %gpe_block, align 8, !dbg !1976
  %tobool13 = icmp ne ptr %10, null, !dbg !1975
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1977

if.then14:                                        ; preds = %lor.lhs.false, %if.end10
  store i32 9, ptr %retval, align 4, !dbg !1978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1978

if.end15:                                         ; preds = %lor.lhs.false
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !1980
  %gpe_block16 = getelementptr inbounds %struct.acpi_object_device, ptr %11, i32 0, i32 7, !dbg !1981
  %12 = load ptr, ptr %gpe_block16, align 8, !dbg !1981
  %call17 = call i32 @acpi_ev_delete_gpe_block(ptr noundef %12) #14, !dbg !1982
  store i32 %call17, ptr %status, align 4, !dbg !1983
  %13 = load i32, ptr %status, align 4, !dbg !1984
  %tobool18 = icmp ne i32 %13, 0, !dbg !1984
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !1986

if.then19:                                        ; preds = %if.end15
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !1987
  %gpe_block20 = getelementptr inbounds %struct.acpi_object_device, ptr %14, i32 0, i32 7, !dbg !1989
  store ptr null, ptr %gpe_block20, align 8, !dbg !1990
  br label %if.end21, !dbg !1991

if.end21:                                         ; preds = %if.then19, %if.end15
  br label %unlock_and_exit, !dbg !1984

unlock_and_exit:                                  ; preds = %if.end21, %if.then9, %if.then6
  call void @llvm.dbg.label(metadata !1932), !dbg !1992
  %call22 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1993
  %15 = load i32, ptr %status, align 4, !dbg !1994
  store i32 %15, ptr %retval, align 4, !dbg !1994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1994

cleanup:                                          ; preds = %unlock_and_exit, %if.then14, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1995
  %16 = load i32, ptr %retval, align 4, !dbg !1995
  ret i32 %16, !dbg !1995
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1996 dso_local i32 @acpi_ev_delete_gpe_block(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_get_gpe_device(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1999 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2007, metadata !DIExpression()), !dbg !2009
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2008, metadata !DIExpression()), !dbg !2010
  %0 = load i64, ptr %size.addr, align 8, !dbg !2011
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2012
  %or = or i32 %1, 256, !dbg !2013
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !2014
  ret ptr %call, !dbg !2015
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !2016 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !2020
  ret i64 %call, !dbg !2021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !2022 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2026, metadata !DIExpression()), !dbg !2027
  %0 = load i64, ptr %flags.addr, align 8, !dbg !2028
  %and = and i64 %0, 512, !dbg !2029
  %tobool = icmp ne i64 %and, 0, !dbg !2030
  %lnot = xor i1 %tobool, true, !dbg !2030
  %lnot.ext = zext i1 %lnot to i32, !dbg !2030
  ret i32 %lnot.ext, !dbg !2031
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2032 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2034, metadata !DIExpression()), !dbg !2039
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2035, metadata !DIExpression()), !dbg !2040
  %0 = load i64, ptr %size.addr, align 8, !dbg !2041
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2042
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2043

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2044
  %tobool = icmp ne i64 %2, 0, !dbg !2044
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2045

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2036, metadata !DIExpression()), !dbg !2047
  %3 = load i64, ptr %size.addr, align 8, !dbg !2048
  %cmp = icmp ugt i64 %3, 8192, !dbg !2050
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2051

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2052
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2053
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2054
  store ptr %call, ptr %retval, align 8, !dbg !2055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2055

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2056
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2056
  store i32 %call2, ptr %index, align 4, !dbg !2057
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2058
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2059
  %9 = ptrtoint ptr %8 to i64, !dbg !2059
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2060
  %idxprom = zext i32 %call3 to i64, !dbg !2061
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2061
  %10 = load i32, ptr %index, align 4, !dbg !2062
  %idxprom4 = zext i32 %10 to i64, !dbg !2061
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2061
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2061
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2063
  %13 = load i64, ptr %size.addr, align 8, !dbg !2064
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !2065
  store ptr %call6, ptr %retval, align 8, !dbg !2066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2066

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !2067
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2068
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2069
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2070
  store ptr %call8, ptr %retval, align 8, !dbg !2071
  br label %return, !dbg !2071

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2072
  ret ptr %16, !dbg !2072
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2073 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !2074 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2080, metadata !DIExpression()), !dbg !2082
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2081, metadata !DIExpression()), !dbg !2083
  %0 = load i64, ptr %size.addr, align 8, !dbg !2084
  %tobool = icmp ne i64 %0, 0, !dbg !2084
  br i1 %tobool, label %if.end, label %if.then, !dbg !2086

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2087
  br label %return, !dbg !2087

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2088
  %cmp = icmp ule i64 %1, 8, !dbg !2090
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2091

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2092
  br label %return, !dbg !2092

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2093
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2095
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2096

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2097
  %cmp4 = icmp ule i64 %3, 96, !dbg !2098
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2099

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2100
  br label %return, !dbg !2100

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2101
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2103
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2104

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2105
  %cmp9 = icmp ule i64 %5, 192, !dbg !2106
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2107

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2108
  br label %return, !dbg !2108

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2109
  %cmp12 = icmp ule i64 %6, 8, !dbg !2111
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2112

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2113
  br label %return, !dbg !2113

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2114
  %cmp15 = icmp ule i64 %7, 16, !dbg !2116
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2117

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2118
  br label %return, !dbg !2118

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2119
  %cmp18 = icmp ule i64 %8, 32, !dbg !2121
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2122

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2123
  br label %return, !dbg !2123

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2124
  %cmp21 = icmp ule i64 %9, 64, !dbg !2126
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2127

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2128
  br label %return, !dbg !2128

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2129
  %cmp24 = icmp ule i64 %10, 128, !dbg !2131
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2132

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2133
  br label %return, !dbg !2133

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2134
  %cmp27 = icmp ule i64 %11, 256, !dbg !2136
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2137

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2138
  br label %return, !dbg !2138

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2139
  %cmp30 = icmp ule i64 %12, 512, !dbg !2141
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2142

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2143
  br label %return, !dbg !2143

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2144
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2146
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2147

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2148
  br label %return, !dbg !2148

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2149
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2151
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2152

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2153
  br label %return, !dbg !2153

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2154
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2156
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2157

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2158
  br label %return, !dbg !2158

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2159
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2161
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2162

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2163
  br label %return, !dbg !2163

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2164
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2166
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2167

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2168
  br label %return, !dbg !2168

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2169
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2171
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2172

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2173
  br label %return, !dbg !2173

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2174
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2176
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2177

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2178
  br label %return, !dbg !2178

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2179
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2181
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2182

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2183
  br label %return, !dbg !2183

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2184
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2186
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2187

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2188
  br label %return, !dbg !2188

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2189
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2191
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2192

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2193
  br label %return, !dbg !2193

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2194
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2196
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2197

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2198
  br label %return, !dbg !2198

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2199
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2201
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2202

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2203
  br label %return, !dbg !2203

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2204, !range !2206, !noundef !2207
  %tobool69 = trunc i8 %25 to i1, !dbg !2204
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2208

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2209

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !2210, !srcloc !2213
  unreachable, !dbg !2210

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2214

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2215

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2216

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2218

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2216

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #13, !dbg !2220, !srcloc !2222
  br label %do.end75, !dbg !2220

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2216

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2223
  br label %return, !dbg !2223

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2224
  ret i32 %26, !dbg !2224
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2225 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !2231 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2235, metadata !DIExpression()), !dbg !2237
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2236, metadata !DIExpression()), !dbg !2238
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2239
  %and = and i32 %0, 17, !dbg !2239
  %cmp = icmp eq i32 %and, 0, !dbg !2239
  %lnot = xor i1 %cmp, true, !dbg !2239
  %lnot1 = xor i1 %lnot, true, !dbg !2239
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2239
  %conv = sext i32 %lnot.ext to i64, !dbg !2239
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2239
  %tobool = icmp ne i64 %expval, 0, !dbg !2239
  br i1 %tobool, label %if.then, label %if.end, !dbg !2241

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2242
  br label %return, !dbg !2242

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2243
  %and2 = and i32 %1, 1, !dbg !2245
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2245
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2246

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2247
  br label %return, !dbg !2247

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2248
  br label %return, !dbg !2248

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2250
  ret i32 %2, !dbg !2250
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2251 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2252 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !2255 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2257, metadata !DIExpression()), !dbg !2259
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !2260, !srcloc !2261
  %0 = load i64, ptr %flags, align 8, !dbg !2262
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2263
  ret i64 %0, !dbg !2264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2265 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
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
!llvm.module.flags = !{!855, !856, !857, !858, !859, !860, !861, !862}
!llvm.ident = !{!863}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_update_all_gpes174", scope: !2, file: !3, line: 77, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evxfgpe.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evxfgpe\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evxfgpe.ll drivers/acpi/acpica/evxfgpe.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !804, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evxfgpe.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "282c517ac8b1ec4dba2ff816c4418cee")
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
!21 = !{!22, !23, !29, !32, !33, !36, !37, !40, !802, !803, !35}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !22)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !34, line: 42, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !24, line: 127, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !39)
!39 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !42, line: 133, size: 384, elements: !43)
!42 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!43 = !{!44, !789, !790, !791, !792, !798, !799, !800, !801}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !41, file: !42, line: 134, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !47, line: 369, size: 576, elements: !48)
!47 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!48 = !{!49, !60, !73, !85, !99, !113, !122, !438, !455, !471, !484, !562, !574, !588, !598, !616, !638, !657, !676, !695, !708, !735, !752, !765, !779, !788}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !46, file: !47, line: 370, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !47, line: 73, size: 128, elements: !51)
!51 = !{!52, !53, !54, !55, !59}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !47, line: 74, baseType: !45, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !47, line: 74, baseType: !29, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !47, line: 74, baseType: !29, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !47, line: 74, baseType: !56, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !47, line: 74, baseType: !29, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !46, file: !47, line: 371, baseType: !61, size: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !47, line: 76, size: 192, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !47, line: 77, baseType: !45, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !47, line: 77, baseType: !29, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !47, line: 77, baseType: !29, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !47, line: 77, baseType: !56, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !47, line: 77, baseType: !29, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !61, file: !47, line: 77, baseType: !69, size: 24, offset: 104)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !47, line: 78, baseType: !37, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !46, file: !47, line: 372, baseType: !74, size: 256)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !47, line: 93, size: 256, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !84}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !47, line: 94, baseType: !45, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !47, line: 94, baseType: !29, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !47, line: 94, baseType: !29, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !47, line: 94, baseType: !56, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !47, line: 94, baseType: !29, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !74, file: !47, line: 94, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !47, line: 94, baseType: !25, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !46, file: !47, line: 373, baseType: !86, size: 384)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !47, line: 97, size: 384, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !95, !96, !97, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !86, file: !47, line: 98, baseType: !45, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !86, file: !47, line: 98, baseType: !29, size: 8, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !47, line: 98, baseType: !29, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !86, file: !47, line: 98, baseType: !56, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !47, line: 98, baseType: !29, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !86, file: !47, line: 98, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !86, file: !47, line: 98, baseType: !25, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !86, file: !47, line: 99, baseType: !25, size: 32, offset: 224)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !86, file: !47, line: 100, baseType: !94, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !86, file: !47, line: 101, baseType: !40, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !46, file: !47, line: 374, baseType: !100, size: 384)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !47, line: 104, size: 384, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !110, !111, !112}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !100, file: !47, line: 105, baseType: !45, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !47, line: 105, baseType: !29, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !47, line: 105, baseType: !29, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !100, file: !47, line: 105, baseType: !56, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !47, line: 105, baseType: !29, size: 8, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !100, file: !47, line: 105, baseType: !40, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !100, file: !47, line: 106, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !100, file: !47, line: 107, baseType: !94, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !100, file: !47, line: 108, baseType: !25, size: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !100, file: !47, line: 109, baseType: !25, size: 32, offset: 352)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !47, line: 375, baseType: !114, size: 192)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !47, line: 118, size: 192, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !47, line: 119, baseType: !45, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !47, line: 119, baseType: !29, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !47, line: 119, baseType: !29, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !47, line: 119, baseType: !56, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !47, line: 119, baseType: !29, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !114, file: !47, line: 119, baseType: !22, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !46, file: !47, line: 376, baseType: !123, size: 448)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !47, line: 144, size: 448, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !435, !436, !437}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !47, line: 145, baseType: !45, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !47, line: 145, baseType: !29, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !47, line: 145, baseType: !29, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !47, line: 145, baseType: !56, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !47, line: 145, baseType: !29, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !123, file: !47, line: 145, baseType: !29, size: 8, offset: 104)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !123, file: !47, line: 146, baseType: !29, size: 8, offset: 112)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !123, file: !47, line: 147, baseType: !29, size: 8, offset: 120)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !123, file: !47, line: 148, baseType: !45, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !47, line: 149, baseType: !45, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !123, file: !47, line: 150, baseType: !94, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !123, file: !47, line: 154, baseType: !137, size: 64, offset: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !47, line: 151, size: 64, elements: !138)
!138 = !{!139, !434}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !137, file: !47, line: 152, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !42, line: 248, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!23, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !146, line: 37, size: 9024, elements: !147)
!146 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !380, !381, !382, !383, !384, !388, !390, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !417, !418, !419, !420, !421, !422, !423, !424, !426, !432}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 38, baseType: !144, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !145, file: !146, line: 39, baseType: !29, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !145, file: !146, line: 40, baseType: !29, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !145, file: !146, line: 41, baseType: !56, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !145, file: !146, line: 42, baseType: !29, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !145, file: !146, line: 43, baseType: !29, size: 8, offset: 104)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !145, file: !146, line: 44, baseType: !29, size: 8, offset: 112)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !145, file: !146, line: 45, baseType: !156, size: 16, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !24, line: 445, baseType: !56)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !145, file: !146, line: 46, baseType: !29, size: 8, offset: 144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !145, file: !146, line: 47, baseType: !29, size: 8, offset: 152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !145, file: !146, line: 48, baseType: !29, size: 8, offset: 160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !145, file: !146, line: 49, baseType: !29, size: 8, offset: 168)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !145, file: !146, line: 50, baseType: !29, size: 8, offset: 176)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !145, file: !146, line: 51, baseType: !29, size: 8, offset: 184)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !145, file: !146, line: 52, baseType: !29, size: 8, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !145, file: !146, line: 53, baseType: !29, size: 8, offset: 200)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !145, file: !146, line: 54, baseType: !94, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !145, file: !146, line: 55, baseType: !25, size: 32, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !145, file: !146, line: 56, baseType: !25, size: 32, offset: 352)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !145, file: !146, line: 57, baseType: !25, size: 32, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !145, file: !146, line: 58, baseType: !25, size: 32, offset: 416)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !145, file: !146, line: 60, baseType: !171, size: 640, offset: 448)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !42, line: 909, size: 640, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !262, !263, !378, !379}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !171, file: !42, line: 910, baseType: !94, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !171, file: !42, line: 911, baseType: !94, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !171, file: !42, line: 912, baseType: !94, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !171, file: !42, line: 913, baseType: !94, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !171, file: !42, line: 914, baseType: !94, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !171, file: !42, line: 915, baseType: !179, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !42, line: 891, size: 1600, elements: !181)
!181 = !{!182, !202, !218}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !180, file: !42, line: 892, baseType: !183, size: 448)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !42, line: 844, size: 448, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !201}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !42, line: 845, baseType: !179, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !42, line: 845, baseType: !29, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !42, line: 845, baseType: !29, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !42, line: 845, baseType: !56, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !42, line: 845, baseType: !94, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !42, line: 845, baseType: !179, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !42, line: 845, baseType: !40, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !42, line: 845, baseType: !193, size: 64, offset: 320)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !42, line: 732, size: 64, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !193, file: !42, line: 733, baseType: !37, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !42, line: 734, baseType: !25, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !193, file: !42, line: 735, baseType: !82, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !193, file: !42, line: 736, baseType: !94, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !42, line: 737, baseType: !82, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !193, file: !42, line: 738, baseType: !179, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !183, file: !42, line: 845, baseType: !29, size: 8, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !180, file: !42, line: 893, baseType: !203, size: 640)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !42, line: 851, size: 640, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !42, line: 852, baseType: !179, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !203, file: !42, line: 852, baseType: !29, size: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !42, line: 852, baseType: !29, size: 8, offset: 72)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !203, file: !42, line: 852, baseType: !56, size: 16, offset: 80)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !203, file: !42, line: 852, baseType: !94, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !42, line: 852, baseType: !179, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !42, line: 852, baseType: !40, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !203, file: !42, line: 852, baseType: !193, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !203, file: !42, line: 852, baseType: !29, size: 8, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !203, file: !42, line: 852, baseType: !82, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !203, file: !42, line: 853, baseType: !94, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !203, file: !42, line: 854, baseType: !25, size: 32, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !42, line: 855, baseType: !25, size: 32, offset: 608)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !180, file: !42, line: 894, baseType: !219, size: 1600)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !42, line: 862, size: 1600, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !42, line: 863, baseType: !179, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !42, line: 863, baseType: !29, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !42, line: 863, baseType: !29, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !219, file: !42, line: 863, baseType: !56, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !219, file: !42, line: 863, baseType: !94, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !42, line: 863, baseType: !179, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !42, line: 863, baseType: !40, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !42, line: 863, baseType: !193, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !219, file: !42, line: 863, baseType: !29, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !219, file: !42, line: 863, baseType: !179, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !219, file: !42, line: 864, baseType: !179, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !219, file: !42, line: 865, baseType: !82, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !219, file: !42, line: 866, baseType: !29, size: 8, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !219, file: !42, line: 867, baseType: !82, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !219, file: !42, line: 868, baseType: !82, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !219, file: !42, line: 869, baseType: !82, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !219, file: !42, line: 870, baseType: !238, size: 32, offset: 896)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 4)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !219, file: !42, line: 871, baseType: !25, size: 32, offset: 928)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !219, file: !42, line: 872, baseType: !25, size: 32, offset: 960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !219, file: !42, line: 873, baseType: !25, size: 32, offset: 992)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !219, file: !42, line: 874, baseType: !25, size: 32, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !219, file: !42, line: 875, baseType: !25, size: 32, offset: 1056)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !219, file: !42, line: 876, baseType: !25, size: 32, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !219, file: !42, line: 877, baseType: !25, size: 32, offset: 1120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !219, file: !42, line: 878, baseType: !25, size: 32, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !219, file: !42, line: 879, baseType: !25, size: 32, offset: 1184)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !219, file: !42, line: 880, baseType: !25, size: 32, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !219, file: !42, line: 881, baseType: !25, size: 32, offset: 1248)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !219, file: !42, line: 882, baseType: !25, size: 32, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !219, file: !42, line: 883, baseType: !25, size: 32, offset: 1312)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !219, file: !42, line: 884, baseType: !56, size: 16, offset: 1344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !219, file: !42, line: 885, baseType: !29, size: 8, offset: 1360)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !219, file: !42, line: 886, baseType: !29, size: 8, offset: 1368)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !219, file: !42, line: 887, baseType: !29, size: 8, offset: 1376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !219, file: !42, line: 888, baseType: !259, size: 160, offset: 1384)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 160, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 20)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !171, file: !42, line: 916, baseType: !40, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !171, file: !42, line: 917, baseType: !264, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !42, line: 679, size: 640, elements: !266)
!266 = !{!267, !275, !288, !297, !306, !319, !333, !345, !357}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !265, file: !42, line: 680, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !42, line: 575, size: 128, elements: !269)
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !42, line: 576, baseType: !22, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !42, line: 576, baseType: !29, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !42, line: 576, baseType: !29, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !42, line: 576, baseType: !56, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !42, line: 576, baseType: !56, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !265, file: !42, line: 681, baseType: !276, size: 384)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !42, line: 604, size: 384, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !42, line: 605, baseType: !22, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !42, line: 605, baseType: !29, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !42, line: 605, baseType: !29, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !42, line: 605, baseType: !56, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !42, line: 605, baseType: !56, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !276, file: !42, line: 606, baseType: !56, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !276, file: !42, line: 607, baseType: !179, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !276, file: !42, line: 608, baseType: !94, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !276, file: !42, line: 609, baseType: !94, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !276, file: !42, line: 610, baseType: !37, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !265, file: !42, line: 682, baseType: !289, size: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !42, line: 582, size: 192, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !42, line: 583, baseType: !22, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !42, line: 583, baseType: !29, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !42, line: 583, baseType: !29, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !42, line: 583, baseType: !56, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !42, line: 583, baseType: !56, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !289, file: !42, line: 584, baseType: !45, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !265, file: !42, line: 683, baseType: !298, size: 192)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !42, line: 616, size: 192, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !42, line: 617, baseType: !22, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !42, line: 617, baseType: !29, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !42, line: 617, baseType: !29, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !42, line: 617, baseType: !56, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !42, line: 617, baseType: !56, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !298, file: !42, line: 618, baseType: !40, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !265, file: !42, line: 684, baseType: !307, size: 448)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !42, line: 621, size: 448, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !42, line: 622, baseType: !22, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !42, line: 622, baseType: !29, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !42, line: 622, baseType: !29, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !42, line: 622, baseType: !56, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !42, line: 622, baseType: !56, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !307, file: !42, line: 623, baseType: !25, size: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !307, file: !42, line: 624, baseType: !179, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !307, file: !42, line: 625, baseType: !94, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !307, file: !42, line: 626, baseType: !94, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !307, file: !42, line: 627, baseType: !25, size: 32, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !265, file: !42, line: 685, baseType: !320, size: 512)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !42, line: 590, size: 512, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !42, line: 591, baseType: !22, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !42, line: 591, baseType: !29, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !42, line: 591, baseType: !29, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !42, line: 591, baseType: !56, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !42, line: 591, baseType: !56, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !320, file: !42, line: 592, baseType: !25, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !320, file: !42, line: 593, baseType: !45, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !320, file: !42, line: 594, baseType: !45, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !320, file: !42, line: 595, baseType: !144, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !320, file: !42, line: 596, baseType: !22, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !320, file: !42, line: 597, baseType: !25, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !265, file: !42, line: 686, baseType: !334, size: 320)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !42, line: 634, size: 320, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !42, line: 635, baseType: !22, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !42, line: 635, baseType: !29, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !42, line: 635, baseType: !29, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !42, line: 635, baseType: !56, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !42, line: 635, baseType: !56, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !334, file: !42, line: 636, baseType: !29, size: 8, offset: 112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !334, file: !42, line: 637, baseType: !144, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !334, file: !42, line: 638, baseType: !45, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !334, file: !42, line: 639, baseType: !37, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !265, file: !42, line: 687, baseType: !346, size: 640)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !42, line: 646, size: 640, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !42, line: 647, baseType: !22, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !42, line: 647, baseType: !29, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !42, line: 647, baseType: !29, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !42, line: 647, baseType: !56, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !42, line: 647, baseType: !56, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !346, file: !42, line: 648, baseType: !354, size: 512, offset: 128)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !265, file: !42, line: 688, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !42, line: 669, size: 320, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !42, line: 670, baseType: !22, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !42, line: 670, baseType: !29, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !42, line: 670, baseType: !29, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !42, line: 670, baseType: !56, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !42, line: 670, baseType: !56, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !358, file: !42, line: 671, baseType: !29, size: 8, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !358, file: !42, line: 672, baseType: !40, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !358, file: !42, line: 673, baseType: !45, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !358, file: !42, line: 674, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !42, line: 660, size: 128, elements: !371)
!371 = !{!372, !377}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !370, file: !42, line: 661, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !24, line: 1061, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !32, !25, !22}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !42, line: 662, baseType: !22, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !171, file: !42, line: 918, baseType: !179, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !171, file: !42, line: 919, baseType: !25, size: 32, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !145, file: !146, line: 61, baseType: !25, size: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !145, file: !146, line: 62, baseType: !25, size: 32, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !145, file: !146, line: 63, baseType: !56, size: 16, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !145, file: !146, line: 64, baseType: !29, size: 8, offset: 1168)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !145, file: !146, line: 66, baseType: !385, size: 2688, offset: 1216)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2688, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !145, file: !146, line: 67, baseType: !389, size: 3072, offset: 3904)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 3072, elements: !355)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !145, file: !146, line: 68, baseType: !391, size: 576, offset: 6976)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 576, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 9)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !145, file: !146, line: 69, baseType: !109, size: 64, offset: 7552)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !145, file: !146, line: 71, baseType: !94, size: 64, offset: 7616)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !145, file: !146, line: 72, baseType: !109, size: 64, offset: 7680)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !145, file: !146, line: 73, baseType: !264, size: 64, offset: 7744)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !145, file: !146, line: 74, baseType: !40, size: 64, offset: 7808)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !145, file: !146, line: 75, baseType: !45, size: 64, offset: 7872)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !145, file: !146, line: 76, baseType: !40, size: 64, offset: 7936)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !145, file: !146, line: 77, baseType: !179, size: 64, offset: 8000)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !145, file: !146, line: 78, baseType: !45, size: 64, offset: 8064)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !145, file: !146, line: 79, baseType: !40, size: 64, offset: 8128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !145, file: !146, line: 80, baseType: !82, size: 64, offset: 8192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !145, file: !146, line: 81, baseType: !179, size: 64, offset: 8256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !145, file: !146, line: 82, baseType: !407, size: 64, offset: 8320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !42, line: 718, size: 128, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !409, file: !42, line: 722, baseType: !25, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !409, file: !42, line: 723, baseType: !25, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !42, line: 724, baseType: !56, size: 16, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !409, file: !42, line: 725, baseType: !29, size: 8, offset: 80)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !409, file: !42, line: 726, baseType: !29, size: 8, offset: 88)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !42, line: 727, baseType: !29, size: 8, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !145, file: !146, line: 83, baseType: !179, size: 64, offset: 8384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !145, file: !146, line: 84, baseType: !45, size: 64, offset: 8448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !145, file: !146, line: 85, baseType: !264, size: 64, offset: 8512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !145, file: !146, line: 86, baseType: !45, size: 64, offset: 8576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !145, file: !146, line: 87, baseType: !264, size: 64, offset: 8640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !145, file: !146, line: 88, baseType: !179, size: 64, offset: 8704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !145, file: !146, line: 89, baseType: !179, size: 64, offset: 8768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !145, file: !146, line: 90, baseType: !425, size: 64, offset: 8832)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !145, file: !146, line: 91, baseType: !427, size: 64, offset: 8896)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !42, line: 652, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!23, !144, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !145, file: !146, line: 92, baseType: !433, size: 64, offset: 8960)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !42, line: 656, baseType: !141)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !137, file: !47, line: 153, baseType: !45, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !123, file: !47, line: 156, baseType: !25, size: 32, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !123, file: !47, line: 157, baseType: !156, size: 16, offset: 416)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !123, file: !47, line: 158, baseType: !29, size: 8, offset: 432)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !46, file: !47, line: 377, baseType: !439, size: 576)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !47, line: 122, size: 576, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !439, file: !47, line: 123, baseType: !45, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !439, file: !47, line: 123, baseType: !29, size: 8, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !439, file: !47, line: 123, baseType: !29, size: 8, offset: 72)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !439, file: !47, line: 123, baseType: !56, size: 16, offset: 80)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !47, line: 123, baseType: !29, size: 8, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !439, file: !47, line: 123, baseType: !29, size: 8, offset: 104)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !439, file: !47, line: 124, baseType: !56, size: 16, offset: 112)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !439, file: !47, line: 125, baseType: !22, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !439, file: !47, line: 126, baseType: !37, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !439, file: !47, line: 127, baseType: !425, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !439, file: !47, line: 128, baseType: !45, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !47, line: 129, baseType: !45, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !47, line: 130, baseType: !40, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !439, file: !47, line: 131, baseType: !29, size: 8, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !46, file: !47, line: 378, baseType: !456, size: 512)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !47, line: 134, size: 512, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !469, !470}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !47, line: 135, baseType: !45, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !47, line: 135, baseType: !29, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !47, line: 135, baseType: !29, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !47, line: 135, baseType: !56, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !47, line: 135, baseType: !29, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !456, file: !47, line: 135, baseType: !29, size: 8, offset: 104)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !47, line: 136, baseType: !40, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !456, file: !47, line: 137, baseType: !45, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !47, line: 138, baseType: !45, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !456, file: !47, line: 139, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !24, line: 129, baseType: !37)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !456, file: !47, line: 140, baseType: !25, size: 32, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !456, file: !47, line: 141, baseType: !22, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !46, file: !47, line: 379, baseType: !472, size: 320)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !47, line: 185, size: 320, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !47, line: 186, baseType: !45, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !47, line: 186, baseType: !29, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !47, line: 186, baseType: !29, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !47, line: 186, baseType: !56, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !47, line: 186, baseType: !29, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !472, file: !47, line: 186, baseType: !480, size: 128, offset: 128)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !472, file: !47, line: 186, baseType: !45, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !46, file: !47, line: 380, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !47, line: 188, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !47, line: 189, baseType: !45, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !47, line: 189, baseType: !29, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !47, line: 189, baseType: !29, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !47, line: 189, baseType: !56, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !47, line: 189, baseType: !29, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !47, line: 190, baseType: !480, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !47, line: 190, baseType: !45, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !485, file: !47, line: 190, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !42, line: 480, size: 576, elements: !497)
!497 = !{!498, !499, !500, !501, !509, !524, !556, !557, !558, !559, !560, !561}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !42, line: 481, baseType: !40, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !496, file: !42, line: 482, baseType: !495, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !42, line: 483, baseType: !495, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !496, file: !42, line: 484, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !42, line: 497, size: 256, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !503, file: !42, line: 498, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !42, line: 499, baseType: !502, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !503, file: !42, line: 500, baseType: !495, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !503, file: !42, line: 501, baseType: !25, size: 32, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !496, file: !42, line: 485, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !42, line: 466, size: 320, elements: !512)
!512 = !{!513, !518, !519, !520, !521, !522, !523}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !511, file: !42, line: 467, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !42, line: 459, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !42, line: 460, baseType: !29, size: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !42, line: 461, baseType: !37, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !511, file: !42, line: 468, baseType: !514, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !511, file: !42, line: 469, baseType: !56, size: 16, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !511, file: !42, line: 470, baseType: !29, size: 8, offset: 272)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !511, file: !42, line: 471, baseType: !29, size: 8, offset: 280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !511, file: !42, line: 472, baseType: !29, size: 8, offset: 288)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !511, file: !42, line: 473, baseType: !29, size: 8, offset: 296)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !496, file: !42, line: 486, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !42, line: 448, size: 192, elements: !527)
!527 = !{!528, !551, !552, !553, !554, !555}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !526, file: !42, line: 449, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !42, line: 438, size: 64, elements: !530)
!530 = !{!531, !532, !545}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !529, file: !42, line: 439, baseType: !40, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !529, file: !42, line: 440, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !42, line: 419, size: 256, elements: !535)
!535 = !{!536, !541, !542, !543, !544}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !534, file: !42, line: 420, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !24, line: 1058, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!25, !32, !25, !22}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !534, file: !42, line: 421, baseType: !22, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !534, file: !42, line: 422, baseType: !40, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !534, file: !42, line: 423, baseType: !29, size: 8, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !534, file: !42, line: 424, baseType: !29, size: 8, offset: 200)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !529, file: !42, line: 441, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !42, line: 429, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !547, file: !42, line: 430, baseType: !40, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !42, line: 431, baseType: !546, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !526, file: !42, line: 450, baseType: !510, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !42, line: 451, baseType: !29, size: 8, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !526, file: !42, line: 452, baseType: !29, size: 8, offset: 136)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !526, file: !42, line: 453, baseType: !29, size: 8, offset: 144)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !526, file: !42, line: 454, baseType: !29, size: 8, offset: 152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !42, line: 487, baseType: !37, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !496, file: !42, line: 488, baseType: !25, size: 32, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !496, file: !42, line: 489, baseType: !56, size: 16, offset: 480)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !496, file: !42, line: 490, baseType: !56, size: 16, offset: 496)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !496, file: !42, line: 491, baseType: !29, size: 8, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !496, file: !42, line: 492, baseType: !29, size: 8, offset: 520)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !46, file: !47, line: 381, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !47, line: 193, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !47, line: 194, baseType: !45, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !47, line: 194, baseType: !29, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !47, line: 194, baseType: !29, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !47, line: 194, baseType: !56, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !47, line: 194, baseType: !29, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !47, line: 194, baseType: !480, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !47, line: 194, baseType: !45, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !563, file: !47, line: 194, baseType: !25, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !563, file: !47, line: 195, baseType: !25, size: 32, offset: 352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !46, file: !47, line: 382, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !47, line: 198, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !47, line: 199, baseType: !45, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !47, line: 199, baseType: !29, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !47, line: 199, baseType: !29, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !47, line: 199, baseType: !56, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !47, line: 199, baseType: !29, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !575, file: !47, line: 201, baseType: !29, size: 8, offset: 104)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !575, file: !47, line: 202, baseType: !29, size: 8, offset: 112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !47, line: 203, baseType: !480, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !47, line: 203, baseType: !45, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !575, file: !47, line: 203, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !37)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !46, file: !47, line: 383, baseType: !589, size: 320)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !47, line: 206, size: 320, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !47, line: 207, baseType: !45, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !47, line: 207, baseType: !29, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !47, line: 207, baseType: !29, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !47, line: 207, baseType: !56, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !47, line: 207, baseType: !29, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !47, line: 207, baseType: !480, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !47, line: 207, baseType: !45, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !46, file: !47, line: 384, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !47, line: 234, size: 384, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !47, line: 235, baseType: !45, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !47, line: 235, baseType: !29, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !47, line: 235, baseType: !29, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !47, line: 235, baseType: !56, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !47, line: 235, baseType: !29, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !47, line: 235, baseType: !29, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !47, line: 235, baseType: !29, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !47, line: 235, baseType: !29, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !47, line: 235, baseType: !40, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !47, line: 235, baseType: !25, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !47, line: 235, baseType: !25, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !47, line: 235, baseType: !25, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !47, line: 235, baseType: !29, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !47, line: 235, baseType: !29, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !599, file: !47, line: 235, baseType: !45, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !46, file: !47, line: 385, baseType: !617, size: 576)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !47, line: 238, size: 576, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !47, line: 239, baseType: !45, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !47, line: 239, baseType: !29, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !47, line: 239, baseType: !29, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !47, line: 239, baseType: !56, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !47, line: 239, baseType: !29, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !617, file: !47, line: 239, baseType: !29, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !617, file: !47, line: 239, baseType: !29, size: 8, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !617, file: !47, line: 239, baseType: !29, size: 8, offset: 120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !47, line: 239, baseType: !40, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !617, file: !47, line: 239, baseType: !25, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !617, file: !47, line: 239, baseType: !25, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !47, line: 239, baseType: !25, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !617, file: !47, line: 239, baseType: !29, size: 8, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !617, file: !47, line: 239, baseType: !29, size: 8, offset: 296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !617, file: !47, line: 239, baseType: !56, size: 16, offset: 304)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !617, file: !47, line: 240, baseType: !45, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !617, file: !47, line: 241, baseType: !94, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !617, file: !47, line: 242, baseType: !56, size: 16, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !617, file: !47, line: 243, baseType: !94, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !46, file: !47, line: 386, baseType: !639, size: 384)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !47, line: 263, size: 384, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !47, line: 264, baseType: !45, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !47, line: 264, baseType: !56, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !47, line: 264, baseType: !40, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !47, line: 264, baseType: !25, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !47, line: 264, baseType: !25, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !47, line: 264, baseType: !25, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !639, file: !47, line: 264, baseType: !29, size: 8, offset: 304)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !639, file: !47, line: 265, baseType: !45, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !46, file: !47, line: 387, baseType: !658, size: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !47, line: 246, size: 448, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !47, line: 247, baseType: !45, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !47, line: 247, baseType: !29, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !47, line: 247, baseType: !29, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !47, line: 247, baseType: !56, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !47, line: 247, baseType: !29, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !47, line: 247, baseType: !29, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !47, line: 247, baseType: !29, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !47, line: 247, baseType: !29, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !47, line: 247, baseType: !40, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !47, line: 247, baseType: !25, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !47, line: 247, baseType: !25, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !47, line: 247, baseType: !25, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !47, line: 247, baseType: !29, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !47, line: 247, baseType: !29, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !658, file: !47, line: 247, baseType: !45, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !658, file: !47, line: 248, baseType: !45, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !46, file: !47, line: 388, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !47, line: 251, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !47, line: 252, baseType: !45, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !47, line: 252, baseType: !29, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !47, line: 252, baseType: !29, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !47, line: 252, baseType: !56, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !47, line: 252, baseType: !29, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !47, line: 252, baseType: !29, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !47, line: 252, baseType: !29, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !47, line: 252, baseType: !29, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !47, line: 252, baseType: !40, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !47, line: 252, baseType: !25, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !47, line: 252, baseType: !25, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !47, line: 252, baseType: !25, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !47, line: 252, baseType: !29, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !47, line: 252, baseType: !29, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !677, file: !47, line: 257, baseType: !45, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !677, file: !47, line: 258, baseType: !45, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !46, file: !47, line: 389, baseType: !696, size: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !47, line: 274, size: 512, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !47, line: 275, baseType: !45, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !47, line: 275, baseType: !29, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !47, line: 275, baseType: !29, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !47, line: 275, baseType: !56, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !47, line: 275, baseType: !29, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !47, line: 275, baseType: !40, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !696, file: !47, line: 276, baseType: !25, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !696, file: !47, line: 277, baseType: !373, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !47, line: 278, baseType: !22, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !47, line: 279, baseType: !480, size: 128, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !46, file: !47, line: 390, baseType: !709, size: 576)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !47, line: 282, size: 576, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !727, !733, !734}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !47, line: 283, baseType: !45, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !47, line: 283, baseType: !29, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !47, line: 283, baseType: !29, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !47, line: 283, baseType: !56, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !47, line: 283, baseType: !29, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !709, file: !47, line: 283, baseType: !29, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !709, file: !47, line: 284, baseType: !29, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !47, line: 285, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !24, line: 1093, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!23, !25, !468, !25, !723, !22, !22}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !47, line: 286, baseType: !40, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !47, line: 287, baseType: !22, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !709, file: !47, line: 288, baseType: !22, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !709, file: !47, line: 289, baseType: !728, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !24, line: 1126, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!23, !32, !25, !22, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !709, file: !47, line: 290, baseType: !45, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !47, line: 291, baseType: !45, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !46, file: !47, line: 391, baseType: !736, size: 512)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !47, line: 309, size: 512, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !736, file: !47, line: 310, baseType: !45, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !736, file: !47, line: 310, baseType: !29, size: 8, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !736, file: !47, line: 310, baseType: !29, size: 8, offset: 72)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !736, file: !47, line: 310, baseType: !56, size: 16, offset: 80)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !47, line: 310, baseType: !29, size: 8, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !736, file: !47, line: 310, baseType: !29, size: 8, offset: 104)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !736, file: !47, line: 311, baseType: !29, size: 8, offset: 112)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !736, file: !47, line: 312, baseType: !29, size: 8, offset: 120)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !736, file: !47, line: 313, baseType: !22, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !736, file: !47, line: 314, baseType: !40, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !736, file: !47, line: 315, baseType: !109, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !736, file: !47, line: 316, baseType: !94, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !736, file: !47, line: 317, baseType: !94, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !736, file: !47, line: 318, baseType: !25, size: 32, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !46, file: !47, line: 392, baseType: !753, size: 448)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !47, line: 342, size: 448, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !47, line: 343, baseType: !45, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !47, line: 343, baseType: !29, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !47, line: 343, baseType: !29, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !47, line: 343, baseType: !56, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !47, line: 343, baseType: !29, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !753, file: !47, line: 343, baseType: !40, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !753, file: !47, line: 344, baseType: !40, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !753, file: !47, line: 345, baseType: !22, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !753, file: !47, line: 346, baseType: !94, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !753, file: !47, line: 347, baseType: !25, size: 32, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 393, baseType: !766, size: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !47, line: 352, size: 256, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !778}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !47, line: 353, baseType: !45, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !47, line: 353, baseType: !29, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !47, line: 353, baseType: !29, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !47, line: 353, baseType: !56, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !47, line: 353, baseType: !29, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !766, file: !47, line: 353, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !24, line: 1064, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !32, !22}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !766, file: !47, line: 354, baseType: !22, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !46, file: !47, line: 394, baseType: !780, size: 192)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !47, line: 359, size: 192, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !780, file: !47, line: 360, baseType: !45, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !780, file: !47, line: 360, baseType: !29, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !47, line: 360, baseType: !29, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !780, file: !47, line: 360, baseType: !56, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !47, line: 360, baseType: !29, size: 8, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !47, line: 360, baseType: !45, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !47, line: 401, baseType: !41, size: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !42, line: 135, baseType: !29, size: 8, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !42, line: 136, baseType: !29, size: 8, offset: 72)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !42, line: 137, baseType: !56, size: 16, offset: 80)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !42, line: 138, baseType: !793, size: 32, offset: 96)
!793 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !794, line: 328, size: 32, elements: !795)
!794 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !793, file: !794, line: 329, baseType: !25, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !793, file: !794, line: 330, baseType: !238, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !42, line: 139, baseType: !40, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !41, file: !42, line: 140, baseType: !40, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !41, file: !42, line: 141, baseType: !40, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !41, file: !42, line: 142, baseType: !156, size: 16, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !7)
!804 = !{!0, !805, !807, !809, !811, !813, !815, !817, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !851}
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_enable_gpe175", scope: !2, file: !3, line: 131, type: !22, isLocal: true, isDefinition: true)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_disable_gpe176", scope: !2, file: !3, line: 169, type: !22, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_set_gpe177", scope: !2, file: !3, line: 243, type: !22, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_mask_gpe178", scope: !2, file: !3, line: 284, type: !22, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_mark_gpe_for_wake179", scope: !2, file: !3, line: 331, type: !22, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_setup_gpe_for_wake180", scope: !2, file: !3, line: 474, type: !22, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !3, line: 544, type: !819, isLocal: true, isDefinition: true)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 152, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 19)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_set_gpe_wake_mask181", scope: !2, file: !3, line: 554, type: !22, isLocal: true, isDefinition: true)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_clear_gpe182", scope: !2, file: !3, line: 593, type: !22, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_gpe_status183", scope: !2, file: !3, line: 638, type: !22, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dispatch_gpe184", scope: !2, file: !3, line: 660, type: !22, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_finish_gpe185", scope: !2, file: !3, line: 703, type: !22, isLocal: true, isDefinition: true)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_disable_all_gpes186", scope: !2, file: !3, line: 734, type: !22, isLocal: true, isDefinition: true)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_enable_all_runtime_gpes187", scope: !2, file: !3, line: 765, type: !22, isLocal: true, isDefinition: true)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_enable_all_wakeup_gpes188", scope: !2, file: !3, line: 796, type: !22, isLocal: true, isDefinition: true)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_any_gpe_status_set189", scope: !2, file: !3, line: 835, type: !22, isLocal: true, isDefinition: true)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_gpe_block190", scope: !2, file: !3, line: 939, type: !22, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_remove_gpe_block191", scope: !2, file: !3, line: 1001, type: !22, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_gpe_device192", scope: !2, file: !3, line: 1048, type: !22, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !848, isLocal: true, isDefinition: true)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 168, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 21)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !853, isLocal: true, isDefinition: true)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 64, elements: !355)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!855 = !{i32 7, !"Dwarf Version", i32 5}
!856 = !{i32 2, !"Debug Info Version", i32 3}
!857 = !{i32 1, !"wchar_size", i32 2}
!858 = !{i32 8, !"cf-protection-branch", i32 1}
!859 = !{i32 4, !"function_return_thunk_extern", i32 1}
!860 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!861 = !{i32 1, !"Code Model", i32 2}
!862 = !{i32 1, !"override-stack-alignment", i32 8}
!863 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!864 = distinct !DISubprogram(name: "acpi_update_all_gpes", scope: !3, file: !3, line: 43, type: !865, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{!23}
!867 = !{!868, !869, !870}
!868 = !DILocalVariable(name: "status", scope: !864, file: !3, line: 45, type: !23)
!869 = !DILocalVariable(name: "is_polling_needed", scope: !864, file: !3, line: 46, type: !29)
!870 = !DILabel(scope: !864, name: "unlock_and_exit", file: !3, line: 65)
!871 = !DILocation(line: 45, column: 2, scope: !864)
!872 = !DILocation(line: 45, column: 14, scope: !864)
!873 = !DILocation(line: 46, column: 2, scope: !864)
!874 = !DILocation(line: 46, column: 5, scope: !864)
!875 = !DILocation(line: 50, column: 11, scope: !864)
!876 = !DILocation(line: 50, column: 9, scope: !864)
!877 = !DILocation(line: 51, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !864, file: !3, line: 51, column: 6)
!879 = !DILocation(line: 51, column: 6, scope: !864)
!880 = !DILocation(line: 52, column: 3, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 51, column: 28)
!882 = !DILocation(line: 55, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !864, file: !3, line: 55, column: 6)
!884 = !DILocation(line: 55, column: 6, scope: !864)
!885 = !DILocation(line: 56, column: 3, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 55, column: 37)
!887 = !DILocation(line: 59, column: 11, scope: !864)
!888 = !DILocation(line: 59, column: 9, scope: !864)
!889 = !DILocation(line: 61, column: 6, scope: !890)
!890 = distinct !DILexicalBlock(scope: !864, file: !3, line: 61, column: 6)
!891 = !DILocation(line: 61, column: 6, scope: !864)
!892 = !DILocation(line: 62, column: 33, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 61, column: 28)
!894 = !DILocation(line: 63, column: 2, scope: !893)
!895 = !DILocation(line: 65, column: 1, scope: !864)
!896 = !DILocation(line: 66, column: 8, scope: !864)
!897 = !DILocation(line: 68, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !864, file: !3, line: 68, column: 6)
!899 = !DILocation(line: 68, column: 24, scope: !898)
!900 = !DILocation(line: 68, column: 27, scope: !898)
!901 = !DILocation(line: 68, column: 6, scope: !864)
!902 = !DILocation(line: 72, column: 22, scope: !903)
!903 = distinct !DILexicalBlock(scope: !898, file: !3, line: 68, column: 58)
!904 = !DILocation(line: 72, column: 3, scope: !903)
!905 = !DILocation(line: 73, column: 2, scope: !903)
!906 = !DILocation(line: 74, column: 2, scope: !864)
!907 = !DILocation(line: 75, column: 1, scope: !864)
!908 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !909, file: !909, line: 646, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!910 = !DISubroutineType(types: !911)
!911 = !{!23, !912}
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !42, line: 17, baseType: !25)
!913 = !DISubprogram(name: "acpi_ev_walk_gpe_list", scope: !914, file: !914, line: 133, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!915 = !DISubroutineType(types: !916)
!916 = !{!23, !917, !22}
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_callback", file: !42, line: 519, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!23, !502, !495, !22}
!921 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !909, file: !909, line: 648, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DISubprogram(name: "acpi_ev_gpe_detect", scope: !914, file: !914, line: 61, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{!25, !502}
!925 = distinct !DISubprogram(name: "acpi_enable_gpe", scope: !3, file: !3, line: 92, type: !926, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!23, !32, !25}
!928 = !{!929, !930, !931, !932, !933}
!929 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !925, file: !3, line: 92, type: !32)
!930 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !925, file: !3, line: 92, type: !25)
!931 = !DILocalVariable(name: "status", scope: !925, file: !3, line: 94, type: !23)
!932 = !DILocalVariable(name: "gpe_event_info", scope: !925, file: !3, line: 95, type: !525)
!933 = !DILocalVariable(name: "flags", scope: !925, file: !3, line: 96, type: !35)
!934 = !DILocation(line: 92, column: 41, scope: !925)
!935 = !DILocation(line: 92, column: 57, scope: !925)
!936 = !DILocation(line: 94, column: 2, scope: !925)
!937 = !DILocation(line: 94, column: 14, scope: !925)
!938 = !DILocation(line: 95, column: 2, scope: !925)
!939 = !DILocation(line: 95, column: 30, scope: !925)
!940 = !DILocation(line: 96, column: 2, scope: !925)
!941 = !DILocation(line: 96, column: 17, scope: !925)
!942 = !DILocation(line: 100, column: 31, scope: !925)
!943 = !DILocation(line: 100, column: 10, scope: !925)
!944 = !DILocation(line: 100, column: 8, scope: !925)
!945 = !DILocation(line: 107, column: 46, scope: !925)
!946 = !DILocation(line: 107, column: 58, scope: !925)
!947 = !DILocation(line: 107, column: 19, scope: !925)
!948 = !DILocation(line: 107, column: 17, scope: !925)
!949 = !DILocation(line: 108, column: 6, scope: !950)
!950 = distinct !DILexicalBlock(scope: !925, file: !3, line: 108, column: 6)
!951 = !DILocation(line: 108, column: 6, scope: !925)
!952 = !DILocation(line: 109, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 109, column: 7)
!954 = distinct !DILexicalBlock(scope: !950, file: !3, line: 108, column: 22)
!955 = !DILocation(line: 109, column: 53, scope: !953)
!956 = !DILocation(line: 109, column: 7, scope: !954)
!957 = !DILocation(line: 111, column: 39, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 110, column: 31)
!959 = !DILocation(line: 111, column: 13, scope: !958)
!960 = !DILocation(line: 111, column: 11, scope: !958)
!961 = !DILocation(line: 112, column: 8, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 112, column: 8)
!963 = !DILocation(line: 112, column: 29, scope: !962)
!964 = !DILocation(line: 113, column: 8, scope: !962)
!965 = !DILocation(line: 112, column: 8, scope: !958)
!966 = !DILocation(line: 117, column: 26, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !3, line: 113, column: 52)
!968 = !DILocation(line: 117, column: 45, scope: !967)
!969 = !DILocation(line: 117, column: 5, scope: !967)
!970 = !DILocation(line: 118, column: 30, scope: !967)
!971 = !DILocation(line: 119, column: 9, scope: !967)
!972 = !DILocation(line: 120, column: 9, scope: !967)
!973 = !DILocation(line: 118, column: 11, scope: !967)
!974 = !DILocation(line: 121, column: 34, scope: !967)
!975 = !DILocation(line: 121, column: 13, scope: !967)
!976 = !DILocation(line: 121, column: 11, scope: !967)
!977 = !DILocation(line: 122, column: 4, scope: !967)
!978 = !DILocation(line: 123, column: 3, scope: !958)
!979 = !DILocation(line: 124, column: 11, scope: !980)
!980 = distinct !DILexicalBlock(scope: !953, file: !3, line: 123, column: 10)
!981 = !DILocation(line: 126, column: 2, scope: !954)
!982 = !DILocation(line: 128, column: 23, scope: !925)
!983 = !DILocation(line: 128, column: 42, scope: !925)
!984 = !DILocation(line: 128, column: 2, scope: !925)
!985 = !DILocation(line: 129, column: 2, scope: !925)
!986 = !DILocation(line: 130, column: 1, scope: !925)
!987 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !988, file: !988, line: 93, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!989 = !DISubroutineType(types: !990)
!990 = !{!35, !991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !993, line: 29, baseType: !994)
!993 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !993, line: 17, size: 32, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !993, line: 18, baseType: !997, size: 32)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !993, line: 18, size: 32, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !997, file: !993, line: 19, baseType: !1000, size: 32)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1001, line: 14, size: 32, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1000, file: !1001, line: 15, baseType: !1004, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1005, line: 44, baseType: !1006)
!1005 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1005, line: 14, size: 32, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !1005, line: 15, baseType: !1009, size: 32)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !1005, line: 15, size: 32, elements: !1010)
!1010 = !{!1011, !1017, !1022}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1009, file: !1005, line: 16, baseType: !1012, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !34, line: 174, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 172, size: 32, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1013, file: !34, line: 173, baseType: !1016, size: 32)
!1016 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1005, line: 24, baseType: !1018, size: 16)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !1005, line: 24, size: 16, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1018, file: !1005, line: 25, baseType: !29, size: 8)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1018, file: !1005, line: 26, baseType: !29, size: 8, offset: 8)
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1005, line: 28, baseType: !1023, size: 32)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !1005, line: 28, size: 32, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1023, file: !1005, line: 29, baseType: !56, size: 16)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1023, file: !1005, line: 30, baseType: !56, size: 16, offset: 16)
!1027 = !DISubprogram(name: "acpi_ev_get_gpe_event_info", scope: !914, file: !914, line: 78, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!525, !32, !25}
!1030 = !DISubprogram(name: "acpi_ev_add_gpe_reference", scope: !914, file: !914, line: 72, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!23, !525, !29}
!1033 = !DISubprogram(name: "acpi_os_release_lock", scope: !988, file: !988, line: 97, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !991, !35}
!1036 = !DISubprogram(name: "acpi_ev_detect_gpe", scope: !914, file: !914, line: 88, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!25, !40, !525, !25}
!1039 = distinct !DISubprogram(name: "acpi_disable_gpe", scope: !3, file: !3, line: 148, type: !926, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045}
!1041 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1039, file: !3, line: 148, type: !32)
!1042 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1039, file: !3, line: 148, type: !25)
!1043 = !DILocalVariable(name: "status", scope: !1039, file: !3, line: 150, type: !23)
!1044 = !DILocalVariable(name: "gpe_event_info", scope: !1039, file: !3, line: 151, type: !525)
!1045 = !DILocalVariable(name: "flags", scope: !1039, file: !3, line: 152, type: !35)
!1046 = !DILocation(line: 148, column: 42, scope: !1039)
!1047 = !DILocation(line: 148, column: 58, scope: !1039)
!1048 = !DILocation(line: 150, column: 2, scope: !1039)
!1049 = !DILocation(line: 150, column: 14, scope: !1039)
!1050 = !DILocation(line: 151, column: 2, scope: !1039)
!1051 = !DILocation(line: 151, column: 30, scope: !1039)
!1052 = !DILocation(line: 152, column: 2, scope: !1039)
!1053 = !DILocation(line: 152, column: 17, scope: !1039)
!1054 = !DILocation(line: 156, column: 31, scope: !1039)
!1055 = !DILocation(line: 156, column: 10, scope: !1039)
!1056 = !DILocation(line: 156, column: 8, scope: !1039)
!1057 = !DILocation(line: 160, column: 46, scope: !1039)
!1058 = !DILocation(line: 160, column: 58, scope: !1039)
!1059 = !DILocation(line: 160, column: 19, scope: !1039)
!1060 = !DILocation(line: 160, column: 17, scope: !1039)
!1061 = !DILocation(line: 161, column: 6, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 161, column: 6)
!1063 = !DILocation(line: 161, column: 6, scope: !1039)
!1064 = !DILocation(line: 162, column: 41, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 161, column: 22)
!1066 = !DILocation(line: 162, column: 12, scope: !1065)
!1067 = !DILocation(line: 162, column: 10, scope: !1065)
!1068 = !DILocation(line: 163, column: 2, scope: !1065)
!1069 = !DILocation(line: 165, column: 23, scope: !1039)
!1070 = !DILocation(line: 165, column: 42, scope: !1039)
!1071 = !DILocation(line: 165, column: 2, scope: !1039)
!1072 = !DILocation(line: 166, column: 2, scope: !1039)
!1073 = !DILocation(line: 167, column: 1, scope: !1039)
!1074 = !DISubprogram(name: "acpi_ev_remove_gpe_reference", scope: !914, file: !914, line: 76, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!23, !525}
!1077 = distinct !DISubprogram(name: "acpi_set_gpe", scope: !3, file: !3, line: 199, type: !1078, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!23, !32, !25, !29}
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1081 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1077, file: !3, line: 199, type: !32)
!1082 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1077, file: !3, line: 199, type: !25)
!1083 = !DILocalVariable(name: "action", arg: 3, scope: !1077, file: !3, line: 199, type: !29)
!1084 = !DILocalVariable(name: "gpe_event_info", scope: !1077, file: !3, line: 201, type: !525)
!1085 = !DILocalVariable(name: "status", scope: !1077, file: !3, line: 202, type: !23)
!1086 = !DILocalVariable(name: "flags", scope: !1077, file: !3, line: 203, type: !35)
!1087 = !DILabel(scope: !1077, name: "unlock_and_exit", file: !3, line: 238)
!1088 = !DILocation(line: 199, column: 38, scope: !1077)
!1089 = !DILocation(line: 199, column: 54, scope: !1077)
!1090 = !DILocation(line: 199, column: 69, scope: !1077)
!1091 = !DILocation(line: 201, column: 2, scope: !1077)
!1092 = !DILocation(line: 201, column: 30, scope: !1077)
!1093 = !DILocation(line: 202, column: 2, scope: !1077)
!1094 = !DILocation(line: 202, column: 14, scope: !1077)
!1095 = !DILocation(line: 203, column: 2, scope: !1077)
!1096 = !DILocation(line: 203, column: 17, scope: !1077)
!1097 = !DILocation(line: 207, column: 31, scope: !1077)
!1098 = !DILocation(line: 207, column: 10, scope: !1077)
!1099 = !DILocation(line: 207, column: 8, scope: !1077)
!1100 = !DILocation(line: 211, column: 46, scope: !1077)
!1101 = !DILocation(line: 211, column: 58, scope: !1077)
!1102 = !DILocation(line: 211, column: 19, scope: !1077)
!1103 = !DILocation(line: 211, column: 17, scope: !1077)
!1104 = !DILocation(line: 212, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 212, column: 6)
!1106 = !DILocation(line: 212, column: 6, scope: !1077)
!1107 = !DILocation(line: 213, column: 10, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 212, column: 23)
!1109 = !DILocation(line: 214, column: 3, scope: !1108)
!1110 = !DILocation(line: 219, column: 10, scope: !1077)
!1111 = !DILocation(line: 219, column: 2, scope: !1077)
!1112 = !DILocation(line: 222, column: 32, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 219, column: 18)
!1114 = !DILocation(line: 222, column: 12, scope: !1113)
!1115 = !DILocation(line: 222, column: 10, scope: !1113)
!1116 = !DILocation(line: 223, column: 3, scope: !1113)
!1117 = !DILocation(line: 223, column: 19, scope: !1113)
!1118 = !DILocation(line: 223, column: 40, scope: !1113)
!1119 = !DILocation(line: 224, column: 3, scope: !1113)
!1120 = !DILocation(line: 228, column: 32, scope: !1113)
!1121 = !DILocation(line: 228, column: 12, scope: !1113)
!1122 = !DILocation(line: 228, column: 10, scope: !1113)
!1123 = !DILocation(line: 229, column: 3, scope: !1113)
!1124 = !DILocation(line: 229, column: 19, scope: !1113)
!1125 = !DILocation(line: 229, column: 40, scope: !1113)
!1126 = !DILocation(line: 230, column: 3, scope: !1113)
!1127 = !DILocation(line: 234, column: 10, scope: !1113)
!1128 = !DILocation(line: 235, column: 3, scope: !1113)
!1129 = !DILocation(line: 236, column: 2, scope: !1113)
!1130 = !DILocation(line: 238, column: 1, scope: !1077)
!1131 = !DILocation(line: 239, column: 23, scope: !1077)
!1132 = !DILocation(line: 239, column: 42, scope: !1077)
!1133 = !DILocation(line: 239, column: 2, scope: !1077)
!1134 = !DILocation(line: 240, column: 2, scope: !1077)
!1135 = !DILocation(line: 241, column: 1, scope: !1077)
!1136 = !DISubprogram(name: "acpi_hw_low_set_gpe", scope: !1137, file: !1137, line: 88, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!23, !525, !25}
!1140 = distinct !DISubprogram(name: "acpi_mask_gpe", scope: !3, file: !3, line: 259, type: !1078, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1142 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1140, file: !3, line: 259, type: !32)
!1143 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1140, file: !3, line: 259, type: !25)
!1144 = !DILocalVariable(name: "is_masked", arg: 3, scope: !1140, file: !3, line: 259, type: !29)
!1145 = !DILocalVariable(name: "gpe_event_info", scope: !1140, file: !3, line: 261, type: !525)
!1146 = !DILocalVariable(name: "status", scope: !1140, file: !3, line: 262, type: !23)
!1147 = !DILocalVariable(name: "flags", scope: !1140, file: !3, line: 263, type: !35)
!1148 = !DILabel(scope: !1140, name: "unlock_and_exit", file: !3, line: 279)
!1149 = !DILocation(line: 259, column: 39, scope: !1140)
!1150 = !DILocation(line: 259, column: 55, scope: !1140)
!1151 = !DILocation(line: 259, column: 70, scope: !1140)
!1152 = !DILocation(line: 261, column: 2, scope: !1140)
!1153 = !DILocation(line: 261, column: 30, scope: !1140)
!1154 = !DILocation(line: 262, column: 2, scope: !1140)
!1155 = !DILocation(line: 262, column: 14, scope: !1140)
!1156 = !DILocation(line: 263, column: 2, scope: !1140)
!1157 = !DILocation(line: 263, column: 17, scope: !1140)
!1158 = !DILocation(line: 267, column: 31, scope: !1140)
!1159 = !DILocation(line: 267, column: 10, scope: !1140)
!1160 = !DILocation(line: 267, column: 8, scope: !1140)
!1161 = !DILocation(line: 271, column: 46, scope: !1140)
!1162 = !DILocation(line: 271, column: 58, scope: !1140)
!1163 = !DILocation(line: 271, column: 19, scope: !1140)
!1164 = !DILocation(line: 271, column: 17, scope: !1140)
!1165 = !DILocation(line: 272, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 272, column: 6)
!1167 = !DILocation(line: 272, column: 6, scope: !1140)
!1168 = !DILocation(line: 273, column: 10, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 272, column: 23)
!1170 = !DILocation(line: 274, column: 3, scope: !1169)
!1171 = !DILocation(line: 277, column: 28, scope: !1140)
!1172 = !DILocation(line: 277, column: 44, scope: !1140)
!1173 = !DILocation(line: 277, column: 11, scope: !1140)
!1174 = !DILocation(line: 277, column: 9, scope: !1140)
!1175 = !DILocation(line: 277, column: 2, scope: !1140)
!1176 = !DILocation(line: 279, column: 1, scope: !1140)
!1177 = !DILocation(line: 280, column: 23, scope: !1140)
!1178 = !DILocation(line: 280, column: 42, scope: !1140)
!1179 = !DILocation(line: 280, column: 2, scope: !1140)
!1180 = !DILocation(line: 281, column: 2, scope: !1140)
!1181 = !DILocation(line: 282, column: 1, scope: !1140)
!1182 = !DISubprogram(name: "acpi_ev_mask_gpe", scope: !914, file: !914, line: 69, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = distinct !DISubprogram(name: "acpi_mark_gpe_for_wake", scope: !3, file: !3, line: 306, type: !926, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189}
!1185 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1183, file: !3, line: 306, type: !32)
!1186 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1183, file: !3, line: 306, type: !25)
!1187 = !DILocalVariable(name: "gpe_event_info", scope: !1183, file: !3, line: 308, type: !525)
!1188 = !DILocalVariable(name: "status", scope: !1183, file: !3, line: 309, type: !23)
!1189 = !DILocalVariable(name: "flags", scope: !1183, file: !3, line: 310, type: !35)
!1190 = !DILocation(line: 306, column: 48, scope: !1183)
!1191 = !DILocation(line: 306, column: 64, scope: !1183)
!1192 = !DILocation(line: 308, column: 2, scope: !1183)
!1193 = !DILocation(line: 308, column: 30, scope: !1183)
!1194 = !DILocation(line: 309, column: 2, scope: !1183)
!1195 = !DILocation(line: 309, column: 14, scope: !1183)
!1196 = !DILocation(line: 310, column: 2, scope: !1183)
!1197 = !DILocation(line: 310, column: 17, scope: !1183)
!1198 = !DILocation(line: 314, column: 31, scope: !1183)
!1199 = !DILocation(line: 314, column: 10, scope: !1183)
!1200 = !DILocation(line: 314, column: 8, scope: !1183)
!1201 = !DILocation(line: 318, column: 46, scope: !1183)
!1202 = !DILocation(line: 318, column: 58, scope: !1183)
!1203 = !DILocation(line: 318, column: 19, scope: !1183)
!1204 = !DILocation(line: 318, column: 17, scope: !1183)
!1205 = !DILocation(line: 319, column: 6, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 319, column: 6)
!1207 = !DILocation(line: 319, column: 6, scope: !1183)
!1208 = !DILocation(line: 323, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 319, column: 22)
!1210 = !DILocation(line: 323, column: 19, scope: !1209)
!1211 = !DILocation(line: 323, column: 25, scope: !1209)
!1212 = !DILocation(line: 324, column: 10, scope: !1209)
!1213 = !DILocation(line: 325, column: 2, scope: !1209)
!1214 = !DILocation(line: 327, column: 23, scope: !1183)
!1215 = !DILocation(line: 327, column: 42, scope: !1183)
!1216 = !DILocation(line: 327, column: 2, scope: !1183)
!1217 = !DILocation(line: 328, column: 2, scope: !1183)
!1218 = !DILocation(line: 329, column: 1, scope: !1183)
!1219 = distinct !DISubprogram(name: "acpi_setup_gpe_for_wake", scope: !3, file: !3, line: 352, type: !1220, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!23, !32, !32, !25}
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232}
!1223 = !DILocalVariable(name: "wake_device", arg: 1, scope: !1219, file: !3, line: 352, type: !32)
!1224 = !DILocalVariable(name: "gpe_device", arg: 2, scope: !1219, file: !3, line: 353, type: !32)
!1225 = !DILocalVariable(name: "gpe_number", arg: 3, scope: !1219, file: !3, line: 353, type: !25)
!1226 = !DILocalVariable(name: "status", scope: !1219, file: !3, line: 355, type: !23)
!1227 = !DILocalVariable(name: "gpe_event_info", scope: !1219, file: !3, line: 356, type: !525)
!1228 = !DILocalVariable(name: "device_node", scope: !1219, file: !3, line: 357, type: !40)
!1229 = !DILocalVariable(name: "notify", scope: !1219, file: !3, line: 358, type: !546)
!1230 = !DILocalVariable(name: "new_notify", scope: !1219, file: !3, line: 359, type: !546)
!1231 = !DILocalVariable(name: "flags", scope: !1219, file: !3, line: 360, type: !35)
!1232 = !DILabel(scope: !1219, name: "unlock_and_exit", file: !3, line: 464)
!1233 = !DILocation(line: 352, column: 37, scope: !1219)
!1234 = !DILocation(line: 353, column: 16, scope: !1219)
!1235 = !DILocation(line: 353, column: 32, scope: !1219)
!1236 = !DILocation(line: 355, column: 2, scope: !1219)
!1237 = !DILocation(line: 355, column: 14, scope: !1219)
!1238 = !DILocation(line: 356, column: 2, scope: !1219)
!1239 = !DILocation(line: 356, column: 30, scope: !1219)
!1240 = !DILocation(line: 357, column: 2, scope: !1219)
!1241 = !DILocation(line: 357, column: 30, scope: !1219)
!1242 = !DILocation(line: 358, column: 2, scope: !1219)
!1243 = !DILocation(line: 358, column: 31, scope: !1219)
!1244 = !DILocation(line: 359, column: 2, scope: !1219)
!1245 = !DILocation(line: 359, column: 31, scope: !1219)
!1246 = !DILocation(line: 360, column: 2, scope: !1219)
!1247 = !DILocation(line: 360, column: 17, scope: !1219)
!1248 = !DILocation(line: 366, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 366, column: 6)
!1250 = !DILocation(line: 366, column: 6, scope: !1219)
!1251 = !DILocation(line: 371, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 366, column: 20)
!1253 = !DILocation(line: 376, column: 6, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 376, column: 6)
!1255 = !DILocation(line: 376, column: 18, scope: !1254)
!1256 = !DILocation(line: 376, column: 6, scope: !1219)
!1257 = !DILocation(line: 377, column: 17, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 376, column: 39)
!1259 = !DILocation(line: 377, column: 15, scope: !1258)
!1260 = !DILocation(line: 378, column: 2, scope: !1258)
!1261 = !DILocation(line: 380, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 378, column: 9)
!1263 = !DILocation(line: 379, column: 15, scope: !1262)
!1264 = !DILocation(line: 385, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 385, column: 6)
!1266 = !DILocation(line: 385, column: 19, scope: !1265)
!1267 = !DILocation(line: 385, column: 24, scope: !1265)
!1268 = !DILocation(line: 385, column: 6, scope: !1219)
!1269 = !DILocation(line: 386, column: 3, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 385, column: 45)
!1271 = !DILocation(line: 394, column: 15, scope: !1219)
!1272 = !DILocation(line: 394, column: 13, scope: !1219)
!1273 = !DILocation(line: 395, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 395, column: 6)
!1275 = !DILocation(line: 395, column: 6, scope: !1219)
!1276 = !DILocation(line: 396, column: 3, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 395, column: 19)
!1278 = !DILocation(line: 399, column: 31, scope: !1219)
!1279 = !DILocation(line: 399, column: 10, scope: !1219)
!1280 = !DILocation(line: 399, column: 8, scope: !1219)
!1281 = !DILocation(line: 403, column: 46, scope: !1219)
!1282 = !DILocation(line: 403, column: 58, scope: !1219)
!1283 = !DILocation(line: 403, column: 19, scope: !1219)
!1284 = !DILocation(line: 403, column: 17, scope: !1219)
!1285 = !DILocation(line: 404, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 404, column: 6)
!1287 = !DILocation(line: 404, column: 6, scope: !1219)
!1288 = !DILocation(line: 405, column: 10, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 404, column: 23)
!1290 = !DILocation(line: 406, column: 3, scope: !1289)
!1291 = !DILocation(line: 415, column: 6, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 415, column: 6)
!1293 = !DILocation(line: 415, column: 52, scope: !1292)
!1294 = !DILocation(line: 415, column: 6, scope: !1219)
!1295 = !DILocation(line: 421, column: 3, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 416, column: 30)
!1297 = !DILocation(line: 421, column: 19, scope: !1296)
!1298 = !DILocation(line: 421, column: 25, scope: !1296)
!1299 = !DILocation(line: 423, column: 2, scope: !1296)
!1300 = !DILocation(line: 423, column: 13, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 423, column: 13)
!1302 = !DILocation(line: 423, column: 29, scope: !1301)
!1303 = !DILocation(line: 423, column: 35, scope: !1301)
!1304 = !DILocation(line: 423, column: 13, scope: !1292)
!1305 = !DILocation(line: 429, column: 38, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 423, column: 60)
!1307 = !DILocation(line: 429, column: 9, scope: !1306)
!1308 = !DILocation(line: 430, column: 3, scope: !1306)
!1309 = !DILocation(line: 430, column: 19, scope: !1306)
!1310 = !DILocation(line: 430, column: 25, scope: !1306)
!1311 = !DILocation(line: 431, column: 2, scope: !1306)
!1312 = !DILocation(line: 437, column: 6, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 437, column: 6)
!1314 = !DILocation(line: 437, column: 52, scope: !1313)
!1315 = !DILocation(line: 437, column: 6, scope: !1219)
!1316 = !DILocation(line: 442, column: 12, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 438, column: 32)
!1318 = !DILocation(line: 442, column: 28, scope: !1317)
!1319 = !DILocation(line: 442, column: 37, scope: !1317)
!1320 = !DILocation(line: 442, column: 10, scope: !1317)
!1321 = !DILocation(line: 443, column: 3, scope: !1317)
!1322 = !DILocation(line: 443, column: 10, scope: !1317)
!1323 = !DILocation(line: 444, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 444, column: 8)
!1325 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 443, column: 18)
!1326 = !DILocation(line: 444, column: 16, scope: !1324)
!1327 = !DILocation(line: 444, column: 31, scope: !1324)
!1328 = !DILocation(line: 444, column: 28, scope: !1324)
!1329 = !DILocation(line: 444, column: 8, scope: !1325)
!1330 = !DILocation(line: 445, column: 12, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 444, column: 44)
!1332 = !DILocation(line: 446, column: 5, scope: !1331)
!1333 = !DILocation(line: 448, column: 13, scope: !1325)
!1334 = !DILocation(line: 448, column: 21, scope: !1325)
!1335 = !DILocation(line: 448, column: 11, scope: !1325)
!1336 = distinct !{!1336, !1321, !1337, !1338, !1339}
!1337 = !DILocation(line: 449, column: 3, scope: !1317)
!1338 = !{!"llvm.loop.mustprogress"}
!1339 = !{!"llvm.loop.unroll.disable"}
!1340 = !DILocation(line: 453, column: 29, scope: !1317)
!1341 = !DILocation(line: 453, column: 3, scope: !1317)
!1342 = !DILocation(line: 453, column: 15, scope: !1317)
!1343 = !DILocation(line: 453, column: 27, scope: !1317)
!1344 = !DILocation(line: 454, column: 22, scope: !1317)
!1345 = !DILocation(line: 454, column: 38, scope: !1317)
!1346 = !DILocation(line: 454, column: 47, scope: !1317)
!1347 = !DILocation(line: 454, column: 3, scope: !1317)
!1348 = !DILocation(line: 454, column: 15, scope: !1317)
!1349 = !DILocation(line: 454, column: 20, scope: !1317)
!1350 = !DILocation(line: 455, column: 42, scope: !1317)
!1351 = !DILocation(line: 455, column: 3, scope: !1317)
!1352 = !DILocation(line: 455, column: 19, scope: !1317)
!1353 = !DILocation(line: 455, column: 40, scope: !1317)
!1354 = !DILocation(line: 456, column: 14, scope: !1317)
!1355 = !DILocation(line: 457, column: 2, scope: !1317)
!1356 = !DILocation(line: 461, column: 2, scope: !1219)
!1357 = !DILocation(line: 461, column: 18, scope: !1219)
!1358 = !DILocation(line: 461, column: 24, scope: !1219)
!1359 = !DILocation(line: 462, column: 9, scope: !1219)
!1360 = !DILocation(line: 462, column: 2, scope: !1219)
!1361 = !DILocation(line: 464, column: 1, scope: !1219)
!1362 = !DILocation(line: 465, column: 23, scope: !1219)
!1363 = !DILocation(line: 465, column: 42, scope: !1219)
!1364 = !DILocation(line: 465, column: 2, scope: !1219)
!1365 = !DILocation(line: 469, column: 6, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 469, column: 6)
!1367 = !DILocation(line: 469, column: 6, scope: !1219)
!1368 = !DILocation(line: 470, column: 3, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 469, column: 18)
!1370 = !DILocation(line: 471, column: 2, scope: !1369)
!1371 = !DILocation(line: 472, column: 2, scope: !1219)
!1372 = !DILocation(line: 473, column: 1, scope: !1219)
!1373 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1374, file: !1374, line: 55, type: !1375, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1377)
!1374 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!22, !36}
!1377 = !{!1378, !1379, !1381, !1384, !1385, !1388}
!1378 = !DILocalVariable(name: "size", arg: 1, scope: !1373, file: !1374, line: 55, type: !36)
!1379 = !DILocalVariable(name: "_flags", scope: !1380, file: !1374, line: 57, type: !35)
!1380 = distinct !DILexicalBlock(scope: !1373, file: !1374, line: 57, column: 23)
!1381 = !DILocalVariable(name: "__dummy", scope: !1382, file: !1374, line: 57, type: !35)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1374, line: 57, column: 23)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !1374, line: 57, column: 23)
!1384 = !DILocalVariable(name: "__dummy2", scope: !1382, file: !1374, line: 57, type: !35)
!1385 = !DILocalVariable(name: "__dummy", scope: !1386, file: !1374, line: 57, type: !35)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !1374, line: 57, column: 23)
!1387 = distinct !DILexicalBlock(scope: !1380, file: !1374, line: 57, column: 23)
!1388 = !DILocalVariable(name: "__dummy2", scope: !1386, file: !1374, line: 57, type: !35)
!1389 = !DILocation(line: 55, column: 55, scope: !1373)
!1390 = !DILocation(line: 57, column: 17, scope: !1373)
!1391 = !DILocation(line: 57, column: 23, scope: !1380)
!1392 = !DILocation(line: 57, column: 23, scope: !1382)
!1393 = !DILocation(line: 57, column: 23, scope: !1383)
!1394 = !DILocation(line: 57, column: 23, scope: !1386)
!1395 = !DILocation(line: 57, column: 23, scope: !1387)
!1396 = !DILocation(line: 57, column: 23, scope: !1373)
!1397 = !DILocation(line: 57, column: 9, scope: !1373)
!1398 = !DILocation(line: 57, column: 2, scope: !1373)
!1399 = distinct !DISubprogram(name: "acpi_os_free", scope: !1374, file: !1374, line: 60, type: !1400, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1402)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !22}
!1402 = !{!1403}
!1403 = !DILocalVariable(name: "memory", arg: 1, scope: !1399, file: !1374, line: 60, type: !22)
!1404 = !DILocation(line: 60, column: 39, scope: !1399)
!1405 = !DILocation(line: 62, column: 8, scope: !1399)
!1406 = !DILocation(line: 62, column: 2, scope: !1399)
!1407 = !DILocation(line: 63, column: 1, scope: !1399)
!1408 = distinct !DISubprogram(name: "acpi_set_gpe_wake_mask", scope: !3, file: !3, line: 492, type: !1078, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418}
!1410 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1408, file: !3, line: 492, type: !32)
!1411 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1408, file: !3, line: 492, type: !25)
!1412 = !DILocalVariable(name: "action", arg: 3, scope: !1408, file: !3, line: 492, type: !29)
!1413 = !DILocalVariable(name: "status", scope: !1408, file: !3, line: 494, type: !23)
!1414 = !DILocalVariable(name: "gpe_event_info", scope: !1408, file: !3, line: 495, type: !525)
!1415 = !DILocalVariable(name: "gpe_register_info", scope: !1408, file: !3, line: 496, type: !510)
!1416 = !DILocalVariable(name: "flags", scope: !1408, file: !3, line: 497, type: !35)
!1417 = !DILocalVariable(name: "register_bit", scope: !1408, file: !3, line: 498, type: !25)
!1418 = !DILabel(scope: !1408, name: "unlock_and_exit", file: !3, line: 549)
!1419 = !DILocation(line: 492, column: 36, scope: !1408)
!1420 = !DILocation(line: 492, column: 52, scope: !1408)
!1421 = !DILocation(line: 492, column: 67, scope: !1408)
!1422 = !DILocation(line: 494, column: 2, scope: !1408)
!1423 = !DILocation(line: 494, column: 14, scope: !1408)
!1424 = !DILocation(line: 495, column: 2, scope: !1408)
!1425 = !DILocation(line: 495, column: 30, scope: !1408)
!1426 = !DILocation(line: 496, column: 2, scope: !1408)
!1427 = !DILocation(line: 496, column: 33, scope: !1408)
!1428 = !DILocation(line: 497, column: 2, scope: !1408)
!1429 = !DILocation(line: 497, column: 17, scope: !1408)
!1430 = !DILocation(line: 498, column: 2, scope: !1408)
!1431 = !DILocation(line: 498, column: 6, scope: !1408)
!1432 = !DILocation(line: 502, column: 31, scope: !1408)
!1433 = !DILocation(line: 502, column: 10, scope: !1408)
!1434 = !DILocation(line: 502, column: 8, scope: !1408)
!1435 = !DILocation(line: 508, column: 46, scope: !1408)
!1436 = !DILocation(line: 508, column: 58, scope: !1408)
!1437 = !DILocation(line: 508, column: 19, scope: !1408)
!1438 = !DILocation(line: 508, column: 17, scope: !1408)
!1439 = !DILocation(line: 509, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 509, column: 6)
!1441 = !DILocation(line: 509, column: 6, scope: !1408)
!1442 = !DILocation(line: 510, column: 10, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 509, column: 23)
!1444 = !DILocation(line: 511, column: 3, scope: !1443)
!1445 = !DILocation(line: 514, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 514, column: 6)
!1447 = !DILocation(line: 514, column: 24, scope: !1446)
!1448 = !DILocation(line: 514, column: 30, scope: !1446)
!1449 = !DILocation(line: 514, column: 6, scope: !1408)
!1450 = !DILocation(line: 515, column: 10, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 514, column: 52)
!1452 = !DILocation(line: 516, column: 3, scope: !1451)
!1453 = !DILocation(line: 519, column: 22, scope: !1408)
!1454 = !DILocation(line: 519, column: 38, scope: !1408)
!1455 = !DILocation(line: 519, column: 20, scope: !1408)
!1456 = !DILocation(line: 520, column: 7, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 520, column: 6)
!1458 = !DILocation(line: 520, column: 6, scope: !1408)
!1459 = !DILocation(line: 521, column: 10, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 520, column: 26)
!1461 = !DILocation(line: 522, column: 3, scope: !1460)
!1462 = !DILocation(line: 525, column: 46, scope: !1408)
!1463 = !DILocation(line: 525, column: 17, scope: !1408)
!1464 = !DILocation(line: 525, column: 15, scope: !1408)
!1465 = !DILocation(line: 529, column: 10, scope: !1408)
!1466 = !DILocation(line: 529, column: 2, scope: !1408)
!1467 = !DILocation(line: 532, column: 3, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 529, column: 18)
!1469 = !DILocation(line: 534, column: 3, scope: !1468)
!1470 = !DILocation(line: 538, column: 3, scope: !1468)
!1471 = !DILocation(line: 540, column: 3, scope: !1468)
!1472 = !DILocation(line: 544, column: 3, scope: !1468)
!1473 = !DILocation(line: 545, column: 10, scope: !1468)
!1474 = !DILocation(line: 546, column: 3, scope: !1468)
!1475 = !DILocation(line: 547, column: 2, scope: !1468)
!1476 = !DILocation(line: 549, column: 1, scope: !1408)
!1477 = !DILocation(line: 550, column: 23, scope: !1408)
!1478 = !DILocation(line: 550, column: 42, scope: !1408)
!1479 = !DILocation(line: 550, column: 2, scope: !1408)
!1480 = !DILocation(line: 551, column: 2, scope: !1408)
!1481 = !DILocation(line: 552, column: 1, scope: !1408)
!1482 = !DISubprogram(name: "acpi_hw_get_gpe_register_bit", scope: !1137, file: !1137, line: 85, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!25, !525}
!1485 = !DISubprogram(name: "acpi_error", scope: !1486, file: !1486, line: 901, type: !1487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1486 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !1489, !25, !1489, null}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!1490 = distinct !DISubprogram(name: "acpi_clear_gpe", scope: !3, file: !3, line: 568, type: !926, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497}
!1492 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1490, file: !3, line: 568, type: !32)
!1493 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1490, file: !3, line: 568, type: !25)
!1494 = !DILocalVariable(name: "status", scope: !1490, file: !3, line: 570, type: !23)
!1495 = !DILocalVariable(name: "gpe_event_info", scope: !1490, file: !3, line: 571, type: !525)
!1496 = !DILocalVariable(name: "flags", scope: !1490, file: !3, line: 572, type: !35)
!1497 = !DILabel(scope: !1490, name: "unlock_and_exit", file: !3, line: 588)
!1498 = !DILocation(line: 568, column: 40, scope: !1490)
!1499 = !DILocation(line: 568, column: 56, scope: !1490)
!1500 = !DILocation(line: 570, column: 2, scope: !1490)
!1501 = !DILocation(line: 570, column: 14, scope: !1490)
!1502 = !DILocation(line: 571, column: 2, scope: !1490)
!1503 = !DILocation(line: 571, column: 30, scope: !1490)
!1504 = !DILocation(line: 572, column: 2, scope: !1490)
!1505 = !DILocation(line: 572, column: 17, scope: !1490)
!1506 = !DILocation(line: 576, column: 31, scope: !1490)
!1507 = !DILocation(line: 576, column: 10, scope: !1490)
!1508 = !DILocation(line: 576, column: 8, scope: !1490)
!1509 = !DILocation(line: 580, column: 46, scope: !1490)
!1510 = !DILocation(line: 580, column: 58, scope: !1490)
!1511 = !DILocation(line: 580, column: 19, scope: !1490)
!1512 = !DILocation(line: 580, column: 17, scope: !1490)
!1513 = !DILocation(line: 581, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 581, column: 6)
!1515 = !DILocation(line: 581, column: 6, scope: !1490)
!1516 = !DILocation(line: 582, column: 10, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 581, column: 23)
!1518 = !DILocation(line: 583, column: 3, scope: !1517)
!1519 = !DILocation(line: 586, column: 29, scope: !1490)
!1520 = !DILocation(line: 586, column: 11, scope: !1490)
!1521 = !DILocation(line: 586, column: 9, scope: !1490)
!1522 = !DILocation(line: 586, column: 2, scope: !1490)
!1523 = !DILocation(line: 588, column: 7, scope: !1490)
!1524 = !DILocation(line: 589, column: 23, scope: !1490)
!1525 = !DILocation(line: 589, column: 42, scope: !1490)
!1526 = !DILocation(line: 589, column: 2, scope: !1490)
!1527 = !DILocation(line: 590, column: 2, scope: !1490)
!1528 = !DILocation(line: 591, column: 1, scope: !1490)
!1529 = !DISubprogram(name: "acpi_hw_clear_gpe", scope: !1137, file: !1137, line: 94, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1530 = distinct !DISubprogram(name: "acpi_get_gpe_status", scope: !3, file: !3, line: 610, type: !1531, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1535)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!23, !32, !25, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_status", file: !24, line: 747, baseType: !25)
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1536 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1530, file: !3, line: 610, type: !32)
!1537 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1530, file: !3, line: 611, type: !25)
!1538 = !DILocalVariable(name: "event_status", arg: 3, scope: !1530, file: !3, line: 611, type: !1533)
!1539 = !DILocalVariable(name: "status", scope: !1530, file: !3, line: 613, type: !23)
!1540 = !DILocalVariable(name: "gpe_event_info", scope: !1530, file: !3, line: 614, type: !525)
!1541 = !DILocalVariable(name: "flags", scope: !1530, file: !3, line: 615, type: !35)
!1542 = !DILabel(scope: !1530, name: "unlock_and_exit", file: !3, line: 633)
!1543 = !DILocation(line: 610, column: 33, scope: !1530)
!1544 = !DILocation(line: 611, column: 11, scope: !1530)
!1545 = !DILocation(line: 611, column: 42, scope: !1530)
!1546 = !DILocation(line: 613, column: 2, scope: !1530)
!1547 = !DILocation(line: 613, column: 14, scope: !1530)
!1548 = !DILocation(line: 614, column: 2, scope: !1530)
!1549 = !DILocation(line: 614, column: 30, scope: !1530)
!1550 = !DILocation(line: 615, column: 2, scope: !1530)
!1551 = !DILocation(line: 615, column: 17, scope: !1530)
!1552 = !DILocation(line: 619, column: 31, scope: !1530)
!1553 = !DILocation(line: 619, column: 10, scope: !1530)
!1554 = !DILocation(line: 619, column: 8, scope: !1530)
!1555 = !DILocation(line: 623, column: 46, scope: !1530)
!1556 = !DILocation(line: 623, column: 58, scope: !1530)
!1557 = !DILocation(line: 623, column: 19, scope: !1530)
!1558 = !DILocation(line: 623, column: 17, scope: !1530)
!1559 = !DILocation(line: 624, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 624, column: 6)
!1561 = !DILocation(line: 624, column: 6, scope: !1530)
!1562 = !DILocation(line: 625, column: 10, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 624, column: 23)
!1564 = !DILocation(line: 626, column: 3, scope: !1563)
!1565 = !DILocation(line: 631, column: 34, scope: !1530)
!1566 = !DILocation(line: 631, column: 50, scope: !1530)
!1567 = !DILocation(line: 631, column: 11, scope: !1530)
!1568 = !DILocation(line: 631, column: 9, scope: !1530)
!1569 = !DILocation(line: 631, column: 2, scope: !1530)
!1570 = !DILocation(line: 633, column: 1, scope: !1530)
!1571 = !DILocation(line: 634, column: 23, scope: !1530)
!1572 = !DILocation(line: 634, column: 42, scope: !1530)
!1573 = !DILocation(line: 634, column: 2, scope: !1530)
!1574 = !DILocation(line: 635, column: 2, scope: !1530)
!1575 = !DILocation(line: 636, column: 1, scope: !1530)
!1576 = !DISubprogram(name: "acpi_hw_get_gpe_status", scope: !1137, file: !1137, line: 101, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!23, !525, !1533}
!1579 = distinct !DISubprogram(name: "acpi_dispatch_gpe", scope: !3, file: !3, line: 653, type: !1580, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!25, !32, !25}
!1582 = !{!1583, !1584}
!1583 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1579, file: !3, line: 653, type: !32)
!1584 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1579, file: !3, line: 653, type: !25)
!1585 = !DILocation(line: 653, column: 35, scope: !1579)
!1586 = !DILocation(line: 653, column: 51, scope: !1579)
!1587 = !DILocation(line: 657, column: 28, scope: !1579)
!1588 = !DILocation(line: 657, column: 46, scope: !1579)
!1589 = !DILocation(line: 657, column: 9, scope: !1579)
!1590 = !DILocation(line: 657, column: 2, scope: !1579)
!1591 = distinct !DISubprogram(name: "acpi_finish_gpe", scope: !3, file: !3, line: 678, type: !926, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598}
!1593 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1591, file: !3, line: 678, type: !32)
!1594 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1591, file: !3, line: 678, type: !25)
!1595 = !DILocalVariable(name: "gpe_event_info", scope: !1591, file: !3, line: 680, type: !525)
!1596 = !DILocalVariable(name: "status", scope: !1591, file: !3, line: 681, type: !23)
!1597 = !DILocalVariable(name: "flags", scope: !1591, file: !3, line: 682, type: !35)
!1598 = !DILabel(scope: !1591, name: "unlock_and_exit", file: !3, line: 698)
!1599 = !DILocation(line: 678, column: 41, scope: !1591)
!1600 = !DILocation(line: 678, column: 57, scope: !1591)
!1601 = !DILocation(line: 680, column: 2, scope: !1591)
!1602 = !DILocation(line: 680, column: 30, scope: !1591)
!1603 = !DILocation(line: 681, column: 2, scope: !1591)
!1604 = !DILocation(line: 681, column: 14, scope: !1591)
!1605 = !DILocation(line: 682, column: 2, scope: !1591)
!1606 = !DILocation(line: 682, column: 17, scope: !1591)
!1607 = !DILocation(line: 686, column: 31, scope: !1591)
!1608 = !DILocation(line: 686, column: 10, scope: !1591)
!1609 = !DILocation(line: 686, column: 8, scope: !1591)
!1610 = !DILocation(line: 690, column: 46, scope: !1591)
!1611 = !DILocation(line: 690, column: 58, scope: !1591)
!1612 = !DILocation(line: 690, column: 19, scope: !1591)
!1613 = !DILocation(line: 690, column: 17, scope: !1591)
!1614 = !DILocation(line: 691, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 691, column: 6)
!1616 = !DILocation(line: 691, column: 6, scope: !1591)
!1617 = !DILocation(line: 692, column: 10, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 691, column: 23)
!1619 = !DILocation(line: 693, column: 3, scope: !1618)
!1620 = !DILocation(line: 696, column: 30, scope: !1591)
!1621 = !DILocation(line: 696, column: 11, scope: !1591)
!1622 = !DILocation(line: 696, column: 9, scope: !1591)
!1623 = !DILocation(line: 696, column: 2, scope: !1591)
!1624 = !DILocation(line: 698, column: 1, scope: !1591)
!1625 = !DILocation(line: 699, column: 23, scope: !1591)
!1626 = !DILocation(line: 699, column: 42, scope: !1591)
!1627 = !DILocation(line: 699, column: 2, scope: !1591)
!1628 = !DILocation(line: 700, column: 2, scope: !1591)
!1629 = !DILocation(line: 701, column: 1, scope: !1591)
!1630 = !DISubprogram(name: "acpi_ev_finish_gpe", scope: !914, file: !914, line: 85, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1631 = distinct !DISubprogram(name: "acpi_disable_all_gpes", scope: !3, file: !3, line: 717, type: !865, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1632)
!1632 = !{!1633}
!1633 = !DILocalVariable(name: "status", scope: !1631, file: !3, line: 719, type: !23)
!1634 = !DILocation(line: 719, column: 2, scope: !1631)
!1635 = !DILocation(line: 719, column: 14, scope: !1631)
!1636 = !DILocation(line: 723, column: 11, scope: !1631)
!1637 = !DILocation(line: 723, column: 9, scope: !1631)
!1638 = !DILocation(line: 724, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 724, column: 6)
!1640 = !DILocation(line: 724, column: 6, scope: !1631)
!1641 = !DILocation(line: 725, column: 3, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 724, column: 28)
!1643 = !DILocation(line: 728, column: 11, scope: !1631)
!1644 = !DILocation(line: 728, column: 9, scope: !1631)
!1645 = !DILocation(line: 729, column: 8, scope: !1631)
!1646 = !DILocation(line: 731, column: 2, scope: !1631)
!1647 = !DILocation(line: 732, column: 1, scope: !1631)
!1648 = !DISubprogram(name: "acpi_hw_disable_all_gpes", scope: !1486, file: !1486, line: 765, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1649 = distinct !DISubprogram(name: "acpi_enable_all_runtime_gpes", scope: !3, file: !3, line: 748, type: !865, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1650)
!1650 = !{!1651}
!1651 = !DILocalVariable(name: "status", scope: !1649, file: !3, line: 750, type: !23)
!1652 = !DILocation(line: 750, column: 2, scope: !1649)
!1653 = !DILocation(line: 750, column: 14, scope: !1649)
!1654 = !DILocation(line: 754, column: 11, scope: !1649)
!1655 = !DILocation(line: 754, column: 9, scope: !1649)
!1656 = !DILocation(line: 755, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 755, column: 6)
!1658 = !DILocation(line: 755, column: 6, scope: !1649)
!1659 = !DILocation(line: 756, column: 3, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 755, column: 28)
!1661 = !DILocation(line: 759, column: 11, scope: !1649)
!1662 = !DILocation(line: 759, column: 9, scope: !1649)
!1663 = !DILocation(line: 760, column: 8, scope: !1649)
!1664 = !DILocation(line: 762, column: 2, scope: !1649)
!1665 = !DILocation(line: 763, column: 1, scope: !1649)
!1666 = !DISubprogram(name: "acpi_hw_enable_all_runtime_gpes", scope: !1137, file: !1137, line: 104, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1667 = distinct !DISubprogram(name: "acpi_enable_all_wakeup_gpes", scope: !3, file: !3, line: 779, type: !865, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1668)
!1668 = !{!1669}
!1669 = !DILocalVariable(name: "status", scope: !1667, file: !3, line: 781, type: !23)
!1670 = !DILocation(line: 781, column: 2, scope: !1667)
!1671 = !DILocation(line: 781, column: 14, scope: !1667)
!1672 = !DILocation(line: 785, column: 11, scope: !1667)
!1673 = !DILocation(line: 785, column: 9, scope: !1667)
!1674 = !DILocation(line: 786, column: 6, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 786, column: 6)
!1676 = !DILocation(line: 786, column: 6, scope: !1667)
!1677 = !DILocation(line: 787, column: 3, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 786, column: 28)
!1679 = !DILocation(line: 790, column: 11, scope: !1667)
!1680 = !DILocation(line: 790, column: 9, scope: !1667)
!1681 = !DILocation(line: 791, column: 8, scope: !1667)
!1682 = !DILocation(line: 793, column: 2, scope: !1667)
!1683 = !DILocation(line: 794, column: 1, scope: !1667)
!1684 = !DISubprogram(name: "acpi_hw_enable_all_wakeup_gpes", scope: !1486, file: !1486, line: 766, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = distinct !DISubprogram(name: "acpi_any_gpe_status_set", scope: !3, file: !3, line: 811, type: !1686, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!25, !25}
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DILocalVariable(name: "gpe_skip_number", arg: 1, scope: !1685, file: !3, line: 811, type: !25)
!1690 = !DILocalVariable(name: "status", scope: !1685, file: !3, line: 813, type: !23)
!1691 = !DILocalVariable(name: "gpe_device", scope: !1685, file: !3, line: 814, type: !32)
!1692 = !DILocalVariable(name: "ret", scope: !1685, file: !3, line: 815, type: !29)
!1693 = !DILocation(line: 811, column: 33, scope: !1685)
!1694 = !DILocation(line: 813, column: 2, scope: !1685)
!1695 = !DILocation(line: 813, column: 14, scope: !1685)
!1696 = !DILocation(line: 814, column: 2, scope: !1685)
!1697 = !DILocation(line: 814, column: 14, scope: !1685)
!1698 = !DILocation(line: 815, column: 2, scope: !1685)
!1699 = !DILocation(line: 815, column: 5, scope: !1685)
!1700 = !DILocation(line: 819, column: 11, scope: !1685)
!1701 = !DILocation(line: 819, column: 9, scope: !1685)
!1702 = !DILocation(line: 820, column: 6, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 820, column: 6)
!1704 = !DILocation(line: 820, column: 6, scope: !1685)
!1705 = !DILocation(line: 821, column: 3, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 820, column: 28)
!1707 = !DILocation(line: 824, column: 31, scope: !1685)
!1708 = !DILocation(line: 824, column: 11, scope: !1685)
!1709 = !DILocation(line: 824, column: 9, scope: !1685)
!1710 = !DILocation(line: 825, column: 6, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 825, column: 6)
!1712 = !DILocation(line: 825, column: 6, scope: !1685)
!1713 = !DILocation(line: 826, column: 14, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 825, column: 28)
!1715 = !DILocation(line: 827, column: 2, scope: !1714)
!1716 = !DILocation(line: 829, column: 31, scope: !1685)
!1717 = !DILocation(line: 829, column: 43, scope: !1685)
!1718 = !DILocation(line: 829, column: 8, scope: !1685)
!1719 = !DILocation(line: 829, column: 6, scope: !1685)
!1720 = !DILocation(line: 830, column: 8, scope: !1685)
!1721 = !DILocation(line: 832, column: 10, scope: !1685)
!1722 = !DILocation(line: 832, column: 9, scope: !1685)
!1723 = !DILocation(line: 832, column: 2, scope: !1685)
!1724 = !DILocation(line: 833, column: 1, scope: !1685)
!1725 = distinct !DISubprogram(name: "acpi_get_gpe_device", scope: !3, file: !3, line: 1017, type: !1726, scopeLine: 1018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!23, !25, !802}
!1728 = !{!1729, !1730, !1731, !1738}
!1729 = !DILocalVariable(name: "index", arg: 1, scope: !1725, file: !3, line: 1017, type: !25)
!1730 = !DILocalVariable(name: "gpe_device", arg: 2, scope: !1725, file: !3, line: 1017, type: !802)
!1731 = !DILocalVariable(name: "info", scope: !1725, file: !3, line: 1019, type: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_device_info", file: !42, line: 512, size: 192, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1732, file: !42, line: 513, baseType: !25, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "next_block_base_index", scope: !1732, file: !42, line: 514, baseType: !25, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1732, file: !42, line: 515, baseType: !23, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1732, file: !42, line: 516, baseType: !40, size: 64, offset: 128)
!1738 = !DILocalVariable(name: "status", scope: !1725, file: !3, line: 1020, type: !23)
!1739 = !DILocation(line: 1017, column: 37, scope: !1725)
!1740 = !DILocation(line: 1017, column: 57, scope: !1725)
!1741 = !DILocation(line: 1019, column: 2, scope: !1725)
!1742 = !DILocation(line: 1019, column: 30, scope: !1725)
!1743 = !DILocation(line: 1020, column: 2, scope: !1725)
!1744 = !DILocation(line: 1020, column: 14, scope: !1725)
!1745 = !DILocation(line: 1024, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1024, column: 6)
!1747 = !DILocation(line: 1024, column: 6, scope: !1725)
!1748 = !DILocation(line: 1025, column: 3, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 1024, column: 19)
!1750 = !DILocation(line: 1028, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1028, column: 6)
!1752 = !DILocation(line: 1028, column: 15, scope: !1751)
!1753 = !DILocation(line: 1028, column: 12, scope: !1751)
!1754 = !DILocation(line: 1028, column: 6, scope: !1725)
!1755 = !DILocation(line: 1029, column: 3, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 1028, column: 39)
!1757 = !DILocation(line: 1034, column: 15, scope: !1725)
!1758 = !DILocation(line: 1034, column: 7, scope: !1725)
!1759 = !DILocation(line: 1034, column: 13, scope: !1725)
!1760 = !DILocation(line: 1035, column: 7, scope: !1725)
!1761 = !DILocation(line: 1035, column: 14, scope: !1725)
!1762 = !DILocation(line: 1036, column: 7, scope: !1725)
!1763 = !DILocation(line: 1036, column: 18, scope: !1725)
!1764 = !DILocation(line: 1037, column: 7, scope: !1725)
!1765 = !DILocation(line: 1037, column: 29, scope: !1725)
!1766 = !DILocation(line: 1039, column: 11, scope: !1725)
!1767 = !DILocation(line: 1039, column: 9, scope: !1725)
!1768 = !DILocation(line: 1040, column: 6, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1040, column: 6)
!1770 = !DILocation(line: 1040, column: 6, scope: !1725)
!1771 = !DILocation(line: 1041, column: 3, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1040, column: 28)
!1773 = !DILocation(line: 1044, column: 16, scope: !1725)
!1774 = !DILocation(line: 1044, column: 3, scope: !1725)
!1775 = !DILocation(line: 1044, column: 14, scope: !1725)
!1776 = !DILocation(line: 1045, column: 2, scope: !1725)
!1777 = !DILocation(line: 1046, column: 1, scope: !1725)
!1778 = !DISubprogram(name: "acpi_hw_check_all_gpes", scope: !1137, file: !1137, line: 106, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!29, !32, !25}
!1781 = distinct !DISubprogram(name: "acpi_install_gpe_block", scope: !3, file: !3, line: 853, type: !1782, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1792)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!23, !32, !1784, !25, !25}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !794, line: 90, size: 96, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1785, file: !794, line: 91, baseType: !29, size: 8)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1785, file: !794, line: 92, baseType: !29, size: 8, offset: 8)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1785, file: !794, line: 93, baseType: !29, size: 8, offset: 16)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !1785, file: !794, line: 94, baseType: !29, size: 8, offset: 24)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1785, file: !794, line: 95, baseType: !37, size: 64, offset: 32)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1793 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1781, file: !3, line: 853, type: !32)
!1794 = !DILocalVariable(name: "gpe_block_address", arg: 2, scope: !1781, file: !3, line: 854, type: !1784)
!1795 = !DILocalVariable(name: "register_count", arg: 3, scope: !1781, file: !3, line: 855, type: !25)
!1796 = !DILocalVariable(name: "interrupt_number", arg: 4, scope: !1781, file: !3, line: 855, type: !25)
!1797 = !DILocalVariable(name: "status", scope: !1781, file: !3, line: 857, type: !23)
!1798 = !DILocalVariable(name: "obj_desc", scope: !1781, file: !3, line: 858, type: !45)
!1799 = !DILocalVariable(name: "node", scope: !1781, file: !3, line: 859, type: !40)
!1800 = !DILocalVariable(name: "gpe_block", scope: !1781, file: !3, line: 860, type: !495)
!1801 = !DILabel(scope: !1781, name: "unlock_and_exit", file: !3, line: 934)
!1802 = !DILocation(line: 853, column: 36, scope: !1781)
!1803 = !DILocation(line: 854, column: 39, scope: !1781)
!1804 = !DILocation(line: 855, column: 14, scope: !1781)
!1805 = !DILocation(line: 855, column: 34, scope: !1781)
!1806 = !DILocation(line: 857, column: 2, scope: !1781)
!1807 = !DILocation(line: 857, column: 14, scope: !1781)
!1808 = !DILocation(line: 858, column: 2, scope: !1781)
!1809 = !DILocation(line: 858, column: 29, scope: !1781)
!1810 = !DILocation(line: 859, column: 2, scope: !1781)
!1811 = !DILocation(line: 859, column: 30, scope: !1781)
!1812 = !DILocation(line: 860, column: 2, scope: !1781)
!1813 = !DILocation(line: 860, column: 30, scope: !1781)
!1814 = !DILocation(line: 864, column: 8, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 864, column: 6)
!1816 = !DILocation(line: 864, column: 20, scope: !1815)
!1817 = !DILocation(line: 864, column: 25, scope: !1815)
!1818 = !DILocation(line: 864, column: 44, scope: !1815)
!1819 = !DILocation(line: 864, column: 49, scope: !1815)
!1820 = !DILocation(line: 864, column: 6, scope: !1781)
!1821 = !DILocation(line: 865, column: 3, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 864, column: 66)
!1823 = !DILocation(line: 868, column: 11, scope: !1781)
!1824 = !DILocation(line: 868, column: 9, scope: !1781)
!1825 = !DILocation(line: 869, column: 6, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 869, column: 6)
!1827 = !DILocation(line: 869, column: 6, scope: !1781)
!1828 = !DILocation(line: 870, column: 3, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 869, column: 28)
!1830 = !DILocation(line: 873, column: 33, scope: !1781)
!1831 = !DILocation(line: 873, column: 9, scope: !1781)
!1832 = !DILocation(line: 873, column: 7, scope: !1781)
!1833 = !DILocation(line: 874, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 874, column: 6)
!1835 = !DILocation(line: 874, column: 6, scope: !1781)
!1836 = !DILocation(line: 875, column: 10, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 874, column: 13)
!1838 = !DILocation(line: 876, column: 3, scope: !1837)
!1839 = !DILocation(line: 881, column: 6, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 881, column: 6)
!1841 = !DILocation(line: 881, column: 12, scope: !1840)
!1842 = !DILocation(line: 881, column: 17, scope: !1840)
!1843 = !DILocation(line: 881, column: 6, scope: !1781)
!1844 = !DILocation(line: 882, column: 10, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 881, column: 38)
!1846 = !DILocation(line: 883, column: 3, scope: !1845)
!1847 = !DILocation(line: 886, column: 6, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 886, column: 6)
!1849 = !DILocation(line: 886, column: 12, scope: !1848)
!1850 = !DILocation(line: 886, column: 6, scope: !1781)
!1851 = !DILocation(line: 887, column: 10, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 886, column: 20)
!1853 = !DILocation(line: 888, column: 3, scope: !1852)
!1854 = !DILocation(line: 895, column: 36, scope: !1781)
!1855 = !DILocation(line: 895, column: 42, scope: !1781)
!1856 = !DILocation(line: 895, column: 61, scope: !1781)
!1857 = !DILocation(line: 896, column: 8, scope: !1781)
!1858 = !DILocation(line: 896, column: 27, scope: !1781)
!1859 = !DILocation(line: 897, column: 8, scope: !1781)
!1860 = !DILocation(line: 897, column: 27, scope: !1781)
!1861 = !DILocation(line: 895, column: 11, scope: !1781)
!1862 = !DILocation(line: 895, column: 9, scope: !1781)
!1863 = !DILocation(line: 899, column: 6, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 899, column: 6)
!1865 = !DILocation(line: 899, column: 6, scope: !1781)
!1866 = !DILocation(line: 900, column: 3, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 899, column: 28)
!1868 = !DILocation(line: 905, column: 41, scope: !1781)
!1869 = !DILocation(line: 905, column: 13, scope: !1781)
!1870 = !DILocation(line: 905, column: 11, scope: !1781)
!1871 = !DILocation(line: 906, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 906, column: 6)
!1873 = !DILocation(line: 906, column: 6, scope: !1781)
!1874 = !DILocation(line: 912, column: 14, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 906, column: 17)
!1876 = !DILocation(line: 912, column: 12, scope: !1875)
!1877 = !DILocation(line: 913, column: 8, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 913, column: 7)
!1879 = !DILocation(line: 913, column: 7, scope: !1875)
!1880 = !DILocation(line: 914, column: 11, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 913, column: 18)
!1882 = !DILocation(line: 915, column: 4, scope: !1881)
!1883 = !DILocation(line: 919, column: 29, scope: !1875)
!1884 = !DILocation(line: 919, column: 35, scope: !1875)
!1885 = !DILocation(line: 919, column: 7, scope: !1875)
!1886 = !DILocation(line: 918, column: 10, scope: !1875)
!1887 = !DILocation(line: 923, column: 28, scope: !1875)
!1888 = !DILocation(line: 923, column: 3, scope: !1875)
!1889 = !DILocation(line: 925, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 925, column: 7)
!1891 = !DILocation(line: 925, column: 7, scope: !1875)
!1892 = !DILocation(line: 926, column: 4, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 925, column: 29)
!1894 = !DILocation(line: 928, column: 2, scope: !1875)
!1895 = !DILocation(line: 932, column: 31, scope: !1781)
!1896 = !DILocation(line: 932, column: 2, scope: !1781)
!1897 = !DILocation(line: 932, column: 19, scope: !1781)
!1898 = !DILocation(line: 932, column: 29, scope: !1781)
!1899 = !DILocation(line: 934, column: 1, scope: !1781)
!1900 = !DILocation(line: 935, column: 8, scope: !1781)
!1901 = !DILocation(line: 936, column: 2, scope: !1781)
!1902 = !DILocation(line: 937, column: 1, scope: !1781)
!1903 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !1904, file: !1904, line: 398, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1904 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!40, !32}
!1907 = !DISubprogram(name: "acpi_ev_create_gpe_block", scope: !914, file: !914, line: 95, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!23, !40, !37, !29, !25, !56, !25, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1911 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1904, file: !1904, line: 298, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!45, !40}
!1914 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !909, file: !909, line: 436, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!45, !1489, !25, !25, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !24, line: 644, baseType: !25)
!1918 = !DISubprogram(name: "acpi_ns_attach_object", scope: !1904, file: !1904, line: 295, type: !1919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!23, !40, !45, !1917}
!1921 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !909, file: !909, line: 369, type: !1922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !45}
!1924 = distinct !DISubprogram(name: "acpi_remove_gpe_block", scope: !3, file: !3, line: 952, type: !1925, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!23, !32}
!1927 = !{!1928, !1929, !1930, !1931, !1932}
!1928 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1924, file: !3, line: 952, type: !32)
!1929 = !DILocalVariable(name: "obj_desc", scope: !1924, file: !3, line: 954, type: !45)
!1930 = !DILocalVariable(name: "status", scope: !1924, file: !3, line: 955, type: !23)
!1931 = !DILocalVariable(name: "node", scope: !1924, file: !3, line: 956, type: !40)
!1932 = !DILabel(scope: !1924, name: "unlock_and_exit", file: !3, line: 996)
!1933 = !DILocation(line: 952, column: 47, scope: !1924)
!1934 = !DILocation(line: 954, column: 2, scope: !1924)
!1935 = !DILocation(line: 954, column: 29, scope: !1924)
!1936 = !DILocation(line: 955, column: 2, scope: !1924)
!1937 = !DILocation(line: 955, column: 14, scope: !1924)
!1938 = !DILocation(line: 956, column: 2, scope: !1924)
!1939 = !DILocation(line: 956, column: 30, scope: !1924)
!1940 = !DILocation(line: 960, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 960, column: 6)
!1942 = !DILocation(line: 960, column: 6, scope: !1924)
!1943 = !DILocation(line: 961, column: 3, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 960, column: 19)
!1945 = !DILocation(line: 964, column: 11, scope: !1924)
!1946 = !DILocation(line: 964, column: 9, scope: !1924)
!1947 = !DILocation(line: 965, column: 6, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 965, column: 6)
!1949 = !DILocation(line: 965, column: 6, scope: !1924)
!1950 = !DILocation(line: 966, column: 3, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 965, column: 28)
!1952 = !DILocation(line: 969, column: 33, scope: !1924)
!1953 = !DILocation(line: 969, column: 9, scope: !1924)
!1954 = !DILocation(line: 969, column: 7, scope: !1924)
!1955 = !DILocation(line: 970, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 970, column: 6)
!1957 = !DILocation(line: 970, column: 6, scope: !1924)
!1958 = !DILocation(line: 971, column: 10, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 970, column: 13)
!1960 = !DILocation(line: 972, column: 3, scope: !1959)
!1961 = !DILocation(line: 977, column: 6, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 977, column: 6)
!1963 = !DILocation(line: 977, column: 12, scope: !1962)
!1964 = !DILocation(line: 977, column: 17, scope: !1962)
!1965 = !DILocation(line: 977, column: 6, scope: !1924)
!1966 = !DILocation(line: 978, column: 10, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 977, column: 38)
!1968 = !DILocation(line: 979, column: 3, scope: !1967)
!1969 = !DILocation(line: 984, column: 41, scope: !1924)
!1970 = !DILocation(line: 984, column: 13, scope: !1924)
!1971 = !DILocation(line: 984, column: 11, scope: !1924)
!1972 = !DILocation(line: 985, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 985, column: 6)
!1974 = !DILocation(line: 985, column: 16, scope: !1973)
!1975 = !DILocation(line: 985, column: 20, scope: !1973)
!1976 = !DILocation(line: 985, column: 37, scope: !1973)
!1977 = !DILocation(line: 985, column: 6, scope: !1924)
!1978 = !DILocation(line: 986, column: 3, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 985, column: 48)
!1980 = !DILocation(line: 991, column: 36, scope: !1924)
!1981 = !DILocation(line: 991, column: 53, scope: !1924)
!1982 = !DILocation(line: 991, column: 11, scope: !1924)
!1983 = !DILocation(line: 991, column: 9, scope: !1924)
!1984 = !DILocation(line: 992, column: 6, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 992, column: 6)
!1986 = !DILocation(line: 992, column: 6, scope: !1924)
!1987 = !DILocation(line: 993, column: 3, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 992, column: 28)
!1989 = !DILocation(line: 993, column: 20, scope: !1988)
!1990 = !DILocation(line: 993, column: 30, scope: !1988)
!1991 = !DILocation(line: 994, column: 2, scope: !1988)
!1992 = !DILocation(line: 996, column: 1, scope: !1924)
!1993 = !DILocation(line: 997, column: 8, scope: !1924)
!1994 = !DILocation(line: 998, column: 2, scope: !1924)
!1995 = !DILocation(line: 999, column: 1, scope: !1924)
!1996 = !DISubprogram(name: "acpi_ev_delete_gpe_block", scope: !914, file: !914, line: 108, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!23, !495}
!1999 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !2000, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2006)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!22, !2002, !803}
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !2004, line: 72, baseType: !2005)
!2004 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2004, line: 16, baseType: !35)
!2006 = !{!2007, !2008}
!2007 = !DILocalVariable(name: "size", arg: 1, scope: !1999, file: !12, line: 719, type: !2002)
!2008 = !DILocalVariable(name: "flags", arg: 2, scope: !1999, file: !12, line: 719, type: !803)
!2009 = !DILocation(line: 719, column: 52, scope: !1999)
!2010 = !DILocation(line: 719, column: 64, scope: !1999)
!2011 = !DILocation(line: 721, column: 17, scope: !1999)
!2012 = !DILocation(line: 721, column: 23, scope: !1999)
!2013 = !DILocation(line: 721, column: 29, scope: !1999)
!2014 = !DILocation(line: 721, column: 9, scope: !1999)
!2015 = !DILocation(line: 721, column: 2, scope: !1999)
!2016 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2017, file: !2017, line: 65, type: !2018, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2017 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!35}
!2020 = !DILocation(line: 67, column: 9, scope: !2016)
!2021 = !DILocation(line: 67, column: 2, scope: !2016)
!2022 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2017, file: !2017, line: 120, type: !2023, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!1016, !35}
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "flags", arg: 1, scope: !2022, file: !2017, line: 120, type: !35)
!2027 = !DILocation(line: 120, column: 67, scope: !2022)
!2028 = !DILocation(line: 122, column: 11, scope: !2022)
!2029 = !DILocation(line: 122, column: 17, scope: !2022)
!2030 = !DILocation(line: 122, column: 9, scope: !2022)
!2031 = !DILocation(line: 122, column: 2, scope: !2022)
!2032 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !2000, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DILocalVariable(name: "size", arg: 1, scope: !2032, file: !12, line: 591, type: !2002)
!2035 = !DILocalVariable(name: "flags", arg: 2, scope: !2032, file: !12, line: 591, type: !803)
!2036 = !DILocalVariable(name: "index", scope: !2037, file: !12, line: 594, type: !7)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !12, line: 593, column: 42)
!2038 = distinct !DILexicalBlock(scope: !2032, file: !12, line: 593, column: 6)
!2039 = !DILocation(line: 591, column: 61, scope: !2032)
!2040 = !DILocation(line: 591, column: 73, scope: !2032)
!2041 = !DILocation(line: 593, column: 27, scope: !2038)
!2042 = !DILocation(line: 593, column: 6, scope: !2038)
!2043 = !DILocation(line: 593, column: 33, scope: !2038)
!2044 = !DILocation(line: 593, column: 36, scope: !2038)
!2045 = !DILocation(line: 593, column: 6, scope: !2032)
!2046 = !DILocation(line: 594, column: 3, scope: !2037)
!2047 = !DILocation(line: 594, column: 16, scope: !2037)
!2048 = !DILocation(line: 596, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2037, file: !12, line: 596, column: 7)
!2050 = !DILocation(line: 596, column: 12, scope: !2049)
!2051 = !DILocation(line: 596, column: 7, scope: !2037)
!2052 = !DILocation(line: 597, column: 25, scope: !2049)
!2053 = !DILocation(line: 597, column: 31, scope: !2049)
!2054 = !DILocation(line: 597, column: 11, scope: !2049)
!2055 = !DILocation(line: 597, column: 4, scope: !2049)
!2056 = !DILocation(line: 599, column: 11, scope: !2037)
!2057 = !DILocation(line: 599, column: 9, scope: !2037)
!2058 = !DILocation(line: 601, column: 33, scope: !2037)
!2059 = !DILocation(line: 601, column: 40, scope: !2037)
!2060 = !DILocation(line: 601, column: 20, scope: !2037)
!2061 = !DILocation(line: 601, column: 5, scope: !2037)
!2062 = !DILocation(line: 601, column: 51, scope: !2037)
!2063 = !DILocation(line: 602, column: 5, scope: !2037)
!2064 = !DILocation(line: 602, column: 12, scope: !2037)
!2065 = !DILocation(line: 600, column: 10, scope: !2037)
!2066 = !DILocation(line: 600, column: 3, scope: !2037)
!2067 = !DILocation(line: 603, column: 2, scope: !2038)
!2068 = !DILocation(line: 604, column: 19, scope: !2032)
!2069 = !DILocation(line: 604, column: 25, scope: !2032)
!2070 = !DILocation(line: 604, column: 9, scope: !2032)
!2071 = !DILocation(line: 604, column: 2, scope: !2032)
!2072 = !DILocation(line: 605, column: 1, scope: !2032)
!2073 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !2000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2074 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !2075, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2079)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!7, !2002, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !2078)
!2078 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2079 = !{!2080, !2081}
!2080 = !DILocalVariable(name: "size", arg: 1, scope: !2074, file: !12, line: 444, type: !2002)
!2081 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2074, file: !12, line: 445, type: !2077)
!2082 = !DILocation(line: 444, column: 60, scope: !2074)
!2083 = !DILocation(line: 445, column: 16, scope: !2074)
!2084 = !DILocation(line: 447, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 447, column: 6)
!2086 = !DILocation(line: 447, column: 6, scope: !2074)
!2087 = !DILocation(line: 448, column: 3, scope: !2085)
!2088 = !DILocation(line: 450, column: 6, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 450, column: 6)
!2090 = !DILocation(line: 450, column: 11, scope: !2089)
!2091 = !DILocation(line: 450, column: 6, scope: !2074)
!2092 = !DILocation(line: 451, column: 3, scope: !2089)
!2093 = !DILocation(line: 453, column: 32, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 453, column: 6)
!2095 = !DILocation(line: 453, column: 37, scope: !2094)
!2096 = !DILocation(line: 453, column: 42, scope: !2094)
!2097 = !DILocation(line: 453, column: 45, scope: !2094)
!2098 = !DILocation(line: 453, column: 50, scope: !2094)
!2099 = !DILocation(line: 453, column: 6, scope: !2074)
!2100 = !DILocation(line: 454, column: 3, scope: !2094)
!2101 = !DILocation(line: 455, column: 32, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 455, column: 6)
!2103 = !DILocation(line: 455, column: 37, scope: !2102)
!2104 = !DILocation(line: 455, column: 43, scope: !2102)
!2105 = !DILocation(line: 455, column: 46, scope: !2102)
!2106 = !DILocation(line: 455, column: 51, scope: !2102)
!2107 = !DILocation(line: 455, column: 6, scope: !2074)
!2108 = !DILocation(line: 456, column: 3, scope: !2102)
!2109 = !DILocation(line: 457, column: 6, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 457, column: 6)
!2111 = !DILocation(line: 457, column: 11, scope: !2110)
!2112 = !DILocation(line: 457, column: 6, scope: !2074)
!2113 = !DILocation(line: 457, column: 26, scope: !2110)
!2114 = !DILocation(line: 458, column: 6, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 458, column: 6)
!2116 = !DILocation(line: 458, column: 11, scope: !2115)
!2117 = !DILocation(line: 458, column: 6, scope: !2074)
!2118 = !DILocation(line: 458, column: 26, scope: !2115)
!2119 = !DILocation(line: 459, column: 6, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 459, column: 6)
!2121 = !DILocation(line: 459, column: 11, scope: !2120)
!2122 = !DILocation(line: 459, column: 6, scope: !2074)
!2123 = !DILocation(line: 459, column: 26, scope: !2120)
!2124 = !DILocation(line: 460, column: 6, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 460, column: 6)
!2126 = !DILocation(line: 460, column: 11, scope: !2125)
!2127 = !DILocation(line: 460, column: 6, scope: !2074)
!2128 = !DILocation(line: 460, column: 26, scope: !2125)
!2129 = !DILocation(line: 461, column: 6, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 461, column: 6)
!2131 = !DILocation(line: 461, column: 11, scope: !2130)
!2132 = !DILocation(line: 461, column: 6, scope: !2074)
!2133 = !DILocation(line: 461, column: 26, scope: !2130)
!2134 = !DILocation(line: 462, column: 6, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 462, column: 6)
!2136 = !DILocation(line: 462, column: 11, scope: !2135)
!2137 = !DILocation(line: 462, column: 6, scope: !2074)
!2138 = !DILocation(line: 462, column: 26, scope: !2135)
!2139 = !DILocation(line: 463, column: 6, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 463, column: 6)
!2141 = !DILocation(line: 463, column: 11, scope: !2140)
!2142 = !DILocation(line: 463, column: 6, scope: !2074)
!2143 = !DILocation(line: 463, column: 26, scope: !2140)
!2144 = !DILocation(line: 464, column: 6, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 464, column: 6)
!2146 = !DILocation(line: 464, column: 11, scope: !2145)
!2147 = !DILocation(line: 464, column: 6, scope: !2074)
!2148 = !DILocation(line: 464, column: 26, scope: !2145)
!2149 = !DILocation(line: 465, column: 6, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 465, column: 6)
!2151 = !DILocation(line: 465, column: 11, scope: !2150)
!2152 = !DILocation(line: 465, column: 6, scope: !2074)
!2153 = !DILocation(line: 465, column: 26, scope: !2150)
!2154 = !DILocation(line: 466, column: 6, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 466, column: 6)
!2156 = !DILocation(line: 466, column: 11, scope: !2155)
!2157 = !DILocation(line: 466, column: 6, scope: !2074)
!2158 = !DILocation(line: 466, column: 26, scope: !2155)
!2159 = !DILocation(line: 467, column: 6, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 467, column: 6)
!2161 = !DILocation(line: 467, column: 11, scope: !2160)
!2162 = !DILocation(line: 467, column: 6, scope: !2074)
!2163 = !DILocation(line: 467, column: 26, scope: !2160)
!2164 = !DILocation(line: 468, column: 6, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 468, column: 6)
!2166 = !DILocation(line: 468, column: 11, scope: !2165)
!2167 = !DILocation(line: 468, column: 6, scope: !2074)
!2168 = !DILocation(line: 468, column: 26, scope: !2165)
!2169 = !DILocation(line: 469, column: 6, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 469, column: 6)
!2171 = !DILocation(line: 469, column: 11, scope: !2170)
!2172 = !DILocation(line: 469, column: 6, scope: !2074)
!2173 = !DILocation(line: 469, column: 26, scope: !2170)
!2174 = !DILocation(line: 470, column: 6, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 470, column: 6)
!2176 = !DILocation(line: 470, column: 11, scope: !2175)
!2177 = !DILocation(line: 470, column: 6, scope: !2074)
!2178 = !DILocation(line: 470, column: 26, scope: !2175)
!2179 = !DILocation(line: 471, column: 6, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 471, column: 6)
!2181 = !DILocation(line: 471, column: 11, scope: !2180)
!2182 = !DILocation(line: 471, column: 6, scope: !2074)
!2183 = !DILocation(line: 471, column: 26, scope: !2180)
!2184 = !DILocation(line: 472, column: 6, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 472, column: 6)
!2186 = !DILocation(line: 472, column: 11, scope: !2185)
!2187 = !DILocation(line: 472, column: 6, scope: !2074)
!2188 = !DILocation(line: 472, column: 26, scope: !2185)
!2189 = !DILocation(line: 473, column: 6, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 473, column: 6)
!2191 = !DILocation(line: 473, column: 11, scope: !2190)
!2192 = !DILocation(line: 473, column: 6, scope: !2074)
!2193 = !DILocation(line: 473, column: 26, scope: !2190)
!2194 = !DILocation(line: 474, column: 6, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 474, column: 6)
!2196 = !DILocation(line: 474, column: 11, scope: !2195)
!2197 = !DILocation(line: 474, column: 6, scope: !2074)
!2198 = !DILocation(line: 474, column: 27, scope: !2195)
!2199 = !DILocation(line: 475, column: 6, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 475, column: 6)
!2201 = !DILocation(line: 475, column: 11, scope: !2200)
!2202 = !DILocation(line: 475, column: 6, scope: !2074)
!2203 = !DILocation(line: 475, column: 32, scope: !2200)
!2204 = !DILocation(line: 477, column: 50, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2074, file: !12, line: 477, column: 6)
!2206 = !{i8 0, i8 2}
!2207 = !{}
!2208 = !DILocation(line: 477, column: 6, scope: !2074)
!2209 = !DILocation(line: 478, column: 3, scope: !2205)
!2210 = !DILocation(line: 478, column: 3, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !12, line: 478, column: 3)
!2212 = distinct !DILexicalBlock(scope: !2205, file: !12, line: 478, column: 3)
!2213 = !{i32 -2143019378}
!2214 = !DILocation(line: 478, column: 3, scope: !2212)
!2215 = !DILocation(line: 480, column: 3, scope: !2205)
!2216 = !DILocation(line: 480, column: 3, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2205, file: !12, line: 480, column: 3)
!2218 = !DILocation(line: 480, column: 3, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2217, file: !12, line: 480, column: 3)
!2220 = !DILocation(line: 480, column: 3, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !12, line: 480, column: 3)
!2222 = !{i64 2151948121, i64 2151948150, i64 2151948196, i64 2151948254, i64 2151948308, i64 2151948362, i64 2151948417, i64 2151948448}
!2223 = !DILocation(line: 483, column: 2, scope: !2074)
!2224 = !DILocation(line: 484, column: 1, scope: !2074)
!2225 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !2226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!22, !2228, !803, !2002}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2230, line: 11, flags: DIFlagFwdDecl)
!2230 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2231 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !2232, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!11, !803, !35}
!2234 = !{!2235, !2236}
!2235 = !DILocalVariable(name: "flags", arg: 1, scope: !2231, file: !12, line: 401, type: !803)
!2236 = !DILocalVariable(name: "caller", arg: 2, scope: !2231, file: !12, line: 401, type: !35)
!2237 = !DILocation(line: 401, column: 67, scope: !2231)
!2238 = !DILocation(line: 401, column: 88, scope: !2231)
!2239 = !DILocation(line: 407, column: 6, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2231, file: !12, line: 407, column: 6)
!2241 = !DILocation(line: 407, column: 6, scope: !2231)
!2242 = !DILocation(line: 413, column: 3, scope: !2240)
!2243 = !DILocation(line: 423, column: 38, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2231, file: !12, line: 423, column: 6)
!2245 = !DILocation(line: 423, column: 44, scope: !2244)
!2246 = !DILocation(line: 423, column: 6, scope: !2231)
!2247 = !DILocation(line: 424, column: 3, scope: !2244)
!2248 = !DILocation(line: 426, column: 3, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2231, file: !12, line: 425, column: 6)
!2250 = !DILocation(line: 429, column: 1, scope: !2231)
!2251 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !2000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2252 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !2253, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null}
!2255 = distinct !DISubprogram(name: "native_save_fl", scope: !2017, file: !2017, line: 17, type: !2018, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2256)
!2256 = !{!2257}
!2257 = !DILocalVariable(name: "flags", scope: !2255, file: !2017, line: 19, type: !35)
!2258 = !DILocation(line: 19, column: 2, scope: !2255)
!2259 = !DILocation(line: 19, column: 16, scope: !2255)
!2260 = !DILocation(line: 26, column: 2, scope: !2255)
!2261 = !{i64 1538040, i64 1538061}
!2262 = !DILocation(line: 32, column: 9, scope: !2255)
!2263 = !DILocation(line: 33, column: 1, scope: !2255)
!2264 = !DILocation(line: 32, column: 2, scope: !2255)
!2265 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !2266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
