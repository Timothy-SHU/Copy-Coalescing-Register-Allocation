; ModuleID = 'drivers/acpi/acpica/evhandler.c'
source_filename = "drivers/acpi/acpica/evhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_notify_common = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr }
%struct.acpi_object_addr_handler = type { ptr, i8, i8, i16, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }

@acpi_gbl_default_address_spaces = hidden global [4 x i8] c"\00\01\02~", align 1, !dbg !0
@acpi_gbl_root_node = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [10 x i8] c"evhandler\00", align 1, !dbg !784

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_install_region_handlers() #0 align 16 !dbg !800 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %status, metadata !804, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %i, metadata !805, metadata !DIExpression()), !dbg !810
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #5, !dbg !811
  store i32 %call, ptr %status, align 4, !dbg !812
  %0 = load i32, ptr %status, align 4, !dbg !813
  %tobool = icmp ne i32 %0, 0, !dbg !813
  br i1 %tobool, label %if.then, label %if.end, !dbg !815

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !816
  store i32 %1, ptr %retval, align 4, !dbg !816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !816

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !818
  br label %for.cond, !dbg !820

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !821
  %cmp = icmp ult i32 %2, 4, !dbg !823
  br i1 %cmp, label %for.body, label %for.end, !dbg !824

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !825
  %4 = load i32, ptr %i, align 4, !dbg !827
  %idxprom = zext i32 %4 to i64, !dbg !828
  %arrayidx = getelementptr [4 x i8], ptr @acpi_gbl_default_address_spaces, i64 0, i64 %idxprom, !dbg !828
  %5 = load i8, ptr %arrayidx, align 1, !dbg !828
  %call1 = call i32 @acpi_ev_install_space_handler(ptr noundef %3, i8 noundef zeroext %5, ptr noundef null, ptr noundef null, ptr noundef null) #5, !dbg !829
  store i32 %call1, ptr %status, align 4, !dbg !830
  %6 = load i32, ptr %status, align 4, !dbg !831
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 25, label %sw.bb
    i32 7, label %sw.bb
  ], !dbg !832

sw.bb:                                            ; preds = %for.body, %for.body, %for.body
  store i32 0, ptr %status, align 4, !dbg !833
  br label %sw.epilog, !dbg !835

sw.default:                                       ; preds = %for.body
  br label %unlock_and_exit, !dbg !836

sw.epilog:                                        ; preds = %sw.bb
  br label %for.inc, !dbg !837

for.inc:                                          ; preds = %sw.epilog
  %7 = load i32, ptr %i, align 4, !dbg !838
  %inc = add i32 %7, 1, !dbg !838
  store i32 %inc, ptr %i, align 4, !dbg !838
  br label %for.cond, !dbg !839, !llvm.loop !840

for.end:                                          ; preds = %for.cond
  br label %unlock_and_exit, !dbg !841

unlock_and_exit:                                  ; preds = %for.end, %sw.default
  call void @llvm.dbg.label(metadata !806), !dbg !844
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5, !dbg !845
  %8 = load i32, ptr %status, align 4, !dbg !846
  store i32 %8, ptr %retval, align 4, !dbg !846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !846

cleanup:                                          ; preds = %unlock_and_exit, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !847
  %9 = load i32, ptr %retval, align 4, !dbg !847
  ret i32 %9, !dbg !847
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !848 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_install_space_handler(ptr noundef %node, i8 noundef zeroext %space_id, ptr noundef %handler, ptr noundef %setup, ptr noundef %context) #0 align 16 !dbg !853 {
entry:
  %node.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %handler.addr = alloca ptr, align 8
  %setup.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %type = alloca i32, align 4
  %flags = alloca i8, align 1
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !857, metadata !DIExpression()), !dbg !869
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !858, metadata !DIExpression()), !dbg !870
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !859, metadata !DIExpression()), !dbg !871
  store ptr %setup, ptr %setup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %setup.addr, metadata !860, metadata !DIExpression()), !dbg !872
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !861, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !862, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #4, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !863, metadata !DIExpression()), !dbg !877
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %status, metadata !864, metadata !DIExpression()), !dbg !879
  store i32 0, ptr %status, align 4, !dbg !879
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #4, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %type, metadata !865, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #4, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !867, metadata !DIExpression()), !dbg !883
  store i8 0, ptr %flags, align 1, !dbg !883
  %0 = load ptr, ptr %node.addr, align 8, !dbg !884
  %type1 = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 2, !dbg !886
  %1 = load i8, ptr %type1, align 1, !dbg !886
  %conv = zext i8 %1 to i32, !dbg !884
  %cmp = icmp ne i32 %conv, 6, !dbg !887
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !888

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !889
  %type3 = getelementptr inbounds %struct.acpi_namespace_node, ptr %2, i32 0, i32 2, !dbg !890
  %3 = load i8, ptr %type3, align 1, !dbg !890
  %conv4 = zext i8 %3 to i32, !dbg !889
  %cmp5 = icmp ne i32 %conv4, 12, !dbg !891
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !892

land.lhs.true7:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %node.addr, align 8, !dbg !893
  %type8 = getelementptr inbounds %struct.acpi_namespace_node, ptr %4, i32 0, i32 2, !dbg !894
  %5 = load i8, ptr %type8, align 1, !dbg !894
  %conv9 = zext i8 %5 to i32, !dbg !893
  %cmp10 = icmp ne i32 %conv9, 13, !dbg !895
  br i1 %cmp10, label %land.lhs.true12, label %if.end, !dbg !896

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %6 = load ptr, ptr %node.addr, align 8, !dbg !897
  %7 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !898
  %cmp13 = icmp ne ptr %6, %7, !dbg !899
  br i1 %cmp13, label %if.then, label %if.end, !dbg !900

if.then:                                          ; preds = %land.lhs.true12
  store i32 4097, ptr %status, align 4, !dbg !901
  br label %unlock_and_exit, !dbg !903

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true7, %land.lhs.true, %entry
  %8 = load ptr, ptr %handler.addr, align 8, !dbg !904
  %cmp15 = icmp eq ptr %8, null, !dbg !906
  br i1 %cmp15, label %if.then17, label %if.end24, !dbg !907

if.then17:                                        ; preds = %if.end
  store i8 1, ptr %flags, align 1, !dbg !908
  %9 = load i8, ptr %space_id.addr, align 1, !dbg !910
  %conv18 = zext i8 %9 to i32, !dbg !910
  switch i32 %conv18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb20
    i32 5, label %sw.bb21
    i32 6, label %sw.bb22
    i32 126, label %sw.bb23
  ], !dbg !911

sw.bb:                                            ; preds = %if.then17
  store ptr @acpi_ex_system_memory_space_handler, ptr %handler.addr, align 8, !dbg !912
  store ptr @acpi_ev_system_memory_region_setup, ptr %setup.addr, align 8, !dbg !914
  br label %sw.epilog, !dbg !915

sw.bb19:                                          ; preds = %if.then17
  store ptr @acpi_ex_system_io_space_handler, ptr %handler.addr, align 8, !dbg !916
  store ptr @acpi_ev_io_space_region_setup, ptr %setup.addr, align 8, !dbg !917
  br label %sw.epilog, !dbg !918

sw.bb20:                                          ; preds = %if.then17
  store ptr @acpi_ex_pci_config_space_handler, ptr %handler.addr, align 8, !dbg !919
  store ptr @acpi_ev_pci_config_region_setup, ptr %setup.addr, align 8, !dbg !920
  br label %sw.epilog, !dbg !921

sw.bb21:                                          ; preds = %if.then17
  store ptr @acpi_ex_cmos_space_handler, ptr %handler.addr, align 8, !dbg !922
  store ptr @acpi_ev_cmos_region_setup, ptr %setup.addr, align 8, !dbg !923
  br label %sw.epilog, !dbg !924

sw.bb22:                                          ; preds = %if.then17
  store ptr @acpi_ex_pci_bar_space_handler, ptr %handler.addr, align 8, !dbg !925
  store ptr @acpi_ev_pci_bar_region_setup, ptr %setup.addr, align 8, !dbg !926
  br label %sw.epilog, !dbg !927

sw.bb23:                                          ; preds = %if.then17
  store ptr @acpi_ex_data_table_space_handler, ptr %handler.addr, align 8, !dbg !928
  store ptr @acpi_ev_data_table_region_setup, ptr %setup.addr, align 8, !dbg !929
  br label %sw.epilog, !dbg !930

sw.default:                                       ; preds = %if.then17
  store i32 4097, ptr %status, align 4, !dbg !931
  br label %unlock_and_exit, !dbg !932

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb
  br label %if.end24, !dbg !933

if.end24:                                         ; preds = %sw.epilog, %if.end
  %10 = load ptr, ptr %setup.addr, align 8, !dbg !934
  %tobool = icmp ne ptr %10, null, !dbg !934
  br i1 %tobool, label %if.end26, label %if.then25, !dbg !936

if.then25:                                        ; preds = %if.end24
  store ptr @acpi_ev_default_region_setup, ptr %setup.addr, align 8, !dbg !937
  br label %if.end26, !dbg !939

if.end26:                                         ; preds = %if.then25, %if.end24
  %11 = load ptr, ptr %node.addr, align 8, !dbg !940
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %11) #5, !dbg !941
  store ptr %call, ptr %obj_desc, align 8, !dbg !942
  %12 = load ptr, ptr %obj_desc, align 8, !dbg !943
  %tobool27 = icmp ne ptr %12, null, !dbg !943
  br i1 %tobool27, label %if.then28, label %if.else39, !dbg !945

if.then28:                                        ; preds = %if.end26
  %13 = load i8, ptr %space_id.addr, align 1, !dbg !946
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !948
  %handler29 = getelementptr inbounds %struct.acpi_object_notify_common, ptr %14, i32 0, i32 6, !dbg !949
  %15 = load ptr, ptr %handler29, align 8, !dbg !949
  %call30 = call ptr @acpi_ev_find_region_handler(i8 noundef zeroext %13, ptr noundef %15) #5, !dbg !950
  store ptr %call30, ptr %handler_obj, align 8, !dbg !951
  %16 = load ptr, ptr %handler_obj, align 8, !dbg !952
  %tobool31 = icmp ne ptr %16, null, !dbg !952
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !954

if.then32:                                        ; preds = %if.then28
  %17 = load ptr, ptr %handler_obj, align 8, !dbg !955
  %handler33 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %17, i32 0, i32 7, !dbg !958
  %18 = load ptr, ptr %handler33, align 8, !dbg !958
  %19 = load ptr, ptr %handler.addr, align 8, !dbg !959
  %cmp34 = icmp eq ptr %18, %19, !dbg !960
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !961

if.then36:                                        ; preds = %if.then32
  store i32 25, ptr %status, align 4, !dbg !962
  br label %unlock_and_exit, !dbg !964

if.else:                                          ; preds = %if.then32
  store i32 7, ptr %status, align 4, !dbg !965
  br label %if.end37

if.end37:                                         ; preds = %if.else
  br label %unlock_and_exit, !dbg !967

if.end38:                                         ; preds = %if.then28
  br label %if.end59, !dbg !968

if.else39:                                        ; preds = %if.end26
  %20 = load ptr, ptr %node.addr, align 8, !dbg !969
  %type40 = getelementptr inbounds %struct.acpi_namespace_node, ptr %20, i32 0, i32 2, !dbg !972
  %21 = load i8, ptr %type40, align 1, !dbg !972
  %conv41 = zext i8 %21 to i32, !dbg !969
  %cmp42 = icmp eq i32 %conv41, 0, !dbg !973
  br i1 %cmp42, label %if.then44, label %if.else45, !dbg !974

if.then44:                                        ; preds = %if.else39
  store i32 6, ptr %type, align 4, !dbg !975
  br label %if.end48, !dbg !977

if.else45:                                        ; preds = %if.else39
  %22 = load ptr, ptr %node.addr, align 8, !dbg !978
  %type46 = getelementptr inbounds %struct.acpi_namespace_node, ptr %22, i32 0, i32 2, !dbg !980
  %23 = load i8, ptr %type46, align 1, !dbg !980
  %conv47 = zext i8 %23 to i32, !dbg !978
  store i32 %conv47, ptr %type, align 4, !dbg !981
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then44
  %24 = load i32, ptr %type, align 4, !dbg !982
  %call49 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 448, i32 noundef 4, i32 noundef %24) #5, !dbg !982
  store ptr %call49, ptr %obj_desc, align 8, !dbg !983
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !984
  %tobool50 = icmp ne ptr %25, null, !dbg !984
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !986

if.then51:                                        ; preds = %if.end48
  store i32 4, ptr %status, align 4, !dbg !987
  br label %unlock_and_exit, !dbg !989

if.end52:                                         ; preds = %if.end48
  %26 = load i32, ptr %type, align 4, !dbg !990
  %conv53 = trunc i32 %26 to i8, !dbg !991
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !992
  %type54 = getelementptr inbounds %struct.acpi_object_common, ptr %27, i32 0, i32 2, !dbg !993
  store i8 %conv53, ptr %type54, align 1, !dbg !994
  %28 = load ptr, ptr %node.addr, align 8, !dbg !995
  %29 = load ptr, ptr %obj_desc, align 8, !dbg !996
  %30 = load i32, ptr %type, align 4, !dbg !997
  %call55 = call i32 @acpi_ns_attach_object(ptr noundef %28, ptr noundef %29, i32 noundef %30) #5, !dbg !998
  store i32 %call55, ptr %status, align 4, !dbg !999
  %31 = load ptr, ptr %obj_desc, align 8, !dbg !1000
  call void @acpi_ut_remove_reference(ptr noundef %31) #5, !dbg !1001
  %32 = load i32, ptr %status, align 4, !dbg !1002
  %tobool56 = icmp ne i32 %32, 0, !dbg !1002
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !1004

if.then57:                                        ; preds = %if.end52
  br label %unlock_and_exit, !dbg !1005

if.end58:                                         ; preds = %if.end52
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end38
  %call60 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 484, i32 noundef 4, i32 noundef 24) #5, !dbg !1007
  store ptr %call60, ptr %handler_obj, align 8, !dbg !1008
  %33 = load ptr, ptr %handler_obj, align 8, !dbg !1009
  %tobool61 = icmp ne ptr %33, null, !dbg !1009
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !1011

if.then62:                                        ; preds = %if.end59
  store i32 4, ptr %status, align 4, !dbg !1012
  br label %unlock_and_exit, !dbg !1014

if.end63:                                         ; preds = %if.end59
  %34 = load ptr, ptr %handler_obj, align 8, !dbg !1015
  %context_mutex = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %34, i32 0, i32 10, !dbg !1015
  %call64 = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %context_mutex) #5, !dbg !1015
  store i32 %call64, ptr %status, align 4, !dbg !1016
  %35 = load i32, ptr %status, align 4, !dbg !1017
  %tobool65 = icmp ne i32 %35, 0, !dbg !1017
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !1019

if.then66:                                        ; preds = %if.end63
  %36 = load ptr, ptr %handler_obj, align 8, !dbg !1020
  call void @acpi_ut_remove_reference(ptr noundef %36) #5, !dbg !1022
  br label %unlock_and_exit, !dbg !1023

if.end67:                                         ; preds = %if.end63
  %37 = load i8, ptr %space_id.addr, align 1, !dbg !1024
  %38 = load ptr, ptr %handler_obj, align 8, !dbg !1025
  %space_id68 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %38, i32 0, i32 5, !dbg !1026
  store i8 %37, ptr %space_id68, align 1, !dbg !1027
  %39 = load i8, ptr %flags, align 1, !dbg !1028
  %40 = load ptr, ptr %handler_obj, align 8, !dbg !1029
  %handler_flags = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %40, i32 0, i32 6, !dbg !1030
  store i8 %39, ptr %handler_flags, align 2, !dbg !1031
  %41 = load ptr, ptr %handler_obj, align 8, !dbg !1032
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %41, i32 0, i32 12, !dbg !1033
  store ptr null, ptr %region_list, align 8, !dbg !1034
  %42 = load ptr, ptr %node.addr, align 8, !dbg !1035
  %43 = load ptr, ptr %handler_obj, align 8, !dbg !1036
  %node69 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %43, i32 0, i32 8, !dbg !1037
  store ptr %42, ptr %node69, align 8, !dbg !1038
  %44 = load ptr, ptr %handler.addr, align 8, !dbg !1039
  %45 = load ptr, ptr %handler_obj, align 8, !dbg !1040
  %handler70 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %45, i32 0, i32 7, !dbg !1041
  store ptr %44, ptr %handler70, align 8, !dbg !1042
  %46 = load ptr, ptr %context.addr, align 8, !dbg !1043
  %47 = load ptr, ptr %handler_obj, align 8, !dbg !1044
  %context71 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %47, i32 0, i32 9, !dbg !1045
  store ptr %46, ptr %context71, align 8, !dbg !1046
  %48 = load ptr, ptr %setup.addr, align 8, !dbg !1047
  %49 = load ptr, ptr %handler_obj, align 8, !dbg !1048
  %setup72 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %49, i32 0, i32 11, !dbg !1049
  store ptr %48, ptr %setup72, align 8, !dbg !1050
  %50 = load ptr, ptr %obj_desc, align 8, !dbg !1051
  %handler73 = getelementptr inbounds %struct.acpi_object_notify_common, ptr %50, i32 0, i32 6, !dbg !1052
  %51 = load ptr, ptr %handler73, align 8, !dbg !1052
  %52 = load ptr, ptr %handler_obj, align 8, !dbg !1053
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %52, i32 0, i32 13, !dbg !1054
  store ptr %51, ptr %next, align 8, !dbg !1055
  %53 = load ptr, ptr %handler_obj, align 8, !dbg !1056
  %54 = load ptr, ptr %obj_desc, align 8, !dbg !1057
  %handler74 = getelementptr inbounds %struct.acpi_object_notify_common, ptr %54, i32 0, i32 6, !dbg !1058
  store ptr %53, ptr %handler74, align 8, !dbg !1059
  %55 = load ptr, ptr %node.addr, align 8, !dbg !1060
  %56 = load ptr, ptr %handler_obj, align 8, !dbg !1061
  %call75 = call i32 @acpi_ns_walk_namespace(i32 noundef 0, ptr noundef %55, i32 noundef -1, i32 noundef 1, ptr noundef @acpi_ev_install_handler, ptr noundef null, ptr noundef %56, ptr noundef null) #5, !dbg !1062
  store i32 %call75, ptr %status, align 4, !dbg !1063
  br label %unlock_and_exit, !dbg !1064

unlock_and_exit:                                  ; preds = %if.end67, %if.then66, %if.then62, %if.then57, %if.then51, %if.end37, %if.then36, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !868), !dbg !1065
  %57 = load i32, ptr %status, align 4, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #4, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #4, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #4, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1067
  ret i32 %57, !dbg !1066
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1068 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ev_has_default_handler(ptr noundef %node, i8 noundef zeroext %space_id) #0 align 16 !dbg !1069 {
entry:
  %retval = alloca i8, align 1
  %node.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %obj_desc = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1073, metadata !DIExpression()), !dbg !1077
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !1074, metadata !DIExpression()), !dbg !1078
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1075, metadata !DIExpression()), !dbg !1080
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #4, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !1076, metadata !DIExpression()), !dbg !1082
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1083
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %0) #5, !dbg !1084
  store ptr %call, ptr %obj_desc, align 8, !dbg !1085
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !1086
  %tobool = icmp ne ptr %1, null, !dbg !1086
  br i1 %tobool, label %if.then, label %if.end10, !dbg !1088

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %obj_desc, align 8, !dbg !1089
  %handler = getelementptr inbounds %struct.acpi_object_notify_common, ptr %2, i32 0, i32 6, !dbg !1091
  %3 = load ptr, ptr %handler, align 8, !dbg !1091
  store ptr %3, ptr %handler_obj, align 8, !dbg !1092
  br label %while.cond, !dbg !1093

while.cond:                                       ; preds = %if.end9, %if.then
  %4 = load ptr, ptr %handler_obj, align 8, !dbg !1094
  %tobool1 = icmp ne ptr %4, null, !dbg !1093
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1093

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %handler_obj, align 8, !dbg !1095
  %space_id2 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %5, i32 0, i32 5, !dbg !1098
  %6 = load i8, ptr %space_id2, align 1, !dbg !1098
  %conv = zext i8 %6 to i32, !dbg !1095
  %7 = load i8, ptr %space_id.addr, align 1, !dbg !1099
  %conv3 = zext i8 %7 to i32, !dbg !1099
  %cmp = icmp eq i32 %conv, %conv3, !dbg !1100
  br i1 %cmp, label %if.then5, label %if.end9, !dbg !1101

if.then5:                                         ; preds = %while.body
  %8 = load ptr, ptr %handler_obj, align 8, !dbg !1102
  %handler_flags = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %8, i32 0, i32 6, !dbg !1105
  %9 = load i8, ptr %handler_flags, align 2, !dbg !1105
  %conv6 = zext i8 %9 to i32, !dbg !1102
  %and = and i32 %conv6, 1, !dbg !1106
  %tobool7 = icmp ne i32 %and, 0, !dbg !1106
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !1107

if.then8:                                         ; preds = %if.then5
  store i8 1, ptr %retval, align 1, !dbg !1108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1108

if.end:                                           ; preds = %if.then5
  br label %if.end9, !dbg !1110

if.end9:                                          ; preds = %if.end, %while.body
  %10 = load ptr, ptr %handler_obj, align 8, !dbg !1111
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %10, i32 0, i32 13, !dbg !1112
  %11 = load ptr, ptr %next, align 8, !dbg !1112
  store ptr %11, ptr %handler_obj, align 8, !dbg !1113
  br label %while.cond, !dbg !1093, !llvm.loop !1114

while.end:                                        ; preds = %while.cond
  br label %if.end10, !dbg !1116

if.end10:                                         ; preds = %while.end, %entry
  store i8 0, ptr %retval, align 1, !dbg !1117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1117

cleanup:                                          ; preds = %if.end10, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #4, !dbg !1118
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1118
  %12 = load i8, ptr %retval, align 1, !dbg !1118
  ret i8 %12, !dbg !1118
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1119 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ev_find_region_handler(i8 noundef zeroext %space_id, ptr noundef %handler_obj) #0 align 16 !dbg !1123 {
entry:
  %retval = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %handler_obj.addr = alloca ptr, align 8
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !1127, metadata !DIExpression()), !dbg !1129
  store ptr %handler_obj, ptr %handler_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_obj.addr, metadata !1128, metadata !DIExpression()), !dbg !1130
  br label %while.cond, !dbg !1131

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %handler_obj.addr, align 8, !dbg !1132
  %tobool = icmp ne ptr %0, null, !dbg !1131
  br i1 %tobool, label %while.body, label %while.end, !dbg !1131

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %handler_obj.addr, align 8, !dbg !1133
  %space_id1 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %1, i32 0, i32 5, !dbg !1136
  %2 = load i8, ptr %space_id1, align 1, !dbg !1136
  %conv = zext i8 %2 to i32, !dbg !1133
  %3 = load i8, ptr %space_id.addr, align 1, !dbg !1137
  %conv2 = zext i8 %3 to i32, !dbg !1137
  %cmp = icmp eq i32 %conv, %conv2, !dbg !1138
  br i1 %cmp, label %if.then, label %if.end, !dbg !1139

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %handler_obj.addr, align 8, !dbg !1140
  store ptr %4, ptr %retval, align 8, !dbg !1142
  br label %return, !dbg !1142

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %handler_obj.addr, align 8, !dbg !1143
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %5, i32 0, i32 13, !dbg !1144
  %6 = load ptr, ptr %next, align 8, !dbg !1144
  store ptr %6, ptr %handler_obj.addr, align 8, !dbg !1145
  br label %while.cond, !dbg !1131, !llvm.loop !1146

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !1148
  br label %return, !dbg !1148

return:                                           ; preds = %while.end, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !1149
  ret ptr %7, !dbg !1149
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_system_memory_space_handler(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_system_memory_region_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_system_io_space_handler(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_io_space_region_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_pci_config_space_handler(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_pci_config_region_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_cmos_space_handler(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_cmos_region_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_pci_bar_space_handler(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_pci_bar_region_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_data_table_space_handler(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_data_table_region_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_default_region_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1150 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1154 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1157 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1160 dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1164 dso_local i32 @acpi_ns_walk_namespace(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_install_handler(ptr noundef %obj_handle, i32 noundef %level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1168 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  %next_handler_obj = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1170, metadata !DIExpression()), !dbg !1179
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1171, metadata !DIExpression()), !dbg !1180
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1172, metadata !DIExpression()), !dbg !1181
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1173, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #4, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !1174, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_handler_obj) #4, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %next_handler_obj, metadata !1175, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1176, metadata !DIExpression()), !dbg !1188
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1177, metadata !DIExpression()), !dbg !1190
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1191
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1178, metadata !DIExpression()), !dbg !1192
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1193
  store ptr %0, ptr %handler_obj, align 8, !dbg !1194
  %1 = load ptr, ptr %handler_obj, align 8, !dbg !1195
  %tobool = icmp ne ptr %1, null, !dbg !1195
  br i1 %tobool, label %if.end, label %if.then, !dbg !1197

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1198

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1200
  %call = call ptr @acpi_ns_validate_handle(ptr noundef %2) #5, !dbg !1201
  store ptr %call, ptr %node, align 8, !dbg !1202
  %3 = load ptr, ptr %node, align 8, !dbg !1203
  %tobool1 = icmp ne ptr %3, null, !dbg !1203
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1205

if.then2:                                         ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !1206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1206

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %node, align 8, !dbg !1208
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %4, i32 0, i32 2, !dbg !1210
  %5 = load i8, ptr %type, align 1, !dbg !1210
  %conv = zext i8 %5 to i32, !dbg !1208
  %cmp = icmp ne i32 %conv, 6, !dbg !1211
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !1212

land.lhs.true:                                    ; preds = %if.end3
  %6 = load ptr, ptr %node, align 8, !dbg !1213
  %type5 = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 2, !dbg !1214
  %7 = load i8, ptr %type5, align 1, !dbg !1214
  %conv6 = zext i8 %7 to i32, !dbg !1213
  %cmp7 = icmp ne i32 %conv6, 10, !dbg !1215
  br i1 %cmp7, label %land.lhs.true9, label %if.end13, !dbg !1216

land.lhs.true9:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %node, align 8, !dbg !1217
  %9 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1218
  %cmp10 = icmp ne ptr %8, %9, !dbg !1219
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1220

if.then12:                                        ; preds = %land.lhs.true9
  store i32 0, ptr %retval, align 4, !dbg !1221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1221

if.end13:                                         ; preds = %land.lhs.true9, %land.lhs.true, %if.end3
  %10 = load ptr, ptr %node, align 8, !dbg !1223
  %call14 = call ptr @acpi_ns_get_attached_object(ptr noundef %10) #5, !dbg !1224
  store ptr %call14, ptr %obj_desc, align 8, !dbg !1225
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !1226
  %tobool15 = icmp ne ptr %11, null, !dbg !1226
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1228

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !1229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1229

if.end17:                                         ; preds = %if.end13
  %12 = load ptr, ptr %obj_desc, align 8, !dbg !1231
  %type18 = getelementptr inbounds %struct.acpi_object_common, ptr %12, i32 0, i32 2, !dbg !1233
  %13 = load i8, ptr %type18, align 1, !dbg !1233
  %conv19 = zext i8 %13 to i32, !dbg !1231
  %cmp20 = icmp eq i32 %conv19, 6, !dbg !1234
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !1235

if.then22:                                        ; preds = %if.end17
  %14 = load ptr, ptr %handler_obj, align 8, !dbg !1236
  %space_id = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %14, i32 0, i32 5, !dbg !1238
  %15 = load i8, ptr %space_id, align 1, !dbg !1238
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1239
  %handler = getelementptr inbounds %struct.acpi_object_notify_common, ptr %16, i32 0, i32 6, !dbg !1240
  %17 = load ptr, ptr %handler, align 8, !dbg !1240
  %call23 = call ptr @acpi_ev_find_region_handler(i8 noundef zeroext %15, ptr noundef %17) #5, !dbg !1241
  store ptr %call23, ptr %next_handler_obj, align 8, !dbg !1242
  %18 = load ptr, ptr %next_handler_obj, align 8, !dbg !1243
  %tobool24 = icmp ne ptr %18, null, !dbg !1243
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1245

if.then25:                                        ; preds = %if.then22
  store i32 16390, ptr %retval, align 4, !dbg !1246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1246

if.end26:                                         ; preds = %if.then22
  store i32 0, ptr %retval, align 4, !dbg !1248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1248

if.end27:                                         ; preds = %if.end17
  %19 = load ptr, ptr %obj_desc, align 8, !dbg !1249
  %space_id28 = getelementptr inbounds %struct.acpi_object_region, ptr %19, i32 0, i32 5, !dbg !1251
  %20 = load i8, ptr %space_id28, align 1, !dbg !1251
  %conv29 = zext i8 %20 to i32, !dbg !1249
  %21 = load ptr, ptr %handler_obj, align 8, !dbg !1252
  %space_id30 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %21, i32 0, i32 5, !dbg !1253
  %22 = load i8, ptr %space_id30, align 1, !dbg !1253
  %conv31 = zext i8 %22 to i32, !dbg !1252
  %cmp32 = icmp ne i32 %conv29, %conv31, !dbg !1254
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1255

if.then34:                                        ; preds = %if.end27
  store i32 0, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1256

if.end35:                                         ; preds = %if.end27
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !1258
  call void @acpi_ev_detach_region(ptr noundef %23, i8 noundef zeroext 0) #5, !dbg !1259
  %24 = load ptr, ptr %handler_obj, align 8, !dbg !1260
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !1261
  %call36 = call i32 @acpi_ev_attach_region(ptr noundef %24, ptr noundef %25, i8 noundef zeroext 0) #5, !dbg !1262
  store i32 %call36, ptr %status, align 4, !dbg !1263
  %26 = load i32, ptr %status, align 4, !dbg !1264
  store i32 %26, ptr %retval, align 4, !dbg !1265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1265

cleanup:                                          ; preds = %if.end35, %if.then34, %if.end26, %if.then25, %if.then16, %if.then12, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_handler_obj) #4, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #4, !dbg !1266
  %27 = load i32, ptr %retval, align 4, !dbg !1266
  ret i32 %27, !dbg !1266
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1267 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1270 dso_local void @acpi_ev_detach_region(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1274 dso_local i32 @acpi_ev_attach_region(ptr noundef, ptr noundef, i8 noundef zeroext) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!791, !792, !793, !794, !795, !796, !797, !798}
!llvm.ident = !{!799}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_default_address_spaces", scope: !2, file: !3, line: 26, type: !790, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evhandler.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evhandler\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evhandler.ll drivers/acpi/acpica/evhandler.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !783, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evhandler.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df86dc9124ddf330b4a300acbfe6deed")
!4 = !{!5, !12, !13, !7, !14, !17}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !6, line: 814, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !16)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !19, line: 369, size: 576, elements: !20)
!19 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!20 = !{!21, !32, !48, !60, !96, !110, !119, !432, !449, !465, !478, !556, !568, !582, !592, !610, !632, !651, !670, !689, !702, !729, !746, !759, !773, !782}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !18, file: !19, line: 370, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !19, line: 73, size: 128, elements: !23)
!23 = !{!24, !25, !26, !27, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !22, file: !19, line: 74, baseType: !17, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !22, file: !19, line: 74, baseType: !7, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !19, line: 74, baseType: !7, size: 8, offset: 72)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !22, file: !19, line: 74, baseType: !28, size: 16, offset: 80)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !19, line: 74, baseType: !7, size: 8, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !18, file: !19, line: 371, baseType: !33, size: 192)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !19, line: 76, size: 192, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !40, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !33, file: !19, line: 77, baseType: !17, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !19, line: 77, baseType: !7, size: 8, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !19, line: 77, baseType: !7, size: 8, offset: 72)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !33, file: !19, line: 77, baseType: !28, size: 16, offset: 80)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !19, line: 77, baseType: !7, size: 8, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !33, file: !19, line: 77, baseType: !41, size: 24, offset: 104)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 3)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !33, file: !19, line: 78, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !47)
!47 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !18, file: !19, line: 372, baseType: !49, size: 256)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !19, line: 93, size: 256, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !59}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !19, line: 94, baseType: !17, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !19, line: 94, baseType: !7, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !19, line: 94, baseType: !7, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !19, line: 94, baseType: !28, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !19, line: 94, baseType: !7, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !49, file: !19, line: 94, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !49, file: !19, line: 94, baseType: !14, size: 32, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !18, file: !19, line: 373, baseType: !61, size: 384)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !19, line: 97, size: 384, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !70, !71, !72, !73}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !19, line: 98, baseType: !17, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !19, line: 98, baseType: !7, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !19, line: 98, baseType: !7, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !19, line: 98, baseType: !28, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !19, line: 98, baseType: !7, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !61, file: !19, line: 98, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !61, file: !19, line: 98, baseType: !14, size: 32, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !61, file: !19, line: 99, baseType: !14, size: 32, offset: 224)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !61, file: !19, line: 100, baseType: !69, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !61, file: !19, line: 101, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !76, line: 133, size: 384, elements: !77)
!76 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!77 = !{!78, !79, !80, !81, !82, !91, !92, !93, !94}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !75, file: !76, line: 134, baseType: !17, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !76, line: 135, baseType: !7, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !76, line: 136, baseType: !7, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !76, line: 137, baseType: !28, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !76, line: 138, baseType: !83, size: 32, offset: 96)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !84, line: 328, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !83, file: !84, line: 329, baseType: !14, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !83, file: !84, line: 330, baseType: !88, size: 32)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 4)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !76, line: 139, baseType: !74, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !75, file: !76, line: 140, baseType: !74, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !75, file: !76, line: 141, baseType: !74, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !75, file: !76, line: 142, baseType: !95, size: 16, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !28)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !18, file: !19, line: 374, baseType: !97, size: 384)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !19, line: 104, size: 384, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !107, !108, !109}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !19, line: 105, baseType: !17, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !19, line: 105, baseType: !7, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !19, line: 105, baseType: !7, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !19, line: 105, baseType: !28, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !19, line: 105, baseType: !7, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !97, file: !19, line: 105, baseType: !74, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !97, file: !19, line: 106, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !97, file: !19, line: 107, baseType: !69, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !97, file: !19, line: 108, baseType: !14, size: 32, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !97, file: !19, line: 109, baseType: !14, size: 32, offset: 352)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !18, file: !19, line: 375, baseType: !111, size: 192)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !19, line: 118, size: 192, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !19, line: 119, baseType: !17, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !19, line: 119, baseType: !7, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !19, line: 119, baseType: !7, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !19, line: 119, baseType: !28, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !19, line: 119, baseType: !7, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !111, file: !19, line: 119, baseType: !12, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !18, file: !19, line: 376, baseType: !120, size: 448)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !19, line: 144, size: 448, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !429, !430, !431}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !19, line: 145, baseType: !17, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !19, line: 145, baseType: !7, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !19, line: 145, baseType: !7, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !19, line: 145, baseType: !28, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !19, line: 145, baseType: !7, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !120, file: !19, line: 145, baseType: !7, size: 8, offset: 104)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !120, file: !19, line: 146, baseType: !7, size: 8, offset: 112)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !120, file: !19, line: 147, baseType: !7, size: 8, offset: 120)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !120, file: !19, line: 148, baseType: !17, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !19, line: 149, baseType: !17, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !19, line: 150, baseType: !69, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !120, file: !19, line: 154, baseType: !134, size: 64, offset: 320)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !19, line: 151, size: 64, elements: !135)
!135 = !{!136, !428}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !134, file: !19, line: 152, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !76, line: 248, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!13, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !143, line: 37, size: 9024, elements: !144)
!143 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !374, !375, !376, !377, !378, !382, !384, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !411, !412, !413, !414, !415, !416, !417, !418, !420, !426}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !143, line: 38, baseType: !141, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !143, line: 39, baseType: !7, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !142, file: !143, line: 40, baseType: !7, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !142, file: !143, line: 41, baseType: !28, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !142, file: !143, line: 42, baseType: !7, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !142, file: !143, line: 43, baseType: !7, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !142, file: !143, line: 44, baseType: !7, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !143, line: 45, baseType: !95, size: 16, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !142, file: !143, line: 46, baseType: !7, size: 8, offset: 144)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !142, file: !143, line: 47, baseType: !7, size: 8, offset: 152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !142, file: !143, line: 48, baseType: !7, size: 8, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !142, file: !143, line: 49, baseType: !7, size: 8, offset: 168)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !142, file: !143, line: 50, baseType: !7, size: 8, offset: 176)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !142, file: !143, line: 51, baseType: !7, size: 8, offset: 184)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !142, file: !143, line: 52, baseType: !7, size: 8, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !142, file: !143, line: 53, baseType: !7, size: 8, offset: 200)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !142, file: !143, line: 54, baseType: !69, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !142, file: !143, line: 55, baseType: !14, size: 32, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !142, file: !143, line: 56, baseType: !14, size: 32, offset: 352)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !142, file: !143, line: 57, baseType: !14, size: 32, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !142, file: !143, line: 58, baseType: !14, size: 32, offset: 416)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !142, file: !143, line: 60, baseType: !167, size: 640, offset: 448)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !76, line: 909, size: 640, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !255, !256, !372, !373}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !167, file: !76, line: 910, baseType: !69, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !167, file: !76, line: 911, baseType: !69, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !167, file: !76, line: 912, baseType: !69, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !167, file: !76, line: 913, baseType: !69, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !167, file: !76, line: 914, baseType: !69, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !167, file: !76, line: 915, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !76, line: 891, size: 1600, elements: !177)
!177 = !{!178, !198, !214}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !176, file: !76, line: 892, baseType: !179, size: 448)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !76, line: 844, size: 448, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !197}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !76, line: 845, baseType: !175, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !179, file: !76, line: 845, baseType: !7, size: 8, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !76, line: 845, baseType: !7, size: 8, offset: 72)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !179, file: !76, line: 845, baseType: !28, size: 16, offset: 80)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !179, file: !76, line: 845, baseType: !69, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !76, line: 845, baseType: !175, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !179, file: !76, line: 845, baseType: !74, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !179, file: !76, line: 845, baseType: !189, size: 64, offset: 320)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !76, line: 732, size: 64, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !189, file: !76, line: 733, baseType: !45, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !189, file: !76, line: 734, baseType: !14, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !189, file: !76, line: 735, baseType: !57, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !189, file: !76, line: 736, baseType: !69, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !76, line: 737, baseType: !57, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !189, file: !76, line: 738, baseType: !175, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !179, file: !76, line: 845, baseType: !7, size: 8, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !176, file: !76, line: 893, baseType: !199, size: 640)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !76, line: 851, size: 640, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !76, line: 852, baseType: !175, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !76, line: 852, baseType: !7, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !76, line: 852, baseType: !7, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !76, line: 852, baseType: !28, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !76, line: 852, baseType: !69, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !76, line: 852, baseType: !175, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !76, line: 852, baseType: !74, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !76, line: 852, baseType: !189, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !76, line: 852, baseType: !7, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !199, file: !76, line: 852, baseType: !57, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !199, file: !76, line: 853, baseType: !69, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !199, file: !76, line: 854, baseType: !14, size: 32, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !76, line: 855, baseType: !14, size: 32, offset: 608)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !176, file: !76, line: 894, baseType: !215, size: 1600)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !76, line: 862, size: 1600, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !76, line: 863, baseType: !175, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !76, line: 863, baseType: !7, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !76, line: 863, baseType: !7, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !215, file: !76, line: 863, baseType: !28, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !215, file: !76, line: 863, baseType: !69, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !76, line: 863, baseType: !175, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !76, line: 863, baseType: !74, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !76, line: 863, baseType: !189, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !215, file: !76, line: 863, baseType: !7, size: 8, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !215, file: !76, line: 863, baseType: !175, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !215, file: !76, line: 864, baseType: !175, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !215, file: !76, line: 865, baseType: !57, size: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !215, file: !76, line: 866, baseType: !7, size: 8, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !215, file: !76, line: 867, baseType: !57, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !215, file: !76, line: 868, baseType: !57, size: 64, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !215, file: !76, line: 869, baseType: !57, size: 64, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !215, file: !76, line: 870, baseType: !88, size: 32, offset: 896)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !215, file: !76, line: 871, baseType: !14, size: 32, offset: 928)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !215, file: !76, line: 872, baseType: !14, size: 32, offset: 960)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !215, file: !76, line: 873, baseType: !14, size: 32, offset: 992)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !215, file: !76, line: 874, baseType: !14, size: 32, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !215, file: !76, line: 875, baseType: !14, size: 32, offset: 1056)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !215, file: !76, line: 876, baseType: !14, size: 32, offset: 1088)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !215, file: !76, line: 877, baseType: !14, size: 32, offset: 1120)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !215, file: !76, line: 878, baseType: !14, size: 32, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !215, file: !76, line: 879, baseType: !14, size: 32, offset: 1184)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !215, file: !76, line: 880, baseType: !14, size: 32, offset: 1216)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !215, file: !76, line: 881, baseType: !14, size: 32, offset: 1248)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !215, file: !76, line: 882, baseType: !14, size: 32, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !215, file: !76, line: 883, baseType: !14, size: 32, offset: 1312)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !215, file: !76, line: 884, baseType: !28, size: 16, offset: 1344)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !215, file: !76, line: 885, baseType: !7, size: 8, offset: 1360)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !215, file: !76, line: 886, baseType: !7, size: 8, offset: 1368)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !215, file: !76, line: 887, baseType: !7, size: 8, offset: 1376)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !215, file: !76, line: 888, baseType: !252, size: 160, offset: 1384)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 20)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !167, file: !76, line: 916, baseType: !74, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !167, file: !76, line: 917, baseType: !257, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !76, line: 679, size: 640, elements: !259)
!259 = !{!260, !268, !281, !290, !299, !312, !326, !338, !350}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !258, file: !76, line: 680, baseType: !261, size: 128)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !76, line: 575, size: 128, elements: !262)
!262 = !{!263, !264, !265, !266, !267}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !76, line: 576, baseType: !12, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !76, line: 576, baseType: !7, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !76, line: 576, baseType: !7, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !76, line: 576, baseType: !28, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !261, file: !76, line: 576, baseType: !28, size: 16, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !258, file: !76, line: 681, baseType: !269, size: 384)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !76, line: 604, size: 384, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !76, line: 605, baseType: !12, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !76, line: 605, baseType: !7, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !76, line: 605, baseType: !7, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !76, line: 605, baseType: !28, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !76, line: 605, baseType: !28, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !269, file: !76, line: 606, baseType: !28, size: 16, offset: 112)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !269, file: !76, line: 607, baseType: !175, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !269, file: !76, line: 608, baseType: !69, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !269, file: !76, line: 609, baseType: !69, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !269, file: !76, line: 610, baseType: !45, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !258, file: !76, line: 682, baseType: !282, size: 192)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !76, line: 582, size: 192, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !76, line: 583, baseType: !12, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !282, file: !76, line: 583, baseType: !7, size: 8, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !76, line: 583, baseType: !7, size: 8, offset: 72)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !282, file: !76, line: 583, baseType: !28, size: 16, offset: 80)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !282, file: !76, line: 583, baseType: !28, size: 16, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !282, file: !76, line: 584, baseType: !17, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !258, file: !76, line: 683, baseType: !291, size: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !76, line: 616, size: 192, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !76, line: 617, baseType: !12, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !76, line: 617, baseType: !7, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !76, line: 617, baseType: !7, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !76, line: 617, baseType: !28, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !76, line: 617, baseType: !28, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !291, file: !76, line: 618, baseType: !74, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !258, file: !76, line: 684, baseType: !300, size: 448)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !76, line: 621, size: 448, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !76, line: 622, baseType: !12, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !76, line: 622, baseType: !7, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !76, line: 622, baseType: !7, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !76, line: 622, baseType: !28, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !76, line: 622, baseType: !28, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !300, file: !76, line: 623, baseType: !14, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !300, file: !76, line: 624, baseType: !175, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !300, file: !76, line: 625, baseType: !69, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !300, file: !76, line: 626, baseType: !69, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !300, file: !76, line: 627, baseType: !14, size: 32, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !258, file: !76, line: 685, baseType: !313, size: 512)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !76, line: 590, size: 512, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !76, line: 591, baseType: !12, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !313, file: !76, line: 591, baseType: !7, size: 8, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !76, line: 591, baseType: !7, size: 8, offset: 72)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !76, line: 591, baseType: !28, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !76, line: 591, baseType: !28, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !313, file: !76, line: 592, baseType: !14, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !313, file: !76, line: 593, baseType: !17, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !313, file: !76, line: 594, baseType: !17, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !313, file: !76, line: 595, baseType: !141, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !313, file: !76, line: 596, baseType: !12, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !313, file: !76, line: 597, baseType: !14, size: 32, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !258, file: !76, line: 686, baseType: !327, size: 320)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !76, line: 634, size: 320, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !76, line: 635, baseType: !12, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !76, line: 635, baseType: !7, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !76, line: 635, baseType: !7, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !76, line: 635, baseType: !28, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !76, line: 635, baseType: !28, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !327, file: !76, line: 636, baseType: !7, size: 8, offset: 112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !327, file: !76, line: 637, baseType: !141, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !327, file: !76, line: 638, baseType: !17, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !327, file: !76, line: 639, baseType: !45, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !258, file: !76, line: 687, baseType: !339, size: 640)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !76, line: 646, size: 640, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !76, line: 647, baseType: !12, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !76, line: 647, baseType: !7, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !76, line: 647, baseType: !7, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !76, line: 647, baseType: !28, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !76, line: 647, baseType: !28, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !339, file: !76, line: 648, baseType: !347, size: 512, offset: 128)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 8)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !258, file: !76, line: 688, baseType: !351, size: 320)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !76, line: 669, size: 320, elements: !352)
!352 = !{!353, !354, !355, !356, !357, !358, !359, !360, !361}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !76, line: 670, baseType: !12, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !351, file: !76, line: 670, baseType: !7, size: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !76, line: 670, baseType: !7, size: 8, offset: 72)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !76, line: 670, baseType: !28, size: 16, offset: 80)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !76, line: 670, baseType: !28, size: 16, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !351, file: !76, line: 671, baseType: !7, size: 8, offset: 112)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !351, file: !76, line: 672, baseType: !74, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !351, file: !76, line: 673, baseType: !17, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !351, file: !76, line: 674, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !76, line: 660, size: 128, elements: !364)
!364 = !{!365, !371}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !363, file: !76, line: 661, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370, !14, !12}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !12)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !363, file: !76, line: 662, baseType: !12, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !167, file: !76, line: 918, baseType: !175, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !167, file: !76, line: 919, baseType: !14, size: 32, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !142, file: !143, line: 61, baseType: !14, size: 32, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !142, file: !143, line: 62, baseType: !14, size: 32, offset: 1120)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !142, file: !143, line: 63, baseType: !28, size: 16, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !142, file: !143, line: 64, baseType: !7, size: 8, offset: 1168)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !142, file: !143, line: 66, baseType: !379, size: 2688, offset: 1216)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 2688, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 7)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !142, file: !143, line: 67, baseType: !383, size: 3072, offset: 3904)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 3072, elements: !348)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !142, file: !143, line: 68, baseType: !385, size: 576, offset: 6976)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 576, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 9)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !142, file: !143, line: 69, baseType: !106, size: 64, offset: 7552)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !142, file: !143, line: 71, baseType: !69, size: 64, offset: 7616)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !142, file: !143, line: 72, baseType: !106, size: 64, offset: 7680)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !142, file: !143, line: 73, baseType: !257, size: 64, offset: 7744)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !142, file: !143, line: 74, baseType: !74, size: 64, offset: 7808)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !142, file: !143, line: 75, baseType: !17, size: 64, offset: 7872)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !142, file: !143, line: 76, baseType: !74, size: 64, offset: 7936)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !142, file: !143, line: 77, baseType: !175, size: 64, offset: 8000)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !142, file: !143, line: 78, baseType: !17, size: 64, offset: 8064)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !142, file: !143, line: 79, baseType: !74, size: 64, offset: 8128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !142, file: !143, line: 80, baseType: !57, size: 64, offset: 8192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !142, file: !143, line: 81, baseType: !175, size: 64, offset: 8256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !142, file: !143, line: 82, baseType: !401, size: 64, offset: 8320)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !76, line: 718, size: 128, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !403, file: !76, line: 722, baseType: !14, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !403, file: !76, line: 723, baseType: !14, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !76, line: 724, baseType: !28, size: 16, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !403, file: !76, line: 725, baseType: !7, size: 8, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !403, file: !76, line: 726, baseType: !7, size: 8, offset: 88)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !76, line: 727, baseType: !7, size: 8, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !142, file: !143, line: 83, baseType: !175, size: 64, offset: 8384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !142, file: !143, line: 84, baseType: !17, size: 64, offset: 8448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !142, file: !143, line: 85, baseType: !257, size: 64, offset: 8512)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !142, file: !143, line: 86, baseType: !17, size: 64, offset: 8576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !142, file: !143, line: 87, baseType: !257, size: 64, offset: 8640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !142, file: !143, line: 88, baseType: !175, size: 64, offset: 8704)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !142, file: !143, line: 89, baseType: !175, size: 64, offset: 8768)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !142, file: !143, line: 90, baseType: !419, size: 64, offset: 8832)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !142, file: !143, line: 91, baseType: !421, size: 64, offset: 8896)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !76, line: 652, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!13, !141, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !142, file: !143, line: 92, baseType: !427, size: 64, offset: 8960)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !76, line: 656, baseType: !138)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !134, file: !19, line: 153, baseType: !17, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !19, line: 156, baseType: !14, size: 32, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !120, file: !19, line: 157, baseType: !95, size: 16, offset: 416)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !120, file: !19, line: 158, baseType: !7, size: 8, offset: 432)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !18, file: !19, line: 377, baseType: !433, size: 576)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !19, line: 122, size: 576, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !433, file: !19, line: 123, baseType: !17, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !433, file: !19, line: 123, baseType: !7, size: 8, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !19, line: 123, baseType: !7, size: 8, offset: 72)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !433, file: !19, line: 123, baseType: !28, size: 16, offset: 80)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !19, line: 123, baseType: !7, size: 8, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !433, file: !19, line: 123, baseType: !7, size: 8, offset: 104)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !433, file: !19, line: 124, baseType: !28, size: 16, offset: 112)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !433, file: !19, line: 125, baseType: !12, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !433, file: !19, line: 126, baseType: !45, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !433, file: !19, line: 127, baseType: !419, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !433, file: !19, line: 128, baseType: !17, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !19, line: 129, baseType: !17, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !433, file: !19, line: 130, baseType: !74, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !433, file: !19, line: 131, baseType: !7, size: 8, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !18, file: !19, line: 378, baseType: !450, size: 512)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !19, line: 134, size: 512, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !463, !464}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !450, file: !19, line: 135, baseType: !17, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !450, file: !19, line: 135, baseType: !7, size: 8, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !19, line: 135, baseType: !7, size: 8, offset: 72)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !450, file: !19, line: 135, baseType: !28, size: 16, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !19, line: 135, baseType: !7, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !450, file: !19, line: 135, baseType: !7, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !19, line: 136, baseType: !74, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !450, file: !19, line: 137, baseType: !17, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !19, line: 138, baseType: !17, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !450, file: !19, line: 139, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !45)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !450, file: !19, line: 140, baseType: !14, size: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !450, file: !19, line: 141, baseType: !12, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !18, file: !19, line: 379, baseType: !466, size: 320)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !19, line: 185, size: 320, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !477}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !19, line: 186, baseType: !17, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !19, line: 186, baseType: !7, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !19, line: 186, baseType: !7, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !19, line: 186, baseType: !28, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !19, line: 186, baseType: !7, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !466, file: !19, line: 186, baseType: !474, size: 128, offset: 128)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !19, line: 186, baseType: !17, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !18, file: !19, line: 380, baseType: !479, size: 384)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !19, line: 188, size: 384, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !479, file: !19, line: 189, baseType: !17, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !479, file: !19, line: 189, baseType: !7, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !19, line: 189, baseType: !7, size: 8, offset: 72)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !479, file: !19, line: 189, baseType: !28, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !19, line: 189, baseType: !7, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !479, file: !19, line: 190, baseType: !474, size: 128, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !479, file: !19, line: 190, baseType: !17, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !479, file: !19, line: 190, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !76, line: 480, size: 576, elements: !491)
!491 = !{!492, !493, !494, !495, !503, !518, !550, !551, !552, !553, !554, !555}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !76, line: 481, baseType: !74, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !490, file: !76, line: 482, baseType: !489, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !76, line: 483, baseType: !489, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !490, file: !76, line: 484, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !76, line: 497, size: 256, elements: !498)
!498 = !{!499, !500, !501, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !497, file: !76, line: 498, baseType: !496, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !76, line: 499, baseType: !496, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !497, file: !76, line: 500, baseType: !489, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !497, file: !76, line: 501, baseType: !14, size: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !490, file: !76, line: 485, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !76, line: 466, size: 320, elements: !506)
!506 = !{!507, !512, !513, !514, !515, !516, !517}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !505, file: !76, line: 467, baseType: !508, size: 128)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !76, line: 459, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !76, line: 460, baseType: !7, size: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !76, line: 461, baseType: !45, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !505, file: !76, line: 468, baseType: !508, size: 128, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !505, file: !76, line: 469, baseType: !28, size: 16, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !505, file: !76, line: 470, baseType: !7, size: 8, offset: 272)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !505, file: !76, line: 471, baseType: !7, size: 8, offset: 280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !505, file: !76, line: 472, baseType: !7, size: 8, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !505, file: !76, line: 473, baseType: !7, size: 8, offset: 296)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !490, file: !76, line: 486, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !76, line: 448, size: 192, elements: !521)
!521 = !{!522, !545, !546, !547, !548, !549}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !520, file: !76, line: 449, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !76, line: 438, size: 64, elements: !524)
!524 = !{!525, !526, !539}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !523, file: !76, line: 439, baseType: !74, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !523, file: !76, line: 440, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !76, line: 419, size: 256, elements: !529)
!529 = !{!530, !535, !536, !537, !538}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !76, line: 420, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!14, !370, !14, !12}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !528, file: !76, line: 421, baseType: !12, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !528, file: !76, line: 422, baseType: !74, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !528, file: !76, line: 423, baseType: !7, size: 8, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !528, file: !76, line: 424, baseType: !7, size: 8, offset: 200)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !523, file: !76, line: 441, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !76, line: 429, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !541, file: !76, line: 430, baseType: !74, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !76, line: 431, baseType: !540, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !520, file: !76, line: 450, baseType: !504, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !76, line: 451, baseType: !7, size: 8, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !520, file: !76, line: 452, baseType: !7, size: 8, offset: 136)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !520, file: !76, line: 453, baseType: !7, size: 8, offset: 144)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !520, file: !76, line: 454, baseType: !7, size: 8, offset: 152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !490, file: !76, line: 487, baseType: !45, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !490, file: !76, line: 488, baseType: !14, size: 32, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !490, file: !76, line: 489, baseType: !28, size: 16, offset: 480)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !490, file: !76, line: 490, baseType: !28, size: 16, offset: 496)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !490, file: !76, line: 491, baseType: !7, size: 8, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !490, file: !76, line: 492, baseType: !7, size: 8, offset: 520)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !18, file: !19, line: 381, baseType: !557, size: 384)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !19, line: 193, size: 384, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !557, file: !19, line: 194, baseType: !17, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !19, line: 194, baseType: !7, size: 8, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !19, line: 194, baseType: !7, size: 8, offset: 72)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !557, file: !19, line: 194, baseType: !28, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !19, line: 194, baseType: !7, size: 8, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !19, line: 194, baseType: !474, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !19, line: 194, baseType: !17, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !557, file: !19, line: 194, baseType: !14, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !557, file: !19, line: 195, baseType: !14, size: 32, offset: 352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !18, file: !19, line: 382, baseType: !569, size: 384)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !19, line: 198, size: 384, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !19, line: 199, baseType: !17, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !19, line: 199, baseType: !7, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !19, line: 199, baseType: !7, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !19, line: 199, baseType: !28, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !19, line: 199, baseType: !7, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !569, file: !19, line: 201, baseType: !7, size: 8, offset: 104)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !569, file: !19, line: 202, baseType: !7, size: 8, offset: 112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !19, line: 203, baseType: !474, size: 128, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !19, line: 203, baseType: !17, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !569, file: !19, line: 203, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !45)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !18, file: !19, line: 383, baseType: !583, size: 320)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !19, line: 206, size: 320, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !583, file: !19, line: 207, baseType: !17, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !19, line: 207, baseType: !7, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !19, line: 207, baseType: !7, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !583, file: !19, line: 207, baseType: !28, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !19, line: 207, baseType: !7, size: 8, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !583, file: !19, line: 207, baseType: !474, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !583, file: !19, line: 207, baseType: !17, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !18, file: !19, line: 384, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !19, line: 234, size: 384, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !19, line: 235, baseType: !17, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !19, line: 235, baseType: !7, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !19, line: 235, baseType: !7, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !19, line: 235, baseType: !28, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !19, line: 235, baseType: !7, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !593, file: !19, line: 235, baseType: !7, size: 8, offset: 104)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !593, file: !19, line: 235, baseType: !7, size: 8, offset: 112)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !593, file: !19, line: 235, baseType: !7, size: 8, offset: 120)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !593, file: !19, line: 235, baseType: !74, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !593, file: !19, line: 235, baseType: !14, size: 32, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !593, file: !19, line: 235, baseType: !14, size: 32, offset: 224)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !593, file: !19, line: 235, baseType: !14, size: 32, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !593, file: !19, line: 235, baseType: !7, size: 8, offset: 288)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !593, file: !19, line: 235, baseType: !7, size: 8, offset: 296)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !593, file: !19, line: 235, baseType: !17, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !18, file: !19, line: 385, baseType: !611, size: 576)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !19, line: 238, size: 576, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !19, line: 239, baseType: !17, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !19, line: 239, baseType: !7, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !19, line: 239, baseType: !7, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !19, line: 239, baseType: !28, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !19, line: 239, baseType: !7, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !611, file: !19, line: 239, baseType: !7, size: 8, offset: 104)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !611, file: !19, line: 239, baseType: !7, size: 8, offset: 112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !611, file: !19, line: 239, baseType: !7, size: 8, offset: 120)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !19, line: 239, baseType: !74, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !611, file: !19, line: 239, baseType: !14, size: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !611, file: !19, line: 239, baseType: !14, size: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !611, file: !19, line: 239, baseType: !14, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !611, file: !19, line: 239, baseType: !7, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !611, file: !19, line: 239, baseType: !7, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !611, file: !19, line: 239, baseType: !28, size: 16, offset: 304)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !611, file: !19, line: 240, baseType: !17, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !611, file: !19, line: 241, baseType: !69, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !611, file: !19, line: 242, baseType: !28, size: 16, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !611, file: !19, line: 243, baseType: !69, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !18, file: !19, line: 386, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !19, line: 263, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !19, line: 264, baseType: !17, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !19, line: 264, baseType: !28, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 120)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !19, line: 264, baseType: !74, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !633, file: !19, line: 264, baseType: !14, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !633, file: !19, line: 264, baseType: !14, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !19, line: 264, baseType: !14, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !633, file: !19, line: 264, baseType: !7, size: 8, offset: 304)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !633, file: !19, line: 265, baseType: !17, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !18, file: !19, line: 387, baseType: !652, size: 448)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !19, line: 246, size: 448, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !19, line: 247, baseType: !17, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !19, line: 247, baseType: !7, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !19, line: 247, baseType: !7, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !19, line: 247, baseType: !28, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !19, line: 247, baseType: !7, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !19, line: 247, baseType: !7, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !19, line: 247, baseType: !7, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !19, line: 247, baseType: !7, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !19, line: 247, baseType: !74, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !19, line: 247, baseType: !14, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !19, line: 247, baseType: !14, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !19, line: 247, baseType: !14, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !19, line: 247, baseType: !7, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !19, line: 247, baseType: !7, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !652, file: !19, line: 247, baseType: !17, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !652, file: !19, line: 248, baseType: !17, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !18, file: !19, line: 388, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !19, line: 251, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !19, line: 252, baseType: !17, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !19, line: 252, baseType: !7, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !19, line: 252, baseType: !7, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !19, line: 252, baseType: !28, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !19, line: 252, baseType: !7, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !19, line: 252, baseType: !7, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !19, line: 252, baseType: !7, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !19, line: 252, baseType: !7, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !19, line: 252, baseType: !74, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !19, line: 252, baseType: !14, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !19, line: 252, baseType: !14, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !19, line: 252, baseType: !14, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !19, line: 252, baseType: !7, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !19, line: 252, baseType: !7, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !671, file: !19, line: 257, baseType: !17, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !671, file: !19, line: 258, baseType: !17, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !18, file: !19, line: 389, baseType: !690, size: 512)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !19, line: 274, size: 512, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !19, line: 275, baseType: !17, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !19, line: 275, baseType: !7, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !19, line: 275, baseType: !7, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !19, line: 275, baseType: !28, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !19, line: 275, baseType: !7, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !19, line: 275, baseType: !74, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !690, file: !19, line: 276, baseType: !14, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !690, file: !19, line: 277, baseType: !366, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !690, file: !19, line: 278, baseType: !12, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !19, line: 279, baseType: !474, size: 128, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !18, file: !19, line: 390, baseType: !703, size: 576)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !19, line: 282, size: 576, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !718, !719, !720, !721, !727, !728}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !703, file: !19, line: 283, baseType: !17, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !703, file: !19, line: 283, baseType: !7, size: 8, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !19, line: 283, baseType: !7, size: 8, offset: 72)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !703, file: !19, line: 283, baseType: !28, size: 16, offset: 80)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !19, line: 283, baseType: !7, size: 8, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !703, file: !19, line: 283, baseType: !7, size: 8, offset: 104)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !703, file: !19, line: 284, baseType: !7, size: 8, offset: 112)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !703, file: !19, line: 285, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!13, !14, !462, !14, !717, !12, !12}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !19, line: 286, baseType: !74, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !703, file: !19, line: 287, baseType: !12, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !703, file: !19, line: 288, baseType: !12, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !703, file: !19, line: 289, baseType: !722, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!13, !370, !14, !12, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !703, file: !19, line: 290, baseType: !17, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !19, line: 291, baseType: !17, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !18, file: !19, line: 391, baseType: !730, size: 512)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !19, line: 309, size: 512, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !19, line: 310, baseType: !17, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !19, line: 310, baseType: !7, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !19, line: 310, baseType: !7, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !19, line: 310, baseType: !28, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !19, line: 310, baseType: !7, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !730, file: !19, line: 310, baseType: !7, size: 8, offset: 104)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !730, file: !19, line: 311, baseType: !7, size: 8, offset: 112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !730, file: !19, line: 312, baseType: !7, size: 8, offset: 120)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !730, file: !19, line: 313, baseType: !12, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !19, line: 314, baseType: !74, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !730, file: !19, line: 315, baseType: !106, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !730, file: !19, line: 316, baseType: !69, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !730, file: !19, line: 317, baseType: !69, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !730, file: !19, line: 318, baseType: !14, size: 32, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !18, file: !19, line: 392, baseType: !747, size: 448)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !19, line: 342, size: 448, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !19, line: 343, baseType: !17, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !19, line: 343, baseType: !7, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !19, line: 343, baseType: !7, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !19, line: 343, baseType: !28, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !19, line: 343, baseType: !7, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !747, file: !19, line: 343, baseType: !74, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !747, file: !19, line: 344, baseType: !74, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !747, file: !19, line: 345, baseType: !12, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !747, file: !19, line: 346, baseType: !69, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !747, file: !19, line: 347, baseType: !14, size: 32, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !19, line: 393, baseType: !760, size: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !19, line: 352, size: 256, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !19, line: 353, baseType: !17, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !19, line: 353, baseType: !7, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !19, line: 353, baseType: !7, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !19, line: 353, baseType: !28, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !19, line: 353, baseType: !7, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !760, file: !19, line: 353, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !370, !12}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !760, file: !19, line: 354, baseType: !12, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !18, file: !19, line: 394, baseType: !774, size: 192)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !19, line: 359, size: 192, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !19, line: 360, baseType: !17, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !19, line: 360, baseType: !7, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !19, line: 360, baseType: !7, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !19, line: 360, baseType: !28, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !19, line: 360, baseType: !7, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !774, file: !19, line: 360, baseType: !17, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !19, line: 401, baseType: !75, size: 384)
!783 = !{!0, !784}
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !786, isLocal: true, isDefinition: true)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 80, elements: !788)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!788 = !{!789}
!789 = !DISubrange(count: 10)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !89)
!791 = !{i32 7, !"Dwarf Version", i32 5}
!792 = !{i32 2, !"Debug Info Version", i32 3}
!793 = !{i32 1, !"wchar_size", i32 2}
!794 = !{i32 8, !"cf-protection-branch", i32 1}
!795 = !{i32 4, !"function_return_thunk_extern", i32 1}
!796 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!797 = !{i32 1, !"Code Model", i32 2}
!798 = !{i32 1, !"override-stack-alignment", i32 8}
!799 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!800 = distinct !DISubprogram(name: "acpi_ev_install_region_handlers", scope: !3, file: !3, line: 45, type: !801, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!13}
!803 = !{!804, !805, !806}
!804 = !DILocalVariable(name: "status", scope: !800, file: !3, line: 47, type: !13)
!805 = !DILocalVariable(name: "i", scope: !800, file: !3, line: 48, type: !14)
!806 = !DILabel(scope: !800, name: "unlock_and_exit", file: !3, line: 98)
!807 = !DILocation(line: 47, column: 2, scope: !800)
!808 = !DILocation(line: 47, column: 14, scope: !800)
!809 = !DILocation(line: 48, column: 2, scope: !800)
!810 = !DILocation(line: 48, column: 6, scope: !800)
!811 = !DILocation(line: 52, column: 11, scope: !800)
!812 = !DILocation(line: 52, column: 9, scope: !800)
!813 = !DILocation(line: 53, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !800, file: !3, line: 53, column: 6)
!815 = !DILocation(line: 53, column: 6, scope: !800)
!816 = !DILocation(line: 54, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !3, line: 53, column: 28)
!818 = !DILocation(line: 76, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !800, file: !3, line: 76, column: 2)
!820 = !DILocation(line: 76, column: 7, scope: !819)
!821 = !DILocation(line: 76, column: 14, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !3, line: 76, column: 2)
!823 = !DILocation(line: 76, column: 16, scope: !822)
!824 = !DILocation(line: 76, column: 2, scope: !819)
!825 = !DILocation(line: 77, column: 42, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !3, line: 76, column: 48)
!827 = !DILocation(line: 79, column: 15, scope: !826)
!828 = !DILocation(line: 78, column: 14, scope: !826)
!829 = !DILocation(line: 77, column: 12, scope: !826)
!830 = !DILocation(line: 77, column: 10, scope: !826)
!831 = !DILocation(line: 82, column: 11, scope: !826)
!832 = !DILocation(line: 82, column: 3, scope: !826)
!833 = !DILocation(line: 89, column: 11, scope: !834)
!834 = distinct !DILexicalBlock(scope: !826, file: !3, line: 82, column: 19)
!835 = !DILocation(line: 90, column: 4, scope: !834)
!836 = !DILocation(line: 94, column: 4, scope: !834)
!837 = !DILocation(line: 96, column: 2, scope: !826)
!838 = !DILocation(line: 76, column: 44, scope: !822)
!839 = !DILocation(line: 76, column: 2, scope: !822)
!840 = distinct !{!840, !824, !841, !842, !843}
!841 = !DILocation(line: 96, column: 2, scope: !819)
!842 = !{!"llvm.loop.mustprogress"}
!843 = !{!"llvm.loop.unroll.disable"}
!844 = !DILocation(line: 98, column: 1, scope: !800)
!845 = !DILocation(line: 99, column: 8, scope: !800)
!846 = !DILocation(line: 100, column: 2, scope: !800)
!847 = !DILocation(line: 101, column: 1, scope: !800)
!848 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !849, file: !849, line: 646, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!850 = !DISubroutineType(types: !851)
!851 = !{!13, !852}
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !76, line: 17, baseType: !14)
!853 = distinct !DISubprogram(name: "acpi_ev_install_space_handler", scope: !3, file: !3, line: 328, type: !854, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{!13, !74, !5, !713, !722, !12}
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !865, !867, !868}
!857 = !DILocalVariable(name: "node", arg: 1, scope: !853, file: !3, line: 328, type: !74)
!858 = !DILocalVariable(name: "space_id", arg: 2, scope: !853, file: !3, line: 329, type: !5)
!859 = !DILocalVariable(name: "handler", arg: 3, scope: !853, file: !3, line: 330, type: !713)
!860 = !DILocalVariable(name: "setup", arg: 4, scope: !853, file: !3, line: 331, type: !722)
!861 = !DILocalVariable(name: "context", arg: 5, scope: !853, file: !3, line: 331, type: !12)
!862 = !DILocalVariable(name: "obj_desc", scope: !853, file: !3, line: 333, type: !17)
!863 = !DILocalVariable(name: "handler_obj", scope: !853, file: !3, line: 334, type: !17)
!864 = !DILocalVariable(name: "status", scope: !853, file: !3, line: 335, type: !13)
!865 = !DILocalVariable(name: "type", scope: !853, file: !3, line: 336, type: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !14)
!867 = !DILocalVariable(name: "flags", scope: !853, file: !3, line: 337, type: !7)
!868 = !DILabel(scope: !853, name: "unlock_and_exit", file: !3, line: 532)
!869 = !DILocation(line: 328, column: 59, scope: !853)
!870 = !DILocation(line: 329, column: 30, scope: !853)
!871 = !DILocation(line: 330, column: 33, scope: !853)
!872 = !DILocation(line: 331, column: 31, scope: !853)
!873 = !DILocation(line: 331, column: 44, scope: !853)
!874 = !DILocation(line: 333, column: 2, scope: !853)
!875 = !DILocation(line: 333, column: 29, scope: !853)
!876 = !DILocation(line: 334, column: 2, scope: !853)
!877 = !DILocation(line: 334, column: 29, scope: !853)
!878 = !DILocation(line: 335, column: 2, scope: !853)
!879 = !DILocation(line: 335, column: 14, scope: !853)
!880 = !DILocation(line: 336, column: 2, scope: !853)
!881 = !DILocation(line: 336, column: 19, scope: !853)
!882 = !DILocation(line: 337, column: 2, scope: !853)
!883 = !DILocation(line: 337, column: 5, scope: !853)
!884 = !DILocation(line: 345, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !853, file: !3, line: 345, column: 6)
!886 = !DILocation(line: 345, column: 13, scope: !885)
!887 = !DILocation(line: 345, column: 18, scope: !885)
!888 = !DILocation(line: 345, column: 39, scope: !885)
!889 = !DILocation(line: 346, column: 7, scope: !885)
!890 = !DILocation(line: 346, column: 13, scope: !885)
!891 = !DILocation(line: 346, column: 18, scope: !885)
!892 = !DILocation(line: 346, column: 42, scope: !885)
!893 = !DILocation(line: 347, column: 7, scope: !885)
!894 = !DILocation(line: 347, column: 13, scope: !885)
!895 = !DILocation(line: 347, column: 18, scope: !885)
!896 = !DILocation(line: 347, column: 40, scope: !885)
!897 = !DILocation(line: 347, column: 44, scope: !885)
!898 = !DILocation(line: 347, column: 52, scope: !885)
!899 = !DILocation(line: 347, column: 49, scope: !885)
!900 = !DILocation(line: 345, column: 6, scope: !853)
!901 = !DILocation(line: 348, column: 10, scope: !902)
!902 = distinct !DILexicalBlock(scope: !885, file: !3, line: 347, column: 73)
!903 = !DILocation(line: 349, column: 3, scope: !902)
!904 = !DILocation(line: 352, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !853, file: !3, line: 352, column: 6)
!906 = !DILocation(line: 352, column: 14, scope: !905)
!907 = !DILocation(line: 352, column: 6, scope: !853)
!908 = !DILocation(line: 353, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !3, line: 352, column: 39)
!910 = !DILocation(line: 355, column: 11, scope: !909)
!911 = !DILocation(line: 355, column: 3, scope: !909)
!912 = !DILocation(line: 358, column: 12, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !3, line: 355, column: 21)
!914 = !DILocation(line: 359, column: 10, scope: !913)
!915 = !DILocation(line: 360, column: 4, scope: !913)
!916 = !DILocation(line: 364, column: 12, scope: !913)
!917 = !DILocation(line: 365, column: 10, scope: !913)
!918 = !DILocation(line: 366, column: 4, scope: !913)
!919 = !DILocation(line: 370, column: 12, scope: !913)
!920 = !DILocation(line: 371, column: 10, scope: !913)
!921 = !DILocation(line: 372, column: 4, scope: !913)
!922 = !DILocation(line: 376, column: 12, scope: !913)
!923 = !DILocation(line: 377, column: 10, scope: !913)
!924 = !DILocation(line: 378, column: 4, scope: !913)
!925 = !DILocation(line: 382, column: 12, scope: !913)
!926 = !DILocation(line: 383, column: 10, scope: !913)
!927 = !DILocation(line: 384, column: 4, scope: !913)
!928 = !DILocation(line: 388, column: 12, scope: !913)
!929 = !DILocation(line: 389, column: 10, scope: !913)
!930 = !DILocation(line: 390, column: 4, scope: !913)
!931 = !DILocation(line: 394, column: 11, scope: !913)
!932 = !DILocation(line: 395, column: 4, scope: !913)
!933 = !DILocation(line: 397, column: 2, scope: !909)
!934 = !DILocation(line: 401, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !853, file: !3, line: 401, column: 6)
!936 = !DILocation(line: 401, column: 6, scope: !853)
!937 = !DILocation(line: 402, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 401, column: 14)
!939 = !DILocation(line: 403, column: 2, scope: !938)
!940 = !DILocation(line: 407, column: 41, scope: !853)
!941 = !DILocation(line: 407, column: 13, scope: !853)
!942 = !DILocation(line: 407, column: 11, scope: !853)
!943 = !DILocation(line: 408, column: 6, scope: !944)
!944 = distinct !DILexicalBlock(scope: !853, file: !3, line: 408, column: 6)
!945 = !DILocation(line: 408, column: 6, scope: !853)
!946 = !DILocation(line: 413, column: 45, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 408, column: 16)
!948 = !DILocation(line: 414, column: 10, scope: !947)
!949 = !DILocation(line: 416, column: 10, scope: !947)
!950 = !DILocation(line: 413, column: 17, scope: !947)
!951 = !DILocation(line: 413, column: 15, scope: !947)
!952 = !DILocation(line: 418, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !947, file: !3, line: 418, column: 7)
!954 = !DILocation(line: 418, column: 7, scope: !947)
!955 = !DILocation(line: 419, column: 8, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 419, column: 8)
!957 = distinct !DILexicalBlock(scope: !953, file: !3, line: 418, column: 20)
!958 = !DILocation(line: 419, column: 35, scope: !956)
!959 = !DILocation(line: 419, column: 46, scope: !956)
!960 = !DILocation(line: 419, column: 43, scope: !956)
!961 = !DILocation(line: 419, column: 8, scope: !957)
!962 = !DILocation(line: 425, column: 12, scope: !963)
!963 = distinct !DILexicalBlock(scope: !956, file: !3, line: 419, column: 55)
!964 = !DILocation(line: 426, column: 5, scope: !963)
!965 = !DILocation(line: 430, column: 12, scope: !966)
!966 = distinct !DILexicalBlock(scope: !956, file: !3, line: 427, column: 11)
!967 = !DILocation(line: 433, column: 4, scope: !957)
!968 = !DILocation(line: 435, column: 2, scope: !947)
!969 = !DILocation(line: 442, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 442, column: 7)
!971 = distinct !DILexicalBlock(scope: !944, file: !3, line: 435, column: 9)
!972 = !DILocation(line: 442, column: 13, scope: !970)
!973 = !DILocation(line: 442, column: 18, scope: !970)
!974 = !DILocation(line: 442, column: 7, scope: !971)
!975 = !DILocation(line: 443, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !970, file: !3, line: 442, column: 36)
!977 = !DILocation(line: 444, column: 3, scope: !976)
!978 = !DILocation(line: 445, column: 11, scope: !979)
!979 = distinct !DILexicalBlock(scope: !970, file: !3, line: 444, column: 10)
!980 = !DILocation(line: 445, column: 17, scope: !979)
!981 = !DILocation(line: 445, column: 9, scope: !979)
!982 = !DILocation(line: 448, column: 14, scope: !971)
!983 = !DILocation(line: 448, column: 12, scope: !971)
!984 = !DILocation(line: 449, column: 8, scope: !985)
!985 = distinct !DILexicalBlock(scope: !971, file: !3, line: 449, column: 7)
!986 = !DILocation(line: 449, column: 7, scope: !971)
!987 = !DILocation(line: 450, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 449, column: 18)
!989 = !DILocation(line: 451, column: 4, scope: !988)
!990 = !DILocation(line: 456, column: 31, scope: !971)
!991 = !DILocation(line: 456, column: 27, scope: !971)
!992 = !DILocation(line: 456, column: 3, scope: !971)
!993 = !DILocation(line: 456, column: 20, scope: !971)
!994 = !DILocation(line: 456, column: 25, scope: !971)
!995 = !DILocation(line: 460, column: 34, scope: !971)
!996 = !DILocation(line: 460, column: 40, scope: !971)
!997 = !DILocation(line: 460, column: 50, scope: !971)
!998 = !DILocation(line: 460, column: 12, scope: !971)
!999 = !DILocation(line: 460, column: 10, scope: !971)
!1000 = !DILocation(line: 464, column: 28, scope: !971)
!1001 = !DILocation(line: 464, column: 3, scope: !971)
!1002 = !DILocation(line: 466, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !971, file: !3, line: 466, column: 7)
!1004 = !DILocation(line: 466, column: 7, scope: !971)
!1005 = !DILocation(line: 467, column: 4, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 466, column: 29)
!1007 = !DILocation(line: 484, column: 6, scope: !853)
!1008 = !DILocation(line: 483, column: 14, scope: !853)
!1009 = !DILocation(line: 485, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !853, file: !3, line: 485, column: 6)
!1011 = !DILocation(line: 485, column: 6, scope: !853)
!1012 = !DILocation(line: 486, column: 10, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 485, column: 20)
!1014 = !DILocation(line: 487, column: 3, scope: !1013)
!1015 = !DILocation(line: 493, column: 6, scope: !853)
!1016 = !DILocation(line: 492, column: 9, scope: !853)
!1017 = !DILocation(line: 494, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !853, file: !3, line: 494, column: 6)
!1019 = !DILocation(line: 494, column: 6, scope: !853)
!1020 = !DILocation(line: 495, column: 28, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 494, column: 28)
!1022 = !DILocation(line: 495, column: 3, scope: !1021)
!1023 = !DILocation(line: 496, column: 3, scope: !1021)
!1024 = !DILocation(line: 499, column: 44, scope: !853)
!1025 = !DILocation(line: 499, column: 2, scope: !853)
!1026 = !DILocation(line: 499, column: 29, scope: !853)
!1027 = !DILocation(line: 499, column: 38, scope: !853)
!1028 = !DILocation(line: 500, column: 45, scope: !853)
!1029 = !DILocation(line: 500, column: 2, scope: !853)
!1030 = !DILocation(line: 500, column: 29, scope: !853)
!1031 = !DILocation(line: 500, column: 43, scope: !853)
!1032 = !DILocation(line: 501, column: 2, scope: !853)
!1033 = !DILocation(line: 501, column: 29, scope: !853)
!1034 = !DILocation(line: 501, column: 41, scope: !853)
!1035 = !DILocation(line: 502, column: 36, scope: !853)
!1036 = !DILocation(line: 502, column: 2, scope: !853)
!1037 = !DILocation(line: 502, column: 29, scope: !853)
!1038 = !DILocation(line: 502, column: 34, scope: !853)
!1039 = !DILocation(line: 503, column: 39, scope: !853)
!1040 = !DILocation(line: 503, column: 2, scope: !853)
!1041 = !DILocation(line: 503, column: 29, scope: !853)
!1042 = !DILocation(line: 503, column: 37, scope: !853)
!1043 = !DILocation(line: 504, column: 39, scope: !853)
!1044 = !DILocation(line: 504, column: 2, scope: !853)
!1045 = !DILocation(line: 504, column: 29, scope: !853)
!1046 = !DILocation(line: 504, column: 37, scope: !853)
!1047 = !DILocation(line: 505, column: 37, scope: !853)
!1048 = !DILocation(line: 505, column: 2, scope: !853)
!1049 = !DILocation(line: 505, column: 29, scope: !853)
!1050 = !DILocation(line: 505, column: 35, scope: !853)
!1051 = !DILocation(line: 509, column: 36, scope: !853)
!1052 = !DILocation(line: 509, column: 60, scope: !853)
!1053 = !DILocation(line: 509, column: 2, scope: !853)
!1054 = !DILocation(line: 509, column: 29, scope: !853)
!1055 = !DILocation(line: 509, column: 34, scope: !853)
!1056 = !DILocation(line: 515, column: 36, scope: !853)
!1057 = !DILocation(line: 515, column: 2, scope: !853)
!1058 = !DILocation(line: 515, column: 26, scope: !853)
!1059 = !DILocation(line: 515, column: 34, scope: !853)
!1060 = !DILocation(line: 527, column: 49, scope: !853)
!1061 = !DILocation(line: 530, column: 6, scope: !853)
!1062 = !DILocation(line: 527, column: 11, scope: !853)
!1063 = !DILocation(line: 527, column: 9, scope: !853)
!1064 = !DILocation(line: 527, column: 2, scope: !853)
!1065 = !DILocation(line: 532, column: 1, scope: !853)
!1066 = !DILocation(line: 533, column: 2, scope: !853)
!1067 = !DILocation(line: 534, column: 1, scope: !853)
!1068 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !849, file: !849, line: 648, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1069 = distinct !DISubprogram(name: "acpi_ev_has_default_handler", scope: !3, file: !3, line: 118, type: !1070, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!7, !74, !5}
!1072 = !{!1073, !1074, !1075, !1076}
!1073 = !DILocalVariable(name: "node", arg: 1, scope: !1069, file: !3, line: 118, type: !74)
!1074 = !DILocalVariable(name: "space_id", arg: 2, scope: !1069, file: !3, line: 119, type: !5)
!1075 = !DILocalVariable(name: "obj_desc", scope: !1069, file: !3, line: 121, type: !17)
!1076 = !DILocalVariable(name: "handler_obj", scope: !1069, file: !3, line: 122, type: !17)
!1077 = !DILocation(line: 118, column: 57, scope: !1069)
!1078 = !DILocation(line: 119, column: 28, scope: !1069)
!1079 = !DILocation(line: 121, column: 2, scope: !1069)
!1080 = !DILocation(line: 121, column: 29, scope: !1069)
!1081 = !DILocation(line: 122, column: 2, scope: !1069)
!1082 = !DILocation(line: 122, column: 29, scope: !1069)
!1083 = !DILocation(line: 126, column: 41, scope: !1069)
!1084 = !DILocation(line: 126, column: 13, scope: !1069)
!1085 = !DILocation(line: 126, column: 11, scope: !1069)
!1086 = !DILocation(line: 127, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 127, column: 6)
!1088 = !DILocation(line: 127, column: 6, scope: !1069)
!1089 = !DILocation(line: 128, column: 17, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 127, column: 16)
!1091 = !DILocation(line: 128, column: 41, scope: !1090)
!1092 = !DILocation(line: 128, column: 15, scope: !1090)
!1093 = !DILocation(line: 132, column: 3, scope: !1090)
!1094 = !DILocation(line: 132, column: 10, scope: !1090)
!1095 = !DILocation(line: 133, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 133, column: 8)
!1097 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 132, column: 23)
!1098 = !DILocation(line: 133, column: 35, scope: !1096)
!1099 = !DILocation(line: 133, column: 47, scope: !1096)
!1100 = !DILocation(line: 133, column: 44, scope: !1096)
!1101 = !DILocation(line: 133, column: 8, scope: !1097)
!1102 = !DILocation(line: 134, column: 9, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 134, column: 9)
!1104 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 133, column: 57)
!1105 = !DILocation(line: 134, column: 36, scope: !1103)
!1106 = !DILocation(line: 134, column: 50, scope: !1103)
!1107 = !DILocation(line: 134, column: 9, scope: !1104)
!1108 = !DILocation(line: 136, column: 6, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 135, column: 46)
!1110 = !DILocation(line: 138, column: 4, scope: !1104)
!1111 = !DILocation(line: 140, column: 18, scope: !1097)
!1112 = !DILocation(line: 140, column: 45, scope: !1097)
!1113 = !DILocation(line: 140, column: 16, scope: !1097)
!1114 = distinct !{!1114, !1093, !1115, !842, !843}
!1115 = !DILocation(line: 141, column: 3, scope: !1090)
!1116 = !DILocation(line: 142, column: 2, scope: !1090)
!1117 = !DILocation(line: 144, column: 2, scope: !1069)
!1118 = !DILocation(line: 145, column: 1, scope: !1069)
!1119 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1120, file: !1120, line: 298, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1120 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!17, !74}
!1123 = distinct !DISubprogram(name: "acpi_ev_find_region_handler", scope: !3, file: !3, line: 286, type: !1124, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!17, !5, !17}
!1126 = !{!1127, !1128}
!1127 = !DILocalVariable(name: "space_id", arg: 1, scope: !1123, file: !3, line: 287, type: !5)
!1128 = !DILocalVariable(name: "handler_obj", arg: 2, scope: !1123, file: !3, line: 289, type: !17)
!1129 = !DILocation(line: 287, column: 14, scope: !1123)
!1130 = !DILocation(line: 289, column: 15, scope: !1123)
!1131 = !DILocation(line: 294, column: 2, scope: !1123)
!1132 = !DILocation(line: 294, column: 9, scope: !1123)
!1133 = !DILocation(line: 298, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 298, column: 7)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 294, column: 22)
!1136 = !DILocation(line: 298, column: 34, scope: !1134)
!1137 = !DILocation(line: 298, column: 46, scope: !1134)
!1138 = !DILocation(line: 298, column: 43, scope: !1134)
!1139 = !DILocation(line: 298, column: 7, scope: !1135)
!1140 = !DILocation(line: 299, column: 12, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 298, column: 56)
!1142 = !DILocation(line: 299, column: 4, scope: !1141)
!1143 = !DILocation(line: 304, column: 17, scope: !1135)
!1144 = !DILocation(line: 304, column: 44, scope: !1135)
!1145 = !DILocation(line: 304, column: 15, scope: !1135)
!1146 = distinct !{!1146, !1131, !1147, !842, !843}
!1147 = !DILocation(line: 305, column: 2, scope: !1123)
!1148 = !DILocation(line: 307, column: 2, scope: !1123)
!1149 = !DILocation(line: 308, column: 1, scope: !1123)
!1150 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !849, file: !849, line: 436, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!17, !1153, !14, !14, !866}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!1154 = !DISubprogram(name: "acpi_ns_attach_object", scope: !1120, file: !1120, line: 295, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!13, !74, !17, !866}
!1157 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !849, file: !849, line: 369, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !17}
!1160 = !DISubprogram(name: "acpi_os_create_semaphore", scope: !1161, file: !1161, line: 126, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!13, !14, !14, !726}
!1164 = !DISubprogram(name: "acpi_ns_walk_namespace", scope: !1120, file: !1120, line: 77, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!13, !866, !370, !14, !14, !1167, !1167, !12, !726}
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !6, line: 1135, baseType: !723)
!1168 = distinct !DISubprogram(name: "acpi_ev_install_handler", scope: !3, file: !3, line: 165, type: !724, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1170 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1168, file: !3, line: 165, type: !370)
!1171 = !DILocalVariable(name: "level", arg: 2, scope: !1168, file: !3, line: 166, type: !14)
!1172 = !DILocalVariable(name: "context", arg: 3, scope: !1168, file: !3, line: 166, type: !12)
!1173 = !DILocalVariable(name: "return_value", arg: 4, scope: !1168, file: !3, line: 166, type: !726)
!1174 = !DILocalVariable(name: "handler_obj", scope: !1168, file: !3, line: 168, type: !17)
!1175 = !DILocalVariable(name: "next_handler_obj", scope: !1168, file: !3, line: 169, type: !17)
!1176 = !DILocalVariable(name: "obj_desc", scope: !1168, file: !3, line: 170, type: !17)
!1177 = !DILocalVariable(name: "node", scope: !1168, file: !3, line: 171, type: !74)
!1178 = !DILocalVariable(name: "status", scope: !1168, file: !3, line: 172, type: !13)
!1179 = !DILocation(line: 165, column: 37, scope: !1168)
!1180 = !DILocation(line: 166, column: 8, scope: !1168)
!1181 = !DILocation(line: 166, column: 21, scope: !1168)
!1182 = !DILocation(line: 166, column: 37, scope: !1168)
!1183 = !DILocation(line: 168, column: 2, scope: !1168)
!1184 = !DILocation(line: 168, column: 29, scope: !1168)
!1185 = !DILocation(line: 169, column: 2, scope: !1168)
!1186 = !DILocation(line: 169, column: 29, scope: !1168)
!1187 = !DILocation(line: 170, column: 2, scope: !1168)
!1188 = !DILocation(line: 170, column: 29, scope: !1168)
!1189 = !DILocation(line: 171, column: 2, scope: !1168)
!1190 = !DILocation(line: 171, column: 30, scope: !1168)
!1191 = !DILocation(line: 172, column: 2, scope: !1168)
!1192 = !DILocation(line: 172, column: 14, scope: !1168)
!1193 = !DILocation(line: 176, column: 45, scope: !1168)
!1194 = !DILocation(line: 176, column: 14, scope: !1168)
!1195 = !DILocation(line: 180, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 180, column: 6)
!1197 = !DILocation(line: 180, column: 6, scope: !1168)
!1198 = !DILocation(line: 181, column: 3, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 180, column: 20)
!1200 = !DILocation(line: 186, column: 33, scope: !1168)
!1201 = !DILocation(line: 186, column: 9, scope: !1168)
!1202 = !DILocation(line: 186, column: 7, scope: !1168)
!1203 = !DILocation(line: 187, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 187, column: 6)
!1205 = !DILocation(line: 187, column: 6, scope: !1168)
!1206 = !DILocation(line: 188, column: 3, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 187, column: 13)
!1208 = !DILocation(line: 195, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 195, column: 6)
!1210 = !DILocation(line: 195, column: 13, scope: !1209)
!1211 = !DILocation(line: 195, column: 18, scope: !1209)
!1212 = !DILocation(line: 195, column: 39, scope: !1209)
!1213 = !DILocation(line: 196, column: 7, scope: !1209)
!1214 = !DILocation(line: 196, column: 13, scope: !1209)
!1215 = !DILocation(line: 196, column: 18, scope: !1209)
!1216 = !DILocation(line: 196, column: 39, scope: !1209)
!1217 = !DILocation(line: 196, column: 43, scope: !1209)
!1218 = !DILocation(line: 196, column: 51, scope: !1209)
!1219 = !DILocation(line: 196, column: 48, scope: !1209)
!1220 = !DILocation(line: 195, column: 6, scope: !1168)
!1221 = !DILocation(line: 197, column: 3, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 196, column: 72)
!1223 = !DILocation(line: 202, column: 41, scope: !1168)
!1224 = !DILocation(line: 202, column: 13, scope: !1168)
!1225 = !DILocation(line: 202, column: 11, scope: !1168)
!1226 = !DILocation(line: 203, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 203, column: 6)
!1228 = !DILocation(line: 203, column: 6, scope: !1168)
!1229 = !DILocation(line: 207, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 203, column: 17)
!1231 = !DILocation(line: 212, column: 6, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 212, column: 6)
!1233 = !DILocation(line: 212, column: 23, scope: !1232)
!1234 = !DILocation(line: 212, column: 28, scope: !1232)
!1235 = !DILocation(line: 212, column: 6, scope: !1168)
!1236 = !DILocation(line: 217, column: 35, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 212, column: 49)
!1238 = !DILocation(line: 218, column: 7, scope: !1237)
!1239 = !DILocation(line: 219, column: 7, scope: !1237)
!1240 = !DILocation(line: 220, column: 7, scope: !1237)
!1241 = !DILocation(line: 217, column: 7, scope: !1237)
!1242 = !DILocation(line: 216, column: 20, scope: !1237)
!1243 = !DILocation(line: 221, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 221, column: 7)
!1245 = !DILocation(line: 221, column: 7, scope: !1237)
!1246 = !DILocation(line: 240, column: 4, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 221, column: 25)
!1248 = !DILocation(line: 247, column: 3, scope: !1237)
!1249 = !DILocation(line: 252, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 252, column: 6)
!1251 = !DILocation(line: 252, column: 23, scope: !1250)
!1252 = !DILocation(line: 252, column: 35, scope: !1250)
!1253 = !DILocation(line: 252, column: 62, scope: !1250)
!1254 = !DILocation(line: 252, column: 32, scope: !1250)
!1255 = !DILocation(line: 252, column: 6, scope: !1168)
!1256 = !DILocation(line: 256, column: 3, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 252, column: 72)
!1258 = !DILocation(line: 264, column: 24, scope: !1168)
!1259 = !DILocation(line: 264, column: 2, scope: !1168)
!1260 = !DILocation(line: 268, column: 33, scope: !1168)
!1261 = !DILocation(line: 268, column: 46, scope: !1168)
!1262 = !DILocation(line: 268, column: 11, scope: !1168)
!1263 = !DILocation(line: 268, column: 9, scope: !1168)
!1264 = !DILocation(line: 269, column: 10, scope: !1168)
!1265 = !DILocation(line: 269, column: 2, scope: !1168)
!1266 = !DILocation(line: 270, column: 1, scope: !1168)
!1267 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !1120, file: !1120, line: 398, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!74, !370}
!1270 = !DISubprogram(name: "acpi_ev_detach_region", scope: !1271, file: !1271, line: 187, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !17, !7}
!1274 = !DISubprogram(name: "acpi_ev_attach_region", scope: !1271, file: !1271, line: 182, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!13, !17, !17, !7}
