; ModuleID = 'blender/source/blender/bmesh/operators/bmo_poke.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"use_relative_offset\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"center_mode\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@switch.table.bmo_poke_exec = private unnamed_addr constant [3 x ptr] [ptr @BM_face_calc_center_mean_weighted, ptr @BM_face_calc_center_mean, ptr @BM_face_calc_center_bounds], align 8

; Function Attrs: nounwind uwtable
define dso_local void @bmo_poke_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %7 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %122

9:                                                ; preds = %2
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [3 x ptr], ptr @switch.table.bmo_poke_exec, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 8) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %120, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %17 = icmp eq i8 %6, 0
  %18 = select i1 %17, float 1.000000e+00, float 0.000000e+00
  %19 = getelementptr inbounds float, ptr %4, i64 1
  %20 = getelementptr inbounds float, ptr %4, i64 2
  br label %21

21:                                               ; preds = %15, %97
  %22 = phi ptr [ %13, %15 ], [ %118, %97 ]
  %23 = phi ptr [ undef, %15 ], [ %55, %97 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #5
  call void %12(ptr noundef nonnull %22, ptr noundef nonnull %4) #5, !callees !34
  %24 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #5
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = load i32, ptr %16, align 8, !tbaa !42
  %28 = sext i32 %27 to i64
  %29 = getelementptr %struct.BMFlagLayer, ptr %26, i64 %28
  %30 = getelementptr %struct.BMFlagLayer, ptr %29, i64 -1
  %31 = load i16, ptr %30, align 2, !tbaa !47
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 2, !tbaa !47
  %33 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %86, %21
  %36 = phi ptr [ %34, %21 ], [ %89, %86 ]
  %37 = phi ptr [ %23, %21 ], [ %55, %86 ]
  %38 = phi float [ %18, %21 ], [ %87, %86 ]
  %39 = phi i32 [ 0, %21 ], [ %88, %86 ]
  %40 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %41, ptr noundef %45, ptr noundef %24, ptr noundef null, ptr noundef nonnull %22, i32 noundef 0) #5
  %47 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = icmp eq i32 %39, 0
  %50 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  br i1 %49, label %52, label %53

52:                                               ; preds = %35
  call void @BM_loop_interp_from_face(ptr noundef %0, ptr noundef %51, ptr noundef nonnull %22, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %54

53:                                               ; preds = %35
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %37, ptr noundef %51) #5
  br label %54

54:                                               ; preds = %53, %52
  %55 = phi ptr [ %51, %52 ], [ %37, %53 ]
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %36, ptr noundef %48) #5
  %56 = load ptr, ptr %42, align 8, !tbaa !53
  %57 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %56, ptr noundef %58) #5
  %59 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  %61 = load i32, ptr %16, align 8, !tbaa !42
  %62 = sext i32 %61 to i64
  %63 = getelementptr %struct.BMFlagLayer, ptr %60, i64 %62
  %64 = getelementptr %struct.BMFlagLayer, ptr %63, i64 -1
  %65 = load i16, ptr %64, align 2, !tbaa !47
  %66 = or i16 %65, 1
  store i16 %66, ptr %64, align 2, !tbaa !47
  br i1 %17, label %86, label %67

67:                                               ; preds = %54
  %68 = load ptr, ptr %40, align 8, !tbaa !51
  %69 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2
  %70 = load float, ptr %69, align 4, !tbaa !56
  %71 = load float, ptr %4, align 4, !tbaa !56
  %72 = fsub float %70, %71
  %73 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !56
  %75 = load float, ptr %19, align 4, !tbaa !56
  %76 = fsub float %74, %75
  %77 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !56
  %79 = load float, ptr %20, align 4, !tbaa !56
  %80 = fsub float %78, %79
  %81 = fmul float %76, %76
  %82 = call float @llvm.fmuladd.f32(float %72, float %72, float %81)
  %83 = call float @llvm.fmuladd.f32(float %80, float %80, float %82)
  %84 = call float @sqrtf(float noundef %83) #5
  %85 = fadd float %38, %84
  br label %86

86:                                               ; preds = %67, %54
  %87 = phi float [ %85, %67 ], [ %38, %54 ]
  %88 = add nuw nsw i32 %39, 1
  %89 = load ptr, ptr %42, align 8, !tbaa !53
  %90 = icmp eq ptr %89, %34
  br i1 %90, label %91, label %35, !llvm.loop !58

91:                                               ; preds = %86
  br i1 %17, label %97, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !61
  %95 = sitofp i32 %94 to float
  %96 = fdiv float %87, %95
  br label %97

97:                                               ; preds = %92, %91
  %98 = phi float [ %96, %92 ], [ %87, %91 ]
  %99 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3
  %100 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 4
  %101 = load float, ptr %100, align 4, !tbaa !56
  store float %101, ptr %99, align 4, !tbaa !56
  %102 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 4, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !56
  %104 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3, i64 1
  store float %103, ptr %104, align 4, !tbaa !56
  %105 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 4, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !56
  %107 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3, i64 2
  store float %106, ptr %107, align 4, !tbaa !56
  %108 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  %109 = fmul float %5, %98
  %110 = load float, ptr %108, align 4, !tbaa !56
  %111 = call float @llvm.fmuladd.f32(float %101, float %109, float %110)
  store float %111, ptr %108, align 4, !tbaa !56
  %112 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !56
  %114 = call float @llvm.fmuladd.f32(float %103, float %109, float %113)
  store float %114, ptr %112, align 4, !tbaa !56
  %115 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !56
  %117 = call float @llvm.fmuladd.f32(float %106, float %109, float %116)
  store float %117, ptr %115, align 4, !tbaa !56
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %22) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #5
  %118 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %21, !llvm.loop !62

120:                                              ; preds = %97, %9
  %121 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %121, ptr noundef nonnull @.str.4, i8 noundef zeroext 1, i16 noundef signext 1) #5
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %121, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i16 noundef signext 1) #5
  br label %122

122:                                              ; preds = %2, %120
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_mean_weighted(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_loop_interp_from_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{ptr @BM_face_calc_center_bounds, ptr @BM_face_calc_center_mean, ptr @BM_face_calc_center_mean_weighted}
!35 = !{!36, !38, i64 16}
!36 = !{!"BMVert", !37, i64 0, !38, i64 16, !39, i64 24, !39, i64 36, !38, i64 48}
!37 = !{!"BMHeader", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!43, !41, i64 128}
!43 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !39, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !41, i64 128, !38, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !46, i64 960, !38, i64 976, !46, i64 984, !38, i64 1000}
!44 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!45 = !{!"short", !39, i64 0}
!46 = !{!"ListBase", !38, i64 0, !38, i64 8}
!47 = !{!48, !45, i64 0}
!48 = !{!"BMFlagLayer", !45, i64 0}
!49 = !{!50, !38, i64 24}
!50 = !{!"BMFace", !37, i64 0, !38, i64 16, !38, i64 24, !41, i64 32, !39, i64 36, !45, i64 48}
!51 = !{!52, !38, i64 16}
!52 = !{!"BMLoop", !37, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!53 = !{!52, !38, i64 56}
!54 = !{!52, !38, i64 64}
!55 = !{!50, !38, i64 16}
!56 = !{!57, !57, i64 0}
!57 = !{!"float", !39, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!50, !41, i64 32}
!62 = distinct !{!62, !59, !60}
