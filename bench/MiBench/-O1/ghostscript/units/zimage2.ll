; ModuleID = 'zimage2.c'
source_filename = "zimage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.image_params_s = type { %struct.gs_image_s, i32, [4 x %struct.ref_s], ptr }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }

@zimage2_l2_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @z2image }, %struct.op_def { ptr @.str.2, ptr @z2imagemask }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1image\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"1imagemask\00", align 1
@ref_language_level = external local_unnamed_addr global %struct.ref_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"ImageType\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ImageMatrix\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"MultipleDataSources\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Interpolate\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"CombineWithColor\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"DataSource\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zimage2_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zimage2_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @z2image(ptr noundef %0) #1 {
  %2 = alloca %struct.image_params_s, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %4 = and i64 %3, 4294967295
  %5 = icmp eq i64 %4, 2
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !8
  %8 = icmp ugt ptr %7, %0
  br i1 %8, label %32, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %2) #5
  call void @gs_image_t_init_color(ptr noundef nonnull %2) #5
  %14 = call fastcc i32 @image_dict_unpack(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 12)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @igs, align 8, !tbaa !15
  %18 = call ptr @gs_currentcolorspace(ptr noundef %17) #5
  %19 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.image_params_s, ptr %2, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.image_params_s, ptr %2, i64 0, i32 2
  %23 = call i32 @zimage_setup(ptr noundef nonnull %2, i32 noundef %21, ptr noundef nonnull %22, i32 noundef 1) #5
  br label %24

24:                                               ; preds = %13, %16
  %25 = phi i32 [ %23, %16 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %2) #5
  br label %32

26:                                               ; preds = %9, %1
  %27 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !8
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 4
  %29 = icmp ugt ptr %28, %0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @zimage(ptr noundef %0) #5
  br label %32

32:                                               ; preds = %26, %6, %30, %24
  %33 = phi i32 [ %25, %24 ], [ %31, %30 ], [ -17, %6 ], [ -17, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @z2imagemask(ptr noundef %0) #1 {
  %2 = alloca %struct.image_params_s, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %4 = and i64 %3, 4294967295
  %5 = icmp eq i64 %4, 2
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !8
  %8 = icmp ugt ptr %7, %0
  br i1 %8, label %31, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %2) #5
  call void @gs_image_t_init_mask(ptr noundef nonnull %2, i32 noundef 0) #5
  %14 = call fastcc i32 @image_dict_unpack(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.image_params_s, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.image_params_s, ptr %2, i64 0, i32 2
  %22 = call i32 @zimage_setup(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %21, i32 noundef 1) #5
  br label %23

23:                                               ; preds = %16, %13, %20
  %24 = phi i32 [ %22, %20 ], [ %14, %13 ], [ -15, %16 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %2) #5
  br label %31

25:                                               ; preds = %9, %1
  %26 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !8
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 4
  %28 = icmp ugt ptr %27, %0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @zimagemask(ptr noundef %0) #5
  br label %31

31:                                               ; preds = %25, %6, %29, %23
  %32 = phi i32 [ %24, %23 ], [ %30, %29 ], [ -17, %6 ], [ -17, %25 ]
  ret i32 %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @gs_image_t_init_color(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @image_dict_unpack(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load i16, ptr %7, align 8, !tbaa !22
  %9 = and i16 %8, 32
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @igs, align 8, !tbaa !15
  %13 = tail call ptr @gs_currentcolorspace(ptr noundef %12) #5
  %14 = tail call i32 @gs_color_space_num_components(ptr noundef %13) #5
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %86, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %2, 1
  %18 = select i1 %17, i32 1, i32 %14
  %19 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %4) #5
  store i32 %19, ptr %4, align 4, !tbaa !24
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %16
  %22 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 32767, i32 noundef -1, ptr noundef %1) #5
  store i32 %22, ptr %4, align 4, !tbaa !24
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.gs_image_s, ptr %1, i64 0, i32 1
  %26 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 32767, i32 noundef -1, ptr noundef nonnull %25) #5
  store i32 %26, ptr %4, align 4, !tbaa !24
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gs_image_s, ptr %1, i64 0, i32 2
  %30 = call i32 @dict_matrix_param(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %29) #5
  store i32 %30, ptr %4, align 4, !tbaa !24
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.image_params_s, ptr %1, i64 0, i32 1
  %34 = call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %33) #5
  store i32 %34, ptr %4, align 4, !tbaa !24
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gs_image_s, ptr %1, i64 0, i32 3
  %38 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %2, i32 noundef -1, ptr noundef nonnull %37) #5
  store i32 %38, ptr %4, align 4, !tbaa !24
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = shl nuw nsw i32 %18, 1
  %42 = getelementptr inbounds %struct.gs_image_s, ptr %1, i64 0, i32 5
  %43 = call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %41, ptr noundef nonnull %42, ptr noundef null) #5
  store i32 %43, ptr %4, align 4, !tbaa !24
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.gs_image_s, ptr %1, i64 0, i32 6
  %47 = call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull %46) #5
  store i32 %47, ptr %4, align 4, !tbaa !24
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gs_image_s, ptr %1, i64 0, i32 9
  %51 = call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull %50) #5
  store i32 %51, ptr %4, align 4, !tbaa !24
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45, %40, %36, %32, %28, %24, %21, %16
  %54 = load i32, ptr %4, align 4, !tbaa !24
  br label %86

55:                                               ; preds = %49
  %56 = icmp eq i32 %43, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = icmp eq i32 %43, %41
  br i1 %58, label %59, label %86

59:                                               ; preds = %57, %55
  %60 = phi ptr [ null, %55 ], [ %42, %57 ]
  %61 = getelementptr inbounds %struct.image_params_s, ptr %1, i64 0, i32 3
  store ptr %60, ptr %61, align 8, !tbaa !25
  %62 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %5) #5
  store i32 %62, ptr %4, align 4, !tbaa !24
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %59
  %65 = load i32, ptr %33, align 8, !tbaa !21
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %5, align 8, !tbaa !15
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !5
  %71 = icmp eq i8 %70, 4
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.tas_s, ptr %68, i64 0, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !26
  %75 = zext i16 %74 to i32
  %76 = icmp eq i32 %18, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.image_params_s, ptr %1, i64 0, i32 2
  %79 = getelementptr inbounds %struct.ref_s, ptr %68, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = zext nneg i32 %18 to i64
  %82 = shl nuw nsw i64 %81, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %78, ptr align 8 %80, i64 %82, i1 false)
  br label %86

83:                                               ; preds = %64
  %84 = getelementptr inbounds %struct.image_params_s, ptr %1, i64 0, i32 2
  %85 = load ptr, ptr %5, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(16) %85, i64 16, i1 false), !tbaa.struct !27
  br label %86

86:                                               ; preds = %77, %83, %72, %67, %59, %57, %11, %3, %53
  %87 = phi i32 [ %54, %53 ], [ -7, %3 ], [ -15, %11 ], [ -15, %57 ], [ %62, %59 ], [ -20, %67 ], [ -15, %72 ], [ 0, %83 ], [ 0, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %87
}

declare ptr @gs_currentcolorspace(ptr noundef) local_unnamed_addr #3

declare i32 @zimage_setup(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @zimage(ptr noundef) local_unnamed_addr #3

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #3

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_matrix_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_float_array_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @gs_image_t_init_mask(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @zimagemask(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !10, i64 120}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!17, !10, i64 40}
!17 = !{!"image_params_s", !18, i64 0, !14, i64 96, !6, i64 104, !10, i64 168}
!18 = !{!"gs_image_s", !14, i64 0, !14, i64 4, !19, i64 8, !14, i64 32, !10, i64 40, !6, i64 48, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92}
!19 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!20 = !{!"float", !6, i64 0}
!21 = !{!17, !14, i64 96}
!22 = !{!23, !13, i64 0}
!23 = !{!"dict_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!24 = !{!14, !14, i64 0}
!25 = !{!17, !10, i64 168}
!26 = !{!11, !13, i64 2}
!27 = !{i64 0, i64 2, !28, i64 2, i64 2, !28, i64 8, i64 8, !29, i64 8, i64 2, !28, i64 8, i64 4, !31, i64 8, i64 8, !29, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15}
!28 = !{!13, !13, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !6, i64 0}
!31 = !{!20, !20, i64 0}
