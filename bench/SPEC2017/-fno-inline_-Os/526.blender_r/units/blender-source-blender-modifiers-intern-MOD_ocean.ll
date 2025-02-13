; ModuleID = 'blender/source/blender/modifiers/intern/MOD_ocean.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_ocean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.OceanModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, float, float, i32, i32, [1024 x i8], [64 x i8], i8, i8, i8, i8, i16, i16, i32, float, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }

@modifierType_Ocean = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Ocean\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OceanModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1296, i32 2, i32 25, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr null, ptr null, ptr null, ptr @dependsOnNormals, ptr null, ptr null, ptr null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @copyData(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !PGOFuncName !34 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef ptr @applyModifier(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef readnone returned %2, i32 %3) #0 !PGOFuncName !35 {
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @initData(ptr nocapture readnone %0) #0 !PGOFuncName !36 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !PGOFuncName !37 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @freeData(ptr nocapture readnone %0) #0 !PGOFuncName !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @dependsOnNormals(ptr nocapture noundef readonly %0) #1 !PGOFuncName !39 {
  %2 = getelementptr inbounds %struct.OceanModifierData, ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 1, !tbaa !40
  %4 = icmp ne i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!34 = !{!"MOD_ocean.c:copyData"}
!35 = !{!"MOD_ocean.c:applyModifier"}
!36 = !{!"MOD_ocean.c:initData"}
!37 = !{!"MOD_ocean.c:requiredDataMask"}
!38 = !{!"MOD_ocean.c:freeData"}
!39 = !{!"MOD_ocean.c:dependsOnNormals"}
!40 = !{!41, !44, i64 1273}
!41 = !{!"OceanModifierData", !42, i64 0, !43, i64 112, !43, i64 120, !46, i64 128, !46, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !46, i64 176, !46, i64 180, !44, i64 184, !44, i64 1208, !44, i64 1272, !44, i64 1273, !44, i64 1274, !44, i64 1275, !48, i64 1276, !48, i64 1278, !46, i64 1280, !47, i64 1284, !47, i64 1288, !46, i64 1292}
!42 = !{!"ModifierData", !43, i64 0, !43, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !44, i64 32, !43, i64 96, !43, i64 104}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"int", !44, i64 0}
!47 = !{!"float", !44, i64 0}
!48 = !{!"short", !44, i64 0}
