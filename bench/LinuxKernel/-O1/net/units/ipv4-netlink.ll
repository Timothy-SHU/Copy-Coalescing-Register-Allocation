; ModuleID = 'net/ipv4/netlink.c'
source_filename = "net/ipv4/netlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtm_getroute_parse_ip_proto: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rtm_getroute_parse_ip_proto ; .previous"

%struct.netlink_ext_ack = type { ptr, ptr, ptr, ptr, i16, [20 x i8], i8, [80 x i8] }

@rtm_getroute_parse_ip_proto.__msg = internal constant [21 x i8] c"Unsupported ip proto\00", align 16, !dbg !0
@__UNIQUE_ID___addressable_rtm_getroute_parse_ip_proto585 = internal global ptr @rtm_getroute_parse_ip_proto, section ".discard.addressable", align 8, !dbg !133
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_rtm_getroute_parse_ip_proto585], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rtm_getroute_parse_ip_proto(ptr noundef %attr, ptr noundef %ip_proto, i8 noundef zeroext %family, ptr noundef %extack) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca ptr, align 8
  %ip_proto.addr = alloca ptr, align 8
  %family.addr = alloca i8, align 1
  %extack.addr = alloca ptr, align 8
  %__extack = alloca ptr, align 8
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !136, metadata !DIExpression()), !dbg !154
  store ptr %ip_proto, ptr %ip_proto.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip_proto.addr, metadata !137, metadata !DIExpression()), !dbg !155
  store i8 %family, ptr %family.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !138, metadata !DIExpression()), !dbg !156
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !139, metadata !DIExpression()), !dbg !157
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !158
  %call = call zeroext i8 @nla_get_u8(ptr noundef %0) #5, !dbg !159
  %1 = load ptr, ptr %ip_proto.addr, align 8, !dbg !160
  store i8 %call, ptr %1, align 1, !dbg !161
  %2 = load ptr, ptr %ip_proto.addr, align 8, !dbg !162
  %3 = load i8, ptr %2, align 1, !dbg !163
  %conv = zext i8 %3 to i32, !dbg !163
  switch i32 %conv, label %sw.epilog [
    i32 6, label %sw.bb
    i32 17, label %sw.bb
    i32 1, label %sw.bb1
    i32 58, label %sw.bb4
  ], !dbg !164

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, ptr %retval, align 4, !dbg !165
  br label %return, !dbg !165

sw.bb1:                                           ; preds = %entry
  %4 = load i8, ptr %family.addr, align 1, !dbg !167
  %conv2 = zext i8 %4 to i32, !dbg !167
  %cmp = icmp ne i32 %conv2, 2, !dbg !169
  br i1 %cmp, label %if.then, label %if.end, !dbg !170

if.then:                                          ; preds = %sw.bb1
  br label %sw.epilog, !dbg !171

if.end:                                           ; preds = %sw.bb1
  store i32 0, ptr %retval, align 4, !dbg !172
  br label %return, !dbg !172

sw.bb4:                                           ; preds = %entry
  %5 = load i8, ptr %family.addr, align 1, !dbg !173
  %conv5 = zext i8 %5 to i32, !dbg !173
  %cmp6 = icmp ne i32 %conv5, 10, !dbg !175
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !176

if.then8:                                         ; preds = %sw.bb4
  br label %sw.epilog, !dbg !177

if.end9:                                          ; preds = %sw.bb4
  store i32 0, ptr %retval, align 4, !dbg !178
  br label %return, !dbg !178

sw.epilog:                                        ; preds = %entry, %if.then8, %if.then
  br label %do.body, !dbg !179

do.body:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack) #6, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %__extack, metadata !140, metadata !DIExpression()), !dbg !180
  %6 = load ptr, ptr %extack.addr, align 8, !dbg !180
  store ptr %6, ptr %__extack, align 8, !dbg !180
  call void @do_trace_netlink_extack(ptr noundef @rtm_getroute_parse_ip_proto.__msg) #5, !dbg !180
  %7 = load ptr, ptr %__extack, align 8, !dbg !181
  %tobool = icmp ne ptr %7, null, !dbg !181
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !180

if.then10:                                        ; preds = %do.body
  %8 = load ptr, ptr %__extack, align 8, !dbg !181
  %_msg = getelementptr inbounds %struct.netlink_ext_ack, ptr %8, i32 0, i32 0, !dbg !181
  store ptr @rtm_getroute_parse_ip_proto.__msg, ptr %_msg, align 8, !dbg !181
  br label %if.end11, !dbg !181

if.end11:                                         ; preds = %if.then10, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack) #6, !dbg !179
  br label %do.end, !dbg !180

do.end:                                           ; preds = %if.end11
  store i32 -95, ptr %retval, align 4, !dbg !183
  br label %return, !dbg !183

return:                                           ; preds = %do.end, %if.end9, %if.end, %sw.bb
  %9 = load i32, ptr %retval, align 4, !dbg !184
  ret i32 %9, !dbg !184
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @nla_get_u8(ptr noundef %nla) #2 align 16 !dbg !185 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !191
  %call = call ptr @nla_data(ptr noundef %0) #5, !dbg !192
  %1 = load i8, ptr %call, align 1, !dbg !193
  ret i8 %1, !dbg !194
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !195 dso_local void @do_trace_netlink_extack(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nla_data(ptr noundef %nla) #2 align 16 !dbg !198 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !204
  %add.ptr = getelementptr i8, ptr %0, i64 4, !dbg !205
  ret ptr %add.ptr, !dbg !206
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!95}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__msg", scope: !2, file: !3, line: 30, type: !142, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "rtm_getroute_parse_ip_proto", scope: !3, file: !3, line: 10, type: !4, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !135)
!3 = !DIFile(filename: "net/ipv4/netlink.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18bcdb592ec6ad948633783df3968a20")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !16, !17, !21}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !9, line: 229, size: 32, elements: !10)
!9 = !DIFile(filename: "./include/uapi/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "514e37a7f30dd6a10229f65d7bb14aa5")
!10 = !{!11, !15}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !8, file: !9, line: 230, baseType: !12, size: 16)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !13, line: 24, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !8, file: !9, line: 231, baseType: !12, size: 16, offset: 16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !18, line: 17, baseType: !19)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !13, line: 21, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_ext_ack", file: !23, line: 82, size: 1088, elements: !24)
!23 = !DIFile(filename: "./include/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cf765747b52eb2c956fc0567475222af")
!24 = !{!25, !29, !32, !84, !85, !86, !90, !91}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_msg", scope: !22, file: !23, line: 83, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "bad_attr", scope: !22, file: !23, line: 84, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !22, file: !23, line: 85, baseType: !33, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nla_policy", file: !36, line: 321, size: 128, elements: !37)
!36 = !DIFile(filename: "./include/net/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75ea2e9501d91e2f676980361db2fc9a")
!37 = !{!38, !39, !40, !42}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !36, line: 322, baseType: !17, size: 8)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "validation_type", scope: !35, file: !36, line: 323, baseType: !17, size: 8, offset: 8)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !35, file: !36, line: 324, baseType: !41, size: 16, offset: 16)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !18, line: 19, baseType: !12)
!42 = !DIDerivedType(tag: DW_TAG_member, scope: !35, file: !36, line: 325, baseType: !43, size: 64, offset: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !36, line: 325, size: 64, elements: !44)
!44 = !{!45, !46, !51, !52, !53, !54, !63, !72, !80}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "strict_start_type", scope: !43, file: !36, line: 347, baseType: !41, size: 16)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "bitfield32_valid", scope: !43, file: !36, line: 350, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !18, line: 21, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !13, line: 27, baseType: !50)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !43, file: !36, line: 351, baseType: !47, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "reject_message", scope: !43, file: !36, line: 352, baseType: !26, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nested_policy", scope: !43, file: !36, line: 353, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !43, file: !36, line: 354, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_range_validation", file: !36, line: 191, size: 128, elements: !57)
!57 = !{!58, !62}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !56, file: !36, line: 192, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !18, line: 23, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !13, line: 31, baseType: !61)
!61 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !56, file: !36, line: 192, baseType: !59, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "range_signed", scope: !43, file: !36, line: 355, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_range_validation_signed", file: !36, line: 195, size: 128, elements: !66)
!66 = !{!67, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !65, file: !36, line: 196, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !18, line: 22, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !13, line: 30, baseType: !70)
!70 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !65, file: !36, line: 196, baseType: !68, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !43, file: !36, line: 356, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !43, file: !36, line: 356, size: 32, elements: !74)
!74 = !{!75, !79}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !73, file: !36, line: 357, baseType: !76, size: 16)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !18, line: 18, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !13, line: 23, baseType: !78)
!78 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !73, file: !36, line: 357, baseType: !76, size: 16, offset: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !43, file: !36, line: 359, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!6, !30, !21}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "miss_nest", scope: !22, file: !23, line: 86, baseType: !30, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "miss_type", scope: !22, file: !23, line: 87, baseType: !41, size: 16, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !22, file: !23, line: 88, baseType: !87, size: 160, offset: 272)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 20)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !22, file: !23, line: 89, baseType: !17, size: 8, offset: 432)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_msg_buf", scope: !22, file: !23, line: 90, baseType: !92, size: 640, offset: 440)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 80)
!95 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/ipv4/.netlink.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/ipv4/netlink\22 -D KBUILD_BASENAME=\22netlink\22 -D KBUILD_MODNAME=\22netlink\22 -D __KBUILD_MODNAME=kmod_netlink -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/ipv4/netlink.ll net/ipv4/netlink.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !96, retainedTypes: !129, globals: !132, splitDebugInlining: false, nameTableKind: None)
!96 = !{!97}
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !98, line: 29, baseType: !50, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/uapi/linux/in.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2ddb010a393612e2819e220596b119c6")
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!100 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!101 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!102 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!103 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!104 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!105 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!106 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!107 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!108 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!109 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!110 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!111 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!112 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!113 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!114 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!115 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!116 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!117 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!118 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!119 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!120 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!121 = !DIEnumerator(name: "IPPROTO_L2TP", value: 115)
!122 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!123 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!124 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!125 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!126 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!127 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!128 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!129 = !{!130, !16, !131, !6}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!132 = !{!0, !133}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtm_getroute_parse_ip_proto585", scope: !95, file: !3, line: 33, type: !130, isLocal: true, isDefinition: true)
!135 = !{!136, !137, !138, !139, !140}
!136 = !DILocalVariable(name: "attr", arg: 1, scope: !2, file: !3, line: 10, type: !7)
!137 = !DILocalVariable(name: "ip_proto", arg: 2, scope: !2, file: !3, line: 10, type: !16)
!138 = !DILocalVariable(name: "family", arg: 3, scope: !2, file: !3, line: 10, type: !17)
!139 = !DILocalVariable(name: "extack", arg: 4, scope: !2, file: !3, line: 11, type: !21)
!140 = !DILocalVariable(name: "__extack", scope: !141, file: !3, line: 30, type: !21)
!141 = distinct !DILexicalBlock(scope: !2, file: !3, line: 30, column: 2)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 168, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 21)
!145 = !{i32 7, !"Dwarf Version", i32 5}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 8, !"cf-protection-branch", i32 1}
!149 = !{i32 4, !"function_return_thunk_extern", i32 1}
!150 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!151 = !{i32 1, !"Code Model", i32 2}
!152 = !{i32 1, !"override-stack-alignment", i32 8}
!153 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!154 = !DILocation(line: 10, column: 48, scope: !2)
!155 = !DILocation(line: 10, column: 58, scope: !2)
!156 = !DILocation(line: 10, column: 71, scope: !2)
!157 = !DILocation(line: 11, column: 29, scope: !2)
!158 = !DILocation(line: 13, column: 25, scope: !2)
!159 = !DILocation(line: 13, column: 14, scope: !2)
!160 = !DILocation(line: 13, column: 3, scope: !2)
!161 = !DILocation(line: 13, column: 12, scope: !2)
!162 = !DILocation(line: 15, column: 11, scope: !2)
!163 = !DILocation(line: 15, column: 10, scope: !2)
!164 = !DILocation(line: 15, column: 2, scope: !2)
!165 = !DILocation(line: 18, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !2, file: !3, line: 15, column: 21)
!167 = !DILocation(line: 20, column: 7, scope: !168)
!168 = distinct !DILexicalBlock(scope: !166, file: !3, line: 20, column: 7)
!169 = !DILocation(line: 20, column: 14, scope: !168)
!170 = !DILocation(line: 20, column: 7, scope: !166)
!171 = !DILocation(line: 21, column: 4, scope: !168)
!172 = !DILocation(line: 22, column: 3, scope: !166)
!173 = !DILocation(line: 25, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !166, file: !3, line: 25, column: 7)
!175 = !DILocation(line: 25, column: 14, scope: !174)
!176 = !DILocation(line: 25, column: 7, scope: !166)
!177 = !DILocation(line: 26, column: 4, scope: !174)
!178 = !DILocation(line: 27, column: 3, scope: !166)
!179 = !DILocation(line: 30, column: 2, scope: !2)
!180 = !DILocation(line: 30, column: 2, scope: !141)
!181 = !DILocation(line: 30, column: 2, scope: !182)
!182 = distinct !DILexicalBlock(scope: !141, file: !3, line: 30, column: 2)
!183 = !DILocation(line: 31, column: 2, scope: !2)
!184 = !DILocation(line: 32, column: 1, scope: !2)
!185 = distinct !DISubprogram(name: "nla_get_u8", scope: !36, file: !36, line: 1652, type: !186, scopeLine: 1653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!17, !30}
!188 = !{!189}
!189 = !DILocalVariable(name: "nla", arg: 1, scope: !185, file: !36, line: 1652, type: !30)
!190 = !DILocation(line: 1652, column: 50, scope: !185)
!191 = !DILocation(line: 1654, column: 26, scope: !185)
!192 = !DILocation(line: 1654, column: 17, scope: !185)
!193 = !DILocation(line: 1654, column: 9, scope: !185)
!194 = !DILocation(line: 1654, column: 2, scope: !185)
!195 = !DISubprogram(name: "do_trace_netlink_extack", scope: !23, file: !23, line: 14, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !26}
!198 = distinct !DISubprogram(name: "nla_data", scope: !36, file: !36, line: 1183, type: !199, scopeLine: 1184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!130, !30}
!201 = !{!202}
!202 = !DILocalVariable(name: "nla", arg: 1, scope: !198, file: !36, line: 1183, type: !30)
!203 = !DILocation(line: 1183, column: 51, scope: !198)
!204 = !DILocation(line: 1185, column: 18, scope: !198)
!205 = !DILocation(line: 1185, column: 22, scope: !198)
!206 = !DILocation(line: 1185, column: 2, scope: !198)
