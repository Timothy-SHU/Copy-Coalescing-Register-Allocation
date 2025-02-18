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

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  %15 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = sext i32 %4 to i64
  %18 = mul nsw i64 %17, 12
  %19 = call ptr @BKE_key_evaluate_object_ex(ptr noundef %16, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %3, i64 noundef %18) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  br label %20

20:                                               ; preds = %14, %10, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformMatrices(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %10 = tail call ptr @BKE_keyblock_from_object(ptr noundef %1) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #3
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.KeyBlock, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %10, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 114
  %22 = load i8, ptr %21, align 1, !tbaa !49
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.KeyBlock, ptr %10, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !53
  br label %28

28:                                               ; preds = %20, %25
  %29 = phi float [ %27, %25 ], [ 1.000000e+00, %20 ]
  call void @scale_m3_fl(ptr noundef nonnull %8, float noundef %29) #3
  %30 = icmp sgt i32 %5, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = zext nneg i32 %5 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %36, %33 ]
  %35 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 %34
  call void @copy_m3_m3(ptr noundef %35, ptr noundef nonnull %8) #3
  %36 = add nuw nsw i64 %34, 1
  %37 = icmp eq i64 %36, %32
  br i1 %37, label %38, label %33, !llvm.loop !54

38:                                               ; preds = %33, %28, %16, %12, %6
  %39 = call ptr @BKE_key_from_object(ptr noundef %1) #3
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.Key, ptr %39, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  %46 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = sext i32 %5 to i64
  %49 = mul nsw i64 %48, 12
  %50 = call ptr @BKE_key_evaluate_object_ex(ptr noundef %47, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %3, i64 noundef %49) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  br label %51

51:                                               ; preds = %38, %41, %45
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 9
  %12 = load i16, ptr %11, align 8, !tbaa !57
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Key, ptr %15, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  %22 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = sext i32 %5 to i64
  %25 = mul nsw i64 %24, 12
  %26 = call ptr @BKE_key_evaluate_object_ex(ptr noundef %23, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %4, i64 noundef %25) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  br label %27

27:                                               ; preds = %21, %17, %14, %10, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformMatricesEM(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = alloca [3 x [3 x float]], align 16
  %9 = tail call ptr @BKE_key_from_object(ptr noundef %1) #3
  %10 = tail call ptr @BKE_keyblock_from_object(ptr noundef %1) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #3
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.KeyBlock, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %10, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.KeyBlock, ptr %10, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !53
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
  br i1 %30, label %31, label %26, !llvm.loop !58

31:                                               ; preds = %26, %20, %16, %12, %7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_key_evaluate_object_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #2

declare void @scale_m3_fl(ptr noundef, float noundef) local_unnamed_addr #2

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !37, i64 176}
!35 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !42, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !43, i64 216, !41, i64 220}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!45, !37, i64 96}
!45 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!46 = !{!47, !41, i64 32}
!47 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !43, i64 176, !43, i64 180}
!48 = !{!35, !37, i64 128}
!49 = !{!50, !38, i64 1265}
!50 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !51, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !52, i64 1304, !52, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!51 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!52 = !{!"long", !38, i64 0}
!53 = !{!47, !43, i64 20}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!35, !40, i64 208}
!58 = distinct !{!58, !55, !56}
