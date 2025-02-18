; ModuleID = 'blender/source/blender/blenkernel/intern/object_deform.c'
source_filename = "blender/source/blender/blenkernel/intern/object_deform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"defflags\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"BKE_objdef_validmap_get gh\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"wpaint valid map\00", align 1
@__func__.BKE_objdef_selected_get = private unnamed_addr constant [24 x i8] c"BKE_objdef_selected_get\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_objdef_lock_flags_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = sext i32 %1 to i64
  %5 = tail call ptr %3(i64 noundef %4, ptr noundef nonnull @.str) #4
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp sgt i32 %1, 0
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %22, %13 ]
  %15 = phi ptr [ %7, %11 ], [ %23, %13 ]
  %16 = phi i8 [ 0, %11 ], [ %21, %13 ]
  %17 = getelementptr inbounds %struct.bDeformGroup, ptr %15, i64 0, i32 3
  %18 = load i8, ptr %17, align 8, !tbaa !38
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds i8, ptr %5, i64 %14
  store i8 %19, ptr %20, align 1, !tbaa !40
  %21 = or i8 %19, %16
  %22 = add nuw nsw i64 %14, 1
  %23 = load ptr, ptr %15, align 8, !tbaa !34
  %24 = icmp slt i64 %22, %12
  %25 = icmp ne ptr %23, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %13, label %27, !llvm.loop !41

27:                                               ; preds = %13
  %28 = icmp eq i8 %21, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2, %27
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef %5) #4
  br label %31

31:                                               ; preds = %27, %29
  %32 = phi ptr [ null, %29 ], [ %5, %27 ]
  ret ptr %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_objdef_validmap_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef nonnull @.str.1, i32 noundef %1) #4
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.bDeformGroup, ptr %12, i64 0, i32 2
  tail call void @BLI_ghash_insert(ptr noundef %8, ptr noundef nonnull %13, ptr noundef null) #4
  %14 = load ptr, ptr %12, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !46

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %16, %65
  %21 = phi ptr [ %67, %65 ], [ %18, %16 ]
  %22 = phi i32 [ %66, %65 ], [ 1, %16 ]
  %23 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !55
  %25 = and i32 %24, 33
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !57
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ArmatureModifierData, ptr %21, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %39, %55
  %43 = phi ptr [ %56, %55 ], [ %40, %39 ]
  %44 = getelementptr inbounds %struct.bPoseChannel, ptr %43, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = getelementptr inbounds %struct.Bone, ptr %45, i64 0, i32 10
  %47 = load i32, ptr %46, align 8, !tbaa !63
  %48 = and i32 %47, 4096
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %43, i64 0, i32 4
  %52 = call ptr @BLI_ghash_lookup_p(ptr noundef %8, ptr noundef nonnull %51) #4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store ptr inttoptr (i64 1 to ptr), ptr %52, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %50, %54, %42
  %56 = load ptr, ptr %43, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %42, !llvm.loop !65

58:                                               ; preds = %55, %39, %31, %35, %27, %20
  %59 = load ptr, ptr %21, align 8, !tbaa !66
  %60 = icmp eq ptr %59, null
  %61 = icmp ne i32 %22, 0
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %3) #4
  br label %65

65:                                               ; preds = %58, %63
  %66 = phi i32 [ 0, %63 ], [ %22, %58 ]
  %67 = phi ptr [ %64, %63 ], [ %59, %58 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %20, !llvm.loop !67

69:                                               ; preds = %65, %16
  %70 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %71 = sext i32 %1 to i64
  %72 = call ptr %70(i64 noundef %71, ptr noundef nonnull @.str.2) #4
  %73 = load ptr, ptr %4, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %69, %75
  %76 = phi i64 [ %83, %75 ], [ 0, %69 ]
  %77 = phi ptr [ %84, %75 ], [ %73, %69 ]
  %78 = getelementptr inbounds %struct.bDeformGroup, ptr %77, i64 0, i32 2
  %79 = call ptr @BLI_ghash_lookup(ptr noundef %8, ptr noundef nonnull %78) #4
  %80 = icmp ne ptr %79, null
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds i8, ptr %72, i64 %76
  store i8 %81, ptr %82, align 1, !tbaa !40
  %83 = add nuw i64 %76, 1
  %84 = load ptr, ptr %77, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %75, !llvm.loop !68

86:                                               ; preds = %75, %69
  call void @BLI_ghash_free(ptr noundef %8, ptr noundef null, ptr noundef null) #4
  br label %87

87:                                               ; preds = %2, %86
  %88 = phi ptr [ %72, %86 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #4
  ret ptr %88
}

declare ptr @BLI_ghash_str_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_objdef_selected_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = sext i32 %1 to i64
  %6 = tail call ptr %4(i64 noundef %5, ptr noundef nonnull @__func__.BKE_objdef_selected_get) #4
  %7 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %0) #4
  store i32 0, ptr %2, align 4, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp ne i32 %1, 0
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %45

17:                                               ; preds = %9
  %18 = zext i32 %1 to i64
  br label %19

19:                                               ; preds = %17, %38
  %20 = phi i64 [ 0, %17 ], [ %39, %38 ]
  %21 = phi ptr [ %13, %17 ], [ %40, %38 ]
  %22 = getelementptr inbounds %struct.bDeformGroup, ptr %21, i64 0, i32 2
  %23 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %11, ptr noundef nonnull %22) #4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.Bone, ptr %27, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !63
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %6, i64 %20
  store i8 1, ptr %33, align 1, !tbaa !40
  %34 = load i32, ptr %2, align 4, !tbaa !69
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %2, align 4, !tbaa !69
  br label %38

36:                                               ; preds = %25, %19
  %37 = getelementptr inbounds i8, ptr %6, i64 %20
  store i8 0, ptr %37, align 1, !tbaa !40
  br label %38

38:                                               ; preds = %36, %32
  %39 = add nuw nsw i64 %20, 1
  %40 = load ptr, ptr %21, align 8, !tbaa !34
  %41 = icmp ult i64 %39, %18
  %42 = icmp ne ptr %40, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %19, label %45, !llvm.loop !70

44:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %5, i1 false)
  br label %45

45:                                               ; preds = %38, %9, %44
  ret ptr %6
}

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !36, i64 80}
!39 = !{!"bDeformGroup", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 81}
!40 = !{!36, !36, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !35, i64 0}
!45 = !{!"ListBase", !35, i64 0, !35, i64 8}
!46 = distinct !{!46, !42, !43}
!47 = !{!48, !35, i64 416}
!48 = !{!"Object", !49, i64 0, !35, i64 120, !35, i64 128, !50, i64 136, !50, i64 138, !51, i64 140, !51, i64 144, !51, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !52, i64 312, !35, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !51, i64 432, !51, i64 436, !35, i64 440, !35, i64 448, !51, i64 456, !51, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !53, i64 616, !53, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !51, i64 944, !50, i64 948, !50, i64 950, !50, i64 952, !50, i64 954, !50, i64 956, !50, i64 958, !50, i64 960, !50, i64 962, !50, i64 964, !36, i64 966, !36, i64 967, !51, i64 968, !51, i64 972, !51, i64 976, !51, i64 980, !51, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !50, i64 1036, !50, i64 1038, !50, i64 1040, !36, i64 1042, !36, i64 1043, !50, i64 1044, !36, i64 1046, !36, i64 1047, !53, i64 1048, !53, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !53, i64 1120, !50, i64 1124, !50, i64 1126, !36, i64 1128, !51, i64 1144, !51, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !50, i64 1162, !36, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !50, i64 1266, !53, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !54, i64 1304, !54, i64 1312, !51, i64 1320, !51, i64 1324, !45, i64 1328, !45, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !45, i64 1400, !35, i64 1416}
!49 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !50, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !35, i64 112}
!50 = !{!"short", !36, i64 0}
!51 = !{!"int", !36, i64 0}
!52 = !{!"bAnimVizSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!53 = !{!"float", !36, i64 0}
!54 = !{!"long", !36, i64 0}
!55 = !{!56, !51, i64 20}
!56 = !{!"ModifierData", !35, i64 0, !35, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!57 = !{!56, !51, i64 16}
!58 = !{!59, !35, i64 120}
!59 = !{!"ArmatureModifierData", !56, i64 0, !50, i64 112, !50, i64 114, !51, i64 116, !35, i64 120, !35, i64 128, !36, i64 136}
!60 = !{!48, !35, i64 288}
!61 = !{!62, !35, i64 120}
!62 = !{!"bPoseChannel", !35, i64 0, !35, i64 8, !35, i64 16, !45, i64 24, !36, i64 40, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !35, i64 120, !35, i64 128, !35, i64 136, !45, i64 144, !45, i64 160, !35, i64 176, !35, i64 184, !35, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !53, i64 264, !50, i64 268, !50, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !53, i64 524, !53, i64 528, !53, i64 532, !35, i64 536}
!63 = !{!64, !51, i64 176}
!64 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !45, i64 32, !36, i64 48, !53, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !51, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !53, i64 268, !53, i64 272, !53, i64 276, !53, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !36, i64 308, !51, i64 320, !50, i64 324, !36, i64 326}
!65 = distinct !{!65, !42, !43}
!66 = !{!56, !35, i64 0}
!67 = distinct !{!67, !42, !43}
!68 = distinct !{!68, !42, !43}
!69 = !{!51, !51, i64 0}
!70 = distinct !{!70, !42, !43}
