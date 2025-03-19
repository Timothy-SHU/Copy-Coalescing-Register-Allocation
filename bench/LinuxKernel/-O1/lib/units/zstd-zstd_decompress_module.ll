; ModuleID = 'lib/zstd/zstd_decompress_module.c'
source_filename = "lib/zstd/zstd_decompress_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_is_error: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_is_error ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_get_error_code: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_get_error_code ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_get_error_name: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_get_error_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_dctx_workspace_bound: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_dctx_workspace_bound ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_init_dctx: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_init_dctx ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_decompress_dctx: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_decompress_dctx ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_dstream_workspace_bound: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_dstream_workspace_bound ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_init_dstream: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_init_dstream ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_reset_dstream: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_reset_dstream ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_decompress_stream: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_decompress_stream ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_find_frame_compressed_size: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_find_frame_compressed_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zstd_get_frame_header: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zstd_get_frame_header ; .previous"

@__UNIQUE_ID___addressable_zstd_is_error195 = internal global ptr @zstd_is_error, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_zstd_get_error_code196 = internal global ptr @zstd_get_error_code, section ".discard.addressable", align 8, !dbg !45
@__UNIQUE_ID___addressable_zstd_get_error_name197 = internal global ptr @zstd_get_error_name, section ".discard.addressable", align 8, !dbg !47
@__UNIQUE_ID___addressable_zstd_dctx_workspace_bound198 = internal global ptr @zstd_dctx_workspace_bound, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID___addressable_zstd_init_dctx199 = internal global ptr @zstd_init_dctx, section ".discard.addressable", align 8, !dbg !51
@__UNIQUE_ID___addressable_zstd_decompress_dctx200 = internal global ptr @zstd_decompress_dctx, section ".discard.addressable", align 8, !dbg !53
@__UNIQUE_ID___addressable_zstd_dstream_workspace_bound201 = internal global ptr @zstd_dstream_workspace_bound, section ".discard.addressable", align 8, !dbg !55
@__UNIQUE_ID___addressable_zstd_init_dstream202 = internal global ptr @zstd_init_dstream, section ".discard.addressable", align 8, !dbg !57
@__UNIQUE_ID___addressable_zstd_reset_dstream203 = internal global ptr @zstd_reset_dstream, section ".discard.addressable", align 8, !dbg !59
@__UNIQUE_ID___addressable_zstd_decompress_stream204 = internal global ptr @zstd_decompress_stream, section ".discard.addressable", align 8, !dbg !61
@__UNIQUE_ID___addressable_zstd_find_frame_compressed_size205 = internal global ptr @zstd_find_frame_compressed_size, section ".discard.addressable", align 8, !dbg !63
@__UNIQUE_ID___addressable_zstd_get_frame_header206 = internal global ptr @zstd_get_frame_header, section ".discard.addressable", align 8, !dbg !65
@__UNIQUE_ID_file207 = internal constant [46 x i8] c"zstd_decompress.file=lib/zstd/zstd_decompress\00", section ".modinfo", align 1, !dbg !67
@__UNIQUE_ID_license208 = internal constant [37 x i8] c"zstd_decompress.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !74
@__UNIQUE_ID_description209 = internal constant [46 x i8] c"zstd_decompress.description=Zstd Decompressor\00", section ".modinfo", align 1, !dbg !79
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID___addressable_zstd_is_error195, ptr @__UNIQUE_ID___addressable_zstd_get_error_code196, ptr @__UNIQUE_ID___addressable_zstd_get_error_name197, ptr @__UNIQUE_ID___addressable_zstd_dctx_workspace_bound198, ptr @__UNIQUE_ID___addressable_zstd_init_dctx199, ptr @__UNIQUE_ID___addressable_zstd_decompress_dctx200, ptr @__UNIQUE_ID___addressable_zstd_dstream_workspace_bound201, ptr @__UNIQUE_ID___addressable_zstd_init_dstream202, ptr @__UNIQUE_ID___addressable_zstd_reset_dstream203, ptr @__UNIQUE_ID___addressable_zstd_decompress_stream204, ptr @__UNIQUE_ID___addressable_zstd_find_frame_compressed_size205, ptr @__UNIQUE_ID___addressable_zstd_get_frame_header206, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__UNIQUE_ID_description209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zstd_is_error(i64 noundef %code) #0 align 16 !dbg !90 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = load i64, ptr %code.addr, align 8, !dbg !102
  %call = call i32 @ZSTD_isError(i64 noundef %0) #3, !dbg !103
  ret i32 %call, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !105 dso_local i32 @ZSTD_isError(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zstd_get_error_code(i64 noundef %code) #0 align 16 !dbg !106 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load i64, ptr %code.addr, align 8, !dbg !115
  %call = call i32 @ZSTD_getErrorCode(i64 noundef %0) #3, !dbg !116
  ret i32 %call, !dbg !117
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !118 dso_local i32 @ZSTD_getErrorCode(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @zstd_get_error_name(i64 noundef %code) #0 align 16 !dbg !121 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load i64, ptr %code.addr, align 8, !dbg !128
  %call = call ptr @ZSTD_getErrorName(i64 noundef %0) #3, !dbg !129
  ret ptr %call, !dbg !130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !131 dso_local ptr @ZSTD_getErrorName(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @zstd_dctx_workspace_bound() #0 align 16 !dbg !132 {
entry:
  %call = call i64 @ZSTD_estimateDCtxSize() #3, !dbg !135
  ret i64 %call, !dbg !136
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !137 dso_local i64 @ZSTD_estimateDCtxSize() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @zstd_init_dctx(ptr noundef %workspace, i64 noundef %workspace_size) #0 align 16 !dbg !138 {
entry:
  %retval = alloca ptr, align 8
  %workspace.addr = alloca ptr, align 8
  %workspace_size.addr = alloca i64, align 8
  store ptr %workspace, ptr %workspace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workspace.addr, metadata !146, metadata !DIExpression()), !dbg !148
  store i64 %workspace_size, ptr %workspace_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workspace_size.addr, metadata !147, metadata !DIExpression()), !dbg !149
  %0 = load ptr, ptr %workspace.addr, align 8, !dbg !150
  %cmp = icmp eq ptr %0, null, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !154
  br label %return, !dbg !154

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %workspace.addr, align 8, !dbg !155
  %2 = load i64, ptr %workspace_size.addr, align 8, !dbg !156
  %call = call ptr @ZSTD_initStaticDCtx(ptr noundef %1, i64 noundef %2) #3, !dbg !157
  store ptr %call, ptr %retval, align 8, !dbg !158
  br label %return, !dbg !158

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !159
  ret ptr %3, !dbg !159
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !160 dso_local ptr @ZSTD_initStaticDCtx(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @zstd_decompress_dctx(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dst_capacity, ptr noundef %src, i64 noundef %src_size) #0 align 16 !dbg !164 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dst_capacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %src_size.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !170, metadata !DIExpression()), !dbg !175
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !171, metadata !DIExpression()), !dbg !176
  store i64 %dst_capacity, ptr %dst_capacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_capacity.addr, metadata !172, metadata !DIExpression()), !dbg !177
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !173, metadata !DIExpression()), !dbg !178
  store i64 %src_size, ptr %src_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_size.addr, metadata !174, metadata !DIExpression()), !dbg !179
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !180
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !181
  %2 = load i64, ptr %dst_capacity.addr, align 8, !dbg !182
  %3 = load ptr, ptr %src.addr, align 8, !dbg !183
  %4 = load i64, ptr %src_size.addr, align 8, !dbg !184
  %call = call i64 @ZSTD_decompressDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #3, !dbg !185
  ret i64 %call, !dbg !186
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !187 dso_local i64 @ZSTD_decompressDCtx(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @zstd_dstream_workspace_bound(i64 noundef %max_window_size) #0 align 16 !dbg !190 {
entry:
  %max_window_size.addr = alloca i64, align 8
  store i64 %max_window_size, ptr %max_window_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_window_size.addr, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = load i64, ptr %max_window_size.addr, align 8, !dbg !196
  %call = call i64 @ZSTD_estimateDStreamSize(i64 noundef %0) #3, !dbg !197
  ret i64 %call, !dbg !198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !199 dso_local i64 @ZSTD_estimateDStreamSize(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @zstd_init_dstream(i64 noundef %max_window_size, ptr noundef %workspace, i64 noundef %workspace_size) #0 align 16 !dbg !200 {
entry:
  %retval = alloca ptr, align 8
  %max_window_size.addr = alloca i64, align 8
  %workspace.addr = alloca ptr, align 8
  %workspace_size.addr = alloca i64, align 8
  store i64 %max_window_size, ptr %max_window_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_window_size.addr, metadata !207, metadata !DIExpression()), !dbg !210
  store ptr %workspace, ptr %workspace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workspace.addr, metadata !208, metadata !DIExpression()), !dbg !211
  store i64 %workspace_size, ptr %workspace_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workspace_size.addr, metadata !209, metadata !DIExpression()), !dbg !212
  %0 = load ptr, ptr %workspace.addr, align 8, !dbg !213
  %cmp = icmp eq ptr %0, null, !dbg !215
  br i1 %cmp, label %if.then, label %if.end, !dbg !216

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !217
  br label %return, !dbg !217

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %max_window_size.addr, align 8, !dbg !218
  %2 = load ptr, ptr %workspace.addr, align 8, !dbg !219
  %3 = load i64, ptr %workspace_size.addr, align 8, !dbg !220
  %call = call ptr @ZSTD_initStaticDStream(ptr noundef %2, i64 noundef %3) #3, !dbg !221
  store ptr %call, ptr %retval, align 8, !dbg !222
  br label %return, !dbg !222

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !223
  ret ptr %4, !dbg !223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !224 dso_local ptr @ZSTD_initStaticDStream(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @zstd_reset_dstream(ptr noundef %dstream) #0 align 16 !dbg !228 {
entry:
  %dstream.addr = alloca ptr, align 8
  store ptr %dstream, ptr %dstream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstream.addr, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load ptr, ptr %dstream.addr, align 8, !dbg !234
  %call = call i64 @ZSTD_resetDStream(ptr noundef %0) #3, !dbg !235
  ret i64 %call, !dbg !236
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !237 dso_local i64 @ZSTD_resetDStream(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @zstd_decompress_stream(ptr noundef %dstream, ptr noundef %output, ptr noundef %input) #0 align 16 !dbg !240 {
entry:
  %dstream.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  store ptr %dstream, ptr %dstream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstream.addr, metadata !260, metadata !DIExpression()), !dbg !263
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !261, metadata !DIExpression()), !dbg !264
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !262, metadata !DIExpression()), !dbg !265
  %0 = load ptr, ptr %dstream.addr, align 8, !dbg !266
  %1 = load ptr, ptr %output.addr, align 8, !dbg !267
  %2 = load ptr, ptr %input.addr, align 8, !dbg !268
  %call = call i64 @ZSTD_decompressStream(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3, !dbg !269
  ret i64 %call, !dbg !270
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !271 dso_local i64 @ZSTD_decompressStream(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @zstd_find_frame_compressed_size(ptr noundef %src, i64 noundef %src_size) #0 align 16 !dbg !276 {
entry:
  %src.addr = alloca ptr, align 8
  %src_size.addr = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !280, metadata !DIExpression()), !dbg !282
  store i64 %src_size, ptr %src_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_size.addr, metadata !281, metadata !DIExpression()), !dbg !283
  %0 = load ptr, ptr %src.addr, align 8, !dbg !284
  %1 = load i64, ptr %src_size.addr, align 8, !dbg !285
  %call = call i64 @ZSTD_findFrameCompressedSize(ptr noundef %0, i64 noundef %1) #3, !dbg !286
  ret i64 %call, !dbg !287
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !288 dso_local i64 @ZSTD_findFrameCompressedSize(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @zstd_get_frame_header(ptr noundef %header, ptr noundef %src, i64 noundef %src_size) #0 align 16 !dbg !289 {
entry:
  %header.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %src_size.addr = alloca i64, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !307, metadata !DIExpression()), !dbg !310
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !308, metadata !DIExpression()), !dbg !311
  store i64 %src_size, ptr %src_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_size.addr, metadata !309, metadata !DIExpression()), !dbg !312
  %0 = load ptr, ptr %header.addr, align 8, !dbg !313
  %1 = load ptr, ptr %src.addr, align 8, !dbg !314
  %2 = load i64, ptr %src_size.addr, align 8, !dbg !315
  %call = call i64 @ZSTD_getFrameHeader(ptr noundef %0, ptr noundef %1, i64 noundef %2) #3, !dbg !316
  ret i64 %call, !dbg !317
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !318 dso_local i64 @ZSTD_getFrameHeader(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_is_error195", scope: !2, file: !3, line: 25, type: !43, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/.zstd_decompress_module.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_decompress\22 -D KBUILD_BASENAME=\22zstd_decompress_module\22 -D KBUILD_MODNAME=\22zstd_decompress\22 -D __KBUILD_MODNAME=kmod_zstd_decompress -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/zstd_decompress_module.ll lib/zstd/zstd_decompress_module.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/zstd/zstd_decompress_module.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bde3e2fbb257602400edfa48e0951f0d")
!4 = !{!5, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 37, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!9 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!10 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!11 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!12 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!13 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!14 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!15 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!16 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!17 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!18 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!19 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!20 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!21 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!22 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!23 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!24 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!25 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!26 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!27 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!28 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!29 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!30 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!31 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!32 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!33 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!34 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!35 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!36 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 2474, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/zstd_lib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8133d2f71405070b8bf1f9699046d166")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "ZSTD_frame", value: 0)
!41 = !DIEnumerator(name: "ZSTD_skippableFrame", value: 1)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !{!0, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !74, !79}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_get_error_code196", scope: !2, file: !3, line: 31, type: !43, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_get_error_name197", scope: !2, file: !3, line: 37, type: !43, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_dctx_workspace_bound198", scope: !2, file: !3, line: 45, type: !43, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_init_dctx199", scope: !2, file: !3, line: 53, type: !43, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_decompress_dctx200", scope: !2, file: !3, line: 60, type: !43, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_dstream_workspace_bound201", scope: !2, file: !3, line: 66, type: !43, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_init_dstream202", scope: !2, file: !3, line: 76, type: !43, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_reset_dstream203", scope: !2, file: !3, line: 82, type: !43, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_decompress_stream204", scope: !2, file: !3, line: 89, type: !43, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_find_frame_compressed_size205", scope: !2, file: !3, line: 95, type: !43, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zstd_get_frame_header206", scope: !2, file: !3, line: 102, type: !43, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file207", scope: !2, file: !3, line: 104, type: !69, isLocal: true, isDefinition: true, align: 8)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 368, elements: !72)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !{!73}
!73 = !DISubrange(count: 46)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license208", scope: !2, file: !3, line: 104, type: !76, isLocal: true, isDefinition: true, align: 8)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 296, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 37)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description209", scope: !2, file: !3, line: 105, type: !69, isLocal: true, isDefinition: true, align: 8)
!81 = !{i32 7, !"Dwarf Version", i32 5}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 8, !"cf-protection-branch", i32 1}
!85 = !{i32 4, !"function_return_thunk_extern", i32 1}
!86 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!87 = !{i32 1, !"Code Model", i32 2}
!88 = !{i32 1, !"override-stack-alignment", i32 8}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = distinct !DISubprogram(name: "zstd_is_error", scope: !3, file: !3, line: 21, type: !91, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!91 = !DISubroutineType(types: !92)
!92 = !{!7, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 61, baseType: !95)
!94 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !96, line: 72, baseType: !97)
!96 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !96, line: 16, baseType: !98)
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !{!100}
!100 = !DILocalVariable(name: "code", arg: 1, scope: !90, file: !3, line: 21, type: !93)
!101 = !DILocation(line: 21, column: 35, scope: !90)
!102 = !DILocation(line: 23, column: 22, scope: !90)
!103 = !DILocation(line: 23, column: 9, scope: !90)
!104 = !DILocation(line: 23, column: 2, scope: !90)
!105 = !DISubprogram(name: "ZSTD_isError", scope: !38, file: !38, line: 173, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = distinct !DISubprogram(name: "zstd_get_error_code", scope: !3, file: !3, line: 27, type: !107, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !112)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !93}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_error_code", file: !110, line: 48, baseType: !111)
!110 = !DIFile(filename: "./include/linux/zstd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f58092ce19df72295b846c8e5a01c321")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_ErrorCode", file: !6, line: 67, baseType: !5)
!112 = !{!113}
!113 = !DILocalVariable(name: "code", arg: 1, scope: !106, file: !3, line: 27, type: !93)
!114 = !DILocation(line: 27, column: 44, scope: !106)
!115 = !DILocation(line: 29, column: 27, scope: !106)
!116 = !DILocation(line: 29, column: 9, scope: !106)
!117 = !DILocation(line: 29, column: 2, scope: !106)
!118 = !DISubprogram(name: "ZSTD_getErrorCode", scope: !6, file: !6, line: 72, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!111, !93}
!121 = distinct !DISubprogram(name: "zstd_get_error_name", scope: !3, file: !3, line: 33, type: !122, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !93}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!125 = !{!126}
!126 = !DILocalVariable(name: "code", arg: 1, scope: !121, file: !3, line: 33, type: !93)
!127 = !DILocation(line: 33, column: 40, scope: !121)
!128 = !DILocation(line: 35, column: 27, scope: !121)
!129 = !DILocation(line: 35, column: 9, scope: !121)
!130 = !DILocation(line: 35, column: 2, scope: !121)
!131 = !DISubprogram(name: "ZSTD_getErrorName", scope: !38, file: !38, line: 174, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = distinct !DISubprogram(name: "zstd_dctx_workspace_bound", scope: !3, file: !3, line: 41, type: !133, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!133 = !DISubroutineType(types: !134)
!134 = !{!93}
!135 = !DILocation(line: 43, column: 9, scope: !132)
!136 = !DILocation(line: 43, column: 2, scope: !132)
!137 = !DISubprogram(name: "ZSTD_estimateDCtxSize", scope: !38, file: !38, line: 1490, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = distinct !DISubprogram(name: "zstd_init_dctx", scope: !3, file: !3, line: 47, type: !139, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !145)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !43, !93}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_dctx", file: !110, line: 185, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DCtx", file: !38, line: 216, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_DCtx_s", file: !38, line: 216, flags: DIFlagFwdDecl)
!145 = !{!146, !147}
!146 = !DILocalVariable(name: "workspace", arg: 1, scope: !138, file: !3, line: 47, type: !43)
!147 = !DILocalVariable(name: "workspace_size", arg: 2, scope: !138, file: !3, line: 47, type: !93)
!148 = !DILocation(line: 47, column: 33, scope: !138)
!149 = !DILocation(line: 47, column: 51, scope: !138)
!150 = !DILocation(line: 49, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !138, file: !3, line: 49, column: 6)
!152 = !DILocation(line: 49, column: 16, scope: !151)
!153 = !DILocation(line: 49, column: 6, scope: !138)
!154 = !DILocation(line: 50, column: 3, scope: !151)
!155 = !DILocation(line: 51, column: 29, scope: !138)
!156 = !DILocation(line: 51, column: 40, scope: !138)
!157 = !DILocation(line: 51, column: 9, scope: !138)
!158 = !DILocation(line: 51, column: 2, scope: !138)
!159 = !DILocation(line: 52, column: 1, scope: !138)
!160 = !DISubprogram(name: "ZSTD_initStaticDCtx", scope: !38, file: !38, line: 1544, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !43, !93}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!164 = distinct !DISubprogram(name: "zstd_decompress_dctx", scope: !3, file: !3, line: 55, type: !165, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!165 = !DISubroutineType(types: !166)
!166 = !{!93, !141, !43, !93, !167, !93}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!169 = !{!170, !171, !172, !173, !174}
!170 = !DILocalVariable(name: "dctx", arg: 1, scope: !164, file: !3, line: 55, type: !141)
!171 = !DILocalVariable(name: "dst", arg: 2, scope: !164, file: !3, line: 55, type: !43)
!172 = !DILocalVariable(name: "dst_capacity", arg: 3, scope: !164, file: !3, line: 55, type: !93)
!173 = !DILocalVariable(name: "src", arg: 4, scope: !164, file: !3, line: 56, type: !167)
!174 = !DILocalVariable(name: "src_size", arg: 5, scope: !164, file: !3, line: 56, type: !93)
!175 = !DILocation(line: 55, column: 40, scope: !164)
!176 = !DILocation(line: 55, column: 52, scope: !164)
!177 = !DILocation(line: 55, column: 64, scope: !164)
!178 = !DILocation(line: 56, column: 14, scope: !164)
!179 = !DILocation(line: 56, column: 26, scope: !164)
!180 = !DILocation(line: 58, column: 29, scope: !164)
!181 = !DILocation(line: 58, column: 35, scope: !164)
!182 = !DILocation(line: 58, column: 40, scope: !164)
!183 = !DILocation(line: 58, column: 54, scope: !164)
!184 = !DILocation(line: 58, column: 59, scope: !164)
!185 = !DILocation(line: 58, column: 9, scope: !164)
!186 = !DILocation(line: 58, column: 2, scope: !164)
!187 = !DISubprogram(name: "ZSTD_decompressDCtx", scope: !38, file: !38, line: 225, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubroutineType(types: !189)
!189 = !{!93, !163, !43, !93, !167, !93}
!190 = distinct !DISubprogram(name: "zstd_dstream_workspace_bound", scope: !3, file: !3, line: 62, type: !191, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!93, !93}
!193 = !{!194}
!194 = !DILocalVariable(name: "max_window_size", arg: 1, scope: !190, file: !3, line: 62, type: !93)
!195 = !DILocation(line: 62, column: 44, scope: !190)
!196 = !DILocation(line: 64, column: 34, scope: !190)
!197 = !DILocation(line: 64, column: 9, scope: !190)
!198 = !DILocation(line: 64, column: 2, scope: !190)
!199 = !DISubprogram(name: "ZSTD_estimateDStreamSize", scope: !38, file: !38, line: 1508, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = distinct !DISubprogram(name: "zstd_init_dstream", scope: !3, file: !3, line: 68, type: !201, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !93, !43, !93}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_dstream", file: !110, line: 344, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DStream", file: !38, line: 783, baseType: !143)
!206 = !{!207, !208, !209}
!207 = !DILocalVariable(name: "max_window_size", arg: 1, scope: !200, file: !3, line: 68, type: !93)
!208 = !DILocalVariable(name: "workspace", arg: 2, scope: !200, file: !3, line: 68, type: !43)
!209 = !DILocalVariable(name: "workspace_size", arg: 3, scope: !200, file: !3, line: 69, type: !93)
!210 = !DILocation(line: 68, column: 40, scope: !200)
!211 = !DILocation(line: 68, column: 63, scope: !200)
!212 = !DILocation(line: 69, column: 9, scope: !200)
!213 = !DILocation(line: 71, column: 6, scope: !214)
!214 = distinct !DILexicalBlock(scope: !200, file: !3, line: 71, column: 6)
!215 = !DILocation(line: 71, column: 16, scope: !214)
!216 = !DILocation(line: 71, column: 6, scope: !200)
!217 = !DILocation(line: 72, column: 3, scope: !214)
!218 = !DILocation(line: 73, column: 8, scope: !200)
!219 = !DILocation(line: 74, column: 32, scope: !200)
!220 = !DILocation(line: 74, column: 43, scope: !200)
!221 = !DILocation(line: 74, column: 9, scope: !200)
!222 = !DILocation(line: 74, column: 2, scope: !200)
!223 = !DILocation(line: 75, column: 1, scope: !200)
!224 = !DISubprogram(name: "ZSTD_initStaticDStream", scope: !38, file: !38, line: 1545, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !43, !93}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!228 = distinct !DISubprogram(name: "zstd_reset_dstream", scope: !3, file: !3, line: 78, type: !229, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!93, !203}
!231 = !{!232}
!232 = !DILocalVariable(name: "dstream", arg: 1, scope: !228, file: !3, line: 78, type: !203)
!233 = !DILocation(line: 78, column: 41, scope: !228)
!234 = !DILocation(line: 80, column: 27, scope: !228)
!235 = !DILocation(line: 80, column: 9, scope: !228)
!236 = !DILocation(line: 80, column: 2, scope: !228)
!237 = !DISubprogram(name: "ZSTD_resetDStream", scope: !38, file: !38, line: 2345, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!93, !227}
!240 = distinct !DISubprogram(name: "zstd_decompress_stream", scope: !3, file: !3, line: 84, type: !241, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!241 = !DISubroutineType(types: !242)
!242 = !{!93, !203, !243, !251}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_out_buffer", file: !110, line: 245, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_outBuffer", file: !38, line: 597, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_outBuffer_s", file: !38, line: 593, size: 192, elements: !247)
!247 = !{!248, !249, !250}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !246, file: !38, line: 594, baseType: !43, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !246, file: !38, line: 595, baseType: !93, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !246, file: !38, line: 596, baseType: !93, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_in_buffer", file: !110, line: 234, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_inBuffer", file: !38, line: 591, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_inBuffer_s", file: !38, line: 587, size: 192, elements: !255)
!255 = !{!256, !257, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !254, file: !38, line: 588, baseType: !167, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !254, file: !38, line: 589, baseType: !93, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !254, file: !38, line: 590, baseType: !93, size: 64, offset: 128)
!259 = !{!260, !261, !262}
!260 = !DILocalVariable(name: "dstream", arg: 1, scope: !240, file: !3, line: 84, type: !203)
!261 = !DILocalVariable(name: "output", arg: 2, scope: !240, file: !3, line: 84, type: !243)
!262 = !DILocalVariable(name: "input", arg: 3, scope: !240, file: !3, line: 85, type: !251)
!263 = !DILocation(line: 84, column: 45, scope: !240)
!264 = !DILocation(line: 84, column: 71, scope: !240)
!265 = !DILocation(line: 85, column: 18, scope: !240)
!266 = !DILocation(line: 87, column: 31, scope: !240)
!267 = !DILocation(line: 87, column: 40, scope: !240)
!268 = !DILocation(line: 87, column: 48, scope: !240)
!269 = !DILocation(line: 87, column: 9, scope: !240)
!270 = !DILocation(line: 87, column: 2, scope: !240)
!271 = !DISubprogram(name: "ZSTD_decompressStream", scope: !38, file: !38, line: 798, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{!93, !227, !274, !275}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!276 = distinct !DISubprogram(name: "zstd_find_frame_compressed_size", scope: !3, file: !3, line: 91, type: !277, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!93, !167, !93}
!279 = !{!280, !281}
!280 = !DILocalVariable(name: "src", arg: 1, scope: !276, file: !3, line: 91, type: !167)
!281 = !DILocalVariable(name: "src_size", arg: 2, scope: !276, file: !3, line: 91, type: !93)
!282 = !DILocation(line: 91, column: 52, scope: !276)
!283 = !DILocation(line: 91, column: 64, scope: !276)
!284 = !DILocation(line: 93, column: 38, scope: !276)
!285 = !DILocation(line: 93, column: 43, scope: !276)
!286 = !DILocation(line: 93, column: 9, scope: !276)
!287 = !DILocation(line: 93, column: 2, scope: !276)
!288 = !DISubprogram(name: "ZSTD_findFrameCompressedSize", scope: !38, file: !38, line: 167, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = distinct !DISubprogram(name: "zstd_get_frame_header", scope: !3, file: !3, line: 97, type: !290, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !306)
!290 = !DISubroutineType(types: !291)
!291 = !{!93, !292, !167, !93}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_frame_header", file: !110, line: 432, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameHeader", file: !38, line: 2483, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 2475, size: 320, elements: !296)
!296 = !{!297, !299, !300, !301, !303, !304, !305}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "frameContentSize", scope: !295, file: !38, line: 2476, baseType: !298, size: 64)
!298 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "windowSize", scope: !295, file: !38, line: 2477, baseType: !298, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "blockSizeMax", scope: !295, file: !38, line: 2478, baseType: !7, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "frameType", scope: !295, file: !38, line: 2479, baseType: !302, size: 32, offset: 160)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameType_e", file: !38, line: 2474, baseType: !37)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "headerSize", scope: !295, file: !38, line: 2480, baseType: !7, size: 32, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !295, file: !38, line: 2481, baseType: !7, size: 32, offset: 224)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "checksumFlag", scope: !295, file: !38, line: 2482, baseType: !7, size: 32, offset: 256)
!306 = !{!307, !308, !309}
!307 = !DILocalVariable(name: "header", arg: 1, scope: !289, file: !3, line: 97, type: !292)
!308 = !DILocalVariable(name: "src", arg: 2, scope: !289, file: !3, line: 97, type: !167)
!309 = !DILocalVariable(name: "src_size", arg: 3, scope: !289, file: !3, line: 98, type: !93)
!310 = !DILocation(line: 97, column: 49, scope: !289)
!311 = !DILocation(line: 97, column: 69, scope: !289)
!312 = !DILocation(line: 98, column: 9, scope: !289)
!313 = !DILocation(line: 100, column: 29, scope: !289)
!314 = !DILocation(line: 100, column: 37, scope: !289)
!315 = !DILocation(line: 100, column: 42, scope: !289)
!316 = !DILocation(line: 100, column: 9, scope: !289)
!317 = !DILocation(line: 100, column: 2, scope: !289)
!318 = !DISubprogram(name: "ZSTD_getFrameHeader", scope: !38, file: !38, line: 2490, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{!93, !321, !167, !93}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
