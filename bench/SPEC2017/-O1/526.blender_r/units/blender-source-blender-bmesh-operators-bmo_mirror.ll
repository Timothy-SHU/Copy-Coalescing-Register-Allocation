; ModuleID = 'blender/source/blender/bmesh/operators/bmo_mirror.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }

@__const.bmo_mirror_exec.scale = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str = private unnamed_addr constant [11 x i8] c"merge_dist\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mirror_u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mirror_v\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"duplicate geom=%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"transform verts=%fv matrix=%m4\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"scale verts=%fv vec=%v\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @bmo_mirror_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMOIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.bmo_mirror_exec.scale, i64 12, i1 false)
  %12 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %13 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %14 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %15 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %16 = load i32, ptr %0, align 8, !tbaa !38
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #5
  %17 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %8) #5
  %18 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %19, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @.str.6) #5
  call void @BMO_op_exec(ptr noundef nonnull %0, ptr noundef nonnull %3) #5
  %21 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef nonnull @.str.7, i8 noundef zeroext 11, i16 noundef signext 1) #5
  %22 = call ptr @BMO_iter_as_arrayN(ptr noundef nonnull %21, ptr noundef nonnull @.str.7, i8 noundef zeroext 1, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #5
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %23
  store float -1.000000e+00, ptr %24, align 4, !tbaa !46
  %25 = load i32, ptr %18, align 8, !tbaa !44
  %26 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef nonnull %0, i32 noundef %25, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %8) #5
  %27 = load i32, ptr %18, align 8, !tbaa !44
  %28 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef nonnull %0, i32 noundef %27, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %10) #5
  %29 = load i32, ptr %18, align 8, !tbaa !44
  %30 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef nonnull %0, i32 noundef %29, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %9) #5
  %31 = load i32, ptr %18, align 8, !tbaa !44
  call void @BMO_op_init(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %31, ptr noundef nonnull @.str.10) #5
  %32 = call ptr @BMO_slot_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.11) #5
  %33 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %33, align 4, !tbaa !48
  %34 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %34, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %35, align 8, !tbaa !51
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  store ptr %37, ptr %6, align 8, !tbaa !53
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #5
  %38 = load ptr, ptr %35, align 8, !tbaa !51
  %39 = call ptr %38(ptr noundef nonnull %6) #5
  %40 = icmp sgt i32 %16, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %2
  %42 = zext nneg i32 %16 to i64
  br label %43

43:                                               ; preds = %41, %53
  %44 = phi i64 [ 0, %41 ], [ %56, %53 ]
  %45 = phi ptr [ %39, %41 ], [ %55, %53 ]
  %46 = getelementptr inbounds %struct.BMVert, ptr %45, i64 0, i32 2, i64 %23
  %47 = load float, ptr %46, align 4, !tbaa !46
  %48 = call float @llvm.fabs.f32(float %47)
  %49 = fcmp ugt float %48, %12
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds ptr, ptr %22, i64 %44
  %52 = load ptr, ptr %51, align 8, !tbaa !54
  call void @BMO_slot_map_insert(ptr noundef nonnull %4, ptr noundef %32, ptr noundef %52, ptr noundef %45) #5
  br label %53

53:                                               ; preds = %50, %43
  %54 = load ptr, ptr %35, align 8, !tbaa !51
  %55 = call ptr %54(ptr noundef nonnull %6) #5
  %56 = add nuw nsw i64 %44, 1
  %57 = icmp eq i64 %56, %42
  br i1 %57, label %58, label %43, !llvm.loop !55

58:                                               ; preds = %53, %2
  %59 = icmp ne i8 %14, 0
  %60 = icmp ne i8 %15, 0
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %64 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %63, i32 noundef 16) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #5
  %65 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %21, ptr noundef nonnull @.str.7, i8 noundef zeroext 8) #5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %103, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %69 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %70 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  %71 = icmp sgt i32 %64, 0
  %72 = icmp eq i8 %14, 0
  %73 = icmp eq i8 %15, 0
  br label %74

74:                                               ; preds = %67, %100
  %75 = phi ptr [ %65, %67 ], [ %101, %100 ]
  store i8 11, ptr %68, align 4, !tbaa !48
  store ptr @bmiter__loop_of_face_begin, ptr %69, align 8, !tbaa !50
  store ptr @bmiter__loop_of_face_step, ptr %70, align 8, !tbaa !51
  store ptr %75, ptr %11, align 8, !tbaa !53
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %11) #5
  %76 = load ptr, ptr %70, align 8, !tbaa !51
  %77 = call ptr %76(ptr noundef nonnull %11) #5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %74, %96
  %80 = phi ptr [ %98, %96 ], [ %77, %74 ]
  br i1 %71, label %81, label %96

81:                                               ; preds = %79, %93
  %82 = phi i32 [ %94, %93 ], [ 0, %79 ]
  %83 = load ptr, ptr %80, align 8, !tbaa !58
  %84 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %63, ptr noundef %83, i32 noundef 16, i32 noundef %82) #5
  br i1 %72, label %88, label %85

85:                                               ; preds = %81
  %86 = load float, ptr %84, align 4, !tbaa !46
  %87 = fsub float 1.000000e+00, %86
  store float %87, ptr %84, align 4, !tbaa !46
  br label %88

88:                                               ; preds = %85, %81
  br i1 %73, label %93, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds [2 x float], ptr %84, i64 0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !46
  %92 = fsub float 1.000000e+00, %91
  store float %92, ptr %90, align 4, !tbaa !46
  br label %93

93:                                               ; preds = %88, %89
  %94 = add nuw nsw i32 %82, 1
  %95 = icmp eq i32 %94, %64
  br i1 %95, label %96, label %81, !llvm.loop !61

96:                                               ; preds = %93, %79
  %97 = load ptr, ptr %70, align 8, !tbaa !51
  %98 = call ptr %97(ptr noundef nonnull %11) #5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %79, !llvm.loop !62

100:                                              ; preds = %96, %74
  %101 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #5
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %74, !llvm.loop !63

103:                                              ; preds = %100, %62
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #5
  br label %104

104:                                              ; preds = %58, %103
  call void @BMO_op_exec(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  call void @BMO_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  call void @BMO_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3) #5
  %105 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %105, ptr noundef nonnull @.str.7, i8 noundef zeroext 11, i16 noundef signext 1) #5
  %106 = icmp eq ptr %22, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %108(ptr noundef nonnull %22) #5
  br label %109

109:                                              ; preds = %107, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_mat4_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare ptr @BMO_iter_as_arrayN(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

declare void @bmiter__loop_of_face_begin(ptr noundef) #3

declare ptr @bmiter__loop_of_face_step(ptr noundef) #3

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"BMesh", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !36, i64 28, !36, i64 29, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !35, i64 88, !35, i64 92, !35, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !35, i64 128, !40, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !35, i64 948, !35, i64 952, !35, i64 956, !43, i64 960, !40, i64 976, !43, i64 984, !40, i64 1000}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"CustomData", !40, i64 0, !36, i64 8, !35, i64 172, !35, i64 176, !35, i64 180, !40, i64 184, !40, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !40, i64 0, !40, i64 8}
!44 = !{!45, !35, i64 1304}
!45 = !{!"BMOperator", !36, i64 0, !36, i64 640, !40, i64 1280, !40, i64 1288, !35, i64 1296, !35, i64 1300, !35, i64 1304}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !36, i64 0}
!48 = !{!49, !36, i64 60}
!49 = !{!"BMIter", !36, i64 0, !40, i64 40, !40, i64 48, !35, i64 56, !36, i64 60}
!50 = !{!49, !40, i64 40}
!51 = !{!49, !40, i64 48}
!52 = !{!39, !40, i64 32}
!53 = !{!36, !36, i64 0}
!54 = !{!40, !40, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !40, i64 0}
!59 = !{!"BMLoop", !60, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64}
!60 = !{!"BMHeader", !40, i64 0, !35, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!61 = distinct !{!61, !56, !57}
!62 = distinct !{!62, !56, !57}
!63 = distinct !{!63, !56, !57}
