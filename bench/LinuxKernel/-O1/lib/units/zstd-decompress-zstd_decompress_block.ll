; ModuleID = 'lib/zstd/decompress/zstd_decompress_block.c'
source_filename = "lib/zstd/decompress/zstd_decompress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i64, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i64, i32, i32, i32, ptr, %struct.ZSTD_customMem, i64, i64, i64, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, i32, i32, i32, %struct.ZSTD_outBuffer_s, ptr, ptr, i32, [65568 x i8], [18 x i8], i64 }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_seqSymbol_header = type { i32, i32 }
%struct.anon = type { i32 }
%struct.anon.0 = type { i16 }
%struct.anon.1 = type { i64 }
%struct.seq_t = type { i64, i64, i64 }
%struct.seqState_t = type { %struct.BIT_DStream_t, %struct.ZSTD_fseState, %struct.ZSTD_fseState, %struct.ZSTD_fseState, [3 x i64] }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.ZSTD_fseState = type { i64, ptr }
%struct.anon.2 = type { i64 }

@LL_base = internal constant [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 16, !dbg !0
@LL_bits = internal constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16, !dbg !238
@LL_defaultDTable = internal constant [65 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 3 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 14 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 20 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 28 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 5, i32 48 }, %struct.ZSTD_seqSymbol { i16 32, i8 6, i8 5, i32 64 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 5, i32 128 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 6, i32 256 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 6, i32 1024 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 6, i32 4096 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 1 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 2 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 13 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 18 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 24 }, %struct.ZSTD_seqSymbol { i16 32, i8 3, i8 5, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 40 }, %struct.ZSTD_seqSymbol { i16 0, i8 6, i8 4, i32 64 }, %struct.ZSTD_seqSymbol { i16 16, i8 6, i8 4, i32 64 }, %struct.ZSTD_seqSymbol { i16 32, i8 7, i8 5, i32 128 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 6, i32 512 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 6, i32 2048 }, %struct.ZSTD_seqSymbol { i16 48, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 1 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 2 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 3 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 15 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 18 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 20 }, %struct.ZSTD_seqSymbol { i16 32, i8 2, i8 5, i32 24 }, %struct.ZSTD_seqSymbol { i16 32, i8 2, i8 5, i32 28 }, %struct.ZSTD_seqSymbol { i16 32, i8 3, i8 5, i32 40 }, %struct.ZSTD_seqSymbol { i16 32, i8 4, i8 5, i32 48 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 6, i32 65536 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 6, i32 32768 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 6, i32 16384 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 6, i32 8192 }], align 16, !dbg !245
@OF_base = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], align 16, !dbg !258
@OF_bits = internal constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16, !dbg !264
@OF_defaultDTable = internal constant [33 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 0 }, %struct.ZSTD_seqSymbol { i16 0, i8 6, i8 4, i32 61 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 5, i32 509 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 5, i32 32765 }, %struct.ZSTD_seqSymbol { i16 0, i8 21, i8 5, i32 2097149 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 4, i32 125 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 5, i32 4093 }, %struct.ZSTD_seqSymbol { i16 0, i8 18, i8 5, i32 262141 }, %struct.ZSTD_seqSymbol { i16 0, i8 23, i8 5, i32 8388605 }, %struct.ZSTD_seqSymbol { i16 0, i8 5, i8 5, i32 29 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 4, i32 253 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 5, i32 16381 }, %struct.ZSTD_seqSymbol { i16 0, i8 20, i8 5, i32 1048573 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 16, i8 7, i8 4, i32 125 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 5, i32 2045 }, %struct.ZSTD_seqSymbol { i16 0, i8 17, i8 5, i32 131069 }, %struct.ZSTD_seqSymbol { i16 0, i8 22, i8 5, i32 4194301 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 5, i32 13 }, %struct.ZSTD_seqSymbol { i16 16, i8 8, i8 4, i32 253 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 5, i32 8189 }, %struct.ZSTD_seqSymbol { i16 0, i8 19, i8 5, i32 524285 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 16, i8 6, i8 4, i32 61 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 5, i32 1021 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 5, i32 65533 }, %struct.ZSTD_seqSymbol { i16 0, i8 28, i8 5, i32 268435453 }, %struct.ZSTD_seqSymbol { i16 0, i8 27, i8 5, i32 134217725 }, %struct.ZSTD_seqSymbol { i16 0, i8 26, i8 5, i32 67108861 }, %struct.ZSTD_seqSymbol { i16 0, i8 25, i8 5, i32 33554429 }, %struct.ZSTD_seqSymbol { i16 0, i8 24, i8 5, i32 16777213 }], align 16, !dbg !267
@ML_base = internal constant [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], align 16, !dbg !272
@ML_bits = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16, !dbg !277
@ML_defaultDTable = internal constant [65 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 3 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 13 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 19 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 25 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 28 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 31 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 34 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 37 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 41 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 6, i32 47 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 6, i32 59 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 6, i32 83 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 6, i32 131 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 6, i32 515 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 15 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 18 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 21 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 24 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 27 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 30 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 33 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 35 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 39 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 6, i32 43 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 6, i32 51 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 6, i32 67 }, %struct.ZSTD_seqSymbol { i16 0, i8 5, i8 6, i32 99 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 6, i32 259 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 48, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 14 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 17 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 20 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 23 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 26 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 29 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 6, i32 65539 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 6, i32 32771 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 6, i32 16387 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 6, i32 8195 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 6, i32 4099 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 6, i32 2051 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 6, i32 1027 }], align 16, !dbg !280
@ZSTD_overlapCopy8.dec32table = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16, !dbg !282
@ZSTD_overlapCopy8.dec64table = internal constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16, !dbg !300

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ZSTD_getcBlockSize(ptr noundef %src, i64 noundef %srcSize, ptr noundef %bpPtr) #0 align 16 !dbg !313 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %bpPtr.addr = alloca ptr, align 8
  %cBlockHeader = alloca i32, align 4
  %cSize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !324, metadata !DIExpression()), !dbg !330
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !325, metadata !DIExpression()), !dbg !331
  store ptr %bpPtr, ptr %bpPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bpPtr.addr, metadata !326, metadata !DIExpression()), !dbg !332
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !333
  %cmp = icmp ult i64 %0, 3, !dbg !333
  br i1 %cmp, label %if.then, label %if.end, !dbg !335

if.then:                                          ; preds = %entry
  store i64 -72, ptr %retval, align 8, !dbg !336
  br label %return, !dbg !336

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %cBlockHeader) #12, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %cBlockHeader, metadata !327, metadata !DIExpression()), !dbg !339
  %1 = load ptr, ptr %src.addr, align 8, !dbg !340
  %call = call i32 @MEM_readLE24(ptr noundef %1) #13, !dbg !341
  store i32 %call, ptr %cBlockHeader, align 4, !dbg !339
  call void @llvm.lifetime.start.p0(i64 4, ptr %cSize) #12, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %cSize, metadata !329, metadata !DIExpression()), !dbg !343
  %2 = load i32, ptr %cBlockHeader, align 4, !dbg !344
  %shr = lshr i32 %2, 3, !dbg !345
  store i32 %shr, ptr %cSize, align 4, !dbg !343
  %3 = load i32, ptr %cBlockHeader, align 4, !dbg !346
  %and = and i32 %3, 1, !dbg !347
  %4 = load ptr, ptr %bpPtr.addr, align 8, !dbg !348
  %lastBlock = getelementptr inbounds %struct.blockProperties_t, ptr %4, i32 0, i32 1, !dbg !349
  store i32 %and, ptr %lastBlock, align 4, !dbg !350
  %5 = load i32, ptr %cBlockHeader, align 4, !dbg !351
  %shr1 = lshr i32 %5, 1, !dbg !352
  %and2 = and i32 %shr1, 3, !dbg !353
  %6 = load ptr, ptr %bpPtr.addr, align 8, !dbg !354
  %blockType = getelementptr inbounds %struct.blockProperties_t, ptr %6, i32 0, i32 0, !dbg !355
  store i32 %and2, ptr %blockType, align 4, !dbg !356
  %7 = load i32, ptr %cSize, align 4, !dbg !357
  %8 = load ptr, ptr %bpPtr.addr, align 8, !dbg !358
  %origSize = getelementptr inbounds %struct.blockProperties_t, ptr %8, i32 0, i32 2, !dbg !359
  store i32 %7, ptr %origSize, align 4, !dbg !360
  %9 = load ptr, ptr %bpPtr.addr, align 8, !dbg !361
  %blockType3 = getelementptr inbounds %struct.blockProperties_t, ptr %9, i32 0, i32 0, !dbg !363
  %10 = load i32, ptr %blockType3, align 4, !dbg !363
  %cmp4 = icmp eq i32 %10, 1, !dbg !364
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !365

if.then5:                                         ; preds = %if.end
  store i64 1, ptr %retval, align 8, !dbg !366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !366

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %bpPtr.addr, align 8, !dbg !367
  %blockType7 = getelementptr inbounds %struct.blockProperties_t, ptr %11, i32 0, i32 0, !dbg !367
  %12 = load i32, ptr %blockType7, align 4, !dbg !367
  %cmp8 = icmp eq i32 %12, 3, !dbg !367
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !369

if.then9:                                         ; preds = %if.end6
  store i64 -20, ptr %retval, align 8, !dbg !370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !370

if.end10:                                         ; preds = %if.end6
  %13 = load i32, ptr %cSize, align 4, !dbg !372
  %conv = zext i32 %13 to i64, !dbg !372
  store i64 %conv, ptr %retval, align 8, !dbg !373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !373

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cSize) #12, !dbg !374
  call void @llvm.lifetime.end.p0(i64 4, ptr %cBlockHeader) #12, !dbg !374
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %14 = load i64, ptr %retval, align 8, !dbg !375
  ret i64 %14, !dbg !375
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_readLE24(ptr noundef %memPtr) #3 align 16 !dbg !376 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !382
  %call = call zeroext i16 @MEM_readLE16(ptr noundef %0) #13, !dbg !383
  %conv = zext i16 %call to i32, !dbg !383
  %1 = load ptr, ptr %memPtr.addr, align 8, !dbg !384
  %arrayidx = getelementptr i8, ptr %1, i64 2, !dbg !385
  %2 = load i8, ptr %arrayidx, align 1, !dbg !385
  %conv1 = zext i8 %2 to i32, !dbg !385
  %shl = shl i32 %conv1, 16, !dbg !386
  %add = add i32 %conv, %shl, !dbg !387
  ret i32 %add, !dbg !388
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ZSTD_decodeLiteralsBlock(ptr noundef %dctx, ptr noundef %src, i64 noundef %srcSize, ptr noundef %dst, i64 noundef %dstCapacity, i32 noundef %streaming) #0 align 16 !dbg !389 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %streaming.addr = alloca i32, align 4
  %istart = alloca ptr, align 8
  %litEncType = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %lhSize = alloca i64, align 8
  %litSize = alloca i64, align 8
  %litCSize = alloca i64, align 8
  %singleStream = alloca i32, align 4
  %lhlCode = alloca i32, align 4
  %lhc = alloca i32, align 4
  %hufSuccess = alloca i64, align 8
  %expectedWriteSize = alloca i64, align 8
  %_ptr = alloca ptr, align 8
  %_size = alloca i64, align 8
  %_pos = alloca i64, align 8
  %litSize137 = alloca i64, align 8
  %lhSize138 = alloca i64, align 8
  %lhlCode139 = alloca i32, align 4
  %expectedWriteSize144 = alloca i64, align 8
  %lhlCode222 = alloca i32, align 4
  %litSize227 = alloca i64, align 8
  %lhSize228 = alloca i64, align 8
  %expectedWriteSize229 = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !558, metadata !DIExpression()), !dbg !596
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !559, metadata !DIExpression()), !dbg !597
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !560, metadata !DIExpression()), !dbg !598
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !561, metadata !DIExpression()), !dbg !599
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !562, metadata !DIExpression()), !dbg !600
  store i32 %streaming, ptr %streaming.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %streaming.addr, metadata !563, metadata !DIExpression()), !dbg !601
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !602
  %cmp = icmp ult i64 %0, 3, !dbg !602
  br i1 %cmp, label %if.then, label %if.end, !dbg !604

if.then:                                          ; preds = %entry
  store i64 -20, ptr %retval, align 8, !dbg !605
  br label %cleanup.cont, !dbg !605

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #12, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %istart, metadata !564, metadata !DIExpression()), !dbg !608
  %1 = load ptr, ptr %src.addr, align 8, !dbg !609
  store ptr %1, ptr %istart, align 8, !dbg !608
  call void @llvm.lifetime.start.p0(i64 4, ptr %litEncType) #12, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %litEncType, metadata !567, metadata !DIExpression()), !dbg !611
  %2 = load ptr, ptr %istart, align 8, !dbg !612
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !612
  %3 = load i8, ptr %arrayidx, align 1, !dbg !612
  %conv = zext i8 %3 to i32, !dbg !612
  %and = and i32 %conv, 3, !dbg !613
  store i32 %and, ptr %litEncType, align 4, !dbg !611
  %4 = load i32, ptr %litEncType, align 4, !dbg !614
  switch i32 %4, label %sw.default296 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb5
    i32 0, label %sw.bb136
    i32 1, label %sw.bb221
  ], !dbg !615

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !616
  %litEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 16, !dbg !616
  %6 = load i32, ptr %litEntropy, align 8, !dbg !616
  %cmp1 = icmp eq i32 %6, 0, !dbg !616
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !618

if.then3:                                         ; preds = %sw.bb
  store i64 -30, ptr %retval, align 8, !dbg !619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup298, !dbg !619

if.end4:                                          ; preds = %sw.bb
  br label %sw.bb5, !dbg !616

sw.bb5:                                           ; preds = %if.end, %if.end4
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !621
  %cmp6 = icmp ult i64 %7, 5, !dbg !621
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !623

if.then8:                                         ; preds = %sw.bb5
  store i64 -20, ptr %retval, align 8, !dbg !624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup298, !dbg !624

if.end9:                                          ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 8, ptr %lhSize) #12, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %lhSize, metadata !569, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 8, ptr %litSize) #12, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %litSize, metadata !572, metadata !DIExpression()), !dbg !628
  call void @llvm.lifetime.start.p0(i64 8, ptr %litCSize) #12, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %litCSize, metadata !573, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 4, ptr %singleStream) #12, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %singleStream, metadata !574, metadata !DIExpression()), !dbg !631
  store i32 0, ptr %singleStream, align 4, !dbg !631
  call void @llvm.lifetime.start.p0(i64 4, ptr %lhlCode) #12, !dbg !632
  call void @llvm.dbg.declare(metadata ptr %lhlCode, metadata !575, metadata !DIExpression()), !dbg !633
  %8 = load ptr, ptr %istart, align 8, !dbg !634
  %arrayidx10 = getelementptr i8, ptr %8, i64 0, !dbg !634
  %9 = load i8, ptr %arrayidx10, align 1, !dbg !634
  %conv11 = zext i8 %9 to i32, !dbg !634
  %shr = ashr i32 %conv11, 2, !dbg !635
  %and12 = and i32 %shr, 3, !dbg !636
  store i32 %and12, ptr %lhlCode, align 4, !dbg !633
  call void @llvm.lifetime.start.p0(i64 4, ptr %lhc) #12, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %lhc, metadata !576, metadata !DIExpression()), !dbg !638
  %10 = load ptr, ptr %istart, align 8, !dbg !639
  %call = call i32 @MEM_readLE32(ptr noundef %10) #13, !dbg !640
  store i32 %call, ptr %lhc, align 4, !dbg !638
  call void @llvm.lifetime.start.p0(i64 8, ptr %hufSuccess) #12, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %hufSuccess, metadata !577, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 8, ptr %expectedWriteSize) #12, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %expectedWriteSize, metadata !578, metadata !DIExpression()), !dbg !644
  %11 = load i64, ptr %dstCapacity.addr, align 8, !dbg !645
  %cmp13 = icmp ult i64 131072, %11, !dbg !645
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !645

cond.true:                                        ; preds = %if.end9
  br label %cond.end, !dbg !645

cond.false:                                       ; preds = %if.end9
  %12 = load i64, ptr %dstCapacity.addr, align 8, !dbg !645
  br label %cond.end, !dbg !645

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 131072, %cond.true ], [ %12, %cond.false ], !dbg !645
  store i64 %cond, ptr %expectedWriteSize, align 8, !dbg !644
  %13 = load i32, ptr %lhlCode, align 4, !dbg !646
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb15
    i32 1, label %sw.bb15
    i32 2, label %sw.bb22
    i32 3, label %sw.bb28
  ], !dbg !647

sw.bb15:                                          ; preds = %cond.end, %cond.end
  br label %sw.default, !dbg !648

sw.default:                                       ; preds = %cond.end, %sw.bb15
  %14 = load i32, ptr %lhlCode, align 4, !dbg !650
  %tobool = icmp ne i32 %14, 0, !dbg !651
  %lnot = xor i1 %tobool, true, !dbg !651
  %lnot.ext = zext i1 %lnot to i32, !dbg !651
  store i32 %lnot.ext, ptr %singleStream, align 4, !dbg !652
  store i64 3, ptr %lhSize, align 8, !dbg !653
  %15 = load i32, ptr %lhc, align 4, !dbg !654
  %shr16 = lshr i32 %15, 4, !dbg !655
  %and17 = and i32 %shr16, 1023, !dbg !656
  %conv18 = zext i32 %and17 to i64, !dbg !657
  store i64 %conv18, ptr %litSize, align 8, !dbg !658
  %16 = load i32, ptr %lhc, align 4, !dbg !659
  %shr19 = lshr i32 %16, 14, !dbg !660
  %and20 = and i32 %shr19, 1023, !dbg !661
  %conv21 = zext i32 %and20 to i64, !dbg !662
  store i64 %conv21, ptr %litCSize, align 8, !dbg !663
  br label %sw.epilog, !dbg !664

sw.bb22:                                          ; preds = %cond.end
  store i64 4, ptr %lhSize, align 8, !dbg !665
  %17 = load i32, ptr %lhc, align 4, !dbg !666
  %shr23 = lshr i32 %17, 4, !dbg !667
  %and24 = and i32 %shr23, 16383, !dbg !668
  %conv25 = zext i32 %and24 to i64, !dbg !669
  store i64 %conv25, ptr %litSize, align 8, !dbg !670
  %18 = load i32, ptr %lhc, align 4, !dbg !671
  %shr26 = lshr i32 %18, 18, !dbg !672
  %conv27 = zext i32 %shr26 to i64, !dbg !671
  store i64 %conv27, ptr %litCSize, align 8, !dbg !673
  br label %sw.epilog, !dbg !674

sw.bb28:                                          ; preds = %cond.end
  store i64 5, ptr %lhSize, align 8, !dbg !675
  %19 = load i32, ptr %lhc, align 4, !dbg !676
  %shr29 = lshr i32 %19, 4, !dbg !677
  %and30 = and i32 %shr29, 262143, !dbg !678
  %conv31 = zext i32 %and30 to i64, !dbg !679
  store i64 %conv31, ptr %litSize, align 8, !dbg !680
  %20 = load i32, ptr %lhc, align 4, !dbg !681
  %shr32 = lshr i32 %20, 22, !dbg !682
  %conv33 = zext i32 %shr32 to i64, !dbg !683
  %21 = load ptr, ptr %istart, align 8, !dbg !684
  %arrayidx34 = getelementptr i8, ptr %21, i64 4, !dbg !684
  %22 = load i8, ptr %arrayidx34, align 1, !dbg !684
  %conv35 = zext i8 %22 to i64, !dbg !685
  %shl = shl i64 %conv35, 10, !dbg !686
  %add = add i64 %conv33, %shl, !dbg !687
  store i64 %add, ptr %litCSize, align 8, !dbg !688
  br label %sw.epilog, !dbg !689

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb22, %sw.default
  %23 = load i64, ptr %litSize, align 8, !dbg !690
  %cmp36 = icmp ugt i64 %23, 0, !dbg !690
  br i1 %cmp36, label %land.lhs.true, label %if.end41, !dbg !690

land.lhs.true:                                    ; preds = %sw.epilog
  %24 = load ptr, ptr %dst.addr, align 8, !dbg !690
  %cmp38 = icmp eq ptr %24, null, !dbg !690
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !692

if.then40:                                        ; preds = %land.lhs.true
  store i64 -70, ptr %retval, align 8, !dbg !693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !693

if.end41:                                         ; preds = %land.lhs.true, %sw.epilog
  %25 = load i64, ptr %litSize, align 8, !dbg !695
  %cmp42 = icmp ugt i64 %25, 131072, !dbg !695
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !697

if.then44:                                        ; preds = %if.end41
  store i64 -20, ptr %retval, align 8, !dbg !698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !698

if.end45:                                         ; preds = %if.end41
  %26 = load i64, ptr %litCSize, align 8, !dbg !700
  %27 = load i64, ptr %lhSize, align 8, !dbg !700
  %add46 = add i64 %26, %27, !dbg !700
  %28 = load i64, ptr %srcSize.addr, align 8, !dbg !700
  %cmp47 = icmp ugt i64 %add46, %28, !dbg !700
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !702

if.then49:                                        ; preds = %if.end45
  store i64 -20, ptr %retval, align 8, !dbg !703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !703

if.end50:                                         ; preds = %if.end45
  %29 = load i64, ptr %expectedWriteSize, align 8, !dbg !705
  %30 = load i64, ptr %litSize, align 8, !dbg !705
  %cmp51 = icmp ult i64 %29, %30, !dbg !705
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !707

if.then53:                                        ; preds = %if.end50
  store i64 -70, ptr %retval, align 8, !dbg !708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !708

if.end54:                                         ; preds = %if.end50
  %31 = load ptr, ptr %dctx.addr, align 8, !dbg !710
  %32 = load ptr, ptr %dst.addr, align 8, !dbg !711
  %33 = load i64, ptr %dstCapacity.addr, align 8, !dbg !712
  %34 = load i64, ptr %litSize, align 8, !dbg !713
  %35 = load i32, ptr %streaming.addr, align 4, !dbg !714
  %36 = load i64, ptr %expectedWriteSize, align 8, !dbg !715
  call void @ZSTD_allocateLiteralsBuffer(ptr noundef %31, ptr noundef %32, i64 noundef %33, i64 noundef %34, i32 noundef %35, i64 noundef %36, i32 noundef 0) #13, !dbg !716
  %37 = load ptr, ptr %dctx.addr, align 8, !dbg !717
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %37, i32 0, i32 32, !dbg !718
  %38 = load i32, ptr %ddictIsCold, align 4, !dbg !718
  %tobool55 = icmp ne i32 %38, 0, !dbg !717
  br i1 %tobool55, label %land.lhs.true56, label %if.end63, !dbg !719

land.lhs.true56:                                  ; preds = %if.end54
  %39 = load i64, ptr %litSize, align 8, !dbg !720
  %cmp57 = icmp ugt i64 %39, 768, !dbg !721
  br i1 %cmp57, label %if.then59, label %if.end63, !dbg !722

if.then59:                                        ; preds = %land.lhs.true56
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ptr) #12, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %_ptr, metadata !579, metadata !DIExpression()), !dbg !723
  %40 = load ptr, ptr %dctx.addr, align 8, !dbg !723
  %HUFptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %40, i32 0, i32 3, !dbg !723
  %41 = load ptr, ptr %HUFptr, align 8, !dbg !723
  store ptr %41, ptr %_ptr, align 8, !dbg !723
  call void @llvm.lifetime.start.p0(i64 8, ptr %_size) #12, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %_size, metadata !584, metadata !DIExpression()), !dbg !723
  store i64 16388, ptr %_size, align 8, !dbg !723
  call void @llvm.lifetime.start.p0(i64 8, ptr %_pos) #12, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %_pos, metadata !585, metadata !DIExpression()), !dbg !723
  store i64 0, ptr %_pos, align 8, !dbg !724
  br label %for.cond, !dbg !724

for.cond:                                         ; preds = %for.inc, %if.then59
  %42 = load i64, ptr %_pos, align 8, !dbg !726
  %cmp60 = icmp ult i64 %42, 16388, !dbg !726
  br i1 %cmp60, label %for.body, label %for.end, !dbg !724

for.body:                                         ; preds = %for.cond
  %43 = load ptr, ptr %_ptr, align 8, !dbg !728
  %44 = load i64, ptr %_pos, align 8, !dbg !728
  %add.ptr = getelementptr i8, ptr %43, i64 %44, !dbg !728
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 0, i32 2, i32 1), !dbg !728
  br label %for.inc, !dbg !728

for.inc:                                          ; preds = %for.body
  %45 = load i64, ptr %_pos, align 8, !dbg !726
  %add62 = add i64 %45, 64, !dbg !726
  store i64 %add62, ptr %_pos, align 8, !dbg !726
  br label %for.cond, !dbg !726, !llvm.loop !730

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %_pos) #12, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %_size) #12, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ptr) #12, !dbg !733
  br label %if.end63, !dbg !734

if.end63:                                         ; preds = %for.end, %land.lhs.true56, %if.end54
  %46 = load i32, ptr %litEncType, align 4, !dbg !735
  %cmp64 = icmp eq i32 %46, 3, !dbg !737
  br i1 %cmp64, label %if.then66, label %if.else79, !dbg !738

if.then66:                                        ; preds = %if.end63
  %47 = load i32, ptr %singleStream, align 4, !dbg !739
  %tobool67 = icmp ne i32 %47, 0, !dbg !739
  br i1 %tobool67, label %if.then68, label %if.else, !dbg !742

if.then68:                                        ; preds = %if.then66
  %48 = load ptr, ptr %dctx.addr, align 8, !dbg !743
  %litBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %48, i32 0, i32 50, !dbg !745
  %49 = load ptr, ptr %litBuffer, align 8, !dbg !745
  %50 = load i64, ptr %litSize, align 8, !dbg !746
  %51 = load ptr, ptr %istart, align 8, !dbg !747
  %52 = load i64, ptr %lhSize, align 8, !dbg !748
  %add.ptr69 = getelementptr i8, ptr %51, i64 %52, !dbg !749
  %53 = load i64, ptr %litCSize, align 8, !dbg !750
  %54 = load ptr, ptr %dctx.addr, align 8, !dbg !751
  %HUFptr70 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %54, i32 0, i32 3, !dbg !752
  %55 = load ptr, ptr %HUFptr70, align 8, !dbg !752
  %56 = load ptr, ptr %dctx.addr, align 8, !dbg !753
  %call71 = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %56) #13, !dbg !754
  %call72 = call i64 @HUF_decompress1X_usingDTable_bmi2(ptr noundef %49, i64 noundef %50, ptr noundef %add.ptr69, i64 noundef %53, ptr noundef %55, i32 noundef %call71) #13, !dbg !755
  store i64 %call72, ptr %hufSuccess, align 8, !dbg !756
  br label %if.end78, !dbg !757

if.else:                                          ; preds = %if.then66
  %57 = load ptr, ptr %dctx.addr, align 8, !dbg !758
  %litBuffer73 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %57, i32 0, i32 50, !dbg !760
  %58 = load ptr, ptr %litBuffer73, align 8, !dbg !760
  %59 = load i64, ptr %litSize, align 8, !dbg !761
  %60 = load ptr, ptr %istart, align 8, !dbg !762
  %61 = load i64, ptr %lhSize, align 8, !dbg !763
  %add.ptr74 = getelementptr i8, ptr %60, i64 %61, !dbg !764
  %62 = load i64, ptr %litCSize, align 8, !dbg !765
  %63 = load ptr, ptr %dctx.addr, align 8, !dbg !766
  %HUFptr75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %63, i32 0, i32 3, !dbg !767
  %64 = load ptr, ptr %HUFptr75, align 8, !dbg !767
  %65 = load ptr, ptr %dctx.addr, align 8, !dbg !768
  %call76 = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %65) #13, !dbg !769
  %call77 = call i64 @HUF_decompress4X_usingDTable_bmi2(ptr noundef %58, i64 noundef %59, ptr noundef %add.ptr74, i64 noundef %62, ptr noundef %64, i32 noundef %call76) #13, !dbg !770
  store i64 %call77, ptr %hufSuccess, align 8, !dbg !771
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then68
  br label %if.end98, !dbg !772

if.else79:                                        ; preds = %if.end63
  %66 = load i32, ptr %singleStream, align 4, !dbg !773
  %tobool80 = icmp ne i32 %66, 0, !dbg !773
  br i1 %tobool80, label %if.then81, label %if.else87, !dbg !776

if.then81:                                        ; preds = %if.else79
  %67 = load ptr, ptr %dctx.addr, align 8, !dbg !777
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %67, i32 0, i32 4, !dbg !779
  %hufTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 3, !dbg !780
  %arraydecay = getelementptr inbounds [4097 x i32], ptr %hufTable, i64 0, i64 0, !dbg !777
  %68 = load ptr, ptr %dctx.addr, align 8, !dbg !781
  %litBuffer82 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %68, i32 0, i32 50, !dbg !782
  %69 = load ptr, ptr %litBuffer82, align 8, !dbg !782
  %70 = load i64, ptr %litSize, align 8, !dbg !783
  %71 = load ptr, ptr %istart, align 8, !dbg !784
  %72 = load i64, ptr %lhSize, align 8, !dbg !785
  %add.ptr83 = getelementptr i8, ptr %71, i64 %72, !dbg !786
  %73 = load i64, ptr %litCSize, align 8, !dbg !787
  %74 = load ptr, ptr %dctx.addr, align 8, !dbg !788
  %workspace = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %74, i32 0, i32 5, !dbg !789
  %arraydecay84 = getelementptr inbounds [640 x i32], ptr %workspace, i64 0, i64 0, !dbg !788
  %75 = load ptr, ptr %dctx.addr, align 8, !dbg !790
  %call85 = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %75) #13, !dbg !791
  %call86 = call i64 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr noundef %arraydecay, ptr noundef %69, i64 noundef %70, ptr noundef %add.ptr83, i64 noundef %73, ptr noundef %arraydecay84, i64 noundef 2560, i32 noundef %call85) #13, !dbg !792
  store i64 %call86, ptr %hufSuccess, align 8, !dbg !793
  br label %if.end97, !dbg !794

if.else87:                                        ; preds = %if.else79
  %76 = load ptr, ptr %dctx.addr, align 8, !dbg !795
  %entropy88 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %76, i32 0, i32 4, !dbg !797
  %hufTable89 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy88, i32 0, i32 3, !dbg !798
  %arraydecay90 = getelementptr inbounds [4097 x i32], ptr %hufTable89, i64 0, i64 0, !dbg !795
  %77 = load ptr, ptr %dctx.addr, align 8, !dbg !799
  %litBuffer91 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %77, i32 0, i32 50, !dbg !800
  %78 = load ptr, ptr %litBuffer91, align 8, !dbg !800
  %79 = load i64, ptr %litSize, align 8, !dbg !801
  %80 = load ptr, ptr %istart, align 8, !dbg !802
  %81 = load i64, ptr %lhSize, align 8, !dbg !803
  %add.ptr92 = getelementptr i8, ptr %80, i64 %81, !dbg !804
  %82 = load i64, ptr %litCSize, align 8, !dbg !805
  %83 = load ptr, ptr %dctx.addr, align 8, !dbg !806
  %workspace93 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %83, i32 0, i32 5, !dbg !807
  %arraydecay94 = getelementptr inbounds [640 x i32], ptr %workspace93, i64 0, i64 0, !dbg !806
  %84 = load ptr, ptr %dctx.addr, align 8, !dbg !808
  %call95 = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %84) #13, !dbg !809
  %call96 = call i64 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef %arraydecay90, ptr noundef %78, i64 noundef %79, ptr noundef %add.ptr92, i64 noundef %82, ptr noundef %arraydecay94, i64 noundef 2560, i32 noundef %call95) #13, !dbg !810
  store i64 %call96, ptr %hufSuccess, align 8, !dbg !811
  br label %if.end97

if.end97:                                         ; preds = %if.else87, %if.then81
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end78
  %85 = load ptr, ptr %dctx.addr, align 8, !dbg !812
  %litBufferLocation = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %85, i32 0, i32 52, !dbg !814
  %86 = load i32, ptr %litBufferLocation, align 8, !dbg !814
  %cmp99 = icmp eq i32 %86, 2, !dbg !815
  br i1 %cmp99, label %if.then101, label %if.end112, !dbg !816

if.then101:                                       ; preds = %if.end98
  %87 = load ptr, ptr %dctx.addr, align 8, !dbg !817
  %litExtraBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %87, i32 0, i32 53, !dbg !817
  %arraydecay102 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer, i64 0, i64 0, !dbg !817
  %88 = load ptr, ptr %dctx.addr, align 8, !dbg !817
  %litBufferEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %88, i32 0, i32 51, !dbg !817
  %89 = load ptr, ptr %litBufferEnd, align 8, !dbg !817
  %add.ptr103 = getelementptr i8, ptr %89, i64 -65536, !dbg !817
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay102, ptr align 1 %add.ptr103, i64 65536, i1 false), !dbg !817
  %90 = load ptr, ptr %dctx.addr, align 8, !dbg !819
  %litBuffer104 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %90, i32 0, i32 50, !dbg !819
  %91 = load ptr, ptr %litBuffer104, align 8, !dbg !819
  %add.ptr105 = getelementptr i8, ptr %91, i64 65536, !dbg !819
  %add.ptr106 = getelementptr i8, ptr %add.ptr105, i64 -32, !dbg !819
  %92 = load ptr, ptr %dctx.addr, align 8, !dbg !819
  %litBuffer107 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %92, i32 0, i32 50, !dbg !819
  %93 = load ptr, ptr %litBuffer107, align 8, !dbg !819
  %94 = load i64, ptr %litSize, align 8, !dbg !819
  %sub = sub i64 %94, 65536, !dbg !819
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr106, ptr align 1 %93, i64 %sub, i1 false), !dbg !819
  %95 = load ptr, ptr %dctx.addr, align 8, !dbg !820
  %litBuffer108 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %95, i32 0, i32 50, !dbg !821
  %96 = load ptr, ptr %litBuffer108, align 8, !dbg !822
  %add.ptr109 = getelementptr i8, ptr %96, i64 65504, !dbg !822
  store ptr %add.ptr109, ptr %litBuffer108, align 8, !dbg !822
  %97 = load ptr, ptr %dctx.addr, align 8, !dbg !823
  %litBufferEnd110 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %97, i32 0, i32 51, !dbg !824
  %98 = load ptr, ptr %litBufferEnd110, align 8, !dbg !825
  %add.ptr111 = getelementptr i8, ptr %98, i64 -32, !dbg !825
  store ptr %add.ptr111, ptr %litBufferEnd110, align 8, !dbg !825
  br label %if.end112, !dbg !826

if.end112:                                        ; preds = %if.then101, %if.end98
  %99 = load i64, ptr %hufSuccess, align 8, !dbg !827
  %call113 = call i32 @ERR_isError(i64 noundef %99) #13, !dbg !827
  %tobool114 = icmp ne i32 %call113, 0, !dbg !827
  br i1 %tobool114, label %if.then115, label %if.end116, !dbg !829

if.then115:                                       ; preds = %if.end112
  store i64 -20, ptr %retval, align 8, !dbg !830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !830

if.end116:                                        ; preds = %if.end112
  %100 = load ptr, ptr %dctx.addr, align 8, !dbg !832
  %litBuffer117 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %100, i32 0, i32 50, !dbg !833
  %101 = load ptr, ptr %litBuffer117, align 8, !dbg !833
  %102 = load ptr, ptr %dctx.addr, align 8, !dbg !834
  %litPtr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %102, i32 0, i32 23, !dbg !835
  store ptr %101, ptr %litPtr, align 8, !dbg !836
  %103 = load i64, ptr %litSize, align 8, !dbg !837
  %104 = load ptr, ptr %dctx.addr, align 8, !dbg !838
  %litSize118 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %104, i32 0, i32 25, !dbg !839
  store i64 %103, ptr %litSize118, align 8, !dbg !840
  %105 = load ptr, ptr %dctx.addr, align 8, !dbg !841
  %litEntropy119 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %105, i32 0, i32 16, !dbg !842
  store i32 1, ptr %litEntropy119, align 8, !dbg !843
  %106 = load i32, ptr %litEncType, align 4, !dbg !844
  %cmp120 = icmp eq i32 %106, 2, !dbg !846
  br i1 %cmp120, label %if.then122, label %if.end127, !dbg !847

if.then122:                                       ; preds = %if.end116
  %107 = load ptr, ptr %dctx.addr, align 8, !dbg !848
  %entropy123 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %107, i32 0, i32 4, !dbg !849
  %hufTable124 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy123, i32 0, i32 3, !dbg !850
  %arraydecay125 = getelementptr inbounds [4097 x i32], ptr %hufTable124, i64 0, i64 0, !dbg !848
  %108 = load ptr, ptr %dctx.addr, align 8, !dbg !851
  %HUFptr126 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %108, i32 0, i32 3, !dbg !852
  store ptr %arraydecay125, ptr %HUFptr126, align 8, !dbg !853
  br label %if.end127, !dbg !851

if.end127:                                        ; preds = %if.then122, %if.end116
  %109 = load i64, ptr %litCSize, align 8, !dbg !854
  %110 = load i64, ptr %lhSize, align 8, !dbg !855
  %add128 = add i64 %109, %110, !dbg !856
  store i64 %add128, ptr %retval, align 8, !dbg !857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !857

cleanup:                                          ; preds = %if.end127, %if.then115, %if.then53, %if.then49, %if.then44, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %expectedWriteSize) #12, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %hufSuccess) #12, !dbg !858
  call void @llvm.lifetime.end.p0(i64 4, ptr %lhc) #12, !dbg !858
  call void @llvm.lifetime.end.p0(i64 4, ptr %lhlCode) #12, !dbg !858
  call void @llvm.lifetime.end.p0(i64 4, ptr %singleStream) #12, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %litCSize) #12, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %litSize) #12, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %lhSize) #12, !dbg !858
  br label %cleanup298

sw.bb136:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %litSize137) #12, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %litSize137, metadata !586, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 8, ptr %lhSize138) #12, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %lhSize138, metadata !588, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 4, ptr %lhlCode139) #12, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %lhlCode139, metadata !589, metadata !DIExpression()), !dbg !863
  %111 = load ptr, ptr %istart, align 8, !dbg !864
  %arrayidx140 = getelementptr i8, ptr %111, i64 0, !dbg !864
  %112 = load i8, ptr %arrayidx140, align 1, !dbg !864
  %conv141 = zext i8 %112 to i32, !dbg !865
  %shr142 = ashr i32 %conv141, 2, !dbg !866
  %and143 = and i32 %shr142, 3, !dbg !867
  store i32 %and143, ptr %lhlCode139, align 4, !dbg !863
  call void @llvm.lifetime.start.p0(i64 8, ptr %expectedWriteSize144) #12, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %expectedWriteSize144, metadata !590, metadata !DIExpression()), !dbg !869
  %113 = load i64, ptr %dstCapacity.addr, align 8, !dbg !870
  %cmp145 = icmp ult i64 131072, %113, !dbg !870
  br i1 %cmp145, label %cond.true147, label %cond.false148, !dbg !870

cond.true147:                                     ; preds = %sw.bb136
  br label %cond.end149, !dbg !870

cond.false148:                                    ; preds = %sw.bb136
  %114 = load i64, ptr %dstCapacity.addr, align 8, !dbg !870
  br label %cond.end149, !dbg !870

cond.end149:                                      ; preds = %cond.false148, %cond.true147
  %cond150 = phi i64 [ 131072, %cond.true147 ], [ %114, %cond.false148 ], !dbg !870
  store i64 %cond150, ptr %expectedWriteSize144, align 8, !dbg !869
  %115 = load i32, ptr %lhlCode139, align 4, !dbg !871
  switch i32 %115, label %sw.default152 [
    i32 0, label %sw.bb151
    i32 2, label %sw.bb151
    i32 1, label %sw.bb157
    i32 3, label %sw.bb162
  ], !dbg !872

sw.bb151:                                         ; preds = %cond.end149, %cond.end149
  br label %sw.default152, !dbg !873

sw.default152:                                    ; preds = %cond.end149, %sw.bb151
  store i64 1, ptr %lhSize138, align 8, !dbg !875
  %116 = load ptr, ptr %istart, align 8, !dbg !876
  %arrayidx153 = getelementptr i8, ptr %116, i64 0, !dbg !876
  %117 = load i8, ptr %arrayidx153, align 1, !dbg !876
  %conv154 = zext i8 %117 to i32, !dbg !876
  %shr155 = ashr i32 %conv154, 3, !dbg !877
  %conv156 = sext i32 %shr155 to i64, !dbg !876
  store i64 %conv156, ptr %litSize137, align 8, !dbg !878
  br label %sw.epilog166, !dbg !879

sw.bb157:                                         ; preds = %cond.end149
  store i64 2, ptr %lhSize138, align 8, !dbg !880
  %118 = load ptr, ptr %istart, align 8, !dbg !881
  %call158 = call zeroext i16 @MEM_readLE16(ptr noundef %118) #13, !dbg !882
  %conv159 = zext i16 %call158 to i32, !dbg !882
  %shr160 = ashr i32 %conv159, 4, !dbg !883
  %conv161 = sext i32 %shr160 to i64, !dbg !882
  store i64 %conv161, ptr %litSize137, align 8, !dbg !884
  br label %sw.epilog166, !dbg !885

sw.bb162:                                         ; preds = %cond.end149
  store i64 3, ptr %lhSize138, align 8, !dbg !886
  %119 = load ptr, ptr %istart, align 8, !dbg !887
  %call163 = call i32 @MEM_readLE24(ptr noundef %119) #13, !dbg !888
  %shr164 = lshr i32 %call163, 4, !dbg !889
  %conv165 = zext i32 %shr164 to i64, !dbg !888
  store i64 %conv165, ptr %litSize137, align 8, !dbg !890
  br label %sw.epilog166, !dbg !891

sw.epilog166:                                     ; preds = %sw.bb162, %sw.bb157, %sw.default152
  %120 = load i64, ptr %litSize137, align 8, !dbg !892
  %cmp167 = icmp ugt i64 %120, 0, !dbg !892
  br i1 %cmp167, label %land.lhs.true169, label %if.end173, !dbg !892

land.lhs.true169:                                 ; preds = %sw.epilog166
  %121 = load ptr, ptr %dst.addr, align 8, !dbg !892
  %cmp170 = icmp eq ptr %121, null, !dbg !892
  br i1 %cmp170, label %if.then172, label %if.end173, !dbg !894

if.then172:                                       ; preds = %land.lhs.true169
  store i64 -70, ptr %retval, align 8, !dbg !895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217, !dbg !895

if.end173:                                        ; preds = %land.lhs.true169, %sw.epilog166
  %122 = load i64, ptr %expectedWriteSize144, align 8, !dbg !897
  %123 = load i64, ptr %litSize137, align 8, !dbg !897
  %cmp174 = icmp ult i64 %122, %123, !dbg !897
  br i1 %cmp174, label %if.then176, label %if.end177, !dbg !899

if.then176:                                       ; preds = %if.end173
  store i64 -70, ptr %retval, align 8, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217, !dbg !900

if.end177:                                        ; preds = %if.end173
  %124 = load ptr, ptr %dctx.addr, align 8, !dbg !902
  %125 = load ptr, ptr %dst.addr, align 8, !dbg !903
  %126 = load i64, ptr %dstCapacity.addr, align 8, !dbg !904
  %127 = load i64, ptr %litSize137, align 8, !dbg !905
  %128 = load i32, ptr %streaming.addr, align 4, !dbg !906
  %129 = load i64, ptr %expectedWriteSize144, align 8, !dbg !907
  call void @ZSTD_allocateLiteralsBuffer(ptr noundef %124, ptr noundef %125, i64 noundef %126, i64 noundef %127, i32 noundef %128, i64 noundef %129, i32 noundef 1) #13, !dbg !908
  %130 = load i64, ptr %lhSize138, align 8, !dbg !909
  %131 = load i64, ptr %litSize137, align 8, !dbg !911
  %add178 = add i64 %130, %131, !dbg !912
  %add179 = add i64 %add178, 32, !dbg !913
  %132 = load i64, ptr %srcSize.addr, align 8, !dbg !914
  %cmp180 = icmp ugt i64 %add179, %132, !dbg !915
  br i1 %cmp180, label %if.then182, label %if.end208, !dbg !916

if.then182:                                       ; preds = %if.end177
  %133 = load i64, ptr %litSize137, align 8, !dbg !917
  %134 = load i64, ptr %lhSize138, align 8, !dbg !917
  %add183 = add i64 %133, %134, !dbg !917
  %135 = load i64, ptr %srcSize.addr, align 8, !dbg !917
  %cmp184 = icmp ugt i64 %add183, %135, !dbg !917
  br i1 %cmp184, label %if.then186, label %if.end187, !dbg !920

if.then186:                                       ; preds = %if.then182
  store i64 -20, ptr %retval, align 8, !dbg !921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217, !dbg !921

if.end187:                                        ; preds = %if.then182
  %136 = load ptr, ptr %dctx.addr, align 8, !dbg !923
  %litBufferLocation188 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %136, i32 0, i32 52, !dbg !925
  %137 = load i32, ptr %litBufferLocation188, align 8, !dbg !925
  %cmp189 = icmp eq i32 %137, 2, !dbg !926
  br i1 %cmp189, label %if.then191, label %if.else200, !dbg !927

if.then191:                                       ; preds = %if.end187
  %138 = load ptr, ptr %dctx.addr, align 8, !dbg !928
  %litBuffer192 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %138, i32 0, i32 50, !dbg !928
  %139 = load ptr, ptr %litBuffer192, align 8, !dbg !928
  %140 = load ptr, ptr %istart, align 8, !dbg !928
  %141 = load i64, ptr %lhSize138, align 8, !dbg !928
  %add.ptr193 = getelementptr i8, ptr %140, i64 %141, !dbg !928
  %142 = load i64, ptr %litSize137, align 8, !dbg !928
  %sub194 = sub i64 %142, 65536, !dbg !928
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %139, ptr align 1 %add.ptr193, i64 %sub194, i1 false), !dbg !928
  %143 = load ptr, ptr %dctx.addr, align 8, !dbg !930
  %litExtraBuffer195 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %143, i32 0, i32 53, !dbg !930
  %arraydecay196 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer195, i64 0, i64 0, !dbg !930
  %144 = load ptr, ptr %istart, align 8, !dbg !930
  %145 = load i64, ptr %lhSize138, align 8, !dbg !930
  %add.ptr197 = getelementptr i8, ptr %144, i64 %145, !dbg !930
  %146 = load i64, ptr %litSize137, align 8, !dbg !930
  %add.ptr198 = getelementptr i8, ptr %add.ptr197, i64 %146, !dbg !930
  %add.ptr199 = getelementptr i8, ptr %add.ptr198, i64 -65536, !dbg !930
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay196, ptr align 1 %add.ptr199, i64 65536, i1 false), !dbg !930
  br label %if.end203, !dbg !931

if.else200:                                       ; preds = %if.end187
  %147 = load ptr, ptr %dctx.addr, align 8, !dbg !932
  %litBuffer201 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %147, i32 0, i32 50, !dbg !932
  %148 = load ptr, ptr %litBuffer201, align 8, !dbg !932
  %149 = load ptr, ptr %istart, align 8, !dbg !932
  %150 = load i64, ptr %lhSize138, align 8, !dbg !932
  %add.ptr202 = getelementptr i8, ptr %149, i64 %150, !dbg !932
  %151 = load i64, ptr %litSize137, align 8, !dbg !932
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %148, ptr align 1 %add.ptr202, i64 %151, i1 false), !dbg !932
  br label %if.end203

if.end203:                                        ; preds = %if.else200, %if.then191
  %152 = load ptr, ptr %dctx.addr, align 8, !dbg !934
  %litBuffer204 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %152, i32 0, i32 50, !dbg !935
  %153 = load ptr, ptr %litBuffer204, align 8, !dbg !935
  %154 = load ptr, ptr %dctx.addr, align 8, !dbg !936
  %litPtr205 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %154, i32 0, i32 23, !dbg !937
  store ptr %153, ptr %litPtr205, align 8, !dbg !938
  %155 = load i64, ptr %litSize137, align 8, !dbg !939
  %156 = load ptr, ptr %dctx.addr, align 8, !dbg !940
  %litSize206 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %156, i32 0, i32 25, !dbg !941
  store i64 %155, ptr %litSize206, align 8, !dbg !942
  %157 = load i64, ptr %lhSize138, align 8, !dbg !943
  %158 = load i64, ptr %litSize137, align 8, !dbg !944
  %add207 = add i64 %157, %158, !dbg !945
  store i64 %add207, ptr %retval, align 8, !dbg !946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217, !dbg !946

if.end208:                                        ; preds = %if.end177
  %159 = load ptr, ptr %istart, align 8, !dbg !947
  %160 = load i64, ptr %lhSize138, align 8, !dbg !948
  %add.ptr209 = getelementptr i8, ptr %159, i64 %160, !dbg !949
  %161 = load ptr, ptr %dctx.addr, align 8, !dbg !950
  %litPtr210 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %161, i32 0, i32 23, !dbg !951
  store ptr %add.ptr209, ptr %litPtr210, align 8, !dbg !952
  %162 = load i64, ptr %litSize137, align 8, !dbg !953
  %163 = load ptr, ptr %dctx.addr, align 8, !dbg !954
  %litSize211 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %163, i32 0, i32 25, !dbg !955
  store i64 %162, ptr %litSize211, align 8, !dbg !956
  %164 = load ptr, ptr %dctx.addr, align 8, !dbg !957
  %litPtr212 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %164, i32 0, i32 23, !dbg !958
  %165 = load ptr, ptr %litPtr212, align 8, !dbg !958
  %166 = load i64, ptr %litSize137, align 8, !dbg !959
  %add.ptr213 = getelementptr i8, ptr %165, i64 %166, !dbg !960
  %167 = load ptr, ptr %dctx.addr, align 8, !dbg !961
  %litBufferEnd214 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %167, i32 0, i32 51, !dbg !962
  store ptr %add.ptr213, ptr %litBufferEnd214, align 8, !dbg !963
  %168 = load ptr, ptr %dctx.addr, align 8, !dbg !964
  %litBufferLocation215 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %168, i32 0, i32 52, !dbg !965
  store i32 0, ptr %litBufferLocation215, align 8, !dbg !966
  %169 = load i64, ptr %lhSize138, align 8, !dbg !967
  %170 = load i64, ptr %litSize137, align 8, !dbg !968
  %add216 = add i64 %169, %170, !dbg !969
  store i64 %add216, ptr %retval, align 8, !dbg !970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217, !dbg !970

cleanup217:                                       ; preds = %if.end208, %if.end203, %if.then186, %if.then176, %if.then172
  call void @llvm.lifetime.end.p0(i64 8, ptr %expectedWriteSize144) #12, !dbg !971
  call void @llvm.lifetime.end.p0(i64 4, ptr %lhlCode139) #12, !dbg !971
  call void @llvm.lifetime.end.p0(i64 8, ptr %lhSize138) #12, !dbg !971
  call void @llvm.lifetime.end.p0(i64 8, ptr %litSize137) #12, !dbg !971
  br label %cleanup298

sw.bb221:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %lhlCode222) #12, !dbg !972
  call void @llvm.dbg.declare(metadata ptr %lhlCode222, metadata !591, metadata !DIExpression()), !dbg !973
  %171 = load ptr, ptr %istart, align 8, !dbg !974
  %arrayidx223 = getelementptr i8, ptr %171, i64 0, !dbg !974
  %172 = load i8, ptr %arrayidx223, align 1, !dbg !974
  %conv224 = zext i8 %172 to i32, !dbg !975
  %shr225 = ashr i32 %conv224, 2, !dbg !976
  %and226 = and i32 %shr225, 3, !dbg !977
  store i32 %and226, ptr %lhlCode222, align 4, !dbg !973
  call void @llvm.lifetime.start.p0(i64 8, ptr %litSize227) #12, !dbg !978
  call void @llvm.dbg.declare(metadata ptr %litSize227, metadata !593, metadata !DIExpression()), !dbg !979
  call void @llvm.lifetime.start.p0(i64 8, ptr %lhSize228) #12, !dbg !978
  call void @llvm.dbg.declare(metadata ptr %lhSize228, metadata !594, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %expectedWriteSize229) #12, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %expectedWriteSize229, metadata !595, metadata !DIExpression()), !dbg !982
  %173 = load i64, ptr %dstCapacity.addr, align 8, !dbg !983
  %cmp230 = icmp ult i64 131072, %173, !dbg !983
  br i1 %cmp230, label %cond.true232, label %cond.false233, !dbg !983

cond.true232:                                     ; preds = %sw.bb221
  br label %cond.end234, !dbg !983

cond.false233:                                    ; preds = %sw.bb221
  %174 = load i64, ptr %dstCapacity.addr, align 8, !dbg !983
  br label %cond.end234, !dbg !983

cond.end234:                                      ; preds = %cond.false233, %cond.true232
  %cond235 = phi i64 [ 131072, %cond.true232 ], [ %174, %cond.false233 ], !dbg !983
  store i64 %cond235, ptr %expectedWriteSize229, align 8, !dbg !982
  %175 = load i32, ptr %lhlCode222, align 4, !dbg !984
  switch i32 %175, label %sw.default237 [
    i32 0, label %sw.bb236
    i32 2, label %sw.bb236
    i32 1, label %sw.bb242
    i32 3, label %sw.bb247
  ], !dbg !985

sw.bb236:                                         ; preds = %cond.end234, %cond.end234
  br label %sw.default237, !dbg !986

sw.default237:                                    ; preds = %cond.end234, %sw.bb236
  store i64 1, ptr %lhSize228, align 8, !dbg !988
  %176 = load ptr, ptr %istart, align 8, !dbg !989
  %arrayidx238 = getelementptr i8, ptr %176, i64 0, !dbg !989
  %177 = load i8, ptr %arrayidx238, align 1, !dbg !989
  %conv239 = zext i8 %177 to i32, !dbg !989
  %shr240 = ashr i32 %conv239, 3, !dbg !990
  %conv241 = sext i32 %shr240 to i64, !dbg !989
  store i64 %conv241, ptr %litSize227, align 8, !dbg !991
  br label %sw.epilog255, !dbg !992

sw.bb242:                                         ; preds = %cond.end234
  store i64 2, ptr %lhSize228, align 8, !dbg !993
  %178 = load ptr, ptr %istart, align 8, !dbg !994
  %call243 = call zeroext i16 @MEM_readLE16(ptr noundef %178) #13, !dbg !995
  %conv244 = zext i16 %call243 to i32, !dbg !995
  %shr245 = ashr i32 %conv244, 4, !dbg !996
  %conv246 = sext i32 %shr245 to i64, !dbg !995
  store i64 %conv246, ptr %litSize227, align 8, !dbg !997
  br label %sw.epilog255, !dbg !998

sw.bb247:                                         ; preds = %cond.end234
  store i64 3, ptr %lhSize228, align 8, !dbg !999
  %179 = load ptr, ptr %istart, align 8, !dbg !1000
  %call248 = call i32 @MEM_readLE24(ptr noundef %179) #13, !dbg !1001
  %shr249 = lshr i32 %call248, 4, !dbg !1002
  %conv250 = zext i32 %shr249 to i64, !dbg !1001
  store i64 %conv250, ptr %litSize227, align 8, !dbg !1003
  %180 = load i64, ptr %srcSize.addr, align 8, !dbg !1004
  %cmp251 = icmp ult i64 %180, 4, !dbg !1004
  br i1 %cmp251, label %if.then253, label %if.end254, !dbg !1006

if.then253:                                       ; preds = %sw.bb247
  store i64 -20, ptr %retval, align 8, !dbg !1007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup292, !dbg !1007

if.end254:                                        ; preds = %sw.bb247
  br label %sw.epilog255, !dbg !1009

sw.epilog255:                                     ; preds = %if.end254, %sw.bb242, %sw.default237
  %181 = load i64, ptr %litSize227, align 8, !dbg !1010
  %cmp256 = icmp ugt i64 %181, 0, !dbg !1010
  br i1 %cmp256, label %land.lhs.true258, label %if.end262, !dbg !1010

land.lhs.true258:                                 ; preds = %sw.epilog255
  %182 = load ptr, ptr %dst.addr, align 8, !dbg !1010
  %cmp259 = icmp eq ptr %182, null, !dbg !1010
  br i1 %cmp259, label %if.then261, label %if.end262, !dbg !1012

if.then261:                                       ; preds = %land.lhs.true258
  store i64 -70, ptr %retval, align 8, !dbg !1013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup292, !dbg !1013

if.end262:                                        ; preds = %land.lhs.true258, %sw.epilog255
  %183 = load i64, ptr %litSize227, align 8, !dbg !1015
  %cmp263 = icmp ugt i64 %183, 131072, !dbg !1015
  br i1 %cmp263, label %if.then265, label %if.end266, !dbg !1017

if.then265:                                       ; preds = %if.end262
  store i64 -20, ptr %retval, align 8, !dbg !1018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup292, !dbg !1018

if.end266:                                        ; preds = %if.end262
  %184 = load i64, ptr %expectedWriteSize229, align 8, !dbg !1020
  %185 = load i64, ptr %litSize227, align 8, !dbg !1020
  %cmp267 = icmp ult i64 %184, %185, !dbg !1020
  br i1 %cmp267, label %if.then269, label %if.end270, !dbg !1022

if.then269:                                       ; preds = %if.end266
  store i64 -70, ptr %retval, align 8, !dbg !1023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup292, !dbg !1023

if.end270:                                        ; preds = %if.end266
  %186 = load ptr, ptr %dctx.addr, align 8, !dbg !1025
  %187 = load ptr, ptr %dst.addr, align 8, !dbg !1026
  %188 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1027
  %189 = load i64, ptr %litSize227, align 8, !dbg !1028
  %190 = load i32, ptr %streaming.addr, align 4, !dbg !1029
  %191 = load i64, ptr %expectedWriteSize229, align 8, !dbg !1030
  call void @ZSTD_allocateLiteralsBuffer(ptr noundef %186, ptr noundef %187, i64 noundef %188, i64 noundef %189, i32 noundef %190, i64 noundef %191, i32 noundef 1) #13, !dbg !1031
  %192 = load ptr, ptr %dctx.addr, align 8, !dbg !1032
  %litBufferLocation271 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %192, i32 0, i32 52, !dbg !1034
  %193 = load i32, ptr %litBufferLocation271, align 8, !dbg !1034
  %cmp272 = icmp eq i32 %193, 2, !dbg !1035
  br i1 %cmp272, label %if.then274, label %if.else283, !dbg !1036

if.then274:                                       ; preds = %if.end270
  %194 = load ptr, ptr %dctx.addr, align 8, !dbg !1037
  %litBuffer275 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %194, i32 0, i32 50, !dbg !1037
  %195 = load ptr, ptr %litBuffer275, align 8, !dbg !1037
  %196 = load ptr, ptr %istart, align 8, !dbg !1037
  %197 = load i64, ptr %lhSize228, align 8, !dbg !1037
  %arrayidx276 = getelementptr i8, ptr %196, i64 %197, !dbg !1037
  %198 = load i8, ptr %arrayidx276, align 1, !dbg !1037
  %conv277 = zext i8 %198 to i32, !dbg !1037
  %199 = trunc i32 %conv277 to i8, !dbg !1037
  %200 = load i64, ptr %litSize227, align 8, !dbg !1037
  %sub278 = sub i64 %200, 65536, !dbg !1037
  call void @llvm.memset.p0.i64(ptr align 1 %195, i8 %199, i64 %sub278, i1 false), !dbg !1037
  %201 = load ptr, ptr %dctx.addr, align 8, !dbg !1039
  %litExtraBuffer279 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %201, i32 0, i32 53, !dbg !1039
  %arraydecay280 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer279, i64 0, i64 0, !dbg !1039
  %202 = load ptr, ptr %istart, align 8, !dbg !1039
  %203 = load i64, ptr %lhSize228, align 8, !dbg !1039
  %arrayidx281 = getelementptr i8, ptr %202, i64 %203, !dbg !1039
  %204 = load i8, ptr %arrayidx281, align 1, !dbg !1039
  %conv282 = zext i8 %204 to i32, !dbg !1039
  %205 = trunc i32 %conv282 to i8, !dbg !1039
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay280, i8 %205, i64 65536, i1 false), !dbg !1039
  br label %if.end287, !dbg !1040

if.else283:                                       ; preds = %if.end270
  %206 = load ptr, ptr %dctx.addr, align 8, !dbg !1041
  %litBuffer284 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %206, i32 0, i32 50, !dbg !1041
  %207 = load ptr, ptr %litBuffer284, align 8, !dbg !1041
  %208 = load ptr, ptr %istart, align 8, !dbg !1041
  %209 = load i64, ptr %lhSize228, align 8, !dbg !1041
  %arrayidx285 = getelementptr i8, ptr %208, i64 %209, !dbg !1041
  %210 = load i8, ptr %arrayidx285, align 1, !dbg !1041
  %conv286 = zext i8 %210 to i32, !dbg !1041
  %211 = trunc i32 %conv286 to i8, !dbg !1041
  %212 = load i64, ptr %litSize227, align 8, !dbg !1041
  call void @llvm.memset.p0.i64(ptr align 1 %207, i8 %211, i64 %212, i1 false), !dbg !1041
  br label %if.end287

if.end287:                                        ; preds = %if.else283, %if.then274
  %213 = load ptr, ptr %dctx.addr, align 8, !dbg !1043
  %litBuffer288 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %213, i32 0, i32 50, !dbg !1044
  %214 = load ptr, ptr %litBuffer288, align 8, !dbg !1044
  %215 = load ptr, ptr %dctx.addr, align 8, !dbg !1045
  %litPtr289 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %215, i32 0, i32 23, !dbg !1046
  store ptr %214, ptr %litPtr289, align 8, !dbg !1047
  %216 = load i64, ptr %litSize227, align 8, !dbg !1048
  %217 = load ptr, ptr %dctx.addr, align 8, !dbg !1049
  %litSize290 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %217, i32 0, i32 25, !dbg !1050
  store i64 %216, ptr %litSize290, align 8, !dbg !1051
  %218 = load i64, ptr %lhSize228, align 8, !dbg !1052
  %add291 = add i64 %218, 1, !dbg !1053
  store i64 %add291, ptr %retval, align 8, !dbg !1054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup292, !dbg !1054

cleanup292:                                       ; preds = %if.end287, %if.then269, %if.then265, %if.then261, %if.then253
  call void @llvm.lifetime.end.p0(i64 8, ptr %expectedWriteSize229) #12, !dbg !1055
  call void @llvm.lifetime.end.p0(i64 8, ptr %lhSize228) #12, !dbg !1055
  call void @llvm.lifetime.end.p0(i64 8, ptr %litSize227) #12, !dbg !1055
  call void @llvm.lifetime.end.p0(i64 4, ptr %lhlCode222) #12, !dbg !1055
  br label %cleanup298

sw.default296:                                    ; preds = %if.end
  br label %do.body, !dbg !1056

do.body:                                          ; preds = %sw.default296
  store i64 -20, ptr %retval, align 8, !dbg !1057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup298, !dbg !1057

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !1057

do.end:                                           ; preds = %do.cond
  br label %sw.epilog297, !dbg !1059

sw.epilog297:                                     ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1060
  br label %cleanup298, !dbg !1060

cleanup298:                                       ; preds = %sw.epilog297, %do.body, %cleanup292, %cleanup217, %cleanup, %if.then8, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %litEncType) #12, !dbg !1060
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #12, !dbg !1060
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %if.then, %cleanup298, %cleanup298
  %219 = load i64, ptr %retval, align 8, !dbg !1061
  ret i64 %219, !dbg !1061

unreachable:                                      ; preds = %cleanup298
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_readLE32(ptr noundef %memPtr) #3 align 16 !dbg !1062 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !1064, metadata !DIExpression()), !dbg !1065
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1066
  %call = call i32 @get_unaligned_le32(ptr noundef %0) #13, !dbg !1067
  ret i32 %call, !dbg !1068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_allocateLiteralsBuffer(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, i64 noundef %litSize, i32 noundef %streaming, i64 noundef %expectedWriteSize, i32 noundef %splitImmediately) #0 align 16 !dbg !1069 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %litSize.addr = alloca i64, align 8
  %streaming.addr = alloca i32, align 4
  %expectedWriteSize.addr = alloca i64, align 8
  %splitImmediately.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1075, metadata !DIExpression()), !dbg !1082
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1076, metadata !DIExpression()), !dbg !1083
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1077, metadata !DIExpression()), !dbg !1084
  store i64 %litSize, ptr %litSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litSize.addr, metadata !1078, metadata !DIExpression()), !dbg !1085
  store i32 %streaming, ptr %streaming.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %streaming.addr, metadata !1079, metadata !DIExpression()), !dbg !1086
  store i64 %expectedWriteSize, ptr %expectedWriteSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expectedWriteSize.addr, metadata !1080, metadata !DIExpression()), !dbg !1087
  store i32 %splitImmediately, ptr %splitImmediately.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %splitImmediately.addr, metadata !1081, metadata !DIExpression()), !dbg !1088
  %0 = load i32, ptr %streaming.addr, align 4, !dbg !1089
  %cmp = icmp eq i32 %0, 0, !dbg !1091
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1092

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1093
  %2 = load i64, ptr %litSize.addr, align 8, !dbg !1094
  %add = add i64 131104, %2, !dbg !1095
  %add1 = add i64 %add, 32, !dbg !1096
  %cmp2 = icmp ugt i64 %1, %add1, !dbg !1097
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1098

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1099
  %add.ptr = getelementptr i8, ptr %3, i64 131072, !dbg !1101
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i64 32, !dbg !1102
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !1103
  %litBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 50, !dbg !1104
  store ptr %add.ptr3, ptr %litBuffer, align 8, !dbg !1105
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !1106
  %litBuffer4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 50, !dbg !1107
  %6 = load ptr, ptr %litBuffer4, align 8, !dbg !1107
  %7 = load i64, ptr %litSize.addr, align 8, !dbg !1108
  %add.ptr5 = getelementptr i8, ptr %6, i64 %7, !dbg !1109
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !1110
  %litBufferEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 51, !dbg !1111
  store ptr %add.ptr5, ptr %litBufferEnd, align 8, !dbg !1112
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !1113
  %litBufferLocation = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 52, !dbg !1114
  store i32 1, ptr %litBufferLocation, align 8, !dbg !1115
  br label %if.end33, !dbg !1116

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load i64, ptr %litSize.addr, align 8, !dbg !1117
  %cmp6 = icmp ugt i64 %10, 65536, !dbg !1119
  br i1 %cmp6, label %if.then7, label %if.else26, !dbg !1120

if.then7:                                         ; preds = %if.else
  %11 = load i32, ptr %splitImmediately.addr, align 4, !dbg !1121
  %tobool = icmp ne i32 %11, 0, !dbg !1121
  br i1 %tobool, label %if.then8, label %if.else18, !dbg !1124

if.then8:                                         ; preds = %if.then7
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !1125
  %13 = load i64, ptr %expectedWriteSize.addr, align 8, !dbg !1127
  %add.ptr9 = getelementptr i8, ptr %12, i64 %13, !dbg !1128
  %14 = load i64, ptr %litSize.addr, align 8, !dbg !1129
  %idx.neg = sub i64 0, %14, !dbg !1130
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i64 %idx.neg, !dbg !1130
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i64 65536, !dbg !1131
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i64 -32, !dbg !1132
  %15 = load ptr, ptr %dctx.addr, align 8, !dbg !1133
  %litBuffer13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %15, i32 0, i32 50, !dbg !1134
  store ptr %add.ptr12, ptr %litBuffer13, align 8, !dbg !1135
  %16 = load ptr, ptr %dctx.addr, align 8, !dbg !1136
  %litBuffer14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i32 0, i32 50, !dbg !1137
  %17 = load ptr, ptr %litBuffer14, align 8, !dbg !1137
  %18 = load i64, ptr %litSize.addr, align 8, !dbg !1138
  %add.ptr15 = getelementptr i8, ptr %17, i64 %18, !dbg !1139
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i64 -65536, !dbg !1140
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !1141
  %litBufferEnd17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 51, !dbg !1142
  store ptr %add.ptr16, ptr %litBufferEnd17, align 8, !dbg !1143
  br label %if.end, !dbg !1144

if.else18:                                        ; preds = %if.then7
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !1145
  %21 = load i64, ptr %expectedWriteSize.addr, align 8, !dbg !1147
  %add.ptr19 = getelementptr i8, ptr %20, i64 %21, !dbg !1148
  %22 = load i64, ptr %litSize.addr, align 8, !dbg !1149
  %idx.neg20 = sub i64 0, %22, !dbg !1150
  %add.ptr21 = getelementptr i8, ptr %add.ptr19, i64 %idx.neg20, !dbg !1150
  %23 = load ptr, ptr %dctx.addr, align 8, !dbg !1151
  %litBuffer22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %23, i32 0, i32 50, !dbg !1152
  store ptr %add.ptr21, ptr %litBuffer22, align 8, !dbg !1153
  %24 = load ptr, ptr %dst.addr, align 8, !dbg !1154
  %25 = load i64, ptr %expectedWriteSize.addr, align 8, !dbg !1155
  %add.ptr23 = getelementptr i8, ptr %24, i64 %25, !dbg !1156
  %26 = load ptr, ptr %dctx.addr, align 8, !dbg !1157
  %litBufferEnd24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %26, i32 0, i32 51, !dbg !1158
  store ptr %add.ptr23, ptr %litBufferEnd24, align 8, !dbg !1159
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then8
  %27 = load ptr, ptr %dctx.addr, align 8, !dbg !1160
  %litBufferLocation25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %27, i32 0, i32 52, !dbg !1161
  store i32 2, ptr %litBufferLocation25, align 8, !dbg !1162
  br label %if.end32, !dbg !1163

if.else26:                                        ; preds = %if.else
  %28 = load ptr, ptr %dctx.addr, align 8, !dbg !1164
  %litExtraBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %28, i32 0, i32 53, !dbg !1166
  %arraydecay = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer, i64 0, i64 0, !dbg !1164
  %29 = load ptr, ptr %dctx.addr, align 8, !dbg !1167
  %litBuffer27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %29, i32 0, i32 50, !dbg !1168
  store ptr %arraydecay, ptr %litBuffer27, align 8, !dbg !1169
  %30 = load ptr, ptr %dctx.addr, align 8, !dbg !1170
  %litBuffer28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %30, i32 0, i32 50, !dbg !1171
  %31 = load ptr, ptr %litBuffer28, align 8, !dbg !1171
  %32 = load i64, ptr %litSize.addr, align 8, !dbg !1172
  %add.ptr29 = getelementptr i8, ptr %31, i64 %32, !dbg !1173
  %33 = load ptr, ptr %dctx.addr, align 8, !dbg !1174
  %litBufferEnd30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %33, i32 0, i32 51, !dbg !1175
  store ptr %add.ptr29, ptr %litBufferEnd30, align 8, !dbg !1176
  %34 = load ptr, ptr %dctx.addr, align 8, !dbg !1177
  %litBufferLocation31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %34, i32 0, i32 52, !dbg !1178
  store i32 0, ptr %litBufferLocation31, align 8, !dbg !1179
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.end
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then
  ret void, !dbg !1180
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1181 dso_local i64 @HUF_decompress1X_usingDTable_bmi2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_DCtx_get_bmi2(ptr noundef %dctx) #3 align 16 !dbg !1184 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1190, metadata !DIExpression()), !dbg !1191
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1192
  %bmi2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 28, !dbg !1193
  %1 = load i32, ptr %bmi2, align 8, !dbg !1193
  ret i32 %1, !dbg !1194
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1195 dso_local i64 @HUF_decompress4X_usingDTable_bmi2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1196 dso_local i64 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1200 dso_local i64 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_isError(i64 noundef %code) #0 align 16 !dbg !1201 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !1206, metadata !DIExpression()), !dbg !1207
  %0 = load i64, ptr %code.addr, align 8, !dbg !1208
  %cmp = icmp ugt i64 %0, -120, !dbg !1209
  %conv = zext i1 %cmp to i32, !dbg !1209
  ret i32 %conv, !dbg !1210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @MEM_readLE16(ptr noundef %memPtr) #3 align 16 !dbg !1211 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !1215, metadata !DIExpression()), !dbg !1216
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1217
  %call = call zeroext i16 @get_unaligned_le16(ptr noundef %0) #13, !dbg !1218
  ret i16 %call, !dbg !1219
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ZSTD_buildFSETable(ptr noundef %dt, ptr noundef %normalizedCounter, i32 noundef %maxSymbolValue, ptr noundef %baseValue, ptr noundef %nbAdditionalBits, i32 noundef %tableLog, ptr noundef %wksp, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !1220 {
entry:
  %dt.addr = alloca ptr, align 8
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSymbolValue.addr = alloca i32, align 4
  %baseValue.addr = alloca ptr, align 8
  %nbAdditionalBits.addr = alloca ptr, align 8
  %tableLog.addr = alloca i32, align 4
  %wksp.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !1229, metadata !DIExpression()), !dbg !1238
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !1230, metadata !DIExpression()), !dbg !1239
  store i32 %maxSymbolValue, ptr %maxSymbolValue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxSymbolValue.addr, metadata !1231, metadata !DIExpression()), !dbg !1240
  store ptr %baseValue, ptr %baseValue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %baseValue.addr, metadata !1232, metadata !DIExpression()), !dbg !1241
  store ptr %nbAdditionalBits, ptr %nbAdditionalBits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbAdditionalBits.addr, metadata !1233, metadata !DIExpression()), !dbg !1242
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !1234, metadata !DIExpression()), !dbg !1243
  store ptr %wksp, ptr %wksp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wksp.addr, metadata !1235, metadata !DIExpression()), !dbg !1244
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1236, metadata !DIExpression()), !dbg !1245
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1237, metadata !DIExpression()), !dbg !1246
  %0 = load i32, ptr %bmi2.addr, align 4, !dbg !1247
  %tobool = icmp ne i32 %0, 0, !dbg !1247
  br i1 %tobool, label %if.then, label %if.end, !dbg !1249

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dt.addr, align 8, !dbg !1250
  %2 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !1252
  %3 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !1253
  %4 = load ptr, ptr %baseValue.addr, align 8, !dbg !1254
  %5 = load ptr, ptr %nbAdditionalBits.addr, align 8, !dbg !1255
  %6 = load i32, ptr %tableLog.addr, align 4, !dbg !1256
  %7 = load ptr, ptr %wksp.addr, align 8, !dbg !1257
  %8 = load i64, ptr %wkspSize.addr, align 8, !dbg !1258
  call void @ZSTD_buildFSETable_body_bmi2(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i64 noundef %8) #13, !dbg !1259
  br label %return, !dbg !1260

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %bmi2.addr, align 4, !dbg !1261
  %10 = load ptr, ptr %dt.addr, align 8, !dbg !1262
  %11 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !1263
  %12 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !1264
  %13 = load ptr, ptr %baseValue.addr, align 8, !dbg !1265
  %14 = load ptr, ptr %nbAdditionalBits.addr, align 8, !dbg !1266
  %15 = load i32, ptr %tableLog.addr, align 4, !dbg !1267
  %16 = load ptr, ptr %wksp.addr, align 8, !dbg !1268
  %17 = load i64, ptr %wkspSize.addr, align 8, !dbg !1269
  call void @ZSTD_buildFSETable_body_default(ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16, i64 noundef %17) #13, !dbg !1270
  br label %return, !dbg !1271

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_buildFSETable_body_bmi2(ptr noundef %dt, ptr noundef %normalizedCounter, i32 noundef %maxSymbolValue, ptr noundef %baseValue, ptr noundef %nbAdditionalBits, i32 noundef %tableLog, ptr noundef %wksp, i64 noundef %wkspSize) #8 align 16 !dbg !1272 {
entry:
  %dt.addr = alloca ptr, align 8
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSymbolValue.addr = alloca i32, align 4
  %baseValue.addr = alloca ptr, align 8
  %nbAdditionalBits.addr = alloca ptr, align 8
  %tableLog.addr = alloca i32, align 4
  %wksp.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !1276, metadata !DIExpression()), !dbg !1284
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !1277, metadata !DIExpression()), !dbg !1285
  store i32 %maxSymbolValue, ptr %maxSymbolValue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxSymbolValue.addr, metadata !1278, metadata !DIExpression()), !dbg !1286
  store ptr %baseValue, ptr %baseValue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %baseValue.addr, metadata !1279, metadata !DIExpression()), !dbg !1287
  store ptr %nbAdditionalBits, ptr %nbAdditionalBits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbAdditionalBits.addr, metadata !1280, metadata !DIExpression()), !dbg !1288
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !1281, metadata !DIExpression()), !dbg !1289
  store ptr %wksp, ptr %wksp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wksp.addr, metadata !1282, metadata !DIExpression()), !dbg !1290
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1283, metadata !DIExpression()), !dbg !1291
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !1292
  %1 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !1293
  %2 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !1294
  %3 = load ptr, ptr %baseValue.addr, align 8, !dbg !1295
  %4 = load ptr, ptr %nbAdditionalBits.addr, align 8, !dbg !1296
  %5 = load i32, ptr %tableLog.addr, align 4, !dbg !1297
  %6 = load ptr, ptr %wksp.addr, align 8, !dbg !1298
  %7 = load i64, ptr %wkspSize.addr, align 8, !dbg !1299
  call void @ZSTD_buildFSETable_body(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) #13, !dbg !1300
  ret void, !dbg !1301
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_buildFSETable_body_default(ptr noundef %dt, ptr noundef %normalizedCounter, i32 noundef %maxSymbolValue, ptr noundef %baseValue, ptr noundef %nbAdditionalBits, i32 noundef %tableLog, ptr noundef %wksp, i64 noundef %wkspSize) #0 align 16 !dbg !1302 {
entry:
  %dt.addr = alloca ptr, align 8
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSymbolValue.addr = alloca i32, align 4
  %baseValue.addr = alloca ptr, align 8
  %nbAdditionalBits.addr = alloca ptr, align 8
  %tableLog.addr = alloca i32, align 4
  %wksp.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !1304, metadata !DIExpression()), !dbg !1312
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !1305, metadata !DIExpression()), !dbg !1313
  store i32 %maxSymbolValue, ptr %maxSymbolValue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxSymbolValue.addr, metadata !1306, metadata !DIExpression()), !dbg !1314
  store ptr %baseValue, ptr %baseValue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %baseValue.addr, metadata !1307, metadata !DIExpression()), !dbg !1315
  store ptr %nbAdditionalBits, ptr %nbAdditionalBits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbAdditionalBits.addr, metadata !1308, metadata !DIExpression()), !dbg !1316
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !1309, metadata !DIExpression()), !dbg !1317
  store ptr %wksp, ptr %wksp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wksp.addr, metadata !1310, metadata !DIExpression()), !dbg !1318
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1311, metadata !DIExpression()), !dbg !1319
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !1320
  %1 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !1321
  %2 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !1322
  %3 = load ptr, ptr %baseValue.addr, align 8, !dbg !1323
  %4 = load ptr, ptr %nbAdditionalBits.addr, align 8, !dbg !1324
  %5 = load i32, ptr %tableLog.addr, align 4, !dbg !1325
  %6 = load ptr, ptr %wksp.addr, align 8, !dbg !1326
  %7 = load i64, ptr %wkspSize.addr, align 8, !dbg !1327
  call void @ZSTD_buildFSETable_body(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) #13, !dbg !1328
  ret void, !dbg !1329
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ZSTD_decodeSeqHeaders(ptr noundef %dctx, ptr noundef %nbSeqPtr, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1330 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %nbSeqPtr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %istart = alloca ptr, align 8
  %iend = alloca ptr, align 8
  %ip = alloca ptr, align 8
  %nbSeq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %LLtype = alloca i32, align 4
  %OFtype = alloca i32, align 4
  %MLtype = alloca i32, align 4
  %llhSize = alloca i64, align 8
  %ofhSize = alloca i64, align 8
  %mlhSize = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1335, metadata !DIExpression()), !dbg !1353
  store ptr %nbSeqPtr, ptr %nbSeqPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbSeqPtr.addr, metadata !1336, metadata !DIExpression()), !dbg !1354
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1337, metadata !DIExpression()), !dbg !1355
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1338, metadata !DIExpression()), !dbg !1356
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #12, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %istart, metadata !1339, metadata !DIExpression()), !dbg !1358
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1359
  store ptr %0, ptr %istart, align 8, !dbg !1358
  call void @llvm.lifetime.start.p0(i64 8, ptr %iend) #12, !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %iend, metadata !1340, metadata !DIExpression()), !dbg !1361
  %1 = load ptr, ptr %istart, align 8, !dbg !1362
  %2 = load i64, ptr %srcSize.addr, align 8, !dbg !1363
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !1364
  store ptr %add.ptr, ptr %iend, align 8, !dbg !1361
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #12, !dbg !1365
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1341, metadata !DIExpression()), !dbg !1366
  %3 = load ptr, ptr %istart, align 8, !dbg !1367
  store ptr %3, ptr %ip, align 8, !dbg !1366
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbSeq) #12, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %nbSeq, metadata !1342, metadata !DIExpression()), !dbg !1369
  %4 = load i64, ptr %srcSize.addr, align 8, !dbg !1370
  %cmp = icmp ult i64 %4, 1, !dbg !1370
  br i1 %cmp, label %if.then, label %if.end, !dbg !1372

if.then:                                          ; preds = %entry
  store i64 -72, ptr %retval, align 8, !dbg !1373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1373

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ip, align 8, !dbg !1375
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !1375
  store ptr %incdec.ptr, ptr %ip, align 8, !dbg !1375
  %6 = load i8, ptr %5, align 1, !dbg !1376
  %conv = zext i8 %6 to i32, !dbg !1376
  store i32 %conv, ptr %nbSeq, align 4, !dbg !1377
  %7 = load i32, ptr %nbSeq, align 4, !dbg !1378
  %tobool = icmp ne i32 %7, 0, !dbg !1378
  br i1 %tobool, label %if.end6, label %if.then1, !dbg !1380

if.then1:                                         ; preds = %if.end
  %8 = load ptr, ptr %nbSeqPtr.addr, align 8, !dbg !1381
  store i32 0, ptr %8, align 4, !dbg !1383
  %9 = load i64, ptr %srcSize.addr, align 8, !dbg !1384
  %cmp2 = icmp ne i64 %9, 1, !dbg !1384
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1386

if.then4:                                         ; preds = %if.then1
  store i64 -72, ptr %retval, align 8, !dbg !1387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1387

if.end5:                                          ; preds = %if.then1
  store i64 1, ptr %retval, align 8, !dbg !1389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1389

if.end6:                                          ; preds = %if.end
  %10 = load i32, ptr %nbSeq, align 4, !dbg !1390
  %cmp7 = icmp sgt i32 %10, 127, !dbg !1392
  br i1 %cmp7, label %if.then9, label %if.end28, !dbg !1393

if.then9:                                         ; preds = %if.end6
  %11 = load i32, ptr %nbSeq, align 4, !dbg !1394
  %cmp10 = icmp eq i32 %11, 255, !dbg !1397
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1398

if.then12:                                        ; preds = %if.then9
  %12 = load ptr, ptr %ip, align 8, !dbg !1399
  %add.ptr13 = getelementptr i8, ptr %12, i64 2, !dbg !1399
  %13 = load ptr, ptr %iend, align 8, !dbg !1399
  %cmp14 = icmp ugt ptr %add.ptr13, %13, !dbg !1399
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1402

if.then16:                                        ; preds = %if.then12
  store i64 -72, ptr %retval, align 8, !dbg !1403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1403

if.end17:                                         ; preds = %if.then12
  %14 = load ptr, ptr %ip, align 8, !dbg !1405
  %call = call zeroext i16 @MEM_readLE16(ptr noundef %14) #13, !dbg !1406
  %conv18 = zext i16 %call to i32, !dbg !1406
  %add = add i32 %conv18, 32512, !dbg !1407
  store i32 %add, ptr %nbSeq, align 4, !dbg !1408
  %15 = load ptr, ptr %ip, align 8, !dbg !1409
  %add.ptr19 = getelementptr i8, ptr %15, i64 2, !dbg !1409
  store ptr %add.ptr19, ptr %ip, align 8, !dbg !1409
  br label %if.end27, !dbg !1410

if.else:                                          ; preds = %if.then9
  %16 = load ptr, ptr %ip, align 8, !dbg !1411
  %17 = load ptr, ptr %iend, align 8, !dbg !1411
  %cmp20 = icmp uge ptr %16, %17, !dbg !1411
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !1414

if.then22:                                        ; preds = %if.else
  store i64 -72, ptr %retval, align 8, !dbg !1415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1415

if.end23:                                         ; preds = %if.else
  %18 = load i32, ptr %nbSeq, align 4, !dbg !1417
  %sub = sub i32 %18, 128, !dbg !1418
  %shl = shl i32 %sub, 8, !dbg !1419
  %19 = load ptr, ptr %ip, align 8, !dbg !1420
  %incdec.ptr24 = getelementptr i8, ptr %19, i32 1, !dbg !1420
  store ptr %incdec.ptr24, ptr %ip, align 8, !dbg !1420
  %20 = load i8, ptr %19, align 1, !dbg !1421
  %conv25 = zext i8 %20 to i32, !dbg !1421
  %add26 = add i32 %shl, %conv25, !dbg !1422
  store i32 %add26, ptr %nbSeq, align 4, !dbg !1423
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.end17
  br label %if.end28, !dbg !1424

if.end28:                                         ; preds = %if.end27, %if.end6
  %21 = load i32, ptr %nbSeq, align 4, !dbg !1425
  %22 = load ptr, ptr %nbSeqPtr.addr, align 8, !dbg !1426
  store i32 %21, ptr %22, align 4, !dbg !1427
  %23 = load ptr, ptr %ip, align 8, !dbg !1428
  %add.ptr29 = getelementptr i8, ptr %23, i64 1, !dbg !1428
  %24 = load ptr, ptr %iend, align 8, !dbg !1428
  %cmp30 = icmp ugt ptr %add.ptr29, %24, !dbg !1428
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1430

if.then32:                                        ; preds = %if.end28
  store i64 -72, ptr %retval, align 8, !dbg !1431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1431

if.end33:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr %LLtype) #12, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %LLtype, metadata !1343, metadata !DIExpression()), !dbg !1434
  %25 = load ptr, ptr %ip, align 8, !dbg !1435
  %26 = load i8, ptr %25, align 1, !dbg !1436
  %conv34 = zext i8 %26 to i32, !dbg !1436
  %shr = ashr i32 %conv34, 6, !dbg !1437
  store i32 %shr, ptr %LLtype, align 4, !dbg !1434
  call void @llvm.lifetime.start.p0(i64 4, ptr %OFtype) #12, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %OFtype, metadata !1345, metadata !DIExpression()), !dbg !1439
  %27 = load ptr, ptr %ip, align 8, !dbg !1440
  %28 = load i8, ptr %27, align 1, !dbg !1441
  %conv35 = zext i8 %28 to i32, !dbg !1441
  %shr36 = ashr i32 %conv35, 4, !dbg !1442
  %and = and i32 %shr36, 3, !dbg !1443
  store i32 %and, ptr %OFtype, align 4, !dbg !1439
  call void @llvm.lifetime.start.p0(i64 4, ptr %MLtype) #12, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %MLtype, metadata !1346, metadata !DIExpression()), !dbg !1445
  %29 = load ptr, ptr %ip, align 8, !dbg !1446
  %30 = load i8, ptr %29, align 1, !dbg !1447
  %conv37 = zext i8 %30 to i32, !dbg !1447
  %shr38 = ashr i32 %conv37, 2, !dbg !1448
  %and39 = and i32 %shr38, 3, !dbg !1449
  store i32 %and39, ptr %MLtype, align 4, !dbg !1445
  %31 = load ptr, ptr %ip, align 8, !dbg !1450
  %incdec.ptr40 = getelementptr i8, ptr %31, i32 1, !dbg !1450
  store ptr %incdec.ptr40, ptr %ip, align 8, !dbg !1450
  call void @llvm.lifetime.start.p0(i64 8, ptr %llhSize) #12, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %llhSize, metadata !1347, metadata !DIExpression()), !dbg !1452
  %32 = load ptr, ptr %dctx.addr, align 8, !dbg !1453
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %32, i32 0, i32 4, !dbg !1454
  %LLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 0, !dbg !1455
  %arraydecay = getelementptr inbounds [513 x %struct.ZSTD_seqSymbol], ptr %LLTable, i64 0, i64 0, !dbg !1453
  %33 = load ptr, ptr %dctx.addr, align 8, !dbg !1456
  %LLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %33, i32 0, i32 0, !dbg !1457
  %34 = load i32, ptr %LLtype, align 4, !dbg !1458
  %35 = load ptr, ptr %ip, align 8, !dbg !1459
  %36 = load ptr, ptr %iend, align 8, !dbg !1460
  %37 = load ptr, ptr %ip, align 8, !dbg !1461
  %sub.ptr.lhs.cast = ptrtoint ptr %36 to i64, !dbg !1462
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i64, !dbg !1462
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1462
  %38 = load ptr, ptr %dctx.addr, align 8, !dbg !1463
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %38, i32 0, i32 17, !dbg !1464
  %39 = load i32, ptr %fseEntropy, align 4, !dbg !1464
  %40 = load ptr, ptr %dctx.addr, align 8, !dbg !1465
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %40, i32 0, i32 32, !dbg !1466
  %41 = load i32, ptr %ddictIsCold, align 4, !dbg !1466
  %42 = load i32, ptr %nbSeq, align 4, !dbg !1467
  %43 = load ptr, ptr %dctx.addr, align 8, !dbg !1468
  %workspace = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %43, i32 0, i32 5, !dbg !1469
  %arraydecay41 = getelementptr inbounds [640 x i32], ptr %workspace, i64 0, i64 0, !dbg !1468
  %44 = load ptr, ptr %dctx.addr, align 8, !dbg !1470
  %call42 = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %44) #13, !dbg !1471
  %call43 = call i64 @ZSTD_buildSeqTable(ptr noundef %arraydecay, ptr noundef %LLTptr, i32 noundef %34, i32 noundef 35, i32 noundef 9, ptr noundef %35, i64 noundef %sub.ptr.sub, ptr noundef @LL_base, ptr noundef @LL_bits, ptr noundef @LL_defaultDTable, i32 noundef %39, i32 noundef %41, i32 noundef %42, ptr noundef %arraydecay41, i64 noundef 2560, i32 noundef %call42) #13, !dbg !1472
  store i64 %call43, ptr %llhSize, align 8, !dbg !1452
  %45 = load i64, ptr %llhSize, align 8, !dbg !1473
  %call44 = call i32 @ERR_isError(i64 noundef %45) #13, !dbg !1473
  %tobool45 = icmp ne i32 %call44, 0, !dbg !1473
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !1475

if.then46:                                        ; preds = %if.end33
  store i64 -20, ptr %retval, align 8, !dbg !1476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1476

if.end47:                                         ; preds = %if.end33
  %46 = load i64, ptr %llhSize, align 8, !dbg !1478
  %47 = load ptr, ptr %ip, align 8, !dbg !1479
  %add.ptr48 = getelementptr i8, ptr %47, i64 %46, !dbg !1479
  store ptr %add.ptr48, ptr %ip, align 8, !dbg !1479
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1480
  br label %cleanup, !dbg !1480

cleanup:                                          ; preds = %if.end47, %if.then46
  call void @llvm.lifetime.end.p0(i64 8, ptr %llhSize) #12, !dbg !1480
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup87 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %ofhSize) #12, !dbg !1481
  call void @llvm.dbg.declare(metadata ptr %ofhSize, metadata !1349, metadata !DIExpression()), !dbg !1482
  %48 = load ptr, ptr %dctx.addr, align 8, !dbg !1483
  %entropy49 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %48, i32 0, i32 4, !dbg !1484
  %OFTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy49, i32 0, i32 1, !dbg !1485
  %arraydecay50 = getelementptr inbounds [257 x %struct.ZSTD_seqSymbol], ptr %OFTable, i64 0, i64 0, !dbg !1483
  %49 = load ptr, ptr %dctx.addr, align 8, !dbg !1486
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %49, i32 0, i32 2, !dbg !1487
  %50 = load i32, ptr %OFtype, align 4, !dbg !1488
  %51 = load ptr, ptr %ip, align 8, !dbg !1489
  %52 = load ptr, ptr %iend, align 8, !dbg !1490
  %53 = load ptr, ptr %ip, align 8, !dbg !1491
  %sub.ptr.lhs.cast51 = ptrtoint ptr %52 to i64, !dbg !1492
  %sub.ptr.rhs.cast52 = ptrtoint ptr %53 to i64, !dbg !1492
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52, !dbg !1492
  %54 = load ptr, ptr %dctx.addr, align 8, !dbg !1493
  %fseEntropy54 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %54, i32 0, i32 17, !dbg !1494
  %55 = load i32, ptr %fseEntropy54, align 4, !dbg !1494
  %56 = load ptr, ptr %dctx.addr, align 8, !dbg !1495
  %ddictIsCold55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %56, i32 0, i32 32, !dbg !1496
  %57 = load i32, ptr %ddictIsCold55, align 4, !dbg !1496
  %58 = load i32, ptr %nbSeq, align 4, !dbg !1497
  %59 = load ptr, ptr %dctx.addr, align 8, !dbg !1498
  %workspace56 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %59, i32 0, i32 5, !dbg !1499
  %arraydecay57 = getelementptr inbounds [640 x i32], ptr %workspace56, i64 0, i64 0, !dbg !1498
  %60 = load ptr, ptr %dctx.addr, align 8, !dbg !1500
  %call58 = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %60) #13, !dbg !1501
  %call59 = call i64 @ZSTD_buildSeqTable(ptr noundef %arraydecay50, ptr noundef %OFTptr, i32 noundef %50, i32 noundef 31, i32 noundef 8, ptr noundef %51, i64 noundef %sub.ptr.sub53, ptr noundef @OF_base, ptr noundef @OF_bits, ptr noundef @OF_defaultDTable, i32 noundef %55, i32 noundef %57, i32 noundef %58, ptr noundef %arraydecay57, i64 noundef 2560, i32 noundef %call58) #13, !dbg !1502
  store i64 %call59, ptr %ofhSize, align 8, !dbg !1482
  %61 = load i64, ptr %ofhSize, align 8, !dbg !1503
  %call60 = call i32 @ERR_isError(i64 noundef %61) #13, !dbg !1503
  %tobool61 = icmp ne i32 %call60, 0, !dbg !1503
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !1505

if.then62:                                        ; preds = %cleanup.cont
  store i64 -20, ptr %retval, align 8, !dbg !1506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !1506

if.end63:                                         ; preds = %cleanup.cont
  %62 = load i64, ptr %ofhSize, align 8, !dbg !1508
  %63 = load ptr, ptr %ip, align 8, !dbg !1509
  %add.ptr64 = getelementptr i8, ptr %63, i64 %62, !dbg !1509
  store ptr %add.ptr64, ptr %ip, align 8, !dbg !1509
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1510
  br label %cleanup65, !dbg !1510

cleanup65:                                        ; preds = %if.end63, %if.then62
  call void @llvm.lifetime.end.p0(i64 8, ptr %ofhSize) #12, !dbg !1510
  %cleanup.dest66 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest66, label %cleanup87 [
    i32 0, label %cleanup.cont67
  ]

cleanup.cont67:                                   ; preds = %cleanup65
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlhSize) #12, !dbg !1511
  call void @llvm.dbg.declare(metadata ptr %mlhSize, metadata !1351, metadata !DIExpression()), !dbg !1512
  %64 = load ptr, ptr %dctx.addr, align 8, !dbg !1513
  %entropy68 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %64, i32 0, i32 4, !dbg !1514
  %MLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy68, i32 0, i32 2, !dbg !1515
  %arraydecay69 = getelementptr inbounds [513 x %struct.ZSTD_seqSymbol], ptr %MLTable, i64 0, i64 0, !dbg !1513
  %65 = load ptr, ptr %dctx.addr, align 8, !dbg !1516
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %65, i32 0, i32 1, !dbg !1517
  %66 = load i32, ptr %MLtype, align 4, !dbg !1518
  %67 = load ptr, ptr %ip, align 8, !dbg !1519
  %68 = load ptr, ptr %iend, align 8, !dbg !1520
  %69 = load ptr, ptr %ip, align 8, !dbg !1521
  %sub.ptr.lhs.cast70 = ptrtoint ptr %68 to i64, !dbg !1522
  %sub.ptr.rhs.cast71 = ptrtoint ptr %69 to i64, !dbg !1522
  %sub.ptr.sub72 = sub i64 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71, !dbg !1522
  %70 = load ptr, ptr %dctx.addr, align 8, !dbg !1523
  %fseEntropy73 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %70, i32 0, i32 17, !dbg !1524
  %71 = load i32, ptr %fseEntropy73, align 4, !dbg !1524
  %72 = load ptr, ptr %dctx.addr, align 8, !dbg !1525
  %ddictIsCold74 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %72, i32 0, i32 32, !dbg !1526
  %73 = load i32, ptr %ddictIsCold74, align 4, !dbg !1526
  %74 = load i32, ptr %nbSeq, align 4, !dbg !1527
  %75 = load ptr, ptr %dctx.addr, align 8, !dbg !1528
  %workspace75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %75, i32 0, i32 5, !dbg !1529
  %arraydecay76 = getelementptr inbounds [640 x i32], ptr %workspace75, i64 0, i64 0, !dbg !1528
  %76 = load ptr, ptr %dctx.addr, align 8, !dbg !1530
  %call77 = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %76) #13, !dbg !1531
  %call78 = call i64 @ZSTD_buildSeqTable(ptr noundef %arraydecay69, ptr noundef %MLTptr, i32 noundef %66, i32 noundef 52, i32 noundef 9, ptr noundef %67, i64 noundef %sub.ptr.sub72, ptr noundef @ML_base, ptr noundef @ML_bits, ptr noundef @ML_defaultDTable, i32 noundef %71, i32 noundef %73, i32 noundef %74, ptr noundef %arraydecay76, i64 noundef 2560, i32 noundef %call77) #13, !dbg !1532
  store i64 %call78, ptr %mlhSize, align 8, !dbg !1512
  %77 = load i64, ptr %mlhSize, align 8, !dbg !1533
  %call79 = call i32 @ERR_isError(i64 noundef %77) #13, !dbg !1533
  %tobool80 = icmp ne i32 %call79, 0, !dbg !1533
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !1535

if.then81:                                        ; preds = %cleanup.cont67
  store i64 -20, ptr %retval, align 8, !dbg !1536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !1536

if.end82:                                         ; preds = %cleanup.cont67
  %78 = load i64, ptr %mlhSize, align 8, !dbg !1538
  %79 = load ptr, ptr %ip, align 8, !dbg !1539
  %add.ptr83 = getelementptr i8, ptr %79, i64 %78, !dbg !1539
  store ptr %add.ptr83, ptr %ip, align 8, !dbg !1539
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1540
  br label %cleanup84, !dbg !1540

cleanup84:                                        ; preds = %if.end82, %if.then81
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlhSize) #12, !dbg !1540
  %cleanup.dest85 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest85, label %cleanup87 [
    i32 0, label %cleanup.cont86
  ]

cleanup.cont86:                                   ; preds = %cleanup84
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1541
  br label %cleanup87, !dbg !1541

cleanup87:                                        ; preds = %cleanup.cont86, %cleanup84, %cleanup65, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %MLtype) #12, !dbg !1541
  call void @llvm.lifetime.end.p0(i64 4, ptr %OFtype) #12, !dbg !1541
  call void @llvm.lifetime.end.p0(i64 4, ptr %LLtype) #12, !dbg !1541
  %cleanup.dest90 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest90, label %cleanup95 [
    i32 0, label %cleanup.cont91
  ]

cleanup.cont91:                                   ; preds = %cleanup87
  %80 = load ptr, ptr %ip, align 8, !dbg !1542
  %81 = load ptr, ptr %istart, align 8, !dbg !1543
  %sub.ptr.lhs.cast92 = ptrtoint ptr %80 to i64, !dbg !1544
  %sub.ptr.rhs.cast93 = ptrtoint ptr %81 to i64, !dbg !1544
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93, !dbg !1544
  store i64 %sub.ptr.sub94, ptr %retval, align 8, !dbg !1545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1545

cleanup95:                                        ; preds = %cleanup.cont91, %cleanup87, %if.then32, %if.then22, %if.then16, %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbSeq) #12, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #12, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr %iend) #12, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #12, !dbg !1546
  %82 = load i64, ptr %retval, align 8, !dbg !1546
  ret i64 %82, !dbg !1546
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_buildSeqTable(ptr noundef %DTableSpace, ptr noundef %DTablePtr, i32 noundef %type, i32 noundef %max, i32 noundef %maxLog, ptr noundef %src, i64 noundef %srcSize, ptr noundef %baseValue, ptr noundef %nbAdditionalBits, ptr noundef %defaultTable, i32 noundef %flagRepeatTable, i32 noundef %ddictIsCold, i32 noundef %nbSeq, ptr noundef %wksp, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !1547 {
entry:
  %retval = alloca i64, align 8
  %DTableSpace.addr = alloca ptr, align 8
  %DTablePtr.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %maxLog.addr = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %baseValue.addr = alloca ptr, align 8
  %nbAdditionalBits.addr = alloca ptr, align 8
  %defaultTable.addr = alloca ptr, align 8
  %flagRepeatTable.addr = alloca i32, align 4
  %ddictIsCold.addr = alloca i32, align 4
  %nbSeq.addr = alloca i32, align 4
  %wksp.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %symbol = alloca i32, align 4
  %baseline = alloca i32, align 4
  %nbBits = alloca i8, align 1
  %pStart = alloca ptr, align 8
  %pSize = alloca i64, align 8
  %_ptr = alloca ptr, align 8
  %_size = alloca i64, align 8
  %_pos = alloca i64, align 8
  %tableLog = alloca i32, align 4
  %norm = alloca [53 x i16], align 16
  %headerSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %DTableSpace, ptr %DTableSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTableSpace.addr, metadata !1553, metadata !DIExpression()), !dbg !1588
  store ptr %DTablePtr, ptr %DTablePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTablePtr.addr, metadata !1554, metadata !DIExpression()), !dbg !1589
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1555, metadata !DIExpression()), !dbg !1590
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !1556, metadata !DIExpression()), !dbg !1591
  store i32 %maxLog, ptr %maxLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxLog.addr, metadata !1557, metadata !DIExpression()), !dbg !1592
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1558, metadata !DIExpression()), !dbg !1593
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1559, metadata !DIExpression()), !dbg !1594
  store ptr %baseValue, ptr %baseValue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %baseValue.addr, metadata !1560, metadata !DIExpression()), !dbg !1595
  store ptr %nbAdditionalBits, ptr %nbAdditionalBits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbAdditionalBits.addr, metadata !1561, metadata !DIExpression()), !dbg !1596
  store ptr %defaultTable, ptr %defaultTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %defaultTable.addr, metadata !1562, metadata !DIExpression()), !dbg !1597
  store i32 %flagRepeatTable, ptr %flagRepeatTable.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flagRepeatTable.addr, metadata !1563, metadata !DIExpression()), !dbg !1598
  store i32 %ddictIsCold, ptr %ddictIsCold.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ddictIsCold.addr, metadata !1564, metadata !DIExpression()), !dbg !1599
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !1565, metadata !DIExpression()), !dbg !1600
  store ptr %wksp, ptr %wksp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wksp.addr, metadata !1566, metadata !DIExpression()), !dbg !1601
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1567, metadata !DIExpression()), !dbg !1602
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1568, metadata !DIExpression()), !dbg !1603
  %0 = load i32, ptr %type.addr, align 4, !dbg !1604
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
    i32 3, label %sw.bb8
    i32 2, label %sw.bb21
  ], !dbg !1605

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !1606
  %tobool = icmp ne i64 %1, 0, !dbg !1606
  br i1 %tobool, label %if.end, label %if.then, !dbg !1608

if.then:                                          ; preds = %sw.bb
  store i64 -72, ptr %retval, align 8, !dbg !1609
  br label %sw.epilog, !dbg !1609

if.end:                                           ; preds = %sw.bb
  %2 = load ptr, ptr %src.addr, align 8, !dbg !1611
  %3 = load i8, ptr %2, align 1, !dbg !1611
  %conv = zext i8 %3 to i32, !dbg !1611
  %4 = load i32, ptr %max.addr, align 4, !dbg !1611
  %cmp = icmp ugt i32 %conv, %4, !dbg !1611
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1613

if.then2:                                         ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !1614
  br label %sw.epilog, !dbg !1614

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %symbol) #12, !dbg !1616
  call void @llvm.dbg.declare(metadata ptr %symbol, metadata !1569, metadata !DIExpression()), !dbg !1617
  %5 = load ptr, ptr %src.addr, align 8, !dbg !1618
  %6 = load i8, ptr %5, align 1, !dbg !1619
  %conv4 = zext i8 %6 to i32, !dbg !1619
  store i32 %conv4, ptr %symbol, align 4, !dbg !1617
  call void @llvm.lifetime.start.p0(i64 4, ptr %baseline) #12, !dbg !1620
  call void @llvm.dbg.declare(metadata ptr %baseline, metadata !1572, metadata !DIExpression()), !dbg !1621
  %7 = load ptr, ptr %baseValue.addr, align 8, !dbg !1622
  %8 = load i32, ptr %symbol, align 4, !dbg !1623
  %idxprom = zext i32 %8 to i64, !dbg !1622
  %arrayidx = getelementptr i32, ptr %7, i64 %idxprom, !dbg !1622
  %9 = load i32, ptr %arrayidx, align 4, !dbg !1622
  store i32 %9, ptr %baseline, align 4, !dbg !1621
  call void @llvm.lifetime.start.p0(i64 1, ptr %nbBits) #12, !dbg !1624
  call void @llvm.dbg.declare(metadata ptr %nbBits, metadata !1573, metadata !DIExpression()), !dbg !1625
  %10 = load ptr, ptr %nbAdditionalBits.addr, align 8, !dbg !1626
  %11 = load i32, ptr %symbol, align 4, !dbg !1627
  %idxprom5 = zext i32 %11 to i64, !dbg !1626
  %arrayidx6 = getelementptr i8, ptr %10, i64 %idxprom5, !dbg !1626
  %12 = load i8, ptr %arrayidx6, align 1, !dbg !1626
  store i8 %12, ptr %nbBits, align 1, !dbg !1625
  %13 = load ptr, ptr %DTableSpace.addr, align 8, !dbg !1628
  %14 = load i32, ptr %baseline, align 4, !dbg !1629
  %15 = load i8, ptr %nbBits, align 1, !dbg !1630
  call void @ZSTD_buildSeqTable_rle(ptr noundef %13, i32 noundef %14, i8 noundef zeroext %15) #13, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 1, ptr %nbBits) #12, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 4, ptr %baseline) #12, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 4, ptr %symbol) #12, !dbg !1632
  %16 = load ptr, ptr %DTableSpace.addr, align 8, !dbg !1633
  %17 = load ptr, ptr %DTablePtr.addr, align 8, !dbg !1634
  store ptr %16, ptr %17, align 8, !dbg !1635
  store i64 1, ptr %retval, align 8, !dbg !1636
  br label %sw.epilog, !dbg !1636

sw.bb7:                                           ; preds = %entry
  %18 = load ptr, ptr %defaultTable.addr, align 8, !dbg !1637
  %19 = load ptr, ptr %DTablePtr.addr, align 8, !dbg !1638
  store ptr %18, ptr %19, align 8, !dbg !1639
  store i64 0, ptr %retval, align 8, !dbg !1640
  br label %sw.epilog, !dbg !1640

sw.bb8:                                           ; preds = %entry
  %20 = load i32, ptr %flagRepeatTable.addr, align 4, !dbg !1641
  %tobool9 = icmp ne i32 %20, 0, !dbg !1641
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1643

if.then10:                                        ; preds = %sw.bb8
  store i64 -20, ptr %retval, align 8, !dbg !1644
  br label %sw.epilog, !dbg !1644

if.end11:                                         ; preds = %sw.bb8
  %21 = load i32, ptr %ddictIsCold.addr, align 4, !dbg !1646
  %tobool12 = icmp ne i32 %21, 0, !dbg !1646
  br i1 %tobool12, label %land.lhs.true, label %if.end20, !dbg !1647

land.lhs.true:                                    ; preds = %if.end11
  %22 = load i32, ptr %nbSeq.addr, align 4, !dbg !1648
  %cmp13 = icmp sgt i32 %22, 24, !dbg !1649
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !1650

if.then15:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %pStart) #12, !dbg !1651
  call void @llvm.dbg.declare(metadata ptr %pStart, metadata !1574, metadata !DIExpression()), !dbg !1652
  %23 = load ptr, ptr %DTablePtr.addr, align 8, !dbg !1653
  %24 = load ptr, ptr %23, align 8, !dbg !1654
  store ptr %24, ptr %pStart, align 8, !dbg !1652
  call void @llvm.lifetime.start.p0(i64 8, ptr %pSize) #12, !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %pSize, metadata !1578, metadata !DIExpression()), !dbg !1656
  %25 = load i32, ptr %maxLog.addr, align 4, !dbg !1657
  %shl = shl i32 1, %25, !dbg !1657
  %add = add i32 1, %shl, !dbg !1657
  %conv16 = sext i32 %add to i64, !dbg !1658
  %mul = mul i64 8, %conv16, !dbg !1659
  store i64 %mul, ptr %pSize, align 8, !dbg !1656
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ptr) #12, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %_ptr, metadata !1579, metadata !DIExpression()), !dbg !1660
  %26 = load ptr, ptr %pStart, align 8, !dbg !1660
  store ptr %26, ptr %_ptr, align 8, !dbg !1660
  call void @llvm.lifetime.start.p0(i64 8, ptr %_size) #12, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %_size, metadata !1581, metadata !DIExpression()), !dbg !1660
  %27 = load i64, ptr %pSize, align 8, !dbg !1660
  store i64 %27, ptr %_size, align 8, !dbg !1660
  call void @llvm.lifetime.start.p0(i64 8, ptr %_pos) #12, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %_pos, metadata !1582, metadata !DIExpression()), !dbg !1660
  store i64 0, ptr %_pos, align 8, !dbg !1661
  br label %for.cond, !dbg !1661

for.cond:                                         ; preds = %for.inc, %if.then15
  %28 = load i64, ptr %_pos, align 8, !dbg !1663
  %29 = load i64, ptr %_size, align 8, !dbg !1663
  %cmp17 = icmp ult i64 %28, %29, !dbg !1663
  br i1 %cmp17, label %for.body, label %for.end, !dbg !1661

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %_ptr, align 8, !dbg !1665
  %31 = load i64, ptr %_pos, align 8, !dbg !1665
  %add.ptr = getelementptr i8, ptr %30, i64 %31, !dbg !1665
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 0, i32 2, i32 1), !dbg !1665
  br label %for.inc, !dbg !1665

for.inc:                                          ; preds = %for.body
  %32 = load i64, ptr %_pos, align 8, !dbg !1663
  %add19 = add i64 %32, 64, !dbg !1663
  store i64 %add19, ptr %_pos, align 8, !dbg !1663
  br label %for.cond, !dbg !1663, !llvm.loop !1667

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %_pos) #12, !dbg !1668
  call void @llvm.lifetime.end.p0(i64 8, ptr %_size) #12, !dbg !1668
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ptr) #12, !dbg !1668
  call void @llvm.lifetime.end.p0(i64 8, ptr %pSize) #12, !dbg !1669
  call void @llvm.lifetime.end.p0(i64 8, ptr %pStart) #12, !dbg !1669
  br label %if.end20, !dbg !1670

if.end20:                                         ; preds = %for.end, %land.lhs.true, %if.end11
  store i64 0, ptr %retval, align 8, !dbg !1671
  br label %sw.epilog, !dbg !1671

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableLog) #12, !dbg !1672
  call void @llvm.dbg.declare(metadata ptr %tableLog, metadata !1583, metadata !DIExpression()), !dbg !1673
  call void @llvm.lifetime.start.p0(i64 106, ptr %norm) #12, !dbg !1674
  call void @llvm.dbg.declare(metadata ptr %norm, metadata !1585, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 8, ptr %headerSize) #12, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %headerSize, metadata !1587, metadata !DIExpression()), !dbg !1677
  %arraydecay = getelementptr inbounds [53 x i16], ptr %norm, i64 0, i64 0, !dbg !1678
  %33 = load ptr, ptr %src.addr, align 8, !dbg !1679
  %34 = load i64, ptr %srcSize.addr, align 8, !dbg !1680
  %call = call i64 @FSE_readNCount(ptr noundef %arraydecay, ptr noundef %max.addr, ptr noundef %tableLog, ptr noundef %33, i64 noundef %34) #13, !dbg !1681
  store i64 %call, ptr %headerSize, align 8, !dbg !1677
  %35 = load i64, ptr %headerSize, align 8, !dbg !1682
  %call22 = call i32 @ERR_isError(i64 noundef %35) #13, !dbg !1682
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1682
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1684

if.then24:                                        ; preds = %sw.bb21
  store i64 -20, ptr %retval, align 8, !dbg !1685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1685

if.end25:                                         ; preds = %sw.bb21
  %36 = load i32, ptr %tableLog, align 4, !dbg !1687
  %37 = load i32, ptr %maxLog.addr, align 4, !dbg !1687
  %cmp26 = icmp ugt i32 %36, %37, !dbg !1687
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1689

if.then28:                                        ; preds = %if.end25
  store i64 -20, ptr %retval, align 8, !dbg !1690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1690

if.end29:                                         ; preds = %if.end25
  %38 = load ptr, ptr %DTableSpace.addr, align 8, !dbg !1692
  %arraydecay30 = getelementptr inbounds [53 x i16], ptr %norm, i64 0, i64 0, !dbg !1693
  %39 = load i32, ptr %max.addr, align 4, !dbg !1694
  %40 = load ptr, ptr %baseValue.addr, align 8, !dbg !1695
  %41 = load ptr, ptr %nbAdditionalBits.addr, align 8, !dbg !1696
  %42 = load i32, ptr %tableLog, align 4, !dbg !1697
  %43 = load ptr, ptr %wksp.addr, align 8, !dbg !1698
  %44 = load i64, ptr %wkspSize.addr, align 8, !dbg !1699
  %45 = load i32, ptr %bmi2.addr, align 4, !dbg !1700
  call void @ZSTD_buildFSETable(ptr noundef %38, ptr noundef %arraydecay30, i32 noundef %39, ptr noundef %40, ptr noundef %41, i32 noundef %42, ptr noundef %43, i64 noundef %44, i32 noundef %45) #13, !dbg !1701
  %46 = load ptr, ptr %DTableSpace.addr, align 8, !dbg !1702
  %47 = load ptr, ptr %DTablePtr.addr, align 8, !dbg !1703
  store ptr %46, ptr %47, align 8, !dbg !1704
  %48 = load i64, ptr %headerSize, align 8, !dbg !1705
  store i64 %48, ptr %retval, align 8, !dbg !1706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1706

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %headerSize) #12, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 106, ptr %norm) #12, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableLog) #12, !dbg !1707
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !1708

do.body:                                          ; preds = %sw.default
  store i64 -1, ptr %retval, align 8, !dbg !1709
  br label %sw.epilog, !dbg !1709

do.end:                                           ; No predecessors!
  br label %sw.epilog, !dbg !1711

sw.epilog:                                        ; preds = %if.then, %if.then2, %if.end3, %sw.bb7, %if.then10, %if.end20, %cleanup, %do.body, %do.end
  %49 = load i64, ptr %retval, align 8, !dbg !1712
  ret i64 %49, !dbg !1712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ZSTD_decompressBlock_internal(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize, i32 noundef %frame, i32 noundef %streaming) #0 align 16 !dbg !1713 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %frame.addr = alloca i32, align 4
  %streaming.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %isLongOffset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %litCSize = alloca i64, align 8
  %usePrefetchDecoder = alloca i32, align 4
  %nbSeq = alloca i32, align 4
  %seqHSize = alloca i64, align 8
  %shareLongOffsets = alloca i32, align 4
  %minShare = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1717, metadata !DIExpression()), !dbg !1737
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1718, metadata !DIExpression()), !dbg !1738
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1719, metadata !DIExpression()), !dbg !1739
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1720, metadata !DIExpression()), !dbg !1740
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1721, metadata !DIExpression()), !dbg !1741
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !1722, metadata !DIExpression()), !dbg !1742
  store i32 %streaming, ptr %streaming.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %streaming.addr, metadata !1723, metadata !DIExpression()), !dbg !1743
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #12, !dbg !1744
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1724, metadata !DIExpression()), !dbg !1745
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1746
  store ptr %0, ptr %ip, align 8, !dbg !1745
  call void @llvm.lifetime.start.p0(i64 4, ptr %isLongOffset) #12, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %isLongOffset, metadata !1725, metadata !DIExpression()), !dbg !1748
  %call = call i32 @MEM_32bits() #13, !dbg !1749
  %tobool = icmp ne i32 %call, 0, !dbg !1749
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1750

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %frame.addr, align 4, !dbg !1751
  %tobool1 = icmp ne i32 %1, 0, !dbg !1751
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !1752

lor.rhs:                                          ; preds = %land.rhs
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !1753
  %fParams = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 11, !dbg !1754
  %windowSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams, i32 0, i32 1, !dbg !1755
  %3 = load i64, ptr %windowSize, align 8, !dbg !1755
  %call2 = call i32 @MEM_32bits() #13, !dbg !1756
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1756
  %4 = zext i1 %tobool3 to i64, !dbg !1756
  %cond = select i1 %tobool3, i32 25, i32 57, !dbg !1756
  %sh_prom = zext i32 %cond to i64, !dbg !1757
  %shl = shl i64 1, %sh_prom, !dbg !1757
  %cmp = icmp ugt i64 %3, %shl, !dbg !1758
  br label %lor.end, !dbg !1752

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %6 = phi i1 [ false, %entry ], [ %5, %lor.end ], !dbg !1759
  %land.ext = zext i1 %6 to i32, !dbg !1750
  store i32 %land.ext, ptr %isLongOffset, align 4, !dbg !1748
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !1760
  %cmp4 = icmp uge i64 %7, 131072, !dbg !1760
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1762

if.then:                                          ; preds = %land.end
  store i64 -72, ptr %retval, align 8, !dbg !1763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !1763

if.end:                                           ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %litCSize) #12, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %litCSize, metadata !1727, metadata !DIExpression()), !dbg !1766
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !1767
  %9 = load ptr, ptr %src.addr, align 8, !dbg !1768
  %10 = load i64, ptr %srcSize.addr, align 8, !dbg !1769
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !1770
  %12 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1771
  %13 = load i32, ptr %streaming.addr, align 4, !dbg !1772
  %call5 = call i64 @ZSTD_decodeLiteralsBlock(ptr noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, i64 noundef %12, i32 noundef %13) #13, !dbg !1773
  store i64 %call5, ptr %litCSize, align 8, !dbg !1766
  %14 = load i64, ptr %litCSize, align 8, !dbg !1774
  %call6 = call i32 @ERR_isError(i64 noundef %14) #13, !dbg !1776
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1776
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1777

if.then8:                                         ; preds = %if.end
  %15 = load i64, ptr %litCSize, align 8, !dbg !1778
  store i64 %15, ptr %retval, align 8, !dbg !1779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1779

if.end9:                                          ; preds = %if.end
  %16 = load i64, ptr %litCSize, align 8, !dbg !1780
  %17 = load ptr, ptr %ip, align 8, !dbg !1781
  %add.ptr = getelementptr i8, ptr %17, i64 %16, !dbg !1781
  store ptr %add.ptr, ptr %ip, align 8, !dbg !1781
  %18 = load i64, ptr %litCSize, align 8, !dbg !1782
  %19 = load i64, ptr %srcSize.addr, align 8, !dbg !1783
  %sub = sub i64 %19, %18, !dbg !1783
  store i64 %sub, ptr %srcSize.addr, align 8, !dbg !1783
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1784
  br label %cleanup, !dbg !1784

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %litCSize) #12, !dbg !1784
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %usePrefetchDecoder) #12, !dbg !1785
  call void @llvm.dbg.declare(metadata ptr %usePrefetchDecoder, metadata !1729, metadata !DIExpression()), !dbg !1786
  %20 = load ptr, ptr %dctx.addr, align 8, !dbg !1787
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %20, i32 0, i32 32, !dbg !1788
  %21 = load i32, ptr %ddictIsCold, align 4, !dbg !1788
  store i32 %21, ptr %usePrefetchDecoder, align 4, !dbg !1786
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbSeq) #12, !dbg !1789
  call void @llvm.dbg.declare(metadata ptr %nbSeq, metadata !1731, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr %seqHSize) #12, !dbg !1791
  call void @llvm.dbg.declare(metadata ptr %seqHSize, metadata !1732, metadata !DIExpression()), !dbg !1792
  %22 = load ptr, ptr %dctx.addr, align 8, !dbg !1793
  %23 = load ptr, ptr %ip, align 8, !dbg !1794
  %24 = load i64, ptr %srcSize.addr, align 8, !dbg !1795
  %call10 = call i64 @ZSTD_decodeSeqHeaders(ptr noundef %22, ptr noundef %nbSeq, ptr noundef %23, i64 noundef %24) #13, !dbg !1796
  store i64 %call10, ptr %seqHSize, align 8, !dbg !1792
  %25 = load i64, ptr %seqHSize, align 8, !dbg !1797
  %call11 = call i32 @ERR_isError(i64 noundef %25) #13, !dbg !1799
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1799
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1800

if.then13:                                        ; preds = %cleanup.cont
  %26 = load i64, ptr %seqHSize, align 8, !dbg !1801
  store i64 %26, ptr %retval, align 8, !dbg !1802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !1802

if.end14:                                         ; preds = %cleanup.cont
  %27 = load i64, ptr %seqHSize, align 8, !dbg !1803
  %28 = load ptr, ptr %ip, align 8, !dbg !1804
  %add.ptr15 = getelementptr i8, ptr %28, i64 %27, !dbg !1804
  store ptr %add.ptr15, ptr %ip, align 8, !dbg !1804
  %29 = load i64, ptr %seqHSize, align 8, !dbg !1805
  %30 = load i64, ptr %srcSize.addr, align 8, !dbg !1806
  %sub16 = sub i64 %30, %29, !dbg !1806
  store i64 %sub16, ptr %srcSize.addr, align 8, !dbg !1806
  %31 = load ptr, ptr %dst.addr, align 8, !dbg !1807
  %cmp17 = icmp eq ptr %31, null, !dbg !1807
  br i1 %cmp17, label %land.lhs.true, label %if.end20, !dbg !1807

land.lhs.true:                                    ; preds = %if.end14
  %32 = load i32, ptr %nbSeq, align 4, !dbg !1807
  %cmp18 = icmp sgt i32 %32, 0, !dbg !1807
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1809

if.then19:                                        ; preds = %land.lhs.true
  store i64 -70, ptr %retval, align 8, !dbg !1810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !1810

if.end20:                                         ; preds = %land.lhs.true, %if.end14
  %33 = load i32, ptr %usePrefetchDecoder, align 4, !dbg !1812
  %tobool21 = icmp ne i32 %33, 0, !dbg !1812
  br i1 %tobool21, label %if.end35, label %land.lhs.true22, !dbg !1813

land.lhs.true22:                                  ; preds = %if.end20
  %34 = load i32, ptr %frame.addr, align 4, !dbg !1814
  %tobool23 = icmp ne i32 %34, 0, !dbg !1814
  br i1 %tobool23, label %lor.lhs.false, label %land.lhs.true27, !dbg !1815

lor.lhs.false:                                    ; preds = %land.lhs.true22
  %35 = load ptr, ptr %dctx.addr, align 8, !dbg !1816
  %fParams24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %35, i32 0, i32 11, !dbg !1817
  %windowSize25 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams24, i32 0, i32 1, !dbg !1818
  %36 = load i64, ptr %windowSize25, align 8, !dbg !1818
  %cmp26 = icmp ugt i64 %36, 16777216, !dbg !1819
  br i1 %cmp26, label %land.lhs.true27, label %if.end35, !dbg !1820

land.lhs.true27:                                  ; preds = %lor.lhs.false, %land.lhs.true22
  %37 = load i32, ptr %nbSeq, align 4, !dbg !1821
  %cmp28 = icmp sgt i32 %37, 8, !dbg !1822
  br i1 %cmp28, label %if.then29, label %if.end35, !dbg !1823

if.then29:                                        ; preds = %land.lhs.true27
  call void @llvm.lifetime.start.p0(i64 4, ptr %shareLongOffsets) #12, !dbg !1824
  call void @llvm.dbg.declare(metadata ptr %shareLongOffsets, metadata !1733, metadata !DIExpression()), !dbg !1825
  %38 = load ptr, ptr %dctx.addr, align 8, !dbg !1826
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %38, i32 0, i32 2, !dbg !1827
  %39 = load ptr, ptr %OFTptr, align 8, !dbg !1827
  %call30 = call i32 @ZSTD_getLongOffsetsShare(ptr noundef %39) #13, !dbg !1828
  store i32 %call30, ptr %shareLongOffsets, align 4, !dbg !1825
  call void @llvm.lifetime.start.p0(i64 4, ptr %minShare) #12, !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %minShare, metadata !1736, metadata !DIExpression()), !dbg !1830
  %call31 = call i32 @MEM_64bits() #13, !dbg !1831
  %tobool32 = icmp ne i32 %call31, 0, !dbg !1831
  %40 = zext i1 %tobool32 to i64, !dbg !1831
  %cond33 = select i1 %tobool32, i32 7, i32 20, !dbg !1831
  store i32 %cond33, ptr %minShare, align 4, !dbg !1830
  %41 = load i32, ptr %shareLongOffsets, align 4, !dbg !1832
  %42 = load i32, ptr %minShare, align 4, !dbg !1833
  %cmp34 = icmp uge i32 %41, %42, !dbg !1834
  %conv = zext i1 %cmp34 to i32, !dbg !1834
  store i32 %conv, ptr %usePrefetchDecoder, align 4, !dbg !1835
  call void @llvm.lifetime.end.p0(i64 4, ptr %minShare) #12, !dbg !1836
  call void @llvm.lifetime.end.p0(i64 4, ptr %shareLongOffsets) #12, !dbg !1836
  br label %if.end35, !dbg !1837

if.end35:                                         ; preds = %if.then29, %land.lhs.true27, %lor.lhs.false, %if.end20
  %43 = load ptr, ptr %dctx.addr, align 8, !dbg !1838
  %ddictIsCold36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %43, i32 0, i32 32, !dbg !1839
  store i32 0, ptr %ddictIsCold36, align 4, !dbg !1840
  %44 = load i32, ptr %usePrefetchDecoder, align 4, !dbg !1841
  %tobool37 = icmp ne i32 %44, 0, !dbg !1841
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !1843

if.then38:                                        ; preds = %if.end35
  %45 = load ptr, ptr %dctx.addr, align 8, !dbg !1844
  %46 = load ptr, ptr %dst.addr, align 8, !dbg !1845
  %47 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1846
  %48 = load ptr, ptr %ip, align 8, !dbg !1847
  %49 = load i64, ptr %srcSize.addr, align 8, !dbg !1848
  %50 = load i32, ptr %nbSeq, align 4, !dbg !1849
  %51 = load i32, ptr %isLongOffset, align 4, !dbg !1850
  %52 = load i32, ptr %frame.addr, align 4, !dbg !1851
  %call39 = call i64 @ZSTD_decompressSequencesLong(ptr noundef %45, ptr noundef %46, i64 noundef %47, ptr noundef %48, i64 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52) #13, !dbg !1852
  store i64 %call39, ptr %retval, align 8, !dbg !1853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !1853

if.end40:                                         ; preds = %if.end35
  %53 = load ptr, ptr %dctx.addr, align 8, !dbg !1854
  %litBufferLocation = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %53, i32 0, i32 52, !dbg !1856
  %54 = load i32, ptr %litBufferLocation, align 8, !dbg !1856
  %cmp41 = icmp eq i32 %54, 2, !dbg !1857
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !1858

if.then43:                                        ; preds = %if.end40
  %55 = load ptr, ptr %dctx.addr, align 8, !dbg !1859
  %56 = load ptr, ptr %dst.addr, align 8, !dbg !1860
  %57 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1861
  %58 = load ptr, ptr %ip, align 8, !dbg !1862
  %59 = load i64, ptr %srcSize.addr, align 8, !dbg !1863
  %60 = load i32, ptr %nbSeq, align 4, !dbg !1864
  %61 = load i32, ptr %isLongOffset, align 4, !dbg !1865
  %62 = load i32, ptr %frame.addr, align 4, !dbg !1866
  %call44 = call i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, i32 noundef %60, i32 noundef %61, i32 noundef %62) #13, !dbg !1867
  store i64 %call44, ptr %retval, align 8, !dbg !1868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !1868

if.else:                                          ; preds = %if.end40
  %63 = load ptr, ptr %dctx.addr, align 8, !dbg !1869
  %64 = load ptr, ptr %dst.addr, align 8, !dbg !1870
  %65 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1871
  %66 = load ptr, ptr %ip, align 8, !dbg !1872
  %67 = load i64, ptr %srcSize.addr, align 8, !dbg !1873
  %68 = load i32, ptr %nbSeq, align 4, !dbg !1874
  %69 = load i32, ptr %isLongOffset, align 4, !dbg !1875
  %70 = load i32, ptr %frame.addr, align 4, !dbg !1876
  %call45 = call i64 @ZSTD_decompressSequences(ptr noundef %63, ptr noundef %64, i64 noundef %65, ptr noundef %66, i64 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef %70) #13, !dbg !1877
  store i64 %call45, ptr %retval, align 8, !dbg !1878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !1878

cleanup46:                                        ; preds = %if.else, %if.then43, %if.then38, %if.then19, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %seqHSize) #12, !dbg !1879
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbSeq) #12, !dbg !1879
  call void @llvm.lifetime.end.p0(i64 4, ptr %usePrefetchDecoder) #12, !dbg !1879
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup46, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %isLongOffset) #12, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #12, !dbg !1880
  %71 = load i64, ptr %retval, align 8, !dbg !1880
  ret i64 %71, !dbg !1880
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_32bits() #3 align 16 !dbg !1881 {
entry:
  ret i32 0, !dbg !1884
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_getLongOffsetsShare(ptr noundef %offTable) #0 align 16 !dbg !1885 {
entry:
  %offTable.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %tableLog = alloca i32, align 4
  %table = alloca ptr, align 8
  %max = alloca i32, align 4
  %u = alloca i32, align 4
  %total = alloca i32, align 4
  store ptr %offTable, ptr %offTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offTable.addr, metadata !1889, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #12, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1890, metadata !DIExpression()), !dbg !1898
  %0 = load ptr, ptr %offTable.addr, align 8, !dbg !1899
  store ptr %0, ptr %ptr, align 8, !dbg !1898
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableLog) #12, !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %tableLog, metadata !1891, metadata !DIExpression()), !dbg !1901
  %1 = load ptr, ptr %ptr, align 8, !dbg !1902
  %arrayidx = getelementptr %struct.ZSTD_seqSymbol_header, ptr %1, i64 0, !dbg !1903
  %tableLog1 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %arrayidx, i32 0, i32 1, !dbg !1904
  %2 = load i32, ptr %tableLog1, align 4, !dbg !1904
  store i32 %2, ptr %tableLog, align 4, !dbg !1901
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #12, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1892, metadata !DIExpression()), !dbg !1906
  %3 = load ptr, ptr %offTable.addr, align 8, !dbg !1907
  %add.ptr = getelementptr %struct.ZSTD_seqSymbol, ptr %3, i64 1, !dbg !1908
  store ptr %add.ptr, ptr %table, align 8, !dbg !1906
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #12, !dbg !1909
  call void @llvm.dbg.declare(metadata ptr %max, metadata !1893, metadata !DIExpression()), !dbg !1910
  %4 = load i32, ptr %tableLog, align 4, !dbg !1911
  %shl = shl i32 1, %4, !dbg !1912
  store i32 %shl, ptr %max, align 4, !dbg !1910
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #12, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %u, metadata !1894, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #12, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %total, metadata !1895, metadata !DIExpression()), !dbg !1915
  store i32 0, ptr %total, align 4, !dbg !1915
  store i32 0, ptr %u, align 4, !dbg !1916
  br label %for.cond, !dbg !1918

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %u, align 4, !dbg !1919
  %6 = load i32, ptr %max, align 4, !dbg !1921
  %cmp = icmp ult i32 %5, %6, !dbg !1922
  br i1 %cmp, label %for.body, label %for.end, !dbg !1923

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %table, align 8, !dbg !1924
  %8 = load i32, ptr %u, align 4, !dbg !1927
  %idxprom = zext i32 %8 to i64, !dbg !1924
  %arrayidx2 = getelementptr %struct.ZSTD_seqSymbol, ptr %7, i64 %idxprom, !dbg !1924
  %nbAdditionalBits = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx2, i32 0, i32 1, !dbg !1928
  %9 = load i8, ptr %nbAdditionalBits, align 2, !dbg !1928
  %conv = zext i8 %9 to i32, !dbg !1924
  %cmp3 = icmp sgt i32 %conv, 22, !dbg !1929
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1930

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %total, align 4, !dbg !1931
  %add = add i32 %10, 1, !dbg !1931
  store i32 %add, ptr %total, align 4, !dbg !1931
  br label %if.end, !dbg !1932

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1933

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %u, align 4, !dbg !1934
  %inc = add i32 %11, 1, !dbg !1934
  store i32 %inc, ptr %u, align 4, !dbg !1934
  br label %for.cond, !dbg !1935, !llvm.loop !1936

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %tableLog, align 4, !dbg !1938
  %sub = sub i32 8, %12, !dbg !1939
  %13 = load i32, ptr %total, align 4, !dbg !1940
  %shl5 = shl i32 %13, %sub, !dbg !1940
  store i32 %shl5, ptr %total, align 4, !dbg !1940
  %14 = load i32, ptr %total, align 4, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #12, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #12, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #12, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #12, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableLog) #12, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #12, !dbg !1942
  ret i32 %14, !dbg !1943
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_64bits() #3 align 16 !dbg !1944 {
entry:
  ret i32 1, !dbg !1945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequencesLong(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #0 align 16 !dbg !1946 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1950, metadata !DIExpression()), !dbg !1958
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1951, metadata !DIExpression()), !dbg !1959
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !1952, metadata !DIExpression()), !dbg !1960
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !1953, metadata !DIExpression()), !dbg !1961
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !1954, metadata !DIExpression()), !dbg !1962
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !1955, metadata !DIExpression()), !dbg !1963
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !1956, metadata !DIExpression()), !dbg !1964
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !1957, metadata !DIExpression()), !dbg !1965
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1966
  %call = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %0) #13, !dbg !1968
  %tobool = icmp ne i32 %call, 0, !dbg !1968
  br i1 %tobool, label %if.then, label %if.end, !dbg !1969

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !1970
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1972
  %3 = load i64, ptr %maxDstSize.addr, align 8, !dbg !1973
  %4 = load ptr, ptr %seqStart.addr, align 8, !dbg !1974
  %5 = load i64, ptr %seqSize.addr, align 8, !dbg !1975
  %6 = load i32, ptr %nbSeq.addr, align 4, !dbg !1976
  %7 = load i32, ptr %isLongOffset.addr, align 4, !dbg !1977
  %8 = load i32, ptr %frame.addr, align 4, !dbg !1978
  %call1 = call i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13, !dbg !1979
  store i64 %call1, ptr %retval, align 8, !dbg !1980
  br label %return, !dbg !1980

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !1981
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !1982
  %11 = load i64, ptr %maxDstSize.addr, align 8, !dbg !1983
  %12 = load ptr, ptr %seqStart.addr, align 8, !dbg !1984
  %13 = load i64, ptr %seqSize.addr, align 8, !dbg !1985
  %14 = load i32, ptr %nbSeq.addr, align 4, !dbg !1986
  %15 = load i32, ptr %isLongOffset.addr, align 4, !dbg !1987
  %16 = load i32, ptr %frame.addr, align 4, !dbg !1988
  %call2 = call i64 @ZSTD_decompressSequencesLong_default(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) #13, !dbg !1989
  store i64 %call2, ptr %retval, align 8, !dbg !1990
  br label %return, !dbg !1990

return:                                           ; preds = %if.end, %if.then
  %17 = load i64, ptr %retval, align 8, !dbg !1991
  ret i64 %17, !dbg !1991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #0 align 16 !dbg !1992 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1994, metadata !DIExpression()), !dbg !2002
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1995, metadata !DIExpression()), !dbg !2003
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !1996, metadata !DIExpression()), !dbg !2004
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !1997, metadata !DIExpression()), !dbg !2005
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !1998, metadata !DIExpression()), !dbg !2006
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !1999, metadata !DIExpression()), !dbg !2007
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !2000, metadata !DIExpression()), !dbg !2008
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !2001, metadata !DIExpression()), !dbg !2009
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2010
  %call = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %0) #13, !dbg !2012
  %tobool = icmp ne i32 %call, 0, !dbg !2012
  br i1 %tobool, label %if.then, label %if.end, !dbg !2013

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !2014
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2016
  %3 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2017
  %4 = load ptr, ptr %seqStart.addr, align 8, !dbg !2018
  %5 = load i64, ptr %seqSize.addr, align 8, !dbg !2019
  %6 = load i32, ptr %nbSeq.addr, align 4, !dbg !2020
  %7 = load i32, ptr %isLongOffset.addr, align 4, !dbg !2021
  %8 = load i32, ptr %frame.addr, align 4, !dbg !2022
  %call1 = call i64 @ZSTD_decompressSequencesSplitLitBuffer_bmi2(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13, !dbg !2023
  store i64 %call1, ptr %retval, align 8, !dbg !2024
  br label %return, !dbg !2024

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !2025
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !2026
  %11 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2027
  %12 = load ptr, ptr %seqStart.addr, align 8, !dbg !2028
  %13 = load i64, ptr %seqSize.addr, align 8, !dbg !2029
  %14 = load i32, ptr %nbSeq.addr, align 4, !dbg !2030
  %15 = load i32, ptr %isLongOffset.addr, align 4, !dbg !2031
  %16 = load i32, ptr %frame.addr, align 4, !dbg !2032
  %call2 = call i64 @ZSTD_decompressSequencesSplitLitBuffer_default(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) #13, !dbg !2033
  store i64 %call2, ptr %retval, align 8, !dbg !2034
  br label %return, !dbg !2034

return:                                           ; preds = %if.end, %if.then
  %17 = load i64, ptr %retval, align 8, !dbg !2035
  ret i64 %17, !dbg !2035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequences(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #0 align 16 !dbg !2036 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2038, metadata !DIExpression()), !dbg !2046
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2039, metadata !DIExpression()), !dbg !2047
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !2040, metadata !DIExpression()), !dbg !2048
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !2041, metadata !DIExpression()), !dbg !2049
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !2042, metadata !DIExpression()), !dbg !2050
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !2043, metadata !DIExpression()), !dbg !2051
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !2044, metadata !DIExpression()), !dbg !2052
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !2045, metadata !DIExpression()), !dbg !2053
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2054
  %call = call i32 @ZSTD_DCtx_get_bmi2(ptr noundef %0) #13, !dbg !2056
  %tobool = icmp ne i32 %call, 0, !dbg !2056
  br i1 %tobool, label %if.then, label %if.end, !dbg !2057

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !2058
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2060
  %3 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2061
  %4 = load ptr, ptr %seqStart.addr, align 8, !dbg !2062
  %5 = load i64, ptr %seqSize.addr, align 8, !dbg !2063
  %6 = load i32, ptr %nbSeq.addr, align 4, !dbg !2064
  %7 = load i32, ptr %isLongOffset.addr, align 4, !dbg !2065
  %8 = load i32, ptr %frame.addr, align 4, !dbg !2066
  %call1 = call i64 @ZSTD_decompressSequences_bmi2(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13, !dbg !2067
  store i64 %call1, ptr %retval, align 8, !dbg !2068
  br label %return, !dbg !2068

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !2069
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !2070
  %11 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2071
  %12 = load ptr, ptr %seqStart.addr, align 8, !dbg !2072
  %13 = load i64, ptr %seqSize.addr, align 8, !dbg !2073
  %14 = load i32, ptr %nbSeq.addr, align 4, !dbg !2074
  %15 = load i32, ptr %isLongOffset.addr, align 4, !dbg !2075
  %16 = load i32, ptr %frame.addr, align 4, !dbg !2076
  %call2 = call i64 @ZSTD_decompressSequences_default(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) #13, !dbg !2077
  store i64 %call2, ptr %retval, align 8, !dbg !2078
  br label %return, !dbg !2078

return:                                           ; preds = %if.end, %if.then
  %17 = load i64, ptr %retval, align 8, !dbg !2079
  ret i64 %17, !dbg !2079
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ZSTD_checkContinuity(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize) #0 align 16 !dbg !2080 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2084, metadata !DIExpression()), !dbg !2087
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2085, metadata !DIExpression()), !dbg !2088
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2086, metadata !DIExpression()), !dbg !2089
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2090
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !2092
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 6, !dbg !2093
  %2 = load ptr, ptr %previousDstEnd, align 8, !dbg !2093
  %cmp = icmp ne ptr %0, %2, !dbg !2094
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2095

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %dstSize.addr, align 8, !dbg !2096
  %cmp1 = icmp ugt i64 %3, 0, !dbg !2097
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2098

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !2099
  %previousDstEnd2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 6, !dbg !2101
  %5 = load ptr, ptr %previousDstEnd2, align 8, !dbg !2101
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !2102
  %dictEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 9, !dbg !2103
  store ptr %5, ptr %dictEnd, align 8, !dbg !2104
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !2105
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !2106
  %previousDstEnd3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 6, !dbg !2107
  %9 = load ptr, ptr %previousDstEnd3, align 8, !dbg !2107
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !2108
  %prefixStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 7, !dbg !2109
  %11 = load ptr, ptr %prefixStart, align 8, !dbg !2109
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !2110
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !2110
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2110
  %idx.neg = sub i64 0, %sub.ptr.sub, !dbg !2111
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.neg, !dbg !2111
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !2112
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %12, i32 0, i32 8, !dbg !2113
  store ptr %add.ptr, ptr %virtualStart, align 8, !dbg !2114
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !2115
  %14 = load ptr, ptr %dctx.addr, align 8, !dbg !2116
  %prefixStart4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %14, i32 0, i32 7, !dbg !2117
  store ptr %13, ptr %prefixStart4, align 8, !dbg !2118
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !2119
  %16 = load ptr, ptr %dctx.addr, align 8, !dbg !2120
  %previousDstEnd5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i32 0, i32 6, !dbg !2121
  store ptr %15, ptr %previousDstEnd5, align 8, !dbg !2122
  br label %if.end, !dbg !2123

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !2124
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressBlock(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !2125 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %dSize = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2129, metadata !DIExpression()), !dbg !2135
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2130, metadata !DIExpression()), !dbg !2136
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !2131, metadata !DIExpression()), !dbg !2137
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2132, metadata !DIExpression()), !dbg !2138
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !2133, metadata !DIExpression()), !dbg !2139
  call void @llvm.lifetime.start.p0(i64 8, ptr %dSize) #12, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %dSize, metadata !2134, metadata !DIExpression()), !dbg !2141
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2142
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !2143
  %2 = load i64, ptr %dstCapacity.addr, align 8, !dbg !2144
  call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i64 noundef %2) #13, !dbg !2145
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !2146
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !2147
  %5 = load i64, ptr %dstCapacity.addr, align 8, !dbg !2148
  %6 = load ptr, ptr %src.addr, align 8, !dbg !2149
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !2150
  %call = call i64 @ZSTD_decompressBlock_internal(ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef 0, i32 noundef 0) #13, !dbg !2151
  store i64 %call, ptr %dSize, align 8, !dbg !2152
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !2153
  %9 = load i64, ptr %dSize, align 8, !dbg !2154
  %add.ptr = getelementptr i8, ptr %8, i64 %9, !dbg !2155
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !2156
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 6, !dbg !2157
  store ptr %add.ptr, ptr %previousDstEnd, align 8, !dbg !2158
  %11 = load i64, ptr %dSize, align 8, !dbg !2159
  call void @llvm.lifetime.end.p0(i64 8, ptr %dSize) #12, !dbg !2160
  ret i64 %11, !dbg !2161
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #3 align 16 !dbg !155 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !161, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #12, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !162, metadata !DIExpression()), !dbg !2163
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2163
  store ptr %0, ptr %__pptr, align 8, !dbg !2163
  %1 = load ptr, ptr %__pptr, align 8, !dbg !2163
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !2163
  %2 = load i32, ptr %x, align 1, !dbg !2163
  store i32 %2, ptr %tmp, align 4, !dbg !2163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #12, !dbg !2164
  %3 = load i32, ptr %tmp, align 4, !dbg !2163
  ret i32 %3, !dbg !2165
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_le16(ptr noundef %p) #3 align 16 !dbg !173 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !178, metadata !DIExpression()), !dbg !2166
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #12, !dbg !2167
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !179, metadata !DIExpression()), !dbg !2167
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2167
  store ptr %0, ptr %__pptr, align 8, !dbg !2167
  %1 = load ptr, ptr %__pptr, align 8, !dbg !2167
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !2167
  %2 = load i16, ptr %x, align 1, !dbg !2167
  store i16 %2, ptr %tmp, align 2, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #12, !dbg !2168
  %3 = load i16, ptr %tmp, align 2, !dbg !2167
  ret i16 %3, !dbg !2169
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_buildFSETable_body(ptr noundef %dt, ptr noundef %normalizedCounter, i32 noundef %maxSymbolValue, ptr noundef %baseValue, ptr noundef %nbAdditionalBits, i32 noundef %tableLog, ptr noundef %wksp, i64 noundef %wkspSize) #9 align 16 !dbg !2170 {
entry:
  %dt.addr = alloca ptr, align 8
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSymbolValue.addr = alloca i32, align 4
  %baseValue.addr = alloca ptr, align 8
  %nbAdditionalBits.addr = alloca ptr, align 8
  %tableLog.addr = alloca i32, align 4
  %wksp.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %tableDecode = alloca ptr, align 8
  %maxSV1 = alloca i32, align 4
  %tableSize = alloca i32, align 4
  %symbolNext = alloca ptr, align 8
  %spread = alloca ptr, align 8
  %highThreshold = alloca i32, align 4
  %DTableH = alloca %struct.ZSTD_seqSymbol_header, align 4
  %largeLimit = alloca i16, align 2
  %s = alloca i32, align 4
  %tableMask = alloca i64, align 8
  %step = alloca i64, align 8
  %add38 = alloca i64, align 8
  %pos = alloca i64, align 8
  %sv = alloca i64, align 8
  %s39 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %position = alloca i64, align 8
  %s63 = alloca i64, align 8
  %unroll = alloca i64, align 8
  %u = alloca i64, align 8
  %uPosition = alloca i64, align 8
  %tableMask89 = alloca i32, align 4
  %step91 = alloca i32, align 4
  %s96 = alloca i32, align 4
  %position97 = alloca i32, align 4
  %i102 = alloca i32, align 4
  %n103 = alloca i32, align 4
  %u127 = alloca i32, align 4
  %symbol = alloca i32, align 4
  %nextState = alloca i32, align 4
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !2172, metadata !DIExpression()), !dbg !2237
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !2173, metadata !DIExpression()), !dbg !2238
  store i32 %maxSymbolValue, ptr %maxSymbolValue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxSymbolValue.addr, metadata !2174, metadata !DIExpression()), !dbg !2239
  store ptr %baseValue, ptr %baseValue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %baseValue.addr, metadata !2175, metadata !DIExpression()), !dbg !2240
  store ptr %nbAdditionalBits, ptr %nbAdditionalBits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbAdditionalBits.addr, metadata !2176, metadata !DIExpression()), !dbg !2241
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !2177, metadata !DIExpression()), !dbg !2242
  store ptr %wksp, ptr %wksp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wksp.addr, metadata !2178, metadata !DIExpression()), !dbg !2243
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !2179, metadata !DIExpression()), !dbg !2244
  call void @llvm.lifetime.start.p0(i64 8, ptr %tableDecode) #12, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %tableDecode, metadata !2180, metadata !DIExpression()), !dbg !2246
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !2247
  %add.ptr = getelementptr %struct.ZSTD_seqSymbol, ptr %0, i64 1, !dbg !2248
  store ptr %add.ptr, ptr %tableDecode, align 8, !dbg !2246
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxSV1) #12, !dbg !2249
  call void @llvm.dbg.declare(metadata ptr %maxSV1, metadata !2182, metadata !DIExpression()), !dbg !2250
  %1 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !2251
  %add = add i32 %1, 1, !dbg !2252
  store i32 %add, ptr %maxSV1, align 4, !dbg !2250
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableSize) #12, !dbg !2253
  call void @llvm.dbg.declare(metadata ptr %tableSize, metadata !2183, metadata !DIExpression()), !dbg !2254
  %2 = load i32, ptr %tableLog.addr, align 4, !dbg !2255
  %shl = shl i32 1, %2, !dbg !2256
  store i32 %shl, ptr %tableSize, align 4, !dbg !2254
  call void @llvm.lifetime.start.p0(i64 8, ptr %symbolNext) #12, !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %symbolNext, metadata !2184, metadata !DIExpression()), !dbg !2258
  %3 = load ptr, ptr %wksp.addr, align 8, !dbg !2259
  store ptr %3, ptr %symbolNext, align 8, !dbg !2258
  call void @llvm.lifetime.start.p0(i64 8, ptr %spread) #12, !dbg !2260
  call void @llvm.dbg.declare(metadata ptr %spread, metadata !2185, metadata !DIExpression()), !dbg !2261
  %4 = load ptr, ptr %symbolNext, align 8, !dbg !2262
  %add.ptr1 = getelementptr i16, ptr %4, i64 52, !dbg !2263
  %add.ptr2 = getelementptr i16, ptr %add.ptr1, i64 1, !dbg !2264
  store ptr %add.ptr2, ptr %spread, align 8, !dbg !2261
  call void @llvm.lifetime.start.p0(i64 4, ptr %highThreshold) #12, !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %highThreshold, metadata !2186, metadata !DIExpression()), !dbg !2266
  %5 = load i32, ptr %tableSize, align 4, !dbg !2267
  %sub = sub i32 %5, 1, !dbg !2268
  store i32 %sub, ptr %highThreshold, align 4, !dbg !2266
  %6 = load i64, ptr %wkspSize.addr, align 8, !dbg !2269
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableH) #12, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !2187, metadata !DIExpression()), !dbg !2271
  %7 = load i32, ptr %tableLog.addr, align 4, !dbg !2272
  %tableLog3 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %DTableH, i32 0, i32 1, !dbg !2273
  store i32 %7, ptr %tableLog3, align 4, !dbg !2274
  %fastMode = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %DTableH, i32 0, i32 0, !dbg !2275
  store i32 1, ptr %fastMode, align 4, !dbg !2276
  call void @llvm.lifetime.start.p0(i64 2, ptr %largeLimit) #12, !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %largeLimit, metadata !2189, metadata !DIExpression()), !dbg !2278
  %8 = load i32, ptr %tableLog.addr, align 4, !dbg !2279
  %sub4 = sub i32 %8, 1, !dbg !2280
  %shl5 = shl i32 1, %sub4, !dbg !2281
  %conv = trunc i32 %shl5 to i16, !dbg !2282
  store i16 %conv, ptr %largeLimit, align 2, !dbg !2278
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #12, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %s, metadata !2192, metadata !DIExpression()), !dbg !2284
  store i32 0, ptr %s, align 4, !dbg !2285
  br label %for.cond, !dbg !2287

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %s, align 4, !dbg !2288
  %10 = load i32, ptr %maxSV1, align 4, !dbg !2290
  %cmp = icmp ult i32 %9, %10, !dbg !2291
  br i1 %cmp, label %for.body, label %for.end, !dbg !2292

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !2293
  %12 = load i32, ptr %s, align 4, !dbg !2296
  %idxprom = zext i32 %12 to i64, !dbg !2293
  %arrayidx = getelementptr i16, ptr %11, i64 %idxprom, !dbg !2293
  %13 = load i16, ptr %arrayidx, align 2, !dbg !2293
  %conv7 = sext i16 %13 to i32, !dbg !2293
  %cmp8 = icmp eq i32 %conv7, -1, !dbg !2297
  br i1 %cmp8, label %if.then, label %if.else, !dbg !2298

if.then:                                          ; preds = %for.body
  %14 = load i32, ptr %s, align 4, !dbg !2299
  %15 = load ptr, ptr %tableDecode, align 8, !dbg !2301
  %16 = load i32, ptr %highThreshold, align 4, !dbg !2302
  %dec = add i32 %16, -1, !dbg !2302
  store i32 %dec, ptr %highThreshold, align 4, !dbg !2302
  %idxprom10 = zext i32 %16 to i64, !dbg !2301
  %arrayidx11 = getelementptr %struct.ZSTD_seqSymbol, ptr %15, i64 %idxprom10, !dbg !2301
  %baseValue12 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx11, i32 0, i32 3, !dbg !2303
  store i32 %14, ptr %baseValue12, align 4, !dbg !2304
  %17 = load ptr, ptr %symbolNext, align 8, !dbg !2305
  %18 = load i32, ptr %s, align 4, !dbg !2306
  %idxprom13 = zext i32 %18 to i64, !dbg !2305
  %arrayidx14 = getelementptr i16, ptr %17, i64 %idxprom13, !dbg !2305
  store i16 1, ptr %arrayidx14, align 2, !dbg !2307
  br label %if.end27, !dbg !2308

if.else:                                          ; preds = %for.body
  %19 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !2309
  %20 = load i32, ptr %s, align 4, !dbg !2312
  %idxprom15 = zext i32 %20 to i64, !dbg !2309
  %arrayidx16 = getelementptr i16, ptr %19, i64 %idxprom15, !dbg !2309
  %21 = load i16, ptr %arrayidx16, align 2, !dbg !2309
  %conv17 = sext i16 %21 to i32, !dbg !2309
  %22 = load i16, ptr %largeLimit, align 2, !dbg !2313
  %conv18 = sext i16 %22 to i32, !dbg !2313
  %cmp19 = icmp sge i32 %conv17, %conv18, !dbg !2314
  br i1 %cmp19, label %if.then21, label %if.end, !dbg !2315

if.then21:                                        ; preds = %if.else
  %fastMode22 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %DTableH, i32 0, i32 0, !dbg !2316
  store i32 0, ptr %fastMode22, align 4, !dbg !2317
  br label %if.end, !dbg !2318

if.end:                                           ; preds = %if.then21, %if.else
  %23 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !2319
  %24 = load i32, ptr %s, align 4, !dbg !2320
  %idxprom23 = zext i32 %24 to i64, !dbg !2319
  %arrayidx24 = getelementptr i16, ptr %23, i64 %idxprom23, !dbg !2319
  %25 = load i16, ptr %arrayidx24, align 2, !dbg !2319
  %26 = load ptr, ptr %symbolNext, align 8, !dbg !2321
  %27 = load i32, ptr %s, align 4, !dbg !2322
  %idxprom25 = zext i32 %27 to i64, !dbg !2321
  %arrayidx26 = getelementptr i16, ptr %26, i64 %idxprom25, !dbg !2321
  store i16 %25, ptr %arrayidx26, align 2, !dbg !2323
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then
  br label %for.inc, !dbg !2324

for.inc:                                          ; preds = %if.end27
  %28 = load i32, ptr %s, align 4, !dbg !2325
  %inc = add i32 %28, 1, !dbg !2325
  store i32 %inc, ptr %s, align 4, !dbg !2325
  br label %for.cond, !dbg !2326, !llvm.loop !2327

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #12, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 2, ptr %largeLimit) #12, !dbg !2329
  %29 = load ptr, ptr %dt.addr, align 8, !dbg !2330
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %DTableH, i64 8, i1 false), !dbg !2330
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableH) #12, !dbg !2331
  %30 = load i32, ptr %highThreshold, align 4, !dbg !2332
  %31 = load i32, ptr %tableSize, align 4, !dbg !2333
  %sub28 = sub i32 %31, 1, !dbg !2334
  %cmp29 = icmp eq i32 %30, %sub28, !dbg !2335
  br i1 %cmp29, label %if.then31, label %if.else88, !dbg !2336

if.then31:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tableMask) #12, !dbg !2337
  call void @llvm.dbg.declare(metadata ptr %tableMask, metadata !2193, metadata !DIExpression()), !dbg !2338
  %32 = load i32, ptr %tableSize, align 4, !dbg !2339
  %sub32 = sub i32 %32, 1, !dbg !2340
  %conv33 = zext i32 %sub32 to i64, !dbg !2339
  store i64 %conv33, ptr %tableMask, align 8, !dbg !2338
  call void @llvm.lifetime.start.p0(i64 8, ptr %step) #12, !dbg !2341
  call void @llvm.dbg.declare(metadata ptr %step, metadata !2196, metadata !DIExpression()), !dbg !2342
  %33 = load i32, ptr %tableSize, align 4, !dbg !2343
  %shr = lshr i32 %33, 1, !dbg !2343
  %34 = load i32, ptr %tableSize, align 4, !dbg !2343
  %shr34 = lshr i32 %34, 3, !dbg !2343
  %add35 = add i32 %shr, %shr34, !dbg !2343
  %add36 = add i32 %add35, 3, !dbg !2343
  %conv37 = zext i32 %add36 to i64, !dbg !2343
  store i64 %conv37, ptr %step, align 8, !dbg !2342
  call void @llvm.lifetime.start.p0(i64 8, ptr %add38) #12, !dbg !2344
  call void @llvm.dbg.declare(metadata ptr %add38, metadata !2197, metadata !DIExpression()), !dbg !2345
  store i64 72340172838076673, ptr %add38, align 8, !dbg !2345
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #12, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2200, metadata !DIExpression()), !dbg !2347
  store i64 0, ptr %pos, align 8, !dbg !2347
  call void @llvm.lifetime.start.p0(i64 8, ptr %sv) #12, !dbg !2348
  call void @llvm.dbg.declare(metadata ptr %sv, metadata !2201, metadata !DIExpression()), !dbg !2349
  store i64 0, ptr %sv, align 8, !dbg !2349
  call void @llvm.lifetime.start.p0(i64 4, ptr %s39) #12, !dbg !2350
  call void @llvm.dbg.declare(metadata ptr %s39, metadata !2202, metadata !DIExpression()), !dbg !2351
  store i32 0, ptr %s39, align 4, !dbg !2352
  br label %for.cond40, !dbg !2353

for.cond40:                                       ; preds = %for.inc59, %if.then31
  %35 = load i32, ptr %s39, align 4, !dbg !2354
  %36 = load i32, ptr %maxSV1, align 4, !dbg !2355
  %cmp41 = icmp ult i32 %35, %36, !dbg !2356
  br i1 %cmp41, label %for.body43, label %for.end62, !dbg !2357

for.body43:                                       ; preds = %for.cond40
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2203, metadata !DIExpression()), !dbg !2359
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12, !dbg !2360
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2207, metadata !DIExpression()), !dbg !2361
  %37 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !2362
  %38 = load i32, ptr %s39, align 4, !dbg !2363
  %idxprom44 = zext i32 %38 to i64, !dbg !2362
  %arrayidx45 = getelementptr i16, ptr %37, i64 %idxprom44, !dbg !2362
  %39 = load i16, ptr %arrayidx45, align 2, !dbg !2362
  %conv46 = sext i16 %39 to i32, !dbg !2362
  store i32 %conv46, ptr %n, align 4, !dbg !2361
  %40 = load ptr, ptr %spread, align 8, !dbg !2364
  %41 = load i64, ptr %pos, align 8, !dbg !2365
  %add.ptr47 = getelementptr i8, ptr %40, i64 %41, !dbg !2366
  %42 = load i64, ptr %sv, align 8, !dbg !2367
  call void @MEM_write64(ptr noundef %add.ptr47, i64 noundef %42) #13, !dbg !2368
  store i32 8, ptr %i, align 4, !dbg !2369
  br label %for.cond48, !dbg !2371

for.cond48:                                       ; preds = %for.inc54, %for.body43
  %43 = load i32, ptr %i, align 4, !dbg !2372
  %44 = load i32, ptr %n, align 4, !dbg !2374
  %cmp49 = icmp slt i32 %43, %44, !dbg !2375
  br i1 %cmp49, label %for.body51, label %for.end56, !dbg !2376

for.body51:                                       ; preds = %for.cond48
  %45 = load ptr, ptr %spread, align 8, !dbg !2377
  %46 = load i64, ptr %pos, align 8, !dbg !2379
  %add.ptr52 = getelementptr i8, ptr %45, i64 %46, !dbg !2380
  %47 = load i32, ptr %i, align 4, !dbg !2381
  %idx.ext = sext i32 %47 to i64, !dbg !2382
  %add.ptr53 = getelementptr i8, ptr %add.ptr52, i64 %idx.ext, !dbg !2382
  %48 = load i64, ptr %sv, align 8, !dbg !2383
  call void @MEM_write64(ptr noundef %add.ptr53, i64 noundef %48) #13, !dbg !2384
  br label %for.inc54, !dbg !2385

for.inc54:                                        ; preds = %for.body51
  %49 = load i32, ptr %i, align 4, !dbg !2386
  %add55 = add i32 %49, 8, !dbg !2386
  store i32 %add55, ptr %i, align 4, !dbg !2386
  br label %for.cond48, !dbg !2387, !llvm.loop !2388

for.end56:                                        ; preds = %for.cond48
  %50 = load i32, ptr %n, align 4, !dbg !2390
  %conv57 = sext i32 %50 to i64, !dbg !2390
  %51 = load i64, ptr %pos, align 8, !dbg !2391
  %add58 = add i64 %51, %conv57, !dbg !2391
  store i64 %add58, ptr %pos, align 8, !dbg !2391
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12, !dbg !2392
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2392
  br label %for.inc59, !dbg !2393

for.inc59:                                        ; preds = %for.end56
  %52 = load i32, ptr %s39, align 4, !dbg !2394
  %inc60 = add i32 %52, 1, !dbg !2394
  store i32 %inc60, ptr %s39, align 4, !dbg !2394
  %53 = load i64, ptr %sv, align 8, !dbg !2395
  %add61 = add i64 %53, 72340172838076673, !dbg !2395
  store i64 %add61, ptr %sv, align 8, !dbg !2395
  br label %for.cond40, !dbg !2396, !llvm.loop !2397

for.end62:                                        ; preds = %for.cond40
  call void @llvm.lifetime.end.p0(i64 4, ptr %s39) #12, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr %sv) #12, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #12, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr %add38) #12, !dbg !2399
  call void @llvm.lifetime.start.p0(i64 8, ptr %position) #12, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %position, metadata !2208, metadata !DIExpression()), !dbg !2401
  store i64 0, ptr %position, align 8, !dbg !2401
  call void @llvm.lifetime.start.p0(i64 8, ptr %s63) #12, !dbg !2402
  call void @llvm.dbg.declare(metadata ptr %s63, metadata !2210, metadata !DIExpression()), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 8, ptr %unroll) #12, !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %unroll, metadata !2211, metadata !DIExpression()), !dbg !2405
  store i64 2, ptr %unroll, align 8, !dbg !2405
  store i64 0, ptr %s63, align 8, !dbg !2406
  br label %for.cond64, !dbg !2407

for.cond64:                                       ; preds = %for.inc85, %for.end62
  %54 = load i64, ptr %s63, align 8, !dbg !2408
  %55 = load i32, ptr %tableSize, align 4, !dbg !2409
  %conv65 = zext i32 %55 to i64, !dbg !2410
  %cmp66 = icmp ult i64 %54, %conv65, !dbg !2411
  br i1 %cmp66, label %for.body68, label %for.end87, !dbg !2412

for.body68:                                       ; preds = %for.cond64
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #12, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %u, metadata !2212, metadata !DIExpression()), !dbg !2414
  store i64 0, ptr %u, align 8, !dbg !2415
  br label %for.cond69, !dbg !2416

for.cond69:                                       ; preds = %for.inc79, %for.body68
  %56 = load i64, ptr %u, align 8, !dbg !2417
  %cmp70 = icmp ult i64 %56, 2, !dbg !2418
  br i1 %cmp70, label %for.body72, label %for.end81, !dbg !2419

for.body72:                                       ; preds = %for.cond69
  call void @llvm.lifetime.start.p0(i64 8, ptr %uPosition) #12, !dbg !2420
  call void @llvm.dbg.declare(metadata ptr %uPosition, metadata !2216, metadata !DIExpression()), !dbg !2421
  %57 = load i64, ptr %position, align 8, !dbg !2422
  %58 = load i64, ptr %u, align 8, !dbg !2423
  %59 = load i64, ptr %step, align 8, !dbg !2424
  %mul = mul i64 %58, %59, !dbg !2425
  %add73 = add i64 %57, %mul, !dbg !2426
  %60 = load i64, ptr %tableMask, align 8, !dbg !2427
  %and = and i64 %add73, %60, !dbg !2428
  store i64 %and, ptr %uPosition, align 8, !dbg !2421
  %61 = load ptr, ptr %spread, align 8, !dbg !2429
  %62 = load i64, ptr %s63, align 8, !dbg !2430
  %63 = load i64, ptr %u, align 8, !dbg !2431
  %add74 = add i64 %62, %63, !dbg !2432
  %arrayidx75 = getelementptr i8, ptr %61, i64 %add74, !dbg !2429
  %64 = load i8, ptr %arrayidx75, align 1, !dbg !2429
  %conv76 = zext i8 %64 to i32, !dbg !2429
  %65 = load ptr, ptr %tableDecode, align 8, !dbg !2433
  %66 = load i64, ptr %uPosition, align 8, !dbg !2434
  %arrayidx77 = getelementptr %struct.ZSTD_seqSymbol, ptr %65, i64 %66, !dbg !2433
  %baseValue78 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx77, i32 0, i32 3, !dbg !2435
  store i32 %conv76, ptr %baseValue78, align 4, !dbg !2436
  call void @llvm.lifetime.end.p0(i64 8, ptr %uPosition) #12, !dbg !2437
  br label %for.inc79, !dbg !2438

for.inc79:                                        ; preds = %for.body72
  %67 = load i64, ptr %u, align 8, !dbg !2439
  %inc80 = add i64 %67, 1, !dbg !2439
  store i64 %inc80, ptr %u, align 8, !dbg !2439
  br label %for.cond69, !dbg !2440, !llvm.loop !2441

for.end81:                                        ; preds = %for.cond69
  %68 = load i64, ptr %position, align 8, !dbg !2443
  %69 = load i64, ptr %step, align 8, !dbg !2444
  %mul82 = mul i64 2, %69, !dbg !2445
  %add83 = add i64 %68, %mul82, !dbg !2446
  %70 = load i64, ptr %tableMask, align 8, !dbg !2447
  %and84 = and i64 %add83, %70, !dbg !2448
  store i64 %and84, ptr %position, align 8, !dbg !2449
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #12, !dbg !2450
  br label %for.inc85, !dbg !2451

for.inc85:                                        ; preds = %for.end81
  %71 = load i64, ptr %s63, align 8, !dbg !2452
  %add86 = add i64 %71, 2, !dbg !2452
  store i64 %add86, ptr %s63, align 8, !dbg !2452
  br label %for.cond64, !dbg !2453, !llvm.loop !2454

for.end87:                                        ; preds = %for.cond64
  call void @llvm.lifetime.end.p0(i64 8, ptr %unroll) #12, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 8, ptr %s63) #12, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 8, ptr %position) #12, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 8, ptr %step) #12, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 8, ptr %tableMask) #12, !dbg !2457
  br label %if.end126, !dbg !2458

if.else88:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableMask89) #12, !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %tableMask89, metadata !2220, metadata !DIExpression()), !dbg !2460
  %72 = load i32, ptr %tableSize, align 4, !dbg !2461
  %sub90 = sub i32 %72, 1, !dbg !2462
  store i32 %sub90, ptr %tableMask89, align 4, !dbg !2460
  call void @llvm.lifetime.start.p0(i64 4, ptr %step91) #12, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %step91, metadata !2222, metadata !DIExpression()), !dbg !2464
  %73 = load i32, ptr %tableSize, align 4, !dbg !2465
  %shr92 = lshr i32 %73, 1, !dbg !2465
  %74 = load i32, ptr %tableSize, align 4, !dbg !2465
  %shr93 = lshr i32 %74, 3, !dbg !2465
  %add94 = add i32 %shr92, %shr93, !dbg !2465
  %add95 = add i32 %add94, 3, !dbg !2465
  store i32 %add95, ptr %step91, align 4, !dbg !2464
  call void @llvm.lifetime.start.p0(i64 4, ptr %s96) #12, !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %s96, metadata !2223, metadata !DIExpression()), !dbg !2467
  call void @llvm.lifetime.start.p0(i64 4, ptr %position97) #12, !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %position97, metadata !2224, metadata !DIExpression()), !dbg !2468
  store i32 0, ptr %position97, align 4, !dbg !2468
  store i32 0, ptr %s96, align 4, !dbg !2469
  br label %for.cond98, !dbg !2470

for.cond98:                                       ; preds = %for.inc123, %if.else88
  %75 = load i32, ptr %s96, align 4, !dbg !2471
  %76 = load i32, ptr %maxSV1, align 4, !dbg !2472
  %cmp99 = icmp ult i32 %75, %76, !dbg !2473
  br i1 %cmp99, label %for.body101, label %for.end125, !dbg !2474

for.body101:                                      ; preds = %for.cond98
  call void @llvm.lifetime.start.p0(i64 4, ptr %i102) #12, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %i102, metadata !2225, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 4, ptr %n103) #12, !dbg !2477
  call void @llvm.dbg.declare(metadata ptr %n103, metadata !2229, metadata !DIExpression()), !dbg !2478
  %77 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !2479
  %78 = load i32, ptr %s96, align 4, !dbg !2480
  %idxprom104 = zext i32 %78 to i64, !dbg !2479
  %arrayidx105 = getelementptr i16, ptr %77, i64 %idxprom104, !dbg !2479
  %79 = load i16, ptr %arrayidx105, align 2, !dbg !2479
  %conv106 = sext i16 %79 to i32, !dbg !2479
  store i32 %conv106, ptr %n103, align 4, !dbg !2478
  store i32 0, ptr %i102, align 4, !dbg !2481
  br label %for.cond107, !dbg !2483

for.cond107:                                      ; preds = %for.inc120, %for.body101
  %80 = load i32, ptr %i102, align 4, !dbg !2484
  %81 = load i32, ptr %n103, align 4, !dbg !2486
  %cmp108 = icmp slt i32 %80, %81, !dbg !2487
  br i1 %cmp108, label %for.body110, label %for.end122, !dbg !2488

for.body110:                                      ; preds = %for.cond107
  %82 = load i32, ptr %s96, align 4, !dbg !2489
  %83 = load ptr, ptr %tableDecode, align 8, !dbg !2491
  %84 = load i32, ptr %position97, align 4, !dbg !2492
  %idxprom111 = zext i32 %84 to i64, !dbg !2491
  %arrayidx112 = getelementptr %struct.ZSTD_seqSymbol, ptr %83, i64 %idxprom111, !dbg !2491
  %baseValue113 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx112, i32 0, i32 3, !dbg !2493
  store i32 %82, ptr %baseValue113, align 4, !dbg !2494
  %85 = load i32, ptr %position97, align 4, !dbg !2495
  %86 = load i32, ptr %step91, align 4, !dbg !2496
  %add114 = add i32 %85, %86, !dbg !2497
  %87 = load i32, ptr %tableMask89, align 4, !dbg !2498
  %and115 = and i32 %add114, %87, !dbg !2499
  store i32 %and115, ptr %position97, align 4, !dbg !2500
  br label %while.cond, !dbg !2501

while.cond:                                       ; preds = %while.body, %for.body110
  %88 = load i32, ptr %position97, align 4, !dbg !2502
  %89 = load i32, ptr %highThreshold, align 4, !dbg !2503
  %cmp116 = icmp ugt i32 %88, %89, !dbg !2504
  br i1 %cmp116, label %while.body, label %while.end, !dbg !2501

while.body:                                       ; preds = %while.cond
  %90 = load i32, ptr %position97, align 4, !dbg !2505
  %91 = load i32, ptr %step91, align 4, !dbg !2506
  %add118 = add i32 %90, %91, !dbg !2507
  %92 = load i32, ptr %tableMask89, align 4, !dbg !2508
  %and119 = and i32 %add118, %92, !dbg !2509
  store i32 %and119, ptr %position97, align 4, !dbg !2510
  br label %while.cond, !dbg !2501, !llvm.loop !2511

while.end:                                        ; preds = %while.cond
  br label %for.inc120, !dbg !2512

for.inc120:                                       ; preds = %while.end
  %93 = load i32, ptr %i102, align 4, !dbg !2513
  %inc121 = add i32 %93, 1, !dbg !2513
  store i32 %inc121, ptr %i102, align 4, !dbg !2513
  br label %for.cond107, !dbg !2514, !llvm.loop !2515

for.end122:                                       ; preds = %for.cond107
  call void @llvm.lifetime.end.p0(i64 4, ptr %n103) #12, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 4, ptr %i102) #12, !dbg !2517
  br label %for.inc123, !dbg !2518

for.inc123:                                       ; preds = %for.end122
  %94 = load i32, ptr %s96, align 4, !dbg !2519
  %inc124 = add i32 %94, 1, !dbg !2519
  store i32 %inc124, ptr %s96, align 4, !dbg !2519
  br label %for.cond98, !dbg !2520, !llvm.loop !2521

for.end125:                                       ; preds = %for.cond98
  call void @llvm.lifetime.end.p0(i64 4, ptr %position97) #12, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 4, ptr %s96) #12, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 4, ptr %step91) #12, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableMask89) #12, !dbg !2523
  br label %if.end126

if.end126:                                        ; preds = %for.end125, %for.end87
  call void @llvm.lifetime.start.p0(i64 4, ptr %u127) #12, !dbg !2524
  call void @llvm.dbg.declare(metadata ptr %u127, metadata !2230, metadata !DIExpression()), !dbg !2525
  store i32 0, ptr %u127, align 4, !dbg !2526
  br label %for.cond128, !dbg !2527

for.cond128:                                      ; preds = %for.inc163, %if.end126
  %95 = load i32, ptr %u127, align 4, !dbg !2528
  %96 = load i32, ptr %tableSize, align 4, !dbg !2529
  %cmp129 = icmp ult i32 %95, %96, !dbg !2530
  br i1 %cmp129, label %for.body131, label %for.end165, !dbg !2531

for.body131:                                      ; preds = %for.cond128
  call void @llvm.lifetime.start.p0(i64 4, ptr %symbol) #12, !dbg !2532
  call void @llvm.dbg.declare(metadata ptr %symbol, metadata !2232, metadata !DIExpression()), !dbg !2533
  %97 = load ptr, ptr %tableDecode, align 8, !dbg !2534
  %98 = load i32, ptr %u127, align 4, !dbg !2535
  %idxprom132 = zext i32 %98 to i64, !dbg !2534
  %arrayidx133 = getelementptr %struct.ZSTD_seqSymbol, ptr %97, i64 %idxprom132, !dbg !2534
  %baseValue134 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx133, i32 0, i32 3, !dbg !2536
  %99 = load i32, ptr %baseValue134, align 4, !dbg !2536
  store i32 %99, ptr %symbol, align 4, !dbg !2533
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextState) #12, !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %nextState, metadata !2236, metadata !DIExpression()), !dbg !2538
  %100 = load ptr, ptr %symbolNext, align 8, !dbg !2539
  %101 = load i32, ptr %symbol, align 4, !dbg !2540
  %idxprom135 = zext i32 %101 to i64, !dbg !2539
  %arrayidx136 = getelementptr i16, ptr %100, i64 %idxprom135, !dbg !2539
  %102 = load i16, ptr %arrayidx136, align 2, !dbg !2541
  %inc137 = add i16 %102, 1, !dbg !2541
  store i16 %inc137, ptr %arrayidx136, align 2, !dbg !2541
  %conv138 = zext i16 %102 to i32, !dbg !2539
  store i32 %conv138, ptr %nextState, align 4, !dbg !2538
  %103 = load i32, ptr %tableLog.addr, align 4, !dbg !2542
  %104 = load i32, ptr %nextState, align 4, !dbg !2543
  %call = call i32 @BIT_highbit32(i32 noundef %104) #13, !dbg !2544
  %sub139 = sub i32 %103, %call, !dbg !2545
  %conv140 = trunc i32 %sub139 to i8, !dbg !2546
  %105 = load ptr, ptr %tableDecode, align 8, !dbg !2547
  %106 = load i32, ptr %u127, align 4, !dbg !2548
  %idxprom141 = zext i32 %106 to i64, !dbg !2547
  %arrayidx142 = getelementptr %struct.ZSTD_seqSymbol, ptr %105, i64 %idxprom141, !dbg !2547
  %nbBits = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx142, i32 0, i32 2, !dbg !2549
  store i8 %conv140, ptr %nbBits, align 1, !dbg !2550
  %107 = load i32, ptr %nextState, align 4, !dbg !2551
  %108 = load ptr, ptr %tableDecode, align 8, !dbg !2552
  %109 = load i32, ptr %u127, align 4, !dbg !2553
  %idxprom143 = zext i32 %109 to i64, !dbg !2552
  %arrayidx144 = getelementptr %struct.ZSTD_seqSymbol, ptr %108, i64 %idxprom143, !dbg !2552
  %nbBits145 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx144, i32 0, i32 2, !dbg !2554
  %110 = load i8, ptr %nbBits145, align 1, !dbg !2554
  %conv146 = zext i8 %110 to i32, !dbg !2552
  %shl147 = shl i32 %107, %conv146, !dbg !2555
  %111 = load i32, ptr %tableSize, align 4, !dbg !2556
  %sub148 = sub i32 %shl147, %111, !dbg !2557
  %conv149 = trunc i32 %sub148 to i16, !dbg !2558
  %112 = load ptr, ptr %tableDecode, align 8, !dbg !2559
  %113 = load i32, ptr %u127, align 4, !dbg !2560
  %idxprom150 = zext i32 %113 to i64, !dbg !2559
  %arrayidx151 = getelementptr %struct.ZSTD_seqSymbol, ptr %112, i64 %idxprom150, !dbg !2559
  %nextState152 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx151, i32 0, i32 0, !dbg !2561
  store i16 %conv149, ptr %nextState152, align 4, !dbg !2562
  %114 = load ptr, ptr %nbAdditionalBits.addr, align 8, !dbg !2563
  %115 = load i32, ptr %symbol, align 4, !dbg !2564
  %idxprom153 = zext i32 %115 to i64, !dbg !2563
  %arrayidx154 = getelementptr i8, ptr %114, i64 %idxprom153, !dbg !2563
  %116 = load i8, ptr %arrayidx154, align 1, !dbg !2563
  %117 = load ptr, ptr %tableDecode, align 8, !dbg !2565
  %118 = load i32, ptr %u127, align 4, !dbg !2566
  %idxprom155 = zext i32 %118 to i64, !dbg !2565
  %arrayidx156 = getelementptr %struct.ZSTD_seqSymbol, ptr %117, i64 %idxprom155, !dbg !2565
  %nbAdditionalBits157 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx156, i32 0, i32 1, !dbg !2567
  store i8 %116, ptr %nbAdditionalBits157, align 2, !dbg !2568
  %119 = load ptr, ptr %baseValue.addr, align 8, !dbg !2569
  %120 = load i32, ptr %symbol, align 4, !dbg !2570
  %idxprom158 = zext i32 %120 to i64, !dbg !2569
  %arrayidx159 = getelementptr i32, ptr %119, i64 %idxprom158, !dbg !2569
  %121 = load i32, ptr %arrayidx159, align 4, !dbg !2569
  %122 = load ptr, ptr %tableDecode, align 8, !dbg !2571
  %123 = load i32, ptr %u127, align 4, !dbg !2572
  %idxprom160 = zext i32 %123 to i64, !dbg !2571
  %arrayidx161 = getelementptr %struct.ZSTD_seqSymbol, ptr %122, i64 %idxprom160, !dbg !2571
  %baseValue162 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx161, i32 0, i32 3, !dbg !2573
  store i32 %121, ptr %baseValue162, align 4, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextState) #12, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 4, ptr %symbol) #12, !dbg !2575
  br label %for.inc163, !dbg !2576

for.inc163:                                       ; preds = %for.body131
  %124 = load i32, ptr %u127, align 4, !dbg !2577
  %inc164 = add i32 %124, 1, !dbg !2577
  store i32 %inc164, ptr %u127, align 4, !dbg !2577
  br label %for.cond128, !dbg !2578, !llvm.loop !2579

for.end165:                                       ; preds = %for.cond128
  call void @llvm.lifetime.end.p0(i64 4, ptr %u127) #12, !dbg !2581
  call void @llvm.lifetime.end.p0(i64 4, ptr %highThreshold) #12, !dbg !2582
  call void @llvm.lifetime.end.p0(i64 8, ptr %spread) #12, !dbg !2582
  call void @llvm.lifetime.end.p0(i64 8, ptr %symbolNext) #12, !dbg !2582
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableSize) #12, !dbg !2582
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxSV1) #12, !dbg !2582
  call void @llvm.lifetime.end.p0(i64 8, ptr %tableDecode) #12, !dbg !2582
  ret void, !dbg !2582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @MEM_write64(ptr noundef %memPtr, i64 noundef %value) #3 align 16 !dbg !193 {
entry:
  %memPtr.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !202, metadata !DIExpression()), !dbg !2583
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !203, metadata !DIExpression()), !dbg !2584
  br label %do.body, !dbg !2585

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #12, !dbg !2586
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !204, metadata !DIExpression()), !dbg !2586
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !2586
  store ptr %0, ptr %__pptr, align 8, !dbg !2586
  %1 = load i64, ptr %value.addr, align 8, !dbg !2586
  %2 = load ptr, ptr %__pptr, align 8, !dbg !2586
  %x = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 0, !dbg !2586
  store i64 %1, ptr %x, align 1, !dbg !2586
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #12, !dbg !2585
  br label %do.end, !dbg !2586

do.end:                                           ; preds = %do.body
  ret void, !dbg !2587
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_highbit32(i32 noundef %val) #3 align 16 !dbg !2588 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  %0 = load i32, ptr %val.addr, align 4, !dbg !2594
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !2596
  %xor = xor i32 %1, 31, !dbg !2597
  ret i32 %xor, !dbg !2598
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_buildSeqTable_rle(ptr noundef %dt, i32 noundef %baseValue, i8 noundef zeroext %nbAddBits) #0 align 16 !dbg !2599 {
entry:
  %dt.addr = alloca ptr, align 8
  %baseValue.addr = alloca i32, align 4
  %nbAddBits.addr = alloca i8, align 1
  %ptr = alloca ptr, align 8
  %DTableH = alloca ptr, align 8
  %cell = alloca ptr, align 8
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !2603, metadata !DIExpression()), !dbg !2610
  store i32 %baseValue, ptr %baseValue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baseValue.addr, metadata !2604, metadata !DIExpression()), !dbg !2611
  store i8 %nbAddBits, ptr %nbAddBits.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %nbAddBits.addr, metadata !2605, metadata !DIExpression()), !dbg !2612
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #12, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !2606, metadata !DIExpression()), !dbg !2614
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !2615
  store ptr %0, ptr %ptr, align 8, !dbg !2614
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableH) #12, !dbg !2616
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !2607, metadata !DIExpression()), !dbg !2617
  %1 = load ptr, ptr %ptr, align 8, !dbg !2618
  store ptr %1, ptr %DTableH, align 8, !dbg !2617
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #12, !dbg !2619
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !2609, metadata !DIExpression()), !dbg !2620
  %2 = load ptr, ptr %dt.addr, align 8, !dbg !2621
  %add.ptr = getelementptr %struct.ZSTD_seqSymbol, ptr %2, i64 1, !dbg !2622
  store ptr %add.ptr, ptr %cell, align 8, !dbg !2620
  %3 = load ptr, ptr %DTableH, align 8, !dbg !2623
  %tableLog = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %3, i32 0, i32 1, !dbg !2624
  store i32 0, ptr %tableLog, align 4, !dbg !2625
  %4 = load ptr, ptr %DTableH, align 8, !dbg !2626
  %fastMode = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %4, i32 0, i32 0, !dbg !2627
  store i32 0, ptr %fastMode, align 4, !dbg !2628
  %5 = load ptr, ptr %cell, align 8, !dbg !2629
  %nbBits = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %5, i32 0, i32 2, !dbg !2630
  store i8 0, ptr %nbBits, align 1, !dbg !2631
  %6 = load ptr, ptr %cell, align 8, !dbg !2632
  %nextState = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %6, i32 0, i32 0, !dbg !2633
  store i16 0, ptr %nextState, align 4, !dbg !2634
  %7 = load i8, ptr %nbAddBits.addr, align 1, !dbg !2635
  %8 = load ptr, ptr %cell, align 8, !dbg !2636
  %nbAdditionalBits = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i32 0, i32 1, !dbg !2637
  store i8 %7, ptr %nbAdditionalBits, align 2, !dbg !2638
  %9 = load i32, ptr %baseValue.addr, align 4, !dbg !2639
  %10 = load ptr, ptr %cell, align 8, !dbg !2640
  %baseValue1 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %10, i32 0, i32 3, !dbg !2641
  store i32 %9, ptr %baseValue1, align 4, !dbg !2642
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #12, !dbg !2643
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableH) #12, !dbg !2643
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #12, !dbg !2643
  ret void, !dbg !2643
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2644 dso_local i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #8 align 16 !dbg !2650 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2652, metadata !DIExpression()), !dbg !2660
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2653, metadata !DIExpression()), !dbg !2661
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !2654, metadata !DIExpression()), !dbg !2662
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !2655, metadata !DIExpression()), !dbg !2663
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !2656, metadata !DIExpression()), !dbg !2664
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !2657, metadata !DIExpression()), !dbg !2665
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !2658, metadata !DIExpression()), !dbg !2666
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !2659, metadata !DIExpression()), !dbg !2667
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2668
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !2669
  %2 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2670
  %3 = load ptr, ptr %seqStart.addr, align 8, !dbg !2671
  %4 = load i64, ptr %seqSize.addr, align 8, !dbg !2672
  %5 = load i32, ptr %nbSeq.addr, align 4, !dbg !2673
  %6 = load i32, ptr %isLongOffset.addr, align 4, !dbg !2674
  %7 = load i32, ptr %frame.addr, align 4, !dbg !2675
  %call = call i64 @ZSTD_decompressSequencesLong_body(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13, !dbg !2676
  ret i64 %call, !dbg !2677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequencesLong_default(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #0 align 16 !dbg !2678 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2680, metadata !DIExpression()), !dbg !2688
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2681, metadata !DIExpression()), !dbg !2689
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !2682, metadata !DIExpression()), !dbg !2690
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !2683, metadata !DIExpression()), !dbg !2691
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !2684, metadata !DIExpression()), !dbg !2692
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !2685, metadata !DIExpression()), !dbg !2693
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !2686, metadata !DIExpression()), !dbg !2694
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !2687, metadata !DIExpression()), !dbg !2695
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2696
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !2697
  %2 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2698
  %3 = load ptr, ptr %seqStart.addr, align 8, !dbg !2699
  %4 = load i64, ptr %seqSize.addr, align 8, !dbg !2700
  %5 = load i32, ptr %nbSeq.addr, align 4, !dbg !2701
  %6 = load i32, ptr %isLongOffset.addr, align 4, !dbg !2702
  %7 = load i32, ptr %frame.addr, align 4, !dbg !2703
  %call = call i64 @ZSTD_decompressSequencesLong_body(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13, !dbg !2704
  ret i64 %call, !dbg !2705
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequencesLong_body(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #9 align 16 !dbg !2706 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %iend = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %op = alloca ptr, align 8
  %litPtr = alloca ptr, align 8
  %litBufferEnd = alloca ptr, align 8
  %prefixStart = alloca ptr, align 8
  %dictStart = alloca ptr, align 8
  %dictEnd = alloca ptr, align 8
  %sequences = alloca [8 x %struct.seq_t], align 16
  %seqAdvance = alloca i32, align 4
  %seqState = alloca %struct.seqState_t, align 8
  %seqNb = alloca i32, align 4
  %prefetchPos = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sequence = alloca %struct.seq_t, align 8
  %sequence51 = alloca %struct.seq_t, align 8
  %oneSeqSize = alloca i64, align 8
  %leftoverLit = alloca i64, align 8
  %sequence151 = alloca ptr, align 8
  %leftoverLit165 = alloca i64, align 8
  %oneSeqSize189 = alloca i64, align 8
  %oneSeqSize203 = alloca i64, align 8
  %i231 = alloca i32, align 4
  %lastLLSize = alloca i64, align 8
  %lastLLSize283 = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2708, metadata !DIExpression()), !dbg !2797
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2709, metadata !DIExpression()), !dbg !2798
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !2710, metadata !DIExpression()), !dbg !2799
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !2711, metadata !DIExpression()), !dbg !2800
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !2712, metadata !DIExpression()), !dbg !2801
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !2713, metadata !DIExpression()), !dbg !2802
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !2714, metadata !DIExpression()), !dbg !2803
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !2715, metadata !DIExpression()), !dbg !2804
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #12, !dbg !2805
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !2716, metadata !DIExpression()), !dbg !2806
  %0 = load ptr, ptr %seqStart.addr, align 8, !dbg !2807
  store ptr %0, ptr %ip, align 8, !dbg !2806
  call void @llvm.lifetime.start.p0(i64 8, ptr %iend) #12, !dbg !2808
  call void @llvm.dbg.declare(metadata ptr %iend, metadata !2717, metadata !DIExpression()), !dbg !2809
  %1 = load ptr, ptr %ip, align 8, !dbg !2810
  %2 = load i64, ptr %seqSize.addr, align 8, !dbg !2811
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !2812
  store ptr %add.ptr, ptr %iend, align 8, !dbg !2809
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #12, !dbg !2813
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !2718, metadata !DIExpression()), !dbg !2814
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !2815
  store ptr %3, ptr %ostart, align 8, !dbg !2814
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #12, !dbg !2816
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !2720, metadata !DIExpression()), !dbg !2817
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !2818
  %litBufferLocation = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 52, !dbg !2819
  %5 = load i32, ptr %litBufferLocation, align 8, !dbg !2819
  %cmp = icmp eq i32 %5, 1, !dbg !2820
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2818

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !2821
  %litBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 50, !dbg !2822
  %7 = load ptr, ptr %litBuffer, align 8, !dbg !2822
  br label %cond.end, !dbg !2818

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %ostart, align 8, !dbg !2823
  %9 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2824
  %add.ptr1 = getelementptr i8, ptr %8, i64 %9, !dbg !2825
  br label %cond.end, !dbg !2818

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %add.ptr1, %cond.false ], !dbg !2818
  store ptr %cond, ptr %oend, align 8, !dbg !2817
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #12, !dbg !2826
  call void @llvm.dbg.declare(metadata ptr %op, metadata !2721, metadata !DIExpression()), !dbg !2827
  %10 = load ptr, ptr %ostart, align 8, !dbg !2828
  store ptr %10, ptr %op, align 8, !dbg !2827
  call void @llvm.lifetime.start.p0(i64 8, ptr %litPtr) #12, !dbg !2829
  call void @llvm.dbg.declare(metadata ptr %litPtr, metadata !2722, metadata !DIExpression()), !dbg !2830
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !2831
  %litPtr2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 23, !dbg !2832
  %12 = load ptr, ptr %litPtr2, align 8, !dbg !2832
  store ptr %12, ptr %litPtr, align 8, !dbg !2830
  call void @llvm.lifetime.start.p0(i64 8, ptr %litBufferEnd) #12, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %litBufferEnd, metadata !2723, metadata !DIExpression()), !dbg !2834
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !2835
  %litBufferEnd3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 51, !dbg !2836
  %14 = load ptr, ptr %litBufferEnd3, align 8, !dbg !2836
  store ptr %14, ptr %litBufferEnd, align 8, !dbg !2834
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefixStart) #12, !dbg !2837
  call void @llvm.dbg.declare(metadata ptr %prefixStart, metadata !2724, metadata !DIExpression()), !dbg !2838
  %15 = load ptr, ptr %dctx.addr, align 8, !dbg !2839
  %prefixStart4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %15, i32 0, i32 7, !dbg !2840
  %16 = load ptr, ptr %prefixStart4, align 8, !dbg !2840
  store ptr %16, ptr %prefixStart, align 8, !dbg !2838
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictStart) #12, !dbg !2841
  call void @llvm.dbg.declare(metadata ptr %dictStart, metadata !2725, metadata !DIExpression()), !dbg !2842
  %17 = load ptr, ptr %dctx.addr, align 8, !dbg !2843
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %17, i32 0, i32 8, !dbg !2844
  %18 = load ptr, ptr %virtualStart, align 8, !dbg !2844
  store ptr %18, ptr %dictStart, align 8, !dbg !2842
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictEnd) #12, !dbg !2845
  call void @llvm.dbg.declare(metadata ptr %dictEnd, metadata !2726, metadata !DIExpression()), !dbg !2846
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !2847
  %dictEnd5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 9, !dbg !2848
  %20 = load ptr, ptr %dictEnd5, align 8, !dbg !2848
  store ptr %20, ptr %dictEnd, align 8, !dbg !2846
  %21 = load i32, ptr %frame.addr, align 4, !dbg !2849
  %22 = load i32, ptr %nbSeq.addr, align 4, !dbg !2850
  %tobool = icmp ne i32 %22, 0, !dbg !2850
  br i1 %tobool, label %if.then, label %if.end254, !dbg !2851

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 192, ptr %sequences) #12, !dbg !2852
  call void @llvm.dbg.declare(metadata ptr %sequences, metadata !2727, metadata !DIExpression()), !dbg !2853
  call void @llvm.lifetime.start.p0(i64 4, ptr %seqAdvance) #12, !dbg !2854
  call void @llvm.dbg.declare(metadata ptr %seqAdvance, metadata !2737, metadata !DIExpression()), !dbg !2855
  %23 = load i32, ptr %nbSeq.addr, align 4, !dbg !2856
  %cmp6 = icmp slt i32 %23, 8, !dbg !2856
  br i1 %cmp6, label %cond.true7, label %cond.false8, !dbg !2856

cond.true7:                                       ; preds = %if.then
  %24 = load i32, ptr %nbSeq.addr, align 4, !dbg !2856
  br label %cond.end9, !dbg !2856

cond.false8:                                      ; preds = %if.then
  br label %cond.end9, !dbg !2856

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i32 [ %24, %cond.true7 ], [ 8, %cond.false8 ], !dbg !2856
  store i32 %cond10, ptr %seqAdvance, align 4, !dbg !2855
  call void @llvm.lifetime.start.p0(i64 112, ptr %seqState) #12, !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %seqState, metadata !2738, metadata !DIExpression()), !dbg !2858
  call void @llvm.lifetime.start.p0(i64 4, ptr %seqNb) #12, !dbg !2859
  call void @llvm.dbg.declare(metadata ptr %seqNb, metadata !2761, metadata !DIExpression()), !dbg !2860
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefetchPos) #12, !dbg !2861
  call void @llvm.dbg.declare(metadata ptr %prefetchPos, metadata !2762, metadata !DIExpression()), !dbg !2862
  %25 = load ptr, ptr %op, align 8, !dbg !2863
  %26 = load ptr, ptr %prefixStart, align 8, !dbg !2864
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64, !dbg !2865
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64, !dbg !2865
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2865
  store i64 %sub.ptr.sub, ptr %prefetchPos, align 8, !dbg !2862
  %27 = load ptr, ptr %dctx.addr, align 8, !dbg !2866
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %27, i32 0, i32 17, !dbg !2867
  store i32 1, ptr %fseEntropy, align 4, !dbg !2868
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2869
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2763, metadata !DIExpression()), !dbg !2870
  store i32 0, ptr %i, align 4, !dbg !2871
  br label %for.cond, !dbg !2873

for.cond:                                         ; preds = %for.inc, %cond.end9
  %28 = load i32, ptr %i, align 4, !dbg !2874
  %cmp11 = icmp slt i32 %28, 3, !dbg !2876
  br i1 %cmp11, label %for.body, label %for.end, !dbg !2877

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %dctx.addr, align 8, !dbg !2878
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %29, i32 0, i32 4, !dbg !2879
  %rep = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 4, !dbg !2880
  %30 = load i32, ptr %i, align 4, !dbg !2881
  %idxprom = sext i32 %30 to i64, !dbg !2878
  %arrayidx = getelementptr [3 x i32], ptr %rep, i64 0, i64 %idxprom, !dbg !2878
  %31 = load i32, ptr %arrayidx, align 4, !dbg !2878
  %conv = zext i32 %31 to i64, !dbg !2878
  %prevOffset = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 4, !dbg !2882
  %32 = load i32, ptr %i, align 4, !dbg !2883
  %idxprom12 = sext i32 %32 to i64, !dbg !2884
  %arrayidx13 = getelementptr [3 x i64], ptr %prevOffset, i64 0, i64 %idxprom12, !dbg !2884
  store i64 %conv, ptr %arrayidx13, align 8, !dbg !2885
  br label %for.inc, !dbg !2884

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %i, align 4, !dbg !2886
  %inc = add i32 %33, 1, !dbg !2886
  store i32 %inc, ptr %i, align 4, !dbg !2886
  br label %for.cond, !dbg !2887, !llvm.loop !2888

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2890
  %DStream = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !2891
  %34 = load ptr, ptr %ip, align 8, !dbg !2891
  %35 = load ptr, ptr %iend, align 8, !dbg !2891
  %36 = load ptr, ptr %ip, align 8, !dbg !2891
  %sub.ptr.lhs.cast14 = ptrtoint ptr %35 to i64, !dbg !2891
  %sub.ptr.rhs.cast15 = ptrtoint ptr %36 to i64, !dbg !2891
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15, !dbg !2891
  %call = call i64 @BIT_initDStream(ptr noundef %DStream, ptr noundef %34, i64 noundef %sub.ptr.sub16) #13, !dbg !2891
  %call17 = call i32 @ERR_isError(i64 noundef %call) #13, !dbg !2891
  %tobool18 = icmp ne i32 %call17, 0, !dbg !2891
  br i1 %tobool18, label %if.then19, label %if.end, !dbg !2893

if.then19:                                        ; preds = %for.end
  store i64 -20, ptr %retval, align 8, !dbg !2894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup247, !dbg !2894

if.end:                                           ; preds = %for.end
  %stateLL = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 1, !dbg !2896
  %DStream20 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !2897
  %37 = load ptr, ptr %dctx.addr, align 8, !dbg !2898
  %LLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %37, i32 0, i32 0, !dbg !2899
  %38 = load ptr, ptr %LLTptr, align 8, !dbg !2899
  call void @ZSTD_initFseState(ptr noundef %stateLL, ptr noundef %DStream20, ptr noundef %38) #13, !dbg !2900
  %stateOffb = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 2, !dbg !2901
  %DStream21 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !2902
  %39 = load ptr, ptr %dctx.addr, align 8, !dbg !2903
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %39, i32 0, i32 2, !dbg !2904
  %40 = load ptr, ptr %OFTptr, align 8, !dbg !2904
  call void @ZSTD_initFseState(ptr noundef %stateOffb, ptr noundef %DStream21, ptr noundef %40) #13, !dbg !2905
  %stateML = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 3, !dbg !2906
  %DStream22 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !2907
  %41 = load ptr, ptr %dctx.addr, align 8, !dbg !2908
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %41, i32 0, i32 1, !dbg !2909
  %42 = load ptr, ptr %MLTptr, align 8, !dbg !2909
  call void @ZSTD_initFseState(ptr noundef %stateML, ptr noundef %DStream22, ptr noundef %42) #13, !dbg !2910
  store i32 0, ptr %seqNb, align 4, !dbg !2911
  br label %for.cond23, !dbg !2912

for.cond23:                                       ; preds = %for.inc34, %if.end
  %DStream24 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !2913
  %call25 = call i32 @BIT_reloadDStream(ptr noundef %DStream24) #13, !dbg !2914
  %cmp26 = icmp ule i32 %call25, 2, !dbg !2915
  br i1 %cmp26, label %land.rhs, label %land.end, !dbg !2916

land.rhs:                                         ; preds = %for.cond23
  %43 = load i32, ptr %seqNb, align 4, !dbg !2917
  %44 = load i32, ptr %seqAdvance, align 4, !dbg !2918
  %cmp28 = icmp slt i32 %43, %44, !dbg !2919
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond23
  %45 = phi i1 [ false, %for.cond23 ], [ %cmp28, %land.rhs ], !dbg !2920
  br i1 %45, label %for.body30, label %for.end36, !dbg !2921

for.body30:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %sequence) #12, !dbg !2922
  call void @llvm.dbg.declare(metadata ptr %sequence, metadata !2765, metadata !DIExpression()), !dbg !2923
  %46 = load i32, ptr %isLongOffset.addr, align 4, !dbg !2924
  call void @ZSTD_decodeSequence(ptr dead_on_unwind writable sret(%struct.seq_t) align 8 %sequence, ptr noundef %seqState, i32 noundef %46) #13, !dbg !2925
  %47 = load i64, ptr %prefetchPos, align 8, !dbg !2926
  %48 = load ptr, ptr %prefixStart, align 8, !dbg !2927
  %49 = load ptr, ptr %dictEnd, align 8, !dbg !2928
  %call31 = call i64 @ZSTD_prefetchMatch(i64 noundef %47, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %48, ptr noundef %49) #13, !dbg !2929
  store i64 %call31, ptr %prefetchPos, align 8, !dbg !2930
  %50 = load i32, ptr %seqNb, align 4, !dbg !2931
  %idxprom32 = sext i32 %50 to i64, !dbg !2932
  %arrayidx33 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom32, !dbg !2932
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx33, ptr align 8 %sequence, i64 24, i1 false), !dbg !2933
  call void @llvm.lifetime.end.p0(i64 24, ptr %sequence) #12, !dbg !2934
  br label %for.inc34, !dbg !2935

for.inc34:                                        ; preds = %for.body30
  %51 = load i32, ptr %seqNb, align 4, !dbg !2936
  %inc35 = add i32 %51, 1, !dbg !2936
  store i32 %inc35, ptr %seqNb, align 4, !dbg !2936
  br label %for.cond23, !dbg !2937, !llvm.loop !2938

for.end36:                                        ; preds = %land.end
  %52 = load i32, ptr %seqNb, align 4, !dbg !2940
  %53 = load i32, ptr %seqAdvance, align 4, !dbg !2940
  %cmp37 = icmp slt i32 %52, %53, !dbg !2940
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !2942

if.then39:                                        ; preds = %for.end36
  store i64 -20, ptr %retval, align 8, !dbg !2943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup247, !dbg !2943

if.end40:                                         ; preds = %for.end36
  br label %for.cond41, !dbg !2945

for.cond41:                                       ; preds = %for.inc139, %if.end40
  %DStream42 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !2946
  %call43 = call i32 @BIT_reloadDStream(ptr noundef %DStream42) #13, !dbg !2947
  %cmp44 = icmp ule i32 %call43, 2, !dbg !2948
  br i1 %cmp44, label %land.rhs46, label %land.end49, !dbg !2949

land.rhs46:                                       ; preds = %for.cond41
  %54 = load i32, ptr %seqNb, align 4, !dbg !2950
  %55 = load i32, ptr %nbSeq.addr, align 4, !dbg !2951
  %cmp47 = icmp slt i32 %54, %55, !dbg !2952
  br label %land.end49

land.end49:                                       ; preds = %land.rhs46, %for.cond41
  %56 = phi i1 [ false, %for.cond41 ], [ %cmp47, %land.rhs46 ], !dbg !2953
  br i1 %56, label %for.body50, label %for.end141, !dbg !2954

for.body50:                                       ; preds = %land.end49
  call void @llvm.lifetime.start.p0(i64 24, ptr %sequence51) #12, !dbg !2955
  call void @llvm.dbg.declare(metadata ptr %sequence51, metadata !2770, metadata !DIExpression()), !dbg !2956
  %57 = load i32, ptr %isLongOffset.addr, align 4, !dbg !2957
  call void @ZSTD_decodeSequence(ptr dead_on_unwind writable sret(%struct.seq_t) align 8 %sequence51, ptr noundef %seqState, i32 noundef %57) #13, !dbg !2958
  call void @llvm.lifetime.start.p0(i64 8, ptr %oneSeqSize) #12, !dbg !2959
  call void @llvm.dbg.declare(metadata ptr %oneSeqSize, metadata !2774, metadata !DIExpression()), !dbg !2960
  %58 = load ptr, ptr %dctx.addr, align 8, !dbg !2961
  %litBufferLocation52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %58, i32 0, i32 52, !dbg !2962
  %59 = load i32, ptr %litBufferLocation52, align 8, !dbg !2962
  %cmp53 = icmp eq i32 %59, 2, !dbg !2963
  br i1 %cmp53, label %land.lhs.true, label %if.else, !dbg !2964

land.lhs.true:                                    ; preds = %for.body50
  %60 = load ptr, ptr %litPtr, align 8, !dbg !2965
  %61 = load i32, ptr %seqNb, align 4, !dbg !2966
  %sub = sub i32 %61, 8, !dbg !2967
  %and = and i32 %sub, 7, !dbg !2968
  %idxprom55 = sext i32 %and to i64, !dbg !2969
  %arrayidx56 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom55, !dbg !2969
  %litLength = getelementptr inbounds %struct.seq_t, ptr %arrayidx56, i32 0, i32 0, !dbg !2970
  %62 = load i64, ptr %litLength, align 8, !dbg !2970
  %add.ptr57 = getelementptr i8, ptr %60, i64 %62, !dbg !2971
  %63 = load ptr, ptr %dctx.addr, align 8, !dbg !2972
  %litBufferEnd58 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %63, i32 0, i32 51, !dbg !2973
  %64 = load ptr, ptr %litBufferEnd58, align 8, !dbg !2973
  %cmp59 = icmp ugt ptr %add.ptr57, %64, !dbg !2974
  br i1 %cmp59, label %if.then61, label %if.else, !dbg !2975

if.then61:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftoverLit) #12, !dbg !2976
  call void @llvm.dbg.declare(metadata ptr %leftoverLit, metadata !2775, metadata !DIExpression()), !dbg !2977
  %65 = load ptr, ptr %dctx.addr, align 8, !dbg !2978
  %litBufferEnd62 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %65, i32 0, i32 51, !dbg !2979
  %66 = load ptr, ptr %litBufferEnd62, align 8, !dbg !2979
  %67 = load ptr, ptr %litPtr, align 8, !dbg !2980
  %sub.ptr.lhs.cast63 = ptrtoint ptr %66 to i64, !dbg !2981
  %sub.ptr.rhs.cast64 = ptrtoint ptr %67 to i64, !dbg !2981
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64, !dbg !2981
  store i64 %sub.ptr.sub65, ptr %leftoverLit, align 8, !dbg !2977
  %68 = load i64, ptr %leftoverLit, align 8, !dbg !2982
  %tobool66 = icmp ne i64 %68, 0, !dbg !2982
  br i1 %tobool66, label %if.then67, label %if.end82, !dbg !2984

if.then67:                                        ; preds = %if.then61
  %69 = load i64, ptr %leftoverLit, align 8, !dbg !2985
  %70 = load ptr, ptr %oend, align 8, !dbg !2985
  %71 = load ptr, ptr %op, align 8, !dbg !2985
  %sub.ptr.lhs.cast68 = ptrtoint ptr %70 to i64, !dbg !2985
  %sub.ptr.rhs.cast69 = ptrtoint ptr %71 to i64, !dbg !2985
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69, !dbg !2985
  %cmp71 = icmp ugt i64 %69, %sub.ptr.sub70, !dbg !2985
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !2988

if.then73:                                        ; preds = %if.then67
  store i64 -70, ptr %retval, align 8, !dbg !2989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2989

if.end74:                                         ; preds = %if.then67
  %72 = load ptr, ptr %op, align 8, !dbg !2991
  %73 = load ptr, ptr %litPtr, align 8, !dbg !2992
  %74 = load i64, ptr %leftoverLit, align 8, !dbg !2993
  call void @ZSTD_safecopyDstBeforeSrc(ptr noundef %72, ptr noundef %73, i64 noundef %74) #13, !dbg !2994
  %75 = load i64, ptr %leftoverLit, align 8, !dbg !2995
  %76 = load i32, ptr %seqNb, align 4, !dbg !2996
  %sub75 = sub i32 %76, 8, !dbg !2997
  %and76 = and i32 %sub75, 7, !dbg !2998
  %idxprom77 = sext i32 %and76 to i64, !dbg !2999
  %arrayidx78 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom77, !dbg !2999
  %litLength79 = getelementptr inbounds %struct.seq_t, ptr %arrayidx78, i32 0, i32 0, !dbg !3000
  %77 = load i64, ptr %litLength79, align 8, !dbg !3001
  %sub80 = sub i64 %77, %75, !dbg !3001
  store i64 %sub80, ptr %litLength79, align 8, !dbg !3001
  %78 = load i64, ptr %leftoverLit, align 8, !dbg !3002
  %79 = load ptr, ptr %op, align 8, !dbg !3003
  %add.ptr81 = getelementptr i8, ptr %79, i64 %78, !dbg !3003
  store ptr %add.ptr81, ptr %op, align 8, !dbg !3003
  br label %if.end82, !dbg !3004

if.end82:                                         ; preds = %if.end74, %if.then61
  %80 = load ptr, ptr %dctx.addr, align 8, !dbg !3005
  %litExtraBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %80, i32 0, i32 53, !dbg !3006
  %arraydecay = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer, i64 0, i64 0, !dbg !3005
  store ptr %arraydecay, ptr %litPtr, align 8, !dbg !3007
  %81 = load ptr, ptr %dctx.addr, align 8, !dbg !3008
  %litExtraBuffer83 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %81, i32 0, i32 53, !dbg !3009
  %arraydecay84 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer83, i64 0, i64 0, !dbg !3008
  %add.ptr85 = getelementptr i8, ptr %arraydecay84, i64 65536, !dbg !3010
  store ptr %add.ptr85, ptr %litBufferEnd, align 8, !dbg !3011
  %82 = load ptr, ptr %dctx.addr, align 8, !dbg !3012
  %litBufferLocation86 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %82, i32 0, i32 52, !dbg !3013
  store i32 0, ptr %litBufferLocation86, align 8, !dbg !3014
  %83 = load ptr, ptr %op, align 8, !dbg !3015
  %84 = load ptr, ptr %oend, align 8, !dbg !3016
  %85 = load i32, ptr %seqNb, align 4, !dbg !3017
  %sub87 = sub i32 %85, 8, !dbg !3018
  %and88 = and i32 %sub87, 7, !dbg !3019
  %idxprom89 = sext i32 %and88 to i64, !dbg !3020
  %arrayidx90 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom89, !dbg !3020
  %86 = load ptr, ptr %litBufferEnd, align 8, !dbg !3021
  %87 = load ptr, ptr %prefixStart, align 8, !dbg !3022
  %88 = load ptr, ptr %dictStart, align 8, !dbg !3023
  %89 = load ptr, ptr %dictEnd, align 8, !dbg !3024
  %call91 = call i64 @ZSTD_execSequence(ptr noundef %83, ptr noundef %84, ptr noundef byval(%struct.seq_t) align 8 %arrayidx90, ptr noundef %litPtr, ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef %89) #13, !dbg !3025
  store i64 %call91, ptr %oneSeqSize, align 8, !dbg !3026
  %90 = load i64, ptr %oneSeqSize, align 8, !dbg !3027
  %call92 = call i32 @ERR_isError(i64 noundef %90) #13, !dbg !3029
  %tobool93 = icmp ne i32 %call92, 0, !dbg !3029
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !3030

if.then94:                                        ; preds = %if.end82
  %91 = load i64, ptr %oneSeqSize, align 8, !dbg !3031
  store i64 %91, ptr %retval, align 8, !dbg !3032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3032

if.end95:                                         ; preds = %if.end82
  %92 = load i64, ptr %prefetchPos, align 8, !dbg !3033
  %93 = load ptr, ptr %prefixStart, align 8, !dbg !3034
  %94 = load ptr, ptr %dictEnd, align 8, !dbg !3035
  %call96 = call i64 @ZSTD_prefetchMatch(i64 noundef %92, ptr noundef byval(%struct.seq_t) align 8 %sequence51, ptr noundef %93, ptr noundef %94) #13, !dbg !3036
  store i64 %call96, ptr %prefetchPos, align 8, !dbg !3037
  %95 = load i32, ptr %seqNb, align 4, !dbg !3038
  %and97 = and i32 %95, 7, !dbg !3039
  %idxprom98 = sext i32 %and97 to i64, !dbg !3040
  %arrayidx99 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom98, !dbg !3040
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx99, ptr align 8 %sequence51, i64 24, i1 false), !dbg !3041
  %96 = load i64, ptr %oneSeqSize, align 8, !dbg !3042
  %97 = load ptr, ptr %op, align 8, !dbg !3043
  %add.ptr100 = getelementptr i8, ptr %97, i64 %96, !dbg !3043
  store ptr %add.ptr100, ptr %op, align 8, !dbg !3043
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3044
  br label %cleanup, !dbg !3044

cleanup:                                          ; preds = %if.end95, %if.then94, %if.then73
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftoverLit) #12, !dbg !3044
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup135 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end134, !dbg !3045

if.else:                                          ; preds = %land.lhs.true, %for.body50
  %98 = load ptr, ptr %dctx.addr, align 8, !dbg !3046
  %litBufferLocation101 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %98, i32 0, i32 52, !dbg !3048
  %99 = load i32, ptr %litBufferLocation101, align 8, !dbg !3048
  %cmp102 = icmp eq i32 %99, 2, !dbg !3049
  br i1 %cmp102, label %cond.true104, label %cond.false117, !dbg !3046

cond.true104:                                     ; preds = %if.else
  %100 = load ptr, ptr %op, align 8, !dbg !3050
  %101 = load ptr, ptr %oend, align 8, !dbg !3051
  %102 = load ptr, ptr %litPtr, align 8, !dbg !3052
  %103 = load i32, ptr %seqNb, align 4, !dbg !3053
  %sub105 = sub i32 %103, 8, !dbg !3054
  %and106 = and i32 %sub105, 7, !dbg !3055
  %idxprom107 = sext i32 %and106 to i64, !dbg !3056
  %arrayidx108 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom107, !dbg !3056
  %litLength109 = getelementptr inbounds %struct.seq_t, ptr %arrayidx108, i32 0, i32 0, !dbg !3057
  %104 = load i64, ptr %litLength109, align 8, !dbg !3057
  %add.ptr110 = getelementptr i8, ptr %102, i64 %104, !dbg !3058
  %add.ptr111 = getelementptr i8, ptr %add.ptr110, i64 -32, !dbg !3059
  %105 = load i32, ptr %seqNb, align 4, !dbg !3060
  %sub112 = sub i32 %105, 8, !dbg !3061
  %and113 = and i32 %sub112, 7, !dbg !3062
  %idxprom114 = sext i32 %and113 to i64, !dbg !3063
  %arrayidx115 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom114, !dbg !3063
  %106 = load ptr, ptr %litBufferEnd, align 8, !dbg !3064
  %107 = load ptr, ptr %prefixStart, align 8, !dbg !3065
  %108 = load ptr, ptr %dictStart, align 8, !dbg !3066
  %109 = load ptr, ptr %dictEnd, align 8, !dbg !3067
  %call116 = call i64 @ZSTD_execSequenceSplitLitBuffer(ptr noundef %100, ptr noundef %101, ptr noundef %add.ptr111, ptr noundef byval(%struct.seq_t) align 8 %arrayidx115, ptr noundef %litPtr, ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %109) #13, !dbg !3068
  br label %cond.end123, !dbg !3046

cond.false117:                                    ; preds = %if.else
  %110 = load ptr, ptr %op, align 8, !dbg !3069
  %111 = load ptr, ptr %oend, align 8, !dbg !3070
  %112 = load i32, ptr %seqNb, align 4, !dbg !3071
  %sub118 = sub i32 %112, 8, !dbg !3072
  %and119 = and i32 %sub118, 7, !dbg !3073
  %idxprom120 = sext i32 %and119 to i64, !dbg !3074
  %arrayidx121 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom120, !dbg !3074
  %113 = load ptr, ptr %litBufferEnd, align 8, !dbg !3075
  %114 = load ptr, ptr %prefixStart, align 8, !dbg !3076
  %115 = load ptr, ptr %dictStart, align 8, !dbg !3077
  %116 = load ptr, ptr %dictEnd, align 8, !dbg !3078
  %call122 = call i64 @ZSTD_execSequence(ptr noundef %110, ptr noundef %111, ptr noundef byval(%struct.seq_t) align 8 %arrayidx121, ptr noundef %litPtr, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %116) #13, !dbg !3079
  br label %cond.end123, !dbg !3046

cond.end123:                                      ; preds = %cond.false117, %cond.true104
  %cond124 = phi i64 [ %call116, %cond.true104 ], [ %call122, %cond.false117 ], !dbg !3046
  store i64 %cond124, ptr %oneSeqSize, align 8, !dbg !3080
  %117 = load i64, ptr %oneSeqSize, align 8, !dbg !3081
  %call125 = call i32 @ERR_isError(i64 noundef %117) #13, !dbg !3083
  %tobool126 = icmp ne i32 %call125, 0, !dbg !3083
  br i1 %tobool126, label %if.then127, label %if.end128, !dbg !3084

if.then127:                                       ; preds = %cond.end123
  %118 = load i64, ptr %oneSeqSize, align 8, !dbg !3085
  store i64 %118, ptr %retval, align 8, !dbg !3086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !3086

if.end128:                                        ; preds = %cond.end123
  %119 = load i64, ptr %prefetchPos, align 8, !dbg !3087
  %120 = load ptr, ptr %prefixStart, align 8, !dbg !3088
  %121 = load ptr, ptr %dictEnd, align 8, !dbg !3089
  %call129 = call i64 @ZSTD_prefetchMatch(i64 noundef %119, ptr noundef byval(%struct.seq_t) align 8 %sequence51, ptr noundef %120, ptr noundef %121) #13, !dbg !3090
  store i64 %call129, ptr %prefetchPos, align 8, !dbg !3091
  %122 = load i32, ptr %seqNb, align 4, !dbg !3092
  %and130 = and i32 %122, 7, !dbg !3093
  %idxprom131 = sext i32 %and130 to i64, !dbg !3094
  %arrayidx132 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom131, !dbg !3094
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx132, ptr align 8 %sequence51, i64 24, i1 false), !dbg !3095
  %123 = load i64, ptr %oneSeqSize, align 8, !dbg !3096
  %124 = load ptr, ptr %op, align 8, !dbg !3097
  %add.ptr133 = getelementptr i8, ptr %124, i64 %123, !dbg !3097
  store ptr %add.ptr133, ptr %op, align 8, !dbg !3097
  br label %if.end134

if.end134:                                        ; preds = %if.end128, %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3098
  br label %cleanup135, !dbg !3098

cleanup135:                                       ; preds = %if.end134, %if.then127, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %oneSeqSize) #12, !dbg !3098
  call void @llvm.lifetime.end.p0(i64 24, ptr %sequence51) #12, !dbg !3098
  %cleanup.dest137 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest137, label %cleanup247 [
    i32 0, label %cleanup.cont138
  ]

cleanup.cont138:                                  ; preds = %cleanup135
  br label %for.inc139, !dbg !3099

for.inc139:                                       ; preds = %cleanup.cont138
  %125 = load i32, ptr %seqNb, align 4, !dbg !3100
  %inc140 = add i32 %125, 1, !dbg !3100
  store i32 %inc140, ptr %seqNb, align 4, !dbg !3100
  br label %for.cond41, !dbg !3101, !llvm.loop !3102

for.end141:                                       ; preds = %land.end49
  %126 = load i32, ptr %seqNb, align 4, !dbg !3104
  %127 = load i32, ptr %nbSeq.addr, align 4, !dbg !3104
  %cmp142 = icmp slt i32 %126, %127, !dbg !3104
  br i1 %cmp142, label %if.then144, label %if.end145, !dbg !3106

if.then144:                                       ; preds = %for.end141
  store i64 -20, ptr %retval, align 8, !dbg !3107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup247, !dbg !3107

if.end145:                                        ; preds = %for.end141
  %128 = load i32, ptr %seqAdvance, align 4, !dbg !3109
  %129 = load i32, ptr %seqNb, align 4, !dbg !3110
  %sub146 = sub i32 %129, %128, !dbg !3110
  store i32 %sub146, ptr %seqNb, align 4, !dbg !3110
  br label %for.cond147, !dbg !3111

for.cond147:                                      ; preds = %for.inc228, %if.end145
  %130 = load i32, ptr %seqNb, align 4, !dbg !3112
  %131 = load i32, ptr %nbSeq.addr, align 4, !dbg !3113
  %cmp148 = icmp slt i32 %130, %131, !dbg !3114
  br i1 %cmp148, label %for.body150, label %for.end230, !dbg !3115

for.body150:                                      ; preds = %for.cond147
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence151) #12, !dbg !3116
  call void @llvm.dbg.declare(metadata ptr %sequence151, metadata !2778, metadata !DIExpression()), !dbg !3117
  %132 = load i32, ptr %seqNb, align 4, !dbg !3118
  %and152 = and i32 %132, 7, !dbg !3119
  %idxprom153 = sext i32 %and152 to i64, !dbg !3120
  %arrayidx154 = getelementptr [8 x %struct.seq_t], ptr %sequences, i64 0, i64 %idxprom153, !dbg !3120
  store ptr %arrayidx154, ptr %sequence151, align 8, !dbg !3117
  %133 = load ptr, ptr %dctx.addr, align 8, !dbg !3121
  %litBufferLocation155 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %133, i32 0, i32 52, !dbg !3122
  %134 = load i32, ptr %litBufferLocation155, align 8, !dbg !3122
  %cmp156 = icmp eq i32 %134, 2, !dbg !3123
  br i1 %cmp156, label %land.lhs.true158, label %if.else202, !dbg !3124

land.lhs.true158:                                 ; preds = %for.body150
  %135 = load ptr, ptr %litPtr, align 8, !dbg !3125
  %136 = load ptr, ptr %sequence151, align 8, !dbg !3126
  %litLength159 = getelementptr inbounds %struct.seq_t, ptr %136, i32 0, i32 0, !dbg !3127
  %137 = load i64, ptr %litLength159, align 8, !dbg !3127
  %add.ptr160 = getelementptr i8, ptr %135, i64 %137, !dbg !3128
  %138 = load ptr, ptr %dctx.addr, align 8, !dbg !3129
  %litBufferEnd161 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %138, i32 0, i32 51, !dbg !3130
  %139 = load ptr, ptr %litBufferEnd161, align 8, !dbg !3130
  %cmp162 = icmp ugt ptr %add.ptr160, %139, !dbg !3131
  br i1 %cmp162, label %if.then164, label %if.else202, !dbg !3132

if.then164:                                       ; preds = %land.lhs.true158
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftoverLit165) #12, !dbg !3133
  call void @llvm.dbg.declare(metadata ptr %leftoverLit165, metadata !2783, metadata !DIExpression()), !dbg !3134
  %140 = load ptr, ptr %dctx.addr, align 8, !dbg !3135
  %litBufferEnd166 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %140, i32 0, i32 51, !dbg !3136
  %141 = load ptr, ptr %litBufferEnd166, align 8, !dbg !3136
  %142 = load ptr, ptr %litPtr, align 8, !dbg !3137
  %sub.ptr.lhs.cast167 = ptrtoint ptr %141 to i64, !dbg !3138
  %sub.ptr.rhs.cast168 = ptrtoint ptr %142 to i64, !dbg !3138
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168, !dbg !3138
  store i64 %sub.ptr.sub169, ptr %leftoverLit165, align 8, !dbg !3134
  %143 = load i64, ptr %leftoverLit165, align 8, !dbg !3139
  %tobool170 = icmp ne i64 %143, 0, !dbg !3139
  br i1 %tobool170, label %if.then171, label %if.end182, !dbg !3141

if.then171:                                       ; preds = %if.then164
  %144 = load i64, ptr %leftoverLit165, align 8, !dbg !3142
  %145 = load ptr, ptr %oend, align 8, !dbg !3142
  %146 = load ptr, ptr %op, align 8, !dbg !3142
  %sub.ptr.lhs.cast172 = ptrtoint ptr %145 to i64, !dbg !3142
  %sub.ptr.rhs.cast173 = ptrtoint ptr %146 to i64, !dbg !3142
  %sub.ptr.sub174 = sub i64 %sub.ptr.lhs.cast172, %sub.ptr.rhs.cast173, !dbg !3142
  %cmp175 = icmp ugt i64 %144, %sub.ptr.sub174, !dbg !3142
  br i1 %cmp175, label %if.then177, label %if.end178, !dbg !3145

if.then177:                                       ; preds = %if.then171
  store i64 -70, ptr %retval, align 8, !dbg !3146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup199, !dbg !3146

if.end178:                                        ; preds = %if.then171
  %147 = load ptr, ptr %op, align 8, !dbg !3148
  %148 = load ptr, ptr %litPtr, align 8, !dbg !3149
  %149 = load i64, ptr %leftoverLit165, align 8, !dbg !3150
  call void @ZSTD_safecopyDstBeforeSrc(ptr noundef %147, ptr noundef %148, i64 noundef %149) #13, !dbg !3151
  %150 = load i64, ptr %leftoverLit165, align 8, !dbg !3152
  %151 = load ptr, ptr %sequence151, align 8, !dbg !3153
  %litLength179 = getelementptr inbounds %struct.seq_t, ptr %151, i32 0, i32 0, !dbg !3154
  %152 = load i64, ptr %litLength179, align 8, !dbg !3155
  %sub180 = sub i64 %152, %150, !dbg !3155
  store i64 %sub180, ptr %litLength179, align 8, !dbg !3155
  %153 = load i64, ptr %leftoverLit165, align 8, !dbg !3156
  %154 = load ptr, ptr %op, align 8, !dbg !3157
  %add.ptr181 = getelementptr i8, ptr %154, i64 %153, !dbg !3157
  store ptr %add.ptr181, ptr %op, align 8, !dbg !3157
  br label %if.end182, !dbg !3158

if.end182:                                        ; preds = %if.end178, %if.then164
  %155 = load ptr, ptr %dctx.addr, align 8, !dbg !3159
  %litExtraBuffer183 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %155, i32 0, i32 53, !dbg !3160
  %arraydecay184 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer183, i64 0, i64 0, !dbg !3159
  store ptr %arraydecay184, ptr %litPtr, align 8, !dbg !3161
  %156 = load ptr, ptr %dctx.addr, align 8, !dbg !3162
  %litExtraBuffer185 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %156, i32 0, i32 53, !dbg !3163
  %arraydecay186 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer185, i64 0, i64 0, !dbg !3162
  %add.ptr187 = getelementptr i8, ptr %arraydecay186, i64 65536, !dbg !3164
  store ptr %add.ptr187, ptr %litBufferEnd, align 8, !dbg !3165
  %157 = load ptr, ptr %dctx.addr, align 8, !dbg !3166
  %litBufferLocation188 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %157, i32 0, i32 52, !dbg !3167
  store i32 0, ptr %litBufferLocation188, align 8, !dbg !3168
  call void @llvm.lifetime.start.p0(i64 8, ptr %oneSeqSize189) #12, !dbg !3169
  call void @llvm.dbg.declare(metadata ptr %oneSeqSize189, metadata !2786, metadata !DIExpression()), !dbg !3170
  %158 = load ptr, ptr %op, align 8, !dbg !3171
  %159 = load ptr, ptr %oend, align 8, !dbg !3172
  %160 = load ptr, ptr %sequence151, align 8, !dbg !3173
  %161 = load ptr, ptr %litBufferEnd, align 8, !dbg !3174
  %162 = load ptr, ptr %prefixStart, align 8, !dbg !3175
  %163 = load ptr, ptr %dictStart, align 8, !dbg !3176
  %164 = load ptr, ptr %dictEnd, align 8, !dbg !3177
  %call190 = call i64 @ZSTD_execSequence(ptr noundef %158, ptr noundef %159, ptr noundef byval(%struct.seq_t) align 8 %160, ptr noundef %litPtr, ptr noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164) #13, !dbg !3178
  store i64 %call190, ptr %oneSeqSize189, align 8, !dbg !3170
  %165 = load i64, ptr %oneSeqSize189, align 8, !dbg !3179
  %call191 = call i32 @ERR_isError(i64 noundef %165) #13, !dbg !3181
  %tobool192 = icmp ne i32 %call191, 0, !dbg !3181
  br i1 %tobool192, label %if.then193, label %if.end194, !dbg !3182

if.then193:                                       ; preds = %if.end182
  %166 = load i64, ptr %oneSeqSize189, align 8, !dbg !3183
  store i64 %166, ptr %retval, align 8, !dbg !3184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup196, !dbg !3184

if.end194:                                        ; preds = %if.end182
  %167 = load i64, ptr %oneSeqSize189, align 8, !dbg !3185
  %168 = load ptr, ptr %op, align 8, !dbg !3186
  %add.ptr195 = getelementptr i8, ptr %168, i64 %167, !dbg !3186
  store ptr %add.ptr195, ptr %op, align 8, !dbg !3186
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3187
  br label %cleanup196, !dbg !3187

cleanup196:                                       ; preds = %if.end194, %if.then193
  call void @llvm.lifetime.end.p0(i64 8, ptr %oneSeqSize189) #12, !dbg !3187
  %cleanup.dest197 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest197, label %cleanup199 [
    i32 0, label %cleanup.cont198
  ]

cleanup.cont198:                                  ; preds = %cleanup196
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3188
  br label %cleanup199, !dbg !3188

cleanup199:                                       ; preds = %cleanup.cont198, %cleanup196, %if.then177
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftoverLit165) #12, !dbg !3188
  %cleanup.dest200 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest200, label %cleanup225 [
    i32 0, label %cleanup.cont201
  ]

cleanup.cont201:                                  ; preds = %cleanup199
  br label %if.end224, !dbg !3189

if.else202:                                       ; preds = %land.lhs.true158, %for.body150
  call void @llvm.lifetime.start.p0(i64 8, ptr %oneSeqSize203) #12, !dbg !3190
  call void @llvm.dbg.declare(metadata ptr %oneSeqSize203, metadata !2788, metadata !DIExpression()), !dbg !3191
  %169 = load ptr, ptr %dctx.addr, align 8, !dbg !3192
  %litBufferLocation204 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %169, i32 0, i32 52, !dbg !3193
  %170 = load i32, ptr %litBufferLocation204, align 8, !dbg !3193
  %cmp205 = icmp eq i32 %170, 2, !dbg !3194
  br i1 %cmp205, label %cond.true207, label %cond.false212, !dbg !3192

cond.true207:                                     ; preds = %if.else202
  %171 = load ptr, ptr %op, align 8, !dbg !3195
  %172 = load ptr, ptr %oend, align 8, !dbg !3196
  %173 = load ptr, ptr %litPtr, align 8, !dbg !3197
  %174 = load ptr, ptr %sequence151, align 8, !dbg !3198
  %litLength208 = getelementptr inbounds %struct.seq_t, ptr %174, i32 0, i32 0, !dbg !3199
  %175 = load i64, ptr %litLength208, align 8, !dbg !3199
  %add.ptr209 = getelementptr i8, ptr %173, i64 %175, !dbg !3200
  %add.ptr210 = getelementptr i8, ptr %add.ptr209, i64 -32, !dbg !3201
  %176 = load ptr, ptr %sequence151, align 8, !dbg !3202
  %177 = load ptr, ptr %litBufferEnd, align 8, !dbg !3203
  %178 = load ptr, ptr %prefixStart, align 8, !dbg !3204
  %179 = load ptr, ptr %dictStart, align 8, !dbg !3205
  %180 = load ptr, ptr %dictEnd, align 8, !dbg !3206
  %call211 = call i64 @ZSTD_execSequenceSplitLitBuffer(ptr noundef %171, ptr noundef %172, ptr noundef %add.ptr210, ptr noundef byval(%struct.seq_t) align 8 %176, ptr noundef %litPtr, ptr noundef %177, ptr noundef %178, ptr noundef %179, ptr noundef %180) #13, !dbg !3207
  br label %cond.end214, !dbg !3192

cond.false212:                                    ; preds = %if.else202
  %181 = load ptr, ptr %op, align 8, !dbg !3208
  %182 = load ptr, ptr %oend, align 8, !dbg !3209
  %183 = load ptr, ptr %sequence151, align 8, !dbg !3210
  %184 = load ptr, ptr %litBufferEnd, align 8, !dbg !3211
  %185 = load ptr, ptr %prefixStart, align 8, !dbg !3212
  %186 = load ptr, ptr %dictStart, align 8, !dbg !3213
  %187 = load ptr, ptr %dictEnd, align 8, !dbg !3214
  %call213 = call i64 @ZSTD_execSequence(ptr noundef %181, ptr noundef %182, ptr noundef byval(%struct.seq_t) align 8 %183, ptr noundef %litPtr, ptr noundef %184, ptr noundef %185, ptr noundef %186, ptr noundef %187) #13, !dbg !3215
  br label %cond.end214, !dbg !3192

cond.end214:                                      ; preds = %cond.false212, %cond.true207
  %cond215 = phi i64 [ %call211, %cond.true207 ], [ %call213, %cond.false212 ], !dbg !3192
  store i64 %cond215, ptr %oneSeqSize203, align 8, !dbg !3191
  %188 = load i64, ptr %oneSeqSize203, align 8, !dbg !3216
  %call216 = call i32 @ERR_isError(i64 noundef %188) #13, !dbg !3218
  %tobool217 = icmp ne i32 %call216, 0, !dbg !3218
  br i1 %tobool217, label %if.then218, label %if.end219, !dbg !3219

if.then218:                                       ; preds = %cond.end214
  %189 = load i64, ptr %oneSeqSize203, align 8, !dbg !3220
  store i64 %189, ptr %retval, align 8, !dbg !3221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup221, !dbg !3221

if.end219:                                        ; preds = %cond.end214
  %190 = load i64, ptr %oneSeqSize203, align 8, !dbg !3222
  %191 = load ptr, ptr %op, align 8, !dbg !3223
  %add.ptr220 = getelementptr i8, ptr %191, i64 %190, !dbg !3223
  store ptr %add.ptr220, ptr %op, align 8, !dbg !3223
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3224
  br label %cleanup221, !dbg !3224

cleanup221:                                       ; preds = %if.end219, %if.then218
  call void @llvm.lifetime.end.p0(i64 8, ptr %oneSeqSize203) #12, !dbg !3224
  %cleanup.dest222 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest222, label %cleanup225 [
    i32 0, label %cleanup.cont223
  ]

cleanup.cont223:                                  ; preds = %cleanup221
  br label %if.end224

if.end224:                                        ; preds = %cleanup.cont223, %cleanup.cont201
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3225
  br label %cleanup225, !dbg !3225

cleanup225:                                       ; preds = %if.end224, %cleanup221, %cleanup199
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence151) #12, !dbg !3225
  %cleanup.dest226 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest226, label %cleanup247 [
    i32 0, label %cleanup.cont227
  ]

cleanup.cont227:                                  ; preds = %cleanup225
  br label %for.inc228, !dbg !3226

for.inc228:                                       ; preds = %cleanup.cont227
  %192 = load i32, ptr %seqNb, align 4, !dbg !3227
  %inc229 = add i32 %192, 1, !dbg !3227
  store i32 %inc229, ptr %seqNb, align 4, !dbg !3227
  br label %for.cond147, !dbg !3228, !llvm.loop !3229

for.end230:                                       ; preds = %for.cond147
  call void @llvm.lifetime.start.p0(i64 4, ptr %i231) #12, !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %i231, metadata !2790, metadata !DIExpression()), !dbg !3232
  store i32 0, ptr %i231, align 4, !dbg !3233
  br label %for.cond232, !dbg !3235

for.cond232:                                      ; preds = %for.inc244, %for.end230
  %193 = load i32, ptr %i231, align 4, !dbg !3236
  %cmp233 = icmp ult i32 %193, 3, !dbg !3238
  br i1 %cmp233, label %for.body235, label %for.end246, !dbg !3239

for.body235:                                      ; preds = %for.cond232
  %prevOffset236 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 4, !dbg !3240
  %194 = load i32, ptr %i231, align 4, !dbg !3241
  %idxprom237 = zext i32 %194 to i64, !dbg !3242
  %arrayidx238 = getelementptr [3 x i64], ptr %prevOffset236, i64 0, i64 %idxprom237, !dbg !3242
  %195 = load i64, ptr %arrayidx238, align 8, !dbg !3242
  %conv239 = trunc i64 %195 to i32, !dbg !3243
  %196 = load ptr, ptr %dctx.addr, align 8, !dbg !3244
  %entropy240 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %196, i32 0, i32 4, !dbg !3245
  %rep241 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy240, i32 0, i32 4, !dbg !3246
  %197 = load i32, ptr %i231, align 4, !dbg !3247
  %idxprom242 = zext i32 %197 to i64, !dbg !3244
  %arrayidx243 = getelementptr [3 x i32], ptr %rep241, i64 0, i64 %idxprom242, !dbg !3244
  store i32 %conv239, ptr %arrayidx243, align 4, !dbg !3248
  br label %for.inc244, !dbg !3244

for.inc244:                                       ; preds = %for.body235
  %198 = load i32, ptr %i231, align 4, !dbg !3249
  %inc245 = add i32 %198, 1, !dbg !3249
  store i32 %inc245, ptr %i231, align 4, !dbg !3249
  br label %for.cond232, !dbg !3250, !llvm.loop !3251

for.end246:                                       ; preds = %for.cond232
  call void @llvm.lifetime.end.p0(i64 4, ptr %i231) #12, !dbg !3253
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3254
  br label %cleanup247, !dbg !3254

cleanup247:                                       ; preds = %for.end246, %cleanup225, %if.then144, %cleanup135, %if.then39, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefetchPos) #12, !dbg !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %seqNb) #12, !dbg !3254
  call void @llvm.lifetime.end.p0(i64 112, ptr %seqState) #12, !dbg !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %seqAdvance) #12, !dbg !3254
  call void @llvm.lifetime.end.p0(i64 192, ptr %sequences) #12, !dbg !3254
  %cleanup.dest252 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest252, label %cleanup305 [
    i32 0, label %cleanup.cont253
  ]

cleanup.cont253:                                  ; preds = %cleanup247
  br label %if.end254, !dbg !3255

if.end254:                                        ; preds = %cleanup.cont253, %cond.end
  %199 = load ptr, ptr %dctx.addr, align 8, !dbg !3256
  %litBufferLocation255 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %199, i32 0, i32 52, !dbg !3257
  %200 = load i32, ptr %litBufferLocation255, align 8, !dbg !3257
  %cmp256 = icmp eq i32 %200, 2, !dbg !3258
  br i1 %cmp256, label %if.then258, label %if.end282, !dbg !3259

if.then258:                                       ; preds = %if.end254
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastLLSize) #12, !dbg !3260
  call void @llvm.dbg.declare(metadata ptr %lastLLSize, metadata !2792, metadata !DIExpression()), !dbg !3261
  %201 = load ptr, ptr %litBufferEnd, align 8, !dbg !3262
  %202 = load ptr, ptr %litPtr, align 8, !dbg !3263
  %sub.ptr.lhs.cast259 = ptrtoint ptr %201 to i64, !dbg !3264
  %sub.ptr.rhs.cast260 = ptrtoint ptr %202 to i64, !dbg !3264
  %sub.ptr.sub261 = sub i64 %sub.ptr.lhs.cast259, %sub.ptr.rhs.cast260, !dbg !3264
  store i64 %sub.ptr.sub261, ptr %lastLLSize, align 8, !dbg !3261
  %203 = load i64, ptr %lastLLSize, align 8, !dbg !3265
  %204 = load ptr, ptr %oend, align 8, !dbg !3265
  %205 = load ptr, ptr %op, align 8, !dbg !3265
  %sub.ptr.lhs.cast262 = ptrtoint ptr %204 to i64, !dbg !3265
  %sub.ptr.rhs.cast263 = ptrtoint ptr %205 to i64, !dbg !3265
  %sub.ptr.sub264 = sub i64 %sub.ptr.lhs.cast262, %sub.ptr.rhs.cast263, !dbg !3265
  %cmp265 = icmp ugt i64 %203, %sub.ptr.sub264, !dbg !3265
  br i1 %cmp265, label %if.then267, label %if.end268, !dbg !3267

if.then267:                                       ; preds = %if.then258
  store i64 -70, ptr %retval, align 8, !dbg !3268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup279, !dbg !3268

if.end268:                                        ; preds = %if.then258
  %206 = load ptr, ptr %op, align 8, !dbg !3270
  %cmp269 = icmp ne ptr %206, null, !dbg !3272
  br i1 %cmp269, label %if.then271, label %if.end273, !dbg !3273

if.then271:                                       ; preds = %if.end268
  %207 = load ptr, ptr %op, align 8, !dbg !3274
  %208 = load ptr, ptr %litPtr, align 8, !dbg !3274
  %209 = load i64, ptr %lastLLSize, align 8, !dbg !3274
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %207, ptr align 1 %208, i64 %209, i1 false), !dbg !3274
  %210 = load i64, ptr %lastLLSize, align 8, !dbg !3276
  %211 = load ptr, ptr %op, align 8, !dbg !3277
  %add.ptr272 = getelementptr i8, ptr %211, i64 %210, !dbg !3277
  store ptr %add.ptr272, ptr %op, align 8, !dbg !3277
  br label %if.end273, !dbg !3278

if.end273:                                        ; preds = %if.then271, %if.end268
  %212 = load ptr, ptr %dctx.addr, align 8, !dbg !3279
  %litExtraBuffer274 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %212, i32 0, i32 53, !dbg !3280
  %arraydecay275 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer274, i64 0, i64 0, !dbg !3279
  store ptr %arraydecay275, ptr %litPtr, align 8, !dbg !3281
  %213 = load ptr, ptr %dctx.addr, align 8, !dbg !3282
  %litExtraBuffer276 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %213, i32 0, i32 53, !dbg !3283
  %arraydecay277 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer276, i64 0, i64 0, !dbg !3282
  %add.ptr278 = getelementptr i8, ptr %arraydecay277, i64 65536, !dbg !3284
  store ptr %add.ptr278, ptr %litBufferEnd, align 8, !dbg !3285
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3286
  br label %cleanup279, !dbg !3286

cleanup279:                                       ; preds = %if.end273, %if.then267
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastLLSize) #12, !dbg !3286
  %cleanup.dest280 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest280, label %cleanup305 [
    i32 0, label %cleanup.cont281
  ]

cleanup.cont281:                                  ; preds = %cleanup279
  br label %if.end282, !dbg !3287

if.end282:                                        ; preds = %cleanup.cont281, %if.end254
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastLLSize283) #12, !dbg !3288
  call void @llvm.dbg.declare(metadata ptr %lastLLSize283, metadata !2795, metadata !DIExpression()), !dbg !3289
  %214 = load ptr, ptr %litBufferEnd, align 8, !dbg !3290
  %215 = load ptr, ptr %litPtr, align 8, !dbg !3291
  %sub.ptr.lhs.cast284 = ptrtoint ptr %214 to i64, !dbg !3292
  %sub.ptr.rhs.cast285 = ptrtoint ptr %215 to i64, !dbg !3292
  %sub.ptr.sub286 = sub i64 %sub.ptr.lhs.cast284, %sub.ptr.rhs.cast285, !dbg !3292
  store i64 %sub.ptr.sub286, ptr %lastLLSize283, align 8, !dbg !3289
  %216 = load i64, ptr %lastLLSize283, align 8, !dbg !3293
  %217 = load ptr, ptr %oend, align 8, !dbg !3293
  %218 = load ptr, ptr %op, align 8, !dbg !3293
  %sub.ptr.lhs.cast287 = ptrtoint ptr %217 to i64, !dbg !3293
  %sub.ptr.rhs.cast288 = ptrtoint ptr %218 to i64, !dbg !3293
  %sub.ptr.sub289 = sub i64 %sub.ptr.lhs.cast287, %sub.ptr.rhs.cast288, !dbg !3293
  %cmp290 = icmp ugt i64 %216, %sub.ptr.sub289, !dbg !3293
  br i1 %cmp290, label %if.then292, label %if.end293, !dbg !3295

if.then292:                                       ; preds = %if.end282
  store i64 -70, ptr %retval, align 8, !dbg !3296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup299, !dbg !3296

if.end293:                                        ; preds = %if.end282
  %219 = load ptr, ptr %op, align 8, !dbg !3298
  %cmp294 = icmp ne ptr %219, null, !dbg !3300
  br i1 %cmp294, label %if.then296, label %if.end298, !dbg !3301

if.then296:                                       ; preds = %if.end293
  %220 = load ptr, ptr %op, align 8, !dbg !3302
  %221 = load ptr, ptr %litPtr, align 8, !dbg !3302
  %222 = load i64, ptr %lastLLSize283, align 8, !dbg !3302
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %220, ptr align 1 %221, i64 %222, i1 false), !dbg !3302
  %223 = load i64, ptr %lastLLSize283, align 8, !dbg !3304
  %224 = load ptr, ptr %op, align 8, !dbg !3305
  %add.ptr297 = getelementptr i8, ptr %224, i64 %223, !dbg !3305
  store ptr %add.ptr297, ptr %op, align 8, !dbg !3305
  br label %if.end298, !dbg !3306

if.end298:                                        ; preds = %if.then296, %if.end293
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3307
  br label %cleanup299, !dbg !3307

cleanup299:                                       ; preds = %if.end298, %if.then292
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastLLSize283) #12, !dbg !3307
  %cleanup.dest300 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest300, label %cleanup305 [
    i32 0, label %cleanup.cont301
  ]

cleanup.cont301:                                  ; preds = %cleanup299
  %225 = load ptr, ptr %op, align 8, !dbg !3308
  %226 = load ptr, ptr %ostart, align 8, !dbg !3309
  %sub.ptr.lhs.cast302 = ptrtoint ptr %225 to i64, !dbg !3310
  %sub.ptr.rhs.cast303 = ptrtoint ptr %226 to i64, !dbg !3310
  %sub.ptr.sub304 = sub i64 %sub.ptr.lhs.cast302, %sub.ptr.rhs.cast303, !dbg !3310
  store i64 %sub.ptr.sub304, ptr %retval, align 8, !dbg !3311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup305, !dbg !3311

cleanup305:                                       ; preds = %cleanup.cont301, %cleanup299, %cleanup279, %cleanup247
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictEnd) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictStart) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefixStart) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %litBufferEnd) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %litPtr) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %iend) #12, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #12, !dbg !3312
  %227 = load i64, ptr %retval, align 8, !dbg !3312
  ret i64 %227, !dbg !3312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_initDStream(ptr noundef %bitD, ptr noundef %srcBuffer, i64 noundef %srcSize) #3 align 16 !dbg !3313 {
entry:
  %retval = alloca i64, align 8
  %bitD.addr = alloca ptr, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %lastByte = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %lastByte53 = alloca i8, align 1
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !3318, metadata !DIExpression()), !dbg !3328
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcBuffer.addr, metadata !3319, metadata !DIExpression()), !dbg !3329
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !3320, metadata !DIExpression()), !dbg !3330
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !3331
  %cmp = icmp ult i64 %0, 1, !dbg !3333
  br i1 %cmp, label %if.then, label %if.end, !dbg !3334

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bitD.addr, align 8, !dbg !3335
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 40, i1 false), !dbg !3335
  store i64 -72, ptr %retval, align 8, !dbg !3337
  br label %return, !dbg !3337

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3338
  %3 = load ptr, ptr %bitD.addr, align 8, !dbg !3339
  %start = getelementptr inbounds %struct.BIT_DStream_t, ptr %3, i32 0, i32 3, !dbg !3340
  store ptr %2, ptr %start, align 8, !dbg !3341
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !3342
  %start1 = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 3, !dbg !3343
  %5 = load ptr, ptr %start1, align 8, !dbg !3343
  %add.ptr = getelementptr i8, ptr %5, i64 8, !dbg !3344
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !3345
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 4, !dbg !3346
  store ptr %add.ptr, ptr %limitPtr, align 8, !dbg !3347
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !3348
  %cmp2 = icmp uge i64 %7, 8, !dbg !3349
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !3350

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3351
  %9 = load i64, ptr %srcSize.addr, align 8, !dbg !3352
  %add.ptr4 = getelementptr i8, ptr %8, i64 %9, !dbg !3353
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i64 -8, !dbg !3354
  %10 = load ptr, ptr %bitD.addr, align 8, !dbg !3355
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %10, i32 0, i32 2, !dbg !3356
  store ptr %add.ptr5, ptr %ptr, align 8, !dbg !3357
  %11 = load ptr, ptr %bitD.addr, align 8, !dbg !3358
  %ptr6 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i32 0, i32 2, !dbg !3359
  %12 = load ptr, ptr %ptr6, align 8, !dbg !3359
  %call = call i64 @MEM_readLEST(ptr noundef %12) #13, !dbg !3360
  %13 = load ptr, ptr %bitD.addr, align 8, !dbg !3361
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %13, i32 0, i32 0, !dbg !3362
  store i64 %call, ptr %bitContainer, align 8, !dbg !3363
  call void @llvm.lifetime.start.p0(i64 1, ptr %lastByte) #12, !dbg !3364
  call void @llvm.dbg.declare(metadata ptr %lastByte, metadata !3321, metadata !DIExpression()), !dbg !3365
  %14 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3366
  %15 = load i64, ptr %srcSize.addr, align 8, !dbg !3367
  %sub = sub i64 %15, 1, !dbg !3368
  %arrayidx = getelementptr i8, ptr %14, i64 %sub, !dbg !3369
  %16 = load i8, ptr %arrayidx, align 1, !dbg !3369
  store i8 %16, ptr %lastByte, align 1, !dbg !3365
  %17 = load i8, ptr %lastByte, align 1, !dbg !3370
  %conv = zext i8 %17 to i32, !dbg !3370
  %tobool = icmp ne i32 %conv, 0, !dbg !3370
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3370

cond.true:                                        ; preds = %if.then3
  %18 = load i8, ptr %lastByte, align 1, !dbg !3371
  %conv7 = zext i8 %18 to i32, !dbg !3371
  %call8 = call i32 @BIT_highbit32(i32 noundef %conv7) #13, !dbg !3372
  %sub9 = sub i32 8, %call8, !dbg !3373
  br label %cond.end, !dbg !3370

cond.false:                                       ; preds = %if.then3
  br label %cond.end, !dbg !3370

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ 0, %cond.false ], !dbg !3370
  %19 = load ptr, ptr %bitD.addr, align 8, !dbg !3374
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %19, i32 0, i32 1, !dbg !3375
  store i32 %cond, ptr %bitsConsumed, align 8, !dbg !3376
  %20 = load i8, ptr %lastByte, align 1, !dbg !3377
  %conv10 = zext i8 %20 to i32, !dbg !3377
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !3379
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3380

if.then13:                                        ; preds = %cond.end
  store i64 -1, ptr %retval, align 8, !dbg !3381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3381

if.end14:                                         ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3382
  br label %cleanup, !dbg !3382

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 1, ptr %lastByte) #12, !dbg !3382
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end78, !dbg !3383

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %bitD.addr, align 8, !dbg !3384
  %start15 = getelementptr inbounds %struct.BIT_DStream_t, ptr %21, i32 0, i32 3, !dbg !3385
  %22 = load ptr, ptr %start15, align 8, !dbg !3385
  %23 = load ptr, ptr %bitD.addr, align 8, !dbg !3386
  %ptr16 = getelementptr inbounds %struct.BIT_DStream_t, ptr %23, i32 0, i32 2, !dbg !3387
  store ptr %22, ptr %ptr16, align 8, !dbg !3388
  %24 = load ptr, ptr %bitD.addr, align 8, !dbg !3389
  %start17 = getelementptr inbounds %struct.BIT_DStream_t, ptr %24, i32 0, i32 3, !dbg !3390
  %25 = load ptr, ptr %start17, align 8, !dbg !3390
  %26 = load i8, ptr %25, align 1, !dbg !3391
  %conv18 = zext i8 %26 to i64, !dbg !3391
  %27 = load ptr, ptr %bitD.addr, align 8, !dbg !3392
  %bitContainer19 = getelementptr inbounds %struct.BIT_DStream_t, ptr %27, i32 0, i32 0, !dbg !3393
  store i64 %conv18, ptr %bitContainer19, align 8, !dbg !3394
  %28 = load i64, ptr %srcSize.addr, align 8, !dbg !3395
  switch i64 %28, label %sw.default [
    i64 7, label %sw.bb
    i64 6, label %sw.bb23
    i64 5, label %sw.bb29
    i64 4, label %sw.bb35
    i64 3, label %sw.bb41
    i64 2, label %sw.bb47
  ], !dbg !3396

sw.bb:                                            ; preds = %if.else
  %29 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3397
  %arrayidx20 = getelementptr i8, ptr %29, i64 6, !dbg !3399
  %30 = load i8, ptr %arrayidx20, align 1, !dbg !3399
  %conv21 = zext i8 %30 to i64, !dbg !3400
  %shl = shl i64 %conv21, 48, !dbg !3401
  %31 = load ptr, ptr %bitD.addr, align 8, !dbg !3402
  %bitContainer22 = getelementptr inbounds %struct.BIT_DStream_t, ptr %31, i32 0, i32 0, !dbg !3403
  %32 = load i64, ptr %bitContainer22, align 8, !dbg !3404
  %add = add i64 %32, %shl, !dbg !3404
  store i64 %add, ptr %bitContainer22, align 8, !dbg !3404
  br label %sw.bb23, !dbg !3402

sw.bb23:                                          ; preds = %if.else, %sw.bb
  %33 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3405
  %arrayidx24 = getelementptr i8, ptr %33, i64 5, !dbg !3406
  %34 = load i8, ptr %arrayidx24, align 1, !dbg !3406
  %conv25 = zext i8 %34 to i64, !dbg !3407
  %shl26 = shl i64 %conv25, 40, !dbg !3408
  %35 = load ptr, ptr %bitD.addr, align 8, !dbg !3409
  %bitContainer27 = getelementptr inbounds %struct.BIT_DStream_t, ptr %35, i32 0, i32 0, !dbg !3410
  %36 = load i64, ptr %bitContainer27, align 8, !dbg !3411
  %add28 = add i64 %36, %shl26, !dbg !3411
  store i64 %add28, ptr %bitContainer27, align 8, !dbg !3411
  br label %sw.bb29, !dbg !3409

sw.bb29:                                          ; preds = %if.else, %sw.bb23
  %37 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3412
  %arrayidx30 = getelementptr i8, ptr %37, i64 4, !dbg !3413
  %38 = load i8, ptr %arrayidx30, align 1, !dbg !3413
  %conv31 = zext i8 %38 to i64, !dbg !3414
  %shl32 = shl i64 %conv31, 32, !dbg !3415
  %39 = load ptr, ptr %bitD.addr, align 8, !dbg !3416
  %bitContainer33 = getelementptr inbounds %struct.BIT_DStream_t, ptr %39, i32 0, i32 0, !dbg !3417
  %40 = load i64, ptr %bitContainer33, align 8, !dbg !3418
  %add34 = add i64 %40, %shl32, !dbg !3418
  store i64 %add34, ptr %bitContainer33, align 8, !dbg !3418
  br label %sw.bb35, !dbg !3416

sw.bb35:                                          ; preds = %if.else, %sw.bb29
  %41 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3419
  %arrayidx36 = getelementptr i8, ptr %41, i64 3, !dbg !3420
  %42 = load i8, ptr %arrayidx36, align 1, !dbg !3420
  %conv37 = zext i8 %42 to i64, !dbg !3421
  %shl38 = shl i64 %conv37, 24, !dbg !3422
  %43 = load ptr, ptr %bitD.addr, align 8, !dbg !3423
  %bitContainer39 = getelementptr inbounds %struct.BIT_DStream_t, ptr %43, i32 0, i32 0, !dbg !3424
  %44 = load i64, ptr %bitContainer39, align 8, !dbg !3425
  %add40 = add i64 %44, %shl38, !dbg !3425
  store i64 %add40, ptr %bitContainer39, align 8, !dbg !3425
  br label %sw.bb41, !dbg !3423

sw.bb41:                                          ; preds = %if.else, %sw.bb35
  %45 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3426
  %arrayidx42 = getelementptr i8, ptr %45, i64 2, !dbg !3427
  %46 = load i8, ptr %arrayidx42, align 1, !dbg !3427
  %conv43 = zext i8 %46 to i64, !dbg !3428
  %shl44 = shl i64 %conv43, 16, !dbg !3429
  %47 = load ptr, ptr %bitD.addr, align 8, !dbg !3430
  %bitContainer45 = getelementptr inbounds %struct.BIT_DStream_t, ptr %47, i32 0, i32 0, !dbg !3431
  %48 = load i64, ptr %bitContainer45, align 8, !dbg !3432
  %add46 = add i64 %48, %shl44, !dbg !3432
  store i64 %add46, ptr %bitContainer45, align 8, !dbg !3432
  br label %sw.bb47, !dbg !3430

sw.bb47:                                          ; preds = %if.else, %sw.bb41
  %49 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3433
  %arrayidx48 = getelementptr i8, ptr %49, i64 1, !dbg !3434
  %50 = load i8, ptr %arrayidx48, align 1, !dbg !3434
  %conv49 = zext i8 %50 to i64, !dbg !3435
  %shl50 = shl i64 %conv49, 8, !dbg !3436
  %51 = load ptr, ptr %bitD.addr, align 8, !dbg !3437
  %bitContainer51 = getelementptr inbounds %struct.BIT_DStream_t, ptr %51, i32 0, i32 0, !dbg !3438
  %52 = load i64, ptr %bitContainer51, align 8, !dbg !3439
  %add52 = add i64 %52, %shl50, !dbg !3439
  store i64 %add52, ptr %bitContainer51, align 8, !dbg !3439
  br label %sw.default, !dbg !3437

sw.default:                                       ; preds = %if.else, %sw.bb47
  br label %sw.epilog, !dbg !3440

sw.epilog:                                        ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 1, ptr %lastByte53) #12, !dbg !3441
  call void @llvm.dbg.declare(metadata ptr %lastByte53, metadata !3325, metadata !DIExpression()), !dbg !3442
  %53 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !3443
  %54 = load i64, ptr %srcSize.addr, align 8, !dbg !3444
  %sub54 = sub i64 %54, 1, !dbg !3445
  %arrayidx55 = getelementptr i8, ptr %53, i64 %sub54, !dbg !3446
  %55 = load i8, ptr %arrayidx55, align 1, !dbg !3446
  store i8 %55, ptr %lastByte53, align 1, !dbg !3442
  %56 = load i8, ptr %lastByte53, align 1, !dbg !3447
  %conv56 = zext i8 %56 to i32, !dbg !3447
  %tobool57 = icmp ne i32 %conv56, 0, !dbg !3447
  br i1 %tobool57, label %cond.true58, label %cond.false62, !dbg !3447

cond.true58:                                      ; preds = %sw.epilog
  %57 = load i8, ptr %lastByte53, align 1, !dbg !3448
  %conv59 = zext i8 %57 to i32, !dbg !3448
  %call60 = call i32 @BIT_highbit32(i32 noundef %conv59) #13, !dbg !3449
  %sub61 = sub i32 8, %call60, !dbg !3450
  br label %cond.end63, !dbg !3447

cond.false62:                                     ; preds = %sw.epilog
  br label %cond.end63, !dbg !3447

cond.end63:                                       ; preds = %cond.false62, %cond.true58
  %cond64 = phi i32 [ %sub61, %cond.true58 ], [ 0, %cond.false62 ], !dbg !3447
  %58 = load ptr, ptr %bitD.addr, align 8, !dbg !3451
  %bitsConsumed65 = getelementptr inbounds %struct.BIT_DStream_t, ptr %58, i32 0, i32 1, !dbg !3452
  store i32 %cond64, ptr %bitsConsumed65, align 8, !dbg !3453
  %59 = load i8, ptr %lastByte53, align 1, !dbg !3454
  %conv66 = zext i8 %59 to i32, !dbg !3454
  %cmp67 = icmp eq i32 %conv66, 0, !dbg !3456
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !3457

if.then69:                                        ; preds = %cond.end63
  store i64 -20, ptr %retval, align 8, !dbg !3458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !3458

if.end70:                                         ; preds = %cond.end63
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3459
  br label %cleanup71, !dbg !3459

cleanup71:                                        ; preds = %if.end70, %if.then69
  call void @llvm.lifetime.end.p0(i64 1, ptr %lastByte53) #12, !dbg !3459
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %unreachable [
    i32 0, label %cleanup.cont73
    i32 1, label %return
  ]

cleanup.cont73:                                   ; preds = %cleanup71
  %60 = load i64, ptr %srcSize.addr, align 8, !dbg !3460
  %sub74 = sub i64 8, %60, !dbg !3461
  %conv75 = trunc i64 %sub74 to i32, !dbg !3462
  %mul = mul i32 %conv75, 8, !dbg !3463
  %61 = load ptr, ptr %bitD.addr, align 8, !dbg !3464
  %bitsConsumed76 = getelementptr inbounds %struct.BIT_DStream_t, ptr %61, i32 0, i32 1, !dbg !3465
  %62 = load i32, ptr %bitsConsumed76, align 8, !dbg !3466
  %add77 = add i32 %62, %mul, !dbg !3466
  store i32 %add77, ptr %bitsConsumed76, align 8, !dbg !3466
  br label %if.end78

if.end78:                                         ; preds = %cleanup.cont73, %cleanup.cont
  %63 = load i64, ptr %srcSize.addr, align 8, !dbg !3467
  store i64 %63, ptr %retval, align 8, !dbg !3468
  br label %return, !dbg !3468

return:                                           ; preds = %if.end78, %cleanup71, %cleanup, %if.then
  %64 = load i64, ptr %retval, align 8, !dbg !3469
  ret i64 %64, !dbg !3469

unreachable:                                      ; preds = %cleanup71, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_initFseState(ptr noundef %DStatePtr, ptr noundef %bitD, ptr noundef %dt) #0 align 16 !dbg !3470 {
entry:
  %DStatePtr.addr = alloca ptr, align 8
  %bitD.addr = alloca ptr, align 8
  %dt.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %DTableH = alloca ptr, align 8
  store ptr %DStatePtr, ptr %DStatePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DStatePtr.addr, metadata !3475, metadata !DIExpression()), !dbg !3481
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !3476, metadata !DIExpression()), !dbg !3482
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !3477, metadata !DIExpression()), !dbg !3483
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #12, !dbg !3484
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3478, metadata !DIExpression()), !dbg !3485
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !3486
  store ptr %0, ptr %ptr, align 8, !dbg !3485
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableH) #12, !dbg !3487
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !3479, metadata !DIExpression()), !dbg !3488
  %1 = load ptr, ptr %ptr, align 8, !dbg !3489
  store ptr %1, ptr %DTableH, align 8, !dbg !3488
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !3490
  %3 = load ptr, ptr %DTableH, align 8, !dbg !3491
  %tableLog = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %3, i32 0, i32 1, !dbg !3492
  %4 = load i32, ptr %tableLog, align 4, !dbg !3492
  %call = call i64 @BIT_readBits(ptr noundef %2, i32 noundef %4) #13, !dbg !3493
  %5 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !3494
  %state = getelementptr inbounds %struct.ZSTD_fseState, ptr %5, i32 0, i32 0, !dbg !3495
  store i64 %call, ptr %state, align 8, !dbg !3496
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !3497
  %call1 = call i32 @BIT_reloadDStream(ptr noundef %6) #13, !dbg !3498
  %7 = load ptr, ptr %dt.addr, align 8, !dbg !3499
  %add.ptr = getelementptr %struct.ZSTD_seqSymbol, ptr %7, i64 1, !dbg !3500
  %8 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !3501
  %table = getelementptr inbounds %struct.ZSTD_fseState, ptr %8, i32 0, i32 1, !dbg !3502
  store ptr %add.ptr, ptr %table, align 8, !dbg !3503
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableH) #12, !dbg !3504
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #12, !dbg !3504
  ret void, !dbg !3504
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_reloadDStream(ptr noundef %bitD) #3 align 16 !dbg !3505 {
entry:
  %retval = alloca i32, align 4
  %bitD.addr = alloca ptr, align 8
  %nbBytes = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !3510, metadata !DIExpression()), !dbg !3514
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !3515
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 1, !dbg !3517
  %1 = load i32, ptr %bitsConsumed, align 8, !dbg !3517
  %conv = zext i32 %1 to i64, !dbg !3515
  %cmp = icmp ugt i64 %conv, 64, !dbg !3518
  br i1 %cmp, label %if.then, label %if.end, !dbg !3519

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !3520
  br label %return, !dbg !3520

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !3521
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 2, !dbg !3523
  %3 = load ptr, ptr %ptr, align 8, !dbg !3523
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !3524
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 4, !dbg !3525
  %5 = load ptr, ptr %limitPtr, align 8, !dbg !3525
  %cmp2 = icmp uge ptr %3, %5, !dbg !3526
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !3527

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !3528
  %call = call i32 @BIT_reloadDStreamFast(ptr noundef %6) #13, !dbg !3530
  store i32 %call, ptr %retval, align 4, !dbg !3531
  br label %return, !dbg !3531

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %bitD.addr, align 8, !dbg !3532
  %ptr6 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i32 0, i32 2, !dbg !3534
  %8 = load ptr, ptr %ptr6, align 8, !dbg !3534
  %9 = load ptr, ptr %bitD.addr, align 8, !dbg !3535
  %start = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 3, !dbg !3536
  %10 = load ptr, ptr %start, align 8, !dbg !3536
  %cmp7 = icmp eq ptr %8, %10, !dbg !3537
  br i1 %cmp7, label %if.then9, label %if.end16, !dbg !3538

if.then9:                                         ; preds = %if.end5
  %11 = load ptr, ptr %bitD.addr, align 8, !dbg !3539
  %bitsConsumed10 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i32 0, i32 1, !dbg !3542
  %12 = load i32, ptr %bitsConsumed10, align 8, !dbg !3542
  %conv11 = zext i32 %12 to i64, !dbg !3539
  %cmp12 = icmp ult i64 %conv11, 64, !dbg !3543
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !3544

if.then14:                                        ; preds = %if.then9
  store i32 1, ptr %retval, align 4, !dbg !3545
  br label %return, !dbg !3545

if.end15:                                         ; preds = %if.then9
  store i32 2, ptr %retval, align 4, !dbg !3546
  br label %return, !dbg !3546

if.end16:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbBytes) #12, !dbg !3547
  call void @llvm.dbg.declare(metadata ptr %nbBytes, metadata !3511, metadata !DIExpression()), !dbg !3548
  %13 = load ptr, ptr %bitD.addr, align 8, !dbg !3549
  %bitsConsumed17 = getelementptr inbounds %struct.BIT_DStream_t, ptr %13, i32 0, i32 1, !dbg !3550
  %14 = load i32, ptr %bitsConsumed17, align 8, !dbg !3550
  %shr = lshr i32 %14, 3, !dbg !3551
  store i32 %shr, ptr %nbBytes, align 4, !dbg !3548
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #12, !dbg !3552
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3513, metadata !DIExpression()), !dbg !3553
  store i32 0, ptr %result, align 4, !dbg !3553
  %15 = load ptr, ptr %bitD.addr, align 8, !dbg !3554
  %ptr18 = getelementptr inbounds %struct.BIT_DStream_t, ptr %15, i32 0, i32 2, !dbg !3556
  %16 = load ptr, ptr %ptr18, align 8, !dbg !3556
  %17 = load i32, ptr %nbBytes, align 4, !dbg !3557
  %idx.ext = zext i32 %17 to i64, !dbg !3558
  %idx.neg = sub i64 0, %idx.ext, !dbg !3558
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.neg, !dbg !3558
  %18 = load ptr, ptr %bitD.addr, align 8, !dbg !3559
  %start19 = getelementptr inbounds %struct.BIT_DStream_t, ptr %18, i32 0, i32 3, !dbg !3560
  %19 = load ptr, ptr %start19, align 8, !dbg !3560
  %cmp20 = icmp ult ptr %add.ptr, %19, !dbg !3561
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !3562

if.then22:                                        ; preds = %if.end16
  %20 = load ptr, ptr %bitD.addr, align 8, !dbg !3563
  %ptr23 = getelementptr inbounds %struct.BIT_DStream_t, ptr %20, i32 0, i32 2, !dbg !3565
  %21 = load ptr, ptr %ptr23, align 8, !dbg !3565
  %22 = load ptr, ptr %bitD.addr, align 8, !dbg !3566
  %start24 = getelementptr inbounds %struct.BIT_DStream_t, ptr %22, i32 0, i32 3, !dbg !3567
  %23 = load ptr, ptr %start24, align 8, !dbg !3567
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64, !dbg !3568
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64, !dbg !3568
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3568
  %conv25 = trunc i64 %sub.ptr.sub to i32, !dbg !3569
  store i32 %conv25, ptr %nbBytes, align 4, !dbg !3570
  store i32 1, ptr %result, align 4, !dbg !3571
  br label %if.end26, !dbg !3572

if.end26:                                         ; preds = %if.then22, %if.end16
  %24 = load i32, ptr %nbBytes, align 4, !dbg !3573
  %25 = load ptr, ptr %bitD.addr, align 8, !dbg !3574
  %ptr27 = getelementptr inbounds %struct.BIT_DStream_t, ptr %25, i32 0, i32 2, !dbg !3575
  %26 = load ptr, ptr %ptr27, align 8, !dbg !3576
  %idx.ext28 = zext i32 %24 to i64, !dbg !3576
  %idx.neg29 = sub i64 0, %idx.ext28, !dbg !3576
  %add.ptr30 = getelementptr i8, ptr %26, i64 %idx.neg29, !dbg !3576
  store ptr %add.ptr30, ptr %ptr27, align 8, !dbg !3576
  %27 = load i32, ptr %nbBytes, align 4, !dbg !3577
  %mul = mul i32 %27, 8, !dbg !3578
  %28 = load ptr, ptr %bitD.addr, align 8, !dbg !3579
  %bitsConsumed31 = getelementptr inbounds %struct.BIT_DStream_t, ptr %28, i32 0, i32 1, !dbg !3580
  %29 = load i32, ptr %bitsConsumed31, align 8, !dbg !3581
  %sub = sub i32 %29, %mul, !dbg !3581
  store i32 %sub, ptr %bitsConsumed31, align 8, !dbg !3581
  %30 = load ptr, ptr %bitD.addr, align 8, !dbg !3582
  %ptr32 = getelementptr inbounds %struct.BIT_DStream_t, ptr %30, i32 0, i32 2, !dbg !3583
  %31 = load ptr, ptr %ptr32, align 8, !dbg !3583
  %call33 = call i64 @MEM_readLEST(ptr noundef %31) #13, !dbg !3584
  %32 = load ptr, ptr %bitD.addr, align 8, !dbg !3585
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %32, i32 0, i32 0, !dbg !3586
  store i64 %call33, ptr %bitContainer, align 8, !dbg !3587
  %33 = load i32, ptr %result, align 4, !dbg !3588
  store i32 %33, ptr %retval, align 4, !dbg !3589
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #12, !dbg !3590
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbBytes) #12, !dbg !3590
  br label %return

return:                                           ; preds = %if.end26, %if.end15, %if.then14, %if.then4, %if.then
  %34 = load i32, ptr %retval, align 4, !dbg !3591
  ret i32 %34, !dbg !3591
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_decodeSequence(ptr dead_on_unwind noalias writable sret(%struct.seq_t) align 8 %agg.result, ptr noundef %seqState, i32 noundef %longOffsets) #9 align 16 !dbg !3592 {
entry:
  %seqState.addr = alloca ptr, align 8
  %longOffsets.addr = alloca i32, align 4
  %llDInfo = alloca ptr, align 8
  %mlDInfo = alloca ptr, align 8
  %ofDInfo = alloca ptr, align 8
  %ofBase = alloca i32, align 4
  %llBits = alloca i8, align 1
  %mlBits = alloca i8, align 1
  %ofBits = alloca i8, align 1
  %totalBits = alloca i8, align 1
  %llNext = alloca i16, align 2
  %mlNext = alloca i16, align 2
  %ofNext = alloca i16, align 2
  %llnbBits = alloca i32, align 4
  %mlnbBits = alloca i32, align 4
  %ofnbBits = alloca i32, align 4
  %offset = alloca i64, align 8
  %extraBits = alloca i32, align 4
  %ll0 = alloca i32, align 4
  %temp = alloca i64, align 8
  store ptr %seqState, ptr %seqState.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqState.addr, metadata !3597, metadata !DIExpression()), !dbg !3630
  store i32 %longOffsets, ptr %longOffsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %longOffsets.addr, metadata !3598, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !3599, metadata !DIExpression()), !dbg !3632
  call void @llvm.lifetime.start.p0(i64 8, ptr %llDInfo) #12, !dbg !3633
  call void @llvm.dbg.declare(metadata ptr %llDInfo, metadata !3600, metadata !DIExpression()), !dbg !3634
  %0 = load ptr, ptr %seqState.addr, align 8, !dbg !3635
  %stateLL = getelementptr inbounds %struct.seqState_t, ptr %0, i32 0, i32 1, !dbg !3636
  %table = getelementptr inbounds %struct.ZSTD_fseState, ptr %stateLL, i32 0, i32 1, !dbg !3637
  %1 = load ptr, ptr %table, align 8, !dbg !3637
  %2 = load ptr, ptr %seqState.addr, align 8, !dbg !3638
  %stateLL1 = getelementptr inbounds %struct.seqState_t, ptr %2, i32 0, i32 1, !dbg !3639
  %state = getelementptr inbounds %struct.ZSTD_fseState, ptr %stateLL1, i32 0, i32 0, !dbg !3640
  %3 = load i64, ptr %state, align 8, !dbg !3640
  %add.ptr = getelementptr %struct.ZSTD_seqSymbol, ptr %1, i64 %3, !dbg !3641
  store ptr %add.ptr, ptr %llDInfo, align 8, !dbg !3634
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlDInfo) #12, !dbg !3642
  call void @llvm.dbg.declare(metadata ptr %mlDInfo, metadata !3602, metadata !DIExpression()), !dbg !3643
  %4 = load ptr, ptr %seqState.addr, align 8, !dbg !3644
  %stateML = getelementptr inbounds %struct.seqState_t, ptr %4, i32 0, i32 3, !dbg !3645
  %table2 = getelementptr inbounds %struct.ZSTD_fseState, ptr %stateML, i32 0, i32 1, !dbg !3646
  %5 = load ptr, ptr %table2, align 8, !dbg !3646
  %6 = load ptr, ptr %seqState.addr, align 8, !dbg !3647
  %stateML3 = getelementptr inbounds %struct.seqState_t, ptr %6, i32 0, i32 3, !dbg !3648
  %state4 = getelementptr inbounds %struct.ZSTD_fseState, ptr %stateML3, i32 0, i32 0, !dbg !3649
  %7 = load i64, ptr %state4, align 8, !dbg !3649
  %add.ptr5 = getelementptr %struct.ZSTD_seqSymbol, ptr %5, i64 %7, !dbg !3650
  store ptr %add.ptr5, ptr %mlDInfo, align 8, !dbg !3643
  call void @llvm.lifetime.start.p0(i64 8, ptr %ofDInfo) #12, !dbg !3651
  call void @llvm.dbg.declare(metadata ptr %ofDInfo, metadata !3603, metadata !DIExpression()), !dbg !3652
  %8 = load ptr, ptr %seqState.addr, align 8, !dbg !3653
  %stateOffb = getelementptr inbounds %struct.seqState_t, ptr %8, i32 0, i32 2, !dbg !3654
  %table6 = getelementptr inbounds %struct.ZSTD_fseState, ptr %stateOffb, i32 0, i32 1, !dbg !3655
  %9 = load ptr, ptr %table6, align 8, !dbg !3655
  %10 = load ptr, ptr %seqState.addr, align 8, !dbg !3656
  %stateOffb7 = getelementptr inbounds %struct.seqState_t, ptr %10, i32 0, i32 2, !dbg !3657
  %state8 = getelementptr inbounds %struct.ZSTD_fseState, ptr %stateOffb7, i32 0, i32 0, !dbg !3658
  %11 = load i64, ptr %state8, align 8, !dbg !3658
  %add.ptr9 = getelementptr %struct.ZSTD_seqSymbol, ptr %9, i64 %11, !dbg !3659
  store ptr %add.ptr9, ptr %ofDInfo, align 8, !dbg !3652
  %12 = load ptr, ptr %mlDInfo, align 8, !dbg !3660
  %baseValue = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %12, i32 0, i32 3, !dbg !3661
  %13 = load i32, ptr %baseValue, align 4, !dbg !3661
  %conv = zext i32 %13 to i64, !dbg !3660
  %matchLength = getelementptr inbounds %struct.seq_t, ptr %agg.result, i32 0, i32 1, !dbg !3662
  store i64 %conv, ptr %matchLength, align 8, !dbg !3663
  %14 = load ptr, ptr %llDInfo, align 8, !dbg !3664
  %baseValue10 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %14, i32 0, i32 3, !dbg !3665
  %15 = load i32, ptr %baseValue10, align 4, !dbg !3665
  %conv11 = zext i32 %15 to i64, !dbg !3664
  %litLength = getelementptr inbounds %struct.seq_t, ptr %agg.result, i32 0, i32 0, !dbg !3666
  store i64 %conv11, ptr %litLength, align 8, !dbg !3667
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofBase) #12, !dbg !3668
  call void @llvm.dbg.declare(metadata ptr %ofBase, metadata !3604, metadata !DIExpression()), !dbg !3669
  %16 = load ptr, ptr %ofDInfo, align 8, !dbg !3670
  %baseValue12 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %16, i32 0, i32 3, !dbg !3671
  %17 = load i32, ptr %baseValue12, align 4, !dbg !3671
  store i32 %17, ptr %ofBase, align 4, !dbg !3669
  call void @llvm.lifetime.start.p0(i64 1, ptr %llBits) #12, !dbg !3672
  call void @llvm.dbg.declare(metadata ptr %llBits, metadata !3606, metadata !DIExpression()), !dbg !3673
  %18 = load ptr, ptr %llDInfo, align 8, !dbg !3674
  %nbAdditionalBits = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %18, i32 0, i32 1, !dbg !3675
  %19 = load i8, ptr %nbAdditionalBits, align 2, !dbg !3675
  store i8 %19, ptr %llBits, align 1, !dbg !3673
  call void @llvm.lifetime.start.p0(i64 1, ptr %mlBits) #12, !dbg !3676
  call void @llvm.dbg.declare(metadata ptr %mlBits, metadata !3607, metadata !DIExpression()), !dbg !3677
  %20 = load ptr, ptr %mlDInfo, align 8, !dbg !3678
  %nbAdditionalBits13 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %20, i32 0, i32 1, !dbg !3679
  %21 = load i8, ptr %nbAdditionalBits13, align 2, !dbg !3679
  store i8 %21, ptr %mlBits, align 1, !dbg !3677
  call void @llvm.lifetime.start.p0(i64 1, ptr %ofBits) #12, !dbg !3680
  call void @llvm.dbg.declare(metadata ptr %ofBits, metadata !3608, metadata !DIExpression()), !dbg !3681
  %22 = load ptr, ptr %ofDInfo, align 8, !dbg !3682
  %nbAdditionalBits14 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %22, i32 0, i32 1, !dbg !3683
  %23 = load i8, ptr %nbAdditionalBits14, align 2, !dbg !3683
  store i8 %23, ptr %ofBits, align 1, !dbg !3681
  call void @llvm.lifetime.start.p0(i64 1, ptr %totalBits) #12, !dbg !3684
  call void @llvm.dbg.declare(metadata ptr %totalBits, metadata !3609, metadata !DIExpression()), !dbg !3685
  %24 = load i8, ptr %llBits, align 1, !dbg !3686
  %conv15 = zext i8 %24 to i32, !dbg !3686
  %25 = load i8, ptr %mlBits, align 1, !dbg !3687
  %conv16 = zext i8 %25 to i32, !dbg !3687
  %add = add i32 %conv15, %conv16, !dbg !3688
  %26 = load i8, ptr %ofBits, align 1, !dbg !3689
  %conv17 = zext i8 %26 to i32, !dbg !3689
  %add18 = add i32 %add, %conv17, !dbg !3690
  %conv19 = trunc i32 %add18 to i8, !dbg !3686
  store i8 %conv19, ptr %totalBits, align 1, !dbg !3685
  call void @llvm.lifetime.start.p0(i64 2, ptr %llNext) #12, !dbg !3691
  call void @llvm.dbg.declare(metadata ptr %llNext, metadata !3610, metadata !DIExpression()), !dbg !3692
  %27 = load ptr, ptr %llDInfo, align 8, !dbg !3693
  %nextState = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %27, i32 0, i32 0, !dbg !3694
  %28 = load i16, ptr %nextState, align 4, !dbg !3694
  store i16 %28, ptr %llNext, align 2, !dbg !3692
  call void @llvm.lifetime.start.p0(i64 2, ptr %mlNext) #12, !dbg !3695
  call void @llvm.dbg.declare(metadata ptr %mlNext, metadata !3612, metadata !DIExpression()), !dbg !3696
  %29 = load ptr, ptr %mlDInfo, align 8, !dbg !3697
  %nextState20 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %29, i32 0, i32 0, !dbg !3698
  %30 = load i16, ptr %nextState20, align 4, !dbg !3698
  store i16 %30, ptr %mlNext, align 2, !dbg !3696
  call void @llvm.lifetime.start.p0(i64 2, ptr %ofNext) #12, !dbg !3699
  call void @llvm.dbg.declare(metadata ptr %ofNext, metadata !3613, metadata !DIExpression()), !dbg !3700
  %31 = load ptr, ptr %ofDInfo, align 8, !dbg !3701
  %nextState21 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %31, i32 0, i32 0, !dbg !3702
  %32 = load i16, ptr %nextState21, align 4, !dbg !3702
  store i16 %32, ptr %ofNext, align 2, !dbg !3700
  call void @llvm.lifetime.start.p0(i64 4, ptr %llnbBits) #12, !dbg !3703
  call void @llvm.dbg.declare(metadata ptr %llnbBits, metadata !3614, metadata !DIExpression()), !dbg !3704
  %33 = load ptr, ptr %llDInfo, align 8, !dbg !3705
  %nbBits = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %33, i32 0, i32 2, !dbg !3706
  %34 = load i8, ptr %nbBits, align 1, !dbg !3706
  %conv22 = zext i8 %34 to i32, !dbg !3705
  store i32 %conv22, ptr %llnbBits, align 4, !dbg !3704
  call void @llvm.lifetime.start.p0(i64 4, ptr %mlnbBits) #12, !dbg !3707
  call void @llvm.dbg.declare(metadata ptr %mlnbBits, metadata !3615, metadata !DIExpression()), !dbg !3708
  %35 = load ptr, ptr %mlDInfo, align 8, !dbg !3709
  %nbBits23 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %35, i32 0, i32 2, !dbg !3710
  %36 = load i8, ptr %nbBits23, align 1, !dbg !3710
  %conv24 = zext i8 %36 to i32, !dbg !3709
  store i32 %conv24, ptr %mlnbBits, align 4, !dbg !3708
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofnbBits) #12, !dbg !3711
  call void @llvm.dbg.declare(metadata ptr %ofnbBits, metadata !3616, metadata !DIExpression()), !dbg !3712
  %37 = load ptr, ptr %ofDInfo, align 8, !dbg !3713
  %nbBits25 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %37, i32 0, i32 2, !dbg !3714
  %38 = load i8, ptr %nbBits25, align 1, !dbg !3714
  %conv26 = zext i8 %38 to i32, !dbg !3713
  store i32 %conv26, ptr %ofnbBits, align 4, !dbg !3712
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #12, !dbg !3715
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !3617, metadata !DIExpression()), !dbg !3716
  %39 = load i8, ptr %ofBits, align 1, !dbg !3717
  %conv27 = zext i8 %39 to i32, !dbg !3717
  %cmp = icmp sgt i32 %conv27, 1, !dbg !3717
  %conv28 = zext i1 %cmp to i32, !dbg !3717
  %conv29 = sext i32 %conv28 to i64, !dbg !3717
  %expval = call i64 @llvm.expect.i64(i64 %conv29, i64 1), !dbg !3717
  %tobool = icmp ne i64 %expval, 0, !dbg !3717
  br i1 %tobool, label %if.then, label %if.else79, !dbg !3718

if.then:                                          ; preds = %entry
  %call = call i32 @MEM_32bits() #13, !dbg !3719
  %tobool30 = icmp ne i32 %call, 0, !dbg !3719
  br i1 %tobool30, label %land.lhs.true, label %if.else, !dbg !3720

land.lhs.true:                                    ; preds = %if.then
  %40 = load i32, ptr %longOffsets.addr, align 4, !dbg !3721
  %tobool31 = icmp ne i32 %40, 0, !dbg !3721
  br i1 %tobool31, label %land.lhs.true32, label %if.else, !dbg !3722

land.lhs.true32:                                  ; preds = %land.lhs.true
  %41 = load i8, ptr %ofBits, align 1, !dbg !3723
  %conv33 = zext i8 %41 to i32, !dbg !3723
  %cmp34 = icmp sge i32 %conv33, 25, !dbg !3724
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !3725

if.then36:                                        ; preds = %land.lhs.true32
  call void @llvm.lifetime.start.p0(i64 4, ptr %extraBits) #12, !dbg !3726
  call void @llvm.dbg.declare(metadata ptr %extraBits, metadata !3619, metadata !DIExpression()), !dbg !3727
  %42 = load i8, ptr %ofBits, align 1, !dbg !3728
  %conv37 = zext i8 %42 to i32, !dbg !3728
  %43 = load i8, ptr %ofBits, align 1, !dbg !3729
  %conv38 = zext i8 %43 to i32, !dbg !3729
  %44 = load ptr, ptr %seqState.addr, align 8, !dbg !3729
  %DStream = getelementptr inbounds %struct.seqState_t, ptr %44, i32 0, i32 0, !dbg !3729
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %DStream, i32 0, i32 1, !dbg !3729
  %45 = load i32, ptr %bitsConsumed, align 8, !dbg !3729
  %sub = sub i32 32, %45, !dbg !3729
  %cmp39 = icmp ult i32 %conv38, %sub, !dbg !3729
  br i1 %cmp39, label %cond.true, label %cond.false, !dbg !3729

cond.true:                                        ; preds = %if.then36
  %46 = load i8, ptr %ofBits, align 1, !dbg !3729
  %conv41 = zext i8 %46 to i32, !dbg !3729
  br label %cond.end, !dbg !3729

cond.false:                                       ; preds = %if.then36
  %47 = load ptr, ptr %seqState.addr, align 8, !dbg !3729
  %DStream42 = getelementptr inbounds %struct.seqState_t, ptr %47, i32 0, i32 0, !dbg !3729
  %bitsConsumed43 = getelementptr inbounds %struct.BIT_DStream_t, ptr %DStream42, i32 0, i32 1, !dbg !3729
  %48 = load i32, ptr %bitsConsumed43, align 8, !dbg !3729
  %sub44 = sub i32 32, %48, !dbg !3729
  br label %cond.end, !dbg !3729

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv41, %cond.true ], [ %sub44, %cond.false ], !dbg !3729
  %sub45 = sub i32 %conv37, %cond, !dbg !3730
  store i32 %sub45, ptr %extraBits, align 4, !dbg !3727
  %49 = load i32, ptr %ofBase, align 4, !dbg !3731
  %conv46 = zext i32 %49 to i64, !dbg !3731
  %50 = load ptr, ptr %seqState.addr, align 8, !dbg !3732
  %DStream47 = getelementptr inbounds %struct.seqState_t, ptr %50, i32 0, i32 0, !dbg !3733
  %51 = load i8, ptr %ofBits, align 1, !dbg !3734
  %conv48 = zext i8 %51 to i32, !dbg !3734
  %52 = load i32, ptr %extraBits, align 4, !dbg !3735
  %sub49 = sub i32 %conv48, %52, !dbg !3736
  %call50 = call i64 @BIT_readBitsFast(ptr noundef %DStream47, i32 noundef %sub49) #13, !dbg !3737
  %53 = load i32, ptr %extraBits, align 4, !dbg !3738
  %sh_prom = zext i32 %53 to i64, !dbg !3739
  %shl = shl i64 %call50, %sh_prom, !dbg !3739
  %add51 = add i64 %conv46, %shl, !dbg !3740
  store i64 %add51, ptr %offset, align 8, !dbg !3741
  %54 = load ptr, ptr %seqState.addr, align 8, !dbg !3742
  %DStream52 = getelementptr inbounds %struct.seqState_t, ptr %54, i32 0, i32 0, !dbg !3743
  %call53 = call i32 @BIT_reloadDStream(ptr noundef %DStream52) #13, !dbg !3744
  %55 = load i32, ptr %extraBits, align 4, !dbg !3745
  %tobool54 = icmp ne i32 %55, 0, !dbg !3745
  br i1 %tobool54, label %if.then55, label %if.end, !dbg !3747

if.then55:                                        ; preds = %cond.end
  %56 = load ptr, ptr %seqState.addr, align 8, !dbg !3748
  %DStream56 = getelementptr inbounds %struct.seqState_t, ptr %56, i32 0, i32 0, !dbg !3749
  %57 = load i32, ptr %extraBits, align 4, !dbg !3750
  %call57 = call i64 @BIT_readBitsFast(ptr noundef %DStream56, i32 noundef %57) #13, !dbg !3751
  %58 = load i64, ptr %offset, align 8, !dbg !3752
  %add58 = add i64 %58, %call57, !dbg !3752
  store i64 %add58, ptr %offset, align 8, !dbg !3752
  br label %if.end, !dbg !3753

if.end:                                           ; preds = %if.then55, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %extraBits) #12, !dbg !3754
  br label %if.end70, !dbg !3755

if.else:                                          ; preds = %land.lhs.true32, %land.lhs.true, %if.then
  %59 = load i32, ptr %ofBase, align 4, !dbg !3756
  %conv59 = zext i32 %59 to i64, !dbg !3756
  %60 = load ptr, ptr %seqState.addr, align 8, !dbg !3758
  %DStream60 = getelementptr inbounds %struct.seqState_t, ptr %60, i32 0, i32 0, !dbg !3759
  %61 = load i8, ptr %ofBits, align 1, !dbg !3760
  %conv61 = zext i8 %61 to i32, !dbg !3760
  %call62 = call i64 @BIT_readBitsFast(ptr noundef %DStream60, i32 noundef %conv61) #13, !dbg !3761
  %add63 = add i64 %conv59, %call62, !dbg !3762
  store i64 %add63, ptr %offset, align 8, !dbg !3763
  %call64 = call i32 @MEM_32bits() #13, !dbg !3764
  %tobool65 = icmp ne i32 %call64, 0, !dbg !3764
  br i1 %tobool65, label %if.then66, label %if.end69, !dbg !3766

if.then66:                                        ; preds = %if.else
  %62 = load ptr, ptr %seqState.addr, align 8, !dbg !3767
  %DStream67 = getelementptr inbounds %struct.seqState_t, ptr %62, i32 0, i32 0, !dbg !3768
  %call68 = call i32 @BIT_reloadDStream(ptr noundef %DStream67) #13, !dbg !3769
  br label %if.end69, !dbg !3769

if.end69:                                         ; preds = %if.then66, %if.else
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end
  %63 = load ptr, ptr %seqState.addr, align 8, !dbg !3770
  %prevOffset = getelementptr inbounds %struct.seqState_t, ptr %63, i32 0, i32 4, !dbg !3771
  %arrayidx = getelementptr [3 x i64], ptr %prevOffset, i64 0, i64 1, !dbg !3770
  %64 = load i64, ptr %arrayidx, align 8, !dbg !3770
  %65 = load ptr, ptr %seqState.addr, align 8, !dbg !3772
  %prevOffset71 = getelementptr inbounds %struct.seqState_t, ptr %65, i32 0, i32 4, !dbg !3773
  %arrayidx72 = getelementptr [3 x i64], ptr %prevOffset71, i64 0, i64 2, !dbg !3772
  store i64 %64, ptr %arrayidx72, align 8, !dbg !3774
  %66 = load ptr, ptr %seqState.addr, align 8, !dbg !3775
  %prevOffset73 = getelementptr inbounds %struct.seqState_t, ptr %66, i32 0, i32 4, !dbg !3776
  %arrayidx74 = getelementptr [3 x i64], ptr %prevOffset73, i64 0, i64 0, !dbg !3775
  %67 = load i64, ptr %arrayidx74, align 8, !dbg !3775
  %68 = load ptr, ptr %seqState.addr, align 8, !dbg !3777
  %prevOffset75 = getelementptr inbounds %struct.seqState_t, ptr %68, i32 0, i32 4, !dbg !3778
  %arrayidx76 = getelementptr [3 x i64], ptr %prevOffset75, i64 0, i64 1, !dbg !3777
  store i64 %67, ptr %arrayidx76, align 8, !dbg !3779
  %69 = load i64, ptr %offset, align 8, !dbg !3780
  %70 = load ptr, ptr %seqState.addr, align 8, !dbg !3781
  %prevOffset77 = getelementptr inbounds %struct.seqState_t, ptr %70, i32 0, i32 4, !dbg !3782
  %arrayidx78 = getelementptr [3 x i64], ptr %prevOffset77, i64 0, i64 0, !dbg !3781
  store i64 %69, ptr %arrayidx78, align 8, !dbg !3783
  br label %if.end137, !dbg !3784

if.else79:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ll0) #12, !dbg !3785
  call void @llvm.dbg.declare(metadata ptr %ll0, metadata !3624, metadata !DIExpression()), !dbg !3786
  %71 = load ptr, ptr %llDInfo, align 8, !dbg !3787
  %baseValue80 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %71, i32 0, i32 3, !dbg !3788
  %72 = load i32, ptr %baseValue80, align 4, !dbg !3788
  %cmp81 = icmp eq i32 %72, 0, !dbg !3789
  %conv82 = zext i1 %cmp81 to i32, !dbg !3789
  store i32 %conv82, ptr %ll0, align 4, !dbg !3786
  %73 = load i8, ptr %ofBits, align 1, !dbg !3790
  %conv83 = zext i8 %73 to i32, !dbg !3790
  %cmp84 = icmp eq i32 %conv83, 0, !dbg !3790
  %conv85 = zext i1 %cmp84 to i32, !dbg !3790
  %conv86 = sext i32 %conv85 to i64, !dbg !3790
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 1), !dbg !3790
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !3790
  br i1 %tobool88, label %if.then89, label %if.else100, !dbg !3791

if.then89:                                        ; preds = %if.else79
  %74 = load ptr, ptr %seqState.addr, align 8, !dbg !3792
  %prevOffset90 = getelementptr inbounds %struct.seqState_t, ptr %74, i32 0, i32 4, !dbg !3794
  %75 = load i32, ptr %ll0, align 4, !dbg !3795
  %idxprom = zext i32 %75 to i64, !dbg !3792
  %arrayidx91 = getelementptr [3 x i64], ptr %prevOffset90, i64 0, i64 %idxprom, !dbg !3792
  %76 = load i64, ptr %arrayidx91, align 8, !dbg !3792
  store i64 %76, ptr %offset, align 8, !dbg !3796
  %77 = load ptr, ptr %seqState.addr, align 8, !dbg !3797
  %prevOffset92 = getelementptr inbounds %struct.seqState_t, ptr %77, i32 0, i32 4, !dbg !3798
  %78 = load i32, ptr %ll0, align 4, !dbg !3799
  %tobool93 = icmp ne i32 %78, 0, !dbg !3800
  %lnot = xor i1 %tobool93, true, !dbg !3800
  %lnot.ext = zext i1 %lnot to i32, !dbg !3800
  %idxprom94 = sext i32 %lnot.ext to i64, !dbg !3797
  %arrayidx95 = getelementptr [3 x i64], ptr %prevOffset92, i64 0, i64 %idxprom94, !dbg !3797
  %79 = load i64, ptr %arrayidx95, align 8, !dbg !3797
  %80 = load ptr, ptr %seqState.addr, align 8, !dbg !3801
  %prevOffset96 = getelementptr inbounds %struct.seqState_t, ptr %80, i32 0, i32 4, !dbg !3802
  %arrayidx97 = getelementptr [3 x i64], ptr %prevOffset96, i64 0, i64 1, !dbg !3801
  store i64 %79, ptr %arrayidx97, align 8, !dbg !3803
  %81 = load i64, ptr %offset, align 8, !dbg !3804
  %82 = load ptr, ptr %seqState.addr, align 8, !dbg !3805
  %prevOffset98 = getelementptr inbounds %struct.seqState_t, ptr %82, i32 0, i32 4, !dbg !3806
  %arrayidx99 = getelementptr [3 x i64], ptr %prevOffset98, i64 0, i64 0, !dbg !3805
  store i64 %81, ptr %arrayidx99, align 8, !dbg !3807
  br label %if.end136, !dbg !3808

if.else100:                                       ; preds = %if.else79
  %83 = load i32, ptr %ofBase, align 4, !dbg !3809
  %84 = load i32, ptr %ll0, align 4, !dbg !3810
  %add101 = add i32 %83, %84, !dbg !3811
  %conv102 = zext i32 %add101 to i64, !dbg !3809
  %85 = load ptr, ptr %seqState.addr, align 8, !dbg !3812
  %DStream103 = getelementptr inbounds %struct.seqState_t, ptr %85, i32 0, i32 0, !dbg !3813
  %call104 = call i64 @BIT_readBitsFast(ptr noundef %DStream103, i32 noundef 1) #13, !dbg !3814
  %add105 = add i64 %conv102, %call104, !dbg !3815
  store i64 %add105, ptr %offset, align 8, !dbg !3816
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #12, !dbg !3817
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !3626, metadata !DIExpression()), !dbg !3818
  %86 = load i64, ptr %offset, align 8, !dbg !3819
  %cmp106 = icmp eq i64 %86, 3, !dbg !3820
  br i1 %cmp106, label %cond.true108, label %cond.false112, !dbg !3821

cond.true108:                                     ; preds = %if.else100
  %87 = load ptr, ptr %seqState.addr, align 8, !dbg !3822
  %prevOffset109 = getelementptr inbounds %struct.seqState_t, ptr %87, i32 0, i32 4, !dbg !3823
  %arrayidx110 = getelementptr [3 x i64], ptr %prevOffset109, i64 0, i64 0, !dbg !3822
  %88 = load i64, ptr %arrayidx110, align 8, !dbg !3822
  %sub111 = sub i64 %88, 1, !dbg !3824
  br label %cond.end115, !dbg !3821

cond.false112:                                    ; preds = %if.else100
  %89 = load ptr, ptr %seqState.addr, align 8, !dbg !3825
  %prevOffset113 = getelementptr inbounds %struct.seqState_t, ptr %89, i32 0, i32 4, !dbg !3826
  %90 = load i64, ptr %offset, align 8, !dbg !3827
  %arrayidx114 = getelementptr [3 x i64], ptr %prevOffset113, i64 0, i64 %90, !dbg !3825
  %91 = load i64, ptr %arrayidx114, align 8, !dbg !3825
  br label %cond.end115, !dbg !3821

cond.end115:                                      ; preds = %cond.false112, %cond.true108
  %cond116 = phi i64 [ %sub111, %cond.true108 ], [ %91, %cond.false112 ], !dbg !3821
  store i64 %cond116, ptr %temp, align 8, !dbg !3818
  %92 = load i64, ptr %temp, align 8, !dbg !3828
  %tobool117 = icmp ne i64 %92, 0, !dbg !3829
  %lnot118 = xor i1 %tobool117, true, !dbg !3829
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !3829
  %conv120 = sext i32 %lnot.ext119 to i64, !dbg !3829
  %93 = load i64, ptr %temp, align 8, !dbg !3830
  %add121 = add i64 %93, %conv120, !dbg !3830
  store i64 %add121, ptr %temp, align 8, !dbg !3830
  %94 = load i64, ptr %offset, align 8, !dbg !3831
  %cmp122 = icmp ne i64 %94, 1, !dbg !3833
  br i1 %cmp122, label %if.then124, label %if.end129, !dbg !3834

if.then124:                                       ; preds = %cond.end115
  %95 = load ptr, ptr %seqState.addr, align 8, !dbg !3835
  %prevOffset125 = getelementptr inbounds %struct.seqState_t, ptr %95, i32 0, i32 4, !dbg !3836
  %arrayidx126 = getelementptr [3 x i64], ptr %prevOffset125, i64 0, i64 1, !dbg !3835
  %96 = load i64, ptr %arrayidx126, align 8, !dbg !3835
  %97 = load ptr, ptr %seqState.addr, align 8, !dbg !3837
  %prevOffset127 = getelementptr inbounds %struct.seqState_t, ptr %97, i32 0, i32 4, !dbg !3838
  %arrayidx128 = getelementptr [3 x i64], ptr %prevOffset127, i64 0, i64 2, !dbg !3837
  store i64 %96, ptr %arrayidx128, align 8, !dbg !3839
  br label %if.end129, !dbg !3837

if.end129:                                        ; preds = %if.then124, %cond.end115
  %98 = load ptr, ptr %seqState.addr, align 8, !dbg !3840
  %prevOffset130 = getelementptr inbounds %struct.seqState_t, ptr %98, i32 0, i32 4, !dbg !3841
  %arrayidx131 = getelementptr [3 x i64], ptr %prevOffset130, i64 0, i64 0, !dbg !3840
  %99 = load i64, ptr %arrayidx131, align 8, !dbg !3840
  %100 = load ptr, ptr %seqState.addr, align 8, !dbg !3842
  %prevOffset132 = getelementptr inbounds %struct.seqState_t, ptr %100, i32 0, i32 4, !dbg !3843
  %arrayidx133 = getelementptr [3 x i64], ptr %prevOffset132, i64 0, i64 1, !dbg !3842
  store i64 %99, ptr %arrayidx133, align 8, !dbg !3844
  %101 = load i64, ptr %temp, align 8, !dbg !3845
  store i64 %101, ptr %offset, align 8, !dbg !3846
  %102 = load ptr, ptr %seqState.addr, align 8, !dbg !3847
  %prevOffset134 = getelementptr inbounds %struct.seqState_t, ptr %102, i32 0, i32 4, !dbg !3848
  %arrayidx135 = getelementptr [3 x i64], ptr %prevOffset134, i64 0, i64 0, !dbg !3847
  store i64 %101, ptr %arrayidx135, align 8, !dbg !3849
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #12, !dbg !3850
  br label %if.end136

if.end136:                                        ; preds = %if.end129, %if.then89
  call void @llvm.lifetime.end.p0(i64 4, ptr %ll0) #12, !dbg !3851
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end70
  %103 = load i64, ptr %offset, align 8, !dbg !3852
  %offset138 = getelementptr inbounds %struct.seq_t, ptr %agg.result, i32 0, i32 2, !dbg !3853
  store i64 %103, ptr %offset138, align 8, !dbg !3854
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #12, !dbg !3855
  %104 = load i8, ptr %mlBits, align 1, !dbg !3856
  %conv139 = zext i8 %104 to i32, !dbg !3856
  %cmp140 = icmp sgt i32 %conv139, 0, !dbg !3856
  %conv141 = zext i1 %cmp140 to i32, !dbg !3856
  %conv142 = sext i32 %conv141 to i64, !dbg !3856
  %expval143 = call i64 @llvm.expect.i64(i64 %conv142, i64 0), !dbg !3856
  %tobool144 = icmp ne i64 %expval143, 0, !dbg !3856
  br i1 %tobool144, label %if.then145, label %if.end151, !dbg !3858

if.then145:                                       ; preds = %if.end137
  %105 = load ptr, ptr %seqState.addr, align 8, !dbg !3859
  %DStream146 = getelementptr inbounds %struct.seqState_t, ptr %105, i32 0, i32 0, !dbg !3860
  %106 = load i8, ptr %mlBits, align 1, !dbg !3861
  %conv147 = zext i8 %106 to i32, !dbg !3861
  %call148 = call i64 @BIT_readBitsFast(ptr noundef %DStream146, i32 noundef %conv147) #13, !dbg !3862
  %matchLength149 = getelementptr inbounds %struct.seq_t, ptr %agg.result, i32 0, i32 1, !dbg !3863
  %107 = load i64, ptr %matchLength149, align 8, !dbg !3864
  %add150 = add i64 %107, %call148, !dbg !3864
  store i64 %add150, ptr %matchLength149, align 8, !dbg !3864
  br label %if.end151, !dbg !3865

if.end151:                                        ; preds = %if.then145, %if.end137
  %call152 = call i32 @MEM_32bits() #13, !dbg !3866
  %tobool153 = icmp ne i32 %call152, 0, !dbg !3866
  br i1 %tobool153, label %land.lhs.true154, label %if.end163, !dbg !3868

land.lhs.true154:                                 ; preds = %if.end151
  %108 = load i8, ptr %mlBits, align 1, !dbg !3869
  %conv155 = zext i8 %108 to i32, !dbg !3869
  %109 = load i8, ptr %llBits, align 1, !dbg !3870
  %conv156 = zext i8 %109 to i32, !dbg !3870
  %add157 = add i32 %conv155, %conv156, !dbg !3871
  %cmp158 = icmp sge i32 %add157, 20, !dbg !3872
  br i1 %cmp158, label %if.then160, label %if.end163, !dbg !3873

if.then160:                                       ; preds = %land.lhs.true154
  %110 = load ptr, ptr %seqState.addr, align 8, !dbg !3874
  %DStream161 = getelementptr inbounds %struct.seqState_t, ptr %110, i32 0, i32 0, !dbg !3875
  %call162 = call i32 @BIT_reloadDStream(ptr noundef %DStream161) #13, !dbg !3876
  br label %if.end163, !dbg !3876

if.end163:                                        ; preds = %if.then160, %land.lhs.true154, %if.end151
  %call164 = call i32 @MEM_64bits() #13, !dbg !3877
  %tobool165 = icmp ne i32 %call164, 0, !dbg !3877
  br i1 %tobool165, label %land.lhs.true166, label %if.end176, !dbg !3879

land.lhs.true166:                                 ; preds = %if.end163
  %111 = load i8, ptr %totalBits, align 1, !dbg !3880
  %conv167 = zext i8 %111 to i32, !dbg !3880
  %cmp168 = icmp sge i32 %conv167, 31, !dbg !3880
  %conv169 = zext i1 %cmp168 to i32, !dbg !3880
  %conv170 = sext i32 %conv169 to i64, !dbg !3880
  %expval171 = call i64 @llvm.expect.i64(i64 %conv170, i64 0), !dbg !3880
  %tobool172 = icmp ne i64 %expval171, 0, !dbg !3880
  br i1 %tobool172, label %if.then173, label %if.end176, !dbg !3881

if.then173:                                       ; preds = %land.lhs.true166
  %112 = load ptr, ptr %seqState.addr, align 8, !dbg !3882
  %DStream174 = getelementptr inbounds %struct.seqState_t, ptr %112, i32 0, i32 0, !dbg !3883
  %call175 = call i32 @BIT_reloadDStream(ptr noundef %DStream174) #13, !dbg !3884
  br label %if.end176, !dbg !3884

if.end176:                                        ; preds = %if.then173, %land.lhs.true166, %if.end163
  %113 = load i8, ptr %llBits, align 1, !dbg !3885
  %conv177 = zext i8 %113 to i32, !dbg !3885
  %cmp178 = icmp sgt i32 %conv177, 0, !dbg !3885
  %conv179 = zext i1 %cmp178 to i32, !dbg !3885
  %conv180 = sext i32 %conv179 to i64, !dbg !3885
  %expval181 = call i64 @llvm.expect.i64(i64 %conv180, i64 0), !dbg !3885
  %tobool182 = icmp ne i64 %expval181, 0, !dbg !3885
  br i1 %tobool182, label %if.then183, label %if.end189, !dbg !3887

if.then183:                                       ; preds = %if.end176
  %114 = load ptr, ptr %seqState.addr, align 8, !dbg !3888
  %DStream184 = getelementptr inbounds %struct.seqState_t, ptr %114, i32 0, i32 0, !dbg !3889
  %115 = load i8, ptr %llBits, align 1, !dbg !3890
  %conv185 = zext i8 %115 to i32, !dbg !3890
  %call186 = call i64 @BIT_readBitsFast(ptr noundef %DStream184, i32 noundef %conv185) #13, !dbg !3891
  %litLength187 = getelementptr inbounds %struct.seq_t, ptr %agg.result, i32 0, i32 0, !dbg !3892
  %116 = load i64, ptr %litLength187, align 8, !dbg !3893
  %add188 = add i64 %116, %call186, !dbg !3893
  store i64 %add188, ptr %litLength187, align 8, !dbg !3893
  br label %if.end189, !dbg !3894

if.end189:                                        ; preds = %if.then183, %if.end176
  %call190 = call i32 @MEM_32bits() #13, !dbg !3895
  %tobool191 = icmp ne i32 %call190, 0, !dbg !3895
  br i1 %tobool191, label %if.then192, label %if.end195, !dbg !3897

if.then192:                                       ; preds = %if.end189
  %117 = load ptr, ptr %seqState.addr, align 8, !dbg !3898
  %DStream193 = getelementptr inbounds %struct.seqState_t, ptr %117, i32 0, i32 0, !dbg !3899
  %call194 = call i32 @BIT_reloadDStream(ptr noundef %DStream193) #13, !dbg !3900
  br label %if.end195, !dbg !3900

if.end195:                                        ; preds = %if.then192, %if.end189
  %118 = load ptr, ptr %seqState.addr, align 8, !dbg !3901
  %stateLL196 = getelementptr inbounds %struct.seqState_t, ptr %118, i32 0, i32 1, !dbg !3902
  %119 = load ptr, ptr %seqState.addr, align 8, !dbg !3903
  %DStream197 = getelementptr inbounds %struct.seqState_t, ptr %119, i32 0, i32 0, !dbg !3904
  %120 = load i16, ptr %llNext, align 2, !dbg !3905
  %121 = load i32, ptr %llnbBits, align 4, !dbg !3906
  call void @ZSTD_updateFseStateWithDInfo(ptr noundef %stateLL196, ptr noundef %DStream197, i16 noundef zeroext %120, i32 noundef %121) #13, !dbg !3907
  %122 = load ptr, ptr %seqState.addr, align 8, !dbg !3908
  %stateML198 = getelementptr inbounds %struct.seqState_t, ptr %122, i32 0, i32 3, !dbg !3909
  %123 = load ptr, ptr %seqState.addr, align 8, !dbg !3910
  %DStream199 = getelementptr inbounds %struct.seqState_t, ptr %123, i32 0, i32 0, !dbg !3911
  %124 = load i16, ptr %mlNext, align 2, !dbg !3912
  %125 = load i32, ptr %mlnbBits, align 4, !dbg !3913
  call void @ZSTD_updateFseStateWithDInfo(ptr noundef %stateML198, ptr noundef %DStream199, i16 noundef zeroext %124, i32 noundef %125) #13, !dbg !3914
  %call200 = call i32 @MEM_32bits() #13, !dbg !3915
  %tobool201 = icmp ne i32 %call200, 0, !dbg !3915
  br i1 %tobool201, label %if.then202, label %if.end205, !dbg !3917

if.then202:                                       ; preds = %if.end195
  %126 = load ptr, ptr %seqState.addr, align 8, !dbg !3918
  %DStream203 = getelementptr inbounds %struct.seqState_t, ptr %126, i32 0, i32 0, !dbg !3919
  %call204 = call i32 @BIT_reloadDStream(ptr noundef %DStream203) #13, !dbg !3920
  br label %if.end205, !dbg !3920

if.end205:                                        ; preds = %if.then202, %if.end195
  %127 = load ptr, ptr %seqState.addr, align 8, !dbg !3921
  %stateOffb206 = getelementptr inbounds %struct.seqState_t, ptr %127, i32 0, i32 2, !dbg !3922
  %128 = load ptr, ptr %seqState.addr, align 8, !dbg !3923
  %DStream207 = getelementptr inbounds %struct.seqState_t, ptr %128, i32 0, i32 0, !dbg !3924
  %129 = load i16, ptr %ofNext, align 2, !dbg !3925
  %130 = load i32, ptr %ofnbBits, align 4, !dbg !3926
  call void @ZSTD_updateFseStateWithDInfo(ptr noundef %stateOffb206, ptr noundef %DStream207, i16 noundef zeroext %129, i32 noundef %130) #13, !dbg !3927
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofnbBits) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 4, ptr %mlnbBits) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 4, ptr %llnbBits) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 2, ptr %ofNext) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 2, ptr %mlNext) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 2, ptr %llNext) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 1, ptr %totalBits) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 1, ptr %ofBits) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 1, ptr %mlBits) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 1, ptr %llBits) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofBase) #12, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 8, ptr %ofDInfo) #12, !dbg !3929
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlDInfo) #12, !dbg !3929
  call void @llvm.lifetime.end.p0(i64 8, ptr %llDInfo) #12, !dbg !3929
  ret void, !dbg !3929
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_prefetchMatch(i64 noundef %prefetchPos, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %prefixStart, ptr noundef %dictEnd) #9 align 16 !dbg !3930 {
entry:
  %prefetchPos.addr = alloca i64, align 8
  %prefixStart.addr = alloca ptr, align 8
  %dictEnd.addr = alloca ptr, align 8
  %matchBase = alloca ptr, align 8
  %match = alloca ptr, align 8
  store i64 %prefetchPos, ptr %prefetchPos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefetchPos.addr, metadata !3934, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.declare(metadata ptr %sequence, metadata !3935, metadata !DIExpression()), !dbg !3942
  store ptr %prefixStart, ptr %prefixStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixStart.addr, metadata !3936, metadata !DIExpression()), !dbg !3943
  store ptr %dictEnd, ptr %dictEnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictEnd.addr, metadata !3937, metadata !DIExpression()), !dbg !3944
  %litLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !3945
  %0 = load i64, ptr %litLength, align 8, !dbg !3945
  %1 = load i64, ptr %prefetchPos.addr, align 8, !dbg !3946
  %add = add i64 %1, %0, !dbg !3946
  store i64 %add, ptr %prefetchPos.addr, align 8, !dbg !3946
  call void @llvm.lifetime.start.p0(i64 8, ptr %matchBase) #12, !dbg !3947
  call void @llvm.dbg.declare(metadata ptr %matchBase, metadata !3938, metadata !DIExpression()), !dbg !3948
  %offset = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !3949
  %2 = load i64, ptr %offset, align 8, !dbg !3949
  %3 = load i64, ptr %prefetchPos.addr, align 8, !dbg !3950
  %cmp = icmp ugt i64 %2, %3, !dbg !3951
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3952

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %dictEnd.addr, align 8, !dbg !3953
  br label %cond.end, !dbg !3952

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %prefixStart.addr, align 8, !dbg !3954
  br label %cond.end, !dbg !3952

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ %5, %cond.false ], !dbg !3952
  store ptr %cond, ptr %matchBase, align 8, !dbg !3948
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #12, !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %match, metadata !3940, metadata !DIExpression()), !dbg !3956
  %6 = load ptr, ptr %matchBase, align 8, !dbg !3957
  %7 = load i64, ptr %prefetchPos.addr, align 8, !dbg !3958
  %add.ptr = getelementptr i8, ptr %6, i64 %7, !dbg !3959
  %offset1 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !3960
  %8 = load i64, ptr %offset1, align 8, !dbg !3960
  %idx.neg = sub i64 0, %8, !dbg !3961
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i64 %idx.neg, !dbg !3961
  store ptr %add.ptr2, ptr %match, align 8, !dbg !3956
  %9 = load ptr, ptr %match, align 8, !dbg !3962
  call void @llvm.prefetch.p0(ptr %9, i32 0, i32 3, i32 1), !dbg !3962
  %10 = load ptr, ptr %match, align 8, !dbg !3963
  %add.ptr3 = getelementptr i8, ptr %10, i64 64, !dbg !3963
  call void @llvm.prefetch.p0(ptr %add.ptr3, i32 0, i32 3, i32 1), !dbg !3963
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #12, !dbg !3964
  call void @llvm.lifetime.end.p0(i64 8, ptr %matchBase) #12, !dbg !3964
  %11 = load i64, ptr %prefetchPos.addr, align 8, !dbg !3965
  %matchLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !3966
  %12 = load i64, ptr %matchLength, align 8, !dbg !3966
  %add4 = add i64 %11, %12, !dbg !3967
  ret i64 %add4, !dbg !3968
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_safecopyDstBeforeSrc(ptr noundef %op, ptr noundef %ip, i64 noundef %length) #0 align 16 !dbg !3969 {
entry:
  %op.addr = alloca ptr, align 8
  %ip.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %diff = alloca i64, align 8
  %oend = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3973, metadata !DIExpression()), !dbg !3979
  store ptr %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !3974, metadata !DIExpression()), !dbg !3980
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3975, metadata !DIExpression()), !dbg !3981
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #12, !dbg !3982
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !3976, metadata !DIExpression()), !dbg !3983
  %0 = load ptr, ptr %op.addr, align 8, !dbg !3984
  %1 = load ptr, ptr %ip.addr, align 8, !dbg !3985
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !3986
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !3986
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3986
  store i64 %sub.ptr.sub, ptr %diff, align 8, !dbg !3983
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #12, !dbg !3987
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !3978, metadata !DIExpression()), !dbg !3988
  %2 = load ptr, ptr %op.addr, align 8, !dbg !3989
  %3 = load i64, ptr %length.addr, align 8, !dbg !3990
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !3991
  store ptr %add.ptr, ptr %oend, align 8, !dbg !3988
  %4 = load i64, ptr %length.addr, align 8, !dbg !3992
  %cmp = icmp slt i64 %4, 8, !dbg !3994
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3995

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %diff, align 8, !dbg !3996
  %cmp1 = icmp sgt i64 %5, -8, !dbg !3997
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3998

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.cond, !dbg !3999

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load ptr, ptr %op.addr, align 8, !dbg !4001
  %7 = load ptr, ptr %oend, align 8, !dbg !4002
  %cmp2 = icmp ult ptr %6, %7, !dbg !4003
  br i1 %cmp2, label %while.body, label %while.end, !dbg !3999

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %ip.addr, align 8, !dbg !4004
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !4004
  store ptr %incdec.ptr, ptr %ip.addr, align 8, !dbg !4004
  %9 = load i8, ptr %8, align 1, !dbg !4005
  %10 = load ptr, ptr %op.addr, align 8, !dbg !4006
  %incdec.ptr3 = getelementptr i8, ptr %10, i32 1, !dbg !4006
  store ptr %incdec.ptr3, ptr %op.addr, align 8, !dbg !4006
  store i8 %9, ptr %10, align 1, !dbg !4007
  br label %while.cond, !dbg !3999, !llvm.loop !4008

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4009

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %op.addr, align 8, !dbg !4010
  %12 = load ptr, ptr %oend, align 8, !dbg !4012
  %add.ptr4 = getelementptr i8, ptr %12, i64 -32, !dbg !4013
  %cmp5 = icmp ule ptr %11, %add.ptr4, !dbg !4014
  br i1 %cmp5, label %land.lhs.true, label %if.end22, !dbg !4015

land.lhs.true:                                    ; preds = %if.end
  %13 = load i64, ptr %diff, align 8, !dbg !4016
  %cmp6 = icmp slt i64 %13, -16, !dbg !4017
  br i1 %cmp6, label %if.then7, label %if.end22, !dbg !4018

if.then7:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %op.addr, align 8, !dbg !4019
  %15 = load ptr, ptr %ip.addr, align 8, !dbg !4021
  %16 = load ptr, ptr %oend, align 8, !dbg !4022
  %add.ptr8 = getelementptr i8, ptr %16, i64 -32, !dbg !4023
  %17 = load ptr, ptr %op.addr, align 8, !dbg !4024
  %sub.ptr.lhs.cast9 = ptrtoint ptr %add.ptr8 to i64, !dbg !4025
  %sub.ptr.rhs.cast10 = ptrtoint ptr %17 to i64, !dbg !4025
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10, !dbg !4025
  call void @ZSTD_wildcopy(ptr noundef %14, ptr noundef %15, i64 noundef %sub.ptr.sub11, i32 noundef 0) #13, !dbg !4026
  %18 = load ptr, ptr %oend, align 8, !dbg !4027
  %add.ptr12 = getelementptr i8, ptr %18, i64 -32, !dbg !4028
  %19 = load ptr, ptr %op.addr, align 8, !dbg !4029
  %sub.ptr.lhs.cast13 = ptrtoint ptr %add.ptr12 to i64, !dbg !4030
  %sub.ptr.rhs.cast14 = ptrtoint ptr %19 to i64, !dbg !4030
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14, !dbg !4030
  %20 = load ptr, ptr %ip.addr, align 8, !dbg !4031
  %add.ptr16 = getelementptr i8, ptr %20, i64 %sub.ptr.sub15, !dbg !4031
  store ptr %add.ptr16, ptr %ip.addr, align 8, !dbg !4031
  %21 = load ptr, ptr %oend, align 8, !dbg !4032
  %add.ptr17 = getelementptr i8, ptr %21, i64 -32, !dbg !4033
  %22 = load ptr, ptr %op.addr, align 8, !dbg !4034
  %sub.ptr.lhs.cast18 = ptrtoint ptr %add.ptr17 to i64, !dbg !4035
  %sub.ptr.rhs.cast19 = ptrtoint ptr %22 to i64, !dbg !4035
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19, !dbg !4035
  %23 = load ptr, ptr %op.addr, align 8, !dbg !4036
  %add.ptr21 = getelementptr i8, ptr %23, i64 %sub.ptr.sub20, !dbg !4036
  store ptr %add.ptr21, ptr %op.addr, align 8, !dbg !4036
  br label %if.end22, !dbg !4037

if.end22:                                         ; preds = %if.then7, %land.lhs.true, %if.end
  br label %while.cond23, !dbg !4038

while.cond23:                                     ; preds = %while.body25, %if.end22
  %24 = load ptr, ptr %op.addr, align 8, !dbg !4039
  %25 = load ptr, ptr %oend, align 8, !dbg !4040
  %cmp24 = icmp ult ptr %24, %25, !dbg !4041
  br i1 %cmp24, label %while.body25, label %while.end28, !dbg !4038

while.body25:                                     ; preds = %while.cond23
  %26 = load ptr, ptr %ip.addr, align 8, !dbg !4042
  %incdec.ptr26 = getelementptr i8, ptr %26, i32 1, !dbg !4042
  store ptr %incdec.ptr26, ptr %ip.addr, align 8, !dbg !4042
  %27 = load i8, ptr %26, align 1, !dbg !4043
  %28 = load ptr, ptr %op.addr, align 8, !dbg !4044
  %incdec.ptr27 = getelementptr i8, ptr %28, i32 1, !dbg !4044
  store ptr %incdec.ptr27, ptr %op.addr, align 8, !dbg !4044
  store i8 %27, ptr %28, align 1, !dbg !4045
  br label %while.cond23, !dbg !4038, !llvm.loop !4046

while.end28:                                      ; preds = %while.cond23
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4047
  br label %cleanup, !dbg !4047

cleanup:                                          ; preds = %while.end28, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #12, !dbg !4047
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #12, !dbg !4047
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4047

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_execSequence(ptr noundef %op, ptr noundef %oend, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %litPtr, ptr noundef %litLimit, ptr noundef %prefixStart, ptr noundef %virtualStart, ptr noundef %dictEnd) #9 align 16 !dbg !4048 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %oend.addr = alloca ptr, align 8
  %litPtr.addr = alloca ptr, align 8
  %litLimit.addr = alloca ptr, align 8
  %prefixStart.addr = alloca ptr, align 8
  %virtualStart.addr = alloca ptr, align 8
  %dictEnd.addr = alloca ptr, align 8
  %oLitEnd = alloca ptr, align 8
  %sequenceLength = alloca i64, align 8
  %oMatchEnd = alloca ptr, align 8
  %oend_w = alloca ptr, align 8
  %iLitEnd = alloca ptr, align 8
  %match = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %length1 = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4052, metadata !DIExpression()), !dbg !4070
  store ptr %oend, ptr %oend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oend.addr, metadata !4053, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.declare(metadata ptr %sequence, metadata !4054, metadata !DIExpression()), !dbg !4072
  store ptr %litPtr, ptr %litPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litPtr.addr, metadata !4055, metadata !DIExpression()), !dbg !4073
  store ptr %litLimit, ptr %litLimit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litLimit.addr, metadata !4056, metadata !DIExpression()), !dbg !4074
  store ptr %prefixStart, ptr %prefixStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixStart.addr, metadata !4057, metadata !DIExpression()), !dbg !4075
  store ptr %virtualStart, ptr %virtualStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virtualStart.addr, metadata !4058, metadata !DIExpression()), !dbg !4076
  store ptr %dictEnd, ptr %dictEnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictEnd.addr, metadata !4059, metadata !DIExpression()), !dbg !4077
  call void @llvm.lifetime.start.p0(i64 8, ptr %oLitEnd) #12, !dbg !4078
  call void @llvm.dbg.declare(metadata ptr %oLitEnd, metadata !4060, metadata !DIExpression()), !dbg !4079
  %0 = load ptr, ptr %op.addr, align 8, !dbg !4080
  %litLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4081
  %1 = load i64, ptr %litLength, align 8, !dbg !4081
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !4082
  store ptr %add.ptr, ptr %oLitEnd, align 8, !dbg !4079
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequenceLength) #12, !dbg !4083
  call void @llvm.dbg.declare(metadata ptr %sequenceLength, metadata !4061, metadata !DIExpression()), !dbg !4084
  %litLength1 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4085
  %2 = load i64, ptr %litLength1, align 8, !dbg !4085
  %matchLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4086
  %3 = load i64, ptr %matchLength, align 8, !dbg !4086
  %add = add i64 %2, %3, !dbg !4087
  store i64 %add, ptr %sequenceLength, align 8, !dbg !4084
  call void @llvm.lifetime.start.p0(i64 8, ptr %oMatchEnd) #12, !dbg !4088
  call void @llvm.dbg.declare(metadata ptr %oMatchEnd, metadata !4062, metadata !DIExpression()), !dbg !4089
  %4 = load ptr, ptr %op.addr, align 8, !dbg !4090
  %5 = load i64, ptr %sequenceLength, align 8, !dbg !4091
  %add.ptr2 = getelementptr i8, ptr %4, i64 %5, !dbg !4092
  store ptr %add.ptr2, ptr %oMatchEnd, align 8, !dbg !4089
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend_w) #12, !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %oend_w, metadata !4063, metadata !DIExpression()), !dbg !4094
  %6 = load ptr, ptr %oend.addr, align 8, !dbg !4095
  %add.ptr3 = getelementptr i8, ptr %6, i64 -32, !dbg !4096
  store ptr %add.ptr3, ptr %oend_w, align 8, !dbg !4094
  call void @llvm.lifetime.start.p0(i64 8, ptr %iLitEnd) #12, !dbg !4097
  call void @llvm.dbg.declare(metadata ptr %iLitEnd, metadata !4064, metadata !DIExpression()), !dbg !4098
  %7 = load ptr, ptr %litPtr.addr, align 8, !dbg !4099
  %8 = load ptr, ptr %7, align 8, !dbg !4100
  %litLength4 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4101
  %9 = load i64, ptr %litLength4, align 8, !dbg !4101
  %add.ptr5 = getelementptr i8, ptr %8, i64 %9, !dbg !4102
  store ptr %add.ptr5, ptr %iLitEnd, align 8, !dbg !4098
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #12, !dbg !4103
  call void @llvm.dbg.declare(metadata ptr %match, metadata !4065, metadata !DIExpression()), !dbg !4104
  %10 = load ptr, ptr %oLitEnd, align 8, !dbg !4105
  %offset = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4106
  %11 = load i64, ptr %offset, align 8, !dbg !4106
  %idx.neg = sub i64 0, %11, !dbg !4107
  %add.ptr6 = getelementptr i8, ptr %10, i64 %idx.neg, !dbg !4107
  store ptr %add.ptr6, ptr %match, align 8, !dbg !4104
  %12 = load ptr, ptr %iLitEnd, align 8, !dbg !4108
  %13 = load ptr, ptr %litLimit.addr, align 8, !dbg !4108
  %cmp = icmp ugt ptr %12, %13, !dbg !4108
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !4108

lor.lhs.false:                                    ; preds = %entry
  %14 = load ptr, ptr %oMatchEnd, align 8, !dbg !4108
  %15 = load ptr, ptr %oend_w, align 8, !dbg !4108
  %cmp7 = icmp ugt ptr %14, %15, !dbg !4108
  br i1 %cmp7, label %lor.end, label %lor.rhs, !dbg !4108

lor.rhs:                                          ; preds = %lor.lhs.false
  %call = call i32 @MEM_32bits() #13, !dbg !4108
  %tobool = icmp ne i32 %call, 0, !dbg !4108
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4108

land.rhs:                                         ; preds = %lor.rhs
  %16 = load ptr, ptr %oend.addr, align 8, !dbg !4108
  %17 = load ptr, ptr %op.addr, align 8, !dbg !4108
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64, !dbg !4108
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64, !dbg !4108
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4108
  %18 = load i64, ptr %sequenceLength, align 8, !dbg !4108
  %add8 = add i64 %18, 32, !dbg !4108
  %cmp9 = icmp ult i64 %sub.ptr.sub, %add8, !dbg !4108
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %19 = phi i1 [ false, %lor.rhs ], [ %cmp9, %land.rhs ], !dbg !4110
  br label %lor.end, !dbg !4108

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %entry
  %20 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %19, %land.end ]
  %lor.ext = zext i1 %20 to i32, !dbg !4108
  %conv = sext i32 %lor.ext to i64, !dbg !4108
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4108
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4108
  br i1 %tobool10, label %if.then, label %if.end, !dbg !4111

if.then:                                          ; preds = %lor.end
  %21 = load ptr, ptr %op.addr, align 8, !dbg !4112
  %22 = load ptr, ptr %oend.addr, align 8, !dbg !4113
  %23 = load ptr, ptr %litPtr.addr, align 8, !dbg !4114
  %24 = load ptr, ptr %litLimit.addr, align 8, !dbg !4115
  %25 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4116
  %26 = load ptr, ptr %virtualStart.addr, align 8, !dbg !4117
  %27 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4118
  %call11 = call i64 @ZSTD_execSequenceEnd(ptr noundef %21, ptr noundef %22, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27) #13, !dbg !4119
  store i64 %call11, ptr %retval, align 8, !dbg !4120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4120

if.end:                                           ; preds = %lor.end
  %28 = load ptr, ptr %op.addr, align 8, !dbg !4121
  %29 = load ptr, ptr %litPtr.addr, align 8, !dbg !4122
  %30 = load ptr, ptr %29, align 8, !dbg !4123
  call void @ZSTD_copy16(ptr noundef %28, ptr noundef %30) #13, !dbg !4124
  %litLength12 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4125
  %31 = load i64, ptr %litLength12, align 8, !dbg !4125
  %cmp13 = icmp ugt i64 %31, 16, !dbg !4125
  %conv14 = zext i1 %cmp13 to i32, !dbg !4125
  %conv15 = sext i32 %conv14 to i64, !dbg !4125
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !4125
  %tobool17 = icmp ne i64 %expval16, 0, !dbg !4125
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !4127

if.then18:                                        ; preds = %if.end
  %32 = load ptr, ptr %op.addr, align 8, !dbg !4128
  %add.ptr19 = getelementptr i8, ptr %32, i64 16, !dbg !4130
  %33 = load ptr, ptr %litPtr.addr, align 8, !dbg !4131
  %34 = load ptr, ptr %33, align 8, !dbg !4132
  %add.ptr20 = getelementptr i8, ptr %34, i64 16, !dbg !4133
  %litLength21 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4134
  %35 = load i64, ptr %litLength21, align 8, !dbg !4134
  %sub = sub i64 %35, 16, !dbg !4135
  call void @ZSTD_wildcopy(ptr noundef %add.ptr19, ptr noundef %add.ptr20, i64 noundef %sub, i32 noundef 0) #13, !dbg !4136
  br label %if.end22, !dbg !4137

if.end22:                                         ; preds = %if.then18, %if.end
  %36 = load ptr, ptr %oLitEnd, align 8, !dbg !4138
  store ptr %36, ptr %op.addr, align 8, !dbg !4139
  %37 = load ptr, ptr %iLitEnd, align 8, !dbg !4140
  %38 = load ptr, ptr %litPtr.addr, align 8, !dbg !4141
  store ptr %37, ptr %38, align 8, !dbg !4142
  %offset23 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4143
  %39 = load i64, ptr %offset23, align 8, !dbg !4143
  %40 = load ptr, ptr %oLitEnd, align 8, !dbg !4144
  %41 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4145
  %sub.ptr.lhs.cast24 = ptrtoint ptr %40 to i64, !dbg !4146
  %sub.ptr.rhs.cast25 = ptrtoint ptr %41 to i64, !dbg !4146
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25, !dbg !4146
  %cmp27 = icmp ugt i64 %39, %sub.ptr.sub26, !dbg !4147
  br i1 %cmp27, label %if.then29, label %if.end58, !dbg !4148

if.then29:                                        ; preds = %if.end22
  %offset30 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4149
  %42 = load i64, ptr %offset30, align 8, !dbg !4149
  %43 = load ptr, ptr %oLitEnd, align 8, !dbg !4149
  %44 = load ptr, ptr %virtualStart.addr, align 8, !dbg !4149
  %sub.ptr.lhs.cast31 = ptrtoint ptr %43 to i64, !dbg !4149
  %sub.ptr.rhs.cast32 = ptrtoint ptr %44 to i64, !dbg !4149
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32, !dbg !4149
  %cmp34 = icmp ugt i64 %42, %sub.ptr.sub33, !dbg !4149
  %conv35 = zext i1 %cmp34 to i32, !dbg !4149
  %conv36 = sext i32 %conv35 to i64, !dbg !4149
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !4149
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !4149
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !4151

if.then39:                                        ; preds = %if.then29
  store i64 -20, ptr %retval, align 8, !dbg !4152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4152

if.end40:                                         ; preds = %if.then29
  %45 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4154
  %46 = load ptr, ptr %match, align 8, !dbg !4155
  %47 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4156
  %sub.ptr.lhs.cast41 = ptrtoint ptr %46 to i64, !dbg !4157
  %sub.ptr.rhs.cast42 = ptrtoint ptr %47 to i64, !dbg !4157
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42, !dbg !4157
  %add.ptr44 = getelementptr i8, ptr %45, i64 %sub.ptr.sub43, !dbg !4158
  store ptr %add.ptr44, ptr %match, align 8, !dbg !4159
  %48 = load ptr, ptr %match, align 8, !dbg !4160
  %matchLength45 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4162
  %49 = load i64, ptr %matchLength45, align 8, !dbg !4162
  %add.ptr46 = getelementptr i8, ptr %48, i64 %49, !dbg !4163
  %50 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4164
  %cmp47 = icmp ule ptr %add.ptr46, %50, !dbg !4165
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !4166

if.then49:                                        ; preds = %if.end40
  %51 = load ptr, ptr %oLitEnd, align 8, !dbg !4167
  %52 = load ptr, ptr %match, align 8, !dbg !4167
  %matchLength50 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4167
  %53 = load i64, ptr %matchLength50, align 8, !dbg !4167
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %51, ptr align 1 %52, i64 %53, i1 false), !dbg !4167
  %54 = load i64, ptr %sequenceLength, align 8, !dbg !4169
  store i64 %54, ptr %retval, align 8, !dbg !4170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4170

if.end51:                                         ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr %length1) #12, !dbg !4171
  call void @llvm.dbg.declare(metadata ptr %length1, metadata !4066, metadata !DIExpression()), !dbg !4172
  %55 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4173
  %56 = load ptr, ptr %match, align 8, !dbg !4174
  %sub.ptr.lhs.cast52 = ptrtoint ptr %55 to i64, !dbg !4175
  %sub.ptr.rhs.cast53 = ptrtoint ptr %56 to i64, !dbg !4175
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53, !dbg !4175
  store i64 %sub.ptr.sub54, ptr %length1, align 8, !dbg !4172
  %57 = load ptr, ptr %oLitEnd, align 8, !dbg !4176
  %58 = load ptr, ptr %match, align 8, !dbg !4176
  %59 = load i64, ptr %length1, align 8, !dbg !4176
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %57, ptr align 1 %58, i64 %59, i1 false), !dbg !4176
  %60 = load ptr, ptr %oLitEnd, align 8, !dbg !4177
  %61 = load i64, ptr %length1, align 8, !dbg !4178
  %add.ptr55 = getelementptr i8, ptr %60, i64 %61, !dbg !4179
  store ptr %add.ptr55, ptr %op.addr, align 8, !dbg !4180
  %62 = load i64, ptr %length1, align 8, !dbg !4181
  %matchLength56 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4182
  %63 = load i64, ptr %matchLength56, align 8, !dbg !4183
  %sub57 = sub i64 %63, %62, !dbg !4183
  store i64 %sub57, ptr %matchLength56, align 8, !dbg !4183
  %64 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4184
  store ptr %64, ptr %match, align 8, !dbg !4185
  call void @llvm.lifetime.end.p0(i64 8, ptr %length1) #12, !dbg !4186
  br label %if.end58, !dbg !4187

if.end58:                                         ; preds = %if.end51, %if.end22
  %offset59 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4188
  %65 = load i64, ptr %offset59, align 8, !dbg !4188
  %cmp60 = icmp uge i64 %65, 16, !dbg !4188
  %conv61 = zext i1 %cmp60 to i32, !dbg !4188
  %conv62 = sext i32 %conv61 to i64, !dbg !4188
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 1), !dbg !4188
  %tobool64 = icmp ne i64 %expval63, 0, !dbg !4188
  br i1 %tobool64, label %if.then65, label %if.end67, !dbg !4190

if.then65:                                        ; preds = %if.end58
  %66 = load ptr, ptr %op.addr, align 8, !dbg !4191
  %67 = load ptr, ptr %match, align 8, !dbg !4193
  %matchLength66 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4194
  %68 = load i64, ptr %matchLength66, align 8, !dbg !4194
  call void @ZSTD_wildcopy(ptr noundef %66, ptr noundef %67, i64 noundef %68, i32 noundef 0) #13, !dbg !4195
  %69 = load i64, ptr %sequenceLength, align 8, !dbg !4196
  store i64 %69, ptr %retval, align 8, !dbg !4197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4197

if.end67:                                         ; preds = %if.end58
  %offset68 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4198
  %70 = load i64, ptr %offset68, align 8, !dbg !4198
  call void @ZSTD_overlapCopy8(ptr noundef %op.addr, ptr noundef %match, i64 noundef %70) #13, !dbg !4199
  %matchLength69 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4200
  %71 = load i64, ptr %matchLength69, align 8, !dbg !4200
  %cmp70 = icmp ugt i64 %71, 8, !dbg !4202
  br i1 %cmp70, label %if.then72, label %if.end75, !dbg !4203

if.then72:                                        ; preds = %if.end67
  %72 = load ptr, ptr %op.addr, align 8, !dbg !4204
  %73 = load ptr, ptr %match, align 8, !dbg !4206
  %matchLength73 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4207
  %74 = load i64, ptr %matchLength73, align 8, !dbg !4207
  %sub74 = sub i64 %74, 8, !dbg !4208
  call void @ZSTD_wildcopy(ptr noundef %72, ptr noundef %73, i64 noundef %sub74, i32 noundef 1) #13, !dbg !4209
  br label %if.end75, !dbg !4210

if.end75:                                         ; preds = %if.then72, %if.end67
  %75 = load i64, ptr %sequenceLength, align 8, !dbg !4211
  store i64 %75, ptr %retval, align 8, !dbg !4212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4212

cleanup:                                          ; preds = %if.end75, %if.then65, %if.then49, %if.then39, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #12, !dbg !4213
  call void @llvm.lifetime.end.p0(i64 8, ptr %iLitEnd) #12, !dbg !4213
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend_w) #12, !dbg !4213
  call void @llvm.lifetime.end.p0(i64 8, ptr %oMatchEnd) #12, !dbg !4213
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequenceLength) #12, !dbg !4213
  call void @llvm.lifetime.end.p0(i64 8, ptr %oLitEnd) #12, !dbg !4213
  %76 = load i64, ptr %retval, align 8, !dbg !4213
  ret i64 %76, !dbg !4213
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_execSequenceSplitLitBuffer(ptr noundef %op, ptr noundef %oend, ptr noundef %oend_w, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %litPtr, ptr noundef %litLimit, ptr noundef %prefixStart, ptr noundef %virtualStart, ptr noundef %dictEnd) #9 align 16 !dbg !4214 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %oend.addr = alloca ptr, align 8
  %oend_w.addr = alloca ptr, align 8
  %litPtr.addr = alloca ptr, align 8
  %litLimit.addr = alloca ptr, align 8
  %prefixStart.addr = alloca ptr, align 8
  %virtualStart.addr = alloca ptr, align 8
  %dictEnd.addr = alloca ptr, align 8
  %oLitEnd = alloca ptr, align 8
  %sequenceLength = alloca i64, align 8
  %oMatchEnd = alloca ptr, align 8
  %iLitEnd = alloca ptr, align 8
  %match = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %length1 = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4218, metadata !DIExpression()), !dbg !4236
  store ptr %oend, ptr %oend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oend.addr, metadata !4219, metadata !DIExpression()), !dbg !4237
  store ptr %oend_w, ptr %oend_w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oend_w.addr, metadata !4220, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.declare(metadata ptr %sequence, metadata !4221, metadata !DIExpression()), !dbg !4239
  store ptr %litPtr, ptr %litPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litPtr.addr, metadata !4222, metadata !DIExpression()), !dbg !4240
  store ptr %litLimit, ptr %litLimit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litLimit.addr, metadata !4223, metadata !DIExpression()), !dbg !4241
  store ptr %prefixStart, ptr %prefixStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixStart.addr, metadata !4224, metadata !DIExpression()), !dbg !4242
  store ptr %virtualStart, ptr %virtualStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virtualStart.addr, metadata !4225, metadata !DIExpression()), !dbg !4243
  store ptr %dictEnd, ptr %dictEnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictEnd.addr, metadata !4226, metadata !DIExpression()), !dbg !4244
  call void @llvm.lifetime.start.p0(i64 8, ptr %oLitEnd) #12, !dbg !4245
  call void @llvm.dbg.declare(metadata ptr %oLitEnd, metadata !4227, metadata !DIExpression()), !dbg !4246
  %0 = load ptr, ptr %op.addr, align 8, !dbg !4247
  %litLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4248
  %1 = load i64, ptr %litLength, align 8, !dbg !4248
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !4249
  store ptr %add.ptr, ptr %oLitEnd, align 8, !dbg !4246
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequenceLength) #12, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %sequenceLength, metadata !4228, metadata !DIExpression()), !dbg !4251
  %litLength1 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4252
  %2 = load i64, ptr %litLength1, align 8, !dbg !4252
  %matchLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4253
  %3 = load i64, ptr %matchLength, align 8, !dbg !4253
  %add = add i64 %2, %3, !dbg !4254
  store i64 %add, ptr %sequenceLength, align 8, !dbg !4251
  call void @llvm.lifetime.start.p0(i64 8, ptr %oMatchEnd) #12, !dbg !4255
  call void @llvm.dbg.declare(metadata ptr %oMatchEnd, metadata !4229, metadata !DIExpression()), !dbg !4256
  %4 = load ptr, ptr %op.addr, align 8, !dbg !4257
  %5 = load i64, ptr %sequenceLength, align 8, !dbg !4258
  %add.ptr2 = getelementptr i8, ptr %4, i64 %5, !dbg !4259
  store ptr %add.ptr2, ptr %oMatchEnd, align 8, !dbg !4256
  call void @llvm.lifetime.start.p0(i64 8, ptr %iLitEnd) #12, !dbg !4260
  call void @llvm.dbg.declare(metadata ptr %iLitEnd, metadata !4230, metadata !DIExpression()), !dbg !4261
  %6 = load ptr, ptr %litPtr.addr, align 8, !dbg !4262
  %7 = load ptr, ptr %6, align 8, !dbg !4263
  %litLength3 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4264
  %8 = load i64, ptr %litLength3, align 8, !dbg !4264
  %add.ptr4 = getelementptr i8, ptr %7, i64 %8, !dbg !4265
  store ptr %add.ptr4, ptr %iLitEnd, align 8, !dbg !4261
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #12, !dbg !4266
  call void @llvm.dbg.declare(metadata ptr %match, metadata !4231, metadata !DIExpression()), !dbg !4267
  %9 = load ptr, ptr %oLitEnd, align 8, !dbg !4268
  %offset = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4269
  %10 = load i64, ptr %offset, align 8, !dbg !4269
  %idx.neg = sub i64 0, %10, !dbg !4270
  %add.ptr5 = getelementptr i8, ptr %9, i64 %idx.neg, !dbg !4270
  store ptr %add.ptr5, ptr %match, align 8, !dbg !4267
  %11 = load ptr, ptr %iLitEnd, align 8, !dbg !4271
  %12 = load ptr, ptr %litLimit.addr, align 8, !dbg !4271
  %cmp = icmp ugt ptr %11, %12, !dbg !4271
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !4271

lor.lhs.false:                                    ; preds = %entry
  %13 = load ptr, ptr %oMatchEnd, align 8, !dbg !4271
  %14 = load ptr, ptr %oend_w.addr, align 8, !dbg !4271
  %cmp6 = icmp ugt ptr %13, %14, !dbg !4271
  br i1 %cmp6, label %lor.end, label %lor.rhs, !dbg !4271

lor.rhs:                                          ; preds = %lor.lhs.false
  %call = call i32 @MEM_32bits() #13, !dbg !4271
  %tobool = icmp ne i32 %call, 0, !dbg !4271
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4271

land.rhs:                                         ; preds = %lor.rhs
  %15 = load ptr, ptr %oend.addr, align 8, !dbg !4271
  %16 = load ptr, ptr %op.addr, align 8, !dbg !4271
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64, !dbg !4271
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64, !dbg !4271
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4271
  %17 = load i64, ptr %sequenceLength, align 8, !dbg !4271
  %add7 = add i64 %17, 32, !dbg !4271
  %cmp8 = icmp ult i64 %sub.ptr.sub, %add7, !dbg !4271
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %18 = phi i1 [ false, %lor.rhs ], [ %cmp8, %land.rhs ], !dbg !4273
  br label %lor.end, !dbg !4271

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %entry
  %19 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %18, %land.end ]
  %lor.ext = zext i1 %19 to i32, !dbg !4271
  %conv = sext i32 %lor.ext to i64, !dbg !4271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4271
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4271
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4274

if.then:                                          ; preds = %lor.end
  %20 = load ptr, ptr %op.addr, align 8, !dbg !4275
  %21 = load ptr, ptr %oend.addr, align 8, !dbg !4276
  %22 = load ptr, ptr %oend_w.addr, align 8, !dbg !4277
  %23 = load ptr, ptr %litPtr.addr, align 8, !dbg !4278
  %24 = load ptr, ptr %litLimit.addr, align 8, !dbg !4279
  %25 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4280
  %26 = load ptr, ptr %virtualStart.addr, align 8, !dbg !4281
  %27 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4282
  %call10 = call i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27) #13, !dbg !4283
  store i64 %call10, ptr %retval, align 8, !dbg !4284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4284

if.end:                                           ; preds = %lor.end
  %28 = load ptr, ptr %op.addr, align 8, !dbg !4285
  %29 = load ptr, ptr %litPtr.addr, align 8, !dbg !4286
  %30 = load ptr, ptr %29, align 8, !dbg !4287
  call void @ZSTD_copy16(ptr noundef %28, ptr noundef %30) #13, !dbg !4288
  %litLength11 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4289
  %31 = load i64, ptr %litLength11, align 8, !dbg !4289
  %cmp12 = icmp ugt i64 %31, 16, !dbg !4289
  %conv13 = zext i1 %cmp12 to i32, !dbg !4289
  %conv14 = sext i32 %conv13 to i64, !dbg !4289
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !4289
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !4289
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !4291

if.then17:                                        ; preds = %if.end
  %32 = load ptr, ptr %op.addr, align 8, !dbg !4292
  %add.ptr18 = getelementptr i8, ptr %32, i64 16, !dbg !4294
  %33 = load ptr, ptr %litPtr.addr, align 8, !dbg !4295
  %34 = load ptr, ptr %33, align 8, !dbg !4296
  %add.ptr19 = getelementptr i8, ptr %34, i64 16, !dbg !4297
  %litLength20 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4298
  %35 = load i64, ptr %litLength20, align 8, !dbg !4298
  %sub = sub i64 %35, 16, !dbg !4299
  call void @ZSTD_wildcopy(ptr noundef %add.ptr18, ptr noundef %add.ptr19, i64 noundef %sub, i32 noundef 0) #13, !dbg !4300
  br label %if.end21, !dbg !4301

if.end21:                                         ; preds = %if.then17, %if.end
  %36 = load ptr, ptr %oLitEnd, align 8, !dbg !4302
  store ptr %36, ptr %op.addr, align 8, !dbg !4303
  %37 = load ptr, ptr %iLitEnd, align 8, !dbg !4304
  %38 = load ptr, ptr %litPtr.addr, align 8, !dbg !4305
  store ptr %37, ptr %38, align 8, !dbg !4306
  %offset22 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4307
  %39 = load i64, ptr %offset22, align 8, !dbg !4307
  %40 = load ptr, ptr %oLitEnd, align 8, !dbg !4308
  %41 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4309
  %sub.ptr.lhs.cast23 = ptrtoint ptr %40 to i64, !dbg !4310
  %sub.ptr.rhs.cast24 = ptrtoint ptr %41 to i64, !dbg !4310
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24, !dbg !4310
  %cmp26 = icmp ugt i64 %39, %sub.ptr.sub25, !dbg !4311
  br i1 %cmp26, label %if.then28, label %if.end57, !dbg !4312

if.then28:                                        ; preds = %if.end21
  %offset29 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4313
  %42 = load i64, ptr %offset29, align 8, !dbg !4313
  %43 = load ptr, ptr %oLitEnd, align 8, !dbg !4313
  %44 = load ptr, ptr %virtualStart.addr, align 8, !dbg !4313
  %sub.ptr.lhs.cast30 = ptrtoint ptr %43 to i64, !dbg !4313
  %sub.ptr.rhs.cast31 = ptrtoint ptr %44 to i64, !dbg !4313
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31, !dbg !4313
  %cmp33 = icmp ugt i64 %42, %sub.ptr.sub32, !dbg !4313
  %conv34 = zext i1 %cmp33 to i32, !dbg !4313
  %conv35 = sext i32 %conv34 to i64, !dbg !4313
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !4313
  %tobool37 = icmp ne i64 %expval36, 0, !dbg !4313
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !4315

if.then38:                                        ; preds = %if.then28
  store i64 -20, ptr %retval, align 8, !dbg !4316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4316

if.end39:                                         ; preds = %if.then28
  %45 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4318
  %46 = load ptr, ptr %match, align 8, !dbg !4319
  %47 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4320
  %sub.ptr.lhs.cast40 = ptrtoint ptr %46 to i64, !dbg !4321
  %sub.ptr.rhs.cast41 = ptrtoint ptr %47 to i64, !dbg !4321
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41, !dbg !4321
  %add.ptr43 = getelementptr i8, ptr %45, i64 %sub.ptr.sub42, !dbg !4322
  store ptr %add.ptr43, ptr %match, align 8, !dbg !4323
  %48 = load ptr, ptr %match, align 8, !dbg !4324
  %matchLength44 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4326
  %49 = load i64, ptr %matchLength44, align 8, !dbg !4326
  %add.ptr45 = getelementptr i8, ptr %48, i64 %49, !dbg !4327
  %50 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4328
  %cmp46 = icmp ule ptr %add.ptr45, %50, !dbg !4329
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !4330

if.then48:                                        ; preds = %if.end39
  %51 = load ptr, ptr %oLitEnd, align 8, !dbg !4331
  %52 = load ptr, ptr %match, align 8, !dbg !4331
  %matchLength49 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4331
  %53 = load i64, ptr %matchLength49, align 8, !dbg !4331
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %51, ptr align 1 %52, i64 %53, i1 false), !dbg !4331
  %54 = load i64, ptr %sequenceLength, align 8, !dbg !4333
  store i64 %54, ptr %retval, align 8, !dbg !4334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4334

if.end50:                                         ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %length1) #12, !dbg !4335
  call void @llvm.dbg.declare(metadata ptr %length1, metadata !4232, metadata !DIExpression()), !dbg !4336
  %55 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4337
  %56 = load ptr, ptr %match, align 8, !dbg !4338
  %sub.ptr.lhs.cast51 = ptrtoint ptr %55 to i64, !dbg !4339
  %sub.ptr.rhs.cast52 = ptrtoint ptr %56 to i64, !dbg !4339
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52, !dbg !4339
  store i64 %sub.ptr.sub53, ptr %length1, align 8, !dbg !4336
  %57 = load ptr, ptr %oLitEnd, align 8, !dbg !4340
  %58 = load ptr, ptr %match, align 8, !dbg !4340
  %59 = load i64, ptr %length1, align 8, !dbg !4340
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %57, ptr align 1 %58, i64 %59, i1 false), !dbg !4340
  %60 = load ptr, ptr %oLitEnd, align 8, !dbg !4341
  %61 = load i64, ptr %length1, align 8, !dbg !4342
  %add.ptr54 = getelementptr i8, ptr %60, i64 %61, !dbg !4343
  store ptr %add.ptr54, ptr %op.addr, align 8, !dbg !4344
  %62 = load i64, ptr %length1, align 8, !dbg !4345
  %matchLength55 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4346
  %63 = load i64, ptr %matchLength55, align 8, !dbg !4347
  %sub56 = sub i64 %63, %62, !dbg !4347
  store i64 %sub56, ptr %matchLength55, align 8, !dbg !4347
  %64 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4348
  store ptr %64, ptr %match, align 8, !dbg !4349
  call void @llvm.lifetime.end.p0(i64 8, ptr %length1) #12, !dbg !4350
  br label %if.end57, !dbg !4351

if.end57:                                         ; preds = %if.end50, %if.end21
  %offset58 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4352
  %65 = load i64, ptr %offset58, align 8, !dbg !4352
  %cmp59 = icmp uge i64 %65, 16, !dbg !4352
  %conv60 = zext i1 %cmp59 to i32, !dbg !4352
  %conv61 = sext i32 %conv60 to i64, !dbg !4352
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 1), !dbg !4352
  %tobool63 = icmp ne i64 %expval62, 0, !dbg !4352
  br i1 %tobool63, label %if.then64, label %if.end66, !dbg !4354

if.then64:                                        ; preds = %if.end57
  %66 = load ptr, ptr %op.addr, align 8, !dbg !4355
  %67 = load ptr, ptr %match, align 8, !dbg !4357
  %matchLength65 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4358
  %68 = load i64, ptr %matchLength65, align 8, !dbg !4358
  call void @ZSTD_wildcopy(ptr noundef %66, ptr noundef %67, i64 noundef %68, i32 noundef 0) #13, !dbg !4359
  %69 = load i64, ptr %sequenceLength, align 8, !dbg !4360
  store i64 %69, ptr %retval, align 8, !dbg !4361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4361

if.end66:                                         ; preds = %if.end57
  %offset67 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4362
  %70 = load i64, ptr %offset67, align 8, !dbg !4362
  call void @ZSTD_overlapCopy8(ptr noundef %op.addr, ptr noundef %match, i64 noundef %70) #13, !dbg !4363
  %matchLength68 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4364
  %71 = load i64, ptr %matchLength68, align 8, !dbg !4364
  %cmp69 = icmp ugt i64 %71, 8, !dbg !4366
  br i1 %cmp69, label %if.then71, label %if.end74, !dbg !4367

if.then71:                                        ; preds = %if.end66
  %72 = load ptr, ptr %op.addr, align 8, !dbg !4368
  %73 = load ptr, ptr %match, align 8, !dbg !4370
  %matchLength72 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4371
  %74 = load i64, ptr %matchLength72, align 8, !dbg !4371
  %sub73 = sub i64 %74, 8, !dbg !4372
  call void @ZSTD_wildcopy(ptr noundef %72, ptr noundef %73, i64 noundef %sub73, i32 noundef 1) #13, !dbg !4373
  br label %if.end74, !dbg !4374

if.end74:                                         ; preds = %if.then71, %if.end66
  %75 = load i64, ptr %sequenceLength, align 8, !dbg !4375
  store i64 %75, ptr %retval, align 8, !dbg !4376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4376

cleanup:                                          ; preds = %if.end74, %if.then64, %if.then48, %if.then38, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #12, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 8, ptr %iLitEnd) #12, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 8, ptr %oMatchEnd) #12, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequenceLength) #12, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 8, ptr %oLitEnd) #12, !dbg !4377
  %76 = load i64, ptr %retval, align 8, !dbg !4377
  ret i64 %76, !dbg !4377
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @MEM_readLEST(ptr noundef %memPtr) #3 align 16 !dbg !4378 {
entry:
  %retval = alloca i64, align 8
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  %call = call i32 @MEM_32bits() #13, !dbg !4384
  %tobool = icmp ne i32 %call, 0, !dbg !4384
  br i1 %tobool, label %if.then, label %if.else, !dbg !4386

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !4387
  %call1 = call i32 @MEM_readLE32(ptr noundef %0) #13, !dbg !4388
  %conv = zext i32 %call1 to i64, !dbg !4389
  store i64 %conv, ptr %retval, align 8, !dbg !4390
  br label %return, !dbg !4390

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %memPtr.addr, align 8, !dbg !4391
  %call2 = call i64 @MEM_readLE64(ptr noundef %1) #13, !dbg !4392
  store i64 %call2, ptr %retval, align 8, !dbg !4393
  br label %return, !dbg !4393

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !4394
  ret i64 %2, !dbg !4394
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @MEM_readLE64(ptr noundef %memPtr) #3 align 16 !dbg !4395 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !4401
  %call = call i64 @get_unaligned_le64(ptr noundef %0) #13, !dbg !4402
  ret i64 %call, !dbg !4403
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_unaligned_le64(ptr noundef %p) #3 align 16 !dbg !221 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !225, metadata !DIExpression()), !dbg !4404
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #12, !dbg !4405
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !226, metadata !DIExpression()), !dbg !4405
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4405
  store ptr %0, ptr %__pptr, align 8, !dbg !4405
  %1 = load ptr, ptr %__pptr, align 8, !dbg !4405
  %x = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 0, !dbg !4405
  %2 = load i64, ptr %x, align 1, !dbg !4405
  store i64 %2, ptr %tmp, align 8, !dbg !4405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #12, !dbg !4406
  %3 = load i64, ptr %tmp, align 8, !dbg !4405
  ret i64 %3, !dbg !4407
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_readBits(ptr noundef %bitD, i32 noundef %nbBits) #9 align 16 !dbg !4408 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !4412, metadata !DIExpression()), !dbg !4415
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !4413, metadata !DIExpression()), !dbg !4416
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #12, !dbg !4417
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4414, metadata !DIExpression()), !dbg !4418
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !4419
  %1 = load i32, ptr %nbBits.addr, align 4, !dbg !4420
  %call = call i64 @BIT_lookBits(ptr noundef %0, i32 noundef %1) #13, !dbg !4421
  store i64 %call, ptr %value, align 8, !dbg !4418
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !4422
  %3 = load i32, ptr %nbBits.addr, align 4, !dbg !4423
  call void @BIT_skipBits(ptr noundef %2, i32 noundef %3) #13, !dbg !4424
  %4 = load i64, ptr %value, align 8, !dbg !4425
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #12, !dbg !4426
  ret i64 %4, !dbg !4427
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_lookBits(ptr noundef %bitD, i32 noundef %nbBits) #9 align 16 !dbg !4428 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !4434, metadata !DIExpression()), !dbg !4436
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !4435, metadata !DIExpression()), !dbg !4437
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !4438
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 0, !dbg !4439
  %1 = load i64, ptr %bitContainer, align 8, !dbg !4439
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !4440
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 1, !dbg !4441
  %3 = load i32, ptr %bitsConsumed, align 8, !dbg !4441
  %conv = zext i32 %3 to i64, !dbg !4440
  %sub = sub i64 64, %conv, !dbg !4442
  %4 = load i32, ptr %nbBits.addr, align 4, !dbg !4443
  %conv1 = zext i32 %4 to i64, !dbg !4443
  %sub2 = sub i64 %sub, %conv1, !dbg !4444
  %conv3 = trunc i64 %sub2 to i32, !dbg !4445
  %5 = load i32, ptr %nbBits.addr, align 4, !dbg !4446
  %call = call i64 @BIT_getMiddleBits(i64 noundef %1, i32 noundef %conv3, i32 noundef %5) #13, !dbg !4447
  ret i64 %call, !dbg !4448
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @BIT_skipBits(ptr noundef %bitD, i32 noundef %nbBits) #9 align 16 !dbg !4449 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !4453, metadata !DIExpression()), !dbg !4455
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !4454, metadata !DIExpression()), !dbg !4456
  %0 = load i32, ptr %nbBits.addr, align 4, !dbg !4457
  %1 = load ptr, ptr %bitD.addr, align 8, !dbg !4458
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %1, i32 0, i32 1, !dbg !4459
  %2 = load i32, ptr %bitsConsumed, align 8, !dbg !4460
  %add = add i32 %2, %0, !dbg !4460
  store i32 %add, ptr %bitsConsumed, align 8, !dbg !4460
  ret void, !dbg !4461
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_getMiddleBits(i64 noundef %bitContainer, i32 noundef %start, i32 noundef %nbBits) #9 align 16 !dbg !4462 {
entry:
  %bitContainer.addr = alloca i64, align 8
  %start.addr = alloca i32, align 4
  %nbBits.addr = alloca i32, align 4
  %regMask = alloca i32, align 4
  store i64 %bitContainer, ptr %bitContainer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitContainer.addr, metadata !4466, metadata !DIExpression()), !dbg !4470
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4467, metadata !DIExpression()), !dbg !4471
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !4468, metadata !DIExpression()), !dbg !4472
  call void @llvm.lifetime.start.p0(i64 4, ptr %regMask) #12, !dbg !4473
  call void @llvm.dbg.declare(metadata ptr %regMask, metadata !4469, metadata !DIExpression()), !dbg !4474
  store i32 63, ptr %regMask, align 4, !dbg !4474
  %0 = load i64, ptr %bitContainer.addr, align 8, !dbg !4475
  %1 = load i32, ptr %start.addr, align 4, !dbg !4476
  %and = and i32 %1, 63, !dbg !4477
  %sh_prom = zext i32 %and to i64, !dbg !4478
  %shr = lshr i64 %0, %sh_prom, !dbg !4478
  %2 = load i32, ptr %nbBits.addr, align 4, !dbg !4479
  %sh_prom1 = zext i32 %2 to i64, !dbg !4480
  %shl = shl i64 1, %sh_prom1, !dbg !4480
  %sub = sub i64 %shl, 1, !dbg !4481
  %and2 = and i64 %shr, %sub, !dbg !4482
  call void @llvm.lifetime.end.p0(i64 4, ptr %regMask) #12, !dbg !4483
  ret i64 %and2, !dbg !4484
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_reloadDStreamFast(ptr noundef %bitD) #3 align 16 !dbg !4485 {
entry:
  %retval = alloca i32, align 4
  %bitD.addr = alloca ptr, align 8
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !4489
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 2, !dbg !4489
  %1 = load ptr, ptr %ptr, align 8, !dbg !4489
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !4489
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 4, !dbg !4489
  %3 = load ptr, ptr %limitPtr, align 8, !dbg !4489
  %cmp = icmp ult ptr %1, %3, !dbg !4489
  %conv = zext i1 %cmp to i32, !dbg !4489
  %conv1 = sext i32 %conv to i64, !dbg !4489
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !4489
  %tobool = icmp ne i64 %expval, 0, !dbg !4489
  br i1 %tobool, label %if.then, label %if.end, !dbg !4491

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !4492
  br label %return, !dbg !4492

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !4493
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 1, !dbg !4494
  %5 = load i32, ptr %bitsConsumed, align 8, !dbg !4494
  %shr = lshr i32 %5, 3, !dbg !4495
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !4496
  %ptr2 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2, !dbg !4497
  %7 = load ptr, ptr %ptr2, align 8, !dbg !4498
  %idx.ext = zext i32 %shr to i64, !dbg !4498
  %idx.neg = sub i64 0, %idx.ext, !dbg !4498
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.neg, !dbg !4498
  store ptr %add.ptr, ptr %ptr2, align 8, !dbg !4498
  %8 = load ptr, ptr %bitD.addr, align 8, !dbg !4499
  %bitsConsumed3 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i32 0, i32 1, !dbg !4500
  %9 = load i32, ptr %bitsConsumed3, align 8, !dbg !4501
  %and = and i32 %9, 7, !dbg !4501
  store i32 %and, ptr %bitsConsumed3, align 8, !dbg !4501
  %10 = load ptr, ptr %bitD.addr, align 8, !dbg !4502
  %ptr4 = getelementptr inbounds %struct.BIT_DStream_t, ptr %10, i32 0, i32 2, !dbg !4503
  %11 = load ptr, ptr %ptr4, align 8, !dbg !4503
  %call = call i64 @MEM_readLEST(ptr noundef %11) #13, !dbg !4504
  %12 = load ptr, ptr %bitD.addr, align 8, !dbg !4505
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i32 0, i32 0, !dbg !4506
  store i64 %call, ptr %bitContainer, align 8, !dbg !4507
  store i32 0, ptr %retval, align 4, !dbg !4508
  br label %return, !dbg !4508

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !4509
  ret i32 %13, !dbg !4509
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_readBitsFast(ptr noundef %bitD, i32 noundef %nbBits) #3 align 16 !dbg !4510 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !4512, metadata !DIExpression()), !dbg !4515
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !4513, metadata !DIExpression()), !dbg !4516
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #12, !dbg !4517
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4514, metadata !DIExpression()), !dbg !4518
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !4519
  %1 = load i32, ptr %nbBits.addr, align 4, !dbg !4520
  %call = call i64 @BIT_lookBitsFast(ptr noundef %0, i32 noundef %1) #13, !dbg !4521
  store i64 %call, ptr %value, align 8, !dbg !4518
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !4522
  %3 = load i32, ptr %nbBits.addr, align 4, !dbg !4523
  call void @BIT_skipBits(ptr noundef %2, i32 noundef %3) #13, !dbg !4524
  %4 = load i64, ptr %value, align 8, !dbg !4525
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #12, !dbg !4526
  ret i64 %4, !dbg !4527
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_updateFseStateWithDInfo(ptr noundef %DStatePtr, ptr noundef %bitD, i16 noundef zeroext %nextState, i32 noundef %nbBits) #9 align 16 !dbg !4528 {
entry:
  %DStatePtr.addr = alloca ptr, align 8
  %bitD.addr = alloca ptr, align 8
  %nextState.addr = alloca i16, align 2
  %nbBits.addr = alloca i32, align 4
  %lowBits = alloca i64, align 8
  store ptr %DStatePtr, ptr %DStatePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DStatePtr.addr, metadata !4532, metadata !DIExpression()), !dbg !4537
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !4533, metadata !DIExpression()), !dbg !4538
  store i16 %nextState, ptr %nextState.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nextState.addr, metadata !4534, metadata !DIExpression()), !dbg !4539
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !4535, metadata !DIExpression()), !dbg !4540
  call void @llvm.lifetime.start.p0(i64 8, ptr %lowBits) #12, !dbg !4541
  call void @llvm.dbg.declare(metadata ptr %lowBits, metadata !4536, metadata !DIExpression()), !dbg !4542
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !4543
  %1 = load i32, ptr %nbBits.addr, align 4, !dbg !4544
  %call = call i64 @BIT_readBits(ptr noundef %0, i32 noundef %1) #13, !dbg !4545
  store i64 %call, ptr %lowBits, align 8, !dbg !4542
  %2 = load i16, ptr %nextState.addr, align 2, !dbg !4546
  %conv = zext i16 %2 to i64, !dbg !4546
  %3 = load i64, ptr %lowBits, align 8, !dbg !4547
  %add = add i64 %conv, %3, !dbg !4548
  %4 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !4549
  %state = getelementptr inbounds %struct.ZSTD_fseState, ptr %4, i32 0, i32 0, !dbg !4550
  store i64 %add, ptr %state, align 8, !dbg !4551
  call void @llvm.lifetime.end.p0(i64 8, ptr %lowBits) #12, !dbg !4552
  ret void, !dbg !4552
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_lookBitsFast(ptr noundef %bitD, i32 noundef %nbBits) #3 align 16 !dbg !4553 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %regMask = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !4555, metadata !DIExpression()), !dbg !4558
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !4556, metadata !DIExpression()), !dbg !4559
  call void @llvm.lifetime.start.p0(i64 4, ptr %regMask) #12, !dbg !4560
  call void @llvm.dbg.declare(metadata ptr %regMask, metadata !4557, metadata !DIExpression()), !dbg !4561
  store i32 63, ptr %regMask, align 4, !dbg !4561
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !4562
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 0, !dbg !4563
  %1 = load i64, ptr %bitContainer, align 8, !dbg !4563
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !4564
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 1, !dbg !4565
  %3 = load i32, ptr %bitsConsumed, align 8, !dbg !4565
  %and = and i32 %3, 63, !dbg !4566
  %sh_prom = zext i32 %and to i64, !dbg !4567
  %shl = shl i64 %1, %sh_prom, !dbg !4567
  %4 = load i32, ptr %nbBits.addr, align 4, !dbg !4568
  %sub = sub i32 64, %4, !dbg !4569
  %and1 = and i32 %sub, 63, !dbg !4570
  %sh_prom2 = zext i32 %and1 to i64, !dbg !4571
  %shr = lshr i64 %shl, %sh_prom2, !dbg !4571
  call void @llvm.lifetime.end.p0(i64 4, ptr %regMask) #12, !dbg !4572
  ret i64 %shr, !dbg !4573
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_wildcopy(ptr noundef %dst, ptr noundef %src, i64 noundef %length, i32 noundef %ovtype) #9 align 16 !dbg !4574 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %ovtype.addr = alloca i32, align 4
  %diff = alloca i64, align 8
  %ip = alloca ptr, align 8
  %op = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4580, metadata !DIExpression()), !dbg !4588
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4581, metadata !DIExpression()), !dbg !4589
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4582, metadata !DIExpression()), !dbg !4590
  store i32 %ovtype, ptr %ovtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ovtype.addr, metadata !4583, metadata !DIExpression()), !dbg !4591
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #12, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !4584, metadata !DIExpression()), !dbg !4593
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4594
  %1 = load ptr, ptr %src.addr, align 8, !dbg !4595
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !4596
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !4596
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4596
  store i64 %sub.ptr.sub, ptr %diff, align 8, !dbg !4593
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #12, !dbg !4597
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !4585, metadata !DIExpression()), !dbg !4598
  %2 = load ptr, ptr %src.addr, align 8, !dbg !4599
  store ptr %2, ptr %ip, align 8, !dbg !4598
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #12, !dbg !4600
  call void @llvm.dbg.declare(metadata ptr %op, metadata !4586, metadata !DIExpression()), !dbg !4601
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !4602
  store ptr %3, ptr %op, align 8, !dbg !4601
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #12, !dbg !4603
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !4587, metadata !DIExpression()), !dbg !4604
  %4 = load ptr, ptr %op, align 8, !dbg !4605
  %5 = load i64, ptr %length.addr, align 8, !dbg !4606
  %add.ptr = getelementptr i8, ptr %4, i64 %5, !dbg !4607
  store ptr %add.ptr, ptr %oend, align 8, !dbg !4604
  %6 = load i32, ptr %ovtype.addr, align 4, !dbg !4608
  %cmp = icmp eq i32 %6, 1, !dbg !4610
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4611

land.lhs.true:                                    ; preds = %entry
  %7 = load i64, ptr %diff, align 8, !dbg !4612
  %cmp1 = icmp slt i64 %7, 16, !dbg !4613
  br i1 %cmp1, label %if.then, label %if.else, !dbg !4614

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !4615

do.body:                                          ; preds = %do.cond, %if.then
  %8 = load ptr, ptr %op, align 8, !dbg !4617
  %9 = load ptr, ptr %ip, align 8, !dbg !4617
  call void @ZSTD_copy8(ptr noundef %8, ptr noundef %9) #13, !dbg !4617
  %10 = load ptr, ptr %op, align 8, !dbg !4617
  %add.ptr2 = getelementptr i8, ptr %10, i64 8, !dbg !4617
  store ptr %add.ptr2, ptr %op, align 8, !dbg !4617
  %11 = load ptr, ptr %ip, align 8, !dbg !4617
  %add.ptr3 = getelementptr i8, ptr %11, i64 8, !dbg !4617
  store ptr %add.ptr3, ptr %ip, align 8, !dbg !4617
  br label %do.cond, !dbg !4620

do.cond:                                          ; preds = %do.body
  %12 = load ptr, ptr %op, align 8, !dbg !4621
  %13 = load ptr, ptr %oend, align 8, !dbg !4622
  %cmp4 = icmp ult ptr %12, %13, !dbg !4623
  br i1 %cmp4, label %do.body, label %do.end, !dbg !4620, !llvm.loop !4624

do.end:                                           ; preds = %do.cond
  br label %if.end17, !dbg !4626

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load ptr, ptr %op, align 8, !dbg !4627
  %15 = load ptr, ptr %ip, align 8, !dbg !4629
  call void @ZSTD_copy16(ptr noundef %14, ptr noundef %15) #13, !dbg !4630
  %16 = load i64, ptr %length.addr, align 8, !dbg !4631
  %cmp5 = icmp sge i64 16, %16, !dbg !4633
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !4634

if.then6:                                         ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4635

if.end:                                           ; preds = %if.else
  %17 = load ptr, ptr %op, align 8, !dbg !4636
  %add.ptr7 = getelementptr i8, ptr %17, i64 16, !dbg !4636
  store ptr %add.ptr7, ptr %op, align 8, !dbg !4636
  %18 = load ptr, ptr %ip, align 8, !dbg !4637
  %add.ptr8 = getelementptr i8, ptr %18, i64 16, !dbg !4637
  store ptr %add.ptr8, ptr %ip, align 8, !dbg !4637
  br label %do.body9, !dbg !4638

do.body9:                                         ; preds = %do.cond14, %if.end
  %19 = load ptr, ptr %op, align 8, !dbg !4639
  %20 = load ptr, ptr %ip, align 8, !dbg !4639
  call void @ZSTD_copy16(ptr noundef %19, ptr noundef %20) #13, !dbg !4639
  %21 = load ptr, ptr %op, align 8, !dbg !4639
  %add.ptr10 = getelementptr i8, ptr %21, i64 16, !dbg !4639
  store ptr %add.ptr10, ptr %op, align 8, !dbg !4639
  %22 = load ptr, ptr %ip, align 8, !dbg !4639
  %add.ptr11 = getelementptr i8, ptr %22, i64 16, !dbg !4639
  store ptr %add.ptr11, ptr %ip, align 8, !dbg !4639
  %23 = load ptr, ptr %op, align 8, !dbg !4642
  %24 = load ptr, ptr %ip, align 8, !dbg !4642
  call void @ZSTD_copy16(ptr noundef %23, ptr noundef %24) #13, !dbg !4642
  %25 = load ptr, ptr %op, align 8, !dbg !4642
  %add.ptr12 = getelementptr i8, ptr %25, i64 16, !dbg !4642
  store ptr %add.ptr12, ptr %op, align 8, !dbg !4642
  %26 = load ptr, ptr %ip, align 8, !dbg !4642
  %add.ptr13 = getelementptr i8, ptr %26, i64 16, !dbg !4642
  store ptr %add.ptr13, ptr %ip, align 8, !dbg !4642
  br label %do.cond14, !dbg !4644

do.cond14:                                        ; preds = %do.body9
  %27 = load ptr, ptr %op, align 8, !dbg !4645
  %28 = load ptr, ptr %oend, align 8, !dbg !4646
  %cmp15 = icmp ult ptr %27, %28, !dbg !4647
  br i1 %cmp15, label %do.body9, label %do.end16, !dbg !4644, !llvm.loop !4648

do.end16:                                         ; preds = %do.cond14
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4650
  br label %cleanup, !dbg !4650

cleanup:                                          ; preds = %if.end17, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #12, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #12, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #12, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #12, !dbg !4650
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4650

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_copy8(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !4651 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4655, metadata !DIExpression()), !dbg !4657
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4656, metadata !DIExpression()), !dbg !4658
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4659
  %1 = load ptr, ptr %src.addr, align 8, !dbg !4659
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 8, i1 false), !dbg !4659
  ret void, !dbg !4660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_copy16(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !4661 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4663, metadata !DIExpression()), !dbg !4665
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4664, metadata !DIExpression()), !dbg !4666
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4667
  %1 = load ptr, ptr %src.addr, align 8, !dbg !4667
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 16, i1 false), !dbg !4667
  ret void, !dbg !4668
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_execSequenceEnd(ptr noundef %op, ptr noundef %oend, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %litPtr, ptr noundef %litLimit, ptr noundef %prefixStart, ptr noundef %virtualStart, ptr noundef %dictEnd) #11 align 16 !dbg !4669 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %oend.addr = alloca ptr, align 8
  %litPtr.addr = alloca ptr, align 8
  %litLimit.addr = alloca ptr, align 8
  %prefixStart.addr = alloca ptr, align 8
  %virtualStart.addr = alloca ptr, align 8
  %dictEnd.addr = alloca ptr, align 8
  %oLitEnd = alloca ptr, align 8
  %sequenceLength = alloca i64, align 8
  %iLitEnd = alloca ptr, align 8
  %match = alloca ptr, align 8
  %oend_w = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %length1 = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4671, metadata !DIExpression()), !dbg !4688
  store ptr %oend, ptr %oend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oend.addr, metadata !4672, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.declare(metadata ptr %sequence, metadata !4673, metadata !DIExpression()), !dbg !4690
  store ptr %litPtr, ptr %litPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litPtr.addr, metadata !4674, metadata !DIExpression()), !dbg !4691
  store ptr %litLimit, ptr %litLimit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litLimit.addr, metadata !4675, metadata !DIExpression()), !dbg !4692
  store ptr %prefixStart, ptr %prefixStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixStart.addr, metadata !4676, metadata !DIExpression()), !dbg !4693
  store ptr %virtualStart, ptr %virtualStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virtualStart.addr, metadata !4677, metadata !DIExpression()), !dbg !4694
  store ptr %dictEnd, ptr %dictEnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictEnd.addr, metadata !4678, metadata !DIExpression()), !dbg !4695
  call void @llvm.lifetime.start.p0(i64 8, ptr %oLitEnd) #12, !dbg !4696
  call void @llvm.dbg.declare(metadata ptr %oLitEnd, metadata !4679, metadata !DIExpression()), !dbg !4697
  %0 = load ptr, ptr %op.addr, align 8, !dbg !4698
  %litLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4699
  %1 = load i64, ptr %litLength, align 8, !dbg !4699
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !4700
  store ptr %add.ptr, ptr %oLitEnd, align 8, !dbg !4697
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequenceLength) #12, !dbg !4701
  call void @llvm.dbg.declare(metadata ptr %sequenceLength, metadata !4680, metadata !DIExpression()), !dbg !4702
  %litLength1 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4703
  %2 = load i64, ptr %litLength1, align 8, !dbg !4703
  %matchLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4704
  %3 = load i64, ptr %matchLength, align 8, !dbg !4704
  %add = add i64 %2, %3, !dbg !4705
  store i64 %add, ptr %sequenceLength, align 8, !dbg !4702
  call void @llvm.lifetime.start.p0(i64 8, ptr %iLitEnd) #12, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %iLitEnd, metadata !4681, metadata !DIExpression()), !dbg !4707
  %4 = load ptr, ptr %litPtr.addr, align 8, !dbg !4708
  %5 = load ptr, ptr %4, align 8, !dbg !4709
  %litLength2 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4710
  %6 = load i64, ptr %litLength2, align 8, !dbg !4710
  %add.ptr3 = getelementptr i8, ptr %5, i64 %6, !dbg !4711
  store ptr %add.ptr3, ptr %iLitEnd, align 8, !dbg !4707
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #12, !dbg !4712
  call void @llvm.dbg.declare(metadata ptr %match, metadata !4682, metadata !DIExpression()), !dbg !4713
  %7 = load ptr, ptr %oLitEnd, align 8, !dbg !4714
  %offset = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4715
  %8 = load i64, ptr %offset, align 8, !dbg !4715
  %idx.neg = sub i64 0, %8, !dbg !4716
  %add.ptr4 = getelementptr i8, ptr %7, i64 %idx.neg, !dbg !4716
  store ptr %add.ptr4, ptr %match, align 8, !dbg !4713
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend_w) #12, !dbg !4717
  call void @llvm.dbg.declare(metadata ptr %oend_w, metadata !4683, metadata !DIExpression()), !dbg !4718
  %9 = load ptr, ptr %oend.addr, align 8, !dbg !4719
  %add.ptr5 = getelementptr i8, ptr %9, i64 -32, !dbg !4720
  store ptr %add.ptr5, ptr %oend_w, align 8, !dbg !4718
  %10 = load i64, ptr %sequenceLength, align 8, !dbg !4721
  %11 = load ptr, ptr %oend.addr, align 8, !dbg !4721
  %12 = load ptr, ptr %op.addr, align 8, !dbg !4721
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64, !dbg !4721
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i64, !dbg !4721
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4721
  %cmp = icmp ugt i64 %10, %sub.ptr.sub, !dbg !4721
  br i1 %cmp, label %if.then, label %if.end, !dbg !4723

if.then:                                          ; preds = %entry
  store i64 -70, ptr %retval, align 8, !dbg !4724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4724

if.end:                                           ; preds = %entry
  %litLength6 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4726
  %13 = load i64, ptr %litLength6, align 8, !dbg !4726
  %14 = load ptr, ptr %litLimit.addr, align 8, !dbg !4726
  %15 = load ptr, ptr %litPtr.addr, align 8, !dbg !4726
  %16 = load ptr, ptr %15, align 8, !dbg !4726
  %sub.ptr.lhs.cast7 = ptrtoint ptr %14 to i64, !dbg !4726
  %sub.ptr.rhs.cast8 = ptrtoint ptr %16 to i64, !dbg !4726
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8, !dbg !4726
  %cmp10 = icmp ugt i64 %13, %sub.ptr.sub9, !dbg !4726
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4728

if.then11:                                        ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !4729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4729

if.end12:                                         ; preds = %if.end
  %17 = load ptr, ptr %op.addr, align 8, !dbg !4731
  %18 = load ptr, ptr %oend_w, align 8, !dbg !4732
  %19 = load ptr, ptr %litPtr.addr, align 8, !dbg !4733
  %20 = load ptr, ptr %19, align 8, !dbg !4734
  %litLength13 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4735
  %21 = load i64, ptr %litLength13, align 8, !dbg !4735
  call void @ZSTD_safecopy(ptr noundef %17, ptr noundef %18, ptr noundef %20, i64 noundef %21, i32 noundef 0) #13, !dbg !4736
  %22 = load ptr, ptr %oLitEnd, align 8, !dbg !4737
  store ptr %22, ptr %op.addr, align 8, !dbg !4738
  %23 = load ptr, ptr %iLitEnd, align 8, !dbg !4739
  %24 = load ptr, ptr %litPtr.addr, align 8, !dbg !4740
  store ptr %23, ptr %24, align 8, !dbg !4741
  %offset14 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4742
  %25 = load i64, ptr %offset14, align 8, !dbg !4742
  %26 = load ptr, ptr %oLitEnd, align 8, !dbg !4743
  %27 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4744
  %sub.ptr.lhs.cast15 = ptrtoint ptr %26 to i64, !dbg !4745
  %sub.ptr.rhs.cast16 = ptrtoint ptr %27 to i64, !dbg !4745
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16, !dbg !4745
  %cmp18 = icmp ugt i64 %25, %sub.ptr.sub17, !dbg !4746
  br i1 %cmp18, label %if.then19, label %if.end43, !dbg !4747

if.then19:                                        ; preds = %if.end12
  %offset20 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !4748
  %28 = load i64, ptr %offset20, align 8, !dbg !4748
  %29 = load ptr, ptr %oLitEnd, align 8, !dbg !4748
  %30 = load ptr, ptr %virtualStart.addr, align 8, !dbg !4748
  %sub.ptr.lhs.cast21 = ptrtoint ptr %29 to i64, !dbg !4748
  %sub.ptr.rhs.cast22 = ptrtoint ptr %30 to i64, !dbg !4748
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22, !dbg !4748
  %cmp24 = icmp ugt i64 %28, %sub.ptr.sub23, !dbg !4748
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4750

if.then25:                                        ; preds = %if.then19
  store i64 -20, ptr %retval, align 8, !dbg !4751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4751

if.end26:                                         ; preds = %if.then19
  %31 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4753
  %32 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4754
  %33 = load ptr, ptr %match, align 8, !dbg !4755
  %sub.ptr.lhs.cast27 = ptrtoint ptr %32 to i64, !dbg !4756
  %sub.ptr.rhs.cast28 = ptrtoint ptr %33 to i64, !dbg !4756
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28, !dbg !4756
  %idx.neg30 = sub i64 0, %sub.ptr.sub29, !dbg !4757
  %add.ptr31 = getelementptr i8, ptr %31, i64 %idx.neg30, !dbg !4757
  store ptr %add.ptr31, ptr %match, align 8, !dbg !4758
  %34 = load ptr, ptr %match, align 8, !dbg !4759
  %matchLength32 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4761
  %35 = load i64, ptr %matchLength32, align 8, !dbg !4761
  %add.ptr33 = getelementptr i8, ptr %34, i64 %35, !dbg !4762
  %36 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4763
  %cmp34 = icmp ule ptr %add.ptr33, %36, !dbg !4764
  br i1 %cmp34, label %if.then35, label %if.end37, !dbg !4765

if.then35:                                        ; preds = %if.end26
  %37 = load ptr, ptr %oLitEnd, align 8, !dbg !4766
  %38 = load ptr, ptr %match, align 8, !dbg !4766
  %matchLength36 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4766
  %39 = load i64, ptr %matchLength36, align 8, !dbg !4766
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %37, ptr align 1 %38, i64 %39, i1 false), !dbg !4766
  %40 = load i64, ptr %sequenceLength, align 8, !dbg !4768
  store i64 %40, ptr %retval, align 8, !dbg !4769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4769

if.end37:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %length1) #12, !dbg !4770
  call void @llvm.dbg.declare(metadata ptr %length1, metadata !4684, metadata !DIExpression()), !dbg !4771
  %41 = load ptr, ptr %dictEnd.addr, align 8, !dbg !4772
  %42 = load ptr, ptr %match, align 8, !dbg !4773
  %sub.ptr.lhs.cast38 = ptrtoint ptr %41 to i64, !dbg !4774
  %sub.ptr.rhs.cast39 = ptrtoint ptr %42 to i64, !dbg !4774
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39, !dbg !4774
  store i64 %sub.ptr.sub40, ptr %length1, align 8, !dbg !4771
  %43 = load ptr, ptr %oLitEnd, align 8, !dbg !4775
  %44 = load ptr, ptr %match, align 8, !dbg !4775
  %45 = load i64, ptr %length1, align 8, !dbg !4775
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %43, ptr align 1 %44, i64 %45, i1 false), !dbg !4775
  %46 = load ptr, ptr %oLitEnd, align 8, !dbg !4776
  %47 = load i64, ptr %length1, align 8, !dbg !4777
  %add.ptr41 = getelementptr i8, ptr %46, i64 %47, !dbg !4778
  store ptr %add.ptr41, ptr %op.addr, align 8, !dbg !4779
  %48 = load i64, ptr %length1, align 8, !dbg !4780
  %matchLength42 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4781
  %49 = load i64, ptr %matchLength42, align 8, !dbg !4782
  %sub = sub i64 %49, %48, !dbg !4782
  store i64 %sub, ptr %matchLength42, align 8, !dbg !4782
  %50 = load ptr, ptr %prefixStart.addr, align 8, !dbg !4783
  store ptr %50, ptr %match, align 8, !dbg !4784
  call void @llvm.lifetime.end.p0(i64 8, ptr %length1) #12, !dbg !4785
  br label %if.end43, !dbg !4786

if.end43:                                         ; preds = %if.end37, %if.end12
  %51 = load ptr, ptr %op.addr, align 8, !dbg !4787
  %52 = load ptr, ptr %oend_w, align 8, !dbg !4788
  %53 = load ptr, ptr %match, align 8, !dbg !4789
  %matchLength44 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4790
  %54 = load i64, ptr %matchLength44, align 8, !dbg !4790
  call void @ZSTD_safecopy(ptr noundef %51, ptr noundef %52, ptr noundef %53, i64 noundef %54, i32 noundef 1) #13, !dbg !4791
  %55 = load i64, ptr %sequenceLength, align 8, !dbg !4792
  store i64 %55, ptr %retval, align 8, !dbg !4793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4793

cleanup:                                          ; preds = %if.end43, %if.then35, %if.then25, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend_w) #12, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #12, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %iLitEnd) #12, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequenceLength) #12, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 8, ptr %oLitEnd) #12, !dbg !4794
  %56 = load i64, ptr %retval, align 8, !dbg !4794
  ret i64 %56, !dbg !4794
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_overlapCopy8(ptr noundef %op, ptr noundef %ip, i64 noundef %offset) #9 align 16 !dbg !284 {
entry:
  %op.addr = alloca ptr, align 8
  %ip.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %sub2 = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !290, metadata !DIExpression()), !dbg !4795
  store ptr %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !291, metadata !DIExpression()), !dbg !4796
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !292, metadata !DIExpression()), !dbg !4797
  %0 = load i64, ptr %offset.addr, align 8, !dbg !4798
  %cmp = icmp ult i64 %0, 8, !dbg !4799
  br i1 %cmp, label %if.then, label %if.else, !dbg !4800

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %sub2) #12, !dbg !4801
  call void @llvm.dbg.declare(metadata ptr %sub2, metadata !293, metadata !DIExpression()), !dbg !4802
  %1 = load i64, ptr %offset.addr, align 8, !dbg !4803
  %arrayidx = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1, !dbg !4804
  %2 = load i32, ptr %arrayidx, align 4, !dbg !4804
  store i32 %2, ptr %sub2, align 4, !dbg !4802
  %3 = load ptr, ptr %ip.addr, align 8, !dbg !4805
  %4 = load ptr, ptr %3, align 8, !dbg !4806
  %arrayidx1 = getelementptr i8, ptr %4, i64 0, !dbg !4807
  %5 = load i8, ptr %arrayidx1, align 1, !dbg !4807
  %6 = load ptr, ptr %op.addr, align 8, !dbg !4808
  %7 = load ptr, ptr %6, align 8, !dbg !4809
  %arrayidx2 = getelementptr i8, ptr %7, i64 0, !dbg !4810
  store i8 %5, ptr %arrayidx2, align 1, !dbg !4811
  %8 = load ptr, ptr %ip.addr, align 8, !dbg !4812
  %9 = load ptr, ptr %8, align 8, !dbg !4813
  %arrayidx3 = getelementptr i8, ptr %9, i64 1, !dbg !4814
  %10 = load i8, ptr %arrayidx3, align 1, !dbg !4814
  %11 = load ptr, ptr %op.addr, align 8, !dbg !4815
  %12 = load ptr, ptr %11, align 8, !dbg !4816
  %arrayidx4 = getelementptr i8, ptr %12, i64 1, !dbg !4817
  store i8 %10, ptr %arrayidx4, align 1, !dbg !4818
  %13 = load ptr, ptr %ip.addr, align 8, !dbg !4819
  %14 = load ptr, ptr %13, align 8, !dbg !4820
  %arrayidx5 = getelementptr i8, ptr %14, i64 2, !dbg !4821
  %15 = load i8, ptr %arrayidx5, align 1, !dbg !4821
  %16 = load ptr, ptr %op.addr, align 8, !dbg !4822
  %17 = load ptr, ptr %16, align 8, !dbg !4823
  %arrayidx6 = getelementptr i8, ptr %17, i64 2, !dbg !4824
  store i8 %15, ptr %arrayidx6, align 1, !dbg !4825
  %18 = load ptr, ptr %ip.addr, align 8, !dbg !4826
  %19 = load ptr, ptr %18, align 8, !dbg !4827
  %arrayidx7 = getelementptr i8, ptr %19, i64 3, !dbg !4828
  %20 = load i8, ptr %arrayidx7, align 1, !dbg !4828
  %21 = load ptr, ptr %op.addr, align 8, !dbg !4829
  %22 = load ptr, ptr %21, align 8, !dbg !4830
  %arrayidx8 = getelementptr i8, ptr %22, i64 3, !dbg !4831
  store i8 %20, ptr %arrayidx8, align 1, !dbg !4832
  %23 = load i64, ptr %offset.addr, align 8, !dbg !4833
  %arrayidx9 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %23, !dbg !4834
  %24 = load i32, ptr %arrayidx9, align 4, !dbg !4834
  %25 = load ptr, ptr %ip.addr, align 8, !dbg !4835
  %26 = load ptr, ptr %25, align 8, !dbg !4836
  %idx.ext = zext i32 %24 to i64, !dbg !4836
  %add.ptr = getelementptr i8, ptr %26, i64 %idx.ext, !dbg !4836
  store ptr %add.ptr, ptr %25, align 8, !dbg !4836
  %27 = load ptr, ptr %op.addr, align 8, !dbg !4837
  %28 = load ptr, ptr %27, align 8, !dbg !4838
  %add.ptr10 = getelementptr i8, ptr %28, i64 4, !dbg !4839
  %29 = load ptr, ptr %ip.addr, align 8, !dbg !4840
  %30 = load ptr, ptr %29, align 8, !dbg !4841
  call void @ZSTD_copy4(ptr noundef %add.ptr10, ptr noundef %30) #13, !dbg !4842
  %31 = load i32, ptr %sub2, align 4, !dbg !4843
  %32 = load ptr, ptr %ip.addr, align 8, !dbg !4844
  %33 = load ptr, ptr %32, align 8, !dbg !4845
  %idx.ext11 = sext i32 %31 to i64, !dbg !4845
  %idx.neg = sub i64 0, %idx.ext11, !dbg !4845
  %add.ptr12 = getelementptr i8, ptr %33, i64 %idx.neg, !dbg !4845
  store ptr %add.ptr12, ptr %32, align 8, !dbg !4845
  call void @llvm.lifetime.end.p0(i64 4, ptr %sub2) #12, !dbg !4846
  br label %if.end, !dbg !4847

if.else:                                          ; preds = %entry
  %34 = load ptr, ptr %op.addr, align 8, !dbg !4848
  %35 = load ptr, ptr %34, align 8, !dbg !4850
  %36 = load ptr, ptr %ip.addr, align 8, !dbg !4851
  %37 = load ptr, ptr %36, align 8, !dbg !4852
  call void @ZSTD_copy8(ptr noundef %35, ptr noundef %37) #13, !dbg !4853
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load ptr, ptr %ip.addr, align 8, !dbg !4854
  %39 = load ptr, ptr %38, align 8, !dbg !4855
  %add.ptr13 = getelementptr i8, ptr %39, i64 8, !dbg !4855
  store ptr %add.ptr13, ptr %38, align 8, !dbg !4855
  %40 = load ptr, ptr %op.addr, align 8, !dbg !4856
  %41 = load ptr, ptr %40, align 8, !dbg !4857
  %add.ptr14 = getelementptr i8, ptr %41, i64 8, !dbg !4857
  store ptr %add.ptr14, ptr %40, align 8, !dbg !4857
  ret void, !dbg !4858
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_safecopy(ptr noundef %op, ptr noundef %oend_w, ptr noundef %ip, i64 noundef %length, i32 noundef %ovtype) #0 align 16 !dbg !4859 {
entry:
  %op.addr = alloca ptr, align 8
  %oend_w.addr = alloca ptr, align 8
  %ip.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %ovtype.addr = alloca i32, align 4
  %diff = alloca i64, align 8
  %oend = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4863, metadata !DIExpression()), !dbg !4870
  store ptr %oend_w, ptr %oend_w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oend_w.addr, metadata !4864, metadata !DIExpression()), !dbg !4871
  store ptr %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !4865, metadata !DIExpression()), !dbg !4872
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4866, metadata !DIExpression()), !dbg !4873
  store i32 %ovtype, ptr %ovtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ovtype.addr, metadata !4867, metadata !DIExpression()), !dbg !4874
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #12, !dbg !4875
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !4868, metadata !DIExpression()), !dbg !4876
  %0 = load ptr, ptr %op.addr, align 8, !dbg !4877
  %1 = load ptr, ptr %ip.addr, align 8, !dbg !4878
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !4879
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !4879
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4879
  store i64 %sub.ptr.sub, ptr %diff, align 8, !dbg !4876
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #12, !dbg !4880
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !4869, metadata !DIExpression()), !dbg !4881
  %2 = load ptr, ptr %op.addr, align 8, !dbg !4882
  %3 = load i64, ptr %length.addr, align 8, !dbg !4883
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !4884
  store ptr %add.ptr, ptr %oend, align 8, !dbg !4881
  %4 = load i64, ptr %length.addr, align 8, !dbg !4885
  %cmp = icmp slt i64 %4, 8, !dbg !4887
  br i1 %cmp, label %if.then, label %if.end, !dbg !4888

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !4889

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load ptr, ptr %op.addr, align 8, !dbg !4891
  %6 = load ptr, ptr %oend, align 8, !dbg !4892
  %cmp1 = icmp ult ptr %5, %6, !dbg !4893
  br i1 %cmp1, label %while.body, label %while.end, !dbg !4889

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %ip.addr, align 8, !dbg !4894
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !4894
  store ptr %incdec.ptr, ptr %ip.addr, align 8, !dbg !4894
  %8 = load i8, ptr %7, align 1, !dbg !4895
  %9 = load ptr, ptr %op.addr, align 8, !dbg !4896
  %incdec.ptr2 = getelementptr i8, ptr %9, i32 1, !dbg !4896
  store ptr %incdec.ptr2, ptr %op.addr, align 8, !dbg !4896
  store i8 %8, ptr %9, align 1, !dbg !4897
  br label %while.cond, !dbg !4889, !llvm.loop !4898

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4899

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %ovtype.addr, align 4, !dbg !4900
  %cmp3 = icmp eq i32 %10, 1, !dbg !4902
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4903

if.then4:                                         ; preds = %if.end
  %11 = load i64, ptr %diff, align 8, !dbg !4904
  call void @ZSTD_overlapCopy8(ptr noundef %op.addr, ptr noundef %ip.addr, i64 noundef %11) #13, !dbg !4906
  %12 = load i64, ptr %length.addr, align 8, !dbg !4907
  %sub = sub i64 %12, 8, !dbg !4907
  store i64 %sub, ptr %length.addr, align 8, !dbg !4907
  br label %if.end5, !dbg !4908

if.end5:                                          ; preds = %if.then4, %if.end
  %13 = load ptr, ptr %oend, align 8, !dbg !4909
  %14 = load ptr, ptr %oend_w.addr, align 8, !dbg !4911
  %cmp6 = icmp ule ptr %13, %14, !dbg !4912
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4913

if.then7:                                         ; preds = %if.end5
  %15 = load ptr, ptr %op.addr, align 8, !dbg !4914
  %16 = load ptr, ptr %ip.addr, align 8, !dbg !4916
  %17 = load i64, ptr %length.addr, align 8, !dbg !4917
  %18 = load i32, ptr %ovtype.addr, align 4, !dbg !4918
  call void @ZSTD_wildcopy(ptr noundef %15, ptr noundef %16, i64 noundef %17, i32 noundef %18) #13, !dbg !4919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4920

if.end8:                                          ; preds = %if.end5
  %19 = load ptr, ptr %op.addr, align 8, !dbg !4921
  %20 = load ptr, ptr %oend_w.addr, align 8, !dbg !4923
  %cmp9 = icmp ule ptr %19, %20, !dbg !4924
  br i1 %cmp9, label %if.then10, label %if.end22, !dbg !4925

if.then10:                                        ; preds = %if.end8
  %21 = load ptr, ptr %op.addr, align 8, !dbg !4926
  %22 = load ptr, ptr %ip.addr, align 8, !dbg !4928
  %23 = load ptr, ptr %oend_w.addr, align 8, !dbg !4929
  %24 = load ptr, ptr %op.addr, align 8, !dbg !4930
  %sub.ptr.lhs.cast11 = ptrtoint ptr %23 to i64, !dbg !4931
  %sub.ptr.rhs.cast12 = ptrtoint ptr %24 to i64, !dbg !4931
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12, !dbg !4931
  %25 = load i32, ptr %ovtype.addr, align 4, !dbg !4932
  call void @ZSTD_wildcopy(ptr noundef %21, ptr noundef %22, i64 noundef %sub.ptr.sub13, i32 noundef %25) #13, !dbg !4933
  %26 = load ptr, ptr %oend_w.addr, align 8, !dbg !4934
  %27 = load ptr, ptr %op.addr, align 8, !dbg !4935
  %sub.ptr.lhs.cast14 = ptrtoint ptr %26 to i64, !dbg !4936
  %sub.ptr.rhs.cast15 = ptrtoint ptr %27 to i64, !dbg !4936
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15, !dbg !4936
  %28 = load ptr, ptr %ip.addr, align 8, !dbg !4937
  %add.ptr17 = getelementptr i8, ptr %28, i64 %sub.ptr.sub16, !dbg !4937
  store ptr %add.ptr17, ptr %ip.addr, align 8, !dbg !4937
  %29 = load ptr, ptr %oend_w.addr, align 8, !dbg !4938
  %30 = load ptr, ptr %op.addr, align 8, !dbg !4939
  %sub.ptr.lhs.cast18 = ptrtoint ptr %29 to i64, !dbg !4940
  %sub.ptr.rhs.cast19 = ptrtoint ptr %30 to i64, !dbg !4940
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19, !dbg !4940
  %31 = load ptr, ptr %op.addr, align 8, !dbg !4941
  %add.ptr21 = getelementptr i8, ptr %31, i64 %sub.ptr.sub20, !dbg !4941
  store ptr %add.ptr21, ptr %op.addr, align 8, !dbg !4941
  br label %if.end22, !dbg !4942

if.end22:                                         ; preds = %if.then10, %if.end8
  br label %while.cond23, !dbg !4943

while.cond23:                                     ; preds = %while.body25, %if.end22
  %32 = load ptr, ptr %op.addr, align 8, !dbg !4944
  %33 = load ptr, ptr %oend, align 8, !dbg !4945
  %cmp24 = icmp ult ptr %32, %33, !dbg !4946
  br i1 %cmp24, label %while.body25, label %while.end28, !dbg !4943

while.body25:                                     ; preds = %while.cond23
  %34 = load ptr, ptr %ip.addr, align 8, !dbg !4947
  %incdec.ptr26 = getelementptr i8, ptr %34, i32 1, !dbg !4947
  store ptr %incdec.ptr26, ptr %ip.addr, align 8, !dbg !4947
  %35 = load i8, ptr %34, align 1, !dbg !4948
  %36 = load ptr, ptr %op.addr, align 8, !dbg !4949
  %incdec.ptr27 = getelementptr i8, ptr %36, i32 1, !dbg !4949
  store ptr %incdec.ptr27, ptr %op.addr, align 8, !dbg !4949
  store i8 %35, ptr %36, align 1, !dbg !4950
  br label %while.cond23, !dbg !4943, !llvm.loop !4951

while.end28:                                      ; preds = %while.cond23
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4952
  br label %cleanup, !dbg !4952

cleanup:                                          ; preds = %while.end28, %if.then7, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #12, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #12, !dbg !4952
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4952

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_copy4(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !4953 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4955, metadata !DIExpression()), !dbg !4957
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4956, metadata !DIExpression()), !dbg !4958
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4959
  %1 = load ptr, ptr %src.addr, align 8, !dbg !4959
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 4, i1 false), !dbg !4959
  ret void, !dbg !4960
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %op, ptr noundef %oend, ptr noundef %oend_w, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %litPtr, ptr noundef %litLimit, ptr noundef %prefixStart, ptr noundef %virtualStart, ptr noundef %dictEnd) #11 align 16 !dbg !4961 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %oend.addr = alloca ptr, align 8
  %oend_w.addr = alloca ptr, align 8
  %litPtr.addr = alloca ptr, align 8
  %litLimit.addr = alloca ptr, align 8
  %prefixStart.addr = alloca ptr, align 8
  %virtualStart.addr = alloca ptr, align 8
  %dictEnd.addr = alloca ptr, align 8
  %oLitEnd = alloca ptr, align 8
  %sequenceLength = alloca i64, align 8
  %iLitEnd = alloca ptr, align 8
  %match = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %length1 = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4963, metadata !DIExpression()), !dbg !4980
  store ptr %oend, ptr %oend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oend.addr, metadata !4964, metadata !DIExpression()), !dbg !4981
  store ptr %oend_w, ptr %oend_w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oend_w.addr, metadata !4965, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.declare(metadata ptr %sequence, metadata !4966, metadata !DIExpression()), !dbg !4983
  store ptr %litPtr, ptr %litPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litPtr.addr, metadata !4967, metadata !DIExpression()), !dbg !4984
  store ptr %litLimit, ptr %litLimit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %litLimit.addr, metadata !4968, metadata !DIExpression()), !dbg !4985
  store ptr %prefixStart, ptr %prefixStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixStart.addr, metadata !4969, metadata !DIExpression()), !dbg !4986
  store ptr %virtualStart, ptr %virtualStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virtualStart.addr, metadata !4970, metadata !DIExpression()), !dbg !4987
  store ptr %dictEnd, ptr %dictEnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictEnd.addr, metadata !4971, metadata !DIExpression()), !dbg !4988
  call void @llvm.lifetime.start.p0(i64 8, ptr %oLitEnd) #12, !dbg !4989
  call void @llvm.dbg.declare(metadata ptr %oLitEnd, metadata !4972, metadata !DIExpression()), !dbg !4990
  %0 = load ptr, ptr %op.addr, align 8, !dbg !4991
  %litLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4992
  %1 = load i64, ptr %litLength, align 8, !dbg !4992
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !4993
  store ptr %add.ptr, ptr %oLitEnd, align 8, !dbg !4990
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequenceLength) #12, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %sequenceLength, metadata !4973, metadata !DIExpression()), !dbg !4995
  %litLength1 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !4996
  %2 = load i64, ptr %litLength1, align 8, !dbg !4996
  %matchLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !4997
  %3 = load i64, ptr %matchLength, align 8, !dbg !4997
  %add = add i64 %2, %3, !dbg !4998
  store i64 %add, ptr %sequenceLength, align 8, !dbg !4995
  call void @llvm.lifetime.start.p0(i64 8, ptr %iLitEnd) #12, !dbg !4999
  call void @llvm.dbg.declare(metadata ptr %iLitEnd, metadata !4974, metadata !DIExpression()), !dbg !5000
  %4 = load ptr, ptr %litPtr.addr, align 8, !dbg !5001
  %5 = load ptr, ptr %4, align 8, !dbg !5002
  %litLength2 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !5003
  %6 = load i64, ptr %litLength2, align 8, !dbg !5003
  %add.ptr3 = getelementptr i8, ptr %5, i64 %6, !dbg !5004
  store ptr %add.ptr3, ptr %iLitEnd, align 8, !dbg !5000
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #12, !dbg !5005
  call void @llvm.dbg.declare(metadata ptr %match, metadata !4975, metadata !DIExpression()), !dbg !5006
  %7 = load ptr, ptr %oLitEnd, align 8, !dbg !5007
  %offset = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !5008
  %8 = load i64, ptr %offset, align 8, !dbg !5008
  %idx.neg = sub i64 0, %8, !dbg !5009
  %add.ptr4 = getelementptr i8, ptr %7, i64 %idx.neg, !dbg !5009
  store ptr %add.ptr4, ptr %match, align 8, !dbg !5006
  %9 = load i64, ptr %sequenceLength, align 8, !dbg !5010
  %10 = load ptr, ptr %oend.addr, align 8, !dbg !5010
  %11 = load ptr, ptr %op.addr, align 8, !dbg !5010
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64, !dbg !5010
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !5010
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5010
  %cmp = icmp ugt i64 %9, %sub.ptr.sub, !dbg !5010
  br i1 %cmp, label %if.then, label %if.end, !dbg !5012

if.then:                                          ; preds = %entry
  store i64 -70, ptr %retval, align 8, !dbg !5013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5013

if.end:                                           ; preds = %entry
  %litLength5 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !5015
  %12 = load i64, ptr %litLength5, align 8, !dbg !5015
  %13 = load ptr, ptr %litLimit.addr, align 8, !dbg !5015
  %14 = load ptr, ptr %litPtr.addr, align 8, !dbg !5015
  %15 = load ptr, ptr %14, align 8, !dbg !5015
  %sub.ptr.lhs.cast6 = ptrtoint ptr %13 to i64, !dbg !5015
  %sub.ptr.rhs.cast7 = ptrtoint ptr %15 to i64, !dbg !5015
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !5015
  %cmp9 = icmp ugt i64 %12, %sub.ptr.sub8, !dbg !5015
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5017

if.then10:                                        ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !5018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5018

if.end11:                                         ; preds = %if.end
  %16 = load ptr, ptr %op.addr, align 8, !dbg !5020
  %17 = load ptr, ptr %litPtr.addr, align 8, !dbg !5020
  %18 = load ptr, ptr %17, align 8, !dbg !5020
  %cmp12 = icmp ugt ptr %16, %18, !dbg !5020
  br i1 %cmp12, label %land.lhs.true, label %if.end17, !dbg !5020

land.lhs.true:                                    ; preds = %if.end11
  %19 = load ptr, ptr %op.addr, align 8, !dbg !5020
  %20 = load ptr, ptr %litPtr.addr, align 8, !dbg !5020
  %21 = load ptr, ptr %20, align 8, !dbg !5020
  %litLength13 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !5020
  %22 = load i64, ptr %litLength13, align 8, !dbg !5020
  %add.ptr14 = getelementptr i8, ptr %21, i64 %22, !dbg !5020
  %cmp15 = icmp ult ptr %19, %add.ptr14, !dbg !5020
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5022

if.then16:                                        ; preds = %land.lhs.true
  store i64 -70, ptr %retval, align 8, !dbg !5023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5023

if.end17:                                         ; preds = %land.lhs.true, %if.end11
  %23 = load ptr, ptr %op.addr, align 8, !dbg !5025
  %24 = load ptr, ptr %litPtr.addr, align 8, !dbg !5026
  %25 = load ptr, ptr %24, align 8, !dbg !5027
  %litLength18 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !5028
  %26 = load i64, ptr %litLength18, align 8, !dbg !5028
  call void @ZSTD_safecopyDstBeforeSrc(ptr noundef %23, ptr noundef %25, i64 noundef %26) #13, !dbg !5029
  %27 = load ptr, ptr %oLitEnd, align 8, !dbg !5030
  store ptr %27, ptr %op.addr, align 8, !dbg !5031
  %28 = load ptr, ptr %iLitEnd, align 8, !dbg !5032
  %29 = load ptr, ptr %litPtr.addr, align 8, !dbg !5033
  store ptr %28, ptr %29, align 8, !dbg !5034
  %offset19 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !5035
  %30 = load i64, ptr %offset19, align 8, !dbg !5035
  %31 = load ptr, ptr %oLitEnd, align 8, !dbg !5036
  %32 = load ptr, ptr %prefixStart.addr, align 8, !dbg !5037
  %sub.ptr.lhs.cast20 = ptrtoint ptr %31 to i64, !dbg !5038
  %sub.ptr.rhs.cast21 = ptrtoint ptr %32 to i64, !dbg !5038
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21, !dbg !5038
  %cmp23 = icmp ugt i64 %30, %sub.ptr.sub22, !dbg !5039
  br i1 %cmp23, label %if.then24, label %if.end48, !dbg !5040

if.then24:                                        ; preds = %if.end17
  %offset25 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 2, !dbg !5041
  %33 = load i64, ptr %offset25, align 8, !dbg !5041
  %34 = load ptr, ptr %oLitEnd, align 8, !dbg !5041
  %35 = load ptr, ptr %virtualStart.addr, align 8, !dbg !5041
  %sub.ptr.lhs.cast26 = ptrtoint ptr %34 to i64, !dbg !5041
  %sub.ptr.rhs.cast27 = ptrtoint ptr %35 to i64, !dbg !5041
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27, !dbg !5041
  %cmp29 = icmp ugt i64 %33, %sub.ptr.sub28, !dbg !5041
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !5043

if.then30:                                        ; preds = %if.then24
  store i64 -20, ptr %retval, align 8, !dbg !5044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5044

if.end31:                                         ; preds = %if.then24
  %36 = load ptr, ptr %dictEnd.addr, align 8, !dbg !5046
  %37 = load ptr, ptr %prefixStart.addr, align 8, !dbg !5047
  %38 = load ptr, ptr %match, align 8, !dbg !5048
  %sub.ptr.lhs.cast32 = ptrtoint ptr %37 to i64, !dbg !5049
  %sub.ptr.rhs.cast33 = ptrtoint ptr %38 to i64, !dbg !5049
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33, !dbg !5049
  %idx.neg35 = sub i64 0, %sub.ptr.sub34, !dbg !5050
  %add.ptr36 = getelementptr i8, ptr %36, i64 %idx.neg35, !dbg !5050
  store ptr %add.ptr36, ptr %match, align 8, !dbg !5051
  %39 = load ptr, ptr %match, align 8, !dbg !5052
  %matchLength37 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !5054
  %40 = load i64, ptr %matchLength37, align 8, !dbg !5054
  %add.ptr38 = getelementptr i8, ptr %39, i64 %40, !dbg !5055
  %41 = load ptr, ptr %dictEnd.addr, align 8, !dbg !5056
  %cmp39 = icmp ule ptr %add.ptr38, %41, !dbg !5057
  br i1 %cmp39, label %if.then40, label %if.end42, !dbg !5058

if.then40:                                        ; preds = %if.end31
  %42 = load ptr, ptr %oLitEnd, align 8, !dbg !5059
  %43 = load ptr, ptr %match, align 8, !dbg !5059
  %matchLength41 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !5059
  %44 = load i64, ptr %matchLength41, align 8, !dbg !5059
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %42, ptr align 1 %43, i64 %44, i1 false), !dbg !5059
  %45 = load i64, ptr %sequenceLength, align 8, !dbg !5061
  store i64 %45, ptr %retval, align 8, !dbg !5062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5062

if.end42:                                         ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr %length1) #12, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %length1, metadata !4976, metadata !DIExpression()), !dbg !5064
  %46 = load ptr, ptr %dictEnd.addr, align 8, !dbg !5065
  %47 = load ptr, ptr %match, align 8, !dbg !5066
  %sub.ptr.lhs.cast43 = ptrtoint ptr %46 to i64, !dbg !5067
  %sub.ptr.rhs.cast44 = ptrtoint ptr %47 to i64, !dbg !5067
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44, !dbg !5067
  store i64 %sub.ptr.sub45, ptr %length1, align 8, !dbg !5064
  %48 = load ptr, ptr %oLitEnd, align 8, !dbg !5068
  %49 = load ptr, ptr %match, align 8, !dbg !5068
  %50 = load i64, ptr %length1, align 8, !dbg !5068
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %48, ptr align 1 %49, i64 %50, i1 false), !dbg !5068
  %51 = load ptr, ptr %oLitEnd, align 8, !dbg !5069
  %52 = load i64, ptr %length1, align 8, !dbg !5070
  %add.ptr46 = getelementptr i8, ptr %51, i64 %52, !dbg !5071
  store ptr %add.ptr46, ptr %op.addr, align 8, !dbg !5072
  %53 = load i64, ptr %length1, align 8, !dbg !5073
  %matchLength47 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !5074
  %54 = load i64, ptr %matchLength47, align 8, !dbg !5075
  %sub = sub i64 %54, %53, !dbg !5075
  store i64 %sub, ptr %matchLength47, align 8, !dbg !5075
  %55 = load ptr, ptr %prefixStart.addr, align 8, !dbg !5076
  store ptr %55, ptr %match, align 8, !dbg !5077
  call void @llvm.lifetime.end.p0(i64 8, ptr %length1) #12, !dbg !5078
  br label %if.end48, !dbg !5079

if.end48:                                         ; preds = %if.end42, %if.end17
  %56 = load ptr, ptr %op.addr, align 8, !dbg !5080
  %57 = load ptr, ptr %oend_w.addr, align 8, !dbg !5081
  %58 = load ptr, ptr %match, align 8, !dbg !5082
  %matchLength49 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 1, !dbg !5083
  %59 = load i64, ptr %matchLength49, align 8, !dbg !5083
  call void @ZSTD_safecopy(ptr noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, i32 noundef 1) #13, !dbg !5084
  %60 = load i64, ptr %sequenceLength, align 8, !dbg !5085
  store i64 %60, ptr %retval, align 8, !dbg !5086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5086

cleanup:                                          ; preds = %if.end48, %if.then40, %if.then30, %if.then16, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #12, !dbg !5087
  call void @llvm.lifetime.end.p0(i64 8, ptr %iLitEnd) #12, !dbg !5087
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequenceLength) #12, !dbg !5087
  call void @llvm.lifetime.end.p0(i64 8, ptr %oLitEnd) #12, !dbg !5087
  %61 = load i64, ptr %retval, align 8, !dbg !5087
  ret i64 %61, !dbg !5087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequencesSplitLitBuffer_bmi2(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #8 align 16 !dbg !5088 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5090, metadata !DIExpression()), !dbg !5098
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5091, metadata !DIExpression()), !dbg !5099
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !5092, metadata !DIExpression()), !dbg !5100
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !5093, metadata !DIExpression()), !dbg !5101
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !5094, metadata !DIExpression()), !dbg !5102
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !5095, metadata !DIExpression()), !dbg !5103
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !5096, metadata !DIExpression()), !dbg !5104
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !5097, metadata !DIExpression()), !dbg !5105
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !5106
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !5107
  %2 = load i64, ptr %maxDstSize.addr, align 8, !dbg !5108
  %3 = load ptr, ptr %seqStart.addr, align 8, !dbg !5109
  %4 = load i64, ptr %seqSize.addr, align 8, !dbg !5110
  %5 = load i32, ptr %nbSeq.addr, align 4, !dbg !5111
  %6 = load i32, ptr %isLongOffset.addr, align 4, !dbg !5112
  %7 = load i32, ptr %frame.addr, align 4, !dbg !5113
  %call = call i64 @ZSTD_decompressSequences_bodySplitLitBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13, !dbg !5114
  ret i64 %call, !dbg !5115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequencesSplitLitBuffer_default(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #0 align 16 !dbg !5116 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5118, metadata !DIExpression()), !dbg !5126
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5119, metadata !DIExpression()), !dbg !5127
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !5120, metadata !DIExpression()), !dbg !5128
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !5121, metadata !DIExpression()), !dbg !5129
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !5122, metadata !DIExpression()), !dbg !5130
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !5123, metadata !DIExpression()), !dbg !5131
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !5124, metadata !DIExpression()), !dbg !5132
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !5125, metadata !DIExpression()), !dbg !5133
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !5134
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !5135
  %2 = load i64, ptr %maxDstSize.addr, align 8, !dbg !5136
  %3 = load ptr, ptr %seqStart.addr, align 8, !dbg !5137
  %4 = load i64, ptr %seqSize.addr, align 8, !dbg !5138
  %5 = load i32, ptr %nbSeq.addr, align 4, !dbg !5139
  %6 = load i32, ptr %isLongOffset.addr, align 4, !dbg !5140
  %7 = load i32, ptr %frame.addr, align 4, !dbg !5141
  %call = call i64 @ZSTD_decompressSequences_bodySplitLitBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13, !dbg !5142
  ret i64 %call, !dbg !5143
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequences_bodySplitLitBuffer(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #9 align 16 !dbg !5144 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %iend = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %op = alloca ptr, align 8
  %litPtr = alloca ptr, align 8
  %litBufferEnd = alloca ptr, align 8
  %prefixStart = alloca ptr, align 8
  %vBase = alloca ptr, align 8
  %dictEnd = alloca ptr, align 8
  %seqState = alloca %struct.seqState_t, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sequence = alloca %struct.seq_t, align 8
  %oneSeqSize = alloca i64, align 8
  %tmp = alloca %struct.seq_t, align 8
  %leftoverLit = alloca i64, align 8
  %oneSeqSize61 = alloca i64, align 8
  %sequence90 = alloca %struct.seq_t, align 8
  %oneSeqSize91 = alloca i64, align 8
  %i126 = alloca i32, align 4
  %lastLLSize = alloca i64, align 8
  %lastLLSize175 = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5146, metadata !DIExpression()), !dbg !5194
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5147, metadata !DIExpression()), !dbg !5195
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !5148, metadata !DIExpression()), !dbg !5196
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !5149, metadata !DIExpression()), !dbg !5197
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !5150, metadata !DIExpression()), !dbg !5198
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !5151, metadata !DIExpression()), !dbg !5199
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !5152, metadata !DIExpression()), !dbg !5200
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !5153, metadata !DIExpression()), !dbg !5201
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #12, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !5154, metadata !DIExpression()), !dbg !5203
  %0 = load ptr, ptr %seqStart.addr, align 8, !dbg !5204
  store ptr %0, ptr %ip, align 8, !dbg !5203
  call void @llvm.lifetime.start.p0(i64 8, ptr %iend) #12, !dbg !5205
  call void @llvm.dbg.declare(metadata ptr %iend, metadata !5155, metadata !DIExpression()), !dbg !5206
  %1 = load ptr, ptr %ip, align 8, !dbg !5207
  %2 = load i64, ptr %seqSize.addr, align 8, !dbg !5208
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !5209
  store ptr %add.ptr, ptr %iend, align 8, !dbg !5206
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #12, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !5156, metadata !DIExpression()), !dbg !5211
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !5212
  store ptr %3, ptr %ostart, align 8, !dbg !5211
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #12, !dbg !5213
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !5157, metadata !DIExpression()), !dbg !5214
  %4 = load ptr, ptr %ostart, align 8, !dbg !5215
  %5 = load i64, ptr %maxDstSize.addr, align 8, !dbg !5216
  %add.ptr1 = getelementptr i8, ptr %4, i64 %5, !dbg !5217
  store ptr %add.ptr1, ptr %oend, align 8, !dbg !5214
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #12, !dbg !5218
  call void @llvm.dbg.declare(metadata ptr %op, metadata !5158, metadata !DIExpression()), !dbg !5219
  %6 = load ptr, ptr %ostart, align 8, !dbg !5220
  store ptr %6, ptr %op, align 8, !dbg !5219
  call void @llvm.lifetime.start.p0(i64 8, ptr %litPtr) #12, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %litPtr, metadata !5159, metadata !DIExpression()), !dbg !5222
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !5223
  %litPtr2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %7, i32 0, i32 23, !dbg !5224
  %8 = load ptr, ptr %litPtr2, align 8, !dbg !5224
  store ptr %8, ptr %litPtr, align 8, !dbg !5222
  call void @llvm.lifetime.start.p0(i64 8, ptr %litBufferEnd) #12, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %litBufferEnd, metadata !5160, metadata !DIExpression()), !dbg !5226
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !5227
  %litBufferEnd3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 51, !dbg !5228
  %10 = load ptr, ptr %litBufferEnd3, align 8, !dbg !5228
  store ptr %10, ptr %litBufferEnd, align 8, !dbg !5226
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefixStart) #12, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %prefixStart, metadata !5161, metadata !DIExpression()), !dbg !5230
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !5231
  %prefixStart4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 7, !dbg !5232
  %12 = load ptr, ptr %prefixStart4, align 8, !dbg !5232
  store ptr %12, ptr %prefixStart, align 8, !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %vBase) #12, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %vBase, metadata !5162, metadata !DIExpression()), !dbg !5234
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !5235
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 8, !dbg !5236
  %14 = load ptr, ptr %virtualStart, align 8, !dbg !5236
  store ptr %14, ptr %vBase, align 8, !dbg !5234
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictEnd) #12, !dbg !5237
  call void @llvm.dbg.declare(metadata ptr %dictEnd, metadata !5163, metadata !DIExpression()), !dbg !5238
  %15 = load ptr, ptr %dctx.addr, align 8, !dbg !5239
  %dictEnd5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %15, i32 0, i32 9, !dbg !5240
  %16 = load ptr, ptr %dictEnd5, align 8, !dbg !5240
  store ptr %16, ptr %dictEnd, align 8, !dbg !5238
  %17 = load i32, ptr %frame.addr, align 4, !dbg !5241
  %18 = load i32, ptr %nbSeq.addr, align 4, !dbg !5242
  %tobool = icmp ne i32 %18, 0, !dbg !5242
  br i1 %tobool, label %if.then, label %if.end145, !dbg !5243

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 112, ptr %seqState) #12, !dbg !5244
  call void @llvm.dbg.declare(metadata ptr %seqState, metadata !5164, metadata !DIExpression()), !dbg !5245
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !5246
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 17, !dbg !5247
  store i32 1, ptr %fseEntropy, align 4, !dbg !5248
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5167, metadata !DIExpression()), !dbg !5250
  store i32 0, ptr %i, align 4, !dbg !5251
  br label %for.cond, !dbg !5253

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, ptr %i, align 4, !dbg !5254
  %cmp = icmp ult i32 %20, 3, !dbg !5256
  br i1 %cmp, label %for.body, label %for.end, !dbg !5257

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %dctx.addr, align 8, !dbg !5258
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %21, i32 0, i32 4, !dbg !5259
  %rep = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 4, !dbg !5260
  %22 = load i32, ptr %i, align 4, !dbg !5261
  %idxprom = zext i32 %22 to i64, !dbg !5258
  %arrayidx = getelementptr [3 x i32], ptr %rep, i64 0, i64 %idxprom, !dbg !5258
  %23 = load i32, ptr %arrayidx, align 4, !dbg !5258
  %conv = zext i32 %23 to i64, !dbg !5258
  %prevOffset = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 4, !dbg !5262
  %24 = load i32, ptr %i, align 4, !dbg !5263
  %idxprom6 = zext i32 %24 to i64, !dbg !5264
  %arrayidx7 = getelementptr [3 x i64], ptr %prevOffset, i64 0, i64 %idxprom6, !dbg !5264
  store i64 %conv, ptr %arrayidx7, align 8, !dbg !5265
  br label %for.inc, !dbg !5264

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4, !dbg !5266
  %inc = add i32 %25, 1, !dbg !5266
  store i32 %inc, ptr %i, align 4, !dbg !5266
  br label %for.cond, !dbg !5267, !llvm.loop !5268

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5270
  %DStream = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5271
  %26 = load ptr, ptr %ip, align 8, !dbg !5271
  %27 = load ptr, ptr %iend, align 8, !dbg !5271
  %28 = load ptr, ptr %ip, align 8, !dbg !5271
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64, !dbg !5271
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64, !dbg !5271
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5271
  %call = call i64 @BIT_initDStream(ptr noundef %DStream, ptr noundef %26, i64 noundef %sub.ptr.sub) #13, !dbg !5271
  %call8 = call i32 @ERR_isError(i64 noundef %call) #13, !dbg !5271
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5271
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !5273

if.then10:                                        ; preds = %for.end
  store i64 -20, ptr %retval, align 8, !dbg !5274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !5274

if.end:                                           ; preds = %for.end
  %stateLL = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 1, !dbg !5276
  %DStream11 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5277
  %29 = load ptr, ptr %dctx.addr, align 8, !dbg !5278
  %LLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %29, i32 0, i32 0, !dbg !5279
  %30 = load ptr, ptr %LLTptr, align 8, !dbg !5279
  call void @ZSTD_initFseState(ptr noundef %stateLL, ptr noundef %DStream11, ptr noundef %30) #13, !dbg !5280
  %stateOffb = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 2, !dbg !5281
  %DStream12 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5282
  %31 = load ptr, ptr %dctx.addr, align 8, !dbg !5283
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %31, i32 0, i32 2, !dbg !5284
  %32 = load ptr, ptr %OFTptr, align 8, !dbg !5284
  call void @ZSTD_initFseState(ptr noundef %stateOffb, ptr noundef %DStream12, ptr noundef %32) #13, !dbg !5285
  %stateML = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 3, !dbg !5286
  %DStream13 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5287
  %33 = load ptr, ptr %dctx.addr, align 8, !dbg !5288
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %33, i32 0, i32 1, !dbg !5289
  %34 = load ptr, ptr %MLTptr, align 8, !dbg !5289
  call void @ZSTD_initFseState(ptr noundef %stateML, ptr noundef %DStream13, ptr noundef %34) #13, !dbg !5290
  call void @llvm.lifetime.start.p0(i64 24, ptr %sequence) #12, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %sequence, metadata !5169, metadata !DIExpression()), !dbg !5292
  %35 = load i32, ptr %isLongOffset.addr, align 4, !dbg !5293
  call void @ZSTD_decodeSequence(ptr dead_on_unwind writable sret(%struct.seq_t) align 8 %sequence, ptr noundef %seqState, i32 noundef %35) #13, !dbg !5294
  call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5295, !srcloc !5296
  br label %for.cond14, !dbg !5297

for.cond14:                                       ; preds = %cleanup.cont, %if.end
  %36 = load ptr, ptr %litPtr, align 8, !dbg !5298
  %litLength = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !5299
  %37 = load i64, ptr %litLength, align 8, !dbg !5299
  %add.ptr15 = getelementptr i8, ptr %36, i64 %37, !dbg !5300
  %38 = load ptr, ptr %dctx.addr, align 8, !dbg !5301
  %litBufferEnd16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %38, i32 0, i32 51, !dbg !5302
  %39 = load ptr, ptr %litBufferEnd16, align 8, !dbg !5302
  %cmp17 = icmp ule ptr %add.ptr15, %39, !dbg !5303
  br i1 %cmp17, label %for.body19, label %for.end38, !dbg !5304

for.body19:                                       ; preds = %for.cond14
  call void @llvm.lifetime.start.p0(i64 8, ptr %oneSeqSize) #12, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %oneSeqSize, metadata !5171, metadata !DIExpression()), !dbg !5306
  %40 = load ptr, ptr %op, align 8, !dbg !5307
  %41 = load ptr, ptr %oend, align 8, !dbg !5308
  %42 = load ptr, ptr %litPtr, align 8, !dbg !5309
  %litLength20 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !5310
  %43 = load i64, ptr %litLength20, align 8, !dbg !5310
  %add.ptr21 = getelementptr i8, ptr %42, i64 %43, !dbg !5311
  %add.ptr22 = getelementptr i8, ptr %add.ptr21, i64 -32, !dbg !5312
  %44 = load ptr, ptr %litBufferEnd, align 8, !dbg !5313
  %45 = load ptr, ptr %prefixStart, align 8, !dbg !5314
  %46 = load ptr, ptr %vBase, align 8, !dbg !5315
  %47 = load ptr, ptr %dictEnd, align 8, !dbg !5316
  %call23 = call i64 @ZSTD_execSequenceSplitLitBuffer(ptr noundef %40, ptr noundef %41, ptr noundef %add.ptr22, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %litPtr, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47) #13, !dbg !5317
  store i64 %call23, ptr %oneSeqSize, align 8, !dbg !5306
  %48 = load i64, ptr %oneSeqSize, align 8, !dbg !5318
  %call24 = call i32 @ERR_isError(i64 noundef %48) #13, !dbg !5318
  %conv25 = zext i32 %call24 to i64, !dbg !5318
  %expval = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !5318
  %tobool26 = icmp ne i64 %expval, 0, !dbg !5318
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5320

if.then27:                                        ; preds = %for.body19
  %49 = load i64, ptr %oneSeqSize, align 8, !dbg !5321
  store i64 %49, ptr %retval, align 8, !dbg !5322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5322

if.end28:                                         ; preds = %for.body19
  %50 = load i64, ptr %oneSeqSize, align 8, !dbg !5323
  %51 = load ptr, ptr %op, align 8, !dbg !5324
  %add.ptr29 = getelementptr i8, ptr %51, i64 %50, !dbg !5324
  store ptr %add.ptr29, ptr %op, align 8, !dbg !5324
  %52 = load i32, ptr %nbSeq.addr, align 4, !dbg !5325
  %dec = add i32 %52, -1, !dbg !5325
  store i32 %dec, ptr %nbSeq.addr, align 4, !dbg !5325
  %tobool30 = icmp ne i32 %dec, 0, !dbg !5325
  %lnot = xor i1 %tobool30, true, !dbg !5325
  %lnot.ext = zext i1 %lnot to i32, !dbg !5325
  %conv31 = sext i32 %lnot.ext to i64, !dbg !5325
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !5325
  %tobool33 = icmp ne i64 %expval32, 0, !dbg !5325
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5327

if.then34:                                        ; preds = %if.end28
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5328

if.end35:                                         ; preds = %if.end28
  %DStream36 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5329
  %call37 = call i32 @BIT_reloadDStream(ptr noundef %DStream36) #13, !dbg !5330
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #12, !dbg !5331
  %53 = load i32, ptr %isLongOffset.addr, align 4, !dbg !5332
  call void @ZSTD_decodeSequence(ptr dead_on_unwind writable sret(%struct.seq_t) align 8 %tmp, ptr noundef %seqState, i32 noundef %53) #13, !dbg !5331
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sequence, ptr align 8 %tmp, i64 24, i1 false), !dbg !5331
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #12, !dbg !5331
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5333
  br label %cleanup, !dbg !5333

cleanup:                                          ; preds = %if.end35, %if.then34, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %oneSeqSize) #12, !dbg !5333
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup83 [
    i32 0, label %cleanup.cont
    i32 5, label %for.end38
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond14, !dbg !5334, !llvm.loop !5335

for.end38:                                        ; preds = %cleanup, %for.cond14
  %54 = load i32, ptr %nbSeq.addr, align 4, !dbg !5337
  %cmp39 = icmp sgt i32 %54, 0, !dbg !5338
  br i1 %cmp39, label %if.then41, label %if.end82, !dbg !5339

if.then41:                                        ; preds = %for.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftoverLit) #12, !dbg !5340
  call void @llvm.dbg.declare(metadata ptr %leftoverLit, metadata !5175, metadata !DIExpression()), !dbg !5341
  %55 = load ptr, ptr %dctx.addr, align 8, !dbg !5342
  %litBufferEnd42 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %55, i32 0, i32 51, !dbg !5343
  %56 = load ptr, ptr %litBufferEnd42, align 8, !dbg !5343
  %57 = load ptr, ptr %litPtr, align 8, !dbg !5344
  %sub.ptr.lhs.cast43 = ptrtoint ptr %56 to i64, !dbg !5345
  %sub.ptr.rhs.cast44 = ptrtoint ptr %57 to i64, !dbg !5345
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44, !dbg !5345
  store i64 %sub.ptr.sub45, ptr %leftoverLit, align 8, !dbg !5341
  %58 = load i64, ptr %leftoverLit, align 8, !dbg !5346
  %tobool46 = icmp ne i64 %58, 0, !dbg !5346
  br i1 %tobool46, label %if.then47, label %if.end57, !dbg !5348

if.then47:                                        ; preds = %if.then41
  %59 = load i64, ptr %leftoverLit, align 8, !dbg !5349
  %60 = load ptr, ptr %oend, align 8, !dbg !5349
  %61 = load ptr, ptr %op, align 8, !dbg !5349
  %sub.ptr.lhs.cast48 = ptrtoint ptr %60 to i64, !dbg !5349
  %sub.ptr.rhs.cast49 = ptrtoint ptr %61 to i64, !dbg !5349
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49, !dbg !5349
  %cmp51 = icmp ugt i64 %59, %sub.ptr.sub50, !dbg !5349
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !5352

if.then53:                                        ; preds = %if.then47
  store i64 -70, ptr %retval, align 8, !dbg !5353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !5353

if.end54:                                         ; preds = %if.then47
  %62 = load ptr, ptr %op, align 8, !dbg !5355
  %63 = load ptr, ptr %litPtr, align 8, !dbg !5356
  %64 = load i64, ptr %leftoverLit, align 8, !dbg !5357
  call void @ZSTD_safecopyDstBeforeSrc(ptr noundef %62, ptr noundef %63, i64 noundef %64) #13, !dbg !5358
  %65 = load i64, ptr %leftoverLit, align 8, !dbg !5359
  %litLength55 = getelementptr inbounds %struct.seq_t, ptr %sequence, i32 0, i32 0, !dbg !5360
  %66 = load i64, ptr %litLength55, align 8, !dbg !5361
  %sub = sub i64 %66, %65, !dbg !5361
  store i64 %sub, ptr %litLength55, align 8, !dbg !5361
  %67 = load i64, ptr %leftoverLit, align 8, !dbg !5362
  %68 = load ptr, ptr %op, align 8, !dbg !5363
  %add.ptr56 = getelementptr i8, ptr %68, i64 %67, !dbg !5363
  store ptr %add.ptr56, ptr %op, align 8, !dbg !5363
  br label %if.end57, !dbg !5364

if.end57:                                         ; preds = %if.end54, %if.then41
  %69 = load ptr, ptr %dctx.addr, align 8, !dbg !5365
  %litExtraBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %69, i32 0, i32 53, !dbg !5366
  %arraydecay = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer, i64 0, i64 0, !dbg !5365
  store ptr %arraydecay, ptr %litPtr, align 8, !dbg !5367
  %70 = load ptr, ptr %dctx.addr, align 8, !dbg !5368
  %litExtraBuffer58 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %70, i32 0, i32 53, !dbg !5369
  %arraydecay59 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer58, i64 0, i64 0, !dbg !5368
  %add.ptr60 = getelementptr i8, ptr %arraydecay59, i64 65536, !dbg !5370
  store ptr %add.ptr60, ptr %litBufferEnd, align 8, !dbg !5371
  %71 = load ptr, ptr %dctx.addr, align 8, !dbg !5372
  %litBufferLocation = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %71, i32 0, i32 52, !dbg !5373
  store i32 0, ptr %litBufferLocation, align 8, !dbg !5374
  call void @llvm.lifetime.start.p0(i64 8, ptr %oneSeqSize61) #12, !dbg !5375
  call void @llvm.dbg.declare(metadata ptr %oneSeqSize61, metadata !5178, metadata !DIExpression()), !dbg !5376
  %72 = load ptr, ptr %op, align 8, !dbg !5377
  %73 = load ptr, ptr %oend, align 8, !dbg !5378
  %74 = load ptr, ptr %litBufferEnd, align 8, !dbg !5379
  %75 = load ptr, ptr %prefixStart, align 8, !dbg !5380
  %76 = load ptr, ptr %vBase, align 8, !dbg !5381
  %77 = load ptr, ptr %dictEnd, align 8, !dbg !5382
  %call62 = call i64 @ZSTD_execSequence(ptr noundef %72, ptr noundef %73, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %litPtr, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77) #13, !dbg !5383
  store i64 %call62, ptr %oneSeqSize61, align 8, !dbg !5376
  %78 = load i64, ptr %oneSeqSize61, align 8, !dbg !5384
  %call63 = call i32 @ERR_isError(i64 noundef %78) #13, !dbg !5384
  %conv64 = zext i32 %call63 to i64, !dbg !5384
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !5384
  %tobool66 = icmp ne i64 %expval65, 0, !dbg !5384
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !5386

if.then67:                                        ; preds = %if.end57
  %79 = load i64, ptr %oneSeqSize61, align 8, !dbg !5387
  store i64 %79, ptr %retval, align 8, !dbg !5388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5388

if.end68:                                         ; preds = %if.end57
  %80 = load i64, ptr %oneSeqSize61, align 8, !dbg !5389
  %81 = load ptr, ptr %op, align 8, !dbg !5390
  %add.ptr69 = getelementptr i8, ptr %81, i64 %80, !dbg !5390
  store ptr %add.ptr69, ptr %op, align 8, !dbg !5390
  %82 = load i32, ptr %nbSeq.addr, align 4, !dbg !5391
  %dec70 = add i32 %82, -1, !dbg !5391
  store i32 %dec70, ptr %nbSeq.addr, align 4, !dbg !5391
  %tobool71 = icmp ne i32 %dec70, 0, !dbg !5391
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !5393

if.then72:                                        ; preds = %if.end68
  %DStream73 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5394
  %call74 = call i32 @BIT_reloadDStream(ptr noundef %DStream73) #13, !dbg !5395
  br label %if.end75, !dbg !5395

if.end75:                                         ; preds = %if.then72, %if.end68
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5396
  br label %cleanup76, !dbg !5396

cleanup76:                                        ; preds = %if.end75, %if.then67
  call void @llvm.lifetime.end.p0(i64 8, ptr %oneSeqSize61) #12, !dbg !5396
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %cleanup79 [
    i32 0, label %cleanup.cont78
  ]

cleanup.cont78:                                   ; preds = %cleanup76
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5397
  br label %cleanup79, !dbg !5397

cleanup79:                                        ; preds = %cleanup.cont78, %cleanup76, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftoverLit) #12, !dbg !5397
  %cleanup.dest80 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest80, label %cleanup83 [
    i32 0, label %cleanup.cont81
  ]

cleanup.cont81:                                   ; preds = %cleanup79
  br label %if.end82, !dbg !5398

if.end82:                                         ; preds = %cleanup.cont81, %for.end38
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5399
  br label %cleanup83, !dbg !5399

cleanup83:                                        ; preds = %if.end82, %cleanup79, %cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr %sequence) #12, !dbg !5399
  %cleanup.dest84 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest84, label %cleanup142 [
    i32 0, label %cleanup.cont85
  ]

cleanup.cont85:                                   ; preds = %cleanup83
  %83 = load i32, ptr %nbSeq.addr, align 4, !dbg !5400
  %cmp86 = icmp sgt i32 %83, 0, !dbg !5401
  br i1 %cmp86, label %if.then88, label %if.end116, !dbg !5402

if.then88:                                        ; preds = %cleanup.cont85
  call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5403, !srcloc !5404
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5405, !srcloc !5406
  call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5407, !srcloc !5408
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5409, !srcloc !5410
  call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5411, !srcloc !5412
  br label %for.cond89, !dbg !5413

for.cond89:                                       ; preds = %cleanup.cont114, %if.then88
  call void @llvm.lifetime.start.p0(i64 24, ptr %sequence90) #12, !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %sequence90, metadata !5180, metadata !DIExpression()), !dbg !5415
  %84 = load i32, ptr %isLongOffset.addr, align 4, !dbg !5416
  call void @ZSTD_decodeSequence(ptr dead_on_unwind writable sret(%struct.seq_t) align 8 %sequence90, ptr noundef %seqState, i32 noundef %84) #13, !dbg !5417
  call void @llvm.lifetime.start.p0(i64 8, ptr %oneSeqSize91) #12, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %oneSeqSize91, metadata !5186, metadata !DIExpression()), !dbg !5419
  %85 = load ptr, ptr %op, align 8, !dbg !5420
  %86 = load ptr, ptr %oend, align 8, !dbg !5421
  %87 = load ptr, ptr %litBufferEnd, align 8, !dbg !5422
  %88 = load ptr, ptr %prefixStart, align 8, !dbg !5423
  %89 = load ptr, ptr %vBase, align 8, !dbg !5424
  %90 = load ptr, ptr %dictEnd, align 8, !dbg !5425
  %call92 = call i64 @ZSTD_execSequence(ptr noundef %85, ptr noundef %86, ptr noundef byval(%struct.seq_t) align 8 %sequence90, ptr noundef %litPtr, ptr noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %90) #13, !dbg !5426
  store i64 %call92, ptr %oneSeqSize91, align 8, !dbg !5419
  %91 = load i64, ptr %oneSeqSize91, align 8, !dbg !5427
  %call93 = call i32 @ERR_isError(i64 noundef %91) #13, !dbg !5427
  %conv94 = zext i32 %call93 to i64, !dbg !5427
  %expval95 = call i64 @llvm.expect.i64(i64 %conv94, i64 0), !dbg !5427
  %tobool96 = icmp ne i64 %expval95, 0, !dbg !5427
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !5429

if.then97:                                        ; preds = %for.cond89
  %92 = load i64, ptr %oneSeqSize91, align 8, !dbg !5430
  store i64 %92, ptr %retval, align 8, !dbg !5431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup111, !dbg !5431

if.end98:                                         ; preds = %for.cond89
  %93 = load i64, ptr %oneSeqSize91, align 8, !dbg !5432
  %94 = load ptr, ptr %op, align 8, !dbg !5433
  %add.ptr99 = getelementptr i8, ptr %94, i64 %93, !dbg !5433
  store ptr %add.ptr99, ptr %op, align 8, !dbg !5433
  %95 = load i32, ptr %nbSeq.addr, align 4, !dbg !5434
  %dec100 = add i32 %95, -1, !dbg !5434
  store i32 %dec100, ptr %nbSeq.addr, align 4, !dbg !5434
  %tobool101 = icmp ne i32 %dec100, 0, !dbg !5434
  %lnot102 = xor i1 %tobool101, true, !dbg !5434
  %lnot.ext103 = zext i1 %lnot102 to i32, !dbg !5434
  %conv104 = sext i32 %lnot.ext103 to i64, !dbg !5434
  %expval105 = call i64 @llvm.expect.i64(i64 %conv104, i64 0), !dbg !5434
  %tobool106 = icmp ne i64 %expval105, 0, !dbg !5434
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !5436

if.then107:                                       ; preds = %if.end98
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup111, !dbg !5437

if.end108:                                        ; preds = %if.end98
  %DStream109 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5438
  %call110 = call i32 @BIT_reloadDStream(ptr noundef %DStream109) #13, !dbg !5439
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5440
  br label %cleanup111, !dbg !5440

cleanup111:                                       ; preds = %if.end108, %if.then107, %if.then97
  call void @llvm.lifetime.end.p0(i64 8, ptr %oneSeqSize91) #12, !dbg !5440
  call void @llvm.lifetime.end.p0(i64 24, ptr %sequence90) #12, !dbg !5440
  %cleanup.dest113 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest113, label %cleanup142 [
    i32 0, label %cleanup.cont114
    i32 7, label %for.end115
  ]

cleanup.cont114:                                  ; preds = %cleanup111
  br label %for.cond89, !dbg !5441, !llvm.loop !5442

for.end115:                                       ; preds = %cleanup111
  br label %if.end116, !dbg !5445

if.end116:                                        ; preds = %for.end115, %cleanup.cont85
  %96 = load i32, ptr %nbSeq.addr, align 4, !dbg !5446
  %tobool117 = icmp ne i32 %96, 0, !dbg !5446
  br i1 %tobool117, label %if.then118, label %if.end119, !dbg !5448

if.then118:                                       ; preds = %if.end116
  store i64 -20, ptr %retval, align 8, !dbg !5449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !5449

if.end119:                                        ; preds = %if.end116
  %DStream120 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5451
  %call121 = call i32 @BIT_reloadDStream(ptr noundef %DStream120) #13, !dbg !5451
  %cmp122 = icmp ult i32 %call121, 2, !dbg !5451
  br i1 %cmp122, label %if.then124, label %if.end125, !dbg !5453

if.then124:                                       ; preds = %if.end119
  store i64 -20, ptr %retval, align 8, !dbg !5454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !5454

if.end125:                                        ; preds = %if.end119
  call void @llvm.lifetime.start.p0(i64 4, ptr %i126) #12, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %i126, metadata !5187, metadata !DIExpression()), !dbg !5457
  store i32 0, ptr %i126, align 4, !dbg !5458
  br label %for.cond127, !dbg !5460

for.cond127:                                      ; preds = %for.inc139, %if.end125
  %97 = load i32, ptr %i126, align 4, !dbg !5461
  %cmp128 = icmp ult i32 %97, 3, !dbg !5463
  br i1 %cmp128, label %for.body130, label %for.end141, !dbg !5464

for.body130:                                      ; preds = %for.cond127
  %prevOffset131 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 4, !dbg !5465
  %98 = load i32, ptr %i126, align 4, !dbg !5466
  %idxprom132 = zext i32 %98 to i64, !dbg !5467
  %arrayidx133 = getelementptr [3 x i64], ptr %prevOffset131, i64 0, i64 %idxprom132, !dbg !5467
  %99 = load i64, ptr %arrayidx133, align 8, !dbg !5467
  %conv134 = trunc i64 %99 to i32, !dbg !5468
  %100 = load ptr, ptr %dctx.addr, align 8, !dbg !5469
  %entropy135 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %100, i32 0, i32 4, !dbg !5470
  %rep136 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy135, i32 0, i32 4, !dbg !5471
  %101 = load i32, ptr %i126, align 4, !dbg !5472
  %idxprom137 = zext i32 %101 to i64, !dbg !5469
  %arrayidx138 = getelementptr [3 x i32], ptr %rep136, i64 0, i64 %idxprom137, !dbg !5469
  store i32 %conv134, ptr %arrayidx138, align 4, !dbg !5473
  br label %for.inc139, !dbg !5469

for.inc139:                                       ; preds = %for.body130
  %102 = load i32, ptr %i126, align 4, !dbg !5474
  %inc140 = add i32 %102, 1, !dbg !5474
  store i32 %inc140, ptr %i126, align 4, !dbg !5474
  br label %for.cond127, !dbg !5475, !llvm.loop !5476

for.end141:                                       ; preds = %for.cond127
  call void @llvm.lifetime.end.p0(i64 4, ptr %i126) #12, !dbg !5478
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5479
  br label %cleanup142, !dbg !5479

cleanup142:                                       ; preds = %for.end141, %if.then124, %if.then118, %cleanup111, %cleanup83, %if.then10
  call void @llvm.lifetime.end.p0(i64 112, ptr %seqState) #12, !dbg !5479
  %cleanup.dest143 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest143, label %cleanup197 [
    i32 0, label %cleanup.cont144
  ]

cleanup.cont144:                                  ; preds = %cleanup142
  br label %if.end145, !dbg !5480

if.end145:                                        ; preds = %cleanup.cont144, %entry
  %103 = load ptr, ptr %dctx.addr, align 8, !dbg !5481
  %litBufferLocation146 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %103, i32 0, i32 52, !dbg !5482
  %104 = load i32, ptr %litBufferLocation146, align 8, !dbg !5482
  %cmp147 = icmp eq i32 %104, 2, !dbg !5483
  br i1 %cmp147, label %if.then149, label %if.end174, !dbg !5484

if.then149:                                       ; preds = %if.end145
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastLLSize) #12, !dbg !5485
  call void @llvm.dbg.declare(metadata ptr %lastLLSize, metadata !5189, metadata !DIExpression()), !dbg !5486
  %105 = load ptr, ptr %litBufferEnd, align 8, !dbg !5487
  %106 = load ptr, ptr %litPtr, align 8, !dbg !5488
  %sub.ptr.lhs.cast150 = ptrtoint ptr %105 to i64, !dbg !5489
  %sub.ptr.rhs.cast151 = ptrtoint ptr %106 to i64, !dbg !5489
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151, !dbg !5489
  store i64 %sub.ptr.sub152, ptr %lastLLSize, align 8, !dbg !5486
  %107 = load i64, ptr %lastLLSize, align 8, !dbg !5490
  %108 = load ptr, ptr %oend, align 8, !dbg !5490
  %109 = load ptr, ptr %op, align 8, !dbg !5490
  %sub.ptr.lhs.cast153 = ptrtoint ptr %108 to i64, !dbg !5490
  %sub.ptr.rhs.cast154 = ptrtoint ptr %109 to i64, !dbg !5490
  %sub.ptr.sub155 = sub i64 %sub.ptr.lhs.cast153, %sub.ptr.rhs.cast154, !dbg !5490
  %cmp156 = icmp ugt i64 %107, %sub.ptr.sub155, !dbg !5490
  br i1 %cmp156, label %if.then158, label %if.end159, !dbg !5492

if.then158:                                       ; preds = %if.then149
  store i64 -70, ptr %retval, align 8, !dbg !5493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup171, !dbg !5493

if.end159:                                        ; preds = %if.then149
  %110 = load ptr, ptr %op, align 8, !dbg !5495
  %cmp160 = icmp ne ptr %110, null, !dbg !5497
  br i1 %cmp160, label %if.then162, label %if.end164, !dbg !5498

if.then162:                                       ; preds = %if.end159
  %111 = load ptr, ptr %op, align 8, !dbg !5499
  %112 = load ptr, ptr %litPtr, align 8, !dbg !5499
  %113 = load i64, ptr %lastLLSize, align 8, !dbg !5499
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %111, ptr align 1 %112, i64 %113, i1 false), !dbg !5499
  %114 = load i64, ptr %lastLLSize, align 8, !dbg !5501
  %115 = load ptr, ptr %op, align 8, !dbg !5502
  %add.ptr163 = getelementptr i8, ptr %115, i64 %114, !dbg !5502
  store ptr %add.ptr163, ptr %op, align 8, !dbg !5502
  br label %if.end164, !dbg !5503

if.end164:                                        ; preds = %if.then162, %if.end159
  %116 = load ptr, ptr %dctx.addr, align 8, !dbg !5504
  %litExtraBuffer165 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %116, i32 0, i32 53, !dbg !5505
  %arraydecay166 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer165, i64 0, i64 0, !dbg !5504
  store ptr %arraydecay166, ptr %litPtr, align 8, !dbg !5506
  %117 = load ptr, ptr %dctx.addr, align 8, !dbg !5507
  %litExtraBuffer167 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %117, i32 0, i32 53, !dbg !5508
  %arraydecay168 = getelementptr inbounds [65568 x i8], ptr %litExtraBuffer167, i64 0, i64 0, !dbg !5507
  %add.ptr169 = getelementptr i8, ptr %arraydecay168, i64 65536, !dbg !5509
  store ptr %add.ptr169, ptr %litBufferEnd, align 8, !dbg !5510
  %118 = load ptr, ptr %dctx.addr, align 8, !dbg !5511
  %litBufferLocation170 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %118, i32 0, i32 52, !dbg !5512
  store i32 0, ptr %litBufferLocation170, align 8, !dbg !5513
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5514
  br label %cleanup171, !dbg !5514

cleanup171:                                       ; preds = %if.end164, %if.then158
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastLLSize) #12, !dbg !5514
  %cleanup.dest172 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest172, label %cleanup197 [
    i32 0, label %cleanup.cont173
  ]

cleanup.cont173:                                  ; preds = %cleanup171
  br label %if.end174, !dbg !5515

if.end174:                                        ; preds = %cleanup.cont173, %if.end145
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastLLSize175) #12, !dbg !5516
  call void @llvm.dbg.declare(metadata ptr %lastLLSize175, metadata !5192, metadata !DIExpression()), !dbg !5517
  %119 = load ptr, ptr %litBufferEnd, align 8, !dbg !5518
  %120 = load ptr, ptr %litPtr, align 8, !dbg !5519
  %sub.ptr.lhs.cast176 = ptrtoint ptr %119 to i64, !dbg !5520
  %sub.ptr.rhs.cast177 = ptrtoint ptr %120 to i64, !dbg !5520
  %sub.ptr.sub178 = sub i64 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177, !dbg !5520
  store i64 %sub.ptr.sub178, ptr %lastLLSize175, align 8, !dbg !5517
  %121 = load i64, ptr %lastLLSize175, align 8, !dbg !5521
  %122 = load ptr, ptr %oend, align 8, !dbg !5521
  %123 = load ptr, ptr %op, align 8, !dbg !5521
  %sub.ptr.lhs.cast179 = ptrtoint ptr %122 to i64, !dbg !5521
  %sub.ptr.rhs.cast180 = ptrtoint ptr %123 to i64, !dbg !5521
  %sub.ptr.sub181 = sub i64 %sub.ptr.lhs.cast179, %sub.ptr.rhs.cast180, !dbg !5521
  %cmp182 = icmp ugt i64 %121, %sub.ptr.sub181, !dbg !5521
  br i1 %cmp182, label %if.then184, label %if.end185, !dbg !5523

if.then184:                                       ; preds = %if.end174
  store i64 -70, ptr %retval, align 8, !dbg !5524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup191, !dbg !5524

if.end185:                                        ; preds = %if.end174
  %124 = load ptr, ptr %op, align 8, !dbg !5526
  %cmp186 = icmp ne ptr %124, null, !dbg !5528
  br i1 %cmp186, label %if.then188, label %if.end190, !dbg !5529

if.then188:                                       ; preds = %if.end185
  %125 = load ptr, ptr %op, align 8, !dbg !5530
  %126 = load ptr, ptr %litPtr, align 8, !dbg !5530
  %127 = load i64, ptr %lastLLSize175, align 8, !dbg !5530
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %126, i64 %127, i1 false), !dbg !5530
  %128 = load i64, ptr %lastLLSize175, align 8, !dbg !5532
  %129 = load ptr, ptr %op, align 8, !dbg !5533
  %add.ptr189 = getelementptr i8, ptr %129, i64 %128, !dbg !5533
  store ptr %add.ptr189, ptr %op, align 8, !dbg !5533
  br label %if.end190, !dbg !5534

if.end190:                                        ; preds = %if.then188, %if.end185
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5535
  br label %cleanup191, !dbg !5535

cleanup191:                                       ; preds = %if.end190, %if.then184
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastLLSize175) #12, !dbg !5535
  %cleanup.dest192 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest192, label %cleanup197 [
    i32 0, label %cleanup.cont193
  ]

cleanup.cont193:                                  ; preds = %cleanup191
  %130 = load ptr, ptr %op, align 8, !dbg !5536
  %131 = load ptr, ptr %ostart, align 8, !dbg !5537
  %sub.ptr.lhs.cast194 = ptrtoint ptr %130 to i64, !dbg !5538
  %sub.ptr.rhs.cast195 = ptrtoint ptr %131 to i64, !dbg !5538
  %sub.ptr.sub196 = sub i64 %sub.ptr.lhs.cast194, %sub.ptr.rhs.cast195, !dbg !5538
  store i64 %sub.ptr.sub196, ptr %retval, align 8, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup197, !dbg !5539

cleanup197:                                       ; preds = %cleanup.cont193, %cleanup191, %cleanup171, %cleanup142
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictEnd) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %vBase) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefixStart) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %litBufferEnd) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %litPtr) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %iend) #12, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #12, !dbg !5540
  %132 = load i64, ptr %retval, align 8, !dbg !5540
  ret i64 %132, !dbg !5540
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequences_bmi2(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #8 align 16 !dbg !5541 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5543, metadata !DIExpression()), !dbg !5551
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5544, metadata !DIExpression()), !dbg !5552
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !5545, metadata !DIExpression()), !dbg !5553
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !5546, metadata !DIExpression()), !dbg !5554
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !5547, metadata !DIExpression()), !dbg !5555
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !5548, metadata !DIExpression()), !dbg !5556
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !5549, metadata !DIExpression()), !dbg !5557
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !5550, metadata !DIExpression()), !dbg !5558
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !5559
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !5560
  %2 = load i64, ptr %maxDstSize.addr, align 8, !dbg !5561
  %3 = load ptr, ptr %seqStart.addr, align 8, !dbg !5562
  %4 = load i64, ptr %seqSize.addr, align 8, !dbg !5563
  %5 = load i32, ptr %nbSeq.addr, align 4, !dbg !5564
  %6 = load i32, ptr %isLongOffset.addr, align 4, !dbg !5565
  %7 = load i32, ptr %frame.addr, align 4, !dbg !5566
  %call = call i64 @ZSTD_decompressSequences_body(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13, !dbg !5567
  ret i64 %call, !dbg !5568
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequences_default(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #0 align 16 !dbg !5569 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5571, metadata !DIExpression()), !dbg !5579
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5572, metadata !DIExpression()), !dbg !5580
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !5573, metadata !DIExpression()), !dbg !5581
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !5574, metadata !DIExpression()), !dbg !5582
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !5575, metadata !DIExpression()), !dbg !5583
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !5576, metadata !DIExpression()), !dbg !5584
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !5577, metadata !DIExpression()), !dbg !5585
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !5578, metadata !DIExpression()), !dbg !5586
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !5587
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !5588
  %2 = load i64, ptr %maxDstSize.addr, align 8, !dbg !5589
  %3 = load ptr, ptr %seqStart.addr, align 8, !dbg !5590
  %4 = load i64, ptr %seqSize.addr, align 8, !dbg !5591
  %5 = load i32, ptr %nbSeq.addr, align 4, !dbg !5592
  %6 = load i32, ptr %isLongOffset.addr, align 4, !dbg !5593
  %7 = load i32, ptr %frame.addr, align 4, !dbg !5594
  %call = call i64 @ZSTD_decompressSequences_body(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13, !dbg !5595
  ret i64 %call, !dbg !5596
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressSequences_body(ptr noundef %dctx, ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %seqStart, i64 noundef %seqSize, i32 noundef %nbSeq, i32 noundef %isLongOffset, i32 noundef %frame) #9 align 16 !dbg !5597 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %seqStart.addr = alloca ptr, align 8
  %seqSize.addr = alloca i64, align 8
  %nbSeq.addr = alloca i32, align 4
  %isLongOffset.addr = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %iend = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %op = alloca ptr, align 8
  %litPtr = alloca ptr, align 8
  %litEnd = alloca ptr, align 8
  %prefixStart = alloca ptr, align 8
  %vBase = alloca ptr, align 8
  %dictEnd = alloca ptr, align 8
  %seqState = alloca %struct.seqState_t, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sequence = alloca %struct.seq_t, align 8
  %oneSeqSize = alloca i64, align 8
  %i42 = alloca i32, align 4
  %lastLLSize = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5599, metadata !DIExpression()), !dbg !5631
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5600, metadata !DIExpression()), !dbg !5632
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !5601, metadata !DIExpression()), !dbg !5633
  store ptr %seqStart, ptr %seqStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqStart.addr, metadata !5602, metadata !DIExpression()), !dbg !5634
  store i64 %seqSize, ptr %seqSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqSize.addr, metadata !5603, metadata !DIExpression()), !dbg !5635
  store i32 %nbSeq, ptr %nbSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSeq.addr, metadata !5604, metadata !DIExpression()), !dbg !5636
  store i32 %isLongOffset, ptr %isLongOffset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isLongOffset.addr, metadata !5605, metadata !DIExpression()), !dbg !5637
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !5606, metadata !DIExpression()), !dbg !5638
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #12, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !5607, metadata !DIExpression()), !dbg !5640
  %0 = load ptr, ptr %seqStart.addr, align 8, !dbg !5641
  store ptr %0, ptr %ip, align 8, !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %iend) #12, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %iend, metadata !5608, metadata !DIExpression()), !dbg !5643
  %1 = load ptr, ptr %ip, align 8, !dbg !5644
  %2 = load i64, ptr %seqSize.addr, align 8, !dbg !5645
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !5646
  store ptr %add.ptr, ptr %iend, align 8, !dbg !5643
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #12, !dbg !5647
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !5609, metadata !DIExpression()), !dbg !5648
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !5649
  store ptr %3, ptr %ostart, align 8, !dbg !5648
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #12, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !5610, metadata !DIExpression()), !dbg !5651
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !5652
  %litBufferLocation = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 52, !dbg !5653
  %5 = load i32, ptr %litBufferLocation, align 8, !dbg !5653
  %cmp = icmp eq i32 %5, 0, !dbg !5654
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5652

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %ostart, align 8, !dbg !5655
  %7 = load i64, ptr %maxDstSize.addr, align 8, !dbg !5656
  %add.ptr1 = getelementptr i8, ptr %6, i64 %7, !dbg !5657
  br label %cond.end, !dbg !5652

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !5658
  %litBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 50, !dbg !5659
  %9 = load ptr, ptr %litBuffer, align 8, !dbg !5659
  br label %cond.end, !dbg !5652

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr1, %cond.true ], [ %9, %cond.false ], !dbg !5652
  store ptr %cond, ptr %oend, align 8, !dbg !5651
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #12, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %op, metadata !5611, metadata !DIExpression()), !dbg !5661
  %10 = load ptr, ptr %ostart, align 8, !dbg !5662
  store ptr %10, ptr %op, align 8, !dbg !5661
  call void @llvm.lifetime.start.p0(i64 8, ptr %litPtr) #12, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %litPtr, metadata !5612, metadata !DIExpression()), !dbg !5664
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !5665
  %litPtr2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 23, !dbg !5666
  %12 = load ptr, ptr %litPtr2, align 8, !dbg !5666
  store ptr %12, ptr %litPtr, align 8, !dbg !5664
  call void @llvm.lifetime.start.p0(i64 8, ptr %litEnd) #12, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %litEnd, metadata !5613, metadata !DIExpression()), !dbg !5668
  %13 = load ptr, ptr %litPtr, align 8, !dbg !5669
  %14 = load ptr, ptr %dctx.addr, align 8, !dbg !5670
  %litSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %14, i32 0, i32 25, !dbg !5671
  %15 = load i64, ptr %litSize, align 8, !dbg !5671
  %add.ptr3 = getelementptr i8, ptr %13, i64 %15, !dbg !5672
  store ptr %add.ptr3, ptr %litEnd, align 8, !dbg !5668
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefixStart) #12, !dbg !5673
  call void @llvm.dbg.declare(metadata ptr %prefixStart, metadata !5614, metadata !DIExpression()), !dbg !5674
  %16 = load ptr, ptr %dctx.addr, align 8, !dbg !5675
  %prefixStart4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i32 0, i32 7, !dbg !5676
  %17 = load ptr, ptr %prefixStart4, align 8, !dbg !5676
  store ptr %17, ptr %prefixStart, align 8, !dbg !5674
  call void @llvm.lifetime.start.p0(i64 8, ptr %vBase) #12, !dbg !5677
  call void @llvm.dbg.declare(metadata ptr %vBase, metadata !5615, metadata !DIExpression()), !dbg !5678
  %18 = load ptr, ptr %dctx.addr, align 8, !dbg !5679
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %18, i32 0, i32 8, !dbg !5680
  %19 = load ptr, ptr %virtualStart, align 8, !dbg !5680
  store ptr %19, ptr %vBase, align 8, !dbg !5678
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictEnd) #12, !dbg !5681
  call void @llvm.dbg.declare(metadata ptr %dictEnd, metadata !5616, metadata !DIExpression()), !dbg !5682
  %20 = load ptr, ptr %dctx.addr, align 8, !dbg !5683
  %dictEnd5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %20, i32 0, i32 9, !dbg !5684
  %21 = load ptr, ptr %dictEnd5, align 8, !dbg !5684
  store ptr %21, ptr %dictEnd, align 8, !dbg !5682
  %22 = load i32, ptr %frame.addr, align 4, !dbg !5685
  %23 = load i32, ptr %nbSeq.addr, align 4, !dbg !5686
  %tobool = icmp ne i32 %23, 0, !dbg !5686
  br i1 %tobool, label %if.then, label %if.end61, !dbg !5687

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 112, ptr %seqState) #12, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %seqState, metadata !5617, metadata !DIExpression()), !dbg !5689
  %24 = load ptr, ptr %dctx.addr, align 8, !dbg !5690
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %24, i32 0, i32 17, !dbg !5691
  store i32 1, ptr %fseEntropy, align 4, !dbg !5692
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5620, metadata !DIExpression()), !dbg !5694
  store i32 0, ptr %i, align 4, !dbg !5695
  br label %for.cond, !dbg !5697

for.cond:                                         ; preds = %for.inc, %if.then
  %25 = load i32, ptr %i, align 4, !dbg !5698
  %cmp6 = icmp ult i32 %25, 3, !dbg !5700
  br i1 %cmp6, label %for.body, label %for.end, !dbg !5701

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %dctx.addr, align 8, !dbg !5702
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %26, i32 0, i32 4, !dbg !5703
  %rep = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 4, !dbg !5704
  %27 = load i32, ptr %i, align 4, !dbg !5705
  %idxprom = zext i32 %27 to i64, !dbg !5702
  %arrayidx = getelementptr [3 x i32], ptr %rep, i64 0, i64 %idxprom, !dbg !5702
  %28 = load i32, ptr %arrayidx, align 4, !dbg !5702
  %conv = zext i32 %28 to i64, !dbg !5702
  %prevOffset = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 4, !dbg !5706
  %29 = load i32, ptr %i, align 4, !dbg !5707
  %idxprom7 = zext i32 %29 to i64, !dbg !5708
  %arrayidx8 = getelementptr [3 x i64], ptr %prevOffset, i64 0, i64 %idxprom7, !dbg !5708
  store i64 %conv, ptr %arrayidx8, align 8, !dbg !5709
  br label %for.inc, !dbg !5708

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !5710
  %inc = add i32 %30, 1, !dbg !5710
  store i32 %inc, ptr %i, align 4, !dbg !5710
  br label %for.cond, !dbg !5711, !llvm.loop !5712

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5714
  %DStream = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5715
  %31 = load ptr, ptr %ip, align 8, !dbg !5715
  %32 = load ptr, ptr %iend, align 8, !dbg !5715
  %33 = load ptr, ptr %ip, align 8, !dbg !5715
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i64, !dbg !5715
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i64, !dbg !5715
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5715
  %call = call i64 @BIT_initDStream(ptr noundef %DStream, ptr noundef %31, i64 noundef %sub.ptr.sub) #13, !dbg !5715
  %call9 = call i32 @ERR_isError(i64 noundef %call) #13, !dbg !5715
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5715
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !5717

if.then11:                                        ; preds = %for.end
  store i64 -20, ptr %retval, align 8, !dbg !5718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !5718

if.end:                                           ; preds = %for.end
  %stateLL = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 1, !dbg !5720
  %DStream12 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5721
  %34 = load ptr, ptr %dctx.addr, align 8, !dbg !5722
  %LLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %34, i32 0, i32 0, !dbg !5723
  %35 = load ptr, ptr %LLTptr, align 8, !dbg !5723
  call void @ZSTD_initFseState(ptr noundef %stateLL, ptr noundef %DStream12, ptr noundef %35) #13, !dbg !5724
  %stateOffb = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 2, !dbg !5725
  %DStream13 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5726
  %36 = load ptr, ptr %dctx.addr, align 8, !dbg !5727
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %36, i32 0, i32 2, !dbg !5728
  %37 = load ptr, ptr %OFTptr, align 8, !dbg !5728
  call void @ZSTD_initFseState(ptr noundef %stateOffb, ptr noundef %DStream13, ptr noundef %37) #13, !dbg !5729
  %stateML = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 3, !dbg !5730
  %DStream14 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5731
  %38 = load ptr, ptr %dctx.addr, align 8, !dbg !5732
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %38, i32 0, i32 1, !dbg !5733
  %39 = load ptr, ptr %MLTptr, align 8, !dbg !5733
  call void @ZSTD_initFseState(ptr noundef %stateML, ptr noundef %DStream14, ptr noundef %39) #13, !dbg !5734
  call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5735, !srcloc !5736
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5737, !srcloc !5738
  call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5739, !srcloc !5740
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5741, !srcloc !5742
  call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5743, !srcloc !5744
  br label %for.cond15, !dbg !5745

for.cond15:                                       ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %sequence) #12, !dbg !5746
  call void @llvm.dbg.declare(metadata ptr %sequence, metadata !5622, metadata !DIExpression()), !dbg !5747
  %40 = load i32, ptr %isLongOffset.addr, align 4, !dbg !5748
  call void @ZSTD_decodeSequence(ptr dead_on_unwind writable sret(%struct.seq_t) align 8 %sequence, ptr noundef %seqState, i32 noundef %40) #13, !dbg !5749
  call void @llvm.lifetime.start.p0(i64 8, ptr %oneSeqSize) #12, !dbg !5750
  call void @llvm.dbg.declare(metadata ptr %oneSeqSize, metadata !5626, metadata !DIExpression()), !dbg !5751
  %41 = load ptr, ptr %op, align 8, !dbg !5752
  %42 = load ptr, ptr %oend, align 8, !dbg !5753
  %43 = load ptr, ptr %litEnd, align 8, !dbg !5754
  %44 = load ptr, ptr %prefixStart, align 8, !dbg !5755
  %45 = load ptr, ptr %vBase, align 8, !dbg !5756
  %46 = load ptr, ptr %dictEnd, align 8, !dbg !5757
  %call16 = call i64 @ZSTD_execSequence(ptr noundef %41, ptr noundef %42, ptr noundef byval(%struct.seq_t) align 8 %sequence, ptr noundef %litPtr, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46) #13, !dbg !5758
  store i64 %call16, ptr %oneSeqSize, align 8, !dbg !5751
  %47 = load i64, ptr %oneSeqSize, align 8, !dbg !5759
  %call17 = call i32 @ERR_isError(i64 noundef %47) #13, !dbg !5759
  %conv18 = zext i32 %call17 to i64, !dbg !5759
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !5759
  %tobool19 = icmp ne i64 %expval, 0, !dbg !5759
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5761

if.then20:                                        ; preds = %for.cond15
  %48 = load i64, ptr %oneSeqSize, align 8, !dbg !5762
  store i64 %48, ptr %retval, align 8, !dbg !5763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5763

if.end21:                                         ; preds = %for.cond15
  %49 = load i64, ptr %oneSeqSize, align 8, !dbg !5764
  %50 = load ptr, ptr %op, align 8, !dbg !5765
  %add.ptr22 = getelementptr i8, ptr %50, i64 %49, !dbg !5765
  store ptr %add.ptr22, ptr %op, align 8, !dbg !5765
  %51 = load i32, ptr %nbSeq.addr, align 4, !dbg !5766
  %dec = add i32 %51, -1, !dbg !5766
  store i32 %dec, ptr %nbSeq.addr, align 4, !dbg !5766
  %tobool23 = icmp ne i32 %dec, 0, !dbg !5766
  %lnot = xor i1 %tobool23, true, !dbg !5766
  %lnot.ext = zext i1 %lnot to i32, !dbg !5766
  %conv24 = sext i32 %lnot.ext to i64, !dbg !5766
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5766
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5766
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5768

if.then27:                                        ; preds = %if.end21
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5769

if.end28:                                         ; preds = %if.end21
  %DStream29 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5770
  %call30 = call i32 @BIT_reloadDStream(ptr noundef %DStream29) #13, !dbg !5771
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5772
  br label %cleanup, !dbg !5772

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %oneSeqSize) #12, !dbg !5772
  call void @llvm.lifetime.end.p0(i64 24, ptr %sequence) #12, !dbg !5772
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup58 [
    i32 0, label %cleanup.cont
    i32 5, label %for.end32
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond15, !dbg !5773, !llvm.loop !5774

for.end32:                                        ; preds = %cleanup
  %52 = load i32, ptr %nbSeq.addr, align 4, !dbg !5777
  %tobool33 = icmp ne i32 %52, 0, !dbg !5777
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5779

if.then34:                                        ; preds = %for.end32
  store i64 -20, ptr %retval, align 8, !dbg !5780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !5780

if.end35:                                         ; preds = %for.end32
  %DStream36 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 0, !dbg !5782
  %call37 = call i32 @BIT_reloadDStream(ptr noundef %DStream36) #13, !dbg !5782
  %cmp38 = icmp ult i32 %call37, 2, !dbg !5782
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5784

if.then40:                                        ; preds = %if.end35
  store i64 -20, ptr %retval, align 8, !dbg !5785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !5785

if.end41:                                         ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr %i42) #12, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %i42, metadata !5627, metadata !DIExpression()), !dbg !5788
  store i32 0, ptr %i42, align 4, !dbg !5789
  br label %for.cond43, !dbg !5791

for.cond43:                                       ; preds = %for.inc55, %if.end41
  %53 = load i32, ptr %i42, align 4, !dbg !5792
  %cmp44 = icmp ult i32 %53, 3, !dbg !5794
  br i1 %cmp44, label %for.body46, label %for.end57, !dbg !5795

for.body46:                                       ; preds = %for.cond43
  %prevOffset47 = getelementptr inbounds %struct.seqState_t, ptr %seqState, i32 0, i32 4, !dbg !5796
  %54 = load i32, ptr %i42, align 4, !dbg !5797
  %idxprom48 = zext i32 %54 to i64, !dbg !5798
  %arrayidx49 = getelementptr [3 x i64], ptr %prevOffset47, i64 0, i64 %idxprom48, !dbg !5798
  %55 = load i64, ptr %arrayidx49, align 8, !dbg !5798
  %conv50 = trunc i64 %55 to i32, !dbg !5799
  %56 = load ptr, ptr %dctx.addr, align 8, !dbg !5800
  %entropy51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %56, i32 0, i32 4, !dbg !5801
  %rep52 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy51, i32 0, i32 4, !dbg !5802
  %57 = load i32, ptr %i42, align 4, !dbg !5803
  %idxprom53 = zext i32 %57 to i64, !dbg !5800
  %arrayidx54 = getelementptr [3 x i32], ptr %rep52, i64 0, i64 %idxprom53, !dbg !5800
  store i32 %conv50, ptr %arrayidx54, align 4, !dbg !5804
  br label %for.inc55, !dbg !5800

for.inc55:                                        ; preds = %for.body46
  %58 = load i32, ptr %i42, align 4, !dbg !5805
  %inc56 = add i32 %58, 1, !dbg !5805
  store i32 %inc56, ptr %i42, align 4, !dbg !5805
  br label %for.cond43, !dbg !5806, !llvm.loop !5807

for.end57:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 4, ptr %i42) #12, !dbg !5809
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5810
  br label %cleanup58, !dbg !5810

cleanup58:                                        ; preds = %for.end57, %if.then40, %if.then34, %cleanup, %if.then11
  call void @llvm.lifetime.end.p0(i64 112, ptr %seqState) #12, !dbg !5810
  %cleanup.dest59 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest59, label %cleanup83 [
    i32 0, label %cleanup.cont60
  ]

cleanup.cont60:                                   ; preds = %cleanup58
  br label %if.end61, !dbg !5811

if.end61:                                         ; preds = %cleanup.cont60, %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastLLSize) #12, !dbg !5812
  call void @llvm.dbg.declare(metadata ptr %lastLLSize, metadata !5629, metadata !DIExpression()), !dbg !5813
  %59 = load ptr, ptr %litEnd, align 8, !dbg !5814
  %60 = load ptr, ptr %litPtr, align 8, !dbg !5815
  %sub.ptr.lhs.cast62 = ptrtoint ptr %59 to i64, !dbg !5816
  %sub.ptr.rhs.cast63 = ptrtoint ptr %60 to i64, !dbg !5816
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63, !dbg !5816
  store i64 %sub.ptr.sub64, ptr %lastLLSize, align 8, !dbg !5813
  %61 = load i64, ptr %lastLLSize, align 8, !dbg !5817
  %62 = load ptr, ptr %oend, align 8, !dbg !5817
  %63 = load ptr, ptr %op, align 8, !dbg !5817
  %sub.ptr.lhs.cast65 = ptrtoint ptr %62 to i64, !dbg !5817
  %sub.ptr.rhs.cast66 = ptrtoint ptr %63 to i64, !dbg !5817
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66, !dbg !5817
  %cmp68 = icmp ugt i64 %61, %sub.ptr.sub67, !dbg !5817
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !5819

if.then70:                                        ; preds = %if.end61
  store i64 -70, ptr %retval, align 8, !dbg !5820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup77, !dbg !5820

if.end71:                                         ; preds = %if.end61
  %64 = load ptr, ptr %op, align 8, !dbg !5822
  %cmp72 = icmp ne ptr %64, null, !dbg !5824
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !5825

if.then74:                                        ; preds = %if.end71
  %65 = load ptr, ptr %op, align 8, !dbg !5826
  %66 = load ptr, ptr %litPtr, align 8, !dbg !5826
  %67 = load i64, ptr %lastLLSize, align 8, !dbg !5826
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %66, i64 %67, i1 false), !dbg !5826
  %68 = load i64, ptr %lastLLSize, align 8, !dbg !5828
  %69 = load ptr, ptr %op, align 8, !dbg !5829
  %add.ptr75 = getelementptr i8, ptr %69, i64 %68, !dbg !5829
  store ptr %add.ptr75, ptr %op, align 8, !dbg !5829
  br label %if.end76, !dbg !5830

if.end76:                                         ; preds = %if.then74, %if.end71
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5831
  br label %cleanup77, !dbg !5831

cleanup77:                                        ; preds = %if.end76, %if.then70
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastLLSize) #12, !dbg !5831
  %cleanup.dest78 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest78, label %cleanup83 [
    i32 0, label %cleanup.cont79
  ]

cleanup.cont79:                                   ; preds = %cleanup77
  %70 = load ptr, ptr %op, align 8, !dbg !5832
  %71 = load ptr, ptr %ostart, align 8, !dbg !5833
  %sub.ptr.lhs.cast80 = ptrtoint ptr %70 to i64, !dbg !5834
  %sub.ptr.rhs.cast81 = ptrtoint ptr %71 to i64, !dbg !5834
  %sub.ptr.sub82 = sub i64 %sub.ptr.lhs.cast80, %sub.ptr.rhs.cast81, !dbg !5834
  store i64 %sub.ptr.sub82, ptr %retval, align 8, !dbg !5835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5835

cleanup83:                                        ; preds = %cleanup.cont79, %cleanup77, %cleanup58
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictEnd) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %vBase) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefixStart) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %litEnd) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %litPtr) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %iend) #12, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #12, !dbg !5836
  %72 = load i64, ptr %retval, align 8, !dbg !5836
  ret i64 %72, !dbg !5836
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "LL_base", scope: !2, file: !50, line: 30, type: !303, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/decompress/.zstd_decompress_block.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_decompress\22 -D KBUILD_BASENAME=\22zstd_decompress_block\22 -D KBUILD_MODNAME=\22zstd_decompress\22 -D __KBUILD_MODNAME=kmod_zstd_decompress -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/decompress/zstd_decompress_block.ll lib/zstd/decompress/zstd_decompress_block.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !120, globals: !234, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/zstd/decompress/zstd_decompress_block.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8bb5c997fa98614a777610225023c00")
!4 = !{!5, !13, !44, !49, !60, !64, !68, !74, !78, !85, !89, !94, !99, !105, !109, !116}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 81, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "lib/zstd/decompress/../common/zstd_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c514f784a58bd125143564d5f9097a9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "bt_raw", value: 0)
!10 = !DIEnumerator(name: "bt_rle", value: 1)
!11 = !DIEnumerator(name: "bt_compressed", value: 2)
!12 = !DIEnumerator(name: "bt_reserved", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 37, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!16 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!17 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!18 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!19 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!20 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!21 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!22 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!23 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!24 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!25 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!26 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!27 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!28 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!29 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!30 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!31 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!32 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!33 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!34 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!35 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!36 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!37 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!38 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!39 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!40 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!41 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!42 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!43 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 2474, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/zstd_lib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8133d2f71405070b8bf1f9699046d166")
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "ZSTD_frame", value: 0)
!48 = !DIEnumerator(name: "ZSTD_skippableFrame", value: 1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 88, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "lib/zstd/decompress/zstd_decompress_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5223103cf3e1f284362511d946d93a92")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59}
!52 = !DIEnumerator(name: "ZSTDds_getFrameHeaderSize", value: 0)
!53 = !DIEnumerator(name: "ZSTDds_decodeFrameHeader", value: 1)
!54 = !DIEnumerator(name: "ZSTDds_decodeBlockHeader", value: 2)
!55 = !DIEnumerator(name: "ZSTDds_decompressBlock", value: 3)
!56 = !DIEnumerator(name: "ZSTDds_decompressLastBlock", value: 4)
!57 = !DIEnumerator(name: "ZSTDds_checkChecksum", value: 5)
!58 = !DIEnumerator(name: "ZSTDds_decodeSkippableHeader", value: 6)
!59 = !DIEnumerator(name: "ZSTDds_skipFrame", value: 7)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 1228, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63}
!62 = !DIEnumerator(name: "ZSTD_f_zstd1", value: 0)
!63 = !DIEnumerator(name: "ZSTD_f_zstd1_magicless", value: 1)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 1235, baseType: !7, size: 32, elements: !65)
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "ZSTD_d_validateChecksum", value: 0)
!67 = !DIEnumerator(name: "ZSTD_d_ignoreChecksum", value: 1)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 96, baseType: !69, size: 32, elements: !70)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "ZSTD_use_indefinitely", value: -1)
!72 = !DIEnumerator(name: "ZSTD_dont_use", value: 0)
!73 = !DIEnumerator(name: "ZSTD_use_once", value: 1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 1241, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "ZSTD_rmd_refSingleDDict", value: 0)
!77 = !DIEnumerator(name: "ZSTD_rmd_refMultipleDDicts", value: 1)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 93, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "zdss_init", value: 0)
!81 = !DIEnumerator(name: "zdss_loadHeader", value: 1)
!82 = !DIEnumerator(name: "zdss_read", value: 2)
!83 = !DIEnumerator(name: "zdss_load", value: 3)
!84 = !DIEnumerator(name: "zdss_flush", value: 4)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 267, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "ZSTD_bm_buffered", value: 0)
!88 = !DIEnumerator(name: "ZSTD_bm_stable", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 119, baseType: !7, size: 32, elements: !90)
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "ZSTD_not_in_dst", value: 0)
!92 = !DIEnumerator(name: "ZSTD_in_dst", value: 1)
!93 = !DIEnumerator(name: "ZSTD_split", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 37, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "lib/zstd/decompress/zstd_decompress_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c33e8b9f2c1bee26dc711ab47bed86c7")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "not_streaming", value: 0)
!98 = !DIEnumerator(name: "is_streaming", value: 1)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 89, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "set_basic", value: 0)
!102 = !DIEnumerator(name: "set_rle", value: 1)
!103 = !DIEnumerator(name: "set_compressed", value: 2)
!104 = !DIEnumerator(name: "set_repeat", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 1166, baseType: !7, size: 32, elements: !106)
!106 = !{!107, !108}
!107 = !DIEnumerator(name: "ZSTD_lo_isRegularOffset", value: 0)
!108 = !DIEnumerator(name: "ZSTD_lo_isLongOffset", value: 1)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 90, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "lib/zstd/decompress/../common/bitstream.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1506eb3bcf17fe963e7dde55b0cfcb8f")
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "BIT_DStream_unfinished", value: 0)
!113 = !DIEnumerator(name: "BIT_DStream_endOfBuffer", value: 1)
!114 = !DIEnumerator(name: "BIT_DStream_completed", value: 2)
!115 = !DIEnumerator(name: "BIT_DStream_overflow", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 194, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "ZSTD_no_overlap", value: 0)
!119 = !DIEnumerator(name: "ZSTD_overlap_src_before_dst", value: 1)
!120 = !{!121, !127, !128, !138, !139, !140, !143, !144, !148, !147, !149, !151, !166, !167, !169, !170, !183, !186, !184, !130, !191, !208, !209, !215, !199, !217, !218, !196, !230}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 61, baseType: !123)
!122 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !124, line: 72, baseType: !125)
!124 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !124, line: 16, baseType: !126)
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockType_e", file: !6, line: 81, baseType: !5)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !131, line: 32, baseType: !132)
!131 = !DIFile(filename: "lib/zstd/decompress/../common/mem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecad453ab26990e649f823cad6e0e9a6")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !122, line: 108, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !134, line: 17, baseType: !135)
!134 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !136, line: 21, baseType: !137)
!136 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!137 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "symbolEncodingType_e", file: !6, line: 89, baseType: !99)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_longOffset_e", file: !3, line: 1166, baseType: !105)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !131, line: 37, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 110, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !134, line: 21, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !136, line: 27, baseType: !7)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !150, line: 38, baseType: !147)
!150 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !154, line: 32, size: 32, elements: !164)
!154 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!155 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !154, file: !154, line: 30, type: !156, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!156 = !DISubroutineType(types: !157)
!157 = !{!146, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "p", arg: 1, scope: !155, file: !154, line: 30, type: !158)
!162 = !DILocalVariable(name: "__pptr", scope: !163, file: !154, line: 32, type: !151)
!163 = distinct !DILexicalBlock(scope: !155, file: !154, line: 32, column: 9)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !153, file: !154, line: 32, baseType: !149, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !136, line: 24, baseType: !168)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !150, line: 36, baseType: !167)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !154, line: 27, size: 16, elements: !181)
!173 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !154, file: !154, line: 25, type: !174, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !158}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !134, line: 19, baseType: !167)
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "p", arg: 1, scope: !173, file: !154, line: 25, type: !158)
!179 = !DILocalVariable(name: "__pptr", scope: !180, file: !154, line: 27, type: !170)
!180 = distinct !DILexicalBlock(scope: !173, file: !154, line: 27, column: 9)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !172, file: !154, line: 27, baseType: !169, size: 16)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !131, line: 35, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !122, line: 109, baseType: !176)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "S16", file: !131, line: 36, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !122, line: 102, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !134, line: 18, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !136, line: 23, baseType: !190)
!190 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !193, file: !131, line: 143, size: 64, elements: !206)
!193 = distinct !DISubprogram(name: "MEM_write64", scope: !131, file: !131, line: 141, type: !194, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !139, !196}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "U64", file: !131, line: 39, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !122, line: 113, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !134, line: 23, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !136, line: 31, baseType: !200)
!200 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!201 = !{!202, !203, !204}
!202 = !DILocalVariable(name: "memPtr", arg: 1, scope: !193, file: !131, line: 141, type: !139)
!203 = !DILocalVariable(name: "value", arg: 2, scope: !193, file: !131, line: 141, type: !196)
!204 = !DILocalVariable(name: "__pptr", scope: !205, file: !131, line: 143, type: !191)
!205 = distinct !DILexicalBlock(scope: !193, file: !131, line: 143, column: 5)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !192, file: !131, line: 143, baseType: !196, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_seqSymbol_header", file: !50, line: 65, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 62, size: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "fastMode", scope: !211, file: !50, line: 63, baseType: !144, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tableLog", scope: !211, file: !50, line: 64, baseType: !144, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !150, line: 40, baseType: !199)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !154, line: 37, size: 64, elements: !228)
!221 = distinct !DISubprogram(name: "get_unaligned_le64", scope: !154, file: !154, line: 35, type: !222, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{!198, !158}
!224 = !{!225, !226}
!225 = !DILocalVariable(name: "p", arg: 1, scope: !221, file: !154, line: 35, type: !158)
!226 = !DILocalVariable(name: "__pptr", scope: !227, file: !154, line: 37, type: !218)
!227 = distinct !DILexicalBlock(scope: !221, file: !154, line: 37, column: 9)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !220, file: !154, line: 37, baseType: !217, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !122, line: 71, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ptrdiff_t", file: !124, line: 74, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !124, line: 15, baseType: !233)
!233 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!234 = !{!235, !0, !238, !245, !258, !264, !267, !272, !277, !280, !282, !300}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!236 = distinct !DIGlobalVariable(name: "ZSTD_blockHeaderSize", scope: !2, file: !6, line: 80, type: !237, isLocal: true, isDefinition: true)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "LL_bits", scope: !2, file: !6, line: 111, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 288, elements: !243)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !131, line: 33, baseType: !132)
!243 = !{!244}
!244 = !DISubrange(count: 36)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "LL_defaultDTable", scope: !2, file: !3, line: 323, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 4160, elements: !256)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_seqSymbol", file: !50, line: 72, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 67, size: 64, elements: !251)
!251 = !{!252, !253, !254, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nextState", scope: !250, file: !50, line: 68, baseType: !184, size: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nbAdditionalBits", scope: !250, file: !50, line: 69, baseType: !130, size: 8, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "nbBits", scope: !250, file: !50, line: 70, baseType: !130, size: 8, offset: 24)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "baseValue", scope: !250, file: !50, line: 71, baseType: !144, size: 32, offset: 32)
!256 = !{!257}
!257 = !DISubrange(count: 65)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "OF_base", scope: !2, file: !50, line: 37, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 1024, elements: !262)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!262 = !{!263}
!263 = !DISubrange(count: 32)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "OF_bits", scope: !2, file: !50, line: 43, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !262)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "OF_defaultDTable", scope: !2, file: !3, line: 361, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 2112, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 33)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "ML_base", scope: !2, file: !50, line: 49, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 1696, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 53)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "ML_bits", scope: !2, file: !6, line: 128, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 424, elements: !275)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "ML_defaultDTable", scope: !2, file: !3, line: 384, type: !247, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "dec32table", scope: !284, file: !3, line: 763, type: !297, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "ZSTD_overlapCopy8", scope: !3, file: !3, line: 759, type: !285, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287, !288, !121}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!289 = !{!290, !291, !292, !293}
!290 = !DILocalVariable(name: "op", arg: 1, scope: !284, file: !3, line: 759, type: !287)
!291 = !DILocalVariable(name: "ip", arg: 2, scope: !284, file: !3, line: 759, type: !288)
!292 = !DILocalVariable(name: "offset", arg: 3, scope: !284, file: !3, line: 759, type: !121)
!293 = !DILocalVariable(name: "sub2", scope: !294, file: !3, line: 765, type: !296)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 761, column: 21)
!295 = distinct !DILexicalBlock(scope: !284, file: !3, line: 761, column: 9)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 256, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 8)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "dec64table", scope: !284, file: !3, line: 764, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !298)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 1152, elements: !243)
!304 = !{i32 7, !"Dwarf Version", i32 5}
!305 = !{i32 2, !"Debug Info Version", i32 3}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 8, !"cf-protection-branch", i32 1}
!308 = !{i32 4, !"function_return_thunk_extern", i32 1}
!309 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!310 = !{i32 1, !"Code Model", i32 2}
!311 = !{i32 1, !"override-stack-alignment", i32 8}
!312 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!313 = distinct !DISubprogram(name: "ZSTD_getcBlockSize", scope: !3, file: !3, line: 56, type: !314, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!314 = !DISubroutineType(types: !315)
!315 = !{!121, !158, !121, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockProperties_t", file: !6, line: 419, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 415, size: 96, elements: !319)
!319 = !{!320, !321, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "blockType", scope: !318, file: !6, line: 416, baseType: !127, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lastBlock", scope: !318, file: !6, line: 417, baseType: !144, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "origSize", scope: !318, file: !6, line: 418, baseType: !144, size: 32, offset: 64)
!323 = !{!324, !325, !326, !327, !329}
!324 = !DILocalVariable(name: "src", arg: 1, scope: !313, file: !3, line: 56, type: !158)
!325 = !DILocalVariable(name: "srcSize", arg: 2, scope: !313, file: !3, line: 56, type: !121)
!326 = !DILocalVariable(name: "bpPtr", arg: 3, scope: !313, file: !3, line: 57, type: !316)
!327 = !DILocalVariable(name: "cBlockHeader", scope: !328, file: !3, line: 61, type: !261)
!328 = distinct !DILexicalBlock(scope: !313, file: !3, line: 61, column: 5)
!329 = !DILocalVariable(name: "cSize", scope: !328, file: !3, line: 62, type: !261)
!330 = !DILocation(line: 56, column: 39, scope: !313)
!331 = !DILocation(line: 56, column: 51, scope: !313)
!332 = !DILocation(line: 57, column: 46, scope: !313)
!333 = !DILocation(line: 59, column: 5, scope: !334)
!334 = distinct !DILexicalBlock(scope: !313, file: !3, line: 59, column: 5)
!335 = !DILocation(line: 59, column: 5, scope: !313)
!336 = !DILocation(line: 59, column: 5, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !3, line: 59, column: 5)
!338 = !DILocation(line: 61, column: 9, scope: !328)
!339 = !DILocation(line: 61, column: 19, scope: !328)
!340 = !DILocation(line: 61, column: 47, scope: !328)
!341 = !DILocation(line: 61, column: 34, scope: !328)
!342 = !DILocation(line: 62, column: 9, scope: !328)
!343 = !DILocation(line: 62, column: 19, scope: !328)
!344 = !DILocation(line: 62, column: 27, scope: !328)
!345 = !DILocation(line: 62, column: 40, scope: !328)
!346 = !DILocation(line: 63, column: 28, scope: !328)
!347 = !DILocation(line: 63, column: 41, scope: !328)
!348 = !DILocation(line: 63, column: 9, scope: !328)
!349 = !DILocation(line: 63, column: 16, scope: !328)
!350 = !DILocation(line: 63, column: 26, scope: !328)
!351 = !DILocation(line: 64, column: 43, scope: !328)
!352 = !DILocation(line: 64, column: 56, scope: !328)
!353 = !DILocation(line: 64, column: 62, scope: !328)
!354 = !DILocation(line: 64, column: 9, scope: !328)
!355 = !DILocation(line: 64, column: 16, scope: !328)
!356 = !DILocation(line: 64, column: 26, scope: !328)
!357 = !DILocation(line: 65, column: 27, scope: !328)
!358 = !DILocation(line: 65, column: 9, scope: !328)
!359 = !DILocation(line: 65, column: 16, scope: !328)
!360 = !DILocation(line: 65, column: 25, scope: !328)
!361 = !DILocation(line: 66, column: 13, scope: !362)
!362 = distinct !DILexicalBlock(scope: !328, file: !3, line: 66, column: 13)
!363 = !DILocation(line: 66, column: 20, scope: !362)
!364 = !DILocation(line: 66, column: 30, scope: !362)
!365 = !DILocation(line: 66, column: 13, scope: !328)
!366 = !DILocation(line: 66, column: 41, scope: !362)
!367 = !DILocation(line: 67, column: 9, scope: !368)
!368 = distinct !DILexicalBlock(scope: !328, file: !3, line: 67, column: 9)
!369 = !DILocation(line: 67, column: 9, scope: !328)
!370 = !DILocation(line: 67, column: 9, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !3, line: 67, column: 9)
!372 = !DILocation(line: 68, column: 16, scope: !328)
!373 = !DILocation(line: 68, column: 9, scope: !328)
!374 = !DILocation(line: 69, column: 5, scope: !313)
!375 = !DILocation(line: 70, column: 1, scope: !313)
!376 = distinct !DISubprogram(name: "MEM_readLE24", scope: !131, file: !131, line: 158, type: !377, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!144, !158}
!379 = !{!380}
!380 = !DILocalVariable(name: "memPtr", arg: 1, scope: !376, file: !131, line: 158, type: !158)
!381 = !DILocation(line: 158, column: 41, scope: !376)
!382 = !DILocation(line: 160, column: 25, scope: !376)
!383 = !DILocation(line: 160, column: 12, scope: !376)
!384 = !DILocation(line: 160, column: 51, scope: !376)
!385 = !DILocation(line: 160, column: 36, scope: !376)
!386 = !DILocation(line: 160, column: 62, scope: !376)
!387 = !DILocation(line: 160, column: 33, scope: !376)
!388 = !DILocation(line: 160, column: 5, scope: !376)
!389 = distinct !DISubprogram(name: "ZSTD_decodeLiteralsBlock", scope: !3, file: !3, line: 119, type: !390, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!390 = !DISubroutineType(types: !391)
!391 = !{!121, !392, !158, !121, !139, !121, !555}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DCtx", file: !45, line: 216, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_DCtx_s", file: !50, line: 125, size: 767552, elements: !395)
!395 = !{!396, !398, !399, !400, !405, !430, !434, !435, !436, !437, !438, !439, !451, !452, !453, !454, !456, !457, !458, !472, !473, !475, !477, !478, !479, !494, !495, !496, !497, !498, !502, !505, !506, !507, !509, !518, !520, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !535, !542, !543, !544, !546, !550, !554}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "LLTptr", scope: !394, file: !50, line: 127, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "MLTptr", scope: !394, file: !50, line: 128, baseType: !397, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "OFTptr", scope: !394, file: !50, line: 129, baseType: !397, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "HUFptr", scope: !394, file: !50, line: 130, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "HUF_DTable", file: !404, line: 143, baseType: !144)
!404 = !DIFile(filename: "lib/zstd/decompress/../common/huf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3885d88b55dce6c8e4168e380ad868c4")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !394, file: !50, line: 131, baseType: !406, size: 218336, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_entropyDTables_t", file: !50, line: 86, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 79, size: 218336, elements: !408)
!408 = !{!409, !413, !417, !418, !422, !426}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "LLTable", scope: !407, file: !50, line: 80, baseType: !410, size: 32832)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32832, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 513)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "OFTable", scope: !407, file: !50, line: 81, baseType: !414, size: 16448, offset: 32832)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 16448, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 257)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MLTable", scope: !407, file: !50, line: 82, baseType: !410, size: 32832, offset: 49280)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hufTable", scope: !407, file: !50, line: 83, baseType: !419, size: 131104, offset: 82112)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 131104, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 4097)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !407, file: !50, line: 84, baseType: !423, size: 96, offset: 213216)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 96, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 3)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !407, file: !50, line: 85, baseType: !427, size: 5024, offset: 213312)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 5024, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 157)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !394, file: !50, line: 132, baseType: !431, size: 20480, offset: 218592)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 20480, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "previousDstEnd", scope: !394, file: !50, line: 133, baseType: !158, size: 64, offset: 239104)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prefixStart", scope: !394, file: !50, line: 134, baseType: !158, size: 64, offset: 239168)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "virtualStart", scope: !394, file: !50, line: 135, baseType: !158, size: 64, offset: 239232)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dictEnd", scope: !394, file: !50, line: 136, baseType: !158, size: 64, offset: 239296)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "expected", scope: !394, file: !50, line: 137, baseType: !121, size: 64, offset: 239360)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fParams", scope: !394, file: !50, line: 138, baseType: !440, size: 320, offset: 239424)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameHeader", file: !45, line: 2483, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 2475, size: 320, elements: !442)
!442 = !{!443, !444, !445, !446, !448, !449, !450}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "frameContentSize", scope: !441, file: !45, line: 2476, baseType: !200, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "windowSize", scope: !441, file: !45, line: 2477, baseType: !200, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "blockSizeMax", scope: !441, file: !45, line: 2478, baseType: !7, size: 32, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "frameType", scope: !441, file: !45, line: 2479, baseType: !447, size: 32, offset: 160)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameType_e", file: !45, line: 2474, baseType: !44)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "headerSize", scope: !441, file: !45, line: 2480, baseType: !7, size: 32, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !441, file: !45, line: 2481, baseType: !7, size: 32, offset: 224)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "checksumFlag", scope: !441, file: !45, line: 2482, baseType: !7, size: 32, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "processedCSize", scope: !394, file: !50, line: 139, baseType: !196, size: 64, offset: 239744)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "decodedSize", scope: !394, file: !50, line: 140, baseType: !196, size: 64, offset: 239808)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "bType", scope: !394, file: !50, line: 141, baseType: !127, size: 32, offset: 239872)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "stage", scope: !394, file: !50, line: 142, baseType: !455, size: 32, offset: 239904)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dStage", file: !50, line: 91, baseType: !49)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "litEntropy", scope: !394, file: !50, line: 143, baseType: !144, size: 32, offset: 239936)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fseEntropy", scope: !394, file: !50, line: 144, baseType: !144, size: 32, offset: 239968)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "xxhState", scope: !394, file: !50, line: 145, baseType: !459, size: 640, offset: 240000)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xxh64_state", file: !460, line: 160, size: 640, elements: !461)
!460 = !DIFile(filename: "./include/linux/xxhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c71ec635eedf0b4cf42578b400352c76")
!461 = !{!462, !463, !464, !465, !466, !467, !471}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "total_len", scope: !459, file: !460, line: 161, baseType: !197, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !459, file: !460, line: 162, baseType: !197, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !459, file: !460, line: 163, baseType: !197, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !459, file: !460, line: 164, baseType: !197, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !459, file: !460, line: 165, baseType: !197, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mem64", scope: !459, file: !460, line: 166, baseType: !468, size: 256, offset: 320)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 4)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "memsize", scope: !459, file: !460, line: 167, baseType: !145, size: 32, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "headerSize", scope: !394, file: !50, line: 146, baseType: !121, size: 64, offset: 240640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !394, file: !50, line: 147, baseType: !474, size: 32, offset: 240704)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_format_e", file: !45, line: 1233, baseType: !60)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "forceIgnoreChecksum", scope: !394, file: !50, line: 148, baseType: !476, size: 32, offset: 240736)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_forceIgnoreChecksum_e", file: !45, line: 1239, baseType: !64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "validateChecksum", scope: !394, file: !50, line: 149, baseType: !144, size: 32, offset: 240768)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "litPtr", scope: !394, file: !50, line: 150, baseType: !128, size: 64, offset: 240832)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "customMem", scope: !394, file: !50, line: 151, baseType: !480, size: 192, offset: 240896)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_customMem", file: !45, line: 1568, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 1568, size: 192, elements: !482)
!482 = !{!483, !488, !493}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "customAlloc", scope: !481, file: !45, line: 1568, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_allocFunction", file: !45, line: 1566, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!139, !139, !121}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "customFree", scope: !481, file: !45, line: 1568, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_freeFunction", file: !45, line: 1567, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !139, !139}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !481, file: !45, line: 1568, baseType: !139, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "litSize", scope: !394, file: !50, line: 152, baseType: !121, size: 64, offset: 241088)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rleSize", scope: !394, file: !50, line: 153, baseType: !121, size: 64, offset: 241152)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "staticSize", scope: !394, file: !50, line: 154, baseType: !121, size: 64, offset: 241216)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "bmi2", scope: !394, file: !50, line: 156, baseType: !69, size: 32, offset: 241280)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ddictLocal", scope: !394, file: !50, line: 160, baseType: !499, size: 64, offset: 241344)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DDict", file: !45, line: 868, baseType: !501)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_DDict_s", file: !45, line: 868, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ddict", scope: !394, file: !50, line: 161, baseType: !503, size: 64, offset: 241408)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !394, file: !50, line: 162, baseType: !144, size: 32, offset: 241472)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ddictIsCold", scope: !394, file: !50, line: 163, baseType: !69, size: 32, offset: 241504)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dictUses", scope: !394, file: !50, line: 164, baseType: !508, size: 32, offset: 241536)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dictUses_e", file: !50, line: 100, baseType: !68)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ddictSet", scope: !394, file: !50, line: 165, baseType: !510, size: 64, offset: 241600)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DDictHashSet", file: !50, line: 107, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 103, size: 192, elements: !513)
!513 = !{!514, !516, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrTable", scope: !512, file: !50, line: 104, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrTableSize", scope: !512, file: !50, line: 105, baseType: !121, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrCount", scope: !512, file: !50, line: 106, baseType: !121, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "refMultipleDDicts", scope: !394, file: !50, line: 166, baseType: !519, size: 32, offset: 241664)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_refMultipleDDicts_e", file: !45, line: 1245, baseType: !74)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "streamStage", scope: !394, file: !50, line: 169, baseType: !521, size: 32, offset: 241696)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dStreamStage", file: !50, line: 94, baseType: !78)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "inBuff", scope: !394, file: !50, line: 170, baseType: !148, size: 64, offset: 241728)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "inBuffSize", scope: !394, file: !50, line: 171, baseType: !121, size: 64, offset: 241792)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "inPos", scope: !394, file: !50, line: 172, baseType: !121, size: 64, offset: 241856)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "maxWindowSize", scope: !394, file: !50, line: 173, baseType: !121, size: 64, offset: 241920)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "outBuff", scope: !394, file: !50, line: 174, baseType: !148, size: 64, offset: 241984)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "outBuffSize", scope: !394, file: !50, line: 175, baseType: !121, size: 64, offset: 242048)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "outStart", scope: !394, file: !50, line: 176, baseType: !121, size: 64, offset: 242112)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "outEnd", scope: !394, file: !50, line: 177, baseType: !121, size: 64, offset: 242176)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "lhSize", scope: !394, file: !50, line: 178, baseType: !121, size: 64, offset: 242240)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hostageByte", scope: !394, file: !50, line: 179, baseType: !144, size: 32, offset: 242304)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "noForwardProgress", scope: !394, file: !50, line: 180, baseType: !69, size: 32, offset: 242336)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "outBufferMode", scope: !394, file: !50, line: 181, baseType: !534, size: 32, offset: 242368)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_bufferMode_e", file: !6, line: 270, baseType: !85)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "expectedOutBuffer", scope: !394, file: !50, line: 182, baseType: !536, size: 192, offset: 242432)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_outBuffer", file: !45, line: 597, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_outBuffer_s", file: !45, line: 593, size: 192, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !537, file: !45, line: 594, baseType: !139, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !537, file: !45, line: 595, baseType: !121, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !537, file: !45, line: 596, baseType: !121, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "litBuffer", scope: !394, file: !50, line: 185, baseType: !166, size: 64, offset: 242624)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "litBufferEnd", scope: !394, file: !50, line: 186, baseType: !128, size: 64, offset: 242688)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "litBufferLocation", scope: !394, file: !50, line: 187, baseType: !545, size: 32, offset: 242752)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_litLocation_e", file: !50, line: 123, baseType: !89)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "litExtraBuffer", scope: !394, file: !50, line: 188, baseType: !547, size: 524544, offset: 242784)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 524544, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 65568)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "headerBuffer", scope: !394, file: !50, line: 189, baseType: !551, size: 144, offset: 767328)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 144, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 18)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "oversizedDuration", scope: !394, file: !50, line: 191, baseType: !121, size: 64, offset: 767488)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "streaming_operation", file: !95, line: 40, baseType: !94)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !567, !569, !572, !573, !574, !575, !576, !577, !578, !579, !584, !585, !586, !588, !589, !590, !591, !593, !594, !595}
!558 = !DILocalVariable(name: "dctx", arg: 1, scope: !389, file: !3, line: 119, type: !392)
!559 = !DILocalVariable(name: "src", arg: 2, scope: !389, file: !3, line: 120, type: !158)
!560 = !DILocalVariable(name: "srcSize", arg: 3, scope: !389, file: !3, line: 120, type: !121)
!561 = !DILocalVariable(name: "dst", arg: 4, scope: !389, file: !3, line: 121, type: !139)
!562 = !DILocalVariable(name: "dstCapacity", arg: 5, scope: !389, file: !3, line: 121, type: !121)
!563 = !DILocalVariable(name: "streaming", arg: 6, scope: !389, file: !3, line: 121, type: !555)
!564 = !DILocalVariable(name: "istart", scope: !565, file: !3, line: 126, type: !566)
!565 = distinct !DILexicalBlock(scope: !389, file: !3, line: 126, column: 5)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!567 = !DILocalVariable(name: "litEncType", scope: !565, file: !3, line: 127, type: !568)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!569 = !DILocalVariable(name: "lhSize", scope: !570, file: !3, line: 138, type: !121)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 138, column: 13)
!571 = distinct !DILexicalBlock(scope: !565, file: !3, line: 130, column: 9)
!572 = !DILocalVariable(name: "litSize", scope: !570, file: !3, line: 138, type: !121)
!573 = !DILocalVariable(name: "litCSize", scope: !570, file: !3, line: 138, type: !121)
!574 = !DILocalVariable(name: "singleStream", scope: !570, file: !3, line: 139, type: !144)
!575 = !DILocalVariable(name: "lhlCode", scope: !570, file: !3, line: 140, type: !261)
!576 = !DILocalVariable(name: "lhc", scope: !570, file: !3, line: 141, type: !261)
!577 = !DILocalVariable(name: "hufSuccess", scope: !570, file: !3, line: 142, type: !121)
!578 = !DILocalVariable(name: "expectedWriteSize", scope: !570, file: !3, line: 143, type: !121)
!579 = !DILocalVariable(name: "_ptr", scope: !580, file: !3, line: 174, type: !583)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 174, column: 21)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 173, column: 75)
!582 = distinct !DILexicalBlock(scope: !570, file: !3, line: 173, column: 21)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!584 = !DILocalVariable(name: "_size", scope: !580, file: !3, line: 174, type: !237)
!585 = !DILocalVariable(name: "_pos", scope: !580, file: !3, line: 174, type: !121)
!586 = !DILocalVariable(name: "litSize", scope: !587, file: !3, line: 225, type: !121)
!587 = distinct !DILexicalBlock(scope: !571, file: !3, line: 225, column: 13)
!588 = !DILocalVariable(name: "lhSize", scope: !587, file: !3, line: 225, type: !121)
!589 = !DILocalVariable(name: "lhlCode", scope: !587, file: !3, line: 226, type: !261)
!590 = !DILocalVariable(name: "expectedWriteSize", scope: !587, file: !3, line: 227, type: !121)
!591 = !DILocalVariable(name: "lhlCode", scope: !592, file: !3, line: 271, type: !261)
!592 = distinct !DILexicalBlock(scope: !571, file: !3, line: 271, column: 13)
!593 = !DILocalVariable(name: "litSize", scope: !592, file: !3, line: 272, type: !121)
!594 = !DILocalVariable(name: "lhSize", scope: !592, file: !3, line: 272, type: !121)
!595 = !DILocalVariable(name: "expectedWriteSize", scope: !592, file: !3, line: 273, type: !121)
!596 = !DILocation(line: 119, column: 44, scope: !389)
!597 = !DILocation(line: 120, column: 39, scope: !389)
!598 = !DILocation(line: 120, column: 51, scope: !389)
!599 = !DILocation(line: 121, column: 33, scope: !389)
!600 = !DILocation(line: 121, column: 45, scope: !389)
!601 = !DILocation(line: 121, column: 84, scope: !389)
!602 = !DILocation(line: 124, column: 5, scope: !603)
!603 = distinct !DILexicalBlock(scope: !389, file: !3, line: 124, column: 5)
!604 = !DILocation(line: 124, column: 5, scope: !389)
!605 = !DILocation(line: 124, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 124, column: 5)
!607 = !DILocation(line: 126, column: 9, scope: !565)
!608 = !DILocation(line: 126, column: 27, scope: !565)
!609 = !DILocation(line: 126, column: 50, scope: !565)
!610 = !DILocation(line: 127, column: 9, scope: !565)
!611 = !DILocation(line: 127, column: 36, scope: !565)
!612 = !DILocation(line: 127, column: 72, scope: !565)
!613 = !DILocation(line: 127, column: 82, scope: !565)
!614 = !DILocation(line: 129, column: 16, scope: !565)
!615 = !DILocation(line: 129, column: 9, scope: !565)
!616 = !DILocation(line: 133, column: 13, scope: !617)
!617 = distinct !DILexicalBlock(scope: !571, file: !3, line: 133, column: 13)
!618 = !DILocation(line: 133, column: 13, scope: !571)
!619 = !DILocation(line: 133, column: 13, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !3, line: 133, column: 13)
!621 = !DILocation(line: 137, column: 13, scope: !622)
!622 = distinct !DILexicalBlock(scope: !571, file: !3, line: 137, column: 13)
!623 = !DILocation(line: 137, column: 13, scope: !571)
!624 = !DILocation(line: 137, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !3, line: 137, column: 13)
!626 = !DILocation(line: 138, column: 17, scope: !570)
!627 = !DILocation(line: 138, column: 24, scope: !570)
!628 = !DILocation(line: 138, column: 32, scope: !570)
!629 = !DILocation(line: 138, column: 41, scope: !570)
!630 = !DILocation(line: 139, column: 17, scope: !570)
!631 = !DILocation(line: 139, column: 21, scope: !570)
!632 = !DILocation(line: 140, column: 17, scope: !570)
!633 = !DILocation(line: 140, column: 27, scope: !570)
!634 = !DILocation(line: 140, column: 38, scope: !570)
!635 = !DILocation(line: 140, column: 48, scope: !570)
!636 = !DILocation(line: 140, column: 54, scope: !570)
!637 = !DILocation(line: 141, column: 17, scope: !570)
!638 = !DILocation(line: 141, column: 27, scope: !570)
!639 = !DILocation(line: 141, column: 46, scope: !570)
!640 = !DILocation(line: 141, column: 33, scope: !570)
!641 = !DILocation(line: 142, column: 17, scope: !570)
!642 = !DILocation(line: 142, column: 24, scope: !570)
!643 = !DILocation(line: 143, column: 17, scope: !570)
!644 = !DILocation(line: 143, column: 24, scope: !570)
!645 = !DILocation(line: 143, column: 44, scope: !570)
!646 = !DILocation(line: 144, column: 24, scope: !570)
!647 = !DILocation(line: 144, column: 17, scope: !570)
!648 = !DILocation(line: 146, column: 25, scope: !649)
!649 = distinct !DILexicalBlock(scope: !570, file: !3, line: 145, column: 17)
!650 = !DILocation(line: 148, column: 37, scope: !649)
!651 = !DILocation(line: 148, column: 36, scope: !649)
!652 = !DILocation(line: 148, column: 34, scope: !649)
!653 = !DILocation(line: 149, column: 28, scope: !649)
!654 = !DILocation(line: 150, column: 33, scope: !649)
!655 = !DILocation(line: 150, column: 37, scope: !649)
!656 = !DILocation(line: 150, column: 43, scope: !649)
!657 = !DILocation(line: 150, column: 32, scope: !649)
!658 = !DILocation(line: 150, column: 30, scope: !649)
!659 = !DILocation(line: 151, column: 33, scope: !649)
!660 = !DILocation(line: 151, column: 37, scope: !649)
!661 = !DILocation(line: 151, column: 44, scope: !649)
!662 = !DILocation(line: 151, column: 32, scope: !649)
!663 = !DILocation(line: 151, column: 30, scope: !649)
!664 = !DILocation(line: 152, column: 21, scope: !649)
!665 = !DILocation(line: 155, column: 28, scope: !649)
!666 = !DILocation(line: 156, column: 33, scope: !649)
!667 = !DILocation(line: 156, column: 37, scope: !649)
!668 = !DILocation(line: 156, column: 43, scope: !649)
!669 = !DILocation(line: 156, column: 32, scope: !649)
!670 = !DILocation(line: 156, column: 30, scope: !649)
!671 = !DILocation(line: 157, column: 32, scope: !649)
!672 = !DILocation(line: 157, column: 36, scope: !649)
!673 = !DILocation(line: 157, column: 30, scope: !649)
!674 = !DILocation(line: 158, column: 21, scope: !649)
!675 = !DILocation(line: 161, column: 28, scope: !649)
!676 = !DILocation(line: 162, column: 33, scope: !649)
!677 = !DILocation(line: 162, column: 37, scope: !649)
!678 = !DILocation(line: 162, column: 43, scope: !649)
!679 = !DILocation(line: 162, column: 32, scope: !649)
!680 = !DILocation(line: 162, column: 30, scope: !649)
!681 = !DILocation(line: 163, column: 33, scope: !649)
!682 = !DILocation(line: 163, column: 37, scope: !649)
!683 = !DILocation(line: 163, column: 32, scope: !649)
!684 = !DILocation(line: 163, column: 55, scope: !649)
!685 = !DILocation(line: 163, column: 47, scope: !649)
!686 = !DILocation(line: 163, column: 65, scope: !649)
!687 = !DILocation(line: 163, column: 44, scope: !649)
!688 = !DILocation(line: 163, column: 30, scope: !649)
!689 = !DILocation(line: 164, column: 21, scope: !649)
!690 = !DILocation(line: 166, column: 17, scope: !691)
!691 = distinct !DILexicalBlock(scope: !570, file: !3, line: 166, column: 17)
!692 = !DILocation(line: 166, column: 17, scope: !570)
!693 = !DILocation(line: 166, column: 17, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !3, line: 166, column: 17)
!695 = !DILocation(line: 167, column: 17, scope: !696)
!696 = distinct !DILexicalBlock(scope: !570, file: !3, line: 167, column: 17)
!697 = !DILocation(line: 167, column: 17, scope: !570)
!698 = !DILocation(line: 167, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !3, line: 167, column: 17)
!700 = !DILocation(line: 168, column: 17, scope: !701)
!701 = distinct !DILexicalBlock(scope: !570, file: !3, line: 168, column: 17)
!702 = !DILocation(line: 168, column: 17, scope: !570)
!703 = !DILocation(line: 168, column: 17, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !3, line: 168, column: 17)
!705 = !DILocation(line: 169, column: 17, scope: !706)
!706 = distinct !DILexicalBlock(scope: !570, file: !3, line: 169, column: 17)
!707 = !DILocation(line: 169, column: 17, scope: !570)
!708 = !DILocation(line: 169, column: 17, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 169, column: 17)
!710 = !DILocation(line: 170, column: 45, scope: !570)
!711 = !DILocation(line: 170, column: 51, scope: !570)
!712 = !DILocation(line: 170, column: 56, scope: !570)
!713 = !DILocation(line: 170, column: 69, scope: !570)
!714 = !DILocation(line: 170, column: 78, scope: !570)
!715 = !DILocation(line: 170, column: 89, scope: !570)
!716 = !DILocation(line: 170, column: 17, scope: !570)
!717 = !DILocation(line: 173, column: 21, scope: !582)
!718 = !DILocation(line: 173, column: 27, scope: !582)
!719 = !DILocation(line: 173, column: 39, scope: !582)
!720 = !DILocation(line: 173, column: 43, scope: !582)
!721 = !DILocation(line: 173, column: 51, scope: !582)
!722 = !DILocation(line: 173, column: 21, scope: !570)
!723 = !DILocation(line: 174, column: 21, scope: !580)
!724 = !DILocation(line: 174, column: 21, scope: !725)
!725 = distinct !DILexicalBlock(scope: !580, file: !3, line: 174, column: 21)
!726 = !DILocation(line: 174, column: 21, scope: !727)
!727 = distinct !DILexicalBlock(scope: !725, file: !3, line: 174, column: 21)
!728 = !DILocation(line: 174, column: 21, scope: !729)
!729 = distinct !DILexicalBlock(scope: !727, file: !3, line: 174, column: 21)
!730 = distinct !{!730, !724, !724, !731, !732}
!731 = !{!"llvm.loop.mustprogress"}
!732 = !{!"llvm.loop.unroll.disable"}
!733 = !DILocation(line: 174, column: 21, scope: !581)
!734 = !DILocation(line: 175, column: 17, scope: !581)
!735 = !DILocation(line: 177, column: 21, scope: !736)
!736 = distinct !DILexicalBlock(scope: !570, file: !3, line: 177, column: 21)
!737 = !DILocation(line: 177, column: 31, scope: !736)
!738 = !DILocation(line: 177, column: 21, scope: !570)
!739 = !DILocation(line: 178, column: 25, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 178, column: 25)
!741 = distinct !DILexicalBlock(scope: !736, file: !3, line: 177, column: 45)
!742 = !DILocation(line: 178, column: 25, scope: !741)
!743 = !DILocation(line: 180, column: 29, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 178, column: 39)
!745 = !DILocation(line: 180, column: 35, scope: !744)
!746 = !DILocation(line: 180, column: 46, scope: !744)
!747 = !DILocation(line: 180, column: 55, scope: !744)
!748 = !DILocation(line: 180, column: 62, scope: !744)
!749 = !DILocation(line: 180, column: 61, scope: !744)
!750 = !DILocation(line: 180, column: 70, scope: !744)
!751 = !DILocation(line: 181, column: 29, scope: !744)
!752 = !DILocation(line: 181, column: 35, scope: !744)
!753 = !DILocation(line: 181, column: 62, scope: !744)
!754 = !DILocation(line: 181, column: 43, scope: !744)
!755 = !DILocation(line: 179, column: 38, scope: !744)
!756 = !DILocation(line: 179, column: 36, scope: !744)
!757 = !DILocation(line: 182, column: 21, scope: !744)
!758 = !DILocation(line: 184, column: 29, scope: !759)
!759 = distinct !DILexicalBlock(scope: !740, file: !3, line: 182, column: 28)
!760 = !DILocation(line: 184, column: 35, scope: !759)
!761 = !DILocation(line: 184, column: 46, scope: !759)
!762 = !DILocation(line: 184, column: 55, scope: !759)
!763 = !DILocation(line: 184, column: 62, scope: !759)
!764 = !DILocation(line: 184, column: 61, scope: !759)
!765 = !DILocation(line: 184, column: 70, scope: !759)
!766 = !DILocation(line: 185, column: 29, scope: !759)
!767 = !DILocation(line: 185, column: 35, scope: !759)
!768 = !DILocation(line: 185, column: 62, scope: !759)
!769 = !DILocation(line: 185, column: 43, scope: !759)
!770 = !DILocation(line: 183, column: 38, scope: !759)
!771 = !DILocation(line: 183, column: 36, scope: !759)
!772 = !DILocation(line: 187, column: 17, scope: !741)
!773 = !DILocation(line: 188, column: 25, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 188, column: 25)
!775 = distinct !DILexicalBlock(scope: !736, file: !3, line: 187, column: 24)
!776 = !DILocation(line: 188, column: 25, scope: !775)
!777 = !DILocation(line: 196, column: 29, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !3, line: 188, column: 39)
!779 = !DILocation(line: 196, column: 35, scope: !778)
!780 = !DILocation(line: 196, column: 43, scope: !778)
!781 = !DILocation(line: 196, column: 53, scope: !778)
!782 = !DILocation(line: 196, column: 59, scope: !778)
!783 = !DILocation(line: 196, column: 70, scope: !778)
!784 = !DILocation(line: 197, column: 29, scope: !778)
!785 = !DILocation(line: 197, column: 36, scope: !778)
!786 = !DILocation(line: 197, column: 35, scope: !778)
!787 = !DILocation(line: 197, column: 44, scope: !778)
!788 = !DILocation(line: 197, column: 54, scope: !778)
!789 = !DILocation(line: 197, column: 60, scope: !778)
!790 = !DILocation(line: 198, column: 73, scope: !778)
!791 = !DILocation(line: 198, column: 54, scope: !778)
!792 = !DILocation(line: 195, column: 38, scope: !778)
!793 = !DILocation(line: 195, column: 36, scope: !778)
!794 = !DILocation(line: 200, column: 21, scope: !778)
!795 = !DILocation(line: 202, column: 29, scope: !796)
!796 = distinct !DILexicalBlock(scope: !774, file: !3, line: 200, column: 28)
!797 = !DILocation(line: 202, column: 35, scope: !796)
!798 = !DILocation(line: 202, column: 43, scope: !796)
!799 = !DILocation(line: 202, column: 53, scope: !796)
!800 = !DILocation(line: 202, column: 59, scope: !796)
!801 = !DILocation(line: 202, column: 70, scope: !796)
!802 = !DILocation(line: 203, column: 29, scope: !796)
!803 = !DILocation(line: 203, column: 36, scope: !796)
!804 = !DILocation(line: 203, column: 35, scope: !796)
!805 = !DILocation(line: 203, column: 44, scope: !796)
!806 = !DILocation(line: 203, column: 54, scope: !796)
!807 = !DILocation(line: 203, column: 60, scope: !796)
!808 = !DILocation(line: 204, column: 73, scope: !796)
!809 = !DILocation(line: 204, column: 54, scope: !796)
!810 = !DILocation(line: 201, column: 38, scope: !796)
!811 = !DILocation(line: 201, column: 36, scope: !796)
!812 = !DILocation(line: 207, column: 21, scope: !813)
!813 = distinct !DILexicalBlock(scope: !570, file: !3, line: 207, column: 21)
!814 = !DILocation(line: 207, column: 27, scope: !813)
!815 = !DILocation(line: 207, column: 45, scope: !813)
!816 = !DILocation(line: 207, column: 21, scope: !570)
!817 = !DILocation(line: 209, column: 21, scope: !818)
!818 = distinct !DILexicalBlock(scope: !813, file: !3, line: 208, column: 17)
!819 = !DILocation(line: 210, column: 21, scope: !818)
!820 = !DILocation(line: 211, column: 21, scope: !818)
!821 = !DILocation(line: 211, column: 27, scope: !818)
!822 = !DILocation(line: 211, column: 37, scope: !818)
!823 = !DILocation(line: 212, column: 21, scope: !818)
!824 = !DILocation(line: 212, column: 27, scope: !818)
!825 = !DILocation(line: 212, column: 40, scope: !818)
!826 = !DILocation(line: 213, column: 17, scope: !818)
!827 = !DILocation(line: 215, column: 17, scope: !828)
!828 = distinct !DILexicalBlock(scope: !570, file: !3, line: 215, column: 17)
!829 = !DILocation(line: 215, column: 17, scope: !570)
!830 = !DILocation(line: 215, column: 17, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 215, column: 17)
!832 = !DILocation(line: 217, column: 32, scope: !570)
!833 = !DILocation(line: 217, column: 38, scope: !570)
!834 = !DILocation(line: 217, column: 17, scope: !570)
!835 = !DILocation(line: 217, column: 23, scope: !570)
!836 = !DILocation(line: 217, column: 30, scope: !570)
!837 = !DILocation(line: 218, column: 33, scope: !570)
!838 = !DILocation(line: 218, column: 17, scope: !570)
!839 = !DILocation(line: 218, column: 23, scope: !570)
!840 = !DILocation(line: 218, column: 31, scope: !570)
!841 = !DILocation(line: 219, column: 17, scope: !570)
!842 = !DILocation(line: 219, column: 23, scope: !570)
!843 = !DILocation(line: 219, column: 34, scope: !570)
!844 = !DILocation(line: 220, column: 21, scope: !845)
!845 = distinct !DILexicalBlock(scope: !570, file: !3, line: 220, column: 21)
!846 = !DILocation(line: 220, column: 31, scope: !845)
!847 = !DILocation(line: 220, column: 21, scope: !570)
!848 = !DILocation(line: 220, column: 64, scope: !845)
!849 = !DILocation(line: 220, column: 70, scope: !845)
!850 = !DILocation(line: 220, column: 78, scope: !845)
!851 = !DILocation(line: 220, column: 49, scope: !845)
!852 = !DILocation(line: 220, column: 55, scope: !845)
!853 = !DILocation(line: 220, column: 62, scope: !845)
!854 = !DILocation(line: 221, column: 24, scope: !570)
!855 = !DILocation(line: 221, column: 35, scope: !570)
!856 = !DILocation(line: 221, column: 33, scope: !570)
!857 = !DILocation(line: 221, column: 17, scope: !570)
!858 = !DILocation(line: 222, column: 13, scope: !571)
!859 = !DILocation(line: 225, column: 17, scope: !587)
!860 = !DILocation(line: 225, column: 24, scope: !587)
!861 = !DILocation(line: 225, column: 33, scope: !587)
!862 = !DILocation(line: 226, column: 17, scope: !587)
!863 = !DILocation(line: 226, column: 27, scope: !587)
!864 = !DILocation(line: 226, column: 39, scope: !587)
!865 = !DILocation(line: 226, column: 38, scope: !587)
!866 = !DILocation(line: 226, column: 50, scope: !587)
!867 = !DILocation(line: 226, column: 56, scope: !587)
!868 = !DILocation(line: 227, column: 17, scope: !587)
!869 = !DILocation(line: 227, column: 24, scope: !587)
!870 = !DILocation(line: 227, column: 44, scope: !587)
!871 = !DILocation(line: 228, column: 24, scope: !587)
!872 = !DILocation(line: 228, column: 17, scope: !587)
!873 = !DILocation(line: 230, column: 25, scope: !874)
!874 = distinct !DILexicalBlock(scope: !587, file: !3, line: 229, column: 17)
!875 = !DILocation(line: 231, column: 28, scope: !874)
!876 = !DILocation(line: 232, column: 31, scope: !874)
!877 = !DILocation(line: 232, column: 41, scope: !874)
!878 = !DILocation(line: 232, column: 29, scope: !874)
!879 = !DILocation(line: 233, column: 21, scope: !874)
!880 = !DILocation(line: 235, column: 28, scope: !874)
!881 = !DILocation(line: 236, column: 44, scope: !874)
!882 = !DILocation(line: 236, column: 31, scope: !874)
!883 = !DILocation(line: 236, column: 52, scope: !874)
!884 = !DILocation(line: 236, column: 29, scope: !874)
!885 = !DILocation(line: 237, column: 21, scope: !874)
!886 = !DILocation(line: 239, column: 28, scope: !874)
!887 = !DILocation(line: 240, column: 44, scope: !874)
!888 = !DILocation(line: 240, column: 31, scope: !874)
!889 = !DILocation(line: 240, column: 52, scope: !874)
!890 = !DILocation(line: 240, column: 29, scope: !874)
!891 = !DILocation(line: 241, column: 21, scope: !874)
!892 = !DILocation(line: 244, column: 17, scope: !893)
!893 = distinct !DILexicalBlock(scope: !587, file: !3, line: 244, column: 17)
!894 = !DILocation(line: 244, column: 17, scope: !587)
!895 = !DILocation(line: 244, column: 17, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 244, column: 17)
!897 = !DILocation(line: 245, column: 17, scope: !898)
!898 = distinct !DILexicalBlock(scope: !587, file: !3, line: 245, column: 17)
!899 = !DILocation(line: 245, column: 17, scope: !587)
!900 = !DILocation(line: 245, column: 17, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 245, column: 17)
!902 = !DILocation(line: 246, column: 45, scope: !587)
!903 = !DILocation(line: 246, column: 51, scope: !587)
!904 = !DILocation(line: 246, column: 56, scope: !587)
!905 = !DILocation(line: 246, column: 69, scope: !587)
!906 = !DILocation(line: 246, column: 78, scope: !587)
!907 = !DILocation(line: 246, column: 89, scope: !587)
!908 = !DILocation(line: 246, column: 17, scope: !587)
!909 = !DILocation(line: 247, column: 21, scope: !910)
!910 = distinct !DILexicalBlock(scope: !587, file: !3, line: 247, column: 21)
!911 = !DILocation(line: 247, column: 28, scope: !910)
!912 = !DILocation(line: 247, column: 27, scope: !910)
!913 = !DILocation(line: 247, column: 35, scope: !910)
!914 = !DILocation(line: 247, column: 58, scope: !910)
!915 = !DILocation(line: 247, column: 56, scope: !910)
!916 = !DILocation(line: 247, column: 21, scope: !587)
!917 = !DILocation(line: 248, column: 21, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 248, column: 21)
!919 = distinct !DILexicalBlock(scope: !910, file: !3, line: 247, column: 67)
!920 = !DILocation(line: 248, column: 21, scope: !919)
!921 = !DILocation(line: 248, column: 21, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 248, column: 21)
!923 = !DILocation(line: 249, column: 25, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !3, line: 249, column: 25)
!925 = !DILocation(line: 249, column: 31, scope: !924)
!926 = !DILocation(line: 249, column: 49, scope: !924)
!927 = !DILocation(line: 249, column: 25, scope: !919)
!928 = !DILocation(line: 251, column: 25, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 250, column: 21)
!930 = !DILocation(line: 252, column: 25, scope: !929)
!931 = !DILocation(line: 253, column: 21, scope: !929)
!932 = !DILocation(line: 256, column: 25, scope: !933)
!933 = distinct !DILexicalBlock(scope: !924, file: !3, line: 255, column: 21)
!934 = !DILocation(line: 258, column: 36, scope: !919)
!935 = !DILocation(line: 258, column: 42, scope: !919)
!936 = !DILocation(line: 258, column: 21, scope: !919)
!937 = !DILocation(line: 258, column: 27, scope: !919)
!938 = !DILocation(line: 258, column: 34, scope: !919)
!939 = !DILocation(line: 259, column: 37, scope: !919)
!940 = !DILocation(line: 259, column: 21, scope: !919)
!941 = !DILocation(line: 259, column: 27, scope: !919)
!942 = !DILocation(line: 259, column: 35, scope: !919)
!943 = !DILocation(line: 260, column: 28, scope: !919)
!944 = !DILocation(line: 260, column: 35, scope: !919)
!945 = !DILocation(line: 260, column: 34, scope: !919)
!946 = !DILocation(line: 260, column: 21, scope: !919)
!947 = !DILocation(line: 263, column: 32, scope: !587)
!948 = !DILocation(line: 263, column: 39, scope: !587)
!949 = !DILocation(line: 263, column: 38, scope: !587)
!950 = !DILocation(line: 263, column: 17, scope: !587)
!951 = !DILocation(line: 263, column: 23, scope: !587)
!952 = !DILocation(line: 263, column: 30, scope: !587)
!953 = !DILocation(line: 264, column: 33, scope: !587)
!954 = !DILocation(line: 264, column: 17, scope: !587)
!955 = !DILocation(line: 264, column: 23, scope: !587)
!956 = !DILocation(line: 264, column: 31, scope: !587)
!957 = !DILocation(line: 265, column: 38, scope: !587)
!958 = !DILocation(line: 265, column: 44, scope: !587)
!959 = !DILocation(line: 265, column: 53, scope: !587)
!960 = !DILocation(line: 265, column: 51, scope: !587)
!961 = !DILocation(line: 265, column: 17, scope: !587)
!962 = !DILocation(line: 265, column: 23, scope: !587)
!963 = !DILocation(line: 265, column: 36, scope: !587)
!964 = !DILocation(line: 266, column: 17, scope: !587)
!965 = !DILocation(line: 266, column: 23, scope: !587)
!966 = !DILocation(line: 266, column: 41, scope: !587)
!967 = !DILocation(line: 267, column: 24, scope: !587)
!968 = !DILocation(line: 267, column: 31, scope: !587)
!969 = !DILocation(line: 267, column: 30, scope: !587)
!970 = !DILocation(line: 267, column: 17, scope: !587)
!971 = !DILocation(line: 268, column: 13, scope: !571)
!972 = !DILocation(line: 271, column: 17, scope: !592)
!973 = !DILocation(line: 271, column: 27, scope: !592)
!974 = !DILocation(line: 271, column: 39, scope: !592)
!975 = !DILocation(line: 271, column: 38, scope: !592)
!976 = !DILocation(line: 271, column: 50, scope: !592)
!977 = !DILocation(line: 271, column: 56, scope: !592)
!978 = !DILocation(line: 272, column: 17, scope: !592)
!979 = !DILocation(line: 272, column: 24, scope: !592)
!980 = !DILocation(line: 272, column: 33, scope: !592)
!981 = !DILocation(line: 273, column: 17, scope: !592)
!982 = !DILocation(line: 273, column: 24, scope: !592)
!983 = !DILocation(line: 273, column: 44, scope: !592)
!984 = !DILocation(line: 274, column: 24, scope: !592)
!985 = !DILocation(line: 274, column: 17, scope: !592)
!986 = !DILocation(line: 276, column: 25, scope: !987)
!987 = distinct !DILexicalBlock(scope: !592, file: !3, line: 275, column: 17)
!988 = !DILocation(line: 277, column: 28, scope: !987)
!989 = !DILocation(line: 278, column: 31, scope: !987)
!990 = !DILocation(line: 278, column: 41, scope: !987)
!991 = !DILocation(line: 278, column: 29, scope: !987)
!992 = !DILocation(line: 279, column: 21, scope: !987)
!993 = !DILocation(line: 281, column: 28, scope: !987)
!994 = !DILocation(line: 282, column: 44, scope: !987)
!995 = !DILocation(line: 282, column: 31, scope: !987)
!996 = !DILocation(line: 282, column: 52, scope: !987)
!997 = !DILocation(line: 282, column: 29, scope: !987)
!998 = !DILocation(line: 283, column: 21, scope: !987)
!999 = !DILocation(line: 285, column: 28, scope: !987)
!1000 = !DILocation(line: 286, column: 44, scope: !987)
!1001 = !DILocation(line: 286, column: 31, scope: !987)
!1002 = !DILocation(line: 286, column: 52, scope: !987)
!1003 = !DILocation(line: 286, column: 29, scope: !987)
!1004 = !DILocation(line: 287, column: 21, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !987, file: !3, line: 287, column: 21)
!1006 = !DILocation(line: 287, column: 21, scope: !987)
!1007 = !DILocation(line: 287, column: 21, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 287, column: 21)
!1009 = !DILocation(line: 288, column: 21, scope: !987)
!1010 = !DILocation(line: 290, column: 17, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !592, file: !3, line: 290, column: 17)
!1012 = !DILocation(line: 290, column: 17, scope: !592)
!1013 = !DILocation(line: 290, column: 17, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 290, column: 17)
!1015 = !DILocation(line: 291, column: 17, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !592, file: !3, line: 291, column: 17)
!1017 = !DILocation(line: 291, column: 17, scope: !592)
!1018 = !DILocation(line: 291, column: 17, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 291, column: 17)
!1020 = !DILocation(line: 292, column: 17, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !592, file: !3, line: 292, column: 17)
!1022 = !DILocation(line: 292, column: 17, scope: !592)
!1023 = !DILocation(line: 292, column: 17, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 292, column: 17)
!1025 = !DILocation(line: 293, column: 45, scope: !592)
!1026 = !DILocation(line: 293, column: 51, scope: !592)
!1027 = !DILocation(line: 293, column: 56, scope: !592)
!1028 = !DILocation(line: 293, column: 69, scope: !592)
!1029 = !DILocation(line: 293, column: 78, scope: !592)
!1030 = !DILocation(line: 293, column: 89, scope: !592)
!1031 = !DILocation(line: 293, column: 17, scope: !592)
!1032 = !DILocation(line: 294, column: 21, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !592, file: !3, line: 294, column: 21)
!1034 = !DILocation(line: 294, column: 27, scope: !1033)
!1035 = !DILocation(line: 294, column: 45, scope: !1033)
!1036 = !DILocation(line: 294, column: 21, scope: !592)
!1037 = !DILocation(line: 296, column: 21, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 295, column: 17)
!1039 = !DILocation(line: 297, column: 21, scope: !1038)
!1040 = !DILocation(line: 298, column: 17, scope: !1038)
!1041 = !DILocation(line: 301, column: 21, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 300, column: 17)
!1043 = !DILocation(line: 303, column: 32, scope: !592)
!1044 = !DILocation(line: 303, column: 38, scope: !592)
!1045 = !DILocation(line: 303, column: 17, scope: !592)
!1046 = !DILocation(line: 303, column: 23, scope: !592)
!1047 = !DILocation(line: 303, column: 30, scope: !592)
!1048 = !DILocation(line: 304, column: 33, scope: !592)
!1049 = !DILocation(line: 304, column: 17, scope: !592)
!1050 = !DILocation(line: 304, column: 23, scope: !592)
!1051 = !DILocation(line: 304, column: 31, scope: !592)
!1052 = !DILocation(line: 305, column: 24, scope: !592)
!1053 = !DILocation(line: 305, column: 30, scope: !592)
!1054 = !DILocation(line: 305, column: 17, scope: !592)
!1055 = !DILocation(line: 306, column: 13, scope: !571)
!1056 = !DILocation(line: 308, column: 13, scope: !571)
!1057 = !DILocation(line: 308, column: 13, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !571, file: !3, line: 308, column: 13)
!1059 = !DILocation(line: 309, column: 9, scope: !571)
!1060 = !DILocation(line: 310, column: 5, scope: !389)
!1061 = !DILocation(line: 311, column: 1, scope: !389)
!1062 = distinct !DISubprogram(name: "MEM_readLE32", scope: !131, file: !131, line: 169, type: !377, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1063)
!1063 = !{!1064}
!1064 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1062, file: !131, line: 169, type: !158)
!1065 = !DILocation(line: 169, column: 41, scope: !1062)
!1066 = !DILocation(line: 171, column: 31, scope: !1062)
!1067 = !DILocation(line: 171, column: 12, scope: !1062)
!1068 = !DILocation(line: 171, column: 5, scope: !1062)
!1069 = distinct !DISubprogram(name: "ZSTD_allocateLiteralsBuffer", scope: !3, file: !3, line: 73, type: !1070, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1074)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !392, !1072, !237, !237, !555, !237, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1075 = !DILocalVariable(name: "dctx", arg: 1, scope: !1069, file: !3, line: 73, type: !392)
!1076 = !DILocalVariable(name: "dst", arg: 2, scope: !1069, file: !3, line: 73, type: !1072)
!1077 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !1069, file: !3, line: 73, type: !237)
!1078 = !DILocalVariable(name: "litSize", arg: 4, scope: !1069, file: !3, line: 73, type: !237)
!1079 = !DILocalVariable(name: "streaming", arg: 5, scope: !1069, file: !3, line: 74, type: !555)
!1080 = !DILocalVariable(name: "expectedWriteSize", arg: 6, scope: !1069, file: !3, line: 74, type: !237)
!1081 = !DILocalVariable(name: "splitImmediately", arg: 7, scope: !1069, file: !3, line: 74, type: !1073)
!1082 = !DILocation(line: 73, column: 52, scope: !1069)
!1083 = !DILocation(line: 73, column: 70, scope: !1069)
!1084 = !DILocation(line: 73, column: 88, scope: !1069)
!1085 = !DILocation(line: 73, column: 114, scope: !1069)
!1086 = !DILocation(line: 74, column: 31, scope: !1069)
!1087 = !DILocation(line: 74, column: 55, scope: !1069)
!1088 = !DILocation(line: 74, column: 89, scope: !1069)
!1089 = !DILocation(line: 76, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 76, column: 9)
!1091 = !DILocation(line: 76, column: 19, scope: !1090)
!1092 = !DILocation(line: 76, column: 36, scope: !1090)
!1093 = !DILocation(line: 76, column: 39, scope: !1090)
!1094 = !DILocation(line: 76, column: 96, scope: !1090)
!1095 = !DILocation(line: 76, column: 94, scope: !1090)
!1096 = !DILocation(line: 76, column: 104, scope: !1090)
!1097 = !DILocation(line: 76, column: 51, scope: !1090)
!1098 = !DILocation(line: 76, column: 9, scope: !1069)
!1099 = !DILocation(line: 79, column: 34, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 77, column: 5)
!1101 = !DILocation(line: 79, column: 38, scope: !1100)
!1102 = !DILocation(line: 79, column: 59, scope: !1100)
!1103 = !DILocation(line: 79, column: 9, scope: !1100)
!1104 = !DILocation(line: 79, column: 15, scope: !1100)
!1105 = !DILocation(line: 79, column: 25, scope: !1100)
!1106 = !DILocation(line: 80, column: 30, scope: !1100)
!1107 = !DILocation(line: 80, column: 36, scope: !1100)
!1108 = !DILocation(line: 80, column: 48, scope: !1100)
!1109 = !DILocation(line: 80, column: 46, scope: !1100)
!1110 = !DILocation(line: 80, column: 9, scope: !1100)
!1111 = !DILocation(line: 80, column: 15, scope: !1100)
!1112 = !DILocation(line: 80, column: 28, scope: !1100)
!1113 = !DILocation(line: 81, column: 9, scope: !1100)
!1114 = !DILocation(line: 81, column: 15, scope: !1100)
!1115 = !DILocation(line: 81, column: 33, scope: !1100)
!1116 = !DILocation(line: 82, column: 5, scope: !1100)
!1117 = !DILocation(line: 83, column: 14, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 83, column: 14)
!1119 = !DILocation(line: 83, column: 22, scope: !1118)
!1120 = !DILocation(line: 83, column: 14, scope: !1090)
!1121 = !DILocation(line: 86, column: 13, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 86, column: 13)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 84, column: 5)
!1124 = !DILocation(line: 86, column: 13, scope: !1123)
!1125 = !DILocation(line: 88, column: 38, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 86, column: 31)
!1127 = !DILocation(line: 88, column: 44, scope: !1126)
!1128 = !DILocation(line: 88, column: 42, scope: !1126)
!1129 = !DILocation(line: 88, column: 64, scope: !1126)
!1130 = !DILocation(line: 88, column: 62, scope: !1126)
!1131 = !DILocation(line: 88, column: 72, scope: !1126)
!1132 = !DILocation(line: 88, column: 98, scope: !1126)
!1133 = !DILocation(line: 88, column: 13, scope: !1126)
!1134 = !DILocation(line: 88, column: 19, scope: !1126)
!1135 = !DILocation(line: 88, column: 29, scope: !1126)
!1136 = !DILocation(line: 89, column: 34, scope: !1126)
!1137 = !DILocation(line: 89, column: 40, scope: !1126)
!1138 = !DILocation(line: 89, column: 52, scope: !1126)
!1139 = !DILocation(line: 89, column: 50, scope: !1126)
!1140 = !DILocation(line: 89, column: 60, scope: !1126)
!1141 = !DILocation(line: 89, column: 13, scope: !1126)
!1142 = !DILocation(line: 89, column: 19, scope: !1126)
!1143 = !DILocation(line: 89, column: 32, scope: !1126)
!1144 = !DILocation(line: 90, column: 9, scope: !1126)
!1145 = !DILocation(line: 93, column: 38, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 91, column: 14)
!1147 = !DILocation(line: 93, column: 44, scope: !1146)
!1148 = !DILocation(line: 93, column: 42, scope: !1146)
!1149 = !DILocation(line: 93, column: 64, scope: !1146)
!1150 = !DILocation(line: 93, column: 62, scope: !1146)
!1151 = !DILocation(line: 93, column: 13, scope: !1146)
!1152 = !DILocation(line: 93, column: 19, scope: !1146)
!1153 = !DILocation(line: 93, column: 29, scope: !1146)
!1154 = !DILocation(line: 94, column: 41, scope: !1146)
!1155 = !DILocation(line: 94, column: 47, scope: !1146)
!1156 = !DILocation(line: 94, column: 45, scope: !1146)
!1157 = !DILocation(line: 94, column: 13, scope: !1146)
!1158 = !DILocation(line: 94, column: 19, scope: !1146)
!1159 = !DILocation(line: 94, column: 32, scope: !1146)
!1160 = !DILocation(line: 96, column: 9, scope: !1123)
!1161 = !DILocation(line: 96, column: 15, scope: !1123)
!1162 = !DILocation(line: 96, column: 33, scope: !1123)
!1163 = !DILocation(line: 97, column: 5, scope: !1123)
!1164 = !DILocation(line: 101, column: 27, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 99, column: 5)
!1166 = !DILocation(line: 101, column: 33, scope: !1165)
!1167 = !DILocation(line: 101, column: 9, scope: !1165)
!1168 = !DILocation(line: 101, column: 15, scope: !1165)
!1169 = !DILocation(line: 101, column: 25, scope: !1165)
!1170 = !DILocation(line: 102, column: 30, scope: !1165)
!1171 = !DILocation(line: 102, column: 36, scope: !1165)
!1172 = !DILocation(line: 102, column: 48, scope: !1165)
!1173 = !DILocation(line: 102, column: 46, scope: !1165)
!1174 = !DILocation(line: 102, column: 9, scope: !1165)
!1175 = !DILocation(line: 102, column: 15, scope: !1165)
!1176 = !DILocation(line: 102, column: 28, scope: !1165)
!1177 = !DILocation(line: 103, column: 9, scope: !1165)
!1178 = !DILocation(line: 103, column: 15, scope: !1165)
!1179 = !DILocation(line: 103, column: 33, scope: !1165)
!1180 = !DILocation(line: 105, column: 1, scope: !1069)
!1181 = !DISubprogram(name: "HUF_decompress1X_usingDTable_bmi2", scope: !404, file: !404, line: 344, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!121, !139, !121, !158, !121, !401, !69}
!1184 = distinct !DISubprogram(name: "ZSTD_DCtx_get_bmi2", scope: !50, file: !50, line: 201, type: !1185, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1189)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!69, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!1189 = !{!1190}
!1190 = !DILocalVariable(name: "dctx", arg: 1, scope: !1184, file: !50, line: 201, type: !1187)
!1191 = !DILocation(line: 201, column: 61, scope: !1184)
!1192 = !DILocation(line: 203, column: 9, scope: !1184)
!1193 = !DILocation(line: 203, column: 15, scope: !1184)
!1194 = !DILocation(line: 203, column: 2, scope: !1184)
!1195 = !DISubprogram(name: "HUF_decompress4X_usingDTable_bmi2", scope: !404, file: !404, line: 348, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubprogram(name: "HUF_decompress1X1_DCtx_wksp_bmi2", scope: !404, file: !404, line: 346, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!121, !1199, !139, !121, !158, !121, !139, !121, !69}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1200 = !DISubprogram(name: "HUF_decompress4X_hufOnly_wksp_bmi2", scope: !404, file: !404, line: 349, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = distinct !DISubprogram(name: "ERR_isError", scope: !1202, file: !1202, line: 47, type: !1203, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1202 = !DIFile(filename: "lib/zstd/decompress/../common/error_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c1e76caf533df7af314a25a57fa92da")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!7, !121}
!1205 = !{!1206}
!1206 = !DILocalVariable(name: "code", arg: 1, scope: !1201, file: !1202, line: 47, type: !121)
!1207 = !DILocation(line: 47, column: 40, scope: !1201)
!1208 = !DILocation(line: 47, column: 56, scope: !1201)
!1209 = !DILocation(line: 47, column: 61, scope: !1201)
!1210 = !DILocation(line: 47, column: 48, scope: !1201)
!1211 = distinct !DISubprogram(name: "MEM_readLE16", scope: !131, file: !131, line: 148, type: !1212, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1214)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!184, !158}
!1214 = !{!1215}
!1215 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1211, file: !131, line: 148, type: !158)
!1216 = !DILocation(line: 148, column: 41, scope: !1211)
!1217 = !DILocation(line: 150, column: 31, scope: !1211)
!1218 = !DILocation(line: 150, column: 12, scope: !1211)
!1219 = !DILocation(line: 150, column: 5, scope: !1211)
!1220 = distinct !DISubprogram(name: "ZSTD_buildFSETable", scope: !3, file: !3, line: 584, type: !1221, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1228)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1223, !1224, !7, !1226, !1227, !7, !139, !121, !69}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1229 = !DILocalVariable(name: "dt", arg: 1, scope: !1220, file: !3, line: 584, type: !1223)
!1230 = !DILocalVariable(name: "normalizedCounter", arg: 2, scope: !1220, file: !3, line: 585, type: !1224)
!1231 = !DILocalVariable(name: "maxSymbolValue", arg: 3, scope: !1220, file: !3, line: 585, type: !7)
!1232 = !DILocalVariable(name: "baseValue", arg: 4, scope: !1220, file: !3, line: 586, type: !1226)
!1233 = !DILocalVariable(name: "nbAdditionalBits", arg: 5, scope: !1220, file: !3, line: 586, type: !1227)
!1234 = !DILocalVariable(name: "tableLog", arg: 6, scope: !1220, file: !3, line: 587, type: !7)
!1235 = !DILocalVariable(name: "wksp", arg: 7, scope: !1220, file: !3, line: 587, type: !139)
!1236 = !DILocalVariable(name: "wkspSize", arg: 8, scope: !1220, file: !3, line: 587, type: !121)
!1237 = !DILocalVariable(name: "bmi2", arg: 9, scope: !1220, file: !3, line: 587, type: !69)
!1238 = !DILocation(line: 584, column: 41, scope: !1220)
!1239 = !DILocation(line: 585, column: 26, scope: !1220)
!1240 = !DILocation(line: 585, column: 54, scope: !1220)
!1241 = !DILocation(line: 586, column: 24, scope: !1220)
!1242 = !DILocation(line: 586, column: 45, scope: !1220)
!1243 = !DILocation(line: 587, column: 22, scope: !1220)
!1244 = !DILocation(line: 587, column: 38, scope: !1220)
!1245 = !DILocation(line: 587, column: 51, scope: !1220)
!1246 = !DILocation(line: 587, column: 65, scope: !1220)
!1247 = !DILocation(line: 590, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 590, column: 9)
!1249 = !DILocation(line: 590, column: 9, scope: !1220)
!1250 = !DILocation(line: 591, column: 38, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 590, column: 15)
!1252 = !DILocation(line: 591, column: 42, scope: !1251)
!1253 = !DILocation(line: 591, column: 61, scope: !1251)
!1254 = !DILocation(line: 592, column: 17, scope: !1251)
!1255 = !DILocation(line: 592, column: 28, scope: !1251)
!1256 = !DILocation(line: 592, column: 46, scope: !1251)
!1257 = !DILocation(line: 592, column: 56, scope: !1251)
!1258 = !DILocation(line: 592, column: 62, scope: !1251)
!1259 = !DILocation(line: 591, column: 9, scope: !1251)
!1260 = !DILocation(line: 593, column: 9, scope: !1251)
!1261 = !DILocation(line: 596, column: 11, scope: !1220)
!1262 = !DILocation(line: 597, column: 37, scope: !1220)
!1263 = !DILocation(line: 597, column: 41, scope: !1220)
!1264 = !DILocation(line: 597, column: 60, scope: !1220)
!1265 = !DILocation(line: 598, column: 13, scope: !1220)
!1266 = !DILocation(line: 598, column: 24, scope: !1220)
!1267 = !DILocation(line: 598, column: 42, scope: !1220)
!1268 = !DILocation(line: 598, column: 52, scope: !1220)
!1269 = !DILocation(line: 598, column: 58, scope: !1220)
!1270 = !DILocation(line: 597, column: 5, scope: !1220)
!1271 = !DILocation(line: 599, column: 1, scope: !1220)
!1272 = distinct !DISubprogram(name: "ZSTD_buildFSETable_body_bmi2", scope: !3, file: !3, line: 574, type: !1273, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !1223, !1224, !7, !1226, !1227, !7, !139, !121}
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1276 = !DILocalVariable(name: "dt", arg: 1, scope: !1272, file: !3, line: 574, type: !1223)
!1277 = !DILocalVariable(name: "normalizedCounter", arg: 2, scope: !1272, file: !3, line: 575, type: !1224)
!1278 = !DILocalVariable(name: "maxSymbolValue", arg: 3, scope: !1272, file: !3, line: 575, type: !7)
!1279 = !DILocalVariable(name: "baseValue", arg: 4, scope: !1272, file: !3, line: 576, type: !1226)
!1280 = !DILocalVariable(name: "nbAdditionalBits", arg: 5, scope: !1272, file: !3, line: 576, type: !1227)
!1281 = !DILocalVariable(name: "tableLog", arg: 6, scope: !1272, file: !3, line: 577, type: !7)
!1282 = !DILocalVariable(name: "wksp", arg: 7, scope: !1272, file: !3, line: 577, type: !139)
!1283 = !DILocalVariable(name: "wkspSize", arg: 8, scope: !1272, file: !3, line: 577, type: !121)
!1284 = !DILocation(line: 574, column: 80, scope: !1272)
!1285 = !DILocation(line: 575, column: 26, scope: !1272)
!1286 = !DILocation(line: 575, column: 54, scope: !1272)
!1287 = !DILocation(line: 576, column: 24, scope: !1272)
!1288 = !DILocation(line: 576, column: 45, scope: !1272)
!1289 = !DILocation(line: 577, column: 22, scope: !1272)
!1290 = !DILocation(line: 577, column: 38, scope: !1272)
!1291 = !DILocation(line: 577, column: 51, scope: !1272)
!1292 = !DILocation(line: 579, column: 29, scope: !1272)
!1293 = !DILocation(line: 579, column: 33, scope: !1272)
!1294 = !DILocation(line: 579, column: 52, scope: !1272)
!1295 = !DILocation(line: 580, column: 13, scope: !1272)
!1296 = !DILocation(line: 580, column: 24, scope: !1272)
!1297 = !DILocation(line: 580, column: 42, scope: !1272)
!1298 = !DILocation(line: 580, column: 52, scope: !1272)
!1299 = !DILocation(line: 580, column: 58, scope: !1272)
!1300 = !DILocation(line: 579, column: 5, scope: !1272)
!1301 = !DILocation(line: 581, column: 1, scope: !1272)
!1302 = distinct !DISubprogram(name: "ZSTD_buildFSETable_body_default", scope: !3, file: !3, line: 564, type: !1273, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1304 = !DILocalVariable(name: "dt", arg: 1, scope: !1302, file: !3, line: 564, type: !1223)
!1305 = !DILocalVariable(name: "normalizedCounter", arg: 2, scope: !1302, file: !3, line: 565, type: !1224)
!1306 = !DILocalVariable(name: "maxSymbolValue", arg: 3, scope: !1302, file: !3, line: 565, type: !7)
!1307 = !DILocalVariable(name: "baseValue", arg: 4, scope: !1302, file: !3, line: 566, type: !1226)
!1308 = !DILocalVariable(name: "nbAdditionalBits", arg: 5, scope: !1302, file: !3, line: 566, type: !1227)
!1309 = !DILocalVariable(name: "tableLog", arg: 6, scope: !1302, file: !3, line: 567, type: !7)
!1310 = !DILocalVariable(name: "wksp", arg: 7, scope: !1302, file: !3, line: 567, type: !139)
!1311 = !DILocalVariable(name: "wkspSize", arg: 8, scope: !1302, file: !3, line: 567, type: !121)
!1312 = !DILocation(line: 564, column: 61, scope: !1302)
!1313 = !DILocation(line: 565, column: 26, scope: !1302)
!1314 = !DILocation(line: 565, column: 54, scope: !1302)
!1315 = !DILocation(line: 566, column: 24, scope: !1302)
!1316 = !DILocation(line: 566, column: 45, scope: !1302)
!1317 = !DILocation(line: 567, column: 22, scope: !1302)
!1318 = !DILocation(line: 567, column: 38, scope: !1302)
!1319 = !DILocation(line: 567, column: 51, scope: !1302)
!1320 = !DILocation(line: 569, column: 29, scope: !1302)
!1321 = !DILocation(line: 569, column: 33, scope: !1302)
!1322 = !DILocation(line: 569, column: 52, scope: !1302)
!1323 = !DILocation(line: 570, column: 13, scope: !1302)
!1324 = !DILocation(line: 570, column: 24, scope: !1302)
!1325 = !DILocation(line: 570, column: 42, scope: !1302)
!1326 = !DILocation(line: 570, column: 52, scope: !1302)
!1327 = !DILocation(line: 570, column: 58, scope: !1302)
!1328 = !DILocation(line: 569, column: 5, scope: !1302)
!1329 = !DILocation(line: 571, column: 1, scope: !1302)
!1330 = distinct !DISubprogram(name: "ZSTD_decodeSeqHeaders", scope: !3, file: !3, line: 653, type: !1331, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!121, !392, !1333, !158, !121}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1345, !1346, !1347, !1349, !1351}
!1335 = !DILocalVariable(name: "dctx", arg: 1, scope: !1330, file: !3, line: 653, type: !392)
!1336 = !DILocalVariable(name: "nbSeqPtr", arg: 2, scope: !1330, file: !3, line: 653, type: !1333)
!1337 = !DILocalVariable(name: "src", arg: 3, scope: !1330, file: !3, line: 654, type: !158)
!1338 = !DILocalVariable(name: "srcSize", arg: 4, scope: !1330, file: !3, line: 654, type: !121)
!1339 = !DILocalVariable(name: "istart", scope: !1330, file: !3, line: 656, type: !566)
!1340 = !DILocalVariable(name: "iend", scope: !1330, file: !3, line: 657, type: !566)
!1341 = !DILocalVariable(name: "ip", scope: !1330, file: !3, line: 658, type: !128)
!1342 = !DILocalVariable(name: "nbSeq", scope: !1330, file: !3, line: 659, type: !69)
!1343 = !DILocalVariable(name: "LLtype", scope: !1344, file: !3, line: 686, type: !568)
!1344 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 686, column: 5)
!1345 = !DILocalVariable(name: "OFtype", scope: !1344, file: !3, line: 687, type: !568)
!1346 = !DILocalVariable(name: "MLtype", scope: !1344, file: !3, line: 688, type: !568)
!1347 = !DILocalVariable(name: "llhSize", scope: !1348, file: !3, line: 692, type: !237)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 692, column: 9)
!1349 = !DILocalVariable(name: "ofhSize", scope: !1350, file: !3, line: 704, type: !237)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 704, column: 9)
!1351 = !DILocalVariable(name: "mlhSize", scope: !1352, file: !3, line: 716, type: !237)
!1352 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 716, column: 9)
!1353 = !DILocation(line: 653, column: 41, scope: !1330)
!1354 = !DILocation(line: 653, column: 52, scope: !1330)
!1355 = !DILocation(line: 654, column: 42, scope: !1330)
!1356 = !DILocation(line: 654, column: 54, scope: !1330)
!1357 = !DILocation(line: 656, column: 5, scope: !1330)
!1358 = !DILocation(line: 656, column: 23, scope: !1330)
!1359 = !DILocation(line: 656, column: 45, scope: !1330)
!1360 = !DILocation(line: 657, column: 5, scope: !1330)
!1361 = !DILocation(line: 657, column: 23, scope: !1330)
!1362 = !DILocation(line: 657, column: 30, scope: !1330)
!1363 = !DILocation(line: 657, column: 39, scope: !1330)
!1364 = !DILocation(line: 657, column: 37, scope: !1330)
!1365 = !DILocation(line: 658, column: 5, scope: !1330)
!1366 = !DILocation(line: 658, column: 17, scope: !1330)
!1367 = !DILocation(line: 658, column: 22, scope: !1330)
!1368 = !DILocation(line: 659, column: 5, scope: !1330)
!1369 = !DILocation(line: 659, column: 9, scope: !1330)
!1370 = !DILocation(line: 663, column: 5, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 663, column: 5)
!1372 = !DILocation(line: 663, column: 5, scope: !1330)
!1373 = !DILocation(line: 663, column: 5, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 663, column: 5)
!1375 = !DILocation(line: 666, column: 16, scope: !1330)
!1376 = !DILocation(line: 666, column: 13, scope: !1330)
!1377 = !DILocation(line: 666, column: 11, scope: !1330)
!1378 = !DILocation(line: 667, column: 10, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 667, column: 9)
!1380 = !DILocation(line: 667, column: 9, scope: !1330)
!1381 = !DILocation(line: 668, column: 10, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 667, column: 17)
!1383 = !DILocation(line: 668, column: 18, scope: !1382)
!1384 = !DILocation(line: 669, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 669, column: 9)
!1386 = !DILocation(line: 669, column: 9, scope: !1382)
!1387 = !DILocation(line: 669, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 669, column: 9)
!1389 = !DILocation(line: 670, column: 9, scope: !1382)
!1390 = !DILocation(line: 672, column: 9, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 672, column: 9)
!1392 = !DILocation(line: 672, column: 15, scope: !1391)
!1393 = !DILocation(line: 672, column: 9, scope: !1330)
!1394 = !DILocation(line: 673, column: 13, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 673, column: 13)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 672, column: 23)
!1397 = !DILocation(line: 673, column: 19, scope: !1395)
!1398 = !DILocation(line: 673, column: 13, scope: !1396)
!1399 = !DILocation(line: 674, column: 13, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 674, column: 13)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 673, column: 28)
!1402 = !DILocation(line: 674, column: 13, scope: !1401)
!1403 = !DILocation(line: 674, column: 13, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 674, column: 13)
!1405 = !DILocation(line: 675, column: 34, scope: !1401)
!1406 = !DILocation(line: 675, column: 21, scope: !1401)
!1407 = !DILocation(line: 675, column: 38, scope: !1401)
!1408 = !DILocation(line: 675, column: 19, scope: !1401)
!1409 = !DILocation(line: 676, column: 15, scope: !1401)
!1410 = !DILocation(line: 677, column: 9, scope: !1401)
!1411 = !DILocation(line: 678, column: 13, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 678, column: 13)
!1413 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 677, column: 16)
!1414 = !DILocation(line: 678, column: 13, scope: !1413)
!1415 = !DILocation(line: 678, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 678, column: 13)
!1417 = !DILocation(line: 679, column: 23, scope: !1413)
!1418 = !DILocation(line: 679, column: 28, scope: !1413)
!1419 = !DILocation(line: 679, column: 34, scope: !1413)
!1420 = !DILocation(line: 679, column: 44, scope: !1413)
!1421 = !DILocation(line: 679, column: 41, scope: !1413)
!1422 = !DILocation(line: 679, column: 39, scope: !1413)
!1423 = !DILocation(line: 679, column: 19, scope: !1413)
!1424 = !DILocation(line: 681, column: 5, scope: !1396)
!1425 = !DILocation(line: 682, column: 17, scope: !1330)
!1426 = !DILocation(line: 682, column: 6, scope: !1330)
!1427 = !DILocation(line: 682, column: 15, scope: !1330)
!1428 = !DILocation(line: 685, column: 5, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 685, column: 5)
!1430 = !DILocation(line: 685, column: 5, scope: !1330)
!1431 = !DILocation(line: 685, column: 5, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 685, column: 5)
!1433 = !DILocation(line: 686, column: 9, scope: !1344)
!1434 = !DILocation(line: 686, column: 36, scope: !1344)
!1435 = !DILocation(line: 686, column: 69, scope: !1344)
!1436 = !DILocation(line: 686, column: 68, scope: !1344)
!1437 = !DILocation(line: 686, column: 72, scope: !1344)
!1438 = !DILocation(line: 687, column: 9, scope: !1344)
!1439 = !DILocation(line: 687, column: 36, scope: !1344)
!1440 = !DILocation(line: 687, column: 70, scope: !1344)
!1441 = !DILocation(line: 687, column: 69, scope: !1344)
!1442 = !DILocation(line: 687, column: 73, scope: !1344)
!1443 = !DILocation(line: 687, column: 79, scope: !1344)
!1444 = !DILocation(line: 688, column: 9, scope: !1344)
!1445 = !DILocation(line: 688, column: 36, scope: !1344)
!1446 = !DILocation(line: 688, column: 70, scope: !1344)
!1447 = !DILocation(line: 688, column: 69, scope: !1344)
!1448 = !DILocation(line: 688, column: 73, scope: !1344)
!1449 = !DILocation(line: 688, column: 79, scope: !1344)
!1450 = !DILocation(line: 689, column: 11, scope: !1344)
!1451 = !DILocation(line: 692, column: 13, scope: !1348)
!1452 = !DILocation(line: 692, column: 26, scope: !1348)
!1453 = !DILocation(line: 692, column: 55, scope: !1348)
!1454 = !DILocation(line: 692, column: 61, scope: !1348)
!1455 = !DILocation(line: 692, column: 69, scope: !1348)
!1456 = !DILocation(line: 692, column: 79, scope: !1348)
!1457 = !DILocation(line: 692, column: 85, scope: !1348)
!1458 = !DILocation(line: 693, column: 55, scope: !1348)
!1459 = !DILocation(line: 694, column: 55, scope: !1348)
!1460 = !DILocation(line: 694, column: 59, scope: !1348)
!1461 = !DILocation(line: 694, column: 64, scope: !1348)
!1462 = !DILocation(line: 694, column: 63, scope: !1348)
!1463 = !DILocation(line: 696, column: 73, scope: !1348)
!1464 = !DILocation(line: 696, column: 79, scope: !1348)
!1465 = !DILocation(line: 697, column: 55, scope: !1348)
!1466 = !DILocation(line: 697, column: 61, scope: !1348)
!1467 = !DILocation(line: 697, column: 74, scope: !1348)
!1468 = !DILocation(line: 698, column: 55, scope: !1348)
!1469 = !DILocation(line: 698, column: 61, scope: !1348)
!1470 = !DILocation(line: 699, column: 74, scope: !1348)
!1471 = !DILocation(line: 699, column: 55, scope: !1348)
!1472 = !DILocation(line: 692, column: 36, scope: !1348)
!1473 = !DILocation(line: 700, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 700, column: 13)
!1475 = !DILocation(line: 700, column: 13, scope: !1348)
!1476 = !DILocation(line: 700, column: 13, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 700, column: 13)
!1478 = !DILocation(line: 701, column: 19, scope: !1348)
!1479 = !DILocation(line: 701, column: 16, scope: !1348)
!1480 = !DILocation(line: 702, column: 9, scope: !1344)
!1481 = !DILocation(line: 704, column: 13, scope: !1350)
!1482 = !DILocation(line: 704, column: 26, scope: !1350)
!1483 = !DILocation(line: 704, column: 55, scope: !1350)
!1484 = !DILocation(line: 704, column: 61, scope: !1350)
!1485 = !DILocation(line: 704, column: 69, scope: !1350)
!1486 = !DILocation(line: 704, column: 79, scope: !1350)
!1487 = !DILocation(line: 704, column: 85, scope: !1350)
!1488 = !DILocation(line: 705, column: 55, scope: !1350)
!1489 = !DILocation(line: 706, column: 55, scope: !1350)
!1490 = !DILocation(line: 706, column: 59, scope: !1350)
!1491 = !DILocation(line: 706, column: 64, scope: !1350)
!1492 = !DILocation(line: 706, column: 63, scope: !1350)
!1493 = !DILocation(line: 708, column: 73, scope: !1350)
!1494 = !DILocation(line: 708, column: 79, scope: !1350)
!1495 = !DILocation(line: 709, column: 55, scope: !1350)
!1496 = !DILocation(line: 709, column: 61, scope: !1350)
!1497 = !DILocation(line: 709, column: 74, scope: !1350)
!1498 = !DILocation(line: 710, column: 55, scope: !1350)
!1499 = !DILocation(line: 710, column: 61, scope: !1350)
!1500 = !DILocation(line: 711, column: 74, scope: !1350)
!1501 = !DILocation(line: 711, column: 55, scope: !1350)
!1502 = !DILocation(line: 704, column: 36, scope: !1350)
!1503 = !DILocation(line: 712, column: 13, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 712, column: 13)
!1505 = !DILocation(line: 712, column: 13, scope: !1350)
!1506 = !DILocation(line: 712, column: 13, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 712, column: 13)
!1508 = !DILocation(line: 713, column: 19, scope: !1350)
!1509 = !DILocation(line: 713, column: 16, scope: !1350)
!1510 = !DILocation(line: 714, column: 9, scope: !1344)
!1511 = !DILocation(line: 716, column: 13, scope: !1352)
!1512 = !DILocation(line: 716, column: 26, scope: !1352)
!1513 = !DILocation(line: 716, column: 55, scope: !1352)
!1514 = !DILocation(line: 716, column: 61, scope: !1352)
!1515 = !DILocation(line: 716, column: 69, scope: !1352)
!1516 = !DILocation(line: 716, column: 79, scope: !1352)
!1517 = !DILocation(line: 716, column: 85, scope: !1352)
!1518 = !DILocation(line: 717, column: 55, scope: !1352)
!1519 = !DILocation(line: 718, column: 55, scope: !1352)
!1520 = !DILocation(line: 718, column: 59, scope: !1352)
!1521 = !DILocation(line: 718, column: 64, scope: !1352)
!1522 = !DILocation(line: 718, column: 63, scope: !1352)
!1523 = !DILocation(line: 720, column: 73, scope: !1352)
!1524 = !DILocation(line: 720, column: 79, scope: !1352)
!1525 = !DILocation(line: 721, column: 55, scope: !1352)
!1526 = !DILocation(line: 721, column: 61, scope: !1352)
!1527 = !DILocation(line: 721, column: 74, scope: !1352)
!1528 = !DILocation(line: 722, column: 55, scope: !1352)
!1529 = !DILocation(line: 722, column: 61, scope: !1352)
!1530 = !DILocation(line: 723, column: 74, scope: !1352)
!1531 = !DILocation(line: 723, column: 55, scope: !1352)
!1532 = !DILocation(line: 716, column: 36, scope: !1352)
!1533 = !DILocation(line: 724, column: 13, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 724, column: 13)
!1535 = !DILocation(line: 724, column: 13, scope: !1352)
!1536 = !DILocation(line: 724, column: 13, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 724, column: 13)
!1538 = !DILocation(line: 725, column: 19, scope: !1352)
!1539 = !DILocation(line: 725, column: 16, scope: !1352)
!1540 = !DILocation(line: 726, column: 9, scope: !1344)
!1541 = !DILocation(line: 727, column: 5, scope: !1330)
!1542 = !DILocation(line: 729, column: 12, scope: !1330)
!1543 = !DILocation(line: 729, column: 15, scope: !1330)
!1544 = !DILocation(line: 729, column: 14, scope: !1330)
!1545 = !DILocation(line: 729, column: 5, scope: !1330)
!1546 = !DILocation(line: 730, column: 1, scope: !1330)
!1547 = distinct !DISubprogram(name: "ZSTD_buildSeqTable", scope: !3, file: !3, line: 605, type: !1548, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1552)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!121, !1223, !1550, !138, !7, !144, !158, !121, !1226, !1227, !397, !144, !69, !69, !1551, !121, !69}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1572, !1573, !1574, !1578, !1579, !1581, !1582, !1583, !1585, !1587}
!1553 = !DILocalVariable(name: "DTableSpace", arg: 1, scope: !1547, file: !3, line: 605, type: !1223)
!1554 = !DILocalVariable(name: "DTablePtr", arg: 2, scope: !1547, file: !3, line: 605, type: !1550)
!1555 = !DILocalVariable(name: "type", arg: 3, scope: !1547, file: !3, line: 606, type: !138)
!1556 = !DILocalVariable(name: "max", arg: 4, scope: !1547, file: !3, line: 606, type: !7)
!1557 = !DILocalVariable(name: "maxLog", arg: 5, scope: !1547, file: !3, line: 606, type: !144)
!1558 = !DILocalVariable(name: "src", arg: 6, scope: !1547, file: !3, line: 607, type: !158)
!1559 = !DILocalVariable(name: "srcSize", arg: 7, scope: !1547, file: !3, line: 607, type: !121)
!1560 = !DILocalVariable(name: "baseValue", arg: 8, scope: !1547, file: !3, line: 608, type: !1226)
!1561 = !DILocalVariable(name: "nbAdditionalBits", arg: 9, scope: !1547, file: !3, line: 608, type: !1227)
!1562 = !DILocalVariable(name: "defaultTable", arg: 10, scope: !1547, file: !3, line: 609, type: !397)
!1563 = !DILocalVariable(name: "flagRepeatTable", arg: 11, scope: !1547, file: !3, line: 609, type: !144)
!1564 = !DILocalVariable(name: "ddictIsCold", arg: 12, scope: !1547, file: !3, line: 610, type: !69)
!1565 = !DILocalVariable(name: "nbSeq", arg: 13, scope: !1547, file: !3, line: 610, type: !69)
!1566 = !DILocalVariable(name: "wksp", arg: 14, scope: !1547, file: !3, line: 610, type: !1551)
!1567 = !DILocalVariable(name: "wkspSize", arg: 15, scope: !1547, file: !3, line: 610, type: !121)
!1568 = !DILocalVariable(name: "bmi2", arg: 16, scope: !1547, file: !3, line: 611, type: !69)
!1569 = !DILocalVariable(name: "symbol", scope: !1570, file: !3, line: 618, type: !261)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 618, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 614, column: 5)
!1572 = !DILocalVariable(name: "baseline", scope: !1570, file: !3, line: 619, type: !261)
!1573 = !DILocalVariable(name: "nbBits", scope: !1570, file: !3, line: 620, type: !241)
!1574 = !DILocalVariable(name: "pStart", scope: !1575, file: !3, line: 632, type: !1577)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 631, column: 58)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 631, column: 13)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!1578 = !DILocalVariable(name: "pSize", scope: !1575, file: !3, line: 633, type: !237)
!1579 = !DILocalVariable(name: "_ptr", scope: !1580, file: !3, line: 634, type: !583)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 634, column: 13)
!1581 = !DILocalVariable(name: "_size", scope: !1580, file: !3, line: 634, type: !237)
!1582 = !DILocalVariable(name: "_pos", scope: !1580, file: !3, line: 634, type: !121)
!1583 = !DILocalVariable(name: "tableLog", scope: !1584, file: !3, line: 638, type: !7)
!1584 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 638, column: 9)
!1585 = !DILocalVariable(name: "norm", scope: !1584, file: !3, line: 639, type: !1586)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 848, elements: !275)
!1587 = !DILocalVariable(name: "headerSize", scope: !1584, file: !3, line: 640, type: !237)
!1588 = !DILocation(line: 605, column: 50, scope: !1547)
!1589 = !DILocation(line: 605, column: 86, scope: !1547)
!1590 = !DILocation(line: 606, column: 55, scope: !1547)
!1591 = !DILocation(line: 606, column: 70, scope: !1547)
!1592 = !DILocation(line: 606, column: 79, scope: !1547)
!1593 = !DILocation(line: 607, column: 46, scope: !1547)
!1594 = !DILocation(line: 607, column: 58, scope: !1547)
!1595 = !DILocation(line: 608, column: 45, scope: !1547)
!1596 = !DILocation(line: 608, column: 66, scope: !1547)
!1597 = !DILocation(line: 609, column: 56, scope: !1547)
!1598 = !DILocation(line: 609, column: 74, scope: !1547)
!1599 = !DILocation(line: 610, column: 38, scope: !1547)
!1600 = !DILocation(line: 610, column: 55, scope: !1547)
!1601 = !DILocation(line: 610, column: 67, scope: !1547)
!1602 = !DILocation(line: 610, column: 80, scope: !1547)
!1603 = !DILocation(line: 611, column: 38, scope: !1547)
!1604 = !DILocation(line: 613, column: 12, scope: !1547)
!1605 = !DILocation(line: 613, column: 5, scope: !1547)
!1606 = !DILocation(line: 616, column: 9, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 616, column: 9)
!1608 = !DILocation(line: 616, column: 9, scope: !1571)
!1609 = !DILocation(line: 616, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 616, column: 9)
!1611 = !DILocation(line: 617, column: 9, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 617, column: 9)
!1613 = !DILocation(line: 617, column: 9, scope: !1571)
!1614 = !DILocation(line: 617, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 617, column: 9)
!1616 = !DILocation(line: 618, column: 13, scope: !1570)
!1617 = !DILocation(line: 618, column: 23, scope: !1570)
!1618 = !DILocation(line: 618, column: 46, scope: !1570)
!1619 = !DILocation(line: 618, column: 32, scope: !1570)
!1620 = !DILocation(line: 619, column: 13, scope: !1570)
!1621 = !DILocation(line: 619, column: 23, scope: !1570)
!1622 = !DILocation(line: 619, column: 34, scope: !1570)
!1623 = !DILocation(line: 619, column: 44, scope: !1570)
!1624 = !DILocation(line: 620, column: 13, scope: !1570)
!1625 = !DILocation(line: 620, column: 22, scope: !1570)
!1626 = !DILocation(line: 620, column: 31, scope: !1570)
!1627 = !DILocation(line: 620, column: 48, scope: !1570)
!1628 = !DILocation(line: 621, column: 36, scope: !1570)
!1629 = !DILocation(line: 621, column: 49, scope: !1570)
!1630 = !DILocation(line: 621, column: 59, scope: !1570)
!1631 = !DILocation(line: 621, column: 13, scope: !1570)
!1632 = !DILocation(line: 622, column: 9, scope: !1571)
!1633 = !DILocation(line: 623, column: 22, scope: !1571)
!1634 = !DILocation(line: 623, column: 10, scope: !1571)
!1635 = !DILocation(line: 623, column: 20, scope: !1571)
!1636 = !DILocation(line: 624, column: 9, scope: !1571)
!1637 = !DILocation(line: 626, column: 22, scope: !1571)
!1638 = !DILocation(line: 626, column: 10, scope: !1571)
!1639 = !DILocation(line: 626, column: 20, scope: !1571)
!1640 = !DILocation(line: 627, column: 9, scope: !1571)
!1641 = !DILocation(line: 629, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 629, column: 9)
!1643 = !DILocation(line: 629, column: 9, scope: !1571)
!1644 = !DILocation(line: 629, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 629, column: 9)
!1646 = !DILocation(line: 631, column: 13, scope: !1576)
!1647 = !DILocation(line: 631, column: 25, scope: !1576)
!1648 = !DILocation(line: 631, column: 29, scope: !1576)
!1649 = !DILocation(line: 631, column: 35, scope: !1576)
!1650 = !DILocation(line: 631, column: 13, scope: !1571)
!1651 = !DILocation(line: 632, column: 13, scope: !1575)
!1652 = !DILocation(line: 632, column: 31, scope: !1575)
!1653 = !DILocation(line: 632, column: 41, scope: !1575)
!1654 = !DILocation(line: 632, column: 40, scope: !1575)
!1655 = !DILocation(line: 633, column: 13, scope: !1575)
!1656 = !DILocation(line: 633, column: 26, scope: !1575)
!1657 = !DILocation(line: 633, column: 60, scope: !1575)
!1658 = !DILocation(line: 633, column: 59, scope: !1575)
!1659 = !DILocation(line: 633, column: 57, scope: !1575)
!1660 = !DILocation(line: 634, column: 13, scope: !1580)
!1661 = !DILocation(line: 634, column: 13, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 634, column: 13)
!1663 = !DILocation(line: 634, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 634, column: 13)
!1665 = !DILocation(line: 634, column: 13, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 634, column: 13)
!1667 = distinct !{!1667, !1661, !1661, !731, !732}
!1668 = !DILocation(line: 634, column: 13, scope: !1575)
!1669 = !DILocation(line: 635, column: 9, scope: !1576)
!1670 = !DILocation(line: 635, column: 9, scope: !1575)
!1671 = !DILocation(line: 636, column: 9, scope: !1571)
!1672 = !DILocation(line: 638, column: 13, scope: !1584)
!1673 = !DILocation(line: 638, column: 22, scope: !1584)
!1674 = !DILocation(line: 639, column: 13, scope: !1584)
!1675 = !DILocation(line: 639, column: 17, scope: !1584)
!1676 = !DILocation(line: 640, column: 13, scope: !1584)
!1677 = !DILocation(line: 640, column: 26, scope: !1584)
!1678 = !DILocation(line: 640, column: 54, scope: !1584)
!1679 = !DILocation(line: 640, column: 77, scope: !1584)
!1680 = !DILocation(line: 640, column: 82, scope: !1584)
!1681 = !DILocation(line: 640, column: 39, scope: !1584)
!1682 = !DILocation(line: 641, column: 13, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 641, column: 13)
!1684 = !DILocation(line: 641, column: 13, scope: !1584)
!1685 = !DILocation(line: 641, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 641, column: 13)
!1687 = !DILocation(line: 642, column: 13, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 642, column: 13)
!1689 = !DILocation(line: 642, column: 13, scope: !1584)
!1690 = !DILocation(line: 642, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 642, column: 13)
!1692 = !DILocation(line: 643, column: 32, scope: !1584)
!1693 = !DILocation(line: 643, column: 45, scope: !1584)
!1694 = !DILocation(line: 643, column: 51, scope: !1584)
!1695 = !DILocation(line: 643, column: 56, scope: !1584)
!1696 = !DILocation(line: 643, column: 67, scope: !1584)
!1697 = !DILocation(line: 643, column: 85, scope: !1584)
!1698 = !DILocation(line: 643, column: 95, scope: !1584)
!1699 = !DILocation(line: 643, column: 101, scope: !1584)
!1700 = !DILocation(line: 643, column: 111, scope: !1584)
!1701 = !DILocation(line: 643, column: 13, scope: !1584)
!1702 = !DILocation(line: 644, column: 26, scope: !1584)
!1703 = !DILocation(line: 644, column: 14, scope: !1584)
!1704 = !DILocation(line: 644, column: 24, scope: !1584)
!1705 = !DILocation(line: 645, column: 20, scope: !1584)
!1706 = !DILocation(line: 645, column: 13, scope: !1584)
!1707 = !DILocation(line: 646, column: 9, scope: !1571)
!1708 = !DILocation(line: 649, column: 9, scope: !1571)
!1709 = !DILocation(line: 649, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 649, column: 9)
!1711 = !DILocation(line: 650, column: 5, scope: !1571)
!1712 = !DILocation(line: 651, column: 1, scope: !1547)
!1713 = distinct !DISubprogram(name: "ZSTD_decompressBlock_internal", scope: !3, file: !3, line: 1978, type: !1714, scopeLine: 1981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!121, !392, !139, !121, !158, !121, !296, !555}
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1727, !1729, !1731, !1732, !1733, !1736}
!1717 = !DILocalVariable(name: "dctx", arg: 1, scope: !1713, file: !3, line: 1978, type: !392)
!1718 = !DILocalVariable(name: "dst", arg: 2, scope: !1713, file: !3, line: 1979, type: !139)
!1719 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !1713, file: !3, line: 1979, type: !121)
!1720 = !DILocalVariable(name: "src", arg: 4, scope: !1713, file: !3, line: 1980, type: !158)
!1721 = !DILocalVariable(name: "srcSize", arg: 5, scope: !1713, file: !3, line: 1980, type: !121)
!1722 = !DILocalVariable(name: "frame", arg: 6, scope: !1713, file: !3, line: 1980, type: !296)
!1723 = !DILocalVariable(name: "streaming", arg: 7, scope: !1713, file: !3, line: 1980, type: !555)
!1724 = !DILocalVariable(name: "ip", scope: !1713, file: !3, line: 1982, type: !128)
!1725 = !DILocalVariable(name: "isLongOffset", scope: !1713, file: !3, line: 1989, type: !1726)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1727 = !DILocalVariable(name: "litCSize", scope: !1728, file: !3, line: 1995, type: !237)
!1728 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1995, column: 5)
!1729 = !DILocalVariable(name: "usePrefetchDecoder", scope: !1730, file: !3, line: 2010, type: !69)
!1730 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 2003, column: 5)
!1731 = !DILocalVariable(name: "nbSeq", scope: !1730, file: !3, line: 2012, type: !69)
!1732 = !DILocalVariable(name: "seqHSize", scope: !1730, file: !3, line: 2013, type: !237)
!1733 = !DILocalVariable(name: "shareLongOffsets", scope: !1734, file: !3, line: 2025, type: !261)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 2024, column: 38)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 2022, column: 14)
!1736 = !DILocalVariable(name: "minShare", scope: !1734, file: !3, line: 2026, type: !261)
!1737 = !DILocation(line: 1978, column: 42, scope: !1713)
!1738 = !DILocation(line: 1979, column: 37, scope: !1713)
!1739 = !DILocation(line: 1979, column: 49, scope: !1713)
!1740 = !DILocation(line: 1980, column: 37, scope: !1713)
!1741 = !DILocation(line: 1980, column: 49, scope: !1713)
!1742 = !DILocation(line: 1980, column: 68, scope: !1713)
!1743 = !DILocation(line: 1980, column: 101, scope: !1713)
!1744 = !DILocation(line: 1982, column: 5, scope: !1713)
!1745 = !DILocation(line: 1982, column: 17, scope: !1713)
!1746 = !DILocation(line: 1982, column: 35, scope: !1713)
!1747 = !DILocation(line: 1989, column: 5, scope: !1713)
!1748 = !DILocation(line: 1989, column: 29, scope: !1713)
!1749 = !DILocation(line: 1989, column: 64, scope: !1713)
!1750 = !DILocation(line: 1989, column: 77, scope: !1713)
!1751 = !DILocation(line: 1989, column: 82, scope: !1713)
!1752 = !DILocation(line: 1989, column: 88, scope: !1713)
!1753 = !DILocation(line: 1989, column: 92, scope: !1713)
!1754 = !DILocation(line: 1989, column: 98, scope: !1713)
!1755 = !DILocation(line: 1989, column: 106, scope: !1713)
!1756 = !DILocation(line: 1989, column: 128, scope: !1713)
!1757 = !DILocation(line: 1989, column: 125, scope: !1713)
!1758 = !DILocation(line: 1989, column: 117, scope: !1713)
!1759 = !DILocation(line: 0, scope: !1713)
!1760 = !DILocation(line: 1992, column: 5, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1992, column: 5)
!1762 = !DILocation(line: 1992, column: 5, scope: !1713)
!1763 = !DILocation(line: 1992, column: 5, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 1992, column: 5)
!1765 = !DILocation(line: 1995, column: 9, scope: !1728)
!1766 = !DILocation(line: 1995, column: 22, scope: !1728)
!1767 = !DILocation(line: 1995, column: 58, scope: !1728)
!1768 = !DILocation(line: 1995, column: 64, scope: !1728)
!1769 = !DILocation(line: 1995, column: 69, scope: !1728)
!1770 = !DILocation(line: 1995, column: 78, scope: !1728)
!1771 = !DILocation(line: 1995, column: 83, scope: !1728)
!1772 = !DILocation(line: 1995, column: 96, scope: !1728)
!1773 = !DILocation(line: 1995, column: 33, scope: !1728)
!1774 = !DILocation(line: 1997, column: 26, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 1997, column: 13)
!1776 = !DILocation(line: 1997, column: 13, scope: !1775)
!1777 = !DILocation(line: 1997, column: 13, scope: !1728)
!1778 = !DILocation(line: 1997, column: 44, scope: !1775)
!1779 = !DILocation(line: 1997, column: 37, scope: !1775)
!1780 = !DILocation(line: 1998, column: 15, scope: !1728)
!1781 = !DILocation(line: 1998, column: 12, scope: !1728)
!1782 = !DILocation(line: 1999, column: 20, scope: !1728)
!1783 = !DILocation(line: 1999, column: 17, scope: !1728)
!1784 = !DILocation(line: 2000, column: 5, scope: !1713)
!1785 = !DILocation(line: 2010, column: 9, scope: !1730)
!1786 = !DILocation(line: 2010, column: 13, scope: !1730)
!1787 = !DILocation(line: 2010, column: 34, scope: !1730)
!1788 = !DILocation(line: 2010, column: 40, scope: !1730)
!1789 = !DILocation(line: 2012, column: 9, scope: !1730)
!1790 = !DILocation(line: 2012, column: 13, scope: !1730)
!1791 = !DILocation(line: 2013, column: 9, scope: !1730)
!1792 = !DILocation(line: 2013, column: 22, scope: !1730)
!1793 = !DILocation(line: 2013, column: 55, scope: !1730)
!1794 = !DILocation(line: 2013, column: 69, scope: !1730)
!1795 = !DILocation(line: 2013, column: 73, scope: !1730)
!1796 = !DILocation(line: 2013, column: 33, scope: !1730)
!1797 = !DILocation(line: 2014, column: 26, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 2014, column: 13)
!1799 = !DILocation(line: 2014, column: 13, scope: !1798)
!1800 = !DILocation(line: 2014, column: 13, scope: !1730)
!1801 = !DILocation(line: 2014, column: 44, scope: !1798)
!1802 = !DILocation(line: 2014, column: 37, scope: !1798)
!1803 = !DILocation(line: 2015, column: 15, scope: !1730)
!1804 = !DILocation(line: 2015, column: 12, scope: !1730)
!1805 = !DILocation(line: 2016, column: 20, scope: !1730)
!1806 = !DILocation(line: 2016, column: 17, scope: !1730)
!1807 = !DILocation(line: 2018, column: 9, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 2018, column: 9)
!1809 = !DILocation(line: 2018, column: 9, scope: !1730)
!1810 = !DILocation(line: 2018, column: 9, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 2018, column: 9)
!1812 = !DILocation(line: 2022, column: 15, scope: !1735)
!1813 = !DILocation(line: 2023, column: 11, scope: !1735)
!1814 = !DILocation(line: 2023, column: 16, scope: !1735)
!1815 = !DILocation(line: 2023, column: 22, scope: !1735)
!1816 = !DILocation(line: 2023, column: 26, scope: !1735)
!1817 = !DILocation(line: 2023, column: 32, scope: !1735)
!1818 = !DILocation(line: 2023, column: 40, scope: !1735)
!1819 = !DILocation(line: 2023, column: 51, scope: !1735)
!1820 = !DILocation(line: 2024, column: 11, scope: !1735)
!1821 = !DILocation(line: 2024, column: 15, scope: !1735)
!1822 = !DILocation(line: 2024, column: 20, scope: !1735)
!1823 = !DILocation(line: 2022, column: 14, scope: !1730)
!1824 = !DILocation(line: 2025, column: 13, scope: !1734)
!1825 = !DILocation(line: 2025, column: 23, scope: !1734)
!1826 = !DILocation(line: 2025, column: 67, scope: !1734)
!1827 = !DILocation(line: 2025, column: 73, scope: !1734)
!1828 = !DILocation(line: 2025, column: 42, scope: !1734)
!1829 = !DILocation(line: 2026, column: 13, scope: !1734)
!1830 = !DILocation(line: 2026, column: 23, scope: !1734)
!1831 = !DILocation(line: 2026, column: 34, scope: !1734)
!1832 = !DILocation(line: 2027, column: 35, scope: !1734)
!1833 = !DILocation(line: 2027, column: 55, scope: !1734)
!1834 = !DILocation(line: 2027, column: 52, scope: !1734)
!1835 = !DILocation(line: 2027, column: 32, scope: !1734)
!1836 = !DILocation(line: 2028, column: 9, scope: !1735)
!1837 = !DILocation(line: 2028, column: 9, scope: !1734)
!1838 = !DILocation(line: 2031, column: 9, scope: !1730)
!1839 = !DILocation(line: 2031, column: 15, scope: !1730)
!1840 = !DILocation(line: 2031, column: 27, scope: !1730)
!1841 = !DILocation(line: 2035, column: 13, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 2035, column: 13)
!1843 = !DILocation(line: 2035, column: 13, scope: !1730)
!1844 = !DILocation(line: 2038, column: 49, scope: !1842)
!1845 = !DILocation(line: 2038, column: 55, scope: !1842)
!1846 = !DILocation(line: 2038, column: 60, scope: !1842)
!1847 = !DILocation(line: 2038, column: 73, scope: !1842)
!1848 = !DILocation(line: 2038, column: 77, scope: !1842)
!1849 = !DILocation(line: 2038, column: 86, scope: !1842)
!1850 = !DILocation(line: 2038, column: 93, scope: !1842)
!1851 = !DILocation(line: 2038, column: 107, scope: !1842)
!1852 = !DILocation(line: 2038, column: 20, scope: !1842)
!1853 = !DILocation(line: 2038, column: 13, scope: !1842)
!1854 = !DILocation(line: 2043, column: 13, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 2043, column: 13)
!1856 = !DILocation(line: 2043, column: 19, scope: !1855)
!1857 = !DILocation(line: 2043, column: 37, scope: !1855)
!1858 = !DILocation(line: 2043, column: 13, scope: !1730)
!1859 = !DILocation(line: 2044, column: 59, scope: !1855)
!1860 = !DILocation(line: 2044, column: 65, scope: !1855)
!1861 = !DILocation(line: 2044, column: 70, scope: !1855)
!1862 = !DILocation(line: 2044, column: 83, scope: !1855)
!1863 = !DILocation(line: 2044, column: 87, scope: !1855)
!1864 = !DILocation(line: 2044, column: 96, scope: !1855)
!1865 = !DILocation(line: 2044, column: 103, scope: !1855)
!1866 = !DILocation(line: 2044, column: 117, scope: !1855)
!1867 = !DILocation(line: 2044, column: 20, scope: !1855)
!1868 = !DILocation(line: 2044, column: 13, scope: !1855)
!1869 = !DILocation(line: 2046, column: 45, scope: !1855)
!1870 = !DILocation(line: 2046, column: 51, scope: !1855)
!1871 = !DILocation(line: 2046, column: 56, scope: !1855)
!1872 = !DILocation(line: 2046, column: 69, scope: !1855)
!1873 = !DILocation(line: 2046, column: 73, scope: !1855)
!1874 = !DILocation(line: 2046, column: 82, scope: !1855)
!1875 = !DILocation(line: 2046, column: 89, scope: !1855)
!1876 = !DILocation(line: 2046, column: 103, scope: !1855)
!1877 = !DILocation(line: 2046, column: 20, scope: !1855)
!1878 = !DILocation(line: 2046, column: 13, scope: !1855)
!1879 = !DILocation(line: 2048, column: 5, scope: !1713)
!1880 = !DILocation(line: 2049, column: 1, scope: !1713)
!1881 = distinct !DISubprogram(name: "MEM_32bits", scope: !131, file: !131, line: 90, type: !1882, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!7}
!1884 = !DILocation(line: 92, column: 5, scope: !1881)
!1885 = distinct !DISubprogram(name: "ZSTD_getLongOffsetsShare", scope: !3, file: !3, line: 1956, type: !1886, scopeLine: 1957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!7, !397}
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895}
!1889 = !DILocalVariable(name: "offTable", arg: 1, scope: !1885, file: !3, line: 1956, type: !397)
!1890 = !DILocalVariable(name: "ptr", scope: !1885, file: !3, line: 1958, type: !158)
!1891 = !DILocalVariable(name: "tableLog", scope: !1885, file: !3, line: 1959, type: !261)
!1892 = !DILocalVariable(name: "table", scope: !1885, file: !3, line: 1960, type: !397)
!1893 = !DILocalVariable(name: "max", scope: !1885, file: !3, line: 1961, type: !261)
!1894 = !DILocalVariable(name: "u", scope: !1885, file: !3, line: 1962, type: !144)
!1895 = !DILocalVariable(name: "total", scope: !1885, file: !3, line: 1962, type: !144)
!1896 = !DILocation(line: 1956, column: 48, scope: !1885)
!1897 = !DILocation(line: 1958, column: 5, scope: !1885)
!1898 = !DILocation(line: 1958, column: 17, scope: !1885)
!1899 = !DILocation(line: 1958, column: 23, scope: !1885)
!1900 = !DILocation(line: 1959, column: 5, scope: !1885)
!1901 = !DILocation(line: 1959, column: 15, scope: !1885)
!1902 = !DILocation(line: 1959, column: 57, scope: !1885)
!1903 = !DILocation(line: 1959, column: 26, scope: !1885)
!1904 = !DILocation(line: 1959, column: 65, scope: !1885)
!1905 = !DILocation(line: 1960, column: 5, scope: !1885)
!1906 = !DILocation(line: 1960, column: 27, scope: !1885)
!1907 = !DILocation(line: 1960, column: 35, scope: !1885)
!1908 = !DILocation(line: 1960, column: 44, scope: !1885)
!1909 = !DILocation(line: 1961, column: 5, scope: !1885)
!1910 = !DILocation(line: 1961, column: 15, scope: !1885)
!1911 = !DILocation(line: 1961, column: 26, scope: !1885)
!1912 = !DILocation(line: 1961, column: 23, scope: !1885)
!1913 = !DILocation(line: 1962, column: 5, scope: !1885)
!1914 = !DILocation(line: 1962, column: 9, scope: !1885)
!1915 = !DILocation(line: 1962, column: 12, scope: !1885)
!1916 = !DILocation(line: 1966, column: 11, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 1966, column: 5)
!1918 = !DILocation(line: 1966, column: 10, scope: !1917)
!1919 = !DILocation(line: 1966, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1966, column: 5)
!1921 = !DILocation(line: 1966, column: 17, scope: !1920)
!1922 = !DILocation(line: 1966, column: 16, scope: !1920)
!1923 = !DILocation(line: 1966, column: 5, scope: !1917)
!1924 = !DILocation(line: 1967, column: 13, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 1967, column: 13)
!1926 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1966, column: 27)
!1927 = !DILocation(line: 1967, column: 19, scope: !1925)
!1928 = !DILocation(line: 1967, column: 22, scope: !1925)
!1929 = !DILocation(line: 1967, column: 39, scope: !1925)
!1930 = !DILocation(line: 1967, column: 13, scope: !1926)
!1931 = !DILocation(line: 1967, column: 51, scope: !1925)
!1932 = !DILocation(line: 1967, column: 45, scope: !1925)
!1933 = !DILocation(line: 1968, column: 5, scope: !1926)
!1934 = !DILocation(line: 1966, column: 23, scope: !1920)
!1935 = !DILocation(line: 1966, column: 5, scope: !1920)
!1936 = distinct !{!1936, !1923, !1937, !731, !732}
!1937 = !DILocation(line: 1968, column: 5, scope: !1917)
!1938 = !DILocation(line: 1971, column: 28, scope: !1885)
!1939 = !DILocation(line: 1971, column: 26, scope: !1885)
!1940 = !DILocation(line: 1971, column: 11, scope: !1885)
!1941 = !DILocation(line: 1973, column: 12, scope: !1885)
!1942 = !DILocation(line: 1974, column: 1, scope: !1885)
!1943 = !DILocation(line: 1973, column: 5, scope: !1885)
!1944 = distinct !DISubprogram(name: "MEM_64bits", scope: !131, file: !131, line: 95, type: !1882, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1945 = !DILocation(line: 97, column: 5, scope: !1944)
!1946 = distinct !DISubprogram(name: "ZSTD_decompressSequencesLong", scope: !3, file: !3, line: 1931, type: !1947, scopeLine: 1936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!121, !392, !139, !121, !158, !121, !69, !1726, !296}
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1950 = !DILocalVariable(name: "dctx", arg: 1, scope: !1946, file: !3, line: 1931, type: !392)
!1951 = !DILocalVariable(name: "dst", arg: 2, scope: !1946, file: !3, line: 1932, type: !139)
!1952 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !1946, file: !3, line: 1932, type: !121)
!1953 = !DILocalVariable(name: "seqStart", arg: 4, scope: !1946, file: !3, line: 1933, type: !158)
!1954 = !DILocalVariable(name: "seqSize", arg: 5, scope: !1946, file: !3, line: 1933, type: !121)
!1955 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !1946, file: !3, line: 1933, type: !69)
!1956 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !1946, file: !3, line: 1934, type: !1726)
!1957 = !DILocalVariable(name: "frame", arg: 8, scope: !1946, file: !3, line: 1935, type: !296)
!1958 = !DILocation(line: 1931, column: 41, scope: !1946)
!1959 = !DILocation(line: 1932, column: 36, scope: !1946)
!1960 = !DILocation(line: 1932, column: 48, scope: !1946)
!1961 = !DILocation(line: 1933, column: 42, scope: !1946)
!1962 = !DILocation(line: 1933, column: 59, scope: !1946)
!1963 = !DILocation(line: 1933, column: 72, scope: !1946)
!1964 = !DILocation(line: 1934, column: 54, scope: !1946)
!1965 = !DILocation(line: 1935, column: 40, scope: !1946)
!1966 = !DILocation(line: 1939, column: 28, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 1939, column: 9)
!1968 = !DILocation(line: 1939, column: 9, scope: !1967)
!1969 = !DILocation(line: 1939, column: 9, scope: !1946)
!1970 = !DILocation(line: 1940, column: 50, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 1939, column: 35)
!1972 = !DILocation(line: 1940, column: 56, scope: !1971)
!1973 = !DILocation(line: 1940, column: 61, scope: !1971)
!1974 = !DILocation(line: 1940, column: 73, scope: !1971)
!1975 = !DILocation(line: 1940, column: 83, scope: !1971)
!1976 = !DILocation(line: 1940, column: 92, scope: !1971)
!1977 = !DILocation(line: 1940, column: 99, scope: !1971)
!1978 = !DILocation(line: 1940, column: 113, scope: !1971)
!1979 = !DILocation(line: 1940, column: 16, scope: !1971)
!1980 = !DILocation(line: 1940, column: 9, scope: !1971)
!1981 = !DILocation(line: 1943, column: 47, scope: !1946)
!1982 = !DILocation(line: 1943, column: 53, scope: !1946)
!1983 = !DILocation(line: 1943, column: 58, scope: !1946)
!1984 = !DILocation(line: 1943, column: 70, scope: !1946)
!1985 = !DILocation(line: 1943, column: 80, scope: !1946)
!1986 = !DILocation(line: 1943, column: 89, scope: !1946)
!1987 = !DILocation(line: 1943, column: 96, scope: !1946)
!1988 = !DILocation(line: 1943, column: 110, scope: !1946)
!1989 = !DILocation(line: 1943, column: 10, scope: !1946)
!1990 = !DILocation(line: 1943, column: 3, scope: !1946)
!1991 = !DILocation(line: 1944, column: 1, scope: !1946)
!1992 = distinct !DISubprogram(name: "ZSTD_decompressSequencesSplitLitBuffer", scope: !3, file: !3, line: 1908, type: !1947, scopeLine: 1912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!1993 = !{!1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1994 = !DILocalVariable(name: "dctx", arg: 1, scope: !1992, file: !3, line: 1908, type: !392)
!1995 = !DILocalVariable(name: "dst", arg: 2, scope: !1992, file: !3, line: 1908, type: !139)
!1996 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !1992, file: !3, line: 1908, type: !121)
!1997 = !DILocalVariable(name: "seqStart", arg: 4, scope: !1992, file: !3, line: 1909, type: !158)
!1998 = !DILocalVariable(name: "seqSize", arg: 5, scope: !1992, file: !3, line: 1909, type: !121)
!1999 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !1992, file: !3, line: 1909, type: !69)
!2000 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !1992, file: !3, line: 1910, type: !1726)
!2001 = !DILocalVariable(name: "frame", arg: 8, scope: !1992, file: !3, line: 1911, type: !296)
!2002 = !DILocation(line: 1908, column: 51, scope: !1992)
!2003 = !DILocation(line: 1908, column: 63, scope: !1992)
!2004 = !DILocation(line: 1908, column: 75, scope: !1992)
!2005 = !DILocation(line: 1909, column: 46, scope: !1992)
!2006 = !DILocation(line: 1909, column: 63, scope: !1992)
!2007 = !DILocation(line: 1909, column: 76, scope: !1992)
!2008 = !DILocation(line: 1910, column: 58, scope: !1992)
!2009 = !DILocation(line: 1911, column: 44, scope: !1992)
!2010 = !DILocation(line: 1915, column: 28, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1915, column: 9)
!2012 = !DILocation(line: 1915, column: 9, scope: !2011)
!2013 = !DILocation(line: 1915, column: 9, scope: !1992)
!2014 = !DILocation(line: 1916, column: 60, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1915, column: 35)
!2016 = !DILocation(line: 1916, column: 66, scope: !2015)
!2017 = !DILocation(line: 1916, column: 71, scope: !2015)
!2018 = !DILocation(line: 1916, column: 83, scope: !2015)
!2019 = !DILocation(line: 1916, column: 93, scope: !2015)
!2020 = !DILocation(line: 1916, column: 102, scope: !2015)
!2021 = !DILocation(line: 1916, column: 109, scope: !2015)
!2022 = !DILocation(line: 1916, column: 123, scope: !2015)
!2023 = !DILocation(line: 1916, column: 16, scope: !2015)
!2024 = !DILocation(line: 1916, column: 9, scope: !2015)
!2025 = !DILocation(line: 1919, column: 59, scope: !1992)
!2026 = !DILocation(line: 1919, column: 65, scope: !1992)
!2027 = !DILocation(line: 1919, column: 70, scope: !1992)
!2028 = !DILocation(line: 1919, column: 82, scope: !1992)
!2029 = !DILocation(line: 1919, column: 92, scope: !1992)
!2030 = !DILocation(line: 1919, column: 101, scope: !1992)
!2031 = !DILocation(line: 1919, column: 108, scope: !1992)
!2032 = !DILocation(line: 1919, column: 122, scope: !1992)
!2033 = !DILocation(line: 1919, column: 12, scope: !1992)
!2034 = !DILocation(line: 1919, column: 5, scope: !1992)
!2035 = !DILocation(line: 1920, column: 1, scope: !1992)
!2036 = distinct !DISubprogram(name: "ZSTD_decompressSequences", scope: !3, file: !3, line: 1894, type: !1947, scopeLine: 1898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2037)
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045}
!2038 = !DILocalVariable(name: "dctx", arg: 1, scope: !2036, file: !3, line: 1894, type: !392)
!2039 = !DILocalVariable(name: "dst", arg: 2, scope: !2036, file: !3, line: 1894, type: !139)
!2040 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !2036, file: !3, line: 1894, type: !121)
!2041 = !DILocalVariable(name: "seqStart", arg: 4, scope: !2036, file: !3, line: 1895, type: !158)
!2042 = !DILocalVariable(name: "seqSize", arg: 5, scope: !2036, file: !3, line: 1895, type: !121)
!2043 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !2036, file: !3, line: 1895, type: !69)
!2044 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !2036, file: !3, line: 1896, type: !1726)
!2045 = !DILocalVariable(name: "frame", arg: 8, scope: !2036, file: !3, line: 1897, type: !296)
!2046 = !DILocation(line: 1894, column: 37, scope: !2036)
!2047 = !DILocation(line: 1894, column: 49, scope: !2036)
!2048 = !DILocation(line: 1894, column: 61, scope: !2036)
!2049 = !DILocation(line: 1895, column: 32, scope: !2036)
!2050 = !DILocation(line: 1895, column: 49, scope: !2036)
!2051 = !DILocation(line: 1895, column: 62, scope: !2036)
!2052 = !DILocation(line: 1896, column: 44, scope: !2036)
!2053 = !DILocation(line: 1897, column: 30, scope: !2036)
!2054 = !DILocation(line: 1901, column: 28, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 1901, column: 9)
!2056 = !DILocation(line: 1901, column: 9, scope: !2055)
!2057 = !DILocation(line: 1901, column: 9, scope: !2036)
!2058 = !DILocation(line: 1902, column: 46, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1901, column: 35)
!2060 = !DILocation(line: 1902, column: 52, scope: !2059)
!2061 = !DILocation(line: 1902, column: 57, scope: !2059)
!2062 = !DILocation(line: 1902, column: 69, scope: !2059)
!2063 = !DILocation(line: 1902, column: 79, scope: !2059)
!2064 = !DILocation(line: 1902, column: 88, scope: !2059)
!2065 = !DILocation(line: 1902, column: 95, scope: !2059)
!2066 = !DILocation(line: 1902, column: 109, scope: !2059)
!2067 = !DILocation(line: 1902, column: 16, scope: !2059)
!2068 = !DILocation(line: 1902, column: 9, scope: !2059)
!2069 = !DILocation(line: 1905, column: 45, scope: !2036)
!2070 = !DILocation(line: 1905, column: 51, scope: !2036)
!2071 = !DILocation(line: 1905, column: 56, scope: !2036)
!2072 = !DILocation(line: 1905, column: 68, scope: !2036)
!2073 = !DILocation(line: 1905, column: 78, scope: !2036)
!2074 = !DILocation(line: 1905, column: 87, scope: !2036)
!2075 = !DILocation(line: 1905, column: 94, scope: !2036)
!2076 = !DILocation(line: 1905, column: 108, scope: !2036)
!2077 = !DILocation(line: 1905, column: 12, scope: !2036)
!2078 = !DILocation(line: 1905, column: 5, scope: !2036)
!2079 = !DILocation(line: 1906, column: 1, scope: !2036)
!2080 = distinct !DISubprogram(name: "ZSTD_checkContinuity", scope: !3, file: !3, line: 2052, type: !2081, scopeLine: 2053, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !392, !158, !121}
!2083 = !{!2084, !2085, !2086}
!2084 = !DILocalVariable(name: "dctx", arg: 1, scope: !2080, file: !3, line: 2052, type: !392)
!2085 = !DILocalVariable(name: "dst", arg: 2, scope: !2080, file: !3, line: 2052, type: !158)
!2086 = !DILocalVariable(name: "dstSize", arg: 3, scope: !2080, file: !3, line: 2052, type: !121)
!2087 = !DILocation(line: 2052, column: 38, scope: !2080)
!2088 = !DILocation(line: 2052, column: 56, scope: !2080)
!2089 = !DILocation(line: 2052, column: 68, scope: !2080)
!2090 = !DILocation(line: 2054, column: 9, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 2054, column: 9)
!2092 = !DILocation(line: 2054, column: 16, scope: !2091)
!2093 = !DILocation(line: 2054, column: 22, scope: !2091)
!2094 = !DILocation(line: 2054, column: 13, scope: !2091)
!2095 = !DILocation(line: 2054, column: 37, scope: !2091)
!2096 = !DILocation(line: 2054, column: 40, scope: !2091)
!2097 = !DILocation(line: 2054, column: 48, scope: !2091)
!2098 = !DILocation(line: 2054, column: 9, scope: !2080)
!2099 = !DILocation(line: 2055, column: 25, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 2054, column: 53)
!2101 = !DILocation(line: 2055, column: 31, scope: !2100)
!2102 = !DILocation(line: 2055, column: 9, scope: !2100)
!2103 = !DILocation(line: 2055, column: 15, scope: !2100)
!2104 = !DILocation(line: 2055, column: 23, scope: !2100)
!2105 = !DILocation(line: 2056, column: 43, scope: !2100)
!2106 = !DILocation(line: 2056, column: 64, scope: !2100)
!2107 = !DILocation(line: 2056, column: 70, scope: !2100)
!2108 = !DILocation(line: 2056, column: 102, scope: !2100)
!2109 = !DILocation(line: 2056, column: 108, scope: !2100)
!2110 = !DILocation(line: 2056, column: 86, scope: !2100)
!2111 = !DILocation(line: 2056, column: 47, scope: !2100)
!2112 = !DILocation(line: 2056, column: 9, scope: !2100)
!2113 = !DILocation(line: 2056, column: 15, scope: !2100)
!2114 = !DILocation(line: 2056, column: 28, scope: !2100)
!2115 = !DILocation(line: 2057, column: 29, scope: !2100)
!2116 = !DILocation(line: 2057, column: 9, scope: !2100)
!2117 = !DILocation(line: 2057, column: 15, scope: !2100)
!2118 = !DILocation(line: 2057, column: 27, scope: !2100)
!2119 = !DILocation(line: 2058, column: 32, scope: !2100)
!2120 = !DILocation(line: 2058, column: 9, scope: !2100)
!2121 = !DILocation(line: 2058, column: 15, scope: !2100)
!2122 = !DILocation(line: 2058, column: 30, scope: !2100)
!2123 = !DILocation(line: 2059, column: 5, scope: !2100)
!2124 = !DILocation(line: 2060, column: 1, scope: !2080)
!2125 = distinct !DISubprogram(name: "ZSTD_decompressBlock", scope: !3, file: !3, line: 2063, type: !2126, scopeLine: 2066, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!121, !392, !139, !121, !158, !121}
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134}
!2129 = !DILocalVariable(name: "dctx", arg: 1, scope: !2125, file: !3, line: 2063, type: !392)
!2130 = !DILocalVariable(name: "dst", arg: 2, scope: !2125, file: !3, line: 2064, type: !139)
!2131 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !2125, file: !3, line: 2064, type: !121)
!2132 = !DILocalVariable(name: "src", arg: 4, scope: !2125, file: !3, line: 2065, type: !158)
!2133 = !DILocalVariable(name: "srcSize", arg: 5, scope: !2125, file: !3, line: 2065, type: !121)
!2134 = !DILocalVariable(name: "dSize", scope: !2125, file: !3, line: 2067, type: !121)
!2135 = !DILocation(line: 2063, column: 40, scope: !2125)
!2136 = !DILocation(line: 2064, column: 35, scope: !2125)
!2137 = !DILocation(line: 2064, column: 47, scope: !2125)
!2138 = !DILocation(line: 2065, column: 35, scope: !2125)
!2139 = !DILocation(line: 2065, column: 47, scope: !2125)
!2140 = !DILocation(line: 2067, column: 5, scope: !2125)
!2141 = !DILocation(line: 2067, column: 12, scope: !2125)
!2142 = !DILocation(line: 2068, column: 26, scope: !2125)
!2143 = !DILocation(line: 2068, column: 32, scope: !2125)
!2144 = !DILocation(line: 2068, column: 37, scope: !2125)
!2145 = !DILocation(line: 2068, column: 5, scope: !2125)
!2146 = !DILocation(line: 2069, column: 43, scope: !2125)
!2147 = !DILocation(line: 2069, column: 49, scope: !2125)
!2148 = !DILocation(line: 2069, column: 54, scope: !2125)
!2149 = !DILocation(line: 2069, column: 67, scope: !2125)
!2150 = !DILocation(line: 2069, column: 72, scope: !2125)
!2151 = !DILocation(line: 2069, column: 13, scope: !2125)
!2152 = !DILocation(line: 2069, column: 11, scope: !2125)
!2153 = !DILocation(line: 2070, column: 35, scope: !2125)
!2154 = !DILocation(line: 2070, column: 41, scope: !2125)
!2155 = !DILocation(line: 2070, column: 39, scope: !2125)
!2156 = !DILocation(line: 2070, column: 5, scope: !2125)
!2157 = !DILocation(line: 2070, column: 11, scope: !2125)
!2158 = !DILocation(line: 2070, column: 26, scope: !2125)
!2159 = !DILocation(line: 2071, column: 12, scope: !2125)
!2160 = !DILocation(line: 2072, column: 1, scope: !2125)
!2161 = !DILocation(line: 2071, column: 5, scope: !2125)
!2162 = !DILocation(line: 30, column: 50, scope: !155)
!2163 = !DILocation(line: 32, column: 9, scope: !163)
!2164 = !DILocation(line: 32, column: 9, scope: !155)
!2165 = !DILocation(line: 32, column: 2, scope: !155)
!2166 = !DILocation(line: 25, column: 50, scope: !173)
!2167 = !DILocation(line: 27, column: 9, scope: !180)
!2168 = !DILocation(line: 27, column: 9, scope: !173)
!2169 = !DILocation(line: 27, column: 2, scope: !173)
!2170 = distinct !DISubprogram(name: "ZSTD_buildFSETable_body", scope: !3, file: !3, line: 444, type: !1273, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2182, !2183, !2184, !2185, !2186, !2187, !2189, !2192, !2193, !2196, !2197, !2200, !2201, !2202, !2203, !2207, !2208, !2210, !2211, !2212, !2216, !2220, !2222, !2223, !2224, !2225, !2229, !2230, !2232, !2236}
!2172 = !DILocalVariable(name: "dt", arg: 1, scope: !2170, file: !3, line: 444, type: !1223)
!2173 = !DILocalVariable(name: "normalizedCounter", arg: 2, scope: !2170, file: !3, line: 445, type: !1224)
!2174 = !DILocalVariable(name: "maxSymbolValue", arg: 3, scope: !2170, file: !3, line: 445, type: !7)
!2175 = !DILocalVariable(name: "baseValue", arg: 4, scope: !2170, file: !3, line: 446, type: !1226)
!2176 = !DILocalVariable(name: "nbAdditionalBits", arg: 5, scope: !2170, file: !3, line: 446, type: !1227)
!2177 = !DILocalVariable(name: "tableLog", arg: 6, scope: !2170, file: !3, line: 447, type: !7)
!2178 = !DILocalVariable(name: "wksp", arg: 7, scope: !2170, file: !3, line: 447, type: !139)
!2179 = !DILocalVariable(name: "wkspSize", arg: 8, scope: !2170, file: !3, line: 447, type: !121)
!2180 = !DILocalVariable(name: "tableDecode", scope: !2170, file: !3, line: 449, type: !2181)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!2182 = !DILocalVariable(name: "maxSV1", scope: !2170, file: !3, line: 450, type: !261)
!2183 = !DILocalVariable(name: "tableSize", scope: !2170, file: !3, line: 451, type: !261)
!2184 = !DILocalVariable(name: "symbolNext", scope: !2170, file: !3, line: 453, type: !183)
!2185 = !DILocalVariable(name: "spread", scope: !2170, file: !3, line: 454, type: !166)
!2186 = !DILocalVariable(name: "highThreshold", scope: !2170, file: !3, line: 455, type: !144)
!2187 = !DILocalVariable(name: "DTableH", scope: !2188, file: !3, line: 464, type: !210)
!2188 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 464, column: 5)
!2189 = !DILocalVariable(name: "largeLimit", scope: !2190, file: !3, line: 467, type: !2191)
!2190 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 467, column: 9)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!2192 = !DILocalVariable(name: "s", scope: !2190, file: !3, line: 468, type: !144)
!2193 = !DILocalVariable(name: "tableMask", scope: !2194, file: !3, line: 489, type: !237)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 488, column: 41)
!2195 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 488, column: 9)
!2196 = !DILocalVariable(name: "step", scope: !2194, file: !3, line: 490, type: !237)
!2197 = !DILocalVariable(name: "add", scope: !2198, file: !3, line: 498, type: !2199)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 497, column: 9)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!2200 = !DILocalVariable(name: "pos", scope: !2198, file: !3, line: 499, type: !121)
!2201 = !DILocalVariable(name: "sv", scope: !2198, file: !3, line: 500, type: !196)
!2202 = !DILocalVariable(name: "s", scope: !2198, file: !3, line: 501, type: !144)
!2203 = !DILocalVariable(name: "i", scope: !2204, file: !3, line: 503, type: !69)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 502, column: 49)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 502, column: 13)
!2206 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 502, column: 13)
!2207 = !DILocalVariable(name: "n", scope: !2204, file: !3, line: 504, type: !296)
!2208 = !DILocalVariable(name: "position", scope: !2209, file: !3, line: 519, type: !121)
!2209 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 518, column: 9)
!2210 = !DILocalVariable(name: "s", scope: !2209, file: !3, line: 520, type: !121)
!2211 = !DILocalVariable(name: "unroll", scope: !2209, file: !3, line: 521, type: !237)
!2212 = !DILocalVariable(name: "u", scope: !2213, file: !3, line: 524, type: !121)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 523, column: 61)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 523, column: 13)
!2215 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 523, column: 13)
!2216 = !DILocalVariable(name: "uPosition", scope: !2217, file: !3, line: 526, type: !237)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 525, column: 46)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 525, column: 17)
!2219 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 525, column: 17)
!2220 = !DILocalVariable(name: "tableMask", scope: !2221, file: !3, line: 534, type: !261)
!2221 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 533, column: 12)
!2222 = !DILocalVariable(name: "step", scope: !2221, file: !3, line: 535, type: !261)
!2223 = !DILocalVariable(name: "s", scope: !2221, file: !3, line: 536, type: !144)
!2224 = !DILocalVariable(name: "position", scope: !2221, file: !3, line: 536, type: !144)
!2225 = !DILocalVariable(name: "i", scope: !2226, file: !3, line: 538, type: !69)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 537, column: 34)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 537, column: 9)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 537, column: 9)
!2229 = !DILocalVariable(name: "n", scope: !2226, file: !3, line: 539, type: !296)
!2230 = !DILocalVariable(name: "u", scope: !2231, file: !3, line: 550, type: !144)
!2231 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 549, column: 5)
!2232 = !DILocalVariable(name: "symbol", scope: !2233, file: !3, line: 552, type: !261)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 551, column: 37)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 551, column: 9)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 551, column: 9)
!2236 = !DILocalVariable(name: "nextState", scope: !2233, file: !3, line: 553, type: !261)
!2237 = !DILocation(line: 444, column: 46, scope: !2170)
!2238 = !DILocation(line: 445, column: 26, scope: !2170)
!2239 = !DILocation(line: 445, column: 54, scope: !2170)
!2240 = !DILocation(line: 446, column: 24, scope: !2170)
!2241 = !DILocation(line: 446, column: 45, scope: !2170)
!2242 = !DILocation(line: 447, column: 22, scope: !2170)
!2243 = !DILocation(line: 447, column: 38, scope: !2170)
!2244 = !DILocation(line: 447, column: 51, scope: !2170)
!2245 = !DILocation(line: 449, column: 5, scope: !2170)
!2246 = !DILocation(line: 449, column: 27, scope: !2170)
!2247 = !DILocation(line: 449, column: 41, scope: !2170)
!2248 = !DILocation(line: 449, column: 43, scope: !2170)
!2249 = !DILocation(line: 450, column: 5, scope: !2170)
!2250 = !DILocation(line: 450, column: 15, scope: !2170)
!2251 = !DILocation(line: 450, column: 24, scope: !2170)
!2252 = !DILocation(line: 450, column: 39, scope: !2170)
!2253 = !DILocation(line: 451, column: 5, scope: !2170)
!2254 = !DILocation(line: 451, column: 15, scope: !2170)
!2255 = !DILocation(line: 451, column: 32, scope: !2170)
!2256 = !DILocation(line: 451, column: 29, scope: !2170)
!2257 = !DILocation(line: 453, column: 5, scope: !2170)
!2258 = !DILocation(line: 453, column: 10, scope: !2170)
!2259 = !DILocation(line: 453, column: 29, scope: !2170)
!2260 = !DILocation(line: 454, column: 5, scope: !2170)
!2261 = !DILocation(line: 454, column: 11, scope: !2170)
!2262 = !DILocation(line: 454, column: 28, scope: !2170)
!2263 = !DILocation(line: 454, column: 39, scope: !2170)
!2264 = !DILocation(line: 454, column: 48, scope: !2170)
!2265 = !DILocation(line: 455, column: 5, scope: !2170)
!2266 = !DILocation(line: 455, column: 9, scope: !2170)
!2267 = !DILocation(line: 455, column: 25, scope: !2170)
!2268 = !DILocation(line: 455, column: 35, scope: !2170)
!2269 = !DILocation(line: 462, column: 11, scope: !2170)
!2270 = !DILocation(line: 464, column: 9, scope: !2188)
!2271 = !DILocation(line: 464, column: 31, scope: !2188)
!2272 = !DILocation(line: 465, column: 28, scope: !2188)
!2273 = !DILocation(line: 465, column: 17, scope: !2188)
!2274 = !DILocation(line: 465, column: 26, scope: !2188)
!2275 = !DILocation(line: 466, column: 17, scope: !2188)
!2276 = !DILocation(line: 466, column: 26, scope: !2188)
!2277 = !DILocation(line: 467, column: 13, scope: !2190)
!2278 = !DILocation(line: 467, column: 23, scope: !2190)
!2279 = !DILocation(line: 467, column: 47, scope: !2190)
!2280 = !DILocation(line: 467, column: 55, scope: !2190)
!2281 = !DILocation(line: 467, column: 43, scope: !2190)
!2282 = !DILocation(line: 467, column: 35, scope: !2190)
!2283 = !DILocation(line: 468, column: 13, scope: !2190)
!2284 = !DILocation(line: 468, column: 17, scope: !2190)
!2285 = !DILocation(line: 469, column: 19, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 469, column: 13)
!2287 = !DILocation(line: 469, column: 18, scope: !2286)
!2288 = !DILocation(line: 469, column: 23, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 469, column: 13)
!2290 = !DILocation(line: 469, column: 25, scope: !2289)
!2291 = !DILocation(line: 469, column: 24, scope: !2289)
!2292 = !DILocation(line: 469, column: 13, scope: !2286)
!2293 = !DILocation(line: 470, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 470, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 469, column: 38)
!2296 = !DILocation(line: 470, column: 39, scope: !2294)
!2297 = !DILocation(line: 470, column: 41, scope: !2294)
!2298 = !DILocation(line: 470, column: 21, scope: !2295)
!2299 = !DILocation(line: 471, column: 62, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 470, column: 47)
!2301 = !DILocation(line: 471, column: 21, scope: !2300)
!2302 = !DILocation(line: 471, column: 46, scope: !2300)
!2303 = !DILocation(line: 471, column: 50, scope: !2300)
!2304 = !DILocation(line: 471, column: 60, scope: !2300)
!2305 = !DILocation(line: 472, column: 21, scope: !2300)
!2306 = !DILocation(line: 472, column: 32, scope: !2300)
!2307 = !DILocation(line: 472, column: 35, scope: !2300)
!2308 = !DILocation(line: 473, column: 17, scope: !2300)
!2309 = !DILocation(line: 474, column: 25, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 474, column: 25)
!2311 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 473, column: 24)
!2312 = !DILocation(line: 474, column: 43, scope: !2310)
!2313 = !DILocation(line: 474, column: 49, scope: !2310)
!2314 = !DILocation(line: 474, column: 46, scope: !2310)
!2315 = !DILocation(line: 474, column: 25, scope: !2311)
!2316 = !DILocation(line: 474, column: 69, scope: !2310)
!2317 = !DILocation(line: 474, column: 77, scope: !2310)
!2318 = !DILocation(line: 474, column: 61, scope: !2310)
!2319 = !DILocation(line: 476, column: 42, scope: !2311)
!2320 = !DILocation(line: 476, column: 60, scope: !2311)
!2321 = !DILocation(line: 476, column: 21, scope: !2311)
!2322 = !DILocation(line: 476, column: 32, scope: !2311)
!2323 = !DILocation(line: 476, column: 35, scope: !2311)
!2324 = !DILocation(line: 477, column: 13, scope: !2295)
!2325 = !DILocation(line: 469, column: 34, scope: !2289)
!2326 = !DILocation(line: 469, column: 13, scope: !2289)
!2327 = distinct !{!2327, !2292, !2328, !731, !732}
!2328 = !DILocation(line: 477, column: 13, scope: !2286)
!2329 = !DILocation(line: 477, column: 17, scope: !2188)
!2330 = !DILocation(line: 478, column: 9, scope: !2188)
!2331 = !DILocation(line: 479, column: 5, scope: !2170)
!2332 = !DILocation(line: 488, column: 9, scope: !2195)
!2333 = !DILocation(line: 488, column: 26, scope: !2195)
!2334 = !DILocation(line: 488, column: 36, scope: !2195)
!2335 = !DILocation(line: 488, column: 23, scope: !2195)
!2336 = !DILocation(line: 488, column: 9, scope: !2170)
!2337 = !DILocation(line: 489, column: 9, scope: !2194)
!2338 = !DILocation(line: 489, column: 22, scope: !2194)
!2339 = !DILocation(line: 489, column: 34, scope: !2194)
!2340 = !DILocation(line: 489, column: 43, scope: !2194)
!2341 = !DILocation(line: 490, column: 9, scope: !2194)
!2342 = !DILocation(line: 490, column: 22, scope: !2194)
!2343 = !DILocation(line: 490, column: 29, scope: !2194)
!2344 = !DILocation(line: 498, column: 13, scope: !2198)
!2345 = !DILocation(line: 498, column: 23, scope: !2198)
!2346 = !DILocation(line: 499, column: 13, scope: !2198)
!2347 = !DILocation(line: 499, column: 20, scope: !2198)
!2348 = !DILocation(line: 500, column: 13, scope: !2198)
!2349 = !DILocation(line: 500, column: 17, scope: !2198)
!2350 = !DILocation(line: 501, column: 13, scope: !2198)
!2351 = !DILocation(line: 501, column: 17, scope: !2198)
!2352 = !DILocation(line: 502, column: 19, scope: !2206)
!2353 = !DILocation(line: 502, column: 18, scope: !2206)
!2354 = !DILocation(line: 502, column: 23, scope: !2205)
!2355 = !DILocation(line: 502, column: 25, scope: !2205)
!2356 = !DILocation(line: 502, column: 24, scope: !2205)
!2357 = !DILocation(line: 502, column: 13, scope: !2206)
!2358 = !DILocation(line: 503, column: 17, scope: !2204)
!2359 = !DILocation(line: 503, column: 21, scope: !2204)
!2360 = !DILocation(line: 504, column: 17, scope: !2204)
!2361 = !DILocation(line: 504, column: 27, scope: !2204)
!2362 = !DILocation(line: 504, column: 31, scope: !2204)
!2363 = !DILocation(line: 504, column: 49, scope: !2204)
!2364 = !DILocation(line: 505, column: 29, scope: !2204)
!2365 = !DILocation(line: 505, column: 38, scope: !2204)
!2366 = !DILocation(line: 505, column: 36, scope: !2204)
!2367 = !DILocation(line: 505, column: 43, scope: !2204)
!2368 = !DILocation(line: 505, column: 17, scope: !2204)
!2369 = !DILocation(line: 506, column: 24, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 506, column: 17)
!2371 = !DILocation(line: 506, column: 22, scope: !2370)
!2372 = !DILocation(line: 506, column: 29, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 506, column: 17)
!2374 = !DILocation(line: 506, column: 33, scope: !2373)
!2375 = !DILocation(line: 506, column: 31, scope: !2373)
!2376 = !DILocation(line: 506, column: 17, scope: !2370)
!2377 = !DILocation(line: 507, column: 33, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 506, column: 44)
!2379 = !DILocation(line: 507, column: 42, scope: !2378)
!2380 = !DILocation(line: 507, column: 40, scope: !2378)
!2381 = !DILocation(line: 507, column: 48, scope: !2378)
!2382 = !DILocation(line: 507, column: 46, scope: !2378)
!2383 = !DILocation(line: 507, column: 51, scope: !2378)
!2384 = !DILocation(line: 507, column: 21, scope: !2378)
!2385 = !DILocation(line: 508, column: 17, scope: !2378)
!2386 = !DILocation(line: 506, column: 38, scope: !2373)
!2387 = !DILocation(line: 506, column: 17, scope: !2373)
!2388 = distinct !{!2388, !2376, !2389, !731, !732}
!2389 = !DILocation(line: 508, column: 17, scope: !2370)
!2390 = !DILocation(line: 509, column: 24, scope: !2204)
!2391 = !DILocation(line: 509, column: 21, scope: !2204)
!2392 = !DILocation(line: 510, column: 13, scope: !2205)
!2393 = !DILocation(line: 510, column: 13, scope: !2204)
!2394 = !DILocation(line: 502, column: 33, scope: !2205)
!2395 = !DILocation(line: 502, column: 41, scope: !2205)
!2396 = !DILocation(line: 502, column: 13, scope: !2205)
!2397 = distinct !{!2397, !2357, !2398, !731, !732}
!2398 = !DILocation(line: 510, column: 13, scope: !2206)
!2399 = !DILocation(line: 511, column: 9, scope: !2194)
!2400 = !DILocation(line: 519, column: 13, scope: !2209)
!2401 = !DILocation(line: 519, column: 20, scope: !2209)
!2402 = !DILocation(line: 520, column: 13, scope: !2209)
!2403 = !DILocation(line: 520, column: 20, scope: !2209)
!2404 = !DILocation(line: 521, column: 13, scope: !2209)
!2405 = !DILocation(line: 521, column: 26, scope: !2209)
!2406 = !DILocation(line: 523, column: 20, scope: !2215)
!2407 = !DILocation(line: 523, column: 18, scope: !2215)
!2408 = !DILocation(line: 523, column: 25, scope: !2214)
!2409 = !DILocation(line: 523, column: 37, scope: !2214)
!2410 = !DILocation(line: 523, column: 29, scope: !2214)
!2411 = !DILocation(line: 523, column: 27, scope: !2214)
!2412 = !DILocation(line: 523, column: 13, scope: !2215)
!2413 = !DILocation(line: 524, column: 17, scope: !2213)
!2414 = !DILocation(line: 524, column: 24, scope: !2213)
!2415 = !DILocation(line: 525, column: 24, scope: !2219)
!2416 = !DILocation(line: 525, column: 22, scope: !2219)
!2417 = !DILocation(line: 525, column: 29, scope: !2218)
!2418 = !DILocation(line: 525, column: 31, scope: !2218)
!2419 = !DILocation(line: 525, column: 17, scope: !2219)
!2420 = !DILocation(line: 526, column: 21, scope: !2217)
!2421 = !DILocation(line: 526, column: 34, scope: !2217)
!2422 = !DILocation(line: 526, column: 47, scope: !2217)
!2423 = !DILocation(line: 526, column: 59, scope: !2217)
!2424 = !DILocation(line: 526, column: 63, scope: !2217)
!2425 = !DILocation(line: 526, column: 61, scope: !2217)
!2426 = !DILocation(line: 526, column: 56, scope: !2217)
!2427 = !DILocation(line: 526, column: 72, scope: !2217)
!2428 = !DILocation(line: 526, column: 70, scope: !2217)
!2429 = !DILocation(line: 527, column: 56, scope: !2217)
!2430 = !DILocation(line: 527, column: 63, scope: !2217)
!2431 = !DILocation(line: 527, column: 67, scope: !2217)
!2432 = !DILocation(line: 527, column: 65, scope: !2217)
!2433 = !DILocation(line: 527, column: 21, scope: !2217)
!2434 = !DILocation(line: 527, column: 33, scope: !2217)
!2435 = !DILocation(line: 527, column: 44, scope: !2217)
!2436 = !DILocation(line: 527, column: 54, scope: !2217)
!2437 = !DILocation(line: 528, column: 17, scope: !2218)
!2438 = !DILocation(line: 528, column: 17, scope: !2217)
!2439 = !DILocation(line: 525, column: 41, scope: !2218)
!2440 = !DILocation(line: 525, column: 17, scope: !2218)
!2441 = distinct !{!2441, !2419, !2442, !731, !732}
!2442 = !DILocation(line: 528, column: 17, scope: !2219)
!2443 = !DILocation(line: 529, column: 29, scope: !2213)
!2444 = !DILocation(line: 529, column: 50, scope: !2213)
!2445 = !DILocation(line: 529, column: 48, scope: !2213)
!2446 = !DILocation(line: 529, column: 38, scope: !2213)
!2447 = !DILocation(line: 529, column: 59, scope: !2213)
!2448 = !DILocation(line: 529, column: 57, scope: !2213)
!2449 = !DILocation(line: 529, column: 26, scope: !2213)
!2450 = !DILocation(line: 530, column: 13, scope: !2214)
!2451 = !DILocation(line: 530, column: 13, scope: !2213)
!2452 = !DILocation(line: 523, column: 50, scope: !2214)
!2453 = !DILocation(line: 523, column: 13, scope: !2214)
!2454 = distinct !{!2454, !2412, !2455, !731, !732}
!2455 = !DILocation(line: 530, column: 13, scope: !2215)
!2456 = !DILocation(line: 532, column: 9, scope: !2194)
!2457 = !DILocation(line: 533, column: 5, scope: !2195)
!2458 = !DILocation(line: 533, column: 5, scope: !2194)
!2459 = !DILocation(line: 534, column: 9, scope: !2221)
!2460 = !DILocation(line: 534, column: 19, scope: !2221)
!2461 = !DILocation(line: 534, column: 31, scope: !2221)
!2462 = !DILocation(line: 534, column: 40, scope: !2221)
!2463 = !DILocation(line: 535, column: 9, scope: !2221)
!2464 = !DILocation(line: 535, column: 19, scope: !2221)
!2465 = !DILocation(line: 535, column: 26, scope: !2221)
!2466 = !DILocation(line: 536, column: 9, scope: !2221)
!2467 = !DILocation(line: 536, column: 13, scope: !2221)
!2468 = !DILocation(line: 536, column: 16, scope: !2221)
!2469 = !DILocation(line: 537, column: 15, scope: !2228)
!2470 = !DILocation(line: 537, column: 14, scope: !2228)
!2471 = !DILocation(line: 537, column: 19, scope: !2227)
!2472 = !DILocation(line: 537, column: 21, scope: !2227)
!2473 = !DILocation(line: 537, column: 20, scope: !2227)
!2474 = !DILocation(line: 537, column: 9, scope: !2228)
!2475 = !DILocation(line: 538, column: 13, scope: !2226)
!2476 = !DILocation(line: 538, column: 17, scope: !2226)
!2477 = !DILocation(line: 539, column: 13, scope: !2226)
!2478 = !DILocation(line: 539, column: 23, scope: !2226)
!2479 = !DILocation(line: 539, column: 27, scope: !2226)
!2480 = !DILocation(line: 539, column: 45, scope: !2226)
!2481 = !DILocation(line: 540, column: 19, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 540, column: 13)
!2483 = !DILocation(line: 540, column: 18, scope: !2482)
!2484 = !DILocation(line: 540, column: 23, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 540, column: 13)
!2486 = !DILocation(line: 540, column: 25, scope: !2485)
!2487 = !DILocation(line: 540, column: 24, scope: !2485)
!2488 = !DILocation(line: 540, column: 13, scope: !2482)
!2489 = !DILocation(line: 541, column: 51, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 540, column: 33)
!2491 = !DILocation(line: 541, column: 17, scope: !2490)
!2492 = !DILocation(line: 541, column: 29, scope: !2490)
!2493 = !DILocation(line: 541, column: 39, scope: !2490)
!2494 = !DILocation(line: 541, column: 49, scope: !2490)
!2495 = !DILocation(line: 542, column: 29, scope: !2490)
!2496 = !DILocation(line: 542, column: 40, scope: !2490)
!2497 = !DILocation(line: 542, column: 38, scope: !2490)
!2498 = !DILocation(line: 542, column: 48, scope: !2490)
!2499 = !DILocation(line: 542, column: 46, scope: !2490)
!2500 = !DILocation(line: 542, column: 26, scope: !2490)
!2501 = !DILocation(line: 543, column: 17, scope: !2490)
!2502 = !DILocation(line: 543, column: 24, scope: !2490)
!2503 = !DILocation(line: 543, column: 35, scope: !2490)
!2504 = !DILocation(line: 543, column: 33, scope: !2490)
!2505 = !DILocation(line: 543, column: 62, scope: !2490)
!2506 = !DILocation(line: 543, column: 73, scope: !2490)
!2507 = !DILocation(line: 543, column: 71, scope: !2490)
!2508 = !DILocation(line: 543, column: 81, scope: !2490)
!2509 = !DILocation(line: 543, column: 79, scope: !2490)
!2510 = !DILocation(line: 543, column: 59, scope: !2490)
!2511 = distinct !{!2511, !2501, !2508, !731, !732}
!2512 = !DILocation(line: 544, column: 9, scope: !2490)
!2513 = !DILocation(line: 540, column: 29, scope: !2485)
!2514 = !DILocation(line: 540, column: 13, scope: !2485)
!2515 = distinct !{!2515, !2488, !2516, !731, !732}
!2516 = !DILocation(line: 544, column: 9, scope: !2482)
!2517 = !DILocation(line: 544, column: 13, scope: !2227)
!2518 = !DILocation(line: 544, column: 13, scope: !2226)
!2519 = !DILocation(line: 537, column: 30, scope: !2227)
!2520 = !DILocation(line: 537, column: 9, scope: !2227)
!2521 = distinct !{!2521, !2474, !2522, !731, !732}
!2522 = !DILocation(line: 544, column: 13, scope: !2228)
!2523 = !DILocation(line: 546, column: 5, scope: !2195)
!2524 = !DILocation(line: 550, column: 9, scope: !2231)
!2525 = !DILocation(line: 550, column: 13, scope: !2231)
!2526 = !DILocation(line: 551, column: 15, scope: !2235)
!2527 = !DILocation(line: 551, column: 14, scope: !2235)
!2528 = !DILocation(line: 551, column: 19, scope: !2234)
!2529 = !DILocation(line: 551, column: 21, scope: !2234)
!2530 = !DILocation(line: 551, column: 20, scope: !2234)
!2531 = !DILocation(line: 551, column: 9, scope: !2235)
!2532 = !DILocation(line: 552, column: 13, scope: !2233)
!2533 = !DILocation(line: 552, column: 23, scope: !2233)
!2534 = !DILocation(line: 552, column: 32, scope: !2233)
!2535 = !DILocation(line: 552, column: 44, scope: !2233)
!2536 = !DILocation(line: 552, column: 47, scope: !2233)
!2537 = !DILocation(line: 553, column: 13, scope: !2233)
!2538 = !DILocation(line: 553, column: 23, scope: !2233)
!2539 = !DILocation(line: 553, column: 35, scope: !2233)
!2540 = !DILocation(line: 553, column: 46, scope: !2233)
!2541 = !DILocation(line: 553, column: 53, scope: !2233)
!2542 = !DILocation(line: 554, column: 45, scope: !2233)
!2543 = !DILocation(line: 554, column: 70, scope: !2233)
!2544 = !DILocation(line: 554, column: 56, scope: !2233)
!2545 = !DILocation(line: 554, column: 54, scope: !2233)
!2546 = !DILocation(line: 554, column: 37, scope: !2233)
!2547 = !DILocation(line: 554, column: 13, scope: !2233)
!2548 = !DILocation(line: 554, column: 25, scope: !2233)
!2549 = !DILocation(line: 554, column: 28, scope: !2233)
!2550 = !DILocation(line: 554, column: 35, scope: !2233)
!2551 = !DILocation(line: 555, column: 49, scope: !2233)
!2552 = !DILocation(line: 555, column: 62, scope: !2233)
!2553 = !DILocation(line: 555, column: 74, scope: !2233)
!2554 = !DILocation(line: 555, column: 77, scope: !2233)
!2555 = !DILocation(line: 555, column: 59, scope: !2233)
!2556 = !DILocation(line: 555, column: 87, scope: !2233)
!2557 = !DILocation(line: 555, column: 85, scope: !2233)
!2558 = !DILocation(line: 555, column: 40, scope: !2233)
!2559 = !DILocation(line: 555, column: 13, scope: !2233)
!2560 = !DILocation(line: 555, column: 25, scope: !2233)
!2561 = !DILocation(line: 555, column: 28, scope: !2233)
!2562 = !DILocation(line: 555, column: 38, scope: !2233)
!2563 = !DILocation(line: 557, column: 47, scope: !2233)
!2564 = !DILocation(line: 557, column: 64, scope: !2233)
!2565 = !DILocation(line: 557, column: 13, scope: !2233)
!2566 = !DILocation(line: 557, column: 25, scope: !2233)
!2567 = !DILocation(line: 557, column: 28, scope: !2233)
!2568 = !DILocation(line: 557, column: 45, scope: !2233)
!2569 = !DILocation(line: 558, column: 40, scope: !2233)
!2570 = !DILocation(line: 558, column: 50, scope: !2233)
!2571 = !DILocation(line: 558, column: 13, scope: !2233)
!2572 = !DILocation(line: 558, column: 25, scope: !2233)
!2573 = !DILocation(line: 558, column: 28, scope: !2233)
!2574 = !DILocation(line: 558, column: 38, scope: !2233)
!2575 = !DILocation(line: 559, column: 9, scope: !2234)
!2576 = !DILocation(line: 559, column: 9, scope: !2233)
!2577 = !DILocation(line: 551, column: 33, scope: !2234)
!2578 = !DILocation(line: 551, column: 9, scope: !2234)
!2579 = distinct !{!2579, !2531, !2580, !731, !732}
!2580 = !DILocation(line: 559, column: 9, scope: !2235)
!2581 = !DILocation(line: 560, column: 5, scope: !2170)
!2582 = !DILocation(line: 561, column: 1, scope: !2170)
!2583 = !DILocation(line: 141, column: 35, scope: !193)
!2584 = !DILocation(line: 141, column: 47, scope: !193)
!2585 = !DILocation(line: 143, column: 5, scope: !193)
!2586 = !DILocation(line: 143, column: 5, scope: !205)
!2587 = !DILocation(line: 144, column: 1, scope: !193)
!2588 = distinct !DISubprogram(name: "BIT_highbit32", scope: !110, file: !110, line: 130, type: !2589, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!7, !144}
!2591 = !{!2592}
!2592 = !DILocalVariable(name: "val", arg: 1, scope: !2588, file: !110, line: 130, type: !144)
!2593 = !DILocation(line: 130, column: 40, scope: !2588)
!2594 = !DILocation(line: 135, column: 31, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2588, file: !110, line: 133, column: 5)
!2596 = !DILocation(line: 135, column: 16, scope: !2595)
!2597 = !DILocation(line: 135, column: 36, scope: !2595)
!2598 = !DILocation(line: 135, column: 9, scope: !2595)
!2599 = distinct !DISubprogram(name: "ZSTD_buildSeqTable_rle", scope: !3, file: !3, line: 422, type: !2600, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !1223, !144, !242}
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2609}
!2603 = !DILocalVariable(name: "dt", arg: 1, scope: !2599, file: !3, line: 422, type: !1223)
!2604 = !DILocalVariable(name: "baseValue", arg: 2, scope: !2599, file: !3, line: 422, type: !144)
!2605 = !DILocalVariable(name: "nbAddBits", arg: 3, scope: !2599, file: !3, line: 422, type: !242)
!2606 = !DILocalVariable(name: "ptr", scope: !2599, file: !3, line: 424, type: !139)
!2607 = !DILocalVariable(name: "DTableH", scope: !2599, file: !3, line: 425, type: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!2609 = !DILocalVariable(name: "cell", scope: !2599, file: !3, line: 426, type: !2181)
!2610 = !DILocation(line: 422, column: 52, scope: !2599)
!2611 = !DILocation(line: 422, column: 60, scope: !2599)
!2612 = !DILocation(line: 422, column: 74, scope: !2599)
!2613 = !DILocation(line: 424, column: 5, scope: !2599)
!2614 = !DILocation(line: 424, column: 11, scope: !2599)
!2615 = !DILocation(line: 424, column: 17, scope: !2599)
!2616 = !DILocation(line: 425, column: 5, scope: !2599)
!2617 = !DILocation(line: 425, column: 34, scope: !2599)
!2618 = !DILocation(line: 425, column: 68, scope: !2599)
!2619 = !DILocation(line: 426, column: 5, scope: !2599)
!2620 = !DILocation(line: 426, column: 27, scope: !2599)
!2621 = !DILocation(line: 426, column: 34, scope: !2599)
!2622 = !DILocation(line: 426, column: 37, scope: !2599)
!2623 = !DILocation(line: 428, column: 5, scope: !2599)
!2624 = !DILocation(line: 428, column: 14, scope: !2599)
!2625 = !DILocation(line: 428, column: 23, scope: !2599)
!2626 = !DILocation(line: 429, column: 5, scope: !2599)
!2627 = !DILocation(line: 429, column: 14, scope: !2599)
!2628 = !DILocation(line: 429, column: 23, scope: !2599)
!2629 = !DILocation(line: 431, column: 5, scope: !2599)
!2630 = !DILocation(line: 431, column: 11, scope: !2599)
!2631 = !DILocation(line: 431, column: 18, scope: !2599)
!2632 = !DILocation(line: 432, column: 5, scope: !2599)
!2633 = !DILocation(line: 432, column: 11, scope: !2599)
!2634 = !DILocation(line: 432, column: 21, scope: !2599)
!2635 = !DILocation(line: 434, column: 30, scope: !2599)
!2636 = !DILocation(line: 434, column: 5, scope: !2599)
!2637 = !DILocation(line: 434, column: 11, scope: !2599)
!2638 = !DILocation(line: 434, column: 28, scope: !2599)
!2639 = !DILocation(line: 435, column: 23, scope: !2599)
!2640 = !DILocation(line: 435, column: 5, scope: !2599)
!2641 = !DILocation(line: 435, column: 11, scope: !2599)
!2642 = !DILocation(line: 435, column: 21, scope: !2599)
!2643 = !DILocation(line: 436, column: 1, scope: !2599)
!2644 = !DISubprogram(name: "FSE_readNCount", scope: !2645, file: !2645, line: 230, type: !2646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2645 = !DIFile(filename: "lib/zstd/decompress/../common/fse.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7594268659e4334b0d9568eded0c0606")
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!121, !2648, !2649, !2649, !158, !121}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2650 = distinct !DISubprogram(name: "ZSTD_decompressSequencesLong_bmi2", scope: !3, file: !3, line: 1873, type: !1947, scopeLine: 1878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2652 = !DILocalVariable(name: "dctx", arg: 1, scope: !2650, file: !3, line: 1873, type: !392)
!2653 = !DILocalVariable(name: "dst", arg: 2, scope: !2650, file: !3, line: 1874, type: !139)
!2654 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !2650, file: !3, line: 1874, type: !121)
!2655 = !DILocalVariable(name: "seqStart", arg: 4, scope: !2650, file: !3, line: 1875, type: !158)
!2656 = !DILocalVariable(name: "seqSize", arg: 5, scope: !2650, file: !3, line: 1875, type: !121)
!2657 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !2650, file: !3, line: 1875, type: !69)
!2658 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !2650, file: !3, line: 1876, type: !1726)
!2659 = !DILocalVariable(name: "frame", arg: 8, scope: !2650, file: !3, line: 1877, type: !296)
!2660 = !DILocation(line: 1873, column: 46, scope: !2650)
!2661 = !DILocation(line: 1874, column: 40, scope: !2650)
!2662 = !DILocation(line: 1874, column: 52, scope: !2650)
!2663 = !DILocation(line: 1875, column: 40, scope: !2650)
!2664 = !DILocation(line: 1875, column: 57, scope: !2650)
!2665 = !DILocation(line: 1875, column: 70, scope: !2650)
!2666 = !DILocation(line: 1876, column: 52, scope: !2650)
!2667 = !DILocation(line: 1877, column: 38, scope: !2650)
!2668 = !DILocation(line: 1879, column: 46, scope: !2650)
!2669 = !DILocation(line: 1879, column: 52, scope: !2650)
!2670 = !DILocation(line: 1879, column: 57, scope: !2650)
!2671 = !DILocation(line: 1879, column: 69, scope: !2650)
!2672 = !DILocation(line: 1879, column: 79, scope: !2650)
!2673 = !DILocation(line: 1879, column: 88, scope: !2650)
!2674 = !DILocation(line: 1879, column: 95, scope: !2650)
!2675 = !DILocation(line: 1879, column: 109, scope: !2650)
!2676 = !DILocation(line: 1879, column: 12, scope: !2650)
!2677 = !DILocation(line: 1879, column: 5, scope: !2650)
!2678 = distinct !DISubprogram(name: "ZSTD_decompressSequencesLong_default", scope: !3, file: !3, line: 1834, type: !1947, scopeLine: 1839, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2679 = !{!2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687}
!2680 = !DILocalVariable(name: "dctx", arg: 1, scope: !2678, file: !3, line: 1834, type: !392)
!2681 = !DILocalVariable(name: "dst", arg: 2, scope: !2678, file: !3, line: 1835, type: !139)
!2682 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !2678, file: !3, line: 1835, type: !121)
!2683 = !DILocalVariable(name: "seqStart", arg: 4, scope: !2678, file: !3, line: 1836, type: !158)
!2684 = !DILocalVariable(name: "seqSize", arg: 5, scope: !2678, file: !3, line: 1836, type: !121)
!2685 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !2678, file: !3, line: 1836, type: !69)
!2686 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !2678, file: !3, line: 1837, type: !1726)
!2687 = !DILocalVariable(name: "frame", arg: 8, scope: !2678, file: !3, line: 1838, type: !296)
!2688 = !DILocation(line: 1834, column: 49, scope: !2678)
!2689 = !DILocation(line: 1835, column: 40, scope: !2678)
!2690 = !DILocation(line: 1835, column: 52, scope: !2678)
!2691 = !DILocation(line: 1836, column: 40, scope: !2678)
!2692 = !DILocation(line: 1836, column: 57, scope: !2678)
!2693 = !DILocation(line: 1836, column: 70, scope: !2678)
!2694 = !DILocation(line: 1837, column: 52, scope: !2678)
!2695 = !DILocation(line: 1838, column: 38, scope: !2678)
!2696 = !DILocation(line: 1840, column: 46, scope: !2678)
!2697 = !DILocation(line: 1840, column: 52, scope: !2678)
!2698 = !DILocation(line: 1840, column: 57, scope: !2678)
!2699 = !DILocation(line: 1840, column: 69, scope: !2678)
!2700 = !DILocation(line: 1840, column: 79, scope: !2678)
!2701 = !DILocation(line: 1840, column: 88, scope: !2678)
!2702 = !DILocation(line: 1840, column: 95, scope: !2678)
!2703 = !DILocation(line: 1840, column: 109, scope: !2678)
!2704 = !DILocation(line: 1840, column: 12, scope: !2678)
!2705 = !DILocation(line: 1840, column: 5, scope: !2678)
!2706 = distinct !DISubprogram(name: "ZSTD_decompressSequencesLong_body", scope: !3, file: !3, line: 1667, type: !1947, scopeLine: 1673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2707)
!2707 = !{!2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2737, !2738, !2761, !2762, !2763, !2765, !2770, !2774, !2775, !2778, !2783, !2786, !2788, !2790, !2792, !2795}
!2708 = !DILocalVariable(name: "dctx", arg: 1, scope: !2706, file: !3, line: 1668, type: !392)
!2709 = !DILocalVariable(name: "dst", arg: 2, scope: !2706, file: !3, line: 1669, type: !139)
!2710 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !2706, file: !3, line: 1669, type: !121)
!2711 = !DILocalVariable(name: "seqStart", arg: 4, scope: !2706, file: !3, line: 1670, type: !158)
!2712 = !DILocalVariable(name: "seqSize", arg: 5, scope: !2706, file: !3, line: 1670, type: !121)
!2713 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !2706, file: !3, line: 1670, type: !69)
!2714 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !2706, file: !3, line: 1671, type: !1726)
!2715 = !DILocalVariable(name: "frame", arg: 8, scope: !2706, file: !3, line: 1672, type: !296)
!2716 = !DILocalVariable(name: "ip", scope: !2706, file: !3, line: 1674, type: !128)
!2717 = !DILocalVariable(name: "iend", scope: !2706, file: !3, line: 1675, type: !566)
!2718 = !DILocalVariable(name: "ostart", scope: !2706, file: !3, line: 1676, type: !2719)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!2720 = !DILocalVariable(name: "oend", scope: !2706, file: !3, line: 1677, type: !2719)
!2721 = !DILocalVariable(name: "op", scope: !2706, file: !3, line: 1678, type: !166)
!2722 = !DILocalVariable(name: "litPtr", scope: !2706, file: !3, line: 1679, type: !128)
!2723 = !DILocalVariable(name: "litBufferEnd", scope: !2706, file: !3, line: 1680, type: !128)
!2724 = !DILocalVariable(name: "prefixStart", scope: !2706, file: !3, line: 1681, type: !566)
!2725 = !DILocalVariable(name: "dictStart", scope: !2706, file: !3, line: 1682, type: !566)
!2726 = !DILocalVariable(name: "dictEnd", scope: !2706, file: !3, line: 1683, type: !566)
!2727 = !DILocalVariable(name: "sequences", scope: !2728, file: !3, line: 1691, type: !2730)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 1687, column: 16)
!2729 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1687, column: 9)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2731, size: 1536, elements: !298)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_t", file: !3, line: 737, baseType: !2732)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 733, size: 192, elements: !2733)
!2733 = !{!2734, !2735, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "litLength", scope: !2732, file: !3, line: 734, baseType: !121, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "matchLength", scope: !2732, file: !3, line: 735, baseType: !121, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2732, file: !3, line: 736, baseType: !121, size: 64, offset: 128)
!2737 = !DILocalVariable(name: "seqAdvance", scope: !2728, file: !3, line: 1692, type: !296)
!2738 = !DILocalVariable(name: "seqState", scope: !2728, file: !3, line: 1693, type: !2739)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqState_t", file: !3, line: 750, baseType: !2740)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 744, size: 896, elements: !2741)
!2741 = !{!2742, !2751, !2757, !2758, !2759}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "DStream", scope: !2740, file: !3, line: 745, baseType: !2743, size: 320)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIT_DStream_t", file: !110, line: 88, baseType: !2744)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 82, size: 320, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "bitContainer", scope: !2744, file: !110, line: 83, baseType: !121, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "bitsConsumed", scope: !2744, file: !110, line: 84, baseType: !7, size: 32, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2744, file: !110, line: 85, baseType: !140, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2744, file: !110, line: 86, baseType: !140, size: 64, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "limitPtr", scope: !2744, file: !110, line: 87, baseType: !140, size: 64, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "stateLL", scope: !2740, file: !3, line: 746, baseType: !2752, size: 128, offset: 320)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_fseState", file: !3, line: 742, baseType: !2753)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 739, size: 128, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2753, file: !3, line: 740, baseType: !121, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2753, file: !3, line: 741, baseType: !397, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "stateOffb", scope: !2740, file: !3, line: 747, baseType: !2752, size: 128, offset: 448)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "stateML", scope: !2740, file: !3, line: 748, baseType: !2752, size: 128, offset: 576)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "prevOffset", scope: !2740, file: !3, line: 749, baseType: !2760, size: 192, offset: 704)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 192, elements: !424)
!2761 = !DILocalVariable(name: "seqNb", scope: !2728, file: !3, line: 1694, type: !69)
!2762 = !DILocalVariable(name: "prefetchPos", scope: !2728, file: !3, line: 1695, type: !121)
!2763 = !DILocalVariable(name: "i", scope: !2764, file: !3, line: 1698, type: !69)
!2764 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1698, column: 9)
!2765 = !DILocalVariable(name: "sequence", scope: !2766, file: !3, line: 1710, type: !2769)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1709, column: 119)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 1709, column: 9)
!2768 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1709, column: 9)
!2769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2731)
!2770 = !DILocalVariable(name: "sequence", scope: !2771, file: !3, line: 1718, type: !2731)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1717, column: 111)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 1717, column: 9)
!2773 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1717, column: 9)
!2774 = !DILocalVariable(name: "oneSeqSize", scope: !2771, file: !3, line: 1719, type: !121)
!2775 = !DILocalVariable(name: "leftoverLit", scope: !2776, file: !3, line: 1724, type: !237)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1722, column: 13)
!2777 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1721, column: 17)
!2778 = !DILocalVariable(name: "sequence", scope: !2779, file: !3, line: 1768, type: !2782)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 1767, column: 40)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1767, column: 9)
!2781 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1767, column: 9)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2783 = !DILocalVariable(name: "leftoverLit", scope: !2784, file: !3, line: 1771, type: !237)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1770, column: 13)
!2785 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 1769, column: 17)
!2786 = !DILocalVariable(name: "oneSeqSize", scope: !2787, file: !3, line: 1783, type: !237)
!2787 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 1782, column: 17)
!2788 = !DILocalVariable(name: "oneSeqSize", scope: !2789, file: !3, line: 1794, type: !237)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1793, column: 13)
!2790 = !DILocalVariable(name: "i", scope: !2791, file: !3, line: 1807, type: !144)
!2791 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1807, column: 9)
!2792 = !DILocalVariable(name: "lastLLSize", scope: !2793, file: !3, line: 1813, type: !237)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 1812, column: 5)
!2794 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1811, column: 9)
!2795 = !DILocalVariable(name: "lastLLSize", scope: !2796, file: !3, line: 1822, type: !237)
!2796 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1822, column: 5)
!2797 = !DILocation(line: 1668, column: 43, scope: !2706)
!2798 = !DILocation(line: 1669, column: 38, scope: !2706)
!2799 = !DILocation(line: 1669, column: 50, scope: !2706)
!2800 = !DILocation(line: 1670, column: 38, scope: !2706)
!2801 = !DILocation(line: 1670, column: 55, scope: !2706)
!2802 = !DILocation(line: 1670, column: 68, scope: !2706)
!2803 = !DILocation(line: 1671, column: 50, scope: !2706)
!2804 = !DILocation(line: 1672, column: 36, scope: !2706)
!2805 = !DILocation(line: 1674, column: 5, scope: !2706)
!2806 = !DILocation(line: 1674, column: 17, scope: !2706)
!2807 = !DILocation(line: 1674, column: 35, scope: !2706)
!2808 = !DILocation(line: 1675, column: 5, scope: !2706)
!2809 = !DILocation(line: 1675, column: 23, scope: !2706)
!2810 = !DILocation(line: 1675, column: 30, scope: !2706)
!2811 = !DILocation(line: 1675, column: 35, scope: !2706)
!2812 = !DILocation(line: 1675, column: 33, scope: !2706)
!2813 = !DILocation(line: 1676, column: 5, scope: !2706)
!2814 = !DILocation(line: 1676, column: 17, scope: !2706)
!2815 = !DILocation(line: 1676, column: 33, scope: !2706)
!2816 = !DILocation(line: 1677, column: 5, scope: !2706)
!2817 = !DILocation(line: 1677, column: 17, scope: !2706)
!2818 = !DILocation(line: 1677, column: 24, scope: !2706)
!2819 = !DILocation(line: 1677, column: 30, scope: !2706)
!2820 = !DILocation(line: 1677, column: 48, scope: !2706)
!2821 = !DILocation(line: 1677, column: 65, scope: !2706)
!2822 = !DILocation(line: 1677, column: 71, scope: !2706)
!2823 = !DILocation(line: 1677, column: 83, scope: !2706)
!2824 = !DILocation(line: 1677, column: 92, scope: !2706)
!2825 = !DILocation(line: 1677, column: 90, scope: !2706)
!2826 = !DILocation(line: 1678, column: 5, scope: !2706)
!2827 = !DILocation(line: 1678, column: 11, scope: !2706)
!2828 = !DILocation(line: 1678, column: 16, scope: !2706)
!2829 = !DILocation(line: 1679, column: 5, scope: !2706)
!2830 = !DILocation(line: 1679, column: 17, scope: !2706)
!2831 = !DILocation(line: 1679, column: 26, scope: !2706)
!2832 = !DILocation(line: 1679, column: 32, scope: !2706)
!2833 = !DILocation(line: 1680, column: 5, scope: !2706)
!2834 = !DILocation(line: 1680, column: 17, scope: !2706)
!2835 = !DILocation(line: 1680, column: 32, scope: !2706)
!2836 = !DILocation(line: 1680, column: 38, scope: !2706)
!2837 = !DILocation(line: 1681, column: 5, scope: !2706)
!2838 = !DILocation(line: 1681, column: 23, scope: !2706)
!2839 = !DILocation(line: 1681, column: 52, scope: !2706)
!2840 = !DILocation(line: 1681, column: 58, scope: !2706)
!2841 = !DILocation(line: 1682, column: 5, scope: !2706)
!2842 = !DILocation(line: 1682, column: 23, scope: !2706)
!2843 = !DILocation(line: 1682, column: 50, scope: !2706)
!2844 = !DILocation(line: 1682, column: 56, scope: !2706)
!2845 = !DILocation(line: 1683, column: 5, scope: !2706)
!2846 = !DILocation(line: 1683, column: 23, scope: !2706)
!2847 = !DILocation(line: 1683, column: 48, scope: !2706)
!2848 = !DILocation(line: 1683, column: 54, scope: !2706)
!2849 = !DILocation(line: 1684, column: 11, scope: !2706)
!2850 = !DILocation(line: 1687, column: 9, scope: !2729)
!2851 = !DILocation(line: 1687, column: 9, scope: !2706)
!2852 = !DILocation(line: 1691, column: 9, scope: !2728)
!2853 = !DILocation(line: 1691, column: 15, scope: !2728)
!2854 = !DILocation(line: 1692, column: 9, scope: !2728)
!2855 = !DILocation(line: 1692, column: 19, scope: !2728)
!2856 = !DILocation(line: 1692, column: 32, scope: !2728)
!2857 = !DILocation(line: 1693, column: 9, scope: !2728)
!2858 = !DILocation(line: 1693, column: 20, scope: !2728)
!2859 = !DILocation(line: 1694, column: 9, scope: !2728)
!2860 = !DILocation(line: 1694, column: 13, scope: !2728)
!2861 = !DILocation(line: 1695, column: 9, scope: !2728)
!2862 = !DILocation(line: 1695, column: 16, scope: !2728)
!2863 = !DILocation(line: 1695, column: 39, scope: !2728)
!2864 = !DILocation(line: 1695, column: 42, scope: !2728)
!2865 = !DILocation(line: 1695, column: 41, scope: !2728)
!2866 = !DILocation(line: 1697, column: 9, scope: !2728)
!2867 = !DILocation(line: 1697, column: 15, scope: !2728)
!2868 = !DILocation(line: 1697, column: 26, scope: !2728)
!2869 = !DILocation(line: 1698, column: 11, scope: !2764)
!2870 = !DILocation(line: 1698, column: 15, scope: !2764)
!2871 = !DILocation(line: 1698, column: 24, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1698, column: 18)
!2873 = !DILocation(line: 1698, column: 23, scope: !2872)
!2874 = !DILocation(line: 1698, column: 28, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 1698, column: 18)
!2876 = !DILocation(line: 1698, column: 29, scope: !2875)
!2877 = !DILocation(line: 1698, column: 18, scope: !2872)
!2878 = !DILocation(line: 1698, column: 74, scope: !2875)
!2879 = !DILocation(line: 1698, column: 80, scope: !2875)
!2880 = !DILocation(line: 1698, column: 88, scope: !2875)
!2881 = !DILocation(line: 1698, column: 92, scope: !2875)
!2882 = !DILocation(line: 1698, column: 58, scope: !2875)
!2883 = !DILocation(line: 1698, column: 69, scope: !2875)
!2884 = !DILocation(line: 1698, column: 49, scope: !2875)
!2885 = !DILocation(line: 1698, column: 72, scope: !2875)
!2886 = !DILocation(line: 1698, column: 45, scope: !2875)
!2887 = !DILocation(line: 1698, column: 18, scope: !2875)
!2888 = distinct !{!2888, !2877, !2889, !731, !732}
!2889 = !DILocation(line: 1698, column: 93, scope: !2872)
!2890 = !DILocation(line: 1698, column: 96, scope: !2728)
!2891 = !DILocation(line: 1701, column: 9, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1701, column: 9)
!2893 = !DILocation(line: 1701, column: 9, scope: !2728)
!2894 = !DILocation(line: 1701, column: 9, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 1701, column: 9)
!2896 = !DILocation(line: 1704, column: 37, scope: !2728)
!2897 = !DILocation(line: 1704, column: 56, scope: !2728)
!2898 = !DILocation(line: 1704, column: 65, scope: !2728)
!2899 = !DILocation(line: 1704, column: 71, scope: !2728)
!2900 = !DILocation(line: 1704, column: 9, scope: !2728)
!2901 = !DILocation(line: 1705, column: 37, scope: !2728)
!2902 = !DILocation(line: 1705, column: 58, scope: !2728)
!2903 = !DILocation(line: 1705, column: 67, scope: !2728)
!2904 = !DILocation(line: 1705, column: 73, scope: !2728)
!2905 = !DILocation(line: 1705, column: 9, scope: !2728)
!2906 = !DILocation(line: 1706, column: 37, scope: !2728)
!2907 = !DILocation(line: 1706, column: 56, scope: !2728)
!2908 = !DILocation(line: 1706, column: 65, scope: !2728)
!2909 = !DILocation(line: 1706, column: 71, scope: !2728)
!2910 = !DILocation(line: 1706, column: 9, scope: !2728)
!2911 = !DILocation(line: 1709, column: 19, scope: !2768)
!2912 = !DILocation(line: 1709, column: 14, scope: !2768)
!2913 = !DILocation(line: 1709, column: 52, scope: !2767)
!2914 = !DILocation(line: 1709, column: 24, scope: !2767)
!2915 = !DILocation(line: 1709, column: 61, scope: !2767)
!2916 = !DILocation(line: 1709, column: 87, scope: !2767)
!2917 = !DILocation(line: 1709, column: 91, scope: !2767)
!2918 = !DILocation(line: 1709, column: 97, scope: !2767)
!2919 = !DILocation(line: 1709, column: 96, scope: !2767)
!2920 = !DILocation(line: 0, scope: !2767)
!2921 = !DILocation(line: 1709, column: 9, scope: !2768)
!2922 = !DILocation(line: 1710, column: 13, scope: !2766)
!2923 = !DILocation(line: 1710, column: 25, scope: !2766)
!2924 = !DILocation(line: 1710, column: 67, scope: !2766)
!2925 = !DILocation(line: 1710, column: 36, scope: !2766)
!2926 = !DILocation(line: 1711, column: 46, scope: !2766)
!2927 = !DILocation(line: 1711, column: 69, scope: !2766)
!2928 = !DILocation(line: 1711, column: 82, scope: !2766)
!2929 = !DILocation(line: 1711, column: 27, scope: !2766)
!2930 = !DILocation(line: 1711, column: 25, scope: !2766)
!2931 = !DILocation(line: 1712, column: 23, scope: !2766)
!2932 = !DILocation(line: 1712, column: 13, scope: !2766)
!2933 = !DILocation(line: 1712, column: 32, scope: !2766)
!2934 = !DILocation(line: 1713, column: 9, scope: !2767)
!2935 = !DILocation(line: 1713, column: 9, scope: !2766)
!2936 = !DILocation(line: 1709, column: 115, scope: !2767)
!2937 = !DILocation(line: 1709, column: 9, scope: !2767)
!2938 = distinct !{!2938, !2921, !2939, !731, !732}
!2939 = !DILocation(line: 1713, column: 9, scope: !2768)
!2940 = !DILocation(line: 1714, column: 9, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1714, column: 9)
!2942 = !DILocation(line: 1714, column: 9, scope: !2728)
!2943 = !DILocation(line: 1714, column: 9, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1714, column: 9)
!2945 = !DILocation(line: 1717, column: 9, scope: !2728)
!2946 = !DILocation(line: 1717, column: 46, scope: !2772)
!2947 = !DILocation(line: 1717, column: 17, scope: !2772)
!2948 = !DILocation(line: 1717, column: 56, scope: !2772)
!2949 = !DILocation(line: 1717, column: 82, scope: !2772)
!2950 = !DILocation(line: 1717, column: 86, scope: !2772)
!2951 = !DILocation(line: 1717, column: 94, scope: !2772)
!2952 = !DILocation(line: 1717, column: 92, scope: !2772)
!2953 = !DILocation(line: 0, scope: !2772)
!2954 = !DILocation(line: 1717, column: 9, scope: !2773)
!2955 = !DILocation(line: 1718, column: 13, scope: !2771)
!2956 = !DILocation(line: 1718, column: 19, scope: !2771)
!2957 = !DILocation(line: 1718, column: 61, scope: !2771)
!2958 = !DILocation(line: 1718, column: 30, scope: !2771)
!2959 = !DILocation(line: 1719, column: 13, scope: !2771)
!2960 = !DILocation(line: 1719, column: 20, scope: !2771)
!2961 = !DILocation(line: 1721, column: 17, scope: !2777)
!2962 = !DILocation(line: 1721, column: 23, scope: !2777)
!2963 = !DILocation(line: 1721, column: 41, scope: !2777)
!2964 = !DILocation(line: 1721, column: 55, scope: !2777)
!2965 = !DILocation(line: 1721, column: 58, scope: !2777)
!2966 = !DILocation(line: 1721, column: 78, scope: !2777)
!2967 = !DILocation(line: 1721, column: 84, scope: !2777)
!2968 = !DILocation(line: 1721, column: 101, scope: !2777)
!2969 = !DILocation(line: 1721, column: 67, scope: !2777)
!2970 = !DILocation(line: 1721, column: 121, scope: !2777)
!2971 = !DILocation(line: 1721, column: 65, scope: !2777)
!2972 = !DILocation(line: 1721, column: 133, scope: !2777)
!2973 = !DILocation(line: 1721, column: 139, scope: !2777)
!2974 = !DILocation(line: 1721, column: 131, scope: !2777)
!2975 = !DILocation(line: 1721, column: 17, scope: !2771)
!2976 = !DILocation(line: 1724, column: 17, scope: !2776)
!2977 = !DILocation(line: 1724, column: 30, scope: !2776)
!2978 = !DILocation(line: 1724, column: 44, scope: !2776)
!2979 = !DILocation(line: 1724, column: 50, scope: !2776)
!2980 = !DILocation(line: 1724, column: 65, scope: !2776)
!2981 = !DILocation(line: 1724, column: 63, scope: !2776)
!2982 = !DILocation(line: 1725, column: 21, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1725, column: 21)
!2984 = !DILocation(line: 1725, column: 21, scope: !2776)
!2985 = !DILocation(line: 1727, column: 21, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 1727, column: 21)
!2987 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1726, column: 17)
!2988 = !DILocation(line: 1727, column: 21, scope: !2987)
!2989 = !DILocation(line: 1727, column: 21, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1727, column: 21)
!2991 = !DILocation(line: 1728, column: 47, scope: !2987)
!2992 = !DILocation(line: 1728, column: 51, scope: !2987)
!2993 = !DILocation(line: 1728, column: 59, scope: !2987)
!2994 = !DILocation(line: 1728, column: 21, scope: !2987)
!2995 = !DILocation(line: 1729, column: 88, scope: !2987)
!2996 = !DILocation(line: 1729, column: 32, scope: !2987)
!2997 = !DILocation(line: 1729, column: 38, scope: !2987)
!2998 = !DILocation(line: 1729, column: 55, scope: !2987)
!2999 = !DILocation(line: 1729, column: 21, scope: !2987)
!3000 = !DILocation(line: 1729, column: 75, scope: !2987)
!3001 = !DILocation(line: 1729, column: 85, scope: !2987)
!3002 = !DILocation(line: 1730, column: 27, scope: !2987)
!3003 = !DILocation(line: 1730, column: 24, scope: !2987)
!3004 = !DILocation(line: 1731, column: 17, scope: !2987)
!3005 = !DILocation(line: 1732, column: 26, scope: !2776)
!3006 = !DILocation(line: 1732, column: 32, scope: !2776)
!3007 = !DILocation(line: 1732, column: 24, scope: !2776)
!3008 = !DILocation(line: 1733, column: 32, scope: !2776)
!3009 = !DILocation(line: 1733, column: 38, scope: !2776)
!3010 = !DILocation(line: 1733, column: 53, scope: !2776)
!3011 = !DILocation(line: 1733, column: 30, scope: !2776)
!3012 = !DILocation(line: 1734, column: 17, scope: !2776)
!3013 = !DILocation(line: 1734, column: 23, scope: !2776)
!3014 = !DILocation(line: 1734, column: 41, scope: !2776)
!3015 = !DILocation(line: 1735, column: 48, scope: !2776)
!3016 = !DILocation(line: 1735, column: 52, scope: !2776)
!3017 = !DILocation(line: 1735, column: 69, scope: !2776)
!3018 = !DILocation(line: 1735, column: 75, scope: !2776)
!3019 = !DILocation(line: 1735, column: 92, scope: !2776)
!3020 = !DILocation(line: 1735, column: 58, scope: !2776)
!3021 = !DILocation(line: 1735, column: 122, scope: !2776)
!3022 = !DILocation(line: 1735, column: 136, scope: !2776)
!3023 = !DILocation(line: 1735, column: 149, scope: !2776)
!3024 = !DILocation(line: 1735, column: 160, scope: !2776)
!3025 = !DILocation(line: 1735, column: 30, scope: !2776)
!3026 = !DILocation(line: 1735, column: 28, scope: !2776)
!3027 = !DILocation(line: 1740, column: 34, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1740, column: 21)
!3029 = !DILocation(line: 1740, column: 21, scope: !3028)
!3030 = !DILocation(line: 1740, column: 21, scope: !2776)
!3031 = !DILocation(line: 1740, column: 54, scope: !3028)
!3032 = !DILocation(line: 1740, column: 47, scope: !3028)
!3033 = !DILocation(line: 1742, column: 50, scope: !2776)
!3034 = !DILocation(line: 1742, column: 73, scope: !2776)
!3035 = !DILocation(line: 1742, column: 86, scope: !2776)
!3036 = !DILocation(line: 1742, column: 31, scope: !2776)
!3037 = !DILocation(line: 1742, column: 29, scope: !2776)
!3038 = !DILocation(line: 1743, column: 27, scope: !2776)
!3039 = !DILocation(line: 1743, column: 33, scope: !2776)
!3040 = !DILocation(line: 1743, column: 17, scope: !2776)
!3041 = !DILocation(line: 1743, column: 55, scope: !2776)
!3042 = !DILocation(line: 1744, column: 23, scope: !2776)
!3043 = !DILocation(line: 1744, column: 20, scope: !2776)
!3044 = !DILocation(line: 1745, column: 13, scope: !2777)
!3045 = !DILocation(line: 1745, column: 13, scope: !2776)
!3046 = !DILocation(line: 1749, column: 30, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1747, column: 13)
!3048 = !DILocation(line: 1749, column: 36, scope: !3047)
!3049 = !DILocation(line: 1749, column: 54, scope: !3047)
!3050 = !DILocation(line: 1750, column: 53, scope: !3047)
!3051 = !DILocation(line: 1750, column: 57, scope: !3047)
!3052 = !DILocation(line: 1750, column: 63, scope: !3047)
!3053 = !DILocation(line: 1750, column: 83, scope: !3047)
!3054 = !DILocation(line: 1750, column: 89, scope: !3047)
!3055 = !DILocation(line: 1750, column: 106, scope: !3047)
!3056 = !DILocation(line: 1750, column: 72, scope: !3047)
!3057 = !DILocation(line: 1750, column: 126, scope: !3047)
!3058 = !DILocation(line: 1750, column: 70, scope: !3047)
!3059 = !DILocation(line: 1750, column: 136, scope: !3047)
!3060 = !DILocation(line: 1750, column: 170, scope: !3047)
!3061 = !DILocation(line: 1750, column: 176, scope: !3047)
!3062 = !DILocation(line: 1750, column: 193, scope: !3047)
!3063 = !DILocation(line: 1750, column: 159, scope: !3047)
!3064 = !DILocation(line: 1750, column: 223, scope: !3047)
!3065 = !DILocation(line: 1750, column: 237, scope: !3047)
!3066 = !DILocation(line: 1750, column: 250, scope: !3047)
!3067 = !DILocation(line: 1750, column: 261, scope: !3047)
!3068 = !DILocation(line: 1750, column: 21, scope: !3047)
!3069 = !DILocation(line: 1751, column: 39, scope: !3047)
!3070 = !DILocation(line: 1751, column: 43, scope: !3047)
!3071 = !DILocation(line: 1751, column: 60, scope: !3047)
!3072 = !DILocation(line: 1751, column: 66, scope: !3047)
!3073 = !DILocation(line: 1751, column: 83, scope: !3047)
!3074 = !DILocation(line: 1751, column: 49, scope: !3047)
!3075 = !DILocation(line: 1751, column: 113, scope: !3047)
!3076 = !DILocation(line: 1751, column: 127, scope: !3047)
!3077 = !DILocation(line: 1751, column: 140, scope: !3047)
!3078 = !DILocation(line: 1751, column: 151, scope: !3047)
!3079 = !DILocation(line: 1751, column: 21, scope: !3047)
!3080 = !DILocation(line: 1749, column: 28, scope: !3047)
!3081 = !DILocation(line: 1756, column: 34, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1756, column: 21)
!3083 = !DILocation(line: 1756, column: 21, scope: !3082)
!3084 = !DILocation(line: 1756, column: 21, scope: !3047)
!3085 = !DILocation(line: 1756, column: 54, scope: !3082)
!3086 = !DILocation(line: 1756, column: 47, scope: !3082)
!3087 = !DILocation(line: 1758, column: 50, scope: !3047)
!3088 = !DILocation(line: 1758, column: 73, scope: !3047)
!3089 = !DILocation(line: 1758, column: 86, scope: !3047)
!3090 = !DILocation(line: 1758, column: 31, scope: !3047)
!3091 = !DILocation(line: 1758, column: 29, scope: !3047)
!3092 = !DILocation(line: 1759, column: 27, scope: !3047)
!3093 = !DILocation(line: 1759, column: 33, scope: !3047)
!3094 = !DILocation(line: 1759, column: 17, scope: !3047)
!3095 = !DILocation(line: 1759, column: 55, scope: !3047)
!3096 = !DILocation(line: 1760, column: 23, scope: !3047)
!3097 = !DILocation(line: 1760, column: 20, scope: !3047)
!3098 = !DILocation(line: 1762, column: 9, scope: !2772)
!3099 = !DILocation(line: 1762, column: 9, scope: !2771)
!3100 = !DILocation(line: 1717, column: 107, scope: !2772)
!3101 = !DILocation(line: 1717, column: 9, scope: !2772)
!3102 = distinct !{!3102, !2954, !3103, !731, !732}
!3103 = !DILocation(line: 1762, column: 9, scope: !2773)
!3104 = !DILocation(line: 1763, column: 9, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1763, column: 9)
!3106 = !DILocation(line: 1763, column: 9, scope: !2728)
!3107 = !DILocation(line: 1763, column: 9, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1763, column: 9)
!3109 = !DILocation(line: 1766, column: 18, scope: !2728)
!3110 = !DILocation(line: 1766, column: 15, scope: !2728)
!3111 = !DILocation(line: 1767, column: 9, scope: !2728)
!3112 = !DILocation(line: 1767, column: 17, scope: !2780)
!3113 = !DILocation(line: 1767, column: 23, scope: !2780)
!3114 = !DILocation(line: 1767, column: 22, scope: !2780)
!3115 = !DILocation(line: 1767, column: 9, scope: !2781)
!3116 = !DILocation(line: 1768, column: 13, scope: !2779)
!3117 = !DILocation(line: 1768, column: 20, scope: !2779)
!3118 = !DILocation(line: 1768, column: 43, scope: !2779)
!3119 = !DILocation(line: 1768, column: 48, scope: !2779)
!3120 = !DILocation(line: 1768, column: 33, scope: !2779)
!3121 = !DILocation(line: 1769, column: 17, scope: !2785)
!3122 = !DILocation(line: 1769, column: 23, scope: !2785)
!3123 = !DILocation(line: 1769, column: 41, scope: !2785)
!3124 = !DILocation(line: 1769, column: 55, scope: !2785)
!3125 = !DILocation(line: 1769, column: 58, scope: !2785)
!3126 = !DILocation(line: 1769, column: 67, scope: !2785)
!3127 = !DILocation(line: 1769, column: 77, scope: !2785)
!3128 = !DILocation(line: 1769, column: 65, scope: !2785)
!3129 = !DILocation(line: 1769, column: 89, scope: !2785)
!3130 = !DILocation(line: 1769, column: 95, scope: !2785)
!3131 = !DILocation(line: 1769, column: 87, scope: !2785)
!3132 = !DILocation(line: 1769, column: 17, scope: !2779)
!3133 = !DILocation(line: 1771, column: 17, scope: !2784)
!3134 = !DILocation(line: 1771, column: 30, scope: !2784)
!3135 = !DILocation(line: 1771, column: 44, scope: !2784)
!3136 = !DILocation(line: 1771, column: 50, scope: !2784)
!3137 = !DILocation(line: 1771, column: 65, scope: !2784)
!3138 = !DILocation(line: 1771, column: 63, scope: !2784)
!3139 = !DILocation(line: 1772, column: 21, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 1772, column: 21)
!3141 = !DILocation(line: 1772, column: 21, scope: !2784)
!3142 = !DILocation(line: 1774, column: 21, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1774, column: 21)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1773, column: 17)
!3145 = !DILocation(line: 1774, column: 21, scope: !3144)
!3146 = !DILocation(line: 1774, column: 21, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1774, column: 21)
!3148 = !DILocation(line: 1775, column: 47, scope: !3144)
!3149 = !DILocation(line: 1775, column: 51, scope: !3144)
!3150 = !DILocation(line: 1775, column: 59, scope: !3144)
!3151 = !DILocation(line: 1775, column: 21, scope: !3144)
!3152 = !DILocation(line: 1776, column: 44, scope: !3144)
!3153 = !DILocation(line: 1776, column: 21, scope: !3144)
!3154 = !DILocation(line: 1776, column: 31, scope: !3144)
!3155 = !DILocation(line: 1776, column: 41, scope: !3144)
!3156 = !DILocation(line: 1777, column: 27, scope: !3144)
!3157 = !DILocation(line: 1777, column: 24, scope: !3144)
!3158 = !DILocation(line: 1778, column: 17, scope: !3144)
!3159 = !DILocation(line: 1779, column: 26, scope: !2784)
!3160 = !DILocation(line: 1779, column: 32, scope: !2784)
!3161 = !DILocation(line: 1779, column: 24, scope: !2784)
!3162 = !DILocation(line: 1780, column: 32, scope: !2784)
!3163 = !DILocation(line: 1780, column: 38, scope: !2784)
!3164 = !DILocation(line: 1780, column: 53, scope: !2784)
!3165 = !DILocation(line: 1780, column: 30, scope: !2784)
!3166 = !DILocation(line: 1781, column: 17, scope: !2784)
!3167 = !DILocation(line: 1781, column: 23, scope: !2784)
!3168 = !DILocation(line: 1781, column: 41, scope: !2784)
!3169 = !DILocation(line: 1783, column: 21, scope: !2787)
!3170 = !DILocation(line: 1783, column: 34, scope: !2787)
!3171 = !DILocation(line: 1783, column: 65, scope: !2787)
!3172 = !DILocation(line: 1783, column: 69, scope: !2787)
!3173 = !DILocation(line: 1783, column: 76, scope: !2787)
!3174 = !DILocation(line: 1783, column: 95, scope: !2787)
!3175 = !DILocation(line: 1783, column: 109, scope: !2787)
!3176 = !DILocation(line: 1783, column: 122, scope: !2787)
!3177 = !DILocation(line: 1783, column: 133, scope: !2787)
!3178 = !DILocation(line: 1783, column: 47, scope: !2787)
!3179 = !DILocation(line: 1788, column: 38, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1788, column: 25)
!3181 = !DILocation(line: 1788, column: 25, scope: !3180)
!3182 = !DILocation(line: 1788, column: 25, scope: !2787)
!3183 = !DILocation(line: 1788, column: 58, scope: !3180)
!3184 = !DILocation(line: 1788, column: 51, scope: !3180)
!3185 = !DILocation(line: 1789, column: 27, scope: !2787)
!3186 = !DILocation(line: 1789, column: 24, scope: !2787)
!3187 = !DILocation(line: 1790, column: 17, scope: !2784)
!3188 = !DILocation(line: 1791, column: 13, scope: !2785)
!3189 = !DILocation(line: 1791, column: 13, scope: !2784)
!3190 = !DILocation(line: 1794, column: 17, scope: !2789)
!3191 = !DILocation(line: 1794, column: 30, scope: !2789)
!3192 = !DILocation(line: 1794, column: 43, scope: !2789)
!3193 = !DILocation(line: 1794, column: 49, scope: !2789)
!3194 = !DILocation(line: 1794, column: 67, scope: !2789)
!3195 = !DILocation(line: 1795, column: 53, scope: !2789)
!3196 = !DILocation(line: 1795, column: 57, scope: !2789)
!3197 = !DILocation(line: 1795, column: 63, scope: !2789)
!3198 = !DILocation(line: 1795, column: 72, scope: !2789)
!3199 = !DILocation(line: 1795, column: 82, scope: !2789)
!3200 = !DILocation(line: 1795, column: 70, scope: !2789)
!3201 = !DILocation(line: 1795, column: 92, scope: !2789)
!3202 = !DILocation(line: 1795, column: 116, scope: !2789)
!3203 = !DILocation(line: 1795, column: 135, scope: !2789)
!3204 = !DILocation(line: 1795, column: 149, scope: !2789)
!3205 = !DILocation(line: 1795, column: 162, scope: !2789)
!3206 = !DILocation(line: 1795, column: 173, scope: !2789)
!3207 = !DILocation(line: 1795, column: 21, scope: !2789)
!3208 = !DILocation(line: 1796, column: 39, scope: !2789)
!3209 = !DILocation(line: 1796, column: 43, scope: !2789)
!3210 = !DILocation(line: 1796, column: 50, scope: !2789)
!3211 = !DILocation(line: 1796, column: 69, scope: !2789)
!3212 = !DILocation(line: 1796, column: 83, scope: !2789)
!3213 = !DILocation(line: 1796, column: 96, scope: !2789)
!3214 = !DILocation(line: 1796, column: 107, scope: !2789)
!3215 = !DILocation(line: 1796, column: 21, scope: !2789)
!3216 = !DILocation(line: 1801, column: 34, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 1801, column: 21)
!3218 = !DILocation(line: 1801, column: 21, scope: !3217)
!3219 = !DILocation(line: 1801, column: 21, scope: !2789)
!3220 = !DILocation(line: 1801, column: 54, scope: !3217)
!3221 = !DILocation(line: 1801, column: 47, scope: !3217)
!3222 = !DILocation(line: 1802, column: 23, scope: !2789)
!3223 = !DILocation(line: 1802, column: 20, scope: !2789)
!3224 = !DILocation(line: 1803, column: 13, scope: !2785)
!3225 = !DILocation(line: 1804, column: 9, scope: !2780)
!3226 = !DILocation(line: 1804, column: 9, scope: !2779)
!3227 = !DILocation(line: 1767, column: 36, scope: !2780)
!3228 = !DILocation(line: 1767, column: 9, scope: !2780)
!3229 = distinct !{!3229, !3115, !3230, !731, !732}
!3230 = !DILocation(line: 1804, column: 9, scope: !2781)
!3231 = !DILocation(line: 1807, column: 11, scope: !2791)
!3232 = !DILocation(line: 1807, column: 15, scope: !2791)
!3233 = !DILocation(line: 1807, column: 24, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 1807, column: 18)
!3235 = !DILocation(line: 1807, column: 23, scope: !3234)
!3236 = !DILocation(line: 1807, column: 28, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 1807, column: 18)
!3238 = !DILocation(line: 1807, column: 29, scope: !3237)
!3239 = !DILocation(line: 1807, column: 18, scope: !3234)
!3240 = !DILocation(line: 1807, column: 87, scope: !3237)
!3241 = !DILocation(line: 1807, column: 98, scope: !3237)
!3242 = !DILocation(line: 1807, column: 78, scope: !3237)
!3243 = !DILocation(line: 1807, column: 72, scope: !3237)
!3244 = !DILocation(line: 1807, column: 49, scope: !3237)
!3245 = !DILocation(line: 1807, column: 55, scope: !3237)
!3246 = !DILocation(line: 1807, column: 63, scope: !3237)
!3247 = !DILocation(line: 1807, column: 67, scope: !3237)
!3248 = !DILocation(line: 1807, column: 70, scope: !3237)
!3249 = !DILocation(line: 1807, column: 45, scope: !3237)
!3250 = !DILocation(line: 1807, column: 18, scope: !3237)
!3251 = distinct !{!3251, !3239, !3252, !731, !732}
!3252 = !DILocation(line: 1807, column: 100, scope: !3234)
!3253 = !DILocation(line: 1807, column: 103, scope: !2728)
!3254 = !DILocation(line: 1808, column: 5, scope: !2729)
!3255 = !DILocation(line: 1808, column: 5, scope: !2728)
!3256 = !DILocation(line: 1811, column: 9, scope: !2794)
!3257 = !DILocation(line: 1811, column: 15, scope: !2794)
!3258 = !DILocation(line: 1811, column: 33, scope: !2794)
!3259 = !DILocation(line: 1811, column: 9, scope: !2706)
!3260 = !DILocation(line: 1813, column: 9, scope: !2793)
!3261 = !DILocation(line: 1813, column: 22, scope: !2793)
!3262 = !DILocation(line: 1813, column: 35, scope: !2793)
!3263 = !DILocation(line: 1813, column: 50, scope: !2793)
!3264 = !DILocation(line: 1813, column: 48, scope: !2793)
!3265 = !DILocation(line: 1814, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1814, column: 9)
!3267 = !DILocation(line: 1814, column: 9, scope: !2793)
!3268 = !DILocation(line: 1814, column: 9, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 1814, column: 9)
!3270 = !DILocation(line: 1815, column: 13, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1815, column: 13)
!3272 = !DILocation(line: 1815, column: 16, scope: !3271)
!3273 = !DILocation(line: 1815, column: 13, scope: !2793)
!3274 = !DILocation(line: 1816, column: 13, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 1815, column: 25)
!3276 = !DILocation(line: 1817, column: 19, scope: !3275)
!3277 = !DILocation(line: 1817, column: 16, scope: !3275)
!3278 = !DILocation(line: 1818, column: 9, scope: !3275)
!3279 = !DILocation(line: 1819, column: 18, scope: !2793)
!3280 = !DILocation(line: 1819, column: 24, scope: !2793)
!3281 = !DILocation(line: 1819, column: 16, scope: !2793)
!3282 = !DILocation(line: 1820, column: 24, scope: !2793)
!3283 = !DILocation(line: 1820, column: 30, scope: !2793)
!3284 = !DILocation(line: 1820, column: 45, scope: !2793)
!3285 = !DILocation(line: 1820, column: 22, scope: !2793)
!3286 = !DILocation(line: 1821, column: 5, scope: !2794)
!3287 = !DILocation(line: 1821, column: 5, scope: !2793)
!3288 = !DILocation(line: 1822, column: 9, scope: !2796)
!3289 = !DILocation(line: 1822, column: 22, scope: !2796)
!3290 = !DILocation(line: 1822, column: 35, scope: !2796)
!3291 = !DILocation(line: 1822, column: 50, scope: !2796)
!3292 = !DILocation(line: 1822, column: 48, scope: !2796)
!3293 = !DILocation(line: 1823, column: 9, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 1823, column: 9)
!3295 = !DILocation(line: 1823, column: 9, scope: !2796)
!3296 = !DILocation(line: 1823, column: 9, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 1823, column: 9)
!3298 = !DILocation(line: 1824, column: 13, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 1824, column: 13)
!3300 = !DILocation(line: 1824, column: 16, scope: !3299)
!3301 = !DILocation(line: 1824, column: 13, scope: !2796)
!3302 = !DILocation(line: 1825, column: 13, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 1824, column: 25)
!3304 = !DILocation(line: 1826, column: 19, scope: !3303)
!3305 = !DILocation(line: 1826, column: 16, scope: !3303)
!3306 = !DILocation(line: 1827, column: 9, scope: !3303)
!3307 = !DILocation(line: 1828, column: 5, scope: !2706)
!3308 = !DILocation(line: 1830, column: 12, scope: !2706)
!3309 = !DILocation(line: 1830, column: 15, scope: !2706)
!3310 = !DILocation(line: 1830, column: 14, scope: !2706)
!3311 = !DILocation(line: 1830, column: 5, scope: !2706)
!3312 = !DILocation(line: 1831, column: 1, scope: !2706)
!3313 = distinct !DISubprogram(name: "BIT_initDStream", scope: !110, file: !110, line: 258, type: !3314, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3317)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!121, !3316, !158, !121}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!3317 = !{!3318, !3319, !3320, !3321, !3325}
!3318 = !DILocalVariable(name: "bitD", arg: 1, scope: !3313, file: !110, line: 258, type: !3316)
!3319 = !DILocalVariable(name: "srcBuffer", arg: 2, scope: !3313, file: !110, line: 258, type: !158)
!3320 = !DILocalVariable(name: "srcSize", arg: 3, scope: !3313, file: !110, line: 258, type: !121)
!3321 = !DILocalVariable(name: "lastByte", scope: !3322, file: !110, line: 268, type: !129)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !110, line: 268, column: 9)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !110, line: 265, column: 49)
!3324 = distinct !DILexicalBlock(scope: !3313, file: !110, line: 265, column: 9)
!3325 = !DILocalVariable(name: "lastByte", scope: !3326, file: !110, line: 296, type: !129)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !110, line: 296, column: 9)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !110, line: 271, column: 12)
!3328 = !DILocation(line: 258, column: 50, scope: !3313)
!3329 = !DILocation(line: 258, column: 68, scope: !3313)
!3330 = !DILocation(line: 258, column: 86, scope: !3313)
!3331 = !DILocation(line: 260, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3313, file: !110, line: 260, column: 9)
!3333 = !DILocation(line: 260, column: 17, scope: !3332)
!3334 = !DILocation(line: 260, column: 9, scope: !3313)
!3335 = !DILocation(line: 260, column: 24, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !110, line: 260, column: 22)
!3337 = !DILocation(line: 260, column: 61, scope: !3336)
!3338 = !DILocation(line: 262, column: 32, scope: !3313)
!3339 = !DILocation(line: 262, column: 5, scope: !3313)
!3340 = !DILocation(line: 262, column: 11, scope: !3313)
!3341 = !DILocation(line: 262, column: 17, scope: !3313)
!3342 = !DILocation(line: 263, column: 22, scope: !3313)
!3343 = !DILocation(line: 263, column: 28, scope: !3313)
!3344 = !DILocation(line: 263, column: 34, scope: !3313)
!3345 = !DILocation(line: 263, column: 5, scope: !3313)
!3346 = !DILocation(line: 263, column: 11, scope: !3313)
!3347 = !DILocation(line: 263, column: 20, scope: !3313)
!3348 = !DILocation(line: 265, column: 9, scope: !3324)
!3349 = !DILocation(line: 265, column: 17, scope: !3324)
!3350 = !DILocation(line: 265, column: 9, scope: !3313)
!3351 = !DILocation(line: 266, column: 36, scope: !3323)
!3352 = !DILocation(line: 266, column: 48, scope: !3323)
!3353 = !DILocation(line: 266, column: 46, scope: !3323)
!3354 = !DILocation(line: 266, column: 56, scope: !3323)
!3355 = !DILocation(line: 266, column: 9, scope: !3323)
!3356 = !DILocation(line: 266, column: 15, scope: !3323)
!3357 = !DILocation(line: 266, column: 21, scope: !3323)
!3358 = !DILocation(line: 267, column: 43, scope: !3323)
!3359 = !DILocation(line: 267, column: 49, scope: !3323)
!3360 = !DILocation(line: 267, column: 30, scope: !3323)
!3361 = !DILocation(line: 267, column: 9, scope: !3323)
!3362 = !DILocation(line: 267, column: 15, scope: !3323)
!3363 = !DILocation(line: 267, column: 28, scope: !3323)
!3364 = !DILocation(line: 268, column: 11, scope: !3322)
!3365 = !DILocation(line: 268, column: 22, scope: !3322)
!3366 = !DILocation(line: 268, column: 47, scope: !3322)
!3367 = !DILocation(line: 268, column: 58, scope: !3322)
!3368 = !DILocation(line: 268, column: 65, scope: !3322)
!3369 = !DILocation(line: 268, column: 33, scope: !3322)
!3370 = !DILocation(line: 269, column: 32, scope: !3322)
!3371 = !DILocation(line: 269, column: 61, scope: !3322)
!3372 = !DILocation(line: 269, column: 47, scope: !3322)
!3373 = !DILocation(line: 269, column: 45, scope: !3322)
!3374 = !DILocation(line: 269, column: 11, scope: !3322)
!3375 = !DILocation(line: 269, column: 17, scope: !3322)
!3376 = !DILocation(line: 269, column: 30, scope: !3322)
!3377 = !DILocation(line: 270, column: 15, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3322, file: !110, line: 270, column: 15)
!3379 = !DILocation(line: 270, column: 24, scope: !3378)
!3380 = !DILocation(line: 270, column: 15, scope: !3322)
!3381 = !DILocation(line: 270, column: 30, scope: !3378)
!3382 = !DILocation(line: 270, column: 79, scope: !3323)
!3383 = !DILocation(line: 271, column: 5, scope: !3323)
!3384 = !DILocation(line: 272, column: 23, scope: !3327)
!3385 = !DILocation(line: 272, column: 29, scope: !3327)
!3386 = !DILocation(line: 272, column: 9, scope: !3327)
!3387 = !DILocation(line: 272, column: 15, scope: !3327)
!3388 = !DILocation(line: 272, column: 21, scope: !3327)
!3389 = !DILocation(line: 273, column: 45, scope: !3327)
!3390 = !DILocation(line: 273, column: 51, scope: !3327)
!3391 = !DILocation(line: 273, column: 30, scope: !3327)
!3392 = !DILocation(line: 273, column: 9, scope: !3327)
!3393 = !DILocation(line: 273, column: 15, scope: !3327)
!3394 = !DILocation(line: 273, column: 28, scope: !3327)
!3395 = !DILocation(line: 274, column: 16, scope: !3327)
!3396 = !DILocation(line: 274, column: 9, scope: !3327)
!3397 = !DILocation(line: 276, column: 63, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3327, file: !110, line: 275, column: 9)
!3399 = !DILocation(line: 276, column: 48, scope: !3398)
!3400 = !DILocation(line: 276, column: 39, scope: !3398)
!3401 = !DILocation(line: 276, column: 79, scope: !3398)
!3402 = !DILocation(line: 276, column: 17, scope: !3398)
!3403 = !DILocation(line: 276, column: 23, scope: !3398)
!3404 = !DILocation(line: 276, column: 36, scope: !3398)
!3405 = !DILocation(line: 279, column: 63, scope: !3398)
!3406 = !DILocation(line: 279, column: 48, scope: !3398)
!3407 = !DILocation(line: 279, column: 39, scope: !3398)
!3408 = !DILocation(line: 279, column: 79, scope: !3398)
!3409 = !DILocation(line: 279, column: 17, scope: !3398)
!3410 = !DILocation(line: 279, column: 23, scope: !3398)
!3411 = !DILocation(line: 279, column: 36, scope: !3398)
!3412 = !DILocation(line: 282, column: 63, scope: !3398)
!3413 = !DILocation(line: 282, column: 48, scope: !3398)
!3414 = !DILocation(line: 282, column: 39, scope: !3398)
!3415 = !DILocation(line: 282, column: 79, scope: !3398)
!3416 = !DILocation(line: 282, column: 17, scope: !3398)
!3417 = !DILocation(line: 282, column: 23, scope: !3398)
!3418 = !DILocation(line: 282, column: 36, scope: !3398)
!3419 = !DILocation(line: 285, column: 63, scope: !3398)
!3420 = !DILocation(line: 285, column: 48, scope: !3398)
!3421 = !DILocation(line: 285, column: 39, scope: !3398)
!3422 = !DILocation(line: 285, column: 79, scope: !3398)
!3423 = !DILocation(line: 285, column: 17, scope: !3398)
!3424 = !DILocation(line: 285, column: 23, scope: !3398)
!3425 = !DILocation(line: 285, column: 36, scope: !3398)
!3426 = !DILocation(line: 288, column: 63, scope: !3398)
!3427 = !DILocation(line: 288, column: 48, scope: !3398)
!3428 = !DILocation(line: 288, column: 39, scope: !3398)
!3429 = !DILocation(line: 288, column: 79, scope: !3398)
!3430 = !DILocation(line: 288, column: 17, scope: !3398)
!3431 = !DILocation(line: 288, column: 23, scope: !3398)
!3432 = !DILocation(line: 288, column: 36, scope: !3398)
!3433 = !DILocation(line: 291, column: 63, scope: !3398)
!3434 = !DILocation(line: 291, column: 48, scope: !3398)
!3435 = !DILocation(line: 291, column: 39, scope: !3398)
!3436 = !DILocation(line: 291, column: 79, scope: !3398)
!3437 = !DILocation(line: 291, column: 17, scope: !3398)
!3438 = !DILocation(line: 291, column: 23, scope: !3398)
!3439 = !DILocation(line: 291, column: 36, scope: !3398)
!3440 = !DILocation(line: 294, column: 18, scope: !3398)
!3441 = !DILocation(line: 296, column: 13, scope: !3326)
!3442 = !DILocation(line: 296, column: 24, scope: !3326)
!3443 = !DILocation(line: 296, column: 49, scope: !3326)
!3444 = !DILocation(line: 296, column: 60, scope: !3326)
!3445 = !DILocation(line: 296, column: 67, scope: !3326)
!3446 = !DILocation(line: 296, column: 35, scope: !3326)
!3447 = !DILocation(line: 297, column: 34, scope: !3326)
!3448 = !DILocation(line: 297, column: 63, scope: !3326)
!3449 = !DILocation(line: 297, column: 49, scope: !3326)
!3450 = !DILocation(line: 297, column: 47, scope: !3326)
!3451 = !DILocation(line: 297, column: 13, scope: !3326)
!3452 = !DILocation(line: 297, column: 19, scope: !3326)
!3453 = !DILocation(line: 297, column: 32, scope: !3326)
!3454 = !DILocation(line: 298, column: 17, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3326, file: !110, line: 298, column: 17)
!3456 = !DILocation(line: 298, column: 26, scope: !3455)
!3457 = !DILocation(line: 298, column: 17, scope: !3326)
!3458 = !DILocation(line: 298, column: 32, scope: !3455)
!3459 = !DILocation(line: 299, column: 9, scope: !3327)
!3460 = !DILocation(line: 300, column: 66, scope: !3327)
!3461 = !DILocation(line: 300, column: 64, scope: !3327)
!3462 = !DILocation(line: 300, column: 31, scope: !3327)
!3463 = !DILocation(line: 300, column: 74, scope: !3327)
!3464 = !DILocation(line: 300, column: 9, scope: !3327)
!3465 = !DILocation(line: 300, column: 15, scope: !3327)
!3466 = !DILocation(line: 300, column: 28, scope: !3327)
!3467 = !DILocation(line: 303, column: 12, scope: !3313)
!3468 = !DILocation(line: 303, column: 5, scope: !3313)
!3469 = !DILocation(line: 304, column: 1, scope: !3313)
!3470 = distinct !DISubprogram(name: "ZSTD_initFseState", scope: !3, file: !3, line: 1138, type: !3471, scopeLine: 1139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3474)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3473, !3316, !397}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!3474 = !{!3475, !3476, !3477, !3478, !3479}
!3475 = !DILocalVariable(name: "DStatePtr", arg: 1, scope: !3470, file: !3, line: 1138, type: !3473)
!3476 = !DILocalVariable(name: "bitD", arg: 2, scope: !3470, file: !3, line: 1138, type: !3316)
!3477 = !DILocalVariable(name: "dt", arg: 3, scope: !3470, file: !3, line: 1138, type: !397)
!3478 = !DILocalVariable(name: "ptr", scope: !3470, file: !3, line: 1140, type: !158)
!3479 = !DILocalVariable(name: "DTableH", scope: !3470, file: !3, line: 1141, type: !3480)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!3481 = !DILocation(line: 1138, column: 34, scope: !3470)
!3482 = !DILocation(line: 1138, column: 60, scope: !3470)
!3483 = !DILocation(line: 1138, column: 88, scope: !3470)
!3484 = !DILocation(line: 1140, column: 5, scope: !3470)
!3485 = !DILocation(line: 1140, column: 17, scope: !3470)
!3486 = !DILocation(line: 1140, column: 23, scope: !3470)
!3487 = !DILocation(line: 1141, column: 5, scope: !3470)
!3488 = !DILocation(line: 1141, column: 40, scope: !3470)
!3489 = !DILocation(line: 1141, column: 80, scope: !3470)
!3490 = !DILocation(line: 1142, column: 37, scope: !3470)
!3491 = !DILocation(line: 1142, column: 43, scope: !3470)
!3492 = !DILocation(line: 1142, column: 52, scope: !3470)
!3493 = !DILocation(line: 1142, column: 24, scope: !3470)
!3494 = !DILocation(line: 1142, column: 5, scope: !3470)
!3495 = !DILocation(line: 1142, column: 16, scope: !3470)
!3496 = !DILocation(line: 1142, column: 22, scope: !3470)
!3497 = !DILocation(line: 1145, column: 23, scope: !3470)
!3498 = !DILocation(line: 1145, column: 5, scope: !3470)
!3499 = !DILocation(line: 1146, column: 24, scope: !3470)
!3500 = !DILocation(line: 1146, column: 27, scope: !3470)
!3501 = !DILocation(line: 1146, column: 5, scope: !3470)
!3502 = !DILocation(line: 1146, column: 16, scope: !3470)
!3503 = !DILocation(line: 1146, column: 22, scope: !3470)
!3504 = !DILocation(line: 1147, column: 1, scope: !3470)
!3505 = distinct !DISubprogram(name: "BIT_reloadDStream", scope: !110, file: !110, line: 411, type: !3506, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3509)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!3508, !3316}
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIT_DStream_status", file: !110, line: 93, baseType: !109)
!3509 = !{!3510, !3511, !3513}
!3510 = !DILocalVariable(name: "bitD", arg: 1, scope: !3505, file: !110, line: 411, type: !3316)
!3511 = !DILocalVariable(name: "nbBytes", scope: !3512, file: !110, line: 424, type: !144)
!3512 = distinct !DILexicalBlock(scope: !3505, file: !110, line: 424, column: 5)
!3513 = !DILocalVariable(name: "result", scope: !3512, file: !110, line: 425, type: !3508)
!3514 = !DILocation(line: 411, column: 64, scope: !3505)
!3515 = !DILocation(line: 413, column: 9, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3505, file: !110, line: 413, column: 9)
!3517 = !DILocation(line: 413, column: 15, scope: !3516)
!3518 = !DILocation(line: 413, column: 28, scope: !3516)
!3519 = !DILocation(line: 413, column: 9, scope: !3505)
!3520 = !DILocation(line: 414, column: 9, scope: !3516)
!3521 = !DILocation(line: 416, column: 9, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3505, file: !110, line: 416, column: 9)
!3523 = !DILocation(line: 416, column: 15, scope: !3522)
!3524 = !DILocation(line: 416, column: 22, scope: !3522)
!3525 = !DILocation(line: 416, column: 28, scope: !3522)
!3526 = !DILocation(line: 416, column: 19, scope: !3522)
!3527 = !DILocation(line: 416, column: 9, scope: !3505)
!3528 = !DILocation(line: 417, column: 38, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3522, file: !110, line: 416, column: 38)
!3530 = !DILocation(line: 417, column: 16, scope: !3529)
!3531 = !DILocation(line: 417, column: 9, scope: !3529)
!3532 = !DILocation(line: 419, column: 9, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3505, file: !110, line: 419, column: 9)
!3534 = !DILocation(line: 419, column: 15, scope: !3533)
!3535 = !DILocation(line: 419, column: 22, scope: !3533)
!3536 = !DILocation(line: 419, column: 28, scope: !3533)
!3537 = !DILocation(line: 419, column: 19, scope: !3533)
!3538 = !DILocation(line: 419, column: 9, scope: !3505)
!3539 = !DILocation(line: 420, column: 13, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !110, line: 420, column: 13)
!3541 = distinct !DILexicalBlock(scope: !3533, file: !110, line: 419, column: 35)
!3542 = !DILocation(line: 420, column: 19, scope: !3540)
!3543 = !DILocation(line: 420, column: 32, scope: !3540)
!3544 = !DILocation(line: 420, column: 13, scope: !3541)
!3545 = !DILocation(line: 420, column: 64, scope: !3540)
!3546 = !DILocation(line: 421, column: 9, scope: !3541)
!3547 = !DILocation(line: 424, column: 9, scope: !3512)
!3548 = !DILocation(line: 424, column: 13, scope: !3512)
!3549 = !DILocation(line: 424, column: 23, scope: !3512)
!3550 = !DILocation(line: 424, column: 29, scope: !3512)
!3551 = !DILocation(line: 424, column: 42, scope: !3512)
!3552 = !DILocation(line: 425, column: 9, scope: !3512)
!3553 = !DILocation(line: 425, column: 28, scope: !3512)
!3554 = !DILocation(line: 426, column: 13, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3512, file: !110, line: 426, column: 13)
!3556 = !DILocation(line: 426, column: 19, scope: !3555)
!3557 = !DILocation(line: 426, column: 25, scope: !3555)
!3558 = !DILocation(line: 426, column: 23, scope: !3555)
!3559 = !DILocation(line: 426, column: 35, scope: !3555)
!3560 = !DILocation(line: 426, column: 41, scope: !3555)
!3561 = !DILocation(line: 426, column: 33, scope: !3555)
!3562 = !DILocation(line: 426, column: 13, scope: !3512)
!3563 = !DILocation(line: 427, column: 29, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3555, file: !110, line: 426, column: 48)
!3565 = !DILocation(line: 427, column: 35, scope: !3564)
!3566 = !DILocation(line: 427, column: 41, scope: !3564)
!3567 = !DILocation(line: 427, column: 47, scope: !3564)
!3568 = !DILocation(line: 427, column: 39, scope: !3564)
!3569 = !DILocation(line: 427, column: 23, scope: !3564)
!3570 = !DILocation(line: 427, column: 21, scope: !3564)
!3571 = !DILocation(line: 428, column: 20, scope: !3564)
!3572 = !DILocation(line: 429, column: 9, scope: !3564)
!3573 = !DILocation(line: 430, column: 22, scope: !3512)
!3574 = !DILocation(line: 430, column: 9, scope: !3512)
!3575 = !DILocation(line: 430, column: 15, scope: !3512)
!3576 = !DILocation(line: 430, column: 19, scope: !3512)
!3577 = !DILocation(line: 431, column: 31, scope: !3512)
!3578 = !DILocation(line: 431, column: 38, scope: !3512)
!3579 = !DILocation(line: 431, column: 9, scope: !3512)
!3580 = !DILocation(line: 431, column: 15, scope: !3512)
!3581 = !DILocation(line: 431, column: 28, scope: !3512)
!3582 = !DILocation(line: 432, column: 43, scope: !3512)
!3583 = !DILocation(line: 432, column: 49, scope: !3512)
!3584 = !DILocation(line: 432, column: 30, scope: !3512)
!3585 = !DILocation(line: 432, column: 9, scope: !3512)
!3586 = !DILocation(line: 432, column: 15, scope: !3512)
!3587 = !DILocation(line: 432, column: 28, scope: !3512)
!3588 = !DILocation(line: 433, column: 16, scope: !3512)
!3589 = !DILocation(line: 433, column: 9, scope: !3512)
!3590 = !DILocation(line: 434, column: 5, scope: !3505)
!3591 = !DILocation(line: 435, column: 1, scope: !3505)
!3592 = distinct !DISubprogram(name: "ZSTD_decodeSequence", scope: !3, file: !3, line: 1169, type: !3593, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3596)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!2731, !3595, !1726}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!3596 = !{!3597, !3598, !3599, !3600, !3602, !3603, !3604, !3606, !3607, !3608, !3609, !3610, !3612, !3613, !3614, !3615, !3616, !3617, !3619, !3624, !3626}
!3597 = !DILocalVariable(name: "seqState", arg: 1, scope: !3592, file: !3, line: 1169, type: !3595)
!3598 = !DILocalVariable(name: "longOffsets", arg: 2, scope: !3592, file: !3, line: 1169, type: !1726)
!3599 = !DILocalVariable(name: "seq", scope: !3592, file: !3, line: 1171, type: !2731)
!3600 = !DILocalVariable(name: "llDInfo", scope: !3592, file: !3, line: 1172, type: !3601)
!3601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!3602 = !DILocalVariable(name: "mlDInfo", scope: !3592, file: !3, line: 1173, type: !3601)
!3603 = !DILocalVariable(name: "ofDInfo", scope: !3592, file: !3, line: 1174, type: !3601)
!3604 = !DILocalVariable(name: "ofBase", scope: !3605, file: !3, line: 1177, type: !261)
!3605 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 1177, column: 5)
!3606 = !DILocalVariable(name: "llBits", scope: !3605, file: !3, line: 1178, type: !129)
!3607 = !DILocalVariable(name: "mlBits", scope: !3605, file: !3, line: 1179, type: !129)
!3608 = !DILocalVariable(name: "ofBits", scope: !3605, file: !3, line: 1180, type: !129)
!3609 = !DILocalVariable(name: "totalBits", scope: !3605, file: !3, line: 1181, type: !129)
!3610 = !DILocalVariable(name: "llNext", scope: !3605, file: !3, line: 1183, type: !3611)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!3612 = !DILocalVariable(name: "mlNext", scope: !3605, file: !3, line: 1184, type: !3611)
!3613 = !DILocalVariable(name: "ofNext", scope: !3605, file: !3, line: 1185, type: !3611)
!3614 = !DILocalVariable(name: "llnbBits", scope: !3605, file: !3, line: 1186, type: !261)
!3615 = !DILocalVariable(name: "mlnbBits", scope: !3605, file: !3, line: 1187, type: !261)
!3616 = !DILocalVariable(name: "ofnbBits", scope: !3605, file: !3, line: 1188, type: !261)
!3617 = !DILocalVariable(name: "offset", scope: !3618, file: !3, line: 1196, type: !121)
!3618 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1196, column: 9)
!3619 = !DILocalVariable(name: "extraBits", scope: !3620, file: !3, line: 1206, type: !261)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1205, column: 91)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 1205, column: 21)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 1198, column: 37)
!3623 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 1198, column: 17)
!3624 = !DILocalVariable(name: "ll0", scope: !3625, file: !3, line: 1219, type: !261)
!3625 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 1218, column: 20)
!3626 = !DILocalVariable(name: "temp", scope: !3627, file: !3, line: 1226, type: !121)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 1226, column: 21)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 1224, column: 24)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 1220, column: 21)
!3630 = !DILocation(line: 1169, column: 33, scope: !3592)
!3631 = !DILocation(line: 1169, column: 67, scope: !3592)
!3632 = !DILocation(line: 1171, column: 11, scope: !3592)
!3633 = !DILocation(line: 1172, column: 5, scope: !3592)
!3634 = !DILocation(line: 1172, column: 33, scope: !3592)
!3635 = !DILocation(line: 1172, column: 43, scope: !3592)
!3636 = !DILocation(line: 1172, column: 53, scope: !3592)
!3637 = !DILocation(line: 1172, column: 61, scope: !3592)
!3638 = !DILocation(line: 1172, column: 69, scope: !3592)
!3639 = !DILocation(line: 1172, column: 79, scope: !3592)
!3640 = !DILocation(line: 1172, column: 87, scope: !3592)
!3641 = !DILocation(line: 1172, column: 67, scope: !3592)
!3642 = !DILocation(line: 1173, column: 5, scope: !3592)
!3643 = !DILocation(line: 1173, column: 33, scope: !3592)
!3644 = !DILocation(line: 1173, column: 43, scope: !3592)
!3645 = !DILocation(line: 1173, column: 53, scope: !3592)
!3646 = !DILocation(line: 1173, column: 61, scope: !3592)
!3647 = !DILocation(line: 1173, column: 69, scope: !3592)
!3648 = !DILocation(line: 1173, column: 79, scope: !3592)
!3649 = !DILocation(line: 1173, column: 87, scope: !3592)
!3650 = !DILocation(line: 1173, column: 67, scope: !3592)
!3651 = !DILocation(line: 1174, column: 5, scope: !3592)
!3652 = !DILocation(line: 1174, column: 33, scope: !3592)
!3653 = !DILocation(line: 1174, column: 43, scope: !3592)
!3654 = !DILocation(line: 1174, column: 53, scope: !3592)
!3655 = !DILocation(line: 1174, column: 63, scope: !3592)
!3656 = !DILocation(line: 1174, column: 71, scope: !3592)
!3657 = !DILocation(line: 1174, column: 81, scope: !3592)
!3658 = !DILocation(line: 1174, column: 91, scope: !3592)
!3659 = !DILocation(line: 1174, column: 69, scope: !3592)
!3660 = !DILocation(line: 1175, column: 23, scope: !3592)
!3661 = !DILocation(line: 1175, column: 32, scope: !3592)
!3662 = !DILocation(line: 1175, column: 9, scope: !3592)
!3663 = !DILocation(line: 1175, column: 21, scope: !3592)
!3664 = !DILocation(line: 1176, column: 21, scope: !3592)
!3665 = !DILocation(line: 1176, column: 30, scope: !3592)
!3666 = !DILocation(line: 1176, column: 9, scope: !3592)
!3667 = !DILocation(line: 1176, column: 19, scope: !3592)
!3668 = !DILocation(line: 1177, column: 9, scope: !3605)
!3669 = !DILocation(line: 1177, column: 19, scope: !3605)
!3670 = !DILocation(line: 1177, column: 28, scope: !3605)
!3671 = !DILocation(line: 1177, column: 37, scope: !3605)
!3672 = !DILocation(line: 1178, column: 9, scope: !3605)
!3673 = !DILocation(line: 1178, column: 20, scope: !3605)
!3674 = !DILocation(line: 1178, column: 29, scope: !3605)
!3675 = !DILocation(line: 1178, column: 38, scope: !3605)
!3676 = !DILocation(line: 1179, column: 9, scope: !3605)
!3677 = !DILocation(line: 1179, column: 20, scope: !3605)
!3678 = !DILocation(line: 1179, column: 29, scope: !3605)
!3679 = !DILocation(line: 1179, column: 38, scope: !3605)
!3680 = !DILocation(line: 1180, column: 9, scope: !3605)
!3681 = !DILocation(line: 1180, column: 20, scope: !3605)
!3682 = !DILocation(line: 1180, column: 29, scope: !3605)
!3683 = !DILocation(line: 1180, column: 38, scope: !3605)
!3684 = !DILocation(line: 1181, column: 9, scope: !3605)
!3685 = !DILocation(line: 1181, column: 20, scope: !3605)
!3686 = !DILocation(line: 1181, column: 32, scope: !3605)
!3687 = !DILocation(line: 1181, column: 39, scope: !3605)
!3688 = !DILocation(line: 1181, column: 38, scope: !3605)
!3689 = !DILocation(line: 1181, column: 46, scope: !3605)
!3690 = !DILocation(line: 1181, column: 45, scope: !3605)
!3691 = !DILocation(line: 1183, column: 9, scope: !3605)
!3692 = !DILocation(line: 1183, column: 19, scope: !3605)
!3693 = !DILocation(line: 1183, column: 28, scope: !3605)
!3694 = !DILocation(line: 1183, column: 37, scope: !3605)
!3695 = !DILocation(line: 1184, column: 9, scope: !3605)
!3696 = !DILocation(line: 1184, column: 19, scope: !3605)
!3697 = !DILocation(line: 1184, column: 28, scope: !3605)
!3698 = !DILocation(line: 1184, column: 37, scope: !3605)
!3699 = !DILocation(line: 1185, column: 9, scope: !3605)
!3700 = !DILocation(line: 1185, column: 19, scope: !3605)
!3701 = !DILocation(line: 1185, column: 28, scope: !3605)
!3702 = !DILocation(line: 1185, column: 37, scope: !3605)
!3703 = !DILocation(line: 1186, column: 9, scope: !3605)
!3704 = !DILocation(line: 1186, column: 19, scope: !3605)
!3705 = !DILocation(line: 1186, column: 30, scope: !3605)
!3706 = !DILocation(line: 1186, column: 39, scope: !3605)
!3707 = !DILocation(line: 1187, column: 9, scope: !3605)
!3708 = !DILocation(line: 1187, column: 19, scope: !3605)
!3709 = !DILocation(line: 1187, column: 30, scope: !3605)
!3710 = !DILocation(line: 1187, column: 39, scope: !3605)
!3711 = !DILocation(line: 1188, column: 9, scope: !3605)
!3712 = !DILocation(line: 1188, column: 19, scope: !3605)
!3713 = !DILocation(line: 1188, column: 30, scope: !3605)
!3714 = !DILocation(line: 1188, column: 39, scope: !3605)
!3715 = !DILocation(line: 1196, column: 13, scope: !3618)
!3716 = !DILocation(line: 1196, column: 20, scope: !3618)
!3717 = !DILocation(line: 1198, column: 17, scope: !3623)
!3718 = !DILocation(line: 1198, column: 17, scope: !3618)
!3719 = !DILocation(line: 1205, column: 21, scope: !3621)
!3720 = !DILocation(line: 1205, column: 34, scope: !3621)
!3721 = !DILocation(line: 1205, column: 37, scope: !3621)
!3722 = !DILocation(line: 1205, column: 49, scope: !3621)
!3723 = !DILocation(line: 1205, column: 53, scope: !3621)
!3724 = !DILocation(line: 1205, column: 60, scope: !3621)
!3725 = !DILocation(line: 1205, column: 21, scope: !3622)
!3726 = !DILocation(line: 1206, column: 21, scope: !3620)
!3727 = !DILocation(line: 1206, column: 31, scope: !3620)
!3728 = !DILocation(line: 1206, column: 43, scope: !3620)
!3729 = !DILocation(line: 1206, column: 52, scope: !3620)
!3730 = !DILocation(line: 1206, column: 50, scope: !3620)
!3731 = !DILocation(line: 1207, column: 30, scope: !3620)
!3732 = !DILocation(line: 1207, column: 58, scope: !3620)
!3733 = !DILocation(line: 1207, column: 68, scope: !3620)
!3734 = !DILocation(line: 1207, column: 77, scope: !3620)
!3735 = !DILocation(line: 1207, column: 86, scope: !3620)
!3736 = !DILocation(line: 1207, column: 84, scope: !3620)
!3737 = !DILocation(line: 1207, column: 40, scope: !3620)
!3738 = !DILocation(line: 1207, column: 100, scope: !3620)
!3739 = !DILocation(line: 1207, column: 97, scope: !3620)
!3740 = !DILocation(line: 1207, column: 37, scope: !3620)
!3741 = !DILocation(line: 1207, column: 28, scope: !3620)
!3742 = !DILocation(line: 1208, column: 40, scope: !3620)
!3743 = !DILocation(line: 1208, column: 50, scope: !3620)
!3744 = !DILocation(line: 1208, column: 21, scope: !3620)
!3745 = !DILocation(line: 1209, column: 25, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 1209, column: 25)
!3747 = !DILocation(line: 1209, column: 25, scope: !3620)
!3748 = !DILocation(line: 1209, column: 64, scope: !3746)
!3749 = !DILocation(line: 1209, column: 74, scope: !3746)
!3750 = !DILocation(line: 1209, column: 83, scope: !3746)
!3751 = !DILocation(line: 1209, column: 46, scope: !3746)
!3752 = !DILocation(line: 1209, column: 43, scope: !3746)
!3753 = !DILocation(line: 1209, column: 36, scope: !3746)
!3754 = !DILocation(line: 1211, column: 17, scope: !3621)
!3755 = !DILocation(line: 1211, column: 17, scope: !3620)
!3756 = !DILocation(line: 1212, column: 30, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1211, column: 24)
!3758 = !DILocation(line: 1212, column: 57, scope: !3757)
!3759 = !DILocation(line: 1212, column: 67, scope: !3757)
!3760 = !DILocation(line: 1212, column: 76, scope: !3757)
!3761 = !DILocation(line: 1212, column: 39, scope: !3757)
!3762 = !DILocation(line: 1212, column: 37, scope: !3757)
!3763 = !DILocation(line: 1212, column: 28, scope: !3757)
!3764 = !DILocation(line: 1213, column: 25, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 1213, column: 25)
!3766 = !DILocation(line: 1213, column: 25, scope: !3757)
!3767 = !DILocation(line: 1213, column: 58, scope: !3765)
!3768 = !DILocation(line: 1213, column: 68, scope: !3765)
!3769 = !DILocation(line: 1213, column: 39, scope: !3765)
!3770 = !DILocation(line: 1215, column: 43, scope: !3622)
!3771 = !DILocation(line: 1215, column: 53, scope: !3622)
!3772 = !DILocation(line: 1215, column: 17, scope: !3622)
!3773 = !DILocation(line: 1215, column: 27, scope: !3622)
!3774 = !DILocation(line: 1215, column: 41, scope: !3622)
!3775 = !DILocation(line: 1216, column: 43, scope: !3622)
!3776 = !DILocation(line: 1216, column: 53, scope: !3622)
!3777 = !DILocation(line: 1216, column: 17, scope: !3622)
!3778 = !DILocation(line: 1216, column: 27, scope: !3622)
!3779 = !DILocation(line: 1216, column: 41, scope: !3622)
!3780 = !DILocation(line: 1217, column: 43, scope: !3622)
!3781 = !DILocation(line: 1217, column: 17, scope: !3622)
!3782 = !DILocation(line: 1217, column: 27, scope: !3622)
!3783 = !DILocation(line: 1217, column: 41, scope: !3622)
!3784 = !DILocation(line: 1218, column: 13, scope: !3622)
!3785 = !DILocation(line: 1219, column: 17, scope: !3625)
!3786 = !DILocation(line: 1219, column: 27, scope: !3625)
!3787 = !DILocation(line: 1219, column: 34, scope: !3625)
!3788 = !DILocation(line: 1219, column: 43, scope: !3625)
!3789 = !DILocation(line: 1219, column: 53, scope: !3625)
!3790 = !DILocation(line: 1220, column: 21, scope: !3629)
!3791 = !DILocation(line: 1220, column: 21, scope: !3625)
!3792 = !DILocation(line: 1221, column: 30, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 1220, column: 44)
!3794 = !DILocation(line: 1221, column: 40, scope: !3793)
!3795 = !DILocation(line: 1221, column: 51, scope: !3793)
!3796 = !DILocation(line: 1221, column: 28, scope: !3793)
!3797 = !DILocation(line: 1222, column: 47, scope: !3793)
!3798 = !DILocation(line: 1222, column: 57, scope: !3793)
!3799 = !DILocation(line: 1222, column: 69, scope: !3793)
!3800 = !DILocation(line: 1222, column: 68, scope: !3793)
!3801 = !DILocation(line: 1222, column: 21, scope: !3793)
!3802 = !DILocation(line: 1222, column: 31, scope: !3793)
!3803 = !DILocation(line: 1222, column: 45, scope: !3793)
!3804 = !DILocation(line: 1223, column: 47, scope: !3793)
!3805 = !DILocation(line: 1223, column: 21, scope: !3793)
!3806 = !DILocation(line: 1223, column: 31, scope: !3793)
!3807 = !DILocation(line: 1223, column: 45, scope: !3793)
!3808 = !DILocation(line: 1224, column: 17, scope: !3793)
!3809 = !DILocation(line: 1225, column: 30, scope: !3628)
!3810 = !DILocation(line: 1225, column: 39, scope: !3628)
!3811 = !DILocation(line: 1225, column: 37, scope: !3628)
!3812 = !DILocation(line: 1225, column: 63, scope: !3628)
!3813 = !DILocation(line: 1225, column: 73, scope: !3628)
!3814 = !DILocation(line: 1225, column: 45, scope: !3628)
!3815 = !DILocation(line: 1225, column: 43, scope: !3628)
!3816 = !DILocation(line: 1225, column: 28, scope: !3628)
!3817 = !DILocation(line: 1226, column: 25, scope: !3627)
!3818 = !DILocation(line: 1226, column: 32, scope: !3627)
!3819 = !DILocation(line: 1226, column: 40, scope: !3627)
!3820 = !DILocation(line: 1226, column: 46, scope: !3627)
!3821 = !DILocation(line: 1226, column: 39, scope: !3627)
!3822 = !DILocation(line: 1226, column: 53, scope: !3627)
!3823 = !DILocation(line: 1226, column: 63, scope: !3627)
!3824 = !DILocation(line: 1226, column: 77, scope: !3627)
!3825 = !DILocation(line: 1226, column: 83, scope: !3627)
!3826 = !DILocation(line: 1226, column: 93, scope: !3627)
!3827 = !DILocation(line: 1226, column: 104, scope: !3627)
!3828 = !DILocation(line: 1227, column: 34, scope: !3627)
!3829 = !DILocation(line: 1227, column: 33, scope: !3627)
!3830 = !DILocation(line: 1227, column: 30, scope: !3627)
!3831 = !DILocation(line: 1228, column: 29, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1228, column: 29)
!3833 = !DILocation(line: 1228, column: 36, scope: !3832)
!3834 = !DILocation(line: 1228, column: 29, scope: !3627)
!3835 = !DILocation(line: 1228, column: 68, scope: !3832)
!3836 = !DILocation(line: 1228, column: 78, scope: !3832)
!3837 = !DILocation(line: 1228, column: 42, scope: !3832)
!3838 = !DILocation(line: 1228, column: 52, scope: !3832)
!3839 = !DILocation(line: 1228, column: 66, scope: !3832)
!3840 = !DILocation(line: 1229, column: 51, scope: !3627)
!3841 = !DILocation(line: 1229, column: 61, scope: !3627)
!3842 = !DILocation(line: 1229, column: 25, scope: !3627)
!3843 = !DILocation(line: 1229, column: 35, scope: !3627)
!3844 = !DILocation(line: 1229, column: 49, scope: !3627)
!3845 = !DILocation(line: 1230, column: 60, scope: !3627)
!3846 = !DILocation(line: 1230, column: 58, scope: !3627)
!3847 = !DILocation(line: 1230, column: 25, scope: !3627)
!3848 = !DILocation(line: 1230, column: 35, scope: !3627)
!3849 = !DILocation(line: 1230, column: 49, scope: !3627)
!3850 = !DILocation(line: 1231, column: 13, scope: !3628)
!3851 = !DILocation(line: 1231, column: 21, scope: !3623)
!3852 = !DILocation(line: 1232, column: 26, scope: !3618)
!3853 = !DILocation(line: 1232, column: 17, scope: !3618)
!3854 = !DILocation(line: 1232, column: 24, scope: !3618)
!3855 = !DILocation(line: 1233, column: 9, scope: !3605)
!3856 = !DILocation(line: 1236, column: 13, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1236, column: 13)
!3858 = !DILocation(line: 1236, column: 13, scope: !3605)
!3859 = !DILocation(line: 1240, column: 50, scope: !3857)
!3860 = !DILocation(line: 1240, column: 60, scope: !3857)
!3861 = !DILocation(line: 1240, column: 69, scope: !3857)
!3862 = !DILocation(line: 1240, column: 32, scope: !3857)
!3863 = !DILocation(line: 1240, column: 17, scope: !3857)
!3864 = !DILocation(line: 1240, column: 29, scope: !3857)
!3865 = !DILocation(line: 1240, column: 13, scope: !3857)
!3866 = !DILocation(line: 1242, column: 13, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1242, column: 13)
!3868 = !DILocation(line: 1242, column: 26, scope: !3867)
!3869 = !DILocation(line: 1242, column: 30, scope: !3867)
!3870 = !DILocation(line: 1242, column: 37, scope: !3867)
!3871 = !DILocation(line: 1242, column: 36, scope: !3867)
!3872 = !DILocation(line: 1242, column: 44, scope: !3867)
!3873 = !DILocation(line: 1242, column: 13, scope: !3605)
!3874 = !DILocation(line: 1243, column: 32, scope: !3867)
!3875 = !DILocation(line: 1243, column: 42, scope: !3867)
!3876 = !DILocation(line: 1243, column: 13, scope: !3867)
!3877 = !DILocation(line: 1244, column: 13, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1244, column: 13)
!3879 = !DILocation(line: 1244, column: 26, scope: !3878)
!3880 = !DILocation(line: 1244, column: 29, scope: !3878)
!3881 = !DILocation(line: 1244, column: 13, scope: !3605)
!3882 = !DILocation(line: 1245, column: 32, scope: !3878)
!3883 = !DILocation(line: 1245, column: 42, scope: !3878)
!3884 = !DILocation(line: 1245, column: 13, scope: !3878)
!3885 = !DILocation(line: 1250, column: 13, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1250, column: 13)
!3887 = !DILocation(line: 1250, column: 13, scope: !3605)
!3888 = !DILocation(line: 1254, column: 48, scope: !3886)
!3889 = !DILocation(line: 1254, column: 58, scope: !3886)
!3890 = !DILocation(line: 1254, column: 67, scope: !3886)
!3891 = !DILocation(line: 1254, column: 30, scope: !3886)
!3892 = !DILocation(line: 1254, column: 17, scope: !3886)
!3893 = !DILocation(line: 1254, column: 27, scope: !3886)
!3894 = !DILocation(line: 1254, column: 13, scope: !3886)
!3895 = !DILocation(line: 1256, column: 13, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1256, column: 13)
!3897 = !DILocation(line: 1256, column: 13, scope: !3605)
!3898 = !DILocation(line: 1257, column: 32, scope: !3896)
!3899 = !DILocation(line: 1257, column: 42, scope: !3896)
!3900 = !DILocation(line: 1257, column: 13, scope: !3896)
!3901 = !DILocation(line: 1262, column: 39, scope: !3605)
!3902 = !DILocation(line: 1262, column: 49, scope: !3605)
!3903 = !DILocation(line: 1262, column: 59, scope: !3605)
!3904 = !DILocation(line: 1262, column: 69, scope: !3605)
!3905 = !DILocation(line: 1262, column: 78, scope: !3605)
!3906 = !DILocation(line: 1262, column: 86, scope: !3605)
!3907 = !DILocation(line: 1262, column: 9, scope: !3605)
!3908 = !DILocation(line: 1263, column: 39, scope: !3605)
!3909 = !DILocation(line: 1263, column: 49, scope: !3605)
!3910 = !DILocation(line: 1263, column: 59, scope: !3605)
!3911 = !DILocation(line: 1263, column: 69, scope: !3605)
!3912 = !DILocation(line: 1263, column: 78, scope: !3605)
!3913 = !DILocation(line: 1263, column: 86, scope: !3605)
!3914 = !DILocation(line: 1263, column: 9, scope: !3605)
!3915 = !DILocation(line: 1264, column: 13, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1264, column: 13)
!3917 = !DILocation(line: 1264, column: 13, scope: !3605)
!3918 = !DILocation(line: 1264, column: 46, scope: !3916)
!3919 = !DILocation(line: 1264, column: 56, scope: !3916)
!3920 = !DILocation(line: 1264, column: 27, scope: !3916)
!3921 = !DILocation(line: 1265, column: 39, scope: !3605)
!3922 = !DILocation(line: 1265, column: 49, scope: !3605)
!3923 = !DILocation(line: 1265, column: 61, scope: !3605)
!3924 = !DILocation(line: 1265, column: 71, scope: !3605)
!3925 = !DILocation(line: 1265, column: 80, scope: !3605)
!3926 = !DILocation(line: 1265, column: 88, scope: !3605)
!3927 = !DILocation(line: 1265, column: 9, scope: !3605)
!3928 = !DILocation(line: 1266, column: 5, scope: !3592)
!3929 = !DILocation(line: 1269, column: 1, scope: !3592)
!3930 = distinct !DISubprogram(name: "ZSTD_prefetchMatch", scope: !3, file: !3, line: 1650, type: !3931, scopeLine: 1652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!121, !121, !2769, !566, !566}
!3933 = !{!3934, !3935, !3936, !3937, !3938, !3940}
!3934 = !DILocalVariable(name: "prefetchPos", arg: 1, scope: !3930, file: !3, line: 1650, type: !121)
!3935 = !DILocalVariable(name: "sequence", arg: 2, scope: !3930, file: !3, line: 1650, type: !2769)
!3936 = !DILocalVariable(name: "prefixStart", arg: 3, scope: !3930, file: !3, line: 1651, type: !566)
!3937 = !DILocalVariable(name: "dictEnd", arg: 4, scope: !3930, file: !3, line: 1651, type: !566)
!3938 = !DILocalVariable(name: "matchBase", scope: !3939, file: !3, line: 1654, type: !566)
!3939 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 1654, column: 5)
!3940 = !DILocalVariable(name: "match", scope: !3939, file: !3, line: 1655, type: !566)
!3941 = !DILocation(line: 1650, column: 27, scope: !3930)
!3942 = !DILocation(line: 1650, column: 52, scope: !3930)
!3943 = !DILocation(line: 1651, column: 38, scope: !3930)
!3944 = !DILocation(line: 1651, column: 69, scope: !3930)
!3945 = !DILocation(line: 1653, column: 29, scope: !3930)
!3946 = !DILocation(line: 1653, column: 17, scope: !3930)
!3947 = !DILocation(line: 1654, column: 9, scope: !3939)
!3948 = !DILocation(line: 1654, column: 27, scope: !3939)
!3949 = !DILocation(line: 1654, column: 49, scope: !3939)
!3950 = !DILocation(line: 1654, column: 58, scope: !3939)
!3951 = !DILocation(line: 1654, column: 56, scope: !3939)
!3952 = !DILocation(line: 1654, column: 39, scope: !3939)
!3953 = !DILocation(line: 1654, column: 73, scope: !3939)
!3954 = !DILocation(line: 1654, column: 83, scope: !3939)
!3955 = !DILocation(line: 1655, column: 9, scope: !3939)
!3956 = !DILocation(line: 1655, column: 27, scope: !3939)
!3957 = !DILocation(line: 1655, column: 35, scope: !3939)
!3958 = !DILocation(line: 1655, column: 47, scope: !3939)
!3959 = !DILocation(line: 1655, column: 45, scope: !3939)
!3960 = !DILocation(line: 1655, column: 70, scope: !3939)
!3961 = !DILocation(line: 1655, column: 59, scope: !3939)
!3962 = !DILocation(line: 1657, column: 9, scope: !3939)
!3963 = !DILocation(line: 1657, column: 29, scope: !3939)
!3964 = !DILocation(line: 1658, column: 5, scope: !3930)
!3965 = !DILocation(line: 1659, column: 12, scope: !3930)
!3966 = !DILocation(line: 1659, column: 35, scope: !3930)
!3967 = !DILocation(line: 1659, column: 24, scope: !3930)
!3968 = !DILocation(line: 1659, column: 5, scope: !3930)
!3969 = distinct !DISubprogram(name: "ZSTD_safecopyDstBeforeSrc", scope: !3, file: !3, line: 832, type: !3970, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3972)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{null, !166, !128, !230}
!3972 = !{!3973, !3974, !3975, !3976, !3978}
!3973 = !DILocalVariable(name: "op", arg: 1, scope: !3969, file: !3, line: 832, type: !166)
!3974 = !DILocalVariable(name: "ip", arg: 2, scope: !3969, file: !3, line: 832, type: !128)
!3975 = !DILocalVariable(name: "length", arg: 3, scope: !3969, file: !3, line: 832, type: !230)
!3976 = !DILocalVariable(name: "diff", scope: !3969, file: !3, line: 833, type: !3977)
!3977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!3978 = !DILocalVariable(name: "oend", scope: !3969, file: !3, line: 834, type: !2719)
!3979 = !DILocation(line: 832, column: 45, scope: !3969)
!3980 = !DILocation(line: 832, column: 61, scope: !3969)
!3981 = !DILocation(line: 832, column: 75, scope: !3969)
!3982 = !DILocation(line: 833, column: 5, scope: !3969)
!3983 = !DILocation(line: 833, column: 21, scope: !3969)
!3984 = !DILocation(line: 833, column: 28, scope: !3969)
!3985 = !DILocation(line: 833, column: 33, scope: !3969)
!3986 = !DILocation(line: 833, column: 31, scope: !3969)
!3987 = !DILocation(line: 834, column: 5, scope: !3969)
!3988 = !DILocation(line: 834, column: 17, scope: !3969)
!3989 = !DILocation(line: 834, column: 24, scope: !3969)
!3990 = !DILocation(line: 834, column: 29, scope: !3969)
!3991 = !DILocation(line: 834, column: 27, scope: !3969)
!3992 = !DILocation(line: 836, column: 9, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 836, column: 9)
!3994 = !DILocation(line: 836, column: 16, scope: !3993)
!3995 = !DILocation(line: 836, column: 20, scope: !3993)
!3996 = !DILocation(line: 836, column: 23, scope: !3993)
!3997 = !DILocation(line: 836, column: 28, scope: !3993)
!3998 = !DILocation(line: 836, column: 9, scope: !3969)
!3999 = !DILocation(line: 838, column: 9, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 836, column: 34)
!4001 = !DILocation(line: 838, column: 16, scope: !4000)
!4002 = !DILocation(line: 838, column: 21, scope: !4000)
!4003 = !DILocation(line: 838, column: 19, scope: !4000)
!4004 = !DILocation(line: 838, column: 38, scope: !4000)
!4005 = !DILocation(line: 838, column: 35, scope: !4000)
!4006 = !DILocation(line: 838, column: 30, scope: !4000)
!4007 = !DILocation(line: 838, column: 33, scope: !4000)
!4008 = distinct !{!4008, !3999, !4004, !731, !732}
!4009 = !DILocation(line: 839, column: 9, scope: !4000)
!4010 = !DILocation(line: 842, column: 9, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 842, column: 9)
!4012 = !DILocation(line: 842, column: 15, scope: !4011)
!4013 = !DILocation(line: 842, column: 20, scope: !4011)
!4014 = !DILocation(line: 842, column: 12, scope: !4011)
!4015 = !DILocation(line: 842, column: 42, scope: !4011)
!4016 = !DILocation(line: 842, column: 45, scope: !4011)
!4017 = !DILocation(line: 842, column: 50, scope: !4011)
!4018 = !DILocation(line: 842, column: 9, scope: !3969)
!4019 = !DILocation(line: 843, column: 23, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 842, column: 70)
!4021 = !DILocation(line: 843, column: 27, scope: !4020)
!4022 = !DILocation(line: 843, column: 31, scope: !4020)
!4023 = !DILocation(line: 843, column: 36, scope: !4020)
!4024 = !DILocation(line: 843, column: 60, scope: !4020)
!4025 = !DILocation(line: 843, column: 58, scope: !4020)
!4026 = !DILocation(line: 843, column: 9, scope: !4020)
!4027 = !DILocation(line: 844, column: 15, scope: !4020)
!4028 = !DILocation(line: 844, column: 20, scope: !4020)
!4029 = !DILocation(line: 844, column: 44, scope: !4020)
!4030 = !DILocation(line: 844, column: 42, scope: !4020)
!4031 = !DILocation(line: 844, column: 12, scope: !4020)
!4032 = !DILocation(line: 845, column: 15, scope: !4020)
!4033 = !DILocation(line: 845, column: 20, scope: !4020)
!4034 = !DILocation(line: 845, column: 44, scope: !4020)
!4035 = !DILocation(line: 845, column: 42, scope: !4020)
!4036 = !DILocation(line: 845, column: 12, scope: !4020)
!4037 = !DILocation(line: 846, column: 5, scope: !4020)
!4038 = !DILocation(line: 849, column: 5, scope: !3969)
!4039 = !DILocation(line: 849, column: 12, scope: !3969)
!4040 = !DILocation(line: 849, column: 17, scope: !3969)
!4041 = !DILocation(line: 849, column: 15, scope: !3969)
!4042 = !DILocation(line: 849, column: 34, scope: !3969)
!4043 = !DILocation(line: 849, column: 31, scope: !3969)
!4044 = !DILocation(line: 849, column: 26, scope: !3969)
!4045 = !DILocation(line: 849, column: 29, scope: !3969)
!4046 = distinct !{!4046, !4038, !4042, !731, !732}
!4047 = !DILocation(line: 850, column: 1, scope: !3969)
!4048 = distinct !DISubprogram(name: "ZSTD_execSequence", scope: !3, file: !3, line: 953, type: !4049, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!121, !166, !2719, !2731, !288, !566, !566, !566, !566}
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066}
!4052 = !DILocalVariable(name: "op", arg: 1, scope: !4048, file: !3, line: 953, type: !166)
!4053 = !DILocalVariable(name: "oend", arg: 2, scope: !4048, file: !3, line: 954, type: !2719)
!4054 = !DILocalVariable(name: "sequence", arg: 3, scope: !4048, file: !3, line: 954, type: !2731)
!4055 = !DILocalVariable(name: "litPtr", arg: 4, scope: !4048, file: !3, line: 955, type: !288)
!4056 = !DILocalVariable(name: "litLimit", arg: 5, scope: !4048, file: !3, line: 955, type: !566)
!4057 = !DILocalVariable(name: "prefixStart", arg: 6, scope: !4048, file: !3, line: 956, type: !566)
!4058 = !DILocalVariable(name: "virtualStart", arg: 7, scope: !4048, file: !3, line: 956, type: !566)
!4059 = !DILocalVariable(name: "dictEnd", arg: 8, scope: !4048, file: !3, line: 956, type: !566)
!4060 = !DILocalVariable(name: "oLitEnd", scope: !4048, file: !3, line: 958, type: !2719)
!4061 = !DILocalVariable(name: "sequenceLength", scope: !4048, file: !3, line: 959, type: !237)
!4062 = !DILocalVariable(name: "oMatchEnd", scope: !4048, file: !3, line: 960, type: !2719)
!4063 = !DILocalVariable(name: "oend_w", scope: !4048, file: !3, line: 961, type: !2719)
!4064 = !DILocalVariable(name: "iLitEnd", scope: !4048, file: !3, line: 962, type: !566)
!4065 = !DILocalVariable(name: "match", scope: !4048, file: !3, line: 963, type: !128)
!4066 = !DILocalVariable(name: "length1", scope: !4067, file: !3, line: 1008, type: !237)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 1008, column: 9)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 999, column: 60)
!4069 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 999, column: 9)
!4070 = !DILocation(line: 953, column: 32, scope: !4048)
!4071 = !DILocation(line: 954, column: 17, scope: !4048)
!4072 = !DILocation(line: 954, column: 29, scope: !4048)
!4073 = !DILocation(line: 955, column: 18, scope: !4048)
!4074 = !DILocation(line: 955, column: 44, scope: !4048)
!4075 = !DILocation(line: 956, column: 23, scope: !4048)
!4076 = !DILocation(line: 956, column: 54, scope: !4048)
!4077 = !DILocation(line: 956, column: 86, scope: !4048)
!4078 = !DILocation(line: 958, column: 5, scope: !4048)
!4079 = !DILocation(line: 958, column: 17, scope: !4048)
!4080 = !DILocation(line: 958, column: 27, scope: !4048)
!4081 = !DILocation(line: 958, column: 41, scope: !4048)
!4082 = !DILocation(line: 958, column: 30, scope: !4048)
!4083 = !DILocation(line: 959, column: 5, scope: !4048)
!4084 = !DILocation(line: 959, column: 18, scope: !4048)
!4085 = !DILocation(line: 959, column: 44, scope: !4048)
!4086 = !DILocation(line: 959, column: 65, scope: !4048)
!4087 = !DILocation(line: 959, column: 54, scope: !4048)
!4088 = !DILocation(line: 960, column: 5, scope: !4048)
!4089 = !DILocation(line: 960, column: 17, scope: !4048)
!4090 = !DILocation(line: 960, column: 29, scope: !4048)
!4091 = !DILocation(line: 960, column: 34, scope: !4048)
!4092 = !DILocation(line: 960, column: 32, scope: !4048)
!4093 = !DILocation(line: 961, column: 5, scope: !4048)
!4094 = !DILocation(line: 961, column: 17, scope: !4048)
!4095 = !DILocation(line: 961, column: 26, scope: !4048)
!4096 = !DILocation(line: 961, column: 31, scope: !4048)
!4097 = !DILocation(line: 962, column: 5, scope: !4048)
!4098 = !DILocation(line: 962, column: 23, scope: !4048)
!4099 = !DILocation(line: 962, column: 34, scope: !4048)
!4100 = !DILocation(line: 962, column: 33, scope: !4048)
!4101 = !DILocation(line: 962, column: 52, scope: !4048)
!4102 = !DILocation(line: 962, column: 41, scope: !4048)
!4103 = !DILocation(line: 963, column: 5, scope: !4048)
!4104 = !DILocation(line: 963, column: 17, scope: !4048)
!4105 = !DILocation(line: 963, column: 25, scope: !4048)
!4106 = !DILocation(line: 963, column: 44, scope: !4048)
!4107 = !DILocation(line: 963, column: 33, scope: !4048)
!4108 = !DILocation(line: 972, column: 9, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 972, column: 9)
!4110 = !DILocation(line: 0, scope: !4109)
!4111 = !DILocation(line: 972, column: 9, scope: !4048)
!4112 = !DILocation(line: 976, column: 37, scope: !4109)
!4113 = !DILocation(line: 976, column: 41, scope: !4109)
!4114 = !DILocation(line: 976, column: 57, scope: !4109)
!4115 = !DILocation(line: 976, column: 65, scope: !4109)
!4116 = !DILocation(line: 976, column: 75, scope: !4109)
!4117 = !DILocation(line: 976, column: 88, scope: !4109)
!4118 = !DILocation(line: 976, column: 102, scope: !4109)
!4119 = !DILocation(line: 976, column: 16, scope: !4109)
!4120 = !DILocation(line: 976, column: 9, scope: !4109)
!4121 = !DILocation(line: 991, column: 17, scope: !4048)
!4122 = !DILocation(line: 991, column: 23, scope: !4048)
!4123 = !DILocation(line: 991, column: 22, scope: !4048)
!4124 = !DILocation(line: 991, column: 5, scope: !4048)
!4125 = !DILocation(line: 992, column: 9, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 992, column: 9)
!4127 = !DILocation(line: 992, column: 9, scope: !4048)
!4128 = !DILocation(line: 993, column: 23, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 992, column: 44)
!4130 = !DILocation(line: 993, column: 26, scope: !4129)
!4131 = !DILocation(line: 993, column: 34, scope: !4129)
!4132 = !DILocation(line: 993, column: 33, scope: !4129)
!4133 = !DILocation(line: 993, column: 42, scope: !4129)
!4134 = !DILocation(line: 993, column: 57, scope: !4129)
!4135 = !DILocation(line: 993, column: 67, scope: !4129)
!4136 = !DILocation(line: 993, column: 9, scope: !4129)
!4137 = !DILocation(line: 994, column: 5, scope: !4129)
!4138 = !DILocation(line: 995, column: 10, scope: !4048)
!4139 = !DILocation(line: 995, column: 8, scope: !4048)
!4140 = !DILocation(line: 996, column: 15, scope: !4048)
!4141 = !DILocation(line: 996, column: 6, scope: !4048)
!4142 = !DILocation(line: 996, column: 13, scope: !4048)
!4143 = !DILocation(line: 999, column: 18, scope: !4069)
!4144 = !DILocation(line: 999, column: 36, scope: !4069)
!4145 = !DILocation(line: 999, column: 46, scope: !4069)
!4146 = !DILocation(line: 999, column: 44, scope: !4069)
!4147 = !DILocation(line: 999, column: 25, scope: !4069)
!4148 = !DILocation(line: 999, column: 9, scope: !4048)
!4149 = !DILocation(line: 1001, column: 9, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 1001, column: 9)
!4151 = !DILocation(line: 1001, column: 9, scope: !4068)
!4152 = !DILocation(line: 1001, column: 9, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 1001, column: 9)
!4154 = !DILocation(line: 1002, column: 17, scope: !4068)
!4155 = !DILocation(line: 1002, column: 28, scope: !4068)
!4156 = !DILocation(line: 1002, column: 36, scope: !4068)
!4157 = !DILocation(line: 1002, column: 34, scope: !4068)
!4158 = !DILocation(line: 1002, column: 25, scope: !4068)
!4159 = !DILocation(line: 1002, column: 15, scope: !4068)
!4160 = !DILocation(line: 1003, column: 13, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 1003, column: 13)
!4162 = !DILocation(line: 1003, column: 30, scope: !4161)
!4163 = !DILocation(line: 1003, column: 19, scope: !4161)
!4164 = !DILocation(line: 1003, column: 45, scope: !4161)
!4165 = !DILocation(line: 1003, column: 42, scope: !4161)
!4166 = !DILocation(line: 1003, column: 13, scope: !4068)
!4167 = !DILocation(line: 1004, column: 13, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 1003, column: 54)
!4169 = !DILocation(line: 1005, column: 20, scope: !4168)
!4170 = !DILocation(line: 1005, column: 13, scope: !4168)
!4171 = !DILocation(line: 1008, column: 13, scope: !4067)
!4172 = !DILocation(line: 1008, column: 26, scope: !4067)
!4173 = !DILocation(line: 1008, column: 36, scope: !4067)
!4174 = !DILocation(line: 1008, column: 46, scope: !4067)
!4175 = !DILocation(line: 1008, column: 44, scope: !4067)
!4176 = !DILocation(line: 1009, column: 9, scope: !4067)
!4177 = !DILocation(line: 1010, column: 14, scope: !4067)
!4178 = !DILocation(line: 1010, column: 24, scope: !4067)
!4179 = !DILocation(line: 1010, column: 22, scope: !4067)
!4180 = !DILocation(line: 1010, column: 12, scope: !4067)
!4181 = !DILocation(line: 1011, column: 33, scope: !4067)
!4182 = !DILocation(line: 1011, column: 18, scope: !4067)
!4183 = !DILocation(line: 1011, column: 30, scope: !4067)
!4184 = !DILocation(line: 1012, column: 17, scope: !4067)
!4185 = !DILocation(line: 1012, column: 15, scope: !4067)
!4186 = !DILocation(line: 1013, column: 9, scope: !4068)
!4187 = !DILocation(line: 1014, column: 5, scope: !4068)
!4188 = !DILocation(line: 1024, column: 9, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 1024, column: 9)
!4190 = !DILocation(line: 1024, column: 9, scope: !4048)
!4191 = !DILocation(line: 1029, column: 23, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1024, column: 53)
!4193 = !DILocation(line: 1029, column: 27, scope: !4192)
!4194 = !DILocation(line: 1029, column: 54, scope: !4192)
!4195 = !DILocation(line: 1029, column: 9, scope: !4192)
!4196 = !DILocation(line: 1030, column: 16, scope: !4192)
!4197 = !DILocation(line: 1030, column: 9, scope: !4192)
!4198 = !DILocation(line: 1035, column: 45, scope: !4048)
!4199 = !DILocation(line: 1035, column: 5, scope: !4048)
!4200 = !DILocation(line: 1038, column: 18, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 1038, column: 9)
!4202 = !DILocation(line: 1038, column: 30, scope: !4201)
!4203 = !DILocation(line: 1038, column: 9, scope: !4048)
!4204 = !DILocation(line: 1040, column: 23, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 1038, column: 35)
!4206 = !DILocation(line: 1040, column: 27, scope: !4205)
!4207 = !DILocation(line: 1040, column: 54, scope: !4205)
!4208 = !DILocation(line: 1040, column: 66, scope: !4205)
!4209 = !DILocation(line: 1040, column: 9, scope: !4205)
!4210 = !DILocation(line: 1041, column: 5, scope: !4205)
!4211 = !DILocation(line: 1042, column: 12, scope: !4048)
!4212 = !DILocation(line: 1042, column: 5, scope: !4048)
!4213 = !DILocation(line: 1043, column: 1, scope: !4048)
!4214 = distinct !DISubprogram(name: "ZSTD_execSequenceSplitLitBuffer", scope: !3, file: !3, line: 1046, type: !4215, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!121, !166, !2719, !566, !2731, !288, !566, !566, !566, !566}
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232}
!4218 = !DILocalVariable(name: "op", arg: 1, scope: !4214, file: !3, line: 1046, type: !166)
!4219 = !DILocalVariable(name: "oend", arg: 2, scope: !4214, file: !3, line: 1047, type: !2719)
!4220 = !DILocalVariable(name: "oend_w", arg: 3, scope: !4214, file: !3, line: 1047, type: !566)
!4221 = !DILocalVariable(name: "sequence", arg: 4, scope: !4214, file: !3, line: 1047, type: !2731)
!4222 = !DILocalVariable(name: "litPtr", arg: 5, scope: !4214, file: !3, line: 1048, type: !288)
!4223 = !DILocalVariable(name: "litLimit", arg: 6, scope: !4214, file: !3, line: 1048, type: !566)
!4224 = !DILocalVariable(name: "prefixStart", arg: 7, scope: !4214, file: !3, line: 1049, type: !566)
!4225 = !DILocalVariable(name: "virtualStart", arg: 8, scope: !4214, file: !3, line: 1049, type: !566)
!4226 = !DILocalVariable(name: "dictEnd", arg: 9, scope: !4214, file: !3, line: 1049, type: !566)
!4227 = !DILocalVariable(name: "oLitEnd", scope: !4214, file: !3, line: 1051, type: !2719)
!4228 = !DILocalVariable(name: "sequenceLength", scope: !4214, file: !3, line: 1052, type: !237)
!4229 = !DILocalVariable(name: "oMatchEnd", scope: !4214, file: !3, line: 1053, type: !2719)
!4230 = !DILocalVariable(name: "iLitEnd", scope: !4214, file: !3, line: 1054, type: !566)
!4231 = !DILocalVariable(name: "match", scope: !4214, file: !3, line: 1055, type: !128)
!4232 = !DILocalVariable(name: "length1", scope: !4233, file: !3, line: 1100, type: !237)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 1100, column: 9)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 1091, column: 60)
!4235 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 1091, column: 9)
!4236 = !DILocation(line: 1046, column: 46, scope: !4214)
!4237 = !DILocation(line: 1047, column: 17, scope: !4214)
!4238 = !DILocation(line: 1047, column: 41, scope: !4214)
!4239 = !DILocation(line: 1047, column: 55, scope: !4214)
!4240 = !DILocation(line: 1048, column: 18, scope: !4214)
!4241 = !DILocation(line: 1048, column: 44, scope: !4214)
!4242 = !DILocation(line: 1049, column: 23, scope: !4214)
!4243 = !DILocation(line: 1049, column: 54, scope: !4214)
!4244 = !DILocation(line: 1049, column: 86, scope: !4214)
!4245 = !DILocation(line: 1051, column: 5, scope: !4214)
!4246 = !DILocation(line: 1051, column: 17, scope: !4214)
!4247 = !DILocation(line: 1051, column: 27, scope: !4214)
!4248 = !DILocation(line: 1051, column: 41, scope: !4214)
!4249 = !DILocation(line: 1051, column: 30, scope: !4214)
!4250 = !DILocation(line: 1052, column: 5, scope: !4214)
!4251 = !DILocation(line: 1052, column: 18, scope: !4214)
!4252 = !DILocation(line: 1052, column: 44, scope: !4214)
!4253 = !DILocation(line: 1052, column: 65, scope: !4214)
!4254 = !DILocation(line: 1052, column: 54, scope: !4214)
!4255 = !DILocation(line: 1053, column: 5, scope: !4214)
!4256 = !DILocation(line: 1053, column: 17, scope: !4214)
!4257 = !DILocation(line: 1053, column: 29, scope: !4214)
!4258 = !DILocation(line: 1053, column: 34, scope: !4214)
!4259 = !DILocation(line: 1053, column: 32, scope: !4214)
!4260 = !DILocation(line: 1054, column: 5, scope: !4214)
!4261 = !DILocation(line: 1054, column: 23, scope: !4214)
!4262 = !DILocation(line: 1054, column: 34, scope: !4214)
!4263 = !DILocation(line: 1054, column: 33, scope: !4214)
!4264 = !DILocation(line: 1054, column: 52, scope: !4214)
!4265 = !DILocation(line: 1054, column: 41, scope: !4214)
!4266 = !DILocation(line: 1055, column: 5, scope: !4214)
!4267 = !DILocation(line: 1055, column: 17, scope: !4214)
!4268 = !DILocation(line: 1055, column: 25, scope: !4214)
!4269 = !DILocation(line: 1055, column: 44, scope: !4214)
!4270 = !DILocation(line: 1055, column: 33, scope: !4214)
!4271 = !DILocation(line: 1064, column: 9, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 1064, column: 9)
!4273 = !DILocation(line: 0, scope: !4272)
!4274 = !DILocation(line: 1064, column: 9, scope: !4214)
!4275 = !DILocation(line: 1068, column: 51, scope: !4272)
!4276 = !DILocation(line: 1068, column: 55, scope: !4272)
!4277 = !DILocation(line: 1068, column: 61, scope: !4272)
!4278 = !DILocation(line: 1068, column: 79, scope: !4272)
!4279 = !DILocation(line: 1068, column: 87, scope: !4272)
!4280 = !DILocation(line: 1068, column: 97, scope: !4272)
!4281 = !DILocation(line: 1068, column: 110, scope: !4272)
!4282 = !DILocation(line: 1068, column: 124, scope: !4272)
!4283 = !DILocation(line: 1068, column: 16, scope: !4272)
!4284 = !DILocation(line: 1068, column: 9, scope: !4272)
!4285 = !DILocation(line: 1083, column: 17, scope: !4214)
!4286 = !DILocation(line: 1083, column: 23, scope: !4214)
!4287 = !DILocation(line: 1083, column: 22, scope: !4214)
!4288 = !DILocation(line: 1083, column: 5, scope: !4214)
!4289 = !DILocation(line: 1084, column: 9, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 1084, column: 9)
!4291 = !DILocation(line: 1084, column: 9, scope: !4214)
!4292 = !DILocation(line: 1085, column: 23, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 1084, column: 44)
!4294 = !DILocation(line: 1085, column: 25, scope: !4293)
!4295 = !DILocation(line: 1085, column: 32, scope: !4293)
!4296 = !DILocation(line: 1085, column: 31, scope: !4293)
!4297 = !DILocation(line: 1085, column: 39, scope: !4293)
!4298 = !DILocation(line: 1085, column: 53, scope: !4293)
!4299 = !DILocation(line: 1085, column: 62, scope: !4293)
!4300 = !DILocation(line: 1085, column: 9, scope: !4293)
!4301 = !DILocation(line: 1086, column: 5, scope: !4293)
!4302 = !DILocation(line: 1087, column: 10, scope: !4214)
!4303 = !DILocation(line: 1087, column: 8, scope: !4214)
!4304 = !DILocation(line: 1088, column: 15, scope: !4214)
!4305 = !DILocation(line: 1088, column: 6, scope: !4214)
!4306 = !DILocation(line: 1088, column: 13, scope: !4214)
!4307 = !DILocation(line: 1091, column: 18, scope: !4235)
!4308 = !DILocation(line: 1091, column: 36, scope: !4235)
!4309 = !DILocation(line: 1091, column: 46, scope: !4235)
!4310 = !DILocation(line: 1091, column: 44, scope: !4235)
!4311 = !DILocation(line: 1091, column: 25, scope: !4235)
!4312 = !DILocation(line: 1091, column: 9, scope: !4214)
!4313 = !DILocation(line: 1093, column: 9, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 1093, column: 9)
!4315 = !DILocation(line: 1093, column: 9, scope: !4234)
!4316 = !DILocation(line: 1093, column: 9, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 1093, column: 9)
!4318 = !DILocation(line: 1094, column: 17, scope: !4234)
!4319 = !DILocation(line: 1094, column: 28, scope: !4234)
!4320 = !DILocation(line: 1094, column: 36, scope: !4234)
!4321 = !DILocation(line: 1094, column: 34, scope: !4234)
!4322 = !DILocation(line: 1094, column: 25, scope: !4234)
!4323 = !DILocation(line: 1094, column: 15, scope: !4234)
!4324 = !DILocation(line: 1095, column: 13, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 1095, column: 13)
!4326 = !DILocation(line: 1095, column: 30, scope: !4325)
!4327 = !DILocation(line: 1095, column: 19, scope: !4325)
!4328 = !DILocation(line: 1095, column: 45, scope: !4325)
!4329 = !DILocation(line: 1095, column: 42, scope: !4325)
!4330 = !DILocation(line: 1095, column: 13, scope: !4234)
!4331 = !DILocation(line: 1096, column: 13, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 1095, column: 54)
!4333 = !DILocation(line: 1097, column: 20, scope: !4332)
!4334 = !DILocation(line: 1097, column: 13, scope: !4332)
!4335 = !DILocation(line: 1100, column: 13, scope: !4233)
!4336 = !DILocation(line: 1100, column: 26, scope: !4233)
!4337 = !DILocation(line: 1100, column: 36, scope: !4233)
!4338 = !DILocation(line: 1100, column: 46, scope: !4233)
!4339 = !DILocation(line: 1100, column: 44, scope: !4233)
!4340 = !DILocation(line: 1101, column: 13, scope: !4233)
!4341 = !DILocation(line: 1102, column: 18, scope: !4233)
!4342 = !DILocation(line: 1102, column: 28, scope: !4233)
!4343 = !DILocation(line: 1102, column: 26, scope: !4233)
!4344 = !DILocation(line: 1102, column: 16, scope: !4233)
!4345 = !DILocation(line: 1103, column: 37, scope: !4233)
!4346 = !DILocation(line: 1103, column: 22, scope: !4233)
!4347 = !DILocation(line: 1103, column: 34, scope: !4233)
!4348 = !DILocation(line: 1104, column: 21, scope: !4233)
!4349 = !DILocation(line: 1104, column: 19, scope: !4233)
!4350 = !DILocation(line: 1105, column: 5, scope: !4234)
!4351 = !DILocation(line: 1105, column: 9, scope: !4234)
!4352 = !DILocation(line: 1115, column: 9, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 1115, column: 9)
!4354 = !DILocation(line: 1115, column: 9, scope: !4214)
!4355 = !DILocation(line: 1120, column: 23, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 1115, column: 53)
!4357 = !DILocation(line: 1120, column: 27, scope: !4356)
!4358 = !DILocation(line: 1120, column: 54, scope: !4356)
!4359 = !DILocation(line: 1120, column: 9, scope: !4356)
!4360 = !DILocation(line: 1121, column: 16, scope: !4356)
!4361 = !DILocation(line: 1121, column: 9, scope: !4356)
!4362 = !DILocation(line: 1126, column: 45, scope: !4214)
!4363 = !DILocation(line: 1126, column: 5, scope: !4214)
!4364 = !DILocation(line: 1129, column: 18, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 1129, column: 9)
!4366 = !DILocation(line: 1129, column: 30, scope: !4365)
!4367 = !DILocation(line: 1129, column: 9, scope: !4214)
!4368 = !DILocation(line: 1131, column: 23, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 1129, column: 35)
!4370 = !DILocation(line: 1131, column: 27, scope: !4369)
!4371 = !DILocation(line: 1131, column: 54, scope: !4369)
!4372 = !DILocation(line: 1131, column: 65, scope: !4369)
!4373 = !DILocation(line: 1131, column: 9, scope: !4369)
!4374 = !DILocation(line: 1132, column: 5, scope: !4369)
!4375 = !DILocation(line: 1133, column: 12, scope: !4214)
!4376 = !DILocation(line: 1133, column: 5, scope: !4214)
!4377 = !DILocation(line: 1134, column: 1, scope: !4214)
!4378 = distinct !DISubprogram(name: "MEM_readLEST", scope: !131, file: !131, line: 189, type: !4379, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4381)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!121, !158}
!4381 = !{!4382}
!4382 = !DILocalVariable(name: "memPtr", arg: 1, scope: !4378, file: !131, line: 189, type: !158)
!4383 = !DILocation(line: 189, column: 44, scope: !4378)
!4384 = !DILocation(line: 191, column: 6, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4378, file: !131, line: 191, column: 6)
!4386 = !DILocation(line: 191, column: 6, scope: !4378)
!4387 = !DILocation(line: 192, column: 31, scope: !4385)
!4388 = !DILocation(line: 192, column: 18, scope: !4385)
!4389 = !DILocation(line: 192, column: 10, scope: !4385)
!4390 = !DILocation(line: 192, column: 3, scope: !4385)
!4391 = !DILocation(line: 194, column: 31, scope: !4385)
!4392 = !DILocation(line: 194, column: 18, scope: !4385)
!4393 = !DILocation(line: 194, column: 3, scope: !4385)
!4394 = !DILocation(line: 195, column: 1, scope: !4378)
!4395 = distinct !DISubprogram(name: "MEM_readLE64", scope: !131, file: !131, line: 179, type: !4396, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!196, !158}
!4398 = !{!4399}
!4399 = !DILocalVariable(name: "memPtr", arg: 1, scope: !4395, file: !131, line: 179, type: !158)
!4400 = !DILocation(line: 179, column: 41, scope: !4395)
!4401 = !DILocation(line: 181, column: 31, scope: !4395)
!4402 = !DILocation(line: 181, column: 12, scope: !4395)
!4403 = !DILocation(line: 181, column: 5, scope: !4395)
!4404 = !DILocation(line: 35, column: 50, scope: !221)
!4405 = !DILocation(line: 37, column: 9, scope: !227)
!4406 = !DILocation(line: 37, column: 9, scope: !221)
!4407 = !DILocation(line: 37, column: 2, scope: !221)
!4408 = distinct !DISubprogram(name: "BIT_readBits", scope: !110, file: !110, line: 372, type: !4409, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!121, !3316, !7}
!4411 = !{!4412, !4413, !4414}
!4412 = !DILocalVariable(name: "bitD", arg: 1, scope: !4408, file: !110, line: 372, type: !3316)
!4413 = !DILocalVariable(name: "nbBits", arg: 2, scope: !4408, file: !110, line: 372, type: !7)
!4414 = !DILocalVariable(name: "value", scope: !4408, file: !110, line: 374, type: !237)
!4415 = !DILocation(line: 372, column: 65, scope: !4408)
!4416 = !DILocation(line: 372, column: 80, scope: !4408)
!4417 = !DILocation(line: 374, column: 5, scope: !4408)
!4418 = !DILocation(line: 374, column: 18, scope: !4408)
!4419 = !DILocation(line: 374, column: 39, scope: !4408)
!4420 = !DILocation(line: 374, column: 45, scope: !4408)
!4421 = !DILocation(line: 374, column: 26, scope: !4408)
!4422 = !DILocation(line: 375, column: 18, scope: !4408)
!4423 = !DILocation(line: 375, column: 24, scope: !4408)
!4424 = !DILocation(line: 375, column: 5, scope: !4408)
!4425 = !DILocation(line: 376, column: 12, scope: !4408)
!4426 = !DILocation(line: 377, column: 1, scope: !4408)
!4427 = !DILocation(line: 376, column: 5, scope: !4408)
!4428 = distinct !DISubprogram(name: "BIT_lookBits", scope: !110, file: !110, line: 340, type: !4429, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4433)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!121, !4431, !144}
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2743)
!4433 = !{!4434, !4435}
!4434 = !DILocalVariable(name: "bitD", arg: 1, scope: !4428, file: !110, line: 340, type: !4431)
!4435 = !DILocalVariable(name: "nbBits", arg: 2, scope: !4428, file: !110, line: 340, type: !144)
!4436 = !DILocation(line: 340, column: 73, scope: !4428)
!4437 = !DILocation(line: 340, column: 83, scope: !4428)
!4438 = !DILocation(line: 346, column: 30, scope: !4428)
!4439 = !DILocation(line: 346, column: 36, scope: !4428)
!4440 = !DILocation(line: 346, column: 83, scope: !4428)
!4441 = !DILocation(line: 346, column: 89, scope: !4428)
!4442 = !DILocation(line: 346, column: 81, scope: !4428)
!4443 = !DILocation(line: 346, column: 104, scope: !4428)
!4444 = !DILocation(line: 346, column: 102, scope: !4428)
!4445 = !DILocation(line: 346, column: 50, scope: !4428)
!4446 = !DILocation(line: 346, column: 112, scope: !4428)
!4447 = !DILocation(line: 346, column: 12, scope: !4428)
!4448 = !DILocation(line: 346, column: 5, scope: !4428)
!4449 = distinct !DISubprogram(name: "BIT_skipBits", scope: !110, file: !110, line: 363, type: !4450, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4452)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !3316, !144}
!4452 = !{!4453, !4454}
!4453 = !DILocalVariable(name: "bitD", arg: 1, scope: !4449, file: !110, line: 363, type: !3316)
!4454 = !DILocalVariable(name: "nbBits", arg: 2, scope: !4449, file: !110, line: 363, type: !144)
!4455 = !DILocation(line: 363, column: 63, scope: !4449)
!4456 = !DILocation(line: 363, column: 73, scope: !4449)
!4457 = !DILocation(line: 365, column: 27, scope: !4449)
!4458 = !DILocation(line: 365, column: 5, scope: !4449)
!4459 = !DILocation(line: 365, column: 11, scope: !4449)
!4460 = !DILocation(line: 365, column: 24, scope: !4449)
!4461 = !DILocation(line: 366, column: 1, scope: !4449)
!4462 = distinct !DISubprogram(name: "BIT_getMiddleBits", scope: !110, file: !110, line: 311, type: !4463, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4465)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!121, !121, !261, !261}
!4465 = !{!4466, !4467, !4468, !4469}
!4466 = !DILocalVariable(name: "bitContainer", arg: 1, scope: !4462, file: !110, line: 311, type: !121)
!4467 = !DILocalVariable(name: "start", arg: 2, scope: !4462, file: !110, line: 311, type: !261)
!4468 = !DILocalVariable(name: "nbBits", arg: 3, scope: !4462, file: !110, line: 311, type: !261)
!4469 = !DILocalVariable(name: "regMask", scope: !4462, file: !110, line: 313, type: !261)
!4470 = !DILocation(line: 311, column: 62, scope: !4462)
!4471 = !DILocation(line: 311, column: 86, scope: !4462)
!4472 = !DILocation(line: 311, column: 103, scope: !4462)
!4473 = !DILocation(line: 313, column: 5, scope: !4462)
!4474 = !DILocation(line: 313, column: 15, scope: !4462)
!4475 = !DILocation(line: 322, column: 13, scope: !4462)
!4476 = !DILocation(line: 322, column: 30, scope: !4462)
!4477 = !DILocation(line: 322, column: 36, scope: !4462)
!4478 = !DILocation(line: 322, column: 26, scope: !4462)
!4479 = !DILocation(line: 322, column: 64, scope: !4462)
!4480 = !DILocation(line: 322, column: 61, scope: !4462)
!4481 = !DILocation(line: 322, column: 72, scope: !4462)
!4482 = !DILocation(line: 322, column: 48, scope: !4462)
!4483 = !DILocation(line: 326, column: 1, scope: !4462)
!4484 = !DILocation(line: 322, column: 5, scope: !4462)
!4485 = distinct !DISubprogram(name: "BIT_reloadDStreamFast", scope: !110, file: !110, line: 395, type: !3506, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4486)
!4486 = !{!4487}
!4487 = !DILocalVariable(name: "bitD", arg: 1, scope: !4485, file: !110, line: 395, type: !3316)
!4488 = !DILocation(line: 395, column: 68, scope: !4485)
!4489 = !DILocation(line: 397, column: 9, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4485, file: !110, line: 397, column: 9)
!4491 = !DILocation(line: 397, column: 9, scope: !4485)
!4492 = !DILocation(line: 398, column: 9, scope: !4490)
!4493 = !DILocation(line: 400, column: 18, scope: !4485)
!4494 = !DILocation(line: 400, column: 24, scope: !4485)
!4495 = !DILocation(line: 400, column: 37, scope: !4485)
!4496 = !DILocation(line: 400, column: 5, scope: !4485)
!4497 = !DILocation(line: 400, column: 11, scope: !4485)
!4498 = !DILocation(line: 400, column: 15, scope: !4485)
!4499 = !DILocation(line: 401, column: 5, scope: !4485)
!4500 = !DILocation(line: 401, column: 11, scope: !4485)
!4501 = !DILocation(line: 401, column: 24, scope: !4485)
!4502 = !DILocation(line: 402, column: 39, scope: !4485)
!4503 = !DILocation(line: 402, column: 45, scope: !4485)
!4504 = !DILocation(line: 402, column: 26, scope: !4485)
!4505 = !DILocation(line: 402, column: 5, scope: !4485)
!4506 = !DILocation(line: 402, column: 11, scope: !4485)
!4507 = !DILocation(line: 402, column: 24, scope: !4485)
!4508 = !DILocation(line: 403, column: 5, scope: !4485)
!4509 = !DILocation(line: 404, column: 1, scope: !4485)
!4510 = distinct !DISubprogram(name: "BIT_readBitsFast", scope: !110, file: !110, line: 381, type: !4409, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4511 = !{!4512, !4513, !4514}
!4512 = !DILocalVariable(name: "bitD", arg: 1, scope: !4510, file: !110, line: 381, type: !3316)
!4513 = !DILocalVariable(name: "nbBits", arg: 2, scope: !4510, file: !110, line: 381, type: !7)
!4514 = !DILocalVariable(name: "value", scope: !4510, file: !110, line: 383, type: !237)
!4515 = !DILocation(line: 381, column: 51, scope: !4510)
!4516 = !DILocation(line: 381, column: 66, scope: !4510)
!4517 = !DILocation(line: 383, column: 5, scope: !4510)
!4518 = !DILocation(line: 383, column: 18, scope: !4510)
!4519 = !DILocation(line: 383, column: 43, scope: !4510)
!4520 = !DILocation(line: 383, column: 49, scope: !4510)
!4521 = !DILocation(line: 383, column: 26, scope: !4510)
!4522 = !DILocation(line: 385, column: 18, scope: !4510)
!4523 = !DILocation(line: 385, column: 24, scope: !4510)
!4524 = !DILocation(line: 385, column: 5, scope: !4510)
!4525 = !DILocation(line: 386, column: 12, scope: !4510)
!4526 = !DILocation(line: 387, column: 1, scope: !4510)
!4527 = !DILocation(line: 386, column: 5, scope: !4510)
!4528 = distinct !DISubprogram(name: "ZSTD_updateFseStateWithDInfo", scope: !3, file: !3, line: 1150, type: !4529, scopeLine: 1151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4531)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{null, !3473, !3316, !184, !144}
!4531 = !{!4532, !4533, !4534, !4535, !4536}
!4532 = !DILocalVariable(name: "DStatePtr", arg: 1, scope: !4528, file: !3, line: 1150, type: !3473)
!4533 = !DILocalVariable(name: "bitD", arg: 2, scope: !4528, file: !3, line: 1150, type: !3316)
!4534 = !DILocalVariable(name: "nextState", arg: 3, scope: !4528, file: !3, line: 1150, type: !184)
!4535 = !DILocalVariable(name: "nbBits", arg: 4, scope: !4528, file: !3, line: 1150, type: !144)
!4536 = !DILocalVariable(name: "lowBits", scope: !4528, file: !3, line: 1152, type: !237)
!4537 = !DILocation(line: 1150, column: 45, scope: !4528)
!4538 = !DILocation(line: 1150, column: 71, scope: !4528)
!4539 = !DILocation(line: 1150, column: 81, scope: !4528)
!4540 = !DILocation(line: 1150, column: 96, scope: !4528)
!4541 = !DILocation(line: 1152, column: 5, scope: !4528)
!4542 = !DILocation(line: 1152, column: 18, scope: !4528)
!4543 = !DILocation(line: 1152, column: 41, scope: !4528)
!4544 = !DILocation(line: 1152, column: 47, scope: !4528)
!4545 = !DILocation(line: 1152, column: 28, scope: !4528)
!4546 = !DILocation(line: 1153, column: 24, scope: !4528)
!4547 = !DILocation(line: 1153, column: 36, scope: !4528)
!4548 = !DILocation(line: 1153, column: 34, scope: !4528)
!4549 = !DILocation(line: 1153, column: 5, scope: !4528)
!4550 = !DILocation(line: 1153, column: 16, scope: !4528)
!4551 = !DILocation(line: 1153, column: 22, scope: !4528)
!4552 = !DILocation(line: 1154, column: 1, scope: !4528)
!4553 = distinct !DISubprogram(name: "BIT_lookBitsFast", scope: !110, file: !110, line: 356, type: !4429, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4554)
!4554 = !{!4555, !4556, !4557}
!4555 = !DILocalVariable(name: "bitD", arg: 1, scope: !4553, file: !110, line: 356, type: !4431)
!4556 = !DILocalVariable(name: "nbBits", arg: 2, scope: !4553, file: !110, line: 356, type: !144)
!4557 = !DILocalVariable(name: "regMask", scope: !4553, file: !110, line: 358, type: !261)
!4558 = !DILocation(line: 356, column: 57, scope: !4553)
!4559 = !DILocation(line: 356, column: 67, scope: !4553)
!4560 = !DILocation(line: 358, column: 5, scope: !4553)
!4561 = !DILocation(line: 358, column: 15, scope: !4553)
!4562 = !DILocation(line: 360, column: 13, scope: !4553)
!4563 = !DILocation(line: 360, column: 19, scope: !4553)
!4564 = !DILocation(line: 360, column: 36, scope: !4553)
!4565 = !DILocation(line: 360, column: 42, scope: !4553)
!4566 = !DILocation(line: 360, column: 55, scope: !4553)
!4567 = !DILocation(line: 360, column: 32, scope: !4553)
!4568 = !DILocation(line: 360, column: 84, scope: !4553)
!4569 = !DILocation(line: 360, column: 83, scope: !4553)
!4570 = !DILocation(line: 360, column: 92, scope: !4553)
!4571 = !DILocation(line: 360, column: 67, scope: !4553)
!4572 = !DILocation(line: 361, column: 1, scope: !4553)
!4573 = !DILocation(line: 360, column: 5, scope: !4553)
!4574 = distinct !DISubprogram(name: "ZSTD_wildcopy", scope: !6, file: !6, line: 208, type: !4575, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4579)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !139, !158, !230, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4578)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_overlap_e", file: !6, line: 198, baseType: !116)
!4579 = !{!4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587}
!4580 = !DILocalVariable(name: "dst", arg: 1, scope: !4574, file: !6, line: 208, type: !139)
!4581 = !DILocalVariable(name: "src", arg: 2, scope: !4574, file: !6, line: 208, type: !158)
!4582 = !DILocalVariable(name: "length", arg: 3, scope: !4574, file: !6, line: 208, type: !230)
!4583 = !DILocalVariable(name: "ovtype", arg: 4, scope: !4574, file: !6, line: 208, type: !4577)
!4584 = !DILocalVariable(name: "diff", scope: !4574, file: !6, line: 210, type: !230)
!4585 = !DILocalVariable(name: "ip", scope: !4574, file: !6, line: 211, type: !128)
!4586 = !DILocalVariable(name: "op", scope: !4574, file: !6, line: 212, type: !166)
!4587 = !DILocalVariable(name: "oend", scope: !4574, file: !6, line: 213, type: !2719)
!4588 = !DILocation(line: 208, column: 26, scope: !4574)
!4589 = !DILocation(line: 208, column: 43, scope: !4574)
!4590 = !DILocation(line: 208, column: 58, scope: !4574)
!4591 = !DILocation(line: 208, column: 87, scope: !4574)
!4592 = !DILocation(line: 210, column: 5, scope: !4574)
!4593 = !DILocation(line: 210, column: 15, scope: !4574)
!4594 = !DILocation(line: 210, column: 29, scope: !4574)
!4595 = !DILocation(line: 210, column: 48, scope: !4574)
!4596 = !DILocation(line: 210, column: 33, scope: !4574)
!4597 = !DILocation(line: 211, column: 5, scope: !4574)
!4598 = !DILocation(line: 211, column: 17, scope: !4574)
!4599 = !DILocation(line: 211, column: 35, scope: !4574)
!4600 = !DILocation(line: 212, column: 5, scope: !4574)
!4601 = !DILocation(line: 212, column: 11, scope: !4574)
!4602 = !DILocation(line: 212, column: 23, scope: !4574)
!4603 = !DILocation(line: 213, column: 5, scope: !4574)
!4604 = !DILocation(line: 213, column: 17, scope: !4574)
!4605 = !DILocation(line: 213, column: 24, scope: !4574)
!4606 = !DILocation(line: 213, column: 29, scope: !4574)
!4607 = !DILocation(line: 213, column: 27, scope: !4574)
!4608 = !DILocation(line: 215, column: 9, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4574, file: !6, line: 215, column: 9)
!4610 = !DILocation(line: 215, column: 16, scope: !4609)
!4611 = !DILocation(line: 215, column: 47, scope: !4609)
!4612 = !DILocation(line: 215, column: 50, scope: !4609)
!4613 = !DILocation(line: 215, column: 55, scope: !4609)
!4614 = !DILocation(line: 215, column: 9, scope: !4574)
!4615 = !DILocation(line: 217, column: 9, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4609, file: !6, line: 215, column: 74)
!4617 = !DILocation(line: 218, column: 13, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4619, file: !6, line: 218, column: 13)
!4619 = distinct !DILexicalBlock(scope: !4616, file: !6, line: 217, column: 12)
!4620 = !DILocation(line: 219, column: 9, scope: !4619)
!4621 = !DILocation(line: 219, column: 18, scope: !4616)
!4622 = !DILocation(line: 219, column: 23, scope: !4616)
!4623 = !DILocation(line: 219, column: 21, scope: !4616)
!4624 = distinct !{!4624, !4615, !4625, !731, !732}
!4625 = !DILocation(line: 219, column: 27, scope: !4616)
!4626 = !DILocation(line: 220, column: 5, scope: !4616)
!4627 = !DILocation(line: 234, column: 21, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4609, file: !6, line: 220, column: 12)
!4629 = !DILocation(line: 234, column: 25, scope: !4628)
!4630 = !DILocation(line: 234, column: 9, scope: !4628)
!4631 = !DILocation(line: 235, column: 19, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4628, file: !6, line: 235, column: 13)
!4633 = !DILocation(line: 235, column: 16, scope: !4632)
!4634 = !DILocation(line: 235, column: 13, scope: !4628)
!4635 = !DILocation(line: 235, column: 27, scope: !4632)
!4636 = !DILocation(line: 236, column: 12, scope: !4628)
!4637 = !DILocation(line: 237, column: 12, scope: !4628)
!4638 = !DILocation(line: 238, column: 9, scope: !4628)
!4639 = !DILocation(line: 239, column: 13, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !6, line: 239, column: 13)
!4641 = distinct !DILexicalBlock(scope: !4628, file: !6, line: 238, column: 12)
!4642 = !DILocation(line: 240, column: 13, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4641, file: !6, line: 240, column: 13)
!4644 = !DILocation(line: 241, column: 9, scope: !4641)
!4645 = !DILocation(line: 242, column: 16, scope: !4628)
!4646 = !DILocation(line: 242, column: 21, scope: !4628)
!4647 = !DILocation(line: 242, column: 19, scope: !4628)
!4648 = distinct !{!4648, !4638, !4649, !731, !732}
!4649 = !DILocation(line: 242, column: 25, scope: !4628)
!4650 = !DILocation(line: 245, column: 1, scope: !4574)
!4651 = distinct !DISubprogram(name: "ZSTD_copy8", scope: !6, file: !6, line: 162, type: !4652, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !139, !158}
!4654 = !{!4655, !4656}
!4655 = !DILocalVariable(name: "dst", arg: 1, scope: !4651, file: !6, line: 162, type: !139)
!4656 = !DILocalVariable(name: "src", arg: 2, scope: !4651, file: !6, line: 162, type: !158)
!4657 = !DILocation(line: 162, column: 30, scope: !4651)
!4658 = !DILocation(line: 162, column: 47, scope: !4651)
!4659 = !DILocation(line: 166, column: 5, scope: !4651)
!4660 = !DILocation(line: 168, column: 1, scope: !4651)
!4661 = distinct !DISubprogram(name: "ZSTD_copy16", scope: !6, file: !6, line: 175, type: !4652, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4662)
!4662 = !{!4663, !4664}
!4663 = !DILocalVariable(name: "dst", arg: 1, scope: !4661, file: !6, line: 175, type: !139)
!4664 = !DILocalVariable(name: "src", arg: 2, scope: !4661, file: !6, line: 175, type: !158)
!4665 = !DILocation(line: 175, column: 31, scope: !4661)
!4666 = !DILocation(line: 175, column: 48, scope: !4661)
!4667 = !DILocation(line: 181, column: 5, scope: !4661)
!4668 = !DILocation(line: 188, column: 1, scope: !4661)
!4669 = distinct !DISubprogram(name: "ZSTD_execSequenceEnd", scope: !3, file: !3, line: 861, type: !4049, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4670)
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684}
!4671 = !DILocalVariable(name: "op", arg: 1, scope: !4669, file: !3, line: 861, type: !166)
!4672 = !DILocalVariable(name: "oend", arg: 2, scope: !4669, file: !3, line: 862, type: !2719)
!4673 = !DILocalVariable(name: "sequence", arg: 3, scope: !4669, file: !3, line: 862, type: !2731)
!4674 = !DILocalVariable(name: "litPtr", arg: 4, scope: !4669, file: !3, line: 863, type: !288)
!4675 = !DILocalVariable(name: "litLimit", arg: 5, scope: !4669, file: !3, line: 863, type: !566)
!4676 = !DILocalVariable(name: "prefixStart", arg: 6, scope: !4669, file: !3, line: 864, type: !566)
!4677 = !DILocalVariable(name: "virtualStart", arg: 7, scope: !4669, file: !3, line: 864, type: !566)
!4678 = !DILocalVariable(name: "dictEnd", arg: 8, scope: !4669, file: !3, line: 864, type: !566)
!4679 = !DILocalVariable(name: "oLitEnd", scope: !4669, file: !3, line: 866, type: !2719)
!4680 = !DILocalVariable(name: "sequenceLength", scope: !4669, file: !3, line: 867, type: !237)
!4681 = !DILocalVariable(name: "iLitEnd", scope: !4669, file: !3, line: 868, type: !566)
!4682 = !DILocalVariable(name: "match", scope: !4669, file: !3, line: 869, type: !128)
!4683 = !DILocalVariable(name: "oend_w", scope: !4669, file: !3, line: 870, type: !2719)
!4684 = !DILocalVariable(name: "length1", scope: !4685, file: !3, line: 893, type: !237)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 893, column: 9)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 884, column: 60)
!4687 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 884, column: 9)
!4688 = !DILocation(line: 861, column: 35, scope: !4669)
!4689 = !DILocation(line: 862, column: 17, scope: !4669)
!4690 = !DILocation(line: 862, column: 29, scope: !4669)
!4691 = !DILocation(line: 863, column: 18, scope: !4669)
!4692 = !DILocation(line: 863, column: 44, scope: !4669)
!4693 = !DILocation(line: 864, column: 23, scope: !4669)
!4694 = !DILocation(line: 864, column: 54, scope: !4669)
!4695 = !DILocation(line: 864, column: 86, scope: !4669)
!4696 = !DILocation(line: 866, column: 5, scope: !4669)
!4697 = !DILocation(line: 866, column: 17, scope: !4669)
!4698 = !DILocation(line: 866, column: 27, scope: !4669)
!4699 = !DILocation(line: 866, column: 41, scope: !4669)
!4700 = !DILocation(line: 866, column: 30, scope: !4669)
!4701 = !DILocation(line: 867, column: 5, scope: !4669)
!4702 = !DILocation(line: 867, column: 18, scope: !4669)
!4703 = !DILocation(line: 867, column: 44, scope: !4669)
!4704 = !DILocation(line: 867, column: 65, scope: !4669)
!4705 = !DILocation(line: 867, column: 54, scope: !4669)
!4706 = !DILocation(line: 868, column: 5, scope: !4669)
!4707 = !DILocation(line: 868, column: 23, scope: !4669)
!4708 = !DILocation(line: 868, column: 34, scope: !4669)
!4709 = !DILocation(line: 868, column: 33, scope: !4669)
!4710 = !DILocation(line: 868, column: 52, scope: !4669)
!4711 = !DILocation(line: 868, column: 41, scope: !4669)
!4712 = !DILocation(line: 869, column: 5, scope: !4669)
!4713 = !DILocation(line: 869, column: 17, scope: !4669)
!4714 = !DILocation(line: 869, column: 25, scope: !4669)
!4715 = !DILocation(line: 869, column: 44, scope: !4669)
!4716 = !DILocation(line: 869, column: 33, scope: !4669)
!4717 = !DILocation(line: 870, column: 5, scope: !4669)
!4718 = !DILocation(line: 870, column: 17, scope: !4669)
!4719 = !DILocation(line: 870, column: 26, scope: !4669)
!4720 = !DILocation(line: 870, column: 31, scope: !4669)
!4721 = !DILocation(line: 873, column: 5, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 873, column: 5)
!4723 = !DILocation(line: 873, column: 5, scope: !4669)
!4724 = !DILocation(line: 873, column: 5, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 873, column: 5)
!4726 = !DILocation(line: 874, column: 5, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 874, column: 5)
!4728 = !DILocation(line: 874, column: 5, scope: !4669)
!4729 = !DILocation(line: 874, column: 5, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 874, column: 5)
!4731 = !DILocation(line: 879, column: 19, scope: !4669)
!4732 = !DILocation(line: 879, column: 23, scope: !4669)
!4733 = !DILocation(line: 879, column: 32, scope: !4669)
!4734 = !DILocation(line: 879, column: 31, scope: !4669)
!4735 = !DILocation(line: 879, column: 49, scope: !4669)
!4736 = !DILocation(line: 879, column: 5, scope: !4669)
!4737 = !DILocation(line: 880, column: 10, scope: !4669)
!4738 = !DILocation(line: 880, column: 8, scope: !4669)
!4739 = !DILocation(line: 881, column: 15, scope: !4669)
!4740 = !DILocation(line: 881, column: 6, scope: !4669)
!4741 = !DILocation(line: 881, column: 13, scope: !4669)
!4742 = !DILocation(line: 884, column: 18, scope: !4687)
!4743 = !DILocation(line: 884, column: 36, scope: !4687)
!4744 = !DILocation(line: 884, column: 46, scope: !4687)
!4745 = !DILocation(line: 884, column: 44, scope: !4687)
!4746 = !DILocation(line: 884, column: 25, scope: !4687)
!4747 = !DILocation(line: 884, column: 9, scope: !4669)
!4748 = !DILocation(line: 886, column: 9, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 886, column: 9)
!4750 = !DILocation(line: 886, column: 9, scope: !4686)
!4751 = !DILocation(line: 886, column: 9, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 886, column: 9)
!4753 = !DILocation(line: 887, column: 17, scope: !4686)
!4754 = !DILocation(line: 887, column: 28, scope: !4686)
!4755 = !DILocation(line: 887, column: 42, scope: !4686)
!4756 = !DILocation(line: 887, column: 40, scope: !4686)
!4757 = !DILocation(line: 887, column: 25, scope: !4686)
!4758 = !DILocation(line: 887, column: 15, scope: !4686)
!4759 = !DILocation(line: 888, column: 13, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 888, column: 13)
!4761 = !DILocation(line: 888, column: 30, scope: !4760)
!4762 = !DILocation(line: 888, column: 19, scope: !4760)
!4763 = !DILocation(line: 888, column: 45, scope: !4760)
!4764 = !DILocation(line: 888, column: 42, scope: !4760)
!4765 = !DILocation(line: 888, column: 13, scope: !4686)
!4766 = !DILocation(line: 889, column: 13, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 888, column: 54)
!4768 = !DILocation(line: 890, column: 20, scope: !4767)
!4769 = !DILocation(line: 890, column: 13, scope: !4767)
!4770 = !DILocation(line: 893, column: 13, scope: !4685)
!4771 = !DILocation(line: 893, column: 26, scope: !4685)
!4772 = !DILocation(line: 893, column: 36, scope: !4685)
!4773 = !DILocation(line: 893, column: 46, scope: !4685)
!4774 = !DILocation(line: 893, column: 44, scope: !4685)
!4775 = !DILocation(line: 894, column: 9, scope: !4685)
!4776 = !DILocation(line: 895, column: 14, scope: !4685)
!4777 = !DILocation(line: 895, column: 24, scope: !4685)
!4778 = !DILocation(line: 895, column: 22, scope: !4685)
!4779 = !DILocation(line: 895, column: 12, scope: !4685)
!4780 = !DILocation(line: 896, column: 33, scope: !4685)
!4781 = !DILocation(line: 896, column: 18, scope: !4685)
!4782 = !DILocation(line: 896, column: 30, scope: !4685)
!4783 = !DILocation(line: 897, column: 17, scope: !4685)
!4784 = !DILocation(line: 897, column: 15, scope: !4685)
!4785 = !DILocation(line: 898, column: 9, scope: !4686)
!4786 = !DILocation(line: 899, column: 5, scope: !4686)
!4787 = !DILocation(line: 900, column: 19, scope: !4669)
!4788 = !DILocation(line: 900, column: 23, scope: !4669)
!4789 = !DILocation(line: 900, column: 31, scope: !4669)
!4790 = !DILocation(line: 900, column: 47, scope: !4669)
!4791 = !DILocation(line: 900, column: 5, scope: !4669)
!4792 = !DILocation(line: 901, column: 12, scope: !4669)
!4793 = !DILocation(line: 901, column: 5, scope: !4669)
!4794 = !DILocation(line: 902, column: 1, scope: !4669)
!4795 = !DILocation(line: 759, column: 43, scope: !284)
!4796 = !DILocation(line: 759, column: 60, scope: !284)
!4797 = !DILocation(line: 759, column: 71, scope: !284)
!4798 = !DILocation(line: 761, column: 9, scope: !295)
!4799 = !DILocation(line: 761, column: 16, scope: !295)
!4800 = !DILocation(line: 761, column: 9, scope: !284)
!4801 = !DILocation(line: 765, column: 9, scope: !294)
!4802 = !DILocation(line: 765, column: 19, scope: !294)
!4803 = !DILocation(line: 765, column: 37, scope: !294)
!4804 = !DILocation(line: 765, column: 26, scope: !294)
!4805 = !DILocation(line: 766, column: 22, scope: !294)
!4806 = !DILocation(line: 766, column: 21, scope: !294)
!4807 = !DILocation(line: 766, column: 20, scope: !294)
!4808 = !DILocation(line: 766, column: 11, scope: !294)
!4809 = !DILocation(line: 766, column: 10, scope: !294)
!4810 = !DILocation(line: 766, column: 9, scope: !294)
!4811 = !DILocation(line: 766, column: 18, scope: !294)
!4812 = !DILocation(line: 767, column: 22, scope: !294)
!4813 = !DILocation(line: 767, column: 21, scope: !294)
!4814 = !DILocation(line: 767, column: 20, scope: !294)
!4815 = !DILocation(line: 767, column: 11, scope: !294)
!4816 = !DILocation(line: 767, column: 10, scope: !294)
!4817 = !DILocation(line: 767, column: 9, scope: !294)
!4818 = !DILocation(line: 767, column: 18, scope: !294)
!4819 = !DILocation(line: 768, column: 22, scope: !294)
!4820 = !DILocation(line: 768, column: 21, scope: !294)
!4821 = !DILocation(line: 768, column: 20, scope: !294)
!4822 = !DILocation(line: 768, column: 11, scope: !294)
!4823 = !DILocation(line: 768, column: 10, scope: !294)
!4824 = !DILocation(line: 768, column: 9, scope: !294)
!4825 = !DILocation(line: 768, column: 18, scope: !294)
!4826 = !DILocation(line: 769, column: 22, scope: !294)
!4827 = !DILocation(line: 769, column: 21, scope: !294)
!4828 = !DILocation(line: 769, column: 20, scope: !294)
!4829 = !DILocation(line: 769, column: 11, scope: !294)
!4830 = !DILocation(line: 769, column: 10, scope: !294)
!4831 = !DILocation(line: 769, column: 9, scope: !294)
!4832 = !DILocation(line: 769, column: 18, scope: !294)
!4833 = !DILocation(line: 770, column: 27, scope: !294)
!4834 = !DILocation(line: 770, column: 16, scope: !294)
!4835 = !DILocation(line: 770, column: 10, scope: !294)
!4836 = !DILocation(line: 770, column: 13, scope: !294)
!4837 = !DILocation(line: 771, column: 21, scope: !294)
!4838 = !DILocation(line: 771, column: 20, scope: !294)
!4839 = !DILocation(line: 771, column: 23, scope: !294)
!4840 = !DILocation(line: 771, column: 28, scope: !294)
!4841 = !DILocation(line: 771, column: 27, scope: !294)
!4842 = !DILocation(line: 771, column: 9, scope: !294)
!4843 = !DILocation(line: 772, column: 16, scope: !294)
!4844 = !DILocation(line: 772, column: 10, scope: !294)
!4845 = !DILocation(line: 772, column: 13, scope: !294)
!4846 = !DILocation(line: 773, column: 5, scope: !295)
!4847 = !DILocation(line: 773, column: 5, scope: !294)
!4848 = !DILocation(line: 774, column: 21, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !295, file: !3, line: 773, column: 12)
!4850 = !DILocation(line: 774, column: 20, scope: !4849)
!4851 = !DILocation(line: 774, column: 26, scope: !4849)
!4852 = !DILocation(line: 774, column: 25, scope: !4849)
!4853 = !DILocation(line: 774, column: 9, scope: !4849)
!4854 = !DILocation(line: 776, column: 6, scope: !284)
!4855 = !DILocation(line: 776, column: 9, scope: !284)
!4856 = !DILocation(line: 777, column: 6, scope: !284)
!4857 = !DILocation(line: 777, column: 9, scope: !284)
!4858 = !DILocation(line: 779, column: 1, scope: !284)
!4859 = distinct !DISubprogram(name: "ZSTD_safecopy", scope: !3, file: !3, line: 792, type: !4860, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4862)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{null, !166, !566, !128, !230, !4578}
!4862 = !{!4863, !4864, !4865, !4866, !4867, !4868, !4869}
!4863 = !DILocalVariable(name: "op", arg: 1, scope: !4859, file: !3, line: 792, type: !166)
!4864 = !DILocalVariable(name: "oend_w", arg: 2, scope: !4859, file: !3, line: 792, type: !566)
!4865 = !DILocalVariable(name: "ip", arg: 3, scope: !4859, file: !3, line: 792, type: !128)
!4866 = !DILocalVariable(name: "length", arg: 4, scope: !4859, file: !3, line: 792, type: !230)
!4867 = !DILocalVariable(name: "ovtype", arg: 5, scope: !4859, file: !3, line: 792, type: !4578)
!4868 = !DILocalVariable(name: "diff", scope: !4859, file: !3, line: 793, type: !3977)
!4869 = !DILocalVariable(name: "oend", scope: !4859, file: !3, line: 794, type: !2719)
!4870 = !DILocation(line: 792, column: 33, scope: !4859)
!4871 = !DILocation(line: 792, column: 55, scope: !4859)
!4872 = !DILocation(line: 792, column: 75, scope: !4859)
!4873 = !DILocation(line: 792, column: 89, scope: !4859)
!4874 = !DILocation(line: 792, column: 112, scope: !4859)
!4875 = !DILocation(line: 793, column: 5, scope: !4859)
!4876 = !DILocation(line: 793, column: 21, scope: !4859)
!4877 = !DILocation(line: 793, column: 28, scope: !4859)
!4878 = !DILocation(line: 793, column: 33, scope: !4859)
!4879 = !DILocation(line: 793, column: 31, scope: !4859)
!4880 = !DILocation(line: 794, column: 5, scope: !4859)
!4881 = !DILocation(line: 794, column: 17, scope: !4859)
!4882 = !DILocation(line: 794, column: 24, scope: !4859)
!4883 = !DILocation(line: 794, column: 29, scope: !4859)
!4884 = !DILocation(line: 794, column: 27, scope: !4859)
!4885 = !DILocation(line: 799, column: 9, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 799, column: 9)
!4887 = !DILocation(line: 799, column: 16, scope: !4886)
!4888 = !DILocation(line: 799, column: 9, scope: !4859)
!4889 = !DILocation(line: 801, column: 9, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 799, column: 21)
!4891 = !DILocation(line: 801, column: 16, scope: !4890)
!4892 = !DILocation(line: 801, column: 21, scope: !4890)
!4893 = !DILocation(line: 801, column: 19, scope: !4890)
!4894 = !DILocation(line: 801, column: 38, scope: !4890)
!4895 = !DILocation(line: 801, column: 35, scope: !4890)
!4896 = !DILocation(line: 801, column: 30, scope: !4890)
!4897 = !DILocation(line: 801, column: 33, scope: !4890)
!4898 = distinct !{!4898, !4889, !4894, !731, !732}
!4899 = !DILocation(line: 802, column: 9, scope: !4890)
!4900 = !DILocation(line: 804, column: 9, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 804, column: 9)
!4902 = !DILocation(line: 804, column: 16, scope: !4901)
!4903 = !DILocation(line: 804, column: 9, scope: !4859)
!4904 = !DILocation(line: 807, column: 37, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 804, column: 48)
!4906 = !DILocation(line: 807, column: 9, scope: !4905)
!4907 = !DILocation(line: 808, column: 16, scope: !4905)
!4908 = !DILocation(line: 811, column: 5, scope: !4905)
!4909 = !DILocation(line: 813, column: 9, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 813, column: 9)
!4911 = !DILocation(line: 813, column: 17, scope: !4910)
!4912 = !DILocation(line: 813, column: 14, scope: !4910)
!4913 = !DILocation(line: 813, column: 9, scope: !4859)
!4914 = !DILocation(line: 815, column: 23, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 813, column: 25)
!4916 = !DILocation(line: 815, column: 27, scope: !4915)
!4917 = !DILocation(line: 815, column: 31, scope: !4915)
!4918 = !DILocation(line: 815, column: 39, scope: !4915)
!4919 = !DILocation(line: 815, column: 9, scope: !4915)
!4920 = !DILocation(line: 816, column: 9, scope: !4915)
!4921 = !DILocation(line: 818, column: 9, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 818, column: 9)
!4923 = !DILocation(line: 818, column: 15, scope: !4922)
!4924 = !DILocation(line: 818, column: 12, scope: !4922)
!4925 = !DILocation(line: 818, column: 9, scope: !4859)
!4926 = !DILocation(line: 821, column: 23, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 818, column: 23)
!4928 = !DILocation(line: 821, column: 27, scope: !4927)
!4929 = !DILocation(line: 821, column: 31, scope: !4927)
!4930 = !DILocation(line: 821, column: 40, scope: !4927)
!4931 = !DILocation(line: 821, column: 38, scope: !4927)
!4932 = !DILocation(line: 821, column: 44, scope: !4927)
!4933 = !DILocation(line: 821, column: 9, scope: !4927)
!4934 = !DILocation(line: 822, column: 15, scope: !4927)
!4935 = !DILocation(line: 822, column: 24, scope: !4927)
!4936 = !DILocation(line: 822, column: 22, scope: !4927)
!4937 = !DILocation(line: 822, column: 12, scope: !4927)
!4938 = !DILocation(line: 823, column: 15, scope: !4927)
!4939 = !DILocation(line: 823, column: 24, scope: !4927)
!4940 = !DILocation(line: 823, column: 22, scope: !4927)
!4941 = !DILocation(line: 823, column: 12, scope: !4927)
!4942 = !DILocation(line: 824, column: 5, scope: !4927)
!4943 = !DILocation(line: 826, column: 5, scope: !4859)
!4944 = !DILocation(line: 826, column: 12, scope: !4859)
!4945 = !DILocation(line: 826, column: 17, scope: !4859)
!4946 = !DILocation(line: 826, column: 15, scope: !4859)
!4947 = !DILocation(line: 826, column: 34, scope: !4859)
!4948 = !DILocation(line: 826, column: 31, scope: !4859)
!4949 = !DILocation(line: 826, column: 26, scope: !4859)
!4950 = !DILocation(line: 826, column: 29, scope: !4859)
!4951 = distinct !{!4951, !4943, !4947, !731, !732}
!4952 = !DILocation(line: 827, column: 1, scope: !4859)
!4953 = distinct !DISubprogram(name: "ZSTD_copy4", scope: !3, file: !3, line: 47, type: !4652, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4954)
!4954 = !{!4955, !4956}
!4955 = !DILocalVariable(name: "dst", arg: 1, scope: !4953, file: !3, line: 47, type: !139)
!4956 = !DILocalVariable(name: "src", arg: 2, scope: !4953, file: !3, line: 47, type: !158)
!4957 = !DILocation(line: 47, column: 30, scope: !4953)
!4958 = !DILocation(line: 47, column: 47, scope: !4953)
!4959 = !DILocation(line: 47, column: 54, scope: !4953)
!4960 = !DILocation(line: 47, column: 80, scope: !4953)
!4961 = distinct !DISubprogram(name: "ZSTD_execSequenceEndSplitLitBuffer", scope: !3, file: !3, line: 908, type: !4215, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4962)
!4962 = !{!4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976}
!4963 = !DILocalVariable(name: "op", arg: 1, scope: !4961, file: !3, line: 908, type: !166)
!4964 = !DILocalVariable(name: "oend", arg: 2, scope: !4961, file: !3, line: 909, type: !2719)
!4965 = !DILocalVariable(name: "oend_w", arg: 3, scope: !4961, file: !3, line: 909, type: !566)
!4966 = !DILocalVariable(name: "sequence", arg: 4, scope: !4961, file: !3, line: 909, type: !2731)
!4967 = !DILocalVariable(name: "litPtr", arg: 5, scope: !4961, file: !3, line: 910, type: !288)
!4968 = !DILocalVariable(name: "litLimit", arg: 6, scope: !4961, file: !3, line: 910, type: !566)
!4969 = !DILocalVariable(name: "prefixStart", arg: 7, scope: !4961, file: !3, line: 911, type: !566)
!4970 = !DILocalVariable(name: "virtualStart", arg: 8, scope: !4961, file: !3, line: 911, type: !566)
!4971 = !DILocalVariable(name: "dictEnd", arg: 9, scope: !4961, file: !3, line: 911, type: !566)
!4972 = !DILocalVariable(name: "oLitEnd", scope: !4961, file: !3, line: 913, type: !2719)
!4973 = !DILocalVariable(name: "sequenceLength", scope: !4961, file: !3, line: 914, type: !237)
!4974 = !DILocalVariable(name: "iLitEnd", scope: !4961, file: !3, line: 915, type: !566)
!4975 = !DILocalVariable(name: "match", scope: !4961, file: !3, line: 916, type: !128)
!4976 = !DILocalVariable(name: "length1", scope: !4977, file: !3, line: 941, type: !237)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 941, column: 9)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 932, column: 60)
!4979 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 932, column: 9)
!4980 = !DILocation(line: 908, column: 49, scope: !4961)
!4981 = !DILocation(line: 909, column: 17, scope: !4961)
!4982 = !DILocation(line: 909, column: 41, scope: !4961)
!4983 = !DILocation(line: 909, column: 55, scope: !4961)
!4984 = !DILocation(line: 910, column: 18, scope: !4961)
!4985 = !DILocation(line: 910, column: 44, scope: !4961)
!4986 = !DILocation(line: 911, column: 23, scope: !4961)
!4987 = !DILocation(line: 911, column: 54, scope: !4961)
!4988 = !DILocation(line: 911, column: 86, scope: !4961)
!4989 = !DILocation(line: 913, column: 5, scope: !4961)
!4990 = !DILocation(line: 913, column: 17, scope: !4961)
!4991 = !DILocation(line: 913, column: 27, scope: !4961)
!4992 = !DILocation(line: 913, column: 41, scope: !4961)
!4993 = !DILocation(line: 913, column: 30, scope: !4961)
!4994 = !DILocation(line: 914, column: 5, scope: !4961)
!4995 = !DILocation(line: 914, column: 18, scope: !4961)
!4996 = !DILocation(line: 914, column: 44, scope: !4961)
!4997 = !DILocation(line: 914, column: 65, scope: !4961)
!4998 = !DILocation(line: 914, column: 54, scope: !4961)
!4999 = !DILocation(line: 915, column: 5, scope: !4961)
!5000 = !DILocation(line: 915, column: 23, scope: !4961)
!5001 = !DILocation(line: 915, column: 34, scope: !4961)
!5002 = !DILocation(line: 915, column: 33, scope: !4961)
!5003 = !DILocation(line: 915, column: 52, scope: !4961)
!5004 = !DILocation(line: 915, column: 41, scope: !4961)
!5005 = !DILocation(line: 916, column: 5, scope: !4961)
!5006 = !DILocation(line: 916, column: 17, scope: !4961)
!5007 = !DILocation(line: 916, column: 25, scope: !4961)
!5008 = !DILocation(line: 916, column: 44, scope: !4961)
!5009 = !DILocation(line: 916, column: 33, scope: !4961)
!5010 = !DILocation(line: 920, column: 5, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 920, column: 5)
!5012 = !DILocation(line: 920, column: 5, scope: !4961)
!5013 = !DILocation(line: 920, column: 5, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 920, column: 5)
!5015 = !DILocation(line: 921, column: 5, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 921, column: 5)
!5017 = !DILocation(line: 921, column: 5, scope: !4961)
!5018 = !DILocation(line: 921, column: 5, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 921, column: 5)
!5020 = !DILocation(line: 926, column: 5, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 926, column: 5)
!5022 = !DILocation(line: 926, column: 5, scope: !4961)
!5023 = !DILocation(line: 926, column: 5, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 926, column: 5)
!5025 = !DILocation(line: 927, column: 31, scope: !4961)
!5026 = !DILocation(line: 927, column: 36, scope: !4961)
!5027 = !DILocation(line: 927, column: 35, scope: !4961)
!5028 = !DILocation(line: 927, column: 53, scope: !4961)
!5029 = !DILocation(line: 927, column: 5, scope: !4961)
!5030 = !DILocation(line: 928, column: 10, scope: !4961)
!5031 = !DILocation(line: 928, column: 8, scope: !4961)
!5032 = !DILocation(line: 929, column: 15, scope: !4961)
!5033 = !DILocation(line: 929, column: 6, scope: !4961)
!5034 = !DILocation(line: 929, column: 13, scope: !4961)
!5035 = !DILocation(line: 932, column: 18, scope: !4979)
!5036 = !DILocation(line: 932, column: 36, scope: !4979)
!5037 = !DILocation(line: 932, column: 46, scope: !4979)
!5038 = !DILocation(line: 932, column: 44, scope: !4979)
!5039 = !DILocation(line: 932, column: 25, scope: !4979)
!5040 = !DILocation(line: 932, column: 9, scope: !4961)
!5041 = !DILocation(line: 934, column: 9, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 934, column: 9)
!5043 = !DILocation(line: 934, column: 9, scope: !4978)
!5044 = !DILocation(line: 934, column: 9, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 934, column: 9)
!5046 = !DILocation(line: 935, column: 17, scope: !4978)
!5047 = !DILocation(line: 935, column: 28, scope: !4978)
!5048 = !DILocation(line: 935, column: 42, scope: !4978)
!5049 = !DILocation(line: 935, column: 40, scope: !4978)
!5050 = !DILocation(line: 935, column: 25, scope: !4978)
!5051 = !DILocation(line: 935, column: 15, scope: !4978)
!5052 = !DILocation(line: 936, column: 13, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 936, column: 13)
!5054 = !DILocation(line: 936, column: 30, scope: !5053)
!5055 = !DILocation(line: 936, column: 19, scope: !5053)
!5056 = !DILocation(line: 936, column: 45, scope: !5053)
!5057 = !DILocation(line: 936, column: 42, scope: !5053)
!5058 = !DILocation(line: 936, column: 13, scope: !4978)
!5059 = !DILocation(line: 937, column: 13, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 936, column: 54)
!5061 = !DILocation(line: 938, column: 20, scope: !5060)
!5062 = !DILocation(line: 938, column: 13, scope: !5060)
!5063 = !DILocation(line: 941, column: 13, scope: !4977)
!5064 = !DILocation(line: 941, column: 26, scope: !4977)
!5065 = !DILocation(line: 941, column: 36, scope: !4977)
!5066 = !DILocation(line: 941, column: 46, scope: !4977)
!5067 = !DILocation(line: 941, column: 44, scope: !4977)
!5068 = !DILocation(line: 942, column: 9, scope: !4977)
!5069 = !DILocation(line: 943, column: 14, scope: !4977)
!5070 = !DILocation(line: 943, column: 24, scope: !4977)
!5071 = !DILocation(line: 943, column: 22, scope: !4977)
!5072 = !DILocation(line: 943, column: 12, scope: !4977)
!5073 = !DILocation(line: 944, column: 33, scope: !4977)
!5074 = !DILocation(line: 944, column: 18, scope: !4977)
!5075 = !DILocation(line: 944, column: 30, scope: !4977)
!5076 = !DILocation(line: 945, column: 17, scope: !4977)
!5077 = !DILocation(line: 945, column: 15, scope: !4977)
!5078 = !DILocation(line: 946, column: 9, scope: !4978)
!5079 = !DILocation(line: 947, column: 5, scope: !4978)
!5080 = !DILocation(line: 948, column: 19, scope: !4961)
!5081 = !DILocation(line: 948, column: 23, scope: !4961)
!5082 = !DILocation(line: 948, column: 31, scope: !4961)
!5083 = !DILocation(line: 948, column: 47, scope: !4961)
!5084 = !DILocation(line: 948, column: 5, scope: !4961)
!5085 = !DILocation(line: 949, column: 12, scope: !4961)
!5086 = !DILocation(line: 949, column: 5, scope: !4961)
!5087 = !DILocation(line: 950, column: 1, scope: !4961)
!5088 = distinct !DISubprogram(name: "ZSTD_decompressSequencesSplitLitBuffer_bmi2", scope: !3, file: !3, line: 1861, type: !1947, scopeLine: 1866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5089)
!5089 = !{!5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097}
!5090 = !DILocalVariable(name: "dctx", arg: 1, scope: !5088, file: !3, line: 1861, type: !392)
!5091 = !DILocalVariable(name: "dst", arg: 2, scope: !5088, file: !3, line: 1862, type: !139)
!5092 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !5088, file: !3, line: 1862, type: !121)
!5093 = !DILocalVariable(name: "seqStart", arg: 4, scope: !5088, file: !3, line: 1863, type: !158)
!5094 = !DILocalVariable(name: "seqSize", arg: 5, scope: !5088, file: !3, line: 1863, type: !121)
!5095 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !5088, file: !3, line: 1863, type: !69)
!5096 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !5088, file: !3, line: 1864, type: !1726)
!5097 = !DILocalVariable(name: "frame", arg: 8, scope: !5088, file: !3, line: 1865, type: !296)
!5098 = !DILocation(line: 1861, column: 56, scope: !5088)
!5099 = !DILocation(line: 1862, column: 40, scope: !5088)
!5100 = !DILocation(line: 1862, column: 52, scope: !5088)
!5101 = !DILocation(line: 1863, column: 40, scope: !5088)
!5102 = !DILocation(line: 1863, column: 57, scope: !5088)
!5103 = !DILocation(line: 1863, column: 70, scope: !5088)
!5104 = !DILocation(line: 1864, column: 52, scope: !5088)
!5105 = !DILocation(line: 1865, column: 38, scope: !5088)
!5106 = !DILocation(line: 1867, column: 56, scope: !5088)
!5107 = !DILocation(line: 1867, column: 62, scope: !5088)
!5108 = !DILocation(line: 1867, column: 67, scope: !5088)
!5109 = !DILocation(line: 1867, column: 79, scope: !5088)
!5110 = !DILocation(line: 1867, column: 89, scope: !5088)
!5111 = !DILocation(line: 1867, column: 98, scope: !5088)
!5112 = !DILocation(line: 1867, column: 105, scope: !5088)
!5113 = !DILocation(line: 1867, column: 119, scope: !5088)
!5114 = !DILocation(line: 1867, column: 12, scope: !5088)
!5115 = !DILocation(line: 1867, column: 5, scope: !5088)
!5116 = distinct !DISubprogram(name: "ZSTD_decompressSequencesSplitLitBuffer_default", scope: !3, file: !3, line: 1637, type: !1947, scopeLine: 1642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5117)
!5117 = !{!5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125}
!5118 = !DILocalVariable(name: "dctx", arg: 1, scope: !5116, file: !3, line: 1637, type: !392)
!5119 = !DILocalVariable(name: "dst", arg: 2, scope: !5116, file: !3, line: 1638, type: !139)
!5120 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !5116, file: !3, line: 1638, type: !121)
!5121 = !DILocalVariable(name: "seqStart", arg: 4, scope: !5116, file: !3, line: 1639, type: !158)
!5122 = !DILocalVariable(name: "seqSize", arg: 5, scope: !5116, file: !3, line: 1639, type: !121)
!5123 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !5116, file: !3, line: 1639, type: !69)
!5124 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !5116, file: !3, line: 1640, type: !1726)
!5125 = !DILocalVariable(name: "frame", arg: 8, scope: !5116, file: !3, line: 1641, type: !296)
!5126 = !DILocation(line: 1637, column: 59, scope: !5116)
!5127 = !DILocation(line: 1638, column: 54, scope: !5116)
!5128 = !DILocation(line: 1638, column: 66, scope: !5116)
!5129 = !DILocation(line: 1639, column: 54, scope: !5116)
!5130 = !DILocation(line: 1639, column: 71, scope: !5116)
!5131 = !DILocation(line: 1639, column: 84, scope: !5116)
!5132 = !DILocation(line: 1640, column: 66, scope: !5116)
!5133 = !DILocation(line: 1641, column: 52, scope: !5116)
!5134 = !DILocation(line: 1643, column: 56, scope: !5116)
!5135 = !DILocation(line: 1643, column: 62, scope: !5116)
!5136 = !DILocation(line: 1643, column: 67, scope: !5116)
!5137 = !DILocation(line: 1643, column: 79, scope: !5116)
!5138 = !DILocation(line: 1643, column: 89, scope: !5116)
!5139 = !DILocation(line: 1643, column: 98, scope: !5116)
!5140 = !DILocation(line: 1643, column: 105, scope: !5116)
!5141 = !DILocation(line: 1643, column: 119, scope: !5116)
!5142 = !DILocation(line: 1643, column: 12, scope: !5116)
!5143 = !DILocation(line: 1643, column: 5, scope: !5116)
!5144 = distinct !DISubprogram(name: "ZSTD_decompressSequences_bodySplitLitBuffer", scope: !3, file: !3, line: 1322, type: !1947, scopeLine: 1327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5145)
!5145 = !{!5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5167, !5169, !5171, !5175, !5178, !5180, !5186, !5187, !5189, !5192}
!5146 = !DILocalVariable(name: "dctx", arg: 1, scope: !5144, file: !3, line: 1322, type: !392)
!5147 = !DILocalVariable(name: "dst", arg: 2, scope: !5144, file: !3, line: 1323, type: !139)
!5148 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !5144, file: !3, line: 1323, type: !121)
!5149 = !DILocalVariable(name: "seqStart", arg: 4, scope: !5144, file: !3, line: 1324, type: !158)
!5150 = !DILocalVariable(name: "seqSize", arg: 5, scope: !5144, file: !3, line: 1324, type: !121)
!5151 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !5144, file: !3, line: 1324, type: !69)
!5152 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !5144, file: !3, line: 1325, type: !1726)
!5153 = !DILocalVariable(name: "frame", arg: 8, scope: !5144, file: !3, line: 1326, type: !296)
!5154 = !DILocalVariable(name: "ip", scope: !5144, file: !3, line: 1328, type: !128)
!5155 = !DILocalVariable(name: "iend", scope: !5144, file: !3, line: 1329, type: !566)
!5156 = !DILocalVariable(name: "ostart", scope: !5144, file: !3, line: 1330, type: !2719)
!5157 = !DILocalVariable(name: "oend", scope: !5144, file: !3, line: 1331, type: !2719)
!5158 = !DILocalVariable(name: "op", scope: !5144, file: !3, line: 1332, type: !166)
!5159 = !DILocalVariable(name: "litPtr", scope: !5144, file: !3, line: 1333, type: !128)
!5160 = !DILocalVariable(name: "litBufferEnd", scope: !5144, file: !3, line: 1334, type: !128)
!5161 = !DILocalVariable(name: "prefixStart", scope: !5144, file: !3, line: 1335, type: !566)
!5162 = !DILocalVariable(name: "vBase", scope: !5144, file: !3, line: 1336, type: !566)
!5163 = !DILocalVariable(name: "dictEnd", scope: !5144, file: !3, line: 1337, type: !566)
!5164 = !DILocalVariable(name: "seqState", scope: !5165, file: !3, line: 1343, type: !2739)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 1342, column: 16)
!5166 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 1342, column: 9)
!5167 = !DILocalVariable(name: "i", scope: !5168, file: !3, line: 1345, type: !144)
!5168 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 1345, column: 9)
!5169 = !DILocalVariable(name: "sequence", scope: !5170, file: !3, line: 1361, type: !2731)
!5170 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 1360, column: 9)
!5171 = !DILocalVariable(name: "oneSeqSize", scope: !5172, file: !3, line: 1424, type: !237)
!5172 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 1423, column: 73)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 1423, column: 13)
!5174 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 1423, column: 13)
!5175 = !DILocalVariable(name: "leftoverLit", scope: !5176, file: !3, line: 1441, type: !237)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 1440, column: 28)
!5177 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 1440, column: 17)
!5178 = !DILocalVariable(name: "oneSeqSize", scope: !5179, file: !3, line: 1453, type: !237)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 1452, column: 17)
!5180 = !DILocalVariable(name: "sequence", scope: !5181, file: !3, line: 1489, type: !2769)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 1488, column: 24)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 1488, column: 13)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 1488, column: 13)
!5184 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 1469, column: 9)
!5185 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 1468, column: 13)
!5186 = !DILocalVariable(name: "oneSeqSize", scope: !5181, file: !3, line: 1490, type: !237)
!5187 = !DILocalVariable(name: "i", scope: !5188, file: !3, line: 1510, type: !144)
!5188 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 1510, column: 9)
!5189 = !DILocalVariable(name: "lastLLSize", scope: !5190, file: !3, line: 1516, type: !237)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 1515, column: 5)
!5191 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 1514, column: 9)
!5192 = !DILocalVariable(name: "lastLLSize", scope: !5193, file: !3, line: 1526, type: !237)
!5193 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 1526, column: 5)
!5194 = !DILocation(line: 1322, column: 57, scope: !5144)
!5195 = !DILocation(line: 1323, column: 38, scope: !5144)
!5196 = !DILocation(line: 1323, column: 50, scope: !5144)
!5197 = !DILocation(line: 1324, column: 38, scope: !5144)
!5198 = !DILocation(line: 1324, column: 55, scope: !5144)
!5199 = !DILocation(line: 1324, column: 68, scope: !5144)
!5200 = !DILocation(line: 1325, column: 50, scope: !5144)
!5201 = !DILocation(line: 1326, column: 36, scope: !5144)
!5202 = !DILocation(line: 1328, column: 5, scope: !5144)
!5203 = !DILocation(line: 1328, column: 17, scope: !5144)
!5204 = !DILocation(line: 1328, column: 35, scope: !5144)
!5205 = !DILocation(line: 1329, column: 5, scope: !5144)
!5206 = !DILocation(line: 1329, column: 23, scope: !5144)
!5207 = !DILocation(line: 1329, column: 30, scope: !5144)
!5208 = !DILocation(line: 1329, column: 35, scope: !5144)
!5209 = !DILocation(line: 1329, column: 33, scope: !5144)
!5210 = !DILocation(line: 1330, column: 5, scope: !5144)
!5211 = !DILocation(line: 1330, column: 17, scope: !5144)
!5212 = !DILocation(line: 1330, column: 33, scope: !5144)
!5213 = !DILocation(line: 1331, column: 5, scope: !5144)
!5214 = !DILocation(line: 1331, column: 17, scope: !5144)
!5215 = !DILocation(line: 1331, column: 24, scope: !5144)
!5216 = !DILocation(line: 1331, column: 33, scope: !5144)
!5217 = !DILocation(line: 1331, column: 31, scope: !5144)
!5218 = !DILocation(line: 1332, column: 5, scope: !5144)
!5219 = !DILocation(line: 1332, column: 11, scope: !5144)
!5220 = !DILocation(line: 1332, column: 16, scope: !5144)
!5221 = !DILocation(line: 1333, column: 5, scope: !5144)
!5222 = !DILocation(line: 1333, column: 17, scope: !5144)
!5223 = !DILocation(line: 1333, column: 26, scope: !5144)
!5224 = !DILocation(line: 1333, column: 32, scope: !5144)
!5225 = !DILocation(line: 1334, column: 5, scope: !5144)
!5226 = !DILocation(line: 1334, column: 17, scope: !5144)
!5227 = !DILocation(line: 1334, column: 32, scope: !5144)
!5228 = !DILocation(line: 1334, column: 38, scope: !5144)
!5229 = !DILocation(line: 1335, column: 5, scope: !5144)
!5230 = !DILocation(line: 1335, column: 23, scope: !5144)
!5231 = !DILocation(line: 1335, column: 52, scope: !5144)
!5232 = !DILocation(line: 1335, column: 58, scope: !5144)
!5233 = !DILocation(line: 1336, column: 5, scope: !5144)
!5234 = !DILocation(line: 1336, column: 23, scope: !5144)
!5235 = !DILocation(line: 1336, column: 46, scope: !5144)
!5236 = !DILocation(line: 1336, column: 52, scope: !5144)
!5237 = !DILocation(line: 1337, column: 5, scope: !5144)
!5238 = !DILocation(line: 1337, column: 23, scope: !5144)
!5239 = !DILocation(line: 1337, column: 48, scope: !5144)
!5240 = !DILocation(line: 1337, column: 54, scope: !5144)
!5241 = !DILocation(line: 1339, column: 11, scope: !5144)
!5242 = !DILocation(line: 1342, column: 9, scope: !5166)
!5243 = !DILocation(line: 1342, column: 9, scope: !5144)
!5244 = !DILocation(line: 1343, column: 9, scope: !5165)
!5245 = !DILocation(line: 1343, column: 20, scope: !5165)
!5246 = !DILocation(line: 1344, column: 9, scope: !5165)
!5247 = !DILocation(line: 1344, column: 15, scope: !5165)
!5248 = !DILocation(line: 1344, column: 26, scope: !5165)
!5249 = !DILocation(line: 1345, column: 11, scope: !5168)
!5250 = !DILocation(line: 1345, column: 15, scope: !5168)
!5251 = !DILocation(line: 1345, column: 24, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 1345, column: 18)
!5253 = !DILocation(line: 1345, column: 23, scope: !5252)
!5254 = !DILocation(line: 1345, column: 28, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 1345, column: 18)
!5256 = !DILocation(line: 1345, column: 29, scope: !5255)
!5257 = !DILocation(line: 1345, column: 18, scope: !5252)
!5258 = !DILocation(line: 1345, column: 74, scope: !5255)
!5259 = !DILocation(line: 1345, column: 80, scope: !5255)
!5260 = !DILocation(line: 1345, column: 88, scope: !5255)
!5261 = !DILocation(line: 1345, column: 92, scope: !5255)
!5262 = !DILocation(line: 1345, column: 58, scope: !5255)
!5263 = !DILocation(line: 1345, column: 69, scope: !5255)
!5264 = !DILocation(line: 1345, column: 49, scope: !5255)
!5265 = !DILocation(line: 1345, column: 72, scope: !5255)
!5266 = !DILocation(line: 1345, column: 45, scope: !5255)
!5267 = !DILocation(line: 1345, column: 18, scope: !5255)
!5268 = distinct !{!5268, !5257, !5269, !731, !732}
!5269 = !DILocation(line: 1345, column: 93, scope: !5252)
!5270 = !DILocation(line: 1345, column: 96, scope: !5165)
!5271 = !DILocation(line: 1346, column: 9, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 1346, column: 9)
!5273 = !DILocation(line: 1346, column: 9, scope: !5165)
!5274 = !DILocation(line: 1346, column: 9, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 1346, column: 9)
!5276 = !DILocation(line: 1349, column: 37, scope: !5165)
!5277 = !DILocation(line: 1349, column: 56, scope: !5165)
!5278 = !DILocation(line: 1349, column: 65, scope: !5165)
!5279 = !DILocation(line: 1349, column: 71, scope: !5165)
!5280 = !DILocation(line: 1349, column: 9, scope: !5165)
!5281 = !DILocation(line: 1350, column: 37, scope: !5165)
!5282 = !DILocation(line: 1350, column: 58, scope: !5165)
!5283 = !DILocation(line: 1350, column: 67, scope: !5165)
!5284 = !DILocation(line: 1350, column: 73, scope: !5165)
!5285 = !DILocation(line: 1350, column: 9, scope: !5165)
!5286 = !DILocation(line: 1351, column: 37, scope: !5165)
!5287 = !DILocation(line: 1351, column: 56, scope: !5165)
!5288 = !DILocation(line: 1351, column: 65, scope: !5165)
!5289 = !DILocation(line: 1351, column: 71, scope: !5165)
!5290 = !DILocation(line: 1351, column: 9, scope: !5165)
!5291 = !DILocation(line: 1361, column: 13, scope: !5170)
!5292 = !DILocation(line: 1361, column: 19, scope: !5170)
!5293 = !DILocation(line: 1361, column: 61, scope: !5170)
!5294 = !DILocation(line: 1361, column: 30, scope: !5170)
!5295 = !DILocation(line: 1407, column: 13, scope: !5170)
!5296 = !{i64 62895}
!5297 = !DILocation(line: 1423, column: 13, scope: !5170)
!5298 = !DILocation(line: 1423, column: 20, scope: !5173)
!5299 = !DILocation(line: 1423, column: 38, scope: !5173)
!5300 = !DILocation(line: 1423, column: 27, scope: !5173)
!5301 = !DILocation(line: 1423, column: 51, scope: !5173)
!5302 = !DILocation(line: 1423, column: 57, scope: !5173)
!5303 = !DILocation(line: 1423, column: 48, scope: !5173)
!5304 = !DILocation(line: 1423, column: 13, scope: !5174)
!5305 = !DILocation(line: 1424, column: 17, scope: !5172)
!5306 = !DILocation(line: 1424, column: 30, scope: !5172)
!5307 = !DILocation(line: 1424, column: 75, scope: !5172)
!5308 = !DILocation(line: 1424, column: 79, scope: !5172)
!5309 = !DILocation(line: 1424, column: 85, scope: !5172)
!5310 = !DILocation(line: 1424, column: 103, scope: !5172)
!5311 = !DILocation(line: 1424, column: 92, scope: !5172)
!5312 = !DILocation(line: 1424, column: 113, scope: !5172)
!5313 = !DILocation(line: 1424, column: 155, scope: !5172)
!5314 = !DILocation(line: 1424, column: 169, scope: !5172)
!5315 = !DILocation(line: 1424, column: 182, scope: !5172)
!5316 = !DILocation(line: 1424, column: 189, scope: !5172)
!5317 = !DILocation(line: 1424, column: 43, scope: !5172)
!5318 = !DILocation(line: 1429, column: 21, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 1429, column: 21)
!5320 = !DILocation(line: 1429, column: 21, scope: !5172)
!5321 = !DILocation(line: 1430, column: 28, scope: !5319)
!5322 = !DILocation(line: 1430, column: 21, scope: !5319)
!5323 = !DILocation(line: 1432, column: 23, scope: !5172)
!5324 = !DILocation(line: 1432, column: 20, scope: !5172)
!5325 = !DILocation(line: 1433, column: 21, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 1433, column: 21)
!5327 = !DILocation(line: 1433, column: 21, scope: !5172)
!5328 = !DILocation(line: 1434, column: 21, scope: !5326)
!5329 = !DILocation(line: 1435, column: 46, scope: !5172)
!5330 = !DILocation(line: 1435, column: 17, scope: !5172)
!5331 = !DILocation(line: 1436, column: 28, scope: !5172)
!5332 = !DILocation(line: 1436, column: 59, scope: !5172)
!5333 = !DILocation(line: 1437, column: 13, scope: !5173)
!5334 = !DILocation(line: 1423, column: 13, scope: !5173)
!5335 = distinct !{!5335, !5304, !5336, !731, !732}
!5336 = !DILocation(line: 1437, column: 13, scope: !5174)
!5337 = !DILocation(line: 1440, column: 17, scope: !5177)
!5338 = !DILocation(line: 1440, column: 23, scope: !5177)
!5339 = !DILocation(line: 1440, column: 17, scope: !5170)
!5340 = !DILocation(line: 1441, column: 17, scope: !5176)
!5341 = !DILocation(line: 1441, column: 30, scope: !5176)
!5342 = !DILocation(line: 1441, column: 44, scope: !5176)
!5343 = !DILocation(line: 1441, column: 50, scope: !5176)
!5344 = !DILocation(line: 1441, column: 65, scope: !5176)
!5345 = !DILocation(line: 1441, column: 63, scope: !5176)
!5346 = !DILocation(line: 1442, column: 21, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 1442, column: 21)
!5348 = !DILocation(line: 1442, column: 21, scope: !5176)
!5349 = !DILocation(line: 1444, column: 21, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 1444, column: 21)
!5351 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 1443, column: 17)
!5352 = !DILocation(line: 1444, column: 21, scope: !5351)
!5353 = !DILocation(line: 1444, column: 21, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 1444, column: 21)
!5355 = !DILocation(line: 1445, column: 47, scope: !5351)
!5356 = !DILocation(line: 1445, column: 51, scope: !5351)
!5357 = !DILocation(line: 1445, column: 59, scope: !5351)
!5358 = !DILocation(line: 1445, column: 21, scope: !5351)
!5359 = !DILocation(line: 1446, column: 43, scope: !5351)
!5360 = !DILocation(line: 1446, column: 30, scope: !5351)
!5361 = !DILocation(line: 1446, column: 40, scope: !5351)
!5362 = !DILocation(line: 1447, column: 27, scope: !5351)
!5363 = !DILocation(line: 1447, column: 24, scope: !5351)
!5364 = !DILocation(line: 1448, column: 17, scope: !5351)
!5365 = !DILocation(line: 1449, column: 26, scope: !5176)
!5366 = !DILocation(line: 1449, column: 32, scope: !5176)
!5367 = !DILocation(line: 1449, column: 24, scope: !5176)
!5368 = !DILocation(line: 1450, column: 32, scope: !5176)
!5369 = !DILocation(line: 1450, column: 38, scope: !5176)
!5370 = !DILocation(line: 1450, column: 53, scope: !5176)
!5371 = !DILocation(line: 1450, column: 30, scope: !5176)
!5372 = !DILocation(line: 1451, column: 17, scope: !5176)
!5373 = !DILocation(line: 1451, column: 23, scope: !5176)
!5374 = !DILocation(line: 1451, column: 41, scope: !5176)
!5375 = !DILocation(line: 1453, column: 21, scope: !5179)
!5376 = !DILocation(line: 1453, column: 34, scope: !5179)
!5377 = !DILocation(line: 1453, column: 65, scope: !5179)
!5378 = !DILocation(line: 1453, column: 69, scope: !5179)
!5379 = !DILocation(line: 1453, column: 94, scope: !5179)
!5380 = !DILocation(line: 1453, column: 108, scope: !5179)
!5381 = !DILocation(line: 1453, column: 121, scope: !5179)
!5382 = !DILocation(line: 1453, column: 128, scope: !5179)
!5383 = !DILocation(line: 1453, column: 47, scope: !5179)
!5384 = !DILocation(line: 1458, column: 25, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 1458, column: 25)
!5386 = !DILocation(line: 1458, column: 25, scope: !5179)
!5387 = !DILocation(line: 1459, column: 32, scope: !5385)
!5388 = !DILocation(line: 1459, column: 25, scope: !5385)
!5389 = !DILocation(line: 1461, column: 27, scope: !5179)
!5390 = !DILocation(line: 1461, column: 24, scope: !5179)
!5391 = !DILocation(line: 1462, column: 25, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 1462, column: 25)
!5393 = !DILocation(line: 1462, column: 25, scope: !5179)
!5394 = !DILocation(line: 1463, column: 54, scope: !5392)
!5395 = !DILocation(line: 1463, column: 25, scope: !5392)
!5396 = !DILocation(line: 1464, column: 17, scope: !5176)
!5397 = !DILocation(line: 1465, column: 13, scope: !5177)
!5398 = !DILocation(line: 1465, column: 13, scope: !5176)
!5399 = !DILocation(line: 1466, column: 9, scope: !5165)
!5400 = !DILocation(line: 1468, column: 13, scope: !5185)
!5401 = !DILocation(line: 1468, column: 19, scope: !5185)
!5402 = !DILocation(line: 1468, column: 13, scope: !5165)
!5403 = !DILocation(line: 1472, column: 13, scope: !5184)
!5404 = !{i64 66045}
!5405 = !DILocation(line: 1473, column: 13, scope: !5184)
!5406 = !{i64 66080}
!5407 = !DILocation(line: 1476, column: 13, scope: !5184)
!5408 = !{i64 66208}
!5409 = !DILocation(line: 1477, column: 13, scope: !5184)
!5410 = !{i64 66243}
!5411 = !DILocation(line: 1478, column: 13, scope: !5184)
!5412 = !{i64 66271}
!5413 = !DILocation(line: 1488, column: 13, scope: !5184)
!5414 = !DILocation(line: 1489, column: 17, scope: !5181)
!5415 = !DILocation(line: 1489, column: 29, scope: !5181)
!5416 = !DILocation(line: 1489, column: 71, scope: !5181)
!5417 = !DILocation(line: 1489, column: 40, scope: !5181)
!5418 = !DILocation(line: 1490, column: 17, scope: !5181)
!5419 = !DILocation(line: 1490, column: 30, scope: !5181)
!5420 = !DILocation(line: 1490, column: 61, scope: !5181)
!5421 = !DILocation(line: 1490, column: 65, scope: !5181)
!5422 = !DILocation(line: 1490, column: 90, scope: !5181)
!5423 = !DILocation(line: 1490, column: 104, scope: !5181)
!5424 = !DILocation(line: 1490, column: 117, scope: !5181)
!5425 = !DILocation(line: 1490, column: 124, scope: !5181)
!5426 = !DILocation(line: 1490, column: 43, scope: !5181)
!5427 = !DILocation(line: 1495, column: 21, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 1495, column: 21)
!5429 = !DILocation(line: 1495, column: 21, scope: !5181)
!5430 = !DILocation(line: 1496, column: 28, scope: !5428)
!5431 = !DILocation(line: 1496, column: 21, scope: !5428)
!5432 = !DILocation(line: 1498, column: 23, scope: !5181)
!5433 = !DILocation(line: 1498, column: 20, scope: !5181)
!5434 = !DILocation(line: 1499, column: 21, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 1499, column: 21)
!5436 = !DILocation(line: 1499, column: 21, scope: !5181)
!5437 = !DILocation(line: 1500, column: 21, scope: !5435)
!5438 = !DILocation(line: 1501, column: 46, scope: !5181)
!5439 = !DILocation(line: 1501, column: 17, scope: !5181)
!5440 = !DILocation(line: 1502, column: 13, scope: !5182)
!5441 = !DILocation(line: 1488, column: 13, scope: !5182)
!5442 = distinct !{!5442, !5443, !5444, !732}
!5443 = !DILocation(line: 1488, column: 13, scope: !5183)
!5444 = !DILocation(line: 1502, column: 13, scope: !5183)
!5445 = !DILocation(line: 1503, column: 9, scope: !5184)
!5446 = !DILocation(line: 1507, column: 9, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 1507, column: 9)
!5448 = !DILocation(line: 1507, column: 9, scope: !5165)
!5449 = !DILocation(line: 1507, column: 9, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 1507, column: 9)
!5451 = !DILocation(line: 1508, column: 9, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 1508, column: 9)
!5453 = !DILocation(line: 1508, column: 9, scope: !5165)
!5454 = !DILocation(line: 1508, column: 9, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 1508, column: 9)
!5456 = !DILocation(line: 1510, column: 11, scope: !5188)
!5457 = !DILocation(line: 1510, column: 15, scope: !5188)
!5458 = !DILocation(line: 1510, column: 24, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 1510, column: 18)
!5460 = !DILocation(line: 1510, column: 23, scope: !5459)
!5461 = !DILocation(line: 1510, column: 28, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 1510, column: 18)
!5463 = !DILocation(line: 1510, column: 29, scope: !5462)
!5464 = !DILocation(line: 1510, column: 18, scope: !5459)
!5465 = !DILocation(line: 1510, column: 87, scope: !5462)
!5466 = !DILocation(line: 1510, column: 98, scope: !5462)
!5467 = !DILocation(line: 1510, column: 78, scope: !5462)
!5468 = !DILocation(line: 1510, column: 72, scope: !5462)
!5469 = !DILocation(line: 1510, column: 49, scope: !5462)
!5470 = !DILocation(line: 1510, column: 55, scope: !5462)
!5471 = !DILocation(line: 1510, column: 63, scope: !5462)
!5472 = !DILocation(line: 1510, column: 67, scope: !5462)
!5473 = !DILocation(line: 1510, column: 70, scope: !5462)
!5474 = !DILocation(line: 1510, column: 45, scope: !5462)
!5475 = !DILocation(line: 1510, column: 18, scope: !5462)
!5476 = distinct !{!5476, !5464, !5477, !731, !732}
!5477 = !DILocation(line: 1510, column: 100, scope: !5459)
!5478 = !DILocation(line: 1510, column: 103, scope: !5165)
!5479 = !DILocation(line: 1511, column: 5, scope: !5166)
!5480 = !DILocation(line: 1511, column: 5, scope: !5165)
!5481 = !DILocation(line: 1514, column: 9, scope: !5191)
!5482 = !DILocation(line: 1514, column: 15, scope: !5191)
!5483 = !DILocation(line: 1514, column: 33, scope: !5191)
!5484 = !DILocation(line: 1514, column: 9, scope: !5144)
!5485 = !DILocation(line: 1516, column: 9, scope: !5190)
!5486 = !DILocation(line: 1516, column: 22, scope: !5190)
!5487 = !DILocation(line: 1516, column: 35, scope: !5190)
!5488 = !DILocation(line: 1516, column: 50, scope: !5190)
!5489 = !DILocation(line: 1516, column: 48, scope: !5190)
!5490 = !DILocation(line: 1517, column: 9, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 1517, column: 9)
!5492 = !DILocation(line: 1517, column: 9, scope: !5190)
!5493 = !DILocation(line: 1517, column: 9, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 1517, column: 9)
!5495 = !DILocation(line: 1518, column: 13, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 1518, column: 13)
!5497 = !DILocation(line: 1518, column: 16, scope: !5496)
!5498 = !DILocation(line: 1518, column: 13, scope: !5190)
!5499 = !DILocation(line: 1519, column: 13, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 1518, column: 25)
!5501 = !DILocation(line: 1520, column: 19, scope: !5500)
!5502 = !DILocation(line: 1520, column: 16, scope: !5500)
!5503 = !DILocation(line: 1521, column: 9, scope: !5500)
!5504 = !DILocation(line: 1522, column: 18, scope: !5190)
!5505 = !DILocation(line: 1522, column: 24, scope: !5190)
!5506 = !DILocation(line: 1522, column: 16, scope: !5190)
!5507 = !DILocation(line: 1523, column: 24, scope: !5190)
!5508 = !DILocation(line: 1523, column: 30, scope: !5190)
!5509 = !DILocation(line: 1523, column: 45, scope: !5190)
!5510 = !DILocation(line: 1523, column: 22, scope: !5190)
!5511 = !DILocation(line: 1524, column: 9, scope: !5190)
!5512 = !DILocation(line: 1524, column: 15, scope: !5190)
!5513 = !DILocation(line: 1524, column: 33, scope: !5190)
!5514 = !DILocation(line: 1525, column: 5, scope: !5191)
!5515 = !DILocation(line: 1525, column: 5, scope: !5190)
!5516 = !DILocation(line: 1526, column: 9, scope: !5193)
!5517 = !DILocation(line: 1526, column: 22, scope: !5193)
!5518 = !DILocation(line: 1526, column: 35, scope: !5193)
!5519 = !DILocation(line: 1526, column: 50, scope: !5193)
!5520 = !DILocation(line: 1526, column: 48, scope: !5193)
!5521 = !DILocation(line: 1527, column: 9, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 1527, column: 9)
!5523 = !DILocation(line: 1527, column: 9, scope: !5193)
!5524 = !DILocation(line: 1527, column: 9, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 1527, column: 9)
!5526 = !DILocation(line: 1528, column: 13, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 1528, column: 13)
!5528 = !DILocation(line: 1528, column: 16, scope: !5527)
!5529 = !DILocation(line: 1528, column: 13, scope: !5193)
!5530 = !DILocation(line: 1529, column: 13, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 1528, column: 25)
!5532 = !DILocation(line: 1530, column: 19, scope: !5531)
!5533 = !DILocation(line: 1530, column: 16, scope: !5531)
!5534 = !DILocation(line: 1531, column: 9, scope: !5531)
!5535 = !DILocation(line: 1532, column: 5, scope: !5144)
!5536 = !DILocation(line: 1534, column: 12, scope: !5144)
!5537 = !DILocation(line: 1534, column: 15, scope: !5144)
!5538 = !DILocation(line: 1534, column: 14, scope: !5144)
!5539 = !DILocation(line: 1534, column: 5, scope: !5144)
!5540 = !DILocation(line: 1535, column: 1, scope: !5144)
!5541 = distinct !DISubprogram(name: "ZSTD_decompressSequences_bmi2", scope: !3, file: !3, line: 1851, type: !1947, scopeLine: 1856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5542)
!5542 = !{!5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550}
!5543 = !DILocalVariable(name: "dctx", arg: 1, scope: !5541, file: !3, line: 1851, type: !392)
!5544 = !DILocalVariable(name: "dst", arg: 2, scope: !5541, file: !3, line: 1852, type: !139)
!5545 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !5541, file: !3, line: 1852, type: !121)
!5546 = !DILocalVariable(name: "seqStart", arg: 4, scope: !5541, file: !3, line: 1853, type: !158)
!5547 = !DILocalVariable(name: "seqSize", arg: 5, scope: !5541, file: !3, line: 1853, type: !121)
!5548 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !5541, file: !3, line: 1853, type: !69)
!5549 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !5541, file: !3, line: 1854, type: !1726)
!5550 = !DILocalVariable(name: "frame", arg: 8, scope: !5541, file: !3, line: 1855, type: !296)
!5551 = !DILocation(line: 1851, column: 42, scope: !5541)
!5552 = !DILocation(line: 1852, column: 40, scope: !5541)
!5553 = !DILocation(line: 1852, column: 52, scope: !5541)
!5554 = !DILocation(line: 1853, column: 40, scope: !5541)
!5555 = !DILocation(line: 1853, column: 57, scope: !5541)
!5556 = !DILocation(line: 1853, column: 70, scope: !5541)
!5557 = !DILocation(line: 1854, column: 52, scope: !5541)
!5558 = !DILocation(line: 1855, column: 38, scope: !5541)
!5559 = !DILocation(line: 1857, column: 42, scope: !5541)
!5560 = !DILocation(line: 1857, column: 48, scope: !5541)
!5561 = !DILocation(line: 1857, column: 53, scope: !5541)
!5562 = !DILocation(line: 1857, column: 65, scope: !5541)
!5563 = !DILocation(line: 1857, column: 75, scope: !5541)
!5564 = !DILocation(line: 1857, column: 84, scope: !5541)
!5565 = !DILocation(line: 1857, column: 91, scope: !5541)
!5566 = !DILocation(line: 1857, column: 105, scope: !5541)
!5567 = !DILocation(line: 1857, column: 12, scope: !5541)
!5568 = !DILocation(line: 1857, column: 5, scope: !5541)
!5569 = distinct !DISubprogram(name: "ZSTD_decompressSequences_default", scope: !3, file: !3, line: 1627, type: !1947, scopeLine: 1632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5570)
!5570 = !{!5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578}
!5571 = !DILocalVariable(name: "dctx", arg: 1, scope: !5569, file: !3, line: 1627, type: !392)
!5572 = !DILocalVariable(name: "dst", arg: 2, scope: !5569, file: !3, line: 1628, type: !139)
!5573 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !5569, file: !3, line: 1628, type: !121)
!5574 = !DILocalVariable(name: "seqStart", arg: 4, scope: !5569, file: !3, line: 1629, type: !158)
!5575 = !DILocalVariable(name: "seqSize", arg: 5, scope: !5569, file: !3, line: 1629, type: !121)
!5576 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !5569, file: !3, line: 1629, type: !69)
!5577 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !5569, file: !3, line: 1630, type: !1726)
!5578 = !DILocalVariable(name: "frame", arg: 8, scope: !5569, file: !3, line: 1631, type: !296)
!5579 = !DILocation(line: 1627, column: 45, scope: !5569)
!5580 = !DILocation(line: 1628, column: 40, scope: !5569)
!5581 = !DILocation(line: 1628, column: 52, scope: !5569)
!5582 = !DILocation(line: 1629, column: 40, scope: !5569)
!5583 = !DILocation(line: 1629, column: 57, scope: !5569)
!5584 = !DILocation(line: 1629, column: 70, scope: !5569)
!5585 = !DILocation(line: 1630, column: 52, scope: !5569)
!5586 = !DILocation(line: 1631, column: 38, scope: !5569)
!5587 = !DILocation(line: 1633, column: 42, scope: !5569)
!5588 = !DILocation(line: 1633, column: 48, scope: !5569)
!5589 = !DILocation(line: 1633, column: 53, scope: !5569)
!5590 = !DILocation(line: 1633, column: 65, scope: !5569)
!5591 = !DILocation(line: 1633, column: 75, scope: !5569)
!5592 = !DILocation(line: 1633, column: 84, scope: !5569)
!5593 = !DILocation(line: 1633, column: 91, scope: !5569)
!5594 = !DILocation(line: 1633, column: 105, scope: !5569)
!5595 = !DILocation(line: 1633, column: 12, scope: !5569)
!5596 = !DILocation(line: 1633, column: 5, scope: !5569)
!5597 = distinct !DISubprogram(name: "ZSTD_decompressSequences_body", scope: !3, file: !3, line: 1539, type: !1947, scopeLine: 1544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5598)
!5598 = !{!5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5620, !5622, !5626, !5627, !5629}
!5599 = !DILocalVariable(name: "dctx", arg: 1, scope: !5597, file: !3, line: 1539, type: !392)
!5600 = !DILocalVariable(name: "dst", arg: 2, scope: !5597, file: !3, line: 1540, type: !139)
!5601 = !DILocalVariable(name: "maxDstSize", arg: 3, scope: !5597, file: !3, line: 1540, type: !121)
!5602 = !DILocalVariable(name: "seqStart", arg: 4, scope: !5597, file: !3, line: 1541, type: !158)
!5603 = !DILocalVariable(name: "seqSize", arg: 5, scope: !5597, file: !3, line: 1541, type: !121)
!5604 = !DILocalVariable(name: "nbSeq", arg: 6, scope: !5597, file: !3, line: 1541, type: !69)
!5605 = !DILocalVariable(name: "isLongOffset", arg: 7, scope: !5597, file: !3, line: 1542, type: !1726)
!5606 = !DILocalVariable(name: "frame", arg: 8, scope: !5597, file: !3, line: 1543, type: !296)
!5607 = !DILocalVariable(name: "ip", scope: !5597, file: !3, line: 1545, type: !128)
!5608 = !DILocalVariable(name: "iend", scope: !5597, file: !3, line: 1546, type: !566)
!5609 = !DILocalVariable(name: "ostart", scope: !5597, file: !3, line: 1547, type: !2719)
!5610 = !DILocalVariable(name: "oend", scope: !5597, file: !3, line: 1548, type: !2719)
!5611 = !DILocalVariable(name: "op", scope: !5597, file: !3, line: 1549, type: !166)
!5612 = !DILocalVariable(name: "litPtr", scope: !5597, file: !3, line: 1550, type: !128)
!5613 = !DILocalVariable(name: "litEnd", scope: !5597, file: !3, line: 1551, type: !566)
!5614 = !DILocalVariable(name: "prefixStart", scope: !5597, file: !3, line: 1552, type: !566)
!5615 = !DILocalVariable(name: "vBase", scope: !5597, file: !3, line: 1553, type: !566)
!5616 = !DILocalVariable(name: "dictEnd", scope: !5597, file: !3, line: 1554, type: !566)
!5617 = !DILocalVariable(name: "seqState", scope: !5618, file: !3, line: 1560, type: !2739)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 1559, column: 16)
!5619 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 1559, column: 9)
!5620 = !DILocalVariable(name: "i", scope: !5621, file: !3, line: 1562, type: !144)
!5621 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 1562, column: 9)
!5622 = !DILocalVariable(name: "sequence", scope: !5623, file: !3, line: 1591, type: !2769)
!5623 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 1590, column: 21)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 1590, column: 9)
!5625 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 1590, column: 9)
!5626 = !DILocalVariable(name: "oneSeqSize", scope: !5623, file: !3, line: 1592, type: !237)
!5627 = !DILocalVariable(name: "i", scope: !5628, file: !3, line: 1611, type: !144)
!5628 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 1611, column: 9)
!5629 = !DILocalVariable(name: "lastLLSize", scope: !5630, file: !3, line: 1615, type: !237)
!5630 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 1615, column: 5)
!5631 = !DILocation(line: 1539, column: 42, scope: !5597)
!5632 = !DILocation(line: 1540, column: 11, scope: !5597)
!5633 = !DILocation(line: 1540, column: 23, scope: !5597)
!5634 = !DILocation(line: 1541, column: 17, scope: !5597)
!5635 = !DILocation(line: 1541, column: 34, scope: !5597)
!5636 = !DILocation(line: 1541, column: 47, scope: !5597)
!5637 = !DILocation(line: 1542, column: 29, scope: !5597)
!5638 = !DILocation(line: 1543, column: 15, scope: !5597)
!5639 = !DILocation(line: 1545, column: 5, scope: !5597)
!5640 = !DILocation(line: 1545, column: 17, scope: !5597)
!5641 = !DILocation(line: 1545, column: 35, scope: !5597)
!5642 = !DILocation(line: 1546, column: 5, scope: !5597)
!5643 = !DILocation(line: 1546, column: 23, scope: !5597)
!5644 = !DILocation(line: 1546, column: 30, scope: !5597)
!5645 = !DILocation(line: 1546, column: 35, scope: !5597)
!5646 = !DILocation(line: 1546, column: 33, scope: !5597)
!5647 = !DILocation(line: 1547, column: 5, scope: !5597)
!5648 = !DILocation(line: 1547, column: 17, scope: !5597)
!5649 = !DILocation(line: 1547, column: 33, scope: !5597)
!5650 = !DILocation(line: 1548, column: 5, scope: !5597)
!5651 = !DILocation(line: 1548, column: 17, scope: !5597)
!5652 = !DILocation(line: 1548, column: 24, scope: !5597)
!5653 = !DILocation(line: 1548, column: 30, scope: !5597)
!5654 = !DILocation(line: 1548, column: 48, scope: !5597)
!5655 = !DILocation(line: 1548, column: 69, scope: !5597)
!5656 = !DILocation(line: 1548, column: 78, scope: !5597)
!5657 = !DILocation(line: 1548, column: 76, scope: !5597)
!5658 = !DILocation(line: 1548, column: 91, scope: !5597)
!5659 = !DILocation(line: 1548, column: 97, scope: !5597)
!5660 = !DILocation(line: 1549, column: 5, scope: !5597)
!5661 = !DILocation(line: 1549, column: 11, scope: !5597)
!5662 = !DILocation(line: 1549, column: 16, scope: !5597)
!5663 = !DILocation(line: 1550, column: 5, scope: !5597)
!5664 = !DILocation(line: 1550, column: 17, scope: !5597)
!5665 = !DILocation(line: 1550, column: 26, scope: !5597)
!5666 = !DILocation(line: 1550, column: 32, scope: !5597)
!5667 = !DILocation(line: 1551, column: 5, scope: !5597)
!5668 = !DILocation(line: 1551, column: 23, scope: !5597)
!5669 = !DILocation(line: 1551, column: 32, scope: !5597)
!5670 = !DILocation(line: 1551, column: 41, scope: !5597)
!5671 = !DILocation(line: 1551, column: 47, scope: !5597)
!5672 = !DILocation(line: 1551, column: 39, scope: !5597)
!5673 = !DILocation(line: 1552, column: 5, scope: !5597)
!5674 = !DILocation(line: 1552, column: 23, scope: !5597)
!5675 = !DILocation(line: 1552, column: 51, scope: !5597)
!5676 = !DILocation(line: 1552, column: 57, scope: !5597)
!5677 = !DILocation(line: 1553, column: 5, scope: !5597)
!5678 = !DILocation(line: 1553, column: 23, scope: !5597)
!5679 = !DILocation(line: 1553, column: 45, scope: !5597)
!5680 = !DILocation(line: 1553, column: 51, scope: !5597)
!5681 = !DILocation(line: 1554, column: 5, scope: !5597)
!5682 = !DILocation(line: 1554, column: 23, scope: !5597)
!5683 = !DILocation(line: 1554, column: 47, scope: !5597)
!5684 = !DILocation(line: 1554, column: 53, scope: !5597)
!5685 = !DILocation(line: 1556, column: 11, scope: !5597)
!5686 = !DILocation(line: 1559, column: 9, scope: !5619)
!5687 = !DILocation(line: 1559, column: 9, scope: !5597)
!5688 = !DILocation(line: 1560, column: 9, scope: !5618)
!5689 = !DILocation(line: 1560, column: 20, scope: !5618)
!5690 = !DILocation(line: 1561, column: 9, scope: !5618)
!5691 = !DILocation(line: 1561, column: 15, scope: !5618)
!5692 = !DILocation(line: 1561, column: 26, scope: !5618)
!5693 = !DILocation(line: 1562, column: 11, scope: !5621)
!5694 = !DILocation(line: 1562, column: 15, scope: !5621)
!5695 = !DILocation(line: 1562, column: 25, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 1562, column: 18)
!5697 = !DILocation(line: 1562, column: 23, scope: !5696)
!5698 = !DILocation(line: 1562, column: 30, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 1562, column: 18)
!5700 = !DILocation(line: 1562, column: 32, scope: !5699)
!5701 = !DILocation(line: 1562, column: 18, scope: !5696)
!5702 = !DILocation(line: 1562, column: 78, scope: !5699)
!5703 = !DILocation(line: 1562, column: 84, scope: !5699)
!5704 = !DILocation(line: 1562, column: 92, scope: !5699)
!5705 = !DILocation(line: 1562, column: 96, scope: !5699)
!5706 = !DILocation(line: 1562, column: 62, scope: !5699)
!5707 = !DILocation(line: 1562, column: 73, scope: !5699)
!5708 = !DILocation(line: 1562, column: 53, scope: !5699)
!5709 = !DILocation(line: 1562, column: 76, scope: !5699)
!5710 = !DILocation(line: 1562, column: 49, scope: !5699)
!5711 = !DILocation(line: 1562, column: 18, scope: !5699)
!5712 = distinct !{!5712, !5701, !5713, !731, !732}
!5713 = !DILocation(line: 1562, column: 97, scope: !5696)
!5714 = !DILocation(line: 1562, column: 100, scope: !5618)
!5715 = !DILocation(line: 1563, column: 9, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 1563, column: 9)
!5717 = !DILocation(line: 1563, column: 9, scope: !5618)
!5718 = !DILocation(line: 1563, column: 9, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 1563, column: 9)
!5720 = !DILocation(line: 1566, column: 37, scope: !5618)
!5721 = !DILocation(line: 1566, column: 56, scope: !5618)
!5722 = !DILocation(line: 1566, column: 65, scope: !5618)
!5723 = !DILocation(line: 1566, column: 71, scope: !5618)
!5724 = !DILocation(line: 1566, column: 9, scope: !5618)
!5725 = !DILocation(line: 1567, column: 37, scope: !5618)
!5726 = !DILocation(line: 1567, column: 58, scope: !5618)
!5727 = !DILocation(line: 1567, column: 67, scope: !5618)
!5728 = !DILocation(line: 1567, column: 73, scope: !5618)
!5729 = !DILocation(line: 1567, column: 9, scope: !5618)
!5730 = !DILocation(line: 1568, column: 37, scope: !5618)
!5731 = !DILocation(line: 1568, column: 56, scope: !5618)
!5732 = !DILocation(line: 1568, column: 65, scope: !5618)
!5733 = !DILocation(line: 1568, column: 71, scope: !5618)
!5734 = !DILocation(line: 1568, column: 9, scope: !5618)
!5735 = !DILocation(line: 1577, column: 13, scope: !5618)
!5736 = !{i64 70385}
!5737 = !DILocation(line: 1578, column: 13, scope: !5618)
!5738 = !{i64 70420}
!5739 = !DILocation(line: 1584, column: 13, scope: !5618)
!5740 = !{i64 70574}
!5741 = !DILocation(line: 1585, column: 13, scope: !5618)
!5742 = !{i64 70609}
!5743 = !DILocation(line: 1586, column: 13, scope: !5618)
!5744 = !{i64 70637}
!5745 = !DILocation(line: 1590, column: 9, scope: !5618)
!5746 = !DILocation(line: 1591, column: 13, scope: !5623)
!5747 = !DILocation(line: 1591, column: 25, scope: !5623)
!5748 = !DILocation(line: 1591, column: 67, scope: !5623)
!5749 = !DILocation(line: 1591, column: 36, scope: !5623)
!5750 = !DILocation(line: 1592, column: 13, scope: !5623)
!5751 = !DILocation(line: 1592, column: 26, scope: !5623)
!5752 = !DILocation(line: 1592, column: 57, scope: !5623)
!5753 = !DILocation(line: 1592, column: 61, scope: !5623)
!5754 = !DILocation(line: 1592, column: 86, scope: !5623)
!5755 = !DILocation(line: 1592, column: 94, scope: !5623)
!5756 = !DILocation(line: 1592, column: 107, scope: !5623)
!5757 = !DILocation(line: 1592, column: 114, scope: !5623)
!5758 = !DILocation(line: 1592, column: 39, scope: !5623)
!5759 = !DILocation(line: 1597, column: 17, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 1597, column: 17)
!5761 = !DILocation(line: 1597, column: 17, scope: !5623)
!5762 = !DILocation(line: 1598, column: 24, scope: !5760)
!5763 = !DILocation(line: 1598, column: 17, scope: !5760)
!5764 = !DILocation(line: 1600, column: 19, scope: !5623)
!5765 = !DILocation(line: 1600, column: 16, scope: !5623)
!5766 = !DILocation(line: 1601, column: 17, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 1601, column: 17)
!5768 = !DILocation(line: 1601, column: 17, scope: !5623)
!5769 = !DILocation(line: 1602, column: 17, scope: !5767)
!5770 = !DILocation(line: 1603, column: 42, scope: !5623)
!5771 = !DILocation(line: 1603, column: 13, scope: !5623)
!5772 = !DILocation(line: 1604, column: 9, scope: !5624)
!5773 = !DILocation(line: 1590, column: 9, scope: !5624)
!5774 = distinct !{!5774, !5775, !5776, !732}
!5775 = !DILocation(line: 1590, column: 9, scope: !5625)
!5776 = !DILocation(line: 1604, column: 9, scope: !5625)
!5777 = !DILocation(line: 1608, column: 9, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 1608, column: 9)
!5779 = !DILocation(line: 1608, column: 9, scope: !5618)
!5780 = !DILocation(line: 1608, column: 9, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 1608, column: 9)
!5782 = !DILocation(line: 1609, column: 9, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 1609, column: 9)
!5784 = !DILocation(line: 1609, column: 9, scope: !5618)
!5785 = !DILocation(line: 1609, column: 9, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 1609, column: 9)
!5787 = !DILocation(line: 1611, column: 11, scope: !5628)
!5788 = !DILocation(line: 1611, column: 15, scope: !5628)
!5789 = !DILocation(line: 1611, column: 24, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 1611, column: 18)
!5791 = !DILocation(line: 1611, column: 23, scope: !5790)
!5792 = !DILocation(line: 1611, column: 28, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 1611, column: 18)
!5794 = !DILocation(line: 1611, column: 29, scope: !5793)
!5795 = !DILocation(line: 1611, column: 18, scope: !5790)
!5796 = !DILocation(line: 1611, column: 87, scope: !5793)
!5797 = !DILocation(line: 1611, column: 98, scope: !5793)
!5798 = !DILocation(line: 1611, column: 78, scope: !5793)
!5799 = !DILocation(line: 1611, column: 72, scope: !5793)
!5800 = !DILocation(line: 1611, column: 49, scope: !5793)
!5801 = !DILocation(line: 1611, column: 55, scope: !5793)
!5802 = !DILocation(line: 1611, column: 63, scope: !5793)
!5803 = !DILocation(line: 1611, column: 67, scope: !5793)
!5804 = !DILocation(line: 1611, column: 70, scope: !5793)
!5805 = !DILocation(line: 1611, column: 45, scope: !5793)
!5806 = !DILocation(line: 1611, column: 18, scope: !5793)
!5807 = distinct !{!5807, !5795, !5808, !731, !732}
!5808 = !DILocation(line: 1611, column: 100, scope: !5790)
!5809 = !DILocation(line: 1611, column: 103, scope: !5618)
!5810 = !DILocation(line: 1612, column: 5, scope: !5619)
!5811 = !DILocation(line: 1612, column: 5, scope: !5618)
!5812 = !DILocation(line: 1615, column: 9, scope: !5630)
!5813 = !DILocation(line: 1615, column: 22, scope: !5630)
!5814 = !DILocation(line: 1615, column: 35, scope: !5630)
!5815 = !DILocation(line: 1615, column: 44, scope: !5630)
!5816 = !DILocation(line: 1615, column: 42, scope: !5630)
!5817 = !DILocation(line: 1616, column: 9, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 1616, column: 9)
!5819 = !DILocation(line: 1616, column: 9, scope: !5630)
!5820 = !DILocation(line: 1616, column: 9, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 1616, column: 9)
!5822 = !DILocation(line: 1617, column: 13, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 1617, column: 13)
!5824 = !DILocation(line: 1617, column: 16, scope: !5823)
!5825 = !DILocation(line: 1617, column: 13, scope: !5630)
!5826 = !DILocation(line: 1618, column: 13, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 1617, column: 25)
!5828 = !DILocation(line: 1619, column: 19, scope: !5827)
!5829 = !DILocation(line: 1619, column: 16, scope: !5827)
!5830 = !DILocation(line: 1620, column: 9, scope: !5827)
!5831 = !DILocation(line: 1621, column: 5, scope: !5597)
!5832 = !DILocation(line: 1623, column: 12, scope: !5597)
!5833 = !DILocation(line: 1623, column: 15, scope: !5597)
!5834 = !DILocation(line: 1623, column: 14, scope: !5597)
!5835 = !DILocation(line: 1623, column: 5, scope: !5597)
!5836 = !DILocation(line: 1624, column: 1, scope: !5597)
