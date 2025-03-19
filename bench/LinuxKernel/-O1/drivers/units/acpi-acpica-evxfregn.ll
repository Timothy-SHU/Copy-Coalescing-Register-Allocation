; ModuleID = 'drivers/acpi/acpica/evxfregn.c'
source_filename = "drivers/acpi/acpica/evxfregn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_address_space_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_address_space_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_address_space_handler_no_reg: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_address_space_handler_no_reg ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_remove_address_space_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_remove_address_space_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_execute_reg_methods: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_execute_reg_methods ; .previous"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_notify_common = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr }
%struct.acpi_object_addr_handler = type { ptr, i8, i8, i16, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_acpi_install_address_space_handler174 = internal global ptr @acpi_install_address_space_handler, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_acpi_install_address_space_handler_no_reg175 = internal global ptr @acpi_install_address_space_handler_no_reg, section ".discard.addressable", align 8, !dbg !14
@acpi_gbl_root_node = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_remove_address_space_handler176 = internal global ptr @acpi_remove_address_space_handler, section ".discard.addressable", align 8, !dbg !16
@__UNIQUE_ID___addressable_acpi_execute_reg_methods177 = internal global ptr @acpi_execute_reg_methods, section ".discard.addressable", align 8, !dbg !18
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_install_address_space_handler174, ptr @__UNIQUE_ID___addressable_acpi_install_address_space_handler_no_reg175, ptr @__UNIQUE_ID___addressable_acpi_remove_address_space_handler176, ptr @__UNIQUE_ID___addressable_acpi_execute_reg_methods177], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_address_space_handler(ptr noundef %device, i8 noundef zeroext %space_id, ptr noundef %handler, ptr noundef %setup, ptr noundef %context) #0 align 16 !dbg !29 {
entry:
  %device.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %handler.addr = alloca ptr, align 8
  %setup.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !52, metadata !DIExpression()), !dbg !57
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !53, metadata !DIExpression()), !dbg !58
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !54, metadata !DIExpression()), !dbg !59
  store ptr %setup, ptr %setup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %setup.addr, metadata !55, metadata !DIExpression()), !dbg !60
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !56, metadata !DIExpression()), !dbg !61
  %0 = load ptr, ptr %device.addr, align 8, !dbg !62
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !63
  %2 = load ptr, ptr %handler.addr, align 8, !dbg !64
  %3 = load ptr, ptr %setup.addr, align 8, !dbg !65
  %4 = load ptr, ptr %context.addr, align 8, !dbg !66
  %call = call i32 @acpi_install_address_space_handler_internal(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 1) #4, !dbg !67
  ret i32 %call, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_install_address_space_handler_internal(ptr noundef %device, i8 noundef zeroext %space_id, ptr noundef %handler, ptr noundef %setup, ptr noundef %context, i8 noundef zeroext %run_reg) #0 align 16 !dbg !69 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %handler.addr = alloca ptr, align 8
  %setup.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %run_reg.addr = alloca i8, align 1
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !73, metadata !DIExpression()), !dbg !833
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !74, metadata !DIExpression()), !dbg !834
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !75, metadata !DIExpression()), !dbg !835
  store ptr %setup, ptr %setup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %setup.addr, metadata !76, metadata !DIExpression()), !dbg !836
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !77, metadata !DIExpression()), !dbg !837
  store i8 %run_reg, ptr %run_reg.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %run_reg.addr, metadata !78, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #5, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %node, metadata !79, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %status, metadata !831, metadata !DIExpression()), !dbg !842
  %0 = load ptr, ptr %device.addr, align 8, !dbg !843
  %tobool = icmp ne ptr %0, null, !dbg !843
  br i1 %tobool, label %if.end, label %if.then, !dbg !845

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !846

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #4, !dbg !848
  store i32 %call, ptr %status, align 4, !dbg !849
  %1 = load i32, ptr %status, align 4, !dbg !850
  %tobool1 = icmp ne i32 %1, 0, !dbg !850
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !852

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !853
  store i32 %2, ptr %retval, align 4, !dbg !853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !853

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %device.addr, align 8, !dbg !855
  %call4 = call ptr @acpi_ns_validate_handle(ptr noundef %3) #4, !dbg !856
  store ptr %call4, ptr %node, align 8, !dbg !857
  %4 = load ptr, ptr %node, align 8, !dbg !858
  %tobool5 = icmp ne ptr %4, null, !dbg !858
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !860

if.then6:                                         ; preds = %if.end3
  store i32 4097, ptr %status, align 4, !dbg !861
  br label %unlock_and_exit, !dbg !863

if.end7:                                          ; preds = %if.end3
  %5 = load ptr, ptr %node, align 8, !dbg !864
  %6 = load i8, ptr %space_id.addr, align 1, !dbg !865
  %7 = load ptr, ptr %handler.addr, align 8, !dbg !866
  %8 = load ptr, ptr %setup.addr, align 8, !dbg !867
  %9 = load ptr, ptr %context.addr, align 8, !dbg !868
  %call8 = call i32 @acpi_ev_install_space_handler(ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #4, !dbg !869
  store i32 %call8, ptr %status, align 4, !dbg !870
  %10 = load i32, ptr %status, align 4, !dbg !871
  %tobool9 = icmp ne i32 %10, 0, !dbg !871
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !873

if.then10:                                        ; preds = %if.end7
  br label %unlock_and_exit, !dbg !874

if.end11:                                         ; preds = %if.end7
  %11 = load i8, ptr %run_reg.addr, align 1, !dbg !876
  %tobool12 = icmp ne i8 %11, 0, !dbg !876
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !878

if.then13:                                        ; preds = %if.end11
  %12 = load ptr, ptr %node, align 8, !dbg !879
  %13 = load i8, ptr %space_id.addr, align 1, !dbg !881
  call void @acpi_ev_execute_reg_methods(ptr noundef %12, i32 noundef -1, i8 noundef zeroext %13, i32 noundef 1) #4, !dbg !882
  br label %if.end14, !dbg !883

if.end14:                                         ; preds = %if.then13, %if.end11
  br label %unlock_and_exit, !dbg !876

unlock_and_exit:                                  ; preds = %if.end14, %if.then10, %if.then6
  call void @llvm.dbg.label(metadata !832), !dbg !884
  %call15 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #4, !dbg !885
  %14 = load i32, ptr %status, align 4, !dbg !886
  store i32 %14, ptr %retval, align 4, !dbg !886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !886

cleanup:                                          ; preds = %unlock_and_exit, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !887
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #5, !dbg !887
  %15 = load i32, ptr %retval, align 4, !dbg !887
  ret i32 %15, !dbg !887
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_address_space_handler_no_reg(ptr noundef %device, i8 noundef zeroext %space_id, ptr noundef %handler, ptr noundef %setup, ptr noundef %context) #0 align 16 !dbg !888 {
entry:
  %device.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %handler.addr = alloca ptr, align 8
  %setup.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !890, metadata !DIExpression()), !dbg !895
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !891, metadata !DIExpression()), !dbg !896
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !892, metadata !DIExpression()), !dbg !897
  store ptr %setup, ptr %setup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %setup.addr, metadata !893, metadata !DIExpression()), !dbg !898
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !894, metadata !DIExpression()), !dbg !899
  %0 = load ptr, ptr %device.addr, align 8, !dbg !900
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !901
  %2 = load ptr, ptr %handler.addr, align 8, !dbg !902
  %3 = load ptr, ptr %setup.addr, align 8, !dbg !903
  %4 = load ptr, ptr %context.addr, align 8, !dbg !904
  %call = call i32 @acpi_install_address_space_handler_internal(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0) #4, !dbg !905
  ret i32 %call, !dbg !906
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_remove_address_space_handler(ptr noundef %device, i8 noundef zeroext %space_id, ptr noundef %handler) #0 align 16 !dbg !907 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %handler.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  %region_obj = alloca ptr, align 8
  %last_obj_ptr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !911, metadata !DIExpression()), !dbg !921
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !912, metadata !DIExpression()), !dbg !922
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !913, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !914, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #5, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_obj) #5, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %region_obj, metadata !916, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_obj_ptr) #5, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %last_obj_ptr, metadata !917, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #5, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %node, metadata !918, metadata !DIExpression()), !dbg !933
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %status, metadata !919, metadata !DIExpression()), !dbg !935
  %0 = load ptr, ptr %device.addr, align 8, !dbg !936
  %tobool = icmp ne ptr %0, null, !dbg !936
  br i1 %tobool, label %if.end, label %if.then, !dbg !938

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !939

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #4, !dbg !941
  store i32 %call, ptr %status, align 4, !dbg !942
  %1 = load i32, ptr %status, align 4, !dbg !943
  %tobool1 = icmp ne i32 %1, 0, !dbg !943
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !945

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !946
  store i32 %2, ptr %retval, align 4, !dbg !946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !946

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %device.addr, align 8, !dbg !948
  %call4 = call ptr @acpi_ns_validate_handle(ptr noundef %3) #4, !dbg !949
  store ptr %call4, ptr %node, align 8, !dbg !950
  %4 = load ptr, ptr %node, align 8, !dbg !951
  %tobool5 = icmp ne ptr %4, null, !dbg !951
  br i1 %tobool5, label %lor.lhs.false, label %if.then19, !dbg !953

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load ptr, ptr %node, align 8, !dbg !954
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %5, i32 0, i32 2, !dbg !955
  %6 = load i8, ptr %type, align 1, !dbg !955
  %conv = zext i8 %6 to i32, !dbg !954
  %cmp = icmp ne i32 %conv, 6, !dbg !956
  br i1 %cmp, label %land.lhs.true, label %if.end20, !dbg !957

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load ptr, ptr %node, align 8, !dbg !958
  %type7 = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 2, !dbg !959
  %8 = load i8, ptr %type7, align 1, !dbg !959
  %conv8 = zext i8 %8 to i32, !dbg !958
  %cmp9 = icmp ne i32 %conv8, 12, !dbg !960
  br i1 %cmp9, label %land.lhs.true11, label %if.end20, !dbg !961

land.lhs.true11:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %node, align 8, !dbg !962
  %type12 = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 2, !dbg !963
  %10 = load i8, ptr %type12, align 1, !dbg !963
  %conv13 = zext i8 %10 to i32, !dbg !962
  %cmp14 = icmp ne i32 %conv13, 13, !dbg !964
  br i1 %cmp14, label %land.lhs.true16, label %if.end20, !dbg !965

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %11 = load ptr, ptr %node, align 8, !dbg !966
  %12 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !967
  %cmp17 = icmp ne ptr %11, %12, !dbg !968
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !969

if.then19:                                        ; preds = %land.lhs.true16, %if.end3
  store i32 4097, ptr %status, align 4, !dbg !970
  br label %unlock_and_exit, !dbg !972

if.end20:                                         ; preds = %land.lhs.true16, %land.lhs.true11, %land.lhs.true, %lor.lhs.false
  %13 = load ptr, ptr %node, align 8, !dbg !973
  %call21 = call ptr @acpi_ns_get_attached_object(ptr noundef %13) #4, !dbg !974
  store ptr %call21, ptr %obj_desc, align 8, !dbg !975
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !976
  %tobool22 = icmp ne ptr %14, null, !dbg !976
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !978

if.then23:                                        ; preds = %if.end20
  store i32 6, ptr %status, align 4, !dbg !979
  br label %unlock_and_exit, !dbg !981

if.end24:                                         ; preds = %if.end20
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !982
  %handler25 = getelementptr inbounds %struct.acpi_object_notify_common, ptr %15, i32 0, i32 6, !dbg !983
  %16 = load ptr, ptr %handler25, align 8, !dbg !983
  store ptr %16, ptr %handler_obj, align 8, !dbg !984
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !985
  %handler26 = getelementptr inbounds %struct.acpi_object_notify_common, ptr %17, i32 0, i32 6, !dbg !986
  store ptr %handler26, ptr %last_obj_ptr, align 8, !dbg !987
  br label %while.cond, !dbg !988

while.cond:                                       ; preds = %if.end43, %if.end24
  %18 = load ptr, ptr %handler_obj, align 8, !dbg !989
  %tobool27 = icmp ne ptr %18, null, !dbg !988
  br i1 %tobool27, label %while.body, label %while.end46, !dbg !988

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %handler_obj, align 8, !dbg !990
  %space_id28 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %19, i32 0, i32 5, !dbg !993
  %20 = load i8, ptr %space_id28, align 1, !dbg !993
  %conv29 = zext i8 %20 to i32, !dbg !990
  %21 = load i8, ptr %space_id.addr, align 1, !dbg !994
  %conv30 = zext i8 %21 to i32, !dbg !994
  %cmp31 = icmp eq i32 %conv29, %conv30, !dbg !995
  br i1 %cmp31, label %if.then33, label %if.end43, !dbg !996

if.then33:                                        ; preds = %while.body
  %22 = load ptr, ptr %handler_obj, align 8, !dbg !997
  %handler34 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %22, i32 0, i32 7, !dbg !1000
  %23 = load ptr, ptr %handler34, align 8, !dbg !1000
  %24 = load ptr, ptr %handler.addr, align 8, !dbg !1001
  %cmp35 = icmp ne ptr %23, %24, !dbg !1002
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !1003

if.then37:                                        ; preds = %if.then33
  store i32 4097, ptr %status, align 4, !dbg !1004
  br label %unlock_and_exit, !dbg !1006

if.end38:                                         ; preds = %if.then33
  %25 = load ptr, ptr %handler_obj, align 8, !dbg !1007
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %25, i32 0, i32 12, !dbg !1008
  %26 = load ptr, ptr %region_list, align 8, !dbg !1008
  store ptr %26, ptr %region_obj, align 8, !dbg !1009
  br label %while.cond39, !dbg !1010

while.cond39:                                     ; preds = %while.body41, %if.end38
  %27 = load ptr, ptr %region_obj, align 8, !dbg !1011
  %tobool40 = icmp ne ptr %27, null, !dbg !1010
  br i1 %tobool40, label %while.body41, label %while.end, !dbg !1010

while.body41:                                     ; preds = %while.cond39
  %28 = load ptr, ptr %region_obj, align 8, !dbg !1012
  call void @acpi_ev_detach_region(ptr noundef %28, i8 noundef zeroext 1) #4, !dbg !1014
  %29 = load ptr, ptr %handler_obj, align 8, !dbg !1015
  %region_list42 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %29, i32 0, i32 12, !dbg !1016
  %30 = load ptr, ptr %region_list42, align 8, !dbg !1016
  store ptr %30, ptr %region_obj, align 8, !dbg !1017
  br label %while.cond39, !dbg !1010, !llvm.loop !1018

while.end:                                        ; preds = %while.cond39
  %31 = load ptr, ptr %handler_obj, align 8, !dbg !1022
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %31, i32 0, i32 13, !dbg !1023
  %32 = load ptr, ptr %next, align 8, !dbg !1023
  %33 = load ptr, ptr %last_obj_ptr, align 8, !dbg !1024
  store ptr %32, ptr %33, align 8, !dbg !1025
  %34 = load ptr, ptr %handler_obj, align 8, !dbg !1026
  call void @acpi_ut_remove_reference(ptr noundef %34) #4, !dbg !1027
  br label %unlock_and_exit, !dbg !1028

if.end43:                                         ; preds = %while.body
  %35 = load ptr, ptr %handler_obj, align 8, !dbg !1029
  %next44 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %35, i32 0, i32 13, !dbg !1030
  store ptr %next44, ptr %last_obj_ptr, align 8, !dbg !1031
  %36 = load ptr, ptr %handler_obj, align 8, !dbg !1032
  %next45 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %36, i32 0, i32 13, !dbg !1033
  %37 = load ptr, ptr %next45, align 8, !dbg !1033
  store ptr %37, ptr %handler_obj, align 8, !dbg !1034
  br label %while.cond, !dbg !988, !llvm.loop !1035

while.end46:                                      ; preds = %while.cond
  store i32 6, ptr %status, align 4, !dbg !1037
  br label %unlock_and_exit, !dbg !1038

unlock_and_exit:                                  ; preds = %while.end46, %while.end, %if.then37, %if.then23, %if.then19
  call void @llvm.dbg.label(metadata !920), !dbg !1039
  %call47 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #4, !dbg !1040
  %38 = load i32, ptr %status, align 4, !dbg !1041
  store i32 %38, ptr %retval, align 4, !dbg !1041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1041

cleanup:                                          ; preds = %unlock_and_exit, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #5, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_obj_ptr) #5, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_obj) #5, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #5, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1042
  %39 = load i32, ptr %retval, align 4, !dbg !1042
  ret i32 %39, !dbg !1042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1043 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1048 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1052 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1055 dso_local void @acpi_ev_detach_region(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1059 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1062 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_execute_reg_methods(ptr noundef %device, i32 noundef %max_depth, i8 noundef zeroext %space_id) #0 align 16 !dbg !1063 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %max_depth.addr = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !1067, metadata !DIExpression()), !dbg !1072
  store i32 %max_depth, ptr %max_depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_depth.addr, metadata !1068, metadata !DIExpression()), !dbg !1073
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !1069, metadata !DIExpression()), !dbg !1074
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #5, !dbg !1075
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1070, metadata !DIExpression()), !dbg !1076
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1077
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1071, metadata !DIExpression()), !dbg !1078
  %0 = load ptr, ptr %device.addr, align 8, !dbg !1079
  %tobool = icmp ne ptr %0, null, !dbg !1079
  br i1 %tobool, label %if.end, label %if.then, !dbg !1081

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1082

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #4, !dbg !1084
  store i32 %call, ptr %status, align 4, !dbg !1085
  %1 = load i32, ptr %status, align 4, !dbg !1086
  %tobool1 = icmp ne i32 %1, 0, !dbg !1086
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1088

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !1089
  store i32 %2, ptr %retval, align 4, !dbg !1089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1089

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %device.addr, align 8, !dbg !1091
  %call4 = call ptr @acpi_ns_validate_handle(ptr noundef %3) #4, !dbg !1092
  store ptr %call4, ptr %node, align 8, !dbg !1093
  %4 = load ptr, ptr %node, align 8, !dbg !1094
  %tobool5 = icmp ne ptr %4, null, !dbg !1094
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1096

if.then6:                                         ; preds = %if.end3
  %5 = load ptr, ptr %node, align 8, !dbg !1097
  %6 = load i32, ptr %max_depth.addr, align 4, !dbg !1099
  %7 = load i8, ptr %space_id.addr, align 1, !dbg !1100
  call void @acpi_ev_execute_reg_methods(ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7, i32 noundef 1) #4, !dbg !1101
  br label %if.end7, !dbg !1102

if.else:                                          ; preds = %if.end3
  store i32 4097, ptr %status, align 4, !dbg !1103
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %call8 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #4, !dbg !1105
  %8 = load i32, ptr %status, align 4, !dbg !1106
  store i32 %8, ptr %retval, align 4, !dbg !1106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1106

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #5, !dbg !1107
  %9 = load i32, ptr %retval, align 4, !dbg !1107
  ret i32 %9, !dbg !1107
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1108 dso_local void @acpi_ev_execute_reg_methods(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1111 dso_local i32 @acpi_ev_install_space_handler(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_address_space_handler174", scope: !2, file: !3, line: 108, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evxfregn.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evxfregn\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evxfregn.ll drivers/acpi/acpica/evxfregn.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evxfregn.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "59b65f4eaab6564b04160c0ae3185170")
!4 = !{!5, !6, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!0, !14, !16, !18}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_address_space_handler_no_reg175", scope: !2, file: !3, line: 121, type: !5, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_remove_address_space_handler176", scope: !2, file: !3, line: 259, type: !5, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_execute_reg_methods177", scope: !2, file: !3, line: 310, type: !5, isLocal: true, isDefinition: true)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 8, !"cf-protection-branch", i32 1}
!24 = !{i32 4, !"function_return_thunk_extern", i32 1}
!25 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{i32 1, !"override-stack-alignment", i32 8}
!28 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!29 = distinct !DISubprogram(name: "acpi_install_address_space_handler", scope: !3, file: !3, line: 98, type: !30, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!30 = !DISubroutineType(types: !31)
!31 = !{!6, !32, !33, !37, !46, !5}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !5)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !7, line: 814, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1093, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!6, !8, !41, !8, !45, !5, !5}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !44)
!44 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1126, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!6, !32, !8, !5, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!51 = !{!52, !53, !54, !55, !56}
!52 = !DILocalVariable(name: "device", arg: 1, scope: !29, file: !3, line: 98, type: !32)
!53 = !DILocalVariable(name: "space_id", arg: 2, scope: !29, file: !3, line: 99, type: !33)
!54 = !DILocalVariable(name: "handler", arg: 3, scope: !29, file: !3, line: 100, type: !37)
!55 = !DILocalVariable(name: "setup", arg: 4, scope: !29, file: !3, line: 101, type: !46)
!56 = !DILocalVariable(name: "context", arg: 5, scope: !29, file: !3, line: 101, type: !5)
!57 = !DILocation(line: 98, column: 48, scope: !29)
!58 = !DILocation(line: 99, column: 28, scope: !29)
!59 = !DILocation(line: 100, column: 31, scope: !29)
!60 = !DILocation(line: 101, column: 29, scope: !29)
!61 = !DILocation(line: 101, column: 42, scope: !29)
!62 = !DILocation(line: 103, column: 53, scope: !29)
!63 = !DILocation(line: 103, column: 61, scope: !29)
!64 = !DILocation(line: 104, column: 11, scope: !29)
!65 = !DILocation(line: 104, column: 20, scope: !29)
!66 = !DILocation(line: 105, column: 11, scope: !29)
!67 = !DILocation(line: 103, column: 9, scope: !29)
!68 = !DILocation(line: 103, column: 2, scope: !29)
!69 = distinct !DISubprogram(name: "acpi_install_address_space_handler_internal", scope: !3, file: !3, line: 46, type: !70, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!6, !32, !33, !37, !46, !5, !34}
!72 = !{!73, !74, !75, !76, !77, !78, !79, !831, !832}
!73 = !DILocalVariable(name: "device", arg: 1, scope: !69, file: !3, line: 46, type: !32)
!74 = !DILocalVariable(name: "space_id", arg: 2, scope: !69, file: !3, line: 47, type: !33)
!75 = !DILocalVariable(name: "handler", arg: 3, scope: !69, file: !3, line: 48, type: !37)
!76 = !DILocalVariable(name: "setup", arg: 4, scope: !69, file: !3, line: 49, type: !46)
!77 = !DILocalVariable(name: "context", arg: 5, scope: !69, file: !3, line: 50, type: !5)
!78 = !DILocalVariable(name: "run_reg", arg: 6, scope: !69, file: !3, line: 50, type: !34)
!79 = !DILocalVariable(name: "node", scope: !69, file: !3, line: 52, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !82, line: 133, size: 384, elements: !83)
!82 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!83 = !{!84, !818, !819, !820, !821, !827, !828, !829, !830}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !81, file: !82, line: 134, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !87, line: 369, size: 576, elements: !88)
!87 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!88 = !{!89, !100, !113, !125, !139, !153, !162, !478, !495, !510, !523, !601, !613, !627, !637, !655, !677, !696, !715, !734, !747, !764, !781, !794, !808, !817}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !86, file: !87, line: 370, baseType: !90, size: 128)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !87, line: 73, size: 128, elements: !91)
!91 = !{!92, !93, !94, !95, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !90, file: !87, line: 74, baseType: !85, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !87, line: 74, baseType: !34, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !87, line: 74, baseType: !34, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !90, file: !87, line: 74, baseType: !96, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !98)
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !87, line: 74, baseType: !34, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !86, file: !87, line: 371, baseType: !101, size: 192)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !87, line: 76, size: 192, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !112}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !87, line: 77, baseType: !85, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !87, line: 77, baseType: !34, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !87, line: 77, baseType: !34, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !87, line: 77, baseType: !96, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !87, line: 77, baseType: !34, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !101, file: !87, line: 77, baseType: !109, size: 24, offset: 104)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 3)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !101, file: !87, line: 78, baseType: !42, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !86, file: !87, line: 372, baseType: !114, size: 256)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !87, line: 93, size: 256, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !124}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !87, line: 94, baseType: !85, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !87, line: 94, baseType: !34, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !87, line: 94, baseType: !34, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !87, line: 94, baseType: !96, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !87, line: 94, baseType: !34, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !114, file: !87, line: 94, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !114, file: !87, line: 94, baseType: !8, size: 32, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !86, file: !87, line: 373, baseType: !126, size: 384)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !87, line: 97, size: 384, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !135, !136, !137, !138}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !87, line: 98, baseType: !85, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !87, line: 98, baseType: !34, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !87, line: 98, baseType: !34, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !87, line: 98, baseType: !96, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !87, line: 98, baseType: !34, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !126, file: !87, line: 98, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !126, file: !87, line: 98, baseType: !8, size: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !126, file: !87, line: 99, baseType: !8, size: 32, offset: 224)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !126, file: !87, line: 100, baseType: !134, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !87, line: 101, baseType: !80, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !86, file: !87, line: 374, baseType: !140, size: 384)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !87, line: 104, size: 384, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !150, !151, !152}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !87, line: 105, baseType: !85, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !87, line: 105, baseType: !34, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !87, line: 105, baseType: !34, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !87, line: 105, baseType: !96, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !87, line: 105, baseType: !34, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !87, line: 105, baseType: !80, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !140, file: !87, line: 106, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !140, file: !87, line: 107, baseType: !134, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !140, file: !87, line: 108, baseType: !8, size: 32, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !140, file: !87, line: 109, baseType: !8, size: 32, offset: 352)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !86, file: !87, line: 375, baseType: !154, size: 192)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !87, line: 118, size: 192, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !154, file: !87, line: 119, baseType: !85, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !154, file: !87, line: 119, baseType: !34, size: 8, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !87, line: 119, baseType: !34, size: 8, offset: 72)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !154, file: !87, line: 119, baseType: !96, size: 16, offset: 80)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !87, line: 119, baseType: !34, size: 8, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !154, file: !87, line: 119, baseType: !5, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !86, file: !87, line: 376, baseType: !163, size: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !87, line: 144, size: 448, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !475, !476, !477}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !163, file: !87, line: 145, baseType: !85, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !87, line: 145, baseType: !34, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !87, line: 145, baseType: !34, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !163, file: !87, line: 145, baseType: !96, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !87, line: 145, baseType: !34, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !163, file: !87, line: 145, baseType: !34, size: 8, offset: 104)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !163, file: !87, line: 146, baseType: !34, size: 8, offset: 112)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !163, file: !87, line: 147, baseType: !34, size: 8, offset: 120)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !163, file: !87, line: 148, baseType: !85, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !87, line: 149, baseType: !85, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !163, file: !87, line: 150, baseType: !134, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !163, file: !87, line: 154, baseType: !177, size: 64, offset: 320)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !87, line: 151, size: 64, elements: !178)
!178 = !{!179, !474}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !177, file: !87, line: 152, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !82, line: 248, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!6, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !186, line: 37, size: 9024, elements: !187)
!186 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !420, !421, !422, !423, !424, !428, !430, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !457, !458, !459, !460, !461, !462, !463, !464, !466, !472}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !186, line: 38, baseType: !184, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !186, line: 39, baseType: !34, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !185, file: !186, line: 40, baseType: !34, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !185, file: !186, line: 41, baseType: !96, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !185, file: !186, line: 42, baseType: !34, size: 8, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !185, file: !186, line: 43, baseType: !34, size: 8, offset: 104)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !185, file: !186, line: 44, baseType: !34, size: 8, offset: 112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !185, file: !186, line: 45, baseType: !196, size: 16, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !185, file: !186, line: 46, baseType: !34, size: 8, offset: 144)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !185, file: !186, line: 47, baseType: !34, size: 8, offset: 152)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !185, file: !186, line: 48, baseType: !34, size: 8, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !185, file: !186, line: 49, baseType: !34, size: 8, offset: 168)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !185, file: !186, line: 50, baseType: !34, size: 8, offset: 176)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !185, file: !186, line: 51, baseType: !34, size: 8, offset: 184)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !185, file: !186, line: 52, baseType: !34, size: 8, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !185, file: !186, line: 53, baseType: !34, size: 8, offset: 200)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !186, line: 54, baseType: !134, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !185, file: !186, line: 55, baseType: !8, size: 32, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !185, file: !186, line: 56, baseType: !8, size: 32, offset: 352)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !185, file: !186, line: 57, baseType: !8, size: 32, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !185, file: !186, line: 58, baseType: !8, size: 32, offset: 416)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !185, file: !186, line: 60, baseType: !211, size: 640, offset: 448)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !82, line: 909, size: 640, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !302, !303, !418, !419}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !211, file: !82, line: 910, baseType: !134, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !211, file: !82, line: 911, baseType: !134, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !211, file: !82, line: 912, baseType: !134, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !211, file: !82, line: 913, baseType: !134, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !211, file: !82, line: 914, baseType: !134, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !211, file: !82, line: 915, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !82, line: 891, size: 1600, elements: !221)
!221 = !{!222, !242, !258}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !220, file: !82, line: 892, baseType: !223, size: 448)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !82, line: 844, size: 448, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !241}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !82, line: 845, baseType: !219, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !82, line: 845, baseType: !34, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !82, line: 845, baseType: !34, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !223, file: !82, line: 845, baseType: !96, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !223, file: !82, line: 845, baseType: !134, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !82, line: 845, baseType: !219, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !82, line: 845, baseType: !80, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !82, line: 845, baseType: !233, size: 64, offset: 320)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !82, line: 732, size: 64, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !233, file: !82, line: 733, baseType: !42, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !233, file: !82, line: 734, baseType: !8, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !233, file: !82, line: 735, baseType: !122, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !233, file: !82, line: 736, baseType: !134, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !82, line: 737, baseType: !122, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !233, file: !82, line: 738, baseType: !219, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !223, file: !82, line: 845, baseType: !34, size: 8, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !220, file: !82, line: 893, baseType: !243, size: 640)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !82, line: 851, size: 640, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !243, file: !82, line: 852, baseType: !219, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !243, file: !82, line: 852, baseType: !34, size: 8, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !82, line: 852, baseType: !34, size: 8, offset: 72)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !243, file: !82, line: 852, baseType: !96, size: 16, offset: 80)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !243, file: !82, line: 852, baseType: !134, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !82, line: 852, baseType: !219, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !243, file: !82, line: 852, baseType: !80, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !243, file: !82, line: 852, baseType: !233, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !243, file: !82, line: 852, baseType: !34, size: 8, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !243, file: !82, line: 852, baseType: !122, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !243, file: !82, line: 853, baseType: !134, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !243, file: !82, line: 854, baseType: !8, size: 32, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !82, line: 855, baseType: !8, size: 32, offset: 608)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !220, file: !82, line: 894, baseType: !259, size: 1600)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !82, line: 862, size: 1600, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !259, file: !82, line: 863, baseType: !219, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !259, file: !82, line: 863, baseType: !34, size: 8, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !259, file: !82, line: 863, baseType: !34, size: 8, offset: 72)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !259, file: !82, line: 863, baseType: !96, size: 16, offset: 80)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !259, file: !82, line: 863, baseType: !134, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !82, line: 863, baseType: !219, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !259, file: !82, line: 863, baseType: !80, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !259, file: !82, line: 863, baseType: !233, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !259, file: !82, line: 863, baseType: !34, size: 8, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !259, file: !82, line: 863, baseType: !219, size: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !259, file: !82, line: 864, baseType: !219, size: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !259, file: !82, line: 865, baseType: !122, size: 64, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !259, file: !82, line: 866, baseType: !34, size: 8, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !259, file: !82, line: 867, baseType: !122, size: 64, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !259, file: !82, line: 868, baseType: !122, size: 64, offset: 768)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !259, file: !82, line: 869, baseType: !122, size: 64, offset: 832)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !259, file: !82, line: 870, baseType: !278, size: 32, offset: 896)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 32, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 4)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !259, file: !82, line: 871, baseType: !8, size: 32, offset: 928)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !259, file: !82, line: 872, baseType: !8, size: 32, offset: 960)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !259, file: !82, line: 873, baseType: !8, size: 32, offset: 992)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !259, file: !82, line: 874, baseType: !8, size: 32, offset: 1024)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !259, file: !82, line: 875, baseType: !8, size: 32, offset: 1056)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !259, file: !82, line: 876, baseType: !8, size: 32, offset: 1088)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !259, file: !82, line: 877, baseType: !8, size: 32, offset: 1120)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !259, file: !82, line: 878, baseType: !8, size: 32, offset: 1152)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !259, file: !82, line: 879, baseType: !8, size: 32, offset: 1184)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !259, file: !82, line: 880, baseType: !8, size: 32, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !259, file: !82, line: 881, baseType: !8, size: 32, offset: 1248)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !259, file: !82, line: 882, baseType: !8, size: 32, offset: 1280)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !259, file: !82, line: 883, baseType: !8, size: 32, offset: 1312)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !259, file: !82, line: 884, baseType: !96, size: 16, offset: 1344)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !259, file: !82, line: 885, baseType: !34, size: 8, offset: 1360)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !259, file: !82, line: 886, baseType: !34, size: 8, offset: 1368)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !259, file: !82, line: 887, baseType: !34, size: 8, offset: 1376)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !259, file: !82, line: 888, baseType: !299, size: 160, offset: 1384)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 160, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 20)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !211, file: !82, line: 916, baseType: !80, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !211, file: !82, line: 917, baseType: !304, size: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !82, line: 679, size: 640, elements: !306)
!306 = !{!307, !315, !328, !337, !346, !359, !373, !385, !397}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !305, file: !82, line: 680, baseType: !308, size: 128)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !82, line: 575, size: 128, elements: !309)
!309 = !{!310, !311, !312, !313, !314}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !82, line: 576, baseType: !5, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !82, line: 576, baseType: !34, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !82, line: 576, baseType: !34, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !82, line: 576, baseType: !96, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !82, line: 576, baseType: !96, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !305, file: !82, line: 681, baseType: !316, size: 384)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !82, line: 604, size: 384, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !82, line: 605, baseType: !5, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !82, line: 605, baseType: !34, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !82, line: 605, baseType: !34, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !82, line: 605, baseType: !96, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !82, line: 605, baseType: !96, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !316, file: !82, line: 606, baseType: !96, size: 16, offset: 112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !316, file: !82, line: 607, baseType: !219, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !316, file: !82, line: 608, baseType: !134, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !316, file: !82, line: 609, baseType: !134, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !316, file: !82, line: 610, baseType: !42, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !305, file: !82, line: 682, baseType: !329, size: 192)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !82, line: 582, size: 192, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !82, line: 583, baseType: !5, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !329, file: !82, line: 583, baseType: !34, size: 8, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !82, line: 583, baseType: !34, size: 8, offset: 72)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !329, file: !82, line: 583, baseType: !96, size: 16, offset: 80)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !329, file: !82, line: 583, baseType: !96, size: 16, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !329, file: !82, line: 584, baseType: !85, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !305, file: !82, line: 683, baseType: !338, size: 192)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !82, line: 616, size: 192, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !82, line: 617, baseType: !5, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !82, line: 617, baseType: !34, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !82, line: 617, baseType: !34, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !82, line: 617, baseType: !96, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !82, line: 617, baseType: !96, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !338, file: !82, line: 618, baseType: !80, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !305, file: !82, line: 684, baseType: !347, size: 448)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !82, line: 621, size: 448, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !82, line: 622, baseType: !5, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !82, line: 622, baseType: !34, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !82, line: 622, baseType: !34, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !82, line: 622, baseType: !96, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !82, line: 622, baseType: !96, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !347, file: !82, line: 623, baseType: !8, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !347, file: !82, line: 624, baseType: !219, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !347, file: !82, line: 625, baseType: !134, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !347, file: !82, line: 626, baseType: !134, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !347, file: !82, line: 627, baseType: !8, size: 32, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !305, file: !82, line: 685, baseType: !360, size: 512)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !82, line: 590, size: 512, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !82, line: 591, baseType: !5, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !82, line: 591, baseType: !34, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !82, line: 591, baseType: !34, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !82, line: 591, baseType: !96, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !82, line: 591, baseType: !96, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !360, file: !82, line: 592, baseType: !8, size: 32, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !360, file: !82, line: 593, baseType: !85, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !360, file: !82, line: 594, baseType: !85, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !360, file: !82, line: 595, baseType: !184, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !360, file: !82, line: 596, baseType: !5, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !360, file: !82, line: 597, baseType: !8, size: 32, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !305, file: !82, line: 686, baseType: !374, size: 320)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !82, line: 634, size: 320, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !82, line: 635, baseType: !5, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !82, line: 635, baseType: !34, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !82, line: 635, baseType: !34, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !82, line: 635, baseType: !96, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !82, line: 635, baseType: !96, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !374, file: !82, line: 636, baseType: !34, size: 8, offset: 112)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !374, file: !82, line: 637, baseType: !184, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !374, file: !82, line: 638, baseType: !85, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !374, file: !82, line: 639, baseType: !42, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !305, file: !82, line: 687, baseType: !386, size: 640)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !82, line: 646, size: 640, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !82, line: 647, baseType: !5, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !82, line: 647, baseType: !34, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !82, line: 647, baseType: !34, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !82, line: 647, baseType: !96, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !82, line: 647, baseType: !96, size: 16, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !386, file: !82, line: 648, baseType: !394, size: 512, offset: 128)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 512, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 8)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !305, file: !82, line: 688, baseType: !398, size: 320)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !82, line: 669, size: 320, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !82, line: 670, baseType: !5, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !398, file: !82, line: 670, baseType: !34, size: 8, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !82, line: 670, baseType: !34, size: 8, offset: 72)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !82, line: 670, baseType: !96, size: 16, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !398, file: !82, line: 670, baseType: !96, size: 16, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !398, file: !82, line: 671, baseType: !34, size: 8, offset: 112)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !398, file: !82, line: 672, baseType: !80, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !398, file: !82, line: 673, baseType: !85, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !398, file: !82, line: 674, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !82, line: 660, size: 128, elements: !411)
!411 = !{!412, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !410, file: !82, line: 661, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1061, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !32, !8, !5}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !410, file: !82, line: 662, baseType: !5, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !211, file: !82, line: 918, baseType: !219, size: 64, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !211, file: !82, line: 919, baseType: !8, size: 32, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !185, file: !186, line: 61, baseType: !8, size: 32, offset: 1088)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !185, file: !186, line: 62, baseType: !8, size: 32, offset: 1120)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !185, file: !186, line: 63, baseType: !96, size: 16, offset: 1152)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !185, file: !186, line: 64, baseType: !34, size: 8, offset: 1168)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !185, file: !186, line: 66, baseType: !425, size: 2688, offset: 1216)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2688, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 7)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !185, file: !186, line: 67, baseType: !429, size: 3072, offset: 3904)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 3072, elements: !395)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !185, file: !186, line: 68, baseType: !431, size: 576, offset: 6976)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 576, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 9)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !185, file: !186, line: 69, baseType: !149, size: 64, offset: 7552)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !185, file: !186, line: 71, baseType: !134, size: 64, offset: 7616)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !185, file: !186, line: 72, baseType: !149, size: 64, offset: 7680)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !185, file: !186, line: 73, baseType: !304, size: 64, offset: 7744)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !185, file: !186, line: 74, baseType: !80, size: 64, offset: 7808)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !185, file: !186, line: 75, baseType: !85, size: 64, offset: 7872)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !185, file: !186, line: 76, baseType: !80, size: 64, offset: 7936)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !185, file: !186, line: 77, baseType: !219, size: 64, offset: 8000)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !185, file: !186, line: 78, baseType: !85, size: 64, offset: 8064)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !185, file: !186, line: 79, baseType: !80, size: 64, offset: 8128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !185, file: !186, line: 80, baseType: !122, size: 64, offset: 8192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !185, file: !186, line: 81, baseType: !219, size: 64, offset: 8256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !185, file: !186, line: 82, baseType: !447, size: 64, offset: 8320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !82, line: 718, size: 128, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !449, file: !82, line: 722, baseType: !8, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !449, file: !82, line: 723, baseType: !8, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !82, line: 724, baseType: !96, size: 16, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !449, file: !82, line: 725, baseType: !34, size: 8, offset: 80)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !449, file: !82, line: 726, baseType: !34, size: 8, offset: 88)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !82, line: 727, baseType: !34, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !185, file: !186, line: 83, baseType: !219, size: 64, offset: 8384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !185, file: !186, line: 84, baseType: !85, size: 64, offset: 8448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !185, file: !186, line: 85, baseType: !304, size: 64, offset: 8512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !185, file: !186, line: 86, baseType: !85, size: 64, offset: 8576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !185, file: !186, line: 87, baseType: !304, size: 64, offset: 8640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !185, file: !186, line: 88, baseType: !219, size: 64, offset: 8704)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !185, file: !186, line: 89, baseType: !219, size: 64, offset: 8768)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !185, file: !186, line: 90, baseType: !465, size: 64, offset: 8832)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !185, file: !186, line: 91, baseType: !467, size: 64, offset: 8896)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !82, line: 652, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!6, !184, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !185, file: !186, line: 92, baseType: !473, size: 64, offset: 8960)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !82, line: 656, baseType: !181)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !177, file: !87, line: 153, baseType: !85, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !163, file: !87, line: 156, baseType: !8, size: 32, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !163, file: !87, line: 157, baseType: !196, size: 16, offset: 416)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !163, file: !87, line: 158, baseType: !34, size: 8, offset: 432)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !86, file: !87, line: 377, baseType: !479, size: 576)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !87, line: 122, size: 576, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !479, file: !87, line: 123, baseType: !85, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !479, file: !87, line: 123, baseType: !34, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !87, line: 123, baseType: !34, size: 8, offset: 72)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !479, file: !87, line: 123, baseType: !96, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !87, line: 123, baseType: !34, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !479, file: !87, line: 123, baseType: !34, size: 8, offset: 104)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !479, file: !87, line: 124, baseType: !96, size: 16, offset: 112)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !479, file: !87, line: 125, baseType: !5, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !479, file: !87, line: 126, baseType: !42, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !479, file: !87, line: 127, baseType: !465, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !479, file: !87, line: 128, baseType: !85, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !479, file: !87, line: 129, baseType: !85, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !479, file: !87, line: 130, baseType: !80, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !479, file: !87, line: 131, baseType: !34, size: 8, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !86, file: !87, line: 378, baseType: !496, size: 512)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !87, line: 134, size: 512, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !496, file: !87, line: 135, baseType: !85, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !496, file: !87, line: 135, baseType: !34, size: 8, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !496, file: !87, line: 135, baseType: !34, size: 8, offset: 72)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !496, file: !87, line: 135, baseType: !96, size: 16, offset: 80)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !87, line: 135, baseType: !34, size: 8, offset: 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !496, file: !87, line: 135, baseType: !34, size: 8, offset: 104)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !87, line: 136, baseType: !80, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !496, file: !87, line: 137, baseType: !85, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !87, line: 138, baseType: !85, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !87, line: 139, baseType: !41, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !496, file: !87, line: 140, baseType: !8, size: 32, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !496, file: !87, line: 141, baseType: !5, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !86, file: !87, line: 379, baseType: !511, size: 320)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !87, line: 185, size: 320, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !522}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !511, file: !87, line: 186, baseType: !85, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !87, line: 186, baseType: !34, size: 8, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !87, line: 186, baseType: !34, size: 8, offset: 72)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !511, file: !87, line: 186, baseType: !96, size: 16, offset: 80)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !87, line: 186, baseType: !34, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !511, file: !87, line: 186, baseType: !519, size: 128, offset: 128)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 2)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !511, file: !87, line: 186, baseType: !85, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !86, file: !87, line: 380, baseType: !524, size: 384)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !87, line: 188, size: 384, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !524, file: !87, line: 189, baseType: !85, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !524, file: !87, line: 189, baseType: !34, size: 8, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !524, file: !87, line: 189, baseType: !34, size: 8, offset: 72)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !524, file: !87, line: 189, baseType: !96, size: 16, offset: 80)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !87, line: 189, baseType: !34, size: 8, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !524, file: !87, line: 190, baseType: !519, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !524, file: !87, line: 190, baseType: !85, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !524, file: !87, line: 190, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !82, line: 480, size: 576, elements: !536)
!536 = !{!537, !538, !539, !540, !548, !563, !595, !596, !597, !598, !599, !600}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !82, line: 481, baseType: !80, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !535, file: !82, line: 482, baseType: !534, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !82, line: 483, baseType: !534, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !535, file: !82, line: 484, baseType: !541, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !82, line: 497, size: 256, elements: !543)
!543 = !{!544, !545, !546, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !542, file: !82, line: 498, baseType: !541, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !82, line: 499, baseType: !541, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !542, file: !82, line: 500, baseType: !534, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !542, file: !82, line: 501, baseType: !8, size: 32, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !535, file: !82, line: 485, baseType: !549, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !82, line: 466, size: 320, elements: !551)
!551 = !{!552, !557, !558, !559, !560, !561, !562}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !550, file: !82, line: 467, baseType: !553, size: 128)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !82, line: 459, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !553, file: !82, line: 460, baseType: !34, size: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !553, file: !82, line: 461, baseType: !42, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !550, file: !82, line: 468, baseType: !553, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !550, file: !82, line: 469, baseType: !96, size: 16, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !550, file: !82, line: 470, baseType: !34, size: 8, offset: 272)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !550, file: !82, line: 471, baseType: !34, size: 8, offset: 280)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !550, file: !82, line: 472, baseType: !34, size: 8, offset: 288)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !550, file: !82, line: 473, baseType: !34, size: 8, offset: 296)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !535, file: !82, line: 486, baseType: !564, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !82, line: 448, size: 192, elements: !566)
!566 = !{!567, !590, !591, !592, !593, !594}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !565, file: !82, line: 449, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !82, line: 438, size: 64, elements: !569)
!569 = !{!570, !571, !584}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !568, file: !82, line: 439, baseType: !80, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !568, file: !82, line: 440, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !82, line: 419, size: 256, elements: !574)
!574 = !{!575, !580, !581, !582, !583}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !573, file: !82, line: 420, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1058, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!8, !32, !8, !5}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !573, file: !82, line: 421, baseType: !5, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !573, file: !82, line: 422, baseType: !80, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !573, file: !82, line: 423, baseType: !34, size: 8, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !573, file: !82, line: 424, baseType: !34, size: 8, offset: 200)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !568, file: !82, line: 441, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !82, line: 429, size: 128, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !586, file: !82, line: 430, baseType: !80, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !586, file: !82, line: 431, baseType: !585, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !565, file: !82, line: 450, baseType: !549, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !82, line: 451, baseType: !34, size: 8, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !565, file: !82, line: 452, baseType: !34, size: 8, offset: 136)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !565, file: !82, line: 453, baseType: !34, size: 8, offset: 144)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !565, file: !82, line: 454, baseType: !34, size: 8, offset: 152)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !535, file: !82, line: 487, baseType: !42, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !535, file: !82, line: 488, baseType: !8, size: 32, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !535, file: !82, line: 489, baseType: !96, size: 16, offset: 480)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !535, file: !82, line: 490, baseType: !96, size: 16, offset: 496)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !535, file: !82, line: 491, baseType: !34, size: 8, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !535, file: !82, line: 492, baseType: !34, size: 8, offset: 520)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !86, file: !87, line: 381, baseType: !602, size: 384)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !87, line: 193, size: 384, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !87, line: 194, baseType: !85, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !87, line: 194, baseType: !34, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !87, line: 194, baseType: !34, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !87, line: 194, baseType: !96, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !87, line: 194, baseType: !34, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !87, line: 194, baseType: !519, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !87, line: 194, baseType: !85, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !602, file: !87, line: 194, baseType: !8, size: 32, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !602, file: !87, line: 195, baseType: !8, size: 32, offset: 352)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !86, file: !87, line: 382, baseType: !614, size: 384)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !87, line: 198, size: 384, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !614, file: !87, line: 199, baseType: !85, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !614, file: !87, line: 199, baseType: !34, size: 8, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !87, line: 199, baseType: !34, size: 8, offset: 72)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !614, file: !87, line: 199, baseType: !96, size: 16, offset: 80)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !87, line: 199, baseType: !34, size: 8, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !614, file: !87, line: 201, baseType: !34, size: 8, offset: 104)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !614, file: !87, line: 202, baseType: !34, size: 8, offset: 112)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !614, file: !87, line: 203, baseType: !519, size: 128, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !614, file: !87, line: 203, baseType: !85, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !614, file: !87, line: 203, baseType: !626, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !42)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !86, file: !87, line: 383, baseType: !628, size: 320)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !87, line: 206, size: 320, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !628, file: !87, line: 207, baseType: !85, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !628, file: !87, line: 207, baseType: !34, size: 8, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !87, line: 207, baseType: !34, size: 8, offset: 72)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !628, file: !87, line: 207, baseType: !96, size: 16, offset: 80)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !87, line: 207, baseType: !34, size: 8, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !628, file: !87, line: 207, baseType: !519, size: 128, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !628, file: !87, line: 207, baseType: !85, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !86, file: !87, line: 384, baseType: !638, size: 384)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !87, line: 234, size: 384, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !87, line: 235, baseType: !85, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !87, line: 235, baseType: !34, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !87, line: 235, baseType: !34, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !87, line: 235, baseType: !96, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !87, line: 235, baseType: !34, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !87, line: 235, baseType: !34, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !87, line: 235, baseType: !34, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !87, line: 235, baseType: !34, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !87, line: 235, baseType: !80, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !87, line: 235, baseType: !8, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !87, line: 235, baseType: !8, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !87, line: 235, baseType: !8, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !87, line: 235, baseType: !34, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !87, line: 235, baseType: !34, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !87, line: 235, baseType: !85, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !86, file: !87, line: 385, baseType: !656, size: 576)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !87, line: 238, size: 576, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !87, line: 239, baseType: !85, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !87, line: 239, baseType: !34, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !87, line: 239, baseType: !34, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !87, line: 239, baseType: !96, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !87, line: 239, baseType: !34, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !87, line: 239, baseType: !34, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !87, line: 239, baseType: !34, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !87, line: 239, baseType: !34, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !87, line: 239, baseType: !80, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !87, line: 239, baseType: !8, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !87, line: 239, baseType: !8, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !87, line: 239, baseType: !8, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !87, line: 239, baseType: !34, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !87, line: 239, baseType: !34, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !656, file: !87, line: 239, baseType: !96, size: 16, offset: 304)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !656, file: !87, line: 240, baseType: !85, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !656, file: !87, line: 241, baseType: !134, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !656, file: !87, line: 242, baseType: !96, size: 16, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !656, file: !87, line: 243, baseType: !134, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !86, file: !87, line: 386, baseType: !678, size: 384)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !87, line: 263, size: 384, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !678, file: !87, line: 264, baseType: !85, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 72)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !678, file: !87, line: 264, baseType: !96, size: 16, offset: 80)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 104)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 112)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 120)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !678, file: !87, line: 264, baseType: !80, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !678, file: !87, line: 264, baseType: !8, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !678, file: !87, line: 264, baseType: !8, size: 32, offset: 224)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !678, file: !87, line: 264, baseType: !8, size: 32, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 288)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 296)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !678, file: !87, line: 264, baseType: !34, size: 8, offset: 304)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !678, file: !87, line: 265, baseType: !85, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !86, file: !87, line: 387, baseType: !697, size: 448)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !87, line: 246, size: 448, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !87, line: 247, baseType: !85, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !87, line: 247, baseType: !34, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !87, line: 247, baseType: !34, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !87, line: 247, baseType: !96, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !87, line: 247, baseType: !34, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !697, file: !87, line: 247, baseType: !34, size: 8, offset: 104)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !697, file: !87, line: 247, baseType: !34, size: 8, offset: 112)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !697, file: !87, line: 247, baseType: !34, size: 8, offset: 120)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !87, line: 247, baseType: !80, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !697, file: !87, line: 247, baseType: !8, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !697, file: !87, line: 247, baseType: !8, size: 32, offset: 224)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !697, file: !87, line: 247, baseType: !8, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !697, file: !87, line: 247, baseType: !34, size: 8, offset: 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !697, file: !87, line: 247, baseType: !34, size: 8, offset: 296)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !697, file: !87, line: 247, baseType: !85, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !697, file: !87, line: 248, baseType: !85, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !86, file: !87, line: 388, baseType: !716, size: 448)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !87, line: 251, size: 448, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !87, line: 252, baseType: !85, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !87, line: 252, baseType: !34, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !87, line: 252, baseType: !34, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !87, line: 252, baseType: !96, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !87, line: 252, baseType: !34, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !716, file: !87, line: 252, baseType: !34, size: 8, offset: 104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !716, file: !87, line: 252, baseType: !34, size: 8, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !716, file: !87, line: 252, baseType: !34, size: 8, offset: 120)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !87, line: 252, baseType: !80, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !716, file: !87, line: 252, baseType: !8, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !716, file: !87, line: 252, baseType: !8, size: 32, offset: 224)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !87, line: 252, baseType: !8, size: 32, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !716, file: !87, line: 252, baseType: !34, size: 8, offset: 288)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !716, file: !87, line: 252, baseType: !34, size: 8, offset: 296)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !716, file: !87, line: 257, baseType: !85, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !716, file: !87, line: 258, baseType: !85, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !86, file: !87, line: 389, baseType: !735, size: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !87, line: 274, size: 512, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !735, file: !87, line: 275, baseType: !85, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !87, line: 275, baseType: !34, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !87, line: 275, baseType: !34, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !735, file: !87, line: 275, baseType: !96, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !87, line: 275, baseType: !34, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !87, line: 275, baseType: !80, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !735, file: !87, line: 276, baseType: !8, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !735, file: !87, line: 277, baseType: !413, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !735, file: !87, line: 278, baseType: !5, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !87, line: 279, baseType: !519, size: 128, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !86, file: !87, line: 390, baseType: !748, size: 576)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !87, line: 282, size: 576, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !87, line: 283, baseType: !85, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !87, line: 283, baseType: !34, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !87, line: 283, baseType: !34, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !87, line: 283, baseType: !96, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !87, line: 283, baseType: !34, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !748, file: !87, line: 283, baseType: !34, size: 8, offset: 104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !748, file: !87, line: 284, baseType: !34, size: 8, offset: 112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !748, file: !87, line: 285, baseType: !37, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !87, line: 286, baseType: !80, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !748, file: !87, line: 287, baseType: !5, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !748, file: !87, line: 288, baseType: !5, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !748, file: !87, line: 289, baseType: !46, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !748, file: !87, line: 290, baseType: !85, size: 64, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !87, line: 291, baseType: !85, size: 64, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !86, file: !87, line: 391, baseType: !765, size: 512)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !87, line: 309, size: 512, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !87, line: 310, baseType: !85, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !87, line: 310, baseType: !34, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !87, line: 310, baseType: !34, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !87, line: 310, baseType: !96, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !87, line: 310, baseType: !34, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !765, file: !87, line: 310, baseType: !34, size: 8, offset: 104)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !765, file: !87, line: 311, baseType: !34, size: 8, offset: 112)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !765, file: !87, line: 312, baseType: !34, size: 8, offset: 120)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !765, file: !87, line: 313, baseType: !5, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !87, line: 314, baseType: !80, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !765, file: !87, line: 315, baseType: !149, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !765, file: !87, line: 316, baseType: !134, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !765, file: !87, line: 317, baseType: !134, size: 64, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !765, file: !87, line: 318, baseType: !8, size: 32, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !86, file: !87, line: 392, baseType: !782, size: 448)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !87, line: 342, size: 448, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !87, line: 343, baseType: !85, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !87, line: 343, baseType: !34, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !87, line: 343, baseType: !34, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !87, line: 343, baseType: !96, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !87, line: 343, baseType: !34, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !782, file: !87, line: 343, baseType: !80, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !782, file: !87, line: 344, baseType: !80, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !782, file: !87, line: 345, baseType: !5, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !782, file: !87, line: 346, baseType: !134, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !782, file: !87, line: 347, baseType: !8, size: 32, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !86, file: !87, line: 393, baseType: !795, size: 256)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !87, line: 352, size: 256, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802, !807}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !795, file: !87, line: 353, baseType: !85, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !795, file: !87, line: 353, baseType: !34, size: 8, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !795, file: !87, line: 353, baseType: !34, size: 8, offset: 72)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !795, file: !87, line: 353, baseType: !96, size: 16, offset: 80)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !87, line: 353, baseType: !34, size: 8, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !795, file: !87, line: 353, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1064, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !32, !5}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !795, file: !87, line: 354, baseType: !5, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !86, file: !87, line: 394, baseType: !809, size: 192)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !87, line: 359, size: 192, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !809, file: !87, line: 360, baseType: !85, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !809, file: !87, line: 360, baseType: !34, size: 8, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !809, file: !87, line: 360, baseType: !34, size: 8, offset: 72)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !809, file: !87, line: 360, baseType: !96, size: 16, offset: 80)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !87, line: 360, baseType: !34, size: 8, offset: 96)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !809, file: !87, line: 360, baseType: !85, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !86, file: !87, line: 401, baseType: !81, size: 384)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !82, line: 135, baseType: !34, size: 8, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !82, line: 136, baseType: !34, size: 8, offset: 72)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !82, line: 137, baseType: !96, size: 16, offset: 80)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !82, line: 138, baseType: !822, size: 32, offset: 96)
!822 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !823, line: 328, size: 32, elements: !824)
!823 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !822, file: !823, line: 329, baseType: !8, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !822, file: !823, line: 330, baseType: !278, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !81, file: !82, line: 139, baseType: !80, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !81, file: !82, line: 140, baseType: !80, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !81, file: !82, line: 141, baseType: !80, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !81, file: !82, line: 142, baseType: !196, size: 16, offset: 320)
!831 = !DILocalVariable(name: "status", scope: !69, file: !3, line: 53, type: !6)
!832 = !DILabel(scope: !69, name: "unlock_and_exit", file: !3, line: 92)
!833 = !DILocation(line: 46, column: 57, scope: !69)
!834 = !DILocation(line: 47, column: 30, scope: !69)
!835 = !DILocation(line: 48, column: 33, scope: !69)
!836 = !DILocation(line: 49, column: 31, scope: !69)
!837 = !DILocation(line: 50, column: 16, scope: !69)
!838 = !DILocation(line: 50, column: 28, scope: !69)
!839 = !DILocation(line: 52, column: 2, scope: !69)
!840 = !DILocation(line: 52, column: 30, scope: !69)
!841 = !DILocation(line: 53, column: 2, scope: !69)
!842 = !DILocation(line: 53, column: 14, scope: !69)
!843 = !DILocation(line: 59, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !69, file: !3, line: 59, column: 6)
!845 = !DILocation(line: 59, column: 6, scope: !69)
!846 = !DILocation(line: 60, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !3, line: 59, column: 15)
!848 = !DILocation(line: 63, column: 11, scope: !69)
!849 = !DILocation(line: 63, column: 9, scope: !69)
!850 = !DILocation(line: 64, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !69, file: !3, line: 64, column: 6)
!852 = !DILocation(line: 64, column: 6, scope: !69)
!853 = !DILocation(line: 65, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !3, line: 64, column: 28)
!855 = !DILocation(line: 70, column: 33, scope: !69)
!856 = !DILocation(line: 70, column: 9, scope: !69)
!857 = !DILocation(line: 70, column: 7, scope: !69)
!858 = !DILocation(line: 71, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !69, file: !3, line: 71, column: 6)
!860 = !DILocation(line: 71, column: 6, scope: !69)
!861 = !DILocation(line: 72, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 71, column: 13)
!863 = !DILocation(line: 73, column: 3, scope: !862)
!864 = !DILocation(line: 79, column: 36, scope: !69)
!865 = !DILocation(line: 79, column: 42, scope: !69)
!866 = !DILocation(line: 79, column: 52, scope: !69)
!867 = !DILocation(line: 79, column: 61, scope: !69)
!868 = !DILocation(line: 80, column: 8, scope: !69)
!869 = !DILocation(line: 79, column: 6, scope: !69)
!870 = !DILocation(line: 78, column: 9, scope: !69)
!871 = !DILocation(line: 81, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !69, file: !3, line: 81, column: 6)
!873 = !DILocation(line: 81, column: 6, scope: !69)
!874 = !DILocation(line: 82, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 81, column: 28)
!876 = !DILocation(line: 87, column: 6, scope: !877)
!877 = distinct !DILexicalBlock(scope: !69, file: !3, line: 87, column: 6)
!878 = !DILocation(line: 87, column: 6, scope: !69)
!879 = !DILocation(line: 88, column: 31, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 87, column: 15)
!881 = !DILocation(line: 88, column: 54, scope: !880)
!882 = !DILocation(line: 88, column: 3, scope: !880)
!883 = !DILocation(line: 90, column: 2, scope: !880)
!884 = !DILocation(line: 92, column: 1, scope: !69)
!885 = !DILocation(line: 93, column: 8, scope: !69)
!886 = !DILocation(line: 94, column: 2, scope: !69)
!887 = !DILocation(line: 95, column: 1, scope: !69)
!888 = distinct !DISubprogram(name: "acpi_install_address_space_handler_no_reg", scope: !3, file: !3, line: 110, type: !30, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!889 = !{!890, !891, !892, !893, !894}
!890 = !DILocalVariable(name: "device", arg: 1, scope: !888, file: !3, line: 110, type: !32)
!891 = !DILocalVariable(name: "space_id", arg: 2, scope: !888, file: !3, line: 111, type: !33)
!892 = !DILocalVariable(name: "handler", arg: 3, scope: !888, file: !3, line: 112, type: !37)
!893 = !DILocalVariable(name: "setup", arg: 4, scope: !888, file: !3, line: 113, type: !46)
!894 = !DILocalVariable(name: "context", arg: 5, scope: !888, file: !3, line: 114, type: !5)
!895 = !DILocation(line: 110, column: 55, scope: !888)
!896 = !DILocation(line: 111, column: 28, scope: !888)
!897 = !DILocation(line: 112, column: 31, scope: !888)
!898 = !DILocation(line: 113, column: 29, scope: !888)
!899 = !DILocation(line: 114, column: 14, scope: !888)
!900 = !DILocation(line: 116, column: 53, scope: !888)
!901 = !DILocation(line: 116, column: 61, scope: !888)
!902 = !DILocation(line: 117, column: 11, scope: !888)
!903 = !DILocation(line: 117, column: 20, scope: !888)
!904 = !DILocation(line: 118, column: 11, scope: !888)
!905 = !DILocation(line: 116, column: 9, scope: !888)
!906 = !DILocation(line: 116, column: 2, scope: !888)
!907 = distinct !DISubprogram(name: "acpi_remove_address_space_handler", scope: !3, file: !3, line: 137, type: !908, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{!6, !32, !33, !37}
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920}
!911 = !DILocalVariable(name: "device", arg: 1, scope: !907, file: !3, line: 137, type: !32)
!912 = !DILocalVariable(name: "space_id", arg: 2, scope: !907, file: !3, line: 138, type: !33)
!913 = !DILocalVariable(name: "handler", arg: 3, scope: !907, file: !3, line: 139, type: !37)
!914 = !DILocalVariable(name: "obj_desc", scope: !907, file: !3, line: 141, type: !85)
!915 = !DILocalVariable(name: "handler_obj", scope: !907, file: !3, line: 142, type: !85)
!916 = !DILocalVariable(name: "region_obj", scope: !907, file: !3, line: 143, type: !85)
!917 = !DILocalVariable(name: "last_obj_ptr", scope: !907, file: !3, line: 144, type: !149)
!918 = !DILocalVariable(name: "node", scope: !907, file: !3, line: 145, type: !80)
!919 = !DILocalVariable(name: "status", scope: !907, file: !3, line: 146, type: !6)
!920 = !DILabel(scope: !907, name: "unlock_and_exit", file: !3, line: 254)
!921 = !DILocation(line: 137, column: 47, scope: !907)
!922 = !DILocation(line: 138, column: 27, scope: !907)
!923 = !DILocation(line: 139, column: 30, scope: !907)
!924 = !DILocation(line: 141, column: 2, scope: !907)
!925 = !DILocation(line: 141, column: 29, scope: !907)
!926 = !DILocation(line: 142, column: 2, scope: !907)
!927 = !DILocation(line: 142, column: 29, scope: !907)
!928 = !DILocation(line: 143, column: 2, scope: !907)
!929 = !DILocation(line: 143, column: 29, scope: !907)
!930 = !DILocation(line: 144, column: 2, scope: !907)
!931 = !DILocation(line: 144, column: 30, scope: !907)
!932 = !DILocation(line: 145, column: 2, scope: !907)
!933 = !DILocation(line: 145, column: 30, scope: !907)
!934 = !DILocation(line: 146, column: 2, scope: !907)
!935 = !DILocation(line: 146, column: 14, scope: !907)
!936 = !DILocation(line: 152, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !907, file: !3, line: 152, column: 6)
!938 = !DILocation(line: 152, column: 6, scope: !907)
!939 = !DILocation(line: 153, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 152, column: 15)
!941 = !DILocation(line: 156, column: 11, scope: !907)
!942 = !DILocation(line: 156, column: 9, scope: !907)
!943 = !DILocation(line: 157, column: 6, scope: !944)
!944 = distinct !DILexicalBlock(scope: !907, file: !3, line: 157, column: 6)
!945 = !DILocation(line: 157, column: 6, scope: !907)
!946 = !DILocation(line: 158, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 157, column: 28)
!948 = !DILocation(line: 163, column: 33, scope: !907)
!949 = !DILocation(line: 163, column: 9, scope: !907)
!950 = !DILocation(line: 163, column: 7, scope: !907)
!951 = !DILocation(line: 164, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !907, file: !3, line: 164, column: 6)
!953 = !DILocation(line: 164, column: 12, scope: !952)
!954 = !DILocation(line: 165, column: 8, scope: !952)
!955 = !DILocation(line: 165, column: 14, scope: !952)
!956 = !DILocation(line: 165, column: 19, scope: !952)
!957 = !DILocation(line: 165, column: 40, scope: !952)
!958 = !DILocation(line: 166, column: 8, scope: !952)
!959 = !DILocation(line: 166, column: 14, scope: !952)
!960 = !DILocation(line: 166, column: 19, scope: !952)
!961 = !DILocation(line: 166, column: 43, scope: !952)
!962 = !DILocation(line: 167, column: 8, scope: !952)
!963 = !DILocation(line: 167, column: 14, scope: !952)
!964 = !DILocation(line: 167, column: 19, scope: !952)
!965 = !DILocation(line: 167, column: 41, scope: !952)
!966 = !DILocation(line: 168, column: 8, scope: !952)
!967 = !DILocation(line: 168, column: 16, scope: !952)
!968 = !DILocation(line: 168, column: 13, scope: !952)
!969 = !DILocation(line: 164, column: 6, scope: !907)
!970 = !DILocation(line: 169, column: 10, scope: !971)
!971 = distinct !DILexicalBlock(scope: !952, file: !3, line: 168, column: 38)
!972 = !DILocation(line: 170, column: 3, scope: !971)
!973 = !DILocation(line: 175, column: 41, scope: !907)
!974 = !DILocation(line: 175, column: 13, scope: !907)
!975 = !DILocation(line: 175, column: 11, scope: !907)
!976 = !DILocation(line: 176, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !907, file: !3, line: 176, column: 6)
!978 = !DILocation(line: 176, column: 6, scope: !907)
!979 = !DILocation(line: 177, column: 10, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 176, column: 17)
!981 = !DILocation(line: 178, column: 3, scope: !980)
!982 = !DILocation(line: 183, column: 16, scope: !907)
!983 = !DILocation(line: 183, column: 40, scope: !907)
!984 = !DILocation(line: 183, column: 14, scope: !907)
!985 = !DILocation(line: 184, column: 18, scope: !907)
!986 = !DILocation(line: 184, column: 42, scope: !907)
!987 = !DILocation(line: 184, column: 15, scope: !907)
!988 = !DILocation(line: 185, column: 2, scope: !907)
!989 = !DILocation(line: 185, column: 9, scope: !907)
!990 = !DILocation(line: 189, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 189, column: 7)
!992 = distinct !DILexicalBlock(scope: !907, file: !3, line: 185, column: 22)
!993 = !DILocation(line: 189, column: 34, scope: !991)
!994 = !DILocation(line: 189, column: 46, scope: !991)
!995 = !DILocation(line: 189, column: 43, scope: !991)
!996 = !DILocation(line: 189, column: 7, scope: !992)
!997 = !DILocation(line: 193, column: 8, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 193, column: 8)
!999 = distinct !DILexicalBlock(scope: !991, file: !3, line: 189, column: 56)
!1000 = !DILocation(line: 193, column: 35, scope: !998)
!1001 = !DILocation(line: 193, column: 46, scope: !998)
!1002 = !DILocation(line: 193, column: 43, scope: !998)
!1003 = !DILocation(line: 193, column: 8, scope: !999)
!1004 = !DILocation(line: 194, column: 12, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !998, file: !3, line: 193, column: 55)
!1006 = !DILocation(line: 195, column: 5, scope: !1005)
!1007 = !DILocation(line: 207, column: 17, scope: !999)
!1008 = !DILocation(line: 207, column: 44, scope: !999)
!1009 = !DILocation(line: 207, column: 15, scope: !999)
!1010 = !DILocation(line: 211, column: 4, scope: !999)
!1011 = !DILocation(line: 211, column: 11, scope: !999)
!1012 = !DILocation(line: 219, column: 27, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !999, file: !3, line: 211, column: 23)
!1014 = !DILocation(line: 219, column: 5, scope: !1013)
!1015 = !DILocation(line: 226, column: 9, scope: !1013)
!1016 = !DILocation(line: 226, column: 36, scope: !1013)
!1017 = !DILocation(line: 225, column: 16, scope: !1013)
!1018 = distinct !{!1018, !1010, !1019, !1020, !1021}
!1019 = !DILocation(line: 227, column: 4, scope: !999)
!1020 = !{!"llvm.loop.mustprogress"}
!1021 = !{!"llvm.loop.unroll.disable"}
!1022 = !DILocation(line: 231, column: 20, scope: !999)
!1023 = !DILocation(line: 231, column: 47, scope: !999)
!1024 = !DILocation(line: 231, column: 5, scope: !999)
!1025 = !DILocation(line: 231, column: 18, scope: !999)
!1026 = !DILocation(line: 235, column: 29, scope: !999)
!1027 = !DILocation(line: 235, column: 4, scope: !999)
!1028 = !DILocation(line: 236, column: 4, scope: !999)
!1029 = !DILocation(line: 241, column: 19, scope: !992)
!1030 = !DILocation(line: 241, column: 46, scope: !992)
!1031 = !DILocation(line: 241, column: 16, scope: !992)
!1032 = !DILocation(line: 242, column: 17, scope: !992)
!1033 = !DILocation(line: 242, column: 44, scope: !992)
!1034 = !DILocation(line: 242, column: 15, scope: !992)
!1035 = distinct !{!1035, !988, !1036, !1020, !1021}
!1036 = !DILocation(line: 243, column: 2, scope: !907)
!1037 = !DILocation(line: 252, column: 9, scope: !907)
!1038 = !DILocation(line: 252, column: 2, scope: !907)
!1039 = !DILocation(line: 254, column: 1, scope: !907)
!1040 = !DILocation(line: 255, column: 8, scope: !907)
!1041 = !DILocation(line: 256, column: 2, scope: !907)
!1042 = !DILocation(line: 257, column: 1, scope: !907)
!1043 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !1044, file: !1044, line: 646, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!6, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !82, line: 17, baseType: !8)
!1048 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !1049, file: !1049, line: 398, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!80, !32}
!1052 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1049, file: !1049, line: 298, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!85, !80}
!1055 = !DISubprogram(name: "acpi_ev_detach_region", scope: !1056, file: !1056, line: 187, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !85, !34}
!1059 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1044, file: !1044, line: 369, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !85}
!1062 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !1044, file: !1044, line: 648, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = distinct !DISubprogram(name: "acpi_execute_reg_methods", scope: !3, file: !3, line: 274, type: !1064, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1066)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!6, !32, !8, !33}
!1066 = !{!1067, !1068, !1069, !1070, !1071}
!1067 = !DILocalVariable(name: "device", arg: 1, scope: !1063, file: !3, line: 274, type: !32)
!1068 = !DILocalVariable(name: "max_depth", arg: 2, scope: !1063, file: !3, line: 274, type: !8)
!1069 = !DILocalVariable(name: "space_id", arg: 3, scope: !1063, file: !3, line: 275, type: !33)
!1070 = !DILocalVariable(name: "node", scope: !1063, file: !3, line: 277, type: !80)
!1071 = !DILocalVariable(name: "status", scope: !1063, file: !3, line: 278, type: !6)
!1072 = !DILocation(line: 274, column: 38, scope: !1063)
!1073 = !DILocation(line: 274, column: 50, scope: !1063)
!1074 = !DILocation(line: 275, column: 25, scope: !1063)
!1075 = !DILocation(line: 277, column: 2, scope: !1063)
!1076 = !DILocation(line: 277, column: 30, scope: !1063)
!1077 = !DILocation(line: 278, column: 2, scope: !1063)
!1078 = !DILocation(line: 278, column: 14, scope: !1063)
!1079 = !DILocation(line: 284, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 284, column: 6)
!1081 = !DILocation(line: 284, column: 6, scope: !1063)
!1082 = !DILocation(line: 285, column: 3, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 284, column: 15)
!1084 = !DILocation(line: 288, column: 11, scope: !1063)
!1085 = !DILocation(line: 288, column: 9, scope: !1063)
!1086 = !DILocation(line: 289, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 289, column: 6)
!1088 = !DILocation(line: 289, column: 6, scope: !1063)
!1089 = !DILocation(line: 290, column: 3, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 289, column: 28)
!1091 = !DILocation(line: 295, column: 33, scope: !1063)
!1092 = !DILocation(line: 295, column: 9, scope: !1063)
!1093 = !DILocation(line: 295, column: 7, scope: !1063)
!1094 = !DILocation(line: 296, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 296, column: 6)
!1096 = !DILocation(line: 296, column: 6, scope: !1063)
!1097 = !DILocation(line: 300, column: 31, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 296, column: 12)
!1099 = !DILocation(line: 300, column: 37, scope: !1098)
!1100 = !DILocation(line: 300, column: 48, scope: !1098)
!1101 = !DILocation(line: 300, column: 3, scope: !1098)
!1102 = !DILocation(line: 302, column: 2, scope: !1098)
!1103 = !DILocation(line: 303, column: 10, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 302, column: 9)
!1105 = !DILocation(line: 306, column: 8, scope: !1063)
!1106 = !DILocation(line: 307, column: 2, scope: !1063)
!1107 = !DILocation(line: 308, column: 1, scope: !1063)
!1108 = !DISubprogram(name: "acpi_ev_execute_reg_methods", scope: !1056, file: !1056, line: 191, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !80, !8, !33, !8}
!1111 = !DISubprogram(name: "acpi_ev_install_space_handler", scope: !1056, file: !1056, line: 165, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!6, !80, !33, !37, !46, !5}
