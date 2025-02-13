; ModuleID = 'blender/source/blender/blenkernel/intern/speaker.c'
source_filename = "blender/source/blender/blenkernel/intern/speaker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Speaker = type { %struct.ID, ptr, ptr, float, float, float, float, float, float, float, float, float, float, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_speaker_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 19283, ptr noundef %1) #2
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 7
  store <4 x float> <float 1.000000e+00, float 3.600000e+02, float 3.600000e+02, float 1.000000e+00>, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 13
  store i16 0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 11
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 3
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00>, ptr %8, align 8, !tbaa !34
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_speaker_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #2
  %3 = getelementptr inbounds %struct.Speaker, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !45
  br label %10

10:                                               ; preds = %6, %1
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_speaker_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !51
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #2
  br label %64

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %11, %28
  %16 = phi ptr [ %31, %28 ], [ %13, %11 ]
  %17 = phi i8 [ %30, %28 ], [ 0, %11 ]
  %18 = phi i8 [ %29, %28 ], [ 0, %11 ]
  %19 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, i8 1, i8 %18
  %27 = select i1 %25, i8 %17, i8 1
  br label %28

28:                                               ; preds = %22, %15
  %29 = phi i8 [ %18, %15 ], [ %26, %22 ]
  %30 = phi i8 [ %17, %15 ], [ %27, %22 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15, !llvm.loop !58

33:                                               ; preds = %28
  %34 = icmp ne i8 %29, 0
  %35 = icmp eq i8 %30, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #2
  br label %64

38:                                               ; preds = %33
  %39 = icmp ne i8 %30, 0
  %40 = select i1 %34, i1 %39, i1 false
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = tail call ptr @BKE_speaker_copy(ptr noundef %0) #3
  %43 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 6
  store i32 0, ptr %43, align 4, !tbaa !51
  %44 = load ptr, ptr %3, align 8, !tbaa !50
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %44, ptr noundef %42) #2
  %45 = load ptr, ptr %12, align 8, !tbaa !52
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %41, %61
  %48 = phi ptr [ %62, %61 ], [ %45, %41 ]
  %49 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  store ptr %42, ptr %49, align 8, !tbaa !53
  %57 = load i32, ptr %43, align 4, !tbaa !51
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %43, align 4, !tbaa !51
  %59 = load i32, ptr %7, align 4, !tbaa !51
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %7, align 4, !tbaa !51
  br label %61

61:                                               ; preds = %52, %56, %47
  %62 = load ptr, ptr %48, align 8, !tbaa !52
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %47, !llvm.loop !60

64:                                               ; preds = %61, %11, %41, %37, %38, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_speaker_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !45
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 4, !tbaa !45
  br label %9

9:                                                ; preds = %5, %1
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #2
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !42, i64 176}
!39 = !{!"Speaker", !40, i64 0, !41, i64 120, !41, i64 128, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !42, i64 176, !36, i64 178}
!40 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !42, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !41, i64 112}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = !{!39, !41, i64 128}
!45 = !{!46, !43, i64 100}
!46 = !{!"bSound", !40, i64 0, !36, i64 120, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !35, i64 1176, !35, i64 1180, !35, i64 1184, !35, i64 1188, !35, i64 1192, !35, i64 1196, !43, i64 1200, !43, i64 1204, !41, i64 1208, !41, i64 1216, !41, i64 1224}
!47 = !{!48, !41, i64 0}
!48 = !{!"Global", !41, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !49, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!49 = !{!"ListBase", !41, i64 0, !41, i64 8}
!50 = !{!39, !41, i64 24}
!51 = !{!39, !43, i64 100}
!52 = !{!41, !41, i64 0}
!53 = !{!54, !41, i64 296}
!54 = !{!"Object", !40, i64 0, !41, i64 120, !41, i64 128, !42, i64 136, !42, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !55, i64 312, !41, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !43, i64 432, !43, i64 436, !41, i64 440, !41, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !35, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !41, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !35, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !56, i64 1304, !56, i64 1312, !43, i64 1320, !43, i64 1324, !49, i64 1328, !49, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !36, i64 1384, !41, i64 1392, !49, i64 1400, !41, i64 1416}
!55 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!56 = !{!"long", !36, i64 0}
!57 = !{!54, !41, i64 24}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !59}
