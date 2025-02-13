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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_objdef_lock_flags_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = sext i32 %1 to i64
  %5 = tail call ptr %3(i64 noundef %4, ptr noundef nonnull @.str) #5
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp sgt i32 %1, 0
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %27

11:                                               ; preds = %2, %11
  %12 = phi i64 [ %20, %11 ], [ 0, %2 ]
  %13 = phi ptr [ %21, %11 ], [ %7, %2 ]
  %14 = phi i8 [ %19, %11 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.bDeformGroup, ptr %13, i64 0, i32 3
  %16 = load i8, ptr %15, align 8, !tbaa !38
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds i8, ptr %5, i64 %12
  store i8 %17, ptr %18, align 1, !tbaa !40
  %19 = or i8 %17, %14
  %20 = add nuw nsw i64 %12, 1
  %21 = load ptr, ptr %13, align 8, !tbaa !34
  %22 = icmp slt i64 %20, %4
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %11, label %25, !llvm.loop !41

25:                                               ; preds = %11
  %26 = icmp eq i8 %19, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2, %25
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef %5) #5
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi ptr [ null, %27 ], [ %5, %25 ]
  ret ptr %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_objdef_validmap_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %5 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %4) #7, !range !43
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %87

7:                                                ; preds = %2
  %8 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef nonnull @.str.1, i32 noundef %1) #5
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.bDeformGroup, ptr %12, i64 0, i32 2
  tail call void @BLI_ghash_insert(ptr noundef %8, ptr noundef nonnull %13, ptr noundef null) #5
  %14 = load ptr, ptr %12, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !44

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %16, %65
  %21 = phi ptr [ %67, %65 ], [ %18, %16 ]
  %22 = phi i32 [ %66, %65 ], [ 1, %16 ]
  %23 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !54
  %25 = and i32 %24, 33
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !56
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ArmatureModifierData, ptr %21, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %39, %55
  %43 = phi ptr [ %56, %55 ], [ %40, %39 ]
  %44 = getelementptr inbounds %struct.bPoseChannel, ptr %43, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = getelementptr inbounds %struct.Bone, ptr %45, i64 0, i32 10
  %47 = load i32, ptr %46, align 8, !tbaa !62
  %48 = and i32 %47, 4096
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %43, i64 0, i32 4
  %52 = call ptr @BLI_ghash_lookup_p(ptr noundef %8, ptr noundef nonnull %51) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store ptr inttoptr (i64 1 to ptr), ptr %52, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %50, %54, %42
  %56 = load ptr, ptr %43, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %42, !llvm.loop !64

58:                                               ; preds = %55, %39, %31, %35, %27, %20
  %59 = load ptr, ptr %21, align 8, !tbaa !65
  %60 = icmp eq ptr %59, null
  %61 = icmp ne i32 %22, 0
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %3) #5
  br label %65

65:                                               ; preds = %58, %63
  %66 = phi i32 [ 0, %63 ], [ %22, %58 ]
  %67 = phi ptr [ %64, %63 ], [ %59, %58 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %20, !llvm.loop !66

69:                                               ; preds = %65, %16
  %70 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %71 = sext i32 %1 to i64
  %72 = call ptr %70(i64 noundef %71, ptr noundef nonnull @.str.2) #5
  %73 = load ptr, ptr %4, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %69, %75
  %76 = phi i64 [ %83, %75 ], [ 0, %69 ]
  %77 = phi ptr [ %84, %75 ], [ %73, %69 ]
  %78 = getelementptr inbounds %struct.bDeformGroup, ptr %77, i64 0, i32 2
  %79 = call ptr @BLI_ghash_lookup(ptr noundef %8, ptr noundef nonnull %78) #5
  %80 = icmp ne ptr %79, null
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds i8, ptr %72, i64 %76
  store i8 %81, ptr %82, align 1, !tbaa !40
  %83 = add nuw i64 %76, 1
  %84 = load ptr, ptr %77, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %75, !llvm.loop !67

86:                                               ; preds = %75, %69
  call void @BLI_ghash_free(ptr noundef %8, ptr noundef null, ptr noundef null) #5
  br label %87

87:                                               ; preds = %2, %86
  %88 = phi ptr [ %72, %86 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #6
  ret ptr %88
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !68 {
  %2 = load ptr, ptr %0, align 8, !tbaa !69
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_objdef_selected_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = sext i32 %1 to i64
  %6 = tail call ptr %4(i64 noundef %5, ptr noundef nonnull @__func__.BKE_objdef_selected_get) #5
  %7 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %0) #5
  store i32 0, ptr %2, align 4, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !59
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
  %23 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %11, ptr noundef nonnull %22) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.Bone, ptr %27, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !62
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %6, i64 %20
  store i8 1, ptr %33, align 1, !tbaa !40
  %34 = load i32, ptr %2, align 4, !tbaa !70
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %2, align 4, !tbaa !70
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
  br i1 %43, label %19, label %45, !llvm.loop !71

44:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %5, i1 false)
  br label %45

45:                                               ; preds = %38, %9, %44
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !36, i64 80}
!39 = !{!"bDeformGroup", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 81}
!40 = !{!36, !36, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{i8 0, i8 2}
!44 = distinct !{!44, !42}
!45 = !{!46, !35, i64 416}
!46 = !{!"Object", !47, i64 0, !35, i64 120, !35, i64 128, !48, i64 136, !48, i64 138, !49, i64 140, !49, i64 144, !49, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !50, i64 312, !35, i64 360, !51, i64 368, !51, i64 384, !51, i64 400, !51, i64 416, !49, i64 432, !49, i64 436, !35, i64 440, !35, i64 448, !49, i64 456, !49, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !52, i64 616, !52, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !49, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !36, i64 966, !36, i64 967, !49, i64 968, !49, i64 972, !49, i64 976, !49, i64 980, !49, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !36, i64 1042, !36, i64 1043, !48, i64 1044, !36, i64 1046, !36, i64 1047, !52, i64 1048, !52, i64 1052, !51, i64 1056, !51, i64 1072, !51, i64 1088, !51, i64 1104, !52, i64 1120, !48, i64 1124, !48, i64 1126, !36, i64 1128, !49, i64 1144, !49, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !48, i64 1162, !36, i64 1164, !51, i64 1176, !51, i64 1192, !51, i64 1208, !51, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !48, i64 1266, !52, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !53, i64 1304, !53, i64 1312, !49, i64 1320, !49, i64 1324, !51, i64 1328, !51, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !51, i64 1400, !35, i64 1416}
!47 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !48, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !35, i64 112}
!48 = !{!"short", !36, i64 0}
!49 = !{!"int", !36, i64 0}
!50 = !{!"bAnimVizSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44}
!51 = !{!"ListBase", !35, i64 0, !35, i64 8}
!52 = !{!"float", !36, i64 0}
!53 = !{!"long", !36, i64 0}
!54 = !{!55, !49, i64 20}
!55 = !{!"ModifierData", !35, i64 0, !35, i64 8, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!56 = !{!55, !49, i64 16}
!57 = !{!58, !35, i64 120}
!58 = !{!"ArmatureModifierData", !55, i64 0, !48, i64 112, !48, i64 114, !49, i64 116, !35, i64 120, !35, i64 128, !36, i64 136}
!59 = !{!46, !35, i64 288}
!60 = !{!61, !35, i64 120}
!61 = !{!"bPoseChannel", !35, i64 0, !35, i64 8, !35, i64 16, !51, i64 24, !36, i64 40, !48, i64 104, !48, i64 106, !48, i64 108, !48, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !35, i64 120, !35, i64 128, !35, i64 136, !51, i64 144, !51, i64 160, !35, i64 176, !35, i64 184, !35, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !52, i64 264, !48, i64 268, !48, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !52, i64 524, !52, i64 528, !52, i64 532, !35, i64 536}
!62 = !{!63, !49, i64 176}
!63 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !51, i64 32, !36, i64 48, !52, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !49, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !52, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !36, i64 308, !49, i64 320, !48, i64 324, !36, i64 326}
!64 = distinct !{!64, !42}
!65 = !{!55, !35, i64 0}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !42}
!68 = !{!"object_deform.c:BLI_listbase_is_empty"}
!69 = !{!51, !35, i64 0}
!70 = !{!49, !49, i64 0}
!71 = distinct !{!71, !42}
