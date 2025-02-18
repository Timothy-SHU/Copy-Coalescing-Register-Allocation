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

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_random(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_rand_verts_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_transverts_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.3, float noundef 0x3FB99999A0000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+01, float noundef 1.000000e+01) #5
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 1.000000e+00) #5
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.9, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, float noundef 0.000000e+00, float noundef 1.000000e+00) #5
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 10000, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 50) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_rand_verts_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.TransVertStore, align 8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.3) #5
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.6) #5
  %11 = load ptr, ptr %6, align 8, !tbaa !48
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.9) #5
  %13 = load ptr, ptr %6, align 8, !tbaa !48
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %2
  %18 = fcmp une float %12, 0.000000e+00
  %19 = select i1 %18, i32 5, i32 1
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %5, ptr noundef nonnull %15, i32 noundef %19) #5
  %20 = getelementptr inbounds %struct.TransVertStore, ptr %5, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %94, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %92, label %26

26:                                               ; preds = %23
  %27 = call ptr @BLI_rng_new(i32 noundef %14) #5
  %28 = load i32, ptr %20, align 8, !tbaa !50
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 8, !tbaa !53
  %32 = fsub float 1.000000e+00, %10
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = getelementptr inbounds float, ptr %3, i64 2
  %35 = getelementptr inbounds float, ptr %4, i64 1
  %36 = getelementptr inbounds float, ptr %4, i64 2
  %37 = getelementptr inbounds float, ptr %4, i64 1
  %38 = getelementptr inbounds float, ptr %4, i64 2
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = getelementptr inbounds float, ptr %3, i64 2
  br label %41

41:                                               ; preds = %30, %73
  %42 = phi i32 [ 0, %30 ], [ %87, %73 ]
  %43 = phi ptr [ %31, %30 ], [ %88, %73 ]
  %44 = call float @BLI_rng_get_float(ptr noundef %27) #5
  %45 = call float @llvm.fmuladd.f32(float %32, float %44, float %10)
  %46 = fcmp olt float %45, 0.000000e+00
  %47 = select i1 %46, float 0.000000e+00, float %45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  call void @BLI_rng_get_float_unit_v3(ptr noundef %27, ptr noundef nonnull %3) #5
  br i1 %18, label %48, label %73

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.TransVert, ptr %43, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !54
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #5
  %54 = getelementptr inbounds %struct.TransVert, ptr %43, i64 0, i32 3
  %55 = load float, ptr %3, align 4, !tbaa !56
  %56 = load float, ptr %54, align 4, !tbaa !56
  %57 = load float, ptr %33, align 4, !tbaa !56
  %58 = getelementptr inbounds %struct.TransVert, ptr %43, i64 0, i32 3, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !56
  %60 = fmul float %57, %59
  %61 = call float @llvm.fmuladd.f32(float %55, float %56, float %60)
  %62 = load float, ptr %34, align 4, !tbaa !56
  %63 = getelementptr inbounds %struct.TransVert, ptr %43, i64 0, i32 3, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !56
  %65 = call float @llvm.fmuladd.f32(float %62, float %64, float %61)
  %66 = fcmp olt float %65, 0.000000e+00
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = fneg float %56
  store float %68, ptr %4, align 4, !tbaa !56
  %69 = fneg float %59
  store float %69, ptr %37, align 4, !tbaa !56
  %70 = fneg float %64
  store float %70, ptr %38, align 4, !tbaa !56
  br label %72

71:                                               ; preds = %53
  store float %56, ptr %4, align 4, !tbaa !56
  store float %59, ptr %35, align 4, !tbaa !56
  store float %64, ptr %36, align 4, !tbaa !56
  br label %72

72:                                               ; preds = %71, %67
  call void @interp_v3_v3v3_slerp_safe(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %12) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #5
  br label %73

73:                                               ; preds = %72, %48, %41
  %74 = load ptr, ptr %43, align 8, !tbaa !58
  %75 = fmul float %8, %47
  %76 = load float, ptr %3, align 4, !tbaa !56
  %77 = load float, ptr %74, align 4, !tbaa !56
  %78 = call float @llvm.fmuladd.f32(float %76, float %75, float %77)
  store float %78, ptr %74, align 4, !tbaa !56
  %79 = load float, ptr %39, align 4, !tbaa !56
  %80 = getelementptr inbounds float, ptr %74, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !56
  %82 = call float @llvm.fmuladd.f32(float %79, float %75, float %81)
  store float %82, ptr %80, align 4, !tbaa !56
  %83 = load float, ptr %40, align 4, !tbaa !56
  %84 = getelementptr inbounds float, ptr %74, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !56
  %86 = call float @llvm.fmuladd.f32(float %83, float %75, float %85)
  store float %86, ptr %84, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  %87 = add nuw nsw i32 %42, 1
  %88 = getelementptr inbounds %struct.TransVert, ptr %43, i64 1
  %89 = load i32, ptr %20, align 8, !tbaa !50
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %41, label %91, !llvm.loop !59

91:                                               ; preds = %73, %26
  call void @BLI_rng_free(ptr noundef %27) #5
  br label %92

92:                                               ; preds = %23, %91
  call void @ED_transverts_update_obedit(ptr noundef nonnull %5, ptr noundef nonnull %15) #5
  call void @ED_transverts_free(ptr noundef nonnull %5) #5
  br label %93

93:                                               ; preds = %92, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %15) #5
  br label %94

94:                                               ; preds = %17, %93
  %95 = phi i32 [ 4, %93 ], [ 2, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  ret i32 %95
}

declare i32 @ED_transverts_poll(ptr noundef) #1

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare void @ED_transverts_create_from_obedit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_transverts_update_obedit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_transverts_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #1

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @BLI_rng_get_float_unit_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @interp_v3_v3v3_slerp_safe(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 112}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!50 = !{!51, !52, i64 8}
!51 = !{!"TransVertStore", !36, i64 0, !52, i64 8, !52, i64 12}
!52 = !{!"int", !37, i64 0}
!53 = !{!51, !36, i64 0}
!54 = !{!55, !52, i64 44}
!55 = !{!"TransVert", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !52, i64 44}
!56 = !{!57, !57, i64 0}
!57 = !{!"float", !37, i64 0}
!58 = !{!55, !36, i64 0}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
