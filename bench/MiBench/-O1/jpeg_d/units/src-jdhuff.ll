; ModuleID = 'src/jdhuff.c'
source_filename = "src/jdhuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], ptr, [256 x i32], [256 x i8] }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.bitread_working_state = type { ptr, i64, i32, i64, i32, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.huff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x ptr], [4 x ptr] }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { [4 x i32] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }

@extend_test = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 16
@extend_offset = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_make_d_derived_tbl(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [257 x i8], align 16
  %5 = alloca [257 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %5) #4
  %6 = load ptr, ptr %2, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 1, i64 noundef 1640) #4
  store ptr %12, ptr %2, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %8, %3
  %14 = load ptr, ptr %2, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.d_derived_tbl, ptr %14, i64 0, i32 3
  store ptr %1, ptr %15, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %13, %29
  %17 = phi i64 [ 1, %13 ], [ %31, %29 ]
  %18 = phi i32 [ 0, %13 ], [ %30, %29 ]
  %19 = getelementptr inbounds [17 x i8], ptr %1, i64 0, i64 %17
  %20 = load i8, ptr %19, align 1, !tbaa !19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = trunc i64 %17 to i8
  %24 = sext i32 %18 to i64
  %25 = getelementptr i8, ptr %4, i64 %24
  %26 = zext i8 %20 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %25, i8 %23, i64 %26, i1 false), !tbaa !19
  %27 = zext i8 %20 to i32
  %28 = add i32 %18, %27
  br label %29

29:                                               ; preds = %22, %16
  %30 = phi i32 [ %18, %16 ], [ %28, %22 ]
  %31 = add nuw nsw i64 %17, 1
  %32 = icmp eq i64 %31, 17
  br i1 %32, label %33, label %16, !llvm.loop !20

33:                                               ; preds = %29
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !19
  %36 = load i8, ptr %4, align 16, !tbaa !19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %33
  %39 = sext i8 %36 to i32
  br label %40

40:                                               ; preds = %38, %61
  %41 = phi i32 [ %64, %61 ], [ 0, %38 ]
  %42 = phi i32 [ %65, %61 ], [ %39, %38 ]
  %43 = phi i32 [ %62, %61 ], [ 0, %38 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !19
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %40, %49
  %50 = phi i64 [ %52, %49 ], [ %44, %40 ]
  %51 = phi i32 [ %54, %49 ], [ %41, %40 ]
  %52 = add i64 %50, 1
  %53 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %50
  store i32 %51, ptr %53, align 4, !tbaa !22
  %54 = add i32 %51, 1
  %55 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !19
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %42, %57
  br i1 %58, label %49, label %59, !llvm.loop !23

59:                                               ; preds = %49
  %60 = trunc i64 %52 to i32
  br label %61

61:                                               ; preds = %59, %40
  %62 = phi i32 [ %43, %40 ], [ %60, %59 ]
  %63 = phi i32 [ %41, %40 ], [ %54, %59 ]
  %64 = shl i32 %63, 1
  %65 = add nsw i32 %42, 1
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !19
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %40, !llvm.loop !24

70:                                               ; preds = %61, %33
  br label %71

71:                                               ; preds = %70, %92
  %72 = phi i64 [ %96, %92 ], [ 1, %70 ]
  %73 = phi i32 [ %94, %92 ], [ 0, %70 ]
  %74 = getelementptr inbounds [17 x i8], ptr %1, i64 0, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !19
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.d_derived_tbl, ptr %14, i64 0, i32 2, i64 %72
  store i32 %73, ptr %78, align 4, !tbaa !22
  %79 = sext i32 %73 to i64
  %80 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !22
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [17 x i64], ptr %14, i64 0, i64 %72
  store i64 %82, ptr %83, align 8, !tbaa !25
  %84 = load i8, ptr %74, align 1, !tbaa !19
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %73, %85
  %87 = add nsw i32 %86, -1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !22
  %91 = zext i32 %90 to i64
  br label %92

92:                                               ; preds = %71, %77
  %93 = phi i64 [ %91, %77 ], [ -1, %71 ]
  %94 = phi i32 [ %86, %77 ], [ %73, %71 ]
  %95 = getelementptr inbounds %struct.d_derived_tbl, ptr %14, i64 0, i32 1, i64 %72
  store i64 %93, ptr %95, align 8, !tbaa !25
  %96 = add nuw nsw i64 %72, 1
  %97 = icmp eq i64 %96, 17
  br i1 %97, label %98, label %71, !llvm.loop !26

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.d_derived_tbl, ptr %14, i64 0, i32 1, i64 17
  store i64 1048575, ptr %99, align 8, !tbaa !25
  %100 = getelementptr inbounds %struct.d_derived_tbl, ptr %14, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %100, i8 0, i64 1024, i1 false)
  br label %101

101:                                              ; preds = %98, %139
  %102 = phi i64 [ 1, %98 ], [ %141, %139 ]
  %103 = phi i32 [ 0, %98 ], [ %140, %139 ]
  %104 = getelementptr inbounds [17 x i8], ptr %1, i64 0, i64 %102
  %105 = load i8, ptr %104, align 1, !tbaa !19
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %139, label %107

107:                                              ; preds = %101
  %108 = sub nuw nsw i64 8, %102
  %109 = trunc i64 %108 to i32
  %110 = shl nuw i32 1, %109
  %111 = sext i32 %103 to i64
  %112 = trunc i64 %108 to i32
  %113 = trunc i64 %102 to i32
  br label %114

114:                                              ; preds = %107, %131
  %115 = phi i64 [ %111, %107 ], [ %133, %131 ]
  %116 = phi i32 [ 1, %107 ], [ %132, %131 ]
  %117 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %115
  %118 = load i32, ptr %117, align 4, !tbaa !22
  %119 = shl i32 %118, %112
  %120 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 1, i64 %115
  %121 = sext i32 %119 to i64
  br label %122

122:                                              ; preds = %114, %122
  %123 = phi i64 [ %121, %114 ], [ %128, %122 ]
  %124 = phi i32 [ %110, %114 ], [ %129, %122 ]
  %125 = getelementptr inbounds %struct.d_derived_tbl, ptr %14, i64 0, i32 4, i64 %123
  store i32 %113, ptr %125, align 4, !tbaa !22
  %126 = load i8, ptr %120, align 1, !tbaa !19
  %127 = getelementptr inbounds %struct.d_derived_tbl, ptr %14, i64 0, i32 5, i64 %123
  store i8 %126, ptr %127, align 1, !tbaa !19
  %128 = add nsw i64 %123, 1
  %129 = add nsw i32 %124, -1
  %130 = icmp sgt i32 %124, 1
  br i1 %130, label %122, label %131, !llvm.loop !27

131:                                              ; preds = %122
  %132 = add nuw nsw i32 %116, 1
  %133 = add nsw i64 %115, 1
  %134 = load i8, ptr %104, align 1, !tbaa !19
  %135 = zext i8 %134 to i32
  %136 = icmp ult i32 %116, %135
  br i1 %136, label %114, label %137, !llvm.loop !28

137:                                              ; preds = %131
  %138 = trunc i64 %133 to i32
  br label %139

139:                                              ; preds = %137, %101
  %140 = phi i32 [ %103, %101 ], [ %138, %137 ]
  %141 = add nuw nsw i64 %102, 1
  %142 = icmp eq i64 %141, 9
  br i1 %142, label %143, label %101, !llvm.loop !29

143:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %4) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @jpeg_fill_bit_buffer(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !32
  %8 = icmp slt i32 %2, 25
  br i1 %8, label %9, label %97

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 6
  %14 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 5
  br label %15

15:                                               ; preds = %9, %89
  %16 = phi i64 [ %7, %9 ], [ %91, %89 ]
  %17 = phi ptr [ %5, %9 ], [ %90, %89 ]
  %18 = phi i32 [ %2, %9 ], [ %95, %89 ]
  %19 = phi i64 [ %1, %9 ], [ %94, %89 ]
  %20 = load i32, ptr %10, align 8, !tbaa !33
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %15
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = load ptr, ptr %11, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = tail call i32 %29(ptr noundef %25) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %104, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %11, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %35, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !39
  br label %39

39:                                               ; preds = %32, %22
  %40 = phi ptr [ %36, %32 ], [ %17, %22 ]
  %41 = phi i64 [ %38, %32 ], [ %16, %22 ]
  %42 = add i64 %41, -1
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = load i8, ptr %40, align 1, !tbaa !19
  %45 = zext i8 %44 to i64
  %46 = icmp eq i8 %44, -1
  br i1 %46, label %47, label %89

47:                                               ; preds = %39, %66
  %48 = phi ptr [ %70, %66 ], [ %43, %39 ]
  %49 = phi i64 [ %69, %66 ], [ %42, %39 ]
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load ptr, ptr %12, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !36
  %57 = tail call i32 %56(ptr noundef %52) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %104, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %12, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %62, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !39
  br label %66

66:                                               ; preds = %59, %47
  %67 = phi ptr [ %63, %59 ], [ %48, %47 ]
  %68 = phi i64 [ %65, %59 ], [ %49, %47 ]
  %69 = add i64 %68, -1
  %70 = getelementptr inbounds i8, ptr %67, i64 1
  %71 = load i8, ptr %67, align 1, !tbaa !19
  switch i8 %71, label %72 [
    i8 -1, label %47
    i8 0, label %89
  ]

72:                                               ; preds = %66
  %73 = zext i8 %71 to i32
  store i32 %73, ptr %10, align 8, !tbaa !33
  br label %74

74:                                               ; preds = %15, %72
  %75 = phi ptr [ %17, %15 ], [ %70, %72 ]
  %76 = phi i64 [ %16, %15 ], [ %69, %72 ]
  %77 = icmp slt i32 %18, %3
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load ptr, ptr %13, align 8, !tbaa !40
  %80 = load i32, ptr %79, align 4, !tbaa !22
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load ptr, ptr %14, align 8, !tbaa !34
  %84 = load ptr, ptr %83, align 8, !tbaa !41
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 5
  store i32 113, ptr %85, align 8, !tbaa !42
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !44
  tail call void %87(ptr noundef nonnull %83, i32 noundef -1) #4
  %88 = load ptr, ptr %13, align 8, !tbaa !40
  store i32 1, ptr %88, align 4, !tbaa !22
  br label %89

89:                                               ; preds = %66, %78, %82, %39
  %90 = phi ptr [ %43, %39 ], [ %75, %82 ], [ %75, %78 ], [ %70, %66 ]
  %91 = phi i64 [ %42, %39 ], [ %76, %82 ], [ %76, %78 ], [ %69, %66 ]
  %92 = phi i64 [ %45, %39 ], [ 0, %82 ], [ 0, %78 ], [ 255, %66 ]
  %93 = shl i64 %19, 8
  %94 = or disjoint i64 %92, %93
  %95 = add nsw i32 %18, 8
  %96 = icmp slt i32 %18, 17
  br i1 %96, label %15, label %97, !llvm.loop !45

97:                                               ; preds = %89, %74, %4
  %98 = phi i64 [ %1, %4 ], [ %94, %89 ], [ %19, %74 ]
  %99 = phi i32 [ %2, %4 ], [ %95, %89 ], [ %18, %74 ]
  %100 = phi ptr [ %5, %4 ], [ %90, %89 ], [ %75, %74 ]
  %101 = phi i64 [ %7, %4 ], [ %91, %89 ], [ %76, %74 ]
  store ptr %100, ptr %0, align 8, !tbaa !30
  store i64 %101, ptr %6, align 8, !tbaa !32
  %102 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 3
  store i64 %98, ptr %102, align 8, !tbaa !46
  %103 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 4
  store i32 %99, ptr %103, align 8, !tbaa !47
  br label %104

104:                                              ; preds = %24, %51, %97
  %105 = phi i32 [ 1, %97 ], [ 0, %51 ], [ 0, %24 ]
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_huff_decode(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp slt i32 %2, %4
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = tail call i32 @jpeg_fill_bit_buffer(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %4), !range !48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi i32 [ %14, %10 ], [ %2, %5 ]
  %17 = phi i64 [ %12, %10 ], [ %1, %5 ]
  %18 = sub nsw i32 %16, %4
  %19 = zext nneg i32 %18 to i64
  %20 = ashr i64 %17, %19
  %21 = trunc i64 %20 to i32
  %22 = shl nsw i32 -1, %4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = zext nneg i32 %24 to i64
  %26 = sext i32 %4 to i64
  %27 = getelementptr inbounds %struct.d_derived_tbl, ptr %3, i64 0, i32 1, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !25
  %29 = icmp slt i64 %28, %25
  br i1 %29, label %30, label %61

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 3
  %32 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 4
  %33 = sext i32 %4 to i64
  br label %34

34:                                               ; preds = %30, %47
  %35 = phi i64 [ %33, %30 ], [ %55, %47 ]
  %36 = phi i64 [ %25, %30 ], [ %54, %47 ]
  %37 = phi i64 [ %17, %30 ], [ %49, %47 ]
  %38 = phi i32 [ %18, %30 ], [ %50, %47 ]
  %39 = shl i64 %36, 1
  %40 = icmp slt i32 %38, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = tail call i32 @jpeg_fill_bit_buffer(ptr noundef %0, i64 noundef %37, i32 noundef %38, i32 noundef 1), !range !48
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44

44:                                               ; preds = %41
  %45 = load i64, ptr %31, align 8, !tbaa !46
  %46 = load i32, ptr %32, align 8, !tbaa !47
  br label %47

47:                                               ; preds = %44, %34
  %48 = phi i32 [ %46, %44 ], [ %38, %34 ]
  %49 = phi i64 [ %45, %44 ], [ %37, %34 ]
  %50 = add nsw i32 %48, -1
  %51 = zext nneg i32 %50 to i64
  %52 = lshr i64 %49, %51
  %53 = and i64 %52, 1
  %54 = or disjoint i64 %53, %39
  %55 = add i64 %35, 1
  %56 = getelementptr inbounds %struct.d_derived_tbl, ptr %3, i64 0, i32 1, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !25
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %34, label %59, !llvm.loop !49

59:                                               ; preds = %47
  %60 = trunc i64 %55 to i32
  br label %61

61:                                               ; preds = %59, %15
  %62 = phi i32 [ %18, %15 ], [ %50, %59 ]
  %63 = phi i64 [ %17, %15 ], [ %49, %59 ]
  %64 = phi i32 [ %4, %15 ], [ %60, %59 ]
  %65 = phi i64 [ %25, %15 ], [ %54, %59 ]
  %66 = phi i64 [ %26, %15 ], [ %55, %59 ]
  %67 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 3
  store i64 %63, ptr %67, align 8, !tbaa !46
  %68 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 4
  store i32 %62, ptr %68, align 8, !tbaa !47
  %69 = icmp sgt i32 %64, 16
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = load ptr, ptr %72, align 8, !tbaa !41
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 114, ptr %74, align 8, !tbaa !42
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  tail call void %76(ptr noundef nonnull %72, i32 noundef -1) #4
  br label %91

77:                                               ; preds = %61
  %78 = getelementptr inbounds %struct.d_derived_tbl, ptr %3, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !17
  %80 = getelementptr inbounds %struct.d_derived_tbl, ptr %3, i64 0, i32 2, i64 %66
  %81 = load i32, ptr %80, align 4, !tbaa !22
  %82 = getelementptr inbounds [17 x i64], ptr %3, i64 0, i64 %66
  %83 = load i64, ptr %82, align 8, !tbaa !25
  %84 = sub nsw i64 %65, %83
  %85 = trunc i64 %84 to i32
  %86 = add nsw i32 %81, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.JHUFF_TBL, ptr %79, i64 0, i32 1, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !19
  %90 = zext i8 %89 to i32
  br label %91

91:                                               ; preds = %41, %7, %77, %70
  %92 = phi i32 [ 0, %70 ], [ %90, %77 ], [ -1, %7 ], [ -1, %41 ]
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define dso_local void @jinit_huff_decoder(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 120) #4
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  store ptr %5, ptr %6, align 8, !tbaa !50
  store ptr @start_pass_huff_decoder, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %5, i64 0, i32 1
  store ptr @decode_mcu, ptr %7, align 8, !tbaa !56
  %8 = getelementptr i8, ptr %5, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !tbaa !5
  br label %9

9:                                                ; preds = %1, %9
  %10 = phi i64 [ 0, %1 ], [ %12, %9 ]
  %11 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %5, i64 0, i32 5, i64 %10
  store ptr null, ptr %11, align 8, !tbaa !5
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %9, !llvm.loop !57

14:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_huff_decoder(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 68
  %5 = load i32, ptr %4, align 4, !tbaa !58
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 69
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 63
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 70
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 71
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %11, %7, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 118, ptr %21, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  tail call void %23(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %26 = load i32, ptr %25, align 8, !tbaa !62
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %3, i64 0, i32 2
  br label %30

30:                                               ; preds = %28, %63
  %31 = phi i64 [ 0, %28 ], [ %73, %63 ]
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !63
  %36 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !65
  %38 = icmp ugt i32 %35, 3
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = zext nneg i32 %35 to i64
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 40, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39, %30
  %45 = load ptr, ptr %0, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 49, ptr %46, align 8, !tbaa !42
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6
  store i32 %35, ptr %47, align 4, !tbaa !19
  %48 = load ptr, ptr %0, align 8, !tbaa !41
  %49 = load ptr, ptr %48, align 8, !tbaa !66
  tail call void %49(ptr noundef nonnull %0) #4
  br label %50

50:                                               ; preds = %44, %39
  %51 = icmp ugt i32 %37, 3
  br i1 %51, label %57, label %52

52:                                               ; preds = %50
  %53 = zext nneg i32 %37 to i64
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 41, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52, %50
  %58 = load ptr, ptr %0, align 8, !tbaa !41
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 49, ptr %59, align 8, !tbaa !42
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 6
  store i32 %37, ptr %60, align 4, !tbaa !19
  %61 = load ptr, ptr %0, align 8, !tbaa !41
  %62 = load ptr, ptr %61, align 8, !tbaa !66
  tail call void %62(ptr noundef nonnull %0) #4
  br label %63

63:                                               ; preds = %57, %52
  %64 = sext i32 %35 to i64
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 40, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %3, i64 0, i32 4, i64 %64
  tail call void @jpeg_make_d_derived_tbl(ptr noundef %0, ptr noundef %66, ptr noundef nonnull %67)
  %68 = sext i32 %37 to i64
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 41, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %3, i64 0, i32 5, i64 %68
  tail call void @jpeg_make_d_derived_tbl(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %71)
  %72 = getelementptr inbounds [4 x i32], ptr %29, i64 0, i64 %31
  store i32 0, ptr %72, align 4, !tbaa !22
  %73 = add nuw nsw i64 %31, 1
  %74 = load i32, ptr %25, align 8, !tbaa !62
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %30, label %77, !llvm.loop !67

77:                                               ; preds = %63, %24
  %78 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %3, i64 0, i32 1
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  %80 = load i32, ptr %79, align 8, !tbaa !68
  %81 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %3, i64 0, i32 3
  store i32 %80, ptr %81, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_mcu(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = alloca %struct.savable_state, align 4
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !69
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !70
  %17 = sdiv i32 %16, 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !72
  %22 = add i32 %21, %17
  store i32 %22, ptr %20, align 4, !tbaa !72
  store i32 0, ptr %15, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = tail call i32 %24(ptr noundef %0) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %872, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %29 = load i32, ptr %28, align 8, !tbaa !62
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 2
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %36, %33 ]
  %35 = getelementptr inbounds [4 x i32], ptr %32, i64 0, i64 %34
  store i32 0, ptr %35, align 4, !tbaa !22
  %36 = add nuw nsw i64 %34, 1
  %37 = load i32, ptr %28, align 8, !tbaa !62
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %33, label %40, !llvm.loop !75

40:                                               ; preds = %33, %27
  %41 = load i32, ptr %7, align 8, !tbaa !68
  store i32 %41, ptr %11, align 8, !tbaa !69
  %42 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 1, i32 2
  store i32 0, ptr %42, align 4, !tbaa !76
  br i1 %26, label %872, label %43

43:                                               ; preds = %10, %40, %2
  %44 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 5
  store ptr %0, ptr %44, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = load ptr, ptr %46, align 8, !tbaa !38
  store ptr %47, ptr %3, align 8, !tbaa !30
  %48 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %46, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !39
  %50 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !32
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %52 = load i32, ptr %51, align 4, !tbaa !77
  %53 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 2
  store i32 %52, ptr %53, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !78
  %56 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 1, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !70
  %58 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 1, i32 2
  %59 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 6
  store ptr %58, ptr %59, align 8, !tbaa !40
  %60 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false), !tbaa.struct !79
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 66
  %62 = load i32, ptr %61, align 8, !tbaa !80
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %861

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %66 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %67 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %68 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %69 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %70 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %71 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %72 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %73 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %74 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %75 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %76 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %77 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %78 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %79 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %80 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %81 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %82 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  br label %83

83:                                               ; preds = %64, %853
  %84 = phi i64 [ 0, %64 ], [ %857, %853 ]
  %85 = phi i32 [ undef, %64 ], [ %856, %853 ]
  %86 = phi i64 [ %55, %64 ], [ %855, %853 ]
  %87 = phi i32 [ %57, %64 ], [ %854, %853 ]
  %88 = getelementptr inbounds ptr, ptr %1, i64 %84
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 67, i64 %84
  %91 = load i32, ptr %90, align 4, !tbaa !22
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.jpeg_component_info, ptr %94, i64 0, i32 5
  %96 = load i32, ptr %95, align 4, !tbaa !63
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 4, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.jpeg_component_info, ptr %94, i64 0, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !65
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 5, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = icmp slt i32 %87, 8
  br i1 %105, label %106, label %197

106:                                              ; preds = %83
  %107 = load ptr, ptr %3, align 8, !tbaa !30
  %108 = load i64, ptr %50, align 8, !tbaa !32
  br label %109

109:                                              ; preds = %183, %106
  %110 = phi i64 [ %108, %106 ], [ %185, %183 ]
  %111 = phi ptr [ %107, %106 ], [ %184, %183 ]
  %112 = phi i32 [ %87, %106 ], [ %189, %183 ]
  %113 = phi i64 [ %86, %106 ], [ %188, %183 ]
  %114 = load i32, ptr %53, align 8, !tbaa !33
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %168

116:                                              ; preds = %109
  %117 = icmp eq i64 %110, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %116
  %119 = load ptr, ptr %44, align 8, !tbaa !34
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %119, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %121, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !36
  %124 = tail call i32 %123(ptr noundef %119) #4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %221, label %126

126:                                              ; preds = %118
  %127 = load ptr, ptr %44, align 8, !tbaa !34
  %128 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %127, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !35
  %130 = load ptr, ptr %129, align 8, !tbaa !38
  %131 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %129, i64 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !39
  br label %133

133:                                              ; preds = %126, %116
  %134 = phi ptr [ %130, %126 ], [ %111, %116 ]
  %135 = phi i64 [ %132, %126 ], [ %110, %116 ]
  %136 = add i64 %135, -1
  %137 = getelementptr inbounds i8, ptr %134, i64 1
  %138 = load i8, ptr %134, align 1, !tbaa !19
  %139 = zext i8 %138 to i64
  %140 = icmp eq i8 %138, -1
  br i1 %140, label %141, label %183

141:                                              ; preds = %133, %160
  %142 = phi ptr [ %164, %160 ], [ %137, %133 ]
  %143 = phi i64 [ %163, %160 ], [ %136, %133 ]
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load ptr, ptr %44, align 8, !tbaa !34
  %147 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %146, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !35
  %149 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !36
  %151 = tail call i32 %150(ptr noundef %146) #4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %221, label %153

153:                                              ; preds = %145
  %154 = load ptr, ptr %44, align 8, !tbaa !34
  %155 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %154, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !35
  %157 = load ptr, ptr %156, align 8, !tbaa !38
  %158 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %156, i64 0, i32 1
  %159 = load i64, ptr %158, align 8, !tbaa !39
  br label %160

160:                                              ; preds = %153, %141
  %161 = phi ptr [ %157, %153 ], [ %142, %141 ]
  %162 = phi i64 [ %159, %153 ], [ %143, %141 ]
  %163 = add i64 %162, -1
  %164 = getelementptr inbounds i8, ptr %161, i64 1
  %165 = load i8, ptr %161, align 1, !tbaa !19
  switch i8 %165, label %166 [
    i8 -1, label %141
    i8 0, label %183
  ]

166:                                              ; preds = %160
  %167 = zext i8 %165 to i32
  store i32 %167, ptr %53, align 8, !tbaa !33
  br label %168

168:                                              ; preds = %166, %109
  %169 = phi ptr [ %111, %109 ], [ %164, %166 ]
  %170 = phi i64 [ %110, %109 ], [ %163, %166 ]
  %171 = icmp slt i32 %112, 0
  br i1 %171, label %172, label %191

172:                                              ; preds = %168
  %173 = load ptr, ptr %59, align 8, !tbaa !40
  %174 = load i32, ptr %173, align 4, !tbaa !22
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load ptr, ptr %44, align 8, !tbaa !34
  %178 = load ptr, ptr %177, align 8, !tbaa !41
  %179 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %178, i64 0, i32 5
  store i32 113, ptr %179, align 8, !tbaa !42
  %180 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %178, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !44
  tail call void %181(ptr noundef nonnull %177, i32 noundef -1) #4
  %182 = load ptr, ptr %59, align 8, !tbaa !40
  store i32 1, ptr %182, align 4, !tbaa !22
  br label %183

183:                                              ; preds = %160, %176, %172, %133
  %184 = phi ptr [ %137, %133 ], [ %169, %176 ], [ %169, %172 ], [ %164, %160 ]
  %185 = phi i64 [ %136, %133 ], [ %170, %176 ], [ %170, %172 ], [ %163, %160 ]
  %186 = phi i64 [ %139, %133 ], [ 0, %176 ], [ 0, %172 ], [ 255, %160 ]
  %187 = shl i64 %113, 8
  %188 = or disjoint i64 %186, %187
  %189 = add nsw i32 %112, 8
  %190 = icmp slt i32 %112, 17
  br i1 %190, label %109, label %191, !llvm.loop !45

191:                                              ; preds = %183, %168
  %192 = phi i64 [ %188, %183 ], [ %113, %168 ]
  %193 = phi i32 [ %189, %183 ], [ %112, %168 ]
  %194 = phi ptr [ %184, %183 ], [ %169, %168 ]
  %195 = phi i64 [ %185, %183 ], [ %170, %168 ]
  store ptr %194, ptr %3, align 8, !tbaa !30
  store i64 %195, ptr %50, align 8, !tbaa !32
  store i64 %192, ptr %65, align 8, !tbaa !46
  store i32 %193, ptr %66, align 8, !tbaa !47
  %196 = icmp slt i32 %193, 8
  br i1 %196, label %212, label %197

197:                                              ; preds = %191, %83
  %198 = phi i32 [ %193, %191 ], [ %87, %83 ]
  %199 = phi i64 [ %192, %191 ], [ %86, %83 ]
  %200 = add nsw i32 %198, -8
  %201 = zext nneg i32 %200 to i64
  %202 = ashr i64 %199, %201
  %203 = and i64 %202, 255
  %204 = getelementptr inbounds %struct.d_derived_tbl, ptr %99, i64 0, i32 4, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !22
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %197
  %208 = sub nsw i32 %198, %205
  %209 = getelementptr inbounds %struct.d_derived_tbl, ptr %99, i64 0, i32 5, i64 %203
  %210 = load i8, ptr %209, align 1, !tbaa !19
  %211 = zext i8 %210 to i32
  br label %221

212:                                              ; preds = %197, %191
  %213 = phi i32 [ %193, %191 ], [ %198, %197 ]
  %214 = phi i64 [ %192, %191 ], [ %199, %197 ]
  %215 = phi i32 [ 1, %191 ], [ 9, %197 ]
  %216 = call i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %214, i32 noundef %213, ptr noundef %99, i32 noundef %215), !range !81
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %212
  %219 = load i64, ptr %67, align 8, !tbaa !46
  %220 = load i32, ptr %68, align 8, !tbaa !47
  br label %221

221:                                              ; preds = %118, %145, %207, %218, %212
  %222 = phi i32 [ %213, %212 ], [ %220, %218 ], [ %208, %207 ], [ %87, %145 ], [ %87, %118 ]
  %223 = phi i64 [ %214, %212 ], [ %219, %218 ], [ %199, %207 ], [ %86, %145 ], [ %86, %118 ]
  %224 = phi i1 [ false, %212 ], [ true, %218 ], [ true, %207 ], [ false, %145 ], [ false, %118 ]
  %225 = phi i32 [ -1, %212 ], [ %216, %218 ], [ %211, %207 ], [ %85, %145 ], [ %85, %118 ]
  br i1 %224, label %226, label %872

226:                                              ; preds = %221
  %227 = icmp eq i32 %225, 0
  br i1 %227, label %339, label %228

228:                                              ; preds = %226
  %229 = icmp slt i32 %222, %225
  br i1 %229, label %230, label %321

230:                                              ; preds = %228
  %231 = load ptr, ptr %3, align 8, !tbaa !30
  %232 = load i64, ptr %50, align 8, !tbaa !32
  %233 = icmp slt i32 %222, 25
  br i1 %233, label %234, label %316

234:                                              ; preds = %230, %308
  %235 = phi i64 [ %310, %308 ], [ %232, %230 ]
  %236 = phi ptr [ %309, %308 ], [ %231, %230 ]
  %237 = phi i32 [ %314, %308 ], [ %222, %230 ]
  %238 = phi i64 [ %313, %308 ], [ %223, %230 ]
  %239 = load i32, ptr %53, align 8, !tbaa !33
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %293

241:                                              ; preds = %234
  %242 = icmp eq i64 %235, 0
  br i1 %242, label %243, label %258

243:                                              ; preds = %241
  %244 = load ptr, ptr %44, align 8, !tbaa !34
  %245 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %244, i64 0, i32 5
  %246 = load ptr, ptr %245, align 8, !tbaa !35
  %247 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %246, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !36
  %249 = tail call i32 %248(ptr noundef %244) #4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %872, label %251

251:                                              ; preds = %243
  %252 = load ptr, ptr %44, align 8, !tbaa !34
  %253 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %252, i64 0, i32 5
  %254 = load ptr, ptr %253, align 8, !tbaa !35
  %255 = load ptr, ptr %254, align 8, !tbaa !38
  %256 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %254, i64 0, i32 1
  %257 = load i64, ptr %256, align 8, !tbaa !39
  br label %258

258:                                              ; preds = %251, %241
  %259 = phi ptr [ %255, %251 ], [ %236, %241 ]
  %260 = phi i64 [ %257, %251 ], [ %235, %241 ]
  %261 = add i64 %260, -1
  %262 = getelementptr inbounds i8, ptr %259, i64 1
  %263 = load i8, ptr %259, align 1, !tbaa !19
  %264 = zext i8 %263 to i64
  %265 = icmp eq i8 %263, -1
  br i1 %265, label %266, label %308

266:                                              ; preds = %258, %285
  %267 = phi ptr [ %289, %285 ], [ %262, %258 ]
  %268 = phi i64 [ %288, %285 ], [ %261, %258 ]
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %266
  %271 = load ptr, ptr %44, align 8, !tbaa !34
  %272 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %271, i64 0, i32 5
  %273 = load ptr, ptr %272, align 8, !tbaa !35
  %274 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %273, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !36
  %276 = tail call i32 %275(ptr noundef %271) #4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %872, label %278

278:                                              ; preds = %270
  %279 = load ptr, ptr %44, align 8, !tbaa !34
  %280 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %279, i64 0, i32 5
  %281 = load ptr, ptr %280, align 8, !tbaa !35
  %282 = load ptr, ptr %281, align 8, !tbaa !38
  %283 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %281, i64 0, i32 1
  %284 = load i64, ptr %283, align 8, !tbaa !39
  br label %285

285:                                              ; preds = %278, %266
  %286 = phi ptr [ %282, %278 ], [ %267, %266 ]
  %287 = phi i64 [ %284, %278 ], [ %268, %266 ]
  %288 = add i64 %287, -1
  %289 = getelementptr inbounds i8, ptr %286, i64 1
  %290 = load i8, ptr %286, align 1, !tbaa !19
  switch i8 %290, label %291 [
    i8 -1, label %266
    i8 0, label %308
  ]

291:                                              ; preds = %285
  %292 = zext i8 %290 to i32
  store i32 %292, ptr %53, align 8, !tbaa !33
  br label %293

293:                                              ; preds = %291, %234
  %294 = phi ptr [ %236, %234 ], [ %289, %291 ]
  %295 = phi i64 [ %235, %234 ], [ %288, %291 ]
  %296 = icmp slt i32 %237, %225
  br i1 %296, label %297, label %316

297:                                              ; preds = %293
  %298 = load ptr, ptr %59, align 8, !tbaa !40
  %299 = load i32, ptr %298, align 4, !tbaa !22
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %297
  %302 = load ptr, ptr %44, align 8, !tbaa !34
  %303 = load ptr, ptr %302, align 8, !tbaa !41
  %304 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %303, i64 0, i32 5
  store i32 113, ptr %304, align 8, !tbaa !42
  %305 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %303, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !44
  tail call void %306(ptr noundef nonnull %302, i32 noundef -1) #4
  %307 = load ptr, ptr %59, align 8, !tbaa !40
  store i32 1, ptr %307, align 4, !tbaa !22
  br label %308

308:                                              ; preds = %285, %301, %297, %258
  %309 = phi ptr [ %262, %258 ], [ %294, %301 ], [ %294, %297 ], [ %289, %285 ]
  %310 = phi i64 [ %261, %258 ], [ %295, %301 ], [ %295, %297 ], [ %288, %285 ]
  %311 = phi i64 [ %264, %258 ], [ 0, %301 ], [ 0, %297 ], [ 255, %285 ]
  %312 = shl i64 %238, 8
  %313 = or disjoint i64 %311, %312
  %314 = add nsw i32 %237, 8
  %315 = icmp slt i32 %237, 17
  br i1 %315, label %234, label %316, !llvm.loop !45

316:                                              ; preds = %308, %293, %230
  %317 = phi i64 [ %223, %230 ], [ %313, %308 ], [ %238, %293 ]
  %318 = phi i32 [ %222, %230 ], [ %314, %308 ], [ %237, %293 ]
  %319 = phi ptr [ %231, %230 ], [ %309, %308 ], [ %294, %293 ]
  %320 = phi i64 [ %232, %230 ], [ %310, %308 ], [ %295, %293 ]
  store ptr %319, ptr %3, align 8, !tbaa !30
  store i64 %320, ptr %50, align 8, !tbaa !32
  store i64 %317, ptr %69, align 8, !tbaa !46
  store i32 %318, ptr %70, align 8, !tbaa !47
  br label %321

321:                                              ; preds = %316, %228
  %322 = phi i32 [ %318, %316 ], [ %222, %228 ]
  %323 = phi i64 [ %317, %316 ], [ %223, %228 ]
  %324 = sub nsw i32 %322, %225
  %325 = zext nneg i32 %324 to i64
  %326 = ashr i64 %323, %325
  %327 = trunc i64 %326 to i32
  %328 = shl nsw i32 -1, %225
  %329 = xor i32 %328, -1
  %330 = and i32 %327, %329
  %331 = sext i32 %225 to i64
  %332 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !22
  %334 = icmp slt i32 %330, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %321
  %336 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %331
  %337 = load i32, ptr %336, align 4, !tbaa !22
  %338 = add nsw i32 %337, %330
  br label %339

339:                                              ; preds = %335, %321, %226
  %340 = phi i32 [ %222, %226 ], [ %324, %321 ], [ %324, %335 ]
  %341 = phi i64 [ %223, %226 ], [ %323, %321 ], [ %323, %335 ]
  %342 = phi i32 [ 0, %226 ], [ %330, %321 ], [ %338, %335 ]
  %343 = getelementptr inbounds %struct.jpeg_component_info, ptr %94, i64 0, i32 12
  %344 = load i32, ptr %343, align 8, !tbaa !82
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %348, %339
  %347 = phi i32 [ %342, %339 ], [ %351, %348 ]
  br label %617

348:                                              ; preds = %339
  %349 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %92
  %350 = load i32, ptr %349, align 4, !tbaa !22
  %351 = add nsw i32 %350, %342
  store i32 %351, ptr %349, align 4, !tbaa !22
  %352 = trunc i32 %351 to i16
  store i16 %352, ptr %89, align 2, !tbaa !83
  %353 = getelementptr inbounds %struct.jpeg_component_info, ptr %94, i64 0, i32 9
  %354 = load i32, ptr %353, align 4, !tbaa !84
  %355 = icmp sgt i32 %354, 1
  br i1 %355, label %356, label %346

356:                                              ; preds = %348, %610
  %357 = phi i32 [ %614, %610 ], [ %351, %348 ]
  %358 = phi i32 [ %615, %610 ], [ 1, %348 ]
  %359 = phi i64 [ %612, %610 ], [ %341, %348 ]
  %360 = phi i32 [ %611, %610 ], [ %340, %348 ]
  %361 = icmp slt i32 %360, 8
  br i1 %361, label %362, label %453

362:                                              ; preds = %356
  %363 = load ptr, ptr %3, align 8, !tbaa !30
  %364 = load i64, ptr %50, align 8, !tbaa !32
  br label %365

365:                                              ; preds = %439, %362
  %366 = phi i64 [ %364, %362 ], [ %441, %439 ]
  %367 = phi ptr [ %363, %362 ], [ %440, %439 ]
  %368 = phi i32 [ %360, %362 ], [ %445, %439 ]
  %369 = phi i64 [ %359, %362 ], [ %444, %439 ]
  %370 = load i32, ptr %53, align 8, !tbaa !33
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %424

372:                                              ; preds = %365
  %373 = icmp eq i64 %366, 0
  br i1 %373, label %374, label %389

374:                                              ; preds = %372
  %375 = load ptr, ptr %44, align 8, !tbaa !34
  %376 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %375, i64 0, i32 5
  %377 = load ptr, ptr %376, align 8, !tbaa !35
  %378 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %377, i64 0, i32 3
  %379 = load ptr, ptr %378, align 8, !tbaa !36
  %380 = tail call i32 %379(ptr noundef %375) #4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %477, label %382

382:                                              ; preds = %374
  %383 = load ptr, ptr %44, align 8, !tbaa !34
  %384 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %383, i64 0, i32 5
  %385 = load ptr, ptr %384, align 8, !tbaa !35
  %386 = load ptr, ptr %385, align 8, !tbaa !38
  %387 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %385, i64 0, i32 1
  %388 = load i64, ptr %387, align 8, !tbaa !39
  br label %389

389:                                              ; preds = %382, %372
  %390 = phi ptr [ %386, %382 ], [ %367, %372 ]
  %391 = phi i64 [ %388, %382 ], [ %366, %372 ]
  %392 = add i64 %391, -1
  %393 = getelementptr inbounds i8, ptr %390, i64 1
  %394 = load i8, ptr %390, align 1, !tbaa !19
  %395 = zext i8 %394 to i64
  %396 = icmp eq i8 %394, -1
  br i1 %396, label %397, label %439

397:                                              ; preds = %389, %416
  %398 = phi ptr [ %420, %416 ], [ %393, %389 ]
  %399 = phi i64 [ %419, %416 ], [ %392, %389 ]
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %416

401:                                              ; preds = %397
  %402 = load ptr, ptr %44, align 8, !tbaa !34
  %403 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %402, i64 0, i32 5
  %404 = load ptr, ptr %403, align 8, !tbaa !35
  %405 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %404, i64 0, i32 3
  %406 = load ptr, ptr %405, align 8, !tbaa !36
  %407 = tail call i32 %406(ptr noundef %402) #4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %477, label %409

409:                                              ; preds = %401
  %410 = load ptr, ptr %44, align 8, !tbaa !34
  %411 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %410, i64 0, i32 5
  %412 = load ptr, ptr %411, align 8, !tbaa !35
  %413 = load ptr, ptr %412, align 8, !tbaa !38
  %414 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %412, i64 0, i32 1
  %415 = load i64, ptr %414, align 8, !tbaa !39
  br label %416

416:                                              ; preds = %409, %397
  %417 = phi ptr [ %413, %409 ], [ %398, %397 ]
  %418 = phi i64 [ %415, %409 ], [ %399, %397 ]
  %419 = add i64 %418, -1
  %420 = getelementptr inbounds i8, ptr %417, i64 1
  %421 = load i8, ptr %417, align 1, !tbaa !19
  switch i8 %421, label %422 [
    i8 -1, label %397
    i8 0, label %439
  ]

422:                                              ; preds = %416
  %423 = zext i8 %421 to i32
  store i32 %423, ptr %53, align 8, !tbaa !33
  br label %424

424:                                              ; preds = %422, %365
  %425 = phi ptr [ %367, %365 ], [ %420, %422 ]
  %426 = phi i64 [ %366, %365 ], [ %419, %422 ]
  %427 = icmp slt i32 %368, 0
  br i1 %427, label %428, label %447

428:                                              ; preds = %424
  %429 = load ptr, ptr %59, align 8, !tbaa !40
  %430 = load i32, ptr %429, align 4, !tbaa !22
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %439

432:                                              ; preds = %428
  %433 = load ptr, ptr %44, align 8, !tbaa !34
  %434 = load ptr, ptr %433, align 8, !tbaa !41
  %435 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %434, i64 0, i32 5
  store i32 113, ptr %435, align 8, !tbaa !42
  %436 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %434, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !44
  tail call void %437(ptr noundef nonnull %433, i32 noundef -1) #4
  %438 = load ptr, ptr %59, align 8, !tbaa !40
  store i32 1, ptr %438, align 4, !tbaa !22
  br label %439

439:                                              ; preds = %416, %432, %428, %389
  %440 = phi ptr [ %393, %389 ], [ %425, %432 ], [ %425, %428 ], [ %420, %416 ]
  %441 = phi i64 [ %392, %389 ], [ %426, %432 ], [ %426, %428 ], [ %419, %416 ]
  %442 = phi i64 [ %395, %389 ], [ 0, %432 ], [ 0, %428 ], [ 255, %416 ]
  %443 = shl i64 %369, 8
  %444 = or disjoint i64 %442, %443
  %445 = add nsw i32 %368, 8
  %446 = icmp slt i32 %368, 17
  br i1 %446, label %365, label %447, !llvm.loop !45

447:                                              ; preds = %439, %424
  %448 = phi i64 [ %444, %439 ], [ %369, %424 ]
  %449 = phi i32 [ %445, %439 ], [ %368, %424 ]
  %450 = phi ptr [ %440, %439 ], [ %425, %424 ]
  %451 = phi i64 [ %441, %439 ], [ %426, %424 ]
  store ptr %450, ptr %3, align 8, !tbaa !30
  store i64 %451, ptr %50, align 8, !tbaa !32
  store i64 %448, ptr %71, align 8, !tbaa !46
  store i32 %449, ptr %72, align 8, !tbaa !47
  %452 = icmp slt i32 %449, 8
  br i1 %452, label %468, label %453

453:                                              ; preds = %447, %356
  %454 = phi i32 [ %449, %447 ], [ %360, %356 ]
  %455 = phi i64 [ %448, %447 ], [ %359, %356 ]
  %456 = add nsw i32 %454, -8
  %457 = zext nneg i32 %456 to i64
  %458 = ashr i64 %455, %457
  %459 = and i64 %458, 255
  %460 = getelementptr inbounds %struct.d_derived_tbl, ptr %104, i64 0, i32 4, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !22
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %453
  %464 = sub nsw i32 %454, %461
  %465 = getelementptr inbounds %struct.d_derived_tbl, ptr %104, i64 0, i32 5, i64 %459
  %466 = load i8, ptr %465, align 1, !tbaa !19
  %467 = zext i8 %466 to i32
  br label %477

468:                                              ; preds = %453, %447
  %469 = phi i32 [ %449, %447 ], [ %454, %453 ]
  %470 = phi i64 [ %448, %447 ], [ %455, %453 ]
  %471 = phi i32 [ 1, %447 ], [ 9, %453 ]
  %472 = call i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %470, i32 noundef %469, ptr noundef %104, i32 noundef %471), !range !81
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %477, label %474

474:                                              ; preds = %468
  %475 = load i64, ptr %73, align 8, !tbaa !46
  %476 = load i32, ptr %74, align 8, !tbaa !47
  br label %477

477:                                              ; preds = %374, %401, %463, %474, %468
  %478 = phi i32 [ %469, %468 ], [ %476, %474 ], [ %464, %463 ], [ %360, %401 ], [ %360, %374 ]
  %479 = phi i64 [ %470, %468 ], [ %475, %474 ], [ %455, %463 ], [ %359, %401 ], [ %359, %374 ]
  %480 = phi i1 [ false, %468 ], [ true, %474 ], [ true, %463 ], [ false, %401 ], [ false, %374 ]
  %481 = phi i32 [ -1, %468 ], [ %472, %474 ], [ %467, %463 ], [ %357, %401 ], [ %357, %374 ]
  br i1 %480, label %482, label %872

482:                                              ; preds = %477
  %483 = ashr i32 %481, 4
  %484 = and i32 %481, 15
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %606, label %486

486:                                              ; preds = %482
  %487 = add nsw i32 %483, %358
  %488 = icmp slt i32 %478, %484
  br i1 %488, label %489, label %580

489:                                              ; preds = %486
  %490 = load ptr, ptr %3, align 8, !tbaa !30
  %491 = load i64, ptr %50, align 8, !tbaa !32
  %492 = icmp slt i32 %478, 25
  br i1 %492, label %493, label %575

493:                                              ; preds = %489, %567
  %494 = phi i64 [ %569, %567 ], [ %491, %489 ]
  %495 = phi ptr [ %568, %567 ], [ %490, %489 ]
  %496 = phi i32 [ %573, %567 ], [ %478, %489 ]
  %497 = phi i64 [ %572, %567 ], [ %479, %489 ]
  %498 = load i32, ptr %53, align 8, !tbaa !33
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %552

500:                                              ; preds = %493
  %501 = icmp eq i64 %494, 0
  br i1 %501, label %502, label %517

502:                                              ; preds = %500
  %503 = load ptr, ptr %44, align 8, !tbaa !34
  %504 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %503, i64 0, i32 5
  %505 = load ptr, ptr %504, align 8, !tbaa !35
  %506 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %505, i64 0, i32 3
  %507 = load ptr, ptr %506, align 8, !tbaa !36
  %508 = tail call i32 %507(ptr noundef %503) #4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %872, label %510

510:                                              ; preds = %502
  %511 = load ptr, ptr %44, align 8, !tbaa !34
  %512 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %511, i64 0, i32 5
  %513 = load ptr, ptr %512, align 8, !tbaa !35
  %514 = load ptr, ptr %513, align 8, !tbaa !38
  %515 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %513, i64 0, i32 1
  %516 = load i64, ptr %515, align 8, !tbaa !39
  br label %517

517:                                              ; preds = %510, %500
  %518 = phi ptr [ %514, %510 ], [ %495, %500 ]
  %519 = phi i64 [ %516, %510 ], [ %494, %500 ]
  %520 = add i64 %519, -1
  %521 = getelementptr inbounds i8, ptr %518, i64 1
  %522 = load i8, ptr %518, align 1, !tbaa !19
  %523 = zext i8 %522 to i64
  %524 = icmp eq i8 %522, -1
  br i1 %524, label %525, label %567

525:                                              ; preds = %517, %544
  %526 = phi ptr [ %548, %544 ], [ %521, %517 ]
  %527 = phi i64 [ %547, %544 ], [ %520, %517 ]
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %544

529:                                              ; preds = %525
  %530 = load ptr, ptr %44, align 8, !tbaa !34
  %531 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %530, i64 0, i32 5
  %532 = load ptr, ptr %531, align 8, !tbaa !35
  %533 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %532, i64 0, i32 3
  %534 = load ptr, ptr %533, align 8, !tbaa !36
  %535 = tail call i32 %534(ptr noundef %530) #4
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %872, label %537

537:                                              ; preds = %529
  %538 = load ptr, ptr %44, align 8, !tbaa !34
  %539 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %538, i64 0, i32 5
  %540 = load ptr, ptr %539, align 8, !tbaa !35
  %541 = load ptr, ptr %540, align 8, !tbaa !38
  %542 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %540, i64 0, i32 1
  %543 = load i64, ptr %542, align 8, !tbaa !39
  br label %544

544:                                              ; preds = %537, %525
  %545 = phi ptr [ %541, %537 ], [ %526, %525 ]
  %546 = phi i64 [ %543, %537 ], [ %527, %525 ]
  %547 = add i64 %546, -1
  %548 = getelementptr inbounds i8, ptr %545, i64 1
  %549 = load i8, ptr %545, align 1, !tbaa !19
  switch i8 %549, label %550 [
    i8 -1, label %525
    i8 0, label %567
  ]

550:                                              ; preds = %544
  %551 = zext i8 %549 to i32
  store i32 %551, ptr %53, align 8, !tbaa !33
  br label %552

552:                                              ; preds = %550, %493
  %553 = phi ptr [ %495, %493 ], [ %548, %550 ]
  %554 = phi i64 [ %494, %493 ], [ %547, %550 ]
  %555 = icmp slt i32 %496, %484
  br i1 %555, label %556, label %575

556:                                              ; preds = %552
  %557 = load ptr, ptr %59, align 8, !tbaa !40
  %558 = load i32, ptr %557, align 4, !tbaa !22
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %567

560:                                              ; preds = %556
  %561 = load ptr, ptr %44, align 8, !tbaa !34
  %562 = load ptr, ptr %561, align 8, !tbaa !41
  %563 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %562, i64 0, i32 5
  store i32 113, ptr %563, align 8, !tbaa !42
  %564 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %562, i64 0, i32 1
  %565 = load ptr, ptr %564, align 8, !tbaa !44
  tail call void %565(ptr noundef nonnull %561, i32 noundef -1) #4
  %566 = load ptr, ptr %59, align 8, !tbaa !40
  store i32 1, ptr %566, align 4, !tbaa !22
  br label %567

567:                                              ; preds = %544, %560, %556, %517
  %568 = phi ptr [ %521, %517 ], [ %553, %560 ], [ %553, %556 ], [ %548, %544 ]
  %569 = phi i64 [ %520, %517 ], [ %554, %560 ], [ %554, %556 ], [ %547, %544 ]
  %570 = phi i64 [ %523, %517 ], [ 0, %560 ], [ 0, %556 ], [ 255, %544 ]
  %571 = shl i64 %497, 8
  %572 = or disjoint i64 %570, %571
  %573 = add nsw i32 %496, 8
  %574 = icmp slt i32 %496, 17
  br i1 %574, label %493, label %575, !llvm.loop !45

575:                                              ; preds = %567, %552, %489
  %576 = phi i64 [ %479, %489 ], [ %572, %567 ], [ %497, %552 ]
  %577 = phi i32 [ %478, %489 ], [ %573, %567 ], [ %496, %552 ]
  %578 = phi ptr [ %490, %489 ], [ %568, %567 ], [ %553, %552 ]
  %579 = phi i64 [ %491, %489 ], [ %569, %567 ], [ %554, %552 ]
  store ptr %578, ptr %3, align 8, !tbaa !30
  store i64 %579, ptr %50, align 8, !tbaa !32
  store i64 %576, ptr %75, align 8, !tbaa !46
  store i32 %577, ptr %76, align 8, !tbaa !47
  br label %580

580:                                              ; preds = %575, %486
  %581 = phi i32 [ %577, %575 ], [ %478, %486 ]
  %582 = phi i64 [ %576, %575 ], [ %479, %486 ]
  %583 = sub nsw i32 %581, %484
  %584 = zext nneg i32 %583 to i64
  %585 = ashr i64 %582, %584
  %586 = trunc i64 %585 to i32
  %587 = shl nsw i32 -1, %484
  %588 = xor i32 %587, -1
  %589 = and i32 %586, %588
  %590 = zext nneg i32 %484 to i64
  %591 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %590
  %592 = load i32, ptr %591, align 4, !tbaa !22
  %593 = icmp slt i32 %589, %592
  br i1 %593, label %594, label %598

594:                                              ; preds = %580
  %595 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %590
  %596 = load i32, ptr %595, align 4, !tbaa !22
  %597 = add nsw i32 %596, %589
  br label %598

598:                                              ; preds = %580, %594
  %599 = phi i32 [ %597, %594 ], [ %589, %580 ]
  %600 = trunc i32 %599 to i16
  %601 = sext i32 %487 to i64
  %602 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %601
  %603 = load i32, ptr %602, align 4, !tbaa !22
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [64 x i16], ptr %89, i64 0, i64 %604
  store i16 %600, ptr %605, align 2, !tbaa !83
  br label %610

606:                                              ; preds = %482
  %607 = icmp eq i32 %483, 15
  br i1 %607, label %608, label %853

608:                                              ; preds = %606
  %609 = add nsw i32 %358, 15
  br label %610

610:                                              ; preds = %598, %608
  %611 = phi i32 [ %583, %598 ], [ %478, %608 ]
  %612 = phi i64 [ %582, %598 ], [ %479, %608 ]
  %613 = phi i32 [ %487, %598 ], [ %609, %608 ]
  %614 = phi i32 [ %599, %598 ], [ 0, %608 ]
  %615 = add nsw i32 %613, 1
  %616 = icmp slt i32 %613, 63
  br i1 %616, label %356, label %853, !llvm.loop !85

617:                                              ; preds = %346, %846
  %618 = phi i32 [ %745, %846 ], [ %347, %346 ]
  %619 = phi i32 [ %851, %846 ], [ 1, %346 ]
  %620 = phi i64 [ %848, %846 ], [ %341, %346 ]
  %621 = phi i32 [ %847, %846 ], [ %340, %346 ]
  %622 = icmp slt i32 %621, 8
  br i1 %622, label %623, label %714

623:                                              ; preds = %617
  %624 = load ptr, ptr %3, align 8, !tbaa !30
  %625 = load i64, ptr %50, align 8, !tbaa !32
  br label %626

626:                                              ; preds = %700, %623
  %627 = phi i64 [ %625, %623 ], [ %702, %700 ]
  %628 = phi ptr [ %624, %623 ], [ %701, %700 ]
  %629 = phi i32 [ %621, %623 ], [ %706, %700 ]
  %630 = phi i64 [ %620, %623 ], [ %705, %700 ]
  %631 = load i32, ptr %53, align 8, !tbaa !33
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %685

633:                                              ; preds = %626
  %634 = icmp eq i64 %627, 0
  br i1 %634, label %635, label %650

635:                                              ; preds = %633
  %636 = load ptr, ptr %44, align 8, !tbaa !34
  %637 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %636, i64 0, i32 5
  %638 = load ptr, ptr %637, align 8, !tbaa !35
  %639 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %638, i64 0, i32 3
  %640 = load ptr, ptr %639, align 8, !tbaa !36
  %641 = tail call i32 %640(ptr noundef %636) #4
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %738, label %643

643:                                              ; preds = %635
  %644 = load ptr, ptr %44, align 8, !tbaa !34
  %645 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %644, i64 0, i32 5
  %646 = load ptr, ptr %645, align 8, !tbaa !35
  %647 = load ptr, ptr %646, align 8, !tbaa !38
  %648 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %646, i64 0, i32 1
  %649 = load i64, ptr %648, align 8, !tbaa !39
  br label %650

650:                                              ; preds = %643, %633
  %651 = phi ptr [ %647, %643 ], [ %628, %633 ]
  %652 = phi i64 [ %649, %643 ], [ %627, %633 ]
  %653 = add i64 %652, -1
  %654 = getelementptr inbounds i8, ptr %651, i64 1
  %655 = load i8, ptr %651, align 1, !tbaa !19
  %656 = zext i8 %655 to i64
  %657 = icmp eq i8 %655, -1
  br i1 %657, label %658, label %700

658:                                              ; preds = %650, %677
  %659 = phi ptr [ %681, %677 ], [ %654, %650 ]
  %660 = phi i64 [ %680, %677 ], [ %653, %650 ]
  %661 = icmp eq i64 %660, 0
  br i1 %661, label %662, label %677

662:                                              ; preds = %658
  %663 = load ptr, ptr %44, align 8, !tbaa !34
  %664 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %663, i64 0, i32 5
  %665 = load ptr, ptr %664, align 8, !tbaa !35
  %666 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %665, i64 0, i32 3
  %667 = load ptr, ptr %666, align 8, !tbaa !36
  %668 = tail call i32 %667(ptr noundef %663) #4
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %738, label %670

670:                                              ; preds = %662
  %671 = load ptr, ptr %44, align 8, !tbaa !34
  %672 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %671, i64 0, i32 5
  %673 = load ptr, ptr %672, align 8, !tbaa !35
  %674 = load ptr, ptr %673, align 8, !tbaa !38
  %675 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %673, i64 0, i32 1
  %676 = load i64, ptr %675, align 8, !tbaa !39
  br label %677

677:                                              ; preds = %670, %658
  %678 = phi ptr [ %674, %670 ], [ %659, %658 ]
  %679 = phi i64 [ %676, %670 ], [ %660, %658 ]
  %680 = add i64 %679, -1
  %681 = getelementptr inbounds i8, ptr %678, i64 1
  %682 = load i8, ptr %678, align 1, !tbaa !19
  switch i8 %682, label %683 [
    i8 -1, label %658
    i8 0, label %700
  ]

683:                                              ; preds = %677
  %684 = zext i8 %682 to i32
  store i32 %684, ptr %53, align 8, !tbaa !33
  br label %685

685:                                              ; preds = %683, %626
  %686 = phi ptr [ %628, %626 ], [ %681, %683 ]
  %687 = phi i64 [ %627, %626 ], [ %680, %683 ]
  %688 = icmp slt i32 %629, 0
  br i1 %688, label %689, label %708

689:                                              ; preds = %685
  %690 = load ptr, ptr %59, align 8, !tbaa !40
  %691 = load i32, ptr %690, align 4, !tbaa !22
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %700

693:                                              ; preds = %689
  %694 = load ptr, ptr %44, align 8, !tbaa !34
  %695 = load ptr, ptr %694, align 8, !tbaa !41
  %696 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %695, i64 0, i32 5
  store i32 113, ptr %696, align 8, !tbaa !42
  %697 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %695, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !44
  tail call void %698(ptr noundef nonnull %694, i32 noundef -1) #4
  %699 = load ptr, ptr %59, align 8, !tbaa !40
  store i32 1, ptr %699, align 4, !tbaa !22
  br label %700

700:                                              ; preds = %677, %693, %689, %650
  %701 = phi ptr [ %654, %650 ], [ %686, %693 ], [ %686, %689 ], [ %681, %677 ]
  %702 = phi i64 [ %653, %650 ], [ %687, %693 ], [ %687, %689 ], [ %680, %677 ]
  %703 = phi i64 [ %656, %650 ], [ 0, %693 ], [ 0, %689 ], [ 255, %677 ]
  %704 = shl i64 %630, 8
  %705 = or disjoint i64 %703, %704
  %706 = add nsw i32 %629, 8
  %707 = icmp slt i32 %629, 17
  br i1 %707, label %626, label %708, !llvm.loop !45

708:                                              ; preds = %700, %685
  %709 = phi i64 [ %705, %700 ], [ %630, %685 ]
  %710 = phi i32 [ %706, %700 ], [ %629, %685 ]
  %711 = phi ptr [ %701, %700 ], [ %686, %685 ]
  %712 = phi i64 [ %702, %700 ], [ %687, %685 ]
  store ptr %711, ptr %3, align 8, !tbaa !30
  store i64 %712, ptr %50, align 8, !tbaa !32
  store i64 %709, ptr %77, align 8, !tbaa !46
  store i32 %710, ptr %78, align 8, !tbaa !47
  %713 = icmp slt i32 %710, 8
  br i1 %713, label %729, label %714

714:                                              ; preds = %708, %617
  %715 = phi i32 [ %710, %708 ], [ %621, %617 ]
  %716 = phi i64 [ %709, %708 ], [ %620, %617 ]
  %717 = add nsw i32 %715, -8
  %718 = zext nneg i32 %717 to i64
  %719 = ashr i64 %716, %718
  %720 = and i64 %719, 255
  %721 = getelementptr inbounds %struct.d_derived_tbl, ptr %104, i64 0, i32 4, i64 %720
  %722 = load i32, ptr %721, align 4, !tbaa !22
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %729, label %724

724:                                              ; preds = %714
  %725 = sub nsw i32 %715, %722
  %726 = getelementptr inbounds %struct.d_derived_tbl, ptr %104, i64 0, i32 5, i64 %720
  %727 = load i8, ptr %726, align 1, !tbaa !19
  %728 = zext i8 %727 to i32
  br label %738

729:                                              ; preds = %714, %708
  %730 = phi i32 [ %710, %708 ], [ %715, %714 ]
  %731 = phi i64 [ %709, %708 ], [ %716, %714 ]
  %732 = phi i32 [ 1, %708 ], [ 9, %714 ]
  %733 = call i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %731, i32 noundef %730, ptr noundef %104, i32 noundef %732), !range !81
  %734 = icmp slt i32 %733, 0
  br i1 %734, label %738, label %735

735:                                              ; preds = %729
  %736 = load i64, ptr %79, align 8, !tbaa !46
  %737 = load i32, ptr %80, align 8, !tbaa !47
  br label %738

738:                                              ; preds = %635, %662, %724, %735, %729
  %739 = phi i32 [ %730, %729 ], [ %737, %735 ], [ %725, %724 ], [ %621, %662 ], [ %621, %635 ]
  %740 = phi i64 [ %731, %729 ], [ %736, %735 ], [ %716, %724 ], [ %620, %662 ], [ %620, %635 ]
  %741 = phi i1 [ false, %729 ], [ true, %735 ], [ true, %724 ], [ false, %662 ], [ false, %635 ]
  %742 = phi i32 [ -1, %729 ], [ %733, %735 ], [ %728, %724 ], [ %618, %662 ], [ %618, %635 ]
  br i1 %741, label %743, label %872

743:                                              ; preds = %738
  %744 = ashr i32 %742, 4
  %745 = and i32 %742, 15
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %844, label %747

747:                                              ; preds = %743
  %748 = icmp slt i32 %739, %745
  br i1 %748, label %749, label %840

749:                                              ; preds = %747
  %750 = load ptr, ptr %3, align 8, !tbaa !30
  %751 = load i64, ptr %50, align 8, !tbaa !32
  %752 = icmp slt i32 %739, 25
  br i1 %752, label %753, label %835

753:                                              ; preds = %749, %827
  %754 = phi i64 [ %829, %827 ], [ %751, %749 ]
  %755 = phi ptr [ %828, %827 ], [ %750, %749 ]
  %756 = phi i32 [ %833, %827 ], [ %739, %749 ]
  %757 = phi i64 [ %832, %827 ], [ %740, %749 ]
  %758 = load i32, ptr %53, align 8, !tbaa !33
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %812

760:                                              ; preds = %753
  %761 = icmp eq i64 %754, 0
  br i1 %761, label %762, label %777

762:                                              ; preds = %760
  %763 = load ptr, ptr %44, align 8, !tbaa !34
  %764 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %763, i64 0, i32 5
  %765 = load ptr, ptr %764, align 8, !tbaa !35
  %766 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %765, i64 0, i32 3
  %767 = load ptr, ptr %766, align 8, !tbaa !36
  %768 = tail call i32 %767(ptr noundef %763) #4
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %872, label %770

770:                                              ; preds = %762
  %771 = load ptr, ptr %44, align 8, !tbaa !34
  %772 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %771, i64 0, i32 5
  %773 = load ptr, ptr %772, align 8, !tbaa !35
  %774 = load ptr, ptr %773, align 8, !tbaa !38
  %775 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %773, i64 0, i32 1
  %776 = load i64, ptr %775, align 8, !tbaa !39
  br label %777

777:                                              ; preds = %770, %760
  %778 = phi ptr [ %774, %770 ], [ %755, %760 ]
  %779 = phi i64 [ %776, %770 ], [ %754, %760 ]
  %780 = add i64 %779, -1
  %781 = getelementptr inbounds i8, ptr %778, i64 1
  %782 = load i8, ptr %778, align 1, !tbaa !19
  %783 = zext i8 %782 to i64
  %784 = icmp eq i8 %782, -1
  br i1 %784, label %785, label %827

785:                                              ; preds = %777, %804
  %786 = phi ptr [ %808, %804 ], [ %781, %777 ]
  %787 = phi i64 [ %807, %804 ], [ %780, %777 ]
  %788 = icmp eq i64 %787, 0
  br i1 %788, label %789, label %804

789:                                              ; preds = %785
  %790 = load ptr, ptr %44, align 8, !tbaa !34
  %791 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %790, i64 0, i32 5
  %792 = load ptr, ptr %791, align 8, !tbaa !35
  %793 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %792, i64 0, i32 3
  %794 = load ptr, ptr %793, align 8, !tbaa !36
  %795 = tail call i32 %794(ptr noundef %790) #4
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %872, label %797

797:                                              ; preds = %789
  %798 = load ptr, ptr %44, align 8, !tbaa !34
  %799 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %798, i64 0, i32 5
  %800 = load ptr, ptr %799, align 8, !tbaa !35
  %801 = load ptr, ptr %800, align 8, !tbaa !38
  %802 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %800, i64 0, i32 1
  %803 = load i64, ptr %802, align 8, !tbaa !39
  br label %804

804:                                              ; preds = %797, %785
  %805 = phi ptr [ %801, %797 ], [ %786, %785 ]
  %806 = phi i64 [ %803, %797 ], [ %787, %785 ]
  %807 = add i64 %806, -1
  %808 = getelementptr inbounds i8, ptr %805, i64 1
  %809 = load i8, ptr %805, align 1, !tbaa !19
  switch i8 %809, label %810 [
    i8 -1, label %785
    i8 0, label %827
  ]

810:                                              ; preds = %804
  %811 = zext i8 %809 to i32
  store i32 %811, ptr %53, align 8, !tbaa !33
  br label %812

812:                                              ; preds = %810, %753
  %813 = phi ptr [ %755, %753 ], [ %808, %810 ]
  %814 = phi i64 [ %754, %753 ], [ %807, %810 ]
  %815 = icmp slt i32 %756, %745
  br i1 %815, label %816, label %835

816:                                              ; preds = %812
  %817 = load ptr, ptr %59, align 8, !tbaa !40
  %818 = load i32, ptr %817, align 4, !tbaa !22
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %827

820:                                              ; preds = %816
  %821 = load ptr, ptr %44, align 8, !tbaa !34
  %822 = load ptr, ptr %821, align 8, !tbaa !41
  %823 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %822, i64 0, i32 5
  store i32 113, ptr %823, align 8, !tbaa !42
  %824 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %822, i64 0, i32 1
  %825 = load ptr, ptr %824, align 8, !tbaa !44
  tail call void %825(ptr noundef nonnull %821, i32 noundef -1) #4
  %826 = load ptr, ptr %59, align 8, !tbaa !40
  store i32 1, ptr %826, align 4, !tbaa !22
  br label %827

827:                                              ; preds = %804, %820, %816, %777
  %828 = phi ptr [ %781, %777 ], [ %813, %820 ], [ %813, %816 ], [ %808, %804 ]
  %829 = phi i64 [ %780, %777 ], [ %814, %820 ], [ %814, %816 ], [ %807, %804 ]
  %830 = phi i64 [ %783, %777 ], [ 0, %820 ], [ 0, %816 ], [ 255, %804 ]
  %831 = shl i64 %757, 8
  %832 = or disjoint i64 %830, %831
  %833 = add nsw i32 %756, 8
  %834 = icmp slt i32 %756, 17
  br i1 %834, label %753, label %835, !llvm.loop !45

835:                                              ; preds = %827, %812, %749
  %836 = phi i64 [ %740, %749 ], [ %832, %827 ], [ %757, %812 ]
  %837 = phi i32 [ %739, %749 ], [ %833, %827 ], [ %756, %812 ]
  %838 = phi ptr [ %750, %749 ], [ %828, %827 ], [ %813, %812 ]
  %839 = phi i64 [ %751, %749 ], [ %829, %827 ], [ %814, %812 ]
  store ptr %838, ptr %3, align 8, !tbaa !30
  store i64 %839, ptr %50, align 8, !tbaa !32
  store i64 %836, ptr %81, align 8, !tbaa !46
  store i32 %837, ptr %82, align 8, !tbaa !47
  br label %840

840:                                              ; preds = %835, %747
  %841 = phi i32 [ %837, %835 ], [ %739, %747 ]
  %842 = phi i64 [ %836, %835 ], [ %740, %747 ]
  %843 = sub nsw i32 %841, %745
  br label %846

844:                                              ; preds = %743
  %845 = icmp eq i32 %744, 15
  br i1 %845, label %846, label %853

846:                                              ; preds = %844, %840
  %847 = phi i32 [ %843, %840 ], [ %739, %844 ]
  %848 = phi i64 [ %842, %840 ], [ %740, %844 ]
  %849 = phi i32 [ %744, %840 ], [ 15, %844 ]
  %850 = add i32 %619, 1
  %851 = add i32 %850, %849
  %852 = icmp slt i32 %851, 64
  br i1 %852, label %617, label %853, !llvm.loop !86

853:                                              ; preds = %606, %610, %844, %846
  %854 = phi i32 [ %739, %844 ], [ %847, %846 ], [ %478, %606 ], [ %611, %610 ]
  %855 = phi i64 [ %740, %844 ], [ %848, %846 ], [ %479, %606 ], [ %612, %610 ]
  %856 = phi i32 [ 0, %844 ], [ %745, %846 ], [ 0, %606 ], [ %614, %610 ]
  %857 = add nuw nsw i64 %84, 1
  %858 = load i32, ptr %61, align 8, !tbaa !80
  %859 = sext i32 %858 to i64
  %860 = icmp slt i64 %857, %859
  br i1 %860, label %83, label %861, !llvm.loop !87

861:                                              ; preds = %853, %43
  %862 = phi i32 [ %57, %43 ], [ %854, %853 ]
  %863 = phi i64 [ %55, %43 ], [ %855, %853 ]
  %864 = load ptr, ptr %3, align 8, !tbaa !30
  %865 = load ptr, ptr %45, align 8, !tbaa !35
  store ptr %864, ptr %865, align 8, !tbaa !38
  %866 = load i64, ptr %50, align 8, !tbaa !32
  %867 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %865, i64 0, i32 1
  store i64 %866, ptr %867, align 8, !tbaa !39
  %868 = load i32, ptr %53, align 8, !tbaa !33
  store i32 %868, ptr %51, align 4, !tbaa !77
  store i64 %863, ptr %54, align 8, !tbaa !78
  store i32 %862, ptr %56, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !79
  %869 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i64 0, i32 3
  %870 = load i32, ptr %869, align 8, !tbaa !69
  %871 = add i32 %870, -1
  store i32 %871, ptr %869, align 8, !tbaa !69
  br label %872

872:                                              ; preds = %221, %243, %477, %738, %270, %502, %762, %529, %789, %14, %40, %861
  %873 = phi i32 [ 1, %861 ], [ 0, %40 ], [ 0, %14 ], [ 0, %789 ], [ 0, %529 ], [ 0, %762 ], [ 0, %502 ], [ 0, %270 ], [ 0, %738 ], [ 0, %477 ], [ 0, %243 ], [ 0, %221 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret i32 %873
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"jpeg_decompress_struct", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !12, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !6, i64 152, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !6, i64 184, !7, i64 192, !7, i64 224, !7, i64 256, !11, i64 288, !6, i64 296, !11, i64 304, !11, i64 308, !7, i64 312, !7, i64 328, !7, i64 344, !11, i64 360, !11, i64 364, !7, i64 368, !13, i64 370, !13, i64 372, !11, i64 376, !7, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !6, i64 408, !11, i64 416, !7, i64 424, !11, i64 456, !11, i64 460, !11, i64 464, !7, i64 468, !11, i64 508, !11, i64 512, !11, i64 516, !11, i64 520, !11, i64 524, !6, i64 528, !6, i64 536, !6, i64 544, !6, i64 552, !6, i64 560, !6, i64 568, !6, i64 576, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608}
!11 = !{!"int", !7, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"jpeg_memory_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !16, i64 88}
!16 = !{!"long", !7, i64 0}
!17 = !{!18, !6, i64 352}
!18 = !{!"", !7, i64 0, !7, i64 136, !7, i64 280, !6, i64 352, !7, i64 360, !7, i64 1384}
!19 = !{!7, !7, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!11, !11, i64 0}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = !{!16, !16, i64 0}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = !{!31, !6, i64 0}
!31 = !{!"", !6, i64 0, !16, i64 8, !11, i64 16, !16, i64 24, !11, i64 32, !6, i64 40, !6, i64 48}
!32 = !{!31, !16, i64 8}
!33 = !{!31, !11, i64 16}
!34 = !{!31, !6, i64 40}
!35 = !{!10, !6, i64 32}
!36 = !{!37, !6, i64 24}
!37 = !{!"jpeg_source_mgr", !6, i64 0, !16, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!38 = !{!37, !6, i64 0}
!39 = !{!37, !16, i64 8}
!40 = !{!31, !6, i64 48}
!41 = !{!10, !6, i64 0}
!42 = !{!43, !11, i64 40}
!43 = !{!"jpeg_error_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !7, i64 44, !11, i64 124, !16, i64 128, !6, i64 136, !11, i64 144, !6, i64 152, !11, i64 160, !11, i64 164}
!44 = !{!43, !6, i64 8}
!45 = distinct !{!45, !21}
!46 = !{!31, !16, i64 24}
!47 = !{!31, !11, i64 32}
!48 = !{i32 0, i32 2}
!49 = distinct !{!49, !21}
!50 = !{!10, !6, i64 576}
!51 = !{!52, !6, i64 0}
!52 = !{!"", !53, i64 0, !54, i64 16, !55, i64 32, !11, i64 48, !7, i64 56, !7, i64 88}
!53 = !{!"jpeg_entropy_decoder", !6, i64 0, !6, i64 8}
!54 = !{!"", !16, i64 0, !11, i64 8, !11, i64 12}
!55 = !{!"", !7, i64 0}
!56 = !{!52, !6, i64 8}
!57 = distinct !{!57, !21}
!58 = !{!10, !11, i64 508}
!59 = !{!10, !11, i64 512}
!60 = !{!10, !11, i64 516}
!61 = !{!10, !11, i64 520}
!62 = !{!10, !11, i64 416}
!63 = !{!64, !11, i64 20}
!64 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !6, i64 80, !6, i64 88}
!65 = !{!64, !11, i64 24}
!66 = !{!43, !6, i64 0}
!67 = distinct !{!67, !21}
!68 = !{!10, !11, i64 360}
!69 = !{!52, !11, i64 48}
!70 = !{!52, !11, i64 24}
!71 = !{!10, !6, i64 568}
!72 = !{!73, !11, i64 172}
!73 = !{!"jpeg_marker_reader", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172}
!74 = !{!73, !6, i64 16}
!75 = distinct !{!75, !21}
!76 = !{!52, !11, i64 28}
!77 = !{!10, !11, i64 524}
!78 = !{!52, !16, i64 16}
!79 = !{i64 0, i64 16, !19}
!80 = !{!10, !11, i64 464}
!81 = !{i32 -1, i32 256}
!82 = !{!64, !11, i64 48}
!83 = !{!13, !13, i64 0}
!84 = !{!64, !11, i64 36}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !21}
!87 = distinct !{!87, !21}
