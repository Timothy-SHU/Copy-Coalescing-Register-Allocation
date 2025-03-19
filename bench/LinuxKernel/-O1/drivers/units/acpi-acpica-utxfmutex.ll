; ModuleID = 'drivers/acpi/acpica/utxfmutex.c'
source_filename = "drivers/acpi/acpica/utxfmutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_acquire_mutex: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_acquire_mutex ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_release_mutex: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_release_mutex ; .previous"

%struct.acpi_object_mutex = type { ptr, i8, i8, i16, i8, i8, i16, ptr, i64, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }

@__UNIQUE_ID___addressable_acpi_acquire_mutex174 = internal global ptr @acpi_acquire_mutex, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_acpi_release_mutex175 = internal global ptr @acpi_release_mutex, section ".discard.addressable", align 8, !dbg !19
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_acquire_mutex174, ptr @__UNIQUE_ID___addressable_acpi_release_mutex175], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_acquire_mutex(ptr noundef %handle, ptr noundef %pathname, i16 noundef zeroext %timeout) #0 align 16 !dbg !30 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %timeout.addr = alloca i16, align 2
  %status = alloca i32, align 4
  %mutex_obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !40, metadata !DIExpression()), !dbg !808
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !41, metadata !DIExpression()), !dbg !809
  store i16 %timeout, ptr %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !42, metadata !DIExpression()), !dbg !810
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !811
  call void @llvm.dbg.declare(metadata ptr %status, metadata !43, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex_obj) #4, !dbg !813
  call void @llvm.dbg.declare(metadata ptr %mutex_obj, metadata !44, metadata !DIExpression()), !dbg !814
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !815
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !816
  %call = call i32 @acpi_ut_get_mutex_object(ptr noundef %0, ptr noundef %1, ptr noundef %mutex_obj) #5, !dbg !817
  store i32 %call, ptr %status, align 4, !dbg !818
  %2 = load i32, ptr %status, align 4, !dbg !819
  %tobool = icmp ne i32 %2, 0, !dbg !819
  br i1 %tobool, label %if.then, label %if.end, !dbg !821

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !822
  store i32 %3, ptr %retval, align 4, !dbg !824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !824

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %mutex_obj, align 8, !dbg !825
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %4, i32 0, i32 7, !dbg !825
  %5 = load ptr, ptr %os_mutex, align 8, !dbg !825
  %6 = load i16, ptr %timeout.addr, align 2, !dbg !825
  %call1 = call i32 @acpi_os_wait_semaphore(ptr noundef %5, i32 noundef 1, i16 noundef zeroext %6) #5, !dbg !825
  store i32 %call1, ptr %status, align 4, !dbg !826
  %7 = load i32, ptr %status, align 4, !dbg !827
  store i32 %7, ptr %retval, align 4, !dbg !828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !828

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex_obj) #4, !dbg !829
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !829
  %8 = load i32, ptr %retval, align 4, !dbg !829
  ret i32 %8, !dbg !829
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_get_mutex_object(ptr noundef %handle, ptr noundef %pathname, ptr noundef %ret_obj) #0 align 16 !dbg !830 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %ret_obj.addr = alloca ptr, align 8
  %mutex_node = alloca ptr, align 8
  %mutex_obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !834, metadata !DIExpression()), !dbg !840
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !835, metadata !DIExpression()), !dbg !841
  store ptr %ret_obj, ptr %ret_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_obj.addr, metadata !836, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex_node) #4, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %mutex_node, metadata !837, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex_obj) #4, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %mutex_obj, metadata !838, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %status, metadata !839, metadata !DIExpression()), !dbg !848
  %0 = load ptr, ptr %ret_obj.addr, align 8, !dbg !849
  %tobool = icmp ne ptr %0, null, !dbg !849
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !851

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !852
  %tobool1 = icmp ne ptr %1, null, !dbg !852
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !853

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load ptr, ptr %pathname.addr, align 8, !dbg !854
  %tobool2 = icmp ne ptr %2, null, !dbg !854
  br i1 %tobool2, label %if.end, label %if.then, !dbg !855

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 4097, ptr %retval, align 4, !dbg !856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !856

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !858
  store ptr %3, ptr %mutex_node, align 8, !dbg !859
  %4 = load ptr, ptr %pathname.addr, align 8, !dbg !860
  %cmp = icmp ne ptr %4, null, !dbg !862
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !863

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !864
  %6 = load ptr, ptr %pathname.addr, align 8, !dbg !866
  %7 = ptrtoint ptr %mutex_node to i64, !dbg !867
  %8 = inttoptr i64 %7 to ptr, !dbg !867
  %call = call i32 @acpi_get_handle(ptr noundef %5, ptr noundef %6, ptr noundef %8) #5, !dbg !868
  store i32 %call, ptr %status, align 4, !dbg !869
  %9 = load i32, ptr %status, align 4, !dbg !870
  %tobool4 = icmp ne i32 %9, 0, !dbg !870
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !872

if.then5:                                         ; preds = %if.then3
  %10 = load i32, ptr %status, align 4, !dbg !873
  store i32 %10, ptr %retval, align 4, !dbg !875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !875

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !876

if.end7:                                          ; preds = %if.end6, %if.end
  %11 = load ptr, ptr %mutex_node, align 8, !dbg !877
  %tobool8 = icmp ne ptr %11, null, !dbg !877
  br i1 %tobool8, label %lor.lhs.false9, label %if.then12, !dbg !879

lor.lhs.false9:                                   ; preds = %if.end7
  %12 = load ptr, ptr %mutex_node, align 8, !dbg !880
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 2, !dbg !881
  %13 = load i8, ptr %type, align 1, !dbg !881
  %conv = zext i8 %13 to i32, !dbg !880
  %cmp10 = icmp ne i32 %conv, 9, !dbg !882
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !883

if.then12:                                        ; preds = %lor.lhs.false9, %if.end7
  store i32 8, ptr %retval, align 4, !dbg !884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !884

if.end13:                                         ; preds = %lor.lhs.false9
  %14 = load ptr, ptr %mutex_node, align 8, !dbg !886
  %call14 = call ptr @acpi_ns_get_attached_object(ptr noundef %14) #5, !dbg !887
  store ptr %call14, ptr %mutex_obj, align 8, !dbg !888
  %15 = load ptr, ptr %mutex_obj, align 8, !dbg !889
  %tobool15 = icmp ne ptr %15, null, !dbg !889
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !891

if.then16:                                        ; preds = %if.end13
  store i32 9, ptr %retval, align 4, !dbg !892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !892

if.end17:                                         ; preds = %if.end13
  %16 = load ptr, ptr %mutex_obj, align 8, !dbg !894
  %17 = load ptr, ptr %ret_obj.addr, align 8, !dbg !895
  store ptr %16, ptr %17, align 8, !dbg !896
  store i32 0, ptr %retval, align 4, !dbg !897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !897

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex_obj) #4, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex_node) #4, !dbg !898
  %18 = load i32, ptr %retval, align 4, !dbg !898
  ret i32 %18, !dbg !898
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !899 dso_local i32 @acpi_os_wait_semaphore(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_release_mutex(ptr noundef %handle, ptr noundef %pathname) #0 align 16 !dbg !903 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %mutex_obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !907, metadata !DIExpression()), !dbg !911
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !908, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %status, metadata !909, metadata !DIExpression()), !dbg !914
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex_obj) #4, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %mutex_obj, metadata !910, metadata !DIExpression()), !dbg !916
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !917
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !918
  %call = call i32 @acpi_ut_get_mutex_object(ptr noundef %0, ptr noundef %1, ptr noundef %mutex_obj) #5, !dbg !919
  store i32 %call, ptr %status, align 4, !dbg !920
  %2 = load i32, ptr %status, align 4, !dbg !921
  %tobool = icmp ne i32 %2, 0, !dbg !921
  br i1 %tobool, label %if.then, label %if.end, !dbg !923

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !924
  store i32 %3, ptr %retval, align 4, !dbg !926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !926

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %mutex_obj, align 8, !dbg !927
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %4, i32 0, i32 7, !dbg !927
  %5 = load ptr, ptr %os_mutex, align 8, !dbg !927
  %call1 = call i32 @acpi_os_signal_semaphore(ptr noundef %5, i32 noundef 1) #5, !dbg !927
  store i32 0, ptr %retval, align 4, !dbg !928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !928

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex_obj) #4, !dbg !929
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !929
  %6 = load i32, ptr %retval, align 4, !dbg !929
  ret i32 %6, !dbg !929
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !930 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !933 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !939 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_acquire_mutex174", scope: !2, file: !3, line: 118, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utxfmutex.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utxfmutex\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utxfmutex.ll drivers/acpi/acpica/utxfmutex.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utxfmutex.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72f07b638bf63d0b70a8312de00374b9")
!4 = !{!5, !6, !13, !15}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !5)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !16, line: 42, baseType: !17)
!16 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!0, !19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_release_mutex175", scope: !2, file: !3, line: 154, type: !5, isLocal: true, isDefinition: true)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 8, !"cf-protection-branch", i32 1}
!25 = !{i32 4, !"function_return_thunk_extern", i32 1}
!26 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!27 = !{i32 1, !"Code Model", i32 2}
!28 = !{i32 1, !"override-stack-alignment", i32 8}
!29 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!30 = distinct !DISubprogram(name: "acpi_acquire_mutex", scope: !3, file: !3, line: 100, type: !31, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!31 = !DISubroutineType(types: !32)
!32 = !{!6, !14, !33, !36}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !7, line: 423, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !{!40, !41, !42, !43, !44}
!40 = !DILocalVariable(name: "handle", arg: 1, scope: !30, file: !3, line: 100, type: !14)
!41 = !DILocalVariable(name: "pathname", arg: 2, scope: !30, file: !3, line: 100, type: !33)
!42 = !DILocalVariable(name: "timeout", arg: 3, scope: !30, file: !3, line: 100, type: !36)
!43 = !DILocalVariable(name: "status", scope: !30, file: !3, line: 102, type: !6)
!44 = !DILocalVariable(name: "mutex_obj", scope: !30, file: !3, line: 103, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !47, line: 369, size: 576, elements: !48)
!47 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!48 = !{!49, !60, !76, !86, !122, !136, !145, !457, !474, !490, !503, !581, !593, !607, !617, !635, !657, !676, !695, !714, !727, !754, !771, !784, !798, !807}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !46, file: !47, line: 370, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !47, line: 73, size: 128, elements: !51)
!51 = !{!52, !53, !57, !58, !59}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !47, line: 74, baseType: !45, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !56)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !47, line: 74, baseType: !36, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !46, file: !47, line: 371, baseType: !61, size: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !47, line: 76, size: 192, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !47, line: 77, baseType: !45, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !47, line: 77, baseType: !54, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !47, line: 77, baseType: !54, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !47, line: 77, baseType: !36, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !47, line: 77, baseType: !54, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !61, file: !47, line: 77, baseType: !69, size: 24, offset: 104)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !47, line: 78, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !75)
!75 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !46, file: !47, line: 372, baseType: !77, size: 256)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !47, line: 93, size: 256, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !47, line: 94, baseType: !45, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !47, line: 94, baseType: !36, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !47, line: 94, baseType: !34, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !47, line: 94, baseType: !8, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !46, file: !47, line: 373, baseType: !87, size: 384)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !47, line: 97, size: 384, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !96, !97, !98, !99}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !87, file: !47, line: 98, baseType: !45, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !47, line: 98, baseType: !54, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !47, line: 98, baseType: !54, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !87, file: !47, line: 98, baseType: !36, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !47, line: 98, baseType: !54, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !87, file: !47, line: 98, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !87, file: !47, line: 98, baseType: !8, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !87, file: !47, line: 99, baseType: !8, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !87, file: !47, line: 100, baseType: !95, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !47, line: 101, baseType: !100, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !102, line: 133, size: 384, elements: !103)
!102 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!103 = !{!104, !105, !106, !107, !108, !117, !118, !119, !120}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !101, file: !102, line: 134, baseType: !45, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !102, line: 135, baseType: !54, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !102, line: 136, baseType: !54, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !102, line: 137, baseType: !36, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !102, line: 138, baseType: !109, size: 32, offset: 96)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !110, line: 328, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !109, file: !110, line: 329, baseType: !8, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !109, file: !110, line: 330, baseType: !114, size: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !101, file: !102, line: 139, baseType: !100, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !101, file: !102, line: 140, baseType: !100, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !101, file: !102, line: 141, baseType: !100, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !101, file: !102, line: 142, baseType: !121, size: 16, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !36)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !46, file: !47, line: 374, baseType: !123, size: 384)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !47, line: 104, size: 384, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !133, !134, !135}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !47, line: 105, baseType: !45, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !47, line: 105, baseType: !54, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !47, line: 105, baseType: !54, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !47, line: 105, baseType: !36, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !47, line: 105, baseType: !54, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !47, line: 105, baseType: !100, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !123, file: !47, line: 106, baseType: !132, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !123, file: !47, line: 107, baseType: !95, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !123, file: !47, line: 108, baseType: !8, size: 32, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !123, file: !47, line: 109, baseType: !8, size: 32, offset: 352)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !47, line: 375, baseType: !137, size: 192)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !47, line: 118, size: 192, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !137, file: !47, line: 119, baseType: !45, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !137, file: !47, line: 119, baseType: !54, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !47, line: 119, baseType: !54, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !137, file: !47, line: 119, baseType: !36, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !47, line: 119, baseType: !54, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !137, file: !47, line: 119, baseType: !5, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !46, file: !47, line: 376, baseType: !146, size: 448)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !47, line: 144, size: 448, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !454, !455, !456}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !47, line: 145, baseType: !45, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !47, line: 145, baseType: !54, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !47, line: 145, baseType: !54, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !47, line: 145, baseType: !36, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !47, line: 145, baseType: !54, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !146, file: !47, line: 145, baseType: !54, size: 8, offset: 104)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !146, file: !47, line: 146, baseType: !54, size: 8, offset: 112)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !146, file: !47, line: 147, baseType: !54, size: 8, offset: 120)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !146, file: !47, line: 148, baseType: !45, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !47, line: 149, baseType: !45, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !146, file: !47, line: 150, baseType: !95, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !146, file: !47, line: 154, baseType: !160, size: 64, offset: 320)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !47, line: 151, size: 64, elements: !161)
!161 = !{!162, !453}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !160, file: !47, line: 152, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !102, line: 248, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!6, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !169, line: 37, size: 9024, elements: !170)
!169 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !399, !400, !401, !402, !403, !407, !409, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !436, !437, !438, !439, !440, !441, !442, !443, !445, !451}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !169, line: 38, baseType: !167, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !169, line: 39, baseType: !54, size: 8, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !168, file: !169, line: 40, baseType: !54, size: 8, offset: 72)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !168, file: !169, line: 41, baseType: !36, size: 16, offset: 80)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !168, file: !169, line: 42, baseType: !54, size: 8, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !168, file: !169, line: 43, baseType: !54, size: 8, offset: 104)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !168, file: !169, line: 44, baseType: !54, size: 8, offset: 112)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !168, file: !169, line: 45, baseType: !121, size: 16, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !168, file: !169, line: 46, baseType: !54, size: 8, offset: 144)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !168, file: !169, line: 47, baseType: !54, size: 8, offset: 152)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !168, file: !169, line: 48, baseType: !54, size: 8, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !168, file: !169, line: 49, baseType: !54, size: 8, offset: 168)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !168, file: !169, line: 50, baseType: !54, size: 8, offset: 176)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !168, file: !169, line: 51, baseType: !54, size: 8, offset: 184)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !168, file: !169, line: 52, baseType: !54, size: 8, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !168, file: !169, line: 53, baseType: !54, size: 8, offset: 200)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !168, file: !169, line: 54, baseType: !95, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !168, file: !169, line: 55, baseType: !8, size: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !168, file: !169, line: 56, baseType: !8, size: 32, offset: 352)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !168, file: !169, line: 57, baseType: !8, size: 32, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !168, file: !169, line: 58, baseType: !8, size: 32, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !168, file: !169, line: 60, baseType: !193, size: 640, offset: 448)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !102, line: 909, size: 640, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !281, !282, !397, !398}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !193, file: !102, line: 910, baseType: !95, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !102, line: 911, baseType: !95, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !193, file: !102, line: 912, baseType: !95, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !193, file: !102, line: 913, baseType: !95, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !193, file: !102, line: 914, baseType: !95, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !193, file: !102, line: 915, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !102, line: 891, size: 1600, elements: !203)
!203 = !{!204, !224, !240}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !202, file: !102, line: 892, baseType: !205, size: 448)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !102, line: 844, size: 448, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !223}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !102, line: 845, baseType: !201, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !205, file: !102, line: 845, baseType: !54, size: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !102, line: 845, baseType: !54, size: 8, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !205, file: !102, line: 845, baseType: !36, size: 16, offset: 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !205, file: !102, line: 845, baseType: !95, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !102, line: 845, baseType: !201, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !102, line: 845, baseType: !100, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !205, file: !102, line: 845, baseType: !215, size: 64, offset: 320)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !102, line: 732, size: 64, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !215, file: !102, line: 733, baseType: !73, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !215, file: !102, line: 734, baseType: !8, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !215, file: !102, line: 735, baseType: !34, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !215, file: !102, line: 736, baseType: !95, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !102, line: 737, baseType: !34, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !215, file: !102, line: 738, baseType: !201, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !205, file: !102, line: 845, baseType: !54, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !202, file: !102, line: 893, baseType: !225, size: 640)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !102, line: 851, size: 640, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !102, line: 852, baseType: !201, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !102, line: 852, baseType: !54, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !102, line: 852, baseType: !54, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !225, file: !102, line: 852, baseType: !36, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !225, file: !102, line: 852, baseType: !95, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !102, line: 852, baseType: !201, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !225, file: !102, line: 852, baseType: !100, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !102, line: 852, baseType: !215, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !225, file: !102, line: 852, baseType: !54, size: 8, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !225, file: !102, line: 852, baseType: !34, size: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !225, file: !102, line: 853, baseType: !95, size: 64, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !225, file: !102, line: 854, baseType: !8, size: 32, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !102, line: 855, baseType: !8, size: 32, offset: 608)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !202, file: !102, line: 894, baseType: !241, size: 1600)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !102, line: 862, size: 1600, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !241, file: !102, line: 863, baseType: !201, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !102, line: 863, baseType: !54, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !102, line: 863, baseType: !54, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !241, file: !102, line: 863, baseType: !36, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !241, file: !102, line: 863, baseType: !95, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !102, line: 863, baseType: !201, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !241, file: !102, line: 863, baseType: !100, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !102, line: 863, baseType: !215, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !241, file: !102, line: 863, baseType: !54, size: 8, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !241, file: !102, line: 863, baseType: !201, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !241, file: !102, line: 864, baseType: !201, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !241, file: !102, line: 865, baseType: !34, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !241, file: !102, line: 866, baseType: !54, size: 8, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !241, file: !102, line: 867, baseType: !34, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !241, file: !102, line: 868, baseType: !34, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !241, file: !102, line: 869, baseType: !34, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !241, file: !102, line: 870, baseType: !114, size: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !241, file: !102, line: 871, baseType: !8, size: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !241, file: !102, line: 872, baseType: !8, size: 32, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !241, file: !102, line: 873, baseType: !8, size: 32, offset: 992)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !241, file: !102, line: 874, baseType: !8, size: 32, offset: 1024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !241, file: !102, line: 875, baseType: !8, size: 32, offset: 1056)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !241, file: !102, line: 876, baseType: !8, size: 32, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !241, file: !102, line: 877, baseType: !8, size: 32, offset: 1120)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !241, file: !102, line: 878, baseType: !8, size: 32, offset: 1152)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !241, file: !102, line: 879, baseType: !8, size: 32, offset: 1184)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !241, file: !102, line: 880, baseType: !8, size: 32, offset: 1216)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !241, file: !102, line: 881, baseType: !8, size: 32, offset: 1248)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !241, file: !102, line: 882, baseType: !8, size: 32, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !241, file: !102, line: 883, baseType: !8, size: 32, offset: 1312)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !241, file: !102, line: 884, baseType: !36, size: 16, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !241, file: !102, line: 885, baseType: !54, size: 8, offset: 1360)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !241, file: !102, line: 886, baseType: !54, size: 8, offset: 1368)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !241, file: !102, line: 887, baseType: !54, size: 8, offset: 1376)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !241, file: !102, line: 888, baseType: !278, size: 160, offset: 1384)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 20)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !193, file: !102, line: 916, baseType: !100, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !193, file: !102, line: 917, baseType: !283, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !102, line: 679, size: 640, elements: !285)
!285 = !{!286, !294, !307, !316, !325, !338, !352, !364, !376}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !284, file: !102, line: 680, baseType: !287, size: 128)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !102, line: 575, size: 128, elements: !288)
!288 = !{!289, !290, !291, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !102, line: 576, baseType: !5, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !102, line: 576, baseType: !54, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !102, line: 576, baseType: !54, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !102, line: 576, baseType: !36, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !102, line: 576, baseType: !36, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !284, file: !102, line: 681, baseType: !295, size: 384)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !102, line: 604, size: 384, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !102, line: 605, baseType: !5, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !102, line: 605, baseType: !54, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !102, line: 605, baseType: !54, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !102, line: 605, baseType: !36, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !102, line: 605, baseType: !36, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !295, file: !102, line: 606, baseType: !36, size: 16, offset: 112)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !295, file: !102, line: 607, baseType: !201, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !295, file: !102, line: 608, baseType: !95, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !295, file: !102, line: 609, baseType: !95, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !295, file: !102, line: 610, baseType: !73, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !284, file: !102, line: 682, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !102, line: 582, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !102, line: 583, baseType: !5, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !102, line: 583, baseType: !54, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !102, line: 583, baseType: !54, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !102, line: 583, baseType: !36, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !102, line: 583, baseType: !36, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !308, file: !102, line: 584, baseType: !45, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !284, file: !102, line: 683, baseType: !317, size: 192)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !102, line: 616, size: 192, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !102, line: 617, baseType: !5, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !102, line: 617, baseType: !54, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !102, line: 617, baseType: !54, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !102, line: 617, baseType: !36, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !102, line: 617, baseType: !36, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !317, file: !102, line: 618, baseType: !100, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !284, file: !102, line: 684, baseType: !326, size: 448)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !102, line: 621, size: 448, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !102, line: 622, baseType: !5, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !102, line: 622, baseType: !54, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !102, line: 622, baseType: !54, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !102, line: 622, baseType: !36, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !102, line: 622, baseType: !36, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !326, file: !102, line: 623, baseType: !8, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !326, file: !102, line: 624, baseType: !201, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !326, file: !102, line: 625, baseType: !95, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !326, file: !102, line: 626, baseType: !95, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !326, file: !102, line: 627, baseType: !8, size: 32, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !284, file: !102, line: 685, baseType: !339, size: 512)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !102, line: 590, size: 512, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !102, line: 591, baseType: !5, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !102, line: 591, baseType: !54, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !102, line: 591, baseType: !54, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !102, line: 591, baseType: !36, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !102, line: 591, baseType: !36, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !339, file: !102, line: 592, baseType: !8, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !339, file: !102, line: 593, baseType: !45, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !339, file: !102, line: 594, baseType: !45, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !339, file: !102, line: 595, baseType: !167, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !339, file: !102, line: 596, baseType: !5, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !339, file: !102, line: 597, baseType: !8, size: 32, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !284, file: !102, line: 686, baseType: !353, size: 320)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !102, line: 634, size: 320, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !102, line: 635, baseType: !5, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !102, line: 635, baseType: !54, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !102, line: 635, baseType: !54, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !102, line: 635, baseType: !36, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !102, line: 635, baseType: !36, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !353, file: !102, line: 636, baseType: !54, size: 8, offset: 112)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !353, file: !102, line: 637, baseType: !167, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !353, file: !102, line: 638, baseType: !45, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !353, file: !102, line: 639, baseType: !73, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !284, file: !102, line: 687, baseType: !365, size: 640)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !102, line: 646, size: 640, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !102, line: 647, baseType: !5, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !365, file: !102, line: 647, baseType: !54, size: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !102, line: 647, baseType: !54, size: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !102, line: 647, baseType: !36, size: 16, offset: 80)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !365, file: !102, line: 647, baseType: !36, size: 16, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !365, file: !102, line: 648, baseType: !373, size: 512, offset: 128)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 8)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !284, file: !102, line: 688, baseType: !377, size: 320)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !102, line: 669, size: 320, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !102, line: 670, baseType: !5, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !102, line: 670, baseType: !54, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !102, line: 670, baseType: !54, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !377, file: !102, line: 670, baseType: !36, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !102, line: 670, baseType: !36, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !377, file: !102, line: 671, baseType: !54, size: 8, offset: 112)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !377, file: !102, line: 672, baseType: !100, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !377, file: !102, line: 673, baseType: !45, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !377, file: !102, line: 674, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !102, line: 660, size: 128, elements: !390)
!390 = !{!391, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !389, file: !102, line: 661, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1061, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !14, !8, !5}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !389, file: !102, line: 662, baseType: !5, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !193, file: !102, line: 918, baseType: !201, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !193, file: !102, line: 919, baseType: !8, size: 32, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !168, file: !169, line: 61, baseType: !8, size: 32, offset: 1088)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !168, file: !169, line: 62, baseType: !8, size: 32, offset: 1120)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !168, file: !169, line: 63, baseType: !36, size: 16, offset: 1152)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !168, file: !169, line: 64, baseType: !54, size: 8, offset: 1168)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !168, file: !169, line: 66, baseType: !404, size: 2688, offset: 1216)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 2688, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 7)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !168, file: !169, line: 67, baseType: !408, size: 3072, offset: 3904)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 3072, elements: !374)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !168, file: !169, line: 68, baseType: !410, size: 576, offset: 6976)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 576, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 9)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !168, file: !169, line: 69, baseType: !132, size: 64, offset: 7552)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !168, file: !169, line: 71, baseType: !95, size: 64, offset: 7616)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !168, file: !169, line: 72, baseType: !132, size: 64, offset: 7680)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !168, file: !169, line: 73, baseType: !283, size: 64, offset: 7744)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !168, file: !169, line: 74, baseType: !100, size: 64, offset: 7808)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !168, file: !169, line: 75, baseType: !45, size: 64, offset: 7872)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !168, file: !169, line: 76, baseType: !100, size: 64, offset: 7936)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !168, file: !169, line: 77, baseType: !201, size: 64, offset: 8000)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !168, file: !169, line: 78, baseType: !45, size: 64, offset: 8064)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !168, file: !169, line: 79, baseType: !100, size: 64, offset: 8128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !168, file: !169, line: 80, baseType: !34, size: 64, offset: 8192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !168, file: !169, line: 81, baseType: !201, size: 64, offset: 8256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !168, file: !169, line: 82, baseType: !426, size: 64, offset: 8320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !102, line: 718, size: 128, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !428, file: !102, line: 722, baseType: !8, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !428, file: !102, line: 723, baseType: !8, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !428, file: !102, line: 724, baseType: !36, size: 16, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !428, file: !102, line: 725, baseType: !54, size: 8, offset: 80)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !428, file: !102, line: 726, baseType: !54, size: 8, offset: 88)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !102, line: 727, baseType: !54, size: 8, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !168, file: !169, line: 83, baseType: !201, size: 64, offset: 8384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !168, file: !169, line: 84, baseType: !45, size: 64, offset: 8448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !168, file: !169, line: 85, baseType: !283, size: 64, offset: 8512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !168, file: !169, line: 86, baseType: !45, size: 64, offset: 8576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !168, file: !169, line: 87, baseType: !283, size: 64, offset: 8640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !168, file: !169, line: 88, baseType: !201, size: 64, offset: 8704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !168, file: !169, line: 89, baseType: !201, size: 64, offset: 8768)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !168, file: !169, line: 90, baseType: !444, size: 64, offset: 8832)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !168, file: !169, line: 91, baseType: !446, size: 64, offset: 8896)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !102, line: 652, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!6, !167, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !168, file: !169, line: 92, baseType: !452, size: 64, offset: 8960)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !102, line: 656, baseType: !164)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !160, file: !47, line: 153, baseType: !45, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !146, file: !47, line: 156, baseType: !8, size: 32, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !146, file: !47, line: 157, baseType: !121, size: 16, offset: 416)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !146, file: !47, line: 158, baseType: !54, size: 8, offset: 432)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !46, file: !47, line: 377, baseType: !458, size: 576)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !47, line: 122, size: 576, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !458, file: !47, line: 123, baseType: !45, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !47, line: 123, baseType: !54, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !47, line: 123, baseType: !54, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !458, file: !47, line: 123, baseType: !36, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !47, line: 123, baseType: !54, size: 8, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !458, file: !47, line: 123, baseType: !54, size: 8, offset: 104)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !458, file: !47, line: 124, baseType: !36, size: 16, offset: 112)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !458, file: !47, line: 125, baseType: !5, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !458, file: !47, line: 126, baseType: !73, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !458, file: !47, line: 127, baseType: !444, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !458, file: !47, line: 128, baseType: !45, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !47, line: 129, baseType: !45, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !458, file: !47, line: 130, baseType: !100, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !458, file: !47, line: 131, baseType: !54, size: 8, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !46, file: !47, line: 378, baseType: !475, size: 512)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !47, line: 134, size: 512, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !488, !489}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !47, line: 135, baseType: !45, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !47, line: 135, baseType: !54, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !47, line: 135, baseType: !54, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !47, line: 135, baseType: !36, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !47, line: 135, baseType: !54, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !475, file: !47, line: 135, baseType: !54, size: 8, offset: 104)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !475, file: !47, line: 136, baseType: !100, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !47, line: 137, baseType: !45, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !47, line: 138, baseType: !45, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !475, file: !47, line: 139, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !73)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !475, file: !47, line: 140, baseType: !8, size: 32, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !475, file: !47, line: 141, baseType: !5, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !46, file: !47, line: 379, baseType: !491, size: 320)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !47, line: 185, size: 320, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !502}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !491, file: !47, line: 186, baseType: !45, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !491, file: !47, line: 186, baseType: !54, size: 8, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !47, line: 186, baseType: !54, size: 8, offset: 72)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !491, file: !47, line: 186, baseType: !36, size: 16, offset: 80)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !47, line: 186, baseType: !54, size: 8, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !491, file: !47, line: 186, baseType: !499, size: 128, offset: 128)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 2)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !491, file: !47, line: 186, baseType: !45, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !46, file: !47, line: 380, baseType: !504, size: 384)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !47, line: 188, size: 384, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !504, file: !47, line: 189, baseType: !45, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !504, file: !47, line: 189, baseType: !54, size: 8, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !47, line: 189, baseType: !54, size: 8, offset: 72)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !47, line: 189, baseType: !36, size: 16, offset: 80)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !47, line: 189, baseType: !54, size: 8, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !504, file: !47, line: 190, baseType: !499, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !504, file: !47, line: 190, baseType: !45, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !504, file: !47, line: 190, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !102, line: 480, size: 576, elements: !516)
!516 = !{!517, !518, !519, !520, !528, !543, !575, !576, !577, !578, !579, !580}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !515, file: !102, line: 481, baseType: !100, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !515, file: !102, line: 482, baseType: !514, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !102, line: 483, baseType: !514, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !515, file: !102, line: 484, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !102, line: 497, size: 256, elements: !523)
!523 = !{!524, !525, !526, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !522, file: !102, line: 498, baseType: !521, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !102, line: 499, baseType: !521, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !522, file: !102, line: 500, baseType: !514, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !522, file: !102, line: 501, baseType: !8, size: 32, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !515, file: !102, line: 485, baseType: !529, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !102, line: 466, size: 320, elements: !531)
!531 = !{!532, !537, !538, !539, !540, !541, !542}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !530, file: !102, line: 467, baseType: !533, size: 128)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !102, line: 459, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !533, file: !102, line: 460, baseType: !54, size: 8)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !533, file: !102, line: 461, baseType: !73, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !530, file: !102, line: 468, baseType: !533, size: 128, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !530, file: !102, line: 469, baseType: !36, size: 16, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !530, file: !102, line: 470, baseType: !54, size: 8, offset: 272)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !530, file: !102, line: 471, baseType: !54, size: 8, offset: 280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !530, file: !102, line: 472, baseType: !54, size: 8, offset: 288)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !530, file: !102, line: 473, baseType: !54, size: 8, offset: 296)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !515, file: !102, line: 486, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !102, line: 448, size: 192, elements: !546)
!546 = !{!547, !570, !571, !572, !573, !574}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !545, file: !102, line: 449, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !102, line: 438, size: 64, elements: !549)
!549 = !{!550, !551, !564}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !548, file: !102, line: 439, baseType: !100, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !548, file: !102, line: 440, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !102, line: 419, size: 256, elements: !554)
!554 = !{!555, !560, !561, !562, !563}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !553, file: !102, line: 420, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1058, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!8, !14, !8, !5}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !553, file: !102, line: 421, baseType: !5, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !553, file: !102, line: 422, baseType: !100, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !553, file: !102, line: 423, baseType: !54, size: 8, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !553, file: !102, line: 424, baseType: !54, size: 8, offset: 200)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !548, file: !102, line: 441, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !102, line: 429, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !566, file: !102, line: 430, baseType: !100, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !102, line: 431, baseType: !565, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !545, file: !102, line: 450, baseType: !529, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !102, line: 451, baseType: !54, size: 8, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !545, file: !102, line: 452, baseType: !54, size: 8, offset: 136)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !545, file: !102, line: 453, baseType: !54, size: 8, offset: 144)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !545, file: !102, line: 454, baseType: !54, size: 8, offset: 152)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !515, file: !102, line: 487, baseType: !73, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !515, file: !102, line: 488, baseType: !8, size: 32, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !515, file: !102, line: 489, baseType: !36, size: 16, offset: 480)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !515, file: !102, line: 490, baseType: !36, size: 16, offset: 496)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !515, file: !102, line: 491, baseType: !54, size: 8, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !515, file: !102, line: 492, baseType: !54, size: 8, offset: 520)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !46, file: !47, line: 381, baseType: !582, size: 384)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !47, line: 193, size: 384, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !582, file: !47, line: 194, baseType: !45, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !582, file: !47, line: 194, baseType: !54, size: 8, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !582, file: !47, line: 194, baseType: !54, size: 8, offset: 72)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !582, file: !47, line: 194, baseType: !36, size: 16, offset: 80)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !47, line: 194, baseType: !54, size: 8, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !582, file: !47, line: 194, baseType: !499, size: 128, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !582, file: !47, line: 194, baseType: !45, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !582, file: !47, line: 194, baseType: !8, size: 32, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !582, file: !47, line: 195, baseType: !8, size: 32, offset: 352)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !46, file: !47, line: 382, baseType: !594, size: 384)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !47, line: 198, size: 384, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !594, file: !47, line: 199, baseType: !45, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !594, file: !47, line: 199, baseType: !54, size: 8, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !47, line: 199, baseType: !54, size: 8, offset: 72)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !594, file: !47, line: 199, baseType: !36, size: 16, offset: 80)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !47, line: 199, baseType: !54, size: 8, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !594, file: !47, line: 201, baseType: !54, size: 8, offset: 104)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !594, file: !47, line: 202, baseType: !54, size: 8, offset: 112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !594, file: !47, line: 203, baseType: !499, size: 128, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !594, file: !47, line: 203, baseType: !45, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !594, file: !47, line: 203, baseType: !606, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !73)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !46, file: !47, line: 383, baseType: !608, size: 320)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !47, line: 206, size: 320, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !47, line: 207, baseType: !45, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !47, line: 207, baseType: !54, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !47, line: 207, baseType: !54, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !47, line: 207, baseType: !36, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !47, line: 207, baseType: !54, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !608, file: !47, line: 207, baseType: !499, size: 128, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !608, file: !47, line: 207, baseType: !45, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !46, file: !47, line: 384, baseType: !618, size: 384)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !47, line: 234, size: 384, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !47, line: 235, baseType: !45, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !47, line: 235, baseType: !54, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !47, line: 235, baseType: !54, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !47, line: 235, baseType: !36, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !47, line: 235, baseType: !54, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !618, file: !47, line: 235, baseType: !54, size: 8, offset: 104)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !618, file: !47, line: 235, baseType: !54, size: 8, offset: 112)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !618, file: !47, line: 235, baseType: !54, size: 8, offset: 120)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !47, line: 235, baseType: !100, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !618, file: !47, line: 235, baseType: !8, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !618, file: !47, line: 235, baseType: !8, size: 32, offset: 224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !618, file: !47, line: 235, baseType: !8, size: 32, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !618, file: !47, line: 235, baseType: !54, size: 8, offset: 288)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !618, file: !47, line: 235, baseType: !54, size: 8, offset: 296)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !618, file: !47, line: 235, baseType: !45, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !46, file: !47, line: 385, baseType: !636, size: 576)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !47, line: 238, size: 576, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !636, file: !47, line: 239, baseType: !45, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !636, file: !47, line: 239, baseType: !54, size: 8, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !47, line: 239, baseType: !54, size: 8, offset: 72)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !636, file: !47, line: 239, baseType: !36, size: 16, offset: 80)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !47, line: 239, baseType: !54, size: 8, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !636, file: !47, line: 239, baseType: !54, size: 8, offset: 104)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !636, file: !47, line: 239, baseType: !54, size: 8, offset: 112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !636, file: !47, line: 239, baseType: !54, size: 8, offset: 120)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !636, file: !47, line: 239, baseType: !100, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !636, file: !47, line: 239, baseType: !8, size: 32, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !636, file: !47, line: 239, baseType: !8, size: 32, offset: 224)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !636, file: !47, line: 239, baseType: !8, size: 32, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !636, file: !47, line: 239, baseType: !54, size: 8, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !636, file: !47, line: 239, baseType: !54, size: 8, offset: 296)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !636, file: !47, line: 239, baseType: !36, size: 16, offset: 304)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !636, file: !47, line: 240, baseType: !45, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !636, file: !47, line: 241, baseType: !95, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !636, file: !47, line: 242, baseType: !36, size: 16, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !636, file: !47, line: 243, baseType: !95, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !46, file: !47, line: 386, baseType: !658, size: 384)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !47, line: 263, size: 384, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !47, line: 264, baseType: !45, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !47, line: 264, baseType: !36, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !47, line: 264, baseType: !100, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !47, line: 264, baseType: !8, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !47, line: 264, baseType: !8, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !47, line: 264, baseType: !8, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !658, file: !47, line: 264, baseType: !54, size: 8, offset: 304)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !658, file: !47, line: 265, baseType: !45, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !46, file: !47, line: 387, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !47, line: 246, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !47, line: 247, baseType: !45, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !47, line: 247, baseType: !54, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !47, line: 247, baseType: !54, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !47, line: 247, baseType: !36, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !47, line: 247, baseType: !54, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !47, line: 247, baseType: !54, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !47, line: 247, baseType: !54, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !47, line: 247, baseType: !54, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !47, line: 247, baseType: !100, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !47, line: 247, baseType: !8, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !47, line: 247, baseType: !8, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !47, line: 247, baseType: !8, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !47, line: 247, baseType: !54, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !47, line: 247, baseType: !54, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !677, file: !47, line: 247, baseType: !45, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !677, file: !47, line: 248, baseType: !45, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !46, file: !47, line: 388, baseType: !696, size: 448)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !47, line: 251, size: 448, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !47, line: 252, baseType: !45, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !47, line: 252, baseType: !54, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !47, line: 252, baseType: !54, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !47, line: 252, baseType: !36, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !47, line: 252, baseType: !54, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !696, file: !47, line: 252, baseType: !54, size: 8, offset: 104)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !696, file: !47, line: 252, baseType: !54, size: 8, offset: 112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !696, file: !47, line: 252, baseType: !54, size: 8, offset: 120)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !47, line: 252, baseType: !100, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !696, file: !47, line: 252, baseType: !8, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !696, file: !47, line: 252, baseType: !8, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !696, file: !47, line: 252, baseType: !8, size: 32, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !696, file: !47, line: 252, baseType: !54, size: 8, offset: 288)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !696, file: !47, line: 252, baseType: !54, size: 8, offset: 296)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !696, file: !47, line: 257, baseType: !45, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !696, file: !47, line: 258, baseType: !45, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !46, file: !47, line: 389, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !47, line: 274, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !47, line: 275, baseType: !45, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !47, line: 275, baseType: !54, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !47, line: 275, baseType: !54, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !47, line: 275, baseType: !36, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !47, line: 275, baseType: !54, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !47, line: 275, baseType: !100, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !715, file: !47, line: 276, baseType: !8, size: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !715, file: !47, line: 277, baseType: !392, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !715, file: !47, line: 278, baseType: !5, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !47, line: 279, baseType: !499, size: 128, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !46, file: !47, line: 390, baseType: !728, size: 576)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !47, line: 282, size: 576, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !743, !744, !745, !746, !752, !753}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !47, line: 283, baseType: !45, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !47, line: 283, baseType: !54, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !47, line: 283, baseType: !54, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !47, line: 283, baseType: !36, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !47, line: 283, baseType: !54, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !728, file: !47, line: 283, baseType: !54, size: 8, offset: 104)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !728, file: !47, line: 284, baseType: !54, size: 8, offset: 112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !728, file: !47, line: 285, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1093, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!6, !8, !487, !8, !742, !5, !5}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !47, line: 286, baseType: !100, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !728, file: !47, line: 287, baseType: !5, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !728, file: !47, line: 288, baseType: !5, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !728, file: !47, line: 289, baseType: !747, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1126, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!6, !14, !8, !5, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !728, file: !47, line: 290, baseType: !45, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !47, line: 291, baseType: !45, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !46, file: !47, line: 391, baseType: !755, size: 512)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !47, line: 309, size: 512, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !47, line: 310, baseType: !45, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !47, line: 310, baseType: !54, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !47, line: 310, baseType: !54, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !47, line: 310, baseType: !36, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !47, line: 310, baseType: !54, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !755, file: !47, line: 310, baseType: !54, size: 8, offset: 104)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !755, file: !47, line: 311, baseType: !54, size: 8, offset: 112)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !755, file: !47, line: 312, baseType: !54, size: 8, offset: 120)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !755, file: !47, line: 313, baseType: !5, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !47, line: 314, baseType: !100, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !755, file: !47, line: 315, baseType: !132, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !755, file: !47, line: 316, baseType: !95, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !755, file: !47, line: 317, baseType: !95, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !755, file: !47, line: 318, baseType: !8, size: 32, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !46, file: !47, line: 392, baseType: !772, size: 448)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !47, line: 342, size: 448, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !772, file: !47, line: 343, baseType: !45, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !772, file: !47, line: 343, baseType: !54, size: 8, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !47, line: 343, baseType: !54, size: 8, offset: 72)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !772, file: !47, line: 343, baseType: !36, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !47, line: 343, baseType: !54, size: 8, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !772, file: !47, line: 343, baseType: !100, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !772, file: !47, line: 344, baseType: !100, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !772, file: !47, line: 345, baseType: !5, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !772, file: !47, line: 346, baseType: !95, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !772, file: !47, line: 347, baseType: !8, size: 32, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 393, baseType: !785, size: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !47, line: 352, size: 256, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !797}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !785, file: !47, line: 353, baseType: !45, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !47, line: 353, baseType: !54, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !785, file: !47, line: 353, baseType: !54, size: 8, offset: 72)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !785, file: !47, line: 353, baseType: !36, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !47, line: 353, baseType: !54, size: 8, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !785, file: !47, line: 353, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1064, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !14, !5}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !785, file: !47, line: 354, baseType: !5, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !46, file: !47, line: 394, baseType: !799, size: 192)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !47, line: 359, size: 192, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !799, file: !47, line: 360, baseType: !45, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !799, file: !47, line: 360, baseType: !54, size: 8, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !799, file: !47, line: 360, baseType: !54, size: 8, offset: 72)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !799, file: !47, line: 360, baseType: !36, size: 16, offset: 80)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !799, file: !47, line: 360, baseType: !54, size: 8, offset: 96)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !799, file: !47, line: 360, baseType: !45, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !47, line: 401, baseType: !101, size: 384)
!808 = !DILocation(line: 100, column: 32, scope: !30)
!809 = !DILocation(line: 100, column: 52, scope: !30)
!810 = !DILocation(line: 100, column: 66, scope: !30)
!811 = !DILocation(line: 102, column: 2, scope: !30)
!812 = !DILocation(line: 102, column: 14, scope: !30)
!813 = !DILocation(line: 103, column: 2, scope: !30)
!814 = !DILocation(line: 103, column: 29, scope: !30)
!815 = !DILocation(line: 107, column: 36, scope: !30)
!816 = !DILocation(line: 107, column: 44, scope: !30)
!817 = !DILocation(line: 107, column: 11, scope: !30)
!818 = !DILocation(line: 107, column: 9, scope: !30)
!819 = !DILocation(line: 108, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !30, file: !3, line: 108, column: 6)
!821 = !DILocation(line: 108, column: 6, scope: !30)
!822 = !DILocation(line: 109, column: 11, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !3, line: 108, column: 28)
!824 = !DILocation(line: 109, column: 3, scope: !823)
!825 = !DILocation(line: 114, column: 11, scope: !30)
!826 = !DILocation(line: 114, column: 9, scope: !30)
!827 = !DILocation(line: 115, column: 10, scope: !30)
!828 = !DILocation(line: 115, column: 2, scope: !30)
!829 = !DILocation(line: 116, column: 1, scope: !30)
!830 = distinct !DISubprogram(name: "acpi_ut_get_mutex_object", scope: !3, file: !3, line: 38, type: !831, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!6, !14, !33, !132}
!833 = !{!834, !835, !836, !837, !838, !839}
!834 = !DILocalVariable(name: "handle", arg: 1, scope: !830, file: !3, line: 38, type: !14)
!835 = !DILocalVariable(name: "pathname", arg: 2, scope: !830, file: !3, line: 39, type: !33)
!836 = !DILocalVariable(name: "ret_obj", arg: 3, scope: !830, file: !3, line: 40, type: !132)
!837 = !DILocalVariable(name: "mutex_node", scope: !830, file: !3, line: 42, type: !100)
!838 = !DILocalVariable(name: "mutex_obj", scope: !830, file: !3, line: 43, type: !45)
!839 = !DILocalVariable(name: "status", scope: !830, file: !3, line: 44, type: !6)
!840 = !DILocation(line: 38, column: 38, scope: !830)
!841 = !DILocation(line: 39, column: 17, scope: !830)
!842 = !DILocation(line: 40, column: 33, scope: !830)
!843 = !DILocation(line: 42, column: 2, scope: !830)
!844 = !DILocation(line: 42, column: 30, scope: !830)
!845 = !DILocation(line: 43, column: 2, scope: !830)
!846 = !DILocation(line: 43, column: 29, scope: !830)
!847 = !DILocation(line: 44, column: 2, scope: !830)
!848 = !DILocation(line: 44, column: 14, scope: !830)
!849 = !DILocation(line: 48, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !830, file: !3, line: 48, column: 6)
!851 = !DILocation(line: 48, column: 15, scope: !850)
!852 = !DILocation(line: 48, column: 20, scope: !850)
!853 = !DILocation(line: 48, column: 27, scope: !850)
!854 = !DILocation(line: 48, column: 31, scope: !850)
!855 = !DILocation(line: 48, column: 6, scope: !830)
!856 = !DILocation(line: 49, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !850, file: !3, line: 48, column: 42)
!858 = !DILocation(line: 54, column: 15, scope: !830)
!859 = !DILocation(line: 54, column: 13, scope: !830)
!860 = !DILocation(line: 55, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !830, file: !3, line: 55, column: 6)
!862 = !DILocation(line: 55, column: 15, scope: !861)
!863 = !DILocation(line: 55, column: 6, scope: !830)
!864 = !DILocation(line: 57, column: 23, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 55, column: 24)
!866 = !DILocation(line: 57, column: 31, scope: !865)
!867 = !DILocation(line: 58, column: 9, scope: !865)
!868 = !DILocation(line: 57, column: 7, scope: !865)
!869 = !DILocation(line: 56, column: 10, scope: !865)
!870 = !DILocation(line: 59, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !3, line: 59, column: 7)
!872 = !DILocation(line: 59, column: 7, scope: !865)
!873 = !DILocation(line: 60, column: 12, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !3, line: 59, column: 29)
!875 = !DILocation(line: 60, column: 4, scope: !874)
!876 = !DILocation(line: 62, column: 2, scope: !865)
!877 = !DILocation(line: 66, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !830, file: !3, line: 66, column: 6)
!879 = !DILocation(line: 66, column: 18, scope: !878)
!880 = !DILocation(line: 66, column: 22, scope: !878)
!881 = !DILocation(line: 66, column: 34, scope: !878)
!882 = !DILocation(line: 66, column: 39, scope: !878)
!883 = !DILocation(line: 66, column: 6, scope: !830)
!884 = !DILocation(line: 67, column: 3, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !3, line: 66, column: 60)
!886 = !DILocation(line: 72, column: 42, scope: !830)
!887 = !DILocation(line: 72, column: 14, scope: !830)
!888 = !DILocation(line: 72, column: 12, scope: !830)
!889 = !DILocation(line: 73, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !830, file: !3, line: 73, column: 6)
!891 = !DILocation(line: 73, column: 6, scope: !830)
!892 = !DILocation(line: 74, column: 3, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 73, column: 18)
!894 = !DILocation(line: 77, column: 13, scope: !830)
!895 = !DILocation(line: 77, column: 3, scope: !830)
!896 = !DILocation(line: 77, column: 11, scope: !830)
!897 = !DILocation(line: 78, column: 2, scope: !830)
!898 = !DILocation(line: 79, column: 1, scope: !830)
!899 = !DISubprogram(name: "acpi_os_wait_semaphore", scope: !900, file: !900, line: 136, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!901 = !DISubroutineType(types: !902)
!902 = !{!6, !5, !8, !36}
!903 = distinct !DISubprogram(name: "acpi_release_mutex", scope: !3, file: !3, line: 136, type: !904, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!6, !14, !33}
!906 = !{!907, !908, !909, !910}
!907 = !DILocalVariable(name: "handle", arg: 1, scope: !903, file: !3, line: 136, type: !14)
!908 = !DILocalVariable(name: "pathname", arg: 2, scope: !903, file: !3, line: 136, type: !33)
!909 = !DILocalVariable(name: "status", scope: !903, file: !3, line: 138, type: !6)
!910 = !DILocalVariable(name: "mutex_obj", scope: !903, file: !3, line: 139, type: !45)
!911 = !DILocation(line: 136, column: 44, scope: !903)
!912 = !DILocation(line: 136, column: 64, scope: !903)
!913 = !DILocation(line: 138, column: 2, scope: !903)
!914 = !DILocation(line: 138, column: 14, scope: !903)
!915 = !DILocation(line: 139, column: 2, scope: !903)
!916 = !DILocation(line: 139, column: 29, scope: !903)
!917 = !DILocation(line: 143, column: 36, scope: !903)
!918 = !DILocation(line: 143, column: 44, scope: !903)
!919 = !DILocation(line: 143, column: 11, scope: !903)
!920 = !DILocation(line: 143, column: 9, scope: !903)
!921 = !DILocation(line: 144, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !903, file: !3, line: 144, column: 6)
!923 = !DILocation(line: 144, column: 6, scope: !903)
!924 = !DILocation(line: 145, column: 11, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !3, line: 144, column: 28)
!926 = !DILocation(line: 145, column: 3, scope: !925)
!927 = !DILocation(line: 150, column: 2, scope: !903)
!928 = !DILocation(line: 151, column: 2, scope: !903)
!929 = !DILocation(line: 152, column: 1, scope: !903)
!930 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !900, file: !900, line: 140, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DISubroutineType(types: !932)
!932 = !{!6, !5, !8}
!933 = !DISubprogram(name: "acpi_get_handle", scope: !934, file: !934, line: 527, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!935 = !DISubroutineType(types: !936)
!936 = !{!6, !14, !937, !13}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!939 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !940, file: !940, line: 298, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!941 = !DISubroutineType(types: !942)
!942 = !{!45, !100}
