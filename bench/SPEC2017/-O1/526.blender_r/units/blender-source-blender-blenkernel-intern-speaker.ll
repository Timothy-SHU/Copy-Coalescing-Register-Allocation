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

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_speaker_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 19283, ptr noundef %1) #2
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 7
  store float 1.000000e+00, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 9
  store float 3.600000e+02, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 8
  store float 3.600000e+02, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 10
  store float 1.000000e+00, ptr %7, align 4, !tbaa !45
  %8 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 5
  store float 0x47EFFFFFE0000000, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 6
  store float 1.000000e+00, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 13
  store i16 0, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 12
  store float 1.000000e+00, ptr %11, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 11
  store float 1.000000e+00, ptr %13, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 3
  store float 1.000000e+00, ptr %14, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 4
  store float 0.000000e+00, ptr %15, align 4, !tbaa !53
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_speaker_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #2
  %3 = getelementptr inbounds %struct.Speaker, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %6, %1
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_speaker_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %74, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %73, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10, %27
  %15 = phi ptr [ %30, %27 ], [ %12, %10 ]
  %16 = phi i8 [ %29, %27 ], [ 0, %10 ]
  %17 = phi i8 [ %28, %27 ], [ 0, %10 ]
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i8 1, i8 %17
  %26 = select i1 %24, i8 %16, i8 1
  br label %27

27:                                               ; preds = %21, %14
  %28 = phi i8 [ %17, %14 ], [ %25, %21 ]
  %29 = phi i8 [ %16, %14 ], [ %26, %21 ]
  %30 = load ptr, ptr %15, align 8, !tbaa !61
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %14, !llvm.loop !67

32:                                               ; preds = %27
  %33 = icmp ne i8 %28, 0
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi i1 [ false, %10 ], [ %33, %32 ]
  %36 = phi i8 [ 0, %10 ], [ %29, %32 ]
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %73, label %39

39:                                               ; preds = %34
  %40 = icmp ne i8 %36, 0
  %41 = select i1 %35, i1 %40, i1 false
  br i1 %41, label %42, label %74

42:                                               ; preds = %39
  %43 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #2
  %44 = getelementptr inbounds %struct.Speaker, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ID, ptr %45, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !54
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !54
  br label %51

51:                                               ; preds = %42, %47
  %52 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 6
  store i32 0, ptr %52, align 4, !tbaa !60
  %53 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %53, ptr noundef %43) #2
  %54 = load ptr, ptr %11, align 8, !tbaa !61
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %51, %70
  %57 = phi ptr [ %71, %70 ], [ %54, %51 ]
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !62
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  store ptr %43, ptr %58, align 8, !tbaa !62
  %66 = load i32, ptr %52, align 4, !tbaa !60
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %52, align 4, !tbaa !60
  %68 = load i32, ptr %7, align 4, !tbaa !60
  %69 = add nsw i32 %68, -1
  store i32 %69, ptr %7, align 4, !tbaa !60
  br label %70

70:                                               ; preds = %61, %65, %56
  %71 = load ptr, ptr %57, align 8, !tbaa !61
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %56, !llvm.loop !70

73:                                               ; preds = %34, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #2
  br label %74

74:                                               ; preds = %70, %73, %51, %39, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_speaker_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 4, !tbaa !54
  br label %9

9:                                                ; preds = %5, %1
  tail call void @BKE_free_animdata(ptr noundef %0) #2
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #1

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
!34 = !{!35, !42, i64 152}
!35 = !{!"Speaker", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !40, i64 176, !38, i64 178}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!35, !42, i64 160}
!44 = !{!35, !42, i64 156}
!45 = !{!35, !42, i64 164}
!46 = !{!35, !42, i64 144}
!47 = !{!35, !42, i64 148}
!48 = !{!35, !40, i64 176}
!49 = !{!35, !42, i64 172}
!50 = !{!35, !37, i64 128}
!51 = !{!35, !42, i64 168}
!52 = !{!35, !42, i64 136}
!53 = !{!35, !42, i64 140}
!54 = !{!55, !41, i64 100}
!55 = !{!"bSound", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !42, i64 1176, !42, i64 1180, !42, i64 1184, !42, i64 1188, !42, i64 1192, !42, i64 1196, !41, i64 1200, !41, i64 1204, !37, i64 1208, !37, i64 1216, !37, i64 1224}
!56 = !{!57, !37, i64 0}
!57 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !58, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!58 = !{!"ListBase", !37, i64 0, !37, i64 8}
!59 = !{!35, !37, i64 24}
!60 = !{!35, !41, i64 100}
!61 = !{!37, !37, i64 0}
!62 = !{!63, !37, i64 296}
!63 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !64, i64 312, !37, i64 360, !58, i64 368, !58, i64 384, !58, i64 400, !58, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !58, i64 1056, !58, i64 1072, !58, i64 1088, !58, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !58, i64 1176, !58, i64 1192, !58, i64 1208, !58, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !65, i64 1304, !65, i64 1312, !41, i64 1320, !41, i64 1324, !58, i64 1328, !58, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !58, i64 1400, !37, i64 1416}
!64 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!65 = !{!"long", !38, i64 0}
!66 = !{!63, !37, i64 24}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !68, !69}
