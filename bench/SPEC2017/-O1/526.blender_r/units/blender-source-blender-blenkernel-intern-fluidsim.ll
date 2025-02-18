; ModuleID = 'blender/source/blender/blenkernel/intern/fluidsim.c'
source_filename = "blender/source/blender/blenkernel/intern/fluidsim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }

@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"elbeemmesh_vertices\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"elbeemmesh_triangles\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @initElbeemMesh(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !34
  %10 = tail call ptr @mesh_create_derived_index_render(ptr noundef %0, ptr noundef %1, i64 noundef %9, i32 noundef %7) #2
  tail call void @DM_ensure_tessface(ptr noundef %10) #2
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call ptr %12(ptr noundef %10) #2
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 33
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = tail call ptr %15(ptr noundef %10) #2
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = tail call i32 %18(ptr noundef %10) #2
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call i32 %21(ptr noundef %10) #2
  store i32 %19, ptr %2, align 4, !tbaa !47
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %24 = mul nsw i32 %19, 3
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr %23(i64 noundef %26, ptr noundef nonnull @.str) #2
  %28 = icmp sgt i32 %19, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %8
  %30 = icmp eq i32 %6, 0
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %32 = zext nneg i32 %19 to i64
  br label %33

33:                                               ; preds = %29, %46
  %34 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %35 = mul nuw nsw i64 %34, 3
  %36 = getelementptr inbounds float, ptr %27, i64 %35
  %37 = getelementptr inbounds %struct.MVert, ptr %13, i64 %34
  %38 = load float, ptr %37, align 4, !tbaa !49
  store float %38, ptr %36, align 4, !tbaa !49
  %39 = getelementptr inbounds float, ptr %37, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = getelementptr inbounds float, ptr %36, i64 1
  store float %40, ptr %41, align 4, !tbaa !49
  %42 = getelementptr inbounds float, ptr %37, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = getelementptr inbounds float, ptr %36, i64 2
  store float %43, ptr %44, align 4, !tbaa !49
  br i1 %30, label %46, label %45

45:                                               ; preds = %33
  tail call void @mul_m4_v3(ptr noundef nonnull %31, ptr noundef nonnull %36) #2
  br label %46

46:                                               ; preds = %33, %45
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp eq i64 %47, %32
  br i1 %48, label %49, label %33, !llvm.loop !50

49:                                               ; preds = %46, %8
  store ptr %27, ptr %3, align 8, !tbaa !48
  %50 = icmp sgt i32 %22, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %49
  %52 = zext nneg i32 %22 to i64
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ 0, %51 ], [ %61, %53 ]
  %55 = phi i32 [ 0, %51 ], [ %60, %53 ]
  %56 = getelementptr inbounds %struct.MFace, ptr %16, i64 %54, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !53
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 1, i32 2
  %60 = add nuw nsw i32 %59, %55
  %61 = add nuw nsw i64 %54, 1
  %62 = icmp eq i64 %61, %52
  br i1 %62, label %63, label %53, !llvm.loop !56

63:                                               ; preds = %53, %49
  %64 = phi i32 [ 0, %49 ], [ %60, %53 ]
  store i32 %64, ptr %4, align 4, !tbaa !47
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %66 = mul nsw i32 %64, 3
  %67 = zext nneg i32 %66 to i64
  %68 = shl nuw nsw i64 %67, 2
  %69 = tail call ptr %65(i64 noundef %68, ptr noundef nonnull @.str.1) #2
  %70 = icmp sgt i32 %22, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %63
  %72 = zext nneg i32 %22 to i64
  br label %73

73:                                               ; preds = %71, %98
  %74 = phi i64 [ 0, %71 ], [ %100, %98 ]
  %75 = phi i32 [ 0, %71 ], [ %99, %98 ]
  %76 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74
  %77 = load i32, ptr %76, align 4, !tbaa !57
  %78 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !58
  %80 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !59
  %82 = getelementptr inbounds %struct.MFace, ptr %16, i64 %74, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !53
  %84 = mul nsw i32 %75, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %69, i64 %85
  store i32 %77, ptr %86, align 4, !tbaa !47
  %87 = getelementptr i32, ptr %86, i64 1
  store i32 %79, ptr %87, align 4, !tbaa !47
  %88 = getelementptr i32, ptr %86, i64 2
  store i32 %81, ptr %88, align 4, !tbaa !47
  %89 = add nsw i32 %75, 1
  %90 = icmp eq i32 %83, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %73
  %92 = mul nsw i32 %89, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %69, i64 %93
  store i32 %77, ptr %94, align 4, !tbaa !47
  %95 = getelementptr i32, ptr %94, i64 1
  store i32 %81, ptr %95, align 4, !tbaa !47
  %96 = getelementptr i32, ptr %94, i64 2
  store i32 %83, ptr %96, align 4, !tbaa !47
  %97 = add nsw i32 %75, 2
  br label %98

98:                                               ; preds = %91, %73
  %99 = phi i32 [ %97, %91 ], [ %89, %73 ]
  %100 = add nuw nsw i64 %74, 1
  %101 = icmp eq i64 %100, %72
  br i1 %101, label %102, label %73, !llvm.loop !60

102:                                              ; preds = %98, %63
  store ptr %69, ptr %5, align 8, !tbaa !48
  %103 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 95
  %104 = load ptr, ptr %103, align 8, !tbaa !61
  tail call void %104(ptr noundef %10) #2
  ret void
}

declare ptr @mesh_create_derived_index_render(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

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
!35 = !{!"long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 1168}
!39 = !{!"DerivedMesh", !40, i64 0, !40, i64 200, !40, i64 400, !40, i64 600, !40, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !41, i64 1032, !41, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !41, i64 1064, !36, i64 1072, !41, i64 1080, !41, i64 1088, !41, i64 1096, !41, i64 1104, !41, i64 1112, !41, i64 1120, !41, i64 1128, !41, i64 1136, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !41, i64 1176, !41, i64 1184, !41, i64 1192, !41, i64 1200, !41, i64 1208, !41, i64 1216, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !41, i64 1304, !41, i64 1312, !41, i64 1320, !41, i64 1328, !41, i64 1336, !41, i64 1344, !41, i64 1352, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !41, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !41, i64 1456, !41, i64 1464, !41, i64 1472, !41, i64 1480, !41, i64 1488, !41, i64 1496, !41, i64 1504, !41, i64 1512, !41, i64 1520, !41, i64 1528, !41, i64 1536, !41, i64 1544, !41, i64 1552, !41, i64 1560, !41, i64 1568, !41, i64 1576, !41, i64 1584, !41, i64 1592, !41, i64 1600, !41, i64 1608, !41, i64 1616, !41, i64 1624, !41, i64 1632, !41, i64 1640, !41, i64 1648, !41, i64 1656, !41, i64 1664, !41, i64 1672, !41, i64 1680}
!40 = !{!"CustomData", !41, i64 0, !36, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !41, i64 184, !41, i64 192}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"float", !36, i64 0}
!44 = !{!39, !41, i64 1184}
!45 = !{!39, !41, i64 1104}
!46 = !{!39, !41, i64 1120}
!47 = !{!42, !42, i64 0}
!48 = !{!41, !41, i64 0}
!49 = !{!43, !43, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!54, !42, i64 12}
!54 = !{!"MFace", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !55, i64 16, !36, i64 18, !36, i64 19}
!55 = !{!"short", !36, i64 0}
!56 = distinct !{!56, !51, !52}
!57 = !{!54, !42, i64 0}
!58 = !{!54, !42, i64 4}
!59 = !{!54, !42, i64 8}
!60 = distinct !{!60, !51, !52}
!61 = !{!39, !41, i64 1680}
