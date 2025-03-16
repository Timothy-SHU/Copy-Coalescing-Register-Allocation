; ModuleID = 'spngp.c'
source_filename = "spngp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.stream_PNGP_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i32, ptr, i32, i64, [32 x i8] }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@st_PNGP_state = internal constant %struct.gs_memory_struct_type_s { i32 112, ptr @.str, ptr null, ptr null, ptr @pngp_enum_ptrs, ptr @pngp_reloc_ptrs, ptr null }, align 8
@s_PNGPE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_PNGP_state, ptr @s_PNGPE_init, ptr @s_PNGPE_process, i32 1, i32 1, ptr null, ptr @s_PNGP_set_defaults, ptr @s_PNGP_reinit }, align 8
@s_PNGPD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_PNGP_state, ptr @s_PNGPD_init, ptr @s_PNGPD_process, i32 1, i32 1, ptr null, ptr @s_PNGP_set_defaults, ptr @s_PNGP_reinit }, align 8
@.str = private unnamed_addr constant [32 x i8] c"PNGPredictorEncode/Decode state\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"PNGPredictor prev row\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_PNGPE_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = mul nsw i32 %5, %3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !13
  %10 = zext i32 %9 to i64
  %11 = mul nsw i64 %7, %10
  %12 = icmp sgt i64 %11, 30064771065
  br i1 %12, label %53, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = add nsw i64 %11, 7
  %17 = lshr i64 %16, 3
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 7
  store i32 %18, ptr %19, align 8, !tbaa !15
  %20 = trunc i64 %11 to i8
  %21 = sub i8 0, %20
  %22 = and i8 %21, 7
  %23 = shl nsw i8 -1, %22
  %24 = xor i8 %23, -1
  %25 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 8
  store i8 %24, ptr %25, align 4, !tbaa !16
  %26 = add nsw i32 %6, 7
  %27 = ashr i32 %26, 3
  %28 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 9
  store i32 %27, ptr %28, align 8, !tbaa !17
  %29 = and i32 %15, -2
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %41, label %31

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = load ptr, ptr %33, align 8, !tbaa !20
  %35 = add i32 %27, %18
  %36 = tail call ptr %34(ptr noundef nonnull %33, i32 noundef %35, ptr noundef nonnull @.str.1) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %28, align 8, !tbaa !17
  %40 = sext i32 %39 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %36, i8 0, i64 %40, i1 false)
  br label %41

41:                                               ; preds = %38, %13
  %42 = phi ptr [ %36, %38 ], [ null, %13 ]
  %43 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 10
  store ptr %42, ptr %43, align 8, !tbaa !23
  %44 = icmp eq ptr %42, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %28, align 8, !tbaa !17
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load i32, ptr %19, align 8, !tbaa !15
  %50 = zext i32 %49 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %48, i8 0, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %45, %41
  %52 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 12
  store i64 0, ptr %52, align 8, !tbaa !24
  br label %53

53:                                               ; preds = %1, %31, %51
  %54 = phi i32 [ 0, %51 ], [ -2, %1 ], [ -2, %31 ]
  ret i32 %54
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_PNGPE_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 10
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 13
  %15 = sub nsw i64 0, %12
  %16 = add nsw i32 %6, -1
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %20 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %21 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 11
  %23 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 13
  %25 = sext i32 %6 to i64
  br label %26

26:                                               ; preds = %110, %4
  %27 = phi i32 [ 0, %4 ], [ %112, %110 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !25
  %29 = load ptr, ptr %7, align 8, !tbaa !27
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %26
  %32 = load i64, ptr %8, align 8, !tbaa !24
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load ptr, ptr %19, align 8, !tbaa !28
  %36 = load ptr, ptr %20, align 8, !tbaa !30
  %37 = icmp ult ptr %35, %36
  br i1 %37, label %38, label %110

38:                                               ; preds = %34
  %39 = load i32, ptr %21, align 4, !tbaa !14
  %40 = icmp eq i32 %39, 15
  %41 = select i1 %40, i32 11, i32 %39
  %42 = trunc i32 %41 to i8
  %43 = add i8 %42, -10
  %44 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %44, ptr %19, align 8, !tbaa !28
  store i8 %43, ptr %44, align 1, !tbaa !31
  %45 = add nsw i32 %41, -10
  store i32 %45, ptr %22, align 8, !tbaa !32
  %46 = load i32, ptr %23, align 8, !tbaa !15
  %47 = zext i32 %46 to i64
  store i64 %47, ptr %8, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %24, i8 0, i64 %25, i1 false)
  br label %110, !llvm.loop !33

48:                                               ; preds = %31
  %49 = ptrtoint ptr %29 to i64
  %50 = ptrtoint ptr %28 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load ptr, ptr %9, align 8, !tbaa !30
  %54 = load ptr, ptr %10, align 8, !tbaa !28
  %55 = ptrtoint ptr %53 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = trunc i64 %32 to i32
  %60 = tail call i32 @llvm.umin.i32(i32 %52, i32 %59)
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 %58)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %110, label %63

63:                                               ; preds = %48
  %64 = load ptr, ptr %11, align 8, !tbaa !23
  %65 = getelementptr inbounds i8, ptr %64, i64 %12
  %66 = load i32, ptr %13, align 8, !tbaa !15
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %65, i64 %67
  %69 = sub i64 0, %32
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  %71 = icmp ult i32 %61, %6
  %72 = tail call i32 @llvm.umin.i32(i32 %61, i32 %6)
  %73 = getelementptr inbounds i8, ptr %70, i64 %15
  tail call fastcc void @s_pngp_process(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %14, ptr noundef nonnull %1, ptr noundef nonnull %73, ptr noundef nonnull %70, i32 noundef %72)
  %74 = load ptr, ptr %11, align 8, !tbaa !23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %63
  %77 = zext i32 %72 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %73, ptr nonnull align 8 %14, i64 %77, i1 false)
  br label %78

78:                                               ; preds = %76, %63
  br i1 %71, label %79, label %90

79:                                               ; preds = %78
  %80 = sub i32 %6, %72
  %81 = zext i32 %72 to i64
  %82 = getelementptr inbounds i8, ptr %14, i64 %81
  %83 = sext i32 %80 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %14, ptr nonnull align 1 %82, i64 %83, i1 false)
  %84 = getelementptr inbounds i8, ptr %14, i64 %83
  %85 = load ptr, ptr %1, align 8, !tbaa !25
  %86 = add i32 %72, -1
  %87 = zext i32 %86 to i64
  %88 = sub nsw i64 0, %87
  %89 = getelementptr inbounds i8, ptr %85, i64 %88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %84, ptr align 1 %89, i64 %81, i1 false)
  br label %110

90:                                               ; preds = %78
  %91 = sub i32 %61, %6
  %92 = load ptr, ptr %1, align 8, !tbaa !25
  %93 = getelementptr inbounds i8, ptr %92, i64 %18
  %94 = getelementptr inbounds i8, ptr %70, i64 %12
  tail call fastcc void @s_pngp_process(ptr noundef %0, ptr noundef %2, ptr noundef %93, ptr noundef nonnull %1, ptr noundef nonnull %70, ptr noundef nonnull %94, i32 noundef %91)
  %95 = load ptr, ptr %1, align 8, !tbaa !25
  %96 = getelementptr inbounds i8, ptr %95, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %14, ptr align 1 %96, i64 %12, i1 false)
  %97 = load ptr, ptr %11, align 8, !tbaa !23
  %98 = icmp eq ptr %97, null
  br i1 %98, label %110, label %99

99:                                               ; preds = %90
  %100 = load ptr, ptr %1, align 8, !tbaa !25
  %101 = add i32 %61, -1
  %102 = zext i32 %101 to i64
  %103 = sub nsw i64 0, %102
  %104 = getelementptr inbounds i8, ptr %100, i64 %103
  %105 = zext i32 %91 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %70, ptr align 1 %104, i64 %105, i1 false)
  %106 = load i64, ptr %8, align 8, !tbaa !24
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, ptr %70, i64 %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %109, ptr nonnull align 8 %14, i64 %12, i1 false)
  br label %110

110:                                              ; preds = %79, %99, %108, %90, %48, %38, %34
  %111 = phi i1 [ false, %38 ], [ true, %34 ], [ true, %48 ], [ true, %79 ], [ false, %99 ], [ false, %108 ], [ false, %90 ]
  %112 = phi i32 [ %27, %38 ], [ 1, %34 ], [ 1, %48 ], [ %27, %79 ], [ %27, %99 ], [ %27, %108 ], [ %27, %90 ]
  br i1 %111, label %113, label %26

113:                                              ; preds = %110, %26
  %114 = phi i32 [ %112, %110 ], [ %27, %26 ]
  ret i32 %114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @s_PNGP_set_defaults(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 4
  store i32 8, ptr %3, align 4, !tbaa !12
  %4 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 5
  store i32 1, ptr %4, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 6
  store i32 15, ptr %5, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @s_PNGP_reinit(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !15
  %12 = zext i32 %11 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 0, i64 %12, i1 false)
  br label %13

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 12
  store i64 0, ptr %14, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_PNGPD_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = mul nsw i32 %5, %3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !13
  %10 = zext i32 %9 to i64
  %11 = mul nsw i64 %7, %10
  %12 = icmp sgt i64 %11, 30064771065
  br i1 %12, label %43, label %13

13:                                               ; preds = %1
  %14 = add nsw i64 %11, 7
  %15 = lshr i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 7
  store i32 %16, ptr %17, align 8, !tbaa !15
  %18 = trunc i64 %11 to i8
  %19 = sub i8 0, %18
  %20 = and i8 %19, 7
  %21 = shl nsw i8 -1, %20
  %22 = xor i8 %21, -1
  %23 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 8
  store i8 %22, ptr %23, align 4, !tbaa !16
  %24 = add nsw i32 %6, 7
  %25 = ashr i32 %24, 3
  %26 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 9
  store i32 %25, ptr %26, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = add i32 %25, %16
  %31 = tail call ptr %29(ptr noundef nonnull %28, i32 noundef %30, ptr noundef nonnull @.str.1) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %13
  %34 = load i32, ptr %26, align 8, !tbaa !17
  %35 = sext i32 %34 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %31, i8 0, i64 %35, i1 false)
  %36 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 10
  store ptr %31, ptr %36, align 8, !tbaa !23
  %37 = load i32, ptr %26, align 8, !tbaa !17
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  %40 = load i32, ptr %17, align 8, !tbaa !15
  %41 = zext i32 %40 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %39, i8 0, i64 %41, i1 false)
  %42 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 12
  store i64 0, ptr %42, align 8, !tbaa !24
  br label %43

43:                                               ; preds = %1, %13, %33
  %44 = phi i32 [ 0, %33 ], [ -2, %1 ], [ -2, %13 ]
  ret i32 %44
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_PNGPD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 10
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 13
  %15 = sub nsw i64 0, %12
  %16 = add nsw i32 %6, -1
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 7
  %21 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 13
  %22 = sext i32 %6 to i64
  br label %23

23:                                               ; preds = %102, %4
  %24 = phi i32 [ 0, %4 ], [ %104, %102 ]
  %25 = load ptr, ptr %1, align 8, !tbaa !25
  %26 = load ptr, ptr %7, align 8, !tbaa !27
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %28, label %105

28:                                               ; preds = %23
  %29 = load i64, ptr %8, align 8, !tbaa !24
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %25, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !31
  %34 = icmp ugt i8 %33, 4
  br i1 %34, label %102, label %35

35:                                               ; preds = %31
  store ptr %32, ptr %1, align 8, !tbaa !25
  %36 = add nuw nsw i8 %33, 6
  %37 = zext nneg i8 %36 to i32
  store i32 %37, ptr %19, align 8, !tbaa !32
  %38 = load i32, ptr %20, align 8, !tbaa !15
  %39 = zext i32 %38 to i64
  store i64 %39, ptr %8, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %21, i8 0, i64 %22, i1 false)
  br label %102, !llvm.loop !35

40:                                               ; preds = %28
  %41 = ptrtoint ptr %26 to i64
  %42 = ptrtoint ptr %25 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %9, align 8, !tbaa !30
  %46 = load ptr, ptr %10, align 8, !tbaa !28
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = trunc i64 %29 to i32
  %52 = tail call i32 @llvm.umin.i32(i32 %44, i32 %51)
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 %50)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %40
  %56 = load ptr, ptr %11, align 8, !tbaa !23
  %57 = getelementptr inbounds i8, ptr %56, i64 %12
  %58 = load i32, ptr %13, align 8, !tbaa !15
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  %61 = sub i64 0, %29
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = icmp ult i32 %53, %6
  %64 = tail call i32 @llvm.umin.i32(i32 %53, i32 %6)
  %65 = getelementptr inbounds i8, ptr %62, i64 %15
  tail call fastcc void @s_pngp_process(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %14, ptr noundef nonnull %1, ptr noundef nonnull %65, ptr noundef nonnull %62, i32 noundef %64)
  %66 = load ptr, ptr %11, align 8, !tbaa !23
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %55
  %69 = zext i32 %64 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %65, ptr nonnull align 8 %14, i64 %69, i1 false)
  br label %70

70:                                               ; preds = %68, %55
  br i1 %63, label %71, label %82

71:                                               ; preds = %70
  %72 = sub i32 %6, %64
  %73 = zext i32 %64 to i64
  %74 = getelementptr inbounds i8, ptr %14, i64 %73
  %75 = sext i32 %72 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %14, ptr nonnull align 1 %74, i64 %75, i1 false)
  %76 = getelementptr inbounds i8, ptr %14, i64 %75
  %77 = load ptr, ptr %10, align 8, !tbaa !28
  %78 = add i32 %64, -1
  %79 = zext i32 %78 to i64
  %80 = sub nsw i64 0, %79
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %76, ptr align 1 %81, i64 %73, i1 false)
  br label %102

82:                                               ; preds = %70
  %83 = sub i32 %53, %6
  %84 = load ptr, ptr %10, align 8, !tbaa !28
  %85 = getelementptr inbounds i8, ptr %84, i64 %18
  %86 = getelementptr inbounds i8, ptr %62, i64 %12
  tail call fastcc void @s_pngp_process(ptr noundef %0, ptr noundef %2, ptr noundef %85, ptr noundef nonnull %1, ptr noundef nonnull %62, ptr noundef nonnull %86, i32 noundef %83)
  %87 = load ptr, ptr %10, align 8, !tbaa !28
  %88 = getelementptr inbounds i8, ptr %87, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %14, ptr align 1 %88, i64 %12, i1 false)
  %89 = load ptr, ptr %11, align 8, !tbaa !23
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %82
  %92 = load ptr, ptr %10, align 8, !tbaa !28
  %93 = add i32 %53, -1
  %94 = zext i32 %93 to i64
  %95 = sub nsw i64 0, %94
  %96 = getelementptr inbounds i8, ptr %92, i64 %95
  %97 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %62, ptr align 1 %96, i64 %97, i1 false)
  %98 = load i64, ptr %8, align 8, !tbaa !24
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = getelementptr inbounds i8, ptr %62, i64 %97
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %101, ptr nonnull align 8 %14, i64 %12, i1 false)
  br label %102

102:                                              ; preds = %71, %91, %100, %82, %40, %35, %31
  %103 = phi i1 [ false, %35 ], [ true, %31 ], [ true, %40 ], [ true, %71 ], [ false, %91 ], [ false, %100 ], [ false, %82 ]
  %104 = phi i32 [ %24, %35 ], [ -2, %31 ], [ 1, %40 ], [ %24, %71 ], [ %24, %91 ], [ %24, %100 ], [ %24, %82 ]
  br i1 %103, label %105, label %23

105:                                              ; preds = %102, %23
  %106 = phi i32 [ %104, %102 ], [ %24, %23 ]
  ret i32 %106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pngp_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  store ptr %8, ptr %3, align 8, !tbaa !36
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @pngp_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #9
  store ptr %6, ptr %4, align 8, !tbaa !23
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @s_pngp_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6) unnamed_addr #1 {
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load ptr, ptr %3, align 8, !tbaa !25
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  store ptr %14, ptr %3, align 8, !tbaa !25
  %15 = getelementptr inbounds i8, ptr %9, i64 %13
  store ptr %15, ptr %8, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 12
  %17 = load i64, ptr %16, align 8, !tbaa !24
  %18 = sub nsw i64 %17, %13
  store i64 %18, ptr %16, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %0, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !32
  switch i32 %20, label %204 [
    i32 0, label %37
    i32 6, label %37
    i32 1, label %35
    i32 7, label %33
    i32 2, label %31
    i32 8, label %29
    i32 3, label %27
    i32 9, label %25
    i32 4, label %23
    i32 10, label %21
  ]

21:                                               ; preds = %7
  %22 = icmp eq i32 %6, 0
  br i1 %22, label %204, label %168

23:                                               ; preds = %7
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %204, label %132

25:                                               ; preds = %7
  %26 = icmp eq i32 %6, 0
  br i1 %26, label %204, label %111

27:                                               ; preds = %7
  %28 = icmp eq i32 %6, 0
  br i1 %28, label %204, label %90

29:                                               ; preds = %7
  %30 = icmp eq i32 %6, 0
  br i1 %30, label %204, label %77

31:                                               ; preds = %7
  %32 = icmp eq i32 %6, 0
  br i1 %32, label %204, label %64

33:                                               ; preds = %7
  %34 = icmp eq i32 %6, 0
  br i1 %34, label %204, label %51

35:                                               ; preds = %7
  %36 = icmp eq i32 %6, 0
  br i1 %36, label %204, label %38

37:                                               ; preds = %7, %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %10, ptr nonnull align 1 %12, i64 %13, i1 false)
  br label %204

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %48, %38 ], [ %12, %35 ]
  %40 = phi ptr [ %46, %38 ], [ %10, %35 ]
  %41 = phi i32 [ %49, %38 ], [ %6, %35 ]
  %42 = phi ptr [ %47, %38 ], [ %2, %35 ]
  %43 = load i8, ptr %39, align 1, !tbaa !31
  %44 = load i8, ptr %42, align 1, !tbaa !31
  %45 = sub i8 %43, %44
  store i8 %45, ptr %40, align 1, !tbaa !31
  %46 = getelementptr inbounds i8, ptr %40, i64 1
  %47 = getelementptr inbounds i8, ptr %42, i64 1
  %48 = getelementptr inbounds i8, ptr %39, i64 1
  %49 = add i32 %41, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %204, label %38, !llvm.loop !37

51:                                               ; preds = %33, %51
  %52 = phi ptr [ %61, %51 ], [ %12, %33 ]
  %53 = phi ptr [ %59, %51 ], [ %10, %33 ]
  %54 = phi i32 [ %62, %51 ], [ %6, %33 ]
  %55 = phi ptr [ %60, %51 ], [ %2, %33 ]
  %56 = load i8, ptr %52, align 1, !tbaa !31
  %57 = load i8, ptr %55, align 1, !tbaa !31
  %58 = add i8 %57, %56
  store i8 %58, ptr %53, align 1, !tbaa !31
  %59 = getelementptr inbounds i8, ptr %53, i64 1
  %60 = getelementptr inbounds i8, ptr %55, i64 1
  %61 = getelementptr inbounds i8, ptr %52, i64 1
  %62 = add i32 %54, -1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %204, label %51, !llvm.loop !38

64:                                               ; preds = %31, %64
  %65 = phi ptr [ %74, %64 ], [ %12, %31 ]
  %66 = phi ptr [ %72, %64 ], [ %10, %31 ]
  %67 = phi i32 [ %75, %64 ], [ %6, %31 ]
  %68 = phi ptr [ %73, %64 ], [ %5, %31 ]
  %69 = load i8, ptr %65, align 1, !tbaa !31
  %70 = load i8, ptr %68, align 1, !tbaa !31
  %71 = sub i8 %69, %70
  store i8 %71, ptr %66, align 1, !tbaa !31
  %72 = getelementptr inbounds i8, ptr %66, i64 1
  %73 = getelementptr inbounds i8, ptr %68, i64 1
  %74 = getelementptr inbounds i8, ptr %65, i64 1
  %75 = add i32 %67, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %204, label %64, !llvm.loop !39

77:                                               ; preds = %29, %77
  %78 = phi ptr [ %87, %77 ], [ %12, %29 ]
  %79 = phi ptr [ %85, %77 ], [ %10, %29 ]
  %80 = phi i32 [ %88, %77 ], [ %6, %29 ]
  %81 = phi ptr [ %86, %77 ], [ %5, %29 ]
  %82 = load i8, ptr %78, align 1, !tbaa !31
  %83 = load i8, ptr %81, align 1, !tbaa !31
  %84 = add i8 %83, %82
  store i8 %84, ptr %79, align 1, !tbaa !31
  %85 = getelementptr inbounds i8, ptr %79, i64 1
  %86 = getelementptr inbounds i8, ptr %81, i64 1
  %87 = getelementptr inbounds i8, ptr %78, i64 1
  %88 = add i32 %80, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %204, label %77, !llvm.loop !40

90:                                               ; preds = %27, %90
  %91 = phi ptr [ %108, %90 ], [ %12, %27 ]
  %92 = phi ptr [ %105, %90 ], [ %10, %27 ]
  %93 = phi i32 [ %109, %90 ], [ %6, %27 ]
  %94 = phi ptr [ %107, %90 ], [ %5, %27 ]
  %95 = phi ptr [ %106, %90 ], [ %2, %27 ]
  %96 = load i8, ptr %91, align 1, !tbaa !31
  %97 = load i8, ptr %95, align 1, !tbaa !31
  %98 = zext i8 %97 to i16
  %99 = load i8, ptr %94, align 1, !tbaa !31
  %100 = zext i8 %99 to i16
  %101 = add nuw nsw i16 %100, %98
  %102 = lshr i16 %101, 1
  %103 = trunc i16 %102 to i8
  %104 = sub i8 %96, %103
  store i8 %104, ptr %92, align 1, !tbaa !31
  %105 = getelementptr inbounds i8, ptr %92, i64 1
  %106 = getelementptr inbounds i8, ptr %95, i64 1
  %107 = getelementptr inbounds i8, ptr %94, i64 1
  %108 = getelementptr inbounds i8, ptr %91, i64 1
  %109 = add i32 %93, -1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %204, label %90, !llvm.loop !41

111:                                              ; preds = %25, %111
  %112 = phi ptr [ %129, %111 ], [ %12, %25 ]
  %113 = phi ptr [ %126, %111 ], [ %10, %25 ]
  %114 = phi i32 [ %130, %111 ], [ %6, %25 ]
  %115 = phi ptr [ %128, %111 ], [ %5, %25 ]
  %116 = phi ptr [ %127, %111 ], [ %2, %25 ]
  %117 = load i8, ptr %112, align 1, !tbaa !31
  %118 = load i8, ptr %116, align 1, !tbaa !31
  %119 = zext i8 %118 to i16
  %120 = load i8, ptr %115, align 1, !tbaa !31
  %121 = zext i8 %120 to i16
  %122 = add nuw nsw i16 %121, %119
  %123 = lshr i16 %122, 1
  %124 = trunc i16 %123 to i8
  %125 = add i8 %117, %124
  store i8 %125, ptr %113, align 1, !tbaa !31
  %126 = getelementptr inbounds i8, ptr %113, i64 1
  %127 = getelementptr inbounds i8, ptr %116, i64 1
  %128 = getelementptr inbounds i8, ptr %115, i64 1
  %129 = getelementptr inbounds i8, ptr %112, i64 1
  %130 = add i32 %114, -1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %204, label %111, !llvm.loop !42

132:                                              ; preds = %23, %132
  %133 = phi ptr [ %165, %132 ], [ %12, %23 ]
  %134 = phi ptr [ %161, %132 ], [ %10, %23 ]
  %135 = phi i32 [ %166, %132 ], [ %6, %23 ]
  %136 = phi ptr [ %163, %132 ], [ %5, %23 ]
  %137 = phi ptr [ %164, %132 ], [ %4, %23 ]
  %138 = phi ptr [ %162, %132 ], [ %2, %23 ]
  %139 = load i8, ptr %133, align 1, !tbaa !31
  %140 = load i8, ptr %138, align 1, !tbaa !31
  %141 = zext i8 %140 to i32
  %142 = load i8, ptr %136, align 1, !tbaa !31
  %143 = zext i8 %142 to i32
  %144 = load i8, ptr %137, align 1, !tbaa !31
  %145 = zext i8 %144 to i32
  %146 = add nuw nsw i32 %143, %141
  %147 = sub nsw i32 %146, %145
  %148 = sub nsw i32 %147, %141
  %149 = tail call i32 @llvm.abs.i32(i32 %148, i1 true)
  %150 = sub nsw i32 %147, %143
  %151 = tail call i32 @llvm.abs.i32(i32 %150, i1 true)
  %152 = sub nsw i32 %147, %145
  %153 = tail call i32 @llvm.abs.i32(i32 %152, i1 true)
  %154 = icmp ugt i32 %149, %151
  %155 = icmp ugt i32 %149, %153
  %156 = select i1 %154, i1 true, i1 %155
  %157 = icmp ugt i32 %151, %153
  %158 = select i1 %157, i8 %144, i8 %142
  %159 = select i1 %156, i8 %158, i8 %140
  %160 = sub i8 %139, %159
  store i8 %160, ptr %134, align 1, !tbaa !31
  %161 = getelementptr inbounds i8, ptr %134, i64 1
  %162 = getelementptr inbounds i8, ptr %138, i64 1
  %163 = getelementptr inbounds i8, ptr %136, i64 1
  %164 = getelementptr inbounds i8, ptr %137, i64 1
  %165 = getelementptr inbounds i8, ptr %133, i64 1
  %166 = add i32 %135, -1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %204, label %132, !llvm.loop !43

168:                                              ; preds = %21, %168
  %169 = phi ptr [ %201, %168 ], [ %12, %21 ]
  %170 = phi ptr [ %197, %168 ], [ %10, %21 ]
  %171 = phi i32 [ %202, %168 ], [ %6, %21 ]
  %172 = phi ptr [ %199, %168 ], [ %5, %21 ]
  %173 = phi ptr [ %200, %168 ], [ %4, %21 ]
  %174 = phi ptr [ %198, %168 ], [ %2, %21 ]
  %175 = load i8, ptr %169, align 1, !tbaa !31
  %176 = load i8, ptr %174, align 1, !tbaa !31
  %177 = zext i8 %176 to i32
  %178 = load i8, ptr %172, align 1, !tbaa !31
  %179 = zext i8 %178 to i32
  %180 = load i8, ptr %173, align 1, !tbaa !31
  %181 = zext i8 %180 to i32
  %182 = add nuw nsw i32 %179, %177
  %183 = sub nsw i32 %182, %181
  %184 = sub nsw i32 %183, %177
  %185 = tail call i32 @llvm.abs.i32(i32 %184, i1 true)
  %186 = sub nsw i32 %183, %179
  %187 = tail call i32 @llvm.abs.i32(i32 %186, i1 true)
  %188 = sub nsw i32 %183, %181
  %189 = tail call i32 @llvm.abs.i32(i32 %188, i1 true)
  %190 = icmp ugt i32 %185, %187
  %191 = icmp ugt i32 %185, %189
  %192 = select i1 %190, i1 true, i1 %191
  %193 = icmp ugt i32 %187, %189
  %194 = select i1 %193, i8 %180, i8 %178
  %195 = select i1 %192, i8 %194, i8 %176
  %196 = add i8 %195, %175
  store i8 %196, ptr %170, align 1, !tbaa !31
  %197 = getelementptr inbounds i8, ptr %170, i64 1
  %198 = getelementptr inbounds i8, ptr %174, i64 1
  %199 = getelementptr inbounds i8, ptr %172, i64 1
  %200 = getelementptr inbounds i8, ptr %173, i64 1
  %201 = getelementptr inbounds i8, ptr %169, i64 1
  %202 = add i32 %171, -1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %168, !llvm.loop !44

204:                                              ; preds = %168, %132, %111, %90, %77, %64, %51, %38, %21, %23, %25, %27, %29, %31, %33, %35, %7, %37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 24}
!6 = !{!"stream_PNGP_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !8, i64 44, !10, i64 48, !7, i64 56, !10, i64 64, !11, i64 72, !8, i64 80}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !10, i64 28}
!13 = !{!6, !10, i64 32}
!14 = !{!6, !10, i64 36}
!15 = !{!6, !10, i64 40}
!16 = !{!6, !8, i64 44}
!17 = !{!6, !10, i64 48}
!18 = !{!19, !7, i64 8}
!19 = !{!"stream_state_s", !7, i64 0, !7, i64 8, !7, i64 16}
!20 = !{!21, !7, i64 0}
!21 = !{!"gs_memory_s", !22, i64 0}
!22 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!23 = !{!6, !7, i64 56}
!24 = !{!6, !11, i64 72}
!25 = !{!26, !7, i64 0}
!26 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!27 = !{!26, !7, i64 8}
!28 = !{!29, !7, i64 8}
!29 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!30 = !{!29, !7, i64 16}
!31 = !{!8, !8, i64 0}
!32 = !{!6, !10, i64 64}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !34}
!36 = !{!7, !7, i64 0}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !34}
!40 = distinct !{!40, !34}
!41 = distinct !{!41, !34}
!42 = distinct !{!42, !34}
!43 = distinct !{!43, !34}
!44 = distinct !{!44, !34}
