; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject_empty.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject_empty.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RayObject = type { ptr, %struct.RayObjectControl }
%struct.RayObjectControl = type { ptr, ptr }
%struct.RayObjectAPI = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@_ZL13empty_raytree = internal global %struct.RayObject { ptr @_ZL9empty_api, %struct.RayObjectControl zeroinitializer }, align 8
@_ZL9empty_api = internal global %struct.RayObjectAPI { ptr @_ZL28RE_rayobject_empty_intersectP9RayObjectP5Isect, ptr null, ptr null, ptr @_ZL23RE_rayobject_empty_freeP9RayObject, ptr @_ZL21RE_rayobject_empty_bbP9RayObjectPfS1_, ptr @_ZL23RE_rayobject_empty_costP9RayObject, ptr @_ZL26RE_rayobject_empty_hint_bbP9RayObjectP7RayHintPfS3_ }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @RE_rayobject_empty_create() local_unnamed_addr #0 {
  %1 = or disjoint i64 ptrtoint (ptr @_ZL13empty_raytree to i64), 2
  %2 = inttoptr i64 %1 to ptr
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @_ZL28RE_rayobject_empty_intersectP9RayObjectP5Isect(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !PGOFuncName !34 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZL23RE_rayobject_empty_freeP9RayObject(ptr nocapture readnone %0) #0 !PGOFuncName !35 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZL21RE_rayobject_empty_bbP9RayObjectPfS1_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !36 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @_ZL23RE_rayobject_empty_costP9RayObject(ptr nocapture readnone %0) #0 !PGOFuncName !37 {
  ret float 0.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZL26RE_rayobject_empty_hint_bbP9RayObjectP7RayHintPfS3_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 !PGOFuncName !38 {
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!34 = !{!"rayobject_empty.cpp:_ZL28RE_rayobject_empty_intersectP9RayObjectP5Isect"}
!35 = !{!"rayobject_empty.cpp:_ZL23RE_rayobject_empty_freeP9RayObject"}
!36 = !{!"rayobject_empty.cpp:_ZL21RE_rayobject_empty_bbP9RayObjectPfS1_"}
!37 = !{!"rayobject_empty.cpp:_ZL23RE_rayobject_empty_costP9RayObject"}
!38 = !{!"rayobject_empty.cpp:_ZL26RE_rayobject_empty_hint_bbP9RayObjectP7RayHintPfS3_"}
