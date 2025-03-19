; ModuleID = 'sound/hda/array.c'
source_filename = "sound/hda/array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_array_new: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_array_new ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_array_free: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_array_free ; .previous"

%struct.snd_array = type { i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable_snd_array_new295 = internal global ptr @snd_array_new, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_snd_array_free296 = internal global ptr @snd_array_free, section ".discard.addressable", align 8, !dbg !10
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_snd_array_new295, ptr @__UNIQUE_ID___addressable_snd_array_free296], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_array_new(ptr noundef %array) #0 align 16 !dbg !21 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %num = alloca i32, align 4
  %oldsize = alloca i32, align 4
  %size = alloca i32, align 4
  %nlist = alloca ptr, align 8
  %__ret_warn_on17 = alloca i32, align 4
  %tmp24 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !34, metadata !DIExpression()), !dbg !48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !49
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !35, metadata !DIExpression()), !dbg !49
  %0 = load ptr, ptr %array.addr, align 8, !dbg !49
  %elem_size = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 2, !dbg !49
  %1 = load i32, ptr %elem_size, align 8, !dbg !49
  %tobool = icmp ne i32 %1, 0, !dbg !49
  %lnot = xor i1 %tobool, true, !dbg !49
  %lnot1 = xor i1 %lnot, true, !dbg !49
  %lnot2 = xor i1 %lnot1, true, !dbg !49
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !49
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !49
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !49
  %tobool3 = icmp ne i32 %2, 0, !dbg !49
  %lnot4 = xor i1 %tobool3, true, !dbg !49
  %lnot6 = xor i1 %lnot4, true, !dbg !49
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !49
  %conv = sext i32 %lnot.ext7 to i64, !dbg !49
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !49
  store i64 %expval, ptr %tmp, align 8, !dbg !49
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !50
  %3 = load i64, ptr %tmp, align 8, !dbg !49
  %tobool8 = icmp ne i64 %3, 0, !dbg !50
  br i1 %tobool8, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !52
  br label %return, !dbg !52

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %array.addr, align 8, !dbg !53
  %used = getelementptr inbounds %struct.snd_array, ptr %4, i32 0, i32 0, !dbg !54
  %5 = load i32, ptr %used, align 8, !dbg !54
  %6 = load ptr, ptr %array.addr, align 8, !dbg !55
  %alloced = getelementptr inbounds %struct.snd_array, ptr %6, i32 0, i32 1, !dbg !56
  %7 = load i32, ptr %alloced, align 4, !dbg !56
  %cmp = icmp uge i32 %5, %7, !dbg !57
  br i1 %cmp, label %if.then10, label %if.end45, !dbg !58

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #8, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %num, metadata !39, metadata !DIExpression()), !dbg !60
  %8 = load ptr, ptr %array.addr, align 8, !dbg !61
  %alloced11 = getelementptr inbounds %struct.snd_array, ptr %8, i32 0, i32 1, !dbg !62
  %9 = load i32, ptr %alloced11, align 4, !dbg !62
  %10 = load ptr, ptr %array.addr, align 8, !dbg !63
  %alloc_align = getelementptr inbounds %struct.snd_array, ptr %10, i32 0, i32 3, !dbg !64
  %11 = load i32, ptr %alloc_align, align 4, !dbg !64
  %add = add i32 %9, %11, !dbg !65
  store i32 %add, ptr %num, align 4, !dbg !60
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldsize) #8, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %oldsize, metadata !42, metadata !DIExpression()), !dbg !67
  %12 = load ptr, ptr %array.addr, align 8, !dbg !68
  %alloced12 = getelementptr inbounds %struct.snd_array, ptr %12, i32 0, i32 1, !dbg !69
  %13 = load i32, ptr %alloced12, align 4, !dbg !69
  %14 = load ptr, ptr %array.addr, align 8, !dbg !70
  %elem_size13 = getelementptr inbounds %struct.snd_array, ptr %14, i32 0, i32 2, !dbg !71
  %15 = load i32, ptr %elem_size13, align 8, !dbg !71
  %mul = mul i32 %13, %15, !dbg !72
  store i32 %mul, ptr %oldsize, align 4, !dbg !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #8, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %size, metadata !43, metadata !DIExpression()), !dbg !74
  %16 = load i32, ptr %num, align 4, !dbg !75
  %add14 = add i32 %16, 1, !dbg !76
  %17 = load ptr, ptr %array.addr, align 8, !dbg !77
  %elem_size15 = getelementptr inbounds %struct.snd_array, ptr %17, i32 0, i32 2, !dbg !78
  %18 = load i32, ptr %elem_size15, align 8, !dbg !78
  %mul16 = mul i32 %add14, %18, !dbg !79
  store i32 %mul16, ptr %size, align 4, !dbg !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %nlist) #8, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %nlist, metadata !44, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on17) #8, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on17, metadata !45, metadata !DIExpression()), !dbg !82
  %19 = load i32, ptr %num, align 4, !dbg !82
  %cmp18 = icmp sge i32 %19, 4096, !dbg !82
  %lnot20 = xor i1 %cmp18, true, !dbg !82
  %lnot22 = xor i1 %lnot20, true, !dbg !82
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !82
  store i32 %lnot.ext23, ptr %__ret_warn_on17, align 4, !dbg !82
  %20 = load i32, ptr %__ret_warn_on17, align 4, !dbg !82
  %tobool25 = icmp ne i32 %20, 0, !dbg !82
  %lnot26 = xor i1 %tobool25, true, !dbg !82
  %lnot28 = xor i1 %lnot26, true, !dbg !82
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !82
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !82
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !82
  store i64 %expval31, ptr %tmp24, align 8, !dbg !82
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on17) #8, !dbg !83
  %21 = load i64, ptr %tmp24, align 8, !dbg !82
  %tobool32 = icmp ne i64 %21, 0, !dbg !83
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !84

if.then33:                                        ; preds = %if.then10
  store ptr null, ptr %retval, align 8, !dbg !85
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !85

if.end34:                                         ; preds = %if.then10
  %22 = load ptr, ptr %array.addr, align 8, !dbg !86
  %list = getelementptr inbounds %struct.snd_array, ptr %22, i32 0, i32 4, !dbg !87
  %23 = load ptr, ptr %list, align 8, !dbg !87
  %24 = load i32, ptr %size, align 4, !dbg !88
  %conv35 = sext i32 %24 to i64, !dbg !88
  %call = call ptr @krealloc(ptr noundef %23, i64 noundef %conv35, i32 noundef 3264) #9, !dbg !89
  store ptr %call, ptr %nlist, align 8, !dbg !90
  %25 = load ptr, ptr %nlist, align 8, !dbg !91
  %tobool36 = icmp ne ptr %25, null, !dbg !91
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !93

if.then37:                                        ; preds = %if.end34
  store ptr null, ptr %retval, align 8, !dbg !94
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !94

if.end38:                                         ; preds = %if.end34
  %26 = load ptr, ptr %nlist, align 8, !dbg !95
  %27 = load i32, ptr %oldsize, align 4, !dbg !96
  %idx.ext = sext i32 %27 to i64, !dbg !97
  %add.ptr = getelementptr i8, ptr %26, i64 %idx.ext, !dbg !97
  %28 = load i32, ptr %size, align 4, !dbg !98
  %29 = load i32, ptr %oldsize, align 4, !dbg !99
  %sub = sub i32 %28, %29, !dbg !100
  %conv39 = sext i32 %sub to i64, !dbg !98
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv39, i1 false), !dbg !101
  %30 = load ptr, ptr %nlist, align 8, !dbg !102
  %31 = load ptr, ptr %array.addr, align 8, !dbg !103
  %list40 = getelementptr inbounds %struct.snd_array, ptr %31, i32 0, i32 4, !dbg !104
  store ptr %30, ptr %list40, align 8, !dbg !105
  %32 = load i32, ptr %num, align 4, !dbg !106
  %33 = load ptr, ptr %array.addr, align 8, !dbg !107
  %alloced41 = getelementptr inbounds %struct.snd_array, ptr %33, i32 0, i32 1, !dbg !108
  store i32 %32, ptr %alloced41, align 4, !dbg !109
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !110
  br label %cleanup, !dbg !110

cleanup:                                          ; preds = %if.end38, %if.then37, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %nlist) #8, !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #8, !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldsize) #8, !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #8, !dbg !110
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end45, !dbg !111

if.end45:                                         ; preds = %cleanup.cont, %if.end
  %34 = load ptr, ptr %array.addr, align 8, !dbg !112
  %35 = load ptr, ptr %array.addr, align 8, !dbg !113
  %used46 = getelementptr inbounds %struct.snd_array, ptr %35, i32 0, i32 0, !dbg !114
  %36 = load i32, ptr %used46, align 8, !dbg !115
  %inc = add i32 %36, 1, !dbg !115
  store i32 %inc, ptr %used46, align 8, !dbg !115
  %call47 = call ptr @snd_array_elem(ptr noundef %34, i32 noundef %36) #10, !dbg !116
  store ptr %call47, ptr %retval, align 8, !dbg !117
  br label %return, !dbg !117

return:                                           ; preds = %if.end45, %cleanup, %if.then
  %37 = load ptr, ptr %retval, align 8, !dbg !118
  ret ptr %37, !dbg !118

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !119 dso_local ptr @krealloc(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @snd_array_elem(ptr noundef %array, i32 noundef %idx) #6 align 16 !dbg !130 {
entry:
  %array.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !134, metadata !DIExpression()), !dbg !136
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !135, metadata !DIExpression()), !dbg !137
  %0 = load ptr, ptr %array.addr, align 8, !dbg !138
  %list = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 4, !dbg !139
  %1 = load ptr, ptr %list, align 8, !dbg !139
  %2 = load i32, ptr %idx.addr, align 4, !dbg !140
  %3 = load ptr, ptr %array.addr, align 8, !dbg !141
  %elem_size = getelementptr inbounds %struct.snd_array, ptr %3, i32 0, i32 2, !dbg !142
  %4 = load i32, ptr %elem_size, align 8, !dbg !142
  %mul = mul i32 %2, %4, !dbg !143
  %idx.ext = zext i32 %mul to i64, !dbg !144
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !144
  ret ptr %add.ptr, !dbg !145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_array_free(ptr noundef %array) #0 align 16 !dbg !146 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load ptr, ptr %array.addr, align 8, !dbg !152
  %list = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 4, !dbg !153
  %1 = load ptr, ptr %list, align 8, !dbg !153
  call void @kfree(ptr noundef %1) #10, !dbg !154
  %2 = load ptr, ptr %array.addr, align 8, !dbg !155
  %used = getelementptr inbounds %struct.snd_array, ptr %2, i32 0, i32 0, !dbg !156
  store i32 0, ptr %used, align 8, !dbg !157
  %3 = load ptr, ptr %array.addr, align 8, !dbg !158
  %alloced = getelementptr inbounds %struct.snd_array, ptr %3, i32 0, i32 1, !dbg !159
  store i32 0, ptr %alloced, align 4, !dbg !160
  %4 = load ptr, ptr %array.addr, align 8, !dbg !161
  %list1 = getelementptr inbounds %struct.snd_array, ptr %4, i32 0, i32 4, !dbg !162
  store ptr null, ptr %list1, align 8, !dbg !163
  ret void, !dbg !164
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !165 dso_local void @kfree(ptr noundef) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone allocsize(1) }
attributes #10 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_array_new295", scope: !2, file: !3, line: 39, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/hda/.array.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/hda/snd-hda-core\22 -D KBUILD_BASENAME=\22array\22 -D KBUILD_MODNAME=\22snd_hda_core\22 -D __KBUILD_MODNAME=kmod_snd_hda_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/hda/array.ll sound/hda/array.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/hda/array.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32daecc9d7ef485a975d01be37abc2b5")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !7, line: 154, baseType: !8)
!7 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!0, !10}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_array_free296", scope: !2, file: !3, line: 52, type: !5, isLocal: true, isDefinition: true)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 8, !"cf-protection-branch", i32 1}
!16 = !{i32 4, !"function_return_thunk_extern", i32 1}
!17 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!18 = !{i32 1, !"Code Model", i32 2}
!19 = !{i32 1, !"override-stack-alignment", i32 8}
!20 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!21 = distinct !DISubprogram(name: "snd_array_new", scope: !3, file: !3, line: 19, type: !22, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!22 = !DISubroutineType(types: !23)
!23 = !{!5, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_array", file: !26, line: 41, size: 192, elements: !27)
!26 = !DIFile(filename: "./include/sound/hdaudio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "507832bfa56b8fb9054739385c0935fd")
!27 = !{!28, !29, !30, !31, !32}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !25, file: !26, line: 42, baseType: !8, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !25, file: !26, line: 43, baseType: !8, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !25, file: !26, line: 44, baseType: !8, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_align", scope: !25, file: !26, line: 45, baseType: !8, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !25, file: !26, line: 46, baseType: !5, size: 64, offset: 128)
!33 = !{!34, !35, !39, !42, !43, !44, !45}
!34 = !DILocalVariable(name: "array", arg: 1, scope: !21, file: !3, line: 19, type: !24)
!35 = !DILocalVariable(name: "__ret_warn_on", scope: !36, file: !3, line: 21, type: !38)
!36 = distinct !DILexicalBlock(scope: !37, file: !3, line: 21, column: 6)
!37 = distinct !DILexicalBlock(scope: !21, file: !3, line: 21, column: 6)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DILocalVariable(name: "num", scope: !40, file: !3, line: 24, type: !38)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 23, column: 37)
!41 = distinct !DILexicalBlock(scope: !21, file: !3, line: 23, column: 6)
!42 = !DILocalVariable(name: "oldsize", scope: !40, file: !3, line: 25, type: !38)
!43 = !DILocalVariable(name: "size", scope: !40, file: !3, line: 26, type: !38)
!44 = !DILocalVariable(name: "nlist", scope: !40, file: !3, line: 27, type: !5)
!45 = !DILocalVariable(name: "__ret_warn_on", scope: !46, file: !3, line: 28, type: !38)
!46 = distinct !DILexicalBlock(scope: !47, file: !3, line: 28, column: 7)
!47 = distinct !DILexicalBlock(scope: !40, file: !3, line: 28, column: 7)
!48 = !DILocation(line: 19, column: 39, scope: !21)
!49 = !DILocation(line: 21, column: 6, scope: !36)
!50 = !DILocation(line: 21, column: 6, scope: !37)
!51 = !DILocation(line: 21, column: 6, scope: !21)
!52 = !DILocation(line: 22, column: 3, scope: !37)
!53 = !DILocation(line: 23, column: 6, scope: !41)
!54 = !DILocation(line: 23, column: 13, scope: !41)
!55 = !DILocation(line: 23, column: 21, scope: !41)
!56 = !DILocation(line: 23, column: 28, scope: !41)
!57 = !DILocation(line: 23, column: 18, scope: !41)
!58 = !DILocation(line: 23, column: 6, scope: !21)
!59 = !DILocation(line: 24, column: 3, scope: !40)
!60 = !DILocation(line: 24, column: 7, scope: !40)
!61 = !DILocation(line: 24, column: 13, scope: !40)
!62 = !DILocation(line: 24, column: 20, scope: !40)
!63 = !DILocation(line: 24, column: 30, scope: !40)
!64 = !DILocation(line: 24, column: 37, scope: !40)
!65 = !DILocation(line: 24, column: 28, scope: !40)
!66 = !DILocation(line: 25, column: 3, scope: !40)
!67 = !DILocation(line: 25, column: 7, scope: !40)
!68 = !DILocation(line: 25, column: 17, scope: !40)
!69 = !DILocation(line: 25, column: 24, scope: !40)
!70 = !DILocation(line: 25, column: 34, scope: !40)
!71 = !DILocation(line: 25, column: 41, scope: !40)
!72 = !DILocation(line: 25, column: 32, scope: !40)
!73 = !DILocation(line: 26, column: 3, scope: !40)
!74 = !DILocation(line: 26, column: 7, scope: !40)
!75 = !DILocation(line: 26, column: 15, scope: !40)
!76 = !DILocation(line: 26, column: 19, scope: !40)
!77 = !DILocation(line: 26, column: 26, scope: !40)
!78 = !DILocation(line: 26, column: 33, scope: !40)
!79 = !DILocation(line: 26, column: 24, scope: !40)
!80 = !DILocation(line: 27, column: 3, scope: !40)
!81 = !DILocation(line: 27, column: 9, scope: !40)
!82 = !DILocation(line: 28, column: 7, scope: !46)
!83 = !DILocation(line: 28, column: 7, scope: !47)
!84 = !DILocation(line: 28, column: 7, scope: !40)
!85 = !DILocation(line: 29, column: 4, scope: !47)
!86 = !DILocation(line: 30, column: 20, scope: !40)
!87 = !DILocation(line: 30, column: 27, scope: !40)
!88 = !DILocation(line: 30, column: 33, scope: !40)
!89 = !DILocation(line: 30, column: 11, scope: !40)
!90 = !DILocation(line: 30, column: 9, scope: !40)
!91 = !DILocation(line: 31, column: 8, scope: !92)
!92 = distinct !DILexicalBlock(scope: !40, file: !3, line: 31, column: 7)
!93 = !DILocation(line: 31, column: 7, scope: !40)
!94 = !DILocation(line: 32, column: 4, scope: !92)
!95 = !DILocation(line: 33, column: 10, scope: !40)
!96 = !DILocation(line: 33, column: 18, scope: !40)
!97 = !DILocation(line: 33, column: 16, scope: !40)
!98 = !DILocation(line: 33, column: 30, scope: !40)
!99 = !DILocation(line: 33, column: 37, scope: !40)
!100 = !DILocation(line: 33, column: 35, scope: !40)
!101 = !DILocation(line: 33, column: 3, scope: !40)
!102 = !DILocation(line: 34, column: 17, scope: !40)
!103 = !DILocation(line: 34, column: 3, scope: !40)
!104 = !DILocation(line: 34, column: 10, scope: !40)
!105 = !DILocation(line: 34, column: 15, scope: !40)
!106 = !DILocation(line: 35, column: 20, scope: !40)
!107 = !DILocation(line: 35, column: 3, scope: !40)
!108 = !DILocation(line: 35, column: 10, scope: !40)
!109 = !DILocation(line: 35, column: 18, scope: !40)
!110 = !DILocation(line: 36, column: 2, scope: !41)
!111 = !DILocation(line: 36, column: 2, scope: !40)
!112 = !DILocation(line: 37, column: 24, scope: !21)
!113 = !DILocation(line: 37, column: 31, scope: !21)
!114 = !DILocation(line: 37, column: 38, scope: !21)
!115 = !DILocation(line: 37, column: 42, scope: !21)
!116 = !DILocation(line: 37, column: 9, scope: !21)
!117 = !DILocation(line: 37, column: 2, scope: !21)
!118 = !DILocation(line: 38, column: 1, scope: !21)
!119 = !DISubprogram(name: "krealloc", scope: !120, file: !120, line: 226, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!121 = !DISubroutineType(types: !122)
!122 = !{!5, !123, !125, !6}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 61, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !127, line: 72, baseType: !128)
!127 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !127, line: 16, baseType: !129)
!129 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!130 = distinct !DISubprogram(name: "snd_array_elem", scope: !26, file: !26, line: 693, type: !131, scopeLine: 694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!5, !24, !8}
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "array", arg: 1, scope: !130, file: !26, line: 693, type: !24)
!135 = !DILocalVariable(name: "idx", arg: 2, scope: !130, file: !26, line: 693, type: !8)
!136 = !DILocation(line: 693, column: 54, scope: !130)
!137 = !DILocation(line: 693, column: 74, scope: !130)
!138 = !DILocation(line: 695, column: 9, scope: !130)
!139 = !DILocation(line: 695, column: 16, scope: !130)
!140 = !DILocation(line: 695, column: 23, scope: !130)
!141 = !DILocation(line: 695, column: 29, scope: !130)
!142 = !DILocation(line: 695, column: 36, scope: !130)
!143 = !DILocation(line: 695, column: 27, scope: !130)
!144 = !DILocation(line: 695, column: 21, scope: !130)
!145 = !DILocation(line: 695, column: 2, scope: !130)
!146 = distinct !DISubprogram(name: "snd_array_free", scope: !3, file: !3, line: 45, type: !147, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !24}
!149 = !{!150}
!150 = !DILocalVariable(name: "array", arg: 1, scope: !146, file: !3, line: 45, type: !24)
!151 = !DILocation(line: 45, column: 39, scope: !146)
!152 = !DILocation(line: 47, column: 8, scope: !146)
!153 = !DILocation(line: 47, column: 15, scope: !146)
!154 = !DILocation(line: 47, column: 2, scope: !146)
!155 = !DILocation(line: 48, column: 2, scope: !146)
!156 = !DILocation(line: 48, column: 9, scope: !146)
!157 = !DILocation(line: 48, column: 14, scope: !146)
!158 = !DILocation(line: 49, column: 2, scope: !146)
!159 = !DILocation(line: 49, column: 9, scope: !146)
!160 = !DILocation(line: 49, column: 17, scope: !146)
!161 = !DILocation(line: 50, column: 2, scope: !146)
!162 = !DILocation(line: 50, column: 9, scope: !146)
!163 = !DILocation(line: 50, column: 14, scope: !146)
!164 = !DILocation(line: 51, column: 1, scope: !146)
!165 = !DISubprogram(name: "kfree", scope: !120, file: !120, line: 227, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !123}
