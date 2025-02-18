; ModuleID = 'blender/source/blender/blenkernel/intern/idcode.c'
source_filename = "blender/source/blender/blenkernel/intern/idcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IDType = type { i16, ptr, ptr, i32 }

@idtypes = internal constant [35 x %struct.IDType] [%struct.IDType { i16 17217, ptr @.str, ptr @.str.1, i32 1 }, %struct.IDType { i16 21057, ptr @.str.2, ptr @.str.3, i32 1 }, %struct.IDType { i16 21058, ptr @.str.4, ptr @.str.5, i32 1 }, %struct.IDType { i16 16707, ptr @.str.6, ptr @.str.7, i32 1 }, %struct.IDType { i16 21827, ptr @.str.8, ptr @.str.9, i32 1 }, %struct.IDType { i16 17479, ptr @.str.10, ptr @.str.11, i32 1 }, %struct.IDType { i16 21063, ptr @.str.12, ptr @.str.13, i32 1 }, %struct.IDType { i16 17481, ptr @.str.14, ptr @.str.15, i32 0 }, %struct.IDType { i16 19785, ptr @.str.16, ptr @.str.17, i32 1 }, %struct.IDType { i16 20553, ptr @.str.18, ptr @.str.19, i32 1 }, %struct.IDType { i16 17739, ptr @.str.20, ptr @.str.21, i32 0 }, %struct.IDType { i16 16716, ptr @.str.22, ptr @.str.23, i32 1 }, %struct.IDType { i16 18764, ptr @.str.24, ptr @.str.25, i32 0 }, %struct.IDType { i16 21324, ptr @.str.26, ptr @.str.27, i32 1 }, %struct.IDType { i16 21580, ptr @.str.28, ptr @.str.29, i32 1 }, %struct.IDType { i16 16717, ptr @.str.30, ptr @.str.31, i32 1 }, %struct.IDType { i16 16973, ptr @.str.32, ptr @.str.33, i32 1 }, %struct.IDType { i16 17229, ptr @.str.34, ptr @.str.35, i32 1 }, %struct.IDType { i16 17741, ptr @.str.36, ptr @.str.37, i32 1 }, %struct.IDType { i16 21325, ptr @.str.38, ptr @.str.39, i32 1 }, %struct.IDType { i16 21582, ptr @.str.40, ptr @.str.41, i32 1 }, %struct.IDType { i16 16975, ptr @.str.42, ptr @.str.43, i32 1 }, %struct.IDType { i16 16720, ptr @.str.44, ptr @.str.45, i32 0 }, %struct.IDType { i16 19536, ptr @.str.46, ptr @.str.47, i32 1 }, %struct.IDType { i16 17232, ptr @.str.48, ptr @.str.49, i32 1 }, %struct.IDType { i16 17235, ptr @.str.50, ptr @.str.51, i32 1 }, %struct.IDType { i16 21075, ptr @.str.52, ptr @.str.53, i32 0 }, %struct.IDType { i16 20819, ptr @.str.54, ptr @.str.55, i32 0 }, %struct.IDType { i16 19283, ptr @.str.56, ptr @.str.57, i32 1 }, %struct.IDType { i16 20307, ptr @.str.58, ptr @.str.59, i32 1 }, %struct.IDType { i16 17748, ptr @.str.60, ptr @.str.61, i32 1 }, %struct.IDType { i16 22612, ptr @.str.62, ptr @.str.63, i32 1 }, %struct.IDType { i16 18006, ptr @.str.64, ptr @.str.65, i32 1 }, %struct.IDType { i16 20311, ptr @.str.66, ptr @.str.67, i32 1 }, %struct.IDType { i16 19799, ptr @.str.68, ptr @.str.69, i32 0 }], align 16
@.str = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"actions\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"armatures\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"brushes\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"cameras\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"GPencil\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"grease_pencil\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ids\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Ipo\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"ipos\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"shape_keys\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"lamps\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Library\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"libraries\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"FreestyleLineStyle\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"linestyles\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"lattices\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"materials\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Metaball\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"metaballs\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"MovieClip\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"movieclips\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"meshes\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"masks\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"NodeTree\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"node_groups\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"particles\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Palettes\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"palettes\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"PaintCurve\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"paint_curves\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"scenes\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"screens\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"Sequence\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"sequences\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"speakers\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"sounds\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"textures\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"VFont\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"worlds\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"WindowManager\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"window_managers\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_idcode_is_valid(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i64 [ %6, %5 ], [ 35, %1 ]
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = add nsw i64 %3, -1
  %7 = getelementptr inbounds [35 x %struct.IDType], ptr @idtypes, i64 0, i64 %6
  %8 = load i16, ptr %7, align 16, !tbaa !34
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %2, !llvm.loop !41

11:                                               ; preds = %2, %5
  %12 = zext i1 %4 to i8
  ret i8 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_idcode_is_linkable(i32 noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i64 [ %6, %5 ], [ 35, %1 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = add nsw i64 %3, -1
  %7 = getelementptr inbounds [35 x %struct.IDType], ptr @idtypes, i64 0, i64 %6
  %8 = load i16, ptr %7, align 16, !tbaa !34
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %2, !llvm.loop !41

11:                                               ; preds = %2, %5
  %12 = phi ptr [ %7, %5 ], [ null, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.IDType, ptr %12, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  br label %19

19:                                               ; preds = %11, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %11 ]
  ret i8 %20
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_idcode_to_name(i32 noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i64 [ %6, %5 ], [ 35, %1 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = add nsw i64 %3, -1
  %7 = getelementptr inbounds [35 x %struct.IDType], ptr @idtypes, i64 0, i64 %6
  %8 = load i16, ptr %7, align 16, !tbaa !34
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %2, !llvm.loop !41

11:                                               ; preds = %2, %5
  %12 = phi ptr [ %7, %5 ], [ null, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.IDType, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %11, %14
  %18 = phi ptr [ %16, %14 ], [ null, %11 ]
  ret ptr %18
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_idcode_from_name(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i64 [ %6, %5 ], [ 35, %1 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = add nsw i64 %3, -1
  %7 = getelementptr inbounds [35 x %struct.IDType], ptr @idtypes, i64 0, i64 %6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %8) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2, !llvm.loop !46

11:                                               ; preds = %5
  %12 = getelementptr inbounds [35 x %struct.IDType], ptr @idtypes, i64 0, i64 %6
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi ptr [ %12, %11 ], [ null, %2 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i16, ptr %14, align 8, !tbaa !34
  %18 = zext i16 %17 to i32
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_idcode_to_name_plural(i32 noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i64 [ %6, %5 ], [ 35, %1 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = add nsw i64 %3, -1
  %7 = getelementptr inbounds [35 x %struct.IDType], ptr @idtypes, i64 0, i64 %6
  %8 = load i16, ptr %7, align 16, !tbaa !34
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %2, !llvm.loop !41

11:                                               ; preds = %2, %5
  %12 = phi ptr [ %7, %5 ], [ null, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.IDType, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  br label %17

17:                                               ; preds = %11, %14
  %18 = phi ptr [ %16, %14 ], [ null, %11 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_idcode_iter_step(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 4, !tbaa !48
  %3 = icmp ult i32 %2, 35
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = add nuw nsw i32 %2, 1
  store i32 %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds [35 x %struct.IDType], ptr @idtypes, i64 0, i64 %5
  %8 = load i16, ptr %7, align 16, !tbaa !34
  %9 = zext i16 %8 to i32
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"", !36, i64 0, !39, i64 8, !39, i64 16, !40, i64 24}
!36 = !{!"short", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!35, !40, i64 24}
!45 = !{!35, !39, i64 8}
!46 = distinct !{!46, !42, !43}
!47 = !{!35, !39, i64 16}
!48 = !{!40, !40, i64 0}
