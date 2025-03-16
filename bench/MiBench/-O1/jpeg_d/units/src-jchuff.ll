; ModuleID = 'src/jchuff.c'
source_filename = "src/jchuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.huff_entropy_encoder = type { %struct.jpeg_entropy_encoder, %struct.savable_state, i32, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.savable_state = type { i64, i32, [4 x i32] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.working_state = type { ptr, i64, %struct.savable_state, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [257 x i8], align 16
  %5 = alloca [257 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %5) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 1, i64 noundef 1280) #7
  store ptr %12, ptr %2, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %8, %3
  %14 = load ptr, ptr %2, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %13, %28
  %16 = phi i64 [ 1, %13 ], [ %30, %28 ]
  %17 = phi i32 [ 0, %13 ], [ %29, %28 ]
  %18 = getelementptr inbounds [17 x i8], ptr %1, i64 0, i64 %16
  %19 = load i8, ptr %18, align 1, !tbaa !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = trunc i64 %16 to i8
  %23 = sext i32 %17 to i64
  %24 = getelementptr i8, ptr %4, i64 %23
  %25 = zext i8 %19 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %24, i8 %22, i64 %25, i1 false), !tbaa !17
  %26 = zext i8 %19 to i32
  %27 = add i32 %17, %26
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %17, %15 ], [ %27, %21 ]
  %30 = add nuw nsw i64 %16, 1
  %31 = icmp eq i64 %30, 17
  br i1 %31, label %32, label %15, !llvm.loop !18

32:                                               ; preds = %28
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !17
  %35 = load i8, ptr %4, align 16, !tbaa !17
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %32
  %38 = sext i8 %35 to i32
  br label %39

39:                                               ; preds = %37, %60
  %40 = phi i32 [ %63, %60 ], [ 0, %37 ]
  %41 = phi i32 [ %64, %60 ], [ %38, %37 ]
  %42 = phi i32 [ %61, %60 ], [ 0, %37 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !17
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %39, %48
  %49 = phi i64 [ %51, %48 ], [ %43, %39 ]
  %50 = phi i32 [ %53, %48 ], [ %40, %39 ]
  %51 = add i64 %49, 1
  %52 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %49
  store i32 %50, ptr %52, align 4, !tbaa !20
  %53 = add i32 %50, 1
  %54 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !17
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %41, %56
  br i1 %57, label %48, label %58, !llvm.loop !21

58:                                               ; preds = %48
  %59 = trunc i64 %51 to i32
  br label %60

60:                                               ; preds = %58, %39
  %61 = phi i32 [ %42, %39 ], [ %59, %58 ]
  %62 = phi i32 [ %40, %39 ], [ %53, %58 ]
  %63 = shl i32 %62, 1
  %64 = add nsw i32 %41, 1
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %39, !llvm.loop !22

69:                                               ; preds = %60, %32
  %70 = getelementptr inbounds %struct.c_derived_tbl, ptr %14, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %70, i8 0, i64 256, i1 false)
  %71 = icmp sgt i32 %29, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = zext nneg i32 %29 to i64
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ 0, %72 ], [ %87, %74 ]
  %76 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !20
  %78 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 1, i64 %75
  %79 = load i8, ptr %78, align 1, !tbaa !17
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [256 x i32], ptr %14, i64 0, i64 %80
  store i32 %77, ptr %81, align 4, !tbaa !20
  %82 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %75
  %83 = load i8, ptr %82, align 1, !tbaa !17
  %84 = load i8, ptr %78, align 1, !tbaa !17
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds %struct.c_derived_tbl, ptr %14, i64 0, i32 1, i64 %85
  store i8 %83, ptr %86, align 1, !tbaa !17
  %87 = add nuw nsw i64 %75, 1
  %88 = icmp eq i64 %87, %73
  br i1 %88, label %89, label %74, !llvm.loop !23

89:                                               ; preds = %74, %69
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_gen_optimal_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [33 x i8], align 16
  %5 = alloca [257 x i32], align 16
  %6 = alloca [257 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %4, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %5, i8 0, i64 1028, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %6, i8 -1, i64 1028, i1 false), !tbaa !20
  %7 = getelementptr inbounds i64, ptr %2, i64 256
  store i64 1, ptr %7, align 8, !tbaa !24
  br label %10

8:                                                ; preds = %10
  %9 = zext i32 %20 to i64
  br label %28

10:                                               ; preds = %24, %3
  %11 = phi i64 [ 0, %3 ], [ %25, %24 ]
  %12 = phi i64 [ 1000000000, %3 ], [ %26, %24 ]
  %13 = phi i32 [ -1, %3 ], [ %27, %24 ]
  %14 = getelementptr inbounds i64, ptr %2, i64 %11
  %15 = load i64, ptr %14, align 8, !tbaa !24
  %16 = icmp eq i64 %15, 0
  %17 = icmp sgt i64 %15, %12
  %18 = select i1 %16, i1 true, i1 %17
  %19 = trunc i64 %11 to i32
  %20 = select i1 %18, i32 %13, i32 %19
  %21 = select i1 %18, i64 %12, i64 %15
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, 257
  br i1 %23, label %8, label %24

24:                                               ; preds = %71, %81, %10
  %25 = phi i64 [ %22, %10 ], [ 0, %81 ], [ 0, %71 ]
  %26 = phi i64 [ %21, %10 ], [ 1000000000, %81 ], [ 1000000000, %71 ]
  %27 = phi i32 [ %20, %10 ], [ -1, %81 ], [ -1, %71 ]
  br label %10, !llvm.loop !25

28:                                               ; preds = %8, %28
  %29 = phi i64 [ 0, %8 ], [ %42, %28 ]
  %30 = phi i64 [ 1000000000, %8 ], [ %41, %28 ]
  %31 = phi i32 [ -1, %8 ], [ %40, %28 ]
  %32 = getelementptr inbounds i64, ptr %2, i64 %29
  %33 = load i64, ptr %32, align 8, !tbaa !24
  %34 = icmp eq i64 %33, 0
  %35 = icmp sgt i64 %33, %30
  %36 = select i1 %34, i1 true, i1 %35
  %37 = icmp eq i64 %29, %9
  %38 = select i1 %36, i1 true, i1 %37
  %39 = trunc i64 %29 to i32
  %40 = select i1 %38, i32 %31, i32 %39
  %41 = select i1 %38, i64 %30, i64 %33
  %42 = add nuw nsw i64 %29, 1
  %43 = icmp eq i64 %42, 257
  br i1 %43, label %44, label %28, !llvm.loop !26

44:                                               ; preds = %28
  %45 = icmp slt i32 %40, 0
  br i1 %45, label %91, label %46

46:                                               ; preds = %44
  %47 = zext nneg i32 %40 to i64
  %48 = getelementptr inbounds i64, ptr %2, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !24
  %50 = sext i32 %20 to i64
  %51 = getelementptr inbounds i64, ptr %2, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !24
  %53 = add nsw i64 %52, %49
  store i64 %53, ptr %51, align 8, !tbaa !24
  store i64 0, ptr %48, align 8, !tbaa !24
  %54 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %50
  %55 = load i32, ptr %54, align 4, !tbaa !20
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !20
  %57 = sext i32 %20 to i64
  %58 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !20
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %71

61:                                               ; preds = %46, %61
  %62 = phi i32 [ %69, %61 ], [ %59, %46 ]
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !20
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !20
  %67 = zext nneg i32 %62 to i64
  %68 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !20
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %61, label %71, !llvm.loop !27

71:                                               ; preds = %61, %46
  %72 = phi i64 [ %57, %46 ], [ %67, %61 ]
  %73 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %72
  store i32 %40, ptr %73, align 4, !tbaa !20
  %74 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %47
  %75 = load i32, ptr %74, align 4, !tbaa !20
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %74, align 4, !tbaa !20
  %77 = zext nneg i32 %40 to i64
  %78 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !20
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %24

81:                                               ; preds = %71, %81
  %82 = phi i32 [ %89, %81 ], [ %79, %71 ]
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !20
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %84, align 4, !tbaa !20
  %87 = zext nneg i32 %82 to i64
  %88 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !20
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %81, label %24, !llvm.loop !28

91:                                               ; preds = %44, %107
  %92 = phi i64 [ %108, %107 ], [ 0, %44 ]
  %93 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !20
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = icmp sgt i32 %94, 32
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = load ptr, ptr %0, align 8, !tbaa !29
  %100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 5
  store i32 38, ptr %100, align 8, !tbaa !30
  %101 = load ptr, ptr %99, align 8, !tbaa !32
  tail call void %101(ptr noundef nonnull %0) #7
  br label %102

102:                                              ; preds = %98, %96
  %103 = sext i32 %94 to i64
  %104 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !17
  %106 = add i8 %105, 1
  store i8 %106, ptr %104, align 1, !tbaa !17
  br label %107

107:                                              ; preds = %91, %102
  %108 = add nuw nsw i64 %92, 1
  %109 = icmp eq i64 %108, 257
  br i1 %109, label %110, label %91, !llvm.loop !33

110:                                              ; preds = %107, %142
  %111 = phi i64 [ %143, %142 ], [ 32, %107 ]
  %112 = phi i64 [ %145, %142 ], [ 30, %107 ]
  %113 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %111
  %114 = load i8, ptr %113, align 1, !tbaa !17
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %110
  %117 = add nsw i64 %111, -1
  %118 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %117
  br label %119

119:                                              ; preds = %116, %127
  %120 = phi i8 [ %114, %116 ], [ %140, %127 ]
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi i64 [ %126, %121 ], [ %112, %119 ]
  %123 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !17
  %125 = icmp eq i8 %124, 0
  %126 = add i64 %122, -1
  br i1 %125, label %121, label %127, !llvm.loop !34

127:                                              ; preds = %121
  %128 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %122
  %129 = add i8 %120, -2
  store i8 %129, ptr %113, align 1, !tbaa !17
  %130 = load i8, ptr %118, align 1, !tbaa !17
  %131 = add i8 %130, 1
  store i8 %131, ptr %118, align 1, !tbaa !17
  %132 = shl i64 %122, 32
  %133 = add i64 %132, 4294967296
  %134 = ashr exact i64 %133, 32
  %135 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !17
  %137 = add i8 %136, 2
  store i8 %137, ptr %135, align 1, !tbaa !17
  %138 = load i8, ptr %128, align 1, !tbaa !17
  %139 = add i8 %138, -1
  store i8 %139, ptr %128, align 1, !tbaa !17
  %140 = load i8, ptr %113, align 1, !tbaa !17
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %119, !llvm.loop !35

142:                                              ; preds = %127, %110
  %143 = add nsw i64 %111, -1
  %144 = icmp ugt i64 %111, 17
  %145 = add nsw i64 %112, -1
  br i1 %144, label %110, label %146, !llvm.loop !36

146:                                              ; preds = %142, %146
  %147 = phi i64 [ %151, %146 ], [ 16, %142 ]
  %148 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !17
  %150 = icmp eq i8 %149, 0
  %151 = add i64 %147, -1
  br i1 %150, label %146, label %152, !llvm.loop !37

152:                                              ; preds = %146
  %153 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %147
  %154 = add i8 %149, -1
  store i8 %154, ptr %153, align 1, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 16 dereferenceable(17) %4, i64 17, i1 false)
  br label %155

155:                                              ; preds = %152, %173
  %156 = phi i32 [ 1, %152 ], [ %174, %173 ]
  %157 = phi i32 [ 0, %152 ], [ %170, %173 ]
  br label %158

158:                                              ; preds = %155, %169
  %159 = phi i64 [ 0, %155 ], [ %171, %169 ]
  %160 = phi i32 [ %157, %155 ], [ %170, %169 ]
  %161 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %159
  %162 = load i32, ptr %161, align 4, !tbaa !20
  %163 = icmp eq i32 %162, %156
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = trunc i64 %159 to i8
  %166 = sext i32 %160 to i64
  %167 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 1, i64 %166
  store i8 %165, ptr %167, align 1, !tbaa !17
  %168 = add nsw i32 %160, 1
  br label %169

169:                                              ; preds = %158, %164
  %170 = phi i32 [ %168, %164 ], [ %160, %158 ]
  %171 = add nuw nsw i64 %159, 1
  %172 = icmp eq i64 %171, 256
  br i1 %172, label %173, label %158, !llvm.loop !38

173:                                              ; preds = %169
  %174 = add nuw nsw i32 %156, 1
  %175 = icmp eq i32 %174, 33
  br i1 %175, label %176, label %155, !llvm.loop !39

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 2
  store i32 0, ptr %177, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @jinit_huff_encoder(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 192) #7
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  store ptr %5, ptr %6, align 8, !tbaa !42
  store ptr @start_pass_huff, ptr %5, align 8, !tbaa !43
  %7 = getelementptr i8, ptr %5, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !5
  br label %8

8:                                                ; preds = %1, %8
  %9 = phi i64 [ 0, %1 ], [ %13, %8 ]
  %10 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 5, i64 %9
  store ptr null, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 7, i64 %9
  store ptr null, ptr %11, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 6, i64 %9
  store ptr null, ptr %12, align 8, !tbaa !5
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %15, label %8, !llvm.loop !47

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_huff(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %4, i64 0, i32 1
  %7 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %4, i64 0, i32 2
  %8 = select i1 %5, ptr @encode_mcu_gather, ptr @encode_mcu_huff
  %9 = select i1 %5, ptr @finish_pass_gather, ptr @finish_pass_huff
  store ptr %8, ptr %6, align 8, !tbaa !48
  store ptr %9, ptr %7, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %87

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %16

16:                                               ; preds = %13, %81
  %17 = phi i64 [ 0, %13 ], [ %83, %81 ]
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !53
  %24 = icmp ugt i32 %21, 3
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = zext nneg i32 %21 to i64
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp ne ptr %28, null
  %30 = or i1 %5, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25, %16
  %32 = load ptr, ptr %0, align 8, !tbaa !29
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 49, ptr %33, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 6
  store i32 %21, ptr %34, align 4, !tbaa !17
  %35 = load ptr, ptr %0, align 8, !tbaa !29
  %36 = load ptr, ptr %35, align 8, !tbaa !32
  tail call void %36(ptr noundef nonnull %0) #7
  br label %37

37:                                               ; preds = %31, %25
  %38 = icmp ugt i32 %23, 3
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = zext nneg i32 %23 to i64
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp ne ptr %42, null
  %44 = or i1 %5, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39, %37
  %46 = load ptr, ptr %0, align 8, !tbaa !29
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 49, ptr %47, align 8, !tbaa !30
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 6
  store i32 %23, ptr %48, align 4, !tbaa !17
  %49 = load ptr, ptr %0, align 8, !tbaa !29
  %50 = load ptr, ptr %49, align 8, !tbaa !32
  tail call void %50(ptr noundef nonnull %0) #7
  br label %51

51:                                               ; preds = %45, %39
  %52 = sext i32 %21 to i64
  br i1 %5, label %53, label %73

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 6, i64 %52
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load ptr, ptr %14, align 8, !tbaa !9
  %59 = load ptr, ptr %58, align 8, !tbaa !14
  %60 = tail call ptr %59(ptr noundef %0, i32 noundef 1, i64 noundef 2056) #7
  store ptr %60, ptr %54, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %57, %53
  %62 = load ptr, ptr %54, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %62, i8 0, i64 2056, i1 false)
  %63 = sext i32 %23 to i64
  %64 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load ptr, ptr %15, align 8, !tbaa !9
  %69 = load ptr, ptr %68, align 8, !tbaa !14
  %70 = tail call ptr %69(ptr noundef %0, i32 noundef 1, i64 noundef 2056) #7
  store ptr %70, ptr %64, align 8, !tbaa !5
  br label %71

71:                                               ; preds = %67, %61
  %72 = load ptr, ptr %64, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %72, i8 0, i64 2056, i1 false)
  br label %81

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %52
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 4, i64 %52
  tail call void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr noundef %75, ptr noundef nonnull %76)
  %77 = sext i32 %23 to i64
  %78 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 5, i64 %77
  tail call void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr noundef %79, ptr noundef nonnull %80)
  br label %81

81:                                               ; preds = %73, %71
  %82 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %17
  store i32 0, ptr %82, align 4, !tbaa !20
  %83 = add nuw nsw i64 %17, 1
  %84 = load i32, ptr %10, align 4, !tbaa !50
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %16, label %87, !llvm.loop !54

87:                                               ; preds = %81, %2
  %88 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1
  store i64 0, ptr %88, align 8, !tbaa !55
  %89 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %89, align 8, !tbaa !56
  %90 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %91 = load i32, ptr %90, align 8, !tbaa !57
  %92 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 2
  store i32 %91, ptr %92, align 8, !tbaa !58
  %93 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 3
  store i32 0, ptr %93, align 4, !tbaa !59
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @encode_mcu_gather(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !58
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %16
  %17 = phi i64 [ %19, %16 ], [ 0, %12 ]
  %18 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %17
  store i32 0, ptr %18, align 4, !tbaa !20
  %19 = add nuw nsw i64 %17, 1
  %20 = load i32, ptr %13, align 4, !tbaa !50
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %16, label %23, !llvm.loop !60

23:                                               ; preds = %16, %12
  %24 = load i32, ptr %5, align 8, !tbaa !57
  store i32 %24, ptr %9, align 8, !tbaa !58
  br label %25

25:                                               ; preds = %23, %8
  %26 = load i32, ptr %9, align 8, !tbaa !58
  %27 = add i32 %26, -1
  store i32 %27, ptr %9, align 8, !tbaa !58
  br label %28

28:                                               ; preds = %25, %2
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %30 = load i32, ptr %29, align 8, !tbaa !61
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %132

32:                                               ; preds = %28, %127
  %33 = phi i64 [ %128, %127 ], [ 0, %28 ]
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !20
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = getelementptr inbounds ptr, ptr %1, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %36
  %42 = load i32, ptr %41, align 4, !tbaa !20
  %43 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !51
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 6, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !53
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = load i16, ptr %40, align 2, !tbaa !62
  %54 = sext i16 %53 to i32
  %55 = icmp eq i32 %42, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %32
  %57 = sub nsw i32 %54, %42
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 true)
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i32 [ %62, %59 ], [ 0, %56 ]
  %61 = phi i32 [ %63, %59 ], [ %58, %56 ]
  %62 = add nuw nsw i32 %60, 1
  %63 = lshr i32 %61, 1
  %64 = icmp ult i32 %61, 2
  br i1 %64, label %65, label %59, !llvm.loop !63

65:                                               ; preds = %59
  %66 = zext nneg i32 %62 to i64
  br label %67

67:                                               ; preds = %65, %32
  %68 = phi i64 [ 0, %32 ], [ %66, %65 ]
  %69 = getelementptr inbounds i64, ptr %47, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !24
  %71 = add nsw i64 %70, 1
  store i64 %71, ptr %69, align 8, !tbaa !24
  %72 = getelementptr inbounds i64, ptr %52, i64 240
  br label %73

73:                                               ; preds = %118, %67
  %74 = phi i64 [ 1, %67 ], [ %120, %118 ]
  %75 = phi i32 [ 0, %67 ], [ %119, %118 ]
  %76 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %74
  %77 = load i32, ptr %76, align 4, !tbaa !20
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, ptr %40, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !62
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = icmp sgt i32 %75, 15
  br i1 %83, label %86, label %98

84:                                               ; preds = %73
  %85 = add nsw i32 %75, 1
  br label %118

86:                                               ; preds = %82
  %87 = add nuw i32 %75, 15
  %88 = tail call i32 @llvm.smin.i32(i32 %75, i32 31)
  %89 = sub i32 %87, %88
  %90 = and i32 %89, -16
  %91 = load i64, ptr %72, align 8, !tbaa !24
  %92 = lshr i32 %89, 4
  %93 = add nuw nsw i32 %92, 1
  %94 = zext nneg i32 %93 to i64
  %95 = add i64 %91, %94
  %96 = add nsw i32 %75, -16
  %97 = sub i32 %96, %90
  store i64 %95, ptr %72, align 8, !tbaa !24
  br label %98

98:                                               ; preds = %86, %82
  %99 = phi i32 [ %97, %86 ], [ %75, %82 ]
  %100 = tail call i16 @llvm.abs.i16(i16 %80, i1 false)
  %101 = icmp ult i16 %100, 2
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = zext i16 %100 to i32
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i32 [ %108, %104 ], [ 1, %102 ]
  %106 = phi i32 [ %107, %104 ], [ %103, %102 ]
  %107 = lshr i32 %106, 1
  %108 = add nuw nsw i32 %105, 1
  %109 = icmp ult i32 %106, 4
  br i1 %109, label %110, label %104, !llvm.loop !64

110:                                              ; preds = %104, %98
  %111 = phi i32 [ 1, %98 ], [ %108, %104 ]
  %112 = shl i32 %99, 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, ptr %52, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !24
  %117 = add nsw i64 %116, 1
  store i64 %117, ptr %115, align 8, !tbaa !24
  br label %118

118:                                              ; preds = %110, %84
  %119 = phi i32 [ %85, %84 ], [ 0, %110 ]
  %120 = add nuw nsw i64 %74, 1
  %121 = icmp eq i64 %120, 64
  br i1 %121, label %122, label %73, !llvm.loop !65

122:                                              ; preds = %118
  %123 = icmp sgt i32 %119, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i64, ptr %52, align 8, !tbaa !24
  %126 = add nsw i64 %125, 1
  store i64 %126, ptr %52, align 8, !tbaa !24
  br label %127

127:                                              ; preds = %122, %124
  store i32 %54, ptr %41, align 4, !tbaa !20
  %128 = add nuw nsw i64 %33, 1
  %129 = load i32, ptr %29, align 8, !tbaa !61
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %128, %130
  br i1 %131, label %32, label %132, !llvm.loop !66

132:                                              ; preds = %127, %28
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather(ptr noundef %0) #0 {
  %2 = alloca [4 x i32], align 16
  %3 = alloca [4 x i32], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %1, %46
  %10 = phi i64 [ %47, %46 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call ptr @jpeg_alloc_huff_table(ptr noundef %0) #7
  store ptr %26, ptr %22, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr %22, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 6, i64 %17
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  tail call void @jpeg_gen_optimal_table(ptr noundef %0, ptr noundef %28, ptr noundef %30)
  store i32 1, ptr %18, align 4, !tbaa !20
  br label %31

31:                                               ; preds = %27, %9
  %32 = sext i32 %16 to i64
  %33 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %32
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call ptr @jpeg_alloc_huff_table(ptr noundef %0) #7
  store ptr %41, ptr %37, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %40, %36
  %43 = load ptr, ptr %37, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 7, i64 %32
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  tail call void @jpeg_gen_optimal_table(ptr noundef %0, ptr noundef %43, ptr noundef %45)
  store i32 1, ptr %33, align 4, !tbaa !20
  br label %46

46:                                               ; preds = %31, %42
  %47 = add nuw nsw i64 %10, 1
  %48 = load i32, ptr %6, align 4, !tbaa !50
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %9, label %51, !llvm.loop !67

51:                                               ; preds = %46, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_huff(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.working_state, align 8
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  store ptr %8, ptr %3, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2
  %13 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !75
  %14 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 3
  store ptr %0, ptr %14, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %16 = load i32, ptr %15, align 8, !tbaa !57
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %137, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !58
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %137

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !59
  %25 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = add nsw i32 %26, 7
  %28 = sub nsw i32 17, %26
  %29 = zext nneg i32 %28 to i64
  %30 = shl i64 127, %29
  %31 = load i64, ptr %12, align 8, !tbaa !78
  %32 = or i64 %30, %31
  br label %33

33:                                               ; preds = %81, %22
  %34 = phi i64 [ %32, %22 ], [ %82, %81 ]
  %35 = phi i32 [ %27, %22 ], [ %83, %81 ]
  %36 = icmp sgt i32 %35, 7
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  %38 = lshr i64 %34, 16
  %39 = trunc i64 %38 to i8
  %40 = load ptr, ptr %3, align 8, !tbaa !71
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %41, ptr %3, align 8, !tbaa !71
  store i8 %39, ptr %40, align 1, !tbaa !17
  %42 = load i64, ptr %11, align 8, !tbaa !74
  %43 = add i64 %42, -1
  store i64 %43, ptr %11, align 8, !tbaa !74
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load ptr, ptr %14, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !68
  %49 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = tail call i32 %50(ptr noundef %46) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %48, align 8, !tbaa !69
  store ptr %54, ptr %3, align 8, !tbaa !71
  %55 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %48, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !73
  store i64 %56, ptr %11, align 8, !tbaa !74
  br label %57

57:                                               ; preds = %53, %37
  %58 = and i64 %34, 16711680
  %59 = icmp eq i64 %58, 16711680
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load ptr, ptr %3, align 8, !tbaa !71
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %62, ptr %3, align 8, !tbaa !71
  store i8 0, ptr %61, align 1, !tbaa !17
  %63 = load i64, ptr %11, align 8, !tbaa !74
  %64 = add i64 %63, -1
  store i64 %64, ptr %11, align 8, !tbaa !74
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load ptr, ptr %14, align 8, !tbaa !76
  %68 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %67, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !68
  %70 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !79
  %72 = tail call i32 %71(ptr noundef %67) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %69, align 8, !tbaa !69
  store ptr %75, ptr %3, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %69, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !73
  store i64 %77, ptr %11, align 8, !tbaa !74
  br label %78

78:                                               ; preds = %74, %60, %57
  %79 = shl i64 %34, 8
  %80 = add nsw i32 %35, -8
  br label %81

81:                                               ; preds = %78, %66, %45
  %82 = phi i64 [ %79, %78 ], [ %34, %45 ], [ %34, %66 ]
  %83 = phi i32 [ %80, %78 ], [ %35, %45 ], [ %35, %66 ]
  %84 = phi i1 [ true, %78 ], [ false, %45 ], [ false, %66 ]
  br i1 %84, label %33, label %86, !llvm.loop !80

85:                                               ; preds = %33
  store i64 %34, ptr %12, align 8, !tbaa !78
  store i32 %35, ptr %25, align 8, !tbaa !77
  br label %86

86:                                               ; preds = %81, %85
  br i1 %36, label %699, label %87

87:                                               ; preds = %86
  store i64 0, ptr %12, align 8, !tbaa !78
  store i32 0, ptr %25, align 8, !tbaa !77
  %88 = load ptr, ptr %3, align 8, !tbaa !71
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %89, ptr %3, align 8, !tbaa !71
  store i8 -1, ptr %88, align 1, !tbaa !17
  %90 = load i64, ptr %11, align 8, !tbaa !74
  %91 = add i64 %90, -1
  store i64 %91, ptr %11, align 8, !tbaa !74
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load ptr, ptr %14, align 8, !tbaa !76
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i64 0, i32 5
  %96 = load ptr, ptr %95, align 8, !tbaa !68
  %97 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !79
  %99 = tail call i32 %98(ptr noundef %94) #7
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %699, label %101

101:                                              ; preds = %93
  %102 = load ptr, ptr %96, align 8, !tbaa !69
  store ptr %102, ptr %3, align 8, !tbaa !71
  %103 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %96, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !73
  store i64 %104, ptr %11, align 8, !tbaa !74
  br label %105

105:                                              ; preds = %101, %87
  %106 = trunc i32 %24 to i8
  %107 = add i8 %106, -48
  %108 = load ptr, ptr %3, align 8, !tbaa !71
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  store ptr %109, ptr %3, align 8, !tbaa !71
  store i8 %107, ptr %108, align 1, !tbaa !17
  %110 = load i64, ptr %11, align 8, !tbaa !74
  %111 = add i64 %110, -1
  store i64 %111, ptr %11, align 8, !tbaa !74
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %105
  %114 = load ptr, ptr %14, align 8, !tbaa !76
  %115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %114, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !68
  %117 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !79
  %119 = tail call i32 %118(ptr noundef %114) #7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %699, label %121

121:                                              ; preds = %113
  %122 = load ptr, ptr %116, align 8, !tbaa !69
  store ptr %122, ptr %3, align 8, !tbaa !71
  %123 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %116, i64 0, i32 1
  %124 = load i64, ptr %123, align 8, !tbaa !73
  store i64 %124, ptr %11, align 8, !tbaa !74
  br label %125

125:                                              ; preds = %121, %105
  %126 = load ptr, ptr %14, align 8, !tbaa !76
  %127 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %126, i64 0, i32 41
  %128 = load i32, ptr %127, align 4, !tbaa !50
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125, %130
  %131 = phi i64 [ %133, %130 ], [ 0, %125 ]
  %132 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 2, i64 %131
  store i32 0, ptr %132, align 4, !tbaa !20
  %133 = add nuw nsw i64 %131, 1
  %134 = load i32, ptr %127, align 4, !tbaa !50
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %130, label %137, !llvm.loop !81

137:                                              ; preds = %130, %125, %18, %2
  %138 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %139 = load i32, ptr %138, align 8, !tbaa !61
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %680

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 1
  br label %143

143:                                              ; preds = %141, %672
  %144 = phi i64 [ 0, %141 ], [ %676, %672 ]
  %145 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !20
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds ptr, ptr %1, i64 %144
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 2, i64 %147
  %153 = load i32, ptr %152, align 4, !tbaa !20
  %154 = getelementptr inbounds %struct.jpeg_component_info, ptr %149, i64 0, i32 5
  %155 = load i32, ptr %154, align 4, !tbaa !51
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 4, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  %159 = getelementptr inbounds %struct.jpeg_component_info, ptr %149, i64 0, i32 6
  %160 = load i32, ptr %159, align 8, !tbaa !53
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 5, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = load i16, ptr %151, align 2, !tbaa !62
  %165 = sext i16 %164 to i32
  %166 = sub nsw i32 %165, %153
  %167 = ashr i32 %166, 31
  %168 = add nsw i32 %167, %166
  %169 = icmp eq i32 %153, %165
  br i1 %169, label %178, label %170

170:                                              ; preds = %143
  %171 = tail call i32 @llvm.abs.i32(i32 %166, i1 true)
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i32 [ %175, %172 ], [ 0, %170 ]
  %174 = phi i32 [ %176, %172 ], [ %171, %170 ]
  %175 = add nuw nsw i32 %173, 1
  %176 = lshr i32 %174, 1
  %177 = icmp ult i32 %174, 2
  br i1 %177, label %178, label %172, !llvm.loop !82

178:                                              ; preds = %172, %143
  %179 = phi i32 [ 0, %143 ], [ %175, %172 ]
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds [256 x i32], ptr %158, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !20
  %183 = getelementptr inbounds %struct.c_derived_tbl, ptr %158, i64 0, i32 1, i64 %180
  %184 = load i8, ptr %183, align 1, !tbaa !17
  %185 = sext i8 %184 to i32
  %186 = zext i32 %182 to i64
  %187 = load i32, ptr %142, align 8, !tbaa !77
  %188 = icmp eq i8 %184, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %178
  %190 = load ptr, ptr %14, align 8, !tbaa !76
  %191 = load ptr, ptr %190, align 8, !tbaa !29
  %192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %191, i64 0, i32 5
  store i32 39, ptr %192, align 8, !tbaa !30
  %193 = load ptr, ptr %191, align 8, !tbaa !32
  tail call void %193(ptr noundef nonnull %190) #7
  br label %194

194:                                              ; preds = %189, %178
  %195 = zext nneg i32 %185 to i64
  %196 = shl nsw i64 -1, %195
  %197 = xor i64 %196, -1
  %198 = and i64 %197, %186
  %199 = add nsw i32 %187, %185
  %200 = sub nsw i32 24, %199
  %201 = zext nneg i32 %200 to i64
  %202 = shl i64 %198, %201
  %203 = load i64, ptr %12, align 8, !tbaa !78
  %204 = or i64 %203, %202
  br label %205

205:                                              ; preds = %253, %194
  %206 = phi i64 [ %204, %194 ], [ %254, %253 ]
  %207 = phi i32 [ %199, %194 ], [ %255, %253 ]
  %208 = icmp sgt i32 %207, 7
  br i1 %208, label %209, label %257

209:                                              ; preds = %205
  %210 = lshr i64 %206, 16
  %211 = trunc i64 %210 to i8
  %212 = load ptr, ptr %3, align 8, !tbaa !71
  %213 = getelementptr inbounds i8, ptr %212, i64 1
  store ptr %213, ptr %3, align 8, !tbaa !71
  store i8 %211, ptr %212, align 1, !tbaa !17
  %214 = load i64, ptr %11, align 8, !tbaa !74
  %215 = add i64 %214, -1
  store i64 %215, ptr %11, align 8, !tbaa !74
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %209
  %218 = load ptr, ptr %14, align 8, !tbaa !76
  %219 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %218, i64 0, i32 5
  %220 = load ptr, ptr %219, align 8, !tbaa !68
  %221 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %220, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !79
  %223 = tail call i32 %222(ptr noundef %218) #7
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %253, label %225

225:                                              ; preds = %217
  %226 = load ptr, ptr %220, align 8, !tbaa !69
  store ptr %226, ptr %3, align 8, !tbaa !71
  %227 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %220, i64 0, i32 1
  %228 = load i64, ptr %227, align 8, !tbaa !73
  store i64 %228, ptr %11, align 8, !tbaa !74
  br label %229

229:                                              ; preds = %225, %209
  %230 = and i64 %206, 16711680
  %231 = icmp eq i64 %230, 16711680
  br i1 %231, label %232, label %250

232:                                              ; preds = %229
  %233 = load ptr, ptr %3, align 8, !tbaa !71
  %234 = getelementptr inbounds i8, ptr %233, i64 1
  store ptr %234, ptr %3, align 8, !tbaa !71
  store i8 0, ptr %233, align 1, !tbaa !17
  %235 = load i64, ptr %11, align 8, !tbaa !74
  %236 = add i64 %235, -1
  store i64 %236, ptr %11, align 8, !tbaa !74
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %232
  %239 = load ptr, ptr %14, align 8, !tbaa !76
  %240 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %239, i64 0, i32 5
  %241 = load ptr, ptr %240, align 8, !tbaa !68
  %242 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %241, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !79
  %244 = tail call i32 %243(ptr noundef %239) #7
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %238
  %247 = load ptr, ptr %241, align 8, !tbaa !69
  store ptr %247, ptr %3, align 8, !tbaa !71
  %248 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %241, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !73
  store i64 %249, ptr %11, align 8, !tbaa !74
  br label %250

250:                                              ; preds = %246, %232, %229
  %251 = shl i64 %206, 8
  %252 = add nsw i32 %207, -8
  br label %253

253:                                              ; preds = %250, %238, %217
  %254 = phi i64 [ %251, %250 ], [ %206, %217 ], [ %206, %238 ]
  %255 = phi i32 [ %252, %250 ], [ %207, %217 ], [ %207, %238 ]
  %256 = phi i1 [ true, %250 ], [ false, %217 ], [ false, %238 ]
  br i1 %256, label %205, label %258, !llvm.loop !80

257:                                              ; preds = %205
  store i64 %206, ptr %12, align 8, !tbaa !78
  store i32 %207, ptr %142, align 8, !tbaa !77
  br label %258

258:                                              ; preds = %253, %257
  br i1 %208, label %699, label %259

259:                                              ; preds = %258
  %260 = icmp eq i32 %179, 0
  br i1 %260, label %327, label %261

261:                                              ; preds = %259
  %262 = zext i32 %168 to i64
  %263 = load i32, ptr %142, align 8, !tbaa !77
  %264 = shl nsw i64 -1, %180
  %265 = xor i64 %264, -1
  %266 = and i64 %265, %262
  %267 = add nsw i32 %263, %179
  %268 = sub nsw i32 24, %267
  %269 = zext nneg i32 %268 to i64
  %270 = shl i64 %266, %269
  %271 = load i64, ptr %12, align 8, !tbaa !78
  %272 = or i64 %270, %271
  br label %273

273:                                              ; preds = %321, %261
  %274 = phi i64 [ %272, %261 ], [ %322, %321 ]
  %275 = phi i32 [ %267, %261 ], [ %323, %321 ]
  %276 = icmp sgt i32 %275, 7
  br i1 %276, label %277, label %325

277:                                              ; preds = %273
  %278 = lshr i64 %274, 16
  %279 = trunc i64 %278 to i8
  %280 = load ptr, ptr %3, align 8, !tbaa !71
  %281 = getelementptr inbounds i8, ptr %280, i64 1
  store ptr %281, ptr %3, align 8, !tbaa !71
  store i8 %279, ptr %280, align 1, !tbaa !17
  %282 = load i64, ptr %11, align 8, !tbaa !74
  %283 = add i64 %282, -1
  store i64 %283, ptr %11, align 8, !tbaa !74
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %277
  %286 = load ptr, ptr %14, align 8, !tbaa !76
  %287 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %286, i64 0, i32 5
  %288 = load ptr, ptr %287, align 8, !tbaa !68
  %289 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %288, i64 0, i32 3
  %290 = load ptr, ptr %289, align 8, !tbaa !79
  %291 = tail call i32 %290(ptr noundef %286) #7
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %321, label %293

293:                                              ; preds = %285
  %294 = load ptr, ptr %288, align 8, !tbaa !69
  store ptr %294, ptr %3, align 8, !tbaa !71
  %295 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %288, i64 0, i32 1
  %296 = load i64, ptr %295, align 8, !tbaa !73
  store i64 %296, ptr %11, align 8, !tbaa !74
  br label %297

297:                                              ; preds = %293, %277
  %298 = and i64 %274, 16711680
  %299 = icmp eq i64 %298, 16711680
  br i1 %299, label %300, label %318

300:                                              ; preds = %297
  %301 = load ptr, ptr %3, align 8, !tbaa !71
  %302 = getelementptr inbounds i8, ptr %301, i64 1
  store ptr %302, ptr %3, align 8, !tbaa !71
  store i8 0, ptr %301, align 1, !tbaa !17
  %303 = load i64, ptr %11, align 8, !tbaa !74
  %304 = add i64 %303, -1
  store i64 %304, ptr %11, align 8, !tbaa !74
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %300
  %307 = load ptr, ptr %14, align 8, !tbaa !76
  %308 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %307, i64 0, i32 5
  %309 = load ptr, ptr %308, align 8, !tbaa !68
  %310 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %309, i64 0, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !79
  %312 = tail call i32 %311(ptr noundef %307) #7
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %306
  %315 = load ptr, ptr %309, align 8, !tbaa !69
  store ptr %315, ptr %3, align 8, !tbaa !71
  %316 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %309, i64 0, i32 1
  %317 = load i64, ptr %316, align 8, !tbaa !73
  store i64 %317, ptr %11, align 8, !tbaa !74
  br label %318

318:                                              ; preds = %314, %300, %297
  %319 = shl i64 %274, 8
  %320 = add nsw i32 %275, -8
  br label %321

321:                                              ; preds = %318, %306, %285
  %322 = phi i64 [ %319, %318 ], [ %274, %285 ], [ %274, %306 ]
  %323 = phi i32 [ %320, %318 ], [ %275, %285 ], [ %275, %306 ]
  %324 = phi i1 [ true, %318 ], [ false, %285 ], [ false, %306 ]
  br i1 %324, label %273, label %326, !llvm.loop !80

325:                                              ; preds = %273
  store i64 %274, ptr %12, align 8, !tbaa !78
  store i32 %275, ptr %142, align 8, !tbaa !77
  br label %326

326:                                              ; preds = %321, %325
  br i1 %276, label %699, label %327

327:                                              ; preds = %326, %259
  %328 = getelementptr inbounds [256 x i32], ptr %163, i64 0, i64 240
  %329 = getelementptr inbounds %struct.c_derived_tbl, ptr %163, i64 0, i32 1, i64 240
  br label %330

330:                                              ; preds = %588, %327
  %331 = phi i64 [ 1, %327 ], [ %590, %588 ]
  %332 = phi i32 [ 0, %327 ], [ %589, %588 ]
  %333 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %331
  %334 = load i32, ptr %333, align 4, !tbaa !20
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i16, ptr %151, i64 %335
  %337 = load i16, ptr %336, align 2, !tbaa !62
  %338 = sext i16 %337 to i32
  %339 = icmp eq i16 %337, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %330
  %341 = icmp sgt i32 %332, 15
  br i1 %341, label %344, label %425

342:                                              ; preds = %330
  %343 = add nsw i32 %332, 1
  br label %588

344:                                              ; preds = %340, %422
  %345 = phi i32 [ %423, %422 ], [ %332, %340 ]
  %346 = load i32, ptr %328, align 4, !tbaa !20
  %347 = load i8, ptr %329, align 4, !tbaa !17
  %348 = sext i8 %347 to i32
  %349 = zext i32 %346 to i64
  %350 = load i32, ptr %142, align 8, !tbaa !77
  %351 = icmp eq i8 %347, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %344
  %353 = load ptr, ptr %14, align 8, !tbaa !76
  %354 = load ptr, ptr %353, align 8, !tbaa !29
  %355 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %354, i64 0, i32 5
  store i32 39, ptr %355, align 8, !tbaa !30
  %356 = load ptr, ptr %354, align 8, !tbaa !32
  tail call void %356(ptr noundef nonnull %353) #7
  br label %357

357:                                              ; preds = %352, %344
  %358 = zext nneg i32 %348 to i64
  %359 = shl nsw i64 -1, %358
  %360 = xor i64 %359, -1
  %361 = and i64 %360, %349
  %362 = add nsw i32 %350, %348
  %363 = sub nsw i32 24, %362
  %364 = zext nneg i32 %363 to i64
  %365 = shl i64 %361, %364
  %366 = load i64, ptr %12, align 8, !tbaa !78
  %367 = or i64 %366, %365
  br label %368

368:                                              ; preds = %416, %357
  %369 = phi i64 [ %367, %357 ], [ %417, %416 ]
  %370 = phi i32 [ %362, %357 ], [ %418, %416 ]
  %371 = icmp sgt i32 %370, 7
  br i1 %371, label %372, label %420

372:                                              ; preds = %368
  %373 = lshr i64 %369, 16
  %374 = trunc i64 %373 to i8
  %375 = load ptr, ptr %3, align 8, !tbaa !71
  %376 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %376, ptr %3, align 8, !tbaa !71
  store i8 %374, ptr %375, align 1, !tbaa !17
  %377 = load i64, ptr %11, align 8, !tbaa !74
  %378 = add i64 %377, -1
  store i64 %378, ptr %11, align 8, !tbaa !74
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %392

380:                                              ; preds = %372
  %381 = load ptr, ptr %14, align 8, !tbaa !76
  %382 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %381, i64 0, i32 5
  %383 = load ptr, ptr %382, align 8, !tbaa !68
  %384 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %383, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !79
  %386 = tail call i32 %385(ptr noundef %381) #7
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %416, label %388

388:                                              ; preds = %380
  %389 = load ptr, ptr %383, align 8, !tbaa !69
  store ptr %389, ptr %3, align 8, !tbaa !71
  %390 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %383, i64 0, i32 1
  %391 = load i64, ptr %390, align 8, !tbaa !73
  store i64 %391, ptr %11, align 8, !tbaa !74
  br label %392

392:                                              ; preds = %388, %372
  %393 = and i64 %369, 16711680
  %394 = icmp eq i64 %393, 16711680
  br i1 %394, label %395, label %413

395:                                              ; preds = %392
  %396 = load ptr, ptr %3, align 8, !tbaa !71
  %397 = getelementptr inbounds i8, ptr %396, i64 1
  store ptr %397, ptr %3, align 8, !tbaa !71
  store i8 0, ptr %396, align 1, !tbaa !17
  %398 = load i64, ptr %11, align 8, !tbaa !74
  %399 = add i64 %398, -1
  store i64 %399, ptr %11, align 8, !tbaa !74
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %413

401:                                              ; preds = %395
  %402 = load ptr, ptr %14, align 8, !tbaa !76
  %403 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %402, i64 0, i32 5
  %404 = load ptr, ptr %403, align 8, !tbaa !68
  %405 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %404, i64 0, i32 3
  %406 = load ptr, ptr %405, align 8, !tbaa !79
  %407 = tail call i32 %406(ptr noundef %402) #7
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %416, label %409

409:                                              ; preds = %401
  %410 = load ptr, ptr %404, align 8, !tbaa !69
  store ptr %410, ptr %3, align 8, !tbaa !71
  %411 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %404, i64 0, i32 1
  %412 = load i64, ptr %411, align 8, !tbaa !73
  store i64 %412, ptr %11, align 8, !tbaa !74
  br label %413

413:                                              ; preds = %409, %395, %392
  %414 = shl i64 %369, 8
  %415 = add nsw i32 %370, -8
  br label %416

416:                                              ; preds = %413, %401, %380
  %417 = phi i64 [ %414, %413 ], [ %369, %380 ], [ %369, %401 ]
  %418 = phi i32 [ %415, %413 ], [ %370, %380 ], [ %370, %401 ]
  %419 = phi i1 [ true, %413 ], [ false, %380 ], [ false, %401 ]
  br i1 %419, label %368, label %421, !llvm.loop !80

420:                                              ; preds = %368
  store i64 %369, ptr %12, align 8, !tbaa !78
  store i32 %370, ptr %142, align 8, !tbaa !77
  br label %421

421:                                              ; preds = %416, %420
  br i1 %371, label %699, label %422

422:                                              ; preds = %421
  %423 = add nsw i32 %345, -16
  %424 = icmp sgt i32 %345, 31
  br i1 %424, label %344, label %425, !llvm.loop !83

425:                                              ; preds = %422, %340
  %426 = phi i32 [ %332, %340 ], [ %423, %422 ]
  %427 = tail call i32 @llvm.abs.i32(i32 %338, i1 true)
  %428 = ashr i16 %337, 15
  %429 = sext i16 %428 to i32
  %430 = add nsw i32 %429, %338
  %431 = icmp ult i32 %427, 2
  br i1 %431, label %438, label %432

432:                                              ; preds = %425, %432
  %433 = phi i32 [ %436, %432 ], [ 1, %425 ]
  %434 = phi i32 [ %435, %432 ], [ %427, %425 ]
  %435 = lshr i32 %434, 1
  %436 = add nuw nsw i32 %433, 1
  %437 = icmp ult i32 %434, 4
  br i1 %437, label %438, label %432, !llvm.loop !84

438:                                              ; preds = %432, %425
  %439 = phi i32 [ 1, %425 ], [ %436, %432 ]
  %440 = shl i32 %426, 4
  %441 = add nsw i32 %439, %440
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [256 x i32], ptr %163, i64 0, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !20
  %445 = getelementptr inbounds %struct.c_derived_tbl, ptr %163, i64 0, i32 1, i64 %442
  %446 = load i8, ptr %445, align 1, !tbaa !17
  %447 = sext i8 %446 to i32
  %448 = zext i32 %444 to i64
  %449 = load i32, ptr %142, align 8, !tbaa !77
  %450 = icmp eq i8 %446, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %438
  %452 = load ptr, ptr %14, align 8, !tbaa !76
  %453 = load ptr, ptr %452, align 8, !tbaa !29
  %454 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %453, i64 0, i32 5
  store i32 39, ptr %454, align 8, !tbaa !30
  %455 = load ptr, ptr %453, align 8, !tbaa !32
  tail call void %455(ptr noundef nonnull %452) #7
  br label %456

456:                                              ; preds = %451, %438
  %457 = zext nneg i32 %447 to i64
  %458 = shl nsw i64 -1, %457
  %459 = xor i64 %458, -1
  %460 = and i64 %459, %448
  %461 = add nsw i32 %449, %447
  %462 = sub nsw i32 24, %461
  %463 = zext nneg i32 %462 to i64
  %464 = shl i64 %460, %463
  %465 = load i64, ptr %12, align 8, !tbaa !78
  %466 = or i64 %465, %464
  br label %467

467:                                              ; preds = %515, %456
  %468 = phi i64 [ %466, %456 ], [ %516, %515 ]
  %469 = phi i32 [ %461, %456 ], [ %517, %515 ]
  %470 = icmp sgt i32 %469, 7
  br i1 %470, label %471, label %519

471:                                              ; preds = %467
  %472 = lshr i64 %468, 16
  %473 = trunc i64 %472 to i8
  %474 = load ptr, ptr %3, align 8, !tbaa !71
  %475 = getelementptr inbounds i8, ptr %474, i64 1
  store ptr %475, ptr %3, align 8, !tbaa !71
  store i8 %473, ptr %474, align 1, !tbaa !17
  %476 = load i64, ptr %11, align 8, !tbaa !74
  %477 = add i64 %476, -1
  store i64 %477, ptr %11, align 8, !tbaa !74
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %491

479:                                              ; preds = %471
  %480 = load ptr, ptr %14, align 8, !tbaa !76
  %481 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %480, i64 0, i32 5
  %482 = load ptr, ptr %481, align 8, !tbaa !68
  %483 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %482, i64 0, i32 3
  %484 = load ptr, ptr %483, align 8, !tbaa !79
  %485 = tail call i32 %484(ptr noundef %480) #7
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %515, label %487

487:                                              ; preds = %479
  %488 = load ptr, ptr %482, align 8, !tbaa !69
  store ptr %488, ptr %3, align 8, !tbaa !71
  %489 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %482, i64 0, i32 1
  %490 = load i64, ptr %489, align 8, !tbaa !73
  store i64 %490, ptr %11, align 8, !tbaa !74
  br label %491

491:                                              ; preds = %487, %471
  %492 = and i64 %468, 16711680
  %493 = icmp eq i64 %492, 16711680
  br i1 %493, label %494, label %512

494:                                              ; preds = %491
  %495 = load ptr, ptr %3, align 8, !tbaa !71
  %496 = getelementptr inbounds i8, ptr %495, i64 1
  store ptr %496, ptr %3, align 8, !tbaa !71
  store i8 0, ptr %495, align 1, !tbaa !17
  %497 = load i64, ptr %11, align 8, !tbaa !74
  %498 = add i64 %497, -1
  store i64 %498, ptr %11, align 8, !tbaa !74
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %500, label %512

500:                                              ; preds = %494
  %501 = load ptr, ptr %14, align 8, !tbaa !76
  %502 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %501, i64 0, i32 5
  %503 = load ptr, ptr %502, align 8, !tbaa !68
  %504 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %503, i64 0, i32 3
  %505 = load ptr, ptr %504, align 8, !tbaa !79
  %506 = tail call i32 %505(ptr noundef %501) #7
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %515, label %508

508:                                              ; preds = %500
  %509 = load ptr, ptr %503, align 8, !tbaa !69
  store ptr %509, ptr %3, align 8, !tbaa !71
  %510 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %503, i64 0, i32 1
  %511 = load i64, ptr %510, align 8, !tbaa !73
  store i64 %511, ptr %11, align 8, !tbaa !74
  br label %512

512:                                              ; preds = %508, %494, %491
  %513 = shl i64 %468, 8
  %514 = add nsw i32 %469, -8
  br label %515

515:                                              ; preds = %512, %500, %479
  %516 = phi i64 [ %513, %512 ], [ %468, %479 ], [ %468, %500 ]
  %517 = phi i32 [ %514, %512 ], [ %469, %479 ], [ %469, %500 ]
  %518 = phi i1 [ true, %512 ], [ false, %479 ], [ false, %500 ]
  br i1 %518, label %467, label %520, !llvm.loop !80

519:                                              ; preds = %467
  store i64 %468, ptr %12, align 8, !tbaa !78
  store i32 %469, ptr %142, align 8, !tbaa !77
  br label %520

520:                                              ; preds = %515, %519
  br i1 %470, label %699, label %521

521:                                              ; preds = %520
  %522 = zext i32 %430 to i64
  %523 = load i32, ptr %142, align 8, !tbaa !77
  %524 = zext nneg i32 %439 to i64
  %525 = shl nsw i64 -1, %524
  %526 = xor i64 %525, -1
  %527 = and i64 %526, %522
  %528 = add nsw i32 %523, %439
  %529 = sub nsw i32 24, %528
  %530 = zext nneg i32 %529 to i64
  %531 = shl i64 %527, %530
  %532 = load i64, ptr %12, align 8, !tbaa !78
  %533 = or i64 %531, %532
  br label %534

534:                                              ; preds = %582, %521
  %535 = phi i64 [ %533, %521 ], [ %583, %582 ]
  %536 = phi i32 [ %528, %521 ], [ %584, %582 ]
  %537 = icmp sgt i32 %536, 7
  br i1 %537, label %538, label %586

538:                                              ; preds = %534
  %539 = lshr i64 %535, 16
  %540 = trunc i64 %539 to i8
  %541 = load ptr, ptr %3, align 8, !tbaa !71
  %542 = getelementptr inbounds i8, ptr %541, i64 1
  store ptr %542, ptr %3, align 8, !tbaa !71
  store i8 %540, ptr %541, align 1, !tbaa !17
  %543 = load i64, ptr %11, align 8, !tbaa !74
  %544 = add i64 %543, -1
  store i64 %544, ptr %11, align 8, !tbaa !74
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %558

546:                                              ; preds = %538
  %547 = load ptr, ptr %14, align 8, !tbaa !76
  %548 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %547, i64 0, i32 5
  %549 = load ptr, ptr %548, align 8, !tbaa !68
  %550 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %549, i64 0, i32 3
  %551 = load ptr, ptr %550, align 8, !tbaa !79
  %552 = tail call i32 %551(ptr noundef %547) #7
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %582, label %554

554:                                              ; preds = %546
  %555 = load ptr, ptr %549, align 8, !tbaa !69
  store ptr %555, ptr %3, align 8, !tbaa !71
  %556 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %549, i64 0, i32 1
  %557 = load i64, ptr %556, align 8, !tbaa !73
  store i64 %557, ptr %11, align 8, !tbaa !74
  br label %558

558:                                              ; preds = %554, %538
  %559 = and i64 %535, 16711680
  %560 = icmp eq i64 %559, 16711680
  br i1 %560, label %561, label %579

561:                                              ; preds = %558
  %562 = load ptr, ptr %3, align 8, !tbaa !71
  %563 = getelementptr inbounds i8, ptr %562, i64 1
  store ptr %563, ptr %3, align 8, !tbaa !71
  store i8 0, ptr %562, align 1, !tbaa !17
  %564 = load i64, ptr %11, align 8, !tbaa !74
  %565 = add i64 %564, -1
  store i64 %565, ptr %11, align 8, !tbaa !74
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %567, label %579

567:                                              ; preds = %561
  %568 = load ptr, ptr %14, align 8, !tbaa !76
  %569 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %568, i64 0, i32 5
  %570 = load ptr, ptr %569, align 8, !tbaa !68
  %571 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %570, i64 0, i32 3
  %572 = load ptr, ptr %571, align 8, !tbaa !79
  %573 = tail call i32 %572(ptr noundef %568) #7
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %582, label %575

575:                                              ; preds = %567
  %576 = load ptr, ptr %570, align 8, !tbaa !69
  store ptr %576, ptr %3, align 8, !tbaa !71
  %577 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %570, i64 0, i32 1
  %578 = load i64, ptr %577, align 8, !tbaa !73
  store i64 %578, ptr %11, align 8, !tbaa !74
  br label %579

579:                                              ; preds = %575, %561, %558
  %580 = shl i64 %535, 8
  %581 = add nsw i32 %536, -8
  br label %582

582:                                              ; preds = %579, %567, %546
  %583 = phi i64 [ %580, %579 ], [ %535, %546 ], [ %535, %567 ]
  %584 = phi i32 [ %581, %579 ], [ %536, %546 ], [ %536, %567 ]
  %585 = phi i1 [ true, %579 ], [ false, %546 ], [ false, %567 ]
  br i1 %585, label %534, label %587, !llvm.loop !80

586:                                              ; preds = %534
  store i64 %535, ptr %12, align 8, !tbaa !78
  store i32 %536, ptr %142, align 8, !tbaa !77
  br label %587

587:                                              ; preds = %582, %586
  br i1 %537, label %699, label %588

588:                                              ; preds = %587, %342
  %589 = phi i32 [ %343, %342 ], [ 0, %587 ]
  %590 = add nuw nsw i64 %331, 1
  %591 = icmp eq i64 %590, 64
  br i1 %591, label %592, label %330, !llvm.loop !85

592:                                              ; preds = %588
  %593 = icmp sgt i32 %589, 0
  br i1 %593, label %594, label %672

594:                                              ; preds = %592
  %595 = load i32, ptr %163, align 4, !tbaa !20
  %596 = getelementptr inbounds %struct.c_derived_tbl, ptr %163, i64 0, i32 1
  %597 = load i8, ptr %596, align 4, !tbaa !17
  %598 = sext i8 %597 to i32
  %599 = zext i32 %595 to i64
  %600 = load i32, ptr %142, align 8, !tbaa !77
  %601 = icmp eq i8 %597, 0
  br i1 %601, label %602, label %607

602:                                              ; preds = %594
  %603 = load ptr, ptr %14, align 8, !tbaa !76
  %604 = load ptr, ptr %603, align 8, !tbaa !29
  %605 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %604, i64 0, i32 5
  store i32 39, ptr %605, align 8, !tbaa !30
  %606 = load ptr, ptr %604, align 8, !tbaa !32
  tail call void %606(ptr noundef nonnull %603) #7
  br label %607

607:                                              ; preds = %602, %594
  %608 = zext nneg i32 %598 to i64
  %609 = shl nsw i64 -1, %608
  %610 = xor i64 %609, -1
  %611 = and i64 %610, %599
  %612 = add nsw i32 %600, %598
  %613 = sub nsw i32 24, %612
  %614 = zext nneg i32 %613 to i64
  %615 = shl i64 %611, %614
  %616 = load i64, ptr %12, align 8, !tbaa !78
  %617 = or i64 %616, %615
  br label %618

618:                                              ; preds = %666, %607
  %619 = phi i64 [ %617, %607 ], [ %667, %666 ]
  %620 = phi i32 [ %612, %607 ], [ %668, %666 ]
  %621 = icmp sgt i32 %620, 7
  br i1 %621, label %622, label %670

622:                                              ; preds = %618
  %623 = lshr i64 %619, 16
  %624 = trunc i64 %623 to i8
  %625 = load ptr, ptr %3, align 8, !tbaa !71
  %626 = getelementptr inbounds i8, ptr %625, i64 1
  store ptr %626, ptr %3, align 8, !tbaa !71
  store i8 %624, ptr %625, align 1, !tbaa !17
  %627 = load i64, ptr %11, align 8, !tbaa !74
  %628 = add i64 %627, -1
  store i64 %628, ptr %11, align 8, !tbaa !74
  %629 = icmp eq i64 %628, 0
  br i1 %629, label %630, label %642

630:                                              ; preds = %622
  %631 = load ptr, ptr %14, align 8, !tbaa !76
  %632 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %631, i64 0, i32 5
  %633 = load ptr, ptr %632, align 8, !tbaa !68
  %634 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %633, i64 0, i32 3
  %635 = load ptr, ptr %634, align 8, !tbaa !79
  %636 = tail call i32 %635(ptr noundef %631) #7
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %666, label %638

638:                                              ; preds = %630
  %639 = load ptr, ptr %633, align 8, !tbaa !69
  store ptr %639, ptr %3, align 8, !tbaa !71
  %640 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %633, i64 0, i32 1
  %641 = load i64, ptr %640, align 8, !tbaa !73
  store i64 %641, ptr %11, align 8, !tbaa !74
  br label %642

642:                                              ; preds = %638, %622
  %643 = and i64 %619, 16711680
  %644 = icmp eq i64 %643, 16711680
  br i1 %644, label %645, label %663

645:                                              ; preds = %642
  %646 = load ptr, ptr %3, align 8, !tbaa !71
  %647 = getelementptr inbounds i8, ptr %646, i64 1
  store ptr %647, ptr %3, align 8, !tbaa !71
  store i8 0, ptr %646, align 1, !tbaa !17
  %648 = load i64, ptr %11, align 8, !tbaa !74
  %649 = add i64 %648, -1
  store i64 %649, ptr %11, align 8, !tbaa !74
  %650 = icmp eq i64 %649, 0
  br i1 %650, label %651, label %663

651:                                              ; preds = %645
  %652 = load ptr, ptr %14, align 8, !tbaa !76
  %653 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %652, i64 0, i32 5
  %654 = load ptr, ptr %653, align 8, !tbaa !68
  %655 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %654, i64 0, i32 3
  %656 = load ptr, ptr %655, align 8, !tbaa !79
  %657 = tail call i32 %656(ptr noundef %652) #7
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %666, label %659

659:                                              ; preds = %651
  %660 = load ptr, ptr %654, align 8, !tbaa !69
  store ptr %660, ptr %3, align 8, !tbaa !71
  %661 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %654, i64 0, i32 1
  %662 = load i64, ptr %661, align 8, !tbaa !73
  store i64 %662, ptr %11, align 8, !tbaa !74
  br label %663

663:                                              ; preds = %659, %645, %642
  %664 = shl i64 %619, 8
  %665 = add nsw i32 %620, -8
  br label %666

666:                                              ; preds = %663, %651, %630
  %667 = phi i64 [ %664, %663 ], [ %619, %630 ], [ %619, %651 ]
  %668 = phi i32 [ %665, %663 ], [ %620, %630 ], [ %620, %651 ]
  %669 = phi i1 [ true, %663 ], [ false, %630 ], [ false, %651 ]
  br i1 %669, label %618, label %671, !llvm.loop !80

670:                                              ; preds = %618
  store i64 %619, ptr %12, align 8, !tbaa !78
  store i32 %620, ptr %142, align 8, !tbaa !77
  br label %671

671:                                              ; preds = %666, %670
  br i1 %621, label %699, label %672

672:                                              ; preds = %671, %592
  %673 = load ptr, ptr %150, align 8, !tbaa !5
  %674 = load i16, ptr %673, align 2, !tbaa !62
  %675 = sext i16 %674 to i32
  store i32 %675, ptr %152, align 4, !tbaa !20
  %676 = add nuw nsw i64 %144, 1
  %677 = load i32, ptr %138, align 8, !tbaa !61
  %678 = sext i32 %677 to i64
  %679 = icmp slt i64 %676, %678
  br i1 %679, label %143, label %680, !llvm.loop !86

680:                                              ; preds = %672, %137
  %681 = load ptr, ptr %3, align 8, !tbaa !71
  %682 = load ptr, ptr %6, align 8, !tbaa !68
  store ptr %681, ptr %682, align 8, !tbaa !69
  %683 = load i64, ptr %11, align 8, !tbaa !74
  %684 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %682, i64 0, i32 1
  store i64 %683, ptr %684, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !75
  %685 = load i32, ptr %15, align 8, !tbaa !57
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %699, label %687

687:                                              ; preds = %680
  %688 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 2
  %689 = load i32, ptr %688, align 8, !tbaa !58
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %696

691:                                              ; preds = %687
  store i32 %685, ptr %688, align 8, !tbaa !58
  %692 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 3
  %693 = load i32, ptr %692, align 4, !tbaa !59
  %694 = add nsw i32 %693, 1
  %695 = and i32 %694, 7
  store i32 %695, ptr %692, align 4, !tbaa !59
  br label %696

696:                                              ; preds = %691, %687
  %697 = load i32, ptr %688, align 8, !tbaa !58
  %698 = add i32 %697, -1
  store i32 %698, ptr %688, align 8, !tbaa !58
  br label %699

699:                                              ; preds = %671, %326, %258, %587, %520, %421, %86, %93, %113, %680, %696
  %700 = phi i32 [ 1, %696 ], [ 1, %680 ], [ 0, %113 ], [ 0, %93 ], [ 0, %86 ], [ 0, %421 ], [ 0, %520 ], [ 0, %587 ], [ 0, %258 ], [ 0, %326 ], [ 0, %671 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret i32 %700
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_huff(ptr noundef %0) #0 {
  %2 = alloca [20 x i8], align 4
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2)
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %6, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa.struct !75
  %12 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa.struct !87
  %14 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false), !tbaa.struct !88
  %15 = add nsw i32 %13, 7
  %16 = sub nsw i32 17, %13
  %17 = zext nneg i32 %16 to i64
  %18 = shl i64 127, %17
  %19 = or i64 %18, %11
  br label %20

20:                                               ; preds = %66, %1
  %21 = phi i64 [ %9, %1 ], [ %67, %66 ]
  %22 = phi ptr [ %7, %1 ], [ %68, %66 ]
  %23 = phi i64 [ %19, %1 ], [ %69, %66 ]
  %24 = phi i32 [ %15, %1 ], [ %70, %66 ]
  %25 = icmp sgt i32 %24, 7
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = lshr i64 %23, 16
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %28, ptr %22, align 1, !tbaa !17
  %30 = add i64 %21, -1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = tail call i32 %35(ptr noundef %0) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !69
  %40 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %33, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !73
  br label %42

42:                                               ; preds = %38, %26
  %43 = phi i64 [ %41, %38 ], [ %30, %26 ]
  %44 = phi ptr [ %39, %38 ], [ %29, %26 ]
  %45 = and i64 %23, 16711680
  %46 = icmp eq i64 %45, 16711680
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 0, ptr %44, align 1, !tbaa !17
  %49 = add i64 %43, -1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load ptr, ptr %5, align 8, !tbaa !68
  %53 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !79
  %55 = tail call i32 %54(ptr noundef %0) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %52, align 8, !tbaa !69
  %59 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %52, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !73
  br label %61

61:                                               ; preds = %57, %47, %42
  %62 = phi i64 [ %60, %57 ], [ %49, %47 ], [ %43, %42 ]
  %63 = phi ptr [ %58, %57 ], [ %48, %47 ], [ %44, %42 ]
  %64 = shl i64 %23, 8
  %65 = add nsw i32 %24, -8
  br label %66

66:                                               ; preds = %61, %51, %32
  %67 = phi i64 [ %30, %32 ], [ %49, %51 ], [ %62, %61 ]
  %68 = phi ptr [ %29, %32 ], [ %48, %51 ], [ %63, %61 ]
  %69 = phi i64 [ %23, %32 ], [ %23, %51 ], [ %64, %61 ]
  %70 = phi i32 [ %24, %32 ], [ %24, %51 ], [ %65, %61 ]
  %71 = phi i1 [ false, %32 ], [ false, %51 ], [ true, %61 ]
  br i1 %71, label %20, label %72, !llvm.loop !80

72:                                               ; preds = %20, %66
  %73 = phi i64 [ %11, %66 ], [ 0, %20 ]
  %74 = phi i32 [ %13, %66 ], [ 0, %20 ]
  %75 = phi i64 [ %67, %66 ], [ %21, %20 ]
  %76 = phi ptr [ %68, %66 ], [ %22, %20 ]
  br i1 %25, label %77, label %81

77:                                               ; preds = %72
  %78 = load ptr, ptr %0, align 8, !tbaa !29
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i64 0, i32 5
  store i32 22, ptr %79, align 8, !tbaa !30
  %80 = load ptr, ptr %78, align 8, !tbaa !32
  tail call void %80(ptr noundef nonnull %0) #7
  br label %81

81:                                               ; preds = %77, %72
  %82 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %76, ptr %82, align 8, !tbaa !69
  %83 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %82, i64 0, i32 1
  store i64 %75, ptr %83, align 8, !tbaa !73
  store i64 %73, ptr %10, align 8, !tbaa.struct !75
  store i32 %74, ptr %12, align 8, !tbaa.struct !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2)
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!10 = !{!"jpeg_compress_struct", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !12, i64 56, !11, i64 64, !11, i64 68, !11, i64 72, !6, i64 80, !7, i64 88, !7, i64 120, !7, i64 152, !7, i64 184, !7, i64 200, !7, i64 216, !11, i64 232, !6, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !7, i64 284, !13, i64 286, !13, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !7, i64 320, !11, i64 352, !11, i64 356, !11, i64 360, !7, i64 364, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !6, i64 488}
!11 = !{!"int", !7, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"jpeg_memory_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !16, i64 88}
!16 = !{!"long", !7, i64 0}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!11, !11, i64 0}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = !{!16, !16, i64 0}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = !{!10, !6, i64 0}
!30 = !{!31, !11, i64 40}
!31 = !{!"jpeg_error_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !7, i64 44, !11, i64 124, !16, i64 128, !6, i64 136, !11, i64 144, !6, i64 152, !11, i64 160, !11, i64 164}
!32 = !{!31, !6, i64 0}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = !{!41, !11, i64 276}
!41 = !{!"", !7, i64 0, !7, i64 17, !11, i64 276}
!42 = !{!10, !6, i64 488}
!43 = !{!44, !6, i64 0}
!44 = !{!"", !45, i64 0, !46, i64 24, !11, i64 56, !11, i64 60, !7, i64 64, !7, i64 96, !7, i64 128, !7, i64 160}
!45 = !{!"jpeg_entropy_encoder", !6, i64 0, !6, i64 8, !6, i64 16}
!46 = !{!"", !16, i64 0, !11, i64 8, !7, i64 12}
!47 = distinct !{!47, !19}
!48 = !{!44, !6, i64 8}
!49 = !{!44, !6, i64 16}
!50 = !{!10, !11, i64 316}
!51 = !{!52, !11, i64 20}
!52 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !6, i64 80, !6, i64 88}
!53 = !{!52, !11, i64 24}
!54 = distinct !{!54, !19}
!55 = !{!44, !16, i64 24}
!56 = !{!44, !11, i64 32}
!57 = !{!10, !11, i64 272}
!58 = !{!44, !11, i64 56}
!59 = !{!44, !11, i64 60}
!60 = distinct !{!60, !19}
!61 = !{!10, !11, i64 360}
!62 = !{!13, !13, i64 0}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = !{!10, !6, i64 32}
!69 = !{!70, !6, i64 0}
!70 = !{!"jpeg_destination_mgr", !6, i64 0, !16, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!71 = !{!72, !6, i64 0}
!72 = !{!"", !6, i64 0, !16, i64 8, !46, i64 16, !6, i64 48}
!73 = !{!70, !16, i64 8}
!74 = !{!72, !16, i64 8}
!75 = !{i64 0, i64 8, !24, i64 8, i64 4, !20, i64 12, i64 16, !17}
!76 = !{!72, !6, i64 48}
!77 = !{!72, !11, i64 24}
!78 = !{!72, !16, i64 16}
!79 = !{!70, !6, i64 24}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = !{i64 0, i64 4, !20, i64 4, i64 16, !17}
!88 = !{i64 0, i64 16, !17}
