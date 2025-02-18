; ModuleID = 'blender/source/blender/nodes/composite/nodes/node_composite_common.c'
source_filename = "blender/source/blender/nodes/composite/nodes/node_composite_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }

@register_node_type_cmp_group.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"CompositorNodeGroup\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Group\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_cmp_group() local_unnamed_addr #0 {
  tail call void @node_type_base_custom(ptr noundef nonnull @register_node_type_cmp_group.ntype, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i16 noundef signext 6, i16 noundef signext 2048) #2
  store i32 2, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_group.ntype, i64 0, i32 4), align 4, !tbaa !34
  store ptr @cmp_node_poll_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_group.ntype, i64 0, i32 37), align 8, !tbaa !43
  store ptr @node_group_poll_instance, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_group.ntype, i64 0, i32 38), align 8, !tbaa !44
  store ptr @node_update_internal_links_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_group.ntype, i64 0, i32 39), align 8, !tbaa !45
  %1 = tail call ptr @RNA_struct_find(ptr noundef nonnull @.str) #2
  store ptr %1, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_group.ntype, i64 0, i32 44, i32 1), align 8, !tbaa !46
  tail call void @RNA_struct_blender_type_set(ptr noundef %1, ptr noundef nonnull @register_node_type_cmp_group.ntype) #2
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_cmp_group.ntype, ptr noundef null, ptr noundef null) #2
  tail call void @node_type_size(ptr noundef nonnull @register_node_type_cmp_group.ntype, i32 noundef 140, i32 noundef 60, i32 noundef 400) #2
  tail call void @node_type_label(ptr noundef nonnull @register_node_type_cmp_group.ntype, ptr noundef nonnull @node_group_label) #2
  tail call void @node_type_update(ptr noundef nonnull @register_node_type_cmp_group.ntype, ptr noundef null, ptr noundef nonnull @node_group_verify) #2
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_cmp_group.ntype) #2
  ret void
}

declare void @node_type_base_custom(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare i32 @cmp_node_poll_default(ptr noundef, ptr noundef) #1

declare i32 @node_group_poll_instance(ptr noundef, ptr noundef) #1

declare void @node_update_internal_links_default(ptr noundef, ptr noundef) #1

declare ptr @RNA_struct_find(ptr noundef) local_unnamed_addr #1

declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_label(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_group_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @node_type_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_group_verify(ptr noundef, ptr noundef, ptr noundef) #1

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
!34 = !{!35, !40, i64 84}
!35 = !{!"bNodeType", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !40, i64 84, !37, i64 88, !37, i64 152, !40, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !42, i64 720}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!43 = !{!35, !36, i64 664}
!44 = !{!35, !36, i64 672}
!45 = !{!35, !36, i64 680}
!46 = !{!35, !36, i64 728}
