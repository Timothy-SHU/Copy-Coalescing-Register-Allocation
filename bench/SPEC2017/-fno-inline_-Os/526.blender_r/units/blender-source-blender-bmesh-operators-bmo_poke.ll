; ModuleID = 'blender/source/blender/bmesh/operators/bmo_poke.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"use_relative_offset\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"center_mode\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@switch.table.bmo_poke_exec = private unnamed_addr constant [3 x ptr] [ptr @BM_face_calc_center_mean_weighted, ptr @BM_face_calc_center_mean, ptr @BM_face_calc_center_bounds], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_poke_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #8
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #9
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #9
  %7 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #9
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %84

9:                                                ; preds = %2
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [3 x ptr], ptr @switch.table.bmo_poke_exec, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 8) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %82, label %15

15:                                               ; preds = %9
  %16 = icmp eq i8 %6, 0
  %17 = select i1 %16, float 1.000000e+00, float 0.000000e+00
  br label %18

18:                                               ; preds = %15, %74
  %19 = phi ptr [ %13, %15 ], [ %80, %74 ]
  %20 = phi ptr [ undef, %15 ], [ %50, %74 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void %12(ptr noundef nonnull %19, ptr noundef nonnull %4) #9, !callees !34
  %21 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %23) #10
  %24 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  br label %26

26:                                               ; preds = %60, %18
  %27 = phi ptr [ %67, %60 ], [ %25, %18 ]
  %28 = phi ptr [ %50, %60 ], [ %20, %18 ]
  %29 = phi float [ %65, %60 ], [ %17, %18 ]
  %30 = phi i32 [ %66, %60 ], [ 0, %18 ]
  br label %31

31:                                               ; preds = %26, %56
  %32 = phi ptr [ %58, %56 ], [ %27, %26 ]
  %33 = phi ptr [ %50, %56 ], [ %28, %26 ]
  %34 = phi i32 [ %57, %56 ], [ %30, %26 ]
  %35 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %36, ptr noundef %40, ptr noundef %21, ptr noundef null, ptr noundef nonnull %19, i32 noundef 0) #9
  %42 = getelementptr inbounds %struct.BMFace, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  %44 = icmp eq i32 %34, 0
  %45 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  br i1 %44, label %47, label %48

47:                                               ; preds = %31
  call void @BM_loop_interp_from_face(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %19, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %49

48:                                               ; preds = %31
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %33, ptr noundef %46) #9
  br label %49

49:                                               ; preds = %48, %47
  %50 = phi ptr [ %46, %47 ], [ %33, %48 ]
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %32, ptr noundef nonnull %43) #9
  %51 = load ptr, ptr %37, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !47
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %51, ptr noundef %53) #9
  %54 = getelementptr inbounds %struct.BMFace, ptr %41, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %55) #10
  br i1 %16, label %56, label %60

56:                                               ; preds = %49
  %57 = add nuw nsw i32 %34, 1
  %58 = load ptr, ptr %37, align 8, !tbaa !47
  %59 = icmp eq ptr %58, %25
  br i1 %59, label %74, label %31, !llvm.loop !50

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2
  %64 = call fastcc float @len_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %63) #10
  %65 = fadd float %29, %64
  %66 = add i32 %30, 1
  %67 = load ptr, ptr %37, align 8, !tbaa !47
  %68 = icmp eq ptr %67, %25
  br i1 %68, label %69, label %26, !llvm.loop !50

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !52
  %72 = sitofp i32 %71 to float
  %73 = fdiv float %65, %72
  br label %74

74:                                               ; preds = %56, %69
  %75 = phi float [ %73, %69 ], [ %29, %56 ]
  %76 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 3
  %77 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %76, ptr noundef nonnull %77) #10
  %78 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %79 = fmul float %5, %75
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %78, ptr noundef nonnull %76, float noundef %79) #10
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  %80 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %18, !llvm.loop !53

82:                                               ; preds = %74, %9
  %83 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %83, ptr noundef nonnull @.str.4, i8 noundef zeroext 1, i16 noundef signext 1) #9
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %83, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i16 noundef signext 1) #9
  br label %84

84:                                               ; preds = %2, %82
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_calc_center_mean_weighted(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_calc_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !59
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 2, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_loop_interp_from_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !61 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #10
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !62 {
  %3 = load float, ptr %1, align 4, !tbaa !63
  store float %3, ptr %0, align 4, !tbaa !63
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !63
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !65 {
  %4 = load float, ptr %1, align 4, !tbaa !63
  %5 = load float, ptr %0, align 4, !tbaa !63
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !63
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !63
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !63
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !66 {
  %4 = load float, ptr %1, align 4, !tbaa !63
  %5 = load float, ptr %2, align 4, !tbaa !63
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !63
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !63
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !63
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !67 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #10
  %3 = tail call float @sqrtf(float noundef %2) #9
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !68 {
  %3 = load float, ptr %0, align 4, !tbaa !63
  %4 = load float, ptr %1, align 4, !tbaa !63
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !63
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !63
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
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
!34 = !{ptr @BM_face_calc_center_bounds, ptr @BM_face_calc_center_mean, ptr @BM_face_calc_center_mean_weighted}
!35 = !{!36, !38, i64 16}
!36 = !{!"BMVert", !37, i64 0, !38, i64 16, !39, i64 24, !39, i64 36, !38, i64 48}
!37 = !{!"BMHeader", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!43, !38, i64 24}
!43 = !{!"BMFace", !37, i64 0, !38, i64 16, !38, i64 24, !41, i64 32, !39, i64 36, !44, i64 48}
!44 = !{!"short", !39, i64 0}
!45 = !{!46, !38, i64 16}
!46 = !{!"BMLoop", !37, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!47 = !{!46, !38, i64 56}
!48 = !{!46, !38, i64 64}
!49 = !{!43, !38, i64 16}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!43, !41, i64 32}
!53 = distinct !{!53, !51}
!54 = !{!"bmo_poke.c:_bmo_elem_flag_enable"}
!55 = !{!56, !41, i64 128}
!56 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !39, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !41, i64 128, !38, i64 136, !57, i64 144, !57, i64 344, !57, i64 544, !57, i64 744, !44, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !58, i64 960, !38, i64 976, !58, i64 984, !38, i64 1000}
!57 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!58 = !{!"ListBase", !38, i64 0, !38, i64 8}
!59 = !{!60, !44, i64 0}
!60 = !{!"BMFlagLayer", !44, i64 0}
!61 = !{!"bmo_poke.c:len_v3v3"}
!62 = !{!"bmo_poke.c:copy_v3_v3"}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !39, i64 0}
!65 = !{!"bmo_poke.c:madd_v3_v3fl"}
!66 = !{!"bmo_poke.c:sub_v3_v3v3"}
!67 = !{!"bmo_poke.c:len_v3"}
!68 = !{!"bmo_poke.c:dot_v3v3"}
