; ModuleID = 'blender/source/blender/bmesh/operators/bmo_bisect_plane.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_bisect_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"use_snap_center\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"clear_outer\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"clear_inner\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"plane_co\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"plane_no\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Zero normal given\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_bisect_plane_exec = private unnamed_addr constant [22 x i8] c"bmo_bisect_plane_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"geom_cut.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_bisect_plane_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca %struct.BMOIter, align 8
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #8
  %10 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #8
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #8
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #8
  %13 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %4) #10, !range !34
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 9, ptr noundef nonnull @.str.6) #8
  br label %72

16:                                               ; preds = %2
  call void @plane_from_point_normal_v3(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 11, i16 noundef signext 2) #8
  call void @BM_mesh_bisect_plane(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext %10, i8 noundef zeroext 1, i16 noundef signext 1, float noundef %9) #8
  %17 = icmp ne i8 %11, 0
  %18 = icmp ne i8 %12, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = load i32, ptr %0, align 8, !tbaa !35
  %22 = call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.7) #8
  %23 = call fastcc i32 @min_ii(i32 noundef %21, i32 noundef %22) #10
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %25 = sext i32 %23 to i64
  %26 = shl nsw i64 %25, 3
  %27 = call ptr %24(i64 noundef %26, ptr noundef nonnull @__func__.bmo_bisect_plane_exec) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %5) #10
  %28 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !45
  %30 = fsub float %29, %9
  %31 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float %30, ptr %31, align 4, !tbaa !45
  %32 = fadd float %9, %29
  %33 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float %32, ptr %33, align 4, !tbaa !45
  %34 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 1) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %68, label %40

36:                                               ; preds = %56
  %37 = icmp eq i32 %57, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %36
  %39 = zext i32 %57 to i64
  br label %60

40:                                               ; preds = %20, %56
  %41 = phi i32 [ %57, %56 ], [ 0, %20 ]
  %42 = phi ptr [ %58, %56 ], [ %34, %20 ]
  br i1 %17, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.BMVert, ptr %42, i64 0, i32 2
  %45 = call fastcc float @plane_point_side_v3(ptr noundef nonnull %8, ptr noundef nonnull %44) #10
  %46 = fcmp ogt float %45, 0.000000e+00
  br i1 %46, label %52, label %47

47:                                               ; preds = %43, %40
  br i1 %18, label %48, label %56

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.BMVert, ptr %42, i64 0, i32 2
  %50 = call fastcc float @plane_point_side_v3(ptr noundef nonnull %7, ptr noundef nonnull %49) #10
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %43
  %53 = add i32 %41, 1
  %54 = zext i32 %41 to i64
  %55 = getelementptr inbounds ptr, ptr %27, i64 %54
  store ptr %42, ptr %55, align 8, !tbaa !44
  br label %56

56:                                               ; preds = %47, %48, %52
  %57 = phi i32 [ %53, %52 ], [ %41, %48 ], [ %41, %47 ]
  %58 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %36, label %40, !llvm.loop !47

60:                                               ; preds = %38, %66
  %61 = phi i64 [ %39, %38 ], [ %62, %66 ]
  %62 = add nsw i64 %61, -1
  %63 = getelementptr inbounds ptr, ptr %27, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef nonnull %64) #8
  %67 = icmp eq i64 %62, 0
  br i1 %67, label %68, label %60, !llvm.loop !49

68:                                               ; preds = %60, %66, %20, %36
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %69(ptr noundef %27) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #9
  br label %70

70:                                               ; preds = %16, %68
  %71 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %71, ptr noundef nonnull @.str.8, i8 noundef zeroext 11, i16 noundef signext 3) #8
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %71, ptr noundef nonnull @.str.9, i8 noundef zeroext 3, i16 noundef signext 1) #8
  br label %72

72:                                               ; preds = %70, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !50 {
  %2 = load float, ptr %0, align 4, !tbaa !45
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_bisect_plane(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !51 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !52 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  store float %3, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @plane_point_side_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !53 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %0) #10
  %4 = getelementptr inbounds float, ptr %0, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = fadd float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !54 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!34 = !{i8 0, i8 2}
!35 = !{!36, !37, i64 0}
!36 = !{!"BMesh", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !38, i64 28, !38, i64 29, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !37, i64 88, !37, i64 92, !37, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !37, i64 128, !40, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !37, i64 948, !37, i64 952, !37, i64 956, !43, i64 960, !40, i64 976, !43, i64 984, !40, i64 1000}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"CustomData", !40, i64 0, !38, i64 8, !37, i64 172, !37, i64 176, !37, i64 180, !40, i64 184, !40, i64 192}
!42 = !{!"short", !38, i64 0}
!43 = !{!"ListBase", !40, i64 0, !40, i64 8}
!44 = !{!40, !40, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !38, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!"bmo_bisect_plane.c:is_zero_v3"}
!51 = !{!"bmo_bisect_plane.c:min_ii"}
!52 = !{!"bmo_bisect_plane.c:copy_v3_v3"}
!53 = !{!"bmo_bisect_plane.c:plane_point_side_v3"}
!54 = !{!"bmo_bisect_plane.c:dot_v3v3"}
