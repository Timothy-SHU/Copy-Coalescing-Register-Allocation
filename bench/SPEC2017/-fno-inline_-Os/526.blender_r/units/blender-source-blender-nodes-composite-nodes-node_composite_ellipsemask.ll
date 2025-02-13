; ModuleID = 'blender/source/blender/nodes/composite/nodes/node_composite_ellipsemask.c'
source_filename = "blender/source/blender/nodes/composite/nodes/node_composite_ellipsemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.NodeEllipseMask = type { float, float, float, float, float, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }

@register_node_type_cmp_ellipsemask.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"Ellipse Mask\00", align 1
@cmp_node_ellipsemask_in = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@cmp_node_ellipsemask_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"NodeEllipseMask\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_cmp_ellipsemask() local_unnamed_addr #0 {
  tail call void @cmp_node_type_base(ptr noundef nonnull @register_node_type_cmp_ellipsemask.ntype, i32 noundef 314, ptr noundef nonnull @.str, i16 noundef signext 9, i16 noundef signext 0) #2
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_cmp_ellipsemask.ntype, ptr noundef nonnull @cmp_node_ellipsemask_in, ptr noundef nonnull @cmp_node_ellipsemask_out) #2
  tail call void @node_type_size(ptr noundef nonnull @register_node_type_cmp_ellipsemask.ntype, i32 noundef 260, i32 noundef 110, i32 noundef 320) #2
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_cmp_ellipsemask.ntype, ptr noundef nonnull @node_composit_init_ellipsemask) #2
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_cmp_ellipsemask.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #2
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_cmp_ellipsemask.ntype) #2
  ret void
}

; Function Attrs: optsize
declare void @cmp_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_init_ellipsemask(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !34 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.1) #2
  %5 = getelementptr inbounds %struct.NodeEllipseMask, ptr %4, i64 0, i32 4
  store float 0x3FC99999A0000000, ptr %5, align 4, !tbaa !39
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0x3FB99999A0000000>, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %6, align 8, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_free_standard_storage(ptr noundef) #1

; Function Attrs: optsize
declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"node_composite_ellipsemask.c:node_composit_init_ellipsemask"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 16}
!40 = !{!"NodeEllipseMask", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !42, i64 20}
!41 = !{!"float", !37, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!41, !41, i64 0}
!44 = !{!45, !36, i64 248}
!45 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !42, i64 168, !46, i64 172, !46, i64 174, !46, i64 176, !46, i64 178, !46, i64 180, !46, i64 182, !46, i64 184, !46, i64 186, !37, i64 188, !47, i64 200, !47, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !47, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !42, i64 308, !37, i64 312, !46, i64 376, !46, i64 378, !41, i64 380, !41, i64 384, !46, i64 388, !46, i64 390, !36, i64 392, !48, i64 400, !48, i64 416, !48, i64 432, !46, i64 448, !46, i64 450, !42, i64 452, !36, i64 456}
!46 = !{!"short", !37, i64 0}
!47 = !{!"ListBase", !36, i64 0, !36, i64 8}
!48 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
