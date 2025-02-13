; ModuleID = 'blender/source/blender/editors/object/object_random.c'
source_filename = "blender/source/blender/editors/object/object_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.TransVertStore = type { ptr, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.TransVert = type { ptr, [3 x float], [3 x float], [3 x float], i32 }

@.str = private unnamed_addr constant [10 x i8] c"Randomize\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Randomize vertices\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_vertex_random\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Amount\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Distance to offset\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Uniform\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Increase for uniform offset distance\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Align offset direction to normals\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Random Seed\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Seed for the random number generator\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_random(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_rand_verts_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_transverts_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.3, float noundef 0x3FB99999A0000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+01, float noundef 1.000000e+01) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !18
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !18
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.9, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !18
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 10000, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 50) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_rand_verts_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.TransVertStore, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call float @RNA_float_get(ptr noundef %5, ptr noundef nonnull @.str.3) #8
  %7 = load ptr, ptr %4, align 8, !tbaa !19
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.6) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !19
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.9) #8
  %11 = load ptr, ptr %4, align 8, !tbaa !19
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.11) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %13 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = fcmp une float %10, 0.000000e+00
  %17 = select i1 %16, i32 5, i32 1
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %3, ptr noundef nonnull %13, i32 noundef %17) #8
  %18 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  call fastcc void @object_rand_transverts(ptr noundef nonnull %3, float noundef %6, float noundef %8, float noundef %10, i32 noundef %12) #10
  call void @ED_transverts_update_obedit(ptr noundef nonnull %3, ptr noundef nonnull %13) #8
  call void @ED_transverts_free(ptr noundef nonnull %3) #8
  br label %22

22:                                               ; preds = %21, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %13) #8
  br label %23

23:                                               ; preds = %15, %22
  %24 = phi i32 [ 4, %22 ], [ 2, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %24
}

; Function Attrs: optsize
declare i32 @ED_transverts_poll(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_transverts_create_from_obedit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_rand_transverts(ptr noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = fcmp une float %3, 0.000000e+00
  %9 = icmp eq ptr %0, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @BLI_rng_new(i32 noundef %4) #8
  %15 = getelementptr inbounds %struct.TransVertStore, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !21
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !24
  %20 = fsub float 1.000000e+00, %2
  br label %21

21:                                               ; preds = %18, %39
  %22 = phi i32 [ 0, %18 ], [ %42, %39 ]
  %23 = phi ptr [ %19, %18 ], [ %43, %39 ]
  %24 = call float @BLI_rng_get_float(ptr noundef %14) #8
  %25 = call float @llvm.fmuladd.f32(float %20, float %24, float %2)
  %26 = call fastcc float @max_ff(float noundef %25) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @BLI_rng_get_float_unit_v3(ptr noundef %14, ptr noundef nonnull %6) #8
  br i1 %8, label %27, label %39

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TransVert, ptr %23, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %33 = getelementptr inbounds %struct.TransVert, ptr %23, i64 0, i32 3
  %34 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %33) #10
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call fastcc void @negate_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %33) #10
  br label %38

37:                                               ; preds = %32
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %33) #10
  br label %38

38:                                               ; preds = %37, %36
  call void @interp_v3_v3v3_slerp_safe(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  br label %39

39:                                               ; preds = %38, %27, %21
  %40 = load ptr, ptr %23, align 8, !tbaa !27
  %41 = fmul float %26, %1
  call fastcc void @madd_v3_v3fl(ptr noundef %40, ptr noundef nonnull %6, float noundef %41) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  %42 = add nuw nsw i32 %22, 1
  %43 = getelementptr inbounds %struct.TransVert, ptr %23, i64 1
  %44 = load i32, ptr %15, align 8, !tbaa !21
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %21, label %46, !llvm.loop !28

46:                                               ; preds = %39, %13
  call void @BLI_rng_free(ptr noundef %14) #8
  br label %47

47:                                               ; preds = %5, %10, %46
  ret void
}

; Function Attrs: optsize
declare void @ED_transverts_update_obedit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_transverts_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #4 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = select i1 %2, float 0.000000e+00, float %0
  ret float %3
}

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @BLI_rng_get_float_unit_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !30
  %4 = load float, ptr %1, align 4, !tbaa !30
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !30
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !30
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !30
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !30
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !30
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !30
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !30
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !30
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !30
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !30
  store float %3, ptr %0, align 4, !tbaa !30
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !30
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !30
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !30
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !30
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3_slerp_safe(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !30
  %5 = load float, ptr %0, align 4, !tbaa !30
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !30
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !30
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !30
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !30
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !30
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !30
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !30
  ret void
}

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!20, !7, i64 112}
!20 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!21 = !{!22, !23, i64 8}
!22 = !{!"TransVertStore", !7, i64 0, !23, i64 8, !23, i64 12}
!23 = !{!"int", !8, i64 0}
!24 = !{!22, !7, i64 0}
!25 = !{!26, !23, i64 44}
!26 = !{!"TransVert", !7, i64 0, !8, i64 8, !8, i64 20, !8, i64 32, !23, i64 44}
!27 = !{!26, !7, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !8, i64 0}
