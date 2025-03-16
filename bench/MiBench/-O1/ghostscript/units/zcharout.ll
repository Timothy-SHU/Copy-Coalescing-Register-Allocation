; ModuleID = 'zcharout.c'
source_filename = "zcharout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_font_base_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }

@e_stack = external global %struct.ref_stack_s, align 8
@ref_systemdict = external local_unnamed_addr global %struct.ref_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str = private unnamed_addr constant [8 x i8] c"Metrics\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Metrics2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CDevProc\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zchar_exec_char_proc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -5
  %6 = icmp ugt ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %30

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 5
  store ptr %12, ptr @e_stack, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %14 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1, i32 1
  store ptr @zend, ptr %14, align 8, !tbaa !15
  store i16 3968, ptr %13, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1, i32 0, i32 1
  store i16 0, ptr %15, align 2, !tbaa !17
  %16 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2
  %17 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2, i32 1
  store ptr @zend, ptr %17, align 8, !tbaa !15
  store i16 3968, ptr %16, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2, i32 0, i32 1
  store i16 0, ptr %18, align 2, !tbaa !17
  %19 = getelementptr inbounds %struct.ref_s, ptr %11, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  %20 = getelementptr inbounds %struct.ref_s, ptr %11, i64 4
  %21 = getelementptr inbounds %struct.ref_s, ptr %11, i64 4, i32 1
  store ptr @zbegin, ptr %21, align 8, !tbaa !15
  store i16 3968, ptr %20, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct.ref_s, ptr %11, i64 4, i32 0, i32 1
  store i16 0, ptr %22, align 2, !tbaa !17
  %23 = getelementptr inbounds %struct.ref_s, ptr %11, i64 5, i32 1
  store ptr @zbegin, ptr %23, align 8, !tbaa !15
  store i16 3968, ptr %12, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.ref_s, ptr %11, i64 5, i32 0, i32 1
  store i16 0, ptr %24, align 2, !tbaa !17
  %25 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) @ref_systemdict, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %26 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false), !tbaa.struct !18
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  %28 = load ptr, ptr @o_stack, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.ref_s, ptr %28, i64 -1
  store ptr %29, ptr @o_stack, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %7, %10
  %31 = phi i32 [ 5, %10 ], [ %8, %7 ]
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @zend(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @zbegin(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zchar_get_metrics(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.gs_font_base_s, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %8 = call i32 @dict_find_string(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %4) #4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %11 = load ptr, ptr %4, align 8, !tbaa !24
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %15, label %61

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ref_s, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = load i16, ptr %17, align 8, !tbaa !35
  %19 = and i16 %18, 32
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %15
  %22 = call i32 @dict_find(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %5) #4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 8, !tbaa !24
  %26 = getelementptr inbounds float, ptr %2, i64 2
  %27 = call i32 @num_params(ptr noundef %25, i32 noundef 1, ptr noundef nonnull %26) #4
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds float, ptr %2, i64 3
  store float 0.000000e+00, ptr %30, align 4, !tbaa !22
  br label %61

31:                                               ; preds = %24
  %32 = load ptr, ptr %5, align 8, !tbaa !24
  %33 = load i16, ptr %32, align 8, !tbaa !16
  %34 = and i16 %33, 16160
  %35 = icmp eq i16 %34, 1056
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %32, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !15
  %39 = icmp eq i8 %38, 4
  %40 = select i1 %39, i32 -7, i32 -20
  br label %61

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.tas_s, ptr %32, i64 0, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !17
  switch i16 %43, label %61 [
    i16 2, label %44
    i16 4, label %52
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ref_s, ptr %32, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !15
  %47 = getelementptr inbounds %struct.ref_s, ptr %46, i64 1
  %48 = call i32 @num_params(ptr noundef nonnull %47, i32 noundef 2, ptr noundef %2) #4
  %49 = getelementptr inbounds float, ptr %2, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !22
  store float %50, ptr %26, align 4, !tbaa !22
  %51 = getelementptr inbounds float, ptr %2, i64 3
  store float 0.000000e+00, ptr %51, align 4, !tbaa !22
  store float 0.000000e+00, ptr %49, align 4, !tbaa !22
  br label %57

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.ref_s, ptr %32, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct.ref_s, ptr %54, i64 3
  %56 = call i32 @num_params(ptr noundef nonnull %55, i32 noundef 4, ptr noundef %2) #4
  br label %57

57:                                               ; preds = %52, %44
  %58 = phi i32 [ %56, %52 ], [ %48, %44 ]
  %59 = icmp slt i32 %58, 0
  %60 = select i1 %59, i32 %58, i32 2
  br label %61

61:                                               ; preds = %21, %36, %41, %57, %15, %10, %29
  %62 = phi i32 [ 1, %29 ], [ -20, %10 ], [ -7, %15 ], [ %40, %36 ], [ -15, %41 ], [ %60, %57 ], [ undef, %21 ]
  %63 = phi i1 [ false, %29 ], [ false, %10 ], [ false, %15 ], [ false, %36 ], [ false, %41 ], [ false, %57 ], [ true, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %3
  br label %65

65:                                               ; preds = %61, %64
  %66 = phi i32 [ 0, %64 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret i32 %66
}

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zchar_set_cache(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.ref_s, align 8
  %12 = alloca [10 x float], align 16
  %13 = alloca ptr, align 8
  %14 = getelementptr inbounds %struct.gs_font_base_s, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #4
  %16 = tail call ptr @op_show_find() #4
  %17 = load float, ptr %4, align 4, !tbaa !22
  store float %17, ptr %12, align 16, !tbaa !22
  %18 = getelementptr inbounds float, ptr %4, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !22
  %20 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 1
  store float %19, ptr %20, align 4, !tbaa !22
  %21 = load double, ptr %5, align 8, !tbaa !37
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 2
  store float %22, ptr %23, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.gs_point_s, ptr %5, i64 0, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 3
  store float %26, ptr %27, align 4, !tbaa !22
  %28 = getelementptr inbounds %struct.gs_rect_s, ptr %5, i64 0, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !39
  %30 = fptrunc double %29 to float
  %31 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 4
  store float %30, ptr %31, align 16, !tbaa !22
  %32 = getelementptr inbounds %struct.gs_rect_s, ptr %5, i64 0, i32 1, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !40
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 5
  store float %34, ptr %35, align 4, !tbaa !22
  %36 = getelementptr inbounds %struct.gs_font_base_s, ptr %1, i64 0, i32 13
  %37 = load i32, ptr %36, align 8, !tbaa !41
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %8
  %40 = load ptr, ptr @igs, align 8, !tbaa !24
  %41 = tail call float @gs_currentmiterlimit(ptr noundef %40) #4
  %42 = fpext float %41 to double
  %43 = fcmp olt double %42, 1.415000e+00
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr @igs, align 8, !tbaa !24
  %46 = tail call float @gs_currentmiterlimit(ptr noundef %45) #4
  %47 = fpext float %46 to double
  br label %48

48:                                               ; preds = %39, %44
  %49 = phi double [ %47, %44 ], [ 1.415000e+00, %39 ]
  %50 = load ptr, ptr @igs, align 8, !tbaa !24
  %51 = tail call float @gs_currentlinewidth(ptr noundef %50) #4
  %52 = fpext float %51 to double
  %53 = fmul double %49, %52
  %54 = fmul double %53, 5.000000e-01
  %55 = load float, ptr %23, align 8, !tbaa !22
  %56 = fpext float %55 to double
  %57 = fsub double %56, %54
  %58 = fptrunc double %57 to float
  store float %58, ptr %23, align 8, !tbaa !22
  %59 = load float, ptr %27, align 4, !tbaa !22
  %60 = fpext float %59 to double
  %61 = fsub double %60, %54
  %62 = fptrunc double %61 to float
  store float %62, ptr %27, align 4, !tbaa !22
  %63 = load float, ptr %31, align 16, !tbaa !22
  %64 = fpext float %63 to double
  %65 = fadd double %54, %64
  %66 = fptrunc double %65 to float
  store float %66, ptr %31, align 16, !tbaa !22
  %67 = load float, ptr %35, align 4, !tbaa !22
  %68 = fpext float %67 to double
  %69 = fadd double %54, %68
  %70 = fptrunc double %69 to float
  store float %70, ptr %35, align 4, !tbaa !22
  br label %71

71:                                               ; preds = %8, %48
  %72 = phi ptr [ %7, %48 ], [ %6, %8 ]
  %73 = call i32 @dict_find_string(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull %9) #4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  %76 = load ptr, ptr %9, align 8, !tbaa !24
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !15
  %79 = icmp eq i8 %78, 2
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ref_s, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !15
  %83 = load i16, ptr %82, align 8, !tbaa !35
  %84 = and i16 %83, 32
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %80
  %87 = call i32 @dict_find(ptr noundef %76, ptr noundef %2, ptr noundef nonnull %13) #4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load ptr, ptr %13, align 8, !tbaa !24
  %91 = load i16, ptr %90, align 8, !tbaa !16
  %92 = and i16 %91, 16160
  %93 = icmp eq i16 %92, 1056
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds i8, ptr %90, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !15
  %97 = icmp eq i8 %96, 4
  %98 = select i1 %97, i32 -7, i32 -20
  br label %111

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.tas_s, ptr %90, i64 0, i32 1
  %101 = load i16, ptr %100, align 2, !tbaa !17
  %102 = icmp eq i16 %101, 4
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.ref_s, ptr %90, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !15
  %106 = getelementptr inbounds %struct.ref_s, ptr %105, i64 3
  %107 = getelementptr inbounds float, ptr %12, i64 6
  %108 = call i32 @num_params(ptr noundef nonnull %106, i32 noundef 4, ptr noundef nonnull %107) #4
  %109 = icmp sgt i32 %108, -1
  %110 = zext i1 %109 to i32
  br label %111

111:                                              ; preds = %103, %86, %99, %80, %75, %94
  %112 = phi i1 [ false, %94 ], [ false, %75 ], [ false, %80 ], [ true, %99 ], [ true, %86 ], [ %109, %103 ]
  %113 = phi i32 [ 0, %94 ], [ 0, %75 ], [ 0, %80 ], [ 0, %99 ], [ 0, %86 ], [ %110, %103 ]
  %114 = phi i32 [ %98, %94 ], [ -20, %75 ], [ -7, %80 ], [ undef, %99 ], [ undef, %86 ], [ %108, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  br i1 %112, label %115, label %238

115:                                              ; preds = %111, %71
  %116 = phi i32 [ %113, %111 ], [ 0, %71 ]
  %117 = phi i32 [ %114, %111 ], [ undef, %71 ]
  %118 = call i32 @dict_find_string(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = call i32 @gs_show_width_only(ptr noundef %16) #4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %210, label %139

123:                                              ; preds = %115
  %124 = load ptr, ptr %10, align 8, !tbaa !24
  %125 = load i16, ptr %124, align 8, !tbaa !16
  %126 = and i16 %125, 15552
  %127 = icmp eq i16 %126, 1216
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = call i32 @check_proc_failed(ptr noundef nonnull %124) #4
  br label %238

130:                                              ; preds = %123
  %131 = icmp eq i32 %116, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %130
  %133 = load float, ptr %12, align 16, !tbaa !22
  %134 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 6
  store float %133, ptr %134, align 8, !tbaa !22
  %135 = load float, ptr %20, align 4, !tbaa !22
  %136 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 7
  store float %135, ptr %136, align 4, !tbaa !22
  %137 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 9
  store float 0.000000e+00, ptr %137, align 4, !tbaa !22
  %138 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 8
  store float 0.000000e+00, ptr %138, align 16, !tbaa !22
  br label %145

139:                                              ; preds = %120
  %140 = getelementptr inbounds %struct.ref_s, ptr %11, i64 0, i32 1
  store ptr @zpop, ptr %140, align 8, !tbaa !15
  store i16 3968, ptr %11, align 8, !tbaa !16
  %141 = getelementptr inbounds %struct.tas_s, ptr %11, i64 0, i32 1
  store i16 0, ptr %141, align 2, !tbaa !17
  store ptr %11, ptr %10, align 8, !tbaa !24
  %142 = icmp eq i32 %116, 0
  %143 = select i1 %142, ptr @zsetcachedevice, ptr @zsetcachedevice2
  %144 = select i1 %142, i32 6, i32 10
  br label %145

145:                                              ; preds = %139, %130, %132
  %146 = phi ptr [ @zsetcachedevice2, %132 ], [ @zsetcachedevice2, %130 ], [ %143, %139 ]
  %147 = phi i32 [ 10, %132 ], [ 10, %130 ], [ %144, %139 ]
  %148 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %149 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !14
  %150 = getelementptr inbounds %struct.ref_s, ptr %149, i64 -3
  %151 = icmp ugt ptr %148, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 3) #4
  %154 = icmp sgt i32 %153, -1
  %155 = select i1 %154, i32 %117, i32 %153
  br i1 %154, label %156, label %238

156:                                              ; preds = %152, %145
  %157 = icmp eq ptr %3, null
  %158 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !14
  br i1 %157, label %179, label %159

159:                                              ; preds = %156
  %160 = add nuw nsw i32 %147, 3
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %161
  %163 = icmp ugt ptr %162, %158
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32 %160, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %238

165:                                              ; preds = %159
  store ptr %162, ptr @o_stack, align 8, !tbaa !5
  %166 = load float, ptr %3, align 4, !tbaa !22
  %167 = add nuw nsw i32 %147, 2
  %168 = zext nneg i32 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds %struct.ref_s, ptr %162, i64 %169
  %171 = getelementptr inbounds %struct.ref_s, ptr %162, i64 %169, i32 1
  store float %166, ptr %171, align 8, !tbaa !15
  store i16 4096, ptr %170, align 8, !tbaa !16
  %172 = getelementptr inbounds float, ptr %3, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !22
  %174 = or disjoint i32 %147, 1
  %175 = zext nneg i32 %174 to i64
  %176 = sub nsw i64 0, %175
  %177 = getelementptr inbounds %struct.ref_s, ptr %162, i64 %176
  %178 = getelementptr inbounds %struct.ref_s, ptr %162, i64 %176, i32 1
  store float %173, ptr %178, align 8, !tbaa !15
  store i16 4096, ptr %177, align 8, !tbaa !16
  br label %186

179:                                              ; preds = %156
  %180 = or disjoint i32 %147, 1
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %181
  %183 = icmp ugt ptr %182, %158
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i32 %180, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %238

185:                                              ; preds = %179
  store ptr %182, ptr @o_stack, align 8, !tbaa !5
  br label %186

186:                                              ; preds = %185, %165
  %187 = phi ptr [ %162, %165 ], [ %182, %185 ]
  %188 = zext nneg i32 %147 to i64
  %189 = sub nsw i64 0, %188
  %190 = getelementptr inbounds %struct.ref_s, ptr %187, i64 %189
  %191 = zext nneg i32 %147 to i64
  br label %192

192:                                              ; preds = %186, %192
  %193 = phi i64 [ 0, %186 ], [ %198, %192 ]
  %194 = getelementptr inbounds [10 x float], ptr %12, i64 0, i64 %193
  %195 = load float, ptr %194, align 4, !tbaa !22
  %196 = getelementptr inbounds %struct.ref_s, ptr %190, i64 %193
  %197 = getelementptr inbounds %struct.ref_s, ptr %190, i64 %193, i32 1
  store float %195, ptr %197, align 8, !tbaa !15
  store i16 4096, ptr %196, align 8, !tbaa !16
  %198 = add nuw nsw i64 %193, 1
  %199 = icmp eq i64 %198, %191
  br i1 %199, label %200, label %192, !llvm.loop !43

200:                                              ; preds = %192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %187, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  %201 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %202 = getelementptr inbounds %struct.ref_s, ptr %201, i64 1
  store ptr %202, ptr @e_stack, align 8, !tbaa !5
  %203 = getelementptr inbounds %struct.ref_s, ptr %201, i64 1, i32 1
  store ptr %72, ptr %203, align 8, !tbaa !15
  store i16 3968, ptr %202, align 8, !tbaa !16
  %204 = getelementptr inbounds %struct.ref_s, ptr %201, i64 1, i32 0, i32 1
  store i16 0, ptr %204, align 2, !tbaa !17
  %205 = getelementptr inbounds %struct.ref_s, ptr %201, i64 2
  store ptr %205, ptr @e_stack, align 8, !tbaa !5
  %206 = getelementptr inbounds %struct.ref_s, ptr %201, i64 2, i32 1
  store ptr %146, ptr %206, align 8, !tbaa !15
  store i16 3968, ptr %205, align 8, !tbaa !16
  %207 = getelementptr inbounds %struct.ref_s, ptr %201, i64 2, i32 0, i32 1
  store i16 0, ptr %207, align 2, !tbaa !17
  %208 = getelementptr inbounds %struct.ref_s, ptr %201, i64 3
  store ptr %208, ptr @e_stack, align 8, !tbaa !5
  %209 = load ptr, ptr %10, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %208, ptr noundef nonnull align 8 dereferenceable(16) %209, i64 16, i1 false), !tbaa.struct !18
  br label %238

210:                                              ; preds = %120
  %211 = icmp eq i32 %116, 0
  %212 = load ptr, ptr @igs, align 8, !tbaa !24
  br i1 %211, label %215, label %213

213:                                              ; preds = %210
  %214 = call i32 @gs_setcachedevice2(ptr noundef %16, ptr noundef %212, ptr noundef nonnull %12) #4
  br label %217

215:                                              ; preds = %210
  %216 = call i32 @gs_setcachedevice(ptr noundef %16, ptr noundef %212, ptr noundef nonnull %12) #4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  %219 = icmp sgt i32 %218, -1
  %220 = select i1 %219, i32 %117, i32 %218
  br i1 %219, label %221, label %238

221:                                              ; preds = %217
  %222 = icmp eq ptr %3, null
  br i1 %222, label %235, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %225 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !14
  %226 = icmp ugt ptr %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %238

228:                                              ; preds = %223
  store ptr %224, ptr @o_stack, align 8, !tbaa !5
  %229 = load float, ptr %3, align 4, !tbaa !22
  %230 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %231 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %229, ptr %231, align 8, !tbaa !15
  store i16 4096, ptr %230, align 8, !tbaa !16
  %232 = getelementptr inbounds float, ptr %3, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !22
  %234 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %233, ptr %234, align 8, !tbaa !15
  store i16 4096, ptr %224, align 8, !tbaa !16
  br label %235

235:                                              ; preds = %228, %221
  %236 = phi ptr [ %224, %228 ], [ %0, %221 ]
  %237 = call i32 %72(ptr noundef %236) #4
  br label %238

238:                                              ; preds = %128, %164, %184, %200, %152, %111, %217, %235, %227
  %239 = phi i32 [ -16, %227 ], [ %237, %235 ], [ %220, %217 ], [ %114, %111 ], [ -16, %164 ], [ 5, %200 ], [ -16, %184 ], [ %155, %152 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  ret i32 %239
}

declare ptr @op_show_find() local_unnamed_addr #2

declare float @gs_currentmiterlimit(ptr noundef) local_unnamed_addr #2

declare float @gs_currentlinewidth(ptr noundef) local_unnamed_addr #2

declare i32 @gs_show_width_only(ptr noundef) local_unnamed_addr #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

declare i32 @zsetcachedevice2(ptr noundef) #2

declare i32 @zpop(ptr noundef) #2

declare i32 @zsetcachedevice(ptr noundef) #2

declare i32 @gs_setcachedevice2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_setcachedevice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !10, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !7, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ref_s", !11, i64 0, !8, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!6, !7, i64 16}
!15 = !{!8, !8, i64 0}
!16 = !{!10, !12, i64 0}
!17 = !{!10, !12, i64 2}
!18 = !{i64 0, i64 2, !19, i64 2, i64 2, !19, i64 8, i64 8, !20, i64 8, i64 2, !19, i64 8, i64 4, !22, i64 8, i64 8, !20, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24}
!19 = !{!12, !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !8, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !7, i64 40}
!26 = !{!"gs_font_base_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !27, i64 48, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !23, i64 100, !28, i64 104, !30, i64 176, !30, i64 228, !31, i64 280, !34, i64 312, !13, i64 328, !13, i64 332}
!27 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!28 = !{!"gs_font_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !29, i64 32, !7, i64 48, !7, i64 56, !7, i64 64}
!29 = !{!"gx_xfont_callbacks_s", !7, i64 0, !7, i64 8}
!30 = !{!"gs_font_name_s", !8, i64 0, !13, i64 48}
!31 = !{!"gs_rect_s", !32, i64 0, !32, i64 16}
!32 = !{!"gs_point_s", !33, i64 0, !33, i64 8}
!33 = !{!"double", !8, i64 0}
!34 = !{!"gs_uid_s", !21, i64 0, !7, i64 8}
!35 = !{!36, !12, i64 0}
!36 = !{!"dict_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
!37 = !{!31, !33, i64 0}
!38 = !{!31, !33, i64 8}
!39 = !{!31, !33, i64 16}
!40 = !{!31, !33, i64 24}
!41 = !{!26, !13, i64 96}
!42 = !{!6, !13, i64 64}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
