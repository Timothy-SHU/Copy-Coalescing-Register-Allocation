; ModuleID = 'blender/source/blender/nodes/composite/nodes/node_composite_colorcorrection.c'
source_filename = "blender/source/blender/nodes/composite/nodes/node_composite_colorcorrection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.NodeColorCorrection = type { %struct.ColorCorrectionData, %struct.ColorCorrectionData, %struct.ColorCorrectionData, %struct.ColorCorrectionData, float, float }
%struct.ColorCorrectionData = type { float, float, float, float, float, i32 }

@register_node_type_cmp_colorcorrection.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"Color Correction\00", align 1
@cmp_node_colorcorrection_in = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@cmp_node_colorcorrection_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"NodeColorCorrection\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"node colorcorrection\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_cmp_colorcorrection() local_unnamed_addr #0 {
  tail call void @cmp_node_type_base(ptr noundef nonnull @register_node_type_cmp_colorcorrection.ntype, i32 noundef 312, ptr noundef nonnull @.str, i16 noundef signext 3, i16 noundef signext 0) #2
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_cmp_colorcorrection.ntype, ptr noundef nonnull @cmp_node_colorcorrection_in, ptr noundef nonnull @cmp_node_colorcorrection_out) #2
  tail call void @node_type_size(ptr noundef nonnull @register_node_type_cmp_colorcorrection.ntype, i32 noundef 400, i32 noundef 200, i32 noundef 600) #2
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_cmp_colorcorrection.ntype, ptr noundef nonnull @node_composit_init_colorcorrection) #2
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_cmp_colorcorrection.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #2
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_cmp_colorcorrection.ntype) #2
  ret void
}

declare void @cmp_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_composit_init_colorcorrection(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 104, ptr noundef nonnull @.str.2) #2
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 4
  store float 0x3FC99999A0000000, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 5
  store float 0x3FE6666660000000, ptr %7, align 4, !tbaa !48
  %8 = getelementptr inbounds %struct.ColorCorrectionData, ptr %4, i64 0, i32 1
  store float 1.000000e+00, ptr %8, align 4, !tbaa !49
  %9 = getelementptr inbounds %struct.ColorCorrectionData, ptr %4, i64 0, i32 3
  store float 1.000000e+00, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds %struct.ColorCorrectionData, ptr %4, i64 0, i32 2
  store float 1.000000e+00, ptr %10, align 4, !tbaa !51
  %11 = getelementptr inbounds %struct.ColorCorrectionData, ptr %4, i64 0, i32 4
  store float 0.000000e+00, ptr %11, align 4, !tbaa !52
  store float 1.000000e+00, ptr %4, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 2
  %13 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 2, i32 1
  store float 1.000000e+00, ptr %13, align 4, !tbaa !54
  %14 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 2, i32 3
  store float 1.000000e+00, ptr %14, align 4, !tbaa !55
  %15 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 2, i32 2
  store float 1.000000e+00, ptr %15, align 4, !tbaa !56
  %16 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 2, i32 4
  store float 0.000000e+00, ptr %16, align 4, !tbaa !57
  store float 1.000000e+00, ptr %12, align 4, !tbaa !58
  %17 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 1, i32 1
  store float 1.000000e+00, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 1, i32 3
  store float 1.000000e+00, ptr %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 1, i32 2
  store float 1.000000e+00, ptr %20, align 4, !tbaa !61
  %21 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 1, i32 4
  store float 0.000000e+00, ptr %21, align 4, !tbaa !62
  store float 1.000000e+00, ptr %17, align 4, !tbaa !63
  %22 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 3
  %23 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 3, i32 1
  store float 1.000000e+00, ptr %23, align 4, !tbaa !64
  %24 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 3, i32 3
  store float 1.000000e+00, ptr %24, align 4, !tbaa !65
  %25 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 3, i32 2
  store float 1.000000e+00, ptr %25, align 4, !tbaa !66
  %26 = getelementptr inbounds %struct.NodeColorCorrection, ptr %4, i64 0, i32 3, i32 4
  store float 0.000000e+00, ptr %26, align 4, !tbaa !67
  store float 1.000000e+00, ptr %22, align 4, !tbaa !68
  %27 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  store i16 7, ptr %27, align 8, !tbaa !69
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_standard_storage(ptr noundef) #1

declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 248}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!46, !43, i64 96}
!46 = !{!"NodeColorCorrection", !47, i64 0, !47, i64 24, !47, i64 48, !47, i64 72, !43, i64 96, !43, i64 100}
!47 = !{!"ColorCorrectionData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !40, i64 20}
!48 = !{!46, !43, i64 100}
!49 = !{!46, !43, i64 4}
!50 = !{!46, !43, i64 12}
!51 = !{!46, !43, i64 8}
!52 = !{!46, !43, i64 16}
!53 = !{!46, !43, i64 0}
!54 = !{!46, !43, i64 52}
!55 = !{!46, !43, i64 60}
!56 = !{!46, !43, i64 56}
!57 = !{!46, !43, i64 64}
!58 = !{!46, !43, i64 48}
!59 = !{!46, !43, i64 28}
!60 = !{!46, !43, i64 36}
!61 = !{!46, !43, i64 32}
!62 = !{!46, !43, i64 40}
!63 = !{!46, !43, i64 24}
!64 = !{!46, !43, i64 76}
!65 = !{!46, !43, i64 84}
!66 = !{!46, !43, i64 80}
!67 = !{!46, !43, i64 88}
!68 = !{!46, !43, i64 72}
!69 = !{!39, !41, i64 376}
