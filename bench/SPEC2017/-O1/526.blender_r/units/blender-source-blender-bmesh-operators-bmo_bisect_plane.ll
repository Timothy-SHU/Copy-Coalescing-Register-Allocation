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

; Function Attrs: nounwind uwtable
define dso_local void @bmo_bisect_plane_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca %struct.BMOIter, align 8
  %7 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %9 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %10 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #5
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #5
  %11 = load float, ptr %4, align 4, !tbaa !34
  %12 = fcmp une float %11, 0.000000e+00
  %13 = getelementptr inbounds float, ptr %4, i64 1
  %14 = load float, ptr %13, align 4
  %15 = fcmp une float %14, 0.000000e+00
  %16 = select i1 %12, i1 true, i1 %15
  %17 = getelementptr inbounds float, ptr %4, i64 2
  %18 = load float, ptr %17, align 4
  %19 = fcmp une float %18, 0.000000e+00
  %20 = select i1 %16, i1 true, i1 %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %100

22:                                               ; preds = %2
  call void @plane_from_point_normal_v3(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #5
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #5
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 11, i16 noundef signext 2) #5
  call void @BM_mesh_bisect_plane(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext %8, i8 noundef zeroext 1, i16 noundef signext 1, float noundef %7) #5
  %23 = icmp ne i8 %9, 0
  %24 = icmp ne i8 %10, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %22
  %27 = load i32, ptr %0, align 8, !tbaa !38
  %28 = call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.7) #5
  %29 = call i32 @llvm.smin.i32(i32 %27, i32 %28)
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %31 = sext i32 %29 to i64
  %32 = shl nsw i64 %31, 3
  %33 = call ptr %30(i64 noundef %32, ptr noundef nonnull @__func__.bmo_bisect_plane_exec) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #5
  %34 = load float, ptr %5, align 16, !tbaa !34
  %35 = getelementptr inbounds float, ptr %5, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %5, i64 2
  %38 = load float, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fsub float %40, %7
  %42 = fadd float %7, %40
  %43 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 1) #5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %81, label %45

45:                                               ; preds = %26, %77
  %46 = phi i32 [ %78, %77 ], [ 0, %26 ]
  %47 = phi ptr [ %79, %77 ], [ %43, %26 ]
  br i1 %23, label %48, label %60

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = fmul float %36, %52
  %54 = call float @llvm.fmuladd.f32(float %50, float %34, float %53)
  %55 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = call float @llvm.fmuladd.f32(float %56, float %38, float %54)
  %58 = fadd float %41, %57
  %59 = fcmp ogt float %58, 0.000000e+00
  br i1 %59, label %73, label %60

60:                                               ; preds = %48, %45
  br i1 %24, label %61, label %77

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = fmul float %36, %65
  %67 = call float @llvm.fmuladd.f32(float %63, float %34, float %66)
  %68 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = call float @llvm.fmuladd.f32(float %69, float %38, float %67)
  %71 = fadd float %42, %70
  %72 = fcmp olt float %71, 0.000000e+00
  br i1 %72, label %73, label %77

73:                                               ; preds = %61, %48
  %74 = add i32 %46, 1
  %75 = zext i32 %46 to i64
  %76 = getelementptr inbounds ptr, ptr %33, i64 %75
  store ptr %47, ptr %76, align 8, !tbaa !45
  br label %77

77:                                               ; preds = %60, %61, %73
  %78 = phi i32 [ %74, %73 ], [ %46, %61 ], [ %46, %60 ]
  %79 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #5
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %45, !llvm.loop !46

81:                                               ; preds = %77, %26
  %82 = phi i32 [ 0, %26 ], [ %78, %77 ]
  br label %83

83:                                               ; preds = %81, %95
  %84 = phi i32 [ %92, %95 ], [ %82, %81 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = add i32 %84, -1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %33, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !45
  br label %91

91:                                               ; preds = %83, %86
  %92 = phi i32 [ %87, %86 ], [ 0, %83 ]
  %93 = phi ptr [ %90, %86 ], [ null, %83 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef nonnull %93) #5
  br label %83, !llvm.loop !49

96:                                               ; preds = %91
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %97(ptr noundef %33) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #5
  br label %98

98:                                               ; preds = %22, %96
  %99 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %99, ptr noundef nonnull @.str.8, i8 noundef zeroext 11, i16 noundef signext 3) #5
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %99, ptr noundef nonnull @.str.9, i8 noundef zeroext 3, i16 noundef signext 1) #5
  br label %100

100:                                              ; preds = %98, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @BM_mesh_bisect_plane(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, float noundef) local_unnamed_addr #2

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !40, i64 128, !41, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !43, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !44, i64 960, !41, i64 976, !44, i64 984, !41, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"CustomData", !41, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !41, i64 184, !41, i64 192}
!43 = !{!"short", !36, i64 0}
!44 = !{!"ListBase", !41, i64 0, !41, i64 8}
!45 = !{!41, !41, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !47, !48}
