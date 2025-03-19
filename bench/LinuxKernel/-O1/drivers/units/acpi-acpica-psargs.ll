; ModuleID = 'drivers/acpi/acpica/psargs.c'
source_filename = "drivers/acpi/acpica/psargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }

@_acpi_module_name = internal constant [7 x i8] c"psargs\00", align 1, !dbg !0
@.str = private unnamed_addr constant [41 x i8] c"Control Method %p has no attached object\00", align 1, !dbg !40
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid ArgType 0x%X\00", align 1, !dbg !45
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid ArgType: 0x%X\00", align 1, !dbg !50

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_get_next_package_end(ptr noundef %parser_state) #0 align 16 !dbg !68 {
entry:
  %parser_state.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  %package_length = alloca i32, align 4
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !826, metadata !DIExpression()), !dbg !829
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #4, !dbg !830
  call void @llvm.dbg.declare(metadata ptr %start, metadata !827, metadata !DIExpression()), !dbg !831
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !832
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 1, !dbg !833
  %1 = load ptr, ptr %aml, align 8, !dbg !833
  store ptr %1, ptr %start, align 8, !dbg !831
  call void @llvm.lifetime.start.p0(i64 4, ptr %package_length) #4, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %package_length, metadata !828, metadata !DIExpression()), !dbg !835
  %2 = load ptr, ptr %parser_state.addr, align 8, !dbg !836
  %call = call i32 @acpi_ps_get_next_package_length(ptr noundef %2) #5, !dbg !837
  store i32 %call, ptr %package_length, align 4, !dbg !838
  %3 = load ptr, ptr %start, align 8, !dbg !839
  %4 = load i32, ptr %package_length, align 4, !dbg !839
  %idx.ext = zext i32 %4 to i64, !dbg !839
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.ext, !dbg !839
  call void @llvm.lifetime.end.p0(i64 4, ptr %package_length) #4, !dbg !840
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #4, !dbg !840
  ret ptr %add.ptr, !dbg !839
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ps_get_next_package_length(ptr noundef %parser_state) #0 align 16 !dbg !841 {
entry:
  %parser_state.addr = alloca ptr, align 8
  %aml = alloca ptr, align 8
  %package_length = alloca i32, align 4
  %byte_count = alloca i32, align 4
  %byte_zero_mask = alloca i8, align 1
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !845, metadata !DIExpression()), !dbg !850
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml) #4, !dbg !851
  call void @llvm.dbg.declare(metadata ptr %aml, metadata !846, metadata !DIExpression()), !dbg !852
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !853
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 1, !dbg !854
  %1 = load ptr, ptr %aml1, align 8, !dbg !854
  store ptr %1, ptr %aml, align 8, !dbg !852
  call void @llvm.lifetime.start.p0(i64 4, ptr %package_length) #4, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %package_length, metadata !847, metadata !DIExpression()), !dbg !856
  store i32 0, ptr %package_length, align 4, !dbg !856
  call void @llvm.lifetime.start.p0(i64 4, ptr %byte_count) #4, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %byte_count, metadata !848, metadata !DIExpression()), !dbg !858
  call void @llvm.lifetime.start.p0(i64 1, ptr %byte_zero_mask) #4, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %byte_zero_mask, metadata !849, metadata !DIExpression()), !dbg !860
  store i8 63, ptr %byte_zero_mask, align 1, !dbg !860
  %2 = load ptr, ptr %aml, align 8, !dbg !861
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !861
  %3 = load i8, ptr %arrayidx, align 1, !dbg !861
  %conv = zext i8 %3 to i32, !dbg !861
  %shr = ashr i32 %conv, 6, !dbg !862
  store i32 %shr, ptr %byte_count, align 4, !dbg !863
  %4 = load i32, ptr %byte_count, align 4, !dbg !864
  %conv2 = zext i32 %4 to i64, !dbg !865
  %add = add i64 %conv2, 1, !dbg !866
  %5 = load ptr, ptr %parser_state.addr, align 8, !dbg !867
  %aml3 = getelementptr inbounds %struct.acpi_parse_state, ptr %5, i32 0, i32 1, !dbg !868
  %6 = load ptr, ptr %aml3, align 8, !dbg !869
  %add.ptr = getelementptr i8, ptr %6, i64 %add, !dbg !869
  store ptr %add.ptr, ptr %aml3, align 8, !dbg !869
  br label %while.cond, !dbg !870

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i32, ptr %byte_count, align 4, !dbg !871
  %tobool = icmp ne i32 %7, 0, !dbg !870
  br i1 %tobool, label %while.body, label %while.end, !dbg !870

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %aml, align 8, !dbg !872
  %9 = load i32, ptr %byte_count, align 4, !dbg !874
  %idxprom = zext i32 %9 to i64, !dbg !872
  %arrayidx4 = getelementptr i8, ptr %8, i64 %idxprom, !dbg !872
  %10 = load i8, ptr %arrayidx4, align 1, !dbg !872
  %conv5 = zext i8 %10 to i32, !dbg !872
  %11 = load i32, ptr %byte_count, align 4, !dbg !875
  %shl = shl i32 %11, 3, !dbg !876
  %sub = sub i32 %shl, 4, !dbg !877
  %shl6 = shl i32 %conv5, %sub, !dbg !878
  %12 = load i32, ptr %package_length, align 4, !dbg !879
  %or = or i32 %12, %shl6, !dbg !879
  store i32 %or, ptr %package_length, align 4, !dbg !879
  store i8 15, ptr %byte_zero_mask, align 1, !dbg !880
  %13 = load i32, ptr %byte_count, align 4, !dbg !881
  %dec = add i32 %13, -1, !dbg !881
  store i32 %dec, ptr %byte_count, align 4, !dbg !881
  br label %while.cond, !dbg !870, !llvm.loop !882

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %aml, align 8, !dbg !886
  %arrayidx7 = getelementptr i8, ptr %14, i64 0, !dbg !886
  %15 = load i8, ptr %arrayidx7, align 1, !dbg !886
  %conv8 = zext i8 %15 to i32, !dbg !886
  %16 = load i8, ptr %byte_zero_mask, align 1, !dbg !887
  %conv9 = zext i8 %16 to i32, !dbg !887
  %and = and i32 %conv8, %conv9, !dbg !888
  %17 = load i32, ptr %package_length, align 4, !dbg !889
  %or10 = or i32 %17, %and, !dbg !889
  store i32 %or10, ptr %package_length, align 4, !dbg !889
  %18 = load i32, ptr %package_length, align 4, !dbg !890
  call void @llvm.lifetime.end.p0(i64 1, ptr %byte_zero_mask) #4, !dbg !891
  call void @llvm.lifetime.end.p0(i64 4, ptr %byte_count) #4, !dbg !891
  call void @llvm.lifetime.end.p0(i64 4, ptr %package_length) #4, !dbg !891
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml) #4, !dbg !891
  ret i32 %18, !dbg !890
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_get_next_namestring(ptr noundef %parser_state) #0 align 16 !dbg !892 {
entry:
  %parser_state.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !896, metadata !DIExpression()), !dbg !899
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #4, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %start, metadata !897, metadata !DIExpression()), !dbg !901
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !902
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 1, !dbg !903
  %1 = load ptr, ptr %aml, align 8, !dbg !903
  store ptr %1, ptr %start, align 8, !dbg !901
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #4, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %end, metadata !898, metadata !DIExpression()), !dbg !905
  %2 = load ptr, ptr %parser_state.addr, align 8, !dbg !906
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, ptr %2, i32 0, i32 1, !dbg !907
  %3 = load ptr, ptr %aml1, align 8, !dbg !907
  store ptr %3, ptr %end, align 8, !dbg !905
  br label %while.cond, !dbg !908

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %end, align 8, !dbg !909
  %5 = load i8, ptr %4, align 1, !dbg !909
  %conv = zext i8 %5 to i32, !dbg !909
  %cmp = icmp eq i32 %conv, 92, !dbg !909
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !910

lor.rhs:                                          ; preds = %while.cond
  %6 = load ptr, ptr %end, align 8, !dbg !911
  %7 = load i8, ptr %6, align 1, !dbg !911
  %conv3 = zext i8 %7 to i32, !dbg !911
  %cmp4 = icmp eq i32 %conv3, 94, !dbg !911
  br label %lor.end, !dbg !910

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end, !dbg !908

while.body:                                       ; preds = %lor.end
  %9 = load ptr, ptr %end, align 8, !dbg !912
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !912
  store ptr %incdec.ptr, ptr %end, align 8, !dbg !912
  br label %while.cond, !dbg !908, !llvm.loop !914

while.end:                                        ; preds = %lor.end
  %10 = load ptr, ptr %end, align 8, !dbg !916
  %11 = load i8, ptr %10, align 1, !dbg !917
  %conv6 = zext i8 %11 to i32, !dbg !917
  switch i32 %conv6, label %sw.default [
    i32 0, label %sw.bb
    i32 46, label %sw.bb10
    i32 47, label %sw.bb11
  ], !dbg !918

sw.bb:                                            ; preds = %while.end
  %12 = load ptr, ptr %end, align 8, !dbg !919
  %13 = load ptr, ptr %start, align 8, !dbg !922
  %cmp7 = icmp eq ptr %12, %13, !dbg !923
  br i1 %cmp7, label %if.then, label %if.end, !dbg !924

if.then:                                          ; preds = %sw.bb
  store ptr null, ptr %start, align 8, !dbg !925
  br label %if.end, !dbg !927

if.end:                                           ; preds = %if.then, %sw.bb
  %14 = load ptr, ptr %end, align 8, !dbg !928
  %incdec.ptr9 = getelementptr i8, ptr %14, i32 1, !dbg !928
  store ptr %incdec.ptr9, ptr %end, align 8, !dbg !928
  br label %sw.epilog, !dbg !929

sw.bb10:                                          ; preds = %while.end
  %15 = load ptr, ptr %end, align 8, !dbg !930
  %add.ptr = getelementptr i8, ptr %15, i64 9, !dbg !930
  store ptr %add.ptr, ptr %end, align 8, !dbg !930
  br label %sw.epilog, !dbg !931

sw.bb11:                                          ; preds = %while.end
  %16 = load ptr, ptr %end, align 8, !dbg !932
  %add.ptr12 = getelementptr i8, ptr %16, i64 1, !dbg !933
  %17 = load i8, ptr %add.ptr12, align 1, !dbg !934
  %conv13 = zext i8 %17 to i32, !dbg !934
  %mul = mul i32 %conv13, 4, !dbg !935
  %add = add i32 2, %mul, !dbg !936
  %18 = load ptr, ptr %end, align 8, !dbg !937
  %idx.ext = sext i32 %add to i64, !dbg !937
  %add.ptr14 = getelementptr i8, ptr %18, i64 %idx.ext, !dbg !937
  store ptr %add.ptr14, ptr %end, align 8, !dbg !937
  br label %sw.epilog, !dbg !938

sw.default:                                       ; preds = %while.end
  %19 = load ptr, ptr %end, align 8, !dbg !939
  %add.ptr15 = getelementptr i8, ptr %19, i64 4, !dbg !939
  store ptr %add.ptr15, ptr %end, align 8, !dbg !939
  br label %sw.epilog, !dbg !940

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %if.end
  %20 = load ptr, ptr %end, align 8, !dbg !941
  %21 = load ptr, ptr %parser_state.addr, align 8, !dbg !942
  %aml16 = getelementptr inbounds %struct.acpi_parse_state, ptr %21, i32 0, i32 1, !dbg !943
  store ptr %20, ptr %aml16, align 8, !dbg !944
  %22 = load ptr, ptr %start, align 8, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #4, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #4, !dbg !946
  ret ptr %22, !dbg !945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_get_next_namepath(ptr noundef %walk_state, ptr noundef %parser_state, ptr noundef %arg, i8 noundef zeroext %possible_method_call) #0 align 16 !dbg !947 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %parser_state.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %possible_method_call.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %path = alloca ptr, align 8
  %name_op = alloca ptr, align 8
  %method_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %start = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !951, metadata !DIExpression()), !dbg !961
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !952, metadata !DIExpression()), !dbg !962
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !953, metadata !DIExpression()), !dbg !963
  store i8 %possible_method_call, ptr %possible_method_call.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %possible_method_call.addr, metadata !954, metadata !DIExpression()), !dbg !964
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %status, metadata !955, metadata !DIExpression()), !dbg !966
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #4, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %path, metadata !956, metadata !DIExpression()), !dbg !968
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_op) #4, !dbg !969
  call void @llvm.dbg.declare(metadata ptr %name_op, metadata !957, metadata !DIExpression()), !dbg !970
  call void @llvm.lifetime.start.p0(i64 8, ptr %method_desc) #4, !dbg !971
  call void @llvm.dbg.declare(metadata ptr %method_desc, metadata !958, metadata !DIExpression()), !dbg !972
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !973
  call void @llvm.dbg.declare(metadata ptr %node, metadata !959, metadata !DIExpression()), !dbg !974
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #4, !dbg !975
  call void @llvm.dbg.declare(metadata ptr %start, metadata !960, metadata !DIExpression()), !dbg !976
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !977
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 1, !dbg !978
  %1 = load ptr, ptr %aml, align 8, !dbg !978
  store ptr %1, ptr %start, align 8, !dbg !976
  %2 = load ptr, ptr %parser_state.addr, align 8, !dbg !979
  %call = call ptr @acpi_ps_get_next_namestring(ptr noundef %2) #5, !dbg !980
  store ptr %call, ptr %path, align 8, !dbg !981
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !982
  call void @acpi_ps_init_op(ptr noundef %3, i16 noundef zeroext 45) #5, !dbg !983
  %4 = load ptr, ptr %path, align 8, !dbg !984
  %tobool = icmp ne ptr %4, null, !dbg !984
  br i1 %tobool, label %if.end, label %if.then, !dbg !986

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %path, align 8, !dbg !987
  %6 = load ptr, ptr %arg.addr, align 8, !dbg !989
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 7, !dbg !990
  store ptr %5, ptr %value, align 8, !dbg !991
  store i32 0, ptr %retval, align 4, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !993
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 46, !dbg !994
  %8 = load ptr, ptr %scope_info, align 8, !dbg !994
  %9 = load ptr, ptr %path, align 8, !dbg !995
  %call1 = call i32 @acpi_ns_lookup(ptr noundef %8, ptr noundef %9, i32 noundef 0, i32 noundef 3, i32 noundef 3, ptr noundef null, ptr noundef %node) #5, !dbg !996
  store i32 %call1, ptr %status, align 4, !dbg !997
  %10 = load i32, ptr %status, align 4, !dbg !998
  %tobool2 = icmp ne i32 %10, 0, !dbg !998
  br i1 %tobool2, label %if.end30, label %land.lhs.true, !dbg !1000

land.lhs.true:                                    ; preds = %if.end
  %11 = load i8, ptr %possible_method_call.addr, align 1, !dbg !1001
  %conv = zext i8 %11 to i32, !dbg !1001
  %tobool3 = icmp ne i32 %conv, 0, !dbg !1001
  br i1 %tobool3, label %land.lhs.true4, label %if.end30, !dbg !1002

land.lhs.true4:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %node, align 8, !dbg !1003
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 2, !dbg !1004
  %13 = load i8, ptr %type, align 1, !dbg !1004
  %conv5 = zext i8 %13 to i32, !dbg !1003
  %cmp = icmp eq i32 %conv5, 8, !dbg !1005
  br i1 %cmp, label %if.then7, label %if.end30, !dbg !1006

if.then7:                                         ; preds = %land.lhs.true4
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1007
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 17, !dbg !1007
  %15 = load i32, ptr %arg_types, align 8, !dbg !1007
  %and = and i32 %15, 31, !dbg !1007
  %cmp8 = icmp eq i32 %and, 12, !dbg !1010
  br i1 %cmp8, label %if.then14, label %lor.lhs.false, !dbg !1011

lor.lhs.false:                                    ; preds = %if.then7
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1012
  %arg_types10 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 17, !dbg !1012
  %17 = load i32, ptr %arg_types10, align 8, !dbg !1012
  %and11 = and i32 %17, 31, !dbg !1012
  %cmp12 = icmp eq i32 %and11, 13, !dbg !1013
  br i1 %cmp12, label %if.then14, label %if.end17, !dbg !1014

if.then14:                                        ; preds = %lor.lhs.false, %if.then7
  %18 = load ptr, ptr %start, align 8, !dbg !1015
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1017
  %parser_state15 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 21, !dbg !1018
  %aml16 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state15, i32 0, i32 1, !dbg !1019
  store ptr %18, ptr %aml16, align 8, !dbg !1020
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !1021
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, ptr %20, i32 0, i32 23, !dbg !1022
  store i32 1, ptr %arg_count, align 4, !dbg !1023
  %21 = load ptr, ptr %arg.addr, align 8, !dbg !1024
  call void @acpi_ps_init_op(ptr noundef %21, i16 noundef zeroext 53) #5, !dbg !1025
  br label %if.end17, !dbg !1026

if.end17:                                         ; preds = %if.then14, %lor.lhs.false
  %22 = load ptr, ptr %node, align 8, !dbg !1027
  %call18 = call ptr @acpi_ns_get_attached_object(ptr noundef %22) #5, !dbg !1028
  store ptr %call18, ptr %method_desc, align 8, !dbg !1029
  %23 = load ptr, ptr %start, align 8, !dbg !1030
  %call19 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 45, ptr noundef %23) #5, !dbg !1031
  store ptr %call19, ptr %name_op, align 8, !dbg !1032
  %24 = load ptr, ptr %name_op, align 8, !dbg !1033
  %tobool20 = icmp ne ptr %24, null, !dbg !1033
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !1035

if.then21:                                        ; preds = %if.end17
  store i32 4, ptr %retval, align 4, !dbg !1036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1036

if.end22:                                         ; preds = %if.end17
  %25 = load ptr, ptr %arg.addr, align 8, !dbg !1038
  call void @acpi_ps_init_op(ptr noundef %25, i16 noundef zeroext 53) #5, !dbg !1039
  %26 = load ptr, ptr %path, align 8, !dbg !1040
  %27 = load ptr, ptr %name_op, align 8, !dbg !1041
  %value23 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %27, i32 0, i32 7, !dbg !1042
  store ptr %26, ptr %value23, align 8, !dbg !1043
  %28 = load ptr, ptr %node, align 8, !dbg !1044
  %29 = load ptr, ptr %name_op, align 8, !dbg !1045
  %node24 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %29, i32 0, i32 6, !dbg !1046
  store ptr %28, ptr %node24, align 8, !dbg !1047
  %30 = load ptr, ptr %arg.addr, align 8, !dbg !1048
  %31 = load ptr, ptr %name_op, align 8, !dbg !1049
  call void @acpi_ps_append_arg(ptr noundef %30, ptr noundef %31) #5, !dbg !1050
  %32 = load ptr, ptr %method_desc, align 8, !dbg !1051
  %tobool25 = icmp ne ptr %32, null, !dbg !1051
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1053

if.then26:                                        ; preds = %if.end22
  %33 = load ptr, ptr %node, align 8, !dbg !1054
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 279, ptr noundef @.str, ptr noundef %33) #5, !dbg !1054
  store i32 12303, ptr %retval, align 4, !dbg !1056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1056

if.end27:                                         ; preds = %if.end22
  %34 = load ptr, ptr %method_desc, align 8, !dbg !1057
  %param_count = getelementptr inbounds %struct.acpi_object_method, ptr %34, i32 0, i32 6, !dbg !1058
  %35 = load i8, ptr %param_count, align 2, !dbg !1058
  %conv28 = zext i8 %35 to i32, !dbg !1057
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1059
  %arg_count29 = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 23, !dbg !1060
  store i32 %conv28, ptr %arg_count29, align 4, !dbg !1061
  store i32 0, ptr %retval, align 4, !dbg !1062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1062

if.end30:                                         ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %37 = load i32, ptr %status, align 4, !dbg !1063
  %cmp31 = icmp eq i32 %37, 5, !dbg !1065
  br i1 %cmp31, label %if.then33, label %if.end60, !dbg !1066

if.then33:                                        ; preds = %if.end30
  %38 = load ptr, ptr %walk_state.addr, align 8, !dbg !1067
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %38, i32 0, i32 20, !dbg !1070
  %39 = load i32, ptr %parse_flags, align 4, !dbg !1070
  %and34 = and i32 %39, 48, !dbg !1071
  %cmp35 = icmp ne i32 %and34, 48, !dbg !1072
  br i1 %cmp35, label %if.then37, label %if.else, !dbg !1073

if.then37:                                        ; preds = %if.then33
  store i32 0, ptr %status, align 4, !dbg !1074
  br label %if.end59, !dbg !1076

if.else:                                          ; preds = %if.then33
  %40 = load ptr, ptr %walk_state.addr, align 8, !dbg !1077
  %op = getelementptr inbounds %struct.acpi_walk_state, ptr %40, i32 0, i32 40, !dbg !1079
  %41 = load ptr, ptr %op, align 8, !dbg !1079
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %41, i32 0, i32 3, !dbg !1080
  %42 = load i16, ptr %aml_opcode, align 2, !dbg !1080
  %conv38 = zext i16 %42 to i32, !dbg !1077
  %cmp39 = icmp eq i32 %conv38, 23314, !dbg !1081
  br i1 %cmp39, label %if.then41, label %if.else42, !dbg !1082

if.then41:                                        ; preds = %if.else
  store i32 0, ptr %status, align 4, !dbg !1083
  br label %if.end58, !dbg !1085

if.else42:                                        ; preds = %if.else
  %43 = load ptr, ptr %arg.addr, align 8, !dbg !1086
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %43, i32 0, i32 0, !dbg !1088
  %44 = load ptr, ptr %parent, align 8, !dbg !1088
  %tobool43 = icmp ne ptr %44, null, !dbg !1089
  br i1 %tobool43, label %land.lhs.true44, label %if.end57, !dbg !1090

land.lhs.true44:                                  ; preds = %if.else42
  %45 = load ptr, ptr %arg.addr, align 8, !dbg !1091
  %parent45 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %45, i32 0, i32 0, !dbg !1092
  %46 = load ptr, ptr %parent45, align 8, !dbg !1092
  %aml_opcode46 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %46, i32 0, i32 3, !dbg !1093
  %47 = load i16, ptr %aml_opcode46, align 2, !dbg !1093
  %conv47 = zext i16 %47 to i32, !dbg !1091
  %cmp48 = icmp eq i32 %conv47, 18, !dbg !1094
  br i1 %cmp48, label %if.then56, label %lor.lhs.false50, !dbg !1095

lor.lhs.false50:                                  ; preds = %land.lhs.true44
  %48 = load ptr, ptr %arg.addr, align 8, !dbg !1096
  %parent51 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %48, i32 0, i32 0, !dbg !1097
  %49 = load ptr, ptr %parent51, align 8, !dbg !1097
  %aml_opcode52 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %49, i32 0, i32 3, !dbg !1098
  %50 = load i16, ptr %aml_opcode52, align 2, !dbg !1098
  %conv53 = zext i16 %50 to i32, !dbg !1096
  %cmp54 = icmp eq i32 %conv53, 19, !dbg !1099
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !1100

if.then56:                                        ; preds = %lor.lhs.false50, %land.lhs.true44
  store i32 0, ptr %status, align 4, !dbg !1101
  br label %if.end57, !dbg !1103

if.end57:                                         ; preds = %if.then56, %lor.lhs.false50, %if.else42
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then41
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then37
  br label %if.end60, !dbg !1104

if.end60:                                         ; preds = %if.end59, %if.end30
  %51 = load i32, ptr %status, align 4, !dbg !1105
  %tobool61 = icmp ne i32 %51, 0, !dbg !1105
  br i1 %tobool61, label %if.then62, label %if.end71, !dbg !1107

if.then62:                                        ; preds = %if.end60
  %52 = load ptr, ptr %walk_state.addr, align 8, !dbg !1108
  %scope_info63 = getelementptr inbounds %struct.acpi_walk_state, ptr %52, i32 0, i32 46, !dbg !1108
  %53 = load ptr, ptr %scope_info63, align 8, !dbg !1108
  %54 = load ptr, ptr %path, align 8, !dbg !1108
  %55 = load i32, ptr %status, align 4, !dbg !1108
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 332, ptr noundef %53, ptr noundef %54, i32 noundef %55) #5, !dbg !1108
  %56 = load ptr, ptr %walk_state.addr, align 8, !dbg !1110
  %parse_flags64 = getelementptr inbounds %struct.acpi_walk_state, ptr %56, i32 0, i32 20, !dbg !1112
  %57 = load i32, ptr %parse_flags64, align 4, !dbg !1112
  %and65 = and i32 %57, 48, !dbg !1113
  %cmp66 = icmp eq i32 %and65, 48, !dbg !1114
  br i1 %cmp66, label %if.then68, label %if.end70, !dbg !1115

if.then68:                                        ; preds = %if.then62
  %58 = load i32, ptr %status, align 4, !dbg !1116
  %59 = load ptr, ptr %walk_state.addr, align 8, !dbg !1118
  %call69 = call i32 @acpi_ds_method_error(i32 noundef %58, ptr noundef %59) #5, !dbg !1119
  store i32 %call69, ptr %status, align 4, !dbg !1120
  br label %if.end70, !dbg !1121

if.end70:                                         ; preds = %if.then68, %if.then62
  br label %if.end71, !dbg !1122

if.end71:                                         ; preds = %if.end70, %if.end60
  %60 = load ptr, ptr %path, align 8, !dbg !1123
  %61 = load ptr, ptr %arg.addr, align 8, !dbg !1124
  %value72 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %61, i32 0, i32 7, !dbg !1125
  store ptr %60, ptr %value72, align 8, !dbg !1126
  %62 = load i32, ptr %status, align 4, !dbg !1127
  store i32 %62, ptr %retval, align 4, !dbg !1127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1127

cleanup:                                          ; preds = %if.end71, %if.end27, %if.then26, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #4, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr %method_desc) #4, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_op) #4, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #4, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1128
  %63 = load i32, ptr %retval, align 4, !dbg !1128
  ret i32 %63, !dbg !1128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1129 dso_local void @acpi_ps_init_op(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1133 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1140 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1143 dso_local ptr @acpi_ps_alloc_op(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1146 dso_local void @acpi_ps_append_arg(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1149 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1154 dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1158 dso_local i32 @acpi_ds_method_error(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ps_get_next_simple_arg(ptr noundef %parser_state, i32 noundef %arg_type, ptr noundef %arg) #0 align 16 !dbg !1162 {
entry:
  %parser_state.addr = alloca ptr, align 8
  %arg_type.addr = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %opcode = alloca i16, align 2
  %aml = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !1166, metadata !DIExpression()), !dbg !1172
  store i32 %arg_type, ptr %arg_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg_type.addr, metadata !1167, metadata !DIExpression()), !dbg !1173
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1168, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1169, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 2, ptr %opcode) #4, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !1170, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml) #4, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %aml, metadata !1171, metadata !DIExpression()), !dbg !1180
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !1181
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 1, !dbg !1182
  %1 = load ptr, ptr %aml1, align 8, !dbg !1182
  store ptr %1, ptr %aml, align 8, !dbg !1180
  %2 = load i32, ptr %arg_type.addr, align 4, !dbg !1183
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 16, label %sw.bb2
    i32 6, label %sw.bb5
    i32 17, label %sw.bb8
    i32 3, label %sw.bb10
    i32 8, label %sw.bb13
    i32 9, label %sw.bb13
  ], !dbg !1184

sw.bb:                                            ; preds = %entry
  store i16 10, ptr %opcode, align 2, !dbg !1185
  %3 = load ptr, ptr %aml, align 8, !dbg !1187
  %4 = load i8, ptr %3, align 1, !dbg !1188
  %conv = zext i8 %4 to i64, !dbg !1189
  %5 = load ptr, ptr %arg.addr, align 8, !dbg !1190
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 7, !dbg !1191
  store i64 %conv, ptr %value, align 8, !dbg !1192
  store i32 1, ptr %length, align 4, !dbg !1193
  br label %sw.epilog, !dbg !1194

sw.bb2:                                           ; preds = %entry
  store i16 11, ptr %opcode, align 2, !dbg !1195
  %6 = load ptr, ptr %aml, align 8, !dbg !1196
  %7 = load i16, ptr %6, align 2, !dbg !1196
  %conv3 = zext i16 %7 to i64, !dbg !1196
  %8 = load ptr, ptr %arg.addr, align 8, !dbg !1196
  %value4 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %8, i32 0, i32 7, !dbg !1196
  store i64 %conv3, ptr %value4, align 8, !dbg !1196
  store i32 2, ptr %length, align 4, !dbg !1197
  br label %sw.epilog, !dbg !1198

sw.bb5:                                           ; preds = %entry
  store i16 12, ptr %opcode, align 2, !dbg !1199
  %9 = load ptr, ptr %aml, align 8, !dbg !1200
  %10 = load i32, ptr %9, align 4, !dbg !1200
  %conv6 = zext i32 %10 to i64, !dbg !1200
  %11 = load ptr, ptr %arg.addr, align 8, !dbg !1200
  %value7 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %11, i32 0, i32 7, !dbg !1200
  store i64 %conv6, ptr %value7, align 8, !dbg !1200
  store i32 4, ptr %length, align 4, !dbg !1201
  br label %sw.epilog, !dbg !1202

sw.bb8:                                           ; preds = %entry
  store i16 14, ptr %opcode, align 2, !dbg !1203
  %12 = load ptr, ptr %aml, align 8, !dbg !1204
  %13 = load i64, ptr %12, align 8, !dbg !1204
  %14 = load ptr, ptr %arg.addr, align 8, !dbg !1204
  %value9 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %14, i32 0, i32 7, !dbg !1204
  store i64 %13, ptr %value9, align 8, !dbg !1204
  store i32 8, ptr %length, align 4, !dbg !1205
  br label %sw.epilog, !dbg !1206

sw.bb10:                                          ; preds = %entry
  store i16 13, ptr %opcode, align 2, !dbg !1207
  %15 = load ptr, ptr %aml, align 8, !dbg !1208
  %16 = ptrtoint ptr %15 to i64, !dbg !1208
  %17 = inttoptr i64 %16 to ptr, !dbg !1208
  %18 = load ptr, ptr %arg.addr, align 8, !dbg !1209
  %value11 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %18, i32 0, i32 7, !dbg !1210
  store ptr %17, ptr %value11, align 8, !dbg !1211
  store i32 0, ptr %length, align 4, !dbg !1212
  br label %while.cond, !dbg !1213

while.cond:                                       ; preds = %while.body, %sw.bb10
  %19 = load ptr, ptr %aml, align 8, !dbg !1214
  %20 = load i32, ptr %length, align 4, !dbg !1215
  %idxprom = zext i32 %20 to i64, !dbg !1214
  %arrayidx = getelementptr i8, ptr %19, i64 %idxprom, !dbg !1214
  %21 = load i8, ptr %arrayidx, align 1, !dbg !1214
  %tobool = icmp ne i8 %21, 0, !dbg !1213
  br i1 %tobool, label %while.body, label %while.end, !dbg !1213

while.body:                                       ; preds = %while.cond
  %22 = load i32, ptr %length, align 4, !dbg !1216
  %inc = add i32 %22, 1, !dbg !1216
  store i32 %inc, ptr %length, align 4, !dbg !1216
  br label %while.cond, !dbg !1213, !llvm.loop !1218

while.end:                                        ; preds = %while.cond
  %23 = load i32, ptr %length, align 4, !dbg !1220
  %inc12 = add i32 %23, 1, !dbg !1220
  store i32 %inc12, ptr %length, align 4, !dbg !1220
  br label %sw.epilog, !dbg !1221

sw.bb13:                                          ; preds = %entry, %entry
  %24 = load ptr, ptr %arg.addr, align 8, !dbg !1222
  call void @acpi_ps_init_op(ptr noundef %24, i16 noundef zeroext 45) #5, !dbg !1223
  %25 = load ptr, ptr %parser_state.addr, align 8, !dbg !1224
  %call = call ptr @acpi_ps_get_next_namestring(ptr noundef %25) #5, !dbg !1225
  %26 = load ptr, ptr %arg.addr, align 8, !dbg !1226
  %value14 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %26, i32 0, i32 7, !dbg !1227
  store ptr %call, ptr %value14, align 8, !dbg !1228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1229

sw.default:                                       ; preds = %entry
  %27 = load i32, ptr %arg_type.addr, align 4, !dbg !1230
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 436, ptr noundef @.str.1, i32 noundef %27) #5, !dbg !1230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1231

sw.epilog:                                        ; preds = %while.end, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %28 = load ptr, ptr %arg.addr, align 8, !dbg !1232
  %29 = load i16, ptr %opcode, align 2, !dbg !1233
  call void @acpi_ps_init_op(ptr noundef %28, i16 noundef zeroext %29) #5, !dbg !1234
  %30 = load i32, ptr %length, align 4, !dbg !1235
  %31 = load ptr, ptr %parser_state.addr, align 8, !dbg !1236
  %aml15 = getelementptr inbounds %struct.acpi_parse_state, ptr %31, i32 0, i32 1, !dbg !1237
  %32 = load ptr, ptr %aml15, align 8, !dbg !1238
  %idx.ext = zext i32 %30 to i64, !dbg !1238
  %add.ptr = getelementptr i8, ptr %32, i64 %idx.ext, !dbg !1238
  store ptr %add.ptr, ptr %aml15, align 8, !dbg !1238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1239

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb13
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml) #4, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 2, ptr %opcode) #4, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4, !dbg !1240
  ret void, !dbg !1240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_get_next_arg(ptr noundef %walk_state, ptr noundef %parser_state, i32 noundef %arg_type, ptr noundef %return_arg) #0 align 16 !dbg !1241 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %parser_state.addr = alloca ptr, align 8
  %arg_type.addr = alloca i32, align 4
  %return_arg.addr = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %field = alloca ptr, align 8
  %subop = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1245, metadata !DIExpression()), !dbg !1254
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !1246, metadata !DIExpression()), !dbg !1255
  store i32 %arg_type, ptr %arg_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg_type.addr, metadata !1247, metadata !DIExpression()), !dbg !1256
  store ptr %return_arg, ptr %return_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_arg.addr, metadata !1248, metadata !DIExpression()), !dbg !1257
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #4, !dbg !1258
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1249, metadata !DIExpression()), !dbg !1259
  store ptr null, ptr %arg, align 8, !dbg !1259
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #4, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !1250, metadata !DIExpression()), !dbg !1261
  store ptr null, ptr %prev, align 8, !dbg !1261
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #4, !dbg !1262
  call void @llvm.dbg.declare(metadata ptr %field, metadata !1251, metadata !DIExpression()), !dbg !1263
  call void @llvm.lifetime.start.p0(i64 4, ptr %subop) #4, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %subop, metadata !1252, metadata !DIExpression()), !dbg !1265
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1266
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1253, metadata !DIExpression()), !dbg !1267
  store i32 0, ptr %status, align 4, !dbg !1267
  %0 = load i32, ptr %arg_type.addr, align 4, !dbg !1268
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 16, label %sw.bb
    i32 6, label %sw.bb
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb1
    i32 7, label %sw.bb3
    i32 2, label %sw.bb23
    i32 18, label %sw.bb39
    i32 19, label %sw.bb39
    i32 13, label %sw.bb65
    i32 12, label %sw.bb65
    i32 4, label %sw.bb100
    i32 14, label %sw.bb100
    i32 5, label %sw.bb102
    i32 15, label %sw.bb102
    i32 10, label %sw.bb102
  ], !dbg !1269

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load ptr, ptr %parser_state.addr, align 8, !dbg !1270
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %1, i32 0, i32 1, !dbg !1272
  %2 = load ptr, ptr %aml, align 8, !dbg !1272
  %call = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 10, ptr noundef %2) #5, !dbg !1273
  store ptr %call, ptr %arg, align 8, !dbg !1274
  %3 = load ptr, ptr %arg, align 8, !dbg !1275
  %tobool = icmp ne ptr %3, null, !dbg !1275
  br i1 %tobool, label %if.end, label %if.then, !dbg !1277

if.then:                                          ; preds = %sw.bb
  store i32 4, ptr %retval, align 4, !dbg !1278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1278

if.end:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %parser_state.addr, align 8, !dbg !1280
  %5 = load i32, ptr %arg_type.addr, align 4, !dbg !1281
  %6 = load ptr, ptr %arg, align 8, !dbg !1282
  call void @acpi_ps_get_next_simple_arg(ptr noundef %4, i32 noundef %5, ptr noundef %6) #5, !dbg !1283
  br label %sw.epilog, !dbg !1284

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %parser_state.addr, align 8, !dbg !1285
  %call2 = call ptr @acpi_ps_get_next_package_end(ptr noundef %7) #5, !dbg !1286
  %8 = load ptr, ptr %parser_state.addr, align 8, !dbg !1287
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, ptr %8, i32 0, i32 4, !dbg !1288
  store ptr %call2, ptr %pkg_end, align 8, !dbg !1289
  br label %sw.epilog, !dbg !1290

sw.bb3:                                           ; preds = %entry
  %9 = load ptr, ptr %parser_state.addr, align 8, !dbg !1291
  %aml4 = getelementptr inbounds %struct.acpi_parse_state, ptr %9, i32 0, i32 1, !dbg !1293
  %10 = load ptr, ptr %aml4, align 8, !dbg !1293
  %11 = load ptr, ptr %parser_state.addr, align 8, !dbg !1294
  %pkg_end5 = getelementptr inbounds %struct.acpi_parse_state, ptr %11, i32 0, i32 4, !dbg !1295
  %12 = load ptr, ptr %pkg_end5, align 8, !dbg !1295
  %cmp = icmp ult ptr %10, %12, !dbg !1296
  br i1 %cmp, label %if.then6, label %if.end22, !dbg !1297

if.then6:                                         ; preds = %sw.bb3
  br label %while.cond, !dbg !1298

while.cond:                                       ; preds = %if.end19, %if.then6
  %13 = load ptr, ptr %parser_state.addr, align 8, !dbg !1300
  %aml7 = getelementptr inbounds %struct.acpi_parse_state, ptr %13, i32 0, i32 1, !dbg !1301
  %14 = load ptr, ptr %aml7, align 8, !dbg !1301
  %15 = load ptr, ptr %parser_state.addr, align 8, !dbg !1302
  %pkg_end8 = getelementptr inbounds %struct.acpi_parse_state, ptr %15, i32 0, i32 4, !dbg !1303
  %16 = load ptr, ptr %pkg_end8, align 8, !dbg !1303
  %cmp9 = icmp ult ptr %14, %16, !dbg !1304
  br i1 %cmp9, label %while.body, label %while.end, !dbg !1298

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %parser_state.addr, align 8, !dbg !1305
  %call10 = call ptr @acpi_ps_get_next_field(ptr noundef %17) #5, !dbg !1307
  store ptr %call10, ptr %field, align 8, !dbg !1308
  %18 = load ptr, ptr %field, align 8, !dbg !1309
  %tobool11 = icmp ne ptr %18, null, !dbg !1309
  br i1 %tobool11, label %if.end16, label %if.then12, !dbg !1311

if.then12:                                        ; preds = %while.body
  %19 = load ptr, ptr %arg, align 8, !dbg !1312
  %tobool13 = icmp ne ptr %19, null, !dbg !1312
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1315

if.then14:                                        ; preds = %if.then12
  %20 = load ptr, ptr %arg, align 8, !dbg !1316
  call void @acpi_ps_free_field_list(ptr noundef %20) #5, !dbg !1318
  br label %if.end15, !dbg !1319

if.end15:                                         ; preds = %if.then14, %if.then12
  store i32 4, ptr %retval, align 4, !dbg !1320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1320

if.end16:                                         ; preds = %while.body
  %21 = load ptr, ptr %prev, align 8, !dbg !1321
  %tobool17 = icmp ne ptr %21, null, !dbg !1321
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !1323

if.then18:                                        ; preds = %if.end16
  %22 = load ptr, ptr %field, align 8, !dbg !1324
  %23 = load ptr, ptr %prev, align 8, !dbg !1326
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %23, i32 0, i32 5, !dbg !1327
  store ptr %22, ptr %next, align 8, !dbg !1328
  br label %if.end19, !dbg !1329

if.else:                                          ; preds = %if.end16
  %24 = load ptr, ptr %field, align 8, !dbg !1330
  store ptr %24, ptr %arg, align 8, !dbg !1332
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  %25 = load ptr, ptr %field, align 8, !dbg !1333
  store ptr %25, ptr %prev, align 8, !dbg !1334
  br label %while.cond, !dbg !1298, !llvm.loop !1335

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %parser_state.addr, align 8, !dbg !1337
  %pkg_end20 = getelementptr inbounds %struct.acpi_parse_state, ptr %26, i32 0, i32 4, !dbg !1338
  %27 = load ptr, ptr %pkg_end20, align 8, !dbg !1338
  %28 = load ptr, ptr %parser_state.addr, align 8, !dbg !1339
  %aml21 = getelementptr inbounds %struct.acpi_parse_state, ptr %28, i32 0, i32 1, !dbg !1340
  store ptr %27, ptr %aml21, align 8, !dbg !1341
  br label %if.end22, !dbg !1342

if.end22:                                         ; preds = %while.end, %sw.bb3
  br label %sw.epilog, !dbg !1343

sw.bb23:                                          ; preds = %entry
  %29 = load ptr, ptr %parser_state.addr, align 8, !dbg !1344
  %aml24 = getelementptr inbounds %struct.acpi_parse_state, ptr %29, i32 0, i32 1, !dbg !1346
  %30 = load ptr, ptr %aml24, align 8, !dbg !1346
  %31 = load ptr, ptr %parser_state.addr, align 8, !dbg !1347
  %pkg_end25 = getelementptr inbounds %struct.acpi_parse_state, ptr %31, i32 0, i32 4, !dbg !1348
  %32 = load ptr, ptr %pkg_end25, align 8, !dbg !1348
  %cmp26 = icmp ult ptr %30, %32, !dbg !1349
  br i1 %cmp26, label %if.then27, label %if.end38, !dbg !1350

if.then27:                                        ; preds = %sw.bb23
  %33 = load ptr, ptr %parser_state.addr, align 8, !dbg !1351
  %aml28 = getelementptr inbounds %struct.acpi_parse_state, ptr %33, i32 0, i32 1, !dbg !1353
  %34 = load ptr, ptr %aml28, align 8, !dbg !1353
  %call29 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 51, ptr noundef %34) #5, !dbg !1354
  store ptr %call29, ptr %arg, align 8, !dbg !1355
  %35 = load ptr, ptr %arg, align 8, !dbg !1356
  %tobool30 = icmp ne ptr %35, null, !dbg !1356
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !1358

if.then31:                                        ; preds = %if.then27
  store i32 4, ptr %retval, align 4, !dbg !1359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1359

if.end32:                                         ; preds = %if.then27
  %36 = load ptr, ptr %parser_state.addr, align 8, !dbg !1361
  %pkg_end33 = getelementptr inbounds %struct.acpi_parse_state, ptr %36, i32 0, i32 4, !dbg !1361
  %37 = load ptr, ptr %pkg_end33, align 8, !dbg !1361
  %38 = ptrtoint ptr %37 to i64, !dbg !1361
  %39 = inttoptr i64 %38 to ptr, !dbg !1361
  %40 = load ptr, ptr %parser_state.addr, align 8, !dbg !1361
  %aml34 = getelementptr inbounds %struct.acpi_parse_state, ptr %40, i32 0, i32 1, !dbg !1361
  %41 = load ptr, ptr %aml34, align 8, !dbg !1361
  %42 = ptrtoint ptr %41 to i64, !dbg !1361
  %43 = inttoptr i64 %42 to ptr, !dbg !1361
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i64, !dbg !1361
  %sub.ptr.rhs.cast = ptrtoint ptr %43 to i64, !dbg !1361
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1361
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !1362
  %44 = load ptr, ptr %arg, align 8, !dbg !1363
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %44, i32 0, i32 7, !dbg !1364
  store i32 %conv, ptr %value, align 8, !dbg !1365
  %45 = load ptr, ptr %parser_state.addr, align 8, !dbg !1366
  %aml35 = getelementptr inbounds %struct.acpi_parse_state, ptr %45, i32 0, i32 1, !dbg !1367
  %46 = load ptr, ptr %aml35, align 8, !dbg !1367
  %47 = load ptr, ptr %arg, align 8, !dbg !1368
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %47, i32 0, i32 10, !dbg !1369
  store ptr %46, ptr %data, align 8, !dbg !1370
  %48 = load ptr, ptr %parser_state.addr, align 8, !dbg !1371
  %pkg_end36 = getelementptr inbounds %struct.acpi_parse_state, ptr %48, i32 0, i32 4, !dbg !1372
  %49 = load ptr, ptr %pkg_end36, align 8, !dbg !1372
  %50 = load ptr, ptr %parser_state.addr, align 8, !dbg !1373
  %aml37 = getelementptr inbounds %struct.acpi_parse_state, ptr %50, i32 0, i32 1, !dbg !1374
  store ptr %49, ptr %aml37, align 8, !dbg !1375
  br label %if.end38, !dbg !1376

if.end38:                                         ; preds = %if.end32, %sw.bb23
  br label %sw.epilog, !dbg !1377

sw.bb39:                                          ; preds = %entry, %entry
  %51 = load ptr, ptr %parser_state.addr, align 8, !dbg !1378
  %call40 = call zeroext i16 @acpi_ps_peek_opcode(ptr noundef %51) #5, !dbg !1379
  %conv41 = zext i16 %call40 to i32, !dbg !1379
  store i32 %conv41, ptr %subop, align 4, !dbg !1380
  %52 = load i32, ptr %subop, align 4, !dbg !1381
  %cmp42 = icmp eq i32 %52, 0, !dbg !1383
  br i1 %cmp42, label %if.then53, label %lor.lhs.false, !dbg !1384

lor.lhs.false:                                    ; preds = %sw.bb39
  %53 = load i32, ptr %subop, align 4, !dbg !1385
  %call44 = call zeroext i8 @acpi_ps_is_leading_char(i32 noundef %53) #5, !dbg !1386
  %conv45 = zext i8 %call44 to i32, !dbg !1386
  %tobool46 = icmp ne i32 %conv45, 0, !dbg !1386
  br i1 %tobool46, label %if.then53, label %lor.lhs.false47, !dbg !1387

lor.lhs.false47:                                  ; preds = %lor.lhs.false
  %54 = load i32, ptr %subop, align 4, !dbg !1388
  %cmp48 = icmp eq i32 %54, 92, !dbg !1388
  br i1 %cmp48, label %if.then53, label %lor.lhs.false50, !dbg !1389

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %55 = load i32, ptr %subop, align 4, !dbg !1390
  %cmp51 = icmp eq i32 %55, 94, !dbg !1390
  br i1 %cmp51, label %if.then53, label %if.else63, !dbg !1391

if.then53:                                        ; preds = %lor.lhs.false50, %lor.lhs.false47, %lor.lhs.false, %sw.bb39
  %56 = load ptr, ptr %parser_state.addr, align 8, !dbg !1392
  %aml54 = getelementptr inbounds %struct.acpi_parse_state, ptr %56, i32 0, i32 1, !dbg !1394
  %57 = load ptr, ptr %aml54, align 8, !dbg !1394
  %call55 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 45, ptr noundef %57) #5, !dbg !1395
  store ptr %call55, ptr %arg, align 8, !dbg !1396
  %58 = load ptr, ptr %arg, align 8, !dbg !1397
  %tobool56 = icmp ne ptr %58, null, !dbg !1397
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !1399

if.then57:                                        ; preds = %if.then53
  store i32 4, ptr %retval, align 4, !dbg !1400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1400

if.end58:                                         ; preds = %if.then53
  %59 = load ptr, ptr %walk_state.addr, align 8, !dbg !1402
  %60 = load ptr, ptr %parser_state.addr, align 8, !dbg !1403
  %61 = load ptr, ptr %arg, align 8, !dbg !1404
  %call59 = call i32 @acpi_ps_get_next_namepath(ptr noundef %59, ptr noundef %60, ptr noundef %61, i8 noundef zeroext 0) #5, !dbg !1405
  store i32 %call59, ptr %status, align 4, !dbg !1406
  %62 = load i32, ptr %status, align 4, !dbg !1407
  %tobool60 = icmp ne i32 %62, 0, !dbg !1407
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !1409

if.then61:                                        ; preds = %if.end58
  %63 = load ptr, ptr %arg, align 8, !dbg !1410
  call void @acpi_ps_free_op(ptr noundef %63) #5, !dbg !1412
  %64 = load i32, ptr %status, align 4, !dbg !1413
  store i32 %64, ptr %retval, align 4, !dbg !1413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1413

if.end62:                                         ; preds = %if.end58
  br label %if.end64, !dbg !1414

if.else63:                                        ; preds = %lor.lhs.false50
  %65 = load ptr, ptr %walk_state.addr, align 8, !dbg !1415
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, ptr %65, i32 0, i32 23, !dbg !1417
  store i32 1, ptr %arg_count, align 4, !dbg !1418
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.end62
  br label %sw.epilog, !dbg !1419

sw.bb65:                                          ; preds = %entry, %entry
  %66 = load ptr, ptr %parser_state.addr, align 8, !dbg !1420
  %call66 = call zeroext i16 @acpi_ps_peek_opcode(ptr noundef %66) #5, !dbg !1421
  %conv67 = zext i16 %call66 to i32, !dbg !1421
  store i32 %conv67, ptr %subop, align 4, !dbg !1422
  %67 = load i32, ptr %subop, align 4, !dbg !1423
  %cmp68 = icmp eq i32 %67, 0, !dbg !1425
  br i1 %cmp68, label %if.then80, label %lor.lhs.false70, !dbg !1426

lor.lhs.false70:                                  ; preds = %sw.bb65
  %68 = load i32, ptr %subop, align 4, !dbg !1427
  %call71 = call zeroext i8 @acpi_ps_is_leading_char(i32 noundef %68) #5, !dbg !1428
  %conv72 = zext i8 %call71 to i32, !dbg !1428
  %tobool73 = icmp ne i32 %conv72, 0, !dbg !1428
  br i1 %tobool73, label %if.then80, label %lor.lhs.false74, !dbg !1429

lor.lhs.false74:                                  ; preds = %lor.lhs.false70
  %69 = load i32, ptr %subop, align 4, !dbg !1430
  %cmp75 = icmp eq i32 %69, 92, !dbg !1430
  br i1 %cmp75, label %if.then80, label %lor.lhs.false77, !dbg !1431

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %70 = load i32, ptr %subop, align 4, !dbg !1432
  %cmp78 = icmp eq i32 %70, 94, !dbg !1432
  br i1 %cmp78, label %if.then80, label %if.else97, !dbg !1433

if.then80:                                        ; preds = %lor.lhs.false77, %lor.lhs.false74, %lor.lhs.false70, %sw.bb65
  %71 = load ptr, ptr %parser_state.addr, align 8, !dbg !1434
  %aml81 = getelementptr inbounds %struct.acpi_parse_state, ptr %71, i32 0, i32 1, !dbg !1436
  %72 = load ptr, ptr %aml81, align 8, !dbg !1436
  %call82 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 45, ptr noundef %72) #5, !dbg !1437
  store ptr %call82, ptr %arg, align 8, !dbg !1438
  %73 = load ptr, ptr %arg, align 8, !dbg !1439
  %tobool83 = icmp ne ptr %73, null, !dbg !1439
  br i1 %tobool83, label %if.end85, label %if.then84, !dbg !1441

if.then84:                                        ; preds = %if.then80
  store i32 4, ptr %retval, align 4, !dbg !1442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1442

if.end85:                                         ; preds = %if.then80
  %74 = load ptr, ptr %walk_state.addr, align 8, !dbg !1444
  %75 = load ptr, ptr %parser_state.addr, align 8, !dbg !1445
  %76 = load ptr, ptr %arg, align 8, !dbg !1446
  %call86 = call i32 @acpi_ps_get_next_namepath(ptr noundef %74, ptr noundef %75, ptr noundef %76, i8 noundef zeroext 1) #5, !dbg !1447
  store i32 %call86, ptr %status, align 4, !dbg !1448
  %77 = load i32, ptr %status, align 4, !dbg !1449
  %tobool87 = icmp ne i32 %77, 0, !dbg !1449
  br i1 %tobool87, label %if.then88, label %if.end89, !dbg !1451

if.then88:                                        ; preds = %if.end85
  %78 = load ptr, ptr %arg, align 8, !dbg !1452
  call void @acpi_ps_free_op(ptr noundef %78) #5, !dbg !1454
  %79 = load i32, ptr %status, align 4, !dbg !1455
  store i32 %79, ptr %retval, align 4, !dbg !1455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1455

if.end89:                                         ; preds = %if.end85
  %80 = load ptr, ptr %arg, align 8, !dbg !1456
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %80, i32 0, i32 3, !dbg !1458
  %81 = load i16, ptr %aml_opcode, align 2, !dbg !1458
  %conv90 = zext i16 %81 to i32, !dbg !1456
  %cmp91 = icmp eq i32 %conv90, 53, !dbg !1459
  br i1 %cmp91, label %if.then93, label %if.end96, !dbg !1460

if.then93:                                        ; preds = %if.end89
  %82 = load ptr, ptr %arg, align 8, !dbg !1461
  %value94 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %82, i32 0, i32 7, !dbg !1463
  %83 = load ptr, ptr %value94, align 8, !dbg !1464
  call void @acpi_ps_free_op(ptr noundef %83) #5, !dbg !1465
  %84 = load ptr, ptr %arg, align 8, !dbg !1466
  call void @acpi_ps_free_op(ptr noundef %84) #5, !dbg !1467
  store ptr null, ptr %arg, align 8, !dbg !1468
  %85 = load ptr, ptr %walk_state.addr, align 8, !dbg !1469
  %arg_count95 = getelementptr inbounds %struct.acpi_walk_state, ptr %85, i32 0, i32 23, !dbg !1470
  store i32 1, ptr %arg_count95, align 4, !dbg !1471
  br label %if.end96, !dbg !1472

if.end96:                                         ; preds = %if.then93, %if.end89
  br label %if.end99, !dbg !1473

if.else97:                                        ; preds = %lor.lhs.false77
  %86 = load ptr, ptr %walk_state.addr, align 8, !dbg !1474
  %arg_count98 = getelementptr inbounds %struct.acpi_walk_state, ptr %86, i32 0, i32 23, !dbg !1476
  store i32 1, ptr %arg_count98, align 4, !dbg !1477
  br label %if.end99

if.end99:                                         ; preds = %if.else97, %if.end96
  br label %sw.epilog, !dbg !1478

sw.bb100:                                         ; preds = %entry, %entry
  %87 = load ptr, ptr %walk_state.addr, align 8, !dbg !1479
  %arg_count101 = getelementptr inbounds %struct.acpi_walk_state, ptr %87, i32 0, i32 23, !dbg !1480
  store i32 1, ptr %arg_count101, align 4, !dbg !1481
  br label %sw.epilog, !dbg !1482

sw.bb102:                                         ; preds = %entry, %entry, %entry
  %88 = load ptr, ptr %parser_state.addr, align 8, !dbg !1483
  %aml103 = getelementptr inbounds %struct.acpi_parse_state, ptr %88, i32 0, i32 1, !dbg !1485
  %89 = load ptr, ptr %aml103, align 8, !dbg !1485
  %90 = load ptr, ptr %parser_state.addr, align 8, !dbg !1486
  %pkg_end104 = getelementptr inbounds %struct.acpi_parse_state, ptr %90, i32 0, i32 4, !dbg !1487
  %91 = load ptr, ptr %pkg_end104, align 8, !dbg !1487
  %cmp105 = icmp ult ptr %89, %91, !dbg !1488
  br i1 %cmp105, label %if.then107, label %if.end109, !dbg !1489

if.then107:                                       ; preds = %sw.bb102
  %92 = load ptr, ptr %walk_state.addr, align 8, !dbg !1490
  %arg_count108 = getelementptr inbounds %struct.acpi_walk_state, ptr %92, i32 0, i32 23, !dbg !1492
  store i32 -1, ptr %arg_count108, align 4, !dbg !1493
  br label %if.end109, !dbg !1494

if.end109:                                        ; preds = %if.then107, %sw.bb102
  br label %sw.epilog, !dbg !1495

sw.default:                                       ; preds = %entry
  %93 = load i32, ptr %arg_type.addr, align 4, !dbg !1496
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 948, ptr noundef @.str.2, i32 noundef %93) #5, !dbg !1496
  store i32 12291, ptr %status, align 4, !dbg !1497
  br label %sw.epilog, !dbg !1498

sw.epilog:                                        ; preds = %sw.default, %if.end109, %sw.bb100, %if.end99, %if.end64, %if.end38, %if.end22, %sw.bb1, %if.end
  %94 = load ptr, ptr %arg, align 8, !dbg !1499
  %95 = load ptr, ptr %return_arg.addr, align 8, !dbg !1500
  store ptr %94, ptr %95, align 8, !dbg !1501
  %96 = load i32, ptr %status, align 4, !dbg !1502
  store i32 %96, ptr %retval, align 4, !dbg !1502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1502

cleanup:                                          ; preds = %sw.epilog, %if.then88, %if.then84, %if.then61, %if.then57, %if.then31, %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 4, ptr %subop) #4, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #4, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #4, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #4, !dbg !1503
  %97 = load i32, ptr %retval, align 4, !dbg !1503
  ret i32 %97, !dbg !1503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_ps_get_next_field(ptr noundef %parser_state) #0 align 16 !dbg !1504 {
entry:
  %retval = alloca ptr, align 8
  %parser_state.addr = alloca ptr, align 8
  %aml = alloca ptr, align 8
  %field = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %opcode = alloca i16, align 2
  %name = alloca i32, align 4
  %access_type = alloca i8, align 1
  %access_attribute = alloca i8, align 1
  %access_length = alloca i8, align 1
  %pkg_length = alloca i32, align 4
  %pkg_end = alloca ptr, align 8
  %buffer_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !1508, metadata !DIExpression()), !dbg !1520
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml) #4, !dbg !1521
  call void @llvm.dbg.declare(metadata ptr %aml, metadata !1509, metadata !DIExpression()), !dbg !1522
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #4, !dbg !1523
  call void @llvm.dbg.declare(metadata ptr %field, metadata !1510, metadata !DIExpression()), !dbg !1524
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #4, !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1511, metadata !DIExpression()), !dbg !1526
  store ptr null, ptr %arg, align 8, !dbg !1526
  call void @llvm.lifetime.start.p0(i64 2, ptr %opcode) #4, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !1512, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 4, ptr %name) #4, !dbg !1529
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1513, metadata !DIExpression()), !dbg !1530
  call void @llvm.lifetime.start.p0(i64 1, ptr %access_type) #4, !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %access_type, metadata !1514, metadata !DIExpression()), !dbg !1532
  call void @llvm.lifetime.start.p0(i64 1, ptr %access_attribute) #4, !dbg !1533
  call void @llvm.dbg.declare(metadata ptr %access_attribute, metadata !1515, metadata !DIExpression()), !dbg !1534
  call void @llvm.lifetime.start.p0(i64 1, ptr %access_length) #4, !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %access_length, metadata !1516, metadata !DIExpression()), !dbg !1536
  call void @llvm.lifetime.start.p0(i64 4, ptr %pkg_length) #4, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %pkg_length, metadata !1517, metadata !DIExpression()), !dbg !1538
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkg_end) #4, !dbg !1539
  call void @llvm.dbg.declare(metadata ptr %pkg_end, metadata !1518, metadata !DIExpression()), !dbg !1540
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_length) #4, !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %buffer_length, metadata !1519, metadata !DIExpression()), !dbg !1542
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !1543
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 1, !dbg !1544
  %1 = load ptr, ptr %aml1, align 8, !dbg !1544
  store ptr %1, ptr %aml, align 8, !dbg !1545
  %2 = load ptr, ptr %parser_state.addr, align 8, !dbg !1546
  %aml2 = getelementptr inbounds %struct.acpi_parse_state, ptr %2, i32 0, i32 1, !dbg !1546
  %3 = load ptr, ptr %aml2, align 8, !dbg !1546
  %4 = ptrtoint ptr %3 to i64, !dbg !1546
  %5 = inttoptr i64 %4 to ptr, !dbg !1546
  %6 = load i8, ptr %5, align 1, !dbg !1546
  %conv = zext i8 %6 to i32, !dbg !1546
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
  ], !dbg !1547

sw.bb:                                            ; preds = %entry
  store i16 49, ptr %opcode, align 2, !dbg !1548
  %7 = load ptr, ptr %parser_state.addr, align 8, !dbg !1550
  %aml3 = getelementptr inbounds %struct.acpi_parse_state, ptr %7, i32 0, i32 1, !dbg !1551
  %8 = load ptr, ptr %aml3, align 8, !dbg !1552
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !1552
  store ptr %incdec.ptr, ptr %aml3, align 8, !dbg !1552
  br label %sw.epilog, !dbg !1553

sw.bb4:                                           ; preds = %entry
  store i16 50, ptr %opcode, align 2, !dbg !1554
  %9 = load ptr, ptr %parser_state.addr, align 8, !dbg !1555
  %aml5 = getelementptr inbounds %struct.acpi_parse_state, ptr %9, i32 0, i32 1, !dbg !1556
  %10 = load ptr, ptr %aml5, align 8, !dbg !1557
  %incdec.ptr6 = getelementptr i8, ptr %10, i32 1, !dbg !1557
  store ptr %incdec.ptr6, ptr %aml5, align 8, !dbg !1557
  br label %sw.epilog, !dbg !1558

sw.bb7:                                           ; preds = %entry
  store i16 56, ptr %opcode, align 2, !dbg !1559
  %11 = load ptr, ptr %parser_state.addr, align 8, !dbg !1560
  %aml8 = getelementptr inbounds %struct.acpi_parse_state, ptr %11, i32 0, i32 1, !dbg !1561
  %12 = load ptr, ptr %aml8, align 8, !dbg !1562
  %incdec.ptr9 = getelementptr i8, ptr %12, i32 1, !dbg !1562
  store ptr %incdec.ptr9, ptr %aml8, align 8, !dbg !1562
  br label %sw.epilog, !dbg !1563

sw.bb10:                                          ; preds = %entry
  store i16 57, ptr %opcode, align 2, !dbg !1564
  %13 = load ptr, ptr %parser_state.addr, align 8, !dbg !1565
  %aml11 = getelementptr inbounds %struct.acpi_parse_state, ptr %13, i32 0, i32 1, !dbg !1566
  %14 = load ptr, ptr %aml11, align 8, !dbg !1567
  %incdec.ptr12 = getelementptr i8, ptr %14, i32 1, !dbg !1567
  store ptr %incdec.ptr12, ptr %aml11, align 8, !dbg !1567
  br label %sw.epilog, !dbg !1568

sw.default:                                       ; preds = %entry
  store i16 48, ptr %opcode, align 2, !dbg !1569
  br label %sw.epilog, !dbg !1570

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  %15 = load i16, ptr %opcode, align 2, !dbg !1571
  %16 = load ptr, ptr %aml, align 8, !dbg !1572
  %call = call ptr @acpi_ps_alloc_op(i16 noundef zeroext %15, ptr noundef %16) #5, !dbg !1573
  store ptr %call, ptr %field, align 8, !dbg !1574
  %17 = load ptr, ptr %field, align 8, !dbg !1575
  %tobool = icmp ne ptr %17, null, !dbg !1575
  br i1 %tobool, label %if.end, label %if.then, !dbg !1577

if.then:                                          ; preds = %sw.epilog
  store ptr null, ptr %retval, align 8, !dbg !1578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1578

if.end:                                           ; preds = %sw.epilog
  %18 = load i16, ptr %opcode, align 2, !dbg !1580
  %conv13 = zext i16 %18 to i32, !dbg !1580
  switch i32 %conv13, label %sw.default98 [
    i32 48, label %sw.bb14
    i32 49, label %sw.bb18
    i32 50, label %sw.bb21
    i32 57, label %sw.bb21
    i32 56, label %sw.bb46
  ], !dbg !1581

sw.bb14:                                          ; preds = %if.end
  %19 = load ptr, ptr %parser_state.addr, align 8, !dbg !1582
  %aml15 = getelementptr inbounds %struct.acpi_parse_state, ptr %19, i32 0, i32 1, !dbg !1582
  %20 = load ptr, ptr %aml15, align 8, !dbg !1582
  %21 = load i32, ptr %20, align 4, !dbg !1582
  store i32 %21, ptr %name, align 4, !dbg !1582
  %22 = load ptr, ptr %field, align 8, !dbg !1584
  %23 = load i32, ptr %name, align 4, !dbg !1585
  call void @acpi_ps_set_name(ptr noundef %22, i32 noundef %23) #5, !dbg !1586
  %24 = load ptr, ptr %parser_state.addr, align 8, !dbg !1587
  %aml16 = getelementptr inbounds %struct.acpi_parse_state, ptr %24, i32 0, i32 1, !dbg !1588
  %25 = load ptr, ptr %aml16, align 8, !dbg !1589
  %add.ptr = getelementptr i8, ptr %25, i64 4, !dbg !1589
  store ptr %add.ptr, ptr %aml16, align 8, !dbg !1589
  %26 = load ptr, ptr %parser_state.addr, align 8, !dbg !1590
  %call17 = call i32 @acpi_ps_get_next_package_length(ptr noundef %26) #5, !dbg !1591
  %27 = load ptr, ptr %field, align 8, !dbg !1592
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %27, i32 0, i32 7, !dbg !1593
  store i32 %call17, ptr %value, align 8, !dbg !1594
  br label %sw.epilog99, !dbg !1595

sw.bb18:                                          ; preds = %if.end
  %28 = load ptr, ptr %parser_state.addr, align 8, !dbg !1596
  %call19 = call i32 @acpi_ps_get_next_package_length(ptr noundef %28) #5, !dbg !1597
  %29 = load ptr, ptr %field, align 8, !dbg !1598
  %value20 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %29, i32 0, i32 7, !dbg !1599
  store i32 %call19, ptr %value20, align 8, !dbg !1600
  br label %sw.epilog99, !dbg !1601

sw.bb21:                                          ; preds = %if.end, %if.end
  %30 = load ptr, ptr %parser_state.addr, align 8, !dbg !1602
  %aml22 = getelementptr inbounds %struct.acpi_parse_state, ptr %30, i32 0, i32 1, !dbg !1602
  %31 = load ptr, ptr %aml22, align 8, !dbg !1602
  %32 = ptrtoint ptr %31 to i64, !dbg !1602
  %33 = inttoptr i64 %32 to ptr, !dbg !1602
  %34 = load i8, ptr %33, align 1, !dbg !1602
  store i8 %34, ptr %access_type, align 1, !dbg !1603
  %35 = load ptr, ptr %parser_state.addr, align 8, !dbg !1604
  %aml23 = getelementptr inbounds %struct.acpi_parse_state, ptr %35, i32 0, i32 1, !dbg !1605
  %36 = load ptr, ptr %aml23, align 8, !dbg !1606
  %incdec.ptr24 = getelementptr i8, ptr %36, i32 1, !dbg !1606
  store ptr %incdec.ptr24, ptr %aml23, align 8, !dbg !1606
  %37 = load ptr, ptr %parser_state.addr, align 8, !dbg !1607
  %aml25 = getelementptr inbounds %struct.acpi_parse_state, ptr %37, i32 0, i32 1, !dbg !1607
  %38 = load ptr, ptr %aml25, align 8, !dbg !1607
  %39 = ptrtoint ptr %38 to i64, !dbg !1607
  %40 = inttoptr i64 %39 to ptr, !dbg !1607
  %41 = load i8, ptr %40, align 1, !dbg !1607
  store i8 %41, ptr %access_attribute, align 1, !dbg !1608
  %42 = load ptr, ptr %parser_state.addr, align 8, !dbg !1609
  %aml26 = getelementptr inbounds %struct.acpi_parse_state, ptr %42, i32 0, i32 1, !dbg !1610
  %43 = load ptr, ptr %aml26, align 8, !dbg !1611
  %incdec.ptr27 = getelementptr i8, ptr %43, i32 1, !dbg !1611
  store ptr %incdec.ptr27, ptr %aml26, align 8, !dbg !1611
  %44 = load i8, ptr %access_type, align 1, !dbg !1612
  %conv28 = zext i8 %44 to i64, !dbg !1613
  %45 = load ptr, ptr %field, align 8, !dbg !1614
  %value29 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %45, i32 0, i32 7, !dbg !1615
  store i64 %conv28, ptr %value29, align 8, !dbg !1616
  %46 = load i8, ptr %access_attribute, align 1, !dbg !1617
  %conv30 = zext i8 %46 to i32, !dbg !1617
  %shl = shl i32 %conv30, 8, !dbg !1618
  %conv31 = trunc i32 %shl to i16, !dbg !1619
  %conv32 = zext i16 %conv31 to i64, !dbg !1619
  %47 = load ptr, ptr %field, align 8, !dbg !1620
  %value33 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %47, i32 0, i32 7, !dbg !1621
  %48 = load i64, ptr %value33, align 8, !dbg !1622
  %or = or i64 %48, %conv32, !dbg !1622
  store i64 %or, ptr %value33, align 8, !dbg !1622
  %49 = load i16, ptr %opcode, align 2, !dbg !1623
  %conv34 = zext i16 %49 to i32, !dbg !1623
  %cmp = icmp eq i32 %conv34, 57, !dbg !1625
  br i1 %cmp, label %if.then36, label %if.end45, !dbg !1626

if.then36:                                        ; preds = %sw.bb21
  %50 = load ptr, ptr %parser_state.addr, align 8, !dbg !1627
  %aml37 = getelementptr inbounds %struct.acpi_parse_state, ptr %50, i32 0, i32 1, !dbg !1627
  %51 = load ptr, ptr %aml37, align 8, !dbg !1627
  %52 = ptrtoint ptr %51 to i64, !dbg !1627
  %53 = inttoptr i64 %52 to ptr, !dbg !1627
  %54 = load i8, ptr %53, align 1, !dbg !1627
  store i8 %54, ptr %access_length, align 1, !dbg !1629
  %55 = load ptr, ptr %parser_state.addr, align 8, !dbg !1630
  %aml38 = getelementptr inbounds %struct.acpi_parse_state, ptr %55, i32 0, i32 1, !dbg !1631
  %56 = load ptr, ptr %aml38, align 8, !dbg !1632
  %incdec.ptr39 = getelementptr i8, ptr %56, i32 1, !dbg !1632
  store ptr %incdec.ptr39, ptr %aml38, align 8, !dbg !1632
  %57 = load i8, ptr %access_length, align 1, !dbg !1633
  %conv40 = zext i8 %57 to i32, !dbg !1633
  %shl41 = shl i32 %conv40, 16, !dbg !1634
  %conv42 = zext i32 %shl41 to i64, !dbg !1635
  %58 = load ptr, ptr %field, align 8, !dbg !1636
  %value43 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %58, i32 0, i32 7, !dbg !1637
  %59 = load i64, ptr %value43, align 8, !dbg !1638
  %or44 = or i64 %59, %conv42, !dbg !1638
  store i64 %or44, ptr %value43, align 8, !dbg !1638
  br label %if.end45, !dbg !1639

if.end45:                                         ; preds = %if.then36, %sw.bb21
  br label %sw.epilog99, !dbg !1640

sw.bb46:                                          ; preds = %if.end
  %60 = load ptr, ptr %parser_state.addr, align 8, !dbg !1641
  %aml47 = getelementptr inbounds %struct.acpi_parse_state, ptr %60, i32 0, i32 1, !dbg !1642
  %61 = load ptr, ptr %aml47, align 8, !dbg !1642
  store ptr %61, ptr %aml, align 8, !dbg !1643
  %62 = load ptr, ptr %parser_state.addr, align 8, !dbg !1644
  %aml48 = getelementptr inbounds %struct.acpi_parse_state, ptr %62, i32 0, i32 1, !dbg !1644
  %63 = load ptr, ptr %aml48, align 8, !dbg !1644
  %64 = ptrtoint ptr %63 to i64, !dbg !1644
  %65 = inttoptr i64 %64 to ptr, !dbg !1644
  %66 = load i8, ptr %65, align 1, !dbg !1644
  %conv49 = zext i8 %66 to i32, !dbg !1644
  %cmp50 = icmp eq i32 %conv49, 17, !dbg !1646
  br i1 %cmp50, label %if.then52, label %if.else, !dbg !1647

if.then52:                                        ; preds = %sw.bb46
  %67 = load ptr, ptr %parser_state.addr, align 8, !dbg !1648
  %aml53 = getelementptr inbounds %struct.acpi_parse_state, ptr %67, i32 0, i32 1, !dbg !1650
  %68 = load ptr, ptr %aml53, align 8, !dbg !1651
  %incdec.ptr54 = getelementptr i8, ptr %68, i32 1, !dbg !1651
  store ptr %incdec.ptr54, ptr %aml53, align 8, !dbg !1651
  %69 = load ptr, ptr %parser_state.addr, align 8, !dbg !1652
  %aml55 = getelementptr inbounds %struct.acpi_parse_state, ptr %69, i32 0, i32 1, !dbg !1653
  %70 = load ptr, ptr %aml55, align 8, !dbg !1653
  store ptr %70, ptr %pkg_end, align 8, !dbg !1654
  %71 = load ptr, ptr %parser_state.addr, align 8, !dbg !1655
  %call56 = call i32 @acpi_ps_get_next_package_length(ptr noundef %71) #5, !dbg !1656
  store i32 %call56, ptr %pkg_length, align 4, !dbg !1657
  %72 = load i32, ptr %pkg_length, align 4, !dbg !1658
  %73 = load ptr, ptr %pkg_end, align 8, !dbg !1659
  %idx.ext = zext i32 %72 to i64, !dbg !1659
  %add.ptr57 = getelementptr i8, ptr %73, i64 %idx.ext, !dbg !1659
  store ptr %add.ptr57, ptr %pkg_end, align 8, !dbg !1659
  %74 = load ptr, ptr %parser_state.addr, align 8, !dbg !1660
  %aml58 = getelementptr inbounds %struct.acpi_parse_state, ptr %74, i32 0, i32 1, !dbg !1662
  %75 = load ptr, ptr %aml58, align 8, !dbg !1662
  %76 = load ptr, ptr %pkg_end, align 8, !dbg !1663
  %cmp59 = icmp ult ptr %75, %76, !dbg !1664
  br i1 %cmp59, label %if.then61, label %if.end89, !dbg !1665

if.then61:                                        ; preds = %if.then52
  %77 = load ptr, ptr %aml, align 8, !dbg !1666
  %call62 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 51, ptr noundef %77) #5, !dbg !1668
  store ptr %call62, ptr %arg, align 8, !dbg !1669
  %78 = load ptr, ptr %arg, align 8, !dbg !1670
  %tobool63 = icmp ne ptr %78, null, !dbg !1670
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !1672

if.then64:                                        ; preds = %if.then61
  %79 = load ptr, ptr %field, align 8, !dbg !1673
  call void @acpi_ps_free_op(ptr noundef %79) #5, !dbg !1675
  store ptr null, ptr %retval, align 8, !dbg !1676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1676

if.end65:                                         ; preds = %if.then61
  %80 = load ptr, ptr %parser_state.addr, align 8, !dbg !1677
  %aml66 = getelementptr inbounds %struct.acpi_parse_state, ptr %80, i32 0, i32 1, !dbg !1677
  %81 = load ptr, ptr %aml66, align 8, !dbg !1677
  %82 = ptrtoint ptr %81 to i64, !dbg !1677
  %83 = inttoptr i64 %82 to ptr, !dbg !1677
  %84 = load i8, ptr %83, align 1, !dbg !1677
  %conv67 = zext i8 %84 to i16, !dbg !1677
  store i16 %conv67, ptr %opcode, align 2, !dbg !1678
  %85 = load ptr, ptr %parser_state.addr, align 8, !dbg !1679
  %aml68 = getelementptr inbounds %struct.acpi_parse_state, ptr %85, i32 0, i32 1, !dbg !1680
  %86 = load ptr, ptr %aml68, align 8, !dbg !1681
  %incdec.ptr69 = getelementptr i8, ptr %86, i32 1, !dbg !1681
  store ptr %incdec.ptr69, ptr %aml68, align 8, !dbg !1681
  %87 = load i16, ptr %opcode, align 2, !dbg !1682
  %conv70 = zext i16 %87 to i32, !dbg !1682
  switch i32 %conv70, label %sw.default85 [
    i32 10, label %sw.bb71
    i32 11, label %sw.bb76
    i32 12, label %sw.bb81
  ], !dbg !1683

sw.bb71:                                          ; preds = %if.end65
  %88 = load ptr, ptr %parser_state.addr, align 8, !dbg !1684
  %aml72 = getelementptr inbounds %struct.acpi_parse_state, ptr %88, i32 0, i32 1, !dbg !1684
  %89 = load ptr, ptr %aml72, align 8, !dbg !1684
  %90 = ptrtoint ptr %89 to i64, !dbg !1684
  %91 = inttoptr i64 %90 to ptr, !dbg !1684
  %92 = load i8, ptr %91, align 1, !dbg !1684
  %conv73 = zext i8 %92 to i32, !dbg !1684
  store i32 %conv73, ptr %buffer_length, align 4, !dbg !1686
  %93 = load ptr, ptr %parser_state.addr, align 8, !dbg !1687
  %aml74 = getelementptr inbounds %struct.acpi_parse_state, ptr %93, i32 0, i32 1, !dbg !1688
  %94 = load ptr, ptr %aml74, align 8, !dbg !1689
  %add.ptr75 = getelementptr i8, ptr %94, i64 1, !dbg !1689
  store ptr %add.ptr75, ptr %aml74, align 8, !dbg !1689
  br label %sw.epilog86, !dbg !1690

sw.bb76:                                          ; preds = %if.end65
  %95 = load ptr, ptr %parser_state.addr, align 8, !dbg !1691
  %aml77 = getelementptr inbounds %struct.acpi_parse_state, ptr %95, i32 0, i32 1, !dbg !1691
  %96 = load ptr, ptr %aml77, align 8, !dbg !1691
  %97 = ptrtoint ptr %96 to i64, !dbg !1691
  %98 = inttoptr i64 %97 to ptr, !dbg !1691
  %99 = load i16, ptr %98, align 2, !dbg !1691
  %conv78 = zext i16 %99 to i32, !dbg !1691
  store i32 %conv78, ptr %buffer_length, align 4, !dbg !1692
  %100 = load ptr, ptr %parser_state.addr, align 8, !dbg !1693
  %aml79 = getelementptr inbounds %struct.acpi_parse_state, ptr %100, i32 0, i32 1, !dbg !1694
  %101 = load ptr, ptr %aml79, align 8, !dbg !1695
  %add.ptr80 = getelementptr i8, ptr %101, i64 2, !dbg !1695
  store ptr %add.ptr80, ptr %aml79, align 8, !dbg !1695
  br label %sw.epilog86, !dbg !1696

sw.bb81:                                          ; preds = %if.end65
  %102 = load ptr, ptr %parser_state.addr, align 8, !dbg !1697
  %aml82 = getelementptr inbounds %struct.acpi_parse_state, ptr %102, i32 0, i32 1, !dbg !1697
  %103 = load ptr, ptr %aml82, align 8, !dbg !1697
  %104 = ptrtoint ptr %103 to i64, !dbg !1697
  %105 = inttoptr i64 %104 to ptr, !dbg !1697
  %106 = load i32, ptr %105, align 4, !dbg !1697
  store i32 %106, ptr %buffer_length, align 4, !dbg !1698
  %107 = load ptr, ptr %parser_state.addr, align 8, !dbg !1699
  %aml83 = getelementptr inbounds %struct.acpi_parse_state, ptr %107, i32 0, i32 1, !dbg !1700
  %108 = load ptr, ptr %aml83, align 8, !dbg !1701
  %add.ptr84 = getelementptr i8, ptr %108, i64 4, !dbg !1701
  store ptr %add.ptr84, ptr %aml83, align 8, !dbg !1701
  br label %sw.epilog86, !dbg !1702

sw.default85:                                     ; preds = %if.end65
  store i32 0, ptr %buffer_length, align 4, !dbg !1703
  br label %sw.epilog86, !dbg !1704

sw.epilog86:                                      ; preds = %sw.default85, %sw.bb81, %sw.bb76, %sw.bb71
  %109 = load i32, ptr %buffer_length, align 4, !dbg !1705
  %110 = load ptr, ptr %arg, align 8, !dbg !1706
  %value87 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %110, i32 0, i32 7, !dbg !1707
  store i32 %109, ptr %value87, align 8, !dbg !1708
  %111 = load ptr, ptr %parser_state.addr, align 8, !dbg !1709
  %aml88 = getelementptr inbounds %struct.acpi_parse_state, ptr %111, i32 0, i32 1, !dbg !1710
  %112 = load ptr, ptr %aml88, align 8, !dbg !1710
  %113 = load ptr, ptr %arg, align 8, !dbg !1711
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %113, i32 0, i32 10, !dbg !1712
  store ptr %112, ptr %data, align 8, !dbg !1713
  br label %if.end89, !dbg !1714

if.end89:                                         ; preds = %sw.epilog86, %if.then52
  %114 = load ptr, ptr %pkg_end, align 8, !dbg !1715
  %115 = load ptr, ptr %parser_state.addr, align 8, !dbg !1716
  %aml90 = getelementptr inbounds %struct.acpi_parse_state, ptr %115, i32 0, i32 1, !dbg !1717
  store ptr %114, ptr %aml90, align 8, !dbg !1718
  br label %if.end97, !dbg !1719

if.else:                                          ; preds = %sw.bb46
  %116 = load ptr, ptr %aml, align 8, !dbg !1720
  %call91 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 45, ptr noundef %116) #5, !dbg !1722
  store ptr %call91, ptr %arg, align 8, !dbg !1723
  %117 = load ptr, ptr %arg, align 8, !dbg !1724
  %tobool92 = icmp ne ptr %117, null, !dbg !1724
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !1726

if.then93:                                        ; preds = %if.else
  %118 = load ptr, ptr %field, align 8, !dbg !1727
  call void @acpi_ps_free_op(ptr noundef %118) #5, !dbg !1729
  store ptr null, ptr %retval, align 8, !dbg !1730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1730

if.end94:                                         ; preds = %if.else
  %119 = load ptr, ptr %parser_state.addr, align 8, !dbg !1731
  %call95 = call ptr @acpi_ps_get_next_namestring(ptr noundef %119) #5, !dbg !1732
  %120 = load ptr, ptr %arg, align 8, !dbg !1733
  %value96 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %120, i32 0, i32 7, !dbg !1734
  store ptr %call95, ptr %value96, align 8, !dbg !1735
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end89
  %121 = load ptr, ptr %field, align 8, !dbg !1736
  %122 = load ptr, ptr %arg, align 8, !dbg !1737
  call void @acpi_ps_append_arg(ptr noundef %121, ptr noundef %122) #5, !dbg !1738
  br label %sw.epilog99, !dbg !1739

sw.default98:                                     ; preds = %if.end
  br label %sw.epilog99, !dbg !1740

sw.epilog99:                                      ; preds = %sw.default98, %if.end97, %if.end45, %sw.bb18, %sw.bb14
  %123 = load ptr, ptr %field, align 8, !dbg !1741
  store ptr %123, ptr %retval, align 8, !dbg !1741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1741

cleanup:                                          ; preds = %sw.epilog99, %if.then93, %if.then64, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_length) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkg_end) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %pkg_length) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 1, ptr %access_length) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 1, ptr %access_attribute) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 1, ptr %access_type) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %name) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 2, ptr %opcode) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml) #4, !dbg !1742
  %124 = load ptr, ptr %retval, align 8, !dbg !1742
  ret ptr %124, !dbg !1742
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ps_free_field_list(ptr noundef %start) #0 align 16 !dbg !1743 {
entry:
  %start.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %next = alloca ptr, align 8
  %arg = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1747, metadata !DIExpression()), !dbg !1751
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #4, !dbg !1752
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !1748, metadata !DIExpression()), !dbg !1753
  %0 = load ptr, ptr %start.addr, align 8, !dbg !1754
  store ptr %0, ptr %cur, align 8, !dbg !1753
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1749, metadata !DIExpression()), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #4, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1750, metadata !DIExpression()), !dbg !1758
  br label %while.cond, !dbg !1759

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %cur, align 8, !dbg !1760
  %tobool = icmp ne ptr %1, null, !dbg !1759
  br i1 %tobool, label %while.body, label %while.end, !dbg !1759

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %cur, align 8, !dbg !1761
  %next1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 5, !dbg !1763
  %3 = load ptr, ptr %next1, align 8, !dbg !1763
  store ptr %3, ptr %next, align 8, !dbg !1764
  %4 = load ptr, ptr %cur, align 8, !dbg !1765
  %call = call ptr @acpi_ps_get_arg(ptr noundef %4, i32 noundef 0) #5, !dbg !1766
  store ptr %call, ptr %arg, align 8, !dbg !1767
  %5 = load ptr, ptr %arg, align 8, !dbg !1768
  %tobool2 = icmp ne ptr %5, null, !dbg !1768
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1770

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %arg, align 8, !dbg !1771
  call void @acpi_ps_free_op(ptr noundef %6) #5, !dbg !1773
  br label %if.end, !dbg !1774

if.end:                                           ; preds = %if.then, %while.body
  %7 = load ptr, ptr %cur, align 8, !dbg !1775
  call void @acpi_ps_free_op(ptr noundef %7) #5, !dbg !1776
  %8 = load ptr, ptr %next, align 8, !dbg !1777
  store ptr %8, ptr %cur, align 8, !dbg !1778
  br label %while.cond, !dbg !1759, !llvm.loop !1779

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #4, !dbg !1781
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4, !dbg !1781
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #4, !dbg !1781
  ret void, !dbg !1781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1782 dso_local zeroext i16 @acpi_ps_peek_opcode(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1785 dso_local zeroext i8 @acpi_ps_is_leading_char(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1788 dso_local void @acpi_ps_free_op(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1789 dso_local void @acpi_ps_set_name(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1792 dso_local ptr @acpi_ps_get_arg(ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !55, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.psargs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22psargs\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/psargs.ll drivers/acpi/acpica/psargs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !39, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/psargs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b1ed5a037652d99477d7b731a44b68d1")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !{!13, !18, !20, !23, !25, !27, !30, !31, !32, !33, !34, !37, !38}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !29)
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !35, line: 42, baseType: !36)
!35 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !24, line: 127, baseType: !27)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!39 = !{!40, !45, !50, !0}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 328, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 41)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 168, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 21)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 948, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 176, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 22)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 56, elements: !57)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!57 = !{!58}
!58 = !DISubrange(count: 7)
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 8, !"cf-protection-branch", i32 1}
!63 = !{i32 4, !"function_return_thunk_extern", i32 1}
!64 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!65 = !{i32 1, !"Code Model", i32 2}
!66 = !{i32 1, !"override-stack-alignment", i32 8}
!67 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!68 = distinct !DISubprogram(name: "acpi_ps_get_next_package_end", scope: !3, file: !3, line: 96, type: !69, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!69 = !DISubroutineType(types: !70)
!70 = !{!38, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !821, !822, !823, !824}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !72, file: !6, line: 910, baseType: !38, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !72, file: !6, line: 911, baseType: !38, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !72, file: !6, line: 912, baseType: !38, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !72, file: !6, line: 913, baseType: !38, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !72, file: !6, line: 914, baseType: !38, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !72, file: !6, line: 915, baseType: !80, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !82)
!82 = !{!83, !764, !780}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !81, file: !6, line: 892, baseType: !84, size: 448)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !754, !763}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !6, line: 845, baseType: !80, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !6, line: 845, baseType: !13, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !6, line: 845, baseType: !13, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !84, file: !6, line: 845, baseType: !20, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !84, file: !6, line: 845, baseType: !38, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !84, file: !6, line: 845, baseType: !80, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !84, file: !6, line: 845, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !95)
!95 = !{!96, !738, !739, !740, !741, !750, !751, !752, !753}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !6, line: 134, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !99, line: 369, size: 576, elements: !100)
!99 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!100 = !{!101, !109, !122, !132, !145, !159, !168, !388, !405, !421, !434, !512, !524, !538, !548, !566, !588, !607, !626, !645, !658, !684, !701, !714, !728, !737}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !98, file: !99, line: 370, baseType: !102, size: 128)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !99, line: 73, size: 128, elements: !103)
!103 = !{!104, !105, !106, !107, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !99, line: 74, baseType: !97, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !99, line: 74, baseType: !13, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !99, line: 74, baseType: !13, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !99, line: 74, baseType: !20, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !99, line: 74, baseType: !13, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !98, file: !99, line: 371, baseType: !110, size: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !99, line: 76, size: 192, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !121}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !99, line: 77, baseType: !97, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !99, line: 77, baseType: !13, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !99, line: 77, baseType: !13, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !99, line: 77, baseType: !20, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !99, line: 77, baseType: !13, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !110, file: !99, line: 77, baseType: !118, size: 24, offset: 104)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 3)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !110, file: !99, line: 78, baseType: !27, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !98, file: !99, line: 372, baseType: !123, size: 256)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !99, line: 93, size: 256, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !99, line: 94, baseType: !97, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !99, line: 94, baseType: !13, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !99, line: 94, baseType: !13, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !99, line: 94, baseType: !20, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !99, line: 94, baseType: !13, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !123, file: !99, line: 94, baseType: !18, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !123, file: !99, line: 94, baseType: !25, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !98, file: !99, line: 373, baseType: !133, size: 384)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !99, line: 97, size: 384, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !99, line: 98, baseType: !97, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !99, line: 98, baseType: !13, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !99, line: 98, baseType: !13, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !99, line: 98, baseType: !20, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !99, line: 98, baseType: !13, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !133, file: !99, line: 98, baseType: !38, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !133, file: !99, line: 98, baseType: !25, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !133, file: !99, line: 99, baseType: !25, size: 32, offset: 224)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !133, file: !99, line: 100, baseType: !38, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !99, line: 101, baseType: !93, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !98, file: !99, line: 374, baseType: !146, size: 384)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !99, line: 104, size: 384, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !156, !157, !158}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !99, line: 105, baseType: !97, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !99, line: 105, baseType: !13, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !99, line: 105, baseType: !13, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !99, line: 105, baseType: !20, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !99, line: 105, baseType: !13, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !99, line: 105, baseType: !93, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !146, file: !99, line: 106, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !146, file: !99, line: 107, baseType: !38, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !146, file: !99, line: 108, baseType: !25, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !146, file: !99, line: 109, baseType: !25, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !98, file: !99, line: 375, baseType: !160, size: 192)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !99, line: 118, size: 192, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !160, file: !99, line: 119, baseType: !97, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !160, file: !99, line: 119, baseType: !13, size: 8, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !99, line: 119, baseType: !13, size: 8, offset: 72)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !160, file: !99, line: 119, baseType: !20, size: 16, offset: 80)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !160, file: !99, line: 119, baseType: !13, size: 8, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !160, file: !99, line: 119, baseType: !31, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !98, file: !99, line: 376, baseType: !169, size: 448)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !99, line: 144, size: 448, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !385, !386, !387}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !169, file: !99, line: 145, baseType: !97, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !99, line: 145, baseType: !13, size: 8, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !99, line: 145, baseType: !13, size: 8, offset: 72)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !169, file: !99, line: 145, baseType: !20, size: 16, offset: 80)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !99, line: 145, baseType: !13, size: 8, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !169, file: !99, line: 145, baseType: !13, size: 8, offset: 104)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !169, file: !99, line: 146, baseType: !13, size: 8, offset: 112)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !169, file: !99, line: 147, baseType: !13, size: 8, offset: 120)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !169, file: !99, line: 148, baseType: !97, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !169, file: !99, line: 149, baseType: !97, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !169, file: !99, line: 150, baseType: !38, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !169, file: !99, line: 154, baseType: !183, size: 64, offset: 320)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !99, line: 151, size: 64, elements: !184)
!184 = !{!185, !384}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !183, file: !99, line: 152, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!23, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !192, line: 37, size: 9024, elements: !193)
!192 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !223, !227, !231, !232, !233, !234, !348, !349, !350, !351, !352, !353, !354, !355, !356, !367, !368, !369, !370, !371, !372, !373, !374, !376, !382}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !192, line: 38, baseType: !190, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !191, file: !192, line: 39, baseType: !13, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !191, file: !192, line: 40, baseType: !13, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !191, file: !192, line: 41, baseType: !20, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !191, file: !192, line: 42, baseType: !13, size: 8, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !191, file: !192, line: 43, baseType: !13, size: 8, offset: 104)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !191, file: !192, line: 44, baseType: !13, size: 8, offset: 112)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !191, file: !192, line: 45, baseType: !202, size: 16, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !24, line: 445, baseType: !20)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !191, file: !192, line: 46, baseType: !13, size: 8, offset: 144)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !191, file: !192, line: 47, baseType: !13, size: 8, offset: 152)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !191, file: !192, line: 48, baseType: !13, size: 8, offset: 160)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !191, file: !192, line: 49, baseType: !13, size: 8, offset: 168)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !191, file: !192, line: 50, baseType: !13, size: 8, offset: 176)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !191, file: !192, line: 51, baseType: !13, size: 8, offset: 184)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !191, file: !192, line: 52, baseType: !13, size: 8, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !191, file: !192, line: 53, baseType: !13, size: 8, offset: 200)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !191, file: !192, line: 54, baseType: !38, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !191, file: !192, line: 55, baseType: !25, size: 32, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !191, file: !192, line: 56, baseType: !25, size: 32, offset: 352)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !191, file: !192, line: 57, baseType: !25, size: 32, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !191, file: !192, line: 58, baseType: !25, size: 32, offset: 416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !191, file: !192, line: 60, baseType: !72, size: 640, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !191, file: !192, line: 61, baseType: !25, size: 32, offset: 1088)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !191, file: !192, line: 62, baseType: !25, size: 32, offset: 1120)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !191, file: !192, line: 63, baseType: !20, size: 16, offset: 1152)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !191, file: !192, line: 64, baseType: !13, size: 8, offset: 1168)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !191, file: !192, line: 66, baseType: !222, size: 2688, offset: 1216)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !57)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !191, file: !192, line: 67, baseType: !224, size: 3072, offset: 3904)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !191, file: !192, line: 68, baseType: !228, size: 576, offset: 6976)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 576, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 9)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !191, file: !192, line: 69, baseType: !155, size: 64, offset: 7552)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !191, file: !192, line: 71, baseType: !38, size: 64, offset: 7616)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !191, file: !192, line: 72, baseType: !155, size: 64, offset: 7680)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !191, file: !192, line: 73, baseType: !235, size: 64, offset: 7744)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !237)
!237 = !{!238, !246, !259, !268, !277, !290, !304, !316, !326}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !236, file: !6, line: 680, baseType: !239, size: 128)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !240)
!240 = !{!241, !242, !243, !244, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !6, line: 576, baseType: !31, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !239, file: !6, line: 576, baseType: !13, size: 8, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !239, file: !6, line: 576, baseType: !13, size: 8, offset: 72)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !239, file: !6, line: 576, baseType: !20, size: 16, offset: 80)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !239, file: !6, line: 576, baseType: !20, size: 16, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !236, file: !6, line: 681, baseType: !247, size: 384)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !6, line: 605, baseType: !31, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !6, line: 605, baseType: !13, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !6, line: 605, baseType: !13, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !247, file: !6, line: 605, baseType: !20, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !247, file: !6, line: 605, baseType: !20, size: 16, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !247, file: !6, line: 606, baseType: !20, size: 16, offset: 112)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !247, file: !6, line: 607, baseType: !80, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !247, file: !6, line: 608, baseType: !38, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !247, file: !6, line: 609, baseType: !38, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !247, file: !6, line: 610, baseType: !27, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !236, file: !6, line: 682, baseType: !260, size: 192)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !6, line: 583, baseType: !31, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !260, file: !6, line: 583, baseType: !13, size: 8, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !6, line: 583, baseType: !13, size: 8, offset: 72)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !260, file: !6, line: 583, baseType: !20, size: 16, offset: 80)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !260, file: !6, line: 583, baseType: !20, size: 16, offset: 96)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !260, file: !6, line: 584, baseType: !97, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !236, file: !6, line: 683, baseType: !269, size: 192)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !6, line: 617, baseType: !31, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !6, line: 617, baseType: !13, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !6, line: 617, baseType: !13, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !6, line: 617, baseType: !20, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !6, line: 617, baseType: !20, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !269, file: !6, line: 618, baseType: !93, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !236, file: !6, line: 684, baseType: !278, size: 448)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !6, line: 622, baseType: !31, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !6, line: 622, baseType: !13, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !6, line: 622, baseType: !13, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !6, line: 622, baseType: !20, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !6, line: 622, baseType: !20, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !278, file: !6, line: 623, baseType: !25, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !278, file: !6, line: 624, baseType: !80, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !278, file: !6, line: 625, baseType: !38, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !278, file: !6, line: 626, baseType: !38, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !278, file: !6, line: 627, baseType: !25, size: 32, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !236, file: !6, line: 685, baseType: !291, size: 512)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !6, line: 591, baseType: !31, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !6, line: 591, baseType: !13, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !6, line: 591, baseType: !13, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !6, line: 591, baseType: !20, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !6, line: 591, baseType: !20, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !291, file: !6, line: 592, baseType: !25, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !291, file: !6, line: 593, baseType: !97, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !291, file: !6, line: 594, baseType: !97, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !291, file: !6, line: 595, baseType: !190, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !291, file: !6, line: 596, baseType: !31, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !291, file: !6, line: 597, baseType: !25, size: 32, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !236, file: !6, line: 686, baseType: !305, size: 320)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !6, line: 635, baseType: !31, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !6, line: 635, baseType: !13, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !6, line: 635, baseType: !13, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !6, line: 635, baseType: !20, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !6, line: 635, baseType: !20, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !305, file: !6, line: 636, baseType: !13, size: 8, offset: 112)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !305, file: !6, line: 637, baseType: !190, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !305, file: !6, line: 638, baseType: !97, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !305, file: !6, line: 639, baseType: !27, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !236, file: !6, line: 687, baseType: !317, size: 640)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !6, line: 647, baseType: !31, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !6, line: 647, baseType: !13, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !6, line: 647, baseType: !13, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !6, line: 647, baseType: !20, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !6, line: 647, baseType: !20, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !317, file: !6, line: 648, baseType: !325, size: 512, offset: 128)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 512, elements: !225)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !236, file: !6, line: 688, baseType: !327, size: 320)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !6, line: 670, baseType: !31, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !6, line: 670, baseType: !13, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !6, line: 670, baseType: !13, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !6, line: 670, baseType: !20, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !6, line: 670, baseType: !20, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !327, file: !6, line: 671, baseType: !13, size: 8, offset: 112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !327, file: !6, line: 672, baseType: !93, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !327, file: !6, line: 673, baseType: !97, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !327, file: !6, line: 674, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !340)
!340 = !{!341, !347}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !339, file: !6, line: 661, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !24, line: 1061, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346, !25, !31}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !31)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !339, file: !6, line: 662, baseType: !31, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !191, file: !192, line: 74, baseType: !93, size: 64, offset: 7808)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !191, file: !192, line: 75, baseType: !97, size: 64, offset: 7872)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !191, file: !192, line: 76, baseType: !93, size: 64, offset: 7936)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !191, file: !192, line: 77, baseType: !80, size: 64, offset: 8000)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !191, file: !192, line: 78, baseType: !97, size: 64, offset: 8064)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !191, file: !192, line: 79, baseType: !93, size: 64, offset: 8128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !191, file: !192, line: 80, baseType: !18, size: 64, offset: 8192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !191, file: !192, line: 81, baseType: !80, size: 64, offset: 8256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !191, file: !192, line: 82, baseType: !357, size: 64, offset: 8320)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !359, file: !6, line: 722, baseType: !25, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !359, file: !6, line: 723, baseType: !25, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !6, line: 724, baseType: !20, size: 16, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !359, file: !6, line: 725, baseType: !13, size: 8, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !359, file: !6, line: 726, baseType: !13, size: 8, offset: 88)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !359, file: !6, line: 727, baseType: !13, size: 8, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !191, file: !192, line: 83, baseType: !80, size: 64, offset: 8384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !191, file: !192, line: 84, baseType: !97, size: 64, offset: 8448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !191, file: !192, line: 85, baseType: !235, size: 64, offset: 8512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !191, file: !192, line: 86, baseType: !97, size: 64, offset: 8576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !191, file: !192, line: 87, baseType: !235, size: 64, offset: 8640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !191, file: !192, line: 88, baseType: !80, size: 64, offset: 8704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !191, file: !192, line: 89, baseType: !80, size: 64, offset: 8768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !191, file: !192, line: 90, baseType: !375, size: 64, offset: 8832)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !191, file: !192, line: 91, baseType: !377, size: 64, offset: 8896)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!23, !190, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !191, file: !192, line: 92, baseType: !383, size: 64, offset: 8960)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !187)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !183, file: !99, line: 153, baseType: !97, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !169, file: !99, line: 156, baseType: !25, size: 32, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !99, line: 157, baseType: !202, size: 16, offset: 416)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !169, file: !99, line: 158, baseType: !13, size: 8, offset: 432)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !98, file: !99, line: 377, baseType: !389, size: 576)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !99, line: 122, size: 576, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !389, file: !99, line: 123, baseType: !97, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !389, file: !99, line: 123, baseType: !13, size: 8, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !99, line: 123, baseType: !13, size: 8, offset: 72)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !389, file: !99, line: 123, baseType: !20, size: 16, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !99, line: 123, baseType: !13, size: 8, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !389, file: !99, line: 123, baseType: !13, size: 8, offset: 104)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !389, file: !99, line: 124, baseType: !20, size: 16, offset: 112)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !389, file: !99, line: 125, baseType: !31, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !389, file: !99, line: 126, baseType: !27, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !389, file: !99, line: 127, baseType: !375, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !389, file: !99, line: 128, baseType: !97, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !99, line: 129, baseType: !97, size: 64, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !389, file: !99, line: 130, baseType: !93, size: 64, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !389, file: !99, line: 131, baseType: !13, size: 8, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !98, file: !99, line: 378, baseType: !406, size: 512)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !99, line: 134, size: 512, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !419, !420}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !406, file: !99, line: 135, baseType: !97, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !406, file: !99, line: 135, baseType: !13, size: 8, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !406, file: !99, line: 135, baseType: !13, size: 8, offset: 72)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !406, file: !99, line: 135, baseType: !20, size: 16, offset: 80)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !99, line: 135, baseType: !13, size: 8, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !406, file: !99, line: 135, baseType: !13, size: 8, offset: 104)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !406, file: !99, line: 136, baseType: !93, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !406, file: !99, line: 137, baseType: !97, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !406, file: !99, line: 138, baseType: !97, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !406, file: !99, line: 139, baseType: !418, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !24, line: 129, baseType: !27)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !406, file: !99, line: 140, baseType: !25, size: 32, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !406, file: !99, line: 141, baseType: !31, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !98, file: !99, line: 379, baseType: !422, size: 320)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !99, line: 185, size: 320, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !433}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !422, file: !99, line: 186, baseType: !97, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !422, file: !99, line: 186, baseType: !13, size: 8, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !99, line: 186, baseType: !13, size: 8, offset: 72)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !422, file: !99, line: 186, baseType: !20, size: 16, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !99, line: 186, baseType: !13, size: 8, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !422, file: !99, line: 186, baseType: !430, size: 128, offset: 128)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 2)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !422, file: !99, line: 186, baseType: !97, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !98, file: !99, line: 380, baseType: !435, size: 384)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !99, line: 188, size: 384, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !435, file: !99, line: 189, baseType: !97, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !435, file: !99, line: 189, baseType: !13, size: 8, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !435, file: !99, line: 189, baseType: !13, size: 8, offset: 72)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !435, file: !99, line: 189, baseType: !20, size: 16, offset: 80)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !435, file: !99, line: 189, baseType: !13, size: 8, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !435, file: !99, line: 190, baseType: !430, size: 128, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !435, file: !99, line: 190, baseType: !97, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !435, file: !99, line: 190, baseType: !445, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !447)
!447 = !{!448, !449, !450, !451, !459, !474, !506, !507, !508, !509, !510, !511}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !446, file: !6, line: 481, baseType: !93, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !446, file: !6, line: 482, baseType: !445, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !6, line: 483, baseType: !445, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !446, file: !6, line: 484, baseType: !452, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !454)
!454 = !{!455, !456, !457, !458}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !453, file: !6, line: 498, baseType: !452, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !6, line: 499, baseType: !452, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !453, file: !6, line: 500, baseType: !445, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !453, file: !6, line: 501, baseType: !25, size: 32, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !446, file: !6, line: 485, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !462)
!462 = !{!463, !468, !469, !470, !471, !472, !473}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !461, file: !6, line: 467, baseType: !464, size: 128)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !464, file: !6, line: 460, baseType: !13, size: 8)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !464, file: !6, line: 461, baseType: !27, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !461, file: !6, line: 468, baseType: !464, size: 128, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !461, file: !6, line: 469, baseType: !20, size: 16, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !461, file: !6, line: 470, baseType: !13, size: 8, offset: 272)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !461, file: !6, line: 471, baseType: !13, size: 8, offset: 280)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !461, file: !6, line: 472, baseType: !13, size: 8, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !461, file: !6, line: 473, baseType: !13, size: 8, offset: 296)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !446, file: !6, line: 486, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !477)
!477 = !{!478, !501, !502, !503, !504, !505}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !476, file: !6, line: 449, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !480)
!480 = !{!481, !482, !495}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !479, file: !6, line: 439, baseType: !93, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !479, file: !6, line: 440, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !485)
!485 = !{!486, !491, !492, !493, !494}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !484, file: !6, line: 420, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !24, line: 1058, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!25, !346, !25, !31}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !484, file: !6, line: 421, baseType: !31, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !484, file: !6, line: 422, baseType: !93, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !484, file: !6, line: 423, baseType: !13, size: 8, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !484, file: !6, line: 424, baseType: !13, size: 8, offset: 200)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !479, file: !6, line: 441, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !497, file: !6, line: 430, baseType: !93, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !6, line: 431, baseType: !496, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !476, file: !6, line: 450, baseType: !460, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !6, line: 451, baseType: !13, size: 8, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !476, file: !6, line: 452, baseType: !13, size: 8, offset: 136)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !476, file: !6, line: 453, baseType: !13, size: 8, offset: 144)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !476, file: !6, line: 454, baseType: !13, size: 8, offset: 152)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !446, file: !6, line: 487, baseType: !27, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !446, file: !6, line: 488, baseType: !25, size: 32, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !446, file: !6, line: 489, baseType: !20, size: 16, offset: 480)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !446, file: !6, line: 490, baseType: !20, size: 16, offset: 496)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !446, file: !6, line: 491, baseType: !13, size: 8, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !446, file: !6, line: 492, baseType: !13, size: 8, offset: 520)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !98, file: !99, line: 381, baseType: !513, size: 384)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !99, line: 193, size: 384, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !513, file: !99, line: 194, baseType: !97, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !513, file: !99, line: 194, baseType: !13, size: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !513, file: !99, line: 194, baseType: !13, size: 8, offset: 72)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !513, file: !99, line: 194, baseType: !20, size: 16, offset: 80)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !99, line: 194, baseType: !13, size: 8, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !513, file: !99, line: 194, baseType: !430, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !513, file: !99, line: 194, baseType: !97, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !513, file: !99, line: 194, baseType: !25, size: 32, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !513, file: !99, line: 195, baseType: !25, size: 32, offset: 352)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !98, file: !99, line: 382, baseType: !525, size: 384)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !99, line: 198, size: 384, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !525, file: !99, line: 199, baseType: !97, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !99, line: 199, baseType: !13, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !99, line: 199, baseType: !13, size: 8, offset: 72)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !525, file: !99, line: 199, baseType: !20, size: 16, offset: 80)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !99, line: 199, baseType: !13, size: 8, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !525, file: !99, line: 201, baseType: !13, size: 8, offset: 104)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !525, file: !99, line: 202, baseType: !13, size: 8, offset: 112)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !525, file: !99, line: 203, baseType: !430, size: 128, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !525, file: !99, line: 203, baseType: !97, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !525, file: !99, line: 203, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !27)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !98, file: !99, line: 383, baseType: !539, size: 320)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !99, line: 206, size: 320, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !539, file: !99, line: 207, baseType: !97, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !539, file: !99, line: 207, baseType: !13, size: 8, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !539, file: !99, line: 207, baseType: !13, size: 8, offset: 72)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !539, file: !99, line: 207, baseType: !20, size: 16, offset: 80)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !99, line: 207, baseType: !13, size: 8, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !539, file: !99, line: 207, baseType: !430, size: 128, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !539, file: !99, line: 207, baseType: !97, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !98, file: !99, line: 384, baseType: !549, size: 384)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !99, line: 234, size: 384, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !549, file: !99, line: 235, baseType: !97, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !549, file: !99, line: 235, baseType: !13, size: 8, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !549, file: !99, line: 235, baseType: !13, size: 8, offset: 72)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !549, file: !99, line: 235, baseType: !20, size: 16, offset: 80)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !99, line: 235, baseType: !13, size: 8, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !549, file: !99, line: 235, baseType: !13, size: 8, offset: 104)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !549, file: !99, line: 235, baseType: !13, size: 8, offset: 112)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !549, file: !99, line: 235, baseType: !13, size: 8, offset: 120)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !549, file: !99, line: 235, baseType: !93, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !549, file: !99, line: 235, baseType: !25, size: 32, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !549, file: !99, line: 235, baseType: !25, size: 32, offset: 224)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !549, file: !99, line: 235, baseType: !25, size: 32, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !549, file: !99, line: 235, baseType: !13, size: 8, offset: 288)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !549, file: !99, line: 235, baseType: !13, size: 8, offset: 296)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !549, file: !99, line: 235, baseType: !97, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !98, file: !99, line: 385, baseType: !567, size: 576)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !99, line: 238, size: 576, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !567, file: !99, line: 239, baseType: !97, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !567, file: !99, line: 239, baseType: !13, size: 8, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !567, file: !99, line: 239, baseType: !13, size: 8, offset: 72)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !567, file: !99, line: 239, baseType: !20, size: 16, offset: 80)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !99, line: 239, baseType: !13, size: 8, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !567, file: !99, line: 239, baseType: !13, size: 8, offset: 104)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !567, file: !99, line: 239, baseType: !13, size: 8, offset: 112)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !567, file: !99, line: 239, baseType: !13, size: 8, offset: 120)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !567, file: !99, line: 239, baseType: !93, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !567, file: !99, line: 239, baseType: !25, size: 32, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !567, file: !99, line: 239, baseType: !25, size: 32, offset: 224)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !567, file: !99, line: 239, baseType: !25, size: 32, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !567, file: !99, line: 239, baseType: !13, size: 8, offset: 288)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !567, file: !99, line: 239, baseType: !13, size: 8, offset: 296)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !567, file: !99, line: 239, baseType: !20, size: 16, offset: 304)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !567, file: !99, line: 240, baseType: !97, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !567, file: !99, line: 241, baseType: !38, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !567, file: !99, line: 242, baseType: !20, size: 16, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !567, file: !99, line: 243, baseType: !38, size: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !98, file: !99, line: 386, baseType: !589, size: 384)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !99, line: 263, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !99, line: 264, baseType: !97, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !99, line: 264, baseType: !20, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 104)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 112)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 120)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !589, file: !99, line: 264, baseType: !93, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !589, file: !99, line: 264, baseType: !25, size: 32, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !589, file: !99, line: 264, baseType: !25, size: 32, offset: 224)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !589, file: !99, line: 264, baseType: !25, size: 32, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 288)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 296)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !589, file: !99, line: 264, baseType: !13, size: 8, offset: 304)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !589, file: !99, line: 265, baseType: !97, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !98, file: !99, line: 387, baseType: !608, size: 448)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !99, line: 246, size: 448, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !99, line: 247, baseType: !97, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !99, line: 247, baseType: !13, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !99, line: 247, baseType: !13, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !99, line: 247, baseType: !20, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !99, line: 247, baseType: !13, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !608, file: !99, line: 247, baseType: !13, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !608, file: !99, line: 247, baseType: !13, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !608, file: !99, line: 247, baseType: !13, size: 8, offset: 120)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !99, line: 247, baseType: !93, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !608, file: !99, line: 247, baseType: !25, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !608, file: !99, line: 247, baseType: !25, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !99, line: 247, baseType: !25, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !608, file: !99, line: 247, baseType: !13, size: 8, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !608, file: !99, line: 247, baseType: !13, size: 8, offset: 296)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !608, file: !99, line: 247, baseType: !97, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !608, file: !99, line: 248, baseType: !97, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !98, file: !99, line: 388, baseType: !627, size: 448)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !99, line: 251, size: 448, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !99, line: 252, baseType: !97, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !99, line: 252, baseType: !13, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !99, line: 252, baseType: !13, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !99, line: 252, baseType: !20, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !99, line: 252, baseType: !13, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !99, line: 252, baseType: !13, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !99, line: 252, baseType: !13, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !99, line: 252, baseType: !13, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !99, line: 252, baseType: !93, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !99, line: 252, baseType: !25, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !99, line: 252, baseType: !25, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !99, line: 252, baseType: !25, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !99, line: 252, baseType: !13, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !99, line: 252, baseType: !13, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !627, file: !99, line: 257, baseType: !97, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !627, file: !99, line: 258, baseType: !97, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !98, file: !99, line: 389, baseType: !646, size: 512)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !99, line: 274, size: 512, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !646, file: !99, line: 275, baseType: !97, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !646, file: !99, line: 275, baseType: !13, size: 8, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !99, line: 275, baseType: !13, size: 8, offset: 72)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !646, file: !99, line: 275, baseType: !20, size: 16, offset: 80)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !99, line: 275, baseType: !13, size: 8, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !99, line: 275, baseType: !93, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !646, file: !99, line: 276, baseType: !25, size: 32, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !646, file: !99, line: 277, baseType: !342, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !646, file: !99, line: 278, baseType: !31, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !646, file: !99, line: 279, baseType: !430, size: 128, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !98, file: !99, line: 390, baseType: !659, size: 576)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !99, line: 282, size: 576, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !673, !674, !675, !676, !682, !683}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !659, file: !99, line: 283, baseType: !97, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !659, file: !99, line: 283, baseType: !13, size: 8, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !659, file: !99, line: 283, baseType: !13, size: 8, offset: 72)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !659, file: !99, line: 283, baseType: !20, size: 16, offset: 80)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !99, line: 283, baseType: !13, size: 8, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !659, file: !99, line: 283, baseType: !13, size: 8, offset: 104)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !659, file: !99, line: 284, baseType: !13, size: 8, offset: 112)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !659, file: !99, line: 285, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !24, line: 1093, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!23, !25, !418, !25, !32, !31, !31}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !659, file: !99, line: 286, baseType: !93, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !659, file: !99, line: 287, baseType: !31, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !659, file: !99, line: 288, baseType: !31, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !659, file: !99, line: 289, baseType: !677, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !24, line: 1126, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!23, !346, !25, !31, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !659, file: !99, line: 290, baseType: !97, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !659, file: !99, line: 291, baseType: !97, size: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !98, file: !99, line: 391, baseType: !685, size: 512)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !99, line: 309, size: 512, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !685, file: !99, line: 310, baseType: !97, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !99, line: 310, baseType: !13, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !99, line: 310, baseType: !13, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !685, file: !99, line: 310, baseType: !20, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !99, line: 310, baseType: !13, size: 8, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !685, file: !99, line: 310, baseType: !13, size: 8, offset: 104)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !685, file: !99, line: 311, baseType: !13, size: 8, offset: 112)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !685, file: !99, line: 312, baseType: !13, size: 8, offset: 120)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !685, file: !99, line: 313, baseType: !31, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !685, file: !99, line: 314, baseType: !93, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !685, file: !99, line: 315, baseType: !155, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !685, file: !99, line: 316, baseType: !38, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !685, file: !99, line: 317, baseType: !38, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !685, file: !99, line: 318, baseType: !25, size: 32, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !98, file: !99, line: 392, baseType: !702, size: 448)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !99, line: 342, size: 448, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !99, line: 343, baseType: !97, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !99, line: 343, baseType: !13, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !99, line: 343, baseType: !13, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !99, line: 343, baseType: !20, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !99, line: 343, baseType: !13, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !702, file: !99, line: 343, baseType: !93, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !702, file: !99, line: 344, baseType: !93, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !702, file: !99, line: 345, baseType: !31, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !702, file: !99, line: 346, baseType: !38, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !702, file: !99, line: 347, baseType: !25, size: 32, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !98, file: !99, line: 393, baseType: !715, size: 256)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !99, line: 352, size: 256, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !727}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !99, line: 353, baseType: !97, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !99, line: 353, baseType: !13, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !99, line: 353, baseType: !13, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !99, line: 353, baseType: !20, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !99, line: 353, baseType: !13, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !715, file: !99, line: 353, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !24, line: 1064, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !346, !31}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !715, file: !99, line: 354, baseType: !31, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !98, file: !99, line: 394, baseType: !729, size: 192)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !99, line: 359, size: 192, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !729, file: !99, line: 360, baseType: !97, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !729, file: !99, line: 360, baseType: !13, size: 8, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !729, file: !99, line: 360, baseType: !13, size: 8, offset: 72)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !729, file: !99, line: 360, baseType: !20, size: 16, offset: 80)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !99, line: 360, baseType: !13, size: 8, offset: 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !729, file: !99, line: 360, baseType: !97, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !98, file: !99, line: 401, baseType: !94, size: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !6, line: 135, baseType: !13, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !6, line: 136, baseType: !13, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !6, line: 137, baseType: !20, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !6, line: 138, baseType: !742, size: 32, offset: 96)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !743, line: 328, size: 32, elements: !744)
!743 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !742, file: !743, line: 329, baseType: !25, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !742, file: !743, line: 330, baseType: !747, size: 32)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 4)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !6, line: 139, baseType: !93, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !6, line: 140, baseType: !93, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !6, line: 141, baseType: !93, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !6, line: 142, baseType: !202, size: 16, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !84, file: !6, line: 845, baseType: !755, size: 64, offset: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !755, file: !6, line: 733, baseType: !27, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !755, file: !6, line: 734, baseType: !25, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !755, file: !6, line: 735, baseType: !18, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !755, file: !6, line: 736, baseType: !38, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !755, file: !6, line: 737, baseType: !18, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !755, file: !6, line: 738, baseType: !80, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !84, file: !6, line: 845, baseType: !13, size: 8, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !81, file: !6, line: 893, baseType: !765, size: 640)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !765, file: !6, line: 852, baseType: !80, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !6, line: 852, baseType: !13, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !6, line: 852, baseType: !13, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !765, file: !6, line: 852, baseType: !20, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !765, file: !6, line: 852, baseType: !38, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !765, file: !6, line: 852, baseType: !80, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !6, line: 852, baseType: !93, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !765, file: !6, line: 852, baseType: !755, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !765, file: !6, line: 852, baseType: !13, size: 8, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !765, file: !6, line: 852, baseType: !18, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !765, file: !6, line: 853, baseType: !38, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !765, file: !6, line: 854, baseType: !25, size: 32, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !765, file: !6, line: 855, baseType: !25, size: 32, offset: 608)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !81, file: !6, line: 894, baseType: !781, size: 1600)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !781, file: !6, line: 863, baseType: !80, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !6, line: 863, baseType: !13, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !6, line: 863, baseType: !13, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !781, file: !6, line: 863, baseType: !20, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !781, file: !6, line: 863, baseType: !38, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !6, line: 863, baseType: !80, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !781, file: !6, line: 863, baseType: !93, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !781, file: !6, line: 863, baseType: !755, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !781, file: !6, line: 863, baseType: !13, size: 8, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !781, file: !6, line: 863, baseType: !80, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !781, file: !6, line: 864, baseType: !80, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !781, file: !6, line: 865, baseType: !18, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !781, file: !6, line: 866, baseType: !13, size: 8, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !781, file: !6, line: 867, baseType: !18, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !781, file: !6, line: 868, baseType: !18, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !781, file: !6, line: 869, baseType: !18, size: 64, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !781, file: !6, line: 870, baseType: !747, size: 32, offset: 896)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !781, file: !6, line: 871, baseType: !25, size: 32, offset: 928)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !781, file: !6, line: 872, baseType: !25, size: 32, offset: 960)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !781, file: !6, line: 873, baseType: !25, size: 32, offset: 992)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !781, file: !6, line: 874, baseType: !25, size: 32, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !781, file: !6, line: 875, baseType: !25, size: 32, offset: 1056)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !781, file: !6, line: 876, baseType: !25, size: 32, offset: 1088)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !781, file: !6, line: 877, baseType: !25, size: 32, offset: 1120)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !781, file: !6, line: 878, baseType: !25, size: 32, offset: 1152)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !781, file: !6, line: 879, baseType: !25, size: 32, offset: 1184)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !781, file: !6, line: 880, baseType: !25, size: 32, offset: 1216)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !781, file: !6, line: 881, baseType: !25, size: 32, offset: 1248)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !781, file: !6, line: 882, baseType: !25, size: 32, offset: 1280)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !781, file: !6, line: 883, baseType: !25, size: 32, offset: 1312)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !781, file: !6, line: 884, baseType: !20, size: 16, offset: 1344)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !781, file: !6, line: 885, baseType: !13, size: 8, offset: 1360)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !781, file: !6, line: 886, baseType: !13, size: 8, offset: 1368)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !781, file: !6, line: 887, baseType: !13, size: 8, offset: 1376)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !781, file: !6, line: 888, baseType: !818, size: 160, offset: 1384)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 20)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !72, file: !6, line: 916, baseType: !93, size: 64, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !72, file: !6, line: 917, baseType: !235, size: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !72, file: !6, line: 918, baseType: !80, size: 64, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !72, file: !6, line: 919, baseType: !25, size: 32, offset: 576)
!825 = !{!826, !827, !828}
!826 = !DILocalVariable(name: "parser_state", arg: 1, scope: !68, file: !3, line: 96, type: !71)
!827 = !DILocalVariable(name: "start", scope: !68, file: !3, line: 98, type: !38)
!828 = !DILocalVariable(name: "package_length", scope: !68, file: !3, line: 99, type: !25)
!829 = !DILocation(line: 96, column: 59, scope: !68)
!830 = !DILocation(line: 98, column: 2, scope: !68)
!831 = !DILocation(line: 98, column: 6, scope: !68)
!832 = !DILocation(line: 98, column: 14, scope: !68)
!833 = !DILocation(line: 98, column: 28, scope: !68)
!834 = !DILocation(line: 99, column: 2, scope: !68)
!835 = !DILocation(line: 99, column: 6, scope: !68)
!836 = !DILocation(line: 105, column: 51, scope: !68)
!837 = !DILocation(line: 105, column: 19, scope: !68)
!838 = !DILocation(line: 105, column: 17, scope: !68)
!839 = !DILocation(line: 107, column: 2, scope: !68)
!840 = !DILocation(line: 108, column: 1, scope: !68)
!841 = distinct !DISubprogram(name: "acpi_ps_get_next_package_length", scope: !3, file: !3, line: 45, type: !842, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!25, !71}
!844 = !{!845, !846, !847, !848, !849}
!845 = !DILocalVariable(name: "parser_state", arg: 1, scope: !841, file: !3, line: 45, type: !71)
!846 = !DILocalVariable(name: "aml", scope: !841, file: !3, line: 47, type: !38)
!847 = !DILocalVariable(name: "package_length", scope: !841, file: !3, line: 48, type: !25)
!848 = !DILocalVariable(name: "byte_count", scope: !841, file: !3, line: 49, type: !25)
!849 = !DILocalVariable(name: "byte_zero_mask", scope: !841, file: !3, line: 50, type: !13)
!850 = !DILocation(line: 45, column: 58, scope: !841)
!851 = !DILocation(line: 47, column: 2, scope: !841)
!852 = !DILocation(line: 47, column: 6, scope: !841)
!853 = !DILocation(line: 47, column: 12, scope: !841)
!854 = !DILocation(line: 47, column: 26, scope: !841)
!855 = !DILocation(line: 48, column: 2, scope: !841)
!856 = !DILocation(line: 48, column: 6, scope: !841)
!857 = !DILocation(line: 49, column: 2, scope: !841)
!858 = !DILocation(line: 49, column: 6, scope: !841)
!859 = !DILocation(line: 50, column: 2, scope: !841)
!860 = !DILocation(line: 50, column: 5, scope: !841)
!861 = !DILocation(line: 58, column: 16, scope: !841)
!862 = !DILocation(line: 58, column: 23, scope: !841)
!863 = !DILocation(line: 58, column: 13, scope: !841)
!864 = !DILocation(line: 59, column: 35, scope: !841)
!865 = !DILocation(line: 59, column: 24, scope: !841)
!866 = !DILocation(line: 59, column: 46, scope: !841)
!867 = !DILocation(line: 59, column: 2, scope: !841)
!868 = !DILocation(line: 59, column: 16, scope: !841)
!869 = !DILocation(line: 59, column: 20, scope: !841)
!870 = !DILocation(line: 63, column: 2, scope: !841)
!871 = !DILocation(line: 63, column: 9, scope: !841)
!872 = !DILocation(line: 71, column: 22, scope: !873)
!873 = distinct !DILexicalBlock(scope: !841, file: !3, line: 63, column: 21)
!874 = !DILocation(line: 71, column: 26, scope: !873)
!875 = !DILocation(line: 71, column: 43, scope: !873)
!876 = !DILocation(line: 71, column: 54, scope: !873)
!877 = !DILocation(line: 71, column: 60, scope: !873)
!878 = !DILocation(line: 71, column: 38, scope: !873)
!879 = !DILocation(line: 71, column: 18, scope: !873)
!880 = !DILocation(line: 73, column: 18, scope: !873)
!881 = !DILocation(line: 74, column: 13, scope: !873)
!882 = distinct !{!882, !870, !883, !884, !885}
!883 = !DILocation(line: 75, column: 2, scope: !841)
!884 = !{!"llvm.loop.mustprogress"}
!885 = !{!"llvm.loop.unroll.disable"}
!886 = !DILocation(line: 79, column: 21, scope: !841)
!887 = !DILocation(line: 79, column: 30, scope: !841)
!888 = !DILocation(line: 79, column: 28, scope: !841)
!889 = !DILocation(line: 79, column: 17, scope: !841)
!890 = !DILocation(line: 80, column: 2, scope: !841)
!891 = !DILocation(line: 81, column: 1, scope: !841)
!892 = distinct !DISubprogram(name: "acpi_ps_get_next_namestring", scope: !3, file: !3, line: 125, type: !893, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{!18, !71}
!895 = !{!896, !897, !898}
!896 = !DILocalVariable(name: "parser_state", arg: 1, scope: !892, file: !3, line: 125, type: !71)
!897 = !DILocalVariable(name: "start", scope: !892, file: !3, line: 127, type: !38)
!898 = !DILocalVariable(name: "end", scope: !892, file: !3, line: 128, type: !38)
!899 = !DILocation(line: 125, column: 60, scope: !892)
!900 = !DILocation(line: 127, column: 2, scope: !892)
!901 = !DILocation(line: 127, column: 6, scope: !892)
!902 = !DILocation(line: 127, column: 14, scope: !892)
!903 = !DILocation(line: 127, column: 28, scope: !892)
!904 = !DILocation(line: 128, column: 2, scope: !892)
!905 = !DILocation(line: 128, column: 6, scope: !892)
!906 = !DILocation(line: 128, column: 12, scope: !892)
!907 = !DILocation(line: 128, column: 26, scope: !892)
!908 = !DILocation(line: 134, column: 2, scope: !892)
!909 = !DILocation(line: 134, column: 9, scope: !892)
!910 = !DILocation(line: 134, column: 35, scope: !892)
!911 = !DILocation(line: 134, column: 38, scope: !892)
!912 = !DILocation(line: 135, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !892, file: !3, line: 134, column: 67)
!914 = distinct !{!914, !908, !915, !884, !885}
!915 = !DILocation(line: 136, column: 2, scope: !892)
!916 = !DILocation(line: 140, column: 11, scope: !892)
!917 = !DILocation(line: 140, column: 10, scope: !892)
!918 = !DILocation(line: 140, column: 2, scope: !892)
!919 = !DILocation(line: 145, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 145, column: 7)
!921 = distinct !DILexicalBlock(scope: !892, file: !3, line: 140, column: 16)
!922 = !DILocation(line: 145, column: 14, scope: !920)
!923 = !DILocation(line: 145, column: 11, scope: !920)
!924 = !DILocation(line: 145, column: 7, scope: !921)
!925 = !DILocation(line: 146, column: 10, scope: !926)
!926 = distinct !DILexicalBlock(scope: !920, file: !3, line: 145, column: 21)
!927 = !DILocation(line: 147, column: 3, scope: !926)
!928 = !DILocation(line: 148, column: 6, scope: !921)
!929 = !DILocation(line: 149, column: 3, scope: !921)
!930 = !DILocation(line: 155, column: 7, scope: !921)
!931 = !DILocation(line: 156, column: 3, scope: !921)
!932 = !DILocation(line: 162, column: 17, scope: !921)
!933 = !DILocation(line: 162, column: 21, scope: !921)
!934 = !DILocation(line: 162, column: 15, scope: !921)
!935 = !DILocation(line: 162, column: 26, scope: !921)
!936 = !DILocation(line: 162, column: 12, scope: !921)
!937 = !DILocation(line: 162, column: 7, scope: !921)
!938 = !DILocation(line: 163, column: 3, scope: !921)
!939 = !DILocation(line: 169, column: 7, scope: !921)
!940 = !DILocation(line: 170, column: 3, scope: !921)
!941 = !DILocation(line: 173, column: 22, scope: !892)
!942 = !DILocation(line: 173, column: 2, scope: !892)
!943 = !DILocation(line: 173, column: 16, scope: !892)
!944 = !DILocation(line: 173, column: 20, scope: !892)
!945 = !DILocation(line: 174, column: 2, scope: !892)
!946 = !DILocation(line: 175, column: 1, scope: !892)
!947 = distinct !DISubprogram(name: "acpi_ps_get_next_namepath", scope: !3, file: !3, line: 199, type: !948, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!23, !190, !71, !80, !13}
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958, !959, !960}
!951 = !DILocalVariable(name: "walk_state", arg: 1, scope: !947, file: !3, line: 199, type: !190)
!952 = !DILocalVariable(name: "parser_state", arg: 2, scope: !947, file: !3, line: 200, type: !71)
!953 = !DILocalVariable(name: "arg", arg: 3, scope: !947, file: !3, line: 201, type: !80)
!954 = !DILocalVariable(name: "possible_method_call", arg: 4, scope: !947, file: !3, line: 201, type: !13)
!955 = !DILocalVariable(name: "status", scope: !947, file: !3, line: 203, type: !23)
!956 = !DILocalVariable(name: "path", scope: !947, file: !3, line: 204, type: !18)
!957 = !DILocalVariable(name: "name_op", scope: !947, file: !3, line: 205, type: !80)
!958 = !DILocalVariable(name: "method_desc", scope: !947, file: !3, line: 206, type: !97)
!959 = !DILocalVariable(name: "node", scope: !947, file: !3, line: 207, type: !93)
!960 = !DILocalVariable(name: "start", scope: !947, file: !3, line: 208, type: !38)
!961 = !DILocation(line: 199, column: 51, scope: !947)
!962 = !DILocation(line: 200, column: 31, scope: !947)
!963 = !DILocation(line: 201, column: 31, scope: !947)
!964 = !DILocation(line: 201, column: 39, scope: !947)
!965 = !DILocation(line: 203, column: 2, scope: !947)
!966 = !DILocation(line: 203, column: 14, scope: !947)
!967 = !DILocation(line: 204, column: 2, scope: !947)
!968 = !DILocation(line: 204, column: 8, scope: !947)
!969 = !DILocation(line: 205, column: 2, scope: !947)
!970 = !DILocation(line: 205, column: 27, scope: !947)
!971 = !DILocation(line: 206, column: 2, scope: !947)
!972 = !DILocation(line: 206, column: 29, scope: !947)
!973 = !DILocation(line: 207, column: 2, scope: !947)
!974 = !DILocation(line: 207, column: 30, scope: !947)
!975 = !DILocation(line: 208, column: 2, scope: !947)
!976 = !DILocation(line: 208, column: 6, scope: !947)
!977 = !DILocation(line: 208, column: 14, scope: !947)
!978 = !DILocation(line: 208, column: 28, scope: !947)
!979 = !DILocation(line: 212, column: 37, scope: !947)
!980 = !DILocation(line: 212, column: 9, scope: !947)
!981 = !DILocation(line: 212, column: 7, scope: !947)
!982 = !DILocation(line: 213, column: 18, scope: !947)
!983 = !DILocation(line: 213, column: 2, scope: !947)
!984 = !DILocation(line: 217, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !947, file: !3, line: 217, column: 6)
!986 = !DILocation(line: 217, column: 6, scope: !947)
!987 = !DILocation(line: 218, column: 28, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 217, column: 13)
!989 = !DILocation(line: 218, column: 3, scope: !988)
!990 = !DILocation(line: 218, column: 15, scope: !988)
!991 = !DILocation(line: 218, column: 26, scope: !988)
!992 = !DILocation(line: 219, column: 3, scope: !988)
!993 = !DILocation(line: 230, column: 26, scope: !947)
!994 = !DILocation(line: 230, column: 38, scope: !947)
!995 = !DILocation(line: 230, column: 50, scope: !947)
!996 = !DILocation(line: 230, column: 11, scope: !947)
!997 = !DILocation(line: 230, column: 9, scope: !947)
!998 = !DILocation(line: 239, column: 6, scope: !999)
!999 = distinct !DILexicalBlock(scope: !947, file: !3, line: 239, column: 6)
!1000 = !DILocation(line: 239, column: 27, scope: !999)
!1001 = !DILocation(line: 240, column: 6, scope: !999)
!1002 = !DILocation(line: 240, column: 27, scope: !999)
!1003 = !DILocation(line: 240, column: 31, scope: !999)
!1004 = !DILocation(line: 240, column: 37, scope: !999)
!1005 = !DILocation(line: 240, column: 42, scope: !999)
!1006 = !DILocation(line: 239, column: 6, scope: !947)
!1007 = !DILocation(line: 241, column: 8, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 241, column: 7)
!1009 = distinct !DILexicalBlock(scope: !999, file: !3, line: 240, column: 64)
!1010 = !DILocation(line: 241, column: 52, scope: !1008)
!1011 = !DILocation(line: 243, column: 7, scope: !1008)
!1012 = !DILocation(line: 243, column: 11, scope: !1008)
!1013 = !DILocation(line: 243, column: 55, scope: !1008)
!1014 = !DILocation(line: 241, column: 7, scope: !1009)
!1015 = !DILocation(line: 251, column: 35, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 244, column: 18)
!1017 = !DILocation(line: 251, column: 4, scope: !1016)
!1018 = !DILocation(line: 251, column: 16, scope: !1016)
!1019 = !DILocation(line: 251, column: 29, scope: !1016)
!1020 = !DILocation(line: 251, column: 33, scope: !1016)
!1021 = !DILocation(line: 252, column: 4, scope: !1016)
!1022 = !DILocation(line: 252, column: 16, scope: !1016)
!1023 = !DILocation(line: 252, column: 26, scope: !1016)
!1024 = !DILocation(line: 253, column: 20, scope: !1016)
!1025 = !DILocation(line: 253, column: 4, scope: !1016)
!1026 = !DILocation(line: 254, column: 3, scope: !1016)
!1027 = !DILocation(line: 258, column: 45, scope: !1009)
!1028 = !DILocation(line: 258, column: 17, scope: !1009)
!1029 = !DILocation(line: 258, column: 15, scope: !1009)
!1030 = !DILocation(line: 263, column: 51, scope: !1009)
!1031 = !DILocation(line: 263, column: 13, scope: !1009)
!1032 = !DILocation(line: 263, column: 11, scope: !1009)
!1033 = !DILocation(line: 264, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 264, column: 7)
!1035 = !DILocation(line: 264, column: 7, scope: !1009)
!1036 = !DILocation(line: 265, column: 4, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 264, column: 17)
!1038 = !DILocation(line: 270, column: 19, scope: !1009)
!1039 = !DILocation(line: 270, column: 3, scope: !1009)
!1040 = !DILocation(line: 271, column: 32, scope: !1009)
!1041 = !DILocation(line: 271, column: 3, scope: !1009)
!1042 = !DILocation(line: 271, column: 19, scope: !1009)
!1043 = !DILocation(line: 271, column: 30, scope: !1009)
!1044 = !DILocation(line: 275, column: 26, scope: !1009)
!1045 = !DILocation(line: 275, column: 3, scope: !1009)
!1046 = !DILocation(line: 275, column: 19, scope: !1009)
!1047 = !DILocation(line: 275, column: 24, scope: !1009)
!1048 = !DILocation(line: 276, column: 22, scope: !1009)
!1049 = !DILocation(line: 276, column: 27, scope: !1009)
!1050 = !DILocation(line: 276, column: 3, scope: !1009)
!1051 = !DILocation(line: 278, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 278, column: 7)
!1053 = !DILocation(line: 278, column: 7, scope: !1009)
!1054 = !DILocation(line: 279, column: 4, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 278, column: 21)
!1056 = !DILocation(line: 282, column: 4, scope: !1055)
!1057 = !DILocation(line: 291, column: 27, scope: !1009)
!1058 = !DILocation(line: 291, column: 47, scope: !1009)
!1059 = !DILocation(line: 291, column: 3, scope: !1009)
!1060 = !DILocation(line: 291, column: 15, scope: !1009)
!1061 = !DILocation(line: 291, column: 25, scope: !1009)
!1062 = !DILocation(line: 292, column: 3, scope: !1009)
!1063 = !DILocation(line: 299, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !947, file: !3, line: 299, column: 6)
!1065 = !DILocation(line: 299, column: 13, scope: !1064)
!1066 = !DILocation(line: 299, column: 6, scope: !947)
!1067 = !DILocation(line: 303, column: 8, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 303, column: 7)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 299, column: 30)
!1070 = !DILocation(line: 303, column: 20, scope: !1068)
!1071 = !DILocation(line: 303, column: 32, scope: !1068)
!1072 = !DILocation(line: 303, column: 56, scope: !1068)
!1073 = !DILocation(line: 303, column: 7, scope: !1069)
!1074 = !DILocation(line: 305, column: 11, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 304, column: 27)
!1076 = !DILocation(line: 306, column: 3, scope: !1075)
!1077 = !DILocation(line: 310, column: 12, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 310, column: 12)
!1079 = !DILocation(line: 310, column: 24, scope: !1078)
!1080 = !DILocation(line: 310, column: 35, scope: !1078)
!1081 = !DILocation(line: 310, column: 46, scope: !1078)
!1082 = !DILocation(line: 310, column: 12, scope: !1068)
!1083 = !DILocation(line: 312, column: 11, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 311, column: 32)
!1085 = !DILocation(line: 313, column: 3, scope: !1084)
!1086 = !DILocation(line: 320, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 320, column: 12)
!1088 = !DILocation(line: 320, column: 25, scope: !1087)
!1089 = !DILocation(line: 320, column: 12, scope: !1087)
!1090 = !DILocation(line: 320, column: 33, scope: !1087)
!1091 = !DILocation(line: 321, column: 7, scope: !1087)
!1092 = !DILocation(line: 321, column: 19, scope: !1087)
!1093 = !DILocation(line: 321, column: 34, scope: !1087)
!1094 = !DILocation(line: 321, column: 45, scope: !1087)
!1095 = !DILocation(line: 323, column: 6, scope: !1087)
!1096 = !DILocation(line: 323, column: 10, scope: !1087)
!1097 = !DILocation(line: 323, column: 22, scope: !1087)
!1098 = !DILocation(line: 323, column: 37, scope: !1087)
!1099 = !DILocation(line: 323, column: 48, scope: !1087)
!1100 = !DILocation(line: 320, column: 12, scope: !1078)
!1101 = !DILocation(line: 325, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 324, column: 37)
!1103 = !DILocation(line: 326, column: 3, scope: !1102)
!1104 = !DILocation(line: 327, column: 2, scope: !1069)
!1105 = !DILocation(line: 331, column: 6, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !947, file: !3, line: 331, column: 6)
!1107 = !DILocation(line: 331, column: 6, scope: !947)
!1108 = !DILocation(line: 332, column: 3, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 331, column: 28)
!1110 = !DILocation(line: 334, column: 8, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 334, column: 7)
!1112 = !DILocation(line: 334, column: 20, scope: !1111)
!1113 = !DILocation(line: 334, column: 32, scope: !1111)
!1114 = !DILocation(line: 334, column: 56, scope: !1111)
!1115 = !DILocation(line: 334, column: 7, scope: !1109)
!1116 = !DILocation(line: 339, column: 34, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 335, column: 27)
!1118 = !DILocation(line: 339, column: 42, scope: !1117)
!1119 = !DILocation(line: 339, column: 13, scope: !1117)
!1120 = !DILocation(line: 339, column: 11, scope: !1117)
!1121 = !DILocation(line: 340, column: 3, scope: !1117)
!1122 = !DILocation(line: 341, column: 2, scope: !1109)
!1123 = !DILocation(line: 345, column: 27, scope: !947)
!1124 = !DILocation(line: 345, column: 2, scope: !947)
!1125 = !DILocation(line: 345, column: 14, scope: !947)
!1126 = !DILocation(line: 345, column: 25, scope: !947)
!1127 = !DILocation(line: 346, column: 2, scope: !947)
!1128 = !DILocation(line: 347, column: 1, scope: !947)
!1129 = !DISubprogram(name: "acpi_ps_init_op", scope: !1130, file: !1130, line: 202, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !80, !20}
!1133 = !DISubprogram(name: "acpi_ns_lookup", scope: !1134, file: !1134, line: 118, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!23, !235, !18, !1137, !1138, !25, !190, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !24, line: 644, baseType: !25)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1140 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1134, file: !1134, line: 298, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!97, !93}
!1143 = !DISubprogram(name: "acpi_ps_alloc_op", scope: !1130, file: !1130, line: 204, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!80, !20, !38}
!1146 = !DISubprogram(name: "acpi_ps_append_arg", scope: !1130, file: !1130, line: 164, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !80, !80}
!1149 = !DISubprogram(name: "acpi_error", scope: !1150, file: !1150, line: 901, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !1153, !25, !1153, null}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1154 = !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !1155, file: !1155, line: 728, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1153, !25, !235, !1153, !23}
!1158 = !DISubprogram(name: "acpi_ds_method_error", scope: !1159, file: !1159, line: 193, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1159 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!23, !23, !190}
!1162 = distinct !DISubprogram(name: "acpi_ps_get_next_simple_arg", scope: !3, file: !3, line: 364, type: !1163, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !71, !25, !80}
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171}
!1166 = !DILocalVariable(name: "parser_state", arg: 1, scope: !1162, file: !3, line: 364, type: !71)
!1167 = !DILocalVariable(name: "arg_type", arg: 2, scope: !1162, file: !3, line: 365, type: !25)
!1168 = !DILocalVariable(name: "arg", arg: 3, scope: !1162, file: !3, line: 365, type: !80)
!1169 = !DILocalVariable(name: "length", scope: !1162, file: !3, line: 367, type: !25)
!1170 = !DILocalVariable(name: "opcode", scope: !1162, file: !3, line: 368, type: !20)
!1171 = !DILocalVariable(name: "aml", scope: !1162, file: !3, line: 369, type: !38)
!1172 = !DILocation(line: 364, column: 54, scope: !1162)
!1173 = !DILocation(line: 365, column: 12, scope: !1162)
!1174 = !DILocation(line: 365, column: 47, scope: !1162)
!1175 = !DILocation(line: 367, column: 2, scope: !1162)
!1176 = !DILocation(line: 367, column: 6, scope: !1162)
!1177 = !DILocation(line: 368, column: 2, scope: !1162)
!1178 = !DILocation(line: 368, column: 6, scope: !1162)
!1179 = !DILocation(line: 369, column: 2, scope: !1162)
!1180 = !DILocation(line: 369, column: 6, scope: !1162)
!1181 = !DILocation(line: 369, column: 12, scope: !1162)
!1182 = !DILocation(line: 369, column: 26, scope: !1162)
!1183 = !DILocation(line: 373, column: 10, scope: !1162)
!1184 = !DILocation(line: 373, column: 2, scope: !1162)
!1185 = !DILocation(line: 378, column: 10, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 373, column: 20)
!1187 = !DILocation(line: 379, column: 38, scope: !1186)
!1188 = !DILocation(line: 379, column: 37, scope: !1186)
!1189 = !DILocation(line: 379, column: 31, scope: !1186)
!1190 = !DILocation(line: 379, column: 3, scope: !1186)
!1191 = !DILocation(line: 379, column: 15, scope: !1186)
!1192 = !DILocation(line: 379, column: 29, scope: !1186)
!1193 = !DILocation(line: 380, column: 10, scope: !1186)
!1194 = !DILocation(line: 381, column: 3, scope: !1186)
!1195 = !DILocation(line: 387, column: 10, scope: !1186)
!1196 = !DILocation(line: 388, column: 3, scope: !1186)
!1197 = !DILocation(line: 389, column: 10, scope: !1186)
!1198 = !DILocation(line: 390, column: 3, scope: !1186)
!1199 = !DILocation(line: 396, column: 10, scope: !1186)
!1200 = !DILocation(line: 397, column: 3, scope: !1186)
!1201 = !DILocation(line: 398, column: 10, scope: !1186)
!1202 = !DILocation(line: 399, column: 3, scope: !1186)
!1203 = !DILocation(line: 405, column: 10, scope: !1186)
!1204 = !DILocation(line: 406, column: 3, scope: !1186)
!1205 = !DILocation(line: 407, column: 10, scope: !1186)
!1206 = !DILocation(line: 408, column: 3, scope: !1186)
!1207 = !DILocation(line: 414, column: 10, scope: !1186)
!1208 = !DILocation(line: 415, column: 30, scope: !1186)
!1209 = !DILocation(line: 415, column: 3, scope: !1186)
!1210 = !DILocation(line: 415, column: 15, scope: !1186)
!1211 = !DILocation(line: 415, column: 28, scope: !1186)
!1212 = !DILocation(line: 419, column: 10, scope: !1186)
!1213 = !DILocation(line: 420, column: 3, scope: !1186)
!1214 = !DILocation(line: 420, column: 10, scope: !1186)
!1215 = !DILocation(line: 420, column: 14, scope: !1186)
!1216 = !DILocation(line: 421, column: 10, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 420, column: 23)
!1218 = distinct !{!1218, !1213, !1219, !884, !885}
!1219 = !DILocation(line: 422, column: 3, scope: !1186)
!1220 = !DILocation(line: 423, column: 9, scope: !1186)
!1221 = !DILocation(line: 424, column: 3, scope: !1186)
!1222 = !DILocation(line: 429, column: 19, scope: !1186)
!1223 = !DILocation(line: 429, column: 3, scope: !1186)
!1224 = !DILocation(line: 431, column: 35, scope: !1186)
!1225 = !DILocation(line: 431, column: 7, scope: !1186)
!1226 = !DILocation(line: 430, column: 3, scope: !1186)
!1227 = !DILocation(line: 430, column: 15, scope: !1186)
!1228 = !DILocation(line: 430, column: 26, scope: !1186)
!1229 = !DILocation(line: 432, column: 3, scope: !1186)
!1230 = !DILocation(line: 436, column: 3, scope: !1186)
!1231 = !DILocation(line: 437, column: 3, scope: !1186)
!1232 = !DILocation(line: 440, column: 18, scope: !1162)
!1233 = !DILocation(line: 440, column: 23, scope: !1162)
!1234 = !DILocation(line: 440, column: 2, scope: !1162)
!1235 = !DILocation(line: 441, column: 23, scope: !1162)
!1236 = !DILocation(line: 441, column: 2, scope: !1162)
!1237 = !DILocation(line: 441, column: 16, scope: !1162)
!1238 = !DILocation(line: 441, column: 20, scope: !1162)
!1239 = !DILocation(line: 442, column: 2, scope: !1162)
!1240 = !DILocation(line: 443, column: 1, scope: !1162)
!1241 = distinct !DISubprogram(name: "acpi_ps_get_next_arg", scope: !3, file: !3, line: 738, type: !1242, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!23, !190, !71, !25, !381}
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1245 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1241, file: !3, line: 738, type: !190)
!1246 = !DILocalVariable(name: "parser_state", arg: 2, scope: !1241, file: !3, line: 739, type: !71)
!1247 = !DILocalVariable(name: "arg_type", arg: 3, scope: !1241, file: !3, line: 740, type: !25)
!1248 = !DILocalVariable(name: "return_arg", arg: 4, scope: !1241, file: !3, line: 740, type: !381)
!1249 = !DILocalVariable(name: "arg", scope: !1241, file: !3, line: 742, type: !80)
!1250 = !DILocalVariable(name: "prev", scope: !1241, file: !3, line: 743, type: !80)
!1251 = !DILocalVariable(name: "field", scope: !1241, file: !3, line: 744, type: !80)
!1252 = !DILocalVariable(name: "subop", scope: !1241, file: !3, line: 745, type: !25)
!1253 = !DILocalVariable(name: "status", scope: !1241, file: !3, line: 746, type: !23)
!1254 = !DILocation(line: 738, column: 46, scope: !1241)
!1255 = !DILocation(line: 739, column: 33, scope: !1241)
!1256 = !DILocation(line: 740, column: 12, scope: !1241)
!1257 = !DILocation(line: 740, column: 48, scope: !1241)
!1258 = !DILocation(line: 742, column: 2, scope: !1241)
!1259 = !DILocation(line: 742, column: 27, scope: !1241)
!1260 = !DILocation(line: 743, column: 2, scope: !1241)
!1261 = !DILocation(line: 743, column: 27, scope: !1241)
!1262 = !DILocation(line: 744, column: 2, scope: !1241)
!1263 = !DILocation(line: 744, column: 27, scope: !1241)
!1264 = !DILocation(line: 745, column: 2, scope: !1241)
!1265 = !DILocation(line: 745, column: 6, scope: !1241)
!1266 = !DILocation(line: 746, column: 2, scope: !1241)
!1267 = !DILocation(line: 746, column: 14, scope: !1241)
!1268 = !DILocation(line: 754, column: 10, scope: !1241)
!1269 = !DILocation(line: 754, column: 2, scope: !1241)
!1270 = !DILocation(line: 764, column: 39, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 754, column: 20)
!1272 = !DILocation(line: 764, column: 53, scope: !1271)
!1273 = !DILocation(line: 764, column: 9, scope: !1271)
!1274 = !DILocation(line: 764, column: 7, scope: !1271)
!1275 = !DILocation(line: 765, column: 8, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 765, column: 7)
!1277 = !DILocation(line: 765, column: 7, scope: !1271)
!1278 = !DILocation(line: 766, column: 4, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 765, column: 13)
!1280 = !DILocation(line: 769, column: 31, scope: !1271)
!1281 = !DILocation(line: 769, column: 45, scope: !1271)
!1282 = !DILocation(line: 769, column: 55, scope: !1271)
!1283 = !DILocation(line: 769, column: 3, scope: !1271)
!1284 = !DILocation(line: 770, column: 3, scope: !1271)
!1285 = !DILocation(line: 777, column: 36, scope: !1271)
!1286 = !DILocation(line: 777, column: 7, scope: !1271)
!1287 = !DILocation(line: 776, column: 3, scope: !1271)
!1288 = !DILocation(line: 776, column: 17, scope: !1271)
!1289 = !DILocation(line: 776, column: 25, scope: !1271)
!1290 = !DILocation(line: 778, column: 3, scope: !1271)
!1291 = !DILocation(line: 782, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 782, column: 7)
!1293 = !DILocation(line: 782, column: 21, scope: !1292)
!1294 = !DILocation(line: 782, column: 27, scope: !1292)
!1295 = !DILocation(line: 782, column: 41, scope: !1292)
!1296 = !DILocation(line: 782, column: 25, scope: !1292)
!1297 = !DILocation(line: 782, column: 7, scope: !1271)
!1298 = !DILocation(line: 786, column: 4, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 782, column: 50)
!1300 = !DILocation(line: 786, column: 11, scope: !1299)
!1301 = !DILocation(line: 786, column: 25, scope: !1299)
!1302 = !DILocation(line: 786, column: 31, scope: !1299)
!1303 = !DILocation(line: 786, column: 45, scope: !1299)
!1304 = !DILocation(line: 786, column: 29, scope: !1299)
!1305 = !DILocation(line: 787, column: 36, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 786, column: 54)
!1307 = !DILocation(line: 787, column: 13, scope: !1306)
!1308 = !DILocation(line: 787, column: 11, scope: !1306)
!1309 = !DILocation(line: 788, column: 10, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 788, column: 9)
!1311 = !DILocation(line: 788, column: 9, scope: !1306)
!1312 = !DILocation(line: 789, column: 10, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 789, column: 10)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 788, column: 17)
!1315 = !DILocation(line: 789, column: 10, scope: !1314)
!1316 = !DILocation(line: 790, column: 31, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 789, column: 15)
!1318 = !DILocation(line: 790, column: 7, scope: !1317)
!1319 = !DILocation(line: 791, column: 6, scope: !1317)
!1320 = !DILocation(line: 793, column: 6, scope: !1314)
!1321 = !DILocation(line: 796, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 796, column: 9)
!1323 = !DILocation(line: 796, column: 9, scope: !1306)
!1324 = !DILocation(line: 797, column: 26, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 796, column: 15)
!1326 = !DILocation(line: 797, column: 6, scope: !1325)
!1327 = !DILocation(line: 797, column: 19, scope: !1325)
!1328 = !DILocation(line: 797, column: 24, scope: !1325)
!1329 = !DILocation(line: 798, column: 5, scope: !1325)
!1330 = !DILocation(line: 799, column: 12, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 798, column: 12)
!1332 = !DILocation(line: 799, column: 10, scope: !1331)
!1333 = !DILocation(line: 801, column: 12, scope: !1306)
!1334 = !DILocation(line: 801, column: 10, scope: !1306)
!1335 = distinct !{!1335, !1298, !1336, !884, !885}
!1336 = !DILocation(line: 802, column: 4, scope: !1299)
!1337 = !DILocation(line: 806, column: 24, scope: !1299)
!1338 = !DILocation(line: 806, column: 38, scope: !1299)
!1339 = !DILocation(line: 806, column: 4, scope: !1299)
!1340 = !DILocation(line: 806, column: 18, scope: !1299)
!1341 = !DILocation(line: 806, column: 22, scope: !1299)
!1342 = !DILocation(line: 807, column: 3, scope: !1299)
!1343 = !DILocation(line: 808, column: 3, scope: !1271)
!1344 = !DILocation(line: 812, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 812, column: 7)
!1346 = !DILocation(line: 812, column: 21, scope: !1345)
!1347 = !DILocation(line: 812, column: 27, scope: !1345)
!1348 = !DILocation(line: 812, column: 41, scope: !1345)
!1349 = !DILocation(line: 812, column: 25, scope: !1345)
!1350 = !DILocation(line: 812, column: 7, scope: !1271)
!1351 = !DILocation(line: 817, column: 13, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 812, column: 50)
!1353 = !DILocation(line: 817, column: 27, scope: !1352)
!1354 = !DILocation(line: 816, column: 10, scope: !1352)
!1355 = !DILocation(line: 816, column: 8, scope: !1352)
!1356 = !DILocation(line: 818, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 818, column: 8)
!1358 = !DILocation(line: 818, column: 8, scope: !1352)
!1359 = !DILocation(line: 819, column: 5, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 818, column: 14)
!1361 = !DILocation(line: 825, column: 8, scope: !1352)
!1362 = !DILocation(line: 824, column: 29, scope: !1352)
!1363 = !DILocation(line: 824, column: 4, scope: !1352)
!1364 = !DILocation(line: 824, column: 16, scope: !1352)
!1365 = !DILocation(line: 824, column: 27, scope: !1352)
!1366 = !DILocation(line: 827, column: 22, scope: !1352)
!1367 = !DILocation(line: 827, column: 36, scope: !1352)
!1368 = !DILocation(line: 827, column: 4, scope: !1352)
!1369 = !DILocation(line: 827, column: 15, scope: !1352)
!1370 = !DILocation(line: 827, column: 20, scope: !1352)
!1371 = !DILocation(line: 831, column: 24, scope: !1352)
!1372 = !DILocation(line: 831, column: 38, scope: !1352)
!1373 = !DILocation(line: 831, column: 4, scope: !1352)
!1374 = !DILocation(line: 831, column: 18, scope: !1352)
!1375 = !DILocation(line: 831, column: 22, scope: !1352)
!1376 = !DILocation(line: 832, column: 3, scope: !1352)
!1377 = !DILocation(line: 833, column: 3, scope: !1271)
!1378 = !DILocation(line: 843, column: 31, scope: !1271)
!1379 = !DILocation(line: 843, column: 11, scope: !1271)
!1380 = !DILocation(line: 843, column: 9, scope: !1271)
!1381 = !DILocation(line: 844, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 844, column: 7)
!1383 = !DILocation(line: 844, column: 13, scope: !1382)
!1384 = !DILocation(line: 844, column: 18, scope: !1382)
!1385 = !DILocation(line: 845, column: 31, scope: !1382)
!1386 = !DILocation(line: 845, column: 7, scope: !1382)
!1387 = !DILocation(line: 845, column: 38, scope: !1382)
!1388 = !DILocation(line: 846, column: 7, scope: !1382)
!1389 = !DILocation(line: 846, column: 34, scope: !1382)
!1390 = !DILocation(line: 847, column: 7, scope: !1382)
!1391 = !DILocation(line: 844, column: 7, scope: !1271)
!1392 = !DILocation(line: 853, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 847, column: 37)
!1394 = !DILocation(line: 853, column: 25, scope: !1393)
!1395 = !DILocation(line: 852, column: 8, scope: !1393)
!1396 = !DILocation(line: 851, column: 8, scope: !1393)
!1397 = !DILocation(line: 854, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 854, column: 8)
!1399 = !DILocation(line: 854, column: 8, scope: !1393)
!1400 = !DILocation(line: 855, column: 5, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 854, column: 14)
!1402 = !DILocation(line: 859, column: 34, scope: !1393)
!1403 = !DILocation(line: 859, column: 46, scope: !1393)
!1404 = !DILocation(line: 860, column: 13, scope: !1393)
!1405 = !DILocation(line: 859, column: 8, scope: !1393)
!1406 = !DILocation(line: 858, column: 11, scope: !1393)
!1407 = !DILocation(line: 862, column: 8, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 862, column: 8)
!1409 = !DILocation(line: 862, column: 8, scope: !1393)
!1410 = !DILocation(line: 863, column: 21, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 862, column: 30)
!1412 = !DILocation(line: 863, column: 5, scope: !1411)
!1413 = !DILocation(line: 864, column: 5, scope: !1411)
!1414 = !DILocation(line: 866, column: 3, scope: !1393)
!1415 = !DILocation(line: 869, column: 4, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 866, column: 10)
!1417 = !DILocation(line: 869, column: 16, scope: !1416)
!1418 = !DILocation(line: 869, column: 26, scope: !1416)
!1419 = !DILocation(line: 871, column: 3, scope: !1271)
!1420 = !DILocation(line: 881, column: 31, scope: !1271)
!1421 = !DILocation(line: 881, column: 11, scope: !1271)
!1422 = !DILocation(line: 881, column: 9, scope: !1271)
!1423 = !DILocation(line: 882, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 882, column: 7)
!1425 = !DILocation(line: 882, column: 13, scope: !1424)
!1426 = !DILocation(line: 882, column: 18, scope: !1424)
!1427 = !DILocation(line: 883, column: 31, scope: !1424)
!1428 = !DILocation(line: 883, column: 7, scope: !1424)
!1429 = !DILocation(line: 883, column: 38, scope: !1424)
!1430 = !DILocation(line: 884, column: 7, scope: !1424)
!1431 = !DILocation(line: 884, column: 34, scope: !1424)
!1432 = !DILocation(line: 885, column: 7, scope: !1424)
!1433 = !DILocation(line: 882, column: 7, scope: !1271)
!1434 = !DILocation(line: 891, column: 11, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 885, column: 37)
!1436 = !DILocation(line: 891, column: 25, scope: !1435)
!1437 = !DILocation(line: 890, column: 8, scope: !1435)
!1438 = !DILocation(line: 889, column: 8, scope: !1435)
!1439 = !DILocation(line: 892, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 892, column: 8)
!1441 = !DILocation(line: 892, column: 8, scope: !1435)
!1442 = !DILocation(line: 893, column: 5, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 892, column: 14)
!1444 = !DILocation(line: 897, column: 34, scope: !1435)
!1445 = !DILocation(line: 897, column: 46, scope: !1435)
!1446 = !DILocation(line: 898, column: 13, scope: !1435)
!1447 = !DILocation(line: 897, column: 8, scope: !1435)
!1448 = !DILocation(line: 896, column: 11, scope: !1435)
!1449 = !DILocation(line: 900, column: 8, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 900, column: 8)
!1451 = !DILocation(line: 900, column: 8, scope: !1435)
!1452 = !DILocation(line: 901, column: 21, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 900, column: 30)
!1454 = !DILocation(line: 901, column: 5, scope: !1453)
!1455 = !DILocation(line: 902, column: 5, scope: !1453)
!1456 = !DILocation(line: 905, column: 8, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 905, column: 8)
!1458 = !DILocation(line: 905, column: 20, scope: !1457)
!1459 = !DILocation(line: 905, column: 31, scope: !1457)
!1460 = !DILocation(line: 905, column: 8, scope: !1435)
!1461 = !DILocation(line: 909, column: 21, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 905, column: 57)
!1463 = !DILocation(line: 909, column: 33, scope: !1462)
!1464 = !DILocation(line: 909, column: 39, scope: !1462)
!1465 = !DILocation(line: 909, column: 5, scope: !1462)
!1466 = !DILocation(line: 910, column: 21, scope: !1462)
!1467 = !DILocation(line: 910, column: 5, scope: !1462)
!1468 = !DILocation(line: 911, column: 9, scope: !1462)
!1469 = !DILocation(line: 912, column: 5, scope: !1462)
!1470 = !DILocation(line: 912, column: 17, scope: !1462)
!1471 = !DILocation(line: 912, column: 27, scope: !1462)
!1472 = !DILocation(line: 913, column: 4, scope: !1462)
!1473 = !DILocation(line: 914, column: 3, scope: !1435)
!1474 = !DILocation(line: 917, column: 4, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 914, column: 10)
!1476 = !DILocation(line: 917, column: 16, scope: !1475)
!1477 = !DILocation(line: 917, column: 26, scope: !1475)
!1478 = !DILocation(line: 919, column: 3, scope: !1271)
!1479 = !DILocation(line: 931, column: 3, scope: !1271)
!1480 = !DILocation(line: 931, column: 15, scope: !1271)
!1481 = !DILocation(line: 931, column: 25, scope: !1271)
!1482 = !DILocation(line: 932, column: 3, scope: !1271)
!1483 = !DILocation(line: 938, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 938, column: 7)
!1485 = !DILocation(line: 938, column: 21, scope: !1484)
!1486 = !DILocation(line: 938, column: 27, scope: !1484)
!1487 = !DILocation(line: 938, column: 41, scope: !1484)
!1488 = !DILocation(line: 938, column: 25, scope: !1484)
!1489 = !DILocation(line: 938, column: 7, scope: !1271)
!1490 = !DILocation(line: 942, column: 4, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 938, column: 50)
!1492 = !DILocation(line: 942, column: 16, scope: !1491)
!1493 = !DILocation(line: 942, column: 26, scope: !1491)
!1494 = !DILocation(line: 943, column: 3, scope: !1491)
!1495 = !DILocation(line: 944, column: 3, scope: !1271)
!1496 = !DILocation(line: 948, column: 3, scope: !1271)
!1497 = !DILocation(line: 949, column: 10, scope: !1271)
!1498 = !DILocation(line: 950, column: 3, scope: !1271)
!1499 = !DILocation(line: 953, column: 16, scope: !1241)
!1500 = !DILocation(line: 953, column: 3, scope: !1241)
!1501 = !DILocation(line: 953, column: 14, scope: !1241)
!1502 = !DILocation(line: 954, column: 2, scope: !1241)
!1503 = !DILocation(line: 955, column: 1, scope: !1241)
!1504 = distinct !DISubprogram(name: "acpi_ps_get_next_field", scope: !3, file: !3, line: 457, type: !1505, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!80, !71}
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1508 = !DILocalVariable(name: "parser_state", arg: 1, scope: !1504, file: !3, line: 458, type: !71)
!1509 = !DILocalVariable(name: "aml", scope: !1504, file: !3, line: 460, type: !38)
!1510 = !DILocalVariable(name: "field", scope: !1504, file: !3, line: 461, type: !80)
!1511 = !DILocalVariable(name: "arg", scope: !1504, file: !3, line: 462, type: !80)
!1512 = !DILocalVariable(name: "opcode", scope: !1504, file: !3, line: 463, type: !20)
!1513 = !DILocalVariable(name: "name", scope: !1504, file: !3, line: 464, type: !25)
!1514 = !DILocalVariable(name: "access_type", scope: !1504, file: !3, line: 465, type: !13)
!1515 = !DILocalVariable(name: "access_attribute", scope: !1504, file: !3, line: 466, type: !13)
!1516 = !DILocalVariable(name: "access_length", scope: !1504, file: !3, line: 467, type: !13)
!1517 = !DILocalVariable(name: "pkg_length", scope: !1504, file: !3, line: 468, type: !25)
!1518 = !DILocalVariable(name: "pkg_end", scope: !1504, file: !3, line: 469, type: !38)
!1519 = !DILocalVariable(name: "buffer_length", scope: !1504, file: !3, line: 470, type: !25)
!1520 = !DILocation(line: 458, column: 15, scope: !1504)
!1521 = !DILocation(line: 460, column: 2, scope: !1504)
!1522 = !DILocation(line: 460, column: 6, scope: !1504)
!1523 = !DILocation(line: 461, column: 2, scope: !1504)
!1524 = !DILocation(line: 461, column: 27, scope: !1504)
!1525 = !DILocation(line: 462, column: 2, scope: !1504)
!1526 = !DILocation(line: 462, column: 27, scope: !1504)
!1527 = !DILocation(line: 463, column: 2, scope: !1504)
!1528 = !DILocation(line: 463, column: 6, scope: !1504)
!1529 = !DILocation(line: 464, column: 2, scope: !1504)
!1530 = !DILocation(line: 464, column: 6, scope: !1504)
!1531 = !DILocation(line: 465, column: 2, scope: !1504)
!1532 = !DILocation(line: 465, column: 5, scope: !1504)
!1533 = !DILocation(line: 466, column: 2, scope: !1504)
!1534 = !DILocation(line: 466, column: 5, scope: !1504)
!1535 = !DILocation(line: 467, column: 2, scope: !1504)
!1536 = !DILocation(line: 467, column: 5, scope: !1504)
!1537 = !DILocation(line: 468, column: 2, scope: !1504)
!1538 = !DILocation(line: 468, column: 6, scope: !1504)
!1539 = !DILocation(line: 469, column: 2, scope: !1504)
!1540 = !DILocation(line: 469, column: 6, scope: !1504)
!1541 = !DILocation(line: 470, column: 2, scope: !1504)
!1542 = !DILocation(line: 470, column: 6, scope: !1504)
!1543 = !DILocation(line: 475, column: 8, scope: !1504)
!1544 = !DILocation(line: 475, column: 22, scope: !1504)
!1545 = !DILocation(line: 475, column: 6, scope: !1504)
!1546 = !DILocation(line: 479, column: 10, scope: !1504)
!1547 = !DILocation(line: 479, column: 2, scope: !1504)
!1548 = !DILocation(line: 482, column: 10, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 479, column: 40)
!1550 = !DILocation(line: 483, column: 3, scope: !1549)
!1551 = !DILocation(line: 483, column: 17, scope: !1549)
!1552 = !DILocation(line: 483, column: 20, scope: !1549)
!1553 = !DILocation(line: 484, column: 3, scope: !1549)
!1554 = !DILocation(line: 488, column: 10, scope: !1549)
!1555 = !DILocation(line: 489, column: 3, scope: !1549)
!1556 = !DILocation(line: 489, column: 17, scope: !1549)
!1557 = !DILocation(line: 489, column: 20, scope: !1549)
!1558 = !DILocation(line: 490, column: 3, scope: !1549)
!1559 = !DILocation(line: 494, column: 10, scope: !1549)
!1560 = !DILocation(line: 495, column: 3, scope: !1549)
!1561 = !DILocation(line: 495, column: 17, scope: !1549)
!1562 = !DILocation(line: 495, column: 20, scope: !1549)
!1563 = !DILocation(line: 496, column: 3, scope: !1549)
!1564 = !DILocation(line: 500, column: 10, scope: !1549)
!1565 = !DILocation(line: 501, column: 3, scope: !1549)
!1566 = !DILocation(line: 501, column: 17, scope: !1549)
!1567 = !DILocation(line: 501, column: 20, scope: !1549)
!1568 = !DILocation(line: 502, column: 3, scope: !1549)
!1569 = !DILocation(line: 506, column: 10, scope: !1549)
!1570 = !DILocation(line: 507, column: 3, scope: !1549)
!1571 = !DILocation(line: 512, column: 27, scope: !1504)
!1572 = !DILocation(line: 512, column: 35, scope: !1504)
!1573 = !DILocation(line: 512, column: 10, scope: !1504)
!1574 = !DILocation(line: 512, column: 8, scope: !1504)
!1575 = !DILocation(line: 513, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 513, column: 6)
!1577 = !DILocation(line: 513, column: 6, scope: !1504)
!1578 = !DILocation(line: 514, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 513, column: 14)
!1580 = !DILocation(line: 520, column: 10, scope: !1504)
!1581 = !DILocation(line: 520, column: 2, scope: !1504)
!1582 = !DILocation(line: 525, column: 3, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 520, column: 18)
!1584 = !DILocation(line: 526, column: 20, scope: !1583)
!1585 = !DILocation(line: 526, column: 27, scope: !1583)
!1586 = !DILocation(line: 526, column: 3, scope: !1583)
!1587 = !DILocation(line: 527, column: 3, scope: !1583)
!1588 = !DILocation(line: 527, column: 17, scope: !1583)
!1589 = !DILocation(line: 527, column: 21, scope: !1583)
!1590 = !DILocation(line: 548, column: 39, scope: !1583)
!1591 = !DILocation(line: 548, column: 7, scope: !1583)
!1592 = !DILocation(line: 547, column: 3, scope: !1583)
!1593 = !DILocation(line: 547, column: 17, scope: !1583)
!1594 = !DILocation(line: 547, column: 28, scope: !1583)
!1595 = !DILocation(line: 549, column: 3, scope: !1583)
!1596 = !DILocation(line: 556, column: 39, scope: !1583)
!1597 = !DILocation(line: 556, column: 7, scope: !1583)
!1598 = !DILocation(line: 555, column: 3, scope: !1583)
!1599 = !DILocation(line: 555, column: 17, scope: !1583)
!1600 = !DILocation(line: 555, column: 28, scope: !1583)
!1601 = !DILocation(line: 557, column: 3, scope: !1583)
!1602 = !DILocation(line: 570, column: 17, scope: !1583)
!1603 = !DILocation(line: 570, column: 15, scope: !1583)
!1604 = !DILocation(line: 571, column: 3, scope: !1583)
!1605 = !DILocation(line: 571, column: 17, scope: !1583)
!1606 = !DILocation(line: 571, column: 20, scope: !1583)
!1607 = !DILocation(line: 572, column: 22, scope: !1583)
!1608 = !DILocation(line: 572, column: 20, scope: !1583)
!1609 = !DILocation(line: 573, column: 3, scope: !1583)
!1610 = !DILocation(line: 573, column: 17, scope: !1583)
!1611 = !DILocation(line: 573, column: 20, scope: !1583)
!1612 = !DILocation(line: 575, column: 37, scope: !1583)
!1613 = !DILocation(line: 575, column: 33, scope: !1583)
!1614 = !DILocation(line: 575, column: 3, scope: !1583)
!1615 = !DILocation(line: 575, column: 17, scope: !1583)
!1616 = !DILocation(line: 575, column: 31, scope: !1583)
!1617 = !DILocation(line: 576, column: 40, scope: !1583)
!1618 = !DILocation(line: 576, column: 57, scope: !1583)
!1619 = !DILocation(line: 576, column: 34, scope: !1583)
!1620 = !DILocation(line: 576, column: 3, scope: !1583)
!1621 = !DILocation(line: 576, column: 17, scope: !1583)
!1622 = !DILocation(line: 576, column: 31, scope: !1583)
!1623 = !DILocation(line: 580, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 580, column: 7)
!1625 = !DILocation(line: 580, column: 14, scope: !1624)
!1626 = !DILocation(line: 580, column: 7, scope: !1583)
!1627 = !DILocation(line: 581, column: 20, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 580, column: 44)
!1629 = !DILocation(line: 581, column: 18, scope: !1628)
!1630 = !DILocation(line: 582, column: 4, scope: !1628)
!1631 = !DILocation(line: 582, column: 18, scope: !1628)
!1632 = !DILocation(line: 582, column: 21, scope: !1628)
!1633 = !DILocation(line: 585, column: 14, scope: !1628)
!1634 = !DILocation(line: 585, column: 28, scope: !1628)
!1635 = !DILocation(line: 585, column: 8, scope: !1628)
!1636 = !DILocation(line: 584, column: 4, scope: !1628)
!1637 = !DILocation(line: 584, column: 18, scope: !1628)
!1638 = !DILocation(line: 584, column: 32, scope: !1628)
!1639 = !DILocation(line: 586, column: 3, scope: !1628)
!1640 = !DILocation(line: 587, column: 3, scope: !1583)
!1641 = !DILocation(line: 595, column: 9, scope: !1583)
!1642 = !DILocation(line: 595, column: 23, scope: !1583)
!1643 = !DILocation(line: 595, column: 7, scope: !1583)
!1644 = !DILocation(line: 596, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 596, column: 7)
!1646 = !DILocation(line: 596, column: 36, scope: !1645)
!1647 = !DILocation(line: 596, column: 7, scope: !1583)
!1648 = !DILocation(line: 597, column: 4, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 596, column: 54)
!1650 = !DILocation(line: 597, column: 18, scope: !1649)
!1651 = !DILocation(line: 597, column: 21, scope: !1649)
!1652 = !DILocation(line: 600, column: 14, scope: !1649)
!1653 = !DILocation(line: 600, column: 28, scope: !1649)
!1654 = !DILocation(line: 600, column: 12, scope: !1649)
!1655 = !DILocation(line: 602, column: 40, scope: !1649)
!1656 = !DILocation(line: 602, column: 8, scope: !1649)
!1657 = !DILocation(line: 601, column: 15, scope: !1649)
!1658 = !DILocation(line: 603, column: 15, scope: !1649)
!1659 = !DILocation(line: 603, column: 12, scope: !1649)
!1660 = !DILocation(line: 606, column: 8, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 606, column: 8)
!1662 = !DILocation(line: 606, column: 22, scope: !1661)
!1663 = !DILocation(line: 606, column: 28, scope: !1661)
!1664 = !DILocation(line: 606, column: 26, scope: !1661)
!1665 = !DILocation(line: 606, column: 8, scope: !1649)
!1666 = !DILocation(line: 611, column: 47, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 606, column: 37)
!1668 = !DILocation(line: 611, column: 9, scope: !1667)
!1669 = !DILocation(line: 610, column: 9, scope: !1667)
!1670 = !DILocation(line: 612, column: 10, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 612, column: 9)
!1672 = !DILocation(line: 612, column: 9, scope: !1667)
!1673 = !DILocation(line: 613, column: 22, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 612, column: 15)
!1675 = !DILocation(line: 613, column: 6, scope: !1674)
!1676 = !DILocation(line: 614, column: 6, scope: !1674)
!1677 = !DILocation(line: 619, column: 14, scope: !1667)
!1678 = !DILocation(line: 619, column: 12, scope: !1667)
!1679 = !DILocation(line: 620, column: 5, scope: !1667)
!1680 = !DILocation(line: 620, column: 19, scope: !1667)
!1681 = !DILocation(line: 620, column: 22, scope: !1667)
!1682 = !DILocation(line: 623, column: 13, scope: !1667)
!1683 = !DILocation(line: 623, column: 5, scope: !1667)
!1684 = !DILocation(line: 627, column: 10, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 623, column: 21)
!1686 = !DILocation(line: 626, column: 20, scope: !1685)
!1687 = !DILocation(line: 628, column: 6, scope: !1685)
!1688 = !DILocation(line: 628, column: 20, scope: !1685)
!1689 = !DILocation(line: 628, column: 24, scope: !1685)
!1690 = !DILocation(line: 629, column: 6, scope: !1685)
!1691 = !DILocation(line: 634, column: 10, scope: !1685)
!1692 = !DILocation(line: 633, column: 20, scope: !1685)
!1693 = !DILocation(line: 635, column: 6, scope: !1685)
!1694 = !DILocation(line: 635, column: 20, scope: !1685)
!1695 = !DILocation(line: 635, column: 24, scope: !1685)
!1696 = !DILocation(line: 636, column: 6, scope: !1685)
!1697 = !DILocation(line: 641, column: 10, scope: !1685)
!1698 = !DILocation(line: 640, column: 20, scope: !1685)
!1699 = !DILocation(line: 642, column: 6, scope: !1685)
!1700 = !DILocation(line: 642, column: 20, scope: !1685)
!1701 = !DILocation(line: 642, column: 24, scope: !1685)
!1702 = !DILocation(line: 643, column: 6, scope: !1685)
!1703 = !DILocation(line: 647, column: 20, scope: !1685)
!1704 = !DILocation(line: 648, column: 6, scope: !1685)
!1705 = !DILocation(line: 654, column: 29, scope: !1667)
!1706 = !DILocation(line: 654, column: 5, scope: !1667)
!1707 = !DILocation(line: 654, column: 16, scope: !1667)
!1708 = !DILocation(line: 654, column: 27, scope: !1667)
!1709 = !DILocation(line: 655, column: 23, scope: !1667)
!1710 = !DILocation(line: 655, column: 37, scope: !1667)
!1711 = !DILocation(line: 655, column: 5, scope: !1667)
!1712 = !DILocation(line: 655, column: 16, scope: !1667)
!1713 = !DILocation(line: 655, column: 21, scope: !1667)
!1714 = !DILocation(line: 656, column: 4, scope: !1667)
!1715 = !DILocation(line: 660, column: 24, scope: !1649)
!1716 = !DILocation(line: 660, column: 4, scope: !1649)
!1717 = !DILocation(line: 660, column: 18, scope: !1649)
!1718 = !DILocation(line: 660, column: 22, scope: !1649)
!1719 = !DILocation(line: 661, column: 3, scope: !1649)
!1720 = !DILocation(line: 662, column: 48, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 661, column: 10)
!1722 = !DILocation(line: 662, column: 10, scope: !1721)
!1723 = !DILocation(line: 662, column: 8, scope: !1721)
!1724 = !DILocation(line: 663, column: 9, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 663, column: 8)
!1726 = !DILocation(line: 663, column: 8, scope: !1721)
!1727 = !DILocation(line: 664, column: 21, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 663, column: 14)
!1729 = !DILocation(line: 664, column: 5, scope: !1728)
!1730 = !DILocation(line: 665, column: 5, scope: !1728)
!1731 = !DILocation(line: 671, column: 36, scope: !1721)
!1732 = !DILocation(line: 671, column: 8, scope: !1721)
!1733 = !DILocation(line: 670, column: 4, scope: !1721)
!1734 = !DILocation(line: 670, column: 16, scope: !1721)
!1735 = !DILocation(line: 670, column: 27, scope: !1721)
!1736 = !DILocation(line: 676, column: 22, scope: !1583)
!1737 = !DILocation(line: 676, column: 29, scope: !1583)
!1738 = !DILocation(line: 676, column: 3, scope: !1583)
!1739 = !DILocation(line: 677, column: 3, scope: !1583)
!1740 = !DILocation(line: 682, column: 3, scope: !1583)
!1741 = !DILocation(line: 685, column: 2, scope: !1504)
!1742 = !DILocation(line: 686, column: 1, scope: !1504)
!1743 = distinct !DISubprogram(name: "acpi_ps_free_field_list", scope: !3, file: !3, line: 700, type: !1744, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !80}
!1746 = !{!1747, !1748, !1749, !1750}
!1747 = !DILocalVariable(name: "start", arg: 1, scope: !1743, file: !3, line: 700, type: !80)
!1748 = !DILocalVariable(name: "cur", scope: !1743, file: !3, line: 702, type: !80)
!1749 = !DILocalVariable(name: "next", scope: !1743, file: !3, line: 703, type: !80)
!1750 = !DILocalVariable(name: "arg", scope: !1743, file: !3, line: 704, type: !80)
!1751 = !DILocation(line: 700, column: 62, scope: !1743)
!1752 = !DILocation(line: 702, column: 2, scope: !1743)
!1753 = !DILocation(line: 702, column: 27, scope: !1743)
!1754 = !DILocation(line: 702, column: 33, scope: !1743)
!1755 = !DILocation(line: 703, column: 2, scope: !1743)
!1756 = !DILocation(line: 703, column: 27, scope: !1743)
!1757 = !DILocation(line: 704, column: 2, scope: !1743)
!1758 = !DILocation(line: 704, column: 27, scope: !1743)
!1759 = !DILocation(line: 706, column: 2, scope: !1743)
!1760 = !DILocation(line: 706, column: 9, scope: !1743)
!1761 = !DILocation(line: 707, column: 10, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 706, column: 14)
!1763 = !DILocation(line: 707, column: 22, scope: !1762)
!1764 = !DILocation(line: 707, column: 8, scope: !1762)
!1765 = !DILocation(line: 711, column: 25, scope: !1762)
!1766 = !DILocation(line: 711, column: 9, scope: !1762)
!1767 = !DILocation(line: 711, column: 7, scope: !1762)
!1768 = !DILocation(line: 712, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 712, column: 7)
!1770 = !DILocation(line: 712, column: 7, scope: !1762)
!1771 = !DILocation(line: 713, column: 20, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 712, column: 12)
!1773 = !DILocation(line: 713, column: 4, scope: !1772)
!1774 = !DILocation(line: 714, column: 3, scope: !1772)
!1775 = !DILocation(line: 716, column: 19, scope: !1762)
!1776 = !DILocation(line: 716, column: 3, scope: !1762)
!1777 = !DILocation(line: 717, column: 9, scope: !1762)
!1778 = !DILocation(line: 717, column: 7, scope: !1762)
!1779 = distinct !{!1779, !1759, !1780, !884, !885}
!1780 = !DILocation(line: 718, column: 2, scope: !1743)
!1781 = !DILocation(line: 719, column: 1, scope: !1743)
!1782 = !DISubprogram(name: "acpi_ps_peek_opcode", scope: !1130, file: !1130, line: 121, type: !1783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!20, !71}
!1785 = !DISubprogram(name: "acpi_ps_is_leading_char", scope: !1130, file: !1130, line: 208, type: !1786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!13, !25}
!1788 = !DISubprogram(name: "acpi_ps_free_op", scope: !1130, file: !1130, line: 206, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1789 = !DISubprogram(name: "acpi_ps_set_name", scope: !1130, file: !1130, line: 212, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !80, !25}
!1792 = !DISubprogram(name: "acpi_ps_get_arg", scope: !1130, file: !1130, line: 169, type: !1793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!80, !80, !25}
