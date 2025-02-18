; ModuleID = 'blender/source/blender/modifiers/intern/MOD_edgesplit.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_edgesplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.EdgeSplitModifierData = type { %struct.ModifierData, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@modifierType_EdgeSplit = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"EdgeSplit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"EdgeSplitModifierData\00\00\00\00\00\00\00\00\00\00\00", i32 120, i32 2, i32 31, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = and i32 %7, 6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %112, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %11 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %0, i64 0, i32 1
  %12 = load float, ptr %11, align 8, !tbaa !42
  %13 = fadd float %12, 0x3E877CF440000000
  %14 = tail call float @cosf(float noundef %13) #6
  %15 = load i32, ptr %6, align 4, !tbaa !34
  %16 = trunc i32 %15 to i8
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 1
  %19 = tail call ptr @DM_to_bmesh(ptr noundef %2, i8 noundef zeroext %18) #6
  %20 = load i32, ptr %6, align 4, !tbaa !34
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %24, align 4, !tbaa !43
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  store ptr %28, ptr %5, align 8, !tbaa !52
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #6
  %29 = load ptr, ptr %26, align 8, !tbaa !46
  %30 = call ptr %29(ptr noundef nonnull %5) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %74, label %32

32:                                               ; preds = %23, %70
  %33 = phi ptr [ %72, %70 ], [ %30, %23 ]
  %34 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  br i1 %36, label %70, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = icmp eq ptr %39, %35
  br i1 %40, label %70, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = icmp eq ptr %35, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.BMFace, ptr %47, i64 0, i32 4
  %49 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.BMFace, ptr %50, i64 0, i32 4
  %52 = load float, ptr %48, align 4, !tbaa !60
  %53 = load float, ptr %51, align 4, !tbaa !60
  %54 = getelementptr inbounds %struct.BMFace, ptr %47, i64 0, i32 4, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !60
  %56 = getelementptr inbounds %struct.BMFace, ptr %50, i64 0, i32 4, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !60
  %58 = fmul float %55, %57
  %59 = call float @llvm.fmuladd.f32(float %52, float %53, float %58)
  %60 = getelementptr inbounds %struct.BMFace, ptr %47, i64 0, i32 4, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !60
  %62 = getelementptr inbounds %struct.BMFace, ptr %50, i64 0, i32 4, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !60
  %64 = call float @llvm.fmuladd.f32(float %61, float %63, float %59)
  %65 = fcmp olt float %64, %14
  br i1 %65, label %66, label %70

66:                                               ; preds = %45, %41
  %67 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 3
  %68 = load i8, ptr %67, align 1, !tbaa !61
  %69 = or i8 %68, 16
  store i8 %69, ptr %67, align 1, !tbaa !61
  br label %70

70:                                               ; preds = %66, %45, %37, %32
  %71 = load ptr, ptr %26, align 8, !tbaa !46
  %72 = call ptr %71(ptr noundef nonnull %5) #6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %32, !llvm.loop !62

74:                                               ; preds = %70, %23, %10
  %75 = load i32, ptr %6, align 4, !tbaa !34
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %107, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %79, align 4, !tbaa !43
  %80 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %80, align 8, !tbaa !45
  %81 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %81, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 10
  %83 = load ptr, ptr %82, align 8, !tbaa !47
  store ptr %83, ptr %5, align 8, !tbaa !52
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #6
  %84 = load ptr, ptr %81, align 8, !tbaa !46
  %85 = call ptr %84(ptr noundef nonnull %5) #6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %107, label %87

87:                                               ; preds = %78, %103
  %88 = phi ptr [ %105, %103 ], [ %85, %78 ]
  %89 = getelementptr inbounds %struct.BMEdge, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !53
  %91 = icmp eq ptr %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !65
  %95 = icmp eq ptr %94, %90
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.BMHeader, ptr %88, i64 0, i32 3
  %98 = load i8, ptr %97, align 1, !tbaa !61
  %99 = and i8 %98, 8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = or i8 %98, 16
  store i8 %102, ptr %97, align 1, !tbaa !61
  br label %103

103:                                              ; preds = %101, %96, %92, %87
  %104 = load ptr, ptr %81, align 8, !tbaa !46
  %105 = call ptr %104(ptr noundef nonnull %5) #6
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %87, !llvm.loop !66

107:                                              ; preds = %103, %78, %74
  call void @BM_mesh_edgesplit(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %108 = call ptr @CDDM_from_bmesh(ptr noundef %19, i8 noundef zeroext 1) #6
  call void @BM_mesh_free(ptr noundef %19) #6
  %109 = getelementptr inbounds %struct.DerivedMesh, ptr %108, i64 0, i32 16
  %110 = load i32, ptr %109, align 8, !tbaa !67
  %111 = or i32 %110, 4
  store i32 %111, ptr %109, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  br label %112

112:                                              ; preds = %4, %107
  %113 = phi ptr [ %108, %107 ], [ %2, %4 ]
  ret ptr %113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %0, i64 0, i32 1
  store float 0x3FE0C15240000000, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %0, i64 0, i32 2
  store i32 6, ptr %3, align 4, !tbaa !34
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_edgesplit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !40, i64 116}
!35 = !{!"EdgeSplitModifierData", !36, i64 0, !41, i64 112, !40, i64 116}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !41, i64 112}
!43 = !{!44, !38, i64 60}
!44 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!45 = !{!44, !37, i64 40}
!46 = !{!44, !37, i64 48}
!47 = !{!48, !37, i64 40}
!48 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !49, i64 144, !49, i64 344, !49, i64 544, !49, i64 744, !50, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !51, i64 960, !37, i64 976, !51, i64 984, !37, i64 1000}
!49 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!50 = !{!"short", !38, i64 0}
!51 = !{!"ListBase", !37, i64 0, !37, i64 8}
!52 = !{!38, !38, i64 0}
!53 = !{!54, !37, i64 40}
!54 = !{!"BMEdge", !55, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !56, i64 48, !56, i64 64}
!55 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!56 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!57 = !{!58, !37, i64 40}
!58 = !{!"BMLoop", !55, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!59 = !{!58, !37, i64 32}
!60 = !{!41, !41, i64 0}
!61 = !{!55, !38, i64 13}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!58, !37, i64 56}
!66 = distinct !{!66, !63, !64}
!67 = !{!68, !40, i64 1056}
!68 = !{!"DerivedMesh", !49, i64 0, !49, i64 200, !49, i64 400, !49, i64 600, !49, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
