; ModuleID = 'blender/source/blender/modifiers/intern/MOD_shapekey.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_shapekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@modifierType_ShapeKey = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"ShapeKey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ShapeKeyModifierData\00\00\00\00\00\00\00\00\00\00\00\00", i32 112, i32 1, i32 10, ptr null, ptr @deformVerts, ptr @deformMatrices, ptr @deformVertsEM, ptr @deformMatricesEM, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !34 {
  %7 = alloca i32, align 4
  %8 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  %15 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = sext i32 %4 to i64
  %18 = mul nsw i64 %17, 12
  %19 = call ptr @BKE_key_evaluate_object_ex(ptr noundef %16, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %3, i64 noundef %18) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  br label %20

20:                                               ; preds = %14, %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformMatrices(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !47 {
  %7 = alloca [3 x [3 x float]], align 16
  %8 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %9 = tail call ptr @BKE_keyblock_from_object(ptr noundef %1) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.KeyBlock, ptr %9, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = icmp eq i32 %13, %5
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %9, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 114
  %21 = load i8, ptr %20, align 1, !tbaa !51
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.KeyBlock, ptr %9, i64 0, i32 3
  %26 = load float, ptr %25, align 4, !tbaa !55
  br label %27

27:                                               ; preds = %19, %24
  %28 = phi float [ %26, %24 ], [ 1.000000e+00, %19 ]
  call void @scale_m3_fl(ptr noundef nonnull %7, float noundef %28) #3
  %29 = icmp sgt i32 %5, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = zext nneg i32 %5 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 %33
  call void @copy_m3_m3(ptr noundef %34, ptr noundef nonnull %7) #3
  %35 = add nuw nsw i64 %33, 1
  %36 = icmp eq i64 %35, %31
  br i1 %36, label %37, label %32, !llvm.loop !56

37:                                               ; preds = %32, %27, %15, %11, %6
  call void @deformVerts(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3, i32 noundef %5, i32 poison) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !58 {
  %7 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Key, ptr %7, i64 0, i32 9
  %11 = load i16, ptr %10, align 8, !tbaa !59
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @deformVerts(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %4, i32 noundef %5, i32 poison) #5
  br label %14

14:                                               ; preds = %13, %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformMatricesEM(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr noundef %5, i32 noundef %6) #0 !PGOFuncName !60 {
  %8 = alloca [3 x [3 x float]], align 16
  %9 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %10 = tail call ptr @BKE_keyblock_from_object(ptr noundef %1) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.KeyBlock, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %10, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.KeyBlock, ptr %10, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !55
  call void @scale_m3_fl(ptr noundef nonnull %8, float noundef %22) #3
  %23 = icmp sgt i32 %6, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = zext nneg i32 %6 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 %27
  call void @copy_m3_m3(ptr noundef %28, ptr noundef nonnull %8) #3
  %29 = add nuw nsw i64 %27, 1
  %30 = icmp eq i64 %29, %25
  br i1 %30, label %31, label %26, !llvm.loop !61

31:                                               ; preds = %26, %20, %16, %12, %7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_evaluate_object_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scale_m3_fl(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }
attributes #5 = { optsize }

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
!34 = !{!"MOD_shapekey.c:deformVerts"}
!35 = !{!36, !38, i64 176}
!36 = !{!"Key", !37, i64 0, !38, i64 120, !38, i64 128, !39, i64 136, !42, i64 168, !42, i64 172, !43, i64 176, !38, i64 192, !38, i64 200, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !44, i64 216, !42, i64 220}
!37 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !38, i64 112}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"short", !39, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = !{!"ListBase", !38, i64 0, !38, i64 8}
!44 = !{!"float", !39, i64 0}
!45 = !{!46, !38, i64 96}
!46 = !{!"ModifierData", !38, i64 0, !38, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!47 = !{!"MOD_shapekey.c:deformMatrices"}
!48 = !{!49, !42, i64 32}
!49 = !{!"KeyBlock", !38, i64 0, !38, i64 8, !44, i64 16, !44, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !38, i64 40, !39, i64 48, !39, i64 112, !44, i64 176, !44, i64 180}
!50 = !{!36, !38, i64 128}
!51 = !{!52, !39, i64 1265}
!52 = !{!"Object", !37, i64 0, !38, i64 120, !38, i64 128, !41, i64 136, !41, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !53, i64 312, !38, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !42, i64 432, !42, i64 436, !38, i64 440, !38, i64 448, !42, i64 456, !42, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !44, i64 616, !44, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !42, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !39, i64 966, !39, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !39, i64 1042, !39, i64 1043, !41, i64 1044, !39, i64 1046, !39, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !41, i64 1124, !41, i64 1126, !39, i64 1128, !42, i64 1144, !42, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !41, i64 1162, !39, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !41, i64 1266, !44, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !54, i64 1304, !54, i64 1312, !42, i64 1320, !42, i64 1324, !43, i64 1328, !43, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !43, i64 1400, !38, i64 1416}
!53 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!54 = !{!"long", !39, i64 0}
!55 = !{!49, !44, i64 20}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"MOD_shapekey.c:deformVertsEM"}
!59 = !{!36, !41, i64 208}
!60 = !{!"MOD_shapekey.c:deformMatricesEM"}
!61 = distinct !{!61, !57}
