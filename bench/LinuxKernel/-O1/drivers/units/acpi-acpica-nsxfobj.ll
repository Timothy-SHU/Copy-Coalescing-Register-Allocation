; ModuleID = 'drivers/acpi/acpica/nsxfobj.c'
source_filename = "drivers/acpi/acpica/nsxfobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_type: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_type ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_parent: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_parent ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_next_object: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_next_object ; .previous"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }

@__UNIQUE_ID___addressable_acpi_get_type174 = internal global ptr @acpi_get_type, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_acpi_get_parent175 = internal global ptr @acpi_get_parent, section ".discard.addressable", align 8, !dbg !23
@__UNIQUE_ID___addressable_acpi_get_next_object176 = internal global ptr @acpi_get_next_object, section ".discard.addressable", align 8, !dbg !25
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_get_type174, ptr @__UNIQUE_ID___addressable_acpi_get_parent175, ptr @__UNIQUE_ID___addressable_acpi_get_next_object176], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_type(ptr noundef %handle, ptr noundef %ret_type) #0 align 16 !dbg !36 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %ret_type.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !42, metadata !DIExpression()), !dbg !811
  store ptr %ret_type, ptr %ret_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_type.addr, metadata !43, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !813
  call void @llvm.dbg.declare(metadata ptr %node, metadata !44, metadata !DIExpression()), !dbg !814
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !815
  call void @llvm.dbg.declare(metadata ptr %status, metadata !810, metadata !DIExpression()), !dbg !816
  %0 = load ptr, ptr %ret_type.addr, align 8, !dbg !817
  %tobool = icmp ne ptr %0, null, !dbg !817
  br i1 %tobool, label %if.end, label %if.then, !dbg !819

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !820

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !822
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !824
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !825

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %ret_type.addr, align 8, !dbg !826
  store i32 0, ptr %2, align 4, !dbg !828
  store i32 0, ptr %retval, align 4, !dbg !829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !829

if.end2:                                          ; preds = %if.end
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #5, !dbg !830
  store i32 %call, ptr %status, align 4, !dbg !831
  %3 = load i32, ptr %status, align 4, !dbg !832
  %tobool3 = icmp ne i32 %3, 0, !dbg !832
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !834

if.then4:                                         ; preds = %if.end2
  %4 = load i32, ptr %status, align 4, !dbg !835
  store i32 %4, ptr %retval, align 4, !dbg !837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !837

if.end5:                                          ; preds = %if.end2
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !838
  %call6 = call ptr @acpi_ns_validate_handle(ptr noundef %5) #5, !dbg !839
  store ptr %call6, ptr %node, align 8, !dbg !840
  %6 = load ptr, ptr %node, align 8, !dbg !841
  %tobool7 = icmp ne ptr %6, null, !dbg !841
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !843

if.then8:                                         ; preds = %if.end5
  %call9 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5, !dbg !844
  store i32 4097, ptr %retval, align 4, !dbg !846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !846

if.end10:                                         ; preds = %if.end5
  %7 = load ptr, ptr %node, align 8, !dbg !847
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 2, !dbg !848
  %8 = load i8, ptr %type, align 1, !dbg !848
  %conv = zext i8 %8 to i32, !dbg !847
  %9 = load ptr, ptr %ret_type.addr, align 8, !dbg !849
  store i32 %conv, ptr %9, align 4, !dbg !850
  %call11 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5, !dbg !851
  store i32 %call11, ptr %status, align 4, !dbg !852
  %10 = load i32, ptr %status, align 4, !dbg !853
  store i32 %10, ptr %retval, align 4, !dbg !854
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !854

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !855
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !855
  %11 = load i32, ptr %retval, align 4, !dbg !855
  ret i32 %11, !dbg !855
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !856 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !861 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !865 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_parent(ptr noundef %handle, ptr noundef %ret_handle) #0 align 16 !dbg !866 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %ret_handle.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %parent_node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !870, metadata !DIExpression()), !dbg !876
  store ptr %ret_handle, ptr %ret_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_handle.addr, metadata !871, metadata !DIExpression()), !dbg !877
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %node, metadata !872, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #4, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !873, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %status, metadata !874, metadata !DIExpression()), !dbg !883
  %0 = load ptr, ptr %ret_handle.addr, align 8, !dbg !884
  %tobool = icmp ne ptr %0, null, !dbg !884
  br i1 %tobool, label %if.end, label %if.then, !dbg !886

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !887

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !889
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !891
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !892

if.then1:                                         ; preds = %if.end
  store i32 10, ptr %retval, align 4, !dbg !893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !893

if.end2:                                          ; preds = %if.end
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #5, !dbg !895
  store i32 %call, ptr %status, align 4, !dbg !896
  %2 = load i32, ptr %status, align 4, !dbg !897
  %tobool3 = icmp ne i32 %2, 0, !dbg !897
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !899

if.then4:                                         ; preds = %if.end2
  %3 = load i32, ptr %status, align 4, !dbg !900
  store i32 %3, ptr %retval, align 4, !dbg !902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !902

if.end5:                                          ; preds = %if.end2
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !903
  %call6 = call ptr @acpi_ns_validate_handle(ptr noundef %4) #5, !dbg !904
  store ptr %call6, ptr %node, align 8, !dbg !905
  %5 = load ptr, ptr %node, align 8, !dbg !906
  %tobool7 = icmp ne ptr %5, null, !dbg !906
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !908

if.then8:                                         ; preds = %if.end5
  store i32 4097, ptr %status, align 4, !dbg !909
  br label %unlock_and_exit, !dbg !911

if.end9:                                          ; preds = %if.end5
  %6 = load ptr, ptr %node, align 8, !dbg !912
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 5, !dbg !913
  %7 = load ptr, ptr %parent, align 8, !dbg !913
  store ptr %7, ptr %parent_node, align 8, !dbg !914
  %8 = load ptr, ptr %parent_node, align 8, !dbg !915
  %9 = ptrtoint ptr %8 to i64, !dbg !915
  %10 = inttoptr i64 %9 to ptr, !dbg !915
  %11 = load ptr, ptr %ret_handle.addr, align 8, !dbg !916
  store ptr %10, ptr %11, align 8, !dbg !917
  %12 = load ptr, ptr %parent_node, align 8, !dbg !918
  %tobool10 = icmp ne ptr %12, null, !dbg !918
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !920

if.then11:                                        ; preds = %if.end9
  store i32 10, ptr %status, align 4, !dbg !921
  br label %if.end12, !dbg !923

if.end12:                                         ; preds = %if.then11, %if.end9
  br label %unlock_and_exit, !dbg !918

unlock_and_exit:                                  ; preds = %if.end12, %if.then8
  call void @llvm.dbg.label(metadata !875), !dbg !924
  %call13 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5, !dbg !925
  %13 = load i32, ptr %status, align 4, !dbg !926
  store i32 %13, ptr %retval, align 4, !dbg !927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !927

cleanup:                                          ; preds = %unlock_and_exit, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !928
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #4, !dbg !928
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !928
  %14 = load i32, ptr %retval, align 4, !dbg !928
  ret i32 %14, !dbg !928
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_next_object(i32 noundef %type, ptr noundef %parent, ptr noundef %child, ptr noundef %ret_handle) #0 align 16 !dbg !929 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %ret_handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %parent_node = alloca ptr, align 8
  %child_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !933, metadata !DIExpression()), !dbg !942
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !934, metadata !DIExpression()), !dbg !943
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !935, metadata !DIExpression()), !dbg !944
  store ptr %ret_handle, ptr %ret_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_handle.addr, metadata !936, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %status, metadata !937, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %node, metadata !938, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #4, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !939, metadata !DIExpression()), !dbg !951
  store ptr null, ptr %parent_node, align 8, !dbg !951
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_node) #4, !dbg !952
  call void @llvm.dbg.declare(metadata ptr %child_node, metadata !940, metadata !DIExpression()), !dbg !953
  store ptr null, ptr %child_node, align 8, !dbg !953
  %0 = load i32, ptr %type.addr, align 4, !dbg !954
  %cmp = icmp ugt i32 %0, 16, !dbg !956
  br i1 %cmp, label %if.then, label %if.end, !dbg !957

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !958

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #5, !dbg !960
  store i32 %call, ptr %status, align 4, !dbg !961
  %1 = load i32, ptr %status, align 4, !dbg !962
  %tobool = icmp ne i32 %1, 0, !dbg !962
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !964

if.then1:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !965
  store i32 %2, ptr %retval, align 4, !dbg !967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !967

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %child.addr, align 8, !dbg !968
  %tobool3 = icmp ne ptr %3, null, !dbg !968
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !970

if.then4:                                         ; preds = %if.end2
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !971
  %call5 = call ptr @acpi_ns_validate_handle(ptr noundef %4) #5, !dbg !973
  store ptr %call5, ptr %parent_node, align 8, !dbg !974
  %5 = load ptr, ptr %parent_node, align 8, !dbg !975
  %tobool6 = icmp ne ptr %5, null, !dbg !975
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !977

if.then7:                                         ; preds = %if.then4
  store i32 4097, ptr %status, align 4, !dbg !978
  br label %unlock_and_exit, !dbg !980

if.end8:                                          ; preds = %if.then4
  br label %if.end13, !dbg !981

if.else:                                          ; preds = %if.end2
  %6 = load ptr, ptr %child.addr, align 8, !dbg !982
  %call9 = call ptr @acpi_ns_validate_handle(ptr noundef %6) #5, !dbg !984
  store ptr %call9, ptr %child_node, align 8, !dbg !985
  %7 = load ptr, ptr %child_node, align 8, !dbg !986
  %tobool10 = icmp ne ptr %7, null, !dbg !986
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !988

if.then11:                                        ; preds = %if.else
  store i32 4097, ptr %status, align 4, !dbg !989
  br label %unlock_and_exit, !dbg !991

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end8
  %8 = load i32, ptr %type.addr, align 4, !dbg !992
  %9 = load ptr, ptr %parent_node, align 8, !dbg !993
  %10 = load ptr, ptr %child_node, align 8, !dbg !994
  %call14 = call ptr @acpi_ns_get_next_node_typed(i32 noundef %8, ptr noundef %9, ptr noundef %10) #5, !dbg !995
  store ptr %call14, ptr %node, align 8, !dbg !996
  %11 = load ptr, ptr %node, align 8, !dbg !997
  %tobool15 = icmp ne ptr %11, null, !dbg !997
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !999

if.then16:                                        ; preds = %if.end13
  store i32 5, ptr %status, align 4, !dbg !1000
  br label %unlock_and_exit, !dbg !1002

if.end17:                                         ; preds = %if.end13
  %12 = load ptr, ptr %ret_handle.addr, align 8, !dbg !1003
  %tobool18 = icmp ne ptr %12, null, !dbg !1003
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1005

if.then19:                                        ; preds = %if.end17
  %13 = load ptr, ptr %node, align 8, !dbg !1006
  %14 = ptrtoint ptr %13 to i64, !dbg !1006
  %15 = inttoptr i64 %14 to ptr, !dbg !1006
  %16 = load ptr, ptr %ret_handle.addr, align 8, !dbg !1008
  store ptr %15, ptr %16, align 8, !dbg !1009
  br label %if.end20, !dbg !1010

if.end20:                                         ; preds = %if.then19, %if.end17
  br label %unlock_and_exit, !dbg !1003

unlock_and_exit:                                  ; preds = %if.end20, %if.then16, %if.then11, %if.then7
  call void @llvm.dbg.label(metadata !941), !dbg !1011
  %call21 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5, !dbg !1012
  %17 = load i32, ptr %status, align 4, !dbg !1013
  store i32 %17, ptr %retval, align 4, !dbg !1014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1014

cleanup:                                          ; preds = %unlock_and_exit, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_node) #4, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #4, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1015
  %18 = load i32, ptr %retval, align 4, !dbg !1015
  ret i32 %18, !dbg !1015
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1016 dso_local ptr @acpi_ns_get_next_node_typed(i32 noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_type174", scope: !2, file: !3, line: 68, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsxfobj.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsxfobj\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsxfobj.ll drivers/acpi/acpica/nsxfobj.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsxfobj.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "db66c3ad6f2e34c549b6fac773c42393")
!4 = !{!5, !12, !13, !14, !17, !18, !21}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !20)
!20 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!22 = !{!0, !23, !25}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_parent175", scope: !2, file: !3, line: 129, type: !13, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_next_object176", scope: !2, file: !3, line: 209, type: !13, isLocal: true, isDefinition: true)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 8, !"cf-protection-branch", i32 1}
!31 = !{i32 4, !"function_return_thunk_extern", i32 1}
!32 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!33 = !{i32 1, !"Code Model", i32 2}
!34 = !{i32 1, !"override-stack-alignment", i32 8}
!35 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!36 = distinct !DISubprogram(name: "acpi_get_type", scope: !3, file: !3, line: 31, type: !37, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!37 = !DISubroutineType(types: !38)
!38 = !{!5, !12, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!41 = !{!42, !43, !44, !810}
!42 = !DILocalVariable(name: "handle", arg: 1, scope: !36, file: !3, line: 31, type: !12)
!43 = !DILocalVariable(name: "ret_type", arg: 2, scope: !36, file: !3, line: 31, type: !39)
!44 = !DILocalVariable(name: "node", scope: !36, file: !3, line: 33, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !47, line: 133, size: 384, elements: !48)
!47 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!48 = !{!49, !797, !798, !799, !800, !806, !807, !808, !809}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !46, file: !47, line: 134, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !52, line: 369, size: 576, elements: !53)
!52 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!53 = !{!54, !68, !81, !93, !107, !121, !130, !446, !463, !479, !492, !570, !582, !596, !606, !624, !646, !665, !684, !703, !716, !743, !760, !773, !787, !796}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !51, file: !52, line: 370, baseType: !55, size: 128)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !52, line: 73, size: 128, elements: !56)
!56 = !{!57, !58, !62, !63, !67}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !55, file: !52, line: 74, baseType: !50, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !52, line: 74, baseType: !59, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !61)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !52, line: 74, baseType: !59, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !55, file: !52, line: 74, baseType: !64, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !66)
!66 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !52, line: 74, baseType: !59, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !51, file: !52, line: 371, baseType: !69, size: 192)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !52, line: 76, size: 192, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !80}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !52, line: 77, baseType: !50, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !52, line: 77, baseType: !59, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !52, line: 77, baseType: !59, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !52, line: 77, baseType: !64, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !52, line: 77, baseType: !59, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !69, file: !52, line: 77, baseType: !77, size: 24, offset: 104)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 24, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !69, file: !52, line: 78, baseType: !18, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !51, file: !52, line: 372, baseType: !82, size: 256)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !52, line: 93, size: 256, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !92}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !52, line: 94, baseType: !50, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !52, line: 94, baseType: !59, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !52, line: 94, baseType: !59, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !52, line: 94, baseType: !64, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !52, line: 94, baseType: !59, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !52, line: 94, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !52, line: 94, baseType: !7, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !51, file: !52, line: 373, baseType: !94, size: 384)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !52, line: 97, size: 384, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !103, !104, !105, !106}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !52, line: 98, baseType: !50, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !52, line: 98, baseType: !59, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !52, line: 98, baseType: !59, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !52, line: 98, baseType: !64, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !52, line: 98, baseType: !59, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !94, file: !52, line: 98, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !94, file: !52, line: 98, baseType: !7, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !94, file: !52, line: 99, baseType: !7, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !94, file: !52, line: 100, baseType: !102, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !52, line: 101, baseType: !45, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !51, file: !52, line: 374, baseType: !108, size: 384)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !52, line: 104, size: 384, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116, !118, !119, !120}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !52, line: 105, baseType: !50, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !52, line: 105, baseType: !59, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !52, line: 105, baseType: !59, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !52, line: 105, baseType: !64, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !52, line: 105, baseType: !59, size: 8, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !108, file: !52, line: 105, baseType: !45, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !108, file: !52, line: 106, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !108, file: !52, line: 107, baseType: !102, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !108, file: !52, line: 108, baseType: !7, size: 32, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !108, file: !52, line: 109, baseType: !7, size: 32, offset: 352)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !51, file: !52, line: 375, baseType: !122, size: 192)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !52, line: 118, size: 192, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !122, file: !52, line: 119, baseType: !50, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !122, file: !52, line: 119, baseType: !59, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !52, line: 119, baseType: !59, size: 8, offset: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !122, file: !52, line: 119, baseType: !64, size: 16, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !52, line: 119, baseType: !59, size: 8, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !122, file: !52, line: 119, baseType: !13, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !51, file: !52, line: 376, baseType: !131, size: 448)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !52, line: 144, size: 448, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !443, !444, !445}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !52, line: 145, baseType: !50, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !52, line: 145, baseType: !59, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !52, line: 145, baseType: !59, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !52, line: 145, baseType: !64, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !52, line: 145, baseType: !59, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !131, file: !52, line: 145, baseType: !59, size: 8, offset: 104)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !131, file: !52, line: 146, baseType: !59, size: 8, offset: 112)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !131, file: !52, line: 147, baseType: !59, size: 8, offset: 120)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !131, file: !52, line: 148, baseType: !50, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !131, file: !52, line: 149, baseType: !50, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !131, file: !52, line: 150, baseType: !102, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !131, file: !52, line: 154, baseType: !145, size: 64, offset: 320)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !52, line: 151, size: 64, elements: !146)
!146 = !{!147, !442}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !145, file: !52, line: 152, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !47, line: 248, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!5, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !154, line: 37, size: 9024, elements: !155)
!154 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !388, !389, !390, !391, !392, !396, !398, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !425, !426, !427, !428, !429, !430, !431, !432, !434, !440}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !154, line: 38, baseType: !152, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !154, line: 39, baseType: !59, size: 8, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !153, file: !154, line: 40, baseType: !59, size: 8, offset: 72)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !153, file: !154, line: 41, baseType: !64, size: 16, offset: 80)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !153, file: !154, line: 42, baseType: !59, size: 8, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !153, file: !154, line: 43, baseType: !59, size: 8, offset: 104)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !153, file: !154, line: 44, baseType: !59, size: 8, offset: 112)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !153, file: !154, line: 45, baseType: !164, size: 16, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !153, file: !154, line: 46, baseType: !59, size: 8, offset: 144)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !153, file: !154, line: 47, baseType: !59, size: 8, offset: 152)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !153, file: !154, line: 48, baseType: !59, size: 8, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !153, file: !154, line: 49, baseType: !59, size: 8, offset: 168)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !153, file: !154, line: 50, baseType: !59, size: 8, offset: 176)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !153, file: !154, line: 51, baseType: !59, size: 8, offset: 184)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !153, file: !154, line: 52, baseType: !59, size: 8, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !153, file: !154, line: 53, baseType: !59, size: 8, offset: 200)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !153, file: !154, line: 54, baseType: !102, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !153, file: !154, line: 55, baseType: !7, size: 32, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !153, file: !154, line: 56, baseType: !7, size: 32, offset: 352)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !153, file: !154, line: 57, baseType: !7, size: 32, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !153, file: !154, line: 58, baseType: !7, size: 32, offset: 416)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !153, file: !154, line: 60, baseType: !179, size: 640, offset: 448)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !47, line: 909, size: 640, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !270, !271, !386, !387}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !179, file: !47, line: 910, baseType: !102, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !179, file: !47, line: 911, baseType: !102, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !179, file: !47, line: 912, baseType: !102, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !179, file: !47, line: 913, baseType: !102, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !179, file: !47, line: 914, baseType: !102, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !179, file: !47, line: 915, baseType: !187, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !47, line: 891, size: 1600, elements: !189)
!189 = !{!190, !210, !226}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !188, file: !47, line: 892, baseType: !191, size: 448)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !47, line: 844, size: 448, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !209}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !47, line: 845, baseType: !187, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !191, file: !47, line: 845, baseType: !59, size: 8, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !47, line: 845, baseType: !59, size: 8, offset: 72)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !191, file: !47, line: 845, baseType: !64, size: 16, offset: 80)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !191, file: !47, line: 845, baseType: !102, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !47, line: 845, baseType: !187, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !191, file: !47, line: 845, baseType: !45, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !191, file: !47, line: 845, baseType: !201, size: 64, offset: 320)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !47, line: 732, size: 64, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !201, file: !47, line: 733, baseType: !18, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !201, file: !47, line: 734, baseType: !7, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !201, file: !47, line: 735, baseType: !90, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !201, file: !47, line: 736, baseType: !102, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !47, line: 737, baseType: !90, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !201, file: !47, line: 738, baseType: !187, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !191, file: !47, line: 845, baseType: !59, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !188, file: !47, line: 893, baseType: !211, size: 640)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !47, line: 851, size: 640, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !47, line: 852, baseType: !187, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !211, file: !47, line: 852, baseType: !59, size: 8, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !47, line: 852, baseType: !59, size: 8, offset: 72)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !211, file: !47, line: 852, baseType: !64, size: 16, offset: 80)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !211, file: !47, line: 852, baseType: !102, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !47, line: 852, baseType: !187, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !211, file: !47, line: 852, baseType: !45, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !211, file: !47, line: 852, baseType: !201, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !211, file: !47, line: 852, baseType: !59, size: 8, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !211, file: !47, line: 852, baseType: !90, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !211, file: !47, line: 853, baseType: !102, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !211, file: !47, line: 854, baseType: !7, size: 32, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !47, line: 855, baseType: !7, size: 32, offset: 608)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !188, file: !47, line: 894, baseType: !227, size: 1600)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !47, line: 862, size: 1600, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !227, file: !47, line: 863, baseType: !187, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !227, file: !47, line: 863, baseType: !59, size: 8, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !47, line: 863, baseType: !59, size: 8, offset: 72)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !227, file: !47, line: 863, baseType: !64, size: 16, offset: 80)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !227, file: !47, line: 863, baseType: !102, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !47, line: 863, baseType: !187, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !227, file: !47, line: 863, baseType: !45, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !227, file: !47, line: 863, baseType: !201, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !227, file: !47, line: 863, baseType: !59, size: 8, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !227, file: !47, line: 863, baseType: !187, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !227, file: !47, line: 864, baseType: !187, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !227, file: !47, line: 865, baseType: !90, size: 64, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !227, file: !47, line: 866, baseType: !59, size: 8, offset: 640)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !227, file: !47, line: 867, baseType: !90, size: 64, offset: 704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !227, file: !47, line: 868, baseType: !90, size: 64, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !227, file: !47, line: 869, baseType: !90, size: 64, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !227, file: !47, line: 870, baseType: !246, size: 32, offset: 896)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 4)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !227, file: !47, line: 871, baseType: !7, size: 32, offset: 928)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !227, file: !47, line: 872, baseType: !7, size: 32, offset: 960)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !227, file: !47, line: 873, baseType: !7, size: 32, offset: 992)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !227, file: !47, line: 874, baseType: !7, size: 32, offset: 1024)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !227, file: !47, line: 875, baseType: !7, size: 32, offset: 1056)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !227, file: !47, line: 876, baseType: !7, size: 32, offset: 1088)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !227, file: !47, line: 877, baseType: !7, size: 32, offset: 1120)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !227, file: !47, line: 878, baseType: !7, size: 32, offset: 1152)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !227, file: !47, line: 879, baseType: !7, size: 32, offset: 1184)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !227, file: !47, line: 880, baseType: !7, size: 32, offset: 1216)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !227, file: !47, line: 881, baseType: !7, size: 32, offset: 1248)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !227, file: !47, line: 882, baseType: !7, size: 32, offset: 1280)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !227, file: !47, line: 883, baseType: !7, size: 32, offset: 1312)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !227, file: !47, line: 884, baseType: !64, size: 16, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !227, file: !47, line: 885, baseType: !59, size: 8, offset: 1360)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !227, file: !47, line: 886, baseType: !59, size: 8, offset: 1368)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !227, file: !47, line: 887, baseType: !59, size: 8, offset: 1376)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !227, file: !47, line: 888, baseType: !267, size: 160, offset: 1384)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 20)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !179, file: !47, line: 916, baseType: !45, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !179, file: !47, line: 917, baseType: !272, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !47, line: 679, size: 640, elements: !274)
!274 = !{!275, !283, !296, !305, !314, !327, !341, !353, !365}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !273, file: !47, line: 680, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !47, line: 575, size: 128, elements: !277)
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !47, line: 576, baseType: !13, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !47, line: 576, baseType: !59, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !47, line: 576, baseType: !59, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !47, line: 576, baseType: !64, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !47, line: 576, baseType: !64, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !273, file: !47, line: 681, baseType: !284, size: 384)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !47, line: 604, size: 384, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !47, line: 605, baseType: !13, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !284, file: !47, line: 605, baseType: !59, size: 8, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !47, line: 605, baseType: !59, size: 8, offset: 72)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !284, file: !47, line: 605, baseType: !64, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !47, line: 605, baseType: !64, size: 16, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !284, file: !47, line: 606, baseType: !64, size: 16, offset: 112)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !284, file: !47, line: 607, baseType: !187, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !284, file: !47, line: 608, baseType: !102, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !284, file: !47, line: 609, baseType: !102, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !284, file: !47, line: 610, baseType: !18, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !273, file: !47, line: 682, baseType: !297, size: 192)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !47, line: 582, size: 192, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !47, line: 583, baseType: !13, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !47, line: 583, baseType: !59, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !47, line: 583, baseType: !59, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !47, line: 583, baseType: !64, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !47, line: 583, baseType: !64, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !297, file: !47, line: 584, baseType: !50, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !273, file: !47, line: 683, baseType: !306, size: 192)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !47, line: 616, size: 192, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !47, line: 617, baseType: !13, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !306, file: !47, line: 617, baseType: !59, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !47, line: 617, baseType: !59, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !47, line: 617, baseType: !64, size: 16, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !306, file: !47, line: 617, baseType: !64, size: 16, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !306, file: !47, line: 618, baseType: !45, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !273, file: !47, line: 684, baseType: !315, size: 448)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !47, line: 621, size: 448, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !47, line: 622, baseType: !13, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !47, line: 622, baseType: !59, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !47, line: 622, baseType: !59, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !47, line: 622, baseType: !64, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !47, line: 622, baseType: !64, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !315, file: !47, line: 623, baseType: !7, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !315, file: !47, line: 624, baseType: !187, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !315, file: !47, line: 625, baseType: !102, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !315, file: !47, line: 626, baseType: !102, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !315, file: !47, line: 627, baseType: !7, size: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !273, file: !47, line: 685, baseType: !328, size: 512)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !47, line: 590, size: 512, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !47, line: 591, baseType: !13, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !47, line: 591, baseType: !59, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !47, line: 591, baseType: !59, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !47, line: 591, baseType: !64, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !47, line: 591, baseType: !64, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !328, file: !47, line: 592, baseType: !7, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !328, file: !47, line: 593, baseType: !50, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !328, file: !47, line: 594, baseType: !50, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !328, file: !47, line: 595, baseType: !152, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !328, file: !47, line: 596, baseType: !13, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !328, file: !47, line: 597, baseType: !7, size: 32, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !273, file: !47, line: 686, baseType: !342, size: 320)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !47, line: 634, size: 320, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !47, line: 635, baseType: !13, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !47, line: 635, baseType: !59, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !47, line: 635, baseType: !59, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !47, line: 635, baseType: !64, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !47, line: 635, baseType: !64, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !342, file: !47, line: 636, baseType: !59, size: 8, offset: 112)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !342, file: !47, line: 637, baseType: !152, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !342, file: !47, line: 638, baseType: !50, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !342, file: !47, line: 639, baseType: !18, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !273, file: !47, line: 687, baseType: !354, size: 640)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !47, line: 646, size: 640, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !47, line: 647, baseType: !13, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !47, line: 647, baseType: !59, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !47, line: 647, baseType: !59, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !47, line: 647, baseType: !64, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !47, line: 647, baseType: !64, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !354, file: !47, line: 648, baseType: !362, size: 512, offset: 128)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 512, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !273, file: !47, line: 688, baseType: !366, size: 320)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !47, line: 669, size: 320, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !47, line: 670, baseType: !13, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !47, line: 670, baseType: !59, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !47, line: 670, baseType: !59, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !47, line: 670, baseType: !64, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !47, line: 670, baseType: !64, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !366, file: !47, line: 671, baseType: !59, size: 8, offset: 112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !366, file: !47, line: 672, baseType: !45, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !366, file: !47, line: 673, baseType: !50, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !366, file: !47, line: 674, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !47, line: 660, size: 128, elements: !379)
!379 = !{!380, !385}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !378, file: !47, line: 661, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !12, !7, !13}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !378, file: !47, line: 662, baseType: !13, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !179, file: !47, line: 918, baseType: !187, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !179, file: !47, line: 919, baseType: !7, size: 32, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !153, file: !154, line: 61, baseType: !7, size: 32, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !153, file: !154, line: 62, baseType: !7, size: 32, offset: 1120)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !153, file: !154, line: 63, baseType: !64, size: 16, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !153, file: !154, line: 64, baseType: !59, size: 8, offset: 1168)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !153, file: !154, line: 66, baseType: !393, size: 2688, offset: 1216)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2688, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 7)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !153, file: !154, line: 67, baseType: !397, size: 3072, offset: 3904)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 3072, elements: !363)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !153, file: !154, line: 68, baseType: !399, size: 576, offset: 6976)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 576, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 9)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !153, file: !154, line: 69, baseType: !117, size: 64, offset: 7552)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !153, file: !154, line: 71, baseType: !102, size: 64, offset: 7616)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !153, file: !154, line: 72, baseType: !117, size: 64, offset: 7680)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !153, file: !154, line: 73, baseType: !272, size: 64, offset: 7744)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !153, file: !154, line: 74, baseType: !45, size: 64, offset: 7808)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !153, file: !154, line: 75, baseType: !50, size: 64, offset: 7872)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !153, file: !154, line: 76, baseType: !45, size: 64, offset: 7936)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !153, file: !154, line: 77, baseType: !187, size: 64, offset: 8000)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !153, file: !154, line: 78, baseType: !50, size: 64, offset: 8064)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !153, file: !154, line: 79, baseType: !45, size: 64, offset: 8128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !153, file: !154, line: 80, baseType: !90, size: 64, offset: 8192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !153, file: !154, line: 81, baseType: !187, size: 64, offset: 8256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !153, file: !154, line: 82, baseType: !415, size: 64, offset: 8320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !47, line: 718, size: 128, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !417, file: !47, line: 722, baseType: !7, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !417, file: !47, line: 723, baseType: !7, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !47, line: 724, baseType: !64, size: 16, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !417, file: !47, line: 725, baseType: !59, size: 8, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !417, file: !47, line: 726, baseType: !59, size: 8, offset: 88)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !47, line: 727, baseType: !59, size: 8, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !153, file: !154, line: 83, baseType: !187, size: 64, offset: 8384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !153, file: !154, line: 84, baseType: !50, size: 64, offset: 8448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !153, file: !154, line: 85, baseType: !272, size: 64, offset: 8512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !153, file: !154, line: 86, baseType: !50, size: 64, offset: 8576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !153, file: !154, line: 87, baseType: !272, size: 64, offset: 8640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !153, file: !154, line: 88, baseType: !187, size: 64, offset: 8704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !153, file: !154, line: 89, baseType: !187, size: 64, offset: 8768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !153, file: !154, line: 90, baseType: !433, size: 64, offset: 8832)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !153, file: !154, line: 91, baseType: !435, size: 64, offset: 8896)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !47, line: 652, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!5, !152, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !153, file: !154, line: 92, baseType: !441, size: 64, offset: 8960)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !47, line: 656, baseType: !149)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !145, file: !52, line: 153, baseType: !50, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !131, file: !52, line: 156, baseType: !7, size: 32, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !131, file: !52, line: 157, baseType: !164, size: 16, offset: 416)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !131, file: !52, line: 158, baseType: !59, size: 8, offset: 432)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !51, file: !52, line: 377, baseType: !447, size: 576)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !52, line: 122, size: 576, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !447, file: !52, line: 123, baseType: !50, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !447, file: !52, line: 123, baseType: !59, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !52, line: 123, baseType: !59, size: 8, offset: 72)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !447, file: !52, line: 123, baseType: !64, size: 16, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !52, line: 123, baseType: !59, size: 8, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !447, file: !52, line: 123, baseType: !59, size: 8, offset: 104)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !447, file: !52, line: 124, baseType: !64, size: 16, offset: 112)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !447, file: !52, line: 125, baseType: !13, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !447, file: !52, line: 126, baseType: !18, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !447, file: !52, line: 127, baseType: !433, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !447, file: !52, line: 128, baseType: !50, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !52, line: 129, baseType: !50, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !447, file: !52, line: 130, baseType: !45, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !447, file: !52, line: 131, baseType: !59, size: 8, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !51, file: !52, line: 378, baseType: !464, size: 512)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !52, line: 134, size: 512, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !477, !478}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !464, file: !52, line: 135, baseType: !50, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !464, file: !52, line: 135, baseType: !59, size: 8, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !464, file: !52, line: 135, baseType: !59, size: 8, offset: 72)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !464, file: !52, line: 135, baseType: !64, size: 16, offset: 80)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !52, line: 135, baseType: !59, size: 8, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !464, file: !52, line: 135, baseType: !59, size: 8, offset: 104)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !464, file: !52, line: 136, baseType: !45, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !464, file: !52, line: 137, baseType: !50, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !52, line: 138, baseType: !50, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !464, file: !52, line: 139, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !18)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !464, file: !52, line: 140, baseType: !7, size: 32, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !464, file: !52, line: 141, baseType: !13, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !51, file: !52, line: 379, baseType: !480, size: 320)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !52, line: 185, size: 320, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !491}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !52, line: 186, baseType: !50, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !52, line: 186, baseType: !59, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !52, line: 186, baseType: !59, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !52, line: 186, baseType: !64, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !52, line: 186, baseType: !59, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !480, file: !52, line: 186, baseType: !488, size: 128, offset: 128)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 2)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !52, line: 186, baseType: !50, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !51, file: !52, line: 380, baseType: !493, size: 384)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !52, line: 188, size: 384, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !52, line: 189, baseType: !50, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !52, line: 189, baseType: !59, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !52, line: 189, baseType: !59, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !52, line: 189, baseType: !64, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !52, line: 189, baseType: !59, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !493, file: !52, line: 190, baseType: !488, size: 128, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !52, line: 190, baseType: !50, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !493, file: !52, line: 190, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !47, line: 480, size: 576, elements: !505)
!505 = !{!506, !507, !508, !509, !517, !532, !564, !565, !566, !567, !568, !569}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !504, file: !47, line: 481, baseType: !45, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !504, file: !47, line: 482, baseType: !503, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !47, line: 483, baseType: !503, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !504, file: !47, line: 484, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !47, line: 497, size: 256, elements: !512)
!512 = !{!513, !514, !515, !516}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !511, file: !47, line: 498, baseType: !510, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !47, line: 499, baseType: !510, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !511, file: !47, line: 500, baseType: !503, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !511, file: !47, line: 501, baseType: !7, size: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !504, file: !47, line: 485, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !47, line: 466, size: 320, elements: !520)
!520 = !{!521, !526, !527, !528, !529, !530, !531}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !519, file: !47, line: 467, baseType: !522, size: 128)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !47, line: 459, size: 128, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !522, file: !47, line: 460, baseType: !59, size: 8)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !522, file: !47, line: 461, baseType: !18, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !519, file: !47, line: 468, baseType: !522, size: 128, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !519, file: !47, line: 469, baseType: !64, size: 16, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !519, file: !47, line: 470, baseType: !59, size: 8, offset: 272)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !519, file: !47, line: 471, baseType: !59, size: 8, offset: 280)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !519, file: !47, line: 472, baseType: !59, size: 8, offset: 288)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !519, file: !47, line: 473, baseType: !59, size: 8, offset: 296)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !504, file: !47, line: 486, baseType: !533, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !47, line: 448, size: 192, elements: !535)
!535 = !{!536, !559, !560, !561, !562, !563}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !534, file: !47, line: 449, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !47, line: 438, size: 64, elements: !538)
!538 = !{!539, !540, !553}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !537, file: !47, line: 439, baseType: !45, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !537, file: !47, line: 440, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !47, line: 419, size: 256, elements: !543)
!543 = !{!544, !549, !550, !551, !552}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !542, file: !47, line: 420, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!7, !12, !7, !13}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !542, file: !47, line: 421, baseType: !13, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !47, line: 422, baseType: !45, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !542, file: !47, line: 423, baseType: !59, size: 8, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !542, file: !47, line: 424, baseType: !59, size: 8, offset: 200)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !537, file: !47, line: 441, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !47, line: 429, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !555, file: !47, line: 430, baseType: !45, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !555, file: !47, line: 431, baseType: !554, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !534, file: !47, line: 450, baseType: !518, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !47, line: 451, baseType: !59, size: 8, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !534, file: !47, line: 452, baseType: !59, size: 8, offset: 136)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !534, file: !47, line: 453, baseType: !59, size: 8, offset: 144)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !534, file: !47, line: 454, baseType: !59, size: 8, offset: 152)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !504, file: !47, line: 487, baseType: !18, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !504, file: !47, line: 488, baseType: !7, size: 32, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !504, file: !47, line: 489, baseType: !64, size: 16, offset: 480)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !504, file: !47, line: 490, baseType: !64, size: 16, offset: 496)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !504, file: !47, line: 491, baseType: !59, size: 8, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !504, file: !47, line: 492, baseType: !59, size: 8, offset: 520)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !51, file: !52, line: 381, baseType: !571, size: 384)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !52, line: 193, size: 384, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !571, file: !52, line: 194, baseType: !50, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !571, file: !52, line: 194, baseType: !59, size: 8, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !571, file: !52, line: 194, baseType: !59, size: 8, offset: 72)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !571, file: !52, line: 194, baseType: !64, size: 16, offset: 80)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !52, line: 194, baseType: !59, size: 8, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !571, file: !52, line: 194, baseType: !488, size: 128, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !571, file: !52, line: 194, baseType: !50, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !571, file: !52, line: 194, baseType: !7, size: 32, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !571, file: !52, line: 195, baseType: !7, size: 32, offset: 352)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !51, file: !52, line: 382, baseType: !583, size: 384)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !52, line: 198, size: 384, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !583, file: !52, line: 199, baseType: !50, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !52, line: 199, baseType: !59, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !52, line: 199, baseType: !59, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !583, file: !52, line: 199, baseType: !64, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !52, line: 199, baseType: !59, size: 8, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !583, file: !52, line: 201, baseType: !59, size: 8, offset: 104)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !583, file: !52, line: 202, baseType: !59, size: 8, offset: 112)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !583, file: !52, line: 203, baseType: !488, size: 128, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !583, file: !52, line: 203, baseType: !50, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !583, file: !52, line: 203, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !18)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !51, file: !52, line: 383, baseType: !597, size: 320)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !52, line: 206, size: 320, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !52, line: 207, baseType: !50, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !52, line: 207, baseType: !59, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !52, line: 207, baseType: !59, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !52, line: 207, baseType: !64, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !52, line: 207, baseType: !59, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !597, file: !52, line: 207, baseType: !488, size: 128, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !597, file: !52, line: 207, baseType: !50, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !51, file: !52, line: 384, baseType: !607, size: 384)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !52, line: 234, size: 384, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !607, file: !52, line: 235, baseType: !50, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !607, file: !52, line: 235, baseType: !59, size: 8, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !52, line: 235, baseType: !59, size: 8, offset: 72)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !607, file: !52, line: 235, baseType: !64, size: 16, offset: 80)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !52, line: 235, baseType: !59, size: 8, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !607, file: !52, line: 235, baseType: !59, size: 8, offset: 104)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !607, file: !52, line: 235, baseType: !59, size: 8, offset: 112)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !607, file: !52, line: 235, baseType: !59, size: 8, offset: 120)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !607, file: !52, line: 235, baseType: !45, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !607, file: !52, line: 235, baseType: !7, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !607, file: !52, line: 235, baseType: !7, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !607, file: !52, line: 235, baseType: !7, size: 32, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !607, file: !52, line: 235, baseType: !59, size: 8, offset: 288)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !607, file: !52, line: 235, baseType: !59, size: 8, offset: 296)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !607, file: !52, line: 235, baseType: !50, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !51, file: !52, line: 385, baseType: !625, size: 576)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !52, line: 238, size: 576, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !625, file: !52, line: 239, baseType: !50, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !625, file: !52, line: 239, baseType: !59, size: 8, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !625, file: !52, line: 239, baseType: !59, size: 8, offset: 72)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !625, file: !52, line: 239, baseType: !64, size: 16, offset: 80)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !52, line: 239, baseType: !59, size: 8, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !625, file: !52, line: 239, baseType: !59, size: 8, offset: 104)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !625, file: !52, line: 239, baseType: !59, size: 8, offset: 112)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !625, file: !52, line: 239, baseType: !59, size: 8, offset: 120)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !625, file: !52, line: 239, baseType: !45, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !625, file: !52, line: 239, baseType: !7, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !625, file: !52, line: 239, baseType: !7, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !625, file: !52, line: 239, baseType: !7, size: 32, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !625, file: !52, line: 239, baseType: !59, size: 8, offset: 288)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !625, file: !52, line: 239, baseType: !59, size: 8, offset: 296)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !625, file: !52, line: 239, baseType: !64, size: 16, offset: 304)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !625, file: !52, line: 240, baseType: !50, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !625, file: !52, line: 241, baseType: !102, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !625, file: !52, line: 242, baseType: !64, size: 16, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !625, file: !52, line: 243, baseType: !102, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !51, file: !52, line: 386, baseType: !647, size: 384)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !52, line: 263, size: 384, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !647, file: !52, line: 264, baseType: !50, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !647, file: !52, line: 264, baseType: !64, size: 16, offset: 80)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 104)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 112)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 120)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !647, file: !52, line: 264, baseType: !45, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !647, file: !52, line: 264, baseType: !7, size: 32, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !647, file: !52, line: 264, baseType: !7, size: 32, offset: 224)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !647, file: !52, line: 264, baseType: !7, size: 32, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 288)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 296)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !647, file: !52, line: 264, baseType: !59, size: 8, offset: 304)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !647, file: !52, line: 265, baseType: !50, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !51, file: !52, line: 387, baseType: !666, size: 448)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !52, line: 246, size: 448, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !666, file: !52, line: 247, baseType: !50, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !666, file: !52, line: 247, baseType: !59, size: 8, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !666, file: !52, line: 247, baseType: !59, size: 8, offset: 72)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !666, file: !52, line: 247, baseType: !64, size: 16, offset: 80)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !52, line: 247, baseType: !59, size: 8, offset: 96)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !666, file: !52, line: 247, baseType: !59, size: 8, offset: 104)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !666, file: !52, line: 247, baseType: !59, size: 8, offset: 112)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !666, file: !52, line: 247, baseType: !59, size: 8, offset: 120)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !666, file: !52, line: 247, baseType: !45, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !666, file: !52, line: 247, baseType: !7, size: 32, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !666, file: !52, line: 247, baseType: !7, size: 32, offset: 224)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !666, file: !52, line: 247, baseType: !7, size: 32, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !666, file: !52, line: 247, baseType: !59, size: 8, offset: 288)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !666, file: !52, line: 247, baseType: !59, size: 8, offset: 296)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !666, file: !52, line: 247, baseType: !50, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !666, file: !52, line: 248, baseType: !50, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !51, file: !52, line: 388, baseType: !685, size: 448)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !52, line: 251, size: 448, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !685, file: !52, line: 252, baseType: !50, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !52, line: 252, baseType: !59, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !52, line: 252, baseType: !59, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !685, file: !52, line: 252, baseType: !64, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !52, line: 252, baseType: !59, size: 8, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !685, file: !52, line: 252, baseType: !59, size: 8, offset: 104)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !685, file: !52, line: 252, baseType: !59, size: 8, offset: 112)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !685, file: !52, line: 252, baseType: !59, size: 8, offset: 120)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !685, file: !52, line: 252, baseType: !45, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !685, file: !52, line: 252, baseType: !7, size: 32, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !685, file: !52, line: 252, baseType: !7, size: 32, offset: 224)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !685, file: !52, line: 252, baseType: !7, size: 32, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !685, file: !52, line: 252, baseType: !59, size: 8, offset: 288)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !685, file: !52, line: 252, baseType: !59, size: 8, offset: 296)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !685, file: !52, line: 257, baseType: !50, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !685, file: !52, line: 258, baseType: !50, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !51, file: !52, line: 389, baseType: !704, size: 512)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !52, line: 274, size: 512, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !704, file: !52, line: 275, baseType: !50, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !52, line: 275, baseType: !59, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !52, line: 275, baseType: !59, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !704, file: !52, line: 275, baseType: !64, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !52, line: 275, baseType: !59, size: 8, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !52, line: 275, baseType: !45, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !704, file: !52, line: 276, baseType: !7, size: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !704, file: !52, line: 277, baseType: !381, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !704, file: !52, line: 278, baseType: !13, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !52, line: 279, baseType: !488, size: 128, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !51, file: !52, line: 390, baseType: !717, size: 576)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !52, line: 282, size: 576, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !732, !733, !734, !735, !741, !742}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !52, line: 283, baseType: !50, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !52, line: 283, baseType: !59, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !52, line: 283, baseType: !59, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !52, line: 283, baseType: !64, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !52, line: 283, baseType: !59, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !717, file: !52, line: 283, baseType: !59, size: 8, offset: 104)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !717, file: !52, line: 284, baseType: !59, size: 8, offset: 112)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !717, file: !52, line: 285, baseType: !727, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!5, !7, !476, !7, !731, !13, !13}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !717, file: !52, line: 286, baseType: !45, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !717, file: !52, line: 287, baseType: !13, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !717, file: !52, line: 288, baseType: !13, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !717, file: !52, line: 289, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!5, !12, !7, !13, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !717, file: !52, line: 290, baseType: !50, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !52, line: 291, baseType: !50, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !51, file: !52, line: 391, baseType: !744, size: 512)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !52, line: 309, size: 512, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !52, line: 310, baseType: !50, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !52, line: 310, baseType: !59, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !52, line: 310, baseType: !59, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !52, line: 310, baseType: !64, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !52, line: 310, baseType: !59, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !744, file: !52, line: 310, baseType: !59, size: 8, offset: 104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !744, file: !52, line: 311, baseType: !59, size: 8, offset: 112)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !744, file: !52, line: 312, baseType: !59, size: 8, offset: 120)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !744, file: !52, line: 313, baseType: !13, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !52, line: 314, baseType: !45, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !744, file: !52, line: 315, baseType: !117, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !744, file: !52, line: 316, baseType: !102, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !744, file: !52, line: 317, baseType: !102, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !744, file: !52, line: 318, baseType: !7, size: 32, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !51, file: !52, line: 392, baseType: !761, size: 448)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !52, line: 342, size: 448, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !761, file: !52, line: 343, baseType: !50, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !52, line: 343, baseType: !59, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !52, line: 343, baseType: !59, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !761, file: !52, line: 343, baseType: !64, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !52, line: 343, baseType: !59, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !761, file: !52, line: 343, baseType: !45, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !761, file: !52, line: 344, baseType: !45, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !761, file: !52, line: 345, baseType: !13, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !761, file: !52, line: 346, baseType: !102, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !761, file: !52, line: 347, baseType: !7, size: 32, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !51, file: !52, line: 393, baseType: !774, size: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !52, line: 352, size: 256, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !786}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !52, line: 353, baseType: !50, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !52, line: 353, baseType: !59, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !52, line: 353, baseType: !59, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !52, line: 353, baseType: !64, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !52, line: 353, baseType: !59, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !774, file: !52, line: 353, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !12, !13}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !774, file: !52, line: 354, baseType: !13, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !51, file: !52, line: 394, baseType: !788, size: 192)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !52, line: 359, size: 192, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !788, file: !52, line: 360, baseType: !50, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !52, line: 360, baseType: !59, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !52, line: 360, baseType: !59, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !788, file: !52, line: 360, baseType: !64, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !52, line: 360, baseType: !59, size: 8, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !52, line: 360, baseType: !50, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !51, file: !52, line: 401, baseType: !46, size: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !47, line: 135, baseType: !59, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !47, line: 136, baseType: !59, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !47, line: 137, baseType: !64, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !47, line: 138, baseType: !801, size: 32, offset: 96)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !802, line: 328, size: 32, elements: !803)
!802 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !801, file: !802, line: 329, baseType: !7, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !801, file: !802, line: 330, baseType: !246, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !46, file: !47, line: 139, baseType: !45, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !46, file: !47, line: 140, baseType: !45, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !46, file: !47, line: 141, baseType: !45, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !46, file: !47, line: 142, baseType: !164, size: 16, offset: 320)
!810 = !DILocalVariable(name: "status", scope: !36, file: !3, line: 34, type: !5)
!811 = !DILocation(line: 31, column: 39, scope: !36)
!812 = !DILocation(line: 31, column: 65, scope: !36)
!813 = !DILocation(line: 33, column: 2, scope: !36)
!814 = !DILocation(line: 33, column: 30, scope: !36)
!815 = !DILocation(line: 34, column: 2, scope: !36)
!816 = !DILocation(line: 34, column: 14, scope: !36)
!817 = !DILocation(line: 38, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !36, file: !3, line: 38, column: 6)
!819 = !DILocation(line: 38, column: 6, scope: !36)
!820 = !DILocation(line: 39, column: 3, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !3, line: 38, column: 17)
!822 = !DILocation(line: 44, column: 6, scope: !823)
!823 = distinct !DILexicalBlock(scope: !36, file: !3, line: 44, column: 6)
!824 = !DILocation(line: 44, column: 13, scope: !823)
!825 = !DILocation(line: 44, column: 6, scope: !36)
!826 = !DILocation(line: 45, column: 4, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 44, column: 34)
!828 = !DILocation(line: 45, column: 13, scope: !827)
!829 = !DILocation(line: 46, column: 3, scope: !827)
!830 = !DILocation(line: 49, column: 11, scope: !36)
!831 = !DILocation(line: 49, column: 9, scope: !36)
!832 = !DILocation(line: 50, column: 6, scope: !833)
!833 = distinct !DILexicalBlock(scope: !36, file: !3, line: 50, column: 6)
!834 = !DILocation(line: 50, column: 6, scope: !36)
!835 = !DILocation(line: 51, column: 11, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !3, line: 50, column: 28)
!837 = !DILocation(line: 51, column: 3, scope: !836)
!838 = !DILocation(line: 56, column: 33, scope: !36)
!839 = !DILocation(line: 56, column: 9, scope: !36)
!840 = !DILocation(line: 56, column: 7, scope: !36)
!841 = !DILocation(line: 57, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !36, file: !3, line: 57, column: 6)
!843 = !DILocation(line: 57, column: 6, scope: !36)
!844 = !DILocation(line: 58, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !3, line: 57, column: 13)
!846 = !DILocation(line: 59, column: 3, scope: !845)
!847 = !DILocation(line: 62, column: 14, scope: !36)
!848 = !DILocation(line: 62, column: 20, scope: !36)
!849 = !DILocation(line: 62, column: 3, scope: !36)
!850 = !DILocation(line: 62, column: 12, scope: !36)
!851 = !DILocation(line: 64, column: 11, scope: !36)
!852 = !DILocation(line: 64, column: 9, scope: !36)
!853 = !DILocation(line: 65, column: 10, scope: !36)
!854 = !DILocation(line: 65, column: 2, scope: !36)
!855 = !DILocation(line: 66, column: 1, scope: !36)
!856 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !857, file: !857, line: 646, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!858 = !DISubroutineType(types: !859)
!859 = !{!5, !860}
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !47, line: 17, baseType: !7)
!861 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !862, file: !862, line: 398, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!863 = !DISubroutineType(types: !864)
!864 = !{!45, !12}
!865 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !857, file: !857, line: 648, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = distinct !DISubprogram(name: "acpi_get_parent", scope: !3, file: !3, line: 83, type: !867, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!5, !12, !21}
!869 = !{!870, !871, !872, !873, !874, !875}
!870 = !DILocalVariable(name: "handle", arg: 1, scope: !866, file: !3, line: 83, type: !12)
!871 = !DILocalVariable(name: "ret_handle", arg: 2, scope: !866, file: !3, line: 83, type: !21)
!872 = !DILocalVariable(name: "node", scope: !866, file: !3, line: 85, type: !45)
!873 = !DILocalVariable(name: "parent_node", scope: !866, file: !3, line: 86, type: !45)
!874 = !DILocalVariable(name: "status", scope: !866, file: !3, line: 87, type: !5)
!875 = !DILabel(scope: !866, name: "unlock_and_exit", file: !3, line: 123)
!876 = !DILocation(line: 83, column: 41, scope: !866)
!877 = !DILocation(line: 83, column: 62, scope: !866)
!878 = !DILocation(line: 85, column: 2, scope: !866)
!879 = !DILocation(line: 85, column: 30, scope: !866)
!880 = !DILocation(line: 86, column: 2, scope: !866)
!881 = !DILocation(line: 86, column: 30, scope: !866)
!882 = !DILocation(line: 87, column: 2, scope: !866)
!883 = !DILocation(line: 87, column: 14, scope: !866)
!884 = !DILocation(line: 89, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !866, file: !3, line: 89, column: 6)
!886 = !DILocation(line: 89, column: 6, scope: !866)
!887 = !DILocation(line: 90, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 89, column: 19)
!889 = !DILocation(line: 95, column: 6, scope: !890)
!890 = distinct !DILexicalBlock(scope: !866, file: !3, line: 95, column: 6)
!891 = !DILocation(line: 95, column: 13, scope: !890)
!892 = !DILocation(line: 95, column: 6, scope: !866)
!893 = !DILocation(line: 96, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !3, line: 95, column: 34)
!895 = !DILocation(line: 99, column: 11, scope: !866)
!896 = !DILocation(line: 99, column: 9, scope: !866)
!897 = !DILocation(line: 100, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !866, file: !3, line: 100, column: 6)
!899 = !DILocation(line: 100, column: 6, scope: !866)
!900 = !DILocation(line: 101, column: 11, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 100, column: 28)
!902 = !DILocation(line: 101, column: 3, scope: !901)
!903 = !DILocation(line: 106, column: 33, scope: !866)
!904 = !DILocation(line: 106, column: 9, scope: !866)
!905 = !DILocation(line: 106, column: 7, scope: !866)
!906 = !DILocation(line: 107, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !866, file: !3, line: 107, column: 6)
!908 = !DILocation(line: 107, column: 6, scope: !866)
!909 = !DILocation(line: 108, column: 10, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 107, column: 13)
!911 = !DILocation(line: 109, column: 3, scope: !910)
!912 = !DILocation(line: 114, column: 16, scope: !866)
!913 = !DILocation(line: 114, column: 22, scope: !866)
!914 = !DILocation(line: 114, column: 14, scope: !866)
!915 = !DILocation(line: 115, column: 16, scope: !866)
!916 = !DILocation(line: 115, column: 3, scope: !866)
!917 = !DILocation(line: 115, column: 14, scope: !866)
!918 = !DILocation(line: 119, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !866, file: !3, line: 119, column: 6)
!920 = !DILocation(line: 119, column: 6, scope: !866)
!921 = !DILocation(line: 120, column: 10, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !3, line: 119, column: 20)
!923 = !DILocation(line: 121, column: 2, scope: !922)
!924 = !DILocation(line: 123, column: 1, scope: !866)
!925 = !DILocation(line: 125, column: 8, scope: !866)
!926 = !DILocation(line: 126, column: 10, scope: !866)
!927 = !DILocation(line: 126, column: 2, scope: !866)
!928 = !DILocation(line: 127, column: 1, scope: !866)
!929 = distinct !DISubprogram(name: "acpi_get_next_object", scope: !3, file: !3, line: 149, type: !930, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !932)
!930 = !DISubroutineType(types: !931)
!931 = !{!5, !40, !12, !12, !21}
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !941}
!933 = !DILocalVariable(name: "type", arg: 1, scope: !929, file: !3, line: 149, type: !40)
!934 = !DILocalVariable(name: "parent", arg: 2, scope: !929, file: !3, line: 150, type: !12)
!935 = !DILocalVariable(name: "child", arg: 3, scope: !929, file: !3, line: 151, type: !12)
!936 = !DILocalVariable(name: "ret_handle", arg: 4, scope: !929, file: !3, line: 151, type: !21)
!937 = !DILocalVariable(name: "status", scope: !929, file: !3, line: 153, type: !5)
!938 = !DILocalVariable(name: "node", scope: !929, file: !3, line: 154, type: !45)
!939 = !DILocalVariable(name: "parent_node", scope: !929, file: !3, line: 155, type: !45)
!940 = !DILocalVariable(name: "child_node", scope: !929, file: !3, line: 156, type: !45)
!941 = !DILabel(scope: !929, name: "unlock_and_exit", file: !3, line: 203)
!942 = !DILocation(line: 149, column: 39, scope: !929)
!943 = !DILocation(line: 150, column: 20, scope: !929)
!944 = !DILocation(line: 151, column: 20, scope: !929)
!945 = !DILocation(line: 151, column: 40, scope: !929)
!946 = !DILocation(line: 153, column: 2, scope: !929)
!947 = !DILocation(line: 153, column: 14, scope: !929)
!948 = !DILocation(line: 154, column: 2, scope: !929)
!949 = !DILocation(line: 154, column: 30, scope: !929)
!950 = !DILocation(line: 155, column: 2, scope: !929)
!951 = !DILocation(line: 155, column: 30, scope: !929)
!952 = !DILocation(line: 156, column: 2, scope: !929)
!953 = !DILocation(line: 156, column: 30, scope: !929)
!954 = !DILocation(line: 160, column: 6, scope: !955)
!955 = distinct !DILexicalBlock(scope: !929, file: !3, line: 160, column: 6)
!956 = !DILocation(line: 160, column: 11, scope: !955)
!957 = !DILocation(line: 160, column: 6, scope: !929)
!958 = !DILocation(line: 161, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !3, line: 160, column: 37)
!960 = !DILocation(line: 164, column: 11, scope: !929)
!961 = !DILocation(line: 164, column: 9, scope: !929)
!962 = !DILocation(line: 165, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !929, file: !3, line: 165, column: 6)
!964 = !DILocation(line: 165, column: 6, scope: !929)
!965 = !DILocation(line: 166, column: 11, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !3, line: 165, column: 28)
!967 = !DILocation(line: 166, column: 3, scope: !966)
!968 = !DILocation(line: 171, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !929, file: !3, line: 171, column: 6)
!970 = !DILocation(line: 171, column: 6, scope: !929)
!971 = !DILocation(line: 175, column: 41, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 171, column: 14)
!973 = !DILocation(line: 175, column: 17, scope: !972)
!974 = !DILocation(line: 175, column: 15, scope: !972)
!975 = !DILocation(line: 176, column: 8, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !3, line: 176, column: 7)
!977 = !DILocation(line: 176, column: 7, scope: !972)
!978 = !DILocation(line: 177, column: 11, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !3, line: 176, column: 21)
!980 = !DILocation(line: 178, column: 4, scope: !979)
!981 = !DILocation(line: 180, column: 2, scope: !972)
!982 = !DILocation(line: 184, column: 40, scope: !983)
!983 = distinct !DILexicalBlock(scope: !969, file: !3, line: 180, column: 9)
!984 = !DILocation(line: 184, column: 16, scope: !983)
!985 = !DILocation(line: 184, column: 14, scope: !983)
!986 = !DILocation(line: 185, column: 8, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !3, line: 185, column: 7)
!988 = !DILocation(line: 185, column: 7, scope: !983)
!989 = !DILocation(line: 186, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 185, column: 20)
!991 = !DILocation(line: 187, column: 4, scope: !990)
!992 = !DILocation(line: 193, column: 37, scope: !929)
!993 = !DILocation(line: 193, column: 43, scope: !929)
!994 = !DILocation(line: 193, column: 56, scope: !929)
!995 = !DILocation(line: 193, column: 9, scope: !929)
!996 = !DILocation(line: 193, column: 7, scope: !929)
!997 = !DILocation(line: 194, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !929, file: !3, line: 194, column: 6)
!999 = !DILocation(line: 194, column: 6, scope: !929)
!1000 = !DILocation(line: 195, column: 10, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !3, line: 194, column: 13)
!1002 = !DILocation(line: 196, column: 3, scope: !1001)
!1003 = !DILocation(line: 199, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !929, file: !3, line: 199, column: 6)
!1005 = !DILocation(line: 199, column: 6, scope: !929)
!1006 = !DILocation(line: 200, column: 17, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 199, column: 18)
!1008 = !DILocation(line: 200, column: 4, scope: !1007)
!1009 = !DILocation(line: 200, column: 15, scope: !1007)
!1010 = !DILocation(line: 201, column: 2, scope: !1007)
!1011 = !DILocation(line: 203, column: 1, scope: !929)
!1012 = !DILocation(line: 205, column: 8, scope: !929)
!1013 = !DILocation(line: 206, column: 10, scope: !929)
!1014 = !DILocation(line: 206, column: 2, scope: !929)
!1015 = !DILocation(line: 207, column: 1, scope: !929)
!1016 = !DISubprogram(name: "acpi_ns_get_next_node_typed", scope: !862, file: !862, line: 90, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!45, !40, !45, !45}
