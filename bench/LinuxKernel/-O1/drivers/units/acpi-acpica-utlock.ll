; ModuleID = 'drivers/acpi/acpica/utlock.c'
source_filename = "drivers/acpi/acpica/utlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_rw_lock = type { ptr, ptr, i32 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_create_rw_lock(ptr noundef %lock) #0 align 16 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !31, metadata !DIExpression()), !dbg !33
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %status, metadata !32, metadata !DIExpression()), !dbg !35
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !36
  %num_readers = getelementptr inbounds %struct.acpi_rw_lock, ptr %0, i32 0, i32 2, !dbg !37
  store i32 0, ptr %num_readers, align 8, !dbg !38
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !39
  %reader_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %1, i32 0, i32 1, !dbg !39
  %call = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %reader_mutex) #5, !dbg !39
  store i32 %call, ptr %status, align 4, !dbg !40
  %2 = load i32, ptr %status, align 4, !dbg !41
  %tobool = icmp ne i32 %2, 0, !dbg !41
  br i1 %tobool, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !44
  store i32 %3, ptr %retval, align 4, !dbg !46
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !46

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !47
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %4, i32 0, i32 0, !dbg !47
  %call1 = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %writer_mutex) #5, !dbg !47
  store i32 %call1, ptr %status, align 4, !dbg !48
  %5 = load i32, ptr %status, align 4, !dbg !49
  store i32 %5, ptr %retval, align 4, !dbg !50
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !50

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !51
  %6 = load i32, ptr %retval, align 4, !dbg !51
  ret i32 %6, !dbg !51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !52 dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_delete_rw_lock(ptr noundef %lock) #0 align 16 !dbg !57 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !63
  %reader_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %0, i32 0, i32 1, !dbg !63
  %1 = load ptr, ptr %reader_mutex, align 8, !dbg !63
  %call = call i32 @acpi_os_delete_semaphore(ptr noundef %1) #5, !dbg !63
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !64
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %2, i32 0, i32 0, !dbg !64
  %3 = load ptr, ptr %writer_mutex, align 8, !dbg !64
  %call1 = call i32 @acpi_os_delete_semaphore(ptr noundef %3) #5, !dbg !64
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !65
  %num_readers = getelementptr inbounds %struct.acpi_rw_lock, ptr %4, i32 0, i32 2, !dbg !66
  store i32 0, ptr %num_readers, align 8, !dbg !67
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !68
  %reader_mutex2 = getelementptr inbounds %struct.acpi_rw_lock, ptr %5, i32 0, i32 1, !dbg !69
  store ptr null, ptr %reader_mutex2, align 8, !dbg !70
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !71
  %writer_mutex3 = getelementptr inbounds %struct.acpi_rw_lock, ptr %6, i32 0, i32 0, !dbg !72
  store ptr null, ptr %writer_mutex3, align 8, !dbg !73
  ret void, !dbg !74
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !75 dso_local i32 @acpi_os_delete_semaphore(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_acquire_read_lock(ptr noundef %lock) #0 align 16 !dbg !78 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !80, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %status, metadata !81, metadata !DIExpression()), !dbg !84
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !85
  %reader_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %0, i32 0, i32 1, !dbg !85
  %1 = load ptr, ptr %reader_mutex, align 8, !dbg !85
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %1, i32 noundef 1, i16 noundef zeroext -1) #5, !dbg !85
  store i32 %call, ptr %status, align 4, !dbg !86
  %2 = load i32, ptr %status, align 4, !dbg !87
  %tobool = icmp ne i32 %2, 0, !dbg !87
  br i1 %tobool, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !90
  store i32 %3, ptr %retval, align 4, !dbg !92
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !92

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !93
  %num_readers = getelementptr inbounds %struct.acpi_rw_lock, ptr %4, i32 0, i32 2, !dbg !94
  %5 = load i32, ptr %num_readers, align 8, !dbg !95
  %inc = add i32 %5, 1, !dbg !95
  store i32 %inc, ptr %num_readers, align 8, !dbg !95
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !96
  %num_readers1 = getelementptr inbounds %struct.acpi_rw_lock, ptr %6, i32 0, i32 2, !dbg !98
  %7 = load i32, ptr %num_readers1, align 8, !dbg !98
  %cmp = icmp eq i32 %7, 1, !dbg !99
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !100

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %lock.addr, align 8, !dbg !101
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %8, i32 0, i32 0, !dbg !101
  %9 = load ptr, ptr %writer_mutex, align 8, !dbg !101
  %call3 = call i32 @acpi_os_wait_semaphore(ptr noundef %9, i32 noundef 1, i16 noundef zeroext -1) #5, !dbg !101
  store i32 %call3, ptr %status, align 4, !dbg !103
  br label %if.end4, !dbg !104

if.end4:                                          ; preds = %if.then2, %if.end
  %10 = load ptr, ptr %lock.addr, align 8, !dbg !105
  %reader_mutex5 = getelementptr inbounds %struct.acpi_rw_lock, ptr %10, i32 0, i32 1, !dbg !105
  %11 = load ptr, ptr %reader_mutex5, align 8, !dbg !105
  %call6 = call i32 @acpi_os_signal_semaphore(ptr noundef %11, i32 noundef 1) #5, !dbg !105
  %12 = load i32, ptr %status, align 4, !dbg !106
  store i32 %12, ptr %retval, align 4, !dbg !107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !107

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !108
  %13 = load i32, ptr %retval, align 4, !dbg !108
  ret i32 %13, !dbg !108
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !109 dso_local i32 @acpi_os_wait_semaphore(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !115 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_release_read_lock(ptr noundef %lock) #0 align 16 !dbg !118 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !120, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %status, metadata !121, metadata !DIExpression()), !dbg !124
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !125
  %reader_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %0, i32 0, i32 1, !dbg !125
  %1 = load ptr, ptr %reader_mutex, align 8, !dbg !125
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %1, i32 noundef 1, i16 noundef zeroext -1) #5, !dbg !125
  store i32 %call, ptr %status, align 4, !dbg !126
  %2 = load i32, ptr %status, align 4, !dbg !127
  %tobool = icmp ne i32 %2, 0, !dbg !127
  br i1 %tobool, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !130
  store i32 %3, ptr %retval, align 4, !dbg !132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !132

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !133
  %num_readers = getelementptr inbounds %struct.acpi_rw_lock, ptr %4, i32 0, i32 2, !dbg !134
  %5 = load i32, ptr %num_readers, align 8, !dbg !135
  %dec = add i32 %5, -1, !dbg !135
  store i32 %dec, ptr %num_readers, align 8, !dbg !135
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !136
  %num_readers1 = getelementptr inbounds %struct.acpi_rw_lock, ptr %6, i32 0, i32 2, !dbg !138
  %7 = load i32, ptr %num_readers1, align 8, !dbg !138
  %cmp = icmp eq i32 %7, 0, !dbg !139
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !140

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %lock.addr, align 8, !dbg !141
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %8, i32 0, i32 0, !dbg !141
  %9 = load ptr, ptr %writer_mutex, align 8, !dbg !141
  %call3 = call i32 @acpi_os_signal_semaphore(ptr noundef %9, i32 noundef 1) #5, !dbg !141
  br label %if.end4, !dbg !143

if.end4:                                          ; preds = %if.then2, %if.end
  %10 = load ptr, ptr %lock.addr, align 8, !dbg !144
  %reader_mutex5 = getelementptr inbounds %struct.acpi_rw_lock, ptr %10, i32 0, i32 1, !dbg !144
  %11 = load ptr, ptr %reader_mutex5, align 8, !dbg !144
  %call6 = call i32 @acpi_os_signal_semaphore(ptr noundef %11, i32 noundef 1) #5, !dbg !144
  %12 = load i32, ptr %status, align 4, !dbg !145
  store i32 %12, ptr %retval, align 4, !dbg !146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !146

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !147
  %13 = load i32, ptr %retval, align 4, !dbg !147
  ret i32 %13, !dbg !147
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_acquire_write_lock(ptr noundef %lock) #0 align 16 !dbg !148 {
entry:
  %lock.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !150, metadata !DIExpression()), !dbg !152
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %status, metadata !151, metadata !DIExpression()), !dbg !154
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !155
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %0, i32 0, i32 0, !dbg !155
  %1 = load ptr, ptr %writer_mutex, align 8, !dbg !155
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %1, i32 noundef 1, i16 noundef zeroext -1) #5, !dbg !155
  store i32 %call, ptr %status, align 4, !dbg !156
  %2 = load i32, ptr %status, align 4, !dbg !157
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !158
  ret i32 %2, !dbg !159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_release_write_lock(ptr noundef %lock) #0 align 16 !dbg !160 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !164
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, ptr %0, i32 0, i32 0, !dbg !164
  %1 = load ptr, ptr %writer_mutex, align 8, !dbg !164
  %call = call i32 @acpi_os_signal_semaphore(ptr noundef %1, i32 noundef 1) #5, !dbg !164
  ret void, !dbg !165
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utlock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utlock\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utlock.ll drivers/acpi/acpica/utlock.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utlock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6811f74c56b6c39fd81b0d008b5db1eb")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 8, !"cf-protection-branch", i32 1}
!8 = !{i32 4, !"function_return_thunk_extern", i32 1}
!9 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!10 = !{i32 1, !"Code Model", i32 2}
!11 = !{i32 1, !"override-stack-alignment", i32 8}
!12 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!13 = distinct !DISubprogram(name: "acpi_ut_create_rw_lock", scope: !1, file: !1, line: 28, type: !14, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !23}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !17, line: 421, baseType: !18)
!17 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rw_lock", file: !25, line: 58, size: 192, elements: !26)
!25 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!26 = !{!27, !28, !29}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "writer_mutex", scope: !24, file: !25, line: 59, baseType: !3, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "reader_mutex", scope: !24, file: !25, line: 60, baseType: !3, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "num_readers", scope: !24, file: !25, line: 61, baseType: !18, size: 32, offset: 128)
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "lock", arg: 1, scope: !13, file: !1, line: 28, type: !23)
!32 = !DILocalVariable(name: "status", scope: !13, file: !1, line: 30, type: !16)
!33 = !DILocation(line: 28, column: 57, scope: !13)
!34 = !DILocation(line: 30, column: 2, scope: !13)
!35 = !DILocation(line: 30, column: 14, scope: !13)
!36 = !DILocation(line: 32, column: 2, scope: !13)
!37 = !DILocation(line: 32, column: 8, scope: !13)
!38 = !DILocation(line: 32, column: 20, scope: !13)
!39 = !DILocation(line: 33, column: 11, scope: !13)
!40 = !DILocation(line: 33, column: 9, scope: !13)
!41 = !DILocation(line: 34, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !13, file: !1, line: 34, column: 6)
!43 = !DILocation(line: 34, column: 6, scope: !13)
!44 = !DILocation(line: 35, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 34, column: 28)
!46 = !DILocation(line: 35, column: 3, scope: !45)
!47 = !DILocation(line: 38, column: 11, scope: !13)
!48 = !DILocation(line: 38, column: 9, scope: !13)
!49 = !DILocation(line: 39, column: 10, scope: !13)
!50 = !DILocation(line: 39, column: 2, scope: !13)
!51 = !DILocation(line: 40, column: 1, scope: !13)
!52 = !DISubprogram(name: "acpi_os_create_semaphore", scope: !53, file: !53, line: 126, type: !54, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!53 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!54 = !DISubroutineType(types: !55)
!55 = !{!16, !18, !18, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!57 = distinct !DISubprogram(name: "acpi_ut_delete_rw_lock", scope: !1, file: !1, line: 42, type: !58, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !23}
!60 = !{!61}
!61 = !DILocalVariable(name: "lock", arg: 1, scope: !57, file: !1, line: 42, type: !23)
!62 = !DILocation(line: 42, column: 50, scope: !57)
!63 = !DILocation(line: 45, column: 2, scope: !57)
!64 = !DILocation(line: 46, column: 2, scope: !57)
!65 = !DILocation(line: 48, column: 2, scope: !57)
!66 = !DILocation(line: 48, column: 8, scope: !57)
!67 = !DILocation(line: 48, column: 20, scope: !57)
!68 = !DILocation(line: 49, column: 2, scope: !57)
!69 = !DILocation(line: 49, column: 8, scope: !57)
!70 = !DILocation(line: 49, column: 21, scope: !57)
!71 = !DILocation(line: 50, column: 2, scope: !57)
!72 = !DILocation(line: 50, column: 8, scope: !57)
!73 = !DILocation(line: 50, column: 21, scope: !57)
!74 = !DILocation(line: 51, column: 1, scope: !57)
!75 = !DISubprogram(name: "acpi_os_delete_semaphore", scope: !53, file: !53, line: 131, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!76 = !DISubroutineType(types: !77)
!77 = !{!16, !3}
!78 = distinct !DISubprogram(name: "acpi_ut_acquire_read_lock", scope: !1, file: !1, line: 71, type: !14, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!79 = !{!80, !81}
!80 = !DILocalVariable(name: "lock", arg: 1, scope: !78, file: !1, line: 71, type: !23)
!81 = !DILocalVariable(name: "status", scope: !78, file: !1, line: 73, type: !16)
!82 = !DILocation(line: 71, column: 60, scope: !78)
!83 = !DILocation(line: 73, column: 2, scope: !78)
!84 = !DILocation(line: 73, column: 14, scope: !78)
!85 = !DILocation(line: 75, column: 11, scope: !78)
!86 = !DILocation(line: 75, column: 9, scope: !78)
!87 = !DILocation(line: 76, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !78, file: !1, line: 76, column: 6)
!89 = !DILocation(line: 76, column: 6, scope: !78)
!90 = !DILocation(line: 77, column: 11, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 76, column: 28)
!92 = !DILocation(line: 77, column: 3, scope: !91)
!93 = !DILocation(line: 82, column: 2, scope: !78)
!94 = !DILocation(line: 82, column: 8, scope: !78)
!95 = !DILocation(line: 82, column: 19, scope: !78)
!96 = !DILocation(line: 83, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !78, file: !1, line: 83, column: 6)
!98 = !DILocation(line: 83, column: 12, scope: !97)
!99 = !DILocation(line: 83, column: 24, scope: !97)
!100 = !DILocation(line: 83, column: 6, scope: !78)
!101 = !DILocation(line: 85, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 83, column: 30)
!103 = !DILocation(line: 84, column: 10, scope: !102)
!104 = !DILocation(line: 87, column: 2, scope: !102)
!105 = !DILocation(line: 89, column: 2, scope: !78)
!106 = !DILocation(line: 90, column: 10, scope: !78)
!107 = !DILocation(line: 90, column: 2, scope: !78)
!108 = !DILocation(line: 91, column: 1, scope: !78)
!109 = !DISubprogram(name: "acpi_os_wait_semaphore", scope: !53, file: !53, line: 136, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{!16, !3, !18, !112}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !114)
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !53, file: !53, line: 140, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubroutineType(types: !117)
!117 = !{!16, !3, !18}
!118 = distinct !DISubprogram(name: "acpi_ut_release_read_lock", scope: !1, file: !1, line: 93, type: !14, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(name: "lock", arg: 1, scope: !118, file: !1, line: 93, type: !23)
!121 = !DILocalVariable(name: "status", scope: !118, file: !1, line: 95, type: !16)
!122 = !DILocation(line: 93, column: 60, scope: !118)
!123 = !DILocation(line: 95, column: 2, scope: !118)
!124 = !DILocation(line: 95, column: 14, scope: !118)
!125 = !DILocation(line: 97, column: 11, scope: !118)
!126 = !DILocation(line: 97, column: 9, scope: !118)
!127 = !DILocation(line: 98, column: 6, scope: !128)
!128 = distinct !DILexicalBlock(scope: !118, file: !1, line: 98, column: 6)
!129 = !DILocation(line: 98, column: 6, scope: !118)
!130 = !DILocation(line: 99, column: 11, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 98, column: 28)
!132 = !DILocation(line: 99, column: 3, scope: !131)
!133 = !DILocation(line: 104, column: 2, scope: !118)
!134 = !DILocation(line: 104, column: 8, scope: !118)
!135 = !DILocation(line: 104, column: 19, scope: !118)
!136 = !DILocation(line: 105, column: 6, scope: !137)
!137 = distinct !DILexicalBlock(scope: !118, file: !1, line: 105, column: 6)
!138 = !DILocation(line: 105, column: 12, scope: !137)
!139 = !DILocation(line: 105, column: 24, scope: !137)
!140 = !DILocation(line: 105, column: 6, scope: !118)
!141 = !DILocation(line: 106, column: 3, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 105, column: 30)
!143 = !DILocation(line: 107, column: 2, scope: !142)
!144 = !DILocation(line: 109, column: 2, scope: !118)
!145 = !DILocation(line: 110, column: 10, scope: !118)
!146 = !DILocation(line: 110, column: 2, scope: !118)
!147 = !DILocation(line: 111, column: 1, scope: !118)
!148 = distinct !DISubprogram(name: "acpi_ut_acquire_write_lock", scope: !1, file: !1, line: 129, type: !14, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "lock", arg: 1, scope: !148, file: !1, line: 129, type: !23)
!151 = !DILocalVariable(name: "status", scope: !148, file: !1, line: 131, type: !16)
!152 = !DILocation(line: 129, column: 61, scope: !148)
!153 = !DILocation(line: 131, column: 2, scope: !148)
!154 = !DILocation(line: 131, column: 14, scope: !148)
!155 = !DILocation(line: 133, column: 11, scope: !148)
!156 = !DILocation(line: 133, column: 9, scope: !148)
!157 = !DILocation(line: 134, column: 10, scope: !148)
!158 = !DILocation(line: 135, column: 1, scope: !148)
!159 = !DILocation(line: 134, column: 2, scope: !148)
!160 = distinct !DISubprogram(name: "acpi_ut_release_write_lock", scope: !1, file: !1, line: 137, type: !58, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !161)
!161 = !{!162}
!162 = !DILocalVariable(name: "lock", arg: 1, scope: !160, file: !1, line: 137, type: !23)
!163 = !DILocation(line: 137, column: 54, scope: !160)
!164 = !DILocation(line: 140, column: 2, scope: !160)
!165 = !DILocation(line: 141, column: 1, scope: !160)
