; ModuleID = 'drivers/acpi/acpica/dsargs.c'
source_filename = "drivers/acpi/acpica/dsargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_buffer_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_extra = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_bank_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr, ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }

@_acpi_module_name = internal constant [7 x i8] c"dsargs\00", align 1, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"No pointer back to namespace node in buffer object %p\00", align 1, !dbg !23
@.str.1 = private unnamed_addr constant [48 x i8] c"No pointer back to namespace node in package %p\00", align 1, !dbg !29

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_get_buffer_field_arguments(ptr noundef %obj_desc) #0 align 16 !dbg !47 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %extra_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !814, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 8, ptr %extra_desc) #4, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %extra_desc, metadata !815, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %node, metadata !816, metadata !DIExpression()), !dbg !822
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !823
  call void @llvm.dbg.declare(metadata ptr %status, metadata !817, metadata !DIExpression()), !dbg !824
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !825
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 4, !dbg !827
  %1 = load i8, ptr %flags, align 4, !dbg !827
  %conv = zext i8 %1 to i32, !dbg !825
  %and = and i32 %conv, 4, !dbg !828
  %tobool = icmp ne i32 %and, 0, !dbg !828
  br i1 %tobool, label %if.then, label %if.end, !dbg !829

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !830

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !832
  %call = call ptr @acpi_ns_get_secondary_object(ptr noundef %2) #5, !dbg !833
  store ptr %call, ptr %extra_desc, align 8, !dbg !834
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !835
  %node1 = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %3, i32 0, i32 8, !dbg !836
  %4 = load ptr, ptr %node1, align 8, !dbg !836
  store ptr %4, ptr %node, align 8, !dbg !837
  %5 = load ptr, ptr %node, align 8, !dbg !838
  %6 = load ptr, ptr %node, align 8, !dbg !839
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 5, !dbg !840
  %7 = load ptr, ptr %parent, align 8, !dbg !840
  %8 = load ptr, ptr %extra_desc, align 8, !dbg !841
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, ptr %8, i32 0, i32 9, !dbg !842
  %9 = load i32, ptr %aml_length, align 8, !dbg !842
  %10 = load ptr, ptr %extra_desc, align 8, !dbg !843
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, ptr %10, i32 0, i32 8, !dbg !844
  %11 = load ptr, ptr %aml_start, align 8, !dbg !844
  %call2 = call i32 @acpi_ds_execute_arguments(ptr noundef %5, ptr noundef %7, i32 noundef %9, ptr noundef %11) #5, !dbg !845
  store i32 %call2, ptr %status, align 4, !dbg !846
  %12 = load i32, ptr %status, align 4, !dbg !847
  store i32 %12, ptr %retval, align 4, !dbg !847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !847

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !848
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !848
  call void @llvm.lifetime.end.p0(i64 8, ptr %extra_desc) #4, !dbg !848
  %13 = load i32, ptr %retval, align 4, !dbg !848
  ret i32 %13, !dbg !848
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !849 dso_local ptr @acpi_ns_get_secondary_object(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_execute_arguments(ptr noundef %node, ptr noundef %scope_node, i32 noundef %aml_length, ptr noundef %aml_start) #0 align 16 !dbg !853 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %scope_node.addr = alloca ptr, align 8
  %aml_length.addr = alloca i32, align 4
  %aml_start.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %op = alloca ptr, align 8
  %walk_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !857, metadata !DIExpression()), !dbg !865
  store ptr %scope_node, ptr %scope_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope_node.addr, metadata !858, metadata !DIExpression()), !dbg !866
  store i32 %aml_length, ptr %aml_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %aml_length.addr, metadata !859, metadata !DIExpression()), !dbg !867
  store ptr %aml_start, ptr %aml_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_start.addr, metadata !860, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %status, metadata !861, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #4, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %op, metadata !862, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_state) #4, !dbg !873
  call void @llvm.dbg.declare(metadata ptr %walk_state, metadata !863, metadata !DIExpression()), !dbg !874
  %0 = load ptr, ptr %aml_start.addr, align 8, !dbg !875
  %call = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 55, ptr noundef %0) #5, !dbg !876
  store ptr %call, ptr %op, align 8, !dbg !877
  %1 = load ptr, ptr %op, align 8, !dbg !878
  %tobool = icmp ne ptr %1, null, !dbg !878
  br i1 %tobool, label %if.end, label %if.then, !dbg !880

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !881

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %scope_node.addr, align 8, !dbg !883
  %3 = load ptr, ptr %op, align 8, !dbg !884
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %3, i32 0, i32 6, !dbg !885
  store ptr %2, ptr %node1, align 8, !dbg !886
  %call2 = call ptr @acpi_ds_create_walk_state(i16 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null) #5, !dbg !887
  store ptr %call2, ptr %walk_state, align 8, !dbg !888
  %4 = load ptr, ptr %walk_state, align 8, !dbg !889
  %tobool3 = icmp ne ptr %4, null, !dbg !889
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !891

if.then4:                                         ; preds = %if.end
  store i32 4, ptr %status, align 4, !dbg !892
  br label %cleanup, !dbg !894

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %walk_state, align 8, !dbg !895
  %6 = load ptr, ptr %op, align 8, !dbg !896
  %7 = load ptr, ptr %aml_start.addr, align 8, !dbg !897
  %8 = load i32, ptr %aml_length.addr, align 4, !dbg !898
  %call6 = call i32 @acpi_ds_init_aml_walk(ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef %7, i32 noundef %8, ptr noundef null, i8 noundef zeroext 1) #5, !dbg !899
  store i32 %call6, ptr %status, align 4, !dbg !900
  %9 = load i32, ptr %status, align 4, !dbg !901
  %tobool7 = icmp ne i32 %9, 0, !dbg !901
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !903

if.then8:                                         ; preds = %if.end5
  %10 = load ptr, ptr %walk_state, align 8, !dbg !904
  call void @acpi_ds_delete_walk_state(ptr noundef %10) #5, !dbg !906
  br label %cleanup, !dbg !907

if.end9:                                          ; preds = %if.end5
  %11 = load ptr, ptr %walk_state, align 8, !dbg !908
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 20, !dbg !909
  store i32 256, ptr %parse_flags, align 4, !dbg !910
  %12 = load ptr, ptr %node.addr, align 8, !dbg !911
  %13 = load ptr, ptr %walk_state, align 8, !dbg !912
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 33, !dbg !913
  store ptr %12, ptr %deferred_node, align 8, !dbg !914
  %14 = load ptr, ptr %walk_state, align 8, !dbg !915
  %call10 = call i32 @acpi_ps_parse_aml(ptr noundef %14) #5, !dbg !916
  store i32 %call10, ptr %status, align 4, !dbg !917
  %15 = load i32, ptr %status, align 4, !dbg !918
  %tobool11 = icmp ne i32 %15, 0, !dbg !918
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !920

if.then12:                                        ; preds = %if.end9
  br label %cleanup, !dbg !921

if.end13:                                         ; preds = %if.end9
  %16 = load ptr, ptr %node.addr, align 8, !dbg !923
  %17 = load ptr, ptr %op, align 8, !dbg !924
  %node14 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %17, i32 0, i32 6, !dbg !925
  store ptr %16, ptr %node14, align 8, !dbg !926
  %18 = load ptr, ptr %op, align 8, !dbg !927
  call void @acpi_ps_delete_parse_tree(ptr noundef %18) #5, !dbg !928
  %19 = load ptr, ptr %aml_start.addr, align 8, !dbg !929
  %call15 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 55, ptr noundef %19) #5, !dbg !930
  store ptr %call15, ptr %op, align 8, !dbg !931
  %20 = load ptr, ptr %op, align 8, !dbg !932
  %tobool16 = icmp ne ptr %20, null, !dbg !932
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !934

if.then17:                                        ; preds = %if.end13
  store i32 4, ptr %retval, align 4, !dbg !935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !935

if.end18:                                         ; preds = %if.end13
  %21 = load ptr, ptr %scope_node.addr, align 8, !dbg !937
  %22 = load ptr, ptr %op, align 8, !dbg !938
  %node19 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %22, i32 0, i32 6, !dbg !939
  store ptr %21, ptr %node19, align 8, !dbg !940
  %call20 = call ptr @acpi_ds_create_walk_state(i16 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null) #5, !dbg !941
  store ptr %call20, ptr %walk_state, align 8, !dbg !942
  %23 = load ptr, ptr %walk_state, align 8, !dbg !943
  %tobool21 = icmp ne ptr %23, null, !dbg !943
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !945

if.then22:                                        ; preds = %if.end18
  store i32 4, ptr %status, align 4, !dbg !946
  br label %cleanup, !dbg !948

if.end23:                                         ; preds = %if.end18
  %24 = load ptr, ptr %walk_state, align 8, !dbg !949
  %25 = load ptr, ptr %op, align 8, !dbg !950
  %26 = load ptr, ptr %aml_start.addr, align 8, !dbg !951
  %27 = load i32, ptr %aml_length.addr, align 4, !dbg !952
  %call24 = call i32 @acpi_ds_init_aml_walk(ptr noundef %24, ptr noundef %25, ptr noundef null, ptr noundef %26, i32 noundef %27, ptr noundef null, i8 noundef zeroext 3) #5, !dbg !953
  store i32 %call24, ptr %status, align 4, !dbg !954
  %28 = load i32, ptr %status, align 4, !dbg !955
  %tobool25 = icmp ne i32 %28, 0, !dbg !955
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !957

if.then26:                                        ; preds = %if.end23
  %29 = load ptr, ptr %walk_state, align 8, !dbg !958
  call void @acpi_ds_delete_walk_state(ptr noundef %29) #5, !dbg !960
  br label %cleanup, !dbg !961

if.end27:                                         ; preds = %if.end23
  %30 = load ptr, ptr %node.addr, align 8, !dbg !962
  %31 = load ptr, ptr %walk_state, align 8, !dbg !963
  %deferred_node28 = getelementptr inbounds %struct.acpi_walk_state, ptr %31, i32 0, i32 33, !dbg !964
  store ptr %30, ptr %deferred_node28, align 8, !dbg !965
  %32 = load ptr, ptr %walk_state, align 8, !dbg !966
  %call29 = call i32 @acpi_ps_parse_aml(ptr noundef %32) #5, !dbg !967
  store i32 %call29, ptr %status, align 4, !dbg !968
  br label %cleanup, !dbg !969

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then22, %if.then12, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !864), !dbg !970
  %33 = load ptr, ptr %op, align 8, !dbg !971
  call void @acpi_ps_delete_parse_tree(ptr noundef %33) #5, !dbg !972
  %34 = load i32, ptr %status, align 4, !dbg !973
  store i32 %34, ptr %retval, align 4, !dbg !973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !973

cleanup30:                                        ; preds = %cleanup, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_state) #4, !dbg !974
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #4, !dbg !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !974
  %35 = load i32, ptr %retval, align 4, !dbg !974
  ret i32 %35, !dbg !974
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_get_bank_field_arguments(ptr noundef %obj_desc) #0 align 16 !dbg !975 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %extra_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !977, metadata !DIExpression()), !dbg !981
  call void @llvm.lifetime.start.p0(i64 8, ptr %extra_desc) #4, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %extra_desc, metadata !978, metadata !DIExpression()), !dbg !983
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %node, metadata !979, metadata !DIExpression()), !dbg !985
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !986
  call void @llvm.dbg.declare(metadata ptr %status, metadata !980, metadata !DIExpression()), !dbg !987
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !988
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 4, !dbg !990
  %1 = load i8, ptr %flags, align 4, !dbg !990
  %conv = zext i8 %1 to i32, !dbg !988
  %and = and i32 %conv, 4, !dbg !991
  %tobool = icmp ne i32 %and, 0, !dbg !991
  br i1 %tobool, label %if.then, label %if.end, !dbg !992

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !993

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !995
  %call = call ptr @acpi_ns_get_secondary_object(ptr noundef %2) #5, !dbg !996
  store ptr %call, ptr %extra_desc, align 8, !dbg !997
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !998
  %node1 = getelementptr inbounds %struct.acpi_object_bank_field, ptr %3, i32 0, i32 8, !dbg !999
  %4 = load ptr, ptr %node1, align 8, !dbg !999
  store ptr %4, ptr %node, align 8, !dbg !1000
  %5 = load ptr, ptr %node, align 8, !dbg !1001
  %6 = load ptr, ptr %node, align 8, !dbg !1002
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 5, !dbg !1003
  %7 = load ptr, ptr %parent, align 8, !dbg !1003
  %8 = load ptr, ptr %extra_desc, align 8, !dbg !1004
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, ptr %8, i32 0, i32 9, !dbg !1005
  %9 = load i32, ptr %aml_length, align 8, !dbg !1005
  %10 = load ptr, ptr %extra_desc, align 8, !dbg !1006
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, ptr %10, i32 0, i32 8, !dbg !1007
  %11 = load ptr, ptr %aml_start, align 8, !dbg !1007
  %call2 = call i32 @acpi_ds_execute_arguments(ptr noundef %5, ptr noundef %7, i32 noundef %9, ptr noundef %11) #5, !dbg !1008
  store i32 %call2, ptr %status, align 4, !dbg !1009
  %12 = load i32, ptr %status, align 4, !dbg !1010
  %tobool3 = icmp ne i32 %12, 0, !dbg !1010
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1012

if.then4:                                         ; preds = %if.end
  %13 = load i32, ptr %status, align 4, !dbg !1013
  store i32 %13, ptr %retval, align 4, !dbg !1013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1013

if.end5:                                          ; preds = %if.end
  %14 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1015
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %14, i32 0, i32 5, !dbg !1016
  %15 = load i8, ptr %space_id, align 1, !dbg !1016
  %16 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1017
  %address = getelementptr inbounds %struct.acpi_object_region, ptr %16, i32 0, i32 9, !dbg !1018
  %17 = load i64, ptr %address, align 8, !dbg !1018
  %18 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1019
  %length = getelementptr inbounds %struct.acpi_object_region, ptr %18, i32 0, i32 10, !dbg !1020
  %19 = load i32, ptr %length, align 8, !dbg !1020
  %20 = load ptr, ptr %node, align 8, !dbg !1021
  %call6 = call i32 @acpi_ut_add_address_range(i8 noundef zeroext %15, i64 noundef %17, i32 noundef %19, ptr noundef %20) #5, !dbg !1022
  store i32 %call6, ptr %status, align 4, !dbg !1023
  %21 = load i32, ptr %status, align 4, !dbg !1024
  store i32 %21, ptr %retval, align 4, !dbg !1024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1024

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1025
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1025
  call void @llvm.lifetime.end.p0(i64 8, ptr %extra_desc) #4, !dbg !1025
  %22 = load i32, ptr %retval, align 4, !dbg !1025
  ret i32 %22, !dbg !1025
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1026 dso_local i32 @acpi_ut_add_address_range(i8 noundef zeroext, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_get_buffer_arguments(ptr noundef %obj_desc) #0 align 16 !dbg !1031 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1033, metadata !DIExpression()), !dbg !1036
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1034, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1035, metadata !DIExpression()), !dbg !1040
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1041
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 4, !dbg !1043
  %1 = load i8, ptr %flags, align 4, !dbg !1043
  %conv = zext i8 %1 to i32, !dbg !1041
  %and = and i32 %conv, 4, !dbg !1044
  %tobool = icmp ne i32 %and, 0, !dbg !1044
  br i1 %tobool, label %if.then, label %if.end, !dbg !1045

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1046

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1048
  %node1 = getelementptr inbounds %struct.acpi_object_buffer, ptr %2, i32 0, i32 9, !dbg !1049
  %3 = load ptr, ptr %node1, align 8, !dbg !1049
  store ptr %3, ptr %node, align 8, !dbg !1050
  %4 = load ptr, ptr %node, align 8, !dbg !1051
  %tobool2 = icmp ne ptr %4, null, !dbg !1051
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1053

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1054
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 257, ptr noundef @.str, ptr noundef %5) #5, !dbg !1054
  store i32 12303, ptr %retval, align 4, !dbg !1056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1056

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %node, align 8, !dbg !1057
  %7 = load ptr, ptr %node, align 8, !dbg !1058
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1059
  %aml_length = getelementptr inbounds %struct.acpi_object_buffer, ptr %8, i32 0, i32 7, !dbg !1060
  %9 = load i32, ptr %aml_length, align 4, !dbg !1060
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1061
  %aml_start = getelementptr inbounds %struct.acpi_object_buffer, ptr %10, i32 0, i32 8, !dbg !1062
  %11 = load ptr, ptr %aml_start, align 8, !dbg !1062
  %call = call i32 @acpi_ds_execute_arguments(ptr noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %11) #5, !dbg !1063
  store i32 %call, ptr %status, align 4, !dbg !1064
  %12 = load i32, ptr %status, align 4, !dbg !1065
  store i32 %12, ptr %retval, align 4, !dbg !1065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1065

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1066
  %13 = load i32, ptr %retval, align 4, !dbg !1066
  ret i32 %13, !dbg !1066
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1067 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_get_package_arguments(ptr noundef %obj_desc) #0 align 16 !dbg !1072 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1074, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1075, metadata !DIExpression()), !dbg !1079
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1076, metadata !DIExpression()), !dbg !1081
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1082
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 4, !dbg !1084
  %1 = load i8, ptr %flags, align 4, !dbg !1084
  %conv = zext i8 %1 to i32, !dbg !1082
  %and = and i32 %conv, 4, !dbg !1085
  %tobool = icmp ne i32 %and, 0, !dbg !1085
  br i1 %tobool, label %if.then, label %if.end, !dbg !1086

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1087

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1089
  %node1 = getelementptr inbounds %struct.acpi_object_package, ptr %2, i32 0, i32 5, !dbg !1090
  %3 = load ptr, ptr %node1, align 8, !dbg !1090
  store ptr %3, ptr %node, align 8, !dbg !1091
  %4 = load ptr, ptr %node, align 8, !dbg !1092
  %tobool2 = icmp ne ptr %4, null, !dbg !1092
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1094

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1095
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 301, ptr noundef @.str.1, ptr noundef %5) #5, !dbg !1095
  store i32 12303, ptr %retval, align 4, !dbg !1097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1097

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %node, align 8, !dbg !1098
  %7 = load ptr, ptr %node, align 8, !dbg !1099
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1100
  %aml_length = getelementptr inbounds %struct.acpi_object_package, ptr %8, i32 0, i32 8, !dbg !1101
  %9 = load i32, ptr %aml_length, align 8, !dbg !1101
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1102
  %aml_start = getelementptr inbounds %struct.acpi_object_package, ptr %10, i32 0, i32 7, !dbg !1103
  %11 = load ptr, ptr %aml_start, align 8, !dbg !1103
  %call = call i32 @acpi_ds_execute_arguments(ptr noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %11) #5, !dbg !1104
  store i32 %call, ptr %status, align 4, !dbg !1105
  %12 = load i32, ptr %status, align 4, !dbg !1106
  store i32 %12, ptr %retval, align 4, !dbg !1106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1106

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1107
  %13 = load i32, ptr %retval, align 4, !dbg !1107
  ret i32 %13, !dbg !1107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_get_region_arguments(ptr noundef %obj_desc) #0 align 16 !dbg !1108 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %extra_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1110, metadata !DIExpression()), !dbg !1114
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1115
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1111, metadata !DIExpression()), !dbg !1116
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1117
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1112, metadata !DIExpression()), !dbg !1118
  call void @llvm.lifetime.start.p0(i64 8, ptr %extra_desc) #4, !dbg !1119
  call void @llvm.dbg.declare(metadata ptr %extra_desc, metadata !1113, metadata !DIExpression()), !dbg !1120
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1121
  %flags = getelementptr inbounds %struct.acpi_object_region, ptr %0, i32 0, i32 4, !dbg !1123
  %1 = load i8, ptr %flags, align 4, !dbg !1123
  %conv = zext i8 %1 to i32, !dbg !1121
  %and = and i32 %conv, 4, !dbg !1124
  %tobool = icmp ne i32 %and, 0, !dbg !1124
  br i1 %tobool, label %if.then, label %if.end, !dbg !1125

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1126

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1128
  %call = call ptr @acpi_ns_get_secondary_object(ptr noundef %2) #5, !dbg !1129
  store ptr %call, ptr %extra_desc, align 8, !dbg !1130
  %3 = load ptr, ptr %extra_desc, align 8, !dbg !1131
  %tobool1 = icmp ne ptr %3, null, !dbg !1131
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1133

if.then2:                                         ; preds = %if.end
  store i32 6, ptr %retval, align 4, !dbg !1134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1134

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1136
  %node4 = getelementptr inbounds %struct.acpi_object_region, ptr %4, i32 0, i32 6, !dbg !1137
  %5 = load ptr, ptr %node4, align 8, !dbg !1137
  store ptr %5, ptr %node, align 8, !dbg !1138
  %6 = load ptr, ptr %node, align 8, !dbg !1139
  %7 = load ptr, ptr %extra_desc, align 8, !dbg !1140
  %scope_node = getelementptr inbounds %struct.acpi_object_extra, ptr %7, i32 0, i32 6, !dbg !1141
  %8 = load ptr, ptr %scope_node, align 8, !dbg !1141
  %9 = load ptr, ptr %extra_desc, align 8, !dbg !1142
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, ptr %9, i32 0, i32 9, !dbg !1143
  %10 = load i32, ptr %aml_length, align 8, !dbg !1143
  %11 = load ptr, ptr %extra_desc, align 8, !dbg !1144
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, ptr %11, i32 0, i32 8, !dbg !1145
  %12 = load ptr, ptr %aml_start, align 8, !dbg !1145
  %call5 = call i32 @acpi_ds_execute_arguments(ptr noundef %6, ptr noundef %8, i32 noundef %10, ptr noundef %12) #5, !dbg !1146
  store i32 %call5, ptr %status, align 4, !dbg !1147
  %13 = load i32, ptr %status, align 4, !dbg !1148
  %tobool6 = icmp ne i32 %13, 0, !dbg !1148
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1150

if.then7:                                         ; preds = %if.end3
  %14 = load i32, ptr %status, align 4, !dbg !1151
  store i32 %14, ptr %retval, align 4, !dbg !1151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1151

if.end8:                                          ; preds = %if.end3
  %15 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1153
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %15, i32 0, i32 5, !dbg !1154
  %16 = load i8, ptr %space_id, align 1, !dbg !1154
  %17 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1155
  %address = getelementptr inbounds %struct.acpi_object_region, ptr %17, i32 0, i32 9, !dbg !1156
  %18 = load i64, ptr %address, align 8, !dbg !1156
  %19 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1157
  %length = getelementptr inbounds %struct.acpi_object_region, ptr %19, i32 0, i32 10, !dbg !1158
  %20 = load i32, ptr %length, align 8, !dbg !1158
  %21 = load ptr, ptr %node, align 8, !dbg !1159
  %call9 = call i32 @acpi_ut_add_address_range(i8 noundef zeroext %16, i64 noundef %18, i32 noundef %20, ptr noundef %21) #5, !dbg !1160
  store i32 %call9, ptr %status, align 4, !dbg !1161
  %22 = load i32, ptr %status, align 4, !dbg !1162
  store i32 %22, ptr %retval, align 4, !dbg !1162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1162

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %extra_desc) #4, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1163
  %23 = load i32, ptr %retval, align 4, !dbg !1163
  ret i32 %23, !dbg !1163
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1164 dso_local ptr @acpi_ps_alloc_op(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1168 dso_local ptr @acpi_ds_create_walk_state(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1172 dso_local i32 @acpi_ds_init_aml_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1239 dso_local void @acpi_ds_delete_walk_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1242 dso_local i32 @acpi_ps_parse_aml(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1243 dso_local void @acpi_ps_delete_parse_tree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dsargs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dsargs\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dsargs.ll drivers/acpi/acpica/dsargs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsargs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2471a8cb3129b893eba5020fb682482")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !{!13, !19}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !21)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !{!23, !29, !0}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 432, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !{!28}
!28 = !DISubrange(count: 54)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 384, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 48)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 56, elements: !36)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!36 = !{!37}
!37 = !DISubrange(count: 7)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 8, !"cf-protection-branch", i32 1}
!42 = !{i32 4, !"function_return_thunk_extern", i32 1}
!43 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!44 = !{i32 1, !"Code Model", i32 2}
!45 = !{i32 1, !"override-stack-alignment", i32 8}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = distinct !DISubprogram(name: "acpi_ds_get_buffer_field_arguments", scope: !3, file: !3, line: 146, type: !48, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!48 = !DISubroutineType(types: !49)
!49 = !{!13, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !52, line: 369, size: 576, elements: !53)
!52 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!53 = !{!54, !65, !81, !92, !127, !141, !151, !462, !479, !495, !508, !586, !598, !612, !622, !640, !662, !681, !700, !719, !732, !759, !776, !789, !803, !812}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !51, file: !52, line: 370, baseType: !55, size: 128)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !52, line: 73, size: 128, elements: !56)
!56 = !{!57, !58, !62, !63, !64}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !55, file: !52, line: 74, baseType: !50, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !52, line: 74, baseType: !59, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !61)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !52, line: 74, baseType: !59, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !55, file: !52, line: 74, baseType: !19, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !52, line: 74, baseType: !59, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !51, file: !52, line: 371, baseType: !66, size: 192)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !52, line: 76, size: 192, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !52, line: 77, baseType: !50, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !52, line: 77, baseType: !59, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !52, line: 77, baseType: !59, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !52, line: 77, baseType: !19, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !52, line: 77, baseType: !59, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !66, file: !52, line: 77, baseType: !74, size: 24, offset: 104)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !52, line: 78, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !80)
!80 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !51, file: !52, line: 372, baseType: !82, size: 256)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !52, line: 93, size: 256, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !91}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !52, line: 94, baseType: !50, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !52, line: 94, baseType: !59, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !52, line: 94, baseType: !59, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !52, line: 94, baseType: !19, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !52, line: 94, baseType: !59, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !52, line: 94, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !52, line: 94, baseType: !15, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !51, file: !52, line: 373, baseType: !93, size: 384)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !52, line: 97, size: 384, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !102, !103, !104, !105}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !52, line: 98, baseType: !50, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !52, line: 98, baseType: !59, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !52, line: 98, baseType: !59, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !52, line: 98, baseType: !19, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !52, line: 98, baseType: !59, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !93, file: !52, line: 98, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !93, file: !52, line: 98, baseType: !15, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !93, file: !52, line: 99, baseType: !15, size: 32, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !93, file: !52, line: 100, baseType: !101, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !52, line: 101, baseType: !106, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !122, !123, !124, !125}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !107, file: !6, line: 134, baseType: !50, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !6, line: 135, baseType: !59, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !6, line: 136, baseType: !59, size: 8, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !6, line: 137, baseType: !19, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !6, line: 138, baseType: !114, size: 32, offset: 96)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !115, line: 328, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !114, file: !115, line: 329, baseType: !15, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !114, file: !115, line: 330, baseType: !119, size: 32)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 4)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !107, file: !6, line: 139, baseType: !106, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !107, file: !6, line: 140, baseType: !106, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !107, file: !6, line: 141, baseType: !106, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !107, file: !6, line: 142, baseType: !126, size: 16, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !19)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !51, file: !52, line: 374, baseType: !128, size: 384)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !52, line: 104, size: 384, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !138, !139, !140}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !128, file: !52, line: 105, baseType: !50, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !52, line: 105, baseType: !59, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !52, line: 105, baseType: !59, size: 8, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !128, file: !52, line: 105, baseType: !19, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !52, line: 105, baseType: !59, size: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !128, file: !52, line: 105, baseType: !106, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !128, file: !52, line: 106, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !128, file: !52, line: 107, baseType: !101, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !128, file: !52, line: 108, baseType: !15, size: 32, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !128, file: !52, line: 109, baseType: !15, size: 32, offset: 352)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !51, file: !52, line: 375, baseType: !142, size: 192)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !52, line: 118, size: 192, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !142, file: !52, line: 119, baseType: !50, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !52, line: 119, baseType: !59, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !52, line: 119, baseType: !59, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !142, file: !52, line: 119, baseType: !19, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !52, line: 119, baseType: !59, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !142, file: !52, line: 119, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !51, file: !52, line: 376, baseType: !152, size: 448)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !52, line: 144, size: 448, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !459, !460, !461}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !152, file: !52, line: 145, baseType: !50, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !152, file: !52, line: 145, baseType: !59, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !52, line: 145, baseType: !59, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !152, file: !52, line: 145, baseType: !19, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !52, line: 145, baseType: !59, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !152, file: !52, line: 145, baseType: !59, size: 8, offset: 104)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !152, file: !52, line: 146, baseType: !59, size: 8, offset: 112)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !152, file: !52, line: 147, baseType: !59, size: 8, offset: 120)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !152, file: !52, line: 148, baseType: !50, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !152, file: !52, line: 149, baseType: !50, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !152, file: !52, line: 150, baseType: !101, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !152, file: !52, line: 154, baseType: !166, size: 64, offset: 320)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !52, line: 151, size: 64, elements: !167)
!167 = !{!168, !458}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !166, file: !52, line: 152, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!13, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !175, line: 37, size: 9024, elements: !176)
!175 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !406, !407, !408, !409, !410, !412, !414, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !441, !442, !443, !444, !445, !446, !447, !448, !450, !456}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !175, line: 38, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !174, file: !175, line: 39, baseType: !59, size: 8, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !174, file: !175, line: 40, baseType: !59, size: 8, offset: 72)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !174, file: !175, line: 41, baseType: !19, size: 16, offset: 80)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !174, file: !175, line: 42, baseType: !59, size: 8, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !174, file: !175, line: 43, baseType: !59, size: 8, offset: 104)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !174, file: !175, line: 44, baseType: !59, size: 8, offset: 112)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !174, file: !175, line: 45, baseType: !126, size: 16, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !174, file: !175, line: 46, baseType: !59, size: 8, offset: 144)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !174, file: !175, line: 47, baseType: !59, size: 8, offset: 152)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !174, file: !175, line: 48, baseType: !59, size: 8, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !174, file: !175, line: 49, baseType: !59, size: 8, offset: 168)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !174, file: !175, line: 50, baseType: !59, size: 8, offset: 176)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !174, file: !175, line: 51, baseType: !59, size: 8, offset: 184)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !174, file: !175, line: 52, baseType: !59, size: 8, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !174, file: !175, line: 53, baseType: !59, size: 8, offset: 200)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !174, file: !175, line: 54, baseType: !101, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !174, file: !175, line: 55, baseType: !15, size: 32, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !174, file: !175, line: 56, baseType: !15, size: 32, offset: 352)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !174, file: !175, line: 57, baseType: !15, size: 32, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !174, file: !175, line: 58, baseType: !15, size: 32, offset: 416)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !174, file: !175, line: 60, baseType: !199, size: 640, offset: 448)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !287, !288, !404, !405}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !199, file: !6, line: 910, baseType: !101, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !6, line: 911, baseType: !101, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !199, file: !6, line: 912, baseType: !101, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !199, file: !6, line: 913, baseType: !101, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !199, file: !6, line: 914, baseType: !101, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !199, file: !6, line: 915, baseType: !207, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !209)
!209 = !{!210, !230, !246}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !208, file: !6, line: 892, baseType: !211, size: 448)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !229}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !6, line: 845, baseType: !207, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !211, file: !6, line: 845, baseType: !59, size: 8, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !6, line: 845, baseType: !59, size: 8, offset: 72)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !211, file: !6, line: 845, baseType: !19, size: 16, offset: 80)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !211, file: !6, line: 845, baseType: !101, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !6, line: 845, baseType: !207, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !211, file: !6, line: 845, baseType: !106, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !211, file: !6, line: 845, baseType: !221, size: 64, offset: 320)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !221, file: !6, line: 733, baseType: !78, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !221, file: !6, line: 734, baseType: !15, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !221, file: !6, line: 735, baseType: !90, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !221, file: !6, line: 736, baseType: !101, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !6, line: 737, baseType: !90, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !221, file: !6, line: 738, baseType: !207, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !211, file: !6, line: 845, baseType: !59, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !208, file: !6, line: 893, baseType: !231, size: 640)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !231, file: !6, line: 852, baseType: !207, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !231, file: !6, line: 852, baseType: !59, size: 8, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !6, line: 852, baseType: !59, size: 8, offset: 72)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !231, file: !6, line: 852, baseType: !19, size: 16, offset: 80)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !231, file: !6, line: 852, baseType: !101, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !6, line: 852, baseType: !207, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !231, file: !6, line: 852, baseType: !106, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !231, file: !6, line: 852, baseType: !221, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !231, file: !6, line: 852, baseType: !59, size: 8, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !231, file: !6, line: 852, baseType: !90, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !6, line: 853, baseType: !101, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !231, file: !6, line: 854, baseType: !15, size: 32, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !6, line: 855, baseType: !15, size: 32, offset: 608)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !208, file: !6, line: 894, baseType: !247, size: 1600)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !247, file: !6, line: 863, baseType: !207, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !6, line: 863, baseType: !59, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !6, line: 863, baseType: !59, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !247, file: !6, line: 863, baseType: !19, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !247, file: !6, line: 863, baseType: !101, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !6, line: 863, baseType: !207, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !247, file: !6, line: 863, baseType: !106, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !247, file: !6, line: 863, baseType: !221, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !247, file: !6, line: 863, baseType: !59, size: 8, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !247, file: !6, line: 863, baseType: !207, size: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !247, file: !6, line: 864, baseType: !207, size: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !247, file: !6, line: 865, baseType: !90, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !247, file: !6, line: 866, baseType: !59, size: 8, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !247, file: !6, line: 867, baseType: !90, size: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !247, file: !6, line: 868, baseType: !90, size: 64, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !247, file: !6, line: 869, baseType: !90, size: 64, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !247, file: !6, line: 870, baseType: !119, size: 32, offset: 896)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !247, file: !6, line: 871, baseType: !15, size: 32, offset: 928)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !247, file: !6, line: 872, baseType: !15, size: 32, offset: 960)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !247, file: !6, line: 873, baseType: !15, size: 32, offset: 992)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !247, file: !6, line: 874, baseType: !15, size: 32, offset: 1024)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !247, file: !6, line: 875, baseType: !15, size: 32, offset: 1056)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !247, file: !6, line: 876, baseType: !15, size: 32, offset: 1088)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !247, file: !6, line: 877, baseType: !15, size: 32, offset: 1120)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !247, file: !6, line: 878, baseType: !15, size: 32, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !247, file: !6, line: 879, baseType: !15, size: 32, offset: 1184)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !247, file: !6, line: 880, baseType: !15, size: 32, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !247, file: !6, line: 881, baseType: !15, size: 32, offset: 1248)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !247, file: !6, line: 882, baseType: !15, size: 32, offset: 1280)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !247, file: !6, line: 883, baseType: !15, size: 32, offset: 1312)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !247, file: !6, line: 884, baseType: !19, size: 16, offset: 1344)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !247, file: !6, line: 885, baseType: !59, size: 8, offset: 1360)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !247, file: !6, line: 886, baseType: !59, size: 8, offset: 1368)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !247, file: !6, line: 887, baseType: !59, size: 8, offset: 1376)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !247, file: !6, line: 888, baseType: !284, size: 160, offset: 1384)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 20)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !199, file: !6, line: 916, baseType: !106, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !199, file: !6, line: 917, baseType: !289, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !291)
!291 = !{!292, !300, !313, !322, !331, !344, !358, !370, !382}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !290, file: !6, line: 680, baseType: !293, size: 128)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !294)
!294 = !{!295, !296, !297, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !6, line: 576, baseType: !150, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !293, file: !6, line: 576, baseType: !59, size: 8, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !6, line: 576, baseType: !59, size: 8, offset: 72)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !293, file: !6, line: 576, baseType: !19, size: 16, offset: 80)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !293, file: !6, line: 576, baseType: !19, size: 16, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !290, file: !6, line: 681, baseType: !301, size: 384)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !6, line: 605, baseType: !150, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !6, line: 605, baseType: !59, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !6, line: 605, baseType: !59, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !6, line: 605, baseType: !19, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !6, line: 605, baseType: !19, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !301, file: !6, line: 606, baseType: !19, size: 16, offset: 112)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !301, file: !6, line: 607, baseType: !207, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !301, file: !6, line: 608, baseType: !101, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !301, file: !6, line: 609, baseType: !101, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !301, file: !6, line: 610, baseType: !78, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !290, file: !6, line: 682, baseType: !314, size: 192)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !6, line: 583, baseType: !150, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !6, line: 583, baseType: !59, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !6, line: 583, baseType: !59, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !6, line: 583, baseType: !19, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !6, line: 583, baseType: !19, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !314, file: !6, line: 584, baseType: !50, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !290, file: !6, line: 683, baseType: !323, size: 192)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !6, line: 617, baseType: !150, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !6, line: 617, baseType: !59, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !6, line: 617, baseType: !59, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !6, line: 617, baseType: !19, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !6, line: 617, baseType: !19, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !323, file: !6, line: 618, baseType: !106, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !290, file: !6, line: 684, baseType: !332, size: 448)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !6, line: 622, baseType: !150, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !6, line: 622, baseType: !59, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !6, line: 622, baseType: !59, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !6, line: 622, baseType: !19, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !6, line: 622, baseType: !19, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !332, file: !6, line: 623, baseType: !15, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !332, file: !6, line: 624, baseType: !207, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !332, file: !6, line: 625, baseType: !101, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !332, file: !6, line: 626, baseType: !101, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !332, file: !6, line: 627, baseType: !15, size: 32, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !290, file: !6, line: 685, baseType: !345, size: 512)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !6, line: 591, baseType: !150, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !6, line: 591, baseType: !59, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !6, line: 591, baseType: !59, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !6, line: 591, baseType: !19, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !6, line: 591, baseType: !19, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !345, file: !6, line: 592, baseType: !15, size: 32, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !345, file: !6, line: 593, baseType: !50, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !345, file: !6, line: 594, baseType: !50, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !345, file: !6, line: 595, baseType: !173, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !345, file: !6, line: 596, baseType: !150, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !345, file: !6, line: 597, baseType: !15, size: 32, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !290, file: !6, line: 686, baseType: !359, size: 320)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !6, line: 635, baseType: !150, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !6, line: 635, baseType: !59, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !6, line: 635, baseType: !59, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !6, line: 635, baseType: !19, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !6, line: 635, baseType: !19, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !359, file: !6, line: 636, baseType: !59, size: 8, offset: 112)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !359, file: !6, line: 637, baseType: !173, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !359, file: !6, line: 638, baseType: !50, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !359, file: !6, line: 639, baseType: !78, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !290, file: !6, line: 687, baseType: !371, size: 640)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !6, line: 647, baseType: !150, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !6, line: 647, baseType: !59, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !6, line: 647, baseType: !59, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !6, line: 647, baseType: !19, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !6, line: 647, baseType: !19, size: 16, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !371, file: !6, line: 648, baseType: !379, size: 512, offset: 128)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 512, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !290, file: !6, line: 688, baseType: !383, size: 320)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !6, line: 670, baseType: !150, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !383, file: !6, line: 670, baseType: !59, size: 8, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !383, file: !6, line: 670, baseType: !59, size: 8, offset: 72)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !383, file: !6, line: 670, baseType: !19, size: 16, offset: 80)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !383, file: !6, line: 670, baseType: !19, size: 16, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !383, file: !6, line: 671, baseType: !59, size: 8, offset: 112)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !383, file: !6, line: 672, baseType: !106, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !383, file: !6, line: 673, baseType: !50, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !383, file: !6, line: 674, baseType: !394, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !396)
!396 = !{!397, !403}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !395, file: !6, line: 661, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1061, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402, !15, !150}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !150)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !395, file: !6, line: 662, baseType: !150, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !199, file: !6, line: 918, baseType: !207, size: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !199, file: !6, line: 919, baseType: !15, size: 32, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !174, file: !175, line: 61, baseType: !15, size: 32, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !174, file: !175, line: 62, baseType: !15, size: 32, offset: 1120)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !174, file: !175, line: 63, baseType: !19, size: 16, offset: 1152)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !174, file: !175, line: 64, baseType: !59, size: 8, offset: 1168)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !174, file: !175, line: 66, baseType: !411, size: 2688, offset: 1216)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 2688, elements: !36)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !174, file: !175, line: 67, baseType: !413, size: 3072, offset: 3904)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 3072, elements: !380)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !174, file: !175, line: 68, baseType: !415, size: 576, offset: 6976)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 576, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 9)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !174, file: !175, line: 69, baseType: !137, size: 64, offset: 7552)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !174, file: !175, line: 71, baseType: !101, size: 64, offset: 7616)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !174, file: !175, line: 72, baseType: !137, size: 64, offset: 7680)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !174, file: !175, line: 73, baseType: !289, size: 64, offset: 7744)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !174, file: !175, line: 74, baseType: !106, size: 64, offset: 7808)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !174, file: !175, line: 75, baseType: !50, size: 64, offset: 7872)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !174, file: !175, line: 76, baseType: !106, size: 64, offset: 7936)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !174, file: !175, line: 77, baseType: !207, size: 64, offset: 8000)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !174, file: !175, line: 78, baseType: !50, size: 64, offset: 8064)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !174, file: !175, line: 79, baseType: !106, size: 64, offset: 8128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !174, file: !175, line: 80, baseType: !90, size: 64, offset: 8192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !174, file: !175, line: 81, baseType: !207, size: 64, offset: 8256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !174, file: !175, line: 82, baseType: !431, size: 64, offset: 8320)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !433, file: !6, line: 722, baseType: !15, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !433, file: !6, line: 723, baseType: !15, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !6, line: 724, baseType: !19, size: 16, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !433, file: !6, line: 725, baseType: !59, size: 8, offset: 80)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !433, file: !6, line: 726, baseType: !59, size: 8, offset: 88)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !6, line: 727, baseType: !59, size: 8, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !174, file: !175, line: 83, baseType: !207, size: 64, offset: 8384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !174, file: !175, line: 84, baseType: !50, size: 64, offset: 8448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !174, file: !175, line: 85, baseType: !289, size: 64, offset: 8512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !174, file: !175, line: 86, baseType: !50, size: 64, offset: 8576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !174, file: !175, line: 87, baseType: !289, size: 64, offset: 8640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !174, file: !175, line: 88, baseType: !207, size: 64, offset: 8704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !174, file: !175, line: 89, baseType: !207, size: 64, offset: 8768)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !174, file: !175, line: 90, baseType: !449, size: 64, offset: 8832)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !174, file: !175, line: 91, baseType: !451, size: 64, offset: 8896)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!13, !173, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !174, file: !175, line: 92, baseType: !457, size: 64, offset: 8960)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !170)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !166, file: !52, line: 153, baseType: !50, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !152, file: !52, line: 156, baseType: !15, size: 32, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !152, file: !52, line: 157, baseType: !126, size: 16, offset: 416)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !152, file: !52, line: 158, baseType: !59, size: 8, offset: 432)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !51, file: !52, line: 377, baseType: !463, size: 576)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !52, line: 122, size: 576, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !52, line: 123, baseType: !50, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !52, line: 123, baseType: !59, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !52, line: 123, baseType: !59, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !52, line: 123, baseType: !19, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !52, line: 123, baseType: !59, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !463, file: !52, line: 123, baseType: !59, size: 8, offset: 104)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !463, file: !52, line: 124, baseType: !19, size: 16, offset: 112)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !463, file: !52, line: 125, baseType: !150, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !463, file: !52, line: 126, baseType: !78, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !463, file: !52, line: 127, baseType: !449, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !463, file: !52, line: 128, baseType: !50, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !52, line: 129, baseType: !50, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !463, file: !52, line: 130, baseType: !106, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !463, file: !52, line: 131, baseType: !59, size: 8, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !51, file: !52, line: 378, baseType: !480, size: 512)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !52, line: 134, size: 512, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !493, !494}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !52, line: 135, baseType: !50, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !52, line: 135, baseType: !59, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !52, line: 135, baseType: !59, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !52, line: 135, baseType: !19, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !52, line: 135, baseType: !59, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !480, file: !52, line: 135, baseType: !59, size: 8, offset: 104)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !52, line: 136, baseType: !106, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !52, line: 137, baseType: !50, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !52, line: 138, baseType: !50, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !480, file: !52, line: 139, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !78)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !480, file: !52, line: 140, baseType: !15, size: 32, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !480, file: !52, line: 141, baseType: !150, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !51, file: !52, line: 379, baseType: !496, size: 320)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !52, line: 185, size: 320, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !507}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !496, file: !52, line: 186, baseType: !50, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !496, file: !52, line: 186, baseType: !59, size: 8, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !496, file: !52, line: 186, baseType: !59, size: 8, offset: 72)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !496, file: !52, line: 186, baseType: !19, size: 16, offset: 80)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !52, line: 186, baseType: !59, size: 8, offset: 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !496, file: !52, line: 186, baseType: !504, size: 128, offset: 128)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 2)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !496, file: !52, line: 186, baseType: !50, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !51, file: !52, line: 380, baseType: !509, size: 384)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !52, line: 188, size: 384, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !509, file: !52, line: 189, baseType: !50, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !509, file: !52, line: 189, baseType: !59, size: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !509, file: !52, line: 189, baseType: !59, size: 8, offset: 72)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !509, file: !52, line: 189, baseType: !19, size: 16, offset: 80)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !52, line: 189, baseType: !59, size: 8, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !52, line: 190, baseType: !504, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !52, line: 190, baseType: !50, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !509, file: !52, line: 190, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !521)
!521 = !{!522, !523, !524, !525, !533, !548, !580, !581, !582, !583, !584, !585}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !520, file: !6, line: 481, baseType: !106, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !520, file: !6, line: 482, baseType: !519, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !6, line: 483, baseType: !519, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !520, file: !6, line: 484, baseType: !526, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !528)
!528 = !{!529, !530, !531, !532}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !527, file: !6, line: 498, baseType: !526, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !6, line: 499, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !527, file: !6, line: 500, baseType: !519, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !527, file: !6, line: 501, baseType: !15, size: 32, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !520, file: !6, line: 485, baseType: !534, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !536)
!536 = !{!537, !542, !543, !544, !545, !546, !547}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !535, file: !6, line: 467, baseType: !538, size: 128)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !538, file: !6, line: 460, baseType: !59, size: 8)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !538, file: !6, line: 461, baseType: !78, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !535, file: !6, line: 468, baseType: !538, size: 128, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !535, file: !6, line: 469, baseType: !19, size: 16, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !535, file: !6, line: 470, baseType: !59, size: 8, offset: 272)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !535, file: !6, line: 471, baseType: !59, size: 8, offset: 280)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !535, file: !6, line: 472, baseType: !59, size: 8, offset: 288)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !535, file: !6, line: 473, baseType: !59, size: 8, offset: 296)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !520, file: !6, line: 486, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !551)
!551 = !{!552, !575, !576, !577, !578, !579}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !550, file: !6, line: 449, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !554)
!554 = !{!555, !556, !569}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !553, file: !6, line: 439, baseType: !106, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !553, file: !6, line: 440, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !559)
!559 = !{!560, !565, !566, !567, !568}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !558, file: !6, line: 420, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1058, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!15, !402, !15, !150}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !558, file: !6, line: 421, baseType: !150, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !558, file: !6, line: 422, baseType: !106, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !558, file: !6, line: 423, baseType: !59, size: 8, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !558, file: !6, line: 424, baseType: !59, size: 8, offset: 200)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !553, file: !6, line: 441, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !571, file: !6, line: 430, baseType: !106, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !571, file: !6, line: 431, baseType: !570, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !550, file: !6, line: 450, baseType: !534, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !6, line: 451, baseType: !59, size: 8, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !550, file: !6, line: 452, baseType: !59, size: 8, offset: 136)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !550, file: !6, line: 453, baseType: !59, size: 8, offset: 144)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !550, file: !6, line: 454, baseType: !59, size: 8, offset: 152)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !520, file: !6, line: 487, baseType: !78, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !520, file: !6, line: 488, baseType: !15, size: 32, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !520, file: !6, line: 489, baseType: !19, size: 16, offset: 480)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !520, file: !6, line: 490, baseType: !19, size: 16, offset: 496)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !520, file: !6, line: 491, baseType: !59, size: 8, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !520, file: !6, line: 492, baseType: !59, size: 8, offset: 520)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !51, file: !52, line: 381, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !52, line: 193, size: 384, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !52, line: 194, baseType: !50, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !52, line: 194, baseType: !59, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !52, line: 194, baseType: !59, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !52, line: 194, baseType: !19, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !52, line: 194, baseType: !59, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !52, line: 194, baseType: !504, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !52, line: 194, baseType: !50, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !587, file: !52, line: 194, baseType: !15, size: 32, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !587, file: !52, line: 195, baseType: !15, size: 32, offset: 352)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !51, file: !52, line: 382, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !52, line: 198, size: 384, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !52, line: 199, baseType: !50, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !52, line: 199, baseType: !59, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !52, line: 199, baseType: !59, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !52, line: 199, baseType: !19, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !52, line: 199, baseType: !59, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !599, file: !52, line: 201, baseType: !59, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !599, file: !52, line: 202, baseType: !59, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !599, file: !52, line: 203, baseType: !504, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !599, file: !52, line: 203, baseType: !50, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !599, file: !52, line: 203, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !78)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !51, file: !52, line: 383, baseType: !613, size: 320)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !52, line: 206, size: 320, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !52, line: 207, baseType: !50, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !52, line: 207, baseType: !59, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !52, line: 207, baseType: !59, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !52, line: 207, baseType: !19, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !52, line: 207, baseType: !59, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !613, file: !52, line: 207, baseType: !504, size: 128, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !613, file: !52, line: 207, baseType: !50, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !51, file: !52, line: 384, baseType: !623, size: 384)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !52, line: 234, size: 384, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !52, line: 235, baseType: !50, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !52, line: 235, baseType: !59, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !52, line: 235, baseType: !59, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !52, line: 235, baseType: !19, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !52, line: 235, baseType: !59, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !623, file: !52, line: 235, baseType: !59, size: 8, offset: 104)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !623, file: !52, line: 235, baseType: !59, size: 8, offset: 112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !623, file: !52, line: 235, baseType: !59, size: 8, offset: 120)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !52, line: 235, baseType: !106, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !623, file: !52, line: 235, baseType: !15, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !623, file: !52, line: 235, baseType: !15, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !623, file: !52, line: 235, baseType: !15, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !623, file: !52, line: 235, baseType: !59, size: 8, offset: 288)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !623, file: !52, line: 235, baseType: !59, size: 8, offset: 296)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !623, file: !52, line: 235, baseType: !50, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !51, file: !52, line: 385, baseType: !641, size: 576)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !52, line: 238, size: 576, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !52, line: 239, baseType: !50, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !52, line: 239, baseType: !59, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !52, line: 239, baseType: !59, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !52, line: 239, baseType: !19, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !52, line: 239, baseType: !59, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !641, file: !52, line: 239, baseType: !59, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !641, file: !52, line: 239, baseType: !59, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !641, file: !52, line: 239, baseType: !59, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !52, line: 239, baseType: !106, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !641, file: !52, line: 239, baseType: !15, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !641, file: !52, line: 239, baseType: !15, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !52, line: 239, baseType: !15, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !641, file: !52, line: 239, baseType: !59, size: 8, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !641, file: !52, line: 239, baseType: !59, size: 8, offset: 296)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !641, file: !52, line: 239, baseType: !19, size: 16, offset: 304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !641, file: !52, line: 240, baseType: !50, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !641, file: !52, line: 241, baseType: !101, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !641, file: !52, line: 242, baseType: !19, size: 16, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !641, file: !52, line: 243, baseType: !101, size: 64, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !51, file: !52, line: 386, baseType: !663, size: 384)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !52, line: 263, size: 384, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !663, file: !52, line: 264, baseType: !50, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !663, file: !52, line: 264, baseType: !19, size: 16, offset: 80)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 104)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 112)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 120)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !663, file: !52, line: 264, baseType: !106, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !663, file: !52, line: 264, baseType: !15, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !663, file: !52, line: 264, baseType: !15, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !663, file: !52, line: 264, baseType: !15, size: 32, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 296)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !663, file: !52, line: 264, baseType: !59, size: 8, offset: 304)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !663, file: !52, line: 265, baseType: !50, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !51, file: !52, line: 387, baseType: !682, size: 448)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !52, line: 246, size: 448, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !682, file: !52, line: 247, baseType: !50, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !52, line: 247, baseType: !59, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !52, line: 247, baseType: !59, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !682, file: !52, line: 247, baseType: !19, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !52, line: 247, baseType: !59, size: 8, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !682, file: !52, line: 247, baseType: !59, size: 8, offset: 104)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !682, file: !52, line: 247, baseType: !59, size: 8, offset: 112)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !682, file: !52, line: 247, baseType: !59, size: 8, offset: 120)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !682, file: !52, line: 247, baseType: !106, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !682, file: !52, line: 247, baseType: !15, size: 32, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !682, file: !52, line: 247, baseType: !15, size: 32, offset: 224)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !682, file: !52, line: 247, baseType: !15, size: 32, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !682, file: !52, line: 247, baseType: !59, size: 8, offset: 288)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !682, file: !52, line: 247, baseType: !59, size: 8, offset: 296)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !682, file: !52, line: 247, baseType: !50, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !682, file: !52, line: 248, baseType: !50, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !51, file: !52, line: 388, baseType: !701, size: 448)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !52, line: 251, size: 448, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !701, file: !52, line: 252, baseType: !50, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !701, file: !52, line: 252, baseType: !59, size: 8, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !701, file: !52, line: 252, baseType: !59, size: 8, offset: 72)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !701, file: !52, line: 252, baseType: !19, size: 16, offset: 80)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !52, line: 252, baseType: !59, size: 8, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !701, file: !52, line: 252, baseType: !59, size: 8, offset: 104)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !701, file: !52, line: 252, baseType: !59, size: 8, offset: 112)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !701, file: !52, line: 252, baseType: !59, size: 8, offset: 120)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !52, line: 252, baseType: !106, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !701, file: !52, line: 252, baseType: !15, size: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !701, file: !52, line: 252, baseType: !15, size: 32, offset: 224)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !701, file: !52, line: 252, baseType: !15, size: 32, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !701, file: !52, line: 252, baseType: !59, size: 8, offset: 288)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !701, file: !52, line: 252, baseType: !59, size: 8, offset: 296)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !701, file: !52, line: 257, baseType: !50, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !701, file: !52, line: 258, baseType: !50, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !51, file: !52, line: 389, baseType: !720, size: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !52, line: 274, size: 512, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !720, file: !52, line: 275, baseType: !50, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !52, line: 275, baseType: !59, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !52, line: 275, baseType: !59, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !720, file: !52, line: 275, baseType: !19, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !52, line: 275, baseType: !59, size: 8, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !52, line: 275, baseType: !106, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !720, file: !52, line: 276, baseType: !15, size: 32, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !720, file: !52, line: 277, baseType: !398, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !720, file: !52, line: 278, baseType: !150, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !52, line: 279, baseType: !504, size: 128, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !51, file: !52, line: 390, baseType: !733, size: 576)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !52, line: 282, size: 576, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !748, !749, !750, !751, !757, !758}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !52, line: 283, baseType: !50, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !52, line: 283, baseType: !59, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !52, line: 283, baseType: !59, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !52, line: 283, baseType: !19, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !52, line: 283, baseType: !59, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !733, file: !52, line: 283, baseType: !59, size: 8, offset: 104)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !733, file: !52, line: 284, baseType: !59, size: 8, offset: 112)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !733, file: !52, line: 285, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1093, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!13, !15, !492, !15, !747, !150, !150}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !52, line: 286, baseType: !106, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !733, file: !52, line: 287, baseType: !150, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !733, file: !52, line: 288, baseType: !150, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !733, file: !52, line: 289, baseType: !752, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1126, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!13, !402, !15, !150, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !733, file: !52, line: 290, baseType: !50, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !733, file: !52, line: 291, baseType: !50, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !51, file: !52, line: 391, baseType: !760, size: 512)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !52, line: 309, size: 512, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !52, line: 310, baseType: !50, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !52, line: 310, baseType: !59, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !52, line: 310, baseType: !59, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !52, line: 310, baseType: !19, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !52, line: 310, baseType: !59, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !760, file: !52, line: 310, baseType: !59, size: 8, offset: 104)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !760, file: !52, line: 311, baseType: !59, size: 8, offset: 112)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !760, file: !52, line: 312, baseType: !59, size: 8, offset: 120)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !760, file: !52, line: 313, baseType: !150, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !760, file: !52, line: 314, baseType: !106, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !760, file: !52, line: 315, baseType: !137, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !760, file: !52, line: 316, baseType: !101, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !760, file: !52, line: 317, baseType: !101, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !760, file: !52, line: 318, baseType: !15, size: 32, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !51, file: !52, line: 392, baseType: !777, size: 448)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !52, line: 342, size: 448, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !52, line: 343, baseType: !50, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !52, line: 343, baseType: !59, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !52, line: 343, baseType: !59, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !52, line: 343, baseType: !19, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !52, line: 343, baseType: !59, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !777, file: !52, line: 343, baseType: !106, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !777, file: !52, line: 344, baseType: !106, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !777, file: !52, line: 345, baseType: !150, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !777, file: !52, line: 346, baseType: !101, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !777, file: !52, line: 347, baseType: !15, size: 32, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !51, file: !52, line: 393, baseType: !790, size: 256)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !52, line: 352, size: 256, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !802}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !52, line: 353, baseType: !50, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !52, line: 353, baseType: !59, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !52, line: 353, baseType: !59, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !52, line: 353, baseType: !19, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !52, line: 353, baseType: !59, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !790, file: !52, line: 353, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1064, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !402, !150}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !790, file: !52, line: 354, baseType: !150, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !51, file: !52, line: 394, baseType: !804, size: 192)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !52, line: 359, size: 192, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !804, file: !52, line: 360, baseType: !50, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !804, file: !52, line: 360, baseType: !59, size: 8, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !52, line: 360, baseType: !59, size: 8, offset: 72)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !804, file: !52, line: 360, baseType: !19, size: 16, offset: 80)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !52, line: 360, baseType: !59, size: 8, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !804, file: !52, line: 360, baseType: !50, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !51, file: !52, line: 401, baseType: !107, size: 384)
!813 = !{!814, !815, !816, !817}
!814 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !47, file: !3, line: 146, type: !50)
!815 = !DILocalVariable(name: "extra_desc", scope: !47, file: !3, line: 148, type: !50)
!816 = !DILocalVariable(name: "node", scope: !47, file: !3, line: 149, type: !106)
!817 = !DILocalVariable(name: "status", scope: !47, file: !3, line: 150, type: !13)
!818 = !DILocation(line: 146, column: 63, scope: !47)
!819 = !DILocation(line: 148, column: 2, scope: !47)
!820 = !DILocation(line: 148, column: 29, scope: !47)
!821 = !DILocation(line: 149, column: 2, scope: !47)
!822 = !DILocation(line: 149, column: 30, scope: !47)
!823 = !DILocation(line: 150, column: 2, scope: !47)
!824 = !DILocation(line: 150, column: 14, scope: !47)
!825 = !DILocation(line: 154, column: 6, scope: !826)
!826 = distinct !DILexicalBlock(scope: !47, file: !3, line: 154, column: 6)
!827 = !DILocation(line: 154, column: 23, scope: !826)
!828 = !DILocation(line: 154, column: 29, scope: !826)
!829 = !DILocation(line: 154, column: 6, scope: !47)
!830 = !DILocation(line: 155, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !826, file: !3, line: 154, column: 50)
!832 = !DILocation(line: 160, column: 44, scope: !47)
!833 = !DILocation(line: 160, column: 15, scope: !47)
!834 = !DILocation(line: 160, column: 13, scope: !47)
!835 = !DILocation(line: 161, column: 9, scope: !47)
!836 = !DILocation(line: 161, column: 32, scope: !47)
!837 = !DILocation(line: 161, column: 7, scope: !47)
!838 = !DILocation(line: 171, column: 37, scope: !47)
!839 = !DILocation(line: 171, column: 43, scope: !47)
!840 = !DILocation(line: 171, column: 49, scope: !47)
!841 = !DILocation(line: 172, column: 9, scope: !47)
!842 = !DILocation(line: 172, column: 27, scope: !47)
!843 = !DILocation(line: 173, column: 9, scope: !47)
!844 = !DILocation(line: 173, column: 27, scope: !47)
!845 = !DILocation(line: 171, column: 11, scope: !47)
!846 = !DILocation(line: 171, column: 9, scope: !47)
!847 = !DILocation(line: 174, column: 2, scope: !47)
!848 = !DILocation(line: 175, column: 1, scope: !47)
!849 = !DISubprogram(name: "acpi_ns_get_secondary_object", scope: !850, file: !850, line: 302, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!850 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!851 = !DISubroutineType(types: !852)
!852 = !{!50, !50}
!853 = distinct !DISubprogram(name: "acpi_ds_execute_arguments", scope: !3, file: !3, line: 43, type: !854, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{!13, !106, !106, !15, !101}
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864}
!857 = !DILocalVariable(name: "node", arg: 1, scope: !853, file: !3, line: 43, type: !106)
!858 = !DILocalVariable(name: "scope_node", arg: 2, scope: !853, file: !3, line: 44, type: !106)
!859 = !DILocalVariable(name: "aml_length", arg: 3, scope: !853, file: !3, line: 45, type: !15)
!860 = !DILocalVariable(name: "aml_start", arg: 4, scope: !853, file: !3, line: 45, type: !101)
!861 = !DILocalVariable(name: "status", scope: !853, file: !3, line: 47, type: !13)
!862 = !DILocalVariable(name: "op", scope: !853, file: !3, line: 48, type: !207)
!863 = !DILocalVariable(name: "walk_state", scope: !853, file: !3, line: 49, type: !173)
!864 = !DILabel(scope: !853, name: "cleanup", file: !3, line: 127)
!865 = !DILocation(line: 43, column: 55, scope: !853)
!866 = !DILocation(line: 44, column: 34, scope: !853)
!867 = !DILocation(line: 45, column: 10, scope: !853)
!868 = !DILocation(line: 45, column: 26, scope: !853)
!869 = !DILocation(line: 47, column: 2, scope: !853)
!870 = !DILocation(line: 47, column: 14, scope: !853)
!871 = !DILocation(line: 48, column: 2, scope: !853)
!872 = !DILocation(line: 48, column: 27, scope: !853)
!873 = !DILocation(line: 49, column: 2, scope: !853)
!874 = !DILocation(line: 49, column: 26, scope: !853)
!875 = !DILocation(line: 55, column: 49, scope: !853)
!876 = !DILocation(line: 55, column: 7, scope: !853)
!877 = !DILocation(line: 55, column: 5, scope: !853)
!878 = !DILocation(line: 56, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !853, file: !3, line: 56, column: 6)
!880 = !DILocation(line: 56, column: 6, scope: !853)
!881 = !DILocation(line: 57, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 56, column: 11)
!883 = !DILocation(line: 62, column: 20, scope: !853)
!884 = !DILocation(line: 62, column: 2, scope: !853)
!885 = !DILocation(line: 62, column: 13, scope: !853)
!886 = !DILocation(line: 62, column: 18, scope: !853)
!887 = !DILocation(line: 66, column: 15, scope: !853)
!888 = !DILocation(line: 66, column: 13, scope: !853)
!889 = !DILocation(line: 67, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !853, file: !3, line: 67, column: 6)
!891 = !DILocation(line: 67, column: 6, scope: !853)
!892 = !DILocation(line: 68, column: 10, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 67, column: 19)
!894 = !DILocation(line: 69, column: 3, scope: !893)
!895 = !DILocation(line: 72, column: 33, scope: !853)
!896 = !DILocation(line: 72, column: 45, scope: !853)
!897 = !DILocation(line: 72, column: 55, scope: !853)
!898 = !DILocation(line: 73, column: 12, scope: !853)
!899 = !DILocation(line: 72, column: 11, scope: !853)
!900 = !DILocation(line: 72, column: 9, scope: !853)
!901 = !DILocation(line: 74, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !853, file: !3, line: 74, column: 6)
!903 = !DILocation(line: 74, column: 6, scope: !853)
!904 = !DILocation(line: 75, column: 29, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !3, line: 74, column: 28)
!906 = !DILocation(line: 75, column: 3, scope: !905)
!907 = !DILocation(line: 76, column: 3, scope: !905)
!908 = !DILocation(line: 81, column: 2, scope: !853)
!909 = !DILocation(line: 81, column: 14, scope: !853)
!910 = !DILocation(line: 81, column: 26, scope: !853)
!911 = !DILocation(line: 82, column: 30, scope: !853)
!912 = !DILocation(line: 82, column: 2, scope: !853)
!913 = !DILocation(line: 82, column: 14, scope: !853)
!914 = !DILocation(line: 82, column: 28, scope: !853)
!915 = !DILocation(line: 86, column: 29, scope: !853)
!916 = !DILocation(line: 86, column: 11, scope: !853)
!917 = !DILocation(line: 86, column: 9, scope: !853)
!918 = !DILocation(line: 87, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !853, file: !3, line: 87, column: 6)
!920 = !DILocation(line: 87, column: 6, scope: !853)
!921 = !DILocation(line: 88, column: 3, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !3, line: 87, column: 28)
!923 = !DILocation(line: 93, column: 20, scope: !853)
!924 = !DILocation(line: 93, column: 2, scope: !853)
!925 = !DILocation(line: 93, column: 13, scope: !853)
!926 = !DILocation(line: 93, column: 18, scope: !853)
!927 = !DILocation(line: 94, column: 28, scope: !853)
!928 = !DILocation(line: 94, column: 2, scope: !853)
!929 = !DILocation(line: 98, column: 49, scope: !853)
!930 = !DILocation(line: 98, column: 7, scope: !853)
!931 = !DILocation(line: 98, column: 5, scope: !853)
!932 = !DILocation(line: 99, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !853, file: !3, line: 99, column: 6)
!934 = !DILocation(line: 99, column: 6, scope: !853)
!935 = !DILocation(line: 100, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !3, line: 99, column: 11)
!937 = !DILocation(line: 103, column: 20, scope: !853)
!938 = !DILocation(line: 103, column: 2, scope: !853)
!939 = !DILocation(line: 103, column: 13, scope: !853)
!940 = !DILocation(line: 103, column: 18, scope: !853)
!941 = !DILocation(line: 107, column: 15, scope: !853)
!942 = !DILocation(line: 107, column: 13, scope: !853)
!943 = !DILocation(line: 108, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !853, file: !3, line: 108, column: 6)
!945 = !DILocation(line: 108, column: 6, scope: !853)
!946 = !DILocation(line: 109, column: 10, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 108, column: 19)
!948 = !DILocation(line: 110, column: 3, scope: !947)
!949 = !DILocation(line: 115, column: 33, scope: !853)
!950 = !DILocation(line: 115, column: 45, scope: !853)
!951 = !DILocation(line: 115, column: 55, scope: !853)
!952 = !DILocation(line: 116, column: 12, scope: !853)
!953 = !DILocation(line: 115, column: 11, scope: !853)
!954 = !DILocation(line: 115, column: 9, scope: !853)
!955 = !DILocation(line: 117, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !853, file: !3, line: 117, column: 6)
!957 = !DILocation(line: 117, column: 6, scope: !853)
!958 = !DILocation(line: 118, column: 29, scope: !959)
!959 = distinct !DILexicalBlock(scope: !956, file: !3, line: 117, column: 28)
!960 = !DILocation(line: 118, column: 3, scope: !959)
!961 = !DILocation(line: 119, column: 3, scope: !959)
!962 = !DILocation(line: 124, column: 30, scope: !853)
!963 = !DILocation(line: 124, column: 2, scope: !853)
!964 = !DILocation(line: 124, column: 14, scope: !853)
!965 = !DILocation(line: 124, column: 28, scope: !853)
!966 = !DILocation(line: 125, column: 29, scope: !853)
!967 = !DILocation(line: 125, column: 11, scope: !853)
!968 = !DILocation(line: 125, column: 9, scope: !853)
!969 = !DILocation(line: 125, column: 2, scope: !853)
!970 = !DILocation(line: 127, column: 1, scope: !853)
!971 = !DILocation(line: 128, column: 28, scope: !853)
!972 = !DILocation(line: 128, column: 2, scope: !853)
!973 = !DILocation(line: 129, column: 2, scope: !853)
!974 = !DILocation(line: 130, column: 1, scope: !853)
!975 = distinct !DISubprogram(name: "acpi_ds_get_bank_field_arguments", scope: !3, file: !3, line: 191, type: !48, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!976 = !{!977, !978, !979, !980}
!977 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !975, file: !3, line: 191, type: !50)
!978 = !DILocalVariable(name: "extra_desc", scope: !975, file: !3, line: 193, type: !50)
!979 = !DILocalVariable(name: "node", scope: !975, file: !3, line: 194, type: !106)
!980 = !DILocalVariable(name: "status", scope: !975, file: !3, line: 195, type: !13)
!981 = !DILocation(line: 191, column: 61, scope: !975)
!982 = !DILocation(line: 193, column: 2, scope: !975)
!983 = !DILocation(line: 193, column: 29, scope: !975)
!984 = !DILocation(line: 194, column: 2, scope: !975)
!985 = !DILocation(line: 194, column: 30, scope: !975)
!986 = !DILocation(line: 195, column: 2, scope: !975)
!987 = !DILocation(line: 195, column: 14, scope: !975)
!988 = !DILocation(line: 199, column: 6, scope: !989)
!989 = distinct !DILexicalBlock(scope: !975, file: !3, line: 199, column: 6)
!990 = !DILocation(line: 199, column: 23, scope: !989)
!991 = !DILocation(line: 199, column: 29, scope: !989)
!992 = !DILocation(line: 199, column: 6, scope: !975)
!993 = !DILocation(line: 200, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !3, line: 199, column: 50)
!995 = !DILocation(line: 205, column: 44, scope: !975)
!996 = !DILocation(line: 205, column: 15, scope: !975)
!997 = !DILocation(line: 205, column: 13, scope: !975)
!998 = !DILocation(line: 206, column: 9, scope: !975)
!999 = !DILocation(line: 206, column: 30, scope: !975)
!1000 = !DILocation(line: 206, column: 7, scope: !975)
!1001 = !DILocation(line: 216, column: 37, scope: !975)
!1002 = !DILocation(line: 216, column: 43, scope: !975)
!1003 = !DILocation(line: 216, column: 49, scope: !975)
!1004 = !DILocation(line: 217, column: 9, scope: !975)
!1005 = !DILocation(line: 217, column: 27, scope: !975)
!1006 = !DILocation(line: 218, column: 9, scope: !975)
!1007 = !DILocation(line: 218, column: 27, scope: !975)
!1008 = !DILocation(line: 216, column: 11, scope: !975)
!1009 = !DILocation(line: 216, column: 9, scope: !975)
!1010 = !DILocation(line: 219, column: 6, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !975, file: !3, line: 219, column: 6)
!1012 = !DILocation(line: 219, column: 6, scope: !975)
!1013 = !DILocation(line: 220, column: 3, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 219, column: 28)
!1015 = !DILocation(line: 223, column: 37, scope: !975)
!1016 = !DILocation(line: 223, column: 54, scope: !975)
!1017 = !DILocation(line: 224, column: 9, scope: !975)
!1018 = !DILocation(line: 224, column: 26, scope: !975)
!1019 = !DILocation(line: 225, column: 9, scope: !975)
!1020 = !DILocation(line: 225, column: 26, scope: !975)
!1021 = !DILocation(line: 225, column: 34, scope: !975)
!1022 = !DILocation(line: 223, column: 11, scope: !975)
!1023 = !DILocation(line: 223, column: 9, scope: !975)
!1024 = !DILocation(line: 226, column: 2, scope: !975)
!1025 = !DILocation(line: 227, column: 1, scope: !975)
!1026 = !DISubprogram(name: "acpi_ut_add_address_range", scope: !1027, file: !1027, line: 689, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!13, !1030, !492, !15, !106}
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !14, line: 814, baseType: !59)
!1031 = distinct !DISubprogram(name: "acpi_ds_get_buffer_arguments", scope: !3, file: !3, line: 242, type: !48, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1031, file: !3, line: 242, type: !50)
!1034 = !DILocalVariable(name: "node", scope: !1031, file: !3, line: 244, type: !106)
!1035 = !DILocalVariable(name: "status", scope: !1031, file: !3, line: 245, type: !13)
!1036 = !DILocation(line: 242, column: 69, scope: !1031)
!1037 = !DILocation(line: 244, column: 2, scope: !1031)
!1038 = !DILocation(line: 244, column: 30, scope: !1031)
!1039 = !DILocation(line: 245, column: 2, scope: !1031)
!1040 = !DILocation(line: 245, column: 14, scope: !1031)
!1041 = !DILocation(line: 249, column: 6, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 249, column: 6)
!1043 = !DILocation(line: 249, column: 23, scope: !1042)
!1044 = !DILocation(line: 249, column: 29, scope: !1042)
!1045 = !DILocation(line: 249, column: 6, scope: !1031)
!1046 = !DILocation(line: 250, column: 3, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 249, column: 50)
!1048 = !DILocation(line: 255, column: 9, scope: !1031)
!1049 = !DILocation(line: 255, column: 26, scope: !1031)
!1050 = !DILocation(line: 255, column: 7, scope: !1031)
!1051 = !DILocation(line: 256, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 256, column: 6)
!1053 = !DILocation(line: 256, column: 6, scope: !1031)
!1054 = !DILocation(line: 257, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 256, column: 13)
!1056 = !DILocation(line: 260, column: 3, scope: !1055)
!1057 = !DILocation(line: 267, column: 37, scope: !1031)
!1058 = !DILocation(line: 267, column: 43, scope: !1031)
!1059 = !DILocation(line: 268, column: 9, scope: !1031)
!1060 = !DILocation(line: 268, column: 26, scope: !1031)
!1061 = !DILocation(line: 269, column: 9, scope: !1031)
!1062 = !DILocation(line: 269, column: 26, scope: !1031)
!1063 = !DILocation(line: 267, column: 11, scope: !1031)
!1064 = !DILocation(line: 267, column: 9, scope: !1031)
!1065 = !DILocation(line: 270, column: 2, scope: !1031)
!1066 = !DILocation(line: 271, column: 1, scope: !1031)
!1067 = !DISubprogram(name: "acpi_error", scope: !1068, file: !1068, line: 901, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1068 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1071, !15, !1071, null}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1072 = distinct !DISubprogram(name: "acpi_ds_get_package_arguments", scope: !3, file: !3, line: 286, type: !48, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1072, file: !3, line: 286, type: !50)
!1075 = !DILocalVariable(name: "node", scope: !1072, file: !3, line: 288, type: !106)
!1076 = !DILocalVariable(name: "status", scope: !1072, file: !3, line: 289, type: !13)
!1077 = !DILocation(line: 286, column: 70, scope: !1072)
!1078 = !DILocation(line: 288, column: 2, scope: !1072)
!1079 = !DILocation(line: 288, column: 30, scope: !1072)
!1080 = !DILocation(line: 289, column: 2, scope: !1072)
!1081 = !DILocation(line: 289, column: 14, scope: !1072)
!1082 = !DILocation(line: 293, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 293, column: 6)
!1084 = !DILocation(line: 293, column: 23, scope: !1083)
!1085 = !DILocation(line: 293, column: 29, scope: !1083)
!1086 = !DILocation(line: 293, column: 6, scope: !1072)
!1087 = !DILocation(line: 294, column: 3, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 293, column: 50)
!1089 = !DILocation(line: 299, column: 9, scope: !1072)
!1090 = !DILocation(line: 299, column: 27, scope: !1072)
!1091 = !DILocation(line: 299, column: 7, scope: !1072)
!1092 = !DILocation(line: 300, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 300, column: 6)
!1094 = !DILocation(line: 300, column: 6, scope: !1072)
!1095 = !DILocation(line: 301, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 300, column: 13)
!1097 = !DILocation(line: 304, column: 3, scope: !1096)
!1098 = !DILocation(line: 312, column: 37, scope: !1072)
!1099 = !DILocation(line: 312, column: 43, scope: !1072)
!1100 = !DILocation(line: 313, column: 9, scope: !1072)
!1101 = !DILocation(line: 313, column: 27, scope: !1072)
!1102 = !DILocation(line: 314, column: 9, scope: !1072)
!1103 = !DILocation(line: 314, column: 27, scope: !1072)
!1104 = !DILocation(line: 312, column: 11, scope: !1072)
!1105 = !DILocation(line: 312, column: 9, scope: !1072)
!1106 = !DILocation(line: 316, column: 2, scope: !1072)
!1107 = !DILocation(line: 317, column: 1, scope: !1072)
!1108 = distinct !DISubprogram(name: "acpi_ds_get_region_arguments", scope: !3, file: !3, line: 332, type: !48, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1109)
!1109 = !{!1110, !1111, !1112, !1113}
!1110 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1108, file: !3, line: 332, type: !50)
!1111 = !DILocalVariable(name: "node", scope: !1108, file: !3, line: 334, type: !106)
!1112 = !DILocalVariable(name: "status", scope: !1108, file: !3, line: 335, type: !13)
!1113 = !DILocalVariable(name: "extra_desc", scope: !1108, file: !3, line: 336, type: !50)
!1114 = !DILocation(line: 332, column: 69, scope: !1108)
!1115 = !DILocation(line: 334, column: 2, scope: !1108)
!1116 = !DILocation(line: 334, column: 30, scope: !1108)
!1117 = !DILocation(line: 335, column: 2, scope: !1108)
!1118 = !DILocation(line: 335, column: 14, scope: !1108)
!1119 = !DILocation(line: 336, column: 2, scope: !1108)
!1120 = !DILocation(line: 336, column: 29, scope: !1108)
!1121 = !DILocation(line: 340, column: 6, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 340, column: 6)
!1123 = !DILocation(line: 340, column: 23, scope: !1122)
!1124 = !DILocation(line: 340, column: 29, scope: !1122)
!1125 = !DILocation(line: 340, column: 6, scope: !1108)
!1126 = !DILocation(line: 341, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 340, column: 50)
!1128 = !DILocation(line: 344, column: 44, scope: !1108)
!1129 = !DILocation(line: 344, column: 15, scope: !1108)
!1130 = !DILocation(line: 344, column: 13, scope: !1108)
!1131 = !DILocation(line: 345, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 345, column: 6)
!1133 = !DILocation(line: 345, column: 6, scope: !1108)
!1134 = !DILocation(line: 346, column: 3, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 345, column: 19)
!1136 = !DILocation(line: 351, column: 9, scope: !1108)
!1137 = !DILocation(line: 351, column: 26, scope: !1108)
!1138 = !DILocation(line: 351, column: 7, scope: !1108)
!1139 = !DILocation(line: 363, column: 37, scope: !1108)
!1140 = !DILocation(line: 363, column: 43, scope: !1108)
!1141 = !DILocation(line: 363, column: 61, scope: !1108)
!1142 = !DILocation(line: 364, column: 9, scope: !1108)
!1143 = !DILocation(line: 364, column: 27, scope: !1108)
!1144 = !DILocation(line: 365, column: 9, scope: !1108)
!1145 = !DILocation(line: 365, column: 27, scope: !1108)
!1146 = !DILocation(line: 363, column: 11, scope: !1108)
!1147 = !DILocation(line: 363, column: 9, scope: !1108)
!1148 = !DILocation(line: 366, column: 6, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 366, column: 6)
!1150 = !DILocation(line: 366, column: 6, scope: !1108)
!1151 = !DILocation(line: 367, column: 3, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 366, column: 28)
!1153 = !DILocation(line: 370, column: 37, scope: !1108)
!1154 = !DILocation(line: 370, column: 54, scope: !1108)
!1155 = !DILocation(line: 371, column: 9, scope: !1108)
!1156 = !DILocation(line: 371, column: 26, scope: !1108)
!1157 = !DILocation(line: 372, column: 9, scope: !1108)
!1158 = !DILocation(line: 372, column: 26, scope: !1108)
!1159 = !DILocation(line: 372, column: 34, scope: !1108)
!1160 = !DILocation(line: 370, column: 11, scope: !1108)
!1161 = !DILocation(line: 370, column: 9, scope: !1108)
!1162 = !DILocation(line: 373, column: 2, scope: !1108)
!1163 = !DILocation(line: 374, column: 1, scope: !1108)
!1164 = !DISubprogram(name: "acpi_ps_alloc_op", scope: !1165, file: !1165, line: 204, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!207, !19, !101}
!1168 = !DISubprogram(name: "acpi_ds_create_walk_state", scope: !1169, file: !1169, line: 294, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!173, !126, !207, !50, !449}
!1172 = !DISubprogram(name: "acpi_ds_init_aml_walk", scope: !1169, file: !1169, line: 303, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!13, !173, !207, !106, !101, !15, !1175, !59}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !175, line: 152, size: 704, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1176, file: !175, line: 155, baseType: !106, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1176, file: !175, line: 156, baseType: !1071, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1176, file: !175, line: 157, baseType: !137, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1176, file: !175, line: 159, baseType: !106, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1176, file: !175, line: 160, baseType: !50, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1176, file: !175, line: 161, baseType: !90, size: 64, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1176, file: !175, line: 163, baseType: !1185, size: 64, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !6, line: 351, size: 56, elements: !1188)
!1188 = !{!1189, !1195, !1204, !1212, !1221}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1187, file: !6, line: 352, baseType: !1190, size: 56)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !6, line: 295, size: 56, elements: !1191)
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1190, file: !6, line: 296, baseType: !119, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1190, file: !6, line: 297, baseType: !19, size: 16, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1190, file: !6, line: 298, baseType: !59, size: 8, offset: 48)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1187, file: !6, line: 353, baseType: !1196, size: 56)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !6, line: 314, size: 56, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1196, file: !6, line: 315, baseType: !59, size: 8)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1196, file: !6, line: 316, baseType: !59, size: 8, offset: 8)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1196, file: !6, line: 317, baseType: !59, size: 8, offset: 16)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1196, file: !6, line: 318, baseType: !59, size: 8, offset: 24)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1196, file: !6, line: 319, baseType: !59, size: 8, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1196, file: !6, line: 320, baseType: !19, size: 16, offset: 40)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1187, file: !6, line: 354, baseType: !1205, size: 56)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !6, line: 325, size: 56, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1211}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1205, file: !6, line: 326, baseType: !59, size: 8)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1205, file: !6, line: 327, baseType: !59, size: 8, offset: 8)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1205, file: !6, line: 328, baseType: !1210, size: 32, offset: 16)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !120)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1205, file: !6, line: 329, baseType: !59, size: 8, offset: 48)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1187, file: !6, line: 355, baseType: !1213, size: 56)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !6, line: 334, size: 56, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1219, !1220}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1213, file: !6, line: 335, baseType: !59, size: 8)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1213, file: !6, line: 336, baseType: !59, size: 8, offset: 8)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1213, file: !6, line: 337, baseType: !1218, size: 16, offset: 16)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 16, elements: !505)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1213, file: !6, line: 338, baseType: !59, size: 8, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1213, file: !6, line: 339, baseType: !19, size: 16, offset: 40)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1187, file: !6, line: 356, baseType: !1222, size: 56)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !6, line: 342, size: 56, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1222, file: !6, line: 343, baseType: !59, size: 8)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1222, file: !6, line: 344, baseType: !59, size: 8, offset: 8)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1222, file: !6, line: 345, baseType: !59, size: 8, offset: 16)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1222, file: !6, line: 346, baseType: !59, size: 8, offset: 24)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1222, file: !6, line: 347, baseType: !59, size: 8, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1222, file: !6, line: 348, baseType: !19, size: 16, offset: 40)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1176, file: !175, line: 164, baseType: !50, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1176, file: !175, line: 165, baseType: !50, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1176, file: !175, line: 167, baseType: !15, size: 32, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1176, file: !175, line: 168, baseType: !15, size: 32, offset: 608)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1176, file: !175, line: 169, baseType: !19, size: 16, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1176, file: !175, line: 170, baseType: !19, size: 16, offset: 656)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1176, file: !175, line: 171, baseType: !59, size: 8, offset: 672)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1176, file: !175, line: 172, baseType: !59, size: 8, offset: 680)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1176, file: !175, line: 173, baseType: !59, size: 8, offset: 688)
!1239 = !DISubprogram(name: "acpi_ds_delete_walk_state", scope: !1169, file: !1169, line: 314, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !173}
!1242 = !DISubprogram(name: "acpi_ps_parse_aml", scope: !1165, file: !1165, line: 117, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DISubprogram(name: "acpi_ps_delete_parse_tree", scope: !1165, file: !1165, line: 195, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !207}
