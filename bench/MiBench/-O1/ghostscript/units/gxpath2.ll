; ModuleID = 'gxpath2.c'
source_filename = "gxpath2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_point_s = type { double, double }
%struct.subpath_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.curve_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_path_enum_s = type { ptr, ptr, ptr, ptr, i32, i32 }

@st_gs_path_enum = internal constant %struct.gs_memory_struct_type_s { i32 40, ptr @.str.2, ptr null, ptr null, ptr @path_enum_enum_ptrs, ptr @path_enum_reloc_ptrs, ptr null }, align 8
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"gxpath2.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"bad type %x in gx_path_enum_next!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"gs_path_enum\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_path_assign(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_path_current_point(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %4 = load i8, ptr %3, align 1, !tbaa !17
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !22
  store i64 %9, ptr %1, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  store i64 %11, ptr %12, align 8, !tbaa !25
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ 0, %7 ], [ -14, %2 ]
  ret i32 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gx_path_bbox(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %4 = load i8, ptr %3, align 2, !tbaa !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !27
  br label %130

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %14 = load i8, ptr %13, align 1, !tbaa !17
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %130, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !22
  store i64 %19, ptr %1, align 8, !tbaa !23
  %20 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  store i64 %21, ptr %22, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1
  %24 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !22
  store i64 %25, ptr %23, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1, i32 1
  store i64 %27, ptr %28, align 8, !tbaa !25
  br label %130

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.subpath_s, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !27
  br label %130

39:                                               ; preds = %29
  %40 = icmp eq ptr %31, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.segment_s, ptr %10, i64 0, i32 4
  %43 = load i64, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.segment_s, ptr %10, i64 0, i32 4, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !37
  br label %57

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa.struct !27
  %49 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa.struct !38
  %51 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa.struct !39
  %53 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa.struct !40
  %55 = getelementptr inbounds %struct.segment_s, ptr %31, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !41
  br label %57

57:                                               ; preds = %46, %41
  %58 = phi i64 [ %45, %41 ], [ %54, %46 ]
  %59 = phi i64 [ %43, %41 ], [ %52, %46 ]
  %60 = phi i64 [ %45, %41 ], [ %50, %46 ]
  %61 = phi i64 [ %43, %41 ], [ %48, %46 ]
  %62 = phi ptr [ %10, %41 ], [ %56, %46 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %117, label %64

64:                                               ; preds = %57, %97
  %65 = phi ptr [ %115, %97 ], [ %62, %57 ]
  %66 = phi i64 [ %107, %97 ], [ %61, %57 ]
  %67 = phi i64 [ %113, %97 ], [ %60, %57 ]
  %68 = phi i64 [ %106, %97 ], [ %59, %57 ]
  %69 = phi i64 [ %112, %97 ], [ %58, %57 ]
  %70 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 2
  %71 = load i16, ptr %70, align 8, !tbaa !42
  %72 = icmp eq i16 %71, 3
  br i1 %72, label %73, label %97

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.curve_segment, ptr %65, i64 0, i32 5
  %75 = load i64, ptr %74, align 8, !tbaa !43
  %76 = icmp slt i64 %75, %66
  %77 = tail call i64 @llvm.smax.i64(i64 %75, i64 %68)
  %78 = select i1 %76, i64 %68, i64 %77
  %79 = tail call i64 @llvm.smin.i64(i64 %75, i64 %66)
  %80 = getelementptr inbounds %struct.curve_segment, ptr %65, i64 0, i32 5, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !45
  %82 = icmp slt i64 %81, %67
  %83 = tail call i64 @llvm.smax.i64(i64 %81, i64 %69)
  %84 = select i1 %82, i64 %69, i64 %83
  %85 = tail call i64 @llvm.smin.i64(i64 %81, i64 %67)
  %86 = getelementptr inbounds %struct.curve_segment, ptr %65, i64 0, i32 6
  %87 = load i64, ptr %86, align 8, !tbaa !46
  %88 = icmp slt i64 %87, %79
  %89 = tail call i64 @llvm.smax.i64(i64 %87, i64 %78)
  %90 = select i1 %88, i64 %78, i64 %89
  %91 = tail call i64 @llvm.smin.i64(i64 %87, i64 %79)
  %92 = getelementptr inbounds %struct.curve_segment, ptr %65, i64 0, i32 6, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !47
  %94 = icmp slt i64 %93, %85
  br i1 %94, label %97, label %95

95:                                               ; preds = %73
  %96 = tail call i64 @llvm.smax.i64(i64 %93, i64 %84)
  br label %97

97:                                               ; preds = %95, %73, %64
  %98 = phi i64 [ %69, %64 ], [ %84, %73 ], [ %96, %95 ]
  %99 = phi i64 [ %68, %64 ], [ %90, %73 ], [ %90, %95 ]
  %100 = phi i64 [ %67, %64 ], [ %93, %73 ], [ %85, %95 ]
  %101 = phi i64 [ %66, %64 ], [ %91, %73 ], [ %91, %95 ]
  %102 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 4
  %103 = load i64, ptr %102, align 8, !tbaa !35
  %104 = icmp slt i64 %103, %101
  %105 = tail call i64 @llvm.smax.i64(i64 %103, i64 %99)
  %106 = select i1 %104, i64 %99, i64 %105
  %107 = tail call i64 @llvm.smin.i64(i64 %103, i64 %101)
  %108 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 4, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !37
  %110 = icmp slt i64 %109, %100
  %111 = tail call i64 @llvm.smax.i64(i64 %109, i64 %98)
  %112 = select i1 %110, i64 %98, i64 %111
  %113 = tail call i64 @llvm.smin.i64(i64 %109, i64 %100)
  %114 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !41
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %64, !llvm.loop !48

117:                                              ; preds = %97, %57
  %118 = phi i64 [ %58, %57 ], [ %112, %97 ]
  %119 = phi i64 [ %59, %57 ], [ %106, %97 ]
  %120 = phi i64 [ %60, %57 ], [ %113, %97 ]
  %121 = phi i64 [ %61, %57 ], [ %107, %97 ]
  %122 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  store i64 %121, ptr %122, align 8, !tbaa.struct !27
  %123 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  store i64 %120, ptr %123, align 8, !tbaa.struct !38
  %124 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  store i64 %119, ptr %124, align 8, !tbaa.struct !39
  %125 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  store i64 %118, ptr %125, align 8, !tbaa.struct !40
  %126 = load ptr, ptr %34, align 8, !tbaa !31
  store ptr %126, ptr %30, align 8, !tbaa !29
  store i64 %121, ptr %1, align 8, !tbaa.struct !27
  %127 = getelementptr inbounds i8, ptr %1, i64 8
  store i64 %120, ptr %127, align 8, !tbaa.struct !38
  %128 = getelementptr inbounds i8, ptr %1, i64 16
  store i64 %119, ptr %128, align 8, !tbaa.struct !39
  %129 = getelementptr inbounds i8, ptr %1, i64 24
  store i64 %118, ptr %129, align 8, !tbaa.struct !40
  br label %130

130:                                              ; preds = %12, %17, %37, %117, %6
  %131 = phi i32 [ 0, %6 ], [ 0, %117 ], [ 0, %37 ], [ 0, %17 ], [ -14, %12 ]
  ret i32 %131
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gx_path_has_curves(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gx_path_is_void(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gx_path_is_null(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %7 = load i8, ptr %6, align 1, !tbaa !17
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %5 ]
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gx_subpath_is_rectangle(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.subpath_s, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %105

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.subpath_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %105, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.segment_s, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %105, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.segment_s, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %105, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.segment_s, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.segment_s, ptr %21, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !42
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.segment_s, ptr %21, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.subpath_s, ptr %0, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !53
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %105

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.segment_s, ptr %21, i64 0, i32 4, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !37
  %36 = getelementptr inbounds %struct.subpath_s, ptr %0, i64 0, i32 4, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !54
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %105

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.segment_s, ptr %21, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.segment_s, ptr %41, i64 0, i32 2
  %45 = load i16, ptr %44, align 8, !tbaa !42
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %105, label %47

47:                                               ; preds = %43, %39, %23, %19
  %48 = getelementptr inbounds %struct.subpath_s, ptr %0, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.subpath_s, ptr %0, i64 0, i32 4, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !54
  %52 = getelementptr inbounds %struct.segment_s, ptr %13, i64 0, i32 4
  %53 = load i64, ptr %52, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.segment_s, ptr %13, i64 0, i32 4, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !37
  %56 = getelementptr inbounds %struct.segment_s, ptr %9, i64 0, i32 4
  %57 = load i64, ptr %56, align 8, !tbaa !35
  %58 = icmp eq i64 %49, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.segment_s, ptr %9, i64 0, i32 4, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !37
  %62 = icmp eq i64 %61, %55
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.segment_s, ptr %17, i64 0, i32 4
  %65 = load i64, ptr %64, align 8, !tbaa !35
  %66 = icmp eq i64 %53, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.segment_s, ptr %17, i64 0, i32 4, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !37
  %70 = icmp eq i64 %69, %51
  br i1 %70, label %85, label %71

71:                                               ; preds = %67, %63, %59, %47
  %72 = getelementptr inbounds %struct.segment_s, ptr %17, i64 0, i32 4
  %73 = load i64, ptr %72, align 8, !tbaa !35
  %74 = icmp eq i64 %49, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.segment_s, ptr %17, i64 0, i32 4, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !37
  %78 = icmp eq i64 %77, %55
  %79 = icmp eq i64 %53, %57
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %105

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.segment_s, ptr %9, i64 0, i32 4, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !37
  %84 = icmp eq i64 %83, %51
  br i1 %84, label %85, label %105

85:                                               ; preds = %81, %67
  %86 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1
  %87 = tail call i64 @llvm.smin.i64(i64 %49, i64 %53)
  %88 = tail call i64 @llvm.smax.i64(i64 %49, i64 %53)
  store i64 %87, ptr %1, align 8, !tbaa !55
  store i64 %88, ptr %86, align 8, !tbaa !56
  %89 = tail call i64 @llvm.smin.i64(i64 %51, i64 %55)
  %90 = tail call i64 @llvm.smax.i64(i64 %51, i64 %55)
  %91 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  store i64 %89, ptr %91, align 8, !tbaa !57
  %92 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1, i32 1
  store i64 %90, ptr %92, align 8, !tbaa !58
  %93 = icmp eq ptr %21, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %85, %99
  %95 = phi ptr [ %101, %99 ], [ %21, %85 ]
  %96 = getelementptr inbounds %struct.segment_s, ptr %95, i64 0, i32 2
  %97 = load i16, ptr %96, align 8, !tbaa !42
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.segment_s, ptr %95, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !41
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %94, !llvm.loop !59

103:                                              ; preds = %94, %99, %85
  %104 = phi ptr [ %21, %85 ], [ %95, %94 ], [ %101, %99 ]
  store ptr %104, ptr %2, align 8, !tbaa !6
  br label %105

105:                                              ; preds = %3, %7, %11, %15, %27, %33, %43, %71, %75, %81, %103
  %106 = phi i32 [ 1, %103 ], [ 0, %81 ], [ 0, %75 ], [ 0, %71 ], [ 0, %43 ], [ 0, %33 ], [ 0, %27 ], [ 0, %15 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %106
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gx_path_is_rectangle(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !60
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = call i32 @gx_subpath_is_rectangle(ptr noundef %9, ptr noundef %1, ptr noundef nonnull %3), !range !61
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gx_path_translate(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !62
  %10 = add nsw i64 %9, %1
  store i64 %10, ptr %8, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !63
  %13 = add nsw i64 %12, %2
  store i64 %13, ptr %11, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !64
  %16 = add nsw i64 %15, %1
  store i64 %16, ptr %14, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !65
  %19 = add nsw i64 %18, %2
  store i64 %19, ptr %17, align 8, !tbaa !65
  br label %20

20:                                               ; preds = %7, %3
  %21 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %22 = load i8, ptr %21, align 1, !tbaa !17
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !22
  %28 = add nsw i64 %27, %1
  store i64 %28, ptr %26, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !24
  %31 = add nsw i64 %30, %2
  store i64 %31, ptr %29, align 8, !tbaa !24
  br label %32

32:                                               ; preds = %25, %20
  %33 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %64, label %36

36:                                               ; preds = %32, %54
  %37 = phi ptr [ %62, %54 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !42
  %40 = icmp eq i16 %39, 3
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.curve_segment, ptr %37, i64 0, i32 5
  %43 = load i64, ptr %42, align 8, !tbaa !43
  %44 = add nsw i64 %43, %1
  store i64 %44, ptr %42, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.curve_segment, ptr %37, i64 0, i32 5, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !45
  %47 = add nsw i64 %46, %2
  store i64 %47, ptr %45, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.curve_segment, ptr %37, i64 0, i32 6
  %49 = load i64, ptr %48, align 8, !tbaa !46
  %50 = add nsw i64 %49, %1
  store i64 %50, ptr %48, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.curve_segment, ptr %37, i64 0, i32 6, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !47
  %53 = add nsw i64 %52, %2
  store i64 %53, ptr %51, align 8, !tbaa !47
  br label %54

54:                                               ; preds = %36, %41
  %55 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 4
  %56 = load i64, ptr %55, align 8, !tbaa !35
  %57 = add nsw i64 %56, %1
  store i64 %57, ptr %55, align 8, !tbaa !35
  %58 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 4, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !37
  %60 = add nsw i64 %59, %2
  store i64 %60, ptr %58, align 8, !tbaa !37
  %61 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %36, !llvm.loop !66

64:                                               ; preds = %54, %32
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_point_scale_exp2(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8, !tbaa !23
  %7 = zext nneg i32 %1 to i64
  %8 = shl i64 %6, %7
  br label %14

9:                                                ; preds = %3
  %10 = sub nsw i32 0, %1
  %11 = load i64, ptr %0, align 8, !tbaa !23
  %12 = zext nneg i32 %10 to i64
  %13 = ashr i64 %11, %12
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i64 [ %13, %9 ], [ %8, %5 ]
  store i64 %15, ptr %0, align 8, !tbaa !23
  %16 = icmp sgt i32 %2, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %0, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !25
  %20 = zext nneg i32 %2 to i64
  %21 = shl i64 %19, %20
  store i64 %21, ptr %18, align 8, !tbaa !25
  br label %28

22:                                               ; preds = %14
  %23 = sub nsw i32 0, %2
  %24 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !25
  %26 = zext nneg i32 %23 to i64
  %27 = ashr i64 %25, %26
  store i64 %27, ptr %24, align 8, !tbaa !25
  br label %28

28:                                               ; preds = %22, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_rect_scale_exp2(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8, !tbaa !23
  %7 = zext nneg i32 %1 to i64
  %8 = shl i64 %6, %7
  br label %14

9:                                                ; preds = %3
  %10 = sub nsw i32 0, %1
  %11 = load i64, ptr %0, align 8, !tbaa !23
  %12 = zext nneg i32 %10 to i64
  %13 = ashr i64 %11, %12
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i64 [ %13, %9 ], [ %8, %5 ]
  store i64 %15, ptr %0, align 8, !tbaa !23
  %16 = icmp sgt i32 %2, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %0, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !25
  %20 = zext nneg i32 %2 to i64
  %21 = shl i64 %19, %20
  store i64 %21, ptr %18, align 8, !tbaa !25
  br label %28

22:                                               ; preds = %14
  %23 = sub nsw i32 0, %2
  %24 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !25
  %26 = zext nneg i32 %23 to i64
  %27 = ashr i64 %25, %26
  store i64 %27, ptr %24, align 8, !tbaa !25
  br label %28

28:                                               ; preds = %17, %22
  %29 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %0, i64 0, i32 1
  br i1 %4, label %30, label %34

30:                                               ; preds = %28
  %31 = load i64, ptr %29, align 8, !tbaa !23
  %32 = zext nneg i32 %1 to i64
  %33 = shl i64 %31, %32
  br label %39

34:                                               ; preds = %28
  %35 = sub nsw i32 0, %1
  %36 = load i64, ptr %29, align 8, !tbaa !23
  %37 = zext nneg i32 %35 to i64
  %38 = ashr i64 %36, %37
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i64 [ %38, %34 ], [ %33, %30 ]
  store i64 %40, ptr %29, align 8, !tbaa !23
  br i1 %16, label %41, label %46

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %0, i64 0, i32 1, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !25
  %44 = zext nneg i32 %2 to i64
  %45 = shl i64 %43, %44
  store i64 %45, ptr %42, align 8, !tbaa !25
  br label %52

46:                                               ; preds = %39
  %47 = sub nsw i32 0, %2
  %48 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %0, i64 0, i32 1, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !25
  %50 = zext nneg i32 %47 to i64
  %51 = ashr i64 %49, %50
  store i64 %51, ptr %48, align 8, !tbaa !25
  br label %52

52:                                               ; preds = %41, %46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gx_path_scale_exp2(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8, !tbaa !23
  %8 = zext nneg i32 %1 to i64
  %9 = shl i64 %7, %8
  br label %15

10:                                               ; preds = %3
  %11 = sub nsw i32 0, %1
  %12 = load i64, ptr %4, align 8, !tbaa !23
  %13 = zext nneg i32 %11 to i64
  %14 = ashr i64 %12, %13
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i64 [ %14, %10 ], [ %9, %6 ]
  store i64 %16, ptr %4, align 8, !tbaa !23
  %17 = icmp sgt i32 %2, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !25
  %21 = zext nneg i32 %2 to i64
  %22 = shl i64 %20, %21
  store i64 %22, ptr %19, align 8, !tbaa !25
  br label %29

23:                                               ; preds = %15
  %24 = sub nsw i32 0, %2
  %25 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !25
  %27 = zext nneg i32 %24 to i64
  %28 = ashr i64 %26, %27
  store i64 %28, ptr %25, align 8, !tbaa !25
  br label %29

29:                                               ; preds = %23, %18
  %30 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  br i1 %5, label %31, label %35

31:                                               ; preds = %29
  %32 = load i64, ptr %30, align 8, !tbaa !23
  %33 = zext nneg i32 %1 to i64
  %34 = shl i64 %32, %33
  br label %40

35:                                               ; preds = %29
  %36 = sub nsw i32 0, %1
  %37 = load i64, ptr %30, align 8, !tbaa !23
  %38 = zext nneg i32 %36 to i64
  %39 = ashr i64 %37, %38
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i64 [ %39, %35 ], [ %34, %31 ]
  store i64 %41, ptr %30, align 8, !tbaa !23
  br i1 %17, label %42, label %47

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !25
  %45 = zext nneg i32 %2 to i64
  %46 = shl i64 %44, %45
  store i64 %46, ptr %43, align 8, !tbaa !25
  br label %53

47:                                               ; preds = %40
  %48 = sub nsw i32 0, %2
  %49 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !25
  %51 = zext nneg i32 %48 to i64
  %52 = ashr i64 %50, %51
  store i64 %52, ptr %49, align 8, !tbaa !25
  br label %53

53:                                               ; preds = %42, %47
  %54 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  br i1 %5, label %55, label %59

55:                                               ; preds = %53
  %56 = load i64, ptr %54, align 8, !tbaa !23
  %57 = zext nneg i32 %1 to i64
  %58 = shl i64 %56, %57
  br label %64

59:                                               ; preds = %53
  %60 = sub nsw i32 0, %1
  %61 = load i64, ptr %54, align 8, !tbaa !23
  %62 = zext nneg i32 %60 to i64
  %63 = ashr i64 %61, %62
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i64 [ %63, %59 ], [ %58, %55 ]
  store i64 %65, ptr %54, align 8, !tbaa !23
  br i1 %17, label %66, label %71

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !25
  %69 = zext nneg i32 %2 to i64
  %70 = shl i64 %68, %69
  store i64 %70, ptr %67, align 8, !tbaa !25
  br label %77

71:                                               ; preds = %64
  %72 = sub nsw i32 0, %2
  %73 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !25
  %75 = zext nneg i32 %72 to i64
  %76 = ashr i64 %74, %75
  store i64 %76, ptr %73, align 8, !tbaa !25
  br label %77

77:                                               ; preds = %66, %71
  %78 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = icmp eq ptr %79, null
  br i1 %80, label %140, label %81

81:                                               ; preds = %77
  %82 = sub nsw i32 0, %1
  %83 = zext nneg i32 %82 to i64
  %84 = zext nneg i32 %1 to i64
  %85 = sub nsw i32 0, %2
  %86 = zext nneg i32 %85 to i64
  %87 = zext nneg i32 %2 to i64
  %88 = sub nsw i32 0, %1
  %89 = zext nneg i32 %88 to i64
  %90 = zext nneg i32 %1 to i64
  %91 = sub nsw i32 0, %2
  %92 = zext nneg i32 %91 to i64
  %93 = zext nneg i32 %2 to i64
  %94 = sub nsw i32 0, %1
  %95 = zext nneg i32 %94 to i64
  %96 = zext nneg i32 %1 to i64
  %97 = sub nsw i32 0, %2
  %98 = zext nneg i32 %97 to i64
  %99 = zext nneg i32 %2 to i64
  br label %100

100:                                              ; preds = %81, %126
  %101 = phi ptr [ %79, %81 ], [ %138, %126 ]
  %102 = getelementptr inbounds %struct.segment_s, ptr %101, i64 0, i32 2
  %103 = load i16, ptr %102, align 8, !tbaa !42
  %104 = icmp eq i16 %103, 3
  br i1 %104, label %105, label %126

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.curve_segment, ptr %101, i64 0, i32 5
  %107 = load i64, ptr %106, align 8, !tbaa !23
  %108 = ashr i64 %107, %83
  %109 = shl i64 %107, %84
  %110 = select i1 %5, i64 %109, i64 %108
  store i64 %110, ptr %106, align 8, !tbaa !23
  %111 = getelementptr inbounds %struct.curve_segment, ptr %101, i64 0, i32 5, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !25
  %113 = shl i64 %112, %87
  %114 = ashr i64 %112, %86
  %115 = select i1 %17, i64 %113, i64 %114
  store i64 %115, ptr %111, align 8, !tbaa !25
  %116 = getelementptr inbounds %struct.curve_segment, ptr %101, i64 0, i32 6
  %117 = load i64, ptr %116, align 8, !tbaa !23
  %118 = ashr i64 %117, %89
  %119 = shl i64 %117, %90
  %120 = select i1 %5, i64 %119, i64 %118
  store i64 %120, ptr %116, align 8, !tbaa !23
  %121 = getelementptr inbounds %struct.curve_segment, ptr %101, i64 0, i32 6, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !25
  %123 = ashr i64 %122, %92
  %124 = shl i64 %122, %93
  %125 = select i1 %17, i64 %124, i64 %123
  store i64 %125, ptr %121, align 8, !tbaa !25
  br label %126

126:                                              ; preds = %105, %100
  %127 = getelementptr inbounds %struct.segment_s, ptr %101, i64 0, i32 4
  %128 = load i64, ptr %127, align 8, !tbaa !23
  %129 = ashr i64 %128, %95
  %130 = shl i64 %128, %96
  %131 = select i1 %5, i64 %130, i64 %129
  store i64 %131, ptr %127, align 8, !tbaa !23
  %132 = getelementptr inbounds %struct.segment_s, ptr %101, i64 0, i32 4, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !25
  %134 = shl i64 %133, %99
  %135 = ashr i64 %133, %98
  %136 = select i1 %17, i64 %134, i64 %135
  store i64 %136, ptr %132, align 8, !tbaa !25
  %137 = getelementptr inbounds %struct.segment_s, ptr %101, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !6
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %100, !llvm.loop !67

140:                                              ; preds = %126, %77
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_copy_reversed(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  tail call void @gx_path_init(ptr noundef %1, ptr noundef %8) #11
  br label %9

9:                                                ; preds = %7, %3
  br label %10

10:                                               ; preds = %9, %88
  %11 = phi ptr [ %90, %88 ], [ %5, %9 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %92, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.subpath_s, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.subpath_s, ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.segment_s, ptr %19, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !69
  %22 = zext i16 %21 to i32
  br label %23

23:                                               ; preds = %13, %17
  %24 = phi i32 [ %22, %17 ], [ 0, %13 ]
  %25 = getelementptr inbounds %struct.segment_s, ptr %15, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.segment_s, ptr %15, i64 0, i32 4, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !37
  %29 = tail call i32 @gx_path_add_point(ptr noundef %1, i64 noundef %26, i64 noundef %28) #11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %88, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.subpath_s, ptr %11, i64 0, i32 8
  br label %33

33:                                               ; preds = %31, %85
  %34 = phi ptr [ %37, %85 ], [ %15, %31 ]
  %35 = phi i32 [ %86, %85 ], [ %29, %31 ]
  %36 = phi i32 [ %40, %85 ], [ %24, %31 ]
  %37 = load ptr, ptr %34, align 8, !tbaa !70
  %38 = getelementptr inbounds %struct.segment_s, ptr %34, i64 0, i32 3
  %39 = load i16, ptr %38, align 2, !tbaa !69
  %40 = zext i16 %39 to i32
  %41 = and i32 %36, 1
  %42 = and i32 %40, 65534
  %43 = or disjoint i32 %42, %41
  %44 = getelementptr inbounds %struct.segment_s, ptr %34, i64 0, i32 2
  %45 = load i16, ptr %44, align 8, !tbaa !42
  switch i16 %45, label %85 [
    i16 0, label %46
    i16 3, label %58
    i16 1, label %72
    i16 2, label %72
  ]

46:                                               ; preds = %76, %33
  %47 = getelementptr inbounds %struct.subpath_s, ptr %11, i64 0, i32 8
  %48 = load i8, ptr %47, align 8, !tbaa !71
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @gx_path_close_subpath_notes(ptr noundef %1, i32 noundef %43) #11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %88, label %53

53:                                               ; preds = %50, %46
  %54 = phi i32 [ %51, %50 ], [ %35, %46 ]
  %55 = load ptr, ptr %14, align 8, !tbaa !31
  %56 = getelementptr inbounds %struct.segment_s, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  br label %88

58:                                               ; preds = %33
  %59 = getelementptr inbounds %struct.curve_segment, ptr %34, i64 0, i32 6
  %60 = load i64, ptr %59, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.curve_segment, ptr %34, i64 0, i32 6, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !47
  %63 = getelementptr inbounds %struct.curve_segment, ptr %34, i64 0, i32 5
  %64 = load i64, ptr %63, align 8, !tbaa !43
  %65 = getelementptr inbounds %struct.curve_segment, ptr %34, i64 0, i32 5, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !45
  %67 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 4
  %68 = load i64, ptr %67, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 4, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !37
  %71 = tail call i32 @gx_path_add_curve_notes(ptr noundef %1, i64 noundef %60, i64 noundef %62, i64 noundef %64, i64 noundef %66, i64 noundef %68, i64 noundef %70, i32 noundef %43) #11
  br label %85

72:                                               ; preds = %33, %33
  %73 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 2
  %74 = load i16, ptr %73, align 8, !tbaa !42
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i8, ptr %32, align 8, !tbaa !71
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %46

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 4
  %81 = load i64, ptr %80, align 8, !tbaa !35
  %82 = getelementptr inbounds %struct.segment_s, ptr %37, i64 0, i32 4, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !37
  %84 = tail call i32 @gx_path_add_line_notes(ptr noundef %1, i64 noundef %81, i64 noundef %83, i32 noundef %43) #11
  br label %85

85:                                               ; preds = %33, %79, %58
  %86 = phi i32 [ %35, %33 ], [ %84, %79 ], [ %71, %58 ]
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %33, !llvm.loop !72

88:                                               ; preds = %85, %50, %23, %53
  %89 = phi i32 [ %54, %53 ], [ %29, %23 ], [ %51, %50 ], [ %86, %85 ]
  %90 = phi ptr [ %57, %53 ], [ %11, %23 ], [ %11, %50 ], [ %11, %85 ]
  %91 = phi i32 [ 2, %53 ], [ 5, %23 ], [ 5, %50 ], [ 5, %85 ]
  switch i32 %91, label %106 [
    i32 2, label %10
    i32 5, label %104
  ]

92:                                               ; preds = %10
  %93 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %94 = load i8, ptr %93, align 1, !tbaa !17
  %95 = and i8 %94, -9
  %96 = icmp eq i8 %95, 3
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %99 = load i64, ptr %98, align 8, !tbaa !22
  %100 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !24
  %102 = tail call i32 @gx_path_add_point(ptr noundef %1, i64 noundef %99, i64 noundef %101) #11
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %88, %97
  %105 = phi i32 [ %102, %97 ], [ %89, %88 ]
  tail call void @gx_path_release(ptr noundef %1) #11
  br label %106

106:                                              ; preds = %88, %92, %97, %104
  %107 = phi i32 [ %105, %104 ], [ 0, %97 ], [ 0, %92 ], [ undef, %88 ]
  ret i32 %107
}

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @gx_path_add_curve_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare void @gx_path_release(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_path_enum_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = tail call ptr %4(ptr noundef %0, ptr noundef nonnull @st_gs_path_enum, ptr noundef %1) #11
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_path_enum_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  store ptr %7, ptr %0, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 8, !tbaa !81
  %9 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 4, !tbaa !82
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_path_enum_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 11
  %9 = load i8, ptr %8, align 1, !tbaa !17
  %10 = and i8 %9, -9
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %46

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !81
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  store i32 1, ptr %13, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %17, align 4, !tbaa !82
  %18 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !39
  br label %46

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.segment_s, ptr %3, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  store ptr %21, ptr %0, align 8, !tbaa !80
  %22 = getelementptr inbounds %struct.segment_s, ptr %3, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !69
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 5
  store i32 %24, ptr %25, align 4, !tbaa !82
  %26 = getelementptr inbounds %struct.segment_s, ptr %3, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !42
  switch i16 %27, label %40 [
    i16 0, label %28
    i16 1, label %30
    i16 2, label %32
    i16 3, label %34
  ]

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.segment_s, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !39
  br label %46

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.segment_s, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !39
  br label %46

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.segment_s, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false), !tbaa.struct !39
  br label %46

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.curve_segment, ptr %3, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !39
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 1
  %37 = getelementptr inbounds %struct.curve_segment, ptr %3, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !39
  %38 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 2
  %39 = getelementptr inbounds %struct.segment_s, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false), !tbaa.struct !39
  br label %46

40:                                               ; preds = %19
  %41 = load ptr, ptr @gs_stderr, align 8, !tbaa !6
  tail call void @lprintf_file_and_line(ptr noundef %41, ptr noundef nonnull @.str, i32 noundef 391) #11
  %42 = load ptr, ptr @gs_stderr, align 8, !tbaa !6
  %43 = load i16, ptr %26, align 8, !tbaa !42
  %44 = zext i16 %43 to i32
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.1, i32 noundef %44)
  br label %46

46:                                               ; preds = %16, %12, %5, %40, %34, %32, %30, %28
  %47 = phi i32 [ -100, %40 ], [ 3, %34 ], [ 4, %32 ], [ 2, %30 ], [ 1, %28 ], [ 1, %16 ], [ 0, %12 ], [ 0, %5 ]
  ret i32 %47
}

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gx_path_enum_notes(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !82
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gx_path_enum_backup(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  store ptr %5, ptr %0, align 8, !tbaa !80
  br label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 11
  %12 = load i8, ptr %11, align 1, !tbaa !17
  %13 = and i8 %12, -9
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !81
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, ptr %16, align 8, !tbaa !81
  br label %27

20:                                               ; preds = %15, %8
  %21 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.subpath_s, ptr %22, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  store ptr %26, ptr %0, align 8, !tbaa !80
  br label %27

27:                                               ; preds = %19, %20, %24, %4, %7
  %28 = phi i32 [ 1, %7 ], [ 0, %4 ], [ 1, %19 ], [ 1, %24 ], [ 0, %20 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @path_enum_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %14 [
    i32 0, label %11
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 1
  br label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 2
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %4, %9, %7, %5
  %12 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ], [ %0, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  store ptr %13, ptr %3, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @path_enum_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #11
  store ptr %5, ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #11
  store ptr %8, ptr %6, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #11
  store ptr %11, ptr %9, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %13, ptr noundef %2) #11
  store ptr %14, ptr %12, align 8, !tbaa !78
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i64 0, i64 8, !6, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 8, !6, i64 48, i64 8, !6, i64 56, i64 8, !6, i64 64, i64 4, !12, i64 68, i64 4, !12, i64 72, i64 8, !10, i64 80, i64 8, !10, i64 88, i64 8, !14, i64 96, i64 8, !14, i64 104, i64 8, !14, i64 112, i64 8, !14, i64 120, i64 1, !16, i64 121, i64 1, !16, i64 122, i64 1, !16, i64 123, i64 1, !16}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !8, i64 121}
!18 = !{!"gx_path_s", !7, i64 0, !19, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !13, i64 64, !13, i64 68, !20, i64 72, !21, i64 88, !21, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!19 = !{!"gs_fixed_rect_s", !20, i64 0, !20, i64 16}
!20 = !{!"gs_fixed_point_s", !11, i64 0, !11, i64 8}
!21 = !{!"gs_point_s", !15, i64 0, !15, i64 8}
!22 = !{!18, !11, i64 72}
!23 = !{!20, !11, i64 0}
!24 = !{!18, !11, i64 80}
!25 = !{!20, !11, i64 8}
!26 = !{!18, !8, i64 122}
!27 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10}
!28 = !{!18, !7, i64 48}
!29 = !{!18, !7, i64 40}
!30 = !{!18, !7, i64 56}
!31 = !{!32, !7, i64 40}
!32 = !{!"subpath_s", !7, i64 0, !7, i64 8, !33, i64 16, !33, i64 18, !20, i64 24, !7, i64 40, !13, i64 48, !34, i64 56, !8, i64 104}
!33 = !{!"short", !8, i64 0}
!34 = !{!"", !7, i64 0, !7, i64 8, !33, i64 16, !33, i64 18, !20, i64 24, !7, i64 40}
!35 = !{!36, !11, i64 24}
!36 = !{!"segment_s", !7, i64 0, !7, i64 8, !33, i64 16, !33, i64 18, !20, i64 24}
!37 = !{!36, !11, i64 32}
!38 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10}
!39 = !{i64 0, i64 8, !10, i64 8, i64 8, !10}
!40 = !{i64 0, i64 8, !10}
!41 = !{!36, !7, i64 8}
!42 = !{!36, !33, i64 16}
!43 = !{!44, !11, i64 40}
!44 = !{!"", !7, i64 0, !7, i64 8, !33, i64 16, !33, i64 18, !20, i64 24, !20, i64 40, !20, i64 56}
!45 = !{!44, !11, i64 48}
!46 = !{!44, !11, i64 56}
!47 = !{!44, !11, i64 64}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!18, !13, i64 68}
!51 = !{!32, !13, i64 48}
!52 = !{!32, !7, i64 8}
!53 = !{!32, !11, i64 24}
!54 = !{!32, !11, i64 32}
!55 = !{!19, !11, i64 0}
!56 = !{!19, !11, i64 16}
!57 = !{!19, !11, i64 8}
!58 = !{!19, !11, i64 24}
!59 = distinct !{!59, !49}
!60 = !{!18, !13, i64 64}
!61 = !{i32 0, i32 2}
!62 = !{!18, !11, i64 8}
!63 = !{!18, !11, i64 16}
!64 = !{!18, !11, i64 24}
!65 = !{!18, !11, i64 32}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
!68 = !{!18, !7, i64 0}
!69 = !{!36, !33, i64 18}
!70 = !{!36, !7, i64 0}
!71 = !{!32, !8, i64 104}
!72 = distinct !{!72, !49}
!73 = !{!74, !7, i64 16}
!74 = !{!"gs_memory_s", !75, i64 0}
!75 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!76 = !{!77, !7, i64 16}
!77 = !{!"gs_path_enum_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !13, i64 36}
!78 = !{!77, !7, i64 24}
!79 = !{!77, !7, i64 8}
!80 = !{!77, !7, i64 0}
!81 = !{!77, !13, i64 32}
!82 = !{!77, !13, i64 36}
