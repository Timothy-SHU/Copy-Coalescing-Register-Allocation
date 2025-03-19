; ModuleID = 'drivers/acpi/acpica/dswscope.c'
source_filename = "drivers/acpi/acpica/dswscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }

@_acpi_module_name = internal constant [9 x i8] c"dswscope\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"Null scope parameter\00", align 1, !dbg !16
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid object type: 0x%X\00", align 1, !dbg !22

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_scope_stack_clear(ptr noundef %walk_state) #0 align 16 !dbg !40 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %scope_info = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !808, metadata !DIExpression()), !dbg !810
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope_info) #4, !dbg !811
  call void @llvm.dbg.declare(metadata ptr %scope_info, metadata !809, metadata !DIExpression()), !dbg !812
  br label %while.cond, !dbg !813

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !814
  %scope_info1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 46, !dbg !815
  %1 = load ptr, ptr %scope_info1, align 8, !dbg !815
  %tobool = icmp ne ptr %1, null, !dbg !813
  br i1 %tobool, label %while.body, label %while.end, !dbg !813

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !816
  %scope_info2 = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 46, !dbg !818
  %3 = load ptr, ptr %scope_info2, align 8, !dbg !818
  store ptr %3, ptr %scope_info, align 8, !dbg !819
  %4 = load ptr, ptr %scope_info, align 8, !dbg !820
  %next = getelementptr inbounds %struct.acpi_scope_state, ptr %4, i32 0, i32 0, !dbg !821
  %5 = load ptr, ptr %next, align 8, !dbg !821
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !822
  %scope_info3 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 46, !dbg !823
  store ptr %5, ptr %scope_info3, align 8, !dbg !824
  %7 = load ptr, ptr %scope_info, align 8, !dbg !825
  call void @acpi_ut_delete_generic_state(ptr noundef %7) #5, !dbg !826
  br label %while.cond, !dbg !813, !llvm.loop !827

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope_info) #4, !dbg !831
  ret void, !dbg !831
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !832 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_scope_stack_push(ptr noundef %node, i32 noundef %type, ptr noundef %walk_state) #0 align 16 !dbg !836 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %scope_info = alloca ptr, align 8
  %old_scope_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !841, metadata !DIExpression()), !dbg !846
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !842, metadata !DIExpression()), !dbg !847
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !843, metadata !DIExpression()), !dbg !848
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope_info) #4, !dbg !849
  call void @llvm.dbg.declare(metadata ptr %scope_info, metadata !844, metadata !DIExpression()), !dbg !850
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_scope_info) #4, !dbg !851
  call void @llvm.dbg.declare(metadata ptr %old_scope_info, metadata !845, metadata !DIExpression()), !dbg !852
  %0 = load ptr, ptr %node.addr, align 8, !dbg !853
  %tobool = icmp ne ptr %0, null, !dbg !853
  br i1 %tobool, label %if.end, label %if.then, !dbg !855

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 80, ptr noundef @.str) #5, !dbg !856
  store i32 4097, ptr %retval, align 4, !dbg !858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !858

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !859
  %call = call zeroext i8 @acpi_ut_valid_object_type(i32 noundef %1) #5, !dbg !861
  %tobool1 = icmp ne i8 %call, 0, !dbg !861
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !862

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %type.addr, align 4, !dbg !863
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 87, ptr noundef @.str.1, i32 noundef %2) #5, !dbg !863
  br label %if.end3, !dbg !865

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call ptr @acpi_ut_create_generic_state() #5, !dbg !866
  store ptr %call4, ptr %scope_info, align 8, !dbg !867
  %3 = load ptr, ptr %scope_info, align 8, !dbg !868
  %tobool5 = icmp ne ptr %3, null, !dbg !868
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !870

if.then6:                                         ; preds = %if.end3
  store i32 4, ptr %retval, align 4, !dbg !871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !871

if.end7:                                          ; preds = %if.end3
  %4 = load ptr, ptr %scope_info, align 8, !dbg !873
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, ptr %4, i32 0, i32 1, !dbg !874
  store i8 8, ptr %descriptor_type, align 8, !dbg !875
  %5 = load ptr, ptr %node.addr, align 8, !dbg !876
  %6 = load ptr, ptr %scope_info, align 8, !dbg !877
  %node8 = getelementptr inbounds %struct.acpi_scope_state, ptr %6, i32 0, i32 5, !dbg !878
  store ptr %5, ptr %node8, align 8, !dbg !879
  %7 = load i32, ptr %type.addr, align 4, !dbg !880
  %conv = trunc i32 %7 to i16, !dbg !881
  %8 = load ptr, ptr %scope_info, align 8, !dbg !882
  %value = getelementptr inbounds %struct.acpi_common_state, ptr %8, i32 0, i32 3, !dbg !883
  store i16 %conv, ptr %value, align 2, !dbg !884
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !885
  %scope_depth = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 11, !dbg !886
  %10 = load i8, ptr %scope_depth, align 1, !dbg !887
  %inc = add i8 %10, 1, !dbg !887
  store i8 %inc, ptr %scope_depth, align 1, !dbg !887
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !888
  %scope_info9 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 46, !dbg !889
  %12 = load ptr, ptr %scope_info9, align 8, !dbg !889
  store ptr %12, ptr %old_scope_info, align 8, !dbg !890
  %13 = load ptr, ptr %old_scope_info, align 8, !dbg !891
  %tobool10 = icmp ne ptr %13, null, !dbg !891
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !893

if.then11:                                        ; preds = %if.end7
  br label %if.end12, !dbg !894

if.else:                                          ; preds = %if.end7
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !896
  %scope_info13 = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 46, !dbg !897
  %15 = load ptr, ptr %scope_info, align 8, !dbg !898
  call void @acpi_ut_push_generic_state(ptr noundef %scope_info13, ptr noundef %15) #5, !dbg !899
  store i32 0, ptr %retval, align 4, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

cleanup:                                          ; preds = %if.end12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_scope_info) #4, !dbg !901
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope_info) #4, !dbg !901
  %16 = load i32, ptr %retval, align 4, !dbg !901
  ret i32 %16, !dbg !901
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !902 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !907 dso_local zeroext i8 @acpi_ut_valid_object_type(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !910 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !911 dso_local ptr @acpi_ut_create_generic_state() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !914 dso_local void @acpi_ut_push_generic_state(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_scope_stack_pop(ptr noundef %walk_state) #0 align 16 !dbg !918 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %scope_info = alloca ptr, align 8
  %new_scope_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !920, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope_info) #4, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %scope_info, metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_scope_info) #4, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %new_scope_info, metadata !922, metadata !DIExpression()), !dbg !927
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !928
  %scope_info1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 46, !dbg !929
  %call = call ptr @acpi_ut_pop_generic_state(ptr noundef %scope_info1) #5, !dbg !930
  store ptr %call, ptr %scope_info, align 8, !dbg !931
  %1 = load ptr, ptr %scope_info, align 8, !dbg !932
  %tobool = icmp ne ptr %1, null, !dbg !932
  br i1 %tobool, label %if.end, label %if.then, !dbg !934

if.then:                                          ; preds = %entry
  store i32 13, ptr %retval, align 4, !dbg !935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !935

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !937
  %scope_depth = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 11, !dbg !938
  %3 = load i8, ptr %scope_depth, align 1, !dbg !939
  %dec = add i8 %3, -1, !dbg !939
  store i8 %dec, ptr %scope_depth, align 1, !dbg !939
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !940
  %scope_info2 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 46, !dbg !941
  %5 = load ptr, ptr %scope_info2, align 8, !dbg !941
  store ptr %5, ptr %new_scope_info, align 8, !dbg !942
  %6 = load ptr, ptr %new_scope_info, align 8, !dbg !943
  %tobool3 = icmp ne ptr %6, null, !dbg !943
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !945

if.then4:                                         ; preds = %if.end
  br label %if.end5, !dbg !946

if.else:                                          ; preds = %if.end
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %7 = load ptr, ptr %scope_info, align 8, !dbg !948
  call void @acpi_ut_delete_generic_state(ptr noundef %7) #5, !dbg !949
  store i32 0, ptr %retval, align 4, !dbg !950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !950

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_scope_info) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope_info) #4, !dbg !951
  %8 = load i32, ptr %retval, align 4, !dbg !951
  ret i32 %8, !dbg !951
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !952 dso_local ptr @acpi_ut_pop_generic_state(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !27, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dswscope.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dswscope\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dswscope.ll drivers/acpi/acpica/dswscope.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswscope.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9530a109550a4300ae17bfe54e80fd90")
!4 = !{!5, !12}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !14)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !{!16, !22, !0}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 168, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!21}
!21 = !DISubrange(count: 21)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 208, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 26)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 72, elements: !29)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!29 = !{!30}
!30 = !DISubrange(count: 9)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 8, !"cf-protection-branch", i32 1}
!35 = !{i32 4, !"function_return_thunk_extern", i32 1}
!36 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{i32 1, !"override-stack-alignment", i32 8}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "acpi_ds_scope_stack_clear", scope: !3, file: !3, line: 29, type: !41, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !45, line: 37, size: 9024, elements: !46)
!45 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!46 = !{!47, !48, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !756, !757, !758, !759, !760, !764, !766, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !791, !792, !793, !794, !795, !796, !797, !798, !799, !805}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !45, line: 38, baseType: !43, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !45, line: 39, baseType: !49, size: 8, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !51)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !44, file: !45, line: 40, baseType: !49, size: 8, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !44, file: !45, line: 41, baseType: !12, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !44, file: !45, line: 42, baseType: !49, size: 8, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !44, file: !45, line: 43, baseType: !49, size: 8, offset: 104)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !44, file: !45, line: 44, baseType: !49, size: 8, offset: 112)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !44, file: !45, line: 45, baseType: !58, size: 16, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !12)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !44, file: !45, line: 46, baseType: !49, size: 8, offset: 144)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !44, file: !45, line: 47, baseType: !49, size: 8, offset: 152)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !44, file: !45, line: 48, baseType: !49, size: 8, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !44, file: !45, line: 49, baseType: !49, size: 8, offset: 168)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !44, file: !45, line: 50, baseType: !49, size: 8, offset: 176)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !44, file: !45, line: 51, baseType: !49, size: 8, offset: 184)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !44, file: !45, line: 52, baseType: !49, size: 8, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !44, file: !45, line: 53, baseType: !49, size: 8, offset: 200)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !44, file: !45, line: 54, baseType: !68, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !44, file: !45, line: 55, baseType: !7, size: 32, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !44, file: !45, line: 56, baseType: !7, size: 32, offset: 352)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !44, file: !45, line: 57, baseType: !7, size: 32, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !44, file: !45, line: 58, baseType: !7, size: 32, offset: 416)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !44, file: !45, line: 60, baseType: !74, size: 640, offset: 448)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !75, line: 909, size: 640, elements: !76)
!75 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!76 = !{!77, !78, !79, !80, !81, !82, !653, !654, !754, !755}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !74, file: !75, line: 910, baseType: !68, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !74, file: !75, line: 911, baseType: !68, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !74, file: !75, line: 912, baseType: !68, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !74, file: !75, line: 913, baseType: !68, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !74, file: !75, line: 914, baseType: !68, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !74, file: !75, line: 915, baseType: !83, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !75, line: 891, size: 1600, elements: !85)
!85 = !{!86, !596, !612}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !84, file: !75, line: 892, baseType: !87, size: 448)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !75, line: 844, size: 448, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !586, !595}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !75, line: 845, baseType: !83, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !75, line: 845, baseType: !49, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !75, line: 845, baseType: !49, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !87, file: !75, line: 845, baseType: !12, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !87, file: !75, line: 845, baseType: !68, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !75, line: 845, baseType: !83, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !75, line: 845, baseType: !96, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !75, line: 133, size: 384, elements: !98)
!98 = !{!99, !570, !571, !572, !573, !582, !583, !584, !585}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !97, file: !75, line: 134, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !102, line: 369, size: 576, elements: !103)
!102 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!103 = !{!104, !112, !128, !139, !152, !166, !176, !202, !231, !247, !260, !339, !351, !365, !375, !393, !415, !434, !453, !472, !489, !516, !533, !546, !560, !569}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !101, file: !102, line: 370, baseType: !105, size: 128)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !102, line: 73, size: 128, elements: !106)
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !102, line: 74, baseType: !100, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !102, line: 74, baseType: !49, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !102, line: 74, baseType: !49, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !102, line: 74, baseType: !12, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !102, line: 74, baseType: !49, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !101, file: !102, line: 371, baseType: !113, size: 192)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !102, line: 76, size: 192, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !124}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !102, line: 77, baseType: !100, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !102, line: 77, baseType: !49, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !102, line: 77, baseType: !49, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !102, line: 77, baseType: !12, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !102, line: 77, baseType: !49, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !113, file: !102, line: 77, baseType: !121, size: 24, offset: 104)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 3)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !113, file: !102, line: 78, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !127)
!127 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !101, file: !102, line: 372, baseType: !129, size: 256)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !102, line: 93, size: 256, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !138}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !102, line: 94, baseType: !100, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !102, line: 94, baseType: !49, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !102, line: 94, baseType: !49, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !102, line: 94, baseType: !12, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !102, line: 94, baseType: !49, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !129, file: !102, line: 94, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !102, line: 94, baseType: !7, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !101, file: !102, line: 373, baseType: !140, size: 384)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !102, line: 97, size: 384, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !102, line: 98, baseType: !100, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !102, line: 98, baseType: !49, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !102, line: 98, baseType: !49, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !102, line: 98, baseType: !12, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !102, line: 98, baseType: !49, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !140, file: !102, line: 98, baseType: !68, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !140, file: !102, line: 98, baseType: !7, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !140, file: !102, line: 99, baseType: !7, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !140, file: !102, line: 100, baseType: !68, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !102, line: 101, baseType: !96, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !101, file: !102, line: 374, baseType: !153, size: 384)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !102, line: 104, size: 384, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !163, !164, !165}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !153, file: !102, line: 105, baseType: !100, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !102, line: 105, baseType: !49, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !102, line: 105, baseType: !49, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !153, file: !102, line: 105, baseType: !12, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !102, line: 105, baseType: !49, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !153, file: !102, line: 105, baseType: !96, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !153, file: !102, line: 106, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !153, file: !102, line: 107, baseType: !68, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !153, file: !102, line: 108, baseType: !7, size: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !153, file: !102, line: 109, baseType: !7, size: 32, offset: 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !101, file: !102, line: 375, baseType: !167, size: 192)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !102, line: 118, size: 192, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !167, file: !102, line: 119, baseType: !100, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !167, file: !102, line: 119, baseType: !49, size: 8, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !102, line: 119, baseType: !49, size: 8, offset: 72)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !167, file: !102, line: 119, baseType: !12, size: 16, offset: 80)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !102, line: 119, baseType: !49, size: 8, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !167, file: !102, line: 119, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !101, file: !102, line: 376, baseType: !177, size: 448)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !102, line: 144, size: 448, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !199, !200, !201}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !177, file: !102, line: 145, baseType: !100, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !102, line: 145, baseType: !49, size: 8, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !102, line: 145, baseType: !49, size: 8, offset: 72)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !177, file: !102, line: 145, baseType: !12, size: 16, offset: 80)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !102, line: 145, baseType: !49, size: 8, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !177, file: !102, line: 145, baseType: !49, size: 8, offset: 104)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !177, file: !102, line: 146, baseType: !49, size: 8, offset: 112)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !177, file: !102, line: 147, baseType: !49, size: 8, offset: 120)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !177, file: !102, line: 148, baseType: !100, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !177, file: !102, line: 149, baseType: !100, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !177, file: !102, line: 150, baseType: !68, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !177, file: !102, line: 154, baseType: !191, size: 64, offset: 320)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !102, line: 151, size: 64, elements: !192)
!192 = !{!193, !198}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !191, file: !102, line: 152, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !75, line: 248, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!5, !43}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !191, file: !102, line: 153, baseType: !100, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !177, file: !102, line: 156, baseType: !7, size: 32, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !177, file: !102, line: 157, baseType: !58, size: 16, offset: 416)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !177, file: !102, line: 158, baseType: !49, size: 8, offset: 432)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !101, file: !102, line: 377, baseType: !203, size: 576)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !102, line: 122, size: 576, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !227, !228, !229, !230}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !203, file: !102, line: 123, baseType: !100, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !203, file: !102, line: 123, baseType: !49, size: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !102, line: 123, baseType: !49, size: 8, offset: 72)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !203, file: !102, line: 123, baseType: !12, size: 16, offset: 80)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !102, line: 123, baseType: !49, size: 8, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !203, file: !102, line: 123, baseType: !49, size: 8, offset: 104)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !203, file: !102, line: 124, baseType: !12, size: 16, offset: 112)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !203, file: !102, line: 125, baseType: !175, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !203, file: !102, line: 126, baseType: !125, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !203, file: !102, line: 127, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !75, line: 634, size: 320, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !75, line: 635, baseType: !175, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !75, line: 635, baseType: !49, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !75, line: 635, baseType: !49, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !75, line: 635, baseType: !12, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !216, file: !75, line: 635, baseType: !12, size: 16, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !216, file: !75, line: 636, baseType: !49, size: 8, offset: 112)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !216, file: !75, line: 637, baseType: !43, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !216, file: !75, line: 638, baseType: !100, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !216, file: !75, line: 639, baseType: !125, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !102, line: 128, baseType: !100, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !102, line: 129, baseType: !100, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !102, line: 130, baseType: !96, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !203, file: !102, line: 131, baseType: !49, size: 8, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !101, file: !102, line: 378, baseType: !232, size: 512)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !102, line: 134, size: 512, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !245, !246}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !232, file: !102, line: 135, baseType: !100, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !102, line: 135, baseType: !49, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !102, line: 135, baseType: !49, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !232, file: !102, line: 135, baseType: !12, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !102, line: 135, baseType: !49, size: 8, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !232, file: !102, line: 135, baseType: !49, size: 8, offset: 104)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !232, file: !102, line: 136, baseType: !96, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !232, file: !102, line: 137, baseType: !100, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !102, line: 138, baseType: !100, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !232, file: !102, line: 139, baseType: !244, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !125)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !232, file: !102, line: 140, baseType: !7, size: 32, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !232, file: !102, line: 141, baseType: !175, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !101, file: !102, line: 379, baseType: !248, size: 320)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !102, line: 185, size: 320, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !259}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !248, file: !102, line: 186, baseType: !100, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !102, line: 186, baseType: !49, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !102, line: 186, baseType: !49, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !248, file: !102, line: 186, baseType: !12, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !102, line: 186, baseType: !49, size: 8, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !248, file: !102, line: 186, baseType: !256, size: 128, offset: 128)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 2)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !248, file: !102, line: 186, baseType: !100, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !101, file: !102, line: 380, baseType: !261, size: 384)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !102, line: 188, size: 384, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !261, file: !102, line: 189, baseType: !100, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !102, line: 189, baseType: !49, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !102, line: 189, baseType: !49, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !261, file: !102, line: 189, baseType: !12, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !102, line: 189, baseType: !49, size: 8, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !261, file: !102, line: 190, baseType: !256, size: 128, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !261, file: !102, line: 190, baseType: !100, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !261, file: !102, line: 190, baseType: !271, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !75, line: 480, size: 576, elements: !273)
!273 = !{!274, !275, !276, !277, !285, !300, !333, !334, !335, !336, !337, !338}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !272, file: !75, line: 481, baseType: !96, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !272, file: !75, line: 482, baseType: !271, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !75, line: 483, baseType: !271, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !272, file: !75, line: 484, baseType: !278, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !75, line: 497, size: 256, elements: !280)
!280 = !{!281, !282, !283, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !279, file: !75, line: 498, baseType: !278, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !75, line: 499, baseType: !278, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !279, file: !75, line: 500, baseType: !271, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !279, file: !75, line: 501, baseType: !7, size: 32, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !272, file: !75, line: 485, baseType: !286, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !75, line: 466, size: 320, elements: !288)
!288 = !{!289, !294, !295, !296, !297, !298, !299}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !287, file: !75, line: 467, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !75, line: 459, size: 128, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !290, file: !75, line: 460, baseType: !49, size: 8)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !290, file: !75, line: 461, baseType: !125, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !287, file: !75, line: 468, baseType: !290, size: 128, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !287, file: !75, line: 469, baseType: !12, size: 16, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !287, file: !75, line: 470, baseType: !49, size: 8, offset: 272)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !287, file: !75, line: 471, baseType: !49, size: 8, offset: 280)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !287, file: !75, line: 472, baseType: !49, size: 8, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !287, file: !75, line: 473, baseType: !49, size: 8, offset: 296)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !272, file: !75, line: 486, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !75, line: 448, size: 192, elements: !303)
!303 = !{!304, !328, !329, !330, !331, !332}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !302, file: !75, line: 449, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !75, line: 438, size: 64, elements: !306)
!306 = !{!307, !308, !322}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !305, file: !75, line: 439, baseType: !96, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !305, file: !75, line: 440, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !75, line: 419, size: 256, elements: !311)
!311 = !{!312, !318, !319, !320, !321}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !310, file: !75, line: 420, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!7, !317, !7, !175}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !175)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !310, file: !75, line: 421, baseType: !175, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !310, file: !75, line: 422, baseType: !96, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !310, file: !75, line: 423, baseType: !49, size: 8, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !310, file: !75, line: 424, baseType: !49, size: 8, offset: 200)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !305, file: !75, line: 441, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !75, line: 429, size: 128, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !324, file: !75, line: 430, baseType: !96, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !75, line: 431, baseType: !323, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !302, file: !75, line: 450, baseType: !286, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !75, line: 451, baseType: !49, size: 8, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !302, file: !75, line: 452, baseType: !49, size: 8, offset: 136)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !302, file: !75, line: 453, baseType: !49, size: 8, offset: 144)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !302, file: !75, line: 454, baseType: !49, size: 8, offset: 152)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !272, file: !75, line: 487, baseType: !125, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !272, file: !75, line: 488, baseType: !7, size: 32, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !272, file: !75, line: 489, baseType: !12, size: 16, offset: 480)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !272, file: !75, line: 490, baseType: !12, size: 16, offset: 496)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !272, file: !75, line: 491, baseType: !49, size: 8, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !272, file: !75, line: 492, baseType: !49, size: 8, offset: 520)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !101, file: !102, line: 381, baseType: !340, size: 384)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !102, line: 193, size: 384, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !340, file: !102, line: 194, baseType: !100, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !102, line: 194, baseType: !49, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !340, file: !102, line: 194, baseType: !49, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !340, file: !102, line: 194, baseType: !12, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !102, line: 194, baseType: !49, size: 8, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !340, file: !102, line: 194, baseType: !256, size: 128, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !340, file: !102, line: 194, baseType: !100, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !340, file: !102, line: 194, baseType: !7, size: 32, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !340, file: !102, line: 195, baseType: !7, size: 32, offset: 352)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !101, file: !102, line: 382, baseType: !352, size: 384)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !102, line: 198, size: 384, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !352, file: !102, line: 199, baseType: !100, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !102, line: 199, baseType: !49, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !352, file: !102, line: 199, baseType: !49, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !352, file: !102, line: 199, baseType: !12, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !102, line: 199, baseType: !49, size: 8, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !352, file: !102, line: 201, baseType: !49, size: 8, offset: 104)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !352, file: !102, line: 202, baseType: !49, size: 8, offset: 112)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !352, file: !102, line: 203, baseType: !256, size: 128, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !352, file: !102, line: 203, baseType: !100, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !352, file: !102, line: 203, baseType: !364, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !125)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !101, file: !102, line: 383, baseType: !366, size: 320)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !102, line: 206, size: 320, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !366, file: !102, line: 207, baseType: !100, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !102, line: 207, baseType: !49, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !102, line: 207, baseType: !49, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !366, file: !102, line: 207, baseType: !12, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !102, line: 207, baseType: !49, size: 8, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !366, file: !102, line: 207, baseType: !256, size: 128, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !366, file: !102, line: 207, baseType: !100, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !101, file: !102, line: 384, baseType: !376, size: 384)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !102, line: 234, size: 384, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !376, file: !102, line: 235, baseType: !100, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !376, file: !102, line: 235, baseType: !49, size: 8, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !376, file: !102, line: 235, baseType: !49, size: 8, offset: 72)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !376, file: !102, line: 235, baseType: !12, size: 16, offset: 80)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !102, line: 235, baseType: !49, size: 8, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !376, file: !102, line: 235, baseType: !49, size: 8, offset: 104)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !376, file: !102, line: 235, baseType: !49, size: 8, offset: 112)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !376, file: !102, line: 235, baseType: !49, size: 8, offset: 120)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !376, file: !102, line: 235, baseType: !96, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !376, file: !102, line: 235, baseType: !7, size: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !376, file: !102, line: 235, baseType: !7, size: 32, offset: 224)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !376, file: !102, line: 235, baseType: !7, size: 32, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !376, file: !102, line: 235, baseType: !49, size: 8, offset: 288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !376, file: !102, line: 235, baseType: !49, size: 8, offset: 296)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !376, file: !102, line: 235, baseType: !100, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !101, file: !102, line: 385, baseType: !394, size: 576)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !102, line: 238, size: 576, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !394, file: !102, line: 239, baseType: !100, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !394, file: !102, line: 239, baseType: !49, size: 8, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !394, file: !102, line: 239, baseType: !49, size: 8, offset: 72)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !394, file: !102, line: 239, baseType: !12, size: 16, offset: 80)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !102, line: 239, baseType: !49, size: 8, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !394, file: !102, line: 239, baseType: !49, size: 8, offset: 104)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !394, file: !102, line: 239, baseType: !49, size: 8, offset: 112)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !394, file: !102, line: 239, baseType: !49, size: 8, offset: 120)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !394, file: !102, line: 239, baseType: !96, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !394, file: !102, line: 239, baseType: !7, size: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !394, file: !102, line: 239, baseType: !7, size: 32, offset: 224)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !394, file: !102, line: 239, baseType: !7, size: 32, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !394, file: !102, line: 239, baseType: !49, size: 8, offset: 288)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !394, file: !102, line: 239, baseType: !49, size: 8, offset: 296)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !394, file: !102, line: 239, baseType: !12, size: 16, offset: 304)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !394, file: !102, line: 240, baseType: !100, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !394, file: !102, line: 241, baseType: !68, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !394, file: !102, line: 242, baseType: !12, size: 16, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !394, file: !102, line: 243, baseType: !68, size: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !101, file: !102, line: 386, baseType: !416, size: 384)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !102, line: 263, size: 384, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !416, file: !102, line: 264, baseType: !100, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 72)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !416, file: !102, line: 264, baseType: !12, size: 16, offset: 80)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 104)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 120)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !416, file: !102, line: 264, baseType: !96, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !416, file: !102, line: 264, baseType: !7, size: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !416, file: !102, line: 264, baseType: !7, size: 32, offset: 224)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !416, file: !102, line: 264, baseType: !7, size: 32, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 288)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 296)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !416, file: !102, line: 264, baseType: !49, size: 8, offset: 304)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !416, file: !102, line: 265, baseType: !100, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !101, file: !102, line: 387, baseType: !435, size: 448)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !102, line: 246, size: 448, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !435, file: !102, line: 247, baseType: !100, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !435, file: !102, line: 247, baseType: !49, size: 8, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !435, file: !102, line: 247, baseType: !49, size: 8, offset: 72)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !435, file: !102, line: 247, baseType: !12, size: 16, offset: 80)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !435, file: !102, line: 247, baseType: !49, size: 8, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !435, file: !102, line: 247, baseType: !49, size: 8, offset: 104)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !435, file: !102, line: 247, baseType: !49, size: 8, offset: 112)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !435, file: !102, line: 247, baseType: !49, size: 8, offset: 120)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !435, file: !102, line: 247, baseType: !96, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !435, file: !102, line: 247, baseType: !7, size: 32, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !435, file: !102, line: 247, baseType: !7, size: 32, offset: 224)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !435, file: !102, line: 247, baseType: !7, size: 32, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !435, file: !102, line: 247, baseType: !49, size: 8, offset: 288)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !435, file: !102, line: 247, baseType: !49, size: 8, offset: 296)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !435, file: !102, line: 247, baseType: !100, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !435, file: !102, line: 248, baseType: !100, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !101, file: !102, line: 388, baseType: !454, size: 448)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !102, line: 251, size: 448, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !454, file: !102, line: 252, baseType: !100, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !102, line: 252, baseType: !49, size: 8, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !102, line: 252, baseType: !49, size: 8, offset: 72)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !454, file: !102, line: 252, baseType: !12, size: 16, offset: 80)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !102, line: 252, baseType: !49, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !454, file: !102, line: 252, baseType: !49, size: 8, offset: 104)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !454, file: !102, line: 252, baseType: !49, size: 8, offset: 112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !454, file: !102, line: 252, baseType: !49, size: 8, offset: 120)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !102, line: 252, baseType: !96, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !454, file: !102, line: 252, baseType: !7, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !454, file: !102, line: 252, baseType: !7, size: 32, offset: 224)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !454, file: !102, line: 252, baseType: !7, size: 32, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !454, file: !102, line: 252, baseType: !49, size: 8, offset: 288)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !454, file: !102, line: 252, baseType: !49, size: 8, offset: 296)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !454, file: !102, line: 257, baseType: !100, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !454, file: !102, line: 258, baseType: !100, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !101, file: !102, line: 389, baseType: !473, size: 512)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !102, line: 274, size: 512, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !487, !488}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !102, line: 275, baseType: !100, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !102, line: 275, baseType: !49, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !102, line: 275, baseType: !49, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !102, line: 275, baseType: !12, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !102, line: 275, baseType: !49, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !102, line: 275, baseType: !96, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !473, file: !102, line: 276, baseType: !7, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !473, file: !102, line: 277, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !317, !7, !175}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !473, file: !102, line: 278, baseType: !175, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !102, line: 279, baseType: !256, size: 128, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !101, file: !102, line: 390, baseType: !490, size: 576)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !102, line: 282, size: 576, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !505, !506, !507, !508, !514, !515}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !490, file: !102, line: 283, baseType: !100, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !490, file: !102, line: 283, baseType: !49, size: 8, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !490, file: !102, line: 283, baseType: !49, size: 8, offset: 72)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !490, file: !102, line: 283, baseType: !12, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !102, line: 283, baseType: !49, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !490, file: !102, line: 283, baseType: !49, size: 8, offset: 104)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !490, file: !102, line: 284, baseType: !49, size: 8, offset: 112)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !490, file: !102, line: 285, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!5, !7, !244, !7, !504, !175, !175}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !102, line: 286, baseType: !96, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !490, file: !102, line: 287, baseType: !175, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !490, file: !102, line: 288, baseType: !175, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !490, file: !102, line: 289, baseType: !509, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!5, !317, !7, !175, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !490, file: !102, line: 290, baseType: !100, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !102, line: 291, baseType: !100, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !101, file: !102, line: 391, baseType: !517, size: 512)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !102, line: 309, size: 512, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !517, file: !102, line: 310, baseType: !100, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !517, file: !102, line: 310, baseType: !49, size: 8, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !102, line: 310, baseType: !49, size: 8, offset: 72)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !517, file: !102, line: 310, baseType: !12, size: 16, offset: 80)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !102, line: 310, baseType: !49, size: 8, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !517, file: !102, line: 310, baseType: !49, size: 8, offset: 104)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !517, file: !102, line: 311, baseType: !49, size: 8, offset: 112)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !517, file: !102, line: 312, baseType: !49, size: 8, offset: 120)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !517, file: !102, line: 313, baseType: !175, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !102, line: 314, baseType: !96, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !517, file: !102, line: 315, baseType: !162, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !517, file: !102, line: 316, baseType: !68, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !517, file: !102, line: 317, baseType: !68, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !517, file: !102, line: 318, baseType: !7, size: 32, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !101, file: !102, line: 392, baseType: !534, size: 448)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !102, line: 342, size: 448, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !534, file: !102, line: 343, baseType: !100, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !534, file: !102, line: 343, baseType: !49, size: 8, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !534, file: !102, line: 343, baseType: !49, size: 8, offset: 72)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !534, file: !102, line: 343, baseType: !12, size: 16, offset: 80)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !102, line: 343, baseType: !49, size: 8, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !534, file: !102, line: 343, baseType: !96, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !534, file: !102, line: 344, baseType: !96, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !534, file: !102, line: 345, baseType: !175, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !534, file: !102, line: 346, baseType: !68, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !534, file: !102, line: 347, baseType: !7, size: 32, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !101, file: !102, line: 393, baseType: !547, size: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !102, line: 352, size: 256, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !559}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !547, file: !102, line: 353, baseType: !100, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !547, file: !102, line: 353, baseType: !49, size: 8, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !547, file: !102, line: 353, baseType: !49, size: 8, offset: 72)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !547, file: !102, line: 353, baseType: !12, size: 16, offset: 80)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !102, line: 353, baseType: !49, size: 8, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !547, file: !102, line: 353, baseType: !555, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !317, !175}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !547, file: !102, line: 354, baseType: !175, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !101, file: !102, line: 394, baseType: !561, size: 192)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !102, line: 359, size: 192, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !102, line: 360, baseType: !100, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !102, line: 360, baseType: !49, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !102, line: 360, baseType: !49, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !102, line: 360, baseType: !12, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !102, line: 360, baseType: !49, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !102, line: 360, baseType: !100, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !102, line: 401, baseType: !97, size: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !75, line: 135, baseType: !49, size: 8, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !75, line: 136, baseType: !49, size: 8, offset: 72)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !75, line: 137, baseType: !12, size: 16, offset: 80)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !75, line: 138, baseType: !574, size: 32, offset: 96)
!574 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !575, line: 328, size: 32, elements: !576)
!575 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !574, file: !575, line: 329, baseType: !7, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !574, file: !575, line: 330, baseType: !579, size: 32)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 4)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !75, line: 139, baseType: !96, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !97, file: !75, line: 140, baseType: !96, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !97, file: !75, line: 141, baseType: !96, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !97, file: !75, line: 142, baseType: !58, size: 16, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !87, file: !75, line: 845, baseType: !587, size: 64, offset: 320)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !75, line: 732, size: 64, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !587, file: !75, line: 733, baseType: !125, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !587, file: !75, line: 734, baseType: !7, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !587, file: !75, line: 735, baseType: !137, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !587, file: !75, line: 736, baseType: !68, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !75, line: 737, baseType: !137, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !587, file: !75, line: 738, baseType: !83, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !87, file: !75, line: 845, baseType: !49, size: 8, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !84, file: !75, line: 893, baseType: !597, size: 640)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !75, line: 851, size: 640, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !597, file: !75, line: 852, baseType: !83, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !75, line: 852, baseType: !49, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !75, line: 852, baseType: !49, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !597, file: !75, line: 852, baseType: !12, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !597, file: !75, line: 852, baseType: !68, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !597, file: !75, line: 852, baseType: !83, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !75, line: 852, baseType: !96, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !75, line: 852, baseType: !587, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !597, file: !75, line: 852, baseType: !49, size: 8, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !597, file: !75, line: 852, baseType: !137, size: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !597, file: !75, line: 853, baseType: !68, size: 64, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !597, file: !75, line: 854, baseType: !7, size: 32, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !597, file: !75, line: 855, baseType: !7, size: 32, offset: 608)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !84, file: !75, line: 894, baseType: !613, size: 1600)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !75, line: 862, size: 1600, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !613, file: !75, line: 863, baseType: !83, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !75, line: 863, baseType: !49, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !75, line: 863, baseType: !49, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !613, file: !75, line: 863, baseType: !12, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !613, file: !75, line: 863, baseType: !68, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !613, file: !75, line: 863, baseType: !83, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !75, line: 863, baseType: !96, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !75, line: 863, baseType: !587, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !613, file: !75, line: 863, baseType: !49, size: 8, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !613, file: !75, line: 863, baseType: !83, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !613, file: !75, line: 864, baseType: !83, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !613, file: !75, line: 865, baseType: !137, size: 64, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !613, file: !75, line: 866, baseType: !49, size: 8, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !613, file: !75, line: 867, baseType: !137, size: 64, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !613, file: !75, line: 868, baseType: !137, size: 64, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !613, file: !75, line: 869, baseType: !137, size: 64, offset: 832)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !613, file: !75, line: 870, baseType: !579, size: 32, offset: 896)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !613, file: !75, line: 871, baseType: !7, size: 32, offset: 928)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !613, file: !75, line: 872, baseType: !7, size: 32, offset: 960)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !613, file: !75, line: 873, baseType: !7, size: 32, offset: 992)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !613, file: !75, line: 874, baseType: !7, size: 32, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !613, file: !75, line: 875, baseType: !7, size: 32, offset: 1056)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !613, file: !75, line: 876, baseType: !7, size: 32, offset: 1088)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !613, file: !75, line: 877, baseType: !7, size: 32, offset: 1120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !613, file: !75, line: 878, baseType: !7, size: 32, offset: 1152)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !613, file: !75, line: 879, baseType: !7, size: 32, offset: 1184)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !613, file: !75, line: 880, baseType: !7, size: 32, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !613, file: !75, line: 881, baseType: !7, size: 32, offset: 1248)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !613, file: !75, line: 882, baseType: !7, size: 32, offset: 1280)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !613, file: !75, line: 883, baseType: !7, size: 32, offset: 1312)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !613, file: !75, line: 884, baseType: !12, size: 16, offset: 1344)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !613, file: !75, line: 885, baseType: !49, size: 8, offset: 1360)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !613, file: !75, line: 886, baseType: !49, size: 8, offset: 1368)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !613, file: !75, line: 887, baseType: !49, size: 8, offset: 1376)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !613, file: !75, line: 888, baseType: !650, size: 160, offset: 1384)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 20)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !74, file: !75, line: 916, baseType: !96, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !74, file: !75, line: 917, baseType: !655, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !75, line: 679, size: 640, elements: !657)
!657 = !{!658, !666, !679, !688, !697, !710, !724, !725, !737}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !656, file: !75, line: 680, baseType: !659, size: 128)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !75, line: 575, size: 128, elements: !660)
!660 = !{!661, !662, !663, !664, !665}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !659, file: !75, line: 576, baseType: !175, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !659, file: !75, line: 576, baseType: !49, size: 8, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !75, line: 576, baseType: !49, size: 8, offset: 72)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !659, file: !75, line: 576, baseType: !12, size: 16, offset: 80)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !659, file: !75, line: 576, baseType: !12, size: 16, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !656, file: !75, line: 681, baseType: !667, size: 384)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !75, line: 604, size: 384, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !75, line: 605, baseType: !175, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !75, line: 605, baseType: !49, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !75, line: 605, baseType: !49, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !75, line: 605, baseType: !12, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !667, file: !75, line: 605, baseType: !12, size: 16, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !667, file: !75, line: 606, baseType: !12, size: 16, offset: 112)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !667, file: !75, line: 607, baseType: !83, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !667, file: !75, line: 608, baseType: !68, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !667, file: !75, line: 609, baseType: !68, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !667, file: !75, line: 610, baseType: !125, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !656, file: !75, line: 682, baseType: !680, size: 192)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !75, line: 582, size: 192, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !75, line: 583, baseType: !175, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !75, line: 583, baseType: !49, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !75, line: 583, baseType: !49, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !75, line: 583, baseType: !12, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !680, file: !75, line: 583, baseType: !12, size: 16, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !680, file: !75, line: 584, baseType: !100, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !656, file: !75, line: 683, baseType: !689, size: 192)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !75, line: 616, size: 192, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !75, line: 617, baseType: !175, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !75, line: 617, baseType: !49, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !75, line: 617, baseType: !49, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !75, line: 617, baseType: !12, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !689, file: !75, line: 617, baseType: !12, size: 16, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !75, line: 618, baseType: !96, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !656, file: !75, line: 684, baseType: !698, size: 448)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !75, line: 621, size: 448, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !75, line: 622, baseType: !175, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !75, line: 622, baseType: !49, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !75, line: 622, baseType: !49, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !698, file: !75, line: 622, baseType: !12, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !698, file: !75, line: 622, baseType: !12, size: 16, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !698, file: !75, line: 623, baseType: !7, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !698, file: !75, line: 624, baseType: !83, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !698, file: !75, line: 625, baseType: !68, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !698, file: !75, line: 626, baseType: !68, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !698, file: !75, line: 627, baseType: !7, size: 32, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !656, file: !75, line: 685, baseType: !711, size: 512)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !75, line: 590, size: 512, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !75, line: 591, baseType: !175, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !75, line: 591, baseType: !49, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !75, line: 591, baseType: !49, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !711, file: !75, line: 591, baseType: !12, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !711, file: !75, line: 591, baseType: !12, size: 16, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !711, file: !75, line: 592, baseType: !7, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !711, file: !75, line: 593, baseType: !100, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !711, file: !75, line: 594, baseType: !100, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !711, file: !75, line: 595, baseType: !43, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !711, file: !75, line: 596, baseType: !175, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !711, file: !75, line: 597, baseType: !7, size: 32, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !656, file: !75, line: 686, baseType: !216, size: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !656, file: !75, line: 687, baseType: !726, size: 640)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !75, line: 646, size: 640, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !75, line: 647, baseType: !175, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !726, file: !75, line: 647, baseType: !49, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !75, line: 647, baseType: !49, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !726, file: !75, line: 647, baseType: !12, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !726, file: !75, line: 647, baseType: !12, size: 16, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !726, file: !75, line: 648, baseType: !734, size: 512, offset: 128)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 512, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 8)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !656, file: !75, line: 688, baseType: !738, size: 320)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !75, line: 669, size: 320, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !75, line: 670, baseType: !175, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !75, line: 670, baseType: !49, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !75, line: 670, baseType: !49, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !738, file: !75, line: 670, baseType: !12, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !738, file: !75, line: 670, baseType: !12, size: 16, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !738, file: !75, line: 671, baseType: !49, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !75, line: 672, baseType: !96, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !738, file: !75, line: 673, baseType: !100, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !738, file: !75, line: 674, baseType: !749, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !75, line: 660, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !750, file: !75, line: 661, baseType: !483, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !750, file: !75, line: 662, baseType: !175, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !74, file: !75, line: 918, baseType: !83, size: 64, offset: 512)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !74, file: !75, line: 919, baseType: !7, size: 32, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !44, file: !45, line: 61, baseType: !7, size: 32, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !44, file: !45, line: 62, baseType: !7, size: 32, offset: 1120)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !44, file: !45, line: 63, baseType: !12, size: 16, offset: 1152)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !44, file: !45, line: 64, baseType: !49, size: 8, offset: 1168)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !44, file: !45, line: 66, baseType: !761, size: 2688, offset: 1216)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2688, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 7)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !44, file: !45, line: 67, baseType: !765, size: 3072, offset: 3904)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 3072, elements: !735)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !44, file: !45, line: 68, baseType: !767, size: 576, offset: 6976)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 576, elements: !29)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !44, file: !45, line: 69, baseType: !162, size: 64, offset: 7552)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !44, file: !45, line: 71, baseType: !68, size: 64, offset: 7616)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !44, file: !45, line: 72, baseType: !162, size: 64, offset: 7680)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !44, file: !45, line: 73, baseType: !655, size: 64, offset: 7744)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !44, file: !45, line: 74, baseType: !96, size: 64, offset: 7808)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !44, file: !45, line: 75, baseType: !100, size: 64, offset: 7872)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !44, file: !45, line: 76, baseType: !96, size: 64, offset: 7936)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !44, file: !45, line: 77, baseType: !83, size: 64, offset: 8000)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !44, file: !45, line: 78, baseType: !100, size: 64, offset: 8064)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !44, file: !45, line: 79, baseType: !96, size: 64, offset: 8128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !44, file: !45, line: 80, baseType: !137, size: 64, offset: 8192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !44, file: !45, line: 81, baseType: !83, size: 64, offset: 8256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !44, file: !45, line: 82, baseType: !781, size: 64, offset: 8320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !75, line: 718, size: 128, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !783, file: !75, line: 722, baseType: !7, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !783, file: !75, line: 723, baseType: !7, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !75, line: 724, baseType: !12, size: 16, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !783, file: !75, line: 725, baseType: !49, size: 8, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !783, file: !75, line: 726, baseType: !49, size: 8, offset: 88)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !75, line: 727, baseType: !49, size: 8, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !44, file: !45, line: 83, baseType: !83, size: 64, offset: 8384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !44, file: !45, line: 84, baseType: !100, size: 64, offset: 8448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !44, file: !45, line: 85, baseType: !655, size: 64, offset: 8512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !44, file: !45, line: 86, baseType: !100, size: 64, offset: 8576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !44, file: !45, line: 87, baseType: !655, size: 64, offset: 8640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !44, file: !45, line: 88, baseType: !83, size: 64, offset: 8704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !44, file: !45, line: 89, baseType: !83, size: 64, offset: 8768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !44, file: !45, line: 90, baseType: !215, size: 64, offset: 8832)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !44, file: !45, line: 91, baseType: !800, size: 64, offset: 8896)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !75, line: 652, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!5, !43, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !44, file: !45, line: 92, baseType: !806, size: 64, offset: 8960)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !75, line: 656, baseType: !195)
!807 = !{!808, !809}
!808 = !DILocalVariable(name: "walk_state", arg: 1, scope: !40, file: !3, line: 29, type: !43)
!809 = !DILocalVariable(name: "scope_info", scope: !40, file: !3, line: 31, type: !655)
!810 = !DILocation(line: 29, column: 56, scope: !40)
!811 = !DILocation(line: 31, column: 2, scope: !40)
!812 = !DILocation(line: 31, column: 28, scope: !40)
!813 = !DILocation(line: 35, column: 2, scope: !40)
!814 = !DILocation(line: 35, column: 9, scope: !40)
!815 = !DILocation(line: 35, column: 21, scope: !40)
!816 = !DILocation(line: 39, column: 16, scope: !817)
!817 = distinct !DILexicalBlock(scope: !40, file: !3, line: 35, column: 33)
!818 = !DILocation(line: 39, column: 28, scope: !817)
!819 = !DILocation(line: 39, column: 14, scope: !817)
!820 = !DILocation(line: 40, column: 28, scope: !817)
!821 = !DILocation(line: 40, column: 46, scope: !817)
!822 = !DILocation(line: 40, column: 3, scope: !817)
!823 = !DILocation(line: 40, column: 15, scope: !817)
!824 = !DILocation(line: 40, column: 26, scope: !817)
!825 = !DILocation(line: 47, column: 32, scope: !817)
!826 = !DILocation(line: 47, column: 3, scope: !817)
!827 = distinct !{!827, !813, !828, !829, !830}
!828 = !DILocation(line: 48, column: 2, scope: !40)
!829 = !{!"llvm.loop.mustprogress"}
!830 = !{!"llvm.loop.unroll.disable"}
!831 = !DILocation(line: 49, column: 1, scope: !40)
!832 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !833, file: !833, line: 531, type: !834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!833 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!834 = !DISubroutineType(types: !835)
!835 = !{null, !655}
!836 = distinct !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !3, file: !3, line: 67, type: !837, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !840)
!837 = !DISubroutineType(types: !838)
!838 = !{!5, !96, !839, !43}
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!840 = !{!841, !842, !843, !844, !845}
!841 = !DILocalVariable(name: "node", arg: 1, scope: !836, file: !3, line: 67, type: !96)
!842 = !DILocalVariable(name: "type", arg: 2, scope: !836, file: !3, line: 68, type: !839)
!843 = !DILocalVariable(name: "walk_state", arg: 3, scope: !836, file: !3, line: 69, type: !43)
!844 = !DILocalVariable(name: "scope_info", scope: !836, file: !3, line: 71, type: !655)
!845 = !DILocalVariable(name: "old_scope_info", scope: !836, file: !3, line: 72, type: !655)
!846 = !DILocation(line: 67, column: 54, scope: !836)
!847 = !DILocation(line: 68, column: 22, scope: !836)
!848 = !DILocation(line: 69, column: 29, scope: !836)
!849 = !DILocation(line: 71, column: 2, scope: !836)
!850 = !DILocation(line: 71, column: 28, scope: !836)
!851 = !DILocation(line: 72, column: 2, scope: !836)
!852 = !DILocation(line: 72, column: 28, scope: !836)
!853 = !DILocation(line: 76, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !836, file: !3, line: 76, column: 6)
!855 = !DILocation(line: 76, column: 6, scope: !836)
!856 = !DILocation(line: 80, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !3, line: 76, column: 13)
!858 = !DILocation(line: 81, column: 3, scope: !857)
!859 = !DILocation(line: 86, column: 33, scope: !860)
!860 = distinct !DILexicalBlock(scope: !836, file: !3, line: 86, column: 6)
!861 = !DILocation(line: 86, column: 7, scope: !860)
!862 = !DILocation(line: 86, column: 6, scope: !836)
!863 = !DILocation(line: 87, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !3, line: 86, column: 40)
!865 = !DILocation(line: 88, column: 2, scope: !864)
!866 = !DILocation(line: 92, column: 15, scope: !836)
!867 = !DILocation(line: 92, column: 13, scope: !836)
!868 = !DILocation(line: 93, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !836, file: !3, line: 93, column: 6)
!870 = !DILocation(line: 93, column: 6, scope: !836)
!871 = !DILocation(line: 94, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 93, column: 19)
!873 = !DILocation(line: 99, column: 2, scope: !836)
!874 = !DILocation(line: 99, column: 21, scope: !836)
!875 = !DILocation(line: 99, column: 37, scope: !836)
!876 = !DILocation(line: 100, column: 27, scope: !836)
!877 = !DILocation(line: 100, column: 2, scope: !836)
!878 = !DILocation(line: 100, column: 20, scope: !836)
!879 = !DILocation(line: 100, column: 25, scope: !836)
!880 = !DILocation(line: 101, column: 35, scope: !836)
!881 = !DILocation(line: 101, column: 29, scope: !836)
!882 = !DILocation(line: 101, column: 2, scope: !836)
!883 = !DILocation(line: 101, column: 21, scope: !836)
!884 = !DILocation(line: 101, column: 27, scope: !836)
!885 = !DILocation(line: 103, column: 2, scope: !836)
!886 = !DILocation(line: 103, column: 14, scope: !836)
!887 = !DILocation(line: 103, column: 25, scope: !836)
!888 = !DILocation(line: 109, column: 19, scope: !836)
!889 = !DILocation(line: 109, column: 31, scope: !836)
!890 = !DILocation(line: 109, column: 17, scope: !836)
!891 = !DILocation(line: 110, column: 6, scope: !892)
!892 = distinct !DILexicalBlock(scope: !836, file: !3, line: 110, column: 6)
!893 = !DILocation(line: 110, column: 6, scope: !836)
!894 = !DILocation(line: 117, column: 2, scope: !895)
!895 = distinct !DILexicalBlock(scope: !892, file: !3, line: 110, column: 22)
!896 = !DILocation(line: 128, column: 30, scope: !836)
!897 = !DILocation(line: 128, column: 42, scope: !836)
!898 = !DILocation(line: 128, column: 54, scope: !836)
!899 = !DILocation(line: 128, column: 2, scope: !836)
!900 = !DILocation(line: 129, column: 2, scope: !836)
!901 = !DILocation(line: 130, column: 1, scope: !836)
!902 = !DISubprogram(name: "acpi_error", scope: !903, file: !903, line: 901, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!904 = !DISubroutineType(types: !905)
!905 = !{null, !906, !7, !906, null}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!907 = !DISubprogram(name: "acpi_ut_valid_object_type", scope: !833, file: !833, line: 247, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubroutineType(types: !909)
!909 = !{!49, !839}
!910 = !DISubprogram(name: "acpi_warning", scope: !903, file: !903, line: 912, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DISubprogram(name: "acpi_ut_create_generic_state", scope: !833, file: !833, line: 513, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DISubroutineType(types: !913)
!913 = !{!655}
!914 = !DISubprogram(name: "acpi_ut_push_generic_state", scope: !833, file: !833, line: 507, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !917, !655}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!918 = distinct !DISubprogram(name: "acpi_ds_scope_stack_pop", scope: !3, file: !3, line: 144, type: !196, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !919)
!919 = !{!920, !921, !922}
!920 = !DILocalVariable(name: "walk_state", arg: 1, scope: !918, file: !3, line: 144, type: !43)
!921 = !DILocalVariable(name: "scope_info", scope: !918, file: !3, line: 146, type: !655)
!922 = !DILocalVariable(name: "new_scope_info", scope: !918, file: !3, line: 147, type: !655)
!923 = !DILocation(line: 144, column: 61, scope: !918)
!924 = !DILocation(line: 146, column: 2, scope: !918)
!925 = !DILocation(line: 146, column: 28, scope: !918)
!926 = !DILocation(line: 147, column: 2, scope: !918)
!927 = !DILocation(line: 147, column: 28, scope: !918)
!928 = !DILocation(line: 154, column: 42, scope: !918)
!929 = !DILocation(line: 154, column: 54, scope: !918)
!930 = !DILocation(line: 154, column: 15, scope: !918)
!931 = !DILocation(line: 154, column: 13, scope: !918)
!932 = !DILocation(line: 155, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !918, file: !3, line: 155, column: 6)
!934 = !DILocation(line: 155, column: 6, scope: !918)
!935 = !DILocation(line: 156, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !3, line: 155, column: 19)
!937 = !DILocation(line: 159, column: 2, scope: !918)
!938 = !DILocation(line: 159, column: 14, scope: !918)
!939 = !DILocation(line: 159, column: 25, scope: !918)
!940 = !DILocation(line: 167, column: 19, scope: !918)
!941 = !DILocation(line: 167, column: 31, scope: !918)
!942 = !DILocation(line: 167, column: 17, scope: !918)
!943 = !DILocation(line: 168, column: 6, scope: !944)
!944 = distinct !DILexicalBlock(scope: !918, file: !3, line: 168, column: 6)
!945 = !DILocation(line: 168, column: 6, scope: !918)
!946 = !DILocation(line: 174, column: 2, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 168, column: 22)
!948 = !DILocation(line: 179, column: 31, scope: !918)
!949 = !DILocation(line: 179, column: 2, scope: !918)
!950 = !DILocation(line: 180, column: 2, scope: !918)
!951 = !DILocation(line: 181, column: 1, scope: !918)
!952 = !DISubprogram(name: "acpi_ut_pop_generic_state", scope: !833, file: !833, line: 510, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DISubroutineType(types: !954)
!954 = !{!655, !917}
