; ModuleID = 'lib/crc-ccitt.c'
source_filename = "lib/crc-ccitt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crc_ccitt_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad crc_ccitt_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crc_ccitt_false_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad crc_ccitt_false_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crc_ccitt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad crc_ccitt ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crc_ccitt_false: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad crc_ccitt_false ; .previous"

@crc_ccitt_table = hidden constant [256 x i16] [i16 0, i16 4489, i16 8978, i16 12955, i16 17956, i16 22445, i16 25910, i16 29887, i16 -29624, i16 -25151, i16 -20646, i16 -16685, i16 -13716, i16 -9243, i16 -5762, i16 -1801, i16 4225, i16 264, i16 13203, i16 8730, i16 22181, i16 18220, i16 30135, i16 25662, i16 -25399, i16 -29376, i16 -16421, i16 -20910, i16 -9491, i16 -13468, i16 -1537, i16 -6026, i16 8450, i16 12427, i16 528, i16 5017, i16 26406, i16 30383, i16 17460, i16 21949, i16 -21174, i16 -17213, i16 -29096, i16 -24623, i16 -5266, i16 -1305, i16 -14212, i16 -9739, i16 12675, i16 8202, i16 4753, i16 792, i16 30631, i16 26158, i16 21685, i16 17724, i16 -16949, i16 -21438, i16 -24871, i16 -28848, i16 -1041, i16 -5530, i16 -9987, i16 -13964, i16 16900, i16 21389, i16 24854, i16 28831, i16 1056, i16 5545, i16 10034, i16 14011, i16 -12724, i16 -8251, i16 -4770, i16 -809, i16 -30616, i16 -26143, i16 -21638, i16 -17677, i16 21125, i16 17164, i16 29079, i16 24606, i16 5281, i16 1320, i16 14259, i16 9786, i16 -8499, i16 -12476, i16 -545, i16 -5034, i16 -26391, i16 -30368, i16 -17413, i16 -21902, i16 25350, i16 29327, i16 16404, i16 20893, i16 9506, i16 13483, i16 1584, i16 6073, i16 -4274, i16 -313, i16 -13220, i16 -8747, i16 -22166, i16 -18205, i16 -30088, i16 -25615, i16 29575, i16 25102, i16 20629, i16 16668, i16 13731, i16 9258, i16 5809, i16 1848, i16 -49, i16 -4538, i16 -8995, i16 -12972, i16 -17941, i16 -22430, i16 -25863, i16 -29840, i16 -31736, i16 -27263, i16 -22758, i16 -18797, i16 -15828, i16 -11355, i16 -7874, i16 -3913, i16 2112, i16 6601, i16 11090, i16 15067, i16 20068, i16 24557, i16 28022, i16 31999, i16 -27511, i16 -31488, i16 -18533, i16 -23022, i16 -11603, i16 -15580, i16 -3649, i16 -8138, i16 6337, i16 2376, i16 15315, i16 10842, i16 24293, i16 20332, i16 32247, i16 27774, i16 -23286, i16 -19325, i16 -31208, i16 -26735, i16 -7378, i16 -3417, i16 -16324, i16 -11851, i16 10562, i16 14539, i16 2640, i16 7129, i16 28518, i16 32495, i16 19572, i16 24061, i16 -19061, i16 -23550, i16 -26983, i16 -30960, i16 -3153, i16 -7642, i16 -12099, i16 -16076, i16 14787, i16 10314, i16 6865, i16 2904, i16 32743, i16 28270, i16 23797, i16 19836, i16 -14836, i16 -10363, i16 -6882, i16 -2921, i16 -32728, i16 -28255, i16 -23750, i16 -19789, i16 19012, i16 23501, i16 26966, i16 30943, i16 3168, i16 7657, i16 12146, i16 16123, i16 -10611, i16 -14588, i16 -2657, i16 -7146, i16 -28503, i16 -32480, i16 -19525, i16 -24014, i16 23237, i16 19276, i16 31191, i16 26718, i16 7393, i16 3432, i16 16371, i16 11898, i16 -6386, i16 -2425, i16 -15332, i16 -10859, i16 -24278, i16 -20317, i16 -32200, i16 -27727, i16 27462, i16 31439, i16 18516, i16 23005, i16 11618, i16 15595, i16 3696, i16 8185, i16 -2161, i16 -6650, i16 -11107, i16 -15084, i16 -20053, i16 -24542, i16 -27975, i16 -31952, i16 31687, i16 27214, i16 22741, i16 18780, i16 15843, i16 11370, i16 7921, i16 3960], align 16, !dbg !0
@__UNIQUE_ID___addressable_crc_ccitt_table195 = internal global ptr @crc_ccitt_table, section ".discard.addressable", align 8, !dbg !7
@crc_ccitt_false_table = hidden constant [256 x i16] [i16 0, i16 4129, i16 8258, i16 12387, i16 16516, i16 20645, i16 24774, i16 28903, i16 -32504, i16 -28375, i16 -24246, i16 -20117, i16 -15988, i16 -11859, i16 -7730, i16 -3601, i16 4657, i16 528, i16 12915, i16 8786, i16 21173, i16 17044, i16 29431, i16 25302, i16 -27847, i16 -31976, i16 -19589, i16 -23718, i16 -11331, i16 -15460, i16 -3073, i16 -7202, i16 9314, i16 13379, i16 1056, i16 5121, i16 25830, i16 29895, i16 17572, i16 21637, i16 -23190, i16 -19125, i16 -31448, i16 -27383, i16 -6674, i16 -2609, i16 -14932, i16 -10867, i16 13907, i16 9842, i16 5649, i16 1584, i16 30423, i16 26358, i16 22165, i16 18100, i16 -18597, i16 -22662, i16 -26855, i16 -30920, i16 -2081, i16 -6146, i16 -10339, i16 -14404, i16 18628, i16 22757, i16 26758, i16 30887, i16 2112, i16 6241, i16 10242, i16 14371, i16 -13876, i16 -9747, i16 -5746, i16 -1617, i16 -30392, i16 -26263, i16 -22262, i16 -18133, i16 23285, i16 19156, i16 31415, i16 27286, i16 6769, i16 2640, i16 14899, i16 10770, i16 -9219, i16 -13348, i16 -1089, i16 -5218, i16 -25735, i16 -29864, i16 -17605, i16 -21734, i16 27814, i16 31879, i16 19684, i16 23749, i16 11298, i16 15363, i16 3168, i16 7233, i16 -4690, i16 -625, i16 -12820, i16 -8755, i16 -21206, i16 -17141, i16 -29336, i16 -25271, i16 32407, i16 28342, i16 24277, i16 20212, i16 15891, i16 11826, i16 7761, i16 3696, i16 -97, i16 -4162, i16 -8227, i16 -12292, i16 -16613, i16 -20678, i16 -24743, i16 -28808, i16 -28280, i16 -32343, i16 -20022, i16 -24085, i16 -12020, i16 -16083, i16 -3762, i16 -7825, i16 4224, i16 161, i16 12482, i16 8419, i16 20484, i16 16421, i16 28742, i16 24679, i16 -31815, i16 -27752, i16 -23557, i16 -19494, i16 -15555, i16 -11492, i16 -7297, i16 -3234, i16 689, i16 4752, i16 8947, i16 13010, i16 16949, i16 21012, i16 25207, i16 29270, i16 -18966, i16 -23093, i16 -27224, i16 -31351, i16 -2706, i16 -6833, i16 -10964, i16 -15091, i16 13538, i16 9411, i16 5280, i16 1153, i16 29798, i16 25671, i16 21540, i16 17413, i16 -22565, i16 -18438, i16 -30823, i16 -26696, i16 -6305, i16 -2178, i16 -14563, i16 -10436, i16 9939, i16 14066, i16 1681, i16 5808, i16 26199, i16 30326, i16 17941, i16 22068, i16 -9908, i16 -13971, i16 -1778, i16 -5841, i16 -26168, i16 -30231, i16 -18038, i16 -22101, i16 22596, i16 18533, i16 30726, i16 26663, i16 6336, i16 2273, i16 14466, i16 10403, i16 -13443, i16 -9380, i16 -5313, i16 -1250, i16 -29703, i16 -25640, i16 -21573, i16 -17510, i16 19061, i16 23124, i16 27191, i16 31254, i16 2801, i16 6864, i16 10931, i16 14994, i16 -722, i16 -4849, i16 -8852, i16 -12979, i16 -16982, i16 -21109, i16 -25112, i16 -29239, i16 31782, i16 27655, i16 23652, i16 19525, i16 15522, i16 11395, i16 7392, i16 3265, i16 -4321, i16 -194, i16 -12451, i16 -8324, i16 -20581, i16 -16454, i16 -28711, i16 -24584, i16 28183, i16 32310, i16 20053, i16 24180, i16 11923, i16 16050, i16 3793, i16 7920], align 16, !dbg !9
@__UNIQUE_ID___addressable_crc_ccitt_false_table196 = internal global ptr @crc_ccitt_false_table, section ".discard.addressable", align 8, !dbg !20
@__UNIQUE_ID___addressable_crc_ccitt197 = internal global ptr @crc_ccitt, section ".discard.addressable", align 8, !dbg !22
@__UNIQUE_ID___addressable_crc_ccitt_false198 = internal global ptr @crc_ccitt_false, section ".discard.addressable", align 8, !dbg !24
@__UNIQUE_ID_description199 = internal constant [45 x i8] c"crc_ccitt.description=CRC-CCITT calculations\00", section ".modinfo", align 1, !dbg !26
@__UNIQUE_ID_file200 = internal constant [29 x i8] c"crc_ccitt.file=lib/crc-ccitt\00", section ".modinfo", align 1, !dbg !33
@__UNIQUE_ID_license201 = internal constant [22 x i8] c"crc_ccitt.license=GPL\00", section ".modinfo", align 1, !dbg !38
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_crc_ccitt_table195, ptr @__UNIQUE_ID___addressable_crc_ccitt_false_table196, ptr @__UNIQUE_ID___addressable_crc_ccitt197, ptr @__UNIQUE_ID___addressable_crc_ccitt_false198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file200, ptr @__UNIQUE_ID_license201], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @crc_ccitt(i16 noundef zeroext %crc, ptr noundef %buffer, i64 noundef %len) #0 align 16 !dbg !52 {
entry:
  %crc.addr = alloca i16, align 2
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store i16 %crc, ptr %crc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !67, metadata !DIExpression()), !dbg !70
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !68, metadata !DIExpression()), !dbg !71
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !69, metadata !DIExpression()), !dbg !72
  br label %while.cond, !dbg !73

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !74
  %dec = add i64 %0, -1, !dbg !74
  store i64 %dec, ptr %len.addr, align 8, !dbg !74
  %tobool = icmp ne i64 %0, 0, !dbg !73
  br i1 %tobool, label %while.body, label %while.end, !dbg !73

while.body:                                       ; preds = %while.cond
  %1 = load i16, ptr %crc.addr, align 2, !dbg !75
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !76
  %incdec.ptr = getelementptr i8, ptr %2, i32 1, !dbg !76
  store ptr %incdec.ptr, ptr %buffer.addr, align 8, !dbg !76
  %3 = load i8, ptr %2, align 1, !dbg !77
  %call = call zeroext i16 @crc_ccitt_byte(i16 noundef zeroext %1, i8 noundef zeroext %3) #3, !dbg !78
  store i16 %call, ptr %crc.addr, align 2, !dbg !79
  br label %while.cond, !dbg !73, !llvm.loop !80

while.end:                                        ; preds = %while.cond
  %4 = load i16, ptr %crc.addr, align 2, !dbg !84
  ret i16 %4, !dbg !85
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @crc_ccitt_byte(i16 noundef zeroext %crc, i8 noundef zeroext %c) #2 align 16 !dbg !86 {
entry:
  %crc.addr = alloca i16, align 2
  %c.addr = alloca i8, align 1
  store i16 %crc, ptr %crc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !91, metadata !DIExpression()), !dbg !93
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !92, metadata !DIExpression()), !dbg !94
  %0 = load i16, ptr %crc.addr, align 2, !dbg !95
  %conv = zext i16 %0 to i32, !dbg !95
  %shr = ashr i32 %conv, 8, !dbg !96
  %1 = load i16, ptr %crc.addr, align 2, !dbg !97
  %conv1 = zext i16 %1 to i32, !dbg !97
  %2 = load i8, ptr %c.addr, align 1, !dbg !98
  %conv2 = zext i8 %2 to i32, !dbg !98
  %xor = xor i32 %conv1, %conv2, !dbg !99
  %and = and i32 %xor, 255, !dbg !100
  %idxprom = sext i32 %and to i64, !dbg !101
  %arrayidx = getelementptr [256 x i16], ptr @crc_ccitt_table, i64 0, i64 %idxprom, !dbg !101
  %3 = load i16, ptr %arrayidx, align 2, !dbg !101
  %conv3 = zext i16 %3 to i32, !dbg !101
  %xor4 = xor i32 %shr, %conv3, !dbg !102
  %conv5 = trunc i32 %xor4 to i16, !dbg !103
  ret i16 %conv5, !dbg !104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @crc_ccitt_false(i16 noundef zeroext %crc, ptr noundef %buffer, i64 noundef %len) #0 align 16 !dbg !105 {
entry:
  %crc.addr = alloca i16, align 2
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store i16 %crc, ptr %crc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !107, metadata !DIExpression()), !dbg !110
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !108, metadata !DIExpression()), !dbg !111
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !109, metadata !DIExpression()), !dbg !112
  br label %while.cond, !dbg !113

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !114
  %dec = add i64 %0, -1, !dbg !114
  store i64 %dec, ptr %len.addr, align 8, !dbg !114
  %tobool = icmp ne i64 %0, 0, !dbg !113
  br i1 %tobool, label %while.body, label %while.end, !dbg !113

while.body:                                       ; preds = %while.cond
  %1 = load i16, ptr %crc.addr, align 2, !dbg !115
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !116
  %incdec.ptr = getelementptr i8, ptr %2, i32 1, !dbg !116
  store ptr %incdec.ptr, ptr %buffer.addr, align 8, !dbg !116
  %3 = load i8, ptr %2, align 1, !dbg !117
  %call = call zeroext i16 @crc_ccitt_false_byte(i16 noundef zeroext %1, i8 noundef zeroext %3) #3, !dbg !118
  store i16 %call, ptr %crc.addr, align 2, !dbg !119
  br label %while.cond, !dbg !113, !llvm.loop !120

while.end:                                        ; preds = %while.cond
  %4 = load i16, ptr %crc.addr, align 2, !dbg !122
  ret i16 %4, !dbg !123
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @crc_ccitt_false_byte(i16 noundef zeroext %crc, i8 noundef zeroext %c) #2 align 16 !dbg !124 {
entry:
  %crc.addr = alloca i16, align 2
  %c.addr = alloca i8, align 1
  store i16 %crc, ptr %crc.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !126, metadata !DIExpression()), !dbg !128
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !127, metadata !DIExpression()), !dbg !129
  %0 = load i16, ptr %crc.addr, align 2, !dbg !130
  %conv = zext i16 %0 to i32, !dbg !130
  %shl = shl i32 %conv, 8, !dbg !131
  %1 = load i16, ptr %crc.addr, align 2, !dbg !132
  %conv1 = zext i16 %1 to i32, !dbg !132
  %shr = ashr i32 %conv1, 8, !dbg !133
  %2 = load i8, ptr %c.addr, align 1, !dbg !134
  %conv2 = zext i8 %2 to i32, !dbg !134
  %xor = xor i32 %shr, %conv2, !dbg !135
  %idxprom = sext i32 %xor to i64, !dbg !136
  %arrayidx = getelementptr [256 x i16], ptr @crc_ccitt_false_table, i64 0, i64 %idxprom, !dbg !136
  %3 = load i16, ptr %arrayidx, align 2, !dbg !136
  %conv3 = zext i16 %3 to i32, !dbg !136
  %xor4 = xor i32 %shl, %conv3, !dbg !137
  %conv5 = trunc i32 %xor4 to i16, !dbg !138
  ret i16 %conv5, !dbg !139
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crc_ccitt_table", scope: !2, file: !3, line: 16, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.crc-ccitt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crc-ccitt\22 -D KBUILD_BASENAME=\22crc_ccitt\22 -D KBUILD_MODNAME=\22crc_ccitt\22 -D __KBUILD_MODNAME=kmod_crc_ccitt -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crc-ccitt.ll lib/crc-ccitt.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crc-ccitt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60f59971dc05163e58846380ff7c33e1")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !20, !22, !24, !26, !33, !38}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crc_ccitt_table195", scope: !2, file: !3, line: 50, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "crc_ccitt_false_table", scope: !2, file: !3, line: 56, type: !11, isLocal: false, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 4096, elements: !18)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crc_ccitt_false_table196", scope: !2, file: !3, line: 90, type: !5, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crc_ccitt197", scope: !2, file: !3, line: 105, type: !5, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crc_ccitt_false198", scope: !2, file: !3, line: 120, type: !5, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description199", scope: !2, file: !3, line: 122, type: !28, isLocal: true, isDefinition: true, align: 8)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 360, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32}
!32 = !DISubrange(count: 45)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file200", scope: !2, file: !3, line: 123, type: !35, isLocal: true, isDefinition: true, align: 8)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 232, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 29)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license201", scope: !2, file: !3, line: 123, type: !40, isLocal: true, isDefinition: true, align: 8)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 176, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 22)
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 8, !"cf-protection-branch", i32 1}
!47 = !{i32 4, !"function_return_thunk_extern", i32 1}
!48 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!49 = !{i32 1, !"Code Model", i32 2}
!50 = !{i32 1, !"override-stack-alignment", i32 8}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = distinct !DISubprogram(name: "crc_ccitt", scope: !3, file: !3, line: 99, type: !53, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!53 = !DISubroutineType(types: !54)
!54 = !{!13, !13, !55, !60}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !59)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 61, baseType: !62)
!61 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !63, line: 72, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !63, line: 16, baseType: !65)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !{!67, !68, !69}
!67 = !DILocalVariable(name: "crc", arg: 1, scope: !52, file: !3, line: 99, type: !13)
!68 = !DILocalVariable(name: "buffer", arg: 2, scope: !52, file: !3, line: 99, type: !55)
!69 = !DILocalVariable(name: "len", arg: 3, scope: !52, file: !3, line: 99, type: !60)
!70 = !DILocation(line: 99, column: 19, scope: !52)
!71 = !DILocation(line: 99, column: 34, scope: !52)
!72 = !DILocation(line: 99, column: 49, scope: !52)
!73 = !DILocation(line: 101, column: 2, scope: !52)
!74 = !DILocation(line: 101, column: 12, scope: !52)
!75 = !DILocation(line: 102, column: 24, scope: !52)
!76 = !DILocation(line: 102, column: 36, scope: !52)
!77 = !DILocation(line: 102, column: 29, scope: !52)
!78 = !DILocation(line: 102, column: 9, scope: !52)
!79 = !DILocation(line: 102, column: 7, scope: !52)
!80 = distinct !{!80, !73, !81, !82, !83}
!81 = !DILocation(line: 102, column: 38, scope: !52)
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !DILocation(line: 103, column: 9, scope: !52)
!85 = !DILocation(line: 103, column: 2, scope: !52)
!86 = distinct !DISubprogram(name: "crc_ccitt_byte", scope: !87, file: !87, line: 13, type: !88, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!87 = !DIFile(filename: "./include/linux/crc-ccitt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14f4adbd47bbfb1802314250cbd6a8c4")
!88 = !DISubroutineType(types: !89)
!89 = !{!13, !13, !56}
!90 = !{!91, !92}
!91 = !DILocalVariable(name: "crc", arg: 1, scope: !86, file: !87, line: 13, type: !13)
!92 = !DILocalVariable(name: "c", arg: 2, scope: !86, file: !87, line: 13, type: !56)
!93 = !DILocation(line: 13, column: 38, scope: !86)
!94 = !DILocation(line: 13, column: 52, scope: !86)
!95 = !DILocation(line: 15, column: 10, scope: !86)
!96 = !DILocation(line: 15, column: 14, scope: !86)
!97 = !DILocation(line: 15, column: 39, scope: !86)
!98 = !DILocation(line: 15, column: 45, scope: !86)
!99 = !DILocation(line: 15, column: 43, scope: !86)
!100 = !DILocation(line: 15, column: 48, scope: !86)
!101 = !DILocation(line: 15, column: 22, scope: !86)
!102 = !DILocation(line: 15, column: 20, scope: !86)
!103 = !DILocation(line: 15, column: 9, scope: !86)
!104 = !DILocation(line: 15, column: 2, scope: !86)
!105 = distinct !DISubprogram(name: "crc_ccitt_false", scope: !3, file: !3, line: 114, type: !53, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!106 = !{!107, !108, !109}
!107 = !DILocalVariable(name: "crc", arg: 1, scope: !105, file: !3, line: 114, type: !13)
!108 = !DILocalVariable(name: "buffer", arg: 2, scope: !105, file: !3, line: 114, type: !55)
!109 = !DILocalVariable(name: "len", arg: 3, scope: !105, file: !3, line: 114, type: !60)
!110 = !DILocation(line: 114, column: 25, scope: !105)
!111 = !DILocation(line: 114, column: 40, scope: !105)
!112 = !DILocation(line: 114, column: 55, scope: !105)
!113 = !DILocation(line: 116, column: 2, scope: !105)
!114 = !DILocation(line: 116, column: 12, scope: !105)
!115 = !DILocation(line: 117, column: 30, scope: !105)
!116 = !DILocation(line: 117, column: 42, scope: !105)
!117 = !DILocation(line: 117, column: 35, scope: !105)
!118 = !DILocation(line: 117, column: 9, scope: !105)
!119 = !DILocation(line: 117, column: 7, scope: !105)
!120 = distinct !{!120, !113, !121, !82, !83}
!121 = !DILocation(line: 117, column: 44, scope: !105)
!122 = !DILocation(line: 118, column: 9, scope: !105)
!123 = !DILocation(line: 118, column: 2, scope: !105)
!124 = distinct !DISubprogram(name: "crc_ccitt_false_byte", scope: !87, file: !87, line: 18, type: !88, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!125 = !{!126, !127}
!126 = !DILocalVariable(name: "crc", arg: 1, scope: !124, file: !87, line: 18, type: !13)
!127 = !DILocalVariable(name: "c", arg: 2, scope: !124, file: !87, line: 18, type: !56)
!128 = !DILocation(line: 18, column: 44, scope: !124)
!129 = !DILocation(line: 18, column: 58, scope: !124)
!130 = !DILocation(line: 20, column: 13, scope: !124)
!131 = !DILocation(line: 20, column: 17, scope: !124)
!132 = !DILocation(line: 20, column: 48, scope: !124)
!133 = !DILocation(line: 20, column: 52, scope: !124)
!134 = !DILocation(line: 20, column: 60, scope: !124)
!135 = !DILocation(line: 20, column: 58, scope: !124)
!136 = !DILocation(line: 20, column: 25, scope: !124)
!137 = !DILocation(line: 20, column: 23, scope: !124)
!138 = !DILocation(line: 20, column: 12, scope: !124)
!139 = !DILocation(line: 20, column: 5, scope: !124)
