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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initElbeemMesh(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !34
  %10 = tail call ptr @mesh_create_derived_index_render(ptr noundef %0, ptr noundef %1, i64 noundef %9, i32 noundef %7) #3
  tail call void @DM_ensure_tessface(ptr noundef %10) #3
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call ptr %12(ptr noundef %10) #3
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 33
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = tail call ptr %15(ptr noundef %10) #3
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = tail call i32 %18(ptr noundef %10) #3
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call i32 %21(ptr noundef %10) #3
  store i32 %19, ptr %2, align 4, !tbaa !47
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %24 = mul nsw i32 %19, 3
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr %23(i64 noundef %26, ptr noundef nonnull @.str) #3
  %28 = icmp sgt i32 %19, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %8
  %30 = icmp eq i32 %6, 0
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %32 = zext nneg i32 %19 to i64
  br label %33

33:                                               ; preds = %29, %39
  %34 = phi i64 [ 0, %29 ], [ %40, %39 ]
  %35 = mul nuw nsw i64 %34, 3
  %36 = getelementptr inbounds float, ptr %27, i64 %35
  %37 = getelementptr inbounds %struct.MVert, ptr %13, i64 %34
  tail call fastcc void @copy_v3_v3(ptr noundef %36, ptr noundef %37) #4
  br i1 %30, label %39, label %38

38:                                               ; preds = %33
  tail call void @mul_m4_v3(ptr noundef nonnull %31, ptr noundef %36) #3
  br label %39

39:                                               ; preds = %33, %38
  %40 = add nuw nsw i64 %34, 1
  %41 = icmp eq i64 %40, %32
  br i1 %41, label %42, label %33, !llvm.loop !49

42:                                               ; preds = %39, %8
  store ptr %27, ptr %3, align 8, !tbaa !48
  %43 = icmp sgt i32 %22, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = zext nneg i32 %22 to i64
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %44 ], [ %53, %46 ]
  %49 = getelementptr inbounds %struct.MFace, ptr %16, i64 %47, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !51
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 1, i32 2
  %53 = add nuw nsw i32 %52, %48
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, %45
  br i1 %55, label %56, label %46, !llvm.loop !54

56:                                               ; preds = %46, %42
  %57 = phi i32 [ 0, %42 ], [ %53, %46 ]
  store i32 %57, ptr %4, align 4, !tbaa !47
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %59 = mul nsw i32 %57, 3
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 2
  %62 = tail call ptr %58(i64 noundef %61, ptr noundef nonnull @.str.1) #3
  br i1 %43, label %63, label %92

63:                                               ; preds = %56
  %64 = zext nneg i32 %22 to i64
  br label %65

65:                                               ; preds = %63, %88
  %66 = phi i64 [ 0, %63 ], [ %90, %88 ]
  %67 = phi i32 [ 0, %63 ], [ %89, %88 ]
  %68 = getelementptr inbounds %struct.MFace, ptr %16, i64 %66
  %69 = getelementptr inbounds %struct.MFace, ptr %16, i64 %66, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !55
  %71 = getelementptr inbounds %struct.MFace, ptr %16, i64 %66, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !51
  %73 = mul nsw i32 %67, 3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %62, i64 %74
  %76 = load <2 x i32>, ptr %68, align 4, !tbaa !47
  store <2 x i32> %76, ptr %75, align 4, !tbaa !47
  %77 = getelementptr i32, ptr %75, i64 2
  store i32 %70, ptr %77, align 4, !tbaa !47
  %78 = add nsw i32 %67, 1
  %79 = icmp eq i32 %72, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %65
  %81 = mul nsw i32 %78, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %62, i64 %82
  %84 = extractelement <2 x i32> %76, i64 0
  store i32 %84, ptr %83, align 4, !tbaa !47
  %85 = getelementptr i32, ptr %83, i64 1
  store i32 %70, ptr %85, align 4, !tbaa !47
  %86 = getelementptr i32, ptr %83, i64 2
  store i32 %72, ptr %86, align 4, !tbaa !47
  %87 = add nsw i32 %67, 2
  br label %88

88:                                               ; preds = %80, %65
  %89 = phi i32 [ %87, %80 ], [ %78, %65 ]
  %90 = add nuw nsw i64 %66, 1
  %91 = icmp eq i64 %90, %64
  br i1 %91, label %92, label %65, !llvm.loop !56

92:                                               ; preds = %88, %56
  store ptr %62, ptr %5, align 8, !tbaa !48
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 95
  %94 = load ptr, ptr %93, align 8, !tbaa !57
  tail call void %94(ptr noundef %10) #3
  ret void
}

; Function Attrs: optsize
declare ptr @mesh_create_derived_index_render(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !58 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !42, i64 12}
!52 = !{!"MFace", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !53, i64 16, !36, i64 18, !36, i64 19}
!53 = !{!"short", !36, i64 0}
!54 = distinct !{!54, !50}
!55 = !{!52, !42, i64 8}
!56 = distinct !{!56, !50}
!57 = !{!39, !41, i64 1680}
!58 = !{!"fluidsim.c:copy_v3_v3"}
!59 = !{!43, !43, i64 0}
